; ModuleID = 'coreutils-8.32/src/base32.bc'
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
%struct.base32_decode_context = type { i32, [8 x i8] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [FILE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"Base%d encode or decode FILE, or standard input, to standard output.\0A\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [243 x i8] c"  -d, --decode          decode data\0A  -i, --ignore-garbage  when decoding, ignore non-alphabet characters\0A  -w, --wrap=COLS       wrap encoded lines after COLS character (default 76).\0A                          Use 0 to disable line wrapping\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [268 x i8] c"\0AThe data are encoded as described for the %s alphabet in RFC 4648.\0AWhen decoding, the input may contain newlines in addition to the bytes of\0Athe formal %s alphabet.  Use --ignore-garbage to attempt to recover\0Afrom any other non-alphabet bytes in the encoded stream.\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"base32\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"diw:\00", align 1
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [18 x i8] c"invalid wrap size\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Simon Josefsson\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"invalid input\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"closing standard input\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"ignore-garbage\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), align 8, !dbg !53
@.str.45 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@base32_encode.b32str = internal unnamed_addr constant [32 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", align 16, !dbg !59
@b32 = internal unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16, !dbg !70
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !85
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !90
@.str.56 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.57 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.58 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !93
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !99
@.str.67 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.68 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.69 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.72, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.73, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.74, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.77, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.79, i32 0, i32 0), i8* null], align 16, !dbg !104
@.str.70 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.71 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.72 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.73 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.74 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.75 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.76 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.77 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.78 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.79 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !132
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !138
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !150
@.str.11.80 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.81 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.82 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.83 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.84 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.85 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.86 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !155
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !162
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !152
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !164
@.str.93 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.94 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.95 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.96 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.97 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.98 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.99 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.100 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.101 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.102 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.103 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.104 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.105 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.106 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.107 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.108 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.111 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.112 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.113 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.114 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.115 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.116 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.117 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !170
@.str.1.128 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.129 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.135 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.136 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.151 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.154 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.155 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !634 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !638, metadata !DIExpression()), !dbg !639
  %3 = icmp eq i32 %0, 0, !dbg !640
  br i1 %3, label %9, label %4, !dbg !642

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !643, !tbaa !645
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #27, !dbg !643
  %7 = load i8*, i8** @program_name, align 8, !dbg !643, !tbaa !645
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #27, !dbg !643
  br label %68, !dbg !643

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #27, !dbg !649
  %11 = load i8*, i8** @program_name, align 8, !dbg !649, !tbaa !645
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #27, !dbg !649
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 5) #27, !dbg !651
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i32 32) #27, !dbg !651
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i64 0, i64 0), i32 5) #27, !dbg !652
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !652, !tbaa !645
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #27, !dbg !652
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #27, !dbg !658
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !658, !tbaa !645
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #27, !dbg !658
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([243 x i8], [243 x i8]* @.str.3, i64 0, i64 0), i32 5) #27, !dbg !661
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !661, !tbaa !645
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22), !dbg !661
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #27, !dbg !662
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !662, !tbaa !645
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25), !dbg !662
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #27, !dbg !663
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !663, !tbaa !645
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28), !dbg !663
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([268 x i8], [268 x i8]* @.str.6, i64 0, i64 0), i32 5) #27, !dbg !664
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #27, !dbg !664
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), metadata !665, metadata !DIExpression()) #27, !dbg !683
  %32 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !685
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %32) #27, !dbg !685
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !670, metadata !DIExpression()) #27, !dbg !686
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %32, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #27, !dbg !686
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), metadata !679, metadata !DIExpression()) #27, !dbg !683
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !680, metadata !DIExpression()) #27, !dbg !683
  %33 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !687
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !680, metadata !DIExpression()) #27, !dbg !683
  br label %34, !dbg !688

34:                                               ; preds = %39, %9
  %35 = phi i8* [ %42, %39 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %36 = phi %struct.infomap* [ %40, %39 ], [ %33, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !680, metadata !DIExpression()) #27, !dbg !683
  %37 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %35) #28, !dbg !689
  %38 = icmp eq i32 %37, 0, !dbg !689
  br i1 %38, label %44, label %39, !dbg !688

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 1, !dbg !690
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !680, metadata !DIExpression()) #27, !dbg !683
  %41 = getelementptr inbounds %struct.infomap, %struct.infomap* %40, i64 0, i32 0, !dbg !691
  %42 = load i8*, i8** %41, align 8, !dbg !691, !tbaa !692
  %43 = icmp eq i8* %42, null, !dbg !694
  br i1 %43, label %44, label %34, !dbg !695, !llvm.loop !696

44:                                               ; preds = %39, %34
  %45 = phi %struct.infomap* [ %36, %34 ], [ %40, %39 ]
  %46 = getelementptr inbounds %struct.infomap, %struct.infomap* %45, i64 0, i32 1, !dbg !698
  %47 = load i8*, i8** %46, align 8, !dbg !698, !tbaa !700
  %48 = icmp eq i8* %47, null, !dbg !701
  %49 = select i1 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %47, !dbg !702
  call void @llvm.dbg.value(metadata i8* %49, metadata !679, metadata !DIExpression()) #27, !dbg !683
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #27, !dbg !703
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #27, !dbg !703
  %52 = tail call i8* @setlocale(i32 5, i8* null) #27, !dbg !704
  call void @llvm.dbg.value(metadata i8* %52, metadata !682, metadata !DIExpression()) #27, !dbg !683
  %53 = icmp eq i8* %52, null, !dbg !705
  br i1 %53, label %61, label %54, !dbg !707

54:                                               ; preds = %44
  %55 = tail call i32 @strncmp(i8* nonnull %52, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #28, !dbg !708
  %56 = icmp eq i32 %55, 0, !dbg !708
  br i1 %56, label %61, label %57, !dbg !709

57:                                               ; preds = %54
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.33, i64 0, i64 0), i32 5) #27, !dbg !710
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710, !tbaa !645
  %60 = tail call i32 @fputs_unlocked(i8* %58, %struct._IO_FILE* %59) #27, !dbg !710
  br label %61, !dbg !712

61:                                               ; preds = %44, %54, %57
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 5) #27, !dbg !713
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #27, !dbg !713
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #27, !dbg !714
  %65 = icmp eq i8* %49, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), !dbg !714
  %66 = select i1 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !714
  %67 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* %49, i8* %66) #27, !dbg !714
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %32) #27, !dbg !715
  br label %68

68:                                               ; preds = %61, %4
  tail call void @exit(i32 %0) #29, !dbg !716
  unreachable, !dbg !716
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !717 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !721 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !776 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !780 {
  %3 = alloca %struct.base32_decode_context, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !785, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i8** %1, metadata !786, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i8 0, metadata !793, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i8 0, metadata !794, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i64 76, metadata !795, metadata !DIExpression()), !dbg !799
  %5 = load i8*, i8** %1, align 8, !dbg !800, !tbaa !645
  tail call void @set_program_name(i8* %5) #27, !dbg !801
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #27, !dbg !802
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #27, !dbg !803
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #27, !dbg !804
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #27, !dbg !805
  br label %10, !dbg !806

10:                                               ; preds = %17, %2
  %11 = phi i1 [ true, %2 ], [ false, %17 ]
  %12 = phi i8 [ 0, %2 ], [ %15, %17 ]
  %13 = phi i64 [ 76, %2 ], [ %18, %17 ]
  br label %14, !dbg !806

14:                                               ; preds = %17, %10
  %15 = phi i8 [ %12, %10 ], [ 1, %17 ]
  %16 = phi i64 [ %13, %10 ], [ %18, %17 ]
  br label %17, !dbg !806

17:                                               ; preds = %14, %20
  %18 = phi i64 [ %23, %20 ], [ %16, %14 ], !dbg !807
  call void @llvm.dbg.value(metadata i64 %18, metadata !795, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i8 %15, metadata !794, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i8 undef, metadata !793, metadata !DIExpression()), !dbg !799
  %19 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #27, !dbg !808
  call void @llvm.dbg.value(metadata i32 %19, metadata !787, metadata !DIExpression()), !dbg !799
  switch i32 %19, label %28 [
    i32 -1, label %29
    i32 100, label %10
    i32 119, label %20
    i32 105, label %14
    i32 -130, label %24
    i32 -131, label %25
  ], !dbg !806, !llvm.loop !809

20:                                               ; preds = %17
  %21 = load i8*, i8** @optarg, align 8, !dbg !811, !tbaa !645
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 5) #27, !dbg !813
  %23 = tail call i64 @xdectoumax(i8* %21, i64 0, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* %22, i32 0) #27, !dbg !814
  call void @llvm.dbg.value(metadata i64 %23, metadata !795, metadata !DIExpression()), !dbg !799
  br label %17, !dbg !815, !llvm.loop !809

24:                                               ; preds = %17
  tail call void @usage(i32 0) #30, !dbg !816
  unreachable, !dbg !816

25:                                               ; preds = %17
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !817, !tbaa !645
  %27 = load i8*, i8** @Version, align 8, !dbg !817, !tbaa !645
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* null) #27, !dbg !817
  tail call void @exit(i32 0) #29, !dbg !817
  unreachable, !dbg !817

28:                                               ; preds = %17
  tail call void @usage(i32 1) #30, !dbg !818
  unreachable, !dbg !818

29:                                               ; preds = %17
  %30 = load i32, i32* @optind, align 4, !dbg !819, !tbaa !821
  %31 = sub nsw i32 %0, %30, !dbg !823
  %32 = icmp sgt i32 %31, 1, !dbg !824
  br i1 %32, label %33, label %41, !dbg !825

33:                                               ; preds = %29
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 5) #27, !dbg !826
  %35 = load i32, i32* @optind, align 4, !dbg !828, !tbaa !821
  %36 = add nsw i32 %35, 1, !dbg !829
  %37 = sext i32 %36 to i64, !dbg !830
  %38 = getelementptr inbounds i8*, i8** %1, i64 %37, !dbg !830
  %39 = load i8*, i8** %38, align 8, !dbg !830, !tbaa !645
  %40 = tail call i8* @quote(i8* %39) #27, !dbg !831
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %34, i8* %40) #27, !dbg !832
  tail call void @usage(i32 1) #30, !dbg !833
  unreachable, !dbg !833

41:                                               ; preds = %29
  %42 = icmp slt i32 %30, %0, !dbg !834
  br i1 %42, label %43, label %47, !dbg !836

43:                                               ; preds = %41
  %44 = sext i32 %30 to i64, !dbg !837
  %45 = getelementptr inbounds i8*, i8** %1, i64 %44, !dbg !837
  %46 = load i8*, i8** %45, align 8, !dbg !837, !tbaa !645
  call void @llvm.dbg.value(metadata i8* %46, metadata !792, metadata !DIExpression()), !dbg !799
  br label %47, !dbg !838

47:                                               ; preds = %41, %43
  %48 = phi i8* [ %46, %43 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %41 ], !dbg !839
  call void @llvm.dbg.value(metadata i8* %48, metadata !792, metadata !DIExpression()), !dbg !799
  %49 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #28, !dbg !840
  %50 = icmp eq i32 %49, 0, !dbg !840
  br i1 %50, label %51, label %53, !dbg !842

51:                                               ; preds = %47
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !843, !tbaa !645
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %52, metadata !788, metadata !DIExpression()), !dbg !799
  br label %60, !dbg !845

53:                                               ; preds = %47
  %54 = tail call %struct._IO_FILE* @fopen(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)), !dbg !846
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %54, metadata !788, metadata !DIExpression()), !dbg !799
  %55 = icmp eq %struct._IO_FILE* %54, null, !dbg !848
  br i1 %55, label %56, label %60, !dbg !850

56:                                               ; preds = %53
  %57 = tail call i32* @__errno_location() #31, !dbg !851
  %58 = load i32, i32* %57, align 4, !dbg !851, !tbaa !821
  %59 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %48) #27, !dbg !851
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %59) #27, !dbg !851
  unreachable, !dbg !851

60:                                               ; preds = %53, %51
  %61 = phi %struct._IO_FILE* [ %52, %51 ], [ %54, %53 ], !dbg !852
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !788, metadata !DIExpression()), !dbg !799
  tail call void @fadvise(%struct._IO_FILE* %61, i32 2) #27, !dbg !853
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !854, !tbaa !645
  br i1 %11, label %143, label %63, !dbg !856

63:                                               ; preds = %60
  %64 = icmp ne i8 %15, 0, !dbg !857
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !858, metadata !DIExpression()) #27, !dbg !892
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %62, metadata !863, metadata !DIExpression()) #27, !dbg !892
  call void @llvm.dbg.value(metadata i1 %64, metadata !864, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !892
  %65 = bitcast %struct.base32_decode_context* %3 to i8*, !dbg !894
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %65) #27, !dbg !894
  call void @llvm.dbg.declare(metadata %struct.base32_decode_context* %3, metadata !868, metadata !DIExpression()) #27, !dbg !895
  %66 = tail call noalias i8* @xmalloc(i64 8192) #27, !dbg !896
  call void @llvm.dbg.value(metadata i8* %66, metadata !865, metadata !DIExpression()) #27, !dbg !892
  %67 = tail call noalias i8* @xmalloc(i64 5120) #27, !dbg !897
  call void @llvm.dbg.value(metadata i8* %67, metadata !866, metadata !DIExpression()) #27, !dbg !892
  call void @base32_decode_ctx_init(%struct.base32_decode_context* nonnull %3) #27, !dbg !898
  %68 = bitcast i64* %4 to i8*
  %69 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %61, i64 0, i32 0
  %70 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %3, i64 0, i32 0
  br label %71, !dbg !899

71:                                               ; preds = %141, %63
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %68) #27, !dbg !900
  call void @llvm.dbg.value(metadata i64 0, metadata !867, metadata !DIExpression()) #27, !dbg !892
  br label %72, !dbg !901

72:                                               ; preds = %109, %71
  %73 = phi i64 [ 0, %71 ], [ %101, %109 ], !dbg !902
  call void @llvm.dbg.value(metadata i64 %73, metadata !867, metadata !DIExpression()) #27, !dbg !892
  %74 = getelementptr inbounds i8, i8* %66, i64 %73, !dbg !903
  %75 = sub nuw nsw i64 8192, %73, !dbg !903
  %76 = call i64 @fread_unlocked(i8* %74, i64 1, i64 %75, %struct._IO_FILE* %61) #27, !dbg !903
  call void @llvm.dbg.value(metadata i64 %76, metadata !877, metadata !DIExpression()) #27, !dbg !902
  store i64 %76, i64* %4, align 8, !dbg !904, !tbaa !905
  %77 = icmp ne i64 %76, 0
  %78 = and i1 %64, %77, !dbg !907
  call void @llvm.dbg.value(metadata i64 0, metadata !879, metadata !DIExpression()) #27, !dbg !908
  call void @llvm.dbg.value(metadata i64 %76, metadata !877, metadata !DIExpression()) #27, !dbg !902
  br i1 %78, label %79, label %99, !dbg !907

79:                                               ; preds = %72, %95
  %80 = phi i64 [ %96, %95 ], [ %76, %72 ]
  %81 = phi i64 [ %97, %95 ], [ 0, %72 ]
  call void @llvm.dbg.value(metadata i64 %81, metadata !879, metadata !DIExpression()) #27, !dbg !908
  %82 = add i64 %81, %73, !dbg !909
  %83 = getelementptr inbounds i8, i8* %66, i64 %82, !dbg !913
  %84 = load i8, i8* %83, align 1, !dbg !913, !tbaa !914
  %85 = call zeroext i1 @isbase32(i8 signext %84) #31, !dbg !915
  %86 = icmp eq i8 %84, 61
  %87 = or i1 %85, %86, !dbg !916
  br i1 %87, label %88, label %90, !dbg !916

88:                                               ; preds = %79
  %89 = add nuw i64 %81, 1, !dbg !917
  call void @llvm.dbg.value(metadata i64 %89, metadata !879, metadata !DIExpression()) #27, !dbg !908
  br label %95, !dbg !918

90:                                               ; preds = %79
  %91 = getelementptr inbounds i8, i8* %74, i64 %81, !dbg !919
  %92 = getelementptr inbounds i8, i8* %91, i64 1, !dbg !920
  %93 = add i64 %80, -1, !dbg !921
  call void @llvm.dbg.value(metadata i64 %93, metadata !877, metadata !DIExpression()) #27, !dbg !902
  store i64 %93, i64* %4, align 8, !dbg !921, !tbaa !905
  %94 = sub i64 %93, %81, !dbg !922
  call void @llvm.dbg.value(metadata i8* %91, metadata !923, metadata !DIExpression()) #27, !dbg !933
  call void @llvm.dbg.value(metadata i8* %92, metadata !931, metadata !DIExpression()) #27, !dbg !933
  call void @llvm.dbg.value(metadata i64 %94, metadata !932, metadata !DIExpression()) #27, !dbg !933
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 1 %91, i8* nonnull align 1 %92, i64 %94, i1 false) #27, !dbg !935
  br label %95

95:                                               ; preds = %90, %88
  %96 = phi i64 [ %80, %88 ], [ %93, %90 ], !dbg !936
  %97 = phi i64 [ %89, %88 ], [ %81, %90 ], !dbg !908
  call void @llvm.dbg.value(metadata i64 %97, metadata !879, metadata !DIExpression()) #27, !dbg !908
  call void @llvm.dbg.value(metadata i64 %96, metadata !877, metadata !DIExpression()) #27, !dbg !902
  %98 = icmp ult i64 %97, %96, !dbg !937
  br i1 %98, label %79, label %99, !dbg !938, !llvm.loop !939

99:                                               ; preds = %95, %72
  %100 = phi i64 [ %76, %72 ], [ %96, %95 ], !dbg !941
  call void @llvm.dbg.value(metadata i64 %100, metadata !877, metadata !DIExpression()) #27, !dbg !902
  %101 = add i64 %100, %73, !dbg !942
  call void @llvm.dbg.value(metadata i64 %101, metadata !867, metadata !DIExpression()) #27, !dbg !892
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !943, metadata !DIExpression()) #27, !dbg !949
  %102 = load i32, i32* %69, align 8, !dbg !952, !tbaa !953
  %103 = and i32 %102, 32, !dbg !956
  %104 = icmp eq i32 %103, 0, !dbg !956
  br i1 %104, label %109, label %105, !dbg !957

105:                                              ; preds = %99
  %106 = tail call i32* @__errno_location() #31, !dbg !958
  %107 = load i32, i32* %106, align 4, !dbg !958, !tbaa !821
  %108 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i32 5) #27, !dbg !958
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %107, i8* %108) #27, !dbg !958
  unreachable, !dbg !958

109:                                              ; preds = %99
  %110 = icmp ult i64 %101, 8192, !dbg !959
  %111 = and i32 %102, 16
  %112 = icmp eq i32 %111, 0
  %113 = and i1 %110, %112, !dbg !960
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !961, metadata !DIExpression()) #27, !dbg !964
  br i1 %113, label %72, label %124, !dbg !960, !llvm.loop !966

114:                                              ; preds = %137
  call void @llvm.dbg.value(metadata i32 %138, metadata !878, metadata !DIExpression()) #27, !dbg !902
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !961, metadata !DIExpression()) #27, !dbg !968
  %115 = load i32, i32* %69, align 8, !dbg !970, !tbaa !953
  %116 = and i32 %115, 16, !dbg !971
  %117 = icmp eq i32 %116, 0, !dbg !971
  %118 = select i1 %117, i32 1, i32 2, !dbg !972
  %119 = icmp ult i32 %138, %118, !dbg !973
  br i1 %119, label %120, label %141, !dbg !974, !llvm.loop !975

120:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i32 %138, metadata !878, metadata !DIExpression()) #27, !dbg !902
  %121 = load i32, i32* %70, align 4
  %122 = or i32 %125, %121, !dbg !977
  %123 = icmp eq i32 %122, 0, !dbg !977
  br i1 %123, label %141, label %124, !dbg !977, !llvm.loop !975

124:                                              ; preds = %109, %120
  %125 = phi i32 [ %138, %120 ], [ 0, %109 ]
  call void @llvm.dbg.value(metadata i32 %125, metadata !878, metadata !DIExpression()) #27, !dbg !902
  call void @llvm.dbg.value(metadata i64 5120, metadata !877, metadata !DIExpression()) #27, !dbg !902
  store i64 5120, i64* %4, align 8, !dbg !979, !tbaa !905
  %126 = icmp eq i32 %125, 0, !dbg !980
  %127 = select i1 %126, i64 %101, i64 0, !dbg !981
  call void @llvm.dbg.value(metadata i64* %4, metadata !877, metadata !DIExpression(DW_OP_deref)) #27, !dbg !902
  %128 = call zeroext i1 @base32_decode_ctx(%struct.base32_decode_context* nonnull %3, i8* %66, i64 %127, i8* %67, i64* nonnull %4) #27, !dbg !982
  call void @llvm.dbg.value(metadata i1 %128, metadata !875, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !902
  %129 = load i64, i64* %4, align 8, !dbg !983, !tbaa !905
  call void @llvm.dbg.value(metadata i64 %129, metadata !877, metadata !DIExpression()) #27, !dbg !902
  call void @llvm.dbg.value(metadata i64 %129, metadata !877, metadata !DIExpression()) #27, !dbg !902
  %130 = call i64 @fwrite_unlocked(i8* %67, i64 1, i64 %129, %struct._IO_FILE* %62) #27, !dbg !983
  %131 = load i64, i64* %4, align 8, !dbg !984, !tbaa !905
  call void @llvm.dbg.value(metadata i64 %131, metadata !877, metadata !DIExpression()) #27, !dbg !902
  %132 = icmp ult i64 %130, %131, !dbg !985
  br i1 %132, label %133, label %137, !dbg !986

133:                                              ; preds = %124
  %134 = tail call i32* @__errno_location() #31, !dbg !987
  %135 = load i32, i32* %134, align 4, !dbg !987, !tbaa !821
  %136 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #27, !dbg !987
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %135, i8* %136) #27, !dbg !987
  unreachable, !dbg !987

137:                                              ; preds = %124
  %138 = add nuw nsw i32 %125, 1, !dbg !988
  call void @llvm.dbg.value(metadata i32 %138, metadata !878, metadata !DIExpression()) #27, !dbg !902
  br i1 %128, label %114, label %139, !dbg !989

139:                                              ; preds = %137
  %140 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), i32 5) #27, !dbg !990
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %140) #27, !dbg !990
  unreachable, !dbg !990

141:                                              ; preds = %120, %114
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68) #27, !dbg !992
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !961, metadata !DIExpression()) #27, !dbg !993
  br i1 %117, label %71, label %142, !dbg !995, !llvm.loop !996

142:                                              ; preds = %141
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %65) #27, !dbg !998
  br label %254, !dbg !999

143:                                              ; preds = %60
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1000, metadata !DIExpression()) #27, !dbg !1013
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %62, metadata !1005, metadata !DIExpression()) #27, !dbg !1013
  call void @llvm.dbg.value(metadata i64 %18, metadata !1006, metadata !DIExpression()) #27, !dbg !1013
  call void @llvm.dbg.value(metadata i64 0, metadata !1007, metadata !DIExpression()) #27, !dbg !1013
  %144 = tail call noalias i8* @xmalloc(i64 30720) #27, !dbg !1015
  call void @llvm.dbg.value(metadata i8* %144, metadata !1008, metadata !DIExpression()) #27, !dbg !1013
  %145 = tail call noalias i8* @xmalloc(i64 49152) #27, !dbg !1016
  call void @llvm.dbg.value(metadata i8* %145, metadata !1009, metadata !DIExpression()) #27, !dbg !1013
  %146 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %61, i64 0, i32 0
  %147 = icmp eq i64 %18, 0
  %148 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %62, i64 0, i32 5
  %149 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %62, i64 0, i32 6
  br label %150, !dbg !1017

150:                                              ; preds = %224, %143
  %151 = phi i64 [ 0, %143 ], [ %220, %224 ], !dbg !1018
  call void @llvm.dbg.value(metadata i64 0, metadata !1010, metadata !DIExpression()) #27, !dbg !1013
  br label %152, !dbg !1019

152:                                              ; preds = %161, %150
  %153 = phi i64 [ 0, %150 ], [ %157, %161 ], !dbg !1020
  call void @llvm.dbg.value(metadata i64 %153, metadata !1010, metadata !DIExpression()) #27, !dbg !1013
  %154 = getelementptr inbounds i8, i8* %144, i64 %153, !dbg !1021
  %155 = sub nuw nsw i64 30720, %153, !dbg !1021
  %156 = tail call i64 @fread_unlocked(i8* %154, i64 1, i64 %155, %struct._IO_FILE* %61) #27, !dbg !1021
  call void @llvm.dbg.value(metadata i64 %156, metadata !1011, metadata !DIExpression()) #27, !dbg !1020
  %157 = add i64 %156, %153, !dbg !1023
  call void @llvm.dbg.value(metadata i64 %157, metadata !1010, metadata !DIExpression()) #27, !dbg !1013
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !961, metadata !DIExpression()) #27, !dbg !1024
  %158 = load i32, i32* %146, align 8, !dbg !1026, !tbaa !953
  %159 = and i32 %158, 16, !dbg !1027
  %160 = icmp eq i32 %159, 0, !dbg !1027
  br i1 %160, label %161, label %166, !dbg !1028

161:                                              ; preds = %152
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !943, metadata !DIExpression()) #27, !dbg !1029
  %162 = and i32 %158, 32, !dbg !1031
  %163 = icmp eq i32 %162, 0, !dbg !1031
  %164 = icmp ult i64 %157, 30720
  %165 = and i1 %164, %163, !dbg !1032
  br i1 %165, label %152, label %166, !dbg !1032, !llvm.loop !1033

166:                                              ; preds = %161, %152
  %167 = icmp eq i64 %157, 0, !dbg !1035
  br i1 %167, label %219, label %168, !dbg !1037

168:                                              ; preds = %166
  %169 = add i64 %157, 4, !dbg !1038
  %170 = udiv i64 %169, 5, !dbg !1038
  %171 = shl i64 %170, 3, !dbg !1038
  tail call void @base32_encode(i8* %144, i64 %157, i8* %145, i64 %171) #27, !dbg !1040
  call void @llvm.dbg.value(metadata i8* %145, metadata !1041, metadata !DIExpression()) #27, !dbg !1070
  call void @llvm.dbg.value(metadata i64 %171, metadata !1046, metadata !DIExpression()) #27, !dbg !1070
  call void @llvm.dbg.value(metadata i64 %18, metadata !1047, metadata !DIExpression()) #27, !dbg !1070
  call void @llvm.dbg.value(metadata i64* undef, metadata !1048, metadata !DIExpression()) #27, !dbg !1070
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %62, metadata !1049, metadata !DIExpression()) #27, !dbg !1070
  br i1 %147, label %174, label %172, !dbg !1072

172:                                              ; preds = %168
  call void @llvm.dbg.value(metadata i64 0, metadata !1050, metadata !DIExpression()) #27, !dbg !1070
  %173 = icmp eq i64 %171, 0, !dbg !1073
  br i1 %173, label %219, label %182, !dbg !1074

174:                                              ; preds = %168
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1075, !tbaa !645
  %176 = tail call i64 @fwrite_unlocked(i8* %145, i64 1, i64 %171, %struct._IO_FILE* %175) #27, !dbg !1075
  %177 = icmp ult i64 %176, %171, !dbg !1076
  br i1 %177, label %178, label %219, !dbg !1077

178:                                              ; preds = %174
  %179 = tail call i32* @__errno_location() #31, !dbg !1078
  %180 = load i32, i32* %179, align 4, !dbg !1078, !tbaa !821
  %181 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #27, !dbg !1078
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %180, i8* %181) #27, !dbg !1078
  unreachable, !dbg !1078

182:                                              ; preds = %172, %215
  %183 = phi i64 [ %216, %215 ], [ %151, %172 ], !dbg !1013
  %184 = phi i64 [ %217, %215 ], [ 0, %172 ]
  call void @llvm.dbg.value(metadata i64 %184, metadata !1050, metadata !DIExpression()) #27, !dbg !1070
  %185 = sub i64 %18, %183, !dbg !1079
  call void @llvm.dbg.value(metadata i64 %185, metadata !1058, metadata !DIExpression()) #27, !dbg !1080
  call void @llvm.dbg.value(metadata i64 %185, metadata !1062, metadata !DIExpression()) #27, !dbg !1080
  %186 = sub i64 %171, %184, !dbg !1081
  %187 = icmp ult i64 %185, %186, !dbg !1081
  %188 = select i1 %187, i64 %185, i64 %186, !dbg !1081
  call void @llvm.dbg.value(metadata i64 %188, metadata !1062, metadata !DIExpression()) #27, !dbg !1080
  %189 = icmp eq i64 %188, 0, !dbg !1082
  br i1 %189, label %190, label %203, !dbg !1083

190:                                              ; preds = %182
  call void @llvm.dbg.value(metadata i32 10, metadata !1084, metadata !DIExpression()) #27, !dbg !1090
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %62, metadata !1089, metadata !DIExpression()) #27, !dbg !1090
  %191 = load i8*, i8** %148, align 8, !dbg !1094, !tbaa !1095
  %192 = load i8*, i8** %149, align 8, !dbg !1094, !tbaa !1096
  %193 = icmp ult i8* %191, %192, !dbg !1094
  br i1 %193, label %194, label %196, !dbg !1094, !prof !1097

194:                                              ; preds = %190
  %195 = getelementptr inbounds i8, i8* %191, i64 1, !dbg !1094
  store i8* %195, i8** %148, align 8, !dbg !1094, !tbaa !1095
  store i8 10, i8* %191, align 1, !dbg !1094, !tbaa !914
  br label %215, !dbg !1098

196:                                              ; preds = %190
  %197 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %62, i32 10) #27, !dbg !1094
  %198 = icmp eq i32 %197, -1, !dbg !1099
  br i1 %198, label %199, label %215, !dbg !1098

199:                                              ; preds = %196
  %200 = tail call i32* @__errno_location() #31, !dbg !1100
  %201 = load i32, i32* %200, align 4, !dbg !1100, !tbaa !821
  %202 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #27, !dbg !1100
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %201, i8* %202) #27, !dbg !1100
  unreachable, !dbg !1100

203:                                              ; preds = %182
  %204 = getelementptr inbounds i8, i8* %145, i64 %184, !dbg !1101
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1101, !tbaa !645
  %206 = tail call i64 @fwrite_unlocked(i8* %204, i64 1, i64 %188, %struct._IO_FILE* %205) #27, !dbg !1101
  %207 = icmp ult i64 %206, %188, !dbg !1102
  br i1 %207, label %208, label %212, !dbg !1103

208:                                              ; preds = %203
  %209 = tail call i32* @__errno_location() #31, !dbg !1104
  %210 = load i32, i32* %209, align 4, !dbg !1104, !tbaa !821
  %211 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #27, !dbg !1104
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %210, i8* %211) #27, !dbg !1104
  unreachable, !dbg !1104

212:                                              ; preds = %203
  %213 = add i64 %188, %183, !dbg !1105
  %214 = add i64 %188, %184, !dbg !1106
  call void @llvm.dbg.value(metadata i64 %214, metadata !1050, metadata !DIExpression()) #27, !dbg !1070
  br label %215

215:                                              ; preds = %212, %196, %194
  %216 = phi i64 [ %213, %212 ], [ 0, %196 ], [ 0, %194 ], !dbg !1107
  %217 = phi i64 [ %214, %212 ], [ %184, %196 ], [ %184, %194 ], !dbg !1108
  call void @llvm.dbg.value(metadata i64 %217, metadata !1050, metadata !DIExpression()) #27, !dbg !1070
  %218 = icmp ult i64 %217, %171, !dbg !1073
  br i1 %218, label %182, label %219, !dbg !1074, !llvm.loop !1109

219:                                              ; preds = %215, %174, %172, %166
  %220 = phi i64 [ %151, %166 ], [ %151, %174 ], [ %151, %172 ], [ %216, %215 ], !dbg !1018
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !961, metadata !DIExpression()) #27, !dbg !1111
  %221 = load i32, i32* %146, align 8, !dbg !1113, !tbaa !953
  %222 = and i32 %221, 16, !dbg !1114
  %223 = icmp eq i32 %222, 0, !dbg !1114
  br i1 %223, label %224, label %229, !dbg !1115

224:                                              ; preds = %219
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !943, metadata !DIExpression()) #27, !dbg !1116
  %225 = and i32 %221, 32, !dbg !1118
  %226 = icmp eq i32 %225, 0, !dbg !1118
  %227 = icmp eq i64 %157, 30720
  %228 = and i1 %227, %226, !dbg !1119
  br i1 %228, label %150, label %229, !dbg !1119, !llvm.loop !1120

229:                                              ; preds = %224, %219
  %230 = icmp ne i64 %18, 0, !dbg !1122
  call void @llvm.dbg.value(metadata i64 %220, metadata !1007, metadata !DIExpression()) #27, !dbg !1013
  %231 = icmp ne i64 %220, 0
  %232 = and i1 %230, %231, !dbg !1124
  br i1 %232, label %233, label %246, !dbg !1124

233:                                              ; preds = %229
  call void @llvm.dbg.value(metadata i32 10, metadata !1084, metadata !DIExpression()) #27, !dbg !1125
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %62, metadata !1089, metadata !DIExpression()) #27, !dbg !1125
  %234 = load i8*, i8** %148, align 8, !dbg !1127, !tbaa !1095
  %235 = load i8*, i8** %149, align 8, !dbg !1127, !tbaa !1096
  %236 = icmp ult i8* %234, %235, !dbg !1127
  br i1 %236, label %237, label %239, !dbg !1127, !prof !1097

237:                                              ; preds = %233
  %238 = getelementptr inbounds i8, i8* %234, i64 1, !dbg !1127
  store i8* %238, i8** %148, align 8, !dbg !1127, !tbaa !1095
  store i8 10, i8* %234, align 1, !dbg !1127, !tbaa !914
  br label %246, !dbg !1128

239:                                              ; preds = %233
  %240 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %62, i32 10) #27, !dbg !1127
  %241 = icmp eq i32 %240, -1, !dbg !1129
  br i1 %241, label %242, label %246, !dbg !1128

242:                                              ; preds = %239
  %243 = tail call i32* @__errno_location() #31, !dbg !1130
  %244 = load i32, i32* %243, align 4, !dbg !1130, !tbaa !821
  %245 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #27, !dbg !1130
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %244, i8* %245) #27, !dbg !1130
  unreachable, !dbg !1130

246:                                              ; preds = %239, %237, %229
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !943, metadata !DIExpression()) #27, !dbg !1131
  %247 = load i32, i32* %146, align 8, !dbg !1134, !tbaa !953
  %248 = and i32 %247, 32, !dbg !1135
  %249 = icmp eq i32 %248, 0, !dbg !1135
  br i1 %249, label %254, label %250, !dbg !1136

250:                                              ; preds = %246
  %251 = tail call i32* @__errno_location() #31, !dbg !1137
  %252 = load i32, i32* %251, align 4, !dbg !1137, !tbaa !821
  %253 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i32 5) #27, !dbg !1137
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %252, i8* %253) #27, !dbg !1137
  unreachable, !dbg !1137

254:                                              ; preds = %246, %142
  %255 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %61) #27, !dbg !1138
  %256 = icmp eq i32 %255, -1, !dbg !1140
  br i1 %256, label %257, label %266, !dbg !1141

257:                                              ; preds = %254
  %258 = call i32 @strcmp(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #28, !dbg !1142
  %259 = icmp eq i32 %258, 0, !dbg !1142
  %260 = tail call i32* @__errno_location() #31, !dbg !1145
  %261 = load i32, i32* %260, align 4, !dbg !1145, !tbaa !821
  br i1 %259, label %262, label %264, !dbg !1146

262:                                              ; preds = %257
  %263 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 5) #27, !dbg !1147
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %261, i8* %263) #27, !dbg !1147
  unreachable, !dbg !1147

264:                                              ; preds = %257
  %265 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %48) #27, !dbg !1148
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %261, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %265) #27, !dbg !1148
  unreachable, !dbg !1148

266:                                              ; preds = %254
  ret i32 0, !dbg !1149
}

; Function Attrs: nounwind
declare !dbg !1150 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1153 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1156 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1161 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !1167 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare !dbg !1171 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local void @base32_encode(i8* noalias nocapture readonly %0, i64 %1, i8* noalias nocapture %2, i64 %3) local_unnamed_addr #10 !dbg !61 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !78, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %1, metadata !79, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %2, metadata !80, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %3, metadata !81, metadata !DIExpression()), !dbg !1174
  %5 = icmp ne i64 %1, 0, !dbg !1175
  %6 = icmp ne i64 %3, 0, !dbg !1176
  %7 = and i1 %5, %6, !dbg !1176
  br i1 %7, label %8, label %156, !dbg !1177

8:                                                ; preds = %4, %150
  %9 = phi i64 [ %148, %150 ], [ %3, %4 ]
  %10 = phi i8* [ %151, %150 ], [ %2, %4 ]
  %11 = phi i64 [ %153, %150 ], [ %1, %4 ]
  %12 = phi i8* [ %155, %150 ], [ %0, %4 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !81, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %10, metadata !80, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %11, metadata !79, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %12, metadata !78, metadata !DIExpression()), !dbg !1174
  %13 = load i8, i8* %12, align 1, !dbg !1178, !tbaa !914
  %14 = lshr i8 %13, 3, !dbg !1180
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %15, !dbg !1181
  %17 = load i8, i8* %16, align 1, !dbg !1181, !tbaa !914
  %18 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1182
  call void @llvm.dbg.value(metadata i8* %18, metadata !80, metadata !DIExpression()), !dbg !1174
  store i8 %17, i8* %10, align 1, !dbg !1183, !tbaa !914
  call void @llvm.dbg.value(metadata i64 %9, metadata !81, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1174
  %19 = icmp eq i64 %9, 1, !dbg !1184
  br i1 %19, label %160, label %20, !dbg !1186

20:                                               ; preds = %8
  %21 = load i8, i8* %12, align 1, !dbg !1187, !tbaa !914
  %22 = zext i8 %21 to i64, !dbg !1188
  %23 = shl nuw nsw i64 %22, 2, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %11, metadata !79, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1174
  %24 = icmp eq i64 %11, 1, !dbg !1190
  br i1 %24, label %30, label %25, !dbg !1190

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1191
  %27 = load i8, i8* %26, align 1, !dbg !1191, !tbaa !914
  %28 = lshr i8 %27, 6, !dbg !1192
  %29 = zext i8 %28 to i64, !dbg !1192
  br label %30, !dbg !1190

30:                                               ; preds = %20, %25
  %31 = phi i64 [ %29, %25 ], [ 0, %20 ], !dbg !1190
  %32 = add nuw nsw i64 %31, %23, !dbg !1193
  %33 = and i64 %32, 31, !dbg !1194
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %33, !dbg !1195
  %35 = load i8, i8* %34, align 1, !dbg !1195, !tbaa !914
  %36 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !1196
  call void @llvm.dbg.value(metadata i8* %36, metadata !80, metadata !DIExpression()), !dbg !1174
  store i8 %35, i8* %18, align 1, !dbg !1197, !tbaa !914
  call void @llvm.dbg.value(metadata i64 %9, metadata !81, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1174
  %37 = icmp eq i64 %9, 2, !dbg !1198
  br i1 %37, label %160, label %38, !dbg !1200

38:                                               ; preds = %30
  br i1 %24, label %39, label %41, !dbg !1201

39:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i8* %10, metadata !80, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1174
  store i8 61, i8* %36, align 1, !dbg !1202, !tbaa !914
  call void @llvm.dbg.value(metadata i64 %9, metadata !81, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1174
  %40 = icmp eq i64 %9, 3, !dbg !1203
  br i1 %40, label %160, label %71, !dbg !1205

41:                                               ; preds = %38
  %42 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1206
  %43 = load i8, i8* %42, align 1, !dbg !1206, !tbaa !914
  %44 = lshr i8 %43, 1, !dbg !1207
  %45 = and i8 %44, 31, !dbg !1208
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %46, !dbg !1209
  %48 = load i8, i8* %47, align 1, !dbg !1209, !tbaa !914
  %49 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1210
  call void @llvm.dbg.value(metadata i8* %10, metadata !80, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1174
  store i8 %48, i8* %36, align 1, !dbg !1202, !tbaa !914
  call void @llvm.dbg.value(metadata i64 %9, metadata !81, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1174
  %50 = icmp eq i64 %9, 3, !dbg !1203
  br i1 %50, label %160, label %51, !dbg !1205

51:                                               ; preds = %41
  %52 = load i8, i8* %42, align 1, !dbg !1211, !tbaa !914
  %53 = zext i8 %52 to i64, !dbg !1212
  %54 = shl nuw nsw i64 %53, 4, !dbg !1213
  call void @llvm.dbg.value(metadata i64 %11, metadata !79, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1174
  %55 = icmp eq i64 %11, 2, !dbg !1214
  br i1 %55, label %56, label %61, !dbg !1214

56:                                               ; preds = %51
  %57 = and i64 %54, 16, !dbg !1215
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %57, !dbg !1216
  %59 = load i8, i8* %58, align 16, !dbg !1216, !tbaa !914
  call void @llvm.dbg.value(metadata i64 %11, metadata !79, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %10, metadata !80, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1174
  store i8 %59, i8* %49, align 1, !dbg !1217, !tbaa !914
  call void @llvm.dbg.value(metadata i64 %9, metadata !81, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !1174
  %60 = icmp eq i64 %9, 4, !dbg !1218
  br i1 %60, label %160, label %92, !dbg !1220

61:                                               ; preds = %51
  %62 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1221
  %63 = load i8, i8* %62, align 1, !dbg !1221, !tbaa !914
  %64 = lshr i8 %63, 4, !dbg !1222
  %65 = zext i8 %64 to i64, !dbg !1222
  %66 = and i64 %54, 16, !dbg !1215
  %67 = or i64 %66, %65, !dbg !1215
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %67, !dbg !1216
  %69 = load i8, i8* %68, align 1, !dbg !1216, !tbaa !914
  call void @llvm.dbg.value(metadata i64 %11, metadata !79, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %10, metadata !80, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1174
  store i8 %69, i8* %49, align 1, !dbg !1217, !tbaa !914
  call void @llvm.dbg.value(metadata i64 %9, metadata !81, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !1174
  %70 = icmp eq i64 %9, 4, !dbg !1218
  br i1 %70, label %160, label %74, !dbg !1220

71:                                               ; preds = %39
  %72 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1210
  call void @llvm.dbg.value(metadata i64 %11, metadata !79, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %10, metadata !80, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1174
  store i8 61, i8* %72, align 1, !dbg !1217, !tbaa !914
  call void @llvm.dbg.value(metadata i64 %9, metadata !81, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !1174
  %73 = icmp eq i64 %9, 4, !dbg !1218
  br i1 %73, label %160, label %92, !dbg !1220

74:                                               ; preds = %61
  %75 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1223
  %76 = load i8, i8* %75, align 1, !dbg !1223, !tbaa !914
  %77 = zext i8 %76 to i64, !dbg !1224
  %78 = shl nuw nsw i64 %77, 1, !dbg !1225
  %79 = add i64 %11, -3, !dbg !1226
  call void @llvm.dbg.value(metadata i64 %79, metadata !79, metadata !DIExpression()), !dbg !1174
  %80 = icmp eq i64 %79, 0, !dbg !1226
  br i1 %80, label %86, label %81, !dbg !1226

81:                                               ; preds = %74
  %82 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1227
  %83 = load i8, i8* %82, align 1, !dbg !1227, !tbaa !914
  %84 = lshr i8 %83, 7, !dbg !1228
  %85 = zext i8 %84 to i64, !dbg !1228
  br label %86, !dbg !1226

86:                                               ; preds = %74, %81
  %87 = phi i64 [ %85, %81 ], [ 0, %74 ], !dbg !1226
  %88 = add nuw nsw i64 %87, %78, !dbg !1229
  %89 = and i64 %88, 31, !dbg !1230
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %89, !dbg !1231
  %91 = load i8, i8* %90, align 1, !dbg !1231, !tbaa !914
  br label %92, !dbg !1232

92:                                               ; preds = %56, %71, %86
  %93 = phi i64 [ %79, %86 ], [ 0, %71 ], [ 0, %56 ], !dbg !1233
  %94 = phi i8 [ %91, %86 ], [ 61, %71 ], [ 61, %56 ], !dbg !1232
  %95 = getelementptr inbounds i8, i8* %10, i64 4, !dbg !1234
  call void @llvm.dbg.value(metadata i64 %93, metadata !79, metadata !DIExpression()), !dbg !1174
  %96 = getelementptr inbounds i8, i8* %10, i64 5, !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !80, metadata !DIExpression()), !dbg !1174
  store i8 %94, i8* %95, align 1, !dbg !1236, !tbaa !914
  call void @llvm.dbg.value(metadata i64 %9, metadata !81, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value)), !dbg !1174
  %97 = icmp eq i64 %9, 5, !dbg !1237
  br i1 %97, label %160, label %98, !dbg !1239

98:                                               ; preds = %92
  %99 = icmp eq i64 %93, 0, !dbg !1240
  br i1 %99, label %100, label %102, !dbg !1240

100:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i8* %10, metadata !80, metadata !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value)), !dbg !1174
  store i8 61, i8* %96, align 1, !dbg !1241, !tbaa !914
  call void @llvm.dbg.value(metadata i64 %9, metadata !81, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !1174
  %101 = icmp eq i64 %9, 6, !dbg !1242
  br i1 %101, label %160, label %133, !dbg !1244

102:                                              ; preds = %98
  %103 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1245
  %104 = load i8, i8* %103, align 1, !dbg !1245, !tbaa !914
  %105 = lshr i8 %104, 2, !dbg !1246
  %106 = and i8 %105, 31, !dbg !1247
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %107, !dbg !1248
  %109 = load i8, i8* %108, align 1, !dbg !1248, !tbaa !914
  %110 = getelementptr inbounds i8, i8* %10, i64 6, !dbg !1249
  call void @llvm.dbg.value(metadata i8* %10, metadata !80, metadata !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value)), !dbg !1174
  store i8 %109, i8* %96, align 1, !dbg !1241, !tbaa !914
  call void @llvm.dbg.value(metadata i64 %9, metadata !81, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !1174
  %111 = icmp eq i64 %9, 6, !dbg !1242
  br i1 %111, label %160, label %112, !dbg !1244

112:                                              ; preds = %102
  %113 = load i8, i8* %103, align 1, !dbg !1250, !tbaa !914
  %114 = zext i8 %113 to i64, !dbg !1251
  %115 = shl nuw nsw i64 %114, 3, !dbg !1252
  %116 = add i64 %93, -1, !dbg !1253
  call void @llvm.dbg.value(metadata i64 %116, metadata !79, metadata !DIExpression()), !dbg !1174
  %117 = icmp eq i64 %116, 0, !dbg !1253
  br i1 %117, label %118, label %123, !dbg !1253

118:                                              ; preds = %112
  %119 = and i64 %115, 24, !dbg !1254
  %120 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %119, !dbg !1255
  %121 = load i8, i8* %120, align 8, !dbg !1255, !tbaa !914
  call void @llvm.dbg.value(metadata i64 %116, metadata !79, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %10, metadata !80, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !1174
  store i8 %121, i8* %110, align 1, !dbg !1256, !tbaa !914
  call void @llvm.dbg.value(metadata i64 %9, metadata !81, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !1174
  %122 = icmp eq i64 %9, 7, !dbg !1257
  br i1 %122, label %160, label %143, !dbg !1259

123:                                              ; preds = %112
  %124 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1260
  %125 = load i8, i8* %124, align 1, !dbg !1260, !tbaa !914
  %126 = lshr i8 %125, 5, !dbg !1261
  %127 = zext i8 %126 to i64, !dbg !1261
  %128 = and i64 %115, 24, !dbg !1254
  %129 = or i64 %128, %127, !dbg !1254
  %130 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %129, !dbg !1255
  %131 = load i8, i8* %130, align 1, !dbg !1255, !tbaa !914
  call void @llvm.dbg.value(metadata i64 %116, metadata !79, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %10, metadata !80, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !1174
  store i8 %131, i8* %110, align 1, !dbg !1256, !tbaa !914
  call void @llvm.dbg.value(metadata i64 %9, metadata !81, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !1174
  %132 = icmp eq i64 %9, 7, !dbg !1257
  br i1 %132, label %160, label %136, !dbg !1259

133:                                              ; preds = %100
  %134 = getelementptr inbounds i8, i8* %10, i64 6, !dbg !1249
  call void @llvm.dbg.value(metadata i64 %116, metadata !79, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %10, metadata !80, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !1174
  store i8 61, i8* %134, align 1, !dbg !1256, !tbaa !914
  call void @llvm.dbg.value(metadata i64 %9, metadata !81, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !1174
  %135 = icmp eq i64 %9, 7, !dbg !1257
  br i1 %135, label %160, label %143, !dbg !1259

136:                                              ; preds = %123
  %137 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1262
  %138 = load i8, i8* %137, align 1, !dbg !1262, !tbaa !914
  %139 = and i8 %138, 31, !dbg !1263
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %140, !dbg !1264
  %142 = load i8, i8* %141, align 1, !dbg !1264, !tbaa !914
  br label %143, !dbg !1265

143:                                              ; preds = %118, %133, %136
  %144 = phi i1 [ false, %136 ], [ true, %133 ], [ true, %118 ]
  %145 = phi i64 [ %116, %136 ], [ 0, %133 ], [ 0, %118 ]
  %146 = phi i8 [ %142, %136 ], [ 61, %133 ], [ 61, %118 ], !dbg !1265
  %147 = getelementptr inbounds i8, i8* %10, i64 7, !dbg !1266
  call void @llvm.dbg.value(metadata i8* %10, metadata !80, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1174
  store i8 %146, i8* %147, align 1, !dbg !1267, !tbaa !914
  %148 = add i64 %9, -8, !dbg !1268
  call void @llvm.dbg.value(metadata i64 %148, metadata !81, metadata !DIExpression()), !dbg !1174
  %149 = icmp eq i64 %148, 0, !dbg !1268
  br i1 %149, label %160, label %150, !dbg !1270

150:                                              ; preds = %143
  %151 = getelementptr inbounds i8, i8* %10, i64 8, !dbg !1271
  call void @llvm.dbg.value(metadata i8* %151, metadata !80, metadata !DIExpression()), !dbg !1174
  %152 = add i64 %145, -1
  %153 = select i1 %144, i64 0, i64 %152, !dbg !1272
  call void @llvm.dbg.value(metadata i64 %153, metadata !79, metadata !DIExpression()), !dbg !1174
  %154 = icmp eq i64 %153, 0, !dbg !1273
  %155 = getelementptr inbounds i8, i8* %12, i64 5, !dbg !1275
  call void @llvm.dbg.value(metadata i64 %148, metadata !81, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8* undef, metadata !78, metadata !DIExpression()), !dbg !1174
  br i1 %154, label %158, label %8, !dbg !1177, !llvm.loop !1276

156:                                              ; preds = %4
  call void @llvm.dbg.value(metadata i64 %3, metadata !81, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %2, metadata !80, metadata !DIExpression()), !dbg !1174
  %157 = icmp eq i64 %3, 0, !dbg !1278
  br i1 %157, label %160, label %158, !dbg !1280

158:                                              ; preds = %150, %156
  %159 = phi i8* [ %2, %156 ], [ %151, %150 ]
  store i8 0, i8* %159, align 1, !dbg !1281, !tbaa !914
  br label %160, !dbg !1282

160:                                              ; preds = %133, %102, %71, %41, %8, %30, %39, %56, %92, %100, %118, %143, %61, %123, %158, %156
  ret void, !dbg !1283
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i64 @base32_encode_alloc(i8* nocapture readonly %0, i64 %1, i8** nocapture %2) local_unnamed_addr #11 !dbg !1284 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1288, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i64 %1, metadata !1289, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i8** %2, metadata !1290, metadata !DIExpression()), !dbg !1292
  %4 = add i64 %1, 4, !dbg !1293
  %5 = udiv i64 %4, 5, !dbg !1293
  %6 = shl i64 %5, 3, !dbg !1293
  %7 = or i64 %6, 1, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %7, metadata !1291, metadata !DIExpression()), !dbg !1292
  %8 = icmp ult i64 %7, %1, !dbg !1295
  br i1 %8, label %9, label %10, !dbg !1297

9:                                                ; preds = %3
  store i8* null, i8** %2, align 8, !dbg !1298, !tbaa !645
  br label %14, !dbg !1300

10:                                               ; preds = %3
  %11 = tail call noalias i8* @malloc(i64 %7) #27, !dbg !1301
  store i8* %11, i8** %2, align 8, !dbg !1302, !tbaa !645
  %12 = icmp eq i8* %11, null, !dbg !1303
  br i1 %12, label %14, label %13, !dbg !1305

13:                                               ; preds = %10
  tail call void @base32_encode(i8* %0, i64 %1, i8* nonnull %11, i64 %7), !dbg !1306
  br label %14, !dbg !1307

14:                                               ; preds = %10, %13, %9
  %15 = phi i64 [ 0, %9 ], [ %6, %13 ], [ %7, %10 ], !dbg !1292
  ret i64 %15, !dbg !1308
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #12

; Function Attrs: norecurse nounwind readnone sspstrong uwtable willreturn
define dso_local zeroext i1 @isbase32(i8 signext %0) local_unnamed_addr #13 !dbg !1309 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1313, metadata !DIExpression()), !dbg !1314
  %2 = zext i8 %0 to i64, !dbg !1315
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %2, !dbg !1315
  %4 = load i8, i8* %3, align 1, !dbg !1315, !tbaa !914
  %5 = icmp sgt i8 %4, -1, !dbg !1316
  ret i1 %5, !dbg !1317
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @base32_decode_ctx_init(%struct.base32_decode_context* nocapture %0) local_unnamed_addr #14 !dbg !1318 {
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, metadata !1327, metadata !DIExpression()), !dbg !1328
  %2 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 0, !dbg !1329
  store i32 0, i32* %2, align 4, !dbg !1330, !tbaa !1331
  ret void, !dbg !1333
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local zeroext i1 @base32_decode_ctx(%struct.base32_decode_context* %0, i8* noalias %1, i64 %2, i8* noalias %3, i64* nocapture %4) local_unnamed_addr #11 !dbg !1334 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, metadata !1338, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i8* %1, metadata !1339, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 %2, metadata !1340, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i8* %3, metadata !1341, metadata !DIExpression()), !dbg !1352
  store i8* %3, i8** %6, align 8, !tbaa !645
  call void @llvm.dbg.value(metadata i64* %4, metadata !1342, metadata !DIExpression()), !dbg !1352
  %8 = bitcast i64* %7 to i8*, !dbg !1353
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #27, !dbg !1353
  %9 = load i64, i64* %4, align 8, !dbg !1354, !tbaa !905
  call void @llvm.dbg.value(metadata i64 %9, metadata !1343, metadata !DIExpression()), !dbg !1352
  store i64 %9, i64* %7, align 8, !dbg !1355, !tbaa !905
  %10 = icmp eq %struct.base32_decode_context* %0, null, !dbg !1356
  call void @llvm.dbg.value(metadata i1 %10, metadata !1344, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1352
  call void @llvm.dbg.value(metadata i8 0, metadata !1345, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 0, metadata !1346, metadata !DIExpression()), !dbg !1352
  br i1 %10, label %16, label %11, !dbg !1357

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 0, !dbg !1358
  %13 = load i32, i32* %12, align 4, !dbg !1358, !tbaa !1331
  call void @llvm.dbg.value(metadata i32 %13, metadata !1346, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 %2, metadata !1340, metadata !DIExpression()), !dbg !1352
  %14 = icmp eq i64 %2, 0, !dbg !1361
  call void @llvm.dbg.value(metadata i1 %14, metadata !1345, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1352
  %15 = icmp ne i32 %13, 0, !dbg !1362
  br label %16, !dbg !1362

16:                                               ; preds = %11, %5
  %17 = phi i1 [ %15, %11 ], [ false, %5 ]
  %18 = phi i1 [ %14, %11 ], [ false, %5 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1345, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 undef, metadata !1346, metadata !DIExpression()), !dbg !1352
  %19 = or i1 %17, %18
  %20 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 0
  %21 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 1, i64 0
  br label %22, !dbg !1363

22:                                               ; preds = %110, %16
  %23 = phi i64 [ %9, %16 ], [ %113, %110 ], !dbg !1364
  %24 = phi i8* [ %1, %16 ], [ %111, %110 ]
  %25 = phi i64 [ %2, %16 ], [ %112, %110 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !1343, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 %23, metadata !1347, metadata !DIExpression()), !dbg !1365
  br i1 %19, label %35, label %26, !dbg !1366

26:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 %23, metadata !1343, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 %23, metadata !1347, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8* %24, metadata !1339, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 %25, metadata !1340, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i8** %6, metadata !1341, metadata !DIExpression(DW_OP_deref)), !dbg !1352
  call void @llvm.dbg.value(metadata i64* %7, metadata !1343, metadata !DIExpression(DW_OP_deref)), !dbg !1352
  %27 = call fastcc zeroext i1 @decode_8(i8* %24, i64 %25, i8** nonnull %6, i64* nonnull %7), !dbg !1368
  br i1 %27, label %28, label %35, !dbg !1372

28:                                               ; preds = %26, %28
  %29 = phi i64 [ %32, %28 ], [ %25, %26 ]
  %30 = phi i8* [ %31, %28 ], [ %24, %26 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !1340, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i8* %30, metadata !1339, metadata !DIExpression()), !dbg !1352
  %31 = getelementptr inbounds i8, i8* %30, i64 8, !dbg !1373
  call void @llvm.dbg.value(metadata i8* %31, metadata !1339, metadata !DIExpression()), !dbg !1352
  %32 = add i64 %29, -8, !dbg !1374
  call void @llvm.dbg.value(metadata i64 %32, metadata !1340, metadata !DIExpression()), !dbg !1352
  %33 = load i64, i64* %7, align 8, !dbg !1375, !tbaa !905
  call void @llvm.dbg.value(metadata i64 %33, metadata !1347, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8** %6, metadata !1341, metadata !DIExpression(DW_OP_deref)), !dbg !1352
  call void @llvm.dbg.value(metadata i64* %7, metadata !1343, metadata !DIExpression(DW_OP_deref)), !dbg !1352
  %34 = call fastcc zeroext i1 @decode_8(i8* nonnull %31, i64 %32, i8** nonnull %6, i64* nonnull %7), !dbg !1368
  br i1 %34, label %28, label %35, !dbg !1372, !llvm.loop !1376

35:                                               ; preds = %28, %26, %22
  %36 = phi i8* [ %24, %22 ], [ %24, %26 ], [ %31, %28 ]
  %37 = phi i64 [ %25, %22 ], [ %25, %26 ], [ %32, %28 ]
  %38 = phi i64 [ %23, %22 ], [ %23, %26 ], [ %33, %28 ], !dbg !1365
  call void @llvm.dbg.value(metadata i64 %38, metadata !1347, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %37, metadata !1340, metadata !DIExpression()), !dbg !1352
  %39 = icmp eq i64 %37, 0, !dbg !1379
  %40 = xor i1 %39, true, !dbg !1381
  %41 = or i1 %18, %40, !dbg !1381
  br i1 %41, label %42, label %114, !dbg !1381

42:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %37, metadata !1340, metadata !DIExpression()), !dbg !1352
  br i1 %39, label %50, label %43, !dbg !1382

43:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i8* %36, metadata !1339, metadata !DIExpression()), !dbg !1352
  %44 = load i8, i8* %36, align 1, !dbg !1384, !tbaa !914
  %45 = icmp ne i8 %44, 10, !dbg !1385
  %46 = or i1 %10, %45, !dbg !1386
  br i1 %46, label %50, label %47, !dbg !1386

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !1387
  call void @llvm.dbg.value(metadata i8* %48, metadata !1339, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 %37, metadata !1340, metadata !DIExpression()), !dbg !1352
  %49 = add i64 %37, -1, !dbg !1389
  call void @llvm.dbg.value(metadata i64 %49, metadata !1340, metadata !DIExpression()), !dbg !1352
  br label %110, !dbg !1390, !llvm.loop !1391

50:                                               ; preds = %43, %42
  %51 = load i64, i64* %7, align 8, !dbg !1393, !tbaa !905
  call void @llvm.dbg.value(metadata i64 %51, metadata !1343, metadata !DIExpression()), !dbg !1352
  %52 = sub i64 %51, %38, !dbg !1394
  %53 = load i8*, i8** %6, align 8, !dbg !1395, !tbaa !645
  call void @llvm.dbg.value(metadata i8* %53, metadata !1341, metadata !DIExpression()), !dbg !1352
  %54 = getelementptr inbounds i8, i8* %53, i64 %52, !dbg !1395
  call void @llvm.dbg.value(metadata i8* %54, metadata !1341, metadata !DIExpression()), !dbg !1352
  store i8* %54, i8** %6, align 8, !dbg !1395, !tbaa !645
  call void @llvm.dbg.value(metadata i64 %38, metadata !1343, metadata !DIExpression()), !dbg !1352
  store i64 %38, i64* %7, align 8, !dbg !1396, !tbaa !905
  call void @llvm.dbg.value(metadata i8* %36, metadata !1339, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 %37, metadata !1340, metadata !DIExpression()), !dbg !1352
  %55 = getelementptr inbounds i8, i8* %36, i64 %37, !dbg !1397
  call void @llvm.dbg.value(metadata i8* %55, metadata !1349, metadata !DIExpression()), !dbg !1398
  br i1 %10, label %92, label %56, !dbg !1399

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, metadata !1400, metadata !DIExpression()) #27, !dbg !1416
  call void @llvm.dbg.value(metadata i8** undef, metadata !1406, metadata !DIExpression()) #27, !dbg !1416
  call void @llvm.dbg.value(metadata i8* %55, metadata !1407, metadata !DIExpression()) #27, !dbg !1416
  call void @llvm.dbg.value(metadata i64* undef, metadata !1408, metadata !DIExpression()) #27, !dbg !1416
  %57 = load i32, i32* %20, align 4, !dbg !1419, !tbaa !1331, !noalias !1421
  switch i32 %57, label %66 [
    i32 8, label %58
    i32 0, label %59
  ], !dbg !1424

58:                                               ; preds = %56
  store i32 0, i32* %20, align 4, !dbg !1425, !tbaa !1331, !noalias !1421
  br label %59, !dbg !1426

59:                                               ; preds = %58, %56
  call void @llvm.dbg.value(metadata i8* %36, metadata !1409, metadata !DIExpression()) #27, !dbg !1427
  %60 = icmp sgt i64 %37, 7, !dbg !1428
  br i1 %60, label %61, label %66, !dbg !1430

61:                                               ; preds = %59
  %62 = tail call i8* @memchr(i8* nonnull dereferenceable(8) %36, i32 10, i64 8) #28, !dbg !1431
  %63 = icmp eq i8* %62, null, !dbg !1432
  br i1 %63, label %64, label %69, !dbg !1433

64:                                               ; preds = %61
  %65 = getelementptr inbounds i8, i8* %36, i64 8, !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1351, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %94, metadata !1340, metadata !DIExpression()), !dbg !1352
  br label %101, !dbg !1436

66:                                               ; preds = %56, %59
  %67 = phi i32 [ 0, %59 ], [ %57, %56 ]
  call void @llvm.dbg.value(metadata i8* %36, metadata !1412, metadata !DIExpression()) #27, !dbg !1438
  %68 = icmp sgt i64 %37, 0, !dbg !1439
  br i1 %68, label %69, label %88, !dbg !1440

69:                                               ; preds = %61, %66
  %70 = phi i32 [ 0, %61 ], [ %67, %66 ]
  br label %71, !dbg !1441

71:                                               ; preds = %69, %79
  %72 = phi i32 [ %70, %69 ], [ %80, %79 ]
  %73 = phi i8* [ %36, %69 ], [ %76, %79 ]
  br label %74, !dbg !1441

74:                                               ; preds = %71, %86
  %75 = phi i8* [ %76, %86 ], [ %73, %71 ]
  call void @llvm.dbg.value(metadata i8* %75, metadata !1412, metadata !DIExpression()) #27, !dbg !1438
  %76 = getelementptr inbounds i8, i8* %75, i64 1, !dbg !1442
  call void @llvm.dbg.value(metadata i8* %76, metadata !1412, metadata !DIExpression()) #27, !dbg !1438
  %77 = load i8, i8* %75, align 1, !dbg !1443, !tbaa !914
  call void @llvm.dbg.value(metadata i8 %77, metadata !1414, metadata !DIExpression()) #27, !dbg !1444
  %78 = icmp eq i8 %77, 10, !dbg !1445
  br i1 %78, label %86, label %79, !dbg !1441

79:                                               ; preds = %74
  %80 = add i32 %72, 1, !dbg !1447
  store i32 %80, i32* %20, align 4, !dbg !1447, !tbaa !1331, !noalias !1421
  %81 = zext i32 %72 to i64, !dbg !1449
  %82 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 1, i64 %81, !dbg !1449
  store i8 %77, i8* %82, align 1, !dbg !1450, !tbaa !914, !noalias !1421
  %83 = icmp ne i32 %80, 8, !dbg !1451
  %84 = icmp ult i8* %76, %55
  %85 = and i1 %83, %84, !dbg !1453
  call void @llvm.dbg.value(metadata i8* %76, metadata !1412, metadata !DIExpression()) #27, !dbg !1438
  br i1 %85, label %71, label %88, !dbg !1453

86:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i8* %76, metadata !1412, metadata !DIExpression()) #27, !dbg !1438
  %87 = icmp ult i8* %76, %55, !dbg !1439
  br i1 %87, label %74, label %88, !dbg !1440

88:                                               ; preds = %86, %79, %66
  %89 = phi i32 [ %67, %66 ], [ %72, %86 ], [ %80, %79 ], !dbg !1454
  %90 = phi i8* [ %36, %66 ], [ %76, %79 ], [ %76, %86 ], !dbg !1438
  call void @llvm.dbg.value(metadata i8* %90, metadata !1412, metadata !DIExpression()) #27, !dbg !1438
  %91 = zext i32 %89 to i64, !dbg !1455
  br label %92

92:                                               ; preds = %88, %50
  %93 = phi i8* [ %36, %50 ], [ %90, %88 ]
  %94 = phi i64 [ %37, %50 ], [ %91, %88 ]
  %95 = phi i8* [ %36, %50 ], [ %21, %88 ], !dbg !1456
  call void @llvm.dbg.value(metadata i8* %95, metadata !1351, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %94, metadata !1340, metadata !DIExpression()), !dbg !1352
  %96 = icmp eq i64 %94, 0, !dbg !1457
  br i1 %96, label %114, label %97, !dbg !1458

97:                                               ; preds = %92
  %98 = icmp ugt i64 %94, 7, !dbg !1459
  %99 = or i1 %18, %98, !dbg !1436
  %100 = or i1 %10, %99, !dbg !1436
  br i1 %100, label %101, label %114, !dbg !1436

101:                                              ; preds = %64, %97
  %102 = phi i8* [ %65, %64 ], [ %93, %97 ]
  %103 = phi i64 [ 8, %64 ], [ %94, %97 ]
  %104 = phi i8* [ %36, %64 ], [ %95, %97 ]
  call void @llvm.dbg.value(metadata i64 %94, metadata !1340, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i8** %6, metadata !1341, metadata !DIExpression(DW_OP_deref)), !dbg !1352
  call void @llvm.dbg.value(metadata i64* %7, metadata !1343, metadata !DIExpression(DW_OP_deref)), !dbg !1352
  %105 = call fastcc zeroext i1 @decode_8(i8* %104, i64 %103, i8** nonnull %6, i64* nonnull %7), !dbg !1460
  br i1 %105, label %106, label %114, !dbg !1462

106:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i8* %93, metadata !1339, metadata !DIExpression()), !dbg !1352
  %107 = ptrtoint i8* %55 to i64, !dbg !1463
  %108 = ptrtoint i8* %102 to i64, !dbg !1463
  %109 = sub i64 %107, %108, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %109, metadata !1340, metadata !DIExpression()), !dbg !1352
  br label %110

110:                                              ; preds = %106, %47
  %111 = phi i8* [ %48, %47 ], [ %102, %106 ]
  %112 = phi i64 [ %49, %47 ], [ %109, %106 ]
  %113 = load i64, i64* %7, align 8, !dbg !1364, !tbaa !905
  br label %22

114:                                              ; preds = %92, %97, %101, %35
  %115 = phi i64 [ %37, %35 ], [ 0, %92 ], [ 0, %97 ], [ 1, %101 ]
  %116 = load i64, i64* %7, align 8, !dbg !1464, !tbaa !905
  call void @llvm.dbg.value(metadata i64 %116, metadata !1343, metadata !DIExpression()), !dbg !1352
  %117 = load i64, i64* %4, align 8, !dbg !1465, !tbaa !905
  %118 = sub i64 %117, %116, !dbg !1465
  store i64 %118, i64* %4, align 8, !dbg !1465, !tbaa !905
  call void @llvm.dbg.value(metadata i64 %112, metadata !1340, metadata !DIExpression()), !dbg !1352
  %119 = icmp eq i64 %115, 0, !dbg !1466
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #27, !dbg !1467
  ret i1 %119, !dbg !1468
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define internal fastcc zeroext i1 @decode_8(i8* noalias nocapture readonly %0, i64 %1, i8** nocapture %2, i64* nocapture %3) unnamed_addr #15 !dbg !1469 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1474, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %1, metadata !1475, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8** %2, metadata !1476, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64* %3, metadata !1477, metadata !DIExpression()), !dbg !1479
  %5 = load i8*, i8** %2, align 8, !dbg !1480, !tbaa !645
  call void @llvm.dbg.value(metadata i8* %5, metadata !1478, metadata !DIExpression()), !dbg !1479
  %6 = icmp ult i64 %1, 8, !dbg !1481
  br i1 %6, label %184, label %7, !dbg !1483

7:                                                ; preds = %4
  %8 = load i8, i8* %0, align 1, !dbg !1484, !tbaa !914
  call void @llvm.dbg.value(metadata i8 %8, metadata !1313, metadata !DIExpression()), !dbg !1486
  %9 = zext i8 %8 to i64, !dbg !1488
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %9, !dbg !1488
  %11 = load i8, i8* %10, align 1, !dbg !1488, !tbaa !914
  %12 = icmp sgt i8 %11, -1, !dbg !1489
  br i1 %12, label %13, label %184, !dbg !1490

13:                                               ; preds = %7
  %14 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1491
  %15 = load i8, i8* %14, align 1, !dbg !1491, !tbaa !914
  call void @llvm.dbg.value(metadata i8 %15, metadata !1313, metadata !DIExpression()), !dbg !1492
  %16 = zext i8 %15 to i64, !dbg !1494
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %16, !dbg !1494
  %18 = load i8, i8* %17, align 1, !dbg !1494, !tbaa !914
  %19 = icmp sgt i8 %18, -1, !dbg !1495
  br i1 %19, label %20, label %184, !dbg !1496

20:                                               ; preds = %13
  %21 = load i64, i64* %3, align 8, !dbg !1497, !tbaa !905
  %22 = icmp eq i64 %21, 0, !dbg !1497
  br i1 %22, label %30, label %23, !dbg !1499

23:                                               ; preds = %20
  %24 = shl i8 %11, 3, !dbg !1500
  %25 = lshr i8 %18, 2, !dbg !1502
  %26 = or i8 %25, %24, !dbg !1503
  %27 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1504
  call void @llvm.dbg.value(metadata i8* %27, metadata !1478, metadata !DIExpression()), !dbg !1479
  store i8 %26, i8* %5, align 1, !dbg !1505, !tbaa !914
  %28 = load i64, i64* %3, align 8, !dbg !1506, !tbaa !905
  %29 = add i64 %28, -1, !dbg !1506
  store i64 %29, i64* %3, align 8, !dbg !1506, !tbaa !905
  br label %30, !dbg !1507

30:                                               ; preds = %23, %20
  %31 = phi i64 [ %29, %23 ], [ 0, %20 ]
  %32 = phi i8* [ %27, %23 ], [ %5, %20 ], !dbg !1479
  call void @llvm.dbg.value(metadata i8* %32, metadata !1478, metadata !DIExpression()), !dbg !1479
  %33 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1508
  %34 = load i8, i8* %33, align 1, !dbg !1508, !tbaa !914
  %35 = icmp eq i8 %34, 61, !dbg !1510
  br i1 %35, label %36, label %57, !dbg !1511

36:                                               ; preds = %30
  %37 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1512
  %38 = load i8, i8* %37, align 1, !dbg !1512, !tbaa !914
  %39 = icmp eq i8 %38, 61, !dbg !1515
  br i1 %39, label %40, label %56, !dbg !1516

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1517
  %42 = load i8, i8* %41, align 1, !dbg !1517, !tbaa !914
  %43 = icmp eq i8 %42, 61, !dbg !1518
  br i1 %43, label %44, label %56, !dbg !1519

44:                                               ; preds = %40
  %45 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1520
  %46 = load i8, i8* %45, align 1, !dbg !1520, !tbaa !914
  %47 = icmp eq i8 %46, 61, !dbg !1521
  br i1 %47, label %48, label %56, !dbg !1522

48:                                               ; preds = %44
  %49 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1523
  %50 = load i8, i8* %49, align 1, !dbg !1523, !tbaa !914
  %51 = icmp eq i8 %50, 61, !dbg !1524
  br i1 %51, label %52, label %56, !dbg !1525

52:                                               ; preds = %48
  %53 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1526
  %54 = load i8, i8* %53, align 1, !dbg !1526, !tbaa !914
  %55 = icmp eq i8 %54, 61, !dbg !1527
  br i1 %55, label %182, label %56, !dbg !1528

56:                                               ; preds = %36, %40, %44, %48, %52
  store i8* %32, i8** %2, align 8, !dbg !1529, !tbaa !645
  br label %184, !dbg !1529

57:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i8 %34, metadata !1313, metadata !DIExpression()), !dbg !1531
  %58 = zext i8 %34 to i64, !dbg !1535
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %58, !dbg !1535
  %60 = load i8, i8* %59, align 1, !dbg !1535, !tbaa !914
  %61 = icmp sgt i8 %60, -1, !dbg !1536
  br i1 %61, label %62, label %69, !dbg !1537

62:                                               ; preds = %57
  %63 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1538
  %64 = load i8, i8* %63, align 1, !dbg !1538, !tbaa !914
  call void @llvm.dbg.value(metadata i8 %64, metadata !1313, metadata !DIExpression()), !dbg !1539
  %65 = zext i8 %64 to i64, !dbg !1541
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %65, !dbg !1541
  %67 = load i8, i8* %66, align 1, !dbg !1541, !tbaa !914
  %68 = icmp sgt i8 %67, -1, !dbg !1542
  br i1 %68, label %70, label %69, !dbg !1543

69:                                               ; preds = %57, %62
  store i8* %32, i8** %2, align 8, !dbg !1544, !tbaa !645
  br label %184, !dbg !1544

70:                                               ; preds = %62
  %71 = icmp eq i64 %31, 0, !dbg !1546
  br i1 %71, label %81, label %72, !dbg !1548

72:                                               ; preds = %70
  %73 = shl i8 %18, 6, !dbg !1549
  %74 = shl nuw i8 %60, 1, !dbg !1551
  %75 = or i8 %74, %73, !dbg !1552
  %76 = lshr i8 %67, 4, !dbg !1553
  %77 = or i8 %75, %76, !dbg !1554
  %78 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !1555
  call void @llvm.dbg.value(metadata i8* %78, metadata !1478, metadata !DIExpression()), !dbg !1479
  store i8 %77, i8* %32, align 1, !dbg !1556, !tbaa !914
  %79 = load i64, i64* %3, align 8, !dbg !1557, !tbaa !905
  %80 = add i64 %79, -1, !dbg !1557
  store i64 %80, i64* %3, align 8, !dbg !1557, !tbaa !905
  br label %81, !dbg !1558

81:                                               ; preds = %72, %70
  %82 = phi i64 [ %80, %72 ], [ 0, %70 ]
  %83 = phi i8* [ %78, %72 ], [ %32, %70 ], !dbg !1479
  call void @llvm.dbg.value(metadata i8* %83, metadata !1478, metadata !DIExpression()), !dbg !1479
  %84 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1559
  %85 = load i8, i8* %84, align 1, !dbg !1559, !tbaa !914
  %86 = icmp eq i8 %85, 61, !dbg !1561
  br i1 %86, label %87, label %100, !dbg !1562

87:                                               ; preds = %81
  %88 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1563
  %89 = load i8, i8* %88, align 1, !dbg !1563, !tbaa !914
  %90 = icmp eq i8 %89, 61, !dbg !1566
  br i1 %90, label %91, label %99, !dbg !1567

91:                                               ; preds = %87
  %92 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1568
  %93 = load i8, i8* %92, align 1, !dbg !1568, !tbaa !914
  %94 = icmp eq i8 %93, 61, !dbg !1569
  br i1 %94, label %95, label %99, !dbg !1570

95:                                               ; preds = %91
  %96 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1571
  %97 = load i8, i8* %96, align 1, !dbg !1571, !tbaa !914
  %98 = icmp eq i8 %97, 61, !dbg !1572
  br i1 %98, label %182, label %99, !dbg !1573

99:                                               ; preds = %87, %91, %95
  store i8* %83, i8** %2, align 8, !dbg !1574, !tbaa !645
  br label %184, !dbg !1574

100:                                              ; preds = %81
  call void @llvm.dbg.value(metadata i8 %85, metadata !1313, metadata !DIExpression()), !dbg !1576
  %101 = zext i8 %85 to i64, !dbg !1580
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %101, !dbg !1580
  %103 = load i8, i8* %102, align 1, !dbg !1580, !tbaa !914
  %104 = icmp sgt i8 %103, -1, !dbg !1581
  br i1 %104, label %106, label %105, !dbg !1582

105:                                              ; preds = %100
  store i8* %83, i8** %2, align 8, !dbg !1583, !tbaa !645
  br label %184, !dbg !1583

106:                                              ; preds = %100
  %107 = icmp eq i64 %82, 0, !dbg !1585
  br i1 %107, label %115, label %108, !dbg !1587

108:                                              ; preds = %106
  %109 = shl i8 %67, 4, !dbg !1588
  %110 = lshr i8 %103, 1, !dbg !1590
  %111 = or i8 %110, %109, !dbg !1591
  %112 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !1592
  call void @llvm.dbg.value(metadata i8* %112, metadata !1478, metadata !DIExpression()), !dbg !1479
  store i8 %111, i8* %83, align 1, !dbg !1593, !tbaa !914
  %113 = load i64, i64* %3, align 8, !dbg !1594, !tbaa !905
  %114 = add i64 %113, -1, !dbg !1594
  store i64 %114, i64* %3, align 8, !dbg !1594, !tbaa !905
  br label %115, !dbg !1595

115:                                              ; preds = %108, %106
  %116 = phi i64 [ %114, %108 ], [ 0, %106 ]
  %117 = phi i8* [ %112, %108 ], [ %83, %106 ], !dbg !1596
  call void @llvm.dbg.value(metadata i8* %117, metadata !1478, metadata !DIExpression()), !dbg !1479
  %118 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1597
  %119 = load i8, i8* %118, align 1, !dbg !1597, !tbaa !914
  %120 = icmp eq i8 %119, 61, !dbg !1599
  br i1 %120, label %121, label %130, !dbg !1600

121:                                              ; preds = %115
  %122 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1601
  %123 = load i8, i8* %122, align 1, !dbg !1601, !tbaa !914
  %124 = icmp eq i8 %123, 61, !dbg !1604
  br i1 %124, label %125, label %129, !dbg !1605

125:                                              ; preds = %121
  %126 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1606
  %127 = load i8, i8* %126, align 1, !dbg !1606, !tbaa !914
  %128 = icmp eq i8 %127, 61, !dbg !1607
  br i1 %128, label %182, label %129, !dbg !1608

129:                                              ; preds = %121, %125
  store i8* %117, i8** %2, align 8, !dbg !1609, !tbaa !645
  br label %184, !dbg !1609

130:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i8 %119, metadata !1313, metadata !DIExpression()), !dbg !1611
  %131 = zext i8 %119 to i64, !dbg !1615
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %131, !dbg !1615
  %133 = load i8, i8* %132, align 1, !dbg !1615, !tbaa !914
  %134 = icmp sgt i8 %133, -1, !dbg !1616
  br i1 %134, label %135, label %142, !dbg !1617

135:                                              ; preds = %130
  %136 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1618
  %137 = load i8, i8* %136, align 1, !dbg !1618, !tbaa !914
  call void @llvm.dbg.value(metadata i8 %137, metadata !1313, metadata !DIExpression()), !dbg !1619
  %138 = zext i8 %137 to i64, !dbg !1621
  %139 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %138, !dbg !1621
  %140 = load i8, i8* %139, align 1, !dbg !1621, !tbaa !914
  %141 = icmp sgt i8 %140, -1, !dbg !1622
  br i1 %141, label %143, label %142, !dbg !1623

142:                                              ; preds = %130, %135
  store i8* %117, i8** %2, align 8, !dbg !1624, !tbaa !645
  br label %184, !dbg !1624

143:                                              ; preds = %135
  %144 = icmp eq i64 %116, 0, !dbg !1626
  br i1 %144, label %158, label %145, !dbg !1628

145:                                              ; preds = %143
  %146 = load i8, i8* %84, align 1, !dbg !1629, !tbaa !914
  %147 = zext i8 %146 to i64, !dbg !1631
  %148 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %147, !dbg !1631
  %149 = load i8, i8* %148, align 1, !dbg !1631, !tbaa !914
  %150 = shl i8 %149, 7, !dbg !1632
  %151 = shl i8 %133, 2, !dbg !1633
  %152 = lshr i8 %140, 3, !dbg !1634
  %153 = or i8 %152, %151, !dbg !1635
  %154 = or i8 %153, %150, !dbg !1636
  %155 = getelementptr inbounds i8, i8* %117, i64 1, !dbg !1637
  call void @llvm.dbg.value(metadata i8* %155, metadata !1478, metadata !DIExpression()), !dbg !1479
  store i8 %154, i8* %117, align 1, !dbg !1638, !tbaa !914
  %156 = load i64, i64* %3, align 8, !dbg !1639, !tbaa !905
  %157 = add i64 %156, -1, !dbg !1639
  store i64 %157, i64* %3, align 8, !dbg !1639, !tbaa !905
  br label %158, !dbg !1640

158:                                              ; preds = %145, %143
  %159 = phi i64 [ %157, %145 ], [ 0, %143 ]
  %160 = phi i8* [ %155, %145 ], [ %117, %143 ], !dbg !1641
  call void @llvm.dbg.value(metadata i8* %160, metadata !1478, metadata !DIExpression()), !dbg !1479
  %161 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1642
  %162 = load i8, i8* %161, align 1, !dbg !1642, !tbaa !914
  %163 = icmp eq i8 %162, 61, !dbg !1644
  br i1 %163, label %182, label %164, !dbg !1645

164:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 %162, metadata !1313, metadata !DIExpression()), !dbg !1646
  %165 = zext i8 %162 to i64, !dbg !1650
  %166 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %165, !dbg !1650
  %167 = load i8, i8* %166, align 1, !dbg !1650, !tbaa !914
  %168 = icmp sgt i8 %167, -1, !dbg !1651
  br i1 %168, label %170, label %169, !dbg !1652

169:                                              ; preds = %164
  store i8* %160, i8** %2, align 8, !dbg !1653, !tbaa !645
  br label %184, !dbg !1653

170:                                              ; preds = %164
  %171 = icmp eq i64 %159, 0, !dbg !1655
  br i1 %171, label %182, label %172, !dbg !1657

172:                                              ; preds = %170
  %173 = load i8, i8* %136, align 1, !dbg !1658, !tbaa !914
  %174 = zext i8 %173 to i64, !dbg !1660
  %175 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %174, !dbg !1660
  %176 = load i8, i8* %175, align 1, !dbg !1660, !tbaa !914
  %177 = shl i8 %176, 5, !dbg !1661
  %178 = or i8 %177, %167, !dbg !1662
  %179 = getelementptr inbounds i8, i8* %160, i64 1, !dbg !1663
  call void @llvm.dbg.value(metadata i8* %179, metadata !1478, metadata !DIExpression()), !dbg !1479
  store i8 %178, i8* %160, align 1, !dbg !1664, !tbaa !914
  %180 = load i64, i64* %3, align 8, !dbg !1665, !tbaa !905
  %181 = add i64 %180, -1, !dbg !1665
  store i64 %181, i64* %3, align 8, !dbg !1665, !tbaa !905
  br label %182, !dbg !1666

182:                                              ; preds = %95, %158, %172, %170, %125, %52
  %183 = phi i8* [ %32, %52 ], [ %83, %95 ], [ %117, %125 ], [ %179, %172 ], [ %160, %170 ], [ %160, %158 ], !dbg !1479
  call void @llvm.dbg.value(metadata i8* %183, metadata !1478, metadata !DIExpression()), !dbg !1479
  store i8* %183, i8** %2, align 8, !dbg !1667, !tbaa !645
  br label %184, !dbg !1668

184:                                              ; preds = %7, %13, %4, %182, %169, %142, %129, %105, %99, %69, %56
  %185 = phi i1 [ false, %56 ], [ true, %182 ], [ false, %99 ], [ false, %129 ], [ false, %169 ], [ false, %142 ], [ false, %105 ], [ false, %69 ], [ false, %4 ], [ false, %13 ], [ false, %7 ], !dbg !1479
  ret i1 %185, !dbg !1669
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @base32_decode_alloc_ctx(%struct.base32_decode_context* %0, i8* %1, i64 %2, i8** nocapture %3, i64* %4) local_unnamed_addr #8 !dbg !1670 {
  %6 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, metadata !1674, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i8* %1, metadata !1675, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i64 %2, metadata !1676, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i8** %3, metadata !1677, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i64* %4, metadata !1678, metadata !DIExpression()), !dbg !1680
  %7 = bitcast i64* %6 to i8*, !dbg !1681
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #27, !dbg !1681
  %8 = lshr i64 %2, 3, !dbg !1682
  %9 = mul nuw i64 %8, 5, !dbg !1683
  %10 = add nuw i64 %9, 5, !dbg !1684
  call void @llvm.dbg.value(metadata i64 %10, metadata !1679, metadata !DIExpression()), !dbg !1680
  store i64 %10, i64* %6, align 8, !dbg !1685, !tbaa !905
  %11 = tail call noalias i8* @malloc(i64 %10) #27, !dbg !1686
  store i8* %11, i8** %3, align 8, !dbg !1687, !tbaa !645
  %12 = icmp eq i8* %11, null, !dbg !1688
  br i1 %12, label %21, label %13, !dbg !1690

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i64* %6, metadata !1679, metadata !DIExpression(DW_OP_deref)), !dbg !1680
  %14 = call zeroext i1 @base32_decode_ctx(%struct.base32_decode_context* %0, i8* %1, i64 %2, i8* nonnull %11, i64* nonnull %6), !dbg !1691
  br i1 %14, label %17, label %15, !dbg !1693

15:                                               ; preds = %13
  %16 = load i8*, i8** %3, align 8, !dbg !1694, !tbaa !645
  tail call void @free(i8* %16) #27, !dbg !1696
  store i8* null, i8** %3, align 8, !dbg !1697, !tbaa !645
  br label %21, !dbg !1698

17:                                               ; preds = %13
  %18 = icmp eq i64* %4, null, !dbg !1699
  br i1 %18, label %21, label %19, !dbg !1701

19:                                               ; preds = %17
  %20 = load i64, i64* %6, align 8, !dbg !1702, !tbaa !905
  call void @llvm.dbg.value(metadata i64 %20, metadata !1679, metadata !DIExpression()), !dbg !1680
  store i64 %20, i64* %4, align 8, !dbg !1703, !tbaa !905
  br label %21, !dbg !1704

21:                                               ; preds = %17, %19, %5, %15
  %22 = phi i1 [ false, %15 ], [ true, %5 ], [ true, %19 ], [ true, %17 ], !dbg !1680
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #27, !dbg !1705
  ret i1 %22, !dbg !1705
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #14 !dbg !1706 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1708, metadata !DIExpression()), !dbg !1709
  store i8* %0, i8** @file_name, align 8, !dbg !1710, !tbaa !645
  ret void, !dbg !1711
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #14 !dbg !1712 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1716, metadata !DIExpression()), !dbg !1717
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1718, !tbaa !1719
  ret void, !dbg !1721
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1722 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1727, !tbaa !645
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #27, !dbg !1728
  %3 = icmp eq i32 %2, 0, !dbg !1729
  br i1 %3, label %22, label %4, !dbg !1730

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1731, !tbaa !1719, !range !1732
  %6 = icmp eq i8 %5, 0, !dbg !1731
  br i1 %6, label %11, label %7, !dbg !1733

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #31, !dbg !1734
  %9 = load i32, i32* %8, align 4, !dbg !1734, !tbaa !821
  %10 = icmp eq i32 %9, 32, !dbg !1735
  br i1 %10, label %22, label %11, !dbg !1736

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i32 5) #27, !dbg !1737
  call void @llvm.dbg.value(metadata i8* %12, metadata !1724, metadata !DIExpression()), !dbg !1738
  %13 = load i8*, i8** @file_name, align 8, !dbg !1739, !tbaa !645
  %14 = icmp eq i8* %13, null, !dbg !1739
  %15 = tail call i32* @__errno_location() #31, !dbg !1741
  %16 = load i32, i32* %15, align 4, !dbg !1741, !tbaa !821
  br i1 %14, label %19, label %17, !dbg !1742

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #27, !dbg !1743
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.57, i64 0, i64 0), i8* %18, i8* %12) #27, !dbg !1744
  br label %20, !dbg !1744

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.58, i64 0, i64 0), i8* %12) #27, !dbg !1745
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1746, !tbaa !821
  tail call void @_exit(i32 %21) #29, !dbg !1747
  unreachable, !dbg !1747

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1748, !tbaa !645
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #27, !dbg !1750
  %25 = icmp eq i32 %24, 0, !dbg !1751
  br i1 %25, label %28, label %26, !dbg !1752

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1753, !tbaa !821
  tail call void @_exit(i32 %27) #29, !dbg !1754
  unreachable, !dbg !1754

28:                                               ; preds = %22
  ret void, !dbg !1755
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1756 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1762, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %1, metadata !1763, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i64 %2, metadata !1764, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i32 %3, metadata !1765, metadata !DIExpression()), !dbg !1768
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #27, !dbg !1769
  call void @llvm.dbg.value(metadata i32 %5, metadata !1766, metadata !DIExpression()), !dbg !1770
  ret void, !dbg !1771
}

; Function Attrs: nounwind
declare !dbg !1772 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1776 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1814, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 %1, metadata !1815, metadata !DIExpression()), !dbg !1816
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1817
  br i1 %3, label %7, label %4, !dbg !1819

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !1820
  call void @llvm.dbg.value(metadata i32 %5, metadata !1762, metadata !DIExpression()) #27, !dbg !1821
  call void @llvm.dbg.value(metadata i64 0, metadata !1763, metadata !DIExpression()) #27, !dbg !1821
  call void @llvm.dbg.value(metadata i64 0, metadata !1764, metadata !DIExpression()) #27, !dbg !1821
  call void @llvm.dbg.value(metadata i32 %1, metadata !1765, metadata !DIExpression()) #27, !dbg !1821
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #27, !dbg !1823
  call void @llvm.dbg.value(metadata i32 %6, metadata !1766, metadata !DIExpression()) #27, !dbg !1824
  br label %7, !dbg !1825

7:                                                ; preds = %4, %2
  ret void, !dbg !1826
}

; Function Attrs: nofree nounwind
declare !dbg !1827 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1830 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1832, metadata !DIExpression()), !dbg !1835
  %2 = icmp eq i8* %0, null, !dbg !1836
  br i1 %2, label %3, label %6, !dbg !1838

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1839, !tbaa !645
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.67, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #32, !dbg !1841
  tail call void @abort() #29, !dbg !1842
  unreachable, !dbg !1842

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #28, !dbg !1843
  call void @llvm.dbg.value(metadata i8* %7, metadata !1833, metadata !DIExpression()), !dbg !1835
  %8 = icmp eq i8* %7, null, !dbg !1844
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1845
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1845
  call void @llvm.dbg.value(metadata i8* %10, metadata !1834, metadata !DIExpression()), !dbg !1835
  %11 = ptrtoint i8* %10 to i64, !dbg !1846
  %12 = ptrtoint i8* %0 to i64, !dbg !1846
  %13 = sub i64 %11, %12, !dbg !1846
  %14 = icmp sgt i64 %13, 6, !dbg !1848
  br i1 %14, label %15, label %24, !dbg !1849

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1850
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.68, i64 0, i64 0), i64 7) #28, !dbg !1851
  %18 = icmp eq i32 %17, 0, !dbg !1852
  br i1 %18, label %19, label %24, !dbg !1853

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1832, metadata !DIExpression()), !dbg !1835
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.69, i64 0, i64 0), i64 3) #28, !dbg !1854
  %21 = icmp eq i32 %20, 0, !dbg !1857
  br i1 %21, label %22, label %24, !dbg !1858

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1859
  call void @llvm.dbg.value(metadata i8* %23, metadata !1832, metadata !DIExpression()), !dbg !1835
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1861, !tbaa !645
  br label %24, !dbg !1862

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1832, metadata !DIExpression()), !dbg !1835
  store i8* %25, i8** @program_name, align 8, !dbg !1863, !tbaa !645
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1864, !tbaa !645
  ret void, !dbg !1865
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #18

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1866 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1871, metadata !DIExpression()), !dbg !1874
  %2 = tail call i32* @__errno_location() #31, !dbg !1875
  %3 = load i32, i32* %2, align 4, !dbg !1875, !tbaa !821
  call void @llvm.dbg.value(metadata i32 %3, metadata !1872, metadata !DIExpression()), !dbg !1874
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1876
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1876
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1876
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #27, !dbg !1877
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1877
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1873, metadata !DIExpression()), !dbg !1874
  store i32 %3, i32* %2, align 4, !dbg !1878, !tbaa !821
  ret %struct.quoting_options* %8, !dbg !1879
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #19 !dbg !1880 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1886, metadata !DIExpression()), !dbg !1887
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1888
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1888
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1889
  %5 = load i32, i32* %4, align 8, !dbg !1889, !tbaa !1890
  ret i32 %5, !dbg !1892
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !1893 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1897, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i32 %1, metadata !1898, metadata !DIExpression()), !dbg !1899
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1900
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1900
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1901
  store i32 %1, i32* %5, align 8, !dbg !1902, !tbaa !1890
  ret void, !dbg !1903
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1904 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1908, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %1, metadata !1909, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i32 %2, metadata !1910, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %1, metadata !1911, metadata !DIExpression()), !dbg !1916
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1917
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1917
  %6 = lshr i8 %1, 5, !dbg !1918
  %7 = zext i8 %6 to i64, !dbg !1918
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1919
  call void @llvm.dbg.value(metadata i32* %8, metadata !1912, metadata !DIExpression()), !dbg !1916
  %9 = and i8 %1, 31, !dbg !1920
  %10 = zext i8 %9 to i32, !dbg !1920
  call void @llvm.dbg.value(metadata i32 %10, metadata !1914, metadata !DIExpression()), !dbg !1916
  %11 = load i32, i32* %8, align 4, !dbg !1921, !tbaa !821
  %12 = lshr i32 %11, %10, !dbg !1922
  %13 = and i32 %12, 1, !dbg !1923
  call void @llvm.dbg.value(metadata i32 %13, metadata !1915, metadata !DIExpression()), !dbg !1916
  %14 = and i32 %2, 1, !dbg !1924
  %15 = xor i32 %13, %14, !dbg !1925
  %16 = shl i32 %15, %10, !dbg !1926
  %17 = xor i32 %16, %11, !dbg !1927
  store i32 %17, i32* %8, align 4, !dbg !1927, !tbaa !821
  ret i32 %13, !dbg !1928
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1929 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1933, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i32 %1, metadata !1934, metadata !DIExpression()), !dbg !1936
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1937
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1939
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1933, metadata !DIExpression()), !dbg !1936
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1940
  %6 = load i32, i32* %5, align 4, !dbg !1940, !tbaa !1941
  call void @llvm.dbg.value(metadata i32 %6, metadata !1935, metadata !DIExpression()), !dbg !1936
  store i32 %1, i32* %5, align 4, !dbg !1942, !tbaa !1941
  ret i32 %6, !dbg !1943
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1944 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1948, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8* %1, metadata !1949, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8* %2, metadata !1950, metadata !DIExpression()), !dbg !1951
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1952
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1954
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1948, metadata !DIExpression()), !dbg !1951
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1955
  store i32 10, i32* %6, align 8, !dbg !1956, !tbaa !1890
  %7 = icmp ne i8* %1, null, !dbg !1957
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1959
  br i1 %9, label %11, label %10, !dbg !1959

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !1960
  unreachable, !dbg !1960

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1961
  store i8* %1, i8** %12, align 8, !dbg !1962, !tbaa !1963
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1964
  store i8* %2, i8** %13, align 8, !dbg !1965, !tbaa !1966
  ret void, !dbg !1967
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1968 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1972, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %1, metadata !1973, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8* %2, metadata !1974, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i64 %3, metadata !1975, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1976, metadata !DIExpression()), !dbg !1980
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1981
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1981
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1977, metadata !DIExpression()), !dbg !1980
  %8 = tail call i32* @__errno_location() #31, !dbg !1982
  %9 = load i32, i32* %8, align 4, !dbg !1982, !tbaa !821
  call void @llvm.dbg.value(metadata i32 %9, metadata !1978, metadata !DIExpression()), !dbg !1980
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1983
  %11 = load i32, i32* %10, align 8, !dbg !1983, !tbaa !1890
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1984
  %13 = load i32, i32* %12, align 4, !dbg !1984, !tbaa !1941
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1985
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1986
  %16 = load i8*, i8** %15, align 8, !dbg !1986, !tbaa !1963
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1987
  %18 = load i8*, i8** %17, align 8, !dbg !1987, !tbaa !1966
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1988
  call void @llvm.dbg.value(metadata i64 %19, metadata !1979, metadata !DIExpression()), !dbg !1980
  store i32 %9, i32* %8, align 4, !dbg !1989, !tbaa !821
  ret i64 %19, !dbg !1990
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1991 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1997, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %1, metadata !1998, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8* %2, metadata !1999, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %3, metadata !2000, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i32 %4, metadata !2001, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i32 %5, metadata !2002, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i32* %6, metadata !2003, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8* %7, metadata !2004, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8* %8, metadata !2005, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 0, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 0, metadata !2008, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8* null, metadata !2009, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 0, metadata !2010, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 0, metadata !2011, metadata !DIExpression()), !dbg !2067
  %13 = tail call i64 @__ctype_get_mb_cur_max() #27, !dbg !2068
  %14 = icmp eq i64 %13, 1, !dbg !2069
  call void @llvm.dbg.value(metadata i1 %14, metadata !2012, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2067
  %15 = lshr i32 %5, 1, !dbg !2070
  %16 = trunc i32 %15 to i8, !dbg !2070
  %17 = and i8 %16, 1, !dbg !2070
  call void @llvm.dbg.value(metadata i8 %17, metadata !2013, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 0, metadata !2014, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 0, metadata !2015, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 1, metadata !2016, metadata !DIExpression()), !dbg !2067
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !2071

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !2072
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !2073
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !2074
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !2075
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !2067
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !2076
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !2077
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !2078
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1998, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %38, metadata !2016, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %37, metadata !2015, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %36, metadata !2014, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %35, metadata !2013, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %34, metadata !2000, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %33, metadata !2011, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %32, metadata !2010, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8* %31, metadata !2009, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %30, metadata !2008, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 0, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8* %29, metadata !2005, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8* %28, metadata !2004, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i32 %27, metadata !2001, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.label(metadata !2061), !dbg !2079
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
  ], !dbg !2080

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2013, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i32 5, metadata !2001, metadata !DIExpression()), !dbg !2067
  br label %92, !dbg !2081

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2013, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i32 5, metadata !2001, metadata !DIExpression()), !dbg !2067
  %42 = and i8 %35, 1, !dbg !2083
  %43 = icmp eq i8 %42, 0, !dbg !2083
  br i1 %43, label %44, label %92, !dbg !2081

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2085
  br i1 %45, label %92, label %46, !dbg !2088

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2085, !tbaa !914
  br label %92, !dbg !2085

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.80, i64 0, i64 0), i32 %27), !dbg !2089
  call void @llvm.dbg.value(metadata i8* %48, metadata !2004, metadata !DIExpression()), !dbg !2067
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), i32 %27), !dbg !2093
  call void @llvm.dbg.value(metadata i8* %49, metadata !2005, metadata !DIExpression()), !dbg !2067
  br label %50, !dbg !2094

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2005, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8* %51, metadata !2004, metadata !DIExpression()), !dbg !2067
  %53 = and i8 %35, 1, !dbg !2095
  %54 = icmp eq i8 %53, 0, !dbg !2095
  br i1 %54, label %55, label %70, !dbg !2097

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2009, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 0, metadata !2007, metadata !DIExpression()), !dbg !2067
  %56 = load i8, i8* %51, align 1, !dbg !2098, !tbaa !914
  %57 = icmp eq i8 %56, 0, !dbg !2101
  br i1 %57, label %70, label %58, !dbg !2101

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2009, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %61, metadata !2007, metadata !DIExpression()), !dbg !2067
  %62 = icmp ult i64 %61, %39, !dbg !2102
  br i1 %62, label %63, label %65, !dbg !2105

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2102
  store i8 %59, i8* %64, align 1, !dbg !2102, !tbaa !914
  br label %65, !dbg !2102

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %66, metadata !2007, metadata !DIExpression()), !dbg !2067
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2106
  call void @llvm.dbg.value(metadata i8* %67, metadata !2009, metadata !DIExpression()), !dbg !2067
  %68 = load i8, i8* %67, align 1, !dbg !2098, !tbaa !914
  %69 = icmp eq i8 %68, 0, !dbg !2101
  br i1 %69, label %70, label %58, !dbg !2101, !llvm.loop !2107

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2109
  call void @llvm.dbg.value(metadata i64 %71, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 1, metadata !2011, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8* %52, metadata !2009, metadata !DIExpression()), !dbg !2067
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #28, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %72, metadata !2010, metadata !DIExpression()), !dbg !2067
  br label %92, !dbg !2111

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2011, metadata !DIExpression()), !dbg !2067
  br label %74, !dbg !2112

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2067
  call void @llvm.dbg.value(metadata i8 %75, metadata !2011, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 1, metadata !2013, metadata !DIExpression()), !dbg !2067
  br label %76, !dbg !2113

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2075
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2067
  call void @llvm.dbg.value(metadata i8 %78, metadata !2013, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %77, metadata !2011, metadata !DIExpression()), !dbg !2067
  %79 = and i8 %78, 1, !dbg !2114
  %80 = icmp eq i8 %79, 0, !dbg !2114
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2116
  br label %82, !dbg !2116

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2067
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2070
  call void @llvm.dbg.value(metadata i8 %84, metadata !2013, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %83, metadata !2011, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i32 2, metadata !2001, metadata !DIExpression()), !dbg !2067
  %85 = and i8 %84, 1, !dbg !2117
  %86 = icmp eq i8 %85, 0, !dbg !2117
  br i1 %86, label %87, label %92, !dbg !2119

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2120
  br i1 %88, label %92, label %89, !dbg !2123

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2120, !tbaa !914
  br label %92, !dbg !2120

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2013, metadata !DIExpression()), !dbg !2067
  br label %92, !dbg !2124

91:                                               ; preds = %26
  call void @abort() #29, !dbg !2125
  unreachable, !dbg !2125

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !2109
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %40 ], !dbg !2067
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !2067
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !2067
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !2067
  call void @llvm.dbg.value(metadata i8 %100, metadata !2013, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %99, metadata !2011, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %98, metadata !2010, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8* %97, metadata !2009, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %96, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8* %95, metadata !2005, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8* %94, metadata !2004, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i32 %93, metadata !2001, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 0, metadata !2006, metadata !DIExpression()), !dbg !2067
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
  br label %121, !dbg !2126

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !2127
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !2109
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !2072
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !2076
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !2077
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !2078
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1998, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %128, metadata !2016, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %127, metadata !2015, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %126, metadata !2014, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %125, metadata !2000, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %124, metadata !2008, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %123, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %122, metadata !2006, metadata !DIExpression()), !dbg !2067
  %130 = icmp eq i64 %125, -1, !dbg !2128
  br i1 %130, label %131, label %135, !dbg !2129

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2130
  %133 = load i8, i8* %132, align 1, !dbg !2130, !tbaa !914
  %134 = icmp eq i8 %133, 0, !dbg !2131
  br i1 %134, label %587, label %137, !dbg !2132

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2133
  br i1 %136, label %587, label %137, !dbg !2132

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2022, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 0, metadata !2023, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 0, metadata !2024, metadata !DIExpression()), !dbg !2134
  br i1 %106, label %138, label %153, !dbg !2135

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2137
  %140 = and i1 %107, %130, !dbg !2138
  br i1 %140, label %141, label %143, !dbg !2138

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !2139
  call void @llvm.dbg.value(metadata i64 %142, metadata !2000, metadata !DIExpression()), !dbg !2067
  br label %143, !dbg !2140

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2140
  call void @llvm.dbg.value(metadata i64 %144, metadata !2000, metadata !DIExpression()), !dbg !2067
  %145 = icmp ugt i64 %139, %144, !dbg !2141
  br i1 %145, label %153, label %146, !dbg !2142

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2143
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !2144
  %149 = icmp ne i32 %148, 0, !dbg !2145
  %150 = or i1 %149, %109, !dbg !2146
  %151 = xor i1 %149, true, !dbg !2146
  %152 = zext i1 %151 to i8, !dbg !2146
  br i1 %150, label %153, label %646, !dbg !2146

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !2134
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2134
  call void @llvm.dbg.value(metadata i8 %156, metadata !2022, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %154, metadata !2000, metadata !DIExpression()), !dbg !2067
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2147
  %158 = load i8, i8* %157, align 1, !dbg !2147, !tbaa !914
  call void @llvm.dbg.value(metadata i8 %158, metadata !2017, metadata !DIExpression()), !dbg !2134
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
  ], !dbg !2148

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !2149

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !2150

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2023, metadata !DIExpression()), !dbg !2134
  %162 = and i8 %126, 1, !dbg !2154
  %163 = icmp eq i8 %162, 0, !dbg !2154
  %164 = and i1 %110, %163, !dbg !2154
  br i1 %164, label %165, label %181, !dbg !2154

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2156
  br i1 %166, label %167, label %169, !dbg !2160

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2156
  store i8 39, i8* %168, align 1, !dbg !2156, !tbaa !914
  br label %169, !dbg !2156

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2160
  call void @llvm.dbg.value(metadata i64 %170, metadata !2007, metadata !DIExpression()), !dbg !2067
  %171 = icmp ult i64 %170, %129, !dbg !2161
  br i1 %171, label %172, label %174, !dbg !2164

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2161
  store i8 36, i8* %173, align 1, !dbg !2161, !tbaa !914
  br label %174, !dbg !2161

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %175, metadata !2007, metadata !DIExpression()), !dbg !2067
  %176 = icmp ult i64 %175, %129, !dbg !2165
  br i1 %176, label %177, label %179, !dbg !2168

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2165
  store i8 39, i8* %178, align 1, !dbg !2165, !tbaa !914
  br label %179, !dbg !2165

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2168
  call void @llvm.dbg.value(metadata i64 %180, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 1, metadata !2014, metadata !DIExpression()), !dbg !2067
  br label %181, !dbg !2169

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !2067
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !2067
  call void @llvm.dbg.value(metadata i8 %183, metadata !2014, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %182, metadata !2007, metadata !DIExpression()), !dbg !2067
  %184 = icmp ult i64 %182, %129, !dbg !2170
  br i1 %184, label %185, label %187, !dbg !2173

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2170
  store i8 92, i8* %186, align 1, !dbg !2170, !tbaa !914
  br label %187, !dbg !2170

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2173
  call void @llvm.dbg.value(metadata i64 %188, metadata !2007, metadata !DIExpression()), !dbg !2067
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2174
  br i1 %191, label %192, label %473, !dbg !2174

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2176
  %194 = load i8, i8* %193, align 1, !dbg !2176, !tbaa !914
  %195 = add i8 %194, -48, !dbg !2177
  %196 = icmp ult i8 %195, 10, !dbg !2177
  br i1 %196, label %197, label %473, !dbg !2177

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2178
  br i1 %198, label %199, label %201, !dbg !2182

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2178
  store i8 48, i8* %200, align 1, !dbg !2178, !tbaa !914
  br label %201, !dbg !2178

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %202, metadata !2007, metadata !DIExpression()), !dbg !2067
  %203 = icmp ult i64 %202, %129, !dbg !2183
  br i1 %203, label %204, label %206, !dbg !2186

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2183
  store i8 48, i8* %205, align 1, !dbg !2183, !tbaa !914
  br label %206, !dbg !2183

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2186
  call void @llvm.dbg.value(metadata i64 %207, metadata !2007, metadata !DIExpression()), !dbg !2067
  br label %473, !dbg !2187

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !2188

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2189

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !2190

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !2192
  br i1 %214, label %215, label %473, !dbg !2192

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !2194
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2195
  %218 = load i8, i8* %217, align 1, !dbg !2195, !tbaa !914
  %219 = icmp eq i8 %218, 63, !dbg !2196
  br i1 %219, label %220, label %473, !dbg !2197

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2198
  %222 = load i8, i8* %221, align 1, !dbg !2198, !tbaa !914
  %223 = sext i8 %222 to i32, !dbg !2198
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
  ], !dbg !2199

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !2200

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2017, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 undef, metadata !2006, metadata !DIExpression()), !dbg !2067
  %226 = icmp ult i64 %123, %129, !dbg !2202
  br i1 %226, label %227, label %229, !dbg !2205

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2202
  store i8 63, i8* %228, align 1, !dbg !2202, !tbaa !914
  br label %229, !dbg !2202

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %230, metadata !2007, metadata !DIExpression()), !dbg !2067
  %231 = icmp ult i64 %230, %129, !dbg !2206
  br i1 %231, label %232, label %234, !dbg !2209

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2206
  store i8 34, i8* %233, align 1, !dbg !2206, !tbaa !914
  br label %234, !dbg !2206

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2209
  call void @llvm.dbg.value(metadata i64 %235, metadata !2007, metadata !DIExpression()), !dbg !2067
  %236 = icmp ult i64 %235, %129, !dbg !2210
  br i1 %236, label %237, label %239, !dbg !2213

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2210
  store i8 34, i8* %238, align 1, !dbg !2210, !tbaa !914
  br label %239, !dbg !2210

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2213
  call void @llvm.dbg.value(metadata i64 %240, metadata !2007, metadata !DIExpression()), !dbg !2067
  %241 = icmp ult i64 %240, %129, !dbg !2214
  br i1 %241, label %242, label %244, !dbg !2217

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2214
  store i8 63, i8* %243, align 1, !dbg !2214, !tbaa !914
  br label %244, !dbg !2214

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %245, metadata !2007, metadata !DIExpression()), !dbg !2067
  br label %473, !dbg !2218

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2021, metadata !DIExpression()), !dbg !2134
  br label %256, !dbg !2219

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2021, metadata !DIExpression()), !dbg !2134
  br label %256, !dbg !2220

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2021, metadata !DIExpression()), !dbg !2134
  br label %254, !dbg !2221

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2021, metadata !DIExpression()), !dbg !2134
  br label %254, !dbg !2222

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2021, metadata !DIExpression()), !dbg !2134
  br label %256, !dbg !2223

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !2021, metadata !DIExpression()), !dbg !2134
  br i1 %110, label %252, label %253, !dbg !2224

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2225

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2228

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2230
  call void @llvm.dbg.value(metadata i8 %255, metadata !2021, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.label(metadata !2062), !dbg !2231
  br i1 %111, label %256, label %631, !dbg !2232

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2230
  call void @llvm.dbg.value(metadata i8 %257, metadata !2021, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.label(metadata !2063), !dbg !2234
  br i1 %102, label %495, label %473, !dbg !2235

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2236

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2237, !tbaa !914
  %261 = icmp eq i8 %260, 0, !dbg !2239
  br i1 %261, label %262, label %473, !dbg !2240

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2241
  br i1 %263, label %264, label %473, !dbg !2243

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2024, metadata !DIExpression()), !dbg !2134
  br label %265, !dbg !2244

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !2134
  call void @llvm.dbg.value(metadata i8 %266, metadata !2024, metadata !DIExpression()), !dbg !2134
  br i1 %111, label %473, label %631, !dbg !2245

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2015, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 1, metadata !2024, metadata !DIExpression()), !dbg !2134
  br i1 %110, label %268, label %473, !dbg !2247

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2248

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2251
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2253
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2253
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %274, metadata !1998, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %273, metadata !2008, metadata !DIExpression()), !dbg !2067
  %275 = icmp ult i64 %123, %274, !dbg !2254
  br i1 %275, label %276, label %278, !dbg !2257

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2254
  store i8 39, i8* %277, align 1, !dbg !2254, !tbaa !914
  br label %278, !dbg !2254

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %279, metadata !2007, metadata !DIExpression()), !dbg !2067
  %280 = icmp ult i64 %279, %274, !dbg !2258
  br i1 %280, label %281, label %283, !dbg !2261

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2258
  store i8 92, i8* %282, align 1, !dbg !2258, !tbaa !914
  br label %283, !dbg !2258

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2261
  call void @llvm.dbg.value(metadata i64 %284, metadata !2007, metadata !DIExpression()), !dbg !2067
  %285 = icmp ult i64 %284, %274, !dbg !2262
  br i1 %285, label %286, label %288, !dbg !2265

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2262
  store i8 39, i8* %287, align 1, !dbg !2262, !tbaa !914
  br label %288, !dbg !2262

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2265
  call void @llvm.dbg.value(metadata i64 %289, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 0, metadata !2014, metadata !DIExpression()), !dbg !2067
  br label %473, !dbg !2266

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2267

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2025, metadata !DIExpression()), !dbg !2268
  %292 = tail call i16** @__ctype_b_loc() #31, !dbg !2269
  %293 = load i16*, i16** %292, align 8, !dbg !2269, !tbaa !645
  %294 = zext i8 %158 to i64, !dbg !2269
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2269
  %296 = load i16, i16* %295, align 2, !dbg !2269, !tbaa !2271
  %297 = lshr i16 %296, 14, !dbg !2272
  %298 = trunc i16 %297 to i8, !dbg !2272
  %299 = and i8 %298, 1, !dbg !2272
  call void @llvm.dbg.value(metadata i8 %354, metadata !2028, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 %355, metadata !2025, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 %306, metadata !2000, metadata !DIExpression()), !dbg !2067
  %300 = icmp eq i8 %299, 0, !dbg !2273
  call void @llvm.dbg.value(metadata i1 %357, metadata !2024, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2134
  br label %359, !dbg !2274

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2275
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2029, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8* %23, metadata !2277, metadata !DIExpression()) #27, !dbg !2284
  call void @llvm.dbg.value(metadata i32 0, metadata !2282, metadata !DIExpression()) #27, !dbg !2284
  call void @llvm.dbg.value(metadata i64 8, metadata !2283, metadata !DIExpression()) #27, !dbg !2284
  store i64 0, i64* %10, align 8, !dbg !2286
  call void @llvm.dbg.value(metadata i64 0, metadata !2025, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i8 1, metadata !2028, metadata !DIExpression()), !dbg !2268
  %302 = icmp eq i64 %154, -1, !dbg !2287
  br i1 %302, label %303, label %305, !dbg !2289

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !2290
  call void @llvm.dbg.value(metadata i64 %304, metadata !2000, metadata !DIExpression()), !dbg !2067
  br label %305, !dbg !2291

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !2134
  call void @llvm.dbg.value(metadata i64 %306, metadata !2000, metadata !DIExpression()), !dbg !2067
  br label %307, !dbg !2292

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2293
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2294
  call void @llvm.dbg.value(metadata i8 %309, metadata !2028, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 %308, metadata !2025, metadata !DIExpression()), !dbg !2268
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2295
  %310 = add i64 %308, %122, !dbg !2296
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2297
  %312 = sub i64 %306, %310, !dbg !2298
  call void @llvm.dbg.value(metadata i32* %12, metadata !2047, metadata !DIExpression(DW_OP_deref)), !dbg !2299
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #27, !dbg !2300
  call void @llvm.dbg.value(metadata i64 %313, metadata !2050, metadata !DIExpression()), !dbg !2299
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2301

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !2025, metadata !DIExpression()), !dbg !2268
  %315 = icmp ugt i64 %306, %310, !dbg !2302
  br i1 %315, label %316, label %341, !dbg !2304

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2305
  br label %318, !dbg !2305

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !2025, metadata !DIExpression()), !dbg !2268
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2306
  %322 = load i8, i8* %321, align 1, !dbg !2306, !tbaa !914
  %323 = icmp eq i8 %322, 0, !dbg !2304
  br i1 %323, label %341, label %324, !dbg !2305

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2307
  call void @llvm.dbg.value(metadata i64 %325, metadata !2025, metadata !DIExpression()), !dbg !2268
  %326 = add i64 %325, %122, !dbg !2308
  %327 = icmp ult i64 %326, %306, !dbg !2302
  br i1 %327, label %318, label %341, !dbg !2304, !llvm.loop !2309

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2310
  call void @llvm.dbg.value(metadata i64 1, metadata !2051, metadata !DIExpression()), !dbg !2311
  br i1 %330, label %331, label %344, !dbg !2310

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !2051, metadata !DIExpression()), !dbg !2311
  %333 = add i64 %332, %310, !dbg !2312
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2315
  %335 = load i8, i8* %334, align 1, !dbg !2315, !tbaa !914
  %336 = sext i8 %335 to i32, !dbg !2315
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2316

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2317
  call void @llvm.dbg.value(metadata i64 %338, metadata !2051, metadata !DIExpression()), !dbg !2311
  %339 = icmp eq i64 %338, %313, !dbg !2318
  br i1 %339, label %344, label %331, !dbg !2319, !llvm.loop !2320

340:                                              ; preds = %307
  br label %341, !dbg !2322

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2028, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 undef, metadata !2025, metadata !DIExpression()), !dbg !2268
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2322
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2323, !tbaa !821
  call void @llvm.dbg.value(metadata i32 %345, metadata !2047, metadata !DIExpression()), !dbg !2299
  %346 = call i32 @iswprint(i32 %345) #27, !dbg !2325
  %347 = icmp eq i32 %346, 0, !dbg !2325
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2326
  call void @llvm.dbg.value(metadata i8 %348, metadata !2028, metadata !DIExpression()), !dbg !2268
  %349 = add i64 %313, %308, !dbg !2327
  call void @llvm.dbg.value(metadata i64 %349, metadata !2025, metadata !DIExpression()), !dbg !2268
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2322
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #28, !dbg !2328
  %351 = icmp eq i32 %350, 0, !dbg !2329
  br i1 %351, label %307, label %353, !dbg !2330, !llvm.loop !2331

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !2028, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 undef, metadata !2025, metadata !DIExpression()), !dbg !2268
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2322
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2333
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2333
  call void @llvm.dbg.value(metadata i8 %354, metadata !2028, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 %355, metadata !2025, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 %306, metadata !2000, metadata !DIExpression()), !dbg !2067
  %356 = and i8 %354, 1, !dbg !2273
  %357 = icmp eq i8 %356, 0, !dbg !2273
  call void @llvm.dbg.value(metadata i1 %357, metadata !2024, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2134
  %358 = icmp ugt i64 %355, 1, !dbg !2334
  br i1 %358, label %367, label %359, !dbg !2274

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2335
  br i1 %364, label %367, label %365, !dbg !2335

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !2134
  call void @llvm.dbg.value(metadata i8 %472, metadata !2024, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %441, metadata !2023, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %440, metadata !2022, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %439, metadata !2017, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %438, metadata !2014, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %371, metadata !2000, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %437, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %375, metadata !2006, metadata !DIExpression()), !dbg !2067
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2336
  call void @llvm.dbg.value(metadata i64 %372, metadata !2058, metadata !DIExpression()), !dbg !2337
  %373 = and i1 %102, %368
  br label %374, !dbg !2338

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !2127
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !2067
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !2076
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !2134
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !2134
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2339
  call void @llvm.dbg.value(metadata i8 %380, metadata !2023, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %379, metadata !2022, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %378, metadata !2017, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %377, metadata !2014, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %376, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %375, metadata !2006, metadata !DIExpression()), !dbg !2067
  br i1 %373, label %381, label %427, !dbg !2340

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2345

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !2023, metadata !DIExpression()), !dbg !2134
  %383 = and i8 %377, 1, !dbg !2348
  %384 = icmp eq i8 %383, 0, !dbg !2348
  %385 = and i1 %110, %384, !dbg !2348
  br i1 %385, label %386, label %402, !dbg !2348

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2350
  br i1 %387, label %388, label %390, !dbg !2354

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2350
  store i8 39, i8* %389, align 1, !dbg !2350, !tbaa !914
  br label %390, !dbg !2350

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2354
  call void @llvm.dbg.value(metadata i64 %391, metadata !2007, metadata !DIExpression()), !dbg !2067
  %392 = icmp ult i64 %391, %129, !dbg !2355
  br i1 %392, label %393, label %395, !dbg !2358

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2355
  store i8 36, i8* %394, align 1, !dbg !2355, !tbaa !914
  br label %395, !dbg !2355

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2358
  call void @llvm.dbg.value(metadata i64 %396, metadata !2007, metadata !DIExpression()), !dbg !2067
  %397 = icmp ult i64 %396, %129, !dbg !2359
  br i1 %397, label %398, label %400, !dbg !2362

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2359
  store i8 39, i8* %399, align 1, !dbg !2359, !tbaa !914
  br label %400, !dbg !2359

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2362
  call void @llvm.dbg.value(metadata i64 %401, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 1, metadata !2014, metadata !DIExpression()), !dbg !2067
  br label %402, !dbg !2363

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !2067
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !2067
  call void @llvm.dbg.value(metadata i8 %404, metadata !2014, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %403, metadata !2007, metadata !DIExpression()), !dbg !2067
  %405 = icmp ult i64 %403, %129, !dbg !2364
  br i1 %405, label %406, label %408, !dbg !2367

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2364
  store i8 92, i8* %407, align 1, !dbg !2364, !tbaa !914
  br label %408, !dbg !2364

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2367
  call void @llvm.dbg.value(metadata i64 %409, metadata !2007, metadata !DIExpression()), !dbg !2067
  %410 = icmp ult i64 %409, %129, !dbg !2368
  br i1 %410, label %411, label %415, !dbg !2371

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2368
  %413 = or i8 %412, 48, !dbg !2368
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2368
  store i8 %413, i8* %414, align 1, !dbg !2368, !tbaa !914
  br label %415, !dbg !2368

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2371
  call void @llvm.dbg.value(metadata i64 %416, metadata !2007, metadata !DIExpression()), !dbg !2067
  %417 = icmp ult i64 %416, %129, !dbg !2372
  br i1 %417, label %418, label %423, !dbg !2375

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2372
  %420 = and i8 %419, 7, !dbg !2372
  %421 = or i8 %420, 48, !dbg !2372
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2372
  store i8 %421, i8* %422, align 1, !dbg !2372, !tbaa !914
  br label %423, !dbg !2372

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2375
  call void @llvm.dbg.value(metadata i64 %424, metadata !2007, metadata !DIExpression()), !dbg !2067
  %425 = and i8 %378, 7, !dbg !2376
  %426 = or i8 %425, 48, !dbg !2377
  call void @llvm.dbg.value(metadata i8 %426, metadata !2017, metadata !DIExpression()), !dbg !2134
  br label %436, !dbg !2378

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2379
  %429 = icmp eq i8 %428, 0, !dbg !2379
  br i1 %429, label %436, label %430, !dbg !2381

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2382
  br i1 %431, label %432, label %434, !dbg !2386

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2382
  store i8 92, i8* %433, align 1, !dbg !2382, !tbaa !914
  br label %434, !dbg !2382

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2386
  call void @llvm.dbg.value(metadata i64 %435, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 0, metadata !2022, metadata !DIExpression()), !dbg !2134
  br label %436, !dbg !2387

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !2067
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !2076
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !2134
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !2134
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !2134
  call void @llvm.dbg.value(metadata i8 %441, metadata !2023, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %440, metadata !2022, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %439, metadata !2017, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %438, metadata !2014, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %437, metadata !2007, metadata !DIExpression()), !dbg !2067
  %442 = add i64 %375, 1, !dbg !2388
  %443 = icmp ugt i64 %372, %442, !dbg !2390
  br i1 %443, label %444, label %471, !dbg !2391

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2392
  %446 = icmp ne i8 %445, 0, !dbg !2392
  %447 = and i8 %441, 1, !dbg !2392
  %448 = icmp eq i8 %447, 0, !dbg !2392
  %449 = and i1 %446, %448, !dbg !2392
  br i1 %449, label %450, label %461, !dbg !2392

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2395
  br i1 %451, label %452, label %454, !dbg !2399

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2395
  store i8 39, i8* %453, align 1, !dbg !2395, !tbaa !914
  br label %454, !dbg !2395

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %455, metadata !2007, metadata !DIExpression()), !dbg !2067
  %456 = icmp ult i64 %455, %129, !dbg !2400
  br i1 %456, label %457, label %459, !dbg !2403

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2400
  store i8 39, i8* %458, align 1, !dbg !2400, !tbaa !914
  br label %459, !dbg !2400

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %460, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 0, metadata !2014, metadata !DIExpression()), !dbg !2067
  br label %461, !dbg !2404

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2405
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !2067
  call void @llvm.dbg.value(metadata i8 %463, metadata !2014, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %462, metadata !2007, metadata !DIExpression()), !dbg !2067
  %464 = icmp ult i64 %462, %129, !dbg !2406
  br i1 %464, label %465, label %467, !dbg !2409

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2406
  store i8 %439, i8* %466, align 1, !dbg !2406, !tbaa !914
  br label %467, !dbg !2406

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2409
  call void @llvm.dbg.value(metadata i64 %468, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %442, metadata !2006, metadata !DIExpression()), !dbg !2067
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2410
  %470 = load i8, i8* %469, align 1, !dbg !2410, !tbaa !914
  call void @llvm.dbg.value(metadata i8 %470, metadata !2017, metadata !DIExpression()), !dbg !2134
  br label %374, !dbg !2411, !llvm.loop !2412

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !2134
  call void @llvm.dbg.value(metadata i8 %472, metadata !2024, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %441, metadata !2023, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %440, metadata !2022, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %439, metadata !2017, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %438, metadata !2014, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %371, metadata !2000, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %437, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %375, metadata !2006, metadata !DIExpression()), !dbg !2067
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !2127
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !2067
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !2072
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2415
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !2067
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !2067
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !2134
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !2134
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !2134
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1998, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %482, metadata !2024, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %481, metadata !2023, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %156, metadata !2022, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %480, metadata !2017, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %479, metadata !2015, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %478, metadata !2014, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %477, metadata !2000, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %476, metadata !2008, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %475, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %474, metadata !2006, metadata !DIExpression()), !dbg !2067
  br i1 %116, label %494, label %484, !dbg !2416

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2418
  %486 = zext i8 %485 to i64, !dbg !2418
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2419
  %488 = load i32, i32* %487, align 4, !dbg !2419, !tbaa !821
  %489 = and i8 %480, 31, !dbg !2420
  %490 = zext i8 %489 to i32, !dbg !2420
  %491 = shl nuw i32 1, %490, !dbg !2421
  %492 = and i32 %488, %491, !dbg !2421
  %493 = icmp eq i32 %492, 0, !dbg !2421
  br i1 %493, label %494, label %495, !dbg !2422

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2423

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2424
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !2067
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !2072
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2415
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !2076
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !2077
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !2134
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !2134
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1998, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %503, metadata !2024, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %502, metadata !2017, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %501, metadata !2015, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %500, metadata !2014, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %499, metadata !2000, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %498, metadata !2008, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %497, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %496, metadata !2006, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.label(metadata !2064), !dbg !2425
  br i1 %109, label %505, label %635, !dbg !2426

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !2023, metadata !DIExpression()), !dbg !2134
  %506 = and i8 %500, 1, !dbg !2428
  %507 = icmp eq i8 %506, 0, !dbg !2428
  %508 = and i1 %110, %507, !dbg !2428
  br i1 %508, label %509, label %525, !dbg !2428

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2430
  br i1 %510, label %511, label %513, !dbg !2434

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2430
  store i8 39, i8* %512, align 1, !dbg !2430, !tbaa !914
  br label %513, !dbg !2430

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2434
  call void @llvm.dbg.value(metadata i64 %514, metadata !2007, metadata !DIExpression()), !dbg !2067
  %515 = icmp ult i64 %514, %504, !dbg !2435
  br i1 %515, label %516, label %518, !dbg !2438

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2435
  store i8 36, i8* %517, align 1, !dbg !2435, !tbaa !914
  br label %518, !dbg !2435

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2438
  call void @llvm.dbg.value(metadata i64 %519, metadata !2007, metadata !DIExpression()), !dbg !2067
  %520 = icmp ult i64 %519, %504, !dbg !2439
  br i1 %520, label %521, label %523, !dbg !2442

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2439
  store i8 39, i8* %522, align 1, !dbg !2439, !tbaa !914
  br label %523, !dbg !2439

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2442
  call void @llvm.dbg.value(metadata i64 %524, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 1, metadata !2014, metadata !DIExpression()), !dbg !2067
  br label %525, !dbg !2443

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !2134
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !2067
  call void @llvm.dbg.value(metadata i8 %527, metadata !2014, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %526, metadata !2007, metadata !DIExpression()), !dbg !2067
  %528 = icmp ult i64 %526, %504, !dbg !2444
  br i1 %528, label %529, label %531, !dbg !2447

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2444
  store i8 92, i8* %530, align 1, !dbg !2444, !tbaa !914
  br label %531, !dbg !2444

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %543, metadata !1998, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %542, metadata !2024, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %541, metadata !2023, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %540, metadata !2017, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %539, metadata !2015, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %538, metadata !2014, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %537, metadata !2000, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %536, metadata !2008, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %535, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %534, metadata !2006, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.label(metadata !2065), !dbg !2448
  br label %560, !dbg !2449

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2424
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !2067
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !2072
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2415
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !2076
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !2077
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2452
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2134
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2134
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1998, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %542, metadata !2024, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %541, metadata !2023, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %540, metadata !2017, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %539, metadata !2015, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %538, metadata !2014, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %537, metadata !2000, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %536, metadata !2008, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %535, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %534, metadata !2006, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.label(metadata !2065), !dbg !2448
  %544 = and i8 %538, 1, !dbg !2449
  %545 = icmp ne i8 %544, 0, !dbg !2449
  %546 = and i8 %541, 1, !dbg !2449
  %547 = icmp eq i8 %546, 0, !dbg !2449
  %548 = and i1 %545, %547, !dbg !2449
  br i1 %548, label %549, label %560, !dbg !2449

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2453
  br i1 %550, label %551, label %553, !dbg !2457

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2453
  store i8 39, i8* %552, align 1, !dbg !2453, !tbaa !914
  br label %553, !dbg !2453

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2457
  call void @llvm.dbg.value(metadata i64 %554, metadata !2007, metadata !DIExpression()), !dbg !2067
  %555 = icmp ult i64 %554, %543, !dbg !2458
  br i1 %555, label %556, label %558, !dbg !2461

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2458
  store i8 39, i8* %557, align 1, !dbg !2458, !tbaa !914
  br label %558, !dbg !2458

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2461
  call void @llvm.dbg.value(metadata i64 %559, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 0, metadata !2014, metadata !DIExpression()), !dbg !2067
  br label %560, !dbg !2462

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !2134
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !2067
  call void @llvm.dbg.value(metadata i8 %569, metadata !2014, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %568, metadata !2007, metadata !DIExpression()), !dbg !2067
  %570 = icmp ult i64 %568, %561, !dbg !2463
  br i1 %570, label %571, label %573, !dbg !2466

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2463
  store i8 %563, i8* %572, align 1, !dbg !2463, !tbaa !914
  br label %573, !dbg !2463

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2466
  call void @llvm.dbg.value(metadata i64 %574, metadata !2007, metadata !DIExpression()), !dbg !2067
  %575 = icmp eq i8 %562, 0, !dbg !2467
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2469
  call void @llvm.dbg.value(metadata i8 %576, metadata !2016, metadata !DIExpression()), !dbg !2067
  br label %577, !dbg !2470

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2424
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !2067
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !2072
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2415
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !2076
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !2067
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !2078
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1998, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %584, metadata !2016, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %583, metadata !2015, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 %582, metadata !2014, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %581, metadata !2000, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %580, metadata !2008, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %579, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %578, metadata !2006, metadata !DIExpression()), !dbg !2067
  %586 = add i64 %578, 1, !dbg !2471
  call void @llvm.dbg.value(metadata i64 %586, metadata !2006, metadata !DIExpression()), !dbg !2067
  br label %121, !dbg !2472, !llvm.loop !2473

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2475
  %590 = and i1 %110, %589, !dbg !2477
  %591 = xor i1 %590, true, !dbg !2477
  %592 = or i1 %109, %591, !dbg !2477
  br i1 %592, label %593, label %635, !dbg !2477

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2478
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2478
  br i1 %597, label %598, label %607, !dbg !2478

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2480
  %600 = icmp eq i8 %599, 0, !dbg !2480
  br i1 %600, label %603, label %601, !dbg !2483

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2484
  br label %652, !dbg !2485

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2486
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2488
  br i1 %606, label %26, label %607, !dbg !2488

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2489
  %610 = and i1 %609, %608, !dbg !2491
  br i1 %610, label %611, label %626, !dbg !2491

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !2009, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %123, metadata !2007, metadata !DIExpression()), !dbg !2067
  %612 = load i8, i8* %97, align 1, !dbg !2492, !tbaa !914
  %613 = icmp eq i8 %612, 0, !dbg !2495
  br i1 %613, label %626, label %614, !dbg !2495

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !2009, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %617, metadata !2007, metadata !DIExpression()), !dbg !2067
  %618 = icmp ult i64 %617, %129, !dbg !2496
  br i1 %618, label %619, label %621, !dbg !2499

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2496
  store i8 %615, i8* %620, align 1, !dbg !2496, !tbaa !914
  br label %621, !dbg !2496

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %622, metadata !2007, metadata !DIExpression()), !dbg !2067
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2500
  call void @llvm.dbg.value(metadata i8* %623, metadata !2009, metadata !DIExpression()), !dbg !2067
  %624 = load i8, i8* %623, align 1, !dbg !2492, !tbaa !914
  %625 = icmp eq i8 %624, 0, !dbg !2495
  br i1 %625, label %626, label %614, !dbg !2495, !llvm.loop !2501

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !2109
  call void @llvm.dbg.value(metadata i64 %627, metadata !2007, metadata !DIExpression()), !dbg !2067
  %628 = icmp ult i64 %627, %129, !dbg !2503
  br i1 %628, label %629, label %652, !dbg !2505

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2506
  store i8 0, i8* %630, align 1, !dbg !2507, !tbaa !914
  br label %652, !dbg !2506

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1998, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %637, metadata !2000, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.label(metadata !2066), !dbg !2508
  %633 = icmp eq i8 %101, 0, !dbg !2509
  %634 = select i1 %633, i32 2, i32 4, !dbg !2509
  br label %642, !dbg !2509

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1998, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %637, metadata !2000, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.label(metadata !2066), !dbg !2508
  %639 = icmp eq i32 %93, 2, !dbg !2511
  %640 = icmp eq i8 %636, 0, !dbg !2509
  %641 = select i1 %640, i32 2, i32 4, !dbg !2509
  br i1 %639, label %642, label %646, !dbg !2509

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2509

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !2001, metadata !DIExpression()), !dbg !2067
  %650 = and i32 %5, -3, !dbg !2512
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2513
  br label %652, !dbg !2514

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2515
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2516 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2520, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i32 %1, metadata !2521, metadata !DIExpression()), !dbg !2524
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #27, !dbg !2525
  call void @llvm.dbg.value(metadata i8* %3, metadata !2522, metadata !DIExpression()), !dbg !2524
  %4 = icmp eq i8* %3, %0, !dbg !2526
  br i1 %4, label %5, label %72, !dbg !2528

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #27, !dbg !2529
  call void @llvm.dbg.value(metadata i8* %6, metadata !2523, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8* %6, metadata !2530, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8* undef, metadata !2536, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 85, metadata !2537, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 84, metadata !2538, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 70, metadata !2539, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 45, metadata !2540, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 56, metadata !2541, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 0, metadata !2542, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 0, metadata !2543, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 0, metadata !2544, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 0, metadata !2545, metadata !DIExpression()), !dbg !2546
  %7 = load i8, i8* %6, align 1, !dbg !2549, !tbaa !914
  %8 = and i8 %7, -33, !dbg !2549
  %9 = sext i8 %8 to i32, !dbg !2549
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2549

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2551, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8* undef, metadata !2556, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8 84, metadata !2557, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8 70, metadata !2558, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8 45, metadata !2559, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8 56, metadata !2560, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8 0, metadata !2561, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8 0, metadata !2562, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8 0, metadata !2563, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8 0, metadata !2564, metadata !DIExpression()), !dbg !2565
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2569
  %12 = load i8, i8* %11, align 1, !dbg !2569, !tbaa !914
  %13 = and i8 %12, -33, !dbg !2569
  %14 = icmp eq i8 %13, 84, !dbg !2569
  br i1 %14, label %15, label %69, !dbg !2569

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2571, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* undef, metadata !2576, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 70, metadata !2577, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 45, metadata !2578, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 56, metadata !2579, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 0, metadata !2580, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 0, metadata !2581, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 0, metadata !2582, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 0, metadata !2583, metadata !DIExpression()), !dbg !2584
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2588
  %17 = load i8, i8* %16, align 1, !dbg !2588, !tbaa !914
  %18 = and i8 %17, -33, !dbg !2588
  %19 = icmp eq i8 %18, 70, !dbg !2588
  br i1 %19, label %20, label %69, !dbg !2588

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2590, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8* undef, metadata !2595, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8 45, metadata !2596, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8 56, metadata !2597, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8 0, metadata !2598, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8 0, metadata !2599, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8 0, metadata !2600, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8 0, metadata !2601, metadata !DIExpression()), !dbg !2602
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2606
  %22 = load i8, i8* %21, align 1, !dbg !2606, !tbaa !914
  %23 = icmp eq i8 %22, 45, !dbg !2606
  br i1 %23, label %24, label %69, !dbg !2608

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2609, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8* undef, metadata !2614, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8 56, metadata !2615, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8 0, metadata !2616, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8 0, metadata !2617, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8 0, metadata !2618, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8 0, metadata !2619, metadata !DIExpression()), !dbg !2620
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2624
  %26 = load i8, i8* %25, align 1, !dbg !2624, !tbaa !914
  %27 = icmp eq i8 %26, 56, !dbg !2624
  br i1 %27, label %28, label %69, !dbg !2626

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2627, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8* undef, metadata !2632, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 0, metadata !2633, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 0, metadata !2634, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 0, metadata !2635, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 0, metadata !2636, metadata !DIExpression()), !dbg !2637
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2641
  %30 = load i8, i8* %29, align 1, !dbg !2641, !tbaa !914
  %31 = icmp eq i8 %30, 0, !dbg !2641
  br i1 %31, label %32, label %69, !dbg !2643

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2644, !tbaa !914
  %34 = icmp eq i8 %33, 96, !dbg !2645
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.83, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.84, i64 0, i64 0), !dbg !2644
  br label %72, !dbg !2646

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2551, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8* undef, metadata !2556, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 66, metadata !2557, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 49, metadata !2558, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 56, metadata !2559, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 48, metadata !2560, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 51, metadata !2561, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 48, metadata !2562, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 0, metadata !2563, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 0, metadata !2564, metadata !DIExpression()), !dbg !2647
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2651
  %38 = load i8, i8* %37, align 1, !dbg !2651, !tbaa !914
  %39 = and i8 %38, -33, !dbg !2651
  %40 = icmp eq i8 %39, 66, !dbg !2651
  br i1 %40, label %41, label %69, !dbg !2651

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2571, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8* undef, metadata !2576, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8 49, metadata !2577, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8 56, metadata !2578, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8 48, metadata !2579, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8 51, metadata !2580, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8 48, metadata !2581, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8 0, metadata !2582, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8 0, metadata !2583, metadata !DIExpression()), !dbg !2652
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2654
  %43 = load i8, i8* %42, align 1, !dbg !2654, !tbaa !914
  %44 = icmp eq i8 %43, 49, !dbg !2654
  br i1 %44, label %45, label %69, !dbg !2655

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2590, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8* undef, metadata !2595, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8 56, metadata !2596, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8 48, metadata !2597, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8 51, metadata !2598, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8 48, metadata !2599, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8 0, metadata !2600, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8 0, metadata !2601, metadata !DIExpression()), !dbg !2656
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2658
  %47 = load i8, i8* %46, align 1, !dbg !2658, !tbaa !914
  %48 = icmp eq i8 %47, 56, !dbg !2658
  br i1 %48, label %49, label %69, !dbg !2659

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2609, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8* undef, metadata !2614, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 48, metadata !2615, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 51, metadata !2616, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 48, metadata !2617, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 0, metadata !2618, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 0, metadata !2619, metadata !DIExpression()), !dbg !2660
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2662
  %51 = load i8, i8* %50, align 1, !dbg !2662, !tbaa !914
  %52 = icmp eq i8 %51, 48, !dbg !2662
  br i1 %52, label %53, label %69, !dbg !2663

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2627, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8* undef, metadata !2632, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 51, metadata !2633, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 48, metadata !2634, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 0, metadata !2635, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 0, metadata !2636, metadata !DIExpression()), !dbg !2664
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2666
  %55 = load i8, i8* %54, align 1, !dbg !2666, !tbaa !914
  %56 = icmp eq i8 %55, 51, !dbg !2666
  br i1 %56, label %57, label %69, !dbg !2667

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2668, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8* undef, metadata !2673, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8 48, metadata !2674, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8 0, metadata !2675, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8 0, metadata !2676, metadata !DIExpression()), !dbg !2677
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2681
  %59 = load i8, i8* %58, align 1, !dbg !2681, !tbaa !914
  %60 = icmp eq i8 %59, 48, !dbg !2681
  br i1 %60, label %61, label %69, !dbg !2683

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2684, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8* undef, metadata !2689, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8 0, metadata !2690, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8 0, metadata !2691, metadata !DIExpression()), !dbg !2692
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2696
  %63 = load i8, i8* %62, align 1, !dbg !2696, !tbaa !914
  %64 = icmp eq i8 %63, 0, !dbg !2696
  br i1 %64, label %65, label %69, !dbg !2698

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2699, !tbaa !914
  %67 = icmp eq i8 %66, 96, !dbg !2700
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.85, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.86, i64 0, i64 0), !dbg !2699
  br label %72, !dbg !2701

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2702
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), !dbg !2703
  br label %72, !dbg !2704

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2524
  ret i8* %73, !dbg !2705
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2706 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2710 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2716 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2720, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i64 %1, metadata !2721, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2722, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i8* %0, metadata !2724, metadata !DIExpression()) #27, !dbg !2737
  call void @llvm.dbg.value(metadata i64 %1, metadata !2729, metadata !DIExpression()) #27, !dbg !2737
  call void @llvm.dbg.value(metadata i64* null, metadata !2730, metadata !DIExpression()) #27, !dbg !2737
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2731, metadata !DIExpression()) #27, !dbg !2737
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2739
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2739
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2732, metadata !DIExpression()) #27, !dbg !2737
  %6 = tail call i32* @__errno_location() #31, !dbg !2740
  %7 = load i32, i32* %6, align 4, !dbg !2740, !tbaa !821
  call void @llvm.dbg.value(metadata i32 %7, metadata !2733, metadata !DIExpression()) #27, !dbg !2737
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2741
  %9 = load i32, i32* %8, align 4, !dbg !2741, !tbaa !1941
  %10 = or i32 %9, 1, !dbg !2742
  call void @llvm.dbg.value(metadata i32 %10, metadata !2734, metadata !DIExpression()) #27, !dbg !2737
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2743
  %12 = load i32, i32* %11, align 8, !dbg !2743, !tbaa !1890
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2744
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2745
  %15 = load i8*, i8** %14, align 8, !dbg !2745, !tbaa !1963
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2746
  %17 = load i8*, i8** %16, align 8, !dbg !2746, !tbaa !1966
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #27, !dbg !2747
  %19 = add i64 %18, 1, !dbg !2748
  call void @llvm.dbg.value(metadata i64 %19, metadata !2735, metadata !DIExpression()) #27, !dbg !2737
  call void @llvm.dbg.value(metadata i64 %19, metadata !2749, metadata !DIExpression()) #27, !dbg !2754
  %20 = tail call noalias i8* @xmalloc(i64 %19) #27, !dbg !2756
  call void @llvm.dbg.value(metadata i8* %20, metadata !2736, metadata !DIExpression()) #27, !dbg !2737
  %21 = load i32, i32* %11, align 8, !dbg !2757, !tbaa !1890
  %22 = load i8*, i8** %14, align 8, !dbg !2758, !tbaa !1963
  %23 = load i8*, i8** %16, align 8, !dbg !2759, !tbaa !1966
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #27, !dbg !2760
  store i32 %7, i32* %6, align 4, !dbg !2761, !tbaa !821
  ret i8* %20, !dbg !2762
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2725 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2724, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i64 %1, metadata !2729, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i64* %2, metadata !2730, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2731, metadata !DIExpression()), !dbg !2763
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2764
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2764
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2732, metadata !DIExpression()), !dbg !2763
  %7 = tail call i32* @__errno_location() #31, !dbg !2765
  %8 = load i32, i32* %7, align 4, !dbg !2765, !tbaa !821
  call void @llvm.dbg.value(metadata i32 %8, metadata !2733, metadata !DIExpression()), !dbg !2763
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2766
  %10 = load i32, i32* %9, align 4, !dbg !2766, !tbaa !1941
  %11 = icmp eq i64* %2, null, !dbg !2767
  %12 = zext i1 %11 to i32, !dbg !2767
  %13 = or i32 %10, %12, !dbg !2768
  call void @llvm.dbg.value(metadata i32 %13, metadata !2734, metadata !DIExpression()), !dbg !2763
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2769
  %15 = load i32, i32* %14, align 8, !dbg !2769, !tbaa !1890
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2770
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2771
  %18 = load i8*, i8** %17, align 8, !dbg !2771, !tbaa !1963
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2772
  %20 = load i8*, i8** %19, align 8, !dbg !2772, !tbaa !1966
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2773
  %22 = add i64 %21, 1, !dbg !2774
  call void @llvm.dbg.value(metadata i64 %22, metadata !2735, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i64 %22, metadata !2749, metadata !DIExpression()) #27, !dbg !2775
  %23 = tail call noalias i8* @xmalloc(i64 %22) #27, !dbg !2777
  call void @llvm.dbg.value(metadata i8* %23, metadata !2736, metadata !DIExpression()), !dbg !2763
  %24 = load i32, i32* %14, align 8, !dbg !2778, !tbaa !1890
  %25 = load i8*, i8** %17, align 8, !dbg !2779, !tbaa !1963
  %26 = load i8*, i8** %19, align 8, !dbg !2780, !tbaa !1966
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2781
  store i32 %8, i32* %7, align 4, !dbg !2782, !tbaa !821
  br i1 %11, label %29, label %28, !dbg !2783

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2784, !tbaa !905
  br label %29, !dbg !2786

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2787
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2788 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2792, !tbaa !645
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2790, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i32 1, metadata !2791, metadata !DIExpression()), !dbg !2793
  %2 = load i32, i32* @nslots, align 4, !dbg !2794, !tbaa !821
  %3 = icmp sgt i32 %2, 1, !dbg !2797
  br i1 %3, label %4, label %12, !dbg !2798

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2797
  br label %6, !dbg !2798

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2791, metadata !DIExpression()), !dbg !2793
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2799
  %9 = load i8*, i8** %8, align 8, !dbg !2799, !tbaa !2800
  tail call void @free(i8* %9) #27, !dbg !2802
  %10 = add nuw nsw i64 %7, 1, !dbg !2803
  call void @llvm.dbg.value(metadata i64 %10, metadata !2791, metadata !DIExpression()), !dbg !2793
  %11 = icmp eq i64 %10, %5, !dbg !2797
  br i1 %11, label %12, label %6, !dbg !2798, !llvm.loop !2804

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2806
  %14 = load i8*, i8** %13, align 8, !dbg !2806, !tbaa !2800
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2808
  br i1 %15, label %17, label %16, !dbg !2809

16:                                               ; preds = %12
  tail call void @free(i8* %14) #27, !dbg !2810
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2812, !tbaa !2813
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2814, !tbaa !2800
  br label %17, !dbg !2815

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2816
  br i1 %18, label %21, label %19, !dbg !2818

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2819
  tail call void @free(i8* %20) #27, !dbg !2821
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2822, !tbaa !645
  br label %21, !dbg !2823

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2824, !tbaa !821
  ret void, !dbg !2825
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2826 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2828, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i8* %1, metadata !2829, metadata !DIExpression()), !dbg !2830
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2831
  ret i8* %3, !dbg !2832
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2833 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2837, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8* %1, metadata !2838, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 %2, metadata !2839, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2840, metadata !DIExpression()), !dbg !2852
  %5 = tail call i32* @__errno_location() #31, !dbg !2853
  %6 = load i32, i32* %5, align 4, !dbg !2853, !tbaa !821
  call void @llvm.dbg.value(metadata i32 %6, metadata !2841, metadata !DIExpression()), !dbg !2852
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2854, !tbaa !645
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2842, metadata !DIExpression()), !dbg !2852
  %8 = icmp slt i32 %0, 0, !dbg !2855
  br i1 %8, label %9, label %10, !dbg !2857

9:                                                ; preds = %4
  tail call void @abort() #29, !dbg !2858
  unreachable, !dbg !2858

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2859, !tbaa !821
  %12 = icmp sgt i32 %11, %0, !dbg !2860
  br i1 %12, label %34, label %13, !dbg !2861

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2862
  call void @llvm.dbg.value(metadata i1 %14, metadata !2843, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2863
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2846, metadata !DIExpression()), !dbg !2863
  %15 = icmp eq i32 %0, 2147483647, !dbg !2864
  br i1 %15, label %16, label %17, !dbg !2866

16:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !2867
  unreachable, !dbg !2867

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2868
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2868
  %20 = add nuw nsw i32 %0, 1, !dbg !2869
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2870
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #27, !dbg !2871
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2871
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2842, metadata !DIExpression()), !dbg !2852
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2872, !tbaa !645
  br i1 %14, label %25, label %26, !dbg !2873

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2874, !tbaa.struct !2876
  br label %26, !dbg !2877

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2878, !tbaa !821
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2879
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2880
  %31 = sub nsw i32 %20, %27, !dbg !2881
  %32 = sext i32 %31 to i64, !dbg !2882
  %33 = shl nsw i64 %32, 4, !dbg !2883
  call void @llvm.dbg.value(metadata i8* %30, metadata !2277, metadata !DIExpression()) #27, !dbg !2884
  call void @llvm.dbg.value(metadata i32 0, metadata !2282, metadata !DIExpression()) #27, !dbg !2884
  call void @llvm.dbg.value(metadata i64 %33, metadata !2283, metadata !DIExpression()) #27, !dbg !2884
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #27, !dbg !2886
  store i32 %20, i32* @nslots, align 4, !dbg !2887, !tbaa !821
  br label %34, !dbg !2888

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2852
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2842, metadata !DIExpression()), !dbg !2852
  %36 = zext i32 %0 to i64, !dbg !2889
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2890
  %38 = load i64, i64* %37, align 8, !dbg !2890, !tbaa !2813
  call void @llvm.dbg.value(metadata i64 %38, metadata !2847, metadata !DIExpression()), !dbg !2891
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2892
  %40 = load i8*, i8** %39, align 8, !dbg !2892, !tbaa !2800
  call void @llvm.dbg.value(metadata i8* %40, metadata !2849, metadata !DIExpression()), !dbg !2891
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2893
  %42 = load i32, i32* %41, align 4, !dbg !2893, !tbaa !1941
  %43 = or i32 %42, 1, !dbg !2894
  call void @llvm.dbg.value(metadata i32 %43, metadata !2850, metadata !DIExpression()), !dbg !2891
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2895
  %45 = load i32, i32* %44, align 8, !dbg !2895, !tbaa !1890
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2896
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2897
  %48 = load i8*, i8** %47, align 8, !dbg !2897, !tbaa !1963
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2898
  %50 = load i8*, i8** %49, align 8, !dbg !2898, !tbaa !1966
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2899
  call void @llvm.dbg.value(metadata i64 %51, metadata !2851, metadata !DIExpression()), !dbg !2891
  %52 = icmp ugt i64 %38, %51, !dbg !2900
  br i1 %52, label %63, label %53, !dbg !2902

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2903
  call void @llvm.dbg.value(metadata i64 %54, metadata !2847, metadata !DIExpression()), !dbg !2891
  store i64 %54, i64* %37, align 8, !dbg !2905, !tbaa !2813
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2906
  br i1 %55, label %57, label %56, !dbg !2908

56:                                               ; preds = %53
  tail call void @free(i8* %40) #27, !dbg !2909
  br label %57, !dbg !2909

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2749, metadata !DIExpression()) #27, !dbg !2910
  %58 = tail call noalias i8* @xmalloc(i64 %54) #27, !dbg !2912
  call void @llvm.dbg.value(metadata i8* %58, metadata !2849, metadata !DIExpression()), !dbg !2891
  store i8* %58, i8** %39, align 8, !dbg !2913, !tbaa !2800
  %59 = load i32, i32* %44, align 8, !dbg !2914, !tbaa !1890
  %60 = load i8*, i8** %47, align 8, !dbg !2915, !tbaa !1963
  %61 = load i8*, i8** %49, align 8, !dbg !2916, !tbaa !1966
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2917
  br label %63, !dbg !2918

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2891
  call void @llvm.dbg.value(metadata i8* %64, metadata !2849, metadata !DIExpression()), !dbg !2891
  store i32 %6, i32* %5, align 4, !dbg !2919, !tbaa !821
  ret i8* %64, !dbg !2920
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2921 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2925, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i8* %1, metadata !2926, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i64 %2, metadata !2927, metadata !DIExpression()), !dbg !2928
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2929
  ret i8* %4, !dbg !2930
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2931 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2933, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 0, metadata !2828, metadata !DIExpression()) #27, !dbg !2935
  call void @llvm.dbg.value(metadata i8* %0, metadata !2829, metadata !DIExpression()) #27, !dbg !2935
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !2937
  ret i8* %2, !dbg !2938
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2939 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2943, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i64 %1, metadata !2944, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i32 0, metadata !2925, metadata !DIExpression()) #27, !dbg !2946
  call void @llvm.dbg.value(metadata i8* %0, metadata !2926, metadata !DIExpression()) #27, !dbg !2946
  call void @llvm.dbg.value(metadata i64 %1, metadata !2927, metadata !DIExpression()) #27, !dbg !2946
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !2948
  ret i8* %3, !dbg !2949
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2950 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2954, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i32 %1, metadata !2955, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i8* %2, metadata !2956, metadata !DIExpression()), !dbg !2958
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2959
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2959
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2957, metadata !DIExpression()), !dbg !2960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2961), !dbg !2964
  call void @llvm.dbg.value(metadata i32 %1, metadata !2965, metadata !DIExpression()) #27, !dbg !2971
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2970, metadata !DIExpression()) #27, !dbg !2973
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !2973, !alias.scope !2961
  %6 = icmp eq i32 %1, 10, !dbg !2974
  br i1 %6, label %7, label %8, !dbg !2976

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !2977, !noalias !2961
  unreachable, !dbg !2977

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2978
  store i32 %1, i32* %9, align 8, !dbg !2979, !tbaa !1890, !alias.scope !2961
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2980
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2981
  ret i8* %10, !dbg !2982
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2983 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2987, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i32 %1, metadata !2988, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8* %2, metadata !2989, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 %3, metadata !2990, metadata !DIExpression()), !dbg !2992
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2993
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2993
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2991, metadata !DIExpression()), !dbg !2994
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2995), !dbg !2998
  call void @llvm.dbg.value(metadata i32 %1, metadata !2965, metadata !DIExpression()) #27, !dbg !2999
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2970, metadata !DIExpression()) #27, !dbg !3001
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #27, !dbg !3001, !alias.scope !2995
  %7 = icmp eq i32 %1, 10, !dbg !3002
  br i1 %7, label %8, label %9, !dbg !3003

8:                                                ; preds = %4
  tail call void @abort() #29, !dbg !3004, !noalias !2995
  unreachable, !dbg !3004

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3005
  store i32 %1, i32* %10, align 8, !dbg !3006, !tbaa !1890, !alias.scope !2995
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3007
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3008
  ret i8* %11, !dbg !3009
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3010 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3014, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8* %1, metadata !3015, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i32 0, metadata !2954, metadata !DIExpression()) #27, !dbg !3017
  call void @llvm.dbg.value(metadata i32 %0, metadata !2955, metadata !DIExpression()) #27, !dbg !3017
  call void @llvm.dbg.value(metadata i8* %1, metadata !2956, metadata !DIExpression()) #27, !dbg !3017
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3019
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3019
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2957, metadata !DIExpression()) #27, !dbg !3020
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3021) #27, !dbg !3024
  call void @llvm.dbg.value(metadata i32 %0, metadata !2965, metadata !DIExpression()) #27, !dbg !3025
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2970, metadata !DIExpression()) #27, !dbg !3027
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #27, !dbg !3027, !alias.scope !3021
  %5 = icmp eq i32 %0, 10, !dbg !3028
  br i1 %5, label %6, label %7, !dbg !3029

6:                                                ; preds = %2
  tail call void @abort() #29, !dbg !3030, !noalias !3021
  unreachable, !dbg !3030

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3031
  store i32 %0, i32* %8, align 8, !dbg !3032, !tbaa !1890, !alias.scope !3021
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !3033
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3034
  ret i8* %9, !dbg !3035
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3036 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3040, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8* %1, metadata !3041, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %2, metadata !3042, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i32 0, metadata !2987, metadata !DIExpression()) #27, !dbg !3044
  call void @llvm.dbg.value(metadata i32 %0, metadata !2988, metadata !DIExpression()) #27, !dbg !3044
  call void @llvm.dbg.value(metadata i8* %1, metadata !2989, metadata !DIExpression()) #27, !dbg !3044
  call void @llvm.dbg.value(metadata i64 %2, metadata !2990, metadata !DIExpression()) #27, !dbg !3044
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3046
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3046
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2991, metadata !DIExpression()) #27, !dbg !3047
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3048) #27, !dbg !3051
  call void @llvm.dbg.value(metadata i32 %0, metadata !2965, metadata !DIExpression()) #27, !dbg !3052
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2970, metadata !DIExpression()) #27, !dbg !3054
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !3054, !alias.scope !3048
  %6 = icmp eq i32 %0, 10, !dbg !3055
  br i1 %6, label %7, label %8, !dbg !3056

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !3057, !noalias !3048
  unreachable, !dbg !3057

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3058
  store i32 %0, i32* %9, align 8, !dbg !3059, !tbaa !1890, !alias.scope !3048
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #27, !dbg !3060
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3061
  ret i8* %10, !dbg !3062
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3063 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3067, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %1, metadata !3068, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i8 %2, metadata !3069, metadata !DIExpression()), !dbg !3071
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3072
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3072
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3070, metadata !DIExpression()), !dbg !3073
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3074, !tbaa.struct !3075
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1908, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i8 %2, metadata !1909, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i32 1, metadata !1910, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i8 %2, metadata !1911, metadata !DIExpression()), !dbg !3076
  %6 = lshr i8 %2, 5, !dbg !3078
  %7 = zext i8 %6 to i64, !dbg !3078
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3079
  call void @llvm.dbg.value(metadata i32* %8, metadata !1912, metadata !DIExpression()), !dbg !3076
  %9 = and i8 %2, 31, !dbg !3080
  %10 = zext i8 %9 to i32, !dbg !3080
  call void @llvm.dbg.value(metadata i32 %10, metadata !1914, metadata !DIExpression()), !dbg !3076
  %11 = load i32, i32* %8, align 4, !dbg !3081, !tbaa !821
  %12 = lshr i32 %11, %10, !dbg !3082
  %13 = and i32 %12, 1, !dbg !3083
  call void @llvm.dbg.value(metadata i32 %13, metadata !1915, metadata !DIExpression()), !dbg !3076
  %14 = xor i32 %13, 1, !dbg !3084
  %15 = shl i32 %14, %10, !dbg !3085
  %16 = xor i32 %15, %11, !dbg !3086
  store i32 %16, i32* %8, align 4, !dbg !3086, !tbaa !821
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3087
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3088
  ret i8* %17, !dbg !3089
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3090 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3094, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 %1, metadata !3095, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8* %0, metadata !3067, metadata !DIExpression()) #27, !dbg !3097
  call void @llvm.dbg.value(metadata i64 -1, metadata !3068, metadata !DIExpression()) #27, !dbg !3097
  call void @llvm.dbg.value(metadata i8 %1, metadata !3069, metadata !DIExpression()) #27, !dbg !3097
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3099
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3099
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3070, metadata !DIExpression()) #27, !dbg !3100
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !3101, !tbaa.struct !3075
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1908, metadata !DIExpression()) #27, !dbg !3102
  call void @llvm.dbg.value(metadata i8 %1, metadata !1909, metadata !DIExpression()) #27, !dbg !3102
  call void @llvm.dbg.value(metadata i32 1, metadata !1910, metadata !DIExpression()) #27, !dbg !3102
  call void @llvm.dbg.value(metadata i8 %1, metadata !1911, metadata !DIExpression()) #27, !dbg !3102
  %5 = lshr i8 %1, 5, !dbg !3104
  %6 = zext i8 %5 to i64, !dbg !3104
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3105
  call void @llvm.dbg.value(metadata i32* %7, metadata !1912, metadata !DIExpression()) #27, !dbg !3102
  %8 = and i8 %1, 31, !dbg !3106
  %9 = zext i8 %8 to i32, !dbg !3106
  call void @llvm.dbg.value(metadata i32 %9, metadata !1914, metadata !DIExpression()) #27, !dbg !3102
  %10 = load i32, i32* %7, align 4, !dbg !3107, !tbaa !821
  %11 = lshr i32 %10, %9, !dbg !3108
  %12 = and i32 %11, 1, !dbg !3109
  call void @llvm.dbg.value(metadata i32 %12, metadata !1915, metadata !DIExpression()) #27, !dbg !3102
  %13 = xor i32 %12, 1, !dbg !3110
  %14 = shl i32 %13, %9, !dbg !3111
  %15 = xor i32 %14, %10, !dbg !3112
  store i32 %15, i32* %7, align 4, !dbg !3112, !tbaa !821
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !3113
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3114
  ret i8* %16, !dbg !3115
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3116 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3118, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %0, metadata !3094, metadata !DIExpression()) #27, !dbg !3120
  call void @llvm.dbg.value(metadata i8 58, metadata !3095, metadata !DIExpression()) #27, !dbg !3120
  call void @llvm.dbg.value(metadata i8* %0, metadata !3067, metadata !DIExpression()) #27, !dbg !3122
  call void @llvm.dbg.value(metadata i64 -1, metadata !3068, metadata !DIExpression()) #27, !dbg !3122
  call void @llvm.dbg.value(metadata i8 58, metadata !3069, metadata !DIExpression()) #27, !dbg !3122
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3124
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #27, !dbg !3124
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3070, metadata !DIExpression()) #27, !dbg !3125
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !3126, !tbaa.struct !3075
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1908, metadata !DIExpression()) #27, !dbg !3127
  call void @llvm.dbg.value(metadata i8 58, metadata !1909, metadata !DIExpression()) #27, !dbg !3127
  call void @llvm.dbg.value(metadata i32 1, metadata !1910, metadata !DIExpression()) #27, !dbg !3127
  call void @llvm.dbg.value(metadata i8 58, metadata !1911, metadata !DIExpression()) #27, !dbg !3127
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3129
  call void @llvm.dbg.value(metadata i32* %4, metadata !1912, metadata !DIExpression()) #27, !dbg !3127
  call void @llvm.dbg.value(metadata i32 26, metadata !1914, metadata !DIExpression()) #27, !dbg !3127
  %5 = load i32, i32* %4, align 4, !dbg !3130, !tbaa !821
  call void @llvm.dbg.value(metadata i32 %5, metadata !1915, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !3127
  %6 = or i32 %5, 67108864, !dbg !3131
  store i32 %6, i32* %4, align 4, !dbg !3131, !tbaa !821
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #27, !dbg !3132
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #27, !dbg !3133
  ret i8* %7, !dbg !3134
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3135 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3137, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %1, metadata !3138, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i8* %0, metadata !3067, metadata !DIExpression()) #27, !dbg !3140
  call void @llvm.dbg.value(metadata i64 %1, metadata !3068, metadata !DIExpression()) #27, !dbg !3140
  call void @llvm.dbg.value(metadata i8 58, metadata !3069, metadata !DIExpression()) #27, !dbg !3140
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3142
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3142
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3070, metadata !DIExpression()) #27, !dbg !3143
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !3144, !tbaa.struct !3075
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1908, metadata !DIExpression()) #27, !dbg !3145
  call void @llvm.dbg.value(metadata i8 58, metadata !1909, metadata !DIExpression()) #27, !dbg !3145
  call void @llvm.dbg.value(metadata i32 1, metadata !1910, metadata !DIExpression()) #27, !dbg !3145
  call void @llvm.dbg.value(metadata i8 58, metadata !1911, metadata !DIExpression()) #27, !dbg !3145
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3147
  call void @llvm.dbg.value(metadata i32* %5, metadata !1912, metadata !DIExpression()) #27, !dbg !3145
  call void @llvm.dbg.value(metadata i32 26, metadata !1914, metadata !DIExpression()) #27, !dbg !3145
  %6 = load i32, i32* %5, align 4, !dbg !3148, !tbaa !821
  call void @llvm.dbg.value(metadata i32 %6, metadata !1915, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !3145
  %7 = or i32 %6, 67108864, !dbg !3149
  store i32 %7, i32* %5, align 4, !dbg !3149, !tbaa !821
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #27, !dbg !3150
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !3151
  ret i8* %8, !dbg !3152
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3153 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2970, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3159
  call void @llvm.dbg.value(metadata i32 %0, metadata !3155, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i32 %1, metadata !3156, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i8* %2, metadata !3157, metadata !DIExpression()), !dbg !3161
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3162
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3162
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3158, metadata !DIExpression()), !dbg !3163
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3164
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3164
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3165), !dbg !3164
  call void @llvm.dbg.value(metadata i32 %1, metadata !2965, metadata !DIExpression()) #27, !dbg !3168
  call void @llvm.dbg.value(metadata i32 0, metadata !2970, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3168
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3159, !alias.scope !3165
  %8 = icmp eq i32 %1, 10, !dbg !3169
  br i1 %8, label %9, label %10, !dbg !3170

9:                                                ; preds = %3
  tail call void @abort() #29, !dbg !3171, !noalias !3165
  unreachable, !dbg !3171

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2970, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3168
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3164
  store i32 %1, i32* %11, align 8, !dbg !3164, !tbaa.struct !3075
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3164
  %13 = bitcast i32* %12 to i8*, !dbg !3164
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3164, !tbaa.struct !3172
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1908, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i8 58, metadata !1909, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i32 1, metadata !1910, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i8 58, metadata !1911, metadata !DIExpression()), !dbg !3173
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3175
  call void @llvm.dbg.value(metadata i32* %14, metadata !1912, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i32 26, metadata !1914, metadata !DIExpression()), !dbg !3173
  %15 = load i32, i32* %14, align 4, !dbg !3176, !tbaa !821
  call void @llvm.dbg.value(metadata i32 %15, metadata !1915, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3173
  %16 = or i32 %15, 67108864, !dbg !3177
  store i32 %16, i32* %14, align 4, !dbg !3177, !tbaa !821
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3178
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3179
  ret i8* %17, !dbg !3180
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3181 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3185, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i8* %1, metadata !3186, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i8* %2, metadata !3187, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i8* %3, metadata !3188, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i32 %0, metadata !3190, metadata !DIExpression()) #27, !dbg !3200
  call void @llvm.dbg.value(metadata i8* %1, metadata !3195, metadata !DIExpression()) #27, !dbg !3200
  call void @llvm.dbg.value(metadata i8* %2, metadata !3196, metadata !DIExpression()) #27, !dbg !3200
  call void @llvm.dbg.value(metadata i8* %3, metadata !3197, metadata !DIExpression()) #27, !dbg !3200
  call void @llvm.dbg.value(metadata i64 -1, metadata !3198, metadata !DIExpression()) #27, !dbg !3200
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3202
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3202
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3199, metadata !DIExpression()) #27, !dbg !3203
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3204, !tbaa.struct !3075
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1948, metadata !DIExpression()) #27, !dbg !3205
  call void @llvm.dbg.value(metadata i8* %1, metadata !1949, metadata !DIExpression()) #27, !dbg !3205
  call void @llvm.dbg.value(metadata i8* %2, metadata !1950, metadata !DIExpression()) #27, !dbg !3205
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1948, metadata !DIExpression()) #27, !dbg !3205
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3207
  store i32 10, i32* %7, align 8, !dbg !3208, !tbaa !1890
  %8 = icmp ne i8* %1, null, !dbg !3209
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3210
  br i1 %10, label %12, label %11, !dbg !3210

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !3211
  unreachable, !dbg !3211

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3212
  store i8* %1, i8** %13, align 8, !dbg !3213, !tbaa !1963
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3214
  store i8* %2, i8** %14, align 8, !dbg !3215, !tbaa !1966
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #27, !dbg !3216
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3217
  ret i8* %15, !dbg !3218
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3191 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3190, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8* %1, metadata !3195, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8* %2, metadata !3196, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8* %3, metadata !3197, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %4, metadata !3198, metadata !DIExpression()), !dbg !3219
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3220
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #27, !dbg !3220
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3199, metadata !DIExpression()), !dbg !3221
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3222, !tbaa.struct !3075
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1948, metadata !DIExpression()) #27, !dbg !3223
  call void @llvm.dbg.value(metadata i8* %1, metadata !1949, metadata !DIExpression()) #27, !dbg !3223
  call void @llvm.dbg.value(metadata i8* %2, metadata !1950, metadata !DIExpression()) #27, !dbg !3223
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1948, metadata !DIExpression()) #27, !dbg !3223
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3225
  store i32 10, i32* %8, align 8, !dbg !3226, !tbaa !1890
  %9 = icmp ne i8* %1, null, !dbg !3227
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3228
  br i1 %11, label %13, label %12, !dbg !3228

12:                                               ; preds = %5
  tail call void @abort() #29, !dbg !3229
  unreachable, !dbg !3229

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3230
  store i8* %1, i8** %14, align 8, !dbg !3231, !tbaa !1963
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3232
  store i8* %2, i8** %15, align 8, !dbg !3233, !tbaa !1966
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3234
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #27, !dbg !3235
  ret i8* %16, !dbg !3236
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3237 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3241, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i8* %1, metadata !3242, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i8* %2, metadata !3243, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i32 0, metadata !3185, metadata !DIExpression()) #27, !dbg !3245
  call void @llvm.dbg.value(metadata i8* %0, metadata !3186, metadata !DIExpression()) #27, !dbg !3245
  call void @llvm.dbg.value(metadata i8* %1, metadata !3187, metadata !DIExpression()) #27, !dbg !3245
  call void @llvm.dbg.value(metadata i8* %2, metadata !3188, metadata !DIExpression()) #27, !dbg !3245
  call void @llvm.dbg.value(metadata i32 0, metadata !3190, metadata !DIExpression()) #27, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %0, metadata !3195, metadata !DIExpression()) #27, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %1, metadata !3196, metadata !DIExpression()) #27, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %2, metadata !3197, metadata !DIExpression()) #27, !dbg !3247
  call void @llvm.dbg.value(metadata i64 -1, metadata !3198, metadata !DIExpression()) #27, !dbg !3247
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3249
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3249
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3199, metadata !DIExpression()) #27, !dbg !3250
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3251, !tbaa.struct !3075
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1948, metadata !DIExpression()) #27, !dbg !3252
  call void @llvm.dbg.value(metadata i8* %0, metadata !1949, metadata !DIExpression()) #27, !dbg !3252
  call void @llvm.dbg.value(metadata i8* %1, metadata !1950, metadata !DIExpression()) #27, !dbg !3252
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1948, metadata !DIExpression()) #27, !dbg !3252
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3254
  store i32 10, i32* %6, align 8, !dbg !3255, !tbaa !1890
  %7 = icmp ne i8* %0, null, !dbg !3256
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3257
  br i1 %9, label %11, label %10, !dbg !3257

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !3258
  unreachable, !dbg !3258

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3259
  store i8* %0, i8** %12, align 8, !dbg !3260, !tbaa !1963
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3261
  store i8* %1, i8** %13, align 8, !dbg !3262, !tbaa !1966
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #27, !dbg !3263
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3264
  ret i8* %14, !dbg !3265
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3266 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3270, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8* %1, metadata !3271, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8* %2, metadata !3272, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i64 %3, metadata !3273, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i32 0, metadata !3190, metadata !DIExpression()) #27, !dbg !3275
  call void @llvm.dbg.value(metadata i8* %0, metadata !3195, metadata !DIExpression()) #27, !dbg !3275
  call void @llvm.dbg.value(metadata i8* %1, metadata !3196, metadata !DIExpression()) #27, !dbg !3275
  call void @llvm.dbg.value(metadata i8* %2, metadata !3197, metadata !DIExpression()) #27, !dbg !3275
  call void @llvm.dbg.value(metadata i64 %3, metadata !3198, metadata !DIExpression()) #27, !dbg !3275
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3277
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3277
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3199, metadata !DIExpression()) #27, !dbg !3278
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3279, !tbaa.struct !3075
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1948, metadata !DIExpression()) #27, !dbg !3280
  call void @llvm.dbg.value(metadata i8* %0, metadata !1949, metadata !DIExpression()) #27, !dbg !3280
  call void @llvm.dbg.value(metadata i8* %1, metadata !1950, metadata !DIExpression()) #27, !dbg !3280
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1948, metadata !DIExpression()) #27, !dbg !3280
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3282
  store i32 10, i32* %7, align 8, !dbg !3283, !tbaa !1890
  %8 = icmp ne i8* %0, null, !dbg !3284
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3285
  br i1 %10, label %12, label %11, !dbg !3285

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !3286
  unreachable, !dbg !3286

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3287
  store i8* %0, i8** %13, align 8, !dbg !3288, !tbaa !1963
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3289
  store i8* %1, i8** %14, align 8, !dbg !3290, !tbaa !1966
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #27, !dbg !3291
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3292
  ret i8* %15, !dbg !3293
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3294 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3298, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i8* %1, metadata !3299, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 %2, metadata !3300, metadata !DIExpression()), !dbg !3301
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3302
  ret i8* %4, !dbg !3303
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3304 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3308, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %1, metadata !3309, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i32 0, metadata !3298, metadata !DIExpression()) #27, !dbg !3311
  call void @llvm.dbg.value(metadata i8* %0, metadata !3299, metadata !DIExpression()) #27, !dbg !3311
  call void @llvm.dbg.value(metadata i64 %1, metadata !3300, metadata !DIExpression()) #27, !dbg !3311
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3313
  ret i8* %3, !dbg !3314
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3315 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3319, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i8* %1, metadata !3320, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i32 %0, metadata !3298, metadata !DIExpression()) #27, !dbg !3322
  call void @llvm.dbg.value(metadata i8* %1, metadata !3299, metadata !DIExpression()) #27, !dbg !3322
  call void @llvm.dbg.value(metadata i64 -1, metadata !3300, metadata !DIExpression()) #27, !dbg !3322
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3324
  ret i8* %3, !dbg !3325
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3326 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3330, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i32 0, metadata !3319, metadata !DIExpression()) #27, !dbg !3332
  call void @llvm.dbg.value(metadata i8* %0, metadata !3320, metadata !DIExpression()) #27, !dbg !3332
  call void @llvm.dbg.value(metadata i32 0, metadata !3298, metadata !DIExpression()) #27, !dbg !3334
  call void @llvm.dbg.value(metadata i8* %0, metadata !3299, metadata !DIExpression()) #27, !dbg !3334
  call void @llvm.dbg.value(metadata i64 -1, metadata !3300, metadata !DIExpression()) #27, !dbg !3334
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3336
  ret i8* %2, !dbg !3337
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3338 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3377, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8* %1, metadata !3378, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8* %2, metadata !3379, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8* %3, metadata !3380, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i8** %4, metadata !3381, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %5, metadata !3382, metadata !DIExpression()), !dbg !3383
  %7 = icmp eq i8* %1, null, !dbg !3384
  br i1 %7, label %10, label %8, !dbg !3386

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #27, !dbg !3387
  br label %12, !dbg !3387

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.94, i64 0, i64 0), i8* %2, i8* %3) #27, !dbg !3388
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.95, i64 0, i64 0), i32 5) #27, !dbg !3389
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #27, !dbg !3389
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.96, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3390
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.97, i64 0, i64 0), i32 5) #27, !dbg !3391
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.98, i64 0, i64 0)) #27, !dbg !3391
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.96, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3392
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
  ], !dbg !3393

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.99, i64 0, i64 0), i32 5) #27, !dbg !3394
  %21 = load i8*, i8** %4, align 8, !dbg !3394, !tbaa !645
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #27, !dbg !3394
  br label %147, !dbg !3396

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.100, i64 0, i64 0), i32 5) #27, !dbg !3397
  %25 = load i8*, i8** %4, align 8, !dbg !3397, !tbaa !645
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3397
  %27 = load i8*, i8** %26, align 8, !dbg !3397, !tbaa !645
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #27, !dbg !3397
  br label %147, !dbg !3398

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.101, i64 0, i64 0), i32 5) #27, !dbg !3399
  %31 = load i8*, i8** %4, align 8, !dbg !3399, !tbaa !645
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3399
  %33 = load i8*, i8** %32, align 8, !dbg !3399, !tbaa !645
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3399
  %35 = load i8*, i8** %34, align 8, !dbg !3399, !tbaa !645
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #27, !dbg !3399
  br label %147, !dbg !3400

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.102, i64 0, i64 0), i32 5) #27, !dbg !3401
  %39 = load i8*, i8** %4, align 8, !dbg !3401, !tbaa !645
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3401
  %41 = load i8*, i8** %40, align 8, !dbg !3401, !tbaa !645
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3401
  %43 = load i8*, i8** %42, align 8, !dbg !3401, !tbaa !645
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3401
  %45 = load i8*, i8** %44, align 8, !dbg !3401, !tbaa !645
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #27, !dbg !3401
  br label %147, !dbg !3402

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.103, i64 0, i64 0), i32 5) #27, !dbg !3403
  %49 = load i8*, i8** %4, align 8, !dbg !3403, !tbaa !645
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3403
  %51 = load i8*, i8** %50, align 8, !dbg !3403, !tbaa !645
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3403
  %53 = load i8*, i8** %52, align 8, !dbg !3403, !tbaa !645
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3403
  %55 = load i8*, i8** %54, align 8, !dbg !3403, !tbaa !645
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3403
  %57 = load i8*, i8** %56, align 8, !dbg !3403, !tbaa !645
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #27, !dbg !3403
  br label %147, !dbg !3404

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.104, i64 0, i64 0), i32 5) #27, !dbg !3405
  %61 = load i8*, i8** %4, align 8, !dbg !3405, !tbaa !645
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3405
  %63 = load i8*, i8** %62, align 8, !dbg !3405, !tbaa !645
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3405
  %65 = load i8*, i8** %64, align 8, !dbg !3405, !tbaa !645
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3405
  %67 = load i8*, i8** %66, align 8, !dbg !3405, !tbaa !645
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3405
  %69 = load i8*, i8** %68, align 8, !dbg !3405, !tbaa !645
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3405
  %71 = load i8*, i8** %70, align 8, !dbg !3405, !tbaa !645
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #27, !dbg !3405
  br label %147, !dbg !3406

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.105, i64 0, i64 0), i32 5) #27, !dbg !3407
  %75 = load i8*, i8** %4, align 8, !dbg !3407, !tbaa !645
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3407
  %77 = load i8*, i8** %76, align 8, !dbg !3407, !tbaa !645
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3407
  %79 = load i8*, i8** %78, align 8, !dbg !3407, !tbaa !645
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3407
  %81 = load i8*, i8** %80, align 8, !dbg !3407, !tbaa !645
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3407
  %83 = load i8*, i8** %82, align 8, !dbg !3407, !tbaa !645
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3407
  %85 = load i8*, i8** %84, align 8, !dbg !3407, !tbaa !645
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3407
  %87 = load i8*, i8** %86, align 8, !dbg !3407, !tbaa !645
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #27, !dbg !3407
  br label %147, !dbg !3408

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.106, i64 0, i64 0), i32 5) #27, !dbg !3409
  %91 = load i8*, i8** %4, align 8, !dbg !3409, !tbaa !645
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3409
  %93 = load i8*, i8** %92, align 8, !dbg !3409, !tbaa !645
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3409
  %95 = load i8*, i8** %94, align 8, !dbg !3409, !tbaa !645
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3409
  %97 = load i8*, i8** %96, align 8, !dbg !3409, !tbaa !645
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3409
  %99 = load i8*, i8** %98, align 8, !dbg !3409, !tbaa !645
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3409
  %101 = load i8*, i8** %100, align 8, !dbg !3409, !tbaa !645
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3409
  %103 = load i8*, i8** %102, align 8, !dbg !3409, !tbaa !645
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3409
  %105 = load i8*, i8** %104, align 8, !dbg !3409, !tbaa !645
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #27, !dbg !3409
  br label %147, !dbg !3410

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.107, i64 0, i64 0), i32 5) #27, !dbg !3411
  %109 = load i8*, i8** %4, align 8, !dbg !3411, !tbaa !645
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3411
  %111 = load i8*, i8** %110, align 8, !dbg !3411, !tbaa !645
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3411
  %113 = load i8*, i8** %112, align 8, !dbg !3411, !tbaa !645
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3411
  %115 = load i8*, i8** %114, align 8, !dbg !3411, !tbaa !645
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3411
  %117 = load i8*, i8** %116, align 8, !dbg !3411, !tbaa !645
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3411
  %119 = load i8*, i8** %118, align 8, !dbg !3411, !tbaa !645
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3411
  %121 = load i8*, i8** %120, align 8, !dbg !3411, !tbaa !645
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3411
  %123 = load i8*, i8** %122, align 8, !dbg !3411, !tbaa !645
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3411
  %125 = load i8*, i8** %124, align 8, !dbg !3411, !tbaa !645
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #27, !dbg !3411
  br label %147, !dbg !3412

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.108, i64 0, i64 0), i32 5) #27, !dbg !3413
  %129 = load i8*, i8** %4, align 8, !dbg !3413, !tbaa !645
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3413
  %131 = load i8*, i8** %130, align 8, !dbg !3413, !tbaa !645
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3413
  %133 = load i8*, i8** %132, align 8, !dbg !3413, !tbaa !645
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3413
  %135 = load i8*, i8** %134, align 8, !dbg !3413, !tbaa !645
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3413
  %137 = load i8*, i8** %136, align 8, !dbg !3413, !tbaa !645
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3413
  %139 = load i8*, i8** %138, align 8, !dbg !3413, !tbaa !645
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3413
  %141 = load i8*, i8** %140, align 8, !dbg !3413, !tbaa !645
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3413
  %143 = load i8*, i8** %142, align 8, !dbg !3413, !tbaa !645
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3413
  %145 = load i8*, i8** %144, align 8, !dbg !3413, !tbaa !645
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #27, !dbg !3413
  br label %147, !dbg !3414

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3415
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3416 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3420, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i8* %1, metadata !3421, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i8* %2, metadata !3422, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i8* %3, metadata !3423, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i8** %4, metadata !3424, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i64 0, metadata !3425, metadata !DIExpression()), !dbg !3426
  br label %6, !dbg !3427

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3429
  call void @llvm.dbg.value(metadata i64 %7, metadata !3425, metadata !DIExpression()), !dbg !3426
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3430
  %9 = load i8*, i8** %8, align 8, !dbg !3430, !tbaa !645
  %10 = icmp eq i8* %9, null, !dbg !3432
  %11 = add i64 %7, 1, !dbg !3433
  call void @llvm.dbg.value(metadata i64 %11, metadata !3425, metadata !DIExpression()), !dbg !3426
  br i1 %10, label %12, label %6, !dbg !3432, !llvm.loop !3434

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3436
  ret void, !dbg !3437
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3438 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3449, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i8* %1, metadata !3450, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i8* %2, metadata !3451, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i8* %3, metadata !3452, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3453, metadata !DIExpression()), !dbg !3457
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3458
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #27, !dbg !3458
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3455, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i64 0, metadata !3454, metadata !DIExpression()), !dbg !3457
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3454, metadata !DIExpression()), !dbg !3457
  %11 = load i32, i32* %8, align 8, !dbg !3460
  %12 = icmp ult i32 %11, 41, !dbg !3460
  br i1 %12, label %13, label %18, !dbg !3460

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3460
  %15 = zext i32 %11 to i64, !dbg !3460
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3460
  %17 = add nuw nsw i32 %11, 8, !dbg !3460
  store i32 %17, i32* %8, align 8, !dbg !3460
  br label %21, !dbg !3460

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3460
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3460
  store i8* %20, i8** %9, align 8, !dbg !3460
  br label %21, !dbg !3460

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3460
  %25 = load i8*, i8** %24, align 8, !dbg !3460
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3463
  store i8* %25, i8** %26, align 16, !dbg !3464, !tbaa !645
  %27 = icmp eq i8* %25, null, !dbg !3465
  br i1 %27, label %30, label %28, !dbg !3466

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3454, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 1, metadata !3454, metadata !DIExpression()), !dbg !3457
  %29 = icmp ult i32 %22, 41, !dbg !3460
  br i1 %29, label %35, label %32, !dbg !3460

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3467
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3468
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #27, !dbg !3469
  ret void, !dbg !3469

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3460
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3460
  store i8* %34, i8** %9, align 8, !dbg !3460
  br label %40, !dbg !3460

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3460
  %37 = zext i32 %22 to i64, !dbg !3460
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3460
  %39 = add nuw nsw i32 %22, 8, !dbg !3460
  store i32 %39, i32* %8, align 8, !dbg !3460
  br label %40, !dbg !3460

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3460
  %44 = load i8*, i8** %43, align 8, !dbg !3460
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3463
  store i8* %44, i8** %45, align 8, !dbg !3464, !tbaa !645
  %46 = icmp eq i8* %44, null, !dbg !3465
  br i1 %46, label %30, label %47, !dbg !3466

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3454, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 2, metadata !3454, metadata !DIExpression()), !dbg !3457
  %48 = icmp ult i32 %41, 41, !dbg !3460
  br i1 %48, label %52, label %49, !dbg !3460

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3460
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3460
  store i8* %51, i8** %9, align 8, !dbg !3460
  br label %57, !dbg !3460

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3460
  %54 = zext i32 %41 to i64, !dbg !3460
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3460
  %56 = add nuw nsw i32 %41, 8, !dbg !3460
  store i32 %56, i32* %8, align 8, !dbg !3460
  br label %57, !dbg !3460

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3460
  %61 = load i8*, i8** %60, align 8, !dbg !3460
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3463
  store i8* %61, i8** %62, align 16, !dbg !3464, !tbaa !645
  %63 = icmp eq i8* %61, null, !dbg !3465
  br i1 %63, label %30, label %64, !dbg !3466

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3454, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 3, metadata !3454, metadata !DIExpression()), !dbg !3457
  %65 = icmp ult i32 %58, 41, !dbg !3460
  br i1 %65, label %69, label %66, !dbg !3460

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3460
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3460
  store i8* %68, i8** %9, align 8, !dbg !3460
  br label %74, !dbg !3460

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3460
  %71 = zext i32 %58 to i64, !dbg !3460
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3460
  %73 = add nuw nsw i32 %58, 8, !dbg !3460
  store i32 %73, i32* %8, align 8, !dbg !3460
  br label %74, !dbg !3460

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3460
  %78 = load i8*, i8** %77, align 8, !dbg !3460
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3463
  store i8* %78, i8** %79, align 8, !dbg !3464, !tbaa !645
  %80 = icmp eq i8* %78, null, !dbg !3465
  br i1 %80, label %30, label %81, !dbg !3466

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3454, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 4, metadata !3454, metadata !DIExpression()), !dbg !3457
  %82 = icmp ult i32 %75, 41, !dbg !3460
  br i1 %82, label %86, label %83, !dbg !3460

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3460
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3460
  store i8* %85, i8** %9, align 8, !dbg !3460
  br label %91, !dbg !3460

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3460
  %88 = zext i32 %75 to i64, !dbg !3460
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3460
  %90 = add nuw nsw i32 %75, 8, !dbg !3460
  store i32 %90, i32* %8, align 8, !dbg !3460
  br label %91, !dbg !3460

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3460
  %95 = load i8*, i8** %94, align 8, !dbg !3460
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3463
  store i8* %95, i8** %96, align 16, !dbg !3464, !tbaa !645
  %97 = icmp eq i8* %95, null, !dbg !3465
  br i1 %97, label %30, label %98, !dbg !3466

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3454, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 5, metadata !3454, metadata !DIExpression()), !dbg !3457
  %99 = icmp ult i32 %92, 41, !dbg !3460
  br i1 %99, label %103, label %100, !dbg !3460

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3460
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3460
  store i8* %102, i8** %9, align 8, !dbg !3460
  br label %108, !dbg !3460

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3460
  %105 = zext i32 %92 to i64, !dbg !3460
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3460
  %107 = add nuw nsw i32 %92, 8, !dbg !3460
  store i32 %107, i32* %8, align 8, !dbg !3460
  br label %108, !dbg !3460

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3460
  %111 = load i8*, i8** %110, align 8, !dbg !3460
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3463
  store i8* %111, i8** %112, align 8, !dbg !3464, !tbaa !645
  %113 = icmp eq i8* %111, null, !dbg !3465
  br i1 %113, label %30, label %114, !dbg !3466

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3454, metadata !DIExpression()), !dbg !3457
  %115 = load i8*, i8** %9, align 8, !dbg !3460
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3460
  store i8* %116, i8** %9, align 8, !dbg !3460
  %117 = bitcast i8* %115 to i8**, !dbg !3460
  %118 = load i8*, i8** %117, align 8, !dbg !3460
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3463
  store i8* %118, i8** %119, align 16, !dbg !3464, !tbaa !645
  %120 = icmp eq i8* %118, null, !dbg !3465
  br i1 %120, label %30, label %121, !dbg !3466

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3454, metadata !DIExpression()), !dbg !3457
  %122 = load i8*, i8** %9, align 8, !dbg !3460
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3460
  store i8* %123, i8** %9, align 8, !dbg !3460
  %124 = bitcast i8* %122 to i8**, !dbg !3460
  %125 = load i8*, i8** %124, align 8, !dbg !3460
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3463
  store i8* %125, i8** %126, align 8, !dbg !3464, !tbaa !645
  %127 = icmp eq i8* %125, null, !dbg !3465
  br i1 %127, label %30, label %128, !dbg !3466

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3454, metadata !DIExpression()), !dbg !3457
  %129 = load i8*, i8** %9, align 8, !dbg !3460
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3460
  store i8* %130, i8** %9, align 8, !dbg !3460
  %131 = bitcast i8* %129 to i8**, !dbg !3460
  %132 = load i8*, i8** %131, align 8, !dbg !3460
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3463
  store i8* %132, i8** %133, align 16, !dbg !3464, !tbaa !645
  %134 = icmp eq i8* %132, null, !dbg !3465
  br i1 %134, label %30, label %135, !dbg !3466

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3454, metadata !DIExpression()), !dbg !3457
  %136 = load i8*, i8** %9, align 8, !dbg !3460
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3460
  store i8* %137, i8** %9, align 8, !dbg !3460
  %138 = bitcast i8* %136 to i8**, !dbg !3460
  %139 = load i8*, i8** %138, align 8, !dbg !3460
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3463
  store i8* %139, i8** %140, align 8, !dbg !3464, !tbaa !645
  %141 = icmp eq i8* %139, null, !dbg !3465
  %142 = select i1 %141, i64 9, i64 10, !dbg !3466
  br label %30, !dbg !3466
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3470 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3474, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i8* %1, metadata !3475, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i8* %2, metadata !3476, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i8* %3, metadata !3477, metadata !DIExpression()), !dbg !3484
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3485
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #27, !dbg !3485
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3478, metadata !DIExpression()), !dbg !3486
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3487
  call void @llvm.va_start(i8* nonnull %6), !dbg !3487
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3488
  call void @llvm.va_end(i8* nonnull %6), !dbg !3489
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #27, !dbg !3490
  ret void, !dbg !3490
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #24

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3491 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3492, !tbaa !645
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.96, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3492
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.111, i64 0, i64 0), i32 5) #27, !dbg !3493
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.112, i64 0, i64 0)) #27, !dbg !3493
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.113, i64 0, i64 0), i32 5) #27, !dbg !3494
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.114, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.115, i64 0, i64 0)) #27, !dbg !3494
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.116, i64 0, i64 0), i32 5) #27, !dbg !3495
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.117, i64 0, i64 0)) #27, !dbg !3495
  ret void, !dbg !3496
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #25 !dbg !3497 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3501, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i64 %1, metadata !3502, metadata !DIExpression()), !dbg !3503
  %3 = udiv i64 9223372036854775807, %1, !dbg !3504
  %4 = icmp ult i64 %3, %0, !dbg !3504
  br i1 %4, label %5, label %6, !dbg !3506

5:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !3507
  unreachable, !dbg !3507

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3508
  call void @llvm.dbg.value(metadata i64 %7, metadata !3509, metadata !DIExpression()) #27, !dbg !3515
  %8 = tail call noalias i8* @malloc(i64 %7) #27, !dbg !3517
  call void @llvm.dbg.value(metadata i8* %8, metadata !3514, metadata !DIExpression()) #27, !dbg !3515
  %9 = icmp eq i8* %8, null, !dbg !3518
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3520
  br i1 %11, label %12, label %13, !dbg !3520

12:                                               ; preds = %6
  tail call void @xalloc_die() #29, !dbg !3521
  unreachable, !dbg !3521

13:                                               ; preds = %6
  ret i8* %8, !dbg !3522
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3510 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3509, metadata !DIExpression()), !dbg !3523
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !3524
  call void @llvm.dbg.value(metadata i8* %2, metadata !3514, metadata !DIExpression()), !dbg !3523
  %3 = icmp eq i8* %2, null, !dbg !3525
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3526
  br i1 %5, label %6, label %7, !dbg !3526

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3527
  unreachable, !dbg !3527

7:                                                ; preds = %1
  ret i8* %2, !dbg !3528
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #25 !dbg !3529 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3533, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i64 %1, metadata !3534, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i64 %2, metadata !3535, metadata !DIExpression()), !dbg !3536
  %4 = udiv i64 9223372036854775807, %2, !dbg !3537
  %5 = icmp ult i64 %4, %1, !dbg !3537
  br i1 %5, label %6, label %7, !dbg !3539

6:                                                ; preds = %3
  tail call void @xalloc_die() #29, !dbg !3540
  unreachable, !dbg !3540

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3541
  call void @llvm.dbg.value(metadata i8* %0, metadata !3542, metadata !DIExpression()) #27, !dbg !3548
  call void @llvm.dbg.value(metadata i64 %8, metadata !3547, metadata !DIExpression()) #27, !dbg !3548
  %9 = icmp eq i64 %8, 0, !dbg !3550
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3552
  br i1 %11, label %12, label %13, !dbg !3552

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #27, !dbg !3553
  br label %19, !dbg !3555

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #27, !dbg !3556
  call void @llvm.dbg.value(metadata i8* %14, metadata !3542, metadata !DIExpression()) #27, !dbg !3548
  %15 = icmp eq i8* %14, null, !dbg !3557
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3559
  br i1 %17, label %18, label %19, !dbg !3559

18:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3560
  unreachable, !dbg !3560

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3548
  ret i8* %20, !dbg !3561
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3543 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3542, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i64 %1, metadata !3547, metadata !DIExpression()), !dbg !3562
  %3 = icmp eq i64 %1, 0, !dbg !3563
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3564
  br i1 %5, label %6, label %7, !dbg !3564

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #27, !dbg !3565
  br label %13, !dbg !3566

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #27, !dbg !3567
  call void @llvm.dbg.value(metadata i8* %8, metadata !3542, metadata !DIExpression()), !dbg !3562
  %9 = icmp eq i8* %8, null, !dbg !3568
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3569
  br i1 %11, label %12, label %13, !dbg !3569

12:                                               ; preds = %7
  tail call void @xalloc_die() #29, !dbg !3570
  unreachable, !dbg !3570

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3562
  ret i8* %14, !dbg !3571
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #25 !dbg !193 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !198, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i64* %1, metadata !199, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i64 %2, metadata !200, metadata !DIExpression()), !dbg !3572
  %4 = load i64, i64* %1, align 8, !dbg !3573, !tbaa !905
  call void @llvm.dbg.value(metadata i64 %4, metadata !201, metadata !DIExpression()), !dbg !3572
  %5 = icmp eq i8* %0, null, !dbg !3574
  br i1 %5, label %6, label %20, !dbg !3576

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3577
  br i1 %7, label %8, label %13, !dbg !3580

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %9, metadata !201, metadata !DIExpression()), !dbg !3572
  %10 = icmp ugt i64 %2, 128, !dbg !3583
  %11 = zext i1 %10 to i64, !dbg !3583
  %12 = add nuw nsw i64 %9, %11, !dbg !3584
  call void @llvm.dbg.value(metadata i64 %12, metadata !201, metadata !DIExpression()), !dbg !3572
  br label %13, !dbg !3585

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3572
  call void @llvm.dbg.value(metadata i64 %14, metadata !201, metadata !DIExpression()), !dbg !3572
  %15 = udiv i64 9223372036854775807, %2, !dbg !3586
  %16 = icmp ult i64 %15, %14, !dbg !3586
  br i1 %16, label %19, label %17, !dbg !3588

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !201, metadata !DIExpression()), !dbg !3572
  store i64 %14, i64* %1, align 8, !dbg !3589, !tbaa !905
  %18 = mul i64 %14, %2, !dbg !3590
  call void @llvm.dbg.value(metadata i8* %0, metadata !3542, metadata !DIExpression()) #27, !dbg !3591
  call void @llvm.dbg.value(metadata i64 %28, metadata !3547, metadata !DIExpression()) #27, !dbg !3591
  br label %31, !dbg !3593

19:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3594
  unreachable, !dbg !3594

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3595
  %22 = icmp ugt i64 %21, %4, !dbg !3598
  br i1 %22, label %24, label %23, !dbg !3599

23:                                               ; preds = %20
  tail call void @xalloc_die() #29, !dbg !3600
  unreachable, !dbg !3600

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3601
  %26 = add nuw i64 %4, 1, !dbg !3602
  %27 = add i64 %26, %25, !dbg !3603
  call void @llvm.dbg.value(metadata i64 %27, metadata !201, metadata !DIExpression()), !dbg !3572
  store i64 %27, i64* %1, align 8, !dbg !3589, !tbaa !905
  %28 = mul i64 %27, %2, !dbg !3590
  call void @llvm.dbg.value(metadata i8* %0, metadata !3542, metadata !DIExpression()) #27, !dbg !3591
  call void @llvm.dbg.value(metadata i64 %28, metadata !3547, metadata !DIExpression()) #27, !dbg !3591
  %29 = icmp eq i64 %28, 0, !dbg !3604
  br i1 %29, label %30, label %31, !dbg !3593

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #27, !dbg !3605
  br label %38, !dbg !3606

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #27, !dbg !3607
  call void @llvm.dbg.value(metadata i8* %33, metadata !3542, metadata !DIExpression()) #27, !dbg !3591
  %34 = icmp eq i8* %33, null, !dbg !3608
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3609
  br i1 %36, label %37, label %38, !dbg !3609

37:                                               ; preds = %31
  tail call void @xalloc_die() #29, !dbg !3610
  unreachable, !dbg !3610

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3591
  ret i8* %39, !dbg !3611
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #25 !dbg !3612 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3614, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i64 %0, metadata !3509, metadata !DIExpression()) #27, !dbg !3616
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !3618
  call void @llvm.dbg.value(metadata i8* %2, metadata !3514, metadata !DIExpression()) #27, !dbg !3616
  %3 = icmp eq i8* %2, null, !dbg !3619
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3620
  br i1 %5, label %6, label %7, !dbg !3620

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3621
  unreachable, !dbg !3621

7:                                                ; preds = %1
  ret i8* %2, !dbg !3622
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3623 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3627, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i64* %1, metadata !3628, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i8* %0, metadata !198, metadata !DIExpression()) #27, !dbg !3630
  call void @llvm.dbg.value(metadata i64* %1, metadata !199, metadata !DIExpression()) #27, !dbg !3630
  call void @llvm.dbg.value(metadata i64 1, metadata !200, metadata !DIExpression()) #27, !dbg !3630
  %3 = load i64, i64* %1, align 8, !dbg !3632, !tbaa !905
  call void @llvm.dbg.value(metadata i64 %3, metadata !201, metadata !DIExpression()) #27, !dbg !3630
  %4 = icmp eq i8* %0, null, !dbg !3633
  br i1 %4, label %5, label %10, !dbg !3634

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3635
  br i1 %6, label %17, label %7, !dbg !3636

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !201, metadata !DIExpression()) #27, !dbg !3630
  %8 = icmp slt i64 %3, 0, !dbg !3637
  br i1 %8, label %9, label %17, !dbg !3638

9:                                                ; preds = %7
  tail call void @xalloc_die() #29, !dbg !3639
  unreachable, !dbg !3639

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3640
  br i1 %11, label %13, label %12, !dbg !3641

12:                                               ; preds = %10
  tail call void @xalloc_die() #29, !dbg !3642
  unreachable, !dbg !3642

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3643
  %15 = add nuw nsw i64 %3, 1, !dbg !3644
  %16 = add nuw nsw i64 %15, %14, !dbg !3645
  call void @llvm.dbg.value(metadata i64 %16, metadata !201, metadata !DIExpression()) #27, !dbg !3630
  call void @llvm.dbg.value(metadata i8* %0, metadata !3542, metadata !DIExpression()) #27, !dbg !3646
  call void @llvm.dbg.value(metadata i64 %16, metadata !3547, metadata !DIExpression()) #27, !dbg !3646
  br label %17, !dbg !3648

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3649
  store i64 %18, i64* %1, align 8, !dbg !3649, !tbaa !905
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #27, !dbg !3650
  call void @llvm.dbg.value(metadata i8* %19, metadata !3542, metadata !DIExpression()) #27, !dbg !3646
  %20 = icmp eq i8* %19, null, !dbg !3651
  br i1 %20, label %21, label %22, !dbg !3652

21:                                               ; preds = %17
  tail call void @xalloc_die() #29, !dbg !3653
  unreachable, !dbg !3653

22:                                               ; preds = %17
  ret i8* %19, !dbg !3654
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3655 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3657, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata i64 %0, metadata !3659, metadata !DIExpression()) #27, !dbg !3664
  call void @llvm.dbg.value(metadata i64 1, metadata !3662, metadata !DIExpression()) #27, !dbg !3664
  %2 = icmp slt i64 %0, 0, !dbg !3666
  br i1 %2, label %6, label %3, !dbg !3668

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #27, !dbg !3669
  call void @llvm.dbg.value(metadata i8* %4, metadata !3663, metadata !DIExpression()) #27, !dbg !3664
  %5 = icmp eq i8* %4, null, !dbg !3670
  br i1 %5, label %6, label %7, !dbg !3671

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #29, !dbg !3672
  unreachable, !dbg !3672

7:                                                ; preds = %3
  ret i8* %4, !dbg !3673
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3660 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3659, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %1, metadata !3662, metadata !DIExpression()), !dbg !3674
  %3 = udiv i64 9223372036854775807, %1, !dbg !3675
  %4 = icmp ult i64 %3, %0, !dbg !3675
  br i1 %4, label %8, label %5, !dbg !3676

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #27, !dbg !3677
  call void @llvm.dbg.value(metadata i8* %6, metadata !3663, metadata !DIExpression()), !dbg !3674
  %7 = icmp eq i8* %6, null, !dbg !3678
  br i1 %7, label %8, label %9, !dbg !3679

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #29, !dbg !3680
  unreachable, !dbg !3680

9:                                                ; preds = %5
  ret i8* %6, !dbg !3681
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3682 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3686, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i64 %1, metadata !3687, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i64 %1, metadata !3509, metadata !DIExpression()) #27, !dbg !3689
  %3 = tail call noalias i8* @malloc(i64 %1) #27, !dbg !3691
  call void @llvm.dbg.value(metadata i8* %3, metadata !3514, metadata !DIExpression()) #27, !dbg !3689
  %4 = icmp eq i8* %3, null, !dbg !3692
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3693
  br i1 %6, label %7, label %8, !dbg !3693

7:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !3694
  unreachable, !dbg !3694

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3695, metadata !DIExpression()) #27, !dbg !3704
  call void @llvm.dbg.value(metadata i8* %0, metadata !3702, metadata !DIExpression()) #27, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %1, metadata !3703, metadata !DIExpression()) #27, !dbg !3704
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #27, !dbg !3706
  ret i8* %3, !dbg !3707
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3708 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3710, metadata !DIExpression()), !dbg !3711
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #28, !dbg !3712
  %3 = add i64 %2, 1, !dbg !3713
  call void @llvm.dbg.value(metadata i8* %0, metadata !3686, metadata !DIExpression()) #27, !dbg !3714
  call void @llvm.dbg.value(metadata i64 %3, metadata !3687, metadata !DIExpression()) #27, !dbg !3714
  call void @llvm.dbg.value(metadata i64 %3, metadata !3509, metadata !DIExpression()) #27, !dbg !3716
  %4 = tail call noalias i8* @malloc(i64 %3) #27, !dbg !3718
  call void @llvm.dbg.value(metadata i8* %4, metadata !3514, metadata !DIExpression()) #27, !dbg !3716
  %5 = icmp eq i8* %4, null, !dbg !3719
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3720
  br i1 %7, label %8, label %9, !dbg !3720

8:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3721
  unreachable, !dbg !3721

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3695, metadata !DIExpression()) #27, !dbg !3722
  call void @llvm.dbg.value(metadata i8* %0, metadata !3702, metadata !DIExpression()) #27, !dbg !3722
  call void @llvm.dbg.value(metadata i64 %3, metadata !3703, metadata !DIExpression()) #27, !dbg !3722
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #27, !dbg !3724
  ret i8* %4, !dbg !3725
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3726 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3727, !tbaa !821
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.128, i64 0, i64 0), i32 5) #27, !dbg !3728
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i64 0, i64 0), i8* %2) #27, !dbg !3729
  tail call void @abort() #29, !dbg !3730
  unreachable, !dbg !3730
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoumax(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i8* %5, i32 %6) local_unnamed_addr #8 !dbg !3731 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3736, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i32 %1, metadata !3737, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i64 %2, metadata !3738, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i64 %3, metadata !3739, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i8* %4, metadata !3740, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i8* %5, metadata !3741, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i32 %6, metadata !3742, metadata !DIExpression()), !dbg !3746
  %9 = bitcast i64* %8 to i8*, !dbg !3747
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #27, !dbg !3747
  call void @llvm.dbg.value(metadata i64* %8, metadata !3745, metadata !DIExpression(DW_OP_deref)), !dbg !3746
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #27, !dbg !3748
  call void @llvm.dbg.value(metadata i32 %10, metadata !3743, metadata !DIExpression()), !dbg !3746
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %23
    i32 3, label %25
  ], !dbg !3749

11:                                               ; preds = %7
  %12 = tail call i32* @__errno_location() #31, !dbg !3750
  br label %27, !dbg !3749

13:                                               ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !3753, !tbaa !905
  call void @llvm.dbg.value(metadata i64 %14, metadata !3745, metadata !DIExpression()), !dbg !3746
  %15 = icmp ult i64 %14, %2, !dbg !3757
  %16 = icmp ugt i64 %14, %3
  %17 = or i1 %15, %16, !dbg !3758
  br i1 %17, label %18, label %36, !dbg !3758

18:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !3743, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i64 %14, metadata !3745, metadata !DIExpression()), !dbg !3746
  %19 = icmp ugt i64 %14, 1073741823, !dbg !3759
  %20 = tail call i32* @__errno_location() #31, !dbg !3762
  br i1 %19, label %21, label %22, !dbg !3763

21:                                               ; preds = %18
  store i32 75, i32* %20, align 4, !dbg !3764, !tbaa !821
  call void @llvm.dbg.value(metadata i32 undef, metadata !3743, metadata !DIExpression()), !dbg !3746
  br label %27, !dbg !3765

22:                                               ; preds = %18
  store i32 34, i32* %20, align 4, !dbg !3766, !tbaa !821
  call void @llvm.dbg.value(metadata i32 undef, metadata !3743, metadata !DIExpression()), !dbg !3746
  br label %27, !dbg !3765

23:                                               ; preds = %7
  %24 = tail call i32* @__errno_location() #31, !dbg !3767
  store i32 75, i32* %24, align 4, !dbg !3769, !tbaa !821
  call void @llvm.dbg.value(metadata i32 undef, metadata !3743, metadata !DIExpression()), !dbg !3746
  br label %27, !dbg !3765

25:                                               ; preds = %7
  %26 = tail call i32* @__errno_location() #31, !dbg !3770
  store i32 0, i32* %26, align 4, !dbg !3772, !tbaa !821
  call void @llvm.dbg.value(metadata i32 undef, metadata !3743, metadata !DIExpression()), !dbg !3746
  br label %27, !dbg !3765

27:                                               ; preds = %11, %21, %22, %25, %23
  %28 = phi i32* [ %12, %11 ], [ %20, %21 ], [ %20, %22 ], [ %26, %25 ], [ %24, %23 ], !dbg !3750
  %29 = icmp eq i32 %6, 0, !dbg !3773
  %30 = select i1 %29, i32 1, i32 %6, !dbg !3773
  %31 = load i32, i32* %28, align 4, !dbg !3750, !tbaa !821
  %32 = icmp eq i32 %31, 22, !dbg !3774
  %33 = select i1 %32, i32 0, i32 %31, !dbg !3750
  %34 = call i8* @quote(i8* %0) #27, !dbg !3775
  call void (i32, i32, i8*, ...) @error(i32 %30, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i64 0, i64 0), i8* %5, i8* %34) #27, !dbg !3776
  %35 = load i64, i64* %8, align 8, !dbg !3777, !tbaa !905
  br label %36, !dbg !3778

36:                                               ; preds = %13, %27
  %37 = phi i64 [ %14, %13 ], [ %35, %27 ], !dbg !3777
  call void @llvm.dbg.value(metadata i64 %37, metadata !3745, metadata !DIExpression()), !dbg !3746
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #27, !dbg !3779
  ret i64 %37, !dbg !3780
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoumax(i8* %0, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5) local_unnamed_addr #8 !dbg !3781 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3785, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata i64 %1, metadata !3786, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata i64 %2, metadata !3787, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata i8* %3, metadata !3788, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata i8* %4, metadata !3789, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata i32 %5, metadata !3790, metadata !DIExpression()), !dbg !3791
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !3792
  ret i64 %7, !dbg !3793
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !3794 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3800, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i8** %1, metadata !3801, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i32 %2, metadata !3802, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i64* %3, metadata !3803, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i8* %4, metadata !3804, metadata !DIExpression()), !dbg !3818
  %7 = bitcast i8** %6 to i8*, !dbg !3819
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #27, !dbg !3819
  call void @llvm.dbg.value(metadata i32 0, metadata !3808, metadata !DIExpression()), !dbg !3818
  %8 = icmp ult i32 %2, 37, !dbg !3820
  br i1 %8, label %10, label %9, !dbg !3820

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.135, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.136, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #29, !dbg !3820
  unreachable, !dbg !3820

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3823
  call void @llvm.dbg.value(metadata i8** %25, metadata !3806, metadata !DIExpression()), !dbg !3818
  %12 = tail call i32* @__errno_location() #31, !dbg !3824
  store i32 0, i32* %12, align 4, !dbg !3825, !tbaa !821
  call void @llvm.dbg.value(metadata i8* %0, metadata !3809, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i8 undef, metadata !3812, metadata !DIExpression()), !dbg !3826
  %13 = tail call i16** @__ctype_b_loc() #31, !dbg !3818
  %14 = load i16*, i16** %13, align 8, !tbaa !645
  br label %15, !dbg !3827

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !3826
  %17 = load i8, i8* %16, align 1, !dbg !3826, !tbaa !914
  call void @llvm.dbg.value(metadata i8 %17, metadata !3812, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i8* %16, metadata !3809, metadata !DIExpression()), !dbg !3826
  %18 = zext i8 %17 to i64, !dbg !3828
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3828
  %20 = load i16, i16* %19, align 2, !dbg !3828, !tbaa !2271
  %21 = and i16 %20, 8192, !dbg !3828
  %22 = icmp eq i16 %21, 0, !dbg !3827
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3829
  call void @llvm.dbg.value(metadata i8* %23, metadata !3809, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i8 undef, metadata !3812, metadata !DIExpression()), !dbg !3826
  br i1 %22, label %24, label %15, !dbg !3827, !llvm.loop !3830

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3823
  %26 = icmp eq i8 %17, 45, !dbg !3832
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  %28 = call i64 @strtoumax(i8* %0, i8** %25, i32 %2) #27, !dbg !3834
  call void @llvm.dbg.value(metadata i64 %28, metadata !3807, metadata !DIExpression()), !dbg !3818
  %29 = load i8*, i8** %25, align 8, !dbg !3835, !tbaa !645
  %30 = icmp eq i8* %29, %0, !dbg !3837
  br i1 %30, label %31, label %40, !dbg !3838

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3839
  br i1 %32, label %285, label %33, !dbg !3842

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3843, !tbaa !914
  %35 = icmp eq i8 %34, 0, !dbg !3843
  br i1 %35, label %285, label %36, !dbg !3844

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3843
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #28, !dbg !3845
  %39 = icmp eq i8* %38, null, !dbg !3845
  br i1 %39, label %285, label %47, !dbg !3846

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3847, !tbaa !821
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3849

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !3808, metadata !DIExpression()), !dbg !3818
  br label %43, !dbg !3850

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !3818
  call void @llvm.dbg.value(metadata i32 %44, metadata !3808, metadata !DIExpression()), !dbg !3818
  %45 = icmp eq i8* %4, null, !dbg !3852
  br i1 %45, label %46, label %47, !dbg !3854

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !3807, metadata !DIExpression()), !dbg !3818
  store i64 %28, i64* %3, align 8, !dbg !3855, !tbaa !905
  br label %285, !dbg !3857

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3858, !tbaa !914
  %51 = sext i8 %50 to i32, !dbg !3858
  %52 = icmp eq i8 %50, 0, !dbg !3859
  br i1 %52, label %282, label %53, !dbg !3860

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !3813, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i32 1, metadata !3816, metadata !DIExpression()), !dbg !3861
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #28, !dbg !3862
  %55 = icmp eq i8* %54, null, !dbg !3862
  br i1 %55, label %56, label %58, !dbg !3864

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !3807, metadata !DIExpression()), !dbg !3818
  store i64 %49, i64* %3, align 8, !dbg !3865, !tbaa !905
  %57 = or i32 %48, 2, !dbg !3867
  br label %285, !dbg !3868

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
  ], !dbg !3869

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #28, !dbg !3870
  %61 = icmp eq i8* %60, null, !dbg !3870
  br i1 %61, label %72, label %62, !dbg !3873

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3874
  %64 = load i8, i8* %63, align 1, !dbg !3874, !tbaa !914
  %65 = sext i8 %64 to i32, !dbg !3874
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3875

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3876
  %68 = load i8, i8* %67, align 1, !dbg !3876, !tbaa !914
  %69 = icmp eq i8 %68, 66, !dbg !3879
  %70 = select i1 %69, i64 3, i64 1, !dbg !3880
  br label %72, !dbg !3880

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !3813, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i32 2, metadata !3816, metadata !DIExpression()), !dbg !3861
  br label %72, !dbg !3881

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3816, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i32 undef, metadata !3813, metadata !DIExpression()), !dbg !3861
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
  ], !dbg !3882

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3883, metadata !DIExpression()) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i32 7, metadata !3890, metadata !DIExpression()) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i32 6, metadata !3890, metadata !DIExpression()) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3900
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3900
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3902
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !3902
  %78 = mul i64 %49, %73, !dbg !3904
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !3904
  call void @llvm.dbg.value(metadata i1 %77, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i32 6, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i1 %77, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i32 6, metadata !3890, metadata !DIExpression()) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i32 5, metadata !3890, metadata !DIExpression()) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3900
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3900
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #27, !dbg !3902
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !3902
  %82 = mul i64 %79, %73, !dbg !3904
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3904
  %84 = or i1 %77, %81, !dbg !3905
  call void @llvm.dbg.value(metadata i1 %84, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i32 5, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i1 %84, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i32 5, metadata !3890, metadata !DIExpression()) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i32 4, metadata !3890, metadata !DIExpression()) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3900
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3900
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #27, !dbg !3902
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !3902
  %87 = mul i64 %83, %73, !dbg !3904
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !3904
  %89 = or i1 %84, %86, !dbg !3905
  call void @llvm.dbg.value(metadata i1 %89, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i32 4, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i1 %89, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i32 4, metadata !3890, metadata !DIExpression()) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i32 3, metadata !3890, metadata !DIExpression()) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3900
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3900
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #27, !dbg !3902
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !3902
  %92 = mul i64 %88, %73, !dbg !3904
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !3904
  %94 = or i1 %89, %91, !dbg !3905
  call void @llvm.dbg.value(metadata i1 %94, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i32 3, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i1 %94, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i32 3, metadata !3890, metadata !DIExpression()) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i32 2, metadata !3890, metadata !DIExpression()) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3900
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3900
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #27, !dbg !3902
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !3902
  %97 = mul i64 %93, %73, !dbg !3904
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !3904
  %99 = or i1 %94, %96, !dbg !3905
  call void @llvm.dbg.value(metadata i1 %99, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i32 2, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i1 %99, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i32 2, metadata !3890, metadata !DIExpression()) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i32 1, metadata !3890, metadata !DIExpression()) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3900
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3900
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #27, !dbg !3902
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !3902
  %102 = mul i64 %98, %73, !dbg !3904
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !3904
  %104 = or i1 %99, %101, !dbg !3905
  call void @llvm.dbg.value(metadata i1 %104, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i32 1, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i1 %104, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i32 1, metadata !3890, metadata !DIExpression()) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i32 0, metadata !3890, metadata !DIExpression()) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3900
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3900
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #27, !dbg !3902
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !3902
  %107 = mul i64 %103, %73, !dbg !3904
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3904
  %109 = or i1 %104, %106, !dbg !3905
  call void @llvm.dbg.value(metadata i1 %109, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3891
  call void @llvm.dbg.value(metadata i32 0, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3891
  br label %272, !dbg !3906

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3883, metadata !DIExpression()) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 8, metadata !3890, metadata !DIExpression()) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 7, metadata !3890, metadata !DIExpression()) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3909
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3909
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3911
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !3911
  %113 = mul i64 %49, %73, !dbg !3912
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !3912
  call void @llvm.dbg.value(metadata i1 %112, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 7, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i1 %112, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 7, metadata !3890, metadata !DIExpression()) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 6, metadata !3890, metadata !DIExpression()) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3909
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3909
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #27, !dbg !3911
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !3911
  %117 = mul i64 %114, %73, !dbg !3912
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3912
  %119 = or i1 %112, %116, !dbg !3913
  call void @llvm.dbg.value(metadata i1 %119, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 6, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i1 %119, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 6, metadata !3890, metadata !DIExpression()) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 5, metadata !3890, metadata !DIExpression()) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3909
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3909
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #27, !dbg !3911
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !3911
  %122 = mul i64 %118, %73, !dbg !3912
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !3912
  %124 = or i1 %119, %121, !dbg !3913
  call void @llvm.dbg.value(metadata i1 %124, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 5, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i1 %124, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 5, metadata !3890, metadata !DIExpression()) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 4, metadata !3890, metadata !DIExpression()) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3909
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3909
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #27, !dbg !3911
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !3911
  %127 = mul i64 %123, %73, !dbg !3912
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !3912
  %129 = or i1 %124, %126, !dbg !3913
  call void @llvm.dbg.value(metadata i1 %129, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 4, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i1 %129, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 4, metadata !3890, metadata !DIExpression()) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 3, metadata !3890, metadata !DIExpression()) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3909
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3909
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #27, !dbg !3911
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !3911
  %132 = mul i64 %128, %73, !dbg !3912
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !3912
  %134 = or i1 %129, %131, !dbg !3913
  call void @llvm.dbg.value(metadata i1 %134, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 3, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i1 %134, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 3, metadata !3890, metadata !DIExpression()) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 2, metadata !3890, metadata !DIExpression()) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3909
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3909
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #27, !dbg !3911
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !3911
  %137 = mul i64 %133, %73, !dbg !3912
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3912
  %139 = or i1 %134, %136, !dbg !3913
  call void @llvm.dbg.value(metadata i1 %139, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 2, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i1 %139, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 2, metadata !3890, metadata !DIExpression()) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 1, metadata !3890, metadata !DIExpression()) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3909
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3909
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #27, !dbg !3911
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !3911
  %142 = mul i64 %138, %73, !dbg !3912
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !3912
  %144 = or i1 %139, %141, !dbg !3913
  call void @llvm.dbg.value(metadata i1 %144, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 1, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i1 %144, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 1, metadata !3890, metadata !DIExpression()) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 0, metadata !3890, metadata !DIExpression()) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3909
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3909
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #27, !dbg !3911
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !3911
  %147 = mul i64 %143, %73, !dbg !3912
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3912
  %149 = or i1 %144, %146, !dbg !3913
  call void @llvm.dbg.value(metadata i1 %149, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3907
  call void @llvm.dbg.value(metadata i32 0, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3907
  br label %272, !dbg !3906

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3883, metadata !DIExpression()) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i32 5, metadata !3890, metadata !DIExpression()) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i32 4, metadata !3890, metadata !DIExpression()) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3916
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3916
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3918
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !3918
  %153 = mul i64 %49, %73, !dbg !3919
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !3919
  call void @llvm.dbg.value(metadata i1 %152, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i32 4, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i1 %152, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i32 4, metadata !3890, metadata !DIExpression()) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i32 3, metadata !3890, metadata !DIExpression()) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3916
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3916
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #27, !dbg !3918
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !3918
  %157 = mul i64 %154, %73, !dbg !3919
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !3919
  %159 = or i1 %152, %156, !dbg !3920
  call void @llvm.dbg.value(metadata i1 %159, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i32 3, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i1 %159, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i32 3, metadata !3890, metadata !DIExpression()) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i32 2, metadata !3890, metadata !DIExpression()) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3916
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3916
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #27, !dbg !3918
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !3918
  %162 = mul i64 %158, %73, !dbg !3919
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !3919
  %164 = or i1 %159, %161, !dbg !3920
  call void @llvm.dbg.value(metadata i1 %164, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i32 2, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i1 %164, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i32 2, metadata !3890, metadata !DIExpression()) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i32 1, metadata !3890, metadata !DIExpression()) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3916
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3916
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #27, !dbg !3918
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !3918
  %167 = mul i64 %163, %73, !dbg !3919
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !3919
  %169 = or i1 %164, %166, !dbg !3920
  call void @llvm.dbg.value(metadata i1 %169, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i32 1, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i1 %169, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i32 1, metadata !3890, metadata !DIExpression()) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i32 0, metadata !3890, metadata !DIExpression()) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3916
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3916
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #27, !dbg !3918
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !3918
  %172 = mul i64 %168, %73, !dbg !3919
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !3919
  %174 = or i1 %169, %171, !dbg !3920
  call void @llvm.dbg.value(metadata i1 %174, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3914
  call void @llvm.dbg.value(metadata i32 0, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3914
  br label %272, !dbg !3906

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3883, metadata !DIExpression()) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i32 6, metadata !3890, metadata !DIExpression()) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i32 5, metadata !3890, metadata !DIExpression()) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3923
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3923
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3925
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !3925
  %178 = mul i64 %49, %73, !dbg !3926
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !3926
  call void @llvm.dbg.value(metadata i1 %177, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i32 5, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i1 %177, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i32 5, metadata !3890, metadata !DIExpression()) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i32 4, metadata !3890, metadata !DIExpression()) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3923
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3923
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #27, !dbg !3925
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !3925
  %182 = mul i64 %179, %73, !dbg !3926
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !3926
  %184 = or i1 %177, %181, !dbg !3927
  call void @llvm.dbg.value(metadata i1 %184, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i32 4, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i1 %184, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i32 4, metadata !3890, metadata !DIExpression()) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i32 3, metadata !3890, metadata !DIExpression()) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3923
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3923
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #27, !dbg !3925
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !3925
  %187 = mul i64 %183, %73, !dbg !3926
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !3926
  %189 = or i1 %184, %186, !dbg !3927
  call void @llvm.dbg.value(metadata i1 %189, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i32 3, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i1 %189, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i32 3, metadata !3890, metadata !DIExpression()) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i32 2, metadata !3890, metadata !DIExpression()) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3923
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3923
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #27, !dbg !3925
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !3925
  %192 = mul i64 %188, %73, !dbg !3926
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !3926
  %194 = or i1 %189, %191, !dbg !3927
  call void @llvm.dbg.value(metadata i1 %194, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i32 2, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i1 %194, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i32 2, metadata !3890, metadata !DIExpression()) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i32 1, metadata !3890, metadata !DIExpression()) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3923
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3923
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #27, !dbg !3925
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !3925
  %197 = mul i64 %193, %73, !dbg !3926
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3926
  %199 = or i1 %194, %196, !dbg !3927
  call void @llvm.dbg.value(metadata i1 %199, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i32 1, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i1 %199, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i32 1, metadata !3890, metadata !DIExpression()) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i32 0, metadata !3890, metadata !DIExpression()) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3923
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3923
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #27, !dbg !3925
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !3925
  %202 = mul i64 %198, %73, !dbg !3926
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !3926
  %204 = or i1 %199, %201, !dbg !3927
  call void @llvm.dbg.value(metadata i1 %204, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3921
  call void @llvm.dbg.value(metadata i32 0, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3921
  br label %272, !dbg !3906

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3928
  call void @llvm.dbg.value(metadata i32 512, metadata !3899, metadata !DIExpression()) #27, !dbg !3928
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #27, !dbg !3930
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !3930
  %208 = shl i64 %49, 9, !dbg !3931
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !3931
  call void @llvm.dbg.value(metadata i1 %207, metadata !3817, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3861
  br label %272, !dbg !3932

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3933
  call void @llvm.dbg.value(metadata i32 1024, metadata !3899, metadata !DIExpression()) #27, !dbg !3933
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #27, !dbg !3935
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !3935
  %213 = shl i64 %49, 10, !dbg !3936
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3936
  call void @llvm.dbg.value(metadata i1 %212, metadata !3817, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3861
  br label %272, !dbg !3937

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3888, metadata !DIExpression()) #27, !dbg !3938
  call void @llvm.dbg.value(metadata i32 undef, metadata !3889, metadata !DIExpression()) #27, !dbg !3938
  call void @llvm.dbg.value(metadata i32 0, metadata !3883, metadata !DIExpression()) #27, !dbg !3938
  call void @llvm.dbg.value(metadata i32 3, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3938
  call void @llvm.dbg.value(metadata i32 0, metadata !3883, metadata !DIExpression()) #27, !dbg !3938
  call void @llvm.dbg.value(metadata i32 3, metadata !3890, metadata !DIExpression()) #27, !dbg !3938
  call void @llvm.dbg.value(metadata i32 2, metadata !3890, metadata !DIExpression()) #27, !dbg !3938
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3940
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3940
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3942
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !3942
  %218 = mul i64 %49, %73, !dbg !3943
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !3943
  call void @llvm.dbg.value(metadata i1 %217, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3938
  call void @llvm.dbg.value(metadata i32 2, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3938
  call void @llvm.dbg.value(metadata i1 %217, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3938
  call void @llvm.dbg.value(metadata i32 2, metadata !3890, metadata !DIExpression()) #27, !dbg !3938
  call void @llvm.dbg.value(metadata i32 1, metadata !3890, metadata !DIExpression()) #27, !dbg !3938
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3940
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3940
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #27, !dbg !3942
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !3942
  %222 = mul i64 %219, %73, !dbg !3943
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !3943
  %224 = or i1 %217, %221, !dbg !3944
  call void @llvm.dbg.value(metadata i1 %224, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3938
  call void @llvm.dbg.value(metadata i32 1, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3938
  call void @llvm.dbg.value(metadata i1 %224, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3938
  call void @llvm.dbg.value(metadata i32 1, metadata !3890, metadata !DIExpression()) #27, !dbg !3938
  call void @llvm.dbg.value(metadata i32 0, metadata !3890, metadata !DIExpression()) #27, !dbg !3938
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3940
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3940
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #27, !dbg !3942
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !3942
  %227 = mul i64 %223, %73, !dbg !3943
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3943
  %229 = or i1 %224, %226, !dbg !3944
  call void @llvm.dbg.value(metadata i1 %229, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3938
  call void @llvm.dbg.value(metadata i32 0, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3938
  br label %272, !dbg !3906

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3888, metadata !DIExpression()) #27, !dbg !3945
  call void @llvm.dbg.value(metadata i32 undef, metadata !3889, metadata !DIExpression()) #27, !dbg !3945
  call void @llvm.dbg.value(metadata i32 0, metadata !3883, metadata !DIExpression()) #27, !dbg !3945
  call void @llvm.dbg.value(metadata i32 1, metadata !3890, metadata !DIExpression()) #27, !dbg !3945
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3947
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3947
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3949
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !3949
  %233 = mul i64 %49, %73, !dbg !3950
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !3950
  call void @llvm.dbg.value(metadata i1 %232, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3945
  call void @llvm.dbg.value(metadata i32 0, metadata !3890, metadata !DIExpression()) #27, !dbg !3945
  %235 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %234) #27, !dbg !3949
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !3949
  %237 = mul i64 %234, %73, !dbg !3950
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !3950
  %239 = or i1 %232, %236, !dbg !3951
  call void @llvm.dbg.value(metadata i1 %239, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3945
  call void @llvm.dbg.value(metadata i32 0, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3945
  br label %272, !dbg !3906

240:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3888, metadata !DIExpression()) #27, !dbg !3952
  call void @llvm.dbg.value(metadata i32 undef, metadata !3889, metadata !DIExpression()) #27, !dbg !3952
  call void @llvm.dbg.value(metadata i32 0, metadata !3883, metadata !DIExpression()) #27, !dbg !3952
  call void @llvm.dbg.value(metadata i32 3, metadata !3890, metadata !DIExpression()) #27, !dbg !3952
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3954
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3954
  %241 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3956
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !3956
  %243 = mul i64 %49, %73, !dbg !3957
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !3957
  call void @llvm.dbg.value(metadata i1 %242, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3952
  call void @llvm.dbg.value(metadata i32 2, metadata !3890, metadata !DIExpression()) #27, !dbg !3952
  %245 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %244) #27, !dbg !3956
  %246 = extractvalue { i64, i1 } %245, 1, !dbg !3956
  %247 = mul i64 %244, %73, !dbg !3957
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !3957
  %249 = or i1 %242, %246, !dbg !3958
  call void @llvm.dbg.value(metadata i1 %249, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3952
  call void @llvm.dbg.value(metadata i32 1, metadata !3890, metadata !DIExpression()) #27, !dbg !3952
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %248) #27, !dbg !3956
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !3956
  %252 = mul i64 %248, %73, !dbg !3957
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !3957
  %254 = or i1 %249, %251, !dbg !3958
  call void @llvm.dbg.value(metadata i1 %254, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3952
  call void @llvm.dbg.value(metadata i32 0, metadata !3890, metadata !DIExpression()) #27, !dbg !3952
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #27, !dbg !3956
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !3956
  %257 = mul i64 %253, %73, !dbg !3957
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !3957
  %259 = or i1 %254, %256, !dbg !3958
  call void @llvm.dbg.value(metadata i1 %259, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3952
  call void @llvm.dbg.value(metadata i32 0, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3952
  br label %272, !dbg !3906

260:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3959
  call void @llvm.dbg.value(metadata i32 2, metadata !3899, metadata !DIExpression()) #27, !dbg !3959
  %261 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #27, !dbg !3961
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !3961
  %263 = shl i64 %49, 1, !dbg !3962
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !3962
  call void @llvm.dbg.value(metadata i1 %262, metadata !3817, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3861
  br label %272, !dbg !3963

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !3807, metadata !DIExpression()), !dbg !3818
  store i64 %49, i64* %3, align 8, !dbg !3964, !tbaa !905
  %266 = or i32 %48, 2, !dbg !3965
  br label %285, !dbg !3966

267:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3888, metadata !DIExpression()) #27, !dbg !3967
  call void @llvm.dbg.value(metadata i32 undef, metadata !3889, metadata !DIExpression()) #27, !dbg !3967
  call void @llvm.dbg.value(metadata i32 0, metadata !3883, metadata !DIExpression()) #27, !dbg !3967
  call void @llvm.dbg.value(metadata i32 undef, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3967
  call void @llvm.dbg.value(metadata i64* undef, metadata !3894, metadata !DIExpression()) #27, !dbg !3969
  call void @llvm.dbg.value(metadata i32 undef, metadata !3899, metadata !DIExpression()) #27, !dbg !3969
  %268 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #27, !dbg !3971
  %269 = extractvalue { i64, i1 } %268, 1, !dbg !3971
  call void @llvm.dbg.value(metadata i32 undef, metadata !3890, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #27, !dbg !3967
  call void @llvm.dbg.value(metadata i1 %269, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !3967
  %270 = mul i64 %49, %73, !dbg !3972
  %271 = select i1 %269, i64 -1, i64 %270, !dbg !3972
  br label %272, !dbg !3906

272:                                              ; preds = %75, %110, %240, %150, %230, %267, %215, %175, %205, %210, %260, %72
  %273 = phi i64 [ %264, %260 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %271, %267 ], [ %238, %230 ], [ %173, %150 ], [ %258, %240 ], [ %148, %110 ], [ %108, %75 ], !dbg !3818
  %274 = phi i1 [ %262, %260 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %269, %267 ], [ %239, %230 ], [ %174, %150 ], [ %259, %240 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !3973
  call void @llvm.dbg.value(metadata i32 %275, metadata !3817, metadata !DIExpression()), !dbg !3861
  %276 = or i32 %48, %275, !dbg !3906
  call void @llvm.dbg.value(metadata i32 %276, metadata !3808, metadata !DIExpression()), !dbg !3818
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3974
  store i8* %277, i8** %25, align 8, !dbg !3974, !tbaa !645
  %278 = load i8, i8* %277, align 1, !dbg !3975, !tbaa !914
  %279 = icmp eq i8 %278, 0, !dbg !3975
  %280 = or i32 %276, 2
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !3977
  call void @llvm.dbg.value(metadata i32 %281, metadata !3808, metadata !DIExpression()), !dbg !3818
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !3978
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !3979
  call void @llvm.dbg.value(metadata i32 %284, metadata !3808, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i64 %283, metadata !3807, metadata !DIExpression()), !dbg !3818
  store i64 %283, i64* %3, align 8, !dbg !3980, !tbaa !905
  br label %285, !dbg !3981

285:                                              ; preds = %56, %265, %40, %31, %33, %36, %24, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %266, %265 ], !dbg !3818
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #27, !dbg !3982
  ret i32 %286, !dbg !3982
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !3983 i64 @strtoumax(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #26 !dbg !3987 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3989, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i64 %1, metadata !3990, metadata !DIExpression()), !dbg !3995
  %3 = icmp eq i64 %0, 0, !dbg !3996
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3997
  br i1 %5, label %11, label %6, !dbg !3997

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3992, metadata !DIExpression()), !dbg !3998
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3999
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3999
  br i1 %8, label %9, label %11, !dbg !4001

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #31, !dbg !4002
  store i32 12, i32* %10, align 4, !dbg !4004, !tbaa !821
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3989, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i64 %12, metadata !3990, metadata !DIExpression()), !dbg !3995
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #27, !dbg !4005
  call void @llvm.dbg.value(metadata i8* %14, metadata !3991, metadata !DIExpression()), !dbg !3995
  br label %15, !dbg !4006

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3995
  ret i8* %16, !dbg !4007
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4008 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4046, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i32 0, metadata !4047, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i32 0, metadata !4049, metadata !DIExpression()), !dbg !4050
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4051
  call void @llvm.dbg.value(metadata i32 %2, metadata !4048, metadata !DIExpression()), !dbg !4050
  %3 = icmp slt i32 %2, 0, !dbg !4052
  br i1 %3, label %4, label %6, !dbg !4054

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4055
  br label %24, !dbg !4056

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !4057
  %8 = icmp eq i32 %7, 0, !dbg !4057
  br i1 %8, label %13, label %9, !dbg !4059

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4060
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #27, !dbg !4061
  %12 = icmp eq i64 %11, -1, !dbg !4062
  br i1 %12, label %16, label %13, !dbg !4063

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #27, !dbg !4064
  %15 = icmp eq i32 %14, 0, !dbg !4064
  br i1 %15, label %16, label %18, !dbg !4065

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4047, metadata !DIExpression()), !dbg !4050
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4066
  call void @llvm.dbg.value(metadata i32 %21, metadata !4049, metadata !DIExpression()), !dbg !4050
  br label %24, !dbg !4067

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #31, !dbg !4068
  %20 = load i32, i32* %19, align 4, !dbg !4068, !tbaa !821
  call void @llvm.dbg.value(metadata i32 %20, metadata !4047, metadata !DIExpression()), !dbg !4050
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4066
  call void @llvm.dbg.value(metadata i32 %21, metadata !4049, metadata !DIExpression()), !dbg !4050
  %22 = icmp eq i32 %20, 0, !dbg !4069
  br i1 %22, label %24, label %23, !dbg !4067

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4071, !tbaa !821
  call void @llvm.dbg.value(metadata i32 -1, metadata !4049, metadata !DIExpression()), !dbg !4050
  br label %24, !dbg !4073

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4050
  ret i32 %25, !dbg !4074
}

; Function Attrs: nofree nounwind
declare !dbg !4075 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4078 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4082 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4120, metadata !DIExpression()), !dbg !4121
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4122
  br i1 %2, label %6, label %3, !dbg !4124

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !4125
  %5 = icmp eq i32 %4, 0, !dbg !4125
  br i1 %5, label %6, label %8, !dbg !4126

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4127
  br label %17, !dbg !4128

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4129, metadata !DIExpression()) #27, !dbg !4134
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4136
  %10 = load i32, i32* %9, align 8, !dbg !4136, !tbaa !953
  %11 = and i32 %10, 256, !dbg !4138
  %12 = icmp eq i32 %11, 0, !dbg !4138
  br i1 %12, label %15, label %13, !dbg !4139

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #27, !dbg !4140
  br label %15, !dbg !4140

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4141
  br label %17, !dbg !4142

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4121
  ret i32 %18, !dbg !4143
}

; Function Attrs: nofree nounwind
declare !dbg !4144 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4147 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4185, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i64 %1, metadata !4186, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i32 %2, metadata !4187, metadata !DIExpression()), !dbg !4191
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4192
  %5 = load i8*, i8** %4, align 8, !dbg !4192, !tbaa !4193
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4194
  %7 = load i8*, i8** %6, align 8, !dbg !4194, !tbaa !4195
  %8 = icmp eq i8* %5, %7, !dbg !4196
  br i1 %8, label %9, label %28, !dbg !4197

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4198
  %11 = load i8*, i8** %10, align 8, !dbg !4198, !tbaa !1095
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4199
  %13 = load i8*, i8** %12, align 8, !dbg !4199, !tbaa !4200
  %14 = icmp eq i8* %11, %13, !dbg !4201
  br i1 %14, label %15, label %28, !dbg !4202

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4203
  %17 = load i8*, i8** %16, align 8, !dbg !4203, !tbaa !4204
  %18 = icmp eq i8* %17, null, !dbg !4205
  br i1 %18, label %19, label %28, !dbg !4206

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !4207
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #27, !dbg !4208
  call void @llvm.dbg.value(metadata i64 %21, metadata !4188, metadata !DIExpression()), !dbg !4209
  %22 = icmp eq i64 %21, -1, !dbg !4210
  br i1 %22, label %30, label %23, !dbg !4212

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4213
  %25 = load i32, i32* %24, align 8, !dbg !4214, !tbaa !953
  %26 = and i32 %25, -17, !dbg !4214
  store i32 %26, i32* %24, align 8, !dbg !4214, !tbaa !953
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4215
  store i64 %21, i64* %27, align 8, !dbg !4216, !tbaa !4217
  br label %30, !dbg !4218

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4219
  br label %30, !dbg !4220

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4191
  ret i32 %31, !dbg !4221
}

; Function Attrs: nofree nounwind
declare !dbg !4222 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4225 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4241, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata i8* %1, metadata !4242, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata i64 %2, metadata !4243, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4244, metadata !DIExpression()), !dbg !4250
  %6 = bitcast i32* %5 to i8*, !dbg !4251
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #27, !dbg !4251
  %7 = icmp eq i32* %0, null, !dbg !4252
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4254
  call void @llvm.dbg.value(metadata i32* %8, metadata !4241, metadata !DIExpression()), !dbg !4250
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #27, !dbg !4255
  call void @llvm.dbg.value(metadata i64 %9, metadata !4245, metadata !DIExpression()), !dbg !4250
  %10 = icmp ugt i64 %9, -3, !dbg !4256
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !4257
  br i1 %12, label %13, label %18, !dbg !4257

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #27, !dbg !4258
  br i1 %14, label %18, label %15, !dbg !4259

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4260, !tbaa !914
  call void @llvm.dbg.value(metadata i8 %16, metadata !4247, metadata !DIExpression()), !dbg !4261
  %17 = zext i8 %16 to i32, !dbg !4262
  store i32 %17, i32* %8, align 4, !dbg !4263, !tbaa !821
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4250
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #27, !dbg !4264
  ret i64 %19, !dbg !4264
}

; Function Attrs: nounwind
declare !dbg !4265 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4269 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4307, metadata !DIExpression()), !dbg !4312
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #27, !dbg !4313
  call void @llvm.dbg.value(metadata i1 undef, metadata !4308, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4312
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4314, metadata !DIExpression()), !dbg !4317
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4319
  %4 = load i32, i32* %3, align 8, !dbg !4319, !tbaa !953
  %5 = and i32 %4, 32, !dbg !4320
  %6 = icmp eq i32 %5, 0, !dbg !4320
  call void @llvm.dbg.value(metadata i1 %6, metadata !4310, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4312
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #27, !dbg !4321
  %8 = icmp eq i32 %7, 0, !dbg !4322
  call void @llvm.dbg.value(metadata i1 %8, metadata !4311, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4312
  br i1 %6, label %9, label %19, !dbg !4323

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4325
  call void @llvm.dbg.value(metadata i1 %10, metadata !4308, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4312
  %11 = or i1 %10, %8, !dbg !4326
  %12 = xor i1 %8, true, !dbg !4326
  %13 = sext i1 %12 to i32, !dbg !4326
  br i1 %11, label %22, label %14, !dbg !4326

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #31, !dbg !4327
  %16 = load i32, i32* %15, align 4, !dbg !4327, !tbaa !821
  %17 = icmp ne i32 %16, 9, !dbg !4328
  %18 = sext i1 %17 to i32, !dbg !4329
  br label %22, !dbg !4329

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4330

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #31, !dbg !4332
  store i32 0, i32* %21, align 4, !dbg !4334, !tbaa !821
  br label %22, !dbg !4332

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4312
  ret i32 %23, !dbg !4335
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4336 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4340, metadata !DIExpression()), !dbg !4345
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4346
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #27, !dbg !4346
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4341, metadata !DIExpression()), !dbg !4347
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #27, !dbg !4348
  %5 = icmp eq i32 %4, 0, !dbg !4348
  br i1 %5, label %6, label %13, !dbg !4350

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4351
  %8 = load i16, i16* %7, align 16, !dbg !4351
  %9 = icmp eq i16 %8, 67, !dbg !4351
  br i1 %9, label %13, label %10, !dbg !4352

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.151, i64 0, i64 0), i64 6), !dbg !4353
  %12 = icmp ne i32 %11, 0, !dbg !4354
  br label %13, !dbg !4352

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4345
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #27, !dbg !4355
  ret i1 %14, !dbg !4355
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4356 {
  %1 = tail call i8* @nl_langinfo(i32 14) #27, !dbg !4361
  call void @llvm.dbg.value(metadata i8* %1, metadata !4360, metadata !DIExpression()), !dbg !4362
  %2 = icmp eq i8* %1, null, !dbg !4363
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.154, i64 0, i64 0), i8* %1, !dbg !4365
  call void @llvm.dbg.value(metadata i8* %3, metadata !4360, metadata !DIExpression()), !dbg !4362
  %4 = load i8, i8* %3, align 1, !dbg !4366, !tbaa !914
  %5 = icmp eq i8 %4, 0, !dbg !4370
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.155, i64 0, i64 0), i8* %3, !dbg !4371
  call void @llvm.dbg.value(metadata i8* %6, metadata !4360, metadata !DIExpression()), !dbg !4362
  ret i8* %6, !dbg !4372
}

; Function Attrs: nounwind
declare !dbg !4373 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4376 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4380, metadata !DIExpression()), !dbg !4383
  call void @llvm.dbg.value(metadata i8* %1, metadata !4381, metadata !DIExpression()), !dbg !4383
  call void @llvm.dbg.value(metadata i64 %2, metadata !4382, metadata !DIExpression()), !dbg !4383
  call void @llvm.dbg.value(metadata i32 %0, metadata !4384, metadata !DIExpression()) #27, !dbg !4393
  call void @llvm.dbg.value(metadata i8* %1, metadata !4387, metadata !DIExpression()) #27, !dbg !4393
  call void @llvm.dbg.value(metadata i64 %2, metadata !4388, metadata !DIExpression()) #27, !dbg !4393
  call void @llvm.dbg.value(metadata i32 %0, metadata !4395, metadata !DIExpression()) #27, !dbg !4401
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !4403
  call void @llvm.dbg.value(metadata i8* %4, metadata !4400, metadata !DIExpression()) #27, !dbg !4401
  call void @llvm.dbg.value(metadata i8* %4, metadata !4389, metadata !DIExpression()) #27, !dbg !4393
  %5 = icmp eq i8* %4, null, !dbg !4404
  br i1 %5, label %6, label %9, !dbg !4405

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4406
  br i1 %7, label %19, label %8, !dbg !4409

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4410, !tbaa !914
  br label %19, !dbg !4411

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #28, !dbg !4412
  call void @llvm.dbg.value(metadata i64 %10, metadata !4390, metadata !DIExpression()) #27, !dbg !4413
  %11 = icmp ult i64 %10, %2, !dbg !4414
  br i1 %11, label %12, label %14, !dbg !4416

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4417
  call void @llvm.dbg.value(metadata i8* %1, metadata !4419, metadata !DIExpression()) #27, !dbg !4424
  call void @llvm.dbg.value(metadata i8* %4, metadata !4422, metadata !DIExpression()) #27, !dbg !4424
  call void @llvm.dbg.value(metadata i64 %13, metadata !4423, metadata !DIExpression()) #27, !dbg !4424
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #27, !dbg !4426
  br label %19, !dbg !4427

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4428
  br i1 %15, label %19, label %16, !dbg !4431

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4432
  call void @llvm.dbg.value(metadata i8* %1, metadata !4419, metadata !DIExpression()) #27, !dbg !4434
  call void @llvm.dbg.value(metadata i8* %4, metadata !4422, metadata !DIExpression()) #27, !dbg !4434
  call void @llvm.dbg.value(metadata i64 %17, metadata !4423, metadata !DIExpression()) #27, !dbg !4434
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #27, !dbg !4436
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4437
  store i8 0, i8* %18, align 1, !dbg !4438, !tbaa !914
  br label %19, !dbg !4439

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4440
  ret i32 %20, !dbg !4441
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4442 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4444, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i32 %0, metadata !4395, metadata !DIExpression()) #27, !dbg !4446
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !4448
  call void @llvm.dbg.value(metadata i8* %2, metadata !4400, metadata !DIExpression()) #27, !dbg !4446
  ret i8* %2, !dbg !4449
}

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
attributes #10 = { nofree norecurse nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { norecurse nounwind readnone sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree nounwind }
attributes #19 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #23 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #24 = { nofree nosync nounwind willreturn }
attributes #25 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #27 = { nounwind }
attributes #28 = { nounwind readonly willreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { noreturn }
attributes #31 = { nounwind readnone willreturn }
attributes #32 = { cold }

!llvm.dbg.cu = !{!2, !55, !67, !87, !95, !178, !101, !106, !181, !172, !188, !205, !207, !218, !222, !224, !226, !228, !230, !233, !235, !237, !626}
!llvm.ident = !{!628, !628, !628, !628, !628, !628, !628, !628, !628, !628, !628, !628, !628, !628, !628, !628, !628, !628, !628, !628, !628, !628, !628}
!llvm.module.flags = !{!629, !630, !631, !632, !633}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 74, type: !40, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !39, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/basenc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 32, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 45, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!26 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!27 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!28 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!29 = !{!30, !32, !33, !36, !38}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!0}
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 1536, elements: !51)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !43, line: 50, size: 256, elements: !44)
!43 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!44 = !{!45, !46, !48, !50}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !42, file: !43, line: 52, baseType: !36, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !42, file: !43, line: 55, baseType: !47, size: 32, offset: 64)
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !42, file: !43, line: 56, baseType: !49, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !42, file: !43, line: 57, baseType: !47, size: 32, offset: 192)
!51 = !{!52}
!52 = !DISubrange(count: 6)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "Version", scope: !55, file: !56, line: 2, type: !36, isLocal: false, isDefinition: true)
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, globals: !58, splitDebugInlining: false, nameTableKind: None)
!56 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!57 = !{}
!58 = !{!53}
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "b32str", scope: !61, file: !62, line: 68, type: !82, isLocal: true, isDefinition: true)
!61 = distinct !DISubprogram(name: "base32_encode", scope: !62, file: !62, line: 65, type: !63, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !77)
!62 = !DIFile(filename: "lib/base32.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!63 = !DISubroutineType(types: !64)
!64 = !{null, !65, !33, !66, !33}
!65 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!66 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !62, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !68, globals: !69, splitDebugInlining: false, nameTableKind: None)
!68 = !{!32, !30}
!69 = !{!59, !70}
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "b32", scope: !67, file: !62, line: 209, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 2048, elements: !75)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!75 = !{!76}
!76 = !DISubrange(count: 256)
!77 = !{!78, !79, !80, !81}
!78 = !DILocalVariable(name: "in", arg: 1, scope: !61, file: !62, line: 65, type: !65)
!79 = !DILocalVariable(name: "inlen", arg: 2, scope: !61, file: !62, line: 65, type: !33)
!80 = !DILocalVariable(name: "out", arg: 3, scope: !61, file: !62, line: 66, type: !66)
!81 = !DILocalVariable(name: "outlen", arg: 4, scope: !61, file: !62, line: 66, type: !33)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 256, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 32)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "file_name", scope: !87, file: !88, line: 46, type: !36, isLocal: true, isDefinition: true)
!87 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, globals: !89, splitDebugInlining: false, nameTableKind: None)
!88 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!89 = !{!85, !90}
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !87, file: !88, line: 56, type: !92, isLocal: true, isDefinition: true)
!92 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "exit_failure", scope: !95, file: !96, line: 24, type: !98, isLocal: false, isDefinition: true)
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !96, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, globals: !97, splitDebugInlining: false, nameTableKind: None)
!96 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!97 = !{!93}
!98 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "program_name", scope: !101, file: !102, line: 33, type: !36, isLocal: false, isDefinition: true)
!101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !102, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !68, globals: !103, splitDebugInlining: false, nameTableKind: None)
!102 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!103 = !{!99}
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !106, file: !107, line: 85, type: !166, isLocal: false, isDefinition: true)
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !108, retainedTypes: !129, globals: !131, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!108 = !{!5, !109, !114}
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !110)
!110 = !{!111, !112, !113}
!111 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !115, line: 46, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!117 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!118 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!119 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!120 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!121 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!122 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!123 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!124 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!125 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!126 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!127 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!128 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!129 = !{!47, !130, !33, !30}
!130 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!131 = !{!104, !132, !138, !150, !152, !155, !162, !164}
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !106, file: !107, line: 101, type: !134, isLocal: false, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 320, elements: !136)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!136 = !{!137}
!137 = !DISubrange(count: 10)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !106, file: !107, line: 1052, type: !140, isLocal: false, isDefinition: true)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !107, line: 65, size: 448, elements: !141)
!141 = !{!142, !143, !144, !148, !149}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !140, file: !107, line: 68, baseType: !5, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !107, line: 71, baseType: !47, size: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !140, file: !107, line: 75, baseType: !145, size: 256, offset: 64)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 8)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !140, file: !107, line: 78, baseType: !36, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !140, file: !107, line: 81, baseType: !36, size: 64, offset: 384)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !106, file: !107, line: 116, type: !140, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "slot0", scope: !106, file: !107, line: 842, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2048, elements: !75)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "slotvec", scope: !106, file: !107, line: 845, type: !157, isLocal: true, isDefinition: true)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !107, line: 834, size: 128, elements: !159)
!159 = !{!160, !161}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !158, file: !107, line: 836, baseType: !33, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !158, file: !107, line: 837, baseType: !30, size: 64, offset: 64)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "nslots", scope: !106, file: !107, line: 843, type: !47, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "slotvec0", scope: !106, file: !107, line: 844, type: !158, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 704, elements: !168)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!168 = !{!169}
!169 = !DISubrange(count: 11)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !172, file: !173, line: 26, type: !175, isLocal: false, isDefinition: true)
!172 = distinct !DICompileUnit(language: DW_LANG_C99, file: !173, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, globals: !174, splitDebugInlining: false, nameTableKind: None)
!173 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!174 = !{!170}
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 376, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 47)
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180, splitDebugInlining: false, nameTableKind: None)
!179 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!180 = !{!20}
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !182, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !183, retainedTypes: !187, splitDebugInlining: false, nameTableKind: None)
!182 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!183 = !{!184}
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !182, line: 40, baseType: !7, size: 32, elements: !185)
!185 = !{!186}
!186 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!187 = !{!32}
!188 = distinct !DICompileUnit(language: DW_LANG_C99, file: !189, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !190, retainedTypes: !204, splitDebugInlining: false, nameTableKind: None)
!189 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!190 = !{!191}
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !193, file: !192, line: 186, baseType: !7, size: 32, elements: !202)
!192 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!193 = distinct !DISubprogram(name: "x2nrealloc", scope: !192, file: !192, line: 174, type: !194, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !197)
!194 = !DISubroutineType(types: !195)
!195 = !{!32, !32, !196, !33}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!197 = !{!198, !199, !200, !201}
!198 = !DILocalVariable(name: "p", arg: 1, scope: !193, file: !192, line: 174, type: !32)
!199 = !DILocalVariable(name: "pn", arg: 2, scope: !193, file: !192, line: 174, type: !196)
!200 = !DILocalVariable(name: "s", arg: 3, scope: !193, file: !192, line: 174, type: !33)
!201 = !DILocalVariable(name: "n", scope: !193, file: !192, line: 176, type: !33)
!202 = !{!203}
!203 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!204 = !{!33, !30, !32}
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!207 = distinct !DICompileUnit(language: DW_LANG_C99, file: !208, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !209, splitDebugInlining: false, nameTableKind: None)
!208 = !DIFile(filename: "lib/xdectoumax.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!209 = !{!210}
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !211, line: 25, baseType: !7, size: 32, elements: !212)
!211 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!212 = !{!213, !214, !215, !216, !217}
!213 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!214 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!215 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!216 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!217 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !220, retainedTypes: !221, splitDebugInlining: false, nameTableKind: None)
!219 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!220 = !{!210, !114}
!221 = !{!47, !130}
!222 = distinct !DICompileUnit(language: DW_LANG_C99, file: !223, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !187, splitDebugInlining: false, nameTableKind: None)
!223 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!224 = distinct !DICompileUnit(language: DW_LANG_C99, file: !225, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, splitDebugInlining: false, nameTableKind: None)
!225 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !187, splitDebugInlining: false, nameTableKind: None)
!227 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!228 = distinct !DICompileUnit(language: DW_LANG_C99, file: !229, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !187, splitDebugInlining: false, nameTableKind: None)
!229 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !232, splitDebugInlining: false, nameTableKind: None)
!231 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!232 = !{!33}
!233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, splitDebugInlining: false, nameTableKind: None)
!234 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!235 = distinct !DICompileUnit(language: DW_LANG_C99, file: !236, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, splitDebugInlining: false, nameTableKind: None)
!236 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!237 = distinct !DICompileUnit(language: DW_LANG_C99, file: !238, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !239, retainedTypes: !187, splitDebugInlining: false, nameTableKind: None)
!238 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!239 = !{!240}
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !241, line: 41, baseType: !7, size: 32, elements: !242)
!241 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625}
!243 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!244 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!245 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!246 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!247 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!248 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!249 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!250 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!251 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!252 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!253 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!254 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!255 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!256 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!257 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!258 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!259 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!260 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!261 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!262 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!263 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!264 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!265 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!266 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!267 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!268 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!269 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!270 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!271 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!272 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!273 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!274 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!275 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!276 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!277 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!278 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!279 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!280 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!281 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!282 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!283 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!284 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!285 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!286 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!287 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!288 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!289 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!290 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!291 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!292 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!351 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!354 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!355 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!356 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!357 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!358 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!359 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!360 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!361 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!362 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!363 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!364 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!365 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!438 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!511 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!512 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!513 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!514 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!515 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!516 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!517 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!518 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!519 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!520 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!521 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!522 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!523 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!524 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!525 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!527 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!528 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!529 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!530 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!531 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!532 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!558 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!559 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!560 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!561 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!562 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!567 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!568 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!569 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!570 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!626 = distinct !DICompileUnit(language: DW_LANG_C99, file: !627, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !187, splitDebugInlining: false, nameTableKind: None)
!627 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!628 = !{!"clang version 12.0.1"}
!629 = !{i32 7, !"Dwarf Version", i32 4}
!630 = !{i32 2, !"Debug Info Version", i32 3}
!631 = !{i32 1, !"wchar_size", i32 4}
!632 = !{i32 7, !"PIC Level", i32 2}
!633 = !{i32 7, !"PIE Level", i32 2}
!634 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 95, type: !635, scopeLine: 96, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !637)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !47}
!637 = !{!638}
!638 = !DILocalVariable(name: "status", arg: 1, scope: !634, file: !3, line: 95, type: !47)
!639 = !DILocation(line: 0, scope: !634)
!640 = !DILocation(line: 97, column: 14, scope: !641)
!641 = distinct !DILexicalBlock(scope: !634, file: !3, line: 97, column: 7)
!642 = !DILocation(line: 97, column: 7, scope: !634)
!643 = !DILocation(line: 98, column: 5, scope: !644)
!644 = distinct !DILexicalBlock(scope: !641, file: !3, line: 98, column: 5)
!645 = !{!646, !646, i64 0}
!646 = !{!"any pointer", !647, i64 0}
!647 = !{!"omnipotent char", !648, i64 0}
!648 = !{!"Simple C/C++ TBAA"}
!649 = !DILocation(line: 101, column: 7, scope: !650)
!650 = distinct !DILexicalBlock(scope: !641, file: !3, line: 100, column: 5)
!651 = !DILocation(line: 110, column: 7, scope: !650)
!652 = !DILocation(line: 583, column: 3, scope: !653, inlinedAt: !657)
!653 = distinct !DISubprogram(name: "emit_stdin_note", scope: !654, file: !654, line: 581, type: !655, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !57)
!654 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!655 = !DISubroutineType(types: !656)
!656 = !{null}
!657 = distinct !DILocation(line: 115, column: 7, scope: !650)
!658 = !DILocation(line: 590, column: 3, scope: !659, inlinedAt: !660)
!659 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !654, file: !654, line: 588, type: !655, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !57)
!660 = distinct !DILocation(line: 116, column: 7, scope: !650)
!661 = !DILocation(line: 140, column: 7, scope: !650)
!662 = !DILocation(line: 154, column: 7, scope: !650)
!663 = !DILocation(line: 155, column: 7, scope: !650)
!664 = !DILocation(line: 164, column: 7, scope: !650)
!665 = !DILocalVariable(name: "program", arg: 1, scope: !666, file: !654, line: 634, type: !36)
!666 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !654, file: !654, line: 634, type: !667, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !669)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !36}
!669 = !{!665, !670, !679, !680, !682}
!670 = !DILocalVariable(name: "infomap", scope: !666, file: !654, line: 636, type: !671)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 896, elements: !677)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !666, file: !654, line: 636, size: 128, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !673, file: !654, line: 636, baseType: !36, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !673, file: !654, line: 636, baseType: !36, size: 64, offset: 64)
!677 = !{!678}
!678 = !DISubrange(count: 7)
!679 = !DILocalVariable(name: "node", scope: !666, file: !654, line: 646, type: !36)
!680 = !DILocalVariable(name: "map_prog", scope: !666, file: !654, line: 647, type: !681)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!682 = !DILocalVariable(name: "lc_messages", scope: !666, file: !654, line: 659, type: !36)
!683 = !DILocation(line: 0, scope: !666, inlinedAt: !684)
!684 = distinct !DILocation(line: 172, column: 7, scope: !650)
!685 = !DILocation(line: 636, column: 3, scope: !666, inlinedAt: !684)
!686 = !DILocation(line: 636, column: 67, scope: !666, inlinedAt: !684)
!687 = !DILocation(line: 647, column: 36, scope: !666, inlinedAt: !684)
!688 = !DILocation(line: 649, column: 3, scope: !666, inlinedAt: !684)
!689 = !DILocation(line: 649, column: 33, scope: !666, inlinedAt: !684)
!690 = !DILocation(line: 650, column: 13, scope: !666, inlinedAt: !684)
!691 = !DILocation(line: 649, column: 20, scope: !666, inlinedAt: !684)
!692 = !{!693, !646, i64 0}
!693 = !{!"infomap", !646, i64 0, !646, i64 8}
!694 = !DILocation(line: 649, column: 10, scope: !666, inlinedAt: !684)
!695 = !DILocation(line: 649, column: 28, scope: !666, inlinedAt: !684)
!696 = distinct !{!696, !688, !690, !697}
!697 = !{!"llvm.loop.mustprogress"}
!698 = !DILocation(line: 652, column: 17, scope: !699, inlinedAt: !684)
!699 = distinct !DILexicalBlock(scope: !666, file: !654, line: 652, column: 7)
!700 = !{!693, !646, i64 8}
!701 = !DILocation(line: 652, column: 7, scope: !699, inlinedAt: !684)
!702 = !DILocation(line: 652, column: 7, scope: !666, inlinedAt: !684)
!703 = !DILocation(line: 655, column: 3, scope: !666, inlinedAt: !684)
!704 = !DILocation(line: 659, column: 29, scope: !666, inlinedAt: !684)
!705 = !DILocation(line: 660, column: 7, scope: !706, inlinedAt: !684)
!706 = distinct !DILexicalBlock(scope: !666, file: !654, line: 660, column: 7)
!707 = !DILocation(line: 660, column: 19, scope: !706, inlinedAt: !684)
!708 = !DILocation(line: 660, column: 22, scope: !706, inlinedAt: !684)
!709 = !DILocation(line: 660, column: 7, scope: !666, inlinedAt: !684)
!710 = !DILocation(line: 666, column: 7, scope: !711, inlinedAt: !684)
!711 = distinct !DILexicalBlock(scope: !706, file: !654, line: 661, column: 5)
!712 = !DILocation(line: 668, column: 5, scope: !711, inlinedAt: !684)
!713 = !DILocation(line: 669, column: 3, scope: !666, inlinedAt: !684)
!714 = !DILocation(line: 671, column: 3, scope: !666, inlinedAt: !684)
!715 = !DILocation(line: 673, column: 1, scope: !666, inlinedAt: !684)
!716 = !DILocation(line: 175, column: 3, scope: !634)
!717 = !DISubprogram(name: "dcgettext", scope: !718, file: !718, line: 51, type: !719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!718 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!719 = !DISubroutineType(types: !720)
!720 = !{!30, !36, !36, !47}
!721 = !DISubprogram(name: "fputs_unlocked", scope: !722, file: !722, line: 667, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!722 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!723 = !DISubroutineType(types: !724)
!724 = !{!47, !36, !725}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !728)
!727 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!728 = !{!729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !744, !745, !746, !747, !751, !752, !753, !757, !760, !762, !765, !768, !769, !770, !771, !772}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !726, file: !727, line: 51, baseType: !47, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !726, file: !727, line: 54, baseType: !30, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !726, file: !727, line: 55, baseType: !30, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !726, file: !727, line: 56, baseType: !30, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !726, file: !727, line: 57, baseType: !30, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !726, file: !727, line: 58, baseType: !30, size: 64, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !726, file: !727, line: 59, baseType: !30, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !726, file: !727, line: 60, baseType: !30, size: 64, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !726, file: !727, line: 61, baseType: !30, size: 64, offset: 512)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !726, file: !727, line: 64, baseType: !30, size: 64, offset: 576)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !726, file: !727, line: 65, baseType: !30, size: 64, offset: 640)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !726, file: !727, line: 66, baseType: !30, size: 64, offset: 704)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !726, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !727, line: 36, flags: DIFlagFwdDecl)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !726, file: !727, line: 70, baseType: !725, size: 64, offset: 832)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !726, file: !727, line: 72, baseType: !47, size: 32, offset: 896)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !726, file: !727, line: 73, baseType: !47, size: 32, offset: 928)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !726, file: !727, line: 74, baseType: !748, size: 64, offset: 960)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !749, line: 152, baseType: !750)
!749 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!750 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !726, file: !727, line: 77, baseType: !130, size: 16, offset: 1024)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !726, file: !727, line: 78, baseType: !74, size: 8, offset: 1040)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !726, file: !727, line: 79, baseType: !754, size: 8, offset: 1048)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, elements: !755)
!755 = !{!756}
!756 = !DISubrange(count: 1)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !726, file: !727, line: 81, baseType: !758, size: 64, offset: 1088)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !727, line: 43, baseType: null)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !726, file: !727, line: 89, baseType: !761, size: 64, offset: 1152)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !749, line: 153, baseType: !750)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !726, file: !727, line: 91, baseType: !763, size: 64, offset: 1216)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !727, line: 37, flags: DIFlagFwdDecl)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !726, file: !727, line: 92, baseType: !766, size: 64, offset: 1280)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !727, line: 38, flags: DIFlagFwdDecl)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !726, file: !727, line: 93, baseType: !725, size: 64, offset: 1344)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !726, file: !727, line: 94, baseType: !32, size: 64, offset: 1408)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !726, file: !727, line: 95, baseType: !33, size: 64, offset: 1472)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !726, file: !727, line: 96, baseType: !47, size: 32, offset: 1536)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !726, file: !727, line: 98, baseType: !773, size: 160, offset: 1568)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, elements: !774)
!774 = !{!775}
!775 = !DISubrange(count: 20)
!776 = !DISubprogram(name: "setlocale", scope: !777, file: !777, line: 122, type: !778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!777 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!778 = !DISubroutineType(types: !779)
!779 = !{!30, !47, !36}
!780 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 1087, type: !781, scopeLine: 1088, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !784)
!781 = !DISubroutineType(types: !782)
!782 = !{!47, !47, !783}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!784 = !{!785, !786, !787, !788, !792, !793, !794, !795}
!785 = !DILocalVariable(name: "argc", arg: 1, scope: !780, file: !3, line: 1087, type: !47)
!786 = !DILocalVariable(name: "argv", arg: 2, scope: !780, file: !3, line: 1087, type: !783)
!787 = !DILocalVariable(name: "opt", scope: !780, file: !3, line: 1089, type: !47)
!788 = !DILocalVariable(name: "input_fh", scope: !780, file: !3, line: 1090, type: !789)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 7, baseType: !726)
!791 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!792 = !DILocalVariable(name: "infile", scope: !780, file: !3, line: 1091, type: !36)
!793 = !DILocalVariable(name: "decode", scope: !780, file: !3, line: 1094, type: !92)
!794 = !DILocalVariable(name: "ignore_garbage", scope: !780, file: !3, line: 1096, type: !92)
!795 = !DILocalVariable(name: "wrap_column", scope: !780, file: !3, line: 1098, type: !796)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !797, line: 102, baseType: !798)
!797 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !749, line: 73, baseType: !35)
!799 = !DILocation(line: 0, scope: !780)
!800 = !DILocation(line: 1105, column: 21, scope: !780)
!801 = !DILocation(line: 1105, column: 3, scope: !780)
!802 = !DILocation(line: 1106, column: 3, scope: !780)
!803 = !DILocation(line: 1107, column: 3, scope: !780)
!804 = !DILocation(line: 1108, column: 3, scope: !780)
!805 = !DILocation(line: 1110, column: 3, scope: !780)
!806 = !DILocation(line: 1112, column: 3, scope: !780)
!807 = !DILocation(line: 1098, column: 13, scope: !780)
!808 = !DILocation(line: 1112, column: 17, scope: !780)
!809 = distinct !{!809, !806, !810, !697}
!810 = !DILocation(line: 1148, column: 7, scope: !780)
!811 = !DILocation(line: 1120, column: 35, scope: !812)
!812 = distinct !DILexicalBlock(scope: !780, file: !3, line: 1114, column: 7)
!813 = !DILocation(line: 1121, column: 35, scope: !812)
!814 = !DILocation(line: 1120, column: 23, scope: !812)
!815 = !DILocation(line: 1122, column: 9, scope: !812)
!816 = !DILocation(line: 1141, column: 7, scope: !812)
!817 = !DILocation(line: 1143, column: 7, scope: !812)
!818 = !DILocation(line: 1146, column: 9, scope: !812)
!819 = !DILocation(line: 1223, column: 14, scope: !820)
!820 = distinct !DILexicalBlock(scope: !780, file: !3, line: 1223, column: 7)
!821 = !{!822, !822, i64 0}
!822 = !{!"int", !647, i64 0}
!823 = !DILocation(line: 1223, column: 12, scope: !820)
!824 = !DILocation(line: 1223, column: 21, scope: !820)
!825 = !DILocation(line: 1223, column: 7, scope: !780)
!826 = !DILocation(line: 1225, column: 20, scope: !827)
!827 = distinct !DILexicalBlock(scope: !820, file: !3, line: 1224, column: 5)
!828 = !DILocation(line: 1225, column: 55, scope: !827)
!829 = !DILocation(line: 1225, column: 61, scope: !827)
!830 = !DILocation(line: 1225, column: 50, scope: !827)
!831 = !DILocation(line: 1225, column: 43, scope: !827)
!832 = !DILocation(line: 1225, column: 7, scope: !827)
!833 = !DILocation(line: 1226, column: 7, scope: !827)
!834 = !DILocation(line: 1229, column: 14, scope: !835)
!835 = distinct !DILexicalBlock(scope: !780, file: !3, line: 1229, column: 7)
!836 = !DILocation(line: 1229, column: 7, scope: !780)
!837 = !DILocation(line: 1230, column: 14, scope: !835)
!838 = !DILocation(line: 1230, column: 5, scope: !835)
!839 = !DILocation(line: 0, scope: !835)
!840 = !DILocation(line: 1234, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !780, file: !3, line: 1234, column: 7)
!842 = !DILocation(line: 1234, column: 7, scope: !780)
!843 = !DILocation(line: 1237, column: 18, scope: !844)
!844 = distinct !DILexicalBlock(scope: !841, file: !3, line: 1235, column: 5)
!845 = !DILocation(line: 1238, column: 5, scope: !844)
!846 = !DILocation(line: 1241, column: 18, scope: !847)
!847 = distinct !DILexicalBlock(scope: !841, file: !3, line: 1240, column: 5)
!848 = !DILocation(line: 1242, column: 20, scope: !849)
!849 = distinct !DILexicalBlock(scope: !847, file: !3, line: 1242, column: 11)
!850 = !DILocation(line: 1242, column: 11, scope: !847)
!851 = !DILocation(line: 1243, column: 9, scope: !849)
!852 = !DILocation(line: 0, scope: !841)
!853 = !DILocation(line: 1246, column: 3, scope: !780)
!854 = !DILocation(line: 0, scope: !855)
!855 = distinct !DILexicalBlock(scope: !780, file: !3, line: 1248, column: 7)
!856 = !DILocation(line: 1248, column: 7, scope: !780)
!857 = !DILocation(line: 1249, column: 34, scope: !855)
!858 = !DILocalVariable(name: "in", arg: 1, scope: !859, file: !3, line: 1016, type: !789)
!859 = distinct !DISubprogram(name: "do_decode", scope: !3, file: !3, line: 1016, type: !860, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !862)
!860 = !DISubroutineType(types: !861)
!861 = !{null, !789, !789, !92}
!862 = !{!858, !863, !864, !865, !866, !867, !868, !875, !877, !878, !879, !884, !890, !891}
!863 = !DILocalVariable(name: "out", arg: 2, scope: !859, file: !3, line: 1016, type: !789)
!864 = !DILocalVariable(name: "ignore_garbage", arg: 3, scope: !859, file: !3, line: 1016, type: !92)
!865 = !DILocalVariable(name: "inbuf", scope: !859, file: !3, line: 1018, type: !30)
!866 = !DILocalVariable(name: "outbuf", scope: !859, file: !3, line: 1018, type: !30)
!867 = !DILocalVariable(name: "sum", scope: !859, file: !3, line: 1019, type: !33)
!868 = !DILocalVariable(name: "ctx", scope: !859, file: !3, line: 1020, type: !869)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base32_decode_context", file: !870, line: 31, size: 96, elements: !871)
!870 = !DIFile(filename: "./lib/base32.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !869, file: !870, line: 33, baseType: !7, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !869, file: !870, line: 34, baseType: !874, size: 64, offset: 32)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !146)
!875 = !DILocalVariable(name: "ok", scope: !876, file: !3, line: 1032, type: !92)
!876 = distinct !DILexicalBlock(scope: !859, file: !3, line: 1031, column: 5)
!877 = !DILocalVariable(name: "n", scope: !876, file: !3, line: 1033, type: !33)
!878 = !DILocalVariable(name: "k", scope: !876, file: !3, line: 1034, type: !7)
!879 = !DILocalVariable(name: "i", scope: !880, file: !3, line: 1043, type: !33)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 1043, column: 15)
!881 = distinct !DILexicalBlock(scope: !882, file: !3, line: 1042, column: 13)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 1041, column: 15)
!883 = distinct !DILexicalBlock(scope: !876, file: !3, line: 1038, column: 9)
!884 = !DILocalVariable(name: "__ptr", scope: !885, file: !3, line: 1070, type: !36)
!885 = distinct !DILexicalBlock(scope: !886, file: !3, line: 1070, column: 15)
!886 = distinct !DILexicalBlock(scope: !887, file: !3, line: 1070, column: 15)
!887 = distinct !DILexicalBlock(scope: !888, file: !3, line: 1064, column: 9)
!888 = distinct !DILexicalBlock(scope: !889, file: !3, line: 1063, column: 7)
!889 = distinct !DILexicalBlock(scope: !876, file: !3, line: 1063, column: 7)
!890 = !DILocalVariable(name: "__stream", scope: !885, file: !3, line: 1070, type: !789)
!891 = !DILocalVariable(name: "__cnt", scope: !885, file: !3, line: 1070, type: !33)
!892 = !DILocation(line: 0, scope: !859, inlinedAt: !893)
!893 = distinct !DILocation(line: 1249, column: 5, scope: !855)
!894 = !DILocation(line: 1020, column: 3, scope: !859, inlinedAt: !893)
!895 = !DILocation(line: 1020, column: 30, scope: !859, inlinedAt: !893)
!896 = !DILocation(line: 1022, column: 11, scope: !859, inlinedAt: !893)
!897 = !DILocation(line: 1023, column: 12, scope: !859, inlinedAt: !893)
!898 = !DILocation(line: 1028, column: 3, scope: !859, inlinedAt: !893)
!899 = !DILocation(line: 1030, column: 3, scope: !859, inlinedAt: !893)
!900 = !DILocation(line: 1033, column: 7, scope: !876, inlinedAt: !893)
!901 = !DILocation(line: 1037, column: 7, scope: !876, inlinedAt: !893)
!902 = !DILocation(line: 0, scope: !876, inlinedAt: !893)
!903 = !DILocation(line: 1039, column: 15, scope: !883, inlinedAt: !893)
!904 = !DILocation(line: 1039, column: 13, scope: !883, inlinedAt: !893)
!905 = !{!906, !906, i64 0}
!906 = !{!"long", !647, i64 0}
!907 = !DILocation(line: 1041, column: 15, scope: !883, inlinedAt: !893)
!908 = !DILocation(line: 0, scope: !880, inlinedAt: !893)
!909 = !DILocation(line: 1045, column: 41, scope: !910, inlinedAt: !893)
!910 = distinct !DILexicalBlock(scope: !911, file: !3, line: 1045, column: 23)
!911 = distinct !DILexicalBlock(scope: !912, file: !3, line: 1044, column: 17)
!912 = distinct !DILexicalBlock(scope: !880, file: !3, line: 1043, column: 15)
!913 = !DILocation(line: 1045, column: 31, scope: !910, inlinedAt: !893)
!914 = !{!647, !647, i64 0}
!915 = !DILocation(line: 1045, column: 23, scope: !910, inlinedAt: !893)
!916 = !DILocation(line: 1045, column: 47, scope: !910, inlinedAt: !893)
!917 = !DILocation(line: 1046, column: 22, scope: !910, inlinedAt: !893)
!918 = !DILocation(line: 1046, column: 21, scope: !910, inlinedAt: !893)
!919 = !DILocation(line: 1048, column: 42, scope: !910, inlinedAt: !893)
!920 = !DILocation(line: 1048, column: 63, scope: !910, inlinedAt: !893)
!921 = !DILocation(line: 1048, column: 68, scope: !910, inlinedAt: !893)
!922 = !DILocation(line: 1048, column: 72, scope: !910, inlinedAt: !893)
!923 = !DILocalVariable(name: "__dest", arg: 1, scope: !924, file: !925, line: 34, type: !32)
!924 = distinct !DISubprogram(name: "memmove", scope: !925, file: !925, line: 34, type: !926, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !930)
!925 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!926 = !DISubroutineType(types: !927)
!927 = !{!32, !32, !928, !33}
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!930 = !{!923, !931, !932}
!931 = !DILocalVariable(name: "__src", arg: 2, scope: !924, file: !925, line: 34, type: !928)
!932 = !DILocalVariable(name: "__len", arg: 3, scope: !924, file: !925, line: 34, type: !33)
!933 = !DILocation(line: 0, scope: !924, inlinedAt: !934)
!934 = distinct !DILocation(line: 1048, column: 21, scope: !910, inlinedAt: !893)
!935 = !DILocation(line: 36, column: 10, scope: !924, inlinedAt: !934)
!936 = !DILocation(line: 1043, column: 34, scope: !912, inlinedAt: !893)
!937 = !DILocation(line: 1043, column: 40, scope: !912, inlinedAt: !893)
!938 = !DILocation(line: 1043, column: 15, scope: !880, inlinedAt: !893)
!939 = distinct !{!939, !938, !940, !697}
!940 = !DILocation(line: 1049, column: 17, scope: !880, inlinedAt: !893)
!941 = !DILocation(line: 1052, column: 18, scope: !883, inlinedAt: !893)
!942 = !DILocation(line: 1052, column: 15, scope: !883, inlinedAt: !893)
!943 = !DILocalVariable(name: "__stream", arg: 1, scope: !944, file: !945, line: 135, type: !789)
!944 = distinct !DISubprogram(name: "ferror_unlocked", scope: !945, file: !945, line: 135, type: !946, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !948)
!945 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!946 = !DISubroutineType(types: !947)
!947 = !{!47, !789}
!948 = !{!943}
!949 = !DILocation(line: 0, scope: !944, inlinedAt: !950)
!950 = distinct !DILocation(line: 1054, column: 15, scope: !951, inlinedAt: !893)
!951 = distinct !DILexicalBlock(scope: !883, file: !3, line: 1054, column: 15)
!952 = !DILocation(line: 137, column: 10, scope: !944, inlinedAt: !950)
!953 = !{!954, !822, i64 0}
!954 = !{!"_IO_FILE", !822, i64 0, !646, i64 8, !646, i64 16, !646, i64 24, !646, i64 32, !646, i64 40, !646, i64 48, !646, i64 56, !646, i64 64, !646, i64 72, !646, i64 80, !646, i64 88, !646, i64 96, !646, i64 104, !822, i64 112, !822, i64 116, !906, i64 120, !955, i64 128, !647, i64 130, !647, i64 131, !646, i64 136, !906, i64 144, !646, i64 152, !646, i64 160, !646, i64 168, !646, i64 176, !906, i64 184, !822, i64 192, !647, i64 196}
!955 = !{!"short", !647, i64 0}
!956 = !DILocation(line: 1054, column: 15, scope: !951, inlinedAt: !893)
!957 = !DILocation(line: 1054, column: 15, scope: !883, inlinedAt: !893)
!958 = !DILocation(line: 1055, column: 13, scope: !951, inlinedAt: !893)
!959 = !DILocation(line: 1057, column: 18, scope: !876, inlinedAt: !893)
!960 = !DILocation(line: 1057, column: 48, scope: !876, inlinedAt: !893)
!961 = !DILocalVariable(name: "__stream", arg: 1, scope: !962, file: !945, line: 128, type: !789)
!962 = distinct !DISubprogram(name: "feof_unlocked", scope: !945, file: !945, line: 128, type: !946, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !963)
!963 = !{!961}
!964 = !DILocation(line: 0, scope: !962, inlinedAt: !965)
!965 = distinct !DILocation(line: 1057, column: 52, scope: !876, inlinedAt: !893)
!966 = distinct !{!966, !901, !967, !697}
!967 = !DILocation(line: 1057, column: 61, scope: !876, inlinedAt: !893)
!968 = !DILocation(line: 0, scope: !962, inlinedAt: !969)
!969 = distinct !DILocation(line: 1063, column: 29, scope: !888, inlinedAt: !893)
!970 = !DILocation(line: 130, column: 10, scope: !962, inlinedAt: !969)
!971 = !DILocation(line: 1063, column: 28, scope: !888, inlinedAt: !893)
!972 = !DILocation(line: 1063, column: 25, scope: !888, inlinedAt: !893)
!973 = !DILocation(line: 1063, column: 21, scope: !888, inlinedAt: !893)
!974 = !DILocation(line: 1063, column: 7, scope: !889, inlinedAt: !893)
!975 = distinct !{!975, !974, !976, !697}
!976 = !DILocation(line: 1075, column: 9, scope: !889, inlinedAt: !893)
!977 = !DILocation(line: 1065, column: 22, scope: !978, inlinedAt: !893)
!978 = distinct !DILexicalBlock(scope: !887, file: !3, line: 1065, column: 15)
!979 = !DILocation(line: 1067, column: 13, scope: !887, inlinedAt: !893)
!980 = !DILocation(line: 1068, column: 49, scope: !887, inlinedAt: !893)
!981 = !DILocation(line: 1068, column: 47, scope: !887, inlinedAt: !893)
!982 = !DILocation(line: 1068, column: 16, scope: !887, inlinedAt: !893)
!983 = !DILocation(line: 1070, column: 15, scope: !886, inlinedAt: !893)
!984 = !DILocation(line: 1070, column: 44, scope: !886, inlinedAt: !893)
!985 = !DILocation(line: 1070, column: 42, scope: !886, inlinedAt: !893)
!986 = !DILocation(line: 1070, column: 15, scope: !887, inlinedAt: !893)
!987 = !DILocation(line: 1071, column: 13, scope: !886, inlinedAt: !893)
!988 = !DILocation(line: 1063, column: 41, scope: !888, inlinedAt: !893)
!989 = !DILocation(line: 1073, column: 15, scope: !887, inlinedAt: !893)
!990 = !DILocation(line: 1074, column: 13, scope: !991, inlinedAt: !893)
!991 = distinct !DILexicalBlock(scope: !887, file: !3, line: 1073, column: 15)
!992 = !DILocation(line: 1076, column: 5, scope: !859, inlinedAt: !893)
!993 = !DILocation(line: 0, scope: !962, inlinedAt: !994)
!994 = distinct !DILocation(line: 1077, column: 11, scope: !859, inlinedAt: !893)
!995 = !DILocation(line: 1076, column: 5, scope: !876, inlinedAt: !893)
!996 = distinct !{!996, !899, !997, !697}
!997 = !DILocation(line: 1077, column: 20, scope: !859, inlinedAt: !893)
!998 = !DILocation(line: 1084, column: 1, scope: !859, inlinedAt: !893)
!999 = !DILocation(line: 1249, column: 5, scope: !855)
!1000 = !DILocalVariable(name: "in", arg: 1, scope: !1001, file: !3, line: 971, type: !789)
!1001 = distinct !DISubprogram(name: "do_encode", scope: !3, file: !3, line: 971, type: !1002, scopeLine: 972, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1004)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{null, !789, !789, !796}
!1004 = !{!1000, !1005, !1006, !1007, !1008, !1009, !1010, !1011}
!1005 = !DILocalVariable(name: "out", arg: 2, scope: !1001, file: !3, line: 971, type: !789)
!1006 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !1001, file: !3, line: 971, type: !796)
!1007 = !DILocalVariable(name: "current_column", scope: !1001, file: !3, line: 973, type: !33)
!1008 = !DILocalVariable(name: "inbuf", scope: !1001, file: !3, line: 974, type: !30)
!1009 = !DILocalVariable(name: "outbuf", scope: !1001, file: !3, line: 974, type: !30)
!1010 = !DILocalVariable(name: "sum", scope: !1001, file: !3, line: 975, type: !33)
!1011 = !DILocalVariable(name: "n", scope: !1012, file: !3, line: 982, type: !33)
!1012 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 981, column: 5)
!1013 = !DILocation(line: 0, scope: !1001, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 1251, column: 5, scope: !855)
!1015 = !DILocation(line: 977, column: 11, scope: !1001, inlinedAt: !1014)
!1016 = !DILocation(line: 978, column: 12, scope: !1001, inlinedAt: !1014)
!1017 = !DILocation(line: 980, column: 3, scope: !1001, inlinedAt: !1014)
!1018 = !DILocation(line: 973, column: 10, scope: !1001, inlinedAt: !1014)
!1019 = !DILocation(line: 985, column: 7, scope: !1012, inlinedAt: !1014)
!1020 = !DILocation(line: 0, scope: !1012, inlinedAt: !1014)
!1021 = !DILocation(line: 987, column: 15, scope: !1022, inlinedAt: !1014)
!1022 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 986, column: 9)
!1023 = !DILocation(line: 988, column: 15, scope: !1022, inlinedAt: !1014)
!1024 = !DILocation(line: 0, scope: !962, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 990, column: 15, scope: !1012, inlinedAt: !1014)
!1026 = !DILocation(line: 130, column: 10, scope: !962, inlinedAt: !1025)
!1027 = !DILocation(line: 990, column: 15, scope: !1012, inlinedAt: !1014)
!1028 = !DILocation(line: 990, column: 25, scope: !1012, inlinedAt: !1014)
!1029 = !DILocation(line: 0, scope: !944, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 990, column: 29, scope: !1012, inlinedAt: !1014)
!1031 = !DILocation(line: 990, column: 29, scope: !1012, inlinedAt: !1014)
!1032 = !DILocation(line: 990, column: 41, scope: !1012, inlinedAt: !1014)
!1033 = distinct !{!1033, !1019, !1034, !697}
!1034 = !DILocation(line: 990, column: 63, scope: !1012, inlinedAt: !1014)
!1035 = !DILocation(line: 992, column: 15, scope: !1036, inlinedAt: !1014)
!1036 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 992, column: 11)
!1037 = !DILocation(line: 992, column: 11, scope: !1012, inlinedAt: !1014)
!1038 = !DILocation(line: 996, column: 44, scope: !1039, inlinedAt: !1014)
!1039 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 993, column: 9)
!1040 = !DILocation(line: 996, column: 11, scope: !1039, inlinedAt: !1014)
!1041 = !DILocalVariable(name: "buffer", arg: 1, scope: !1042, file: !3, line: 936, type: !36)
!1042 = distinct !DISubprogram(name: "wrap_write", scope: !3, file: !3, line: 936, type: !1043, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1045)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !36, !33, !796, !196, !789}
!1045 = !{!1041, !1046, !1047, !1048, !1049, !1050, !1051, !1056, !1057, !1058, !1062, !1063, !1068, !1069}
!1046 = !DILocalVariable(name: "len", arg: 2, scope: !1042, file: !3, line: 936, type: !33)
!1047 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !1042, file: !3, line: 937, type: !796)
!1048 = !DILocalVariable(name: "current_column", arg: 4, scope: !1042, file: !3, line: 937, type: !196)
!1049 = !DILocalVariable(name: "out", arg: 5, scope: !1042, file: !3, line: 937, type: !789)
!1050 = !DILocalVariable(name: "written", scope: !1042, file: !3, line: 939, type: !33)
!1051 = !DILocalVariable(name: "__ptr", scope: !1052, file: !3, line: 944, type: !36)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 944, column: 11)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 944, column: 11)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 942, column: 5)
!1055 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 941, column: 7)
!1056 = !DILocalVariable(name: "__stream", scope: !1052, file: !3, line: 944, type: !789)
!1057 = !DILocalVariable(name: "__cnt", scope: !1052, file: !3, line: 944, type: !33)
!1058 = !DILocalVariable(name: "cols_remaining", scope: !1059, file: !3, line: 950, type: !796)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 949, column: 7)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 948, column: 5)
!1061 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 948, column: 5)
!1062 = !DILocalVariable(name: "to_write", scope: !1059, file: !3, line: 951, type: !33)
!1063 = !DILocalVariable(name: "__ptr", scope: !1064, file: !3, line: 962, type: !36)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 962, column: 17)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 962, column: 17)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 961, column: 11)
!1067 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 954, column: 13)
!1068 = !DILocalVariable(name: "__stream", scope: !1064, file: !3, line: 962, type: !789)
!1069 = !DILocalVariable(name: "__cnt", scope: !1064, file: !3, line: 962, type: !33)
!1070 = !DILocation(line: 0, scope: !1042, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 998, column: 11, scope: !1039, inlinedAt: !1014)
!1072 = !DILocation(line: 941, column: 7, scope: !1042, inlinedAt: !1071)
!1073 = !DILocation(line: 948, column: 31, scope: !1060, inlinedAt: !1071)
!1074 = !DILocation(line: 948, column: 5, scope: !1061, inlinedAt: !1071)
!1075 = !DILocation(line: 944, column: 11, scope: !1053, inlinedAt: !1071)
!1076 = !DILocation(line: 944, column: 43, scope: !1053, inlinedAt: !1071)
!1077 = !DILocation(line: 944, column: 11, scope: !1054, inlinedAt: !1071)
!1078 = !DILocation(line: 945, column: 9, scope: !1053, inlinedAt: !1071)
!1079 = !DILocation(line: 950, column: 48, scope: !1059, inlinedAt: !1071)
!1080 = !DILocation(line: 0, scope: !1059, inlinedAt: !1071)
!1081 = !DILocation(line: 952, column: 20, scope: !1059, inlinedAt: !1071)
!1082 = !DILocation(line: 954, column: 22, scope: !1067, inlinedAt: !1071)
!1083 = !DILocation(line: 954, column: 13, scope: !1059, inlinedAt: !1071)
!1084 = !DILocalVariable(name: "__c", arg: 1, scope: !1085, file: !945, line: 91, type: !47)
!1085 = distinct !DISubprogram(name: "fputc_unlocked", scope: !945, file: !945, line: 91, type: !1086, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1088)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!47, !47, !789}
!1088 = !{!1084, !1089}
!1089 = !DILocalVariable(name: "__stream", arg: 2, scope: !1085, file: !945, line: 91, type: !789)
!1090 = !DILocation(line: 0, scope: !1085, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 956, column: 17, scope: !1092, inlinedAt: !1071)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 956, column: 17)
!1093 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 955, column: 11)
!1094 = !DILocation(line: 93, column: 10, scope: !1085, inlinedAt: !1091)
!1095 = !{!954, !646, i64 40}
!1096 = !{!954, !646, i64 48}
!1097 = !{!"branch_weights", i32 2000, i32 1}
!1098 = !DILocation(line: 956, column: 17, scope: !1093, inlinedAt: !1071)
!1099 = !DILocation(line: 956, column: 35, scope: !1092, inlinedAt: !1071)
!1100 = !DILocation(line: 957, column: 15, scope: !1092, inlinedAt: !1071)
!1101 = !DILocation(line: 962, column: 17, scope: !1065, inlinedAt: !1071)
!1102 = !DILocation(line: 962, column: 64, scope: !1065, inlinedAt: !1071)
!1103 = !DILocation(line: 962, column: 17, scope: !1066, inlinedAt: !1071)
!1104 = !DILocation(line: 963, column: 15, scope: !1065, inlinedAt: !1071)
!1105 = !DILocation(line: 964, column: 29, scope: !1066, inlinedAt: !1071)
!1106 = !DILocation(line: 965, column: 21, scope: !1066, inlinedAt: !1071)
!1107 = !DILocation(line: 0, scope: !1067, inlinedAt: !1071)
!1108 = !DILocation(line: 0, scope: !1061, inlinedAt: !1071)
!1109 = distinct !{!1109, !1074, !1110, !697}
!1110 = !DILocation(line: 967, column: 7, scope: !1061, inlinedAt: !1071)
!1111 = !DILocation(line: 0, scope: !962, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 1002, column: 11, scope: !1001, inlinedAt: !1014)
!1113 = !DILocation(line: 130, column: 10, scope: !962, inlinedAt: !1112)
!1114 = !DILocation(line: 1002, column: 11, scope: !1001, inlinedAt: !1014)
!1115 = !DILocation(line: 1002, column: 21, scope: !1001, inlinedAt: !1014)
!1116 = !DILocation(line: 0, scope: !944, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 1002, column: 25, scope: !1001, inlinedAt: !1014)
!1118 = !DILocation(line: 1002, column: 25, scope: !1001, inlinedAt: !1014)
!1119 = !DILocation(line: 1002, column: 37, scope: !1001, inlinedAt: !1014)
!1120 = distinct !{!1120, !1017, !1121, !697}
!1121 = !DILocation(line: 1002, column: 60, scope: !1001, inlinedAt: !1014)
!1122 = !DILocation(line: 1005, column: 7, scope: !1123, inlinedAt: !1014)
!1123 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 1005, column: 7)
!1124 = !DILocation(line: 1005, column: 19, scope: !1123, inlinedAt: !1014)
!1125 = !DILocation(line: 0, scope: !1085, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 1005, column: 44, scope: !1123, inlinedAt: !1014)
!1127 = !DILocation(line: 93, column: 10, scope: !1085, inlinedAt: !1126)
!1128 = !DILocation(line: 1005, column: 7, scope: !1001, inlinedAt: !1014)
!1129 = !DILocation(line: 1005, column: 62, scope: !1123, inlinedAt: !1014)
!1130 = !DILocation(line: 1006, column: 5, scope: !1123, inlinedAt: !1014)
!1131 = !DILocation(line: 0, scope: !944, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 1008, column: 7, scope: !1133, inlinedAt: !1014)
!1133 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 1008, column: 7)
!1134 = !DILocation(line: 137, column: 10, scope: !944, inlinedAt: !1132)
!1135 = !DILocation(line: 1008, column: 7, scope: !1133, inlinedAt: !1014)
!1136 = !DILocation(line: 1008, column: 7, scope: !1001, inlinedAt: !1014)
!1137 = !DILocation(line: 1009, column: 5, scope: !1133, inlinedAt: !1014)
!1138 = !DILocation(line: 1253, column: 7, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !780, file: !3, line: 1253, column: 7)
!1140 = !DILocation(line: 1253, column: 25, scope: !1139)
!1141 = !DILocation(line: 1253, column: 7, scope: !780)
!1142 = !DILocation(line: 1255, column: 11, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 1255, column: 11)
!1144 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 1254, column: 5)
!1145 = !DILocation(line: 0, scope: !1143)
!1146 = !DILocation(line: 1255, column: 11, scope: !1144)
!1147 = !DILocation(line: 1256, column: 9, scope: !1143)
!1148 = !DILocation(line: 1258, column: 9, scope: !1143)
!1149 = !DILocation(line: 1262, column: 1, scope: !780)
!1150 = !DISubprogram(name: "bindtextdomain", scope: !718, file: !718, line: 86, type: !1151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!30, !36, !36}
!1153 = !DISubprogram(name: "textdomain", scope: !718, file: !718, line: 82, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!30, !36}
!1156 = !DISubprogram(name: "atexit", scope: !1157, file: !1157, line: 595, type: !1158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!1157 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!47, !1160}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!1161 = !DISubprogram(name: "getopt_long", scope: !43, file: !43, line: 66, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!47, !47, !1164, !36, !1166, !49}
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!1167 = !DISubprogram(name: "error", scope: !1168, file: !1168, line: 52, type: !1169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!1168 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !47, !47, !36, null}
!1171 = !DISubprogram(name: "fwrite_unlocked", scope: !722, file: !722, line: 680, type: !1172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!35, !928, !35, !35, !725}
!1174 = !DILocation(line: 0, scope: !61)
!1175 = !DILocation(line: 71, column: 10, scope: !61)
!1176 = !DILocation(line: 71, column: 16, scope: !61)
!1177 = !DILocation(line: 71, column: 3, scope: !61)
!1178 = !DILocation(line: 73, column: 34, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !61, file: !62, line: 72, column: 5)
!1180 = !DILocation(line: 73, column: 41, scope: !1179)
!1181 = !DILocation(line: 73, column: 16, scope: !1179)
!1182 = !DILocation(line: 73, column: 11, scope: !1179)
!1183 = !DILocation(line: 73, column: 14, scope: !1179)
!1184 = !DILocation(line: 74, column: 12, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1179, file: !62, line: 74, column: 11)
!1186 = !DILocation(line: 74, column: 11, scope: !1179)
!1187 = !DILocation(line: 76, column: 35, scope: !1179)
!1188 = !DILocation(line: 76, column: 25, scope: !1179)
!1189 = !DILocation(line: 76, column: 42, scope: !1179)
!1190 = !DILocation(line: 77, column: 27, scope: !1179)
!1191 = !DILocation(line: 77, column: 47, scope: !1179)
!1192 = !DILocation(line: 77, column: 54, scope: !1179)
!1193 = !DILocation(line: 77, column: 24, scope: !1179)
!1194 = !DILocation(line: 78, column: 23, scope: !1179)
!1195 = !DILocation(line: 76, column: 16, scope: !1179)
!1196 = !DILocation(line: 76, column: 11, scope: !1179)
!1197 = !DILocation(line: 76, column: 14, scope: !1179)
!1198 = !DILocation(line: 79, column: 12, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1179, file: !62, line: 79, column: 11)
!1200 = !DILocation(line: 79, column: 11, scope: !1179)
!1201 = !DILocation(line: 82, column: 10, scope: !1179)
!1202 = !DILocation(line: 81, column: 14, scope: !1179)
!1203 = !DILocation(line: 85, column: 12, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1179, file: !62, line: 85, column: 11)
!1205 = !DILocation(line: 85, column: 11, scope: !1179)
!1206 = !DILocation(line: 83, column: 30, scope: !1179)
!1207 = !DILocation(line: 83, column: 37, scope: !1179)
!1208 = !DILocation(line: 83, column: 43, scope: !1179)
!1209 = !DILocation(line: 83, column: 12, scope: !1179)
!1210 = !DILocation(line: 81, column: 11, scope: !1179)
!1211 = !DILocation(line: 89, column: 31, scope: !1179)
!1212 = !DILocation(line: 89, column: 21, scope: !1179)
!1213 = !DILocation(line: 89, column: 38, scope: !1179)
!1214 = !DILocation(line: 90, column: 23, scope: !1179)
!1215 = !DILocation(line: 91, column: 19, scope: !1179)
!1216 = !DILocation(line: 89, column: 12, scope: !1179)
!1217 = !DILocation(line: 87, column: 14, scope: !1179)
!1218 = !DILocation(line: 93, column: 12, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1179, file: !62, line: 93, column: 11)
!1220 = !DILocation(line: 93, column: 11, scope: !1179)
!1221 = !DILocation(line: 90, column: 43, scope: !1179)
!1222 = !DILocation(line: 90, column: 50, scope: !1179)
!1223 = !DILocation(line: 97, column: 31, scope: !1179)
!1224 = !DILocation(line: 97, column: 21, scope: !1179)
!1225 = !DILocation(line: 97, column: 38, scope: !1179)
!1226 = !DILocation(line: 98, column: 23, scope: !1179)
!1227 = !DILocation(line: 98, column: 43, scope: !1179)
!1228 = !DILocation(line: 98, column: 50, scope: !1179)
!1229 = !DILocation(line: 98, column: 20, scope: !1179)
!1230 = !DILocation(line: 99, column: 19, scope: !1179)
!1231 = !DILocation(line: 97, column: 12, scope: !1179)
!1232 = !DILocation(line: 96, column: 10, scope: !1179)
!1233 = !DILocation(line: 0, scope: !1179)
!1234 = !DILocation(line: 87, column: 11, scope: !1179)
!1235 = !DILocation(line: 95, column: 11, scope: !1179)
!1236 = !DILocation(line: 95, column: 14, scope: !1179)
!1237 = !DILocation(line: 101, column: 12, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1179, file: !62, line: 101, column: 11)
!1239 = !DILocation(line: 101, column: 11, scope: !1179)
!1240 = !DILocation(line: 104, column: 10, scope: !1179)
!1241 = !DILocation(line: 103, column: 14, scope: !1179)
!1242 = !DILocation(line: 107, column: 12, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1179, file: !62, line: 107, column: 11)
!1244 = !DILocation(line: 107, column: 11, scope: !1179)
!1245 = !DILocation(line: 105, column: 30, scope: !1179)
!1246 = !DILocation(line: 105, column: 37, scope: !1179)
!1247 = !DILocation(line: 105, column: 43, scope: !1179)
!1248 = !DILocation(line: 105, column: 12, scope: !1179)
!1249 = !DILocation(line: 103, column: 11, scope: !1179)
!1250 = !DILocation(line: 111, column: 31, scope: !1179)
!1251 = !DILocation(line: 111, column: 21, scope: !1179)
!1252 = !DILocation(line: 111, column: 38, scope: !1179)
!1253 = !DILocation(line: 112, column: 23, scope: !1179)
!1254 = !DILocation(line: 113, column: 19, scope: !1179)
!1255 = !DILocation(line: 111, column: 12, scope: !1179)
!1256 = !DILocation(line: 109, column: 14, scope: !1179)
!1257 = !DILocation(line: 115, column: 12, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1179, file: !62, line: 115, column: 11)
!1259 = !DILocation(line: 115, column: 11, scope: !1179)
!1260 = !DILocation(line: 112, column: 43, scope: !1179)
!1261 = !DILocation(line: 112, column: 50, scope: !1179)
!1262 = !DILocation(line: 117, column: 41, scope: !1179)
!1263 = !DILocation(line: 117, column: 48, scope: !1179)
!1264 = !DILocation(line: 117, column: 24, scope: !1179)
!1265 = !DILocation(line: 117, column: 16, scope: !1179)
!1266 = !DILocation(line: 109, column: 11, scope: !1179)
!1267 = !DILocation(line: 117, column: 14, scope: !1179)
!1268 = !DILocation(line: 118, column: 12, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1179, file: !62, line: 118, column: 11)
!1270 = !DILocation(line: 118, column: 11, scope: !1179)
!1271 = !DILocation(line: 117, column: 11, scope: !1179)
!1272 = !DILocation(line: 120, column: 11, scope: !1179)
!1273 = !DILocation(line: 122, column: 11, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1179, file: !62, line: 122, column: 11)
!1275 = !DILocation(line: 122, column: 11, scope: !1179)
!1276 = distinct !{!1276, !1177, !1277, !697}
!1277 = !DILocation(line: 124, column: 5, scope: !61)
!1278 = !DILocation(line: 126, column: 7, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !61, file: !62, line: 126, column: 7)
!1280 = !DILocation(line: 126, column: 7, scope: !61)
!1281 = !DILocation(line: 127, column: 10, scope: !1279)
!1282 = !DILocation(line: 127, column: 5, scope: !1279)
!1283 = !DILocation(line: 128, column: 1, scope: !61)
!1284 = distinct !DISubprogram(name: "base32_encode_alloc", scope: !62, file: !62, line: 140, type: !1285, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !1287)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!33, !36, !33, !783}
!1287 = !{!1288, !1289, !1290, !1291}
!1288 = !DILocalVariable(name: "in", arg: 1, scope: !1284, file: !62, line: 140, type: !36)
!1289 = !DILocalVariable(name: "inlen", arg: 2, scope: !1284, file: !62, line: 140, type: !33)
!1290 = !DILocalVariable(name: "out", arg: 3, scope: !1284, file: !62, line: 140, type: !783)
!1291 = !DILocalVariable(name: "outlen", scope: !1284, file: !62, line: 142, type: !33)
!1292 = !DILocation(line: 0, scope: !1284)
!1293 = !DILocation(line: 142, column: 23, scope: !1284)
!1294 = !DILocation(line: 142, column: 21, scope: !1284)
!1295 = !DILocation(line: 150, column: 13, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1284, file: !62, line: 150, column: 7)
!1297 = !DILocation(line: 150, column: 7, scope: !1284)
!1298 = !DILocation(line: 152, column: 12, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !62, line: 151, column: 5)
!1300 = !DILocation(line: 153, column: 7, scope: !1299)
!1301 = !DILocation(line: 156, column: 10, scope: !1284)
!1302 = !DILocation(line: 156, column: 8, scope: !1284)
!1303 = !DILocation(line: 157, column: 8, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1284, file: !62, line: 157, column: 7)
!1305 = !DILocation(line: 157, column: 7, scope: !1284)
!1306 = !DILocation(line: 160, column: 3, scope: !1284)
!1307 = !DILocation(line: 162, column: 3, scope: !1284)
!1308 = !DILocation(line: 163, column: 1, scope: !1284)
!1309 = distinct !DISubprogram(name: "isbase32", scope: !62, file: !62, line: 286, type: !1310, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !1312)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!92, !31}
!1312 = !{!1313}
!1313 = !DILocalVariable(name: "ch", arg: 1, scope: !1309, file: !62, line: 286, type: !31)
!1314 = !DILocation(line: 0, scope: !1309)
!1315 = !DILocation(line: 288, column: 49, scope: !1309)
!1316 = !DILocation(line: 288, column: 46, scope: !1309)
!1317 = !DILocation(line: 288, column: 3, scope: !1309)
!1318 = distinct !DISubprogram(name: "base32_decode_ctx_init", scope: !62, file: !62, line: 293, type: !1319, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !1326)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{null, !1321}
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base32_decode_context", file: !870, line: 31, size: 96, elements: !1323)
!1323 = !{!1324, !1325}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1322, file: !870, line: 33, baseType: !7, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1322, file: !870, line: 34, baseType: !874, size: 64, offset: 32)
!1326 = !{!1327}
!1327 = !DILocalVariable(name: "ctx", arg: 1, scope: !1318, file: !62, line: 293, type: !1321)
!1328 = !DILocation(line: 0, scope: !1318)
!1329 = !DILocation(line: 295, column: 8, scope: !1318)
!1330 = !DILocation(line: 295, column: 10, scope: !1318)
!1331 = !{!1332, !822, i64 0}
!1332 = !{!"base32_decode_context", !822, i64 0, !647, i64 4}
!1333 = !DILocation(line: 296, column: 1, scope: !1318)
!1334 = distinct !DISubprogram(name: "base32_decode_ctx", scope: !62, file: !62, line: 470, type: !1335, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !1337)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!92, !1321, !65, !33, !66, !196}
!1337 = !{!1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1349, !1351}
!1338 = !DILocalVariable(name: "ctx", arg: 1, scope: !1334, file: !62, line: 470, type: !1321)
!1339 = !DILocalVariable(name: "in", arg: 2, scope: !1334, file: !62, line: 471, type: !65)
!1340 = !DILocalVariable(name: "inlen", arg: 3, scope: !1334, file: !62, line: 471, type: !33)
!1341 = !DILocalVariable(name: "out", arg: 4, scope: !1334, file: !62, line: 472, type: !66)
!1342 = !DILocalVariable(name: "outlen", arg: 5, scope: !1334, file: !62, line: 472, type: !196)
!1343 = !DILocalVariable(name: "outleft", scope: !1334, file: !62, line: 474, type: !33)
!1344 = !DILocalVariable(name: "ignore_newlines", scope: !1334, file: !62, line: 475, type: !92)
!1345 = !DILocalVariable(name: "flush_ctx", scope: !1334, file: !62, line: 476, type: !92)
!1346 = !DILocalVariable(name: "ctx_i", scope: !1334, file: !62, line: 477, type: !7)
!1347 = !DILocalVariable(name: "outleft_save", scope: !1348, file: !62, line: 488, type: !33)
!1348 = distinct !DILexicalBlock(scope: !1334, file: !62, line: 487, column: 5)
!1349 = !DILocalVariable(name: "in_end", scope: !1350, file: !62, line: 521, type: !36)
!1350 = distinct !DILexicalBlock(scope: !1348, file: !62, line: 520, column: 7)
!1351 = !DILocalVariable(name: "non_nl", scope: !1350, file: !62, line: 522, type: !36)
!1352 = !DILocation(line: 0, scope: !1334)
!1353 = !DILocation(line: 474, column: 3, scope: !1334)
!1354 = !DILocation(line: 474, column: 20, scope: !1334)
!1355 = !DILocation(line: 474, column: 10, scope: !1334)
!1356 = !DILocation(line: 475, column: 30, scope: !1334)
!1357 = !DILocation(line: 479, column: 7, scope: !1334)
!1358 = !DILocation(line: 481, column: 20, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !62, line: 480, column: 5)
!1360 = distinct !DILexicalBlock(scope: !1334, file: !62, line: 479, column: 7)
!1361 = !DILocation(line: 482, column: 25, scope: !1359)
!1362 = !DILocation(line: 483, column: 5, scope: !1359)
!1363 = !DILocation(line: 486, column: 3, scope: !1334)
!1364 = !DILocation(line: 488, column: 29, scope: !1348)
!1365 = !DILocation(line: 0, scope: !1348)
!1366 = !DILocation(line: 489, column: 22, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1348, file: !62, line: 489, column: 11)
!1368 = !DILocation(line: 496, column: 20, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !62, line: 496, column: 19)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !62, line: 492, column: 13)
!1371 = distinct !DILexicalBlock(scope: !1367, file: !62, line: 490, column: 9)
!1372 = !DILocation(line: 496, column: 19, scope: !1370)
!1373 = !DILocation(line: 499, column: 18, scope: !1370)
!1374 = !DILocation(line: 500, column: 21, scope: !1370)
!1375 = !DILocation(line: 495, column: 30, scope: !1370)
!1376 = distinct !{!1376, !1377, !1378}
!1377 = !DILocation(line: 491, column: 11, scope: !1371)
!1378 = !DILocation(line: 501, column: 13, scope: !1371)
!1379 = !DILocation(line: 504, column: 17, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1348, file: !62, line: 504, column: 11)
!1381 = !DILocation(line: 504, column: 22, scope: !1380)
!1382 = !DILocation(line: 509, column: 17, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1348, file: !62, line: 509, column: 11)
!1384 = !DILocation(line: 509, column: 20, scope: !1383)
!1385 = !DILocation(line: 509, column: 24, scope: !1383)
!1386 = !DILocation(line: 509, column: 32, scope: !1383)
!1387 = !DILocation(line: 511, column: 11, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1383, file: !62, line: 510, column: 9)
!1389 = !DILocation(line: 512, column: 11, scope: !1388)
!1390 = !DILocation(line: 513, column: 11, scope: !1388)
!1391 = distinct !{!1391, !1363, !1392}
!1392 = !DILocation(line: 542, column: 5, scope: !1334)
!1393 = !DILocation(line: 517, column: 29, scope: !1348)
!1394 = !DILocation(line: 517, column: 27, scope: !1348)
!1395 = !DILocation(line: 517, column: 11, scope: !1348)
!1396 = !DILocation(line: 518, column: 15, scope: !1348)
!1397 = !DILocation(line: 521, column: 33, scope: !1350)
!1398 = !DILocation(line: 0, scope: !1350)
!1399 = !DILocation(line: 524, column: 13, scope: !1350)
!1400 = !DILocalVariable(name: "ctx", arg: 1, scope: !1401, file: !62, line: 306, type: !1321)
!1401 = distinct !DISubprogram(name: "get_8", scope: !62, file: !62, line: 306, type: !1402, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !1405)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!30, !1321, !1404, !65, !196}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!1405 = !{!1400, !1406, !1407, !1408, !1409, !1412, !1414}
!1406 = !DILocalVariable(name: "in", arg: 2, scope: !1401, file: !62, line: 307, type: !1404)
!1407 = !DILocalVariable(name: "in_end", arg: 3, scope: !1401, file: !62, line: 307, type: !65)
!1408 = !DILocalVariable(name: "n_non_newline", arg: 4, scope: !1401, file: !62, line: 308, type: !196)
!1409 = !DILocalVariable(name: "t", scope: !1410, file: !62, line: 315, type: !36)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !62, line: 314, column: 5)
!1411 = distinct !DILexicalBlock(scope: !1401, file: !62, line: 313, column: 7)
!1412 = !DILocalVariable(name: "p", scope: !1413, file: !62, line: 327, type: !36)
!1413 = distinct !DILexicalBlock(scope: !1401, file: !62, line: 325, column: 3)
!1414 = !DILocalVariable(name: "c", scope: !1415, file: !62, line: 330, type: !31)
!1415 = distinct !DILexicalBlock(scope: !1413, file: !62, line: 329, column: 7)
!1416 = !DILocation(line: 0, scope: !1401, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 525, column: 20, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1350, file: !62, line: 524, column: 13)
!1419 = !DILocation(line: 310, column: 12, scope: !1420, inlinedAt: !1417)
!1420 = distinct !DILexicalBlock(scope: !1401, file: !62, line: 310, column: 7)
!1421 = !{!1422}
!1422 = distinct !{!1422, !1423, !"get_8: argument 0"}
!1423 = distinct !{!1423, !"get_8"}
!1424 = !DILocation(line: 310, column: 7, scope: !1401, inlinedAt: !1417)
!1425 = !DILocation(line: 311, column: 12, scope: !1420, inlinedAt: !1417)
!1426 = !DILocation(line: 313, column: 7, scope: !1401, inlinedAt: !1417)
!1427 = !DILocation(line: 0, scope: !1410, inlinedAt: !1417)
!1428 = !DILocation(line: 316, column: 13, scope: !1429, inlinedAt: !1417)
!1429 = distinct !DILexicalBlock(scope: !1410, file: !62, line: 316, column: 11)
!1430 = !DILocation(line: 316, column: 29, scope: !1429, inlinedAt: !1417)
!1431 = !DILocation(line: 316, column: 32, scope: !1429, inlinedAt: !1417)
!1432 = !DILocation(line: 316, column: 52, scope: !1429, inlinedAt: !1417)
!1433 = !DILocation(line: 316, column: 11, scope: !1410, inlinedAt: !1417)
!1434 = !DILocation(line: 319, column: 15, scope: !1435, inlinedAt: !1417)
!1435 = distinct !DILexicalBlock(scope: !1429, file: !62, line: 317, column: 9)
!1436 = !DILocation(line: 532, column: 38, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1350, file: !62, line: 532, column: 13)
!1438 = !DILocation(line: 0, scope: !1413, inlinedAt: !1417)
!1439 = !DILocation(line: 328, column: 14, scope: !1413, inlinedAt: !1417)
!1440 = !DILocation(line: 328, column: 5, scope: !1413, inlinedAt: !1417)
!1441 = !DILocation(line: 331, column: 13, scope: !1415, inlinedAt: !1417)
!1442 = !DILocation(line: 330, column: 20, scope: !1415, inlinedAt: !1417)
!1443 = !DILocation(line: 330, column: 18, scope: !1415, inlinedAt: !1417)
!1444 = !DILocation(line: 0, scope: !1415, inlinedAt: !1417)
!1445 = !DILocation(line: 331, column: 15, scope: !1446, inlinedAt: !1417)
!1446 = distinct !DILexicalBlock(scope: !1415, file: !62, line: 331, column: 13)
!1447 = !DILocation(line: 333, column: 28, scope: !1448, inlinedAt: !1417)
!1448 = distinct !DILexicalBlock(scope: !1446, file: !62, line: 332, column: 11)
!1449 = !DILocation(line: 333, column: 13, scope: !1448, inlinedAt: !1417)
!1450 = !DILocation(line: 333, column: 32, scope: !1448, inlinedAt: !1417)
!1451 = !DILocation(line: 334, column: 24, scope: !1452, inlinedAt: !1417)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !62, line: 334, column: 17)
!1453 = !DILocation(line: 334, column: 17, scope: !1448, inlinedAt: !1417)
!1454 = !DILocation(line: 340, column: 27, scope: !1413, inlinedAt: !1417)
!1455 = !DILocation(line: 340, column: 22, scope: !1413, inlinedAt: !1417)
!1456 = !DILocation(line: 0, scope: !1418)
!1457 = !DILocation(line: 532, column: 19, scope: !1437)
!1458 = !DILocation(line: 532, column: 24, scope: !1437)
!1459 = !DILocation(line: 532, column: 34, scope: !1437)
!1460 = !DILocation(line: 537, column: 14, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1350, file: !62, line: 537, column: 13)
!1462 = !DILocation(line: 537, column: 13, scope: !1350)
!1463 = !DILocation(line: 540, column: 24, scope: !1350)
!1464 = !DILocation(line: 544, column: 14, scope: !1334)
!1465 = !DILocation(line: 544, column: 11, scope: !1334)
!1466 = !DILocation(line: 546, column: 16, scope: !1334)
!1467 = !DILocation(line: 547, column: 1, scope: !1334)
!1468 = !DILocation(line: 546, column: 3, scope: !1334)
!1469 = distinct !DISubprogram(name: "decode_8", scope: !62, file: !62, line: 360, type: !1470, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !1473)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!92, !65, !33, !1472, !196}
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!1473 = !{!1474, !1475, !1476, !1477, !1478}
!1474 = !DILocalVariable(name: "in", arg: 1, scope: !1469, file: !62, line: 360, type: !65)
!1475 = !DILocalVariable(name: "inlen", arg: 2, scope: !1469, file: !62, line: 360, type: !33)
!1476 = !DILocalVariable(name: "outp", arg: 3, scope: !1469, file: !62, line: 361, type: !1472)
!1477 = !DILocalVariable(name: "outleft", arg: 4, scope: !1469, file: !62, line: 361, type: !196)
!1478 = !DILocalVariable(name: "out", scope: !1469, file: !62, line: 363, type: !30)
!1479 = !DILocation(line: 0, scope: !1469)
!1480 = !DILocation(line: 363, column: 15, scope: !1469)
!1481 = !DILocation(line: 364, column: 13, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1469, file: !62, line: 364, column: 7)
!1483 = !DILocation(line: 364, column: 7, scope: !1469)
!1484 = !DILocation(line: 367, column: 18, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1469, file: !62, line: 367, column: 7)
!1486 = !DILocation(line: 0, scope: !1309, inlinedAt: !1487)
!1487 = distinct !DILocation(line: 367, column: 8, scope: !1485)
!1488 = !DILocation(line: 288, column: 49, scope: !1309, inlinedAt: !1487)
!1489 = !DILocation(line: 288, column: 46, scope: !1309, inlinedAt: !1487)
!1490 = !DILocation(line: 367, column: 25, scope: !1485)
!1491 = !DILocation(line: 367, column: 39, scope: !1485)
!1492 = !DILocation(line: 0, scope: !1309, inlinedAt: !1493)
!1493 = distinct !DILocation(line: 367, column: 29, scope: !1485)
!1494 = !DILocation(line: 288, column: 49, scope: !1309, inlinedAt: !1493)
!1495 = !DILocation(line: 288, column: 46, scope: !1309, inlinedAt: !1493)
!1496 = !DILocation(line: 367, column: 7, scope: !1469)
!1497 = !DILocation(line: 370, column: 7, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1469, file: !62, line: 370, column: 7)
!1499 = !DILocation(line: 370, column: 7, scope: !1469)
!1500 = !DILocation(line: 372, column: 40, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1498, file: !62, line: 371, column: 5)
!1502 = !DILocation(line: 373, column: 42, scope: !1501)
!1503 = !DILocation(line: 373, column: 17, scope: !1501)
!1504 = !DILocation(line: 372, column: 11, scope: !1501)
!1505 = !DILocation(line: 372, column: 14, scope: !1501)
!1506 = !DILocation(line: 374, column: 7, scope: !1501)
!1507 = !DILocation(line: 375, column: 5, scope: !1501)
!1508 = !DILocation(line: 377, column: 7, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1469, file: !62, line: 377, column: 7)
!1510 = !DILocation(line: 377, column: 13, scope: !1509)
!1511 = !DILocation(line: 377, column: 7, scope: !1469)
!1512 = !DILocation(line: 379, column: 11, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !62, line: 379, column: 11)
!1514 = distinct !DILexicalBlock(scope: !1509, file: !62, line: 378, column: 5)
!1515 = !DILocation(line: 379, column: 17, scope: !1513)
!1516 = !DILocation(line: 379, column: 24, scope: !1513)
!1517 = !DILocation(line: 379, column: 27, scope: !1513)
!1518 = !DILocation(line: 379, column: 33, scope: !1513)
!1519 = !DILocation(line: 379, column: 40, scope: !1513)
!1520 = !DILocation(line: 379, column: 43, scope: !1513)
!1521 = !DILocation(line: 379, column: 49, scope: !1513)
!1522 = !DILocation(line: 380, column: 11, scope: !1513)
!1523 = !DILocation(line: 380, column: 14, scope: !1513)
!1524 = !DILocation(line: 380, column: 20, scope: !1513)
!1525 = !DILocation(line: 380, column: 27, scope: !1513)
!1526 = !DILocation(line: 380, column: 30, scope: !1513)
!1527 = !DILocation(line: 380, column: 36, scope: !1513)
!1528 = !DILocation(line: 379, column: 11, scope: !1514)
!1529 = !DILocation(line: 381, column: 9, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1513, file: !62, line: 381, column: 9)
!1531 = !DILocation(line: 0, scope: !1309, inlinedAt: !1532)
!1532 = distinct !DILocation(line: 385, column: 12, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !62, line: 385, column: 11)
!1534 = distinct !DILexicalBlock(scope: !1509, file: !62, line: 384, column: 5)
!1535 = !DILocation(line: 288, column: 49, scope: !1309, inlinedAt: !1532)
!1536 = !DILocation(line: 288, column: 46, scope: !1309, inlinedAt: !1532)
!1537 = !DILocation(line: 385, column: 29, scope: !1533)
!1538 = !DILocation(line: 385, column: 43, scope: !1533)
!1539 = !DILocation(line: 0, scope: !1309, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 385, column: 33, scope: !1533)
!1541 = !DILocation(line: 288, column: 49, scope: !1309, inlinedAt: !1540)
!1542 = !DILocation(line: 288, column: 46, scope: !1309, inlinedAt: !1540)
!1543 = !DILocation(line: 385, column: 11, scope: !1534)
!1544 = !DILocation(line: 386, column: 9, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1533, file: !62, line: 386, column: 9)
!1546 = !DILocation(line: 388, column: 11, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1534, file: !62, line: 388, column: 11)
!1548 = !DILocation(line: 388, column: 11, scope: !1534)
!1549 = !DILocation(line: 390, column: 44, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1547, file: !62, line: 389, column: 9)
!1551 = !DILocation(line: 391, column: 46, scope: !1550)
!1552 = !DILocation(line: 391, column: 21, scope: !1550)
!1553 = !DILocation(line: 392, column: 46, scope: !1550)
!1554 = !DILocation(line: 392, column: 21, scope: !1550)
!1555 = !DILocation(line: 390, column: 15, scope: !1550)
!1556 = !DILocation(line: 390, column: 18, scope: !1550)
!1557 = !DILocation(line: 393, column: 11, scope: !1550)
!1558 = !DILocation(line: 394, column: 9, scope: !1550)
!1559 = !DILocation(line: 396, column: 11, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1534, file: !62, line: 396, column: 11)
!1561 = !DILocation(line: 396, column: 17, scope: !1560)
!1562 = !DILocation(line: 396, column: 11, scope: !1534)
!1563 = !DILocation(line: 398, column: 15, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !62, line: 398, column: 15)
!1565 = distinct !DILexicalBlock(scope: !1560, file: !62, line: 397, column: 9)
!1566 = !DILocation(line: 398, column: 21, scope: !1564)
!1567 = !DILocation(line: 398, column: 28, scope: !1564)
!1568 = !DILocation(line: 398, column: 31, scope: !1564)
!1569 = !DILocation(line: 398, column: 37, scope: !1564)
!1570 = !DILocation(line: 398, column: 44, scope: !1564)
!1571 = !DILocation(line: 398, column: 47, scope: !1564)
!1572 = !DILocation(line: 398, column: 53, scope: !1564)
!1573 = !DILocation(line: 398, column: 15, scope: !1565)
!1574 = !DILocation(line: 399, column: 13, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1564, file: !62, line: 399, column: 13)
!1576 = !DILocation(line: 0, scope: !1309, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 403, column: 16, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !62, line: 403, column: 15)
!1579 = distinct !DILexicalBlock(scope: !1560, file: !62, line: 402, column: 9)
!1580 = !DILocation(line: 288, column: 49, scope: !1309, inlinedAt: !1577)
!1581 = !DILocation(line: 288, column: 46, scope: !1309, inlinedAt: !1577)
!1582 = !DILocation(line: 403, column: 15, scope: !1579)
!1583 = !DILocation(line: 404, column: 13, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1578, file: !62, line: 404, column: 13)
!1585 = !DILocation(line: 406, column: 15, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1579, file: !62, line: 406, column: 15)
!1587 = !DILocation(line: 406, column: 15, scope: !1579)
!1588 = !DILocation(line: 408, column: 48, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1586, file: !62, line: 407, column: 13)
!1590 = !DILocation(line: 409, column: 50, scope: !1589)
!1591 = !DILocation(line: 409, column: 25, scope: !1589)
!1592 = !DILocation(line: 408, column: 19, scope: !1589)
!1593 = !DILocation(line: 408, column: 22, scope: !1589)
!1594 = !DILocation(line: 410, column: 15, scope: !1589)
!1595 = !DILocation(line: 411, column: 13, scope: !1589)
!1596 = !DILocation(line: 0, scope: !1534)
!1597 = !DILocation(line: 413, column: 15, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1579, file: !62, line: 413, column: 15)
!1599 = !DILocation(line: 413, column: 21, scope: !1598)
!1600 = !DILocation(line: 413, column: 15, scope: !1579)
!1601 = !DILocation(line: 415, column: 19, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !62, line: 415, column: 19)
!1603 = distinct !DILexicalBlock(scope: !1598, file: !62, line: 414, column: 13)
!1604 = !DILocation(line: 415, column: 25, scope: !1602)
!1605 = !DILocation(line: 415, column: 32, scope: !1602)
!1606 = !DILocation(line: 415, column: 35, scope: !1602)
!1607 = !DILocation(line: 415, column: 41, scope: !1602)
!1608 = !DILocation(line: 415, column: 19, scope: !1603)
!1609 = !DILocation(line: 416, column: 17, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1602, file: !62, line: 416, column: 17)
!1611 = !DILocation(line: 0, scope: !1309, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 420, column: 20, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !62, line: 420, column: 19)
!1614 = distinct !DILexicalBlock(scope: !1598, file: !62, line: 419, column: 13)
!1615 = !DILocation(line: 288, column: 49, scope: !1309, inlinedAt: !1612)
!1616 = !DILocation(line: 288, column: 46, scope: !1309, inlinedAt: !1612)
!1617 = !DILocation(line: 420, column: 37, scope: !1613)
!1618 = !DILocation(line: 420, column: 51, scope: !1613)
!1619 = !DILocation(line: 0, scope: !1309, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 420, column: 41, scope: !1613)
!1621 = !DILocation(line: 288, column: 49, scope: !1309, inlinedAt: !1620)
!1622 = !DILocation(line: 288, column: 46, scope: !1309, inlinedAt: !1620)
!1623 = !DILocation(line: 420, column: 19, scope: !1614)
!1624 = !DILocation(line: 421, column: 17, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1613, file: !62, line: 421, column: 17)
!1626 = !DILocation(line: 423, column: 19, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1614, file: !62, line: 423, column: 19)
!1628 = !DILocation(line: 423, column: 19, scope: !1614)
!1629 = !DILocation(line: 425, column: 44, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1627, file: !62, line: 424, column: 17)
!1631 = !DILocation(line: 425, column: 30, scope: !1630)
!1632 = !DILocation(line: 425, column: 52, scope: !1630)
!1633 = !DILocation(line: 426, column: 54, scope: !1630)
!1634 = !DILocation(line: 427, column: 54, scope: !1630)
!1635 = !DILocation(line: 426, column: 29, scope: !1630)
!1636 = !DILocation(line: 427, column: 29, scope: !1630)
!1637 = !DILocation(line: 425, column: 23, scope: !1630)
!1638 = !DILocation(line: 425, column: 26, scope: !1630)
!1639 = !DILocation(line: 428, column: 19, scope: !1630)
!1640 = !DILocation(line: 429, column: 17, scope: !1630)
!1641 = !DILocation(line: 0, scope: !1579)
!1642 = !DILocation(line: 431, column: 19, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1614, file: !62, line: 431, column: 19)
!1644 = !DILocation(line: 431, column: 25, scope: !1643)
!1645 = !DILocation(line: 431, column: 19, scope: !1614)
!1646 = !DILocation(line: 0, scope: !1309, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 433, column: 24, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !62, line: 433, column: 23)
!1649 = distinct !DILexicalBlock(scope: !1643, file: !62, line: 432, column: 17)
!1650 = !DILocation(line: 288, column: 49, scope: !1309, inlinedAt: !1647)
!1651 = !DILocation(line: 288, column: 46, scope: !1309, inlinedAt: !1647)
!1652 = !DILocation(line: 433, column: 23, scope: !1649)
!1653 = !DILocation(line: 434, column: 21, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1648, file: !62, line: 434, column: 21)
!1655 = !DILocation(line: 436, column: 23, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1649, file: !62, line: 436, column: 23)
!1657 = !DILocation(line: 436, column: 23, scope: !1649)
!1658 = !DILocation(line: 438, column: 48, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1656, file: !62, line: 437, column: 21)
!1660 = !DILocation(line: 438, column: 34, scope: !1659)
!1661 = !DILocation(line: 438, column: 56, scope: !1659)
!1662 = !DILocation(line: 439, column: 33, scope: !1659)
!1663 = !DILocation(line: 438, column: 27, scope: !1659)
!1664 = !DILocation(line: 438, column: 30, scope: !1659)
!1665 = !DILocation(line: 440, column: 23, scope: !1659)
!1666 = !DILocation(line: 441, column: 21, scope: !1659)
!1667 = !DILocation(line: 447, column: 9, scope: !1469)
!1668 = !DILocation(line: 448, column: 3, scope: !1469)
!1669 = !DILocation(line: 449, column: 1, scope: !1469)
!1670 = distinct !DISubprogram(name: "base32_decode_alloc_ctx", scope: !62, file: !62, line: 561, type: !1671, scopeLine: 564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !1673)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!92, !1321, !36, !33, !783, !196}
!1673 = !{!1674, !1675, !1676, !1677, !1678, !1679}
!1674 = !DILocalVariable(name: "ctx", arg: 1, scope: !1670, file: !62, line: 561, type: !1321)
!1675 = !DILocalVariable(name: "in", arg: 2, scope: !1670, file: !62, line: 562, type: !36)
!1676 = !DILocalVariable(name: "inlen", arg: 3, scope: !1670, file: !62, line: 562, type: !33)
!1677 = !DILocalVariable(name: "out", arg: 4, scope: !1670, file: !62, line: 562, type: !783)
!1678 = !DILocalVariable(name: "outlen", arg: 5, scope: !1670, file: !62, line: 563, type: !196)
!1679 = !DILocalVariable(name: "needlen", scope: !1670, file: !62, line: 570, type: !33)
!1680 = !DILocation(line: 0, scope: !1670)
!1681 = !DILocation(line: 570, column: 3, scope: !1670)
!1682 = !DILocation(line: 570, column: 31, scope: !1670)
!1683 = !DILocation(line: 570, column: 22, scope: !1670)
!1684 = !DILocation(line: 570, column: 36, scope: !1670)
!1685 = !DILocation(line: 570, column: 10, scope: !1670)
!1686 = !DILocation(line: 572, column: 10, scope: !1670)
!1687 = !DILocation(line: 572, column: 8, scope: !1670)
!1688 = !DILocation(line: 573, column: 8, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1670, file: !62, line: 573, column: 7)
!1690 = !DILocation(line: 573, column: 7, scope: !1670)
!1691 = !DILocation(line: 576, column: 8, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1670, file: !62, line: 576, column: 7)
!1693 = !DILocation(line: 576, column: 7, scope: !1670)
!1694 = !DILocation(line: 578, column: 13, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1692, file: !62, line: 577, column: 5)
!1696 = !DILocation(line: 578, column: 7, scope: !1695)
!1697 = !DILocation(line: 579, column: 12, scope: !1695)
!1698 = !DILocation(line: 580, column: 7, scope: !1695)
!1699 = !DILocation(line: 583, column: 7, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1670, file: !62, line: 583, column: 7)
!1701 = !DILocation(line: 583, column: 7, scope: !1670)
!1702 = !DILocation(line: 584, column: 15, scope: !1700)
!1703 = !DILocation(line: 584, column: 13, scope: !1700)
!1704 = !DILocation(line: 584, column: 5, scope: !1700)
!1705 = !DILocation(line: 587, column: 1, scope: !1670)
!1706 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !88, file: !88, line: 51, type: !667, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !1707)
!1707 = !{!1708}
!1708 = !DILocalVariable(name: "file", arg: 1, scope: !1706, file: !88, line: 51, type: !36)
!1709 = !DILocation(line: 0, scope: !1706)
!1710 = !DILocation(line: 53, column: 13, scope: !1706)
!1711 = !DILocation(line: 54, column: 1, scope: !1706)
!1712 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !88, file: !88, line: 88, type: !1713, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !1715)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{null, !92}
!1715 = !{!1716}
!1716 = !DILocalVariable(name: "ignore", arg: 1, scope: !1712, file: !88, line: 88, type: !92)
!1717 = !DILocation(line: 0, scope: !1712)
!1718 = !DILocation(line: 90, column: 16, scope: !1712)
!1719 = !{!1720, !1720, i64 0}
!1720 = !{!"_Bool", !647, i64 0}
!1721 = !DILocation(line: 91, column: 1, scope: !1712)
!1722 = distinct !DISubprogram(name: "close_stdout", scope: !88, file: !88, line: 117, type: !655, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !1723)
!1723 = !{!1724}
!1724 = !DILocalVariable(name: "write_error", scope: !1725, file: !88, line: 122, type: !36)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !88, line: 121, column: 5)
!1726 = distinct !DILexicalBlock(scope: !1722, file: !88, line: 119, column: 7)
!1727 = !DILocation(line: 119, column: 21, scope: !1726)
!1728 = !DILocation(line: 119, column: 7, scope: !1726)
!1729 = !DILocation(line: 119, column: 29, scope: !1726)
!1730 = !DILocation(line: 120, column: 7, scope: !1726)
!1731 = !DILocation(line: 120, column: 12, scope: !1726)
!1732 = !{i8 0, i8 2}
!1733 = !DILocation(line: 120, column: 25, scope: !1726)
!1734 = !DILocation(line: 120, column: 28, scope: !1726)
!1735 = !DILocation(line: 120, column: 34, scope: !1726)
!1736 = !DILocation(line: 119, column: 7, scope: !1722)
!1737 = !DILocation(line: 122, column: 33, scope: !1725)
!1738 = !DILocation(line: 0, scope: !1725)
!1739 = !DILocation(line: 123, column: 11, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1725, file: !88, line: 123, column: 11)
!1741 = !DILocation(line: 0, scope: !1740)
!1742 = !DILocation(line: 123, column: 11, scope: !1725)
!1743 = !DILocation(line: 124, column: 36, scope: !1740)
!1744 = !DILocation(line: 124, column: 9, scope: !1740)
!1745 = !DILocation(line: 127, column: 9, scope: !1740)
!1746 = !DILocation(line: 129, column: 14, scope: !1725)
!1747 = !DILocation(line: 129, column: 7, scope: !1725)
!1748 = !DILocation(line: 134, column: 42, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1722, file: !88, line: 134, column: 7)
!1750 = !DILocation(line: 134, column: 28, scope: !1749)
!1751 = !DILocation(line: 134, column: 50, scope: !1749)
!1752 = !DILocation(line: 134, column: 7, scope: !1722)
!1753 = !DILocation(line: 135, column: 12, scope: !1749)
!1754 = !DILocation(line: 135, column: 5, scope: !1749)
!1755 = !DILocation(line: 136, column: 1, scope: !1722)
!1756 = distinct !DISubprogram(name: "fdadvise", scope: !179, file: !179, line: 31, type: !1757, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !1761)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{null, !47, !1759, !1759, !1760}
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !722, line: 63, baseType: !748)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!1761 = !{!1762, !1763, !1764, !1765, !1766}
!1762 = !DILocalVariable(name: "fd", arg: 1, scope: !1756, file: !179, line: 31, type: !47)
!1763 = !DILocalVariable(name: "offset", arg: 2, scope: !1756, file: !179, line: 31, type: !1759)
!1764 = !DILocalVariable(name: "len", arg: 3, scope: !1756, file: !179, line: 31, type: !1759)
!1765 = !DILocalVariable(name: "advice", arg: 4, scope: !1756, file: !179, line: 31, type: !1760)
!1766 = !DILocalVariable(name: "__x", scope: !1767, file: !179, line: 34, type: !47)
!1767 = distinct !DILexicalBlock(scope: !1756, file: !179, line: 34, column: 3)
!1768 = !DILocation(line: 0, scope: !1756)
!1769 = !DILocation(line: 34, column: 3, scope: !1767)
!1770 = !DILocation(line: 0, scope: !1767)
!1771 = !DILocation(line: 36, column: 1, scope: !1756)
!1772 = !DISubprogram(name: "posix_fadvise", scope: !1773, file: !1773, line: 288, type: !1774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!1773 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!47, !47, !750, !750, !47}
!1776 = distinct !DISubprogram(name: "fadvise", scope: !179, file: !179, line: 39, type: !1777, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !1813)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{null, !1779, !1760}
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 7, baseType: !1781)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !1782)
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1781, file: !727, line: 51, baseType: !47, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1781, file: !727, line: 54, baseType: !30, size: 64, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1781, file: !727, line: 55, baseType: !30, size: 64, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1781, file: !727, line: 56, baseType: !30, size: 64, offset: 192)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1781, file: !727, line: 57, baseType: !30, size: 64, offset: 256)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1781, file: !727, line: 58, baseType: !30, size: 64, offset: 320)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1781, file: !727, line: 59, baseType: !30, size: 64, offset: 384)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1781, file: !727, line: 60, baseType: !30, size: 64, offset: 448)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1781, file: !727, line: 61, baseType: !30, size: 64, offset: 512)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1781, file: !727, line: 64, baseType: !30, size: 64, offset: 576)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1781, file: !727, line: 65, baseType: !30, size: 64, offset: 640)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1781, file: !727, line: 66, baseType: !30, size: 64, offset: 704)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1781, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1781, file: !727, line: 70, baseType: !1797, size: 64, offset: 832)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1781, file: !727, line: 72, baseType: !47, size: 32, offset: 896)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1781, file: !727, line: 73, baseType: !47, size: 32, offset: 928)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1781, file: !727, line: 74, baseType: !748, size: 64, offset: 960)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1781, file: !727, line: 77, baseType: !130, size: 16, offset: 1024)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1781, file: !727, line: 78, baseType: !74, size: 8, offset: 1040)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1781, file: !727, line: 79, baseType: !754, size: 8, offset: 1048)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1781, file: !727, line: 81, baseType: !758, size: 64, offset: 1088)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1781, file: !727, line: 89, baseType: !761, size: 64, offset: 1152)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1781, file: !727, line: 91, baseType: !763, size: 64, offset: 1216)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1781, file: !727, line: 92, baseType: !766, size: 64, offset: 1280)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1781, file: !727, line: 93, baseType: !1797, size: 64, offset: 1344)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1781, file: !727, line: 94, baseType: !32, size: 64, offset: 1408)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1781, file: !727, line: 95, baseType: !33, size: 64, offset: 1472)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1781, file: !727, line: 96, baseType: !47, size: 32, offset: 1536)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1781, file: !727, line: 98, baseType: !773, size: 160, offset: 1568)
!1813 = !{!1814, !1815}
!1814 = !DILocalVariable(name: "fp", arg: 1, scope: !1776, file: !179, line: 39, type: !1779)
!1815 = !DILocalVariable(name: "advice", arg: 2, scope: !1776, file: !179, line: 39, type: !1760)
!1816 = !DILocation(line: 0, scope: !1776)
!1817 = !DILocation(line: 41, column: 7, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1776, file: !179, line: 41, column: 7)
!1819 = !DILocation(line: 41, column: 7, scope: !1776)
!1820 = !DILocation(line: 42, column: 15, scope: !1818)
!1821 = !DILocation(line: 0, scope: !1756, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 42, column: 5, scope: !1818)
!1823 = !DILocation(line: 34, column: 3, scope: !1767, inlinedAt: !1822)
!1824 = !DILocation(line: 0, scope: !1767, inlinedAt: !1822)
!1825 = !DILocation(line: 42, column: 5, scope: !1818)
!1826 = !DILocation(line: 43, column: 1, scope: !1776)
!1827 = !DISubprogram(name: "fileno", scope: !722, file: !722, line: 785, type: !1828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!47, !1797}
!1830 = distinct !DISubprogram(name: "set_program_name", scope: !102, file: !102, line: 39, type: !667, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1831)
!1831 = !{!1832, !1833, !1834}
!1832 = !DILocalVariable(name: "argv0", arg: 1, scope: !1830, file: !102, line: 39, type: !36)
!1833 = !DILocalVariable(name: "slash", scope: !1830, file: !102, line: 46, type: !36)
!1834 = !DILocalVariable(name: "base", scope: !1830, file: !102, line: 47, type: !36)
!1835 = !DILocation(line: 0, scope: !1830)
!1836 = !DILocation(line: 51, column: 13, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1830, file: !102, line: 51, column: 7)
!1838 = !DILocation(line: 51, column: 7, scope: !1830)
!1839 = !DILocation(line: 55, column: 14, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1837, file: !102, line: 52, column: 5)
!1841 = !DILocation(line: 54, column: 7, scope: !1840)
!1842 = !DILocation(line: 56, column: 7, scope: !1840)
!1843 = !DILocation(line: 59, column: 11, scope: !1830)
!1844 = !DILocation(line: 60, column: 17, scope: !1830)
!1845 = !DILocation(line: 60, column: 11, scope: !1830)
!1846 = !DILocation(line: 61, column: 12, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1830, file: !102, line: 61, column: 7)
!1848 = !DILocation(line: 61, column: 20, scope: !1847)
!1849 = !DILocation(line: 61, column: 25, scope: !1847)
!1850 = !DILocation(line: 61, column: 42, scope: !1847)
!1851 = !DILocation(line: 61, column: 28, scope: !1847)
!1852 = !DILocation(line: 61, column: 61, scope: !1847)
!1853 = !DILocation(line: 61, column: 7, scope: !1830)
!1854 = !DILocation(line: 64, column: 11, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !102, line: 64, column: 11)
!1856 = distinct !DILexicalBlock(scope: !1847, file: !102, line: 62, column: 5)
!1857 = !DILocation(line: 64, column: 36, scope: !1855)
!1858 = !DILocation(line: 64, column: 11, scope: !1856)
!1859 = !DILocation(line: 66, column: 24, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1855, file: !102, line: 65, column: 9)
!1861 = !DILocation(line: 70, column: 41, scope: !1860)
!1862 = !DILocation(line: 72, column: 9, scope: !1860)
!1863 = !DILocation(line: 84, column: 16, scope: !1830)
!1864 = !DILocation(line: 90, column: 27, scope: !1830)
!1865 = !DILocation(line: 92, column: 1, scope: !1830)
!1866 = distinct !DISubprogram(name: "clone_quoting_options", scope: !107, file: !107, line: 122, type: !1867, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1870)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!1869, !1869}
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!1870 = !{!1871, !1872, !1873}
!1871 = !DILocalVariable(name: "o", arg: 1, scope: !1866, file: !107, line: 122, type: !1869)
!1872 = !DILocalVariable(name: "e", scope: !1866, file: !107, line: 124, type: !47)
!1873 = !DILocalVariable(name: "p", scope: !1866, file: !107, line: 125, type: !1869)
!1874 = !DILocation(line: 0, scope: !1866)
!1875 = !DILocation(line: 124, column: 11, scope: !1866)
!1876 = !DILocation(line: 125, column: 40, scope: !1866)
!1877 = !DILocation(line: 125, column: 31, scope: !1866)
!1878 = !DILocation(line: 127, column: 9, scope: !1866)
!1879 = !DILocation(line: 128, column: 3, scope: !1866)
!1880 = distinct !DISubprogram(name: "get_quoting_style", scope: !107, file: !107, line: 133, type: !1881, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1885)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!5, !1883}
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!1885 = !{!1886}
!1886 = !DILocalVariable(name: "o", arg: 1, scope: !1880, file: !107, line: 133, type: !1883)
!1887 = !DILocation(line: 0, scope: !1880)
!1888 = !DILocation(line: 135, column: 11, scope: !1880)
!1889 = !DILocation(line: 135, column: 46, scope: !1880)
!1890 = !{!1891, !647, i64 0}
!1891 = !{!"quoting_options", !647, i64 0, !822, i64 4, !647, i64 8, !646, i64 40, !646, i64 48}
!1892 = !DILocation(line: 135, column: 3, scope: !1880)
!1893 = distinct !DISubprogram(name: "set_quoting_style", scope: !107, file: !107, line: 141, type: !1894, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1896)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{null, !1869, !5}
!1896 = !{!1897, !1898}
!1897 = !DILocalVariable(name: "o", arg: 1, scope: !1893, file: !107, line: 141, type: !1869)
!1898 = !DILocalVariable(name: "s", arg: 2, scope: !1893, file: !107, line: 141, type: !5)
!1899 = !DILocation(line: 0, scope: !1893)
!1900 = !DILocation(line: 143, column: 4, scope: !1893)
!1901 = !DILocation(line: 143, column: 39, scope: !1893)
!1902 = !DILocation(line: 143, column: 45, scope: !1893)
!1903 = !DILocation(line: 144, column: 1, scope: !1893)
!1904 = distinct !DISubprogram(name: "set_char_quoting", scope: !107, file: !107, line: 152, type: !1905, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1907)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!47, !1869, !31, !47}
!1907 = !{!1908, !1909, !1910, !1911, !1912, !1914, !1915}
!1908 = !DILocalVariable(name: "o", arg: 1, scope: !1904, file: !107, line: 152, type: !1869)
!1909 = !DILocalVariable(name: "c", arg: 2, scope: !1904, file: !107, line: 152, type: !31)
!1910 = !DILocalVariable(name: "i", arg: 3, scope: !1904, file: !107, line: 152, type: !47)
!1911 = !DILocalVariable(name: "uc", scope: !1904, file: !107, line: 154, type: !38)
!1912 = !DILocalVariable(name: "p", scope: !1904, file: !107, line: 155, type: !1913)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1914 = !DILocalVariable(name: "shift", scope: !1904, file: !107, line: 157, type: !47)
!1915 = !DILocalVariable(name: "r", scope: !1904, file: !107, line: 158, type: !47)
!1916 = !DILocation(line: 0, scope: !1904)
!1917 = !DILocation(line: 156, column: 6, scope: !1904)
!1918 = !DILocation(line: 156, column: 62, scope: !1904)
!1919 = !DILocation(line: 156, column: 57, scope: !1904)
!1920 = !DILocation(line: 157, column: 15, scope: !1904)
!1921 = !DILocation(line: 158, column: 12, scope: !1904)
!1922 = !DILocation(line: 158, column: 15, scope: !1904)
!1923 = !DILocation(line: 158, column: 25, scope: !1904)
!1924 = !DILocation(line: 159, column: 13, scope: !1904)
!1925 = !DILocation(line: 159, column: 18, scope: !1904)
!1926 = !DILocation(line: 159, column: 23, scope: !1904)
!1927 = !DILocation(line: 159, column: 6, scope: !1904)
!1928 = !DILocation(line: 160, column: 3, scope: !1904)
!1929 = distinct !DISubprogram(name: "set_quoting_flags", scope: !107, file: !107, line: 168, type: !1930, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1932)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!47, !1869, !47}
!1932 = !{!1933, !1934, !1935}
!1933 = !DILocalVariable(name: "o", arg: 1, scope: !1929, file: !107, line: 168, type: !1869)
!1934 = !DILocalVariable(name: "i", arg: 2, scope: !1929, file: !107, line: 168, type: !47)
!1935 = !DILocalVariable(name: "r", scope: !1929, file: !107, line: 170, type: !47)
!1936 = !DILocation(line: 0, scope: !1929)
!1937 = !DILocation(line: 171, column: 8, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1929, file: !107, line: 171, column: 7)
!1939 = !DILocation(line: 171, column: 7, scope: !1929)
!1940 = !DILocation(line: 173, column: 10, scope: !1929)
!1941 = !{!1891, !822, i64 4}
!1942 = !DILocation(line: 174, column: 12, scope: !1929)
!1943 = !DILocation(line: 175, column: 3, scope: !1929)
!1944 = distinct !DISubprogram(name: "set_custom_quoting", scope: !107, file: !107, line: 179, type: !1945, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1947)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{null, !1869, !36, !36}
!1947 = !{!1948, !1949, !1950}
!1948 = !DILocalVariable(name: "o", arg: 1, scope: !1944, file: !107, line: 179, type: !1869)
!1949 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1944, file: !107, line: 180, type: !36)
!1950 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1944, file: !107, line: 180, type: !36)
!1951 = !DILocation(line: 0, scope: !1944)
!1952 = !DILocation(line: 182, column: 8, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1944, file: !107, line: 182, column: 7)
!1954 = !DILocation(line: 182, column: 7, scope: !1944)
!1955 = !DILocation(line: 184, column: 6, scope: !1944)
!1956 = !DILocation(line: 184, column: 12, scope: !1944)
!1957 = !DILocation(line: 185, column: 8, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1944, file: !107, line: 185, column: 7)
!1959 = !DILocation(line: 185, column: 19, scope: !1958)
!1960 = !DILocation(line: 186, column: 5, scope: !1958)
!1961 = !DILocation(line: 187, column: 6, scope: !1944)
!1962 = !DILocation(line: 187, column: 17, scope: !1944)
!1963 = !{!1891, !646, i64 40}
!1964 = !DILocation(line: 188, column: 6, scope: !1944)
!1965 = !DILocation(line: 188, column: 18, scope: !1944)
!1966 = !{!1891, !646, i64 48}
!1967 = !DILocation(line: 189, column: 1, scope: !1944)
!1968 = distinct !DISubprogram(name: "quotearg_buffer", scope: !107, file: !107, line: 784, type: !1969, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1971)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!33, !30, !33, !36, !33, !1883}
!1971 = !{!1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979}
!1972 = !DILocalVariable(name: "buffer", arg: 1, scope: !1968, file: !107, line: 784, type: !30)
!1973 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1968, file: !107, line: 784, type: !33)
!1974 = !DILocalVariable(name: "arg", arg: 3, scope: !1968, file: !107, line: 785, type: !36)
!1975 = !DILocalVariable(name: "argsize", arg: 4, scope: !1968, file: !107, line: 785, type: !33)
!1976 = !DILocalVariable(name: "o", arg: 5, scope: !1968, file: !107, line: 786, type: !1883)
!1977 = !DILocalVariable(name: "p", scope: !1968, file: !107, line: 788, type: !1883)
!1978 = !DILocalVariable(name: "e", scope: !1968, file: !107, line: 789, type: !47)
!1979 = !DILocalVariable(name: "r", scope: !1968, file: !107, line: 790, type: !33)
!1980 = !DILocation(line: 0, scope: !1968)
!1981 = !DILocation(line: 788, column: 37, scope: !1968)
!1982 = !DILocation(line: 789, column: 11, scope: !1968)
!1983 = !DILocation(line: 791, column: 43, scope: !1968)
!1984 = !DILocation(line: 791, column: 53, scope: !1968)
!1985 = !DILocation(line: 791, column: 60, scope: !1968)
!1986 = !DILocation(line: 792, column: 43, scope: !1968)
!1987 = !DILocation(line: 792, column: 58, scope: !1968)
!1988 = !DILocation(line: 790, column: 14, scope: !1968)
!1989 = !DILocation(line: 793, column: 9, scope: !1968)
!1990 = !DILocation(line: 794, column: 3, scope: !1968)
!1991 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !107, file: !107, line: 256, type: !1992, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1996)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!33, !30, !33, !36, !33, !5, !47, !1994, !36, !36}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1996 = !{!1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2021, !2022, !2023, !2024, !2025, !2028, !2029, !2047, !2050, !2051, !2058, !2061, !2062, !2063, !2064, !2065, !2066}
!1997 = !DILocalVariable(name: "buffer", arg: 1, scope: !1991, file: !107, line: 256, type: !30)
!1998 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1991, file: !107, line: 256, type: !33)
!1999 = !DILocalVariable(name: "arg", arg: 3, scope: !1991, file: !107, line: 257, type: !36)
!2000 = !DILocalVariable(name: "argsize", arg: 4, scope: !1991, file: !107, line: 257, type: !33)
!2001 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1991, file: !107, line: 258, type: !5)
!2002 = !DILocalVariable(name: "flags", arg: 6, scope: !1991, file: !107, line: 258, type: !47)
!2003 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1991, file: !107, line: 259, type: !1994)
!2004 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1991, file: !107, line: 260, type: !36)
!2005 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1991, file: !107, line: 261, type: !36)
!2006 = !DILocalVariable(name: "i", scope: !1991, file: !107, line: 263, type: !33)
!2007 = !DILocalVariable(name: "len", scope: !1991, file: !107, line: 264, type: !33)
!2008 = !DILocalVariable(name: "orig_buffersize", scope: !1991, file: !107, line: 265, type: !33)
!2009 = !DILocalVariable(name: "quote_string", scope: !1991, file: !107, line: 266, type: !36)
!2010 = !DILocalVariable(name: "quote_string_len", scope: !1991, file: !107, line: 267, type: !33)
!2011 = !DILocalVariable(name: "backslash_escapes", scope: !1991, file: !107, line: 268, type: !92)
!2012 = !DILocalVariable(name: "unibyte_locale", scope: !1991, file: !107, line: 269, type: !92)
!2013 = !DILocalVariable(name: "elide_outer_quotes", scope: !1991, file: !107, line: 270, type: !92)
!2014 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1991, file: !107, line: 271, type: !92)
!2015 = !DILocalVariable(name: "encountered_single_quote", scope: !1991, file: !107, line: 272, type: !92)
!2016 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1991, file: !107, line: 273, type: !92)
!2017 = !DILocalVariable(name: "c", scope: !2018, file: !107, line: 402, type: !38)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !107, line: 401, column: 5)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !107, line: 400, column: 3)
!2020 = distinct !DILexicalBlock(scope: !1991, file: !107, line: 400, column: 3)
!2021 = !DILocalVariable(name: "esc", scope: !2018, file: !107, line: 403, type: !38)
!2022 = !DILocalVariable(name: "is_right_quote", scope: !2018, file: !107, line: 404, type: !92)
!2023 = !DILocalVariable(name: "escaping", scope: !2018, file: !107, line: 405, type: !92)
!2024 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2018, file: !107, line: 406, type: !92)
!2025 = !DILocalVariable(name: "m", scope: !2026, file: !107, line: 610, type: !33)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !107, line: 608, column: 11)
!2027 = distinct !DILexicalBlock(scope: !2018, file: !107, line: 426, column: 9)
!2028 = !DILocalVariable(name: "printable", scope: !2026, file: !107, line: 612, type: !92)
!2029 = !DILocalVariable(name: "mbstate", scope: !2030, file: !107, line: 621, type: !2032)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !107, line: 620, column: 15)
!2031 = distinct !DILexicalBlock(scope: !2026, file: !107, line: 614, column: 17)
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2033, line: 6, baseType: !2034)
!2033 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2035, line: 21, baseType: !2036)
!2035 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2035, line: 13, size: 64, elements: !2037)
!2037 = !{!2038, !2039}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2036, file: !2035, line: 15, baseType: !47, size: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2036, file: !2035, line: 20, baseType: !2040, size: 32, offset: 32)
!2040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2036, file: !2035, line: 16, size: 32, elements: !2041)
!2041 = !{!2042, !2043}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2040, file: !2035, line: 18, baseType: !7, size: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2040, file: !2035, line: 19, baseType: !2044, size: 32)
!2044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !2045)
!2045 = !{!2046}
!2046 = !DISubrange(count: 4)
!2047 = !DILocalVariable(name: "w", scope: !2048, file: !107, line: 631, type: !2049)
!2048 = distinct !DILexicalBlock(scope: !2030, file: !107, line: 630, column: 19)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !34, line: 74, baseType: !47)
!2050 = !DILocalVariable(name: "bytes", scope: !2048, file: !107, line: 632, type: !33)
!2051 = !DILocalVariable(name: "j", scope: !2052, file: !107, line: 657, type: !33)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !107, line: 656, column: 27)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !107, line: 654, column: 29)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !107, line: 649, column: 23)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !107, line: 641, column: 30)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !107, line: 636, column: 30)
!2057 = distinct !DILexicalBlock(scope: !2048, file: !107, line: 634, column: 25)
!2058 = !DILocalVariable(name: "ilim", scope: !2059, file: !107, line: 684, type: !33)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !107, line: 681, column: 15)
!2060 = distinct !DILexicalBlock(scope: !2026, file: !107, line: 680, column: 17)
!2061 = !DILabel(scope: !1991, name: "process_input", file: !107, line: 314)
!2062 = !DILabel(scope: !2027, name: "c_and_shell_escape", file: !107, line: 512)
!2063 = !DILabel(scope: !2027, name: "c_escape", file: !107, line: 517)
!2064 = !DILabel(scope: !2018, name: "store_escape", file: !107, line: 719)
!2065 = !DILabel(scope: !2018, name: "store_c", file: !107, line: 722)
!2066 = !DILabel(scope: !1991, name: "force_outer_quoting_style", file: !107, line: 763)
!2067 = !DILocation(line: 0, scope: !1991)
!2068 = !DILocation(line: 269, column: 25, scope: !1991)
!2069 = !DILocation(line: 269, column: 36, scope: !1991)
!2070 = !DILocation(line: 270, column: 8, scope: !1991)
!2071 = !DILocation(line: 273, column: 3, scope: !1991)
!2072 = !DILocation(line: 265, column: 10, scope: !1991)
!2073 = !DILocation(line: 266, column: 15, scope: !1991)
!2074 = !DILocation(line: 267, column: 10, scope: !1991)
!2075 = !DILocation(line: 268, column: 8, scope: !1991)
!2076 = !DILocation(line: 271, column: 8, scope: !1991)
!2077 = !DILocation(line: 272, column: 8, scope: !1991)
!2078 = !DILocation(line: 273, column: 8, scope: !1991)
!2079 = !DILocation(line: 314, column: 2, scope: !1991)
!2080 = !DILocation(line: 316, column: 3, scope: !1991)
!2081 = !DILocation(line: 323, column: 11, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1991, file: !107, line: 317, column: 5)
!2083 = !DILocation(line: 323, column: 12, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2082, file: !107, line: 323, column: 11)
!2085 = !DILocation(line: 324, column: 9, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !107, line: 324, column: 9)
!2087 = distinct !DILexicalBlock(scope: !2084, file: !107, line: 324, column: 9)
!2088 = !DILocation(line: 324, column: 9, scope: !2087)
!2089 = !DILocation(line: 362, column: 26, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !107, line: 340, column: 11)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !107, line: 339, column: 13)
!2092 = distinct !DILexicalBlock(scope: !2082, file: !107, line: 338, column: 7)
!2093 = !DILocation(line: 363, column: 27, scope: !2090)
!2094 = !DILocation(line: 364, column: 11, scope: !2090)
!2095 = !DILocation(line: 365, column: 14, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2092, file: !107, line: 365, column: 13)
!2097 = !DILocation(line: 365, column: 13, scope: !2092)
!2098 = !DILocation(line: 366, column: 43, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !107, line: 366, column: 11)
!2100 = distinct !DILexicalBlock(scope: !2096, file: !107, line: 366, column: 11)
!2101 = !DILocation(line: 366, column: 11, scope: !2100)
!2102 = !DILocation(line: 367, column: 13, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !107, line: 367, column: 13)
!2104 = distinct !DILexicalBlock(scope: !2099, file: !107, line: 367, column: 13)
!2105 = !DILocation(line: 367, column: 13, scope: !2104)
!2106 = !DILocation(line: 366, column: 70, scope: !2099)
!2107 = distinct !{!2107, !2101, !2108, !697}
!2108 = !DILocation(line: 367, column: 13, scope: !2100)
!2109 = !DILocation(line: 264, column: 10, scope: !1991)
!2110 = !DILocation(line: 370, column: 28, scope: !2092)
!2111 = !DILocation(line: 372, column: 7, scope: !2082)
!2112 = !DILocation(line: 376, column: 7, scope: !2082)
!2113 = !DILocation(line: 379, column: 7, scope: !2082)
!2114 = !DILocation(line: 381, column: 12, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2082, file: !107, line: 381, column: 11)
!2116 = !DILocation(line: 381, column: 11, scope: !2082)
!2117 = !DILocation(line: 386, column: 12, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2082, file: !107, line: 386, column: 11)
!2119 = !DILocation(line: 386, column: 11, scope: !2082)
!2120 = !DILocation(line: 387, column: 9, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !107, line: 387, column: 9)
!2122 = distinct !DILexicalBlock(scope: !2118, file: !107, line: 387, column: 9)
!2123 = !DILocation(line: 387, column: 9, scope: !2122)
!2124 = !DILocation(line: 394, column: 7, scope: !2082)
!2125 = !DILocation(line: 397, column: 7, scope: !2082)
!2126 = !DILocation(line: 400, column: 8, scope: !2020)
!2127 = !DILocation(line: 0, scope: !2020)
!2128 = !DILocation(line: 400, column: 27, scope: !2019)
!2129 = !DILocation(line: 400, column: 19, scope: !2019)
!2130 = !DILocation(line: 400, column: 41, scope: !2019)
!2131 = !DILocation(line: 400, column: 48, scope: !2019)
!2132 = !DILocation(line: 400, column: 3, scope: !2020)
!2133 = !DILocation(line: 400, column: 60, scope: !2019)
!2134 = !DILocation(line: 0, scope: !2018)
!2135 = !DILocation(line: 409, column: 11, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2018, file: !107, line: 408, column: 11)
!2137 = !DILocation(line: 411, column: 17, scope: !2136)
!2138 = !DILocation(line: 412, column: 39, scope: !2136)
!2139 = !DILocation(line: 416, column: 32, scope: !2136)
!2140 = !DILocation(line: 412, column: 19, scope: !2136)
!2141 = !DILocation(line: 412, column: 15, scope: !2136)
!2142 = !DILocation(line: 417, column: 11, scope: !2136)
!2143 = !DILocation(line: 417, column: 26, scope: !2136)
!2144 = !DILocation(line: 417, column: 14, scope: !2136)
!2145 = !DILocation(line: 417, column: 63, scope: !2136)
!2146 = !DILocation(line: 408, column: 11, scope: !2018)
!2147 = !DILocation(line: 424, column: 11, scope: !2018)
!2148 = !DILocation(line: 425, column: 7, scope: !2018)
!2149 = !DILocation(line: 428, column: 15, scope: !2027)
!2150 = !DILocation(line: 430, column: 15, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !107, line: 430, column: 15)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !107, line: 429, column: 13)
!2153 = distinct !DILexicalBlock(scope: !2027, file: !107, line: 428, column: 15)
!2154 = !DILocation(line: 430, column: 15, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2151, file: !107, line: 430, column: 15)
!2156 = !DILocation(line: 430, column: 15, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !107, line: 430, column: 15)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !107, line: 430, column: 15)
!2159 = distinct !DILexicalBlock(scope: !2155, file: !107, line: 430, column: 15)
!2160 = !DILocation(line: 430, column: 15, scope: !2158)
!2161 = !DILocation(line: 430, column: 15, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !107, line: 430, column: 15)
!2163 = distinct !DILexicalBlock(scope: !2159, file: !107, line: 430, column: 15)
!2164 = !DILocation(line: 430, column: 15, scope: !2163)
!2165 = !DILocation(line: 430, column: 15, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !107, line: 430, column: 15)
!2167 = distinct !DILexicalBlock(scope: !2159, file: !107, line: 430, column: 15)
!2168 = !DILocation(line: 430, column: 15, scope: !2167)
!2169 = !DILocation(line: 430, column: 15, scope: !2159)
!2170 = !DILocation(line: 430, column: 15, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !107, line: 430, column: 15)
!2172 = distinct !DILexicalBlock(scope: !2151, file: !107, line: 430, column: 15)
!2173 = !DILocation(line: 430, column: 15, scope: !2172)
!2174 = !DILocation(line: 438, column: 19, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2152, file: !107, line: 437, column: 19)
!2176 = !DILocation(line: 438, column: 48, scope: !2175)
!2177 = !DILocation(line: 438, column: 59, scope: !2175)
!2178 = !DILocation(line: 440, column: 19, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !107, line: 440, column: 19)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !107, line: 440, column: 19)
!2181 = distinct !DILexicalBlock(scope: !2175, file: !107, line: 439, column: 17)
!2182 = !DILocation(line: 440, column: 19, scope: !2180)
!2183 = !DILocation(line: 441, column: 19, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !107, line: 441, column: 19)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !107, line: 441, column: 19)
!2186 = !DILocation(line: 441, column: 19, scope: !2185)
!2187 = !DILocation(line: 442, column: 17, scope: !2181)
!2188 = !DILocation(line: 449, column: 20, scope: !2153)
!2189 = !DILocation(line: 454, column: 11, scope: !2027)
!2190 = !DILocation(line: 457, column: 19, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2027, file: !107, line: 455, column: 13)
!2192 = !DILocation(line: 463, column: 19, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2191, file: !107, line: 462, column: 19)
!2194 = !DILocation(line: 463, column: 47, scope: !2193)
!2195 = !DILocation(line: 463, column: 41, scope: !2193)
!2196 = !DILocation(line: 463, column: 52, scope: !2193)
!2197 = !DILocation(line: 462, column: 19, scope: !2191)
!2198 = !DILocation(line: 464, column: 25, scope: !2193)
!2199 = !DILocation(line: 464, column: 17, scope: !2193)
!2200 = !DILocation(line: 471, column: 25, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2193, file: !107, line: 465, column: 19)
!2202 = !DILocation(line: 475, column: 21, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !107, line: 475, column: 21)
!2204 = distinct !DILexicalBlock(scope: !2201, file: !107, line: 475, column: 21)
!2205 = !DILocation(line: 475, column: 21, scope: !2204)
!2206 = !DILocation(line: 476, column: 21, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !107, line: 476, column: 21)
!2208 = distinct !DILexicalBlock(scope: !2201, file: !107, line: 476, column: 21)
!2209 = !DILocation(line: 476, column: 21, scope: !2208)
!2210 = !DILocation(line: 477, column: 21, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !107, line: 477, column: 21)
!2212 = distinct !DILexicalBlock(scope: !2201, file: !107, line: 477, column: 21)
!2213 = !DILocation(line: 477, column: 21, scope: !2212)
!2214 = !DILocation(line: 478, column: 21, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !107, line: 478, column: 21)
!2216 = distinct !DILexicalBlock(scope: !2201, file: !107, line: 478, column: 21)
!2217 = !DILocation(line: 478, column: 21, scope: !2216)
!2218 = !DILocation(line: 479, column: 21, scope: !2201)
!2219 = !DILocation(line: 492, column: 31, scope: !2027)
!2220 = !DILocation(line: 493, column: 31, scope: !2027)
!2221 = !DILocation(line: 495, column: 31, scope: !2027)
!2222 = !DILocation(line: 496, column: 31, scope: !2027)
!2223 = !DILocation(line: 497, column: 31, scope: !2027)
!2224 = !DILocation(line: 500, column: 15, scope: !2027)
!2225 = !DILocation(line: 502, column: 19, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !107, line: 501, column: 13)
!2227 = distinct !DILexicalBlock(scope: !2027, file: !107, line: 500, column: 15)
!2228 = !DILocation(line: 509, column: 33, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2027, file: !107, line: 509, column: 15)
!2230 = !DILocation(line: 0, scope: !2027)
!2231 = !DILocation(line: 512, column: 9, scope: !2027)
!2232 = !DILocation(line: 514, column: 15, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2027, file: !107, line: 513, column: 15)
!2234 = !DILocation(line: 517, column: 9, scope: !2027)
!2235 = !DILocation(line: 518, column: 15, scope: !2027)
!2236 = !DILocation(line: 526, column: 15, scope: !2027)
!2237 = !DILocation(line: 526, column: 40, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2027, file: !107, line: 526, column: 15)
!2239 = !DILocation(line: 526, column: 47, scope: !2238)
!2240 = !DILocation(line: 526, column: 18, scope: !2238)
!2241 = !DILocation(line: 530, column: 17, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2027, file: !107, line: 530, column: 15)
!2243 = !DILocation(line: 530, column: 15, scope: !2027)
!2244 = !DILocation(line: 535, column: 11, scope: !2027)
!2245 = !DILocation(line: 549, column: 15, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2027, file: !107, line: 548, column: 15)
!2247 = !DILocation(line: 556, column: 15, scope: !2027)
!2248 = !DILocation(line: 558, column: 19, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !107, line: 557, column: 13)
!2250 = distinct !DILexicalBlock(scope: !2027, file: !107, line: 556, column: 15)
!2251 = !DILocation(line: 561, column: 19, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2249, file: !107, line: 561, column: 19)
!2253 = !DILocation(line: 561, column: 30, scope: !2252)
!2254 = !DILocation(line: 570, column: 15, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !107, line: 570, column: 15)
!2256 = distinct !DILexicalBlock(scope: !2249, file: !107, line: 570, column: 15)
!2257 = !DILocation(line: 570, column: 15, scope: !2256)
!2258 = !DILocation(line: 571, column: 15, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !107, line: 571, column: 15)
!2260 = distinct !DILexicalBlock(scope: !2249, file: !107, line: 571, column: 15)
!2261 = !DILocation(line: 571, column: 15, scope: !2260)
!2262 = !DILocation(line: 572, column: 15, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !107, line: 572, column: 15)
!2264 = distinct !DILexicalBlock(scope: !2249, file: !107, line: 572, column: 15)
!2265 = !DILocation(line: 572, column: 15, scope: !2264)
!2266 = !DILocation(line: 574, column: 13, scope: !2249)
!2267 = !DILocation(line: 614, column: 17, scope: !2026)
!2268 = !DILocation(line: 0, scope: !2026)
!2269 = !DILocation(line: 617, column: 29, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2031, file: !107, line: 615, column: 15)
!2271 = !{!955, !955, i64 0}
!2272 = !DILocation(line: 617, column: 27, scope: !2270)
!2273 = !DILocation(line: 678, column: 40, scope: !2026)
!2274 = !DILocation(line: 680, column: 23, scope: !2060)
!2275 = !DILocation(line: 621, column: 17, scope: !2030)
!2276 = !DILocation(line: 621, column: 27, scope: !2030)
!2277 = !DILocalVariable(name: "__dest", arg: 1, scope: !2278, file: !925, line: 57, type: !32)
!2278 = distinct !DISubprogram(name: "memset", scope: !925, file: !925, line: 57, type: !2279, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2281)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!32, !32, !47, !33}
!2281 = !{!2277, !2282, !2283}
!2282 = !DILocalVariable(name: "__ch", arg: 2, scope: !2278, file: !925, line: 57, type: !47)
!2283 = !DILocalVariable(name: "__len", arg: 3, scope: !2278, file: !925, line: 57, type: !33)
!2284 = !DILocation(line: 0, scope: !2278, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 622, column: 17, scope: !2030)
!2286 = !DILocation(line: 59, column: 10, scope: !2278, inlinedAt: !2285)
!2287 = !DILocation(line: 626, column: 29, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2030, file: !107, line: 626, column: 21)
!2289 = !DILocation(line: 626, column: 21, scope: !2030)
!2290 = !DILocation(line: 627, column: 29, scope: !2288)
!2291 = !DILocation(line: 627, column: 19, scope: !2288)
!2292 = !DILocation(line: 629, column: 17, scope: !2030)
!2293 = !DILocation(line: 624, column: 19, scope: !2030)
!2294 = !DILocation(line: 625, column: 27, scope: !2030)
!2295 = !DILocation(line: 631, column: 21, scope: !2048)
!2296 = !DILocation(line: 632, column: 56, scope: !2048)
!2297 = !DILocation(line: 632, column: 50, scope: !2048)
!2298 = !DILocation(line: 633, column: 53, scope: !2048)
!2299 = !DILocation(line: 0, scope: !2048)
!2300 = !DILocation(line: 632, column: 36, scope: !2048)
!2301 = !DILocation(line: 634, column: 25, scope: !2048)
!2302 = !DILocation(line: 644, column: 38, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2055, file: !107, line: 642, column: 23)
!2304 = !DILocation(line: 644, column: 48, scope: !2303)
!2305 = !DILocation(line: 644, column: 25, scope: !2303)
!2306 = !DILocation(line: 644, column: 51, scope: !2303)
!2307 = !DILocation(line: 645, column: 28, scope: !2303)
!2308 = !DILocation(line: 644, column: 34, scope: !2303)
!2309 = distinct !{!2309, !2305, !2307, !697}
!2310 = !DILocation(line: 655, column: 29, scope: !2053)
!2311 = !DILocation(line: 0, scope: !2052)
!2312 = !DILocation(line: 659, column: 49, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !107, line: 658, column: 29)
!2314 = distinct !DILexicalBlock(scope: !2052, file: !107, line: 658, column: 29)
!2315 = !DILocation(line: 659, column: 39, scope: !2313)
!2316 = !DILocation(line: 659, column: 31, scope: !2313)
!2317 = !DILocation(line: 658, column: 53, scope: !2313)
!2318 = !DILocation(line: 658, column: 43, scope: !2313)
!2319 = !DILocation(line: 658, column: 29, scope: !2314)
!2320 = distinct !{!2320, !2319, !2321, !697}
!2321 = !DILocation(line: 667, column: 33, scope: !2314)
!2322 = !DILocation(line: 674, column: 19, scope: !2030)
!2323 = !DILocation(line: 670, column: 41, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2054, file: !107, line: 670, column: 29)
!2325 = !DILocation(line: 670, column: 31, scope: !2324)
!2326 = !DILocation(line: 670, column: 29, scope: !2054)
!2327 = !DILocation(line: 672, column: 27, scope: !2054)
!2328 = !DILocation(line: 675, column: 26, scope: !2030)
!2329 = !DILocation(line: 675, column: 24, scope: !2030)
!2330 = !DILocation(line: 674, column: 19, scope: !2048)
!2331 = distinct !{!2331, !2292, !2332, !697}
!2332 = !DILocation(line: 675, column: 44, scope: !2030)
!2333 = !DILocation(line: 676, column: 15, scope: !2031)
!2334 = !DILocation(line: 680, column: 19, scope: !2060)
!2335 = !DILocation(line: 680, column: 45, scope: !2060)
!2336 = !DILocation(line: 684, column: 33, scope: !2059)
!2337 = !DILocation(line: 0, scope: !2059)
!2338 = !DILocation(line: 686, column: 17, scope: !2059)
!2339 = !DILocation(line: 405, column: 12, scope: !2018)
!2340 = !DILocation(line: 688, column: 43, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !107, line: 688, column: 25)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !107, line: 687, column: 19)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !107, line: 686, column: 17)
!2344 = distinct !DILexicalBlock(scope: !2059, file: !107, line: 686, column: 17)
!2345 = !DILocation(line: 690, column: 25, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !107, line: 690, column: 25)
!2347 = distinct !DILexicalBlock(scope: !2341, file: !107, line: 689, column: 23)
!2348 = !DILocation(line: 690, column: 25, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2346, file: !107, line: 690, column: 25)
!2350 = !DILocation(line: 690, column: 25, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !107, line: 690, column: 25)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !107, line: 690, column: 25)
!2353 = distinct !DILexicalBlock(scope: !2349, file: !107, line: 690, column: 25)
!2354 = !DILocation(line: 690, column: 25, scope: !2352)
!2355 = !DILocation(line: 690, column: 25, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !107, line: 690, column: 25)
!2357 = distinct !DILexicalBlock(scope: !2353, file: !107, line: 690, column: 25)
!2358 = !DILocation(line: 690, column: 25, scope: !2357)
!2359 = !DILocation(line: 690, column: 25, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !107, line: 690, column: 25)
!2361 = distinct !DILexicalBlock(scope: !2353, file: !107, line: 690, column: 25)
!2362 = !DILocation(line: 690, column: 25, scope: !2361)
!2363 = !DILocation(line: 690, column: 25, scope: !2353)
!2364 = !DILocation(line: 690, column: 25, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !107, line: 690, column: 25)
!2366 = distinct !DILexicalBlock(scope: !2346, file: !107, line: 690, column: 25)
!2367 = !DILocation(line: 690, column: 25, scope: !2366)
!2368 = !DILocation(line: 691, column: 25, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !107, line: 691, column: 25)
!2370 = distinct !DILexicalBlock(scope: !2347, file: !107, line: 691, column: 25)
!2371 = !DILocation(line: 691, column: 25, scope: !2370)
!2372 = !DILocation(line: 692, column: 25, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !107, line: 692, column: 25)
!2374 = distinct !DILexicalBlock(scope: !2347, file: !107, line: 692, column: 25)
!2375 = !DILocation(line: 692, column: 25, scope: !2374)
!2376 = !DILocation(line: 693, column: 38, scope: !2347)
!2377 = !DILocation(line: 693, column: 33, scope: !2347)
!2378 = !DILocation(line: 694, column: 23, scope: !2347)
!2379 = !DILocation(line: 695, column: 30, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2341, file: !107, line: 695, column: 30)
!2381 = !DILocation(line: 695, column: 30, scope: !2341)
!2382 = !DILocation(line: 697, column: 25, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !107, line: 697, column: 25)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !107, line: 697, column: 25)
!2385 = distinct !DILexicalBlock(scope: !2380, file: !107, line: 696, column: 23)
!2386 = !DILocation(line: 697, column: 25, scope: !2384)
!2387 = !DILocation(line: 699, column: 23, scope: !2385)
!2388 = !DILocation(line: 700, column: 35, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2342, file: !107, line: 700, column: 25)
!2390 = !DILocation(line: 700, column: 30, scope: !2389)
!2391 = !DILocation(line: 700, column: 25, scope: !2342)
!2392 = !DILocation(line: 702, column: 21, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !107, line: 702, column: 21)
!2394 = distinct !DILexicalBlock(scope: !2342, file: !107, line: 702, column: 21)
!2395 = !DILocation(line: 702, column: 21, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !107, line: 702, column: 21)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !107, line: 702, column: 21)
!2398 = distinct !DILexicalBlock(scope: !2393, file: !107, line: 702, column: 21)
!2399 = !DILocation(line: 702, column: 21, scope: !2397)
!2400 = !DILocation(line: 702, column: 21, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !107, line: 702, column: 21)
!2402 = distinct !DILexicalBlock(scope: !2398, file: !107, line: 702, column: 21)
!2403 = !DILocation(line: 702, column: 21, scope: !2402)
!2404 = !DILocation(line: 702, column: 21, scope: !2398)
!2405 = !DILocation(line: 0, scope: !2342)
!2406 = !DILocation(line: 703, column: 21, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !107, line: 703, column: 21)
!2408 = distinct !DILexicalBlock(scope: !2342, file: !107, line: 703, column: 21)
!2409 = !DILocation(line: 703, column: 21, scope: !2408)
!2410 = !DILocation(line: 704, column: 25, scope: !2342)
!2411 = !DILocation(line: 686, column: 17, scope: !2343)
!2412 = distinct !{!2412, !2413, !2414}
!2413 = !DILocation(line: 686, column: 17, scope: !2344)
!2414 = !DILocation(line: 705, column: 19, scope: !2344)
!2415 = !DILocation(line: 416, column: 30, scope: !2136)
!2416 = !DILocation(line: 712, column: 34, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2018, file: !107, line: 712, column: 11)
!2418 = !DILocation(line: 715, column: 35, scope: !2417)
!2419 = !DILocation(line: 715, column: 17, scope: !2417)
!2420 = !DILocation(line: 715, column: 47, scope: !2417)
!2421 = !DILocation(line: 715, column: 65, scope: !2417)
!2422 = !DILocation(line: 716, column: 11, scope: !2417)
!2423 = !DILocation(line: 712, column: 11, scope: !2018)
!2424 = !DILocation(line: 400, column: 10, scope: !2020)
!2425 = !DILocation(line: 719, column: 5, scope: !2018)
!2426 = !DILocation(line: 720, column: 7, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2018, file: !107, line: 720, column: 7)
!2428 = !DILocation(line: 720, column: 7, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2427, file: !107, line: 720, column: 7)
!2430 = !DILocation(line: 720, column: 7, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !107, line: 720, column: 7)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !107, line: 720, column: 7)
!2433 = distinct !DILexicalBlock(scope: !2429, file: !107, line: 720, column: 7)
!2434 = !DILocation(line: 720, column: 7, scope: !2432)
!2435 = !DILocation(line: 720, column: 7, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !107, line: 720, column: 7)
!2437 = distinct !DILexicalBlock(scope: !2433, file: !107, line: 720, column: 7)
!2438 = !DILocation(line: 720, column: 7, scope: !2437)
!2439 = !DILocation(line: 720, column: 7, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !107, line: 720, column: 7)
!2441 = distinct !DILexicalBlock(scope: !2433, file: !107, line: 720, column: 7)
!2442 = !DILocation(line: 720, column: 7, scope: !2441)
!2443 = !DILocation(line: 720, column: 7, scope: !2433)
!2444 = !DILocation(line: 720, column: 7, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !107, line: 720, column: 7)
!2446 = distinct !DILexicalBlock(scope: !2427, file: !107, line: 720, column: 7)
!2447 = !DILocation(line: 720, column: 7, scope: !2446)
!2448 = !DILocation(line: 722, column: 5, scope: !2018)
!2449 = !DILocation(line: 723, column: 7, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !107, line: 723, column: 7)
!2451 = distinct !DILexicalBlock(scope: !2018, file: !107, line: 723, column: 7)
!2452 = !DILocation(line: 424, column: 9, scope: !2018)
!2453 = !DILocation(line: 723, column: 7, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !107, line: 723, column: 7)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !107, line: 723, column: 7)
!2456 = distinct !DILexicalBlock(scope: !2450, file: !107, line: 723, column: 7)
!2457 = !DILocation(line: 723, column: 7, scope: !2455)
!2458 = !DILocation(line: 723, column: 7, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !107, line: 723, column: 7)
!2460 = distinct !DILexicalBlock(scope: !2456, file: !107, line: 723, column: 7)
!2461 = !DILocation(line: 723, column: 7, scope: !2460)
!2462 = !DILocation(line: 723, column: 7, scope: !2456)
!2463 = !DILocation(line: 724, column: 7, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !107, line: 724, column: 7)
!2465 = distinct !DILexicalBlock(scope: !2018, file: !107, line: 724, column: 7)
!2466 = !DILocation(line: 724, column: 7, scope: !2465)
!2467 = !DILocation(line: 726, column: 13, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2018, file: !107, line: 726, column: 11)
!2469 = !DILocation(line: 726, column: 11, scope: !2018)
!2470 = !DILocation(line: 728, column: 5, scope: !2019)
!2471 = !DILocation(line: 400, column: 75, scope: !2019)
!2472 = !DILocation(line: 400, column: 3, scope: !2019)
!2473 = distinct !{!2473, !2132, !2474, !697}
!2474 = !DILocation(line: 728, column: 5, scope: !2020)
!2475 = !DILocation(line: 730, column: 11, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !1991, file: !107, line: 730, column: 7)
!2477 = !DILocation(line: 730, column: 16, scope: !2476)
!2478 = !DILocation(line: 738, column: 51, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !1991, file: !107, line: 738, column: 7)
!2480 = !DILocation(line: 741, column: 11, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !107, line: 741, column: 11)
!2482 = distinct !DILexicalBlock(scope: !2479, file: !107, line: 740, column: 5)
!2483 = !DILocation(line: 741, column: 11, scope: !2482)
!2484 = !DILocation(line: 742, column: 16, scope: !2481)
!2485 = !DILocation(line: 742, column: 9, scope: !2481)
!2486 = !DILocation(line: 746, column: 18, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2481, file: !107, line: 746, column: 16)
!2488 = !DILocation(line: 746, column: 29, scope: !2487)
!2489 = !DILocation(line: 755, column: 7, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !1991, file: !107, line: 755, column: 7)
!2491 = !DILocation(line: 755, column: 20, scope: !2490)
!2492 = !DILocation(line: 756, column: 12, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !107, line: 756, column: 5)
!2494 = distinct !DILexicalBlock(scope: !2490, file: !107, line: 756, column: 5)
!2495 = !DILocation(line: 756, column: 5, scope: !2494)
!2496 = !DILocation(line: 757, column: 7, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !107, line: 757, column: 7)
!2498 = distinct !DILexicalBlock(scope: !2493, file: !107, line: 757, column: 7)
!2499 = !DILocation(line: 757, column: 7, scope: !2498)
!2500 = !DILocation(line: 756, column: 39, scope: !2493)
!2501 = distinct !{!2501, !2495, !2502, !697}
!2502 = !DILocation(line: 757, column: 7, scope: !2494)
!2503 = !DILocation(line: 759, column: 11, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !1991, file: !107, line: 759, column: 7)
!2505 = !DILocation(line: 759, column: 7, scope: !1991)
!2506 = !DILocation(line: 760, column: 5, scope: !2504)
!2507 = !DILocation(line: 760, column: 17, scope: !2504)
!2508 = !DILocation(line: 763, column: 2, scope: !1991)
!2509 = !DILocation(line: 766, column: 51, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !1991, file: !107, line: 766, column: 7)
!2511 = !DILocation(line: 766, column: 21, scope: !2510)
!2512 = !DILocation(line: 770, column: 42, scope: !1991)
!2513 = !DILocation(line: 768, column: 10, scope: !1991)
!2514 = !DILocation(line: 768, column: 3, scope: !1991)
!2515 = !DILocation(line: 772, column: 1, scope: !1991)
!2516 = distinct !DISubprogram(name: "gettext_quote", scope: !107, file: !107, line: 207, type: !2517, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2519)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!36, !36, !5}
!2519 = !{!2520, !2521, !2522, !2523}
!2520 = !DILocalVariable(name: "msgid", arg: 1, scope: !2516, file: !107, line: 207, type: !36)
!2521 = !DILocalVariable(name: "s", arg: 2, scope: !2516, file: !107, line: 207, type: !5)
!2522 = !DILocalVariable(name: "translation", scope: !2516, file: !107, line: 209, type: !36)
!2523 = !DILocalVariable(name: "locale_code", scope: !2516, file: !107, line: 210, type: !36)
!2524 = !DILocation(line: 0, scope: !2516)
!2525 = !DILocation(line: 209, column: 29, scope: !2516)
!2526 = !DILocation(line: 212, column: 19, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2516, file: !107, line: 212, column: 7)
!2528 = !DILocation(line: 212, column: 7, scope: !2516)
!2529 = !DILocation(line: 233, column: 17, scope: !2516)
!2530 = !DILocalVariable(name: "s1", arg: 1, scope: !2531, file: !2532, line: 160, type: !36)
!2531 = distinct !DISubprogram(name: "strcaseeq0", scope: !2532, file: !2532, line: 160, type: !2533, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2535)
!2532 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!47, !36, !36, !31, !31, !31, !31, !31, !31, !31, !31, !31}
!2535 = !{!2530, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545}
!2536 = !DILocalVariable(name: "s2", arg: 2, scope: !2531, file: !2532, line: 160, type: !36)
!2537 = !DILocalVariable(name: "s20", arg: 3, scope: !2531, file: !2532, line: 160, type: !31)
!2538 = !DILocalVariable(name: "s21", arg: 4, scope: !2531, file: !2532, line: 160, type: !31)
!2539 = !DILocalVariable(name: "s22", arg: 5, scope: !2531, file: !2532, line: 160, type: !31)
!2540 = !DILocalVariable(name: "s23", arg: 6, scope: !2531, file: !2532, line: 160, type: !31)
!2541 = !DILocalVariable(name: "s24", arg: 7, scope: !2531, file: !2532, line: 160, type: !31)
!2542 = !DILocalVariable(name: "s25", arg: 8, scope: !2531, file: !2532, line: 160, type: !31)
!2543 = !DILocalVariable(name: "s26", arg: 9, scope: !2531, file: !2532, line: 160, type: !31)
!2544 = !DILocalVariable(name: "s27", arg: 10, scope: !2531, file: !2532, line: 160, type: !31)
!2545 = !DILocalVariable(name: "s28", arg: 11, scope: !2531, file: !2532, line: 160, type: !31)
!2546 = !DILocation(line: 0, scope: !2531, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 234, column: 7, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2516, file: !107, line: 234, column: 7)
!2549 = !DILocation(line: 162, column: 7, scope: !2550, inlinedAt: !2547)
!2550 = distinct !DILexicalBlock(scope: !2531, file: !2532, line: 162, column: 7)
!2551 = !DILocalVariable(name: "s1", arg: 1, scope: !2552, file: !2532, line: 146, type: !36)
!2552 = distinct !DISubprogram(name: "strcaseeq1", scope: !2532, file: !2532, line: 146, type: !2553, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2555)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!47, !36, !36, !31, !31, !31, !31, !31, !31, !31, !31}
!2555 = !{!2551, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564}
!2556 = !DILocalVariable(name: "s2", arg: 2, scope: !2552, file: !2532, line: 146, type: !36)
!2557 = !DILocalVariable(name: "s21", arg: 3, scope: !2552, file: !2532, line: 146, type: !31)
!2558 = !DILocalVariable(name: "s22", arg: 4, scope: !2552, file: !2532, line: 146, type: !31)
!2559 = !DILocalVariable(name: "s23", arg: 5, scope: !2552, file: !2532, line: 146, type: !31)
!2560 = !DILocalVariable(name: "s24", arg: 6, scope: !2552, file: !2532, line: 146, type: !31)
!2561 = !DILocalVariable(name: "s25", arg: 7, scope: !2552, file: !2532, line: 146, type: !31)
!2562 = !DILocalVariable(name: "s26", arg: 8, scope: !2552, file: !2532, line: 146, type: !31)
!2563 = !DILocalVariable(name: "s27", arg: 9, scope: !2552, file: !2532, line: 146, type: !31)
!2564 = !DILocalVariable(name: "s28", arg: 10, scope: !2552, file: !2532, line: 146, type: !31)
!2565 = !DILocation(line: 0, scope: !2552, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 167, column: 16, scope: !2567, inlinedAt: !2547)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !2532, line: 164, column: 11)
!2568 = distinct !DILexicalBlock(scope: !2550, file: !2532, line: 163, column: 5)
!2569 = !DILocation(line: 148, column: 7, scope: !2570, inlinedAt: !2566)
!2570 = distinct !DILexicalBlock(scope: !2552, file: !2532, line: 148, column: 7)
!2571 = !DILocalVariable(name: "s1", arg: 1, scope: !2572, file: !2532, line: 132, type: !36)
!2572 = distinct !DISubprogram(name: "strcaseeq2", scope: !2532, file: !2532, line: 132, type: !2573, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2575)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!47, !36, !36, !31, !31, !31, !31, !31, !31, !31}
!2575 = !{!2571, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583}
!2576 = !DILocalVariable(name: "s2", arg: 2, scope: !2572, file: !2532, line: 132, type: !36)
!2577 = !DILocalVariable(name: "s22", arg: 3, scope: !2572, file: !2532, line: 132, type: !31)
!2578 = !DILocalVariable(name: "s23", arg: 4, scope: !2572, file: !2532, line: 132, type: !31)
!2579 = !DILocalVariable(name: "s24", arg: 5, scope: !2572, file: !2532, line: 132, type: !31)
!2580 = !DILocalVariable(name: "s25", arg: 6, scope: !2572, file: !2532, line: 132, type: !31)
!2581 = !DILocalVariable(name: "s26", arg: 7, scope: !2572, file: !2532, line: 132, type: !31)
!2582 = !DILocalVariable(name: "s27", arg: 8, scope: !2572, file: !2532, line: 132, type: !31)
!2583 = !DILocalVariable(name: "s28", arg: 9, scope: !2572, file: !2532, line: 132, type: !31)
!2584 = !DILocation(line: 0, scope: !2572, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 153, column: 16, scope: !2586, inlinedAt: !2566)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !2532, line: 150, column: 11)
!2587 = distinct !DILexicalBlock(scope: !2570, file: !2532, line: 149, column: 5)
!2588 = !DILocation(line: 134, column: 7, scope: !2589, inlinedAt: !2585)
!2589 = distinct !DILexicalBlock(scope: !2572, file: !2532, line: 134, column: 7)
!2590 = !DILocalVariable(name: "s1", arg: 1, scope: !2591, file: !2532, line: 118, type: !36)
!2591 = distinct !DISubprogram(name: "strcaseeq3", scope: !2532, file: !2532, line: 118, type: !2592, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!47, !36, !36, !31, !31, !31, !31, !31, !31}
!2594 = !{!2590, !2595, !2596, !2597, !2598, !2599, !2600, !2601}
!2595 = !DILocalVariable(name: "s2", arg: 2, scope: !2591, file: !2532, line: 118, type: !36)
!2596 = !DILocalVariable(name: "s23", arg: 3, scope: !2591, file: !2532, line: 118, type: !31)
!2597 = !DILocalVariable(name: "s24", arg: 4, scope: !2591, file: !2532, line: 118, type: !31)
!2598 = !DILocalVariable(name: "s25", arg: 5, scope: !2591, file: !2532, line: 118, type: !31)
!2599 = !DILocalVariable(name: "s26", arg: 6, scope: !2591, file: !2532, line: 118, type: !31)
!2600 = !DILocalVariable(name: "s27", arg: 7, scope: !2591, file: !2532, line: 118, type: !31)
!2601 = !DILocalVariable(name: "s28", arg: 8, scope: !2591, file: !2532, line: 118, type: !31)
!2602 = !DILocation(line: 0, scope: !2591, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 139, column: 16, scope: !2604, inlinedAt: !2585)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !2532, line: 136, column: 11)
!2605 = distinct !DILexicalBlock(scope: !2589, file: !2532, line: 135, column: 5)
!2606 = !DILocation(line: 120, column: 7, scope: !2607, inlinedAt: !2603)
!2607 = distinct !DILexicalBlock(scope: !2591, file: !2532, line: 120, column: 7)
!2608 = !DILocation(line: 120, column: 7, scope: !2591, inlinedAt: !2603)
!2609 = !DILocalVariable(name: "s1", arg: 1, scope: !2610, file: !2532, line: 104, type: !36)
!2610 = distinct !DISubprogram(name: "strcaseeq4", scope: !2532, file: !2532, line: 104, type: !2611, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2613)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!47, !36, !36, !31, !31, !31, !31, !31}
!2613 = !{!2609, !2614, !2615, !2616, !2617, !2618, !2619}
!2614 = !DILocalVariable(name: "s2", arg: 2, scope: !2610, file: !2532, line: 104, type: !36)
!2615 = !DILocalVariable(name: "s24", arg: 3, scope: !2610, file: !2532, line: 104, type: !31)
!2616 = !DILocalVariable(name: "s25", arg: 4, scope: !2610, file: !2532, line: 104, type: !31)
!2617 = !DILocalVariable(name: "s26", arg: 5, scope: !2610, file: !2532, line: 104, type: !31)
!2618 = !DILocalVariable(name: "s27", arg: 6, scope: !2610, file: !2532, line: 104, type: !31)
!2619 = !DILocalVariable(name: "s28", arg: 7, scope: !2610, file: !2532, line: 104, type: !31)
!2620 = !DILocation(line: 0, scope: !2610, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 125, column: 16, scope: !2622, inlinedAt: !2603)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !2532, line: 122, column: 11)
!2623 = distinct !DILexicalBlock(scope: !2607, file: !2532, line: 121, column: 5)
!2624 = !DILocation(line: 106, column: 7, scope: !2625, inlinedAt: !2621)
!2625 = distinct !DILexicalBlock(scope: !2610, file: !2532, line: 106, column: 7)
!2626 = !DILocation(line: 106, column: 7, scope: !2610, inlinedAt: !2621)
!2627 = !DILocalVariable(name: "s1", arg: 1, scope: !2628, file: !2532, line: 90, type: !36)
!2628 = distinct !DISubprogram(name: "strcaseeq5", scope: !2532, file: !2532, line: 90, type: !2629, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2631)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!47, !36, !36, !31, !31, !31, !31}
!2631 = !{!2627, !2632, !2633, !2634, !2635, !2636}
!2632 = !DILocalVariable(name: "s2", arg: 2, scope: !2628, file: !2532, line: 90, type: !36)
!2633 = !DILocalVariable(name: "s25", arg: 3, scope: !2628, file: !2532, line: 90, type: !31)
!2634 = !DILocalVariable(name: "s26", arg: 4, scope: !2628, file: !2532, line: 90, type: !31)
!2635 = !DILocalVariable(name: "s27", arg: 5, scope: !2628, file: !2532, line: 90, type: !31)
!2636 = !DILocalVariable(name: "s28", arg: 6, scope: !2628, file: !2532, line: 90, type: !31)
!2637 = !DILocation(line: 0, scope: !2628, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 111, column: 16, scope: !2639, inlinedAt: !2621)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !2532, line: 108, column: 11)
!2640 = distinct !DILexicalBlock(scope: !2625, file: !2532, line: 107, column: 5)
!2641 = !DILocation(line: 92, column: 7, scope: !2642, inlinedAt: !2638)
!2642 = distinct !DILexicalBlock(scope: !2628, file: !2532, line: 92, column: 7)
!2643 = !DILocation(line: 92, column: 7, scope: !2628, inlinedAt: !2638)
!2644 = !DILocation(line: 235, column: 12, scope: !2548)
!2645 = !DILocation(line: 235, column: 21, scope: !2548)
!2646 = !DILocation(line: 235, column: 5, scope: !2548)
!2647 = !DILocation(line: 0, scope: !2552, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 167, column: 16, scope: !2567, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 236, column: 7, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2516, file: !107, line: 236, column: 7)
!2651 = !DILocation(line: 148, column: 7, scope: !2570, inlinedAt: !2648)
!2652 = !DILocation(line: 0, scope: !2572, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 153, column: 16, scope: !2586, inlinedAt: !2648)
!2654 = !DILocation(line: 134, column: 7, scope: !2589, inlinedAt: !2653)
!2655 = !DILocation(line: 134, column: 7, scope: !2572, inlinedAt: !2653)
!2656 = !DILocation(line: 0, scope: !2591, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 139, column: 16, scope: !2604, inlinedAt: !2653)
!2658 = !DILocation(line: 120, column: 7, scope: !2607, inlinedAt: !2657)
!2659 = !DILocation(line: 120, column: 7, scope: !2591, inlinedAt: !2657)
!2660 = !DILocation(line: 0, scope: !2610, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 125, column: 16, scope: !2622, inlinedAt: !2657)
!2662 = !DILocation(line: 106, column: 7, scope: !2625, inlinedAt: !2661)
!2663 = !DILocation(line: 106, column: 7, scope: !2610, inlinedAt: !2661)
!2664 = !DILocation(line: 0, scope: !2628, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 111, column: 16, scope: !2639, inlinedAt: !2661)
!2666 = !DILocation(line: 92, column: 7, scope: !2642, inlinedAt: !2665)
!2667 = !DILocation(line: 92, column: 7, scope: !2628, inlinedAt: !2665)
!2668 = !DILocalVariable(name: "s1", arg: 1, scope: !2669, file: !2532, line: 76, type: !36)
!2669 = distinct !DISubprogram(name: "strcaseeq6", scope: !2532, file: !2532, line: 76, type: !2670, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2672)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!47, !36, !36, !31, !31, !31}
!2672 = !{!2668, !2673, !2674, !2675, !2676}
!2673 = !DILocalVariable(name: "s2", arg: 2, scope: !2669, file: !2532, line: 76, type: !36)
!2674 = !DILocalVariable(name: "s26", arg: 3, scope: !2669, file: !2532, line: 76, type: !31)
!2675 = !DILocalVariable(name: "s27", arg: 4, scope: !2669, file: !2532, line: 76, type: !31)
!2676 = !DILocalVariable(name: "s28", arg: 5, scope: !2669, file: !2532, line: 76, type: !31)
!2677 = !DILocation(line: 0, scope: !2669, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 97, column: 16, scope: !2679, inlinedAt: !2665)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !2532, line: 94, column: 11)
!2680 = distinct !DILexicalBlock(scope: !2642, file: !2532, line: 93, column: 5)
!2681 = !DILocation(line: 78, column: 7, scope: !2682, inlinedAt: !2678)
!2682 = distinct !DILexicalBlock(scope: !2669, file: !2532, line: 78, column: 7)
!2683 = !DILocation(line: 78, column: 7, scope: !2669, inlinedAt: !2678)
!2684 = !DILocalVariable(name: "s1", arg: 1, scope: !2685, file: !2532, line: 62, type: !36)
!2685 = distinct !DISubprogram(name: "strcaseeq7", scope: !2532, file: !2532, line: 62, type: !2686, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2688)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!47, !36, !36, !31, !31}
!2688 = !{!2684, !2689, !2690, !2691}
!2689 = !DILocalVariable(name: "s2", arg: 2, scope: !2685, file: !2532, line: 62, type: !36)
!2690 = !DILocalVariable(name: "s27", arg: 3, scope: !2685, file: !2532, line: 62, type: !31)
!2691 = !DILocalVariable(name: "s28", arg: 4, scope: !2685, file: !2532, line: 62, type: !31)
!2692 = !DILocation(line: 0, scope: !2685, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 83, column: 16, scope: !2694, inlinedAt: !2678)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !2532, line: 80, column: 11)
!2695 = distinct !DILexicalBlock(scope: !2682, file: !2532, line: 79, column: 5)
!2696 = !DILocation(line: 64, column: 7, scope: !2697, inlinedAt: !2693)
!2697 = distinct !DILexicalBlock(scope: !2685, file: !2532, line: 64, column: 7)
!2698 = !DILocation(line: 236, column: 7, scope: !2516)
!2699 = !DILocation(line: 237, column: 12, scope: !2650)
!2700 = !DILocation(line: 237, column: 21, scope: !2650)
!2701 = !DILocation(line: 237, column: 5, scope: !2650)
!2702 = !DILocation(line: 239, column: 13, scope: !2516)
!2703 = !DILocation(line: 239, column: 11, scope: !2516)
!2704 = !DILocation(line: 239, column: 3, scope: !2516)
!2705 = !DILocation(line: 240, column: 1, scope: !2516)
!2706 = !DISubprogram(name: "iswprint", scope: !2707, file: !2707, line: 120, type: !2708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!2707 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!47, !7}
!2710 = !DISubprogram(name: "mbsinit", scope: !2711, file: !2711, line: 292, type: !2712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!2711 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!47, !2714}
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2036)
!2716 = distinct !DISubprogram(name: "quotearg_alloc", scope: !107, file: !107, line: 799, type: !2717, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2719)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!30, !36, !33, !1883}
!2719 = !{!2720, !2721, !2722}
!2720 = !DILocalVariable(name: "arg", arg: 1, scope: !2716, file: !107, line: 799, type: !36)
!2721 = !DILocalVariable(name: "argsize", arg: 2, scope: !2716, file: !107, line: 799, type: !33)
!2722 = !DILocalVariable(name: "o", arg: 3, scope: !2716, file: !107, line: 800, type: !1883)
!2723 = !DILocation(line: 0, scope: !2716)
!2724 = !DILocalVariable(name: "arg", arg: 1, scope: !2725, file: !107, line: 812, type: !36)
!2725 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !107, file: !107, line: 812, type: !2726, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2728)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!30, !36, !33, !196, !1883}
!2728 = !{!2724, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736}
!2729 = !DILocalVariable(name: "argsize", arg: 2, scope: !2725, file: !107, line: 812, type: !33)
!2730 = !DILocalVariable(name: "size", arg: 3, scope: !2725, file: !107, line: 812, type: !196)
!2731 = !DILocalVariable(name: "o", arg: 4, scope: !2725, file: !107, line: 813, type: !1883)
!2732 = !DILocalVariable(name: "p", scope: !2725, file: !107, line: 815, type: !1883)
!2733 = !DILocalVariable(name: "e", scope: !2725, file: !107, line: 816, type: !47)
!2734 = !DILocalVariable(name: "flags", scope: !2725, file: !107, line: 818, type: !47)
!2735 = !DILocalVariable(name: "bufsize", scope: !2725, file: !107, line: 819, type: !33)
!2736 = !DILocalVariable(name: "buf", scope: !2725, file: !107, line: 823, type: !30)
!2737 = !DILocation(line: 0, scope: !2725, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 802, column: 10, scope: !2716)
!2739 = !DILocation(line: 815, column: 37, scope: !2725, inlinedAt: !2738)
!2740 = !DILocation(line: 816, column: 11, scope: !2725, inlinedAt: !2738)
!2741 = !DILocation(line: 818, column: 18, scope: !2725, inlinedAt: !2738)
!2742 = !DILocation(line: 818, column: 24, scope: !2725, inlinedAt: !2738)
!2743 = !DILocation(line: 819, column: 69, scope: !2725, inlinedAt: !2738)
!2744 = !DILocation(line: 820, column: 53, scope: !2725, inlinedAt: !2738)
!2745 = !DILocation(line: 821, column: 49, scope: !2725, inlinedAt: !2738)
!2746 = !DILocation(line: 822, column: 49, scope: !2725, inlinedAt: !2738)
!2747 = !DILocation(line: 819, column: 20, scope: !2725, inlinedAt: !2738)
!2748 = !DILocation(line: 822, column: 62, scope: !2725, inlinedAt: !2738)
!2749 = !DILocalVariable(name: "n", arg: 1, scope: !2750, file: !192, line: 216, type: !33)
!2750 = distinct !DISubprogram(name: "xcharalloc", scope: !192, file: !192, line: 216, type: !2751, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2753)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!30, !33}
!2753 = !{!2749}
!2754 = !DILocation(line: 0, scope: !2750, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 823, column: 15, scope: !2725, inlinedAt: !2738)
!2756 = !DILocation(line: 218, column: 10, scope: !2750, inlinedAt: !2755)
!2757 = !DILocation(line: 824, column: 60, scope: !2725, inlinedAt: !2738)
!2758 = !DILocation(line: 826, column: 32, scope: !2725, inlinedAt: !2738)
!2759 = !DILocation(line: 826, column: 47, scope: !2725, inlinedAt: !2738)
!2760 = !DILocation(line: 824, column: 3, scope: !2725, inlinedAt: !2738)
!2761 = !DILocation(line: 827, column: 9, scope: !2725, inlinedAt: !2738)
!2762 = !DILocation(line: 802, column: 3, scope: !2716)
!2763 = !DILocation(line: 0, scope: !2725)
!2764 = !DILocation(line: 815, column: 37, scope: !2725)
!2765 = !DILocation(line: 816, column: 11, scope: !2725)
!2766 = !DILocation(line: 818, column: 18, scope: !2725)
!2767 = !DILocation(line: 818, column: 27, scope: !2725)
!2768 = !DILocation(line: 818, column: 24, scope: !2725)
!2769 = !DILocation(line: 819, column: 69, scope: !2725)
!2770 = !DILocation(line: 820, column: 53, scope: !2725)
!2771 = !DILocation(line: 821, column: 49, scope: !2725)
!2772 = !DILocation(line: 822, column: 49, scope: !2725)
!2773 = !DILocation(line: 819, column: 20, scope: !2725)
!2774 = !DILocation(line: 822, column: 62, scope: !2725)
!2775 = !DILocation(line: 0, scope: !2750, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 823, column: 15, scope: !2725)
!2777 = !DILocation(line: 218, column: 10, scope: !2750, inlinedAt: !2776)
!2778 = !DILocation(line: 824, column: 60, scope: !2725)
!2779 = !DILocation(line: 826, column: 32, scope: !2725)
!2780 = !DILocation(line: 826, column: 47, scope: !2725)
!2781 = !DILocation(line: 824, column: 3, scope: !2725)
!2782 = !DILocation(line: 827, column: 9, scope: !2725)
!2783 = !DILocation(line: 828, column: 7, scope: !2725)
!2784 = !DILocation(line: 829, column: 11, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2725, file: !107, line: 828, column: 7)
!2786 = !DILocation(line: 829, column: 5, scope: !2785)
!2787 = !DILocation(line: 830, column: 3, scope: !2725)
!2788 = distinct !DISubprogram(name: "quotearg_free", scope: !107, file: !107, line: 848, type: !655, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2789)
!2789 = !{!2790, !2791}
!2790 = !DILocalVariable(name: "sv", scope: !2788, file: !107, line: 850, type: !157)
!2791 = !DILocalVariable(name: "i", scope: !2788, file: !107, line: 851, type: !47)
!2792 = !DILocation(line: 850, column: 24, scope: !2788)
!2793 = !DILocation(line: 0, scope: !2788)
!2794 = !DILocation(line: 852, column: 19, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !107, line: 852, column: 3)
!2796 = distinct !DILexicalBlock(scope: !2788, file: !107, line: 852, column: 3)
!2797 = !DILocation(line: 852, column: 17, scope: !2795)
!2798 = !DILocation(line: 852, column: 3, scope: !2796)
!2799 = !DILocation(line: 853, column: 17, scope: !2795)
!2800 = !{!2801, !646, i64 8}
!2801 = !{!"slotvec", !906, i64 0, !646, i64 8}
!2802 = !DILocation(line: 853, column: 5, scope: !2795)
!2803 = !DILocation(line: 852, column: 28, scope: !2795)
!2804 = distinct !{!2804, !2798, !2805, !697}
!2805 = !DILocation(line: 853, column: 20, scope: !2796)
!2806 = !DILocation(line: 854, column: 13, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2788, file: !107, line: 854, column: 7)
!2808 = !DILocation(line: 854, column: 17, scope: !2807)
!2809 = !DILocation(line: 854, column: 7, scope: !2788)
!2810 = !DILocation(line: 856, column: 7, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2807, file: !107, line: 855, column: 5)
!2812 = !DILocation(line: 857, column: 21, scope: !2811)
!2813 = !{!2801, !906, i64 0}
!2814 = !DILocation(line: 858, column: 20, scope: !2811)
!2815 = !DILocation(line: 859, column: 5, scope: !2811)
!2816 = !DILocation(line: 860, column: 10, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2788, file: !107, line: 860, column: 7)
!2818 = !DILocation(line: 860, column: 7, scope: !2788)
!2819 = !DILocation(line: 862, column: 13, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2817, file: !107, line: 861, column: 5)
!2821 = !DILocation(line: 862, column: 7, scope: !2820)
!2822 = !DILocation(line: 863, column: 15, scope: !2820)
!2823 = !DILocation(line: 864, column: 5, scope: !2820)
!2824 = !DILocation(line: 865, column: 10, scope: !2788)
!2825 = !DILocation(line: 866, column: 1, scope: !2788)
!2826 = distinct !DISubprogram(name: "quotearg_n", scope: !107, file: !107, line: 931, type: !778, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2827)
!2827 = !{!2828, !2829}
!2828 = !DILocalVariable(name: "n", arg: 1, scope: !2826, file: !107, line: 931, type: !47)
!2829 = !DILocalVariable(name: "arg", arg: 2, scope: !2826, file: !107, line: 931, type: !36)
!2830 = !DILocation(line: 0, scope: !2826)
!2831 = !DILocation(line: 933, column: 10, scope: !2826)
!2832 = !DILocation(line: 933, column: 3, scope: !2826)
!2833 = distinct !DISubprogram(name: "quotearg_n_options", scope: !107, file: !107, line: 877, type: !2834, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!30, !47, !36, !33, !1883}
!2836 = !{!2837, !2838, !2839, !2840, !2841, !2842, !2843, !2846, !2847, !2849, !2850, !2851}
!2837 = !DILocalVariable(name: "n", arg: 1, scope: !2833, file: !107, line: 877, type: !47)
!2838 = !DILocalVariable(name: "arg", arg: 2, scope: !2833, file: !107, line: 877, type: !36)
!2839 = !DILocalVariable(name: "argsize", arg: 3, scope: !2833, file: !107, line: 877, type: !33)
!2840 = !DILocalVariable(name: "options", arg: 4, scope: !2833, file: !107, line: 878, type: !1883)
!2841 = !DILocalVariable(name: "e", scope: !2833, file: !107, line: 880, type: !47)
!2842 = !DILocalVariable(name: "sv", scope: !2833, file: !107, line: 882, type: !157)
!2843 = !DILocalVariable(name: "preallocated", scope: !2844, file: !107, line: 889, type: !92)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !107, line: 888, column: 5)
!2845 = distinct !DILexicalBlock(scope: !2833, file: !107, line: 887, column: 7)
!2846 = !DILocalVariable(name: "nmax", scope: !2844, file: !107, line: 890, type: !47)
!2847 = !DILocalVariable(name: "size", scope: !2848, file: !107, line: 903, type: !33)
!2848 = distinct !DILexicalBlock(scope: !2833, file: !107, line: 902, column: 3)
!2849 = !DILocalVariable(name: "val", scope: !2848, file: !107, line: 904, type: !30)
!2850 = !DILocalVariable(name: "flags", scope: !2848, file: !107, line: 906, type: !47)
!2851 = !DILocalVariable(name: "qsize", scope: !2848, file: !107, line: 907, type: !33)
!2852 = !DILocation(line: 0, scope: !2833)
!2853 = !DILocation(line: 880, column: 11, scope: !2833)
!2854 = !DILocation(line: 882, column: 24, scope: !2833)
!2855 = !DILocation(line: 884, column: 9, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2833, file: !107, line: 884, column: 7)
!2857 = !DILocation(line: 884, column: 7, scope: !2833)
!2858 = !DILocation(line: 885, column: 5, scope: !2856)
!2859 = !DILocation(line: 887, column: 7, scope: !2845)
!2860 = !DILocation(line: 887, column: 14, scope: !2845)
!2861 = !DILocation(line: 887, column: 7, scope: !2833)
!2862 = !DILocation(line: 889, column: 31, scope: !2844)
!2863 = !DILocation(line: 0, scope: !2844)
!2864 = !DILocation(line: 892, column: 16, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2844, file: !107, line: 892, column: 11)
!2866 = !DILocation(line: 892, column: 11, scope: !2844)
!2867 = !DILocation(line: 893, column: 9, scope: !2865)
!2868 = !DILocation(line: 895, column: 32, scope: !2844)
!2869 = !DILocation(line: 895, column: 61, scope: !2844)
!2870 = !DILocation(line: 895, column: 66, scope: !2844)
!2871 = !DILocation(line: 895, column: 22, scope: !2844)
!2872 = !DILocation(line: 895, column: 15, scope: !2844)
!2873 = !DILocation(line: 896, column: 11, scope: !2844)
!2874 = !DILocation(line: 897, column: 15, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2844, file: !107, line: 896, column: 11)
!2876 = !{i64 0, i64 8, !905, i64 8, i64 8, !645}
!2877 = !DILocation(line: 897, column: 9, scope: !2875)
!2878 = !DILocation(line: 898, column: 20, scope: !2844)
!2879 = !DILocation(line: 898, column: 18, scope: !2844)
!2880 = !DILocation(line: 898, column: 15, scope: !2844)
!2881 = !DILocation(line: 898, column: 38, scope: !2844)
!2882 = !DILocation(line: 898, column: 31, scope: !2844)
!2883 = !DILocation(line: 898, column: 48, scope: !2844)
!2884 = !DILocation(line: 0, scope: !2278, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 898, column: 7, scope: !2844)
!2886 = !DILocation(line: 59, column: 10, scope: !2278, inlinedAt: !2885)
!2887 = !DILocation(line: 899, column: 14, scope: !2844)
!2888 = !DILocation(line: 900, column: 5, scope: !2844)
!2889 = !DILocation(line: 903, column: 19, scope: !2848)
!2890 = !DILocation(line: 903, column: 25, scope: !2848)
!2891 = !DILocation(line: 0, scope: !2848)
!2892 = !DILocation(line: 904, column: 23, scope: !2848)
!2893 = !DILocation(line: 906, column: 26, scope: !2848)
!2894 = !DILocation(line: 906, column: 32, scope: !2848)
!2895 = !DILocation(line: 908, column: 55, scope: !2848)
!2896 = !DILocation(line: 909, column: 46, scope: !2848)
!2897 = !DILocation(line: 910, column: 55, scope: !2848)
!2898 = !DILocation(line: 911, column: 55, scope: !2848)
!2899 = !DILocation(line: 907, column: 20, scope: !2848)
!2900 = !DILocation(line: 913, column: 14, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2848, file: !107, line: 913, column: 9)
!2902 = !DILocation(line: 913, column: 9, scope: !2848)
!2903 = !DILocation(line: 915, column: 35, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2901, file: !107, line: 914, column: 7)
!2905 = !DILocation(line: 915, column: 20, scope: !2904)
!2906 = !DILocation(line: 916, column: 17, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2904, file: !107, line: 916, column: 13)
!2908 = !DILocation(line: 916, column: 13, scope: !2904)
!2909 = !DILocation(line: 917, column: 11, scope: !2907)
!2910 = !DILocation(line: 0, scope: !2750, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 918, column: 27, scope: !2904)
!2912 = !DILocation(line: 218, column: 10, scope: !2750, inlinedAt: !2911)
!2913 = !DILocation(line: 918, column: 19, scope: !2904)
!2914 = !DILocation(line: 919, column: 69, scope: !2904)
!2915 = !DILocation(line: 921, column: 44, scope: !2904)
!2916 = !DILocation(line: 922, column: 44, scope: !2904)
!2917 = !DILocation(line: 919, column: 9, scope: !2904)
!2918 = !DILocation(line: 923, column: 7, scope: !2904)
!2919 = !DILocation(line: 925, column: 11, scope: !2848)
!2920 = !DILocation(line: 926, column: 5, scope: !2848)
!2921 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !107, file: !107, line: 937, type: !2922, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2924)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!30, !47, !36, !33}
!2924 = !{!2925, !2926, !2927}
!2925 = !DILocalVariable(name: "n", arg: 1, scope: !2921, file: !107, line: 937, type: !47)
!2926 = !DILocalVariable(name: "arg", arg: 2, scope: !2921, file: !107, line: 937, type: !36)
!2927 = !DILocalVariable(name: "argsize", arg: 3, scope: !2921, file: !107, line: 937, type: !33)
!2928 = !DILocation(line: 0, scope: !2921)
!2929 = !DILocation(line: 939, column: 10, scope: !2921)
!2930 = !DILocation(line: 939, column: 3, scope: !2921)
!2931 = distinct !DISubprogram(name: "quotearg", scope: !107, file: !107, line: 943, type: !1154, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2932)
!2932 = !{!2933}
!2933 = !DILocalVariable(name: "arg", arg: 1, scope: !2931, file: !107, line: 943, type: !36)
!2934 = !DILocation(line: 0, scope: !2931)
!2935 = !DILocation(line: 0, scope: !2826, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 945, column: 10, scope: !2931)
!2937 = !DILocation(line: 933, column: 10, scope: !2826, inlinedAt: !2936)
!2938 = !DILocation(line: 945, column: 3, scope: !2931)
!2939 = distinct !DISubprogram(name: "quotearg_mem", scope: !107, file: !107, line: 949, type: !2940, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!30, !36, !33}
!2942 = !{!2943, !2944}
!2943 = !DILocalVariable(name: "arg", arg: 1, scope: !2939, file: !107, line: 949, type: !36)
!2944 = !DILocalVariable(name: "argsize", arg: 2, scope: !2939, file: !107, line: 949, type: !33)
!2945 = !DILocation(line: 0, scope: !2939)
!2946 = !DILocation(line: 0, scope: !2921, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 951, column: 10, scope: !2939)
!2948 = !DILocation(line: 939, column: 10, scope: !2921, inlinedAt: !2947)
!2949 = !DILocation(line: 951, column: 3, scope: !2939)
!2950 = distinct !DISubprogram(name: "quotearg_n_style", scope: !107, file: !107, line: 955, type: !2951, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!30, !47, !5, !36}
!2953 = !{!2954, !2955, !2956, !2957}
!2954 = !DILocalVariable(name: "n", arg: 1, scope: !2950, file: !107, line: 955, type: !47)
!2955 = !DILocalVariable(name: "s", arg: 2, scope: !2950, file: !107, line: 955, type: !5)
!2956 = !DILocalVariable(name: "arg", arg: 3, scope: !2950, file: !107, line: 955, type: !36)
!2957 = !DILocalVariable(name: "o", scope: !2950, file: !107, line: 957, type: !1884)
!2958 = !DILocation(line: 0, scope: !2950)
!2959 = !DILocation(line: 957, column: 3, scope: !2950)
!2960 = !DILocation(line: 957, column: 32, scope: !2950)
!2961 = !{!2962}
!2962 = distinct !{!2962, !2963, !"quoting_options_from_style: argument 0"}
!2963 = distinct !{!2963, !"quoting_options_from_style"}
!2964 = !DILocation(line: 957, column: 36, scope: !2950)
!2965 = !DILocalVariable(name: "style", arg: 1, scope: !2966, file: !107, line: 193, type: !5)
!2966 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !107, file: !107, line: 193, type: !2967, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!140, !5}
!2969 = !{!2965, !2970}
!2970 = !DILocalVariable(name: "o", scope: !2966, file: !107, line: 195, type: !140)
!2971 = !DILocation(line: 0, scope: !2966, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 957, column: 36, scope: !2950)
!2973 = !DILocation(line: 195, column: 26, scope: !2966, inlinedAt: !2972)
!2974 = !DILocation(line: 196, column: 13, scope: !2975, inlinedAt: !2972)
!2975 = distinct !DILexicalBlock(scope: !2966, file: !107, line: 196, column: 7)
!2976 = !DILocation(line: 196, column: 7, scope: !2966, inlinedAt: !2972)
!2977 = !DILocation(line: 197, column: 5, scope: !2975, inlinedAt: !2972)
!2978 = !DILocation(line: 198, column: 5, scope: !2966, inlinedAt: !2972)
!2979 = !DILocation(line: 198, column: 11, scope: !2966, inlinedAt: !2972)
!2980 = !DILocation(line: 958, column: 10, scope: !2950)
!2981 = !DILocation(line: 959, column: 1, scope: !2950)
!2982 = !DILocation(line: 958, column: 3, scope: !2950)
!2983 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !107, file: !107, line: 962, type: !2984, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2986)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!30, !47, !5, !36, !33}
!2986 = !{!2987, !2988, !2989, !2990, !2991}
!2987 = !DILocalVariable(name: "n", arg: 1, scope: !2983, file: !107, line: 962, type: !47)
!2988 = !DILocalVariable(name: "s", arg: 2, scope: !2983, file: !107, line: 962, type: !5)
!2989 = !DILocalVariable(name: "arg", arg: 3, scope: !2983, file: !107, line: 963, type: !36)
!2990 = !DILocalVariable(name: "argsize", arg: 4, scope: !2983, file: !107, line: 963, type: !33)
!2991 = !DILocalVariable(name: "o", scope: !2983, file: !107, line: 965, type: !1884)
!2992 = !DILocation(line: 0, scope: !2983)
!2993 = !DILocation(line: 965, column: 3, scope: !2983)
!2994 = !DILocation(line: 965, column: 32, scope: !2983)
!2995 = !{!2996}
!2996 = distinct !{!2996, !2997, !"quoting_options_from_style: argument 0"}
!2997 = distinct !{!2997, !"quoting_options_from_style"}
!2998 = !DILocation(line: 965, column: 36, scope: !2983)
!2999 = !DILocation(line: 0, scope: !2966, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 965, column: 36, scope: !2983)
!3001 = !DILocation(line: 195, column: 26, scope: !2966, inlinedAt: !3000)
!3002 = !DILocation(line: 196, column: 13, scope: !2975, inlinedAt: !3000)
!3003 = !DILocation(line: 196, column: 7, scope: !2966, inlinedAt: !3000)
!3004 = !DILocation(line: 197, column: 5, scope: !2975, inlinedAt: !3000)
!3005 = !DILocation(line: 198, column: 5, scope: !2966, inlinedAt: !3000)
!3006 = !DILocation(line: 198, column: 11, scope: !2966, inlinedAt: !3000)
!3007 = !DILocation(line: 966, column: 10, scope: !2983)
!3008 = !DILocation(line: 967, column: 1, scope: !2983)
!3009 = !DILocation(line: 966, column: 3, scope: !2983)
!3010 = distinct !DISubprogram(name: "quotearg_style", scope: !107, file: !107, line: 970, type: !3011, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3013)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!30, !5, !36}
!3013 = !{!3014, !3015}
!3014 = !DILocalVariable(name: "s", arg: 1, scope: !3010, file: !107, line: 970, type: !5)
!3015 = !DILocalVariable(name: "arg", arg: 2, scope: !3010, file: !107, line: 970, type: !36)
!3016 = !DILocation(line: 0, scope: !3010)
!3017 = !DILocation(line: 0, scope: !2950, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 972, column: 10, scope: !3010)
!3019 = !DILocation(line: 957, column: 3, scope: !2950, inlinedAt: !3018)
!3020 = !DILocation(line: 957, column: 32, scope: !2950, inlinedAt: !3018)
!3021 = !{!3022}
!3022 = distinct !{!3022, !3023, !"quoting_options_from_style: argument 0"}
!3023 = distinct !{!3023, !"quoting_options_from_style"}
!3024 = !DILocation(line: 957, column: 36, scope: !2950, inlinedAt: !3018)
!3025 = !DILocation(line: 0, scope: !2966, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 957, column: 36, scope: !2950, inlinedAt: !3018)
!3027 = !DILocation(line: 195, column: 26, scope: !2966, inlinedAt: !3026)
!3028 = !DILocation(line: 196, column: 13, scope: !2975, inlinedAt: !3026)
!3029 = !DILocation(line: 196, column: 7, scope: !2966, inlinedAt: !3026)
!3030 = !DILocation(line: 197, column: 5, scope: !2975, inlinedAt: !3026)
!3031 = !DILocation(line: 198, column: 5, scope: !2966, inlinedAt: !3026)
!3032 = !DILocation(line: 198, column: 11, scope: !2966, inlinedAt: !3026)
!3033 = !DILocation(line: 958, column: 10, scope: !2950, inlinedAt: !3018)
!3034 = !DILocation(line: 959, column: 1, scope: !2950, inlinedAt: !3018)
!3035 = !DILocation(line: 972, column: 3, scope: !3010)
!3036 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !107, file: !107, line: 976, type: !3037, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!30, !5, !36, !33}
!3039 = !{!3040, !3041, !3042}
!3040 = !DILocalVariable(name: "s", arg: 1, scope: !3036, file: !107, line: 976, type: !5)
!3041 = !DILocalVariable(name: "arg", arg: 2, scope: !3036, file: !107, line: 976, type: !36)
!3042 = !DILocalVariable(name: "argsize", arg: 3, scope: !3036, file: !107, line: 976, type: !33)
!3043 = !DILocation(line: 0, scope: !3036)
!3044 = !DILocation(line: 0, scope: !2983, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 978, column: 10, scope: !3036)
!3046 = !DILocation(line: 965, column: 3, scope: !2983, inlinedAt: !3045)
!3047 = !DILocation(line: 965, column: 32, scope: !2983, inlinedAt: !3045)
!3048 = !{!3049}
!3049 = distinct !{!3049, !3050, !"quoting_options_from_style: argument 0"}
!3050 = distinct !{!3050, !"quoting_options_from_style"}
!3051 = !DILocation(line: 965, column: 36, scope: !2983, inlinedAt: !3045)
!3052 = !DILocation(line: 0, scope: !2966, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 965, column: 36, scope: !2983, inlinedAt: !3045)
!3054 = !DILocation(line: 195, column: 26, scope: !2966, inlinedAt: !3053)
!3055 = !DILocation(line: 196, column: 13, scope: !2975, inlinedAt: !3053)
!3056 = !DILocation(line: 196, column: 7, scope: !2966, inlinedAt: !3053)
!3057 = !DILocation(line: 197, column: 5, scope: !2975, inlinedAt: !3053)
!3058 = !DILocation(line: 198, column: 5, scope: !2966, inlinedAt: !3053)
!3059 = !DILocation(line: 198, column: 11, scope: !2966, inlinedAt: !3053)
!3060 = !DILocation(line: 966, column: 10, scope: !2983, inlinedAt: !3045)
!3061 = !DILocation(line: 967, column: 1, scope: !2983, inlinedAt: !3045)
!3062 = !DILocation(line: 978, column: 3, scope: !3036)
!3063 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !107, file: !107, line: 982, type: !3064, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3066)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!30, !36, !33, !31}
!3066 = !{!3067, !3068, !3069, !3070}
!3067 = !DILocalVariable(name: "arg", arg: 1, scope: !3063, file: !107, line: 982, type: !36)
!3068 = !DILocalVariable(name: "argsize", arg: 2, scope: !3063, file: !107, line: 982, type: !33)
!3069 = !DILocalVariable(name: "ch", arg: 3, scope: !3063, file: !107, line: 982, type: !31)
!3070 = !DILocalVariable(name: "options", scope: !3063, file: !107, line: 984, type: !140)
!3071 = !DILocation(line: 0, scope: !3063)
!3072 = !DILocation(line: 984, column: 3, scope: !3063)
!3073 = !DILocation(line: 984, column: 26, scope: !3063)
!3074 = !DILocation(line: 985, column: 13, scope: !3063)
!3075 = !{i64 0, i64 4, !914, i64 4, i64 4, !821, i64 8, i64 32, !914, i64 40, i64 8, !645, i64 48, i64 8, !645}
!3076 = !DILocation(line: 0, scope: !1904, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 986, column: 3, scope: !3063)
!3078 = !DILocation(line: 156, column: 62, scope: !1904, inlinedAt: !3077)
!3079 = !DILocation(line: 156, column: 57, scope: !1904, inlinedAt: !3077)
!3080 = !DILocation(line: 157, column: 15, scope: !1904, inlinedAt: !3077)
!3081 = !DILocation(line: 158, column: 12, scope: !1904, inlinedAt: !3077)
!3082 = !DILocation(line: 158, column: 15, scope: !1904, inlinedAt: !3077)
!3083 = !DILocation(line: 158, column: 25, scope: !1904, inlinedAt: !3077)
!3084 = !DILocation(line: 159, column: 18, scope: !1904, inlinedAt: !3077)
!3085 = !DILocation(line: 159, column: 23, scope: !1904, inlinedAt: !3077)
!3086 = !DILocation(line: 159, column: 6, scope: !1904, inlinedAt: !3077)
!3087 = !DILocation(line: 987, column: 10, scope: !3063)
!3088 = !DILocation(line: 988, column: 1, scope: !3063)
!3089 = !DILocation(line: 987, column: 3, scope: !3063)
!3090 = distinct !DISubprogram(name: "quotearg_char", scope: !107, file: !107, line: 991, type: !3091, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3093)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!30, !36, !31}
!3093 = !{!3094, !3095}
!3094 = !DILocalVariable(name: "arg", arg: 1, scope: !3090, file: !107, line: 991, type: !36)
!3095 = !DILocalVariable(name: "ch", arg: 2, scope: !3090, file: !107, line: 991, type: !31)
!3096 = !DILocation(line: 0, scope: !3090)
!3097 = !DILocation(line: 0, scope: !3063, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 993, column: 10, scope: !3090)
!3099 = !DILocation(line: 984, column: 3, scope: !3063, inlinedAt: !3098)
!3100 = !DILocation(line: 984, column: 26, scope: !3063, inlinedAt: !3098)
!3101 = !DILocation(line: 985, column: 13, scope: !3063, inlinedAt: !3098)
!3102 = !DILocation(line: 0, scope: !1904, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 986, column: 3, scope: !3063, inlinedAt: !3098)
!3104 = !DILocation(line: 156, column: 62, scope: !1904, inlinedAt: !3103)
!3105 = !DILocation(line: 156, column: 57, scope: !1904, inlinedAt: !3103)
!3106 = !DILocation(line: 157, column: 15, scope: !1904, inlinedAt: !3103)
!3107 = !DILocation(line: 158, column: 12, scope: !1904, inlinedAt: !3103)
!3108 = !DILocation(line: 158, column: 15, scope: !1904, inlinedAt: !3103)
!3109 = !DILocation(line: 158, column: 25, scope: !1904, inlinedAt: !3103)
!3110 = !DILocation(line: 159, column: 18, scope: !1904, inlinedAt: !3103)
!3111 = !DILocation(line: 159, column: 23, scope: !1904, inlinedAt: !3103)
!3112 = !DILocation(line: 159, column: 6, scope: !1904, inlinedAt: !3103)
!3113 = !DILocation(line: 987, column: 10, scope: !3063, inlinedAt: !3098)
!3114 = !DILocation(line: 988, column: 1, scope: !3063, inlinedAt: !3098)
!3115 = !DILocation(line: 993, column: 3, scope: !3090)
!3116 = distinct !DISubprogram(name: "quotearg_colon", scope: !107, file: !107, line: 997, type: !1154, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3117)
!3117 = !{!3118}
!3118 = !DILocalVariable(name: "arg", arg: 1, scope: !3116, file: !107, line: 997, type: !36)
!3119 = !DILocation(line: 0, scope: !3116)
!3120 = !DILocation(line: 0, scope: !3090, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 999, column: 10, scope: !3116)
!3122 = !DILocation(line: 0, scope: !3063, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 993, column: 10, scope: !3090, inlinedAt: !3121)
!3124 = !DILocation(line: 984, column: 3, scope: !3063, inlinedAt: !3123)
!3125 = !DILocation(line: 984, column: 26, scope: !3063, inlinedAt: !3123)
!3126 = !DILocation(line: 985, column: 13, scope: !3063, inlinedAt: !3123)
!3127 = !DILocation(line: 0, scope: !1904, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 986, column: 3, scope: !3063, inlinedAt: !3123)
!3129 = !DILocation(line: 156, column: 57, scope: !1904, inlinedAt: !3128)
!3130 = !DILocation(line: 158, column: 12, scope: !1904, inlinedAt: !3128)
!3131 = !DILocation(line: 159, column: 6, scope: !1904, inlinedAt: !3128)
!3132 = !DILocation(line: 987, column: 10, scope: !3063, inlinedAt: !3123)
!3133 = !DILocation(line: 988, column: 1, scope: !3063, inlinedAt: !3123)
!3134 = !DILocation(line: 999, column: 3, scope: !3116)
!3135 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !107, file: !107, line: 1003, type: !2940, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3136)
!3136 = !{!3137, !3138}
!3137 = !DILocalVariable(name: "arg", arg: 1, scope: !3135, file: !107, line: 1003, type: !36)
!3138 = !DILocalVariable(name: "argsize", arg: 2, scope: !3135, file: !107, line: 1003, type: !33)
!3139 = !DILocation(line: 0, scope: !3135)
!3140 = !DILocation(line: 0, scope: !3063, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 1005, column: 10, scope: !3135)
!3142 = !DILocation(line: 984, column: 3, scope: !3063, inlinedAt: !3141)
!3143 = !DILocation(line: 984, column: 26, scope: !3063, inlinedAt: !3141)
!3144 = !DILocation(line: 985, column: 13, scope: !3063, inlinedAt: !3141)
!3145 = !DILocation(line: 0, scope: !1904, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 986, column: 3, scope: !3063, inlinedAt: !3141)
!3147 = !DILocation(line: 156, column: 57, scope: !1904, inlinedAt: !3146)
!3148 = !DILocation(line: 158, column: 12, scope: !1904, inlinedAt: !3146)
!3149 = !DILocation(line: 159, column: 6, scope: !1904, inlinedAt: !3146)
!3150 = !DILocation(line: 987, column: 10, scope: !3063, inlinedAt: !3141)
!3151 = !DILocation(line: 988, column: 1, scope: !3063, inlinedAt: !3141)
!3152 = !DILocation(line: 1005, column: 3, scope: !3135)
!3153 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !107, file: !107, line: 1009, type: !2951, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3154)
!3154 = !{!3155, !3156, !3157, !3158}
!3155 = !DILocalVariable(name: "n", arg: 1, scope: !3153, file: !107, line: 1009, type: !47)
!3156 = !DILocalVariable(name: "s", arg: 2, scope: !3153, file: !107, line: 1009, type: !5)
!3157 = !DILocalVariable(name: "arg", arg: 3, scope: !3153, file: !107, line: 1009, type: !36)
!3158 = !DILocalVariable(name: "options", scope: !3153, file: !107, line: 1011, type: !140)
!3159 = !DILocation(line: 195, column: 26, scope: !2966, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 1012, column: 13, scope: !3153)
!3161 = !DILocation(line: 0, scope: !3153)
!3162 = !DILocation(line: 1011, column: 3, scope: !3153)
!3163 = !DILocation(line: 1011, column: 26, scope: !3153)
!3164 = !DILocation(line: 1012, column: 13, scope: !3153)
!3165 = !{!3166}
!3166 = distinct !{!3166, !3167, !"quoting_options_from_style: argument 0"}
!3167 = distinct !{!3167, !"quoting_options_from_style"}
!3168 = !DILocation(line: 0, scope: !2966, inlinedAt: !3160)
!3169 = !DILocation(line: 196, column: 13, scope: !2975, inlinedAt: !3160)
!3170 = !DILocation(line: 196, column: 7, scope: !2966, inlinedAt: !3160)
!3171 = !DILocation(line: 197, column: 5, scope: !2975, inlinedAt: !3160)
!3172 = !{i64 0, i64 4, !821, i64 4, i64 32, !914, i64 36, i64 8, !645, i64 44, i64 8, !645}
!3173 = !DILocation(line: 0, scope: !1904, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 1013, column: 3, scope: !3153)
!3175 = !DILocation(line: 156, column: 57, scope: !1904, inlinedAt: !3174)
!3176 = !DILocation(line: 158, column: 12, scope: !1904, inlinedAt: !3174)
!3177 = !DILocation(line: 159, column: 6, scope: !1904, inlinedAt: !3174)
!3178 = !DILocation(line: 1014, column: 10, scope: !3153)
!3179 = !DILocation(line: 1015, column: 1, scope: !3153)
!3180 = !DILocation(line: 1014, column: 3, scope: !3153)
!3181 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !107, file: !107, line: 1018, type: !3182, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3184)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!30, !47, !36, !36, !36}
!3184 = !{!3185, !3186, !3187, !3188}
!3185 = !DILocalVariable(name: "n", arg: 1, scope: !3181, file: !107, line: 1018, type: !47)
!3186 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3181, file: !107, line: 1018, type: !36)
!3187 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3181, file: !107, line: 1019, type: !36)
!3188 = !DILocalVariable(name: "arg", arg: 4, scope: !3181, file: !107, line: 1019, type: !36)
!3189 = !DILocation(line: 0, scope: !3181)
!3190 = !DILocalVariable(name: "n", arg: 1, scope: !3191, file: !107, line: 1026, type: !47)
!3191 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !107, file: !107, line: 1026, type: !3192, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!30, !47, !36, !36, !36, !33}
!3194 = !{!3190, !3195, !3196, !3197, !3198, !3199}
!3195 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3191, file: !107, line: 1026, type: !36)
!3196 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3191, file: !107, line: 1027, type: !36)
!3197 = !DILocalVariable(name: "arg", arg: 4, scope: !3191, file: !107, line: 1028, type: !36)
!3198 = !DILocalVariable(name: "argsize", arg: 5, scope: !3191, file: !107, line: 1028, type: !33)
!3199 = !DILocalVariable(name: "o", scope: !3191, file: !107, line: 1030, type: !140)
!3200 = !DILocation(line: 0, scope: !3191, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 1021, column: 10, scope: !3181)
!3202 = !DILocation(line: 1030, column: 3, scope: !3191, inlinedAt: !3201)
!3203 = !DILocation(line: 1030, column: 26, scope: !3191, inlinedAt: !3201)
!3204 = !DILocation(line: 1030, column: 30, scope: !3191, inlinedAt: !3201)
!3205 = !DILocation(line: 0, scope: !1944, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 1031, column: 3, scope: !3191, inlinedAt: !3201)
!3207 = !DILocation(line: 184, column: 6, scope: !1944, inlinedAt: !3206)
!3208 = !DILocation(line: 184, column: 12, scope: !1944, inlinedAt: !3206)
!3209 = !DILocation(line: 185, column: 8, scope: !1958, inlinedAt: !3206)
!3210 = !DILocation(line: 185, column: 19, scope: !1958, inlinedAt: !3206)
!3211 = !DILocation(line: 186, column: 5, scope: !1958, inlinedAt: !3206)
!3212 = !DILocation(line: 187, column: 6, scope: !1944, inlinedAt: !3206)
!3213 = !DILocation(line: 187, column: 17, scope: !1944, inlinedAt: !3206)
!3214 = !DILocation(line: 188, column: 6, scope: !1944, inlinedAt: !3206)
!3215 = !DILocation(line: 188, column: 18, scope: !1944, inlinedAt: !3206)
!3216 = !DILocation(line: 1032, column: 10, scope: !3191, inlinedAt: !3201)
!3217 = !DILocation(line: 1033, column: 1, scope: !3191, inlinedAt: !3201)
!3218 = !DILocation(line: 1021, column: 3, scope: !3181)
!3219 = !DILocation(line: 0, scope: !3191)
!3220 = !DILocation(line: 1030, column: 3, scope: !3191)
!3221 = !DILocation(line: 1030, column: 26, scope: !3191)
!3222 = !DILocation(line: 1030, column: 30, scope: !3191)
!3223 = !DILocation(line: 0, scope: !1944, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 1031, column: 3, scope: !3191)
!3225 = !DILocation(line: 184, column: 6, scope: !1944, inlinedAt: !3224)
!3226 = !DILocation(line: 184, column: 12, scope: !1944, inlinedAt: !3224)
!3227 = !DILocation(line: 185, column: 8, scope: !1958, inlinedAt: !3224)
!3228 = !DILocation(line: 185, column: 19, scope: !1958, inlinedAt: !3224)
!3229 = !DILocation(line: 186, column: 5, scope: !1958, inlinedAt: !3224)
!3230 = !DILocation(line: 187, column: 6, scope: !1944, inlinedAt: !3224)
!3231 = !DILocation(line: 187, column: 17, scope: !1944, inlinedAt: !3224)
!3232 = !DILocation(line: 188, column: 6, scope: !1944, inlinedAt: !3224)
!3233 = !DILocation(line: 188, column: 18, scope: !1944, inlinedAt: !3224)
!3234 = !DILocation(line: 1032, column: 10, scope: !3191)
!3235 = !DILocation(line: 1033, column: 1, scope: !3191)
!3236 = !DILocation(line: 1032, column: 3, scope: !3191)
!3237 = distinct !DISubprogram(name: "quotearg_custom", scope: !107, file: !107, line: 1036, type: !3238, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3240)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!30, !36, !36, !36}
!3240 = !{!3241, !3242, !3243}
!3241 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3237, file: !107, line: 1036, type: !36)
!3242 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3237, file: !107, line: 1036, type: !36)
!3243 = !DILocalVariable(name: "arg", arg: 3, scope: !3237, file: !107, line: 1037, type: !36)
!3244 = !DILocation(line: 0, scope: !3237)
!3245 = !DILocation(line: 0, scope: !3181, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 1039, column: 10, scope: !3237)
!3247 = !DILocation(line: 0, scope: !3191, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 1021, column: 10, scope: !3181, inlinedAt: !3246)
!3249 = !DILocation(line: 1030, column: 3, scope: !3191, inlinedAt: !3248)
!3250 = !DILocation(line: 1030, column: 26, scope: !3191, inlinedAt: !3248)
!3251 = !DILocation(line: 1030, column: 30, scope: !3191, inlinedAt: !3248)
!3252 = !DILocation(line: 0, scope: !1944, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 1031, column: 3, scope: !3191, inlinedAt: !3248)
!3254 = !DILocation(line: 184, column: 6, scope: !1944, inlinedAt: !3253)
!3255 = !DILocation(line: 184, column: 12, scope: !1944, inlinedAt: !3253)
!3256 = !DILocation(line: 185, column: 8, scope: !1958, inlinedAt: !3253)
!3257 = !DILocation(line: 185, column: 19, scope: !1958, inlinedAt: !3253)
!3258 = !DILocation(line: 186, column: 5, scope: !1958, inlinedAt: !3253)
!3259 = !DILocation(line: 187, column: 6, scope: !1944, inlinedAt: !3253)
!3260 = !DILocation(line: 187, column: 17, scope: !1944, inlinedAt: !3253)
!3261 = !DILocation(line: 188, column: 6, scope: !1944, inlinedAt: !3253)
!3262 = !DILocation(line: 188, column: 18, scope: !1944, inlinedAt: !3253)
!3263 = !DILocation(line: 1032, column: 10, scope: !3191, inlinedAt: !3248)
!3264 = !DILocation(line: 1033, column: 1, scope: !3191, inlinedAt: !3248)
!3265 = !DILocation(line: 1039, column: 3, scope: !3237)
!3266 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !107, file: !107, line: 1043, type: !3267, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3269)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!30, !36, !36, !36, !33}
!3269 = !{!3270, !3271, !3272, !3273}
!3270 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3266, file: !107, line: 1043, type: !36)
!3271 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3266, file: !107, line: 1043, type: !36)
!3272 = !DILocalVariable(name: "arg", arg: 3, scope: !3266, file: !107, line: 1044, type: !36)
!3273 = !DILocalVariable(name: "argsize", arg: 4, scope: !3266, file: !107, line: 1044, type: !33)
!3274 = !DILocation(line: 0, scope: !3266)
!3275 = !DILocation(line: 0, scope: !3191, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 1046, column: 10, scope: !3266)
!3277 = !DILocation(line: 1030, column: 3, scope: !3191, inlinedAt: !3276)
!3278 = !DILocation(line: 1030, column: 26, scope: !3191, inlinedAt: !3276)
!3279 = !DILocation(line: 1030, column: 30, scope: !3191, inlinedAt: !3276)
!3280 = !DILocation(line: 0, scope: !1944, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 1031, column: 3, scope: !3191, inlinedAt: !3276)
!3282 = !DILocation(line: 184, column: 6, scope: !1944, inlinedAt: !3281)
!3283 = !DILocation(line: 184, column: 12, scope: !1944, inlinedAt: !3281)
!3284 = !DILocation(line: 185, column: 8, scope: !1958, inlinedAt: !3281)
!3285 = !DILocation(line: 185, column: 19, scope: !1958, inlinedAt: !3281)
!3286 = !DILocation(line: 186, column: 5, scope: !1958, inlinedAt: !3281)
!3287 = !DILocation(line: 187, column: 6, scope: !1944, inlinedAt: !3281)
!3288 = !DILocation(line: 187, column: 17, scope: !1944, inlinedAt: !3281)
!3289 = !DILocation(line: 188, column: 6, scope: !1944, inlinedAt: !3281)
!3290 = !DILocation(line: 188, column: 18, scope: !1944, inlinedAt: !3281)
!3291 = !DILocation(line: 1032, column: 10, scope: !3191, inlinedAt: !3276)
!3292 = !DILocation(line: 1033, column: 1, scope: !3191, inlinedAt: !3276)
!3293 = !DILocation(line: 1046, column: 3, scope: !3266)
!3294 = distinct !DISubprogram(name: "quote_n_mem", scope: !107, file: !107, line: 1061, type: !3295, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3297)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!36, !47, !36, !33}
!3297 = !{!3298, !3299, !3300}
!3298 = !DILocalVariable(name: "n", arg: 1, scope: !3294, file: !107, line: 1061, type: !47)
!3299 = !DILocalVariable(name: "arg", arg: 2, scope: !3294, file: !107, line: 1061, type: !36)
!3300 = !DILocalVariable(name: "argsize", arg: 3, scope: !3294, file: !107, line: 1061, type: !33)
!3301 = !DILocation(line: 0, scope: !3294)
!3302 = !DILocation(line: 1063, column: 10, scope: !3294)
!3303 = !DILocation(line: 1063, column: 3, scope: !3294)
!3304 = distinct !DISubprogram(name: "quote_mem", scope: !107, file: !107, line: 1067, type: !3305, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3307)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!36, !36, !33}
!3307 = !{!3308, !3309}
!3308 = !DILocalVariable(name: "arg", arg: 1, scope: !3304, file: !107, line: 1067, type: !36)
!3309 = !DILocalVariable(name: "argsize", arg: 2, scope: !3304, file: !107, line: 1067, type: !33)
!3310 = !DILocation(line: 0, scope: !3304)
!3311 = !DILocation(line: 0, scope: !3294, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 1069, column: 10, scope: !3304)
!3313 = !DILocation(line: 1063, column: 10, scope: !3294, inlinedAt: !3312)
!3314 = !DILocation(line: 1069, column: 3, scope: !3304)
!3315 = distinct !DISubprogram(name: "quote_n", scope: !107, file: !107, line: 1073, type: !3316, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3318)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!36, !47, !36}
!3318 = !{!3319, !3320}
!3319 = !DILocalVariable(name: "n", arg: 1, scope: !3315, file: !107, line: 1073, type: !47)
!3320 = !DILocalVariable(name: "arg", arg: 2, scope: !3315, file: !107, line: 1073, type: !36)
!3321 = !DILocation(line: 0, scope: !3315)
!3322 = !DILocation(line: 0, scope: !3294, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 1075, column: 10, scope: !3315)
!3324 = !DILocation(line: 1063, column: 10, scope: !3294, inlinedAt: !3323)
!3325 = !DILocation(line: 1075, column: 3, scope: !3315)
!3326 = distinct !DISubprogram(name: "quote", scope: !107, file: !107, line: 1079, type: !3327, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !3329)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!36, !36}
!3329 = !{!3330}
!3330 = !DILocalVariable(name: "arg", arg: 1, scope: !3326, file: !107, line: 1079, type: !36)
!3331 = !DILocation(line: 0, scope: !3326)
!3332 = !DILocation(line: 0, scope: !3315, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 1081, column: 10, scope: !3326)
!3334 = !DILocation(line: 0, scope: !3294, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 1075, column: 10, scope: !3315, inlinedAt: !3333)
!3336 = !DILocation(line: 1063, column: 10, scope: !3294, inlinedAt: !3335)
!3337 = !DILocation(line: 1081, column: 3, scope: !3326)
!3338 = distinct !DISubprogram(name: "version_etc_arn", scope: !182, file: !182, line: 61, type: !3339, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3376)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{null, !3341, !36, !36, !36, !3375, !33}
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 7, baseType: !3343)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !3344)
!3344 = !{!3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3343, file: !727, line: 51, baseType: !47, size: 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3343, file: !727, line: 54, baseType: !30, size: 64, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3343, file: !727, line: 55, baseType: !30, size: 64, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3343, file: !727, line: 56, baseType: !30, size: 64, offset: 192)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3343, file: !727, line: 57, baseType: !30, size: 64, offset: 256)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3343, file: !727, line: 58, baseType: !30, size: 64, offset: 320)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3343, file: !727, line: 59, baseType: !30, size: 64, offset: 384)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3343, file: !727, line: 60, baseType: !30, size: 64, offset: 448)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3343, file: !727, line: 61, baseType: !30, size: 64, offset: 512)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3343, file: !727, line: 64, baseType: !30, size: 64, offset: 576)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3343, file: !727, line: 65, baseType: !30, size: 64, offset: 640)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3343, file: !727, line: 66, baseType: !30, size: 64, offset: 704)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3343, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3343, file: !727, line: 70, baseType: !3359, size: 64, offset: 832)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3343, file: !727, line: 72, baseType: !47, size: 32, offset: 896)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3343, file: !727, line: 73, baseType: !47, size: 32, offset: 928)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3343, file: !727, line: 74, baseType: !748, size: 64, offset: 960)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3343, file: !727, line: 77, baseType: !130, size: 16, offset: 1024)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3343, file: !727, line: 78, baseType: !74, size: 8, offset: 1040)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3343, file: !727, line: 79, baseType: !754, size: 8, offset: 1048)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3343, file: !727, line: 81, baseType: !758, size: 64, offset: 1088)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3343, file: !727, line: 89, baseType: !761, size: 64, offset: 1152)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3343, file: !727, line: 91, baseType: !763, size: 64, offset: 1216)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3343, file: !727, line: 92, baseType: !766, size: 64, offset: 1280)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3343, file: !727, line: 93, baseType: !3359, size: 64, offset: 1344)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3343, file: !727, line: 94, baseType: !32, size: 64, offset: 1408)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3343, file: !727, line: 95, baseType: !33, size: 64, offset: 1472)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3343, file: !727, line: 96, baseType: !47, size: 32, offset: 1536)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3343, file: !727, line: 98, baseType: !773, size: 160, offset: 1568)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!3376 = !{!3377, !3378, !3379, !3380, !3381, !3382}
!3377 = !DILocalVariable(name: "stream", arg: 1, scope: !3338, file: !182, line: 61, type: !3341)
!3378 = !DILocalVariable(name: "command_name", arg: 2, scope: !3338, file: !182, line: 62, type: !36)
!3379 = !DILocalVariable(name: "package", arg: 3, scope: !3338, file: !182, line: 62, type: !36)
!3380 = !DILocalVariable(name: "version", arg: 4, scope: !3338, file: !182, line: 63, type: !36)
!3381 = !DILocalVariable(name: "authors", arg: 5, scope: !3338, file: !182, line: 64, type: !3375)
!3382 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3338, file: !182, line: 64, type: !33)
!3383 = !DILocation(line: 0, scope: !3338)
!3384 = !DILocation(line: 66, column: 7, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3338, file: !182, line: 66, column: 7)
!3386 = !DILocation(line: 66, column: 7, scope: !3338)
!3387 = !DILocation(line: 67, column: 5, scope: !3385)
!3388 = !DILocation(line: 69, column: 5, scope: !3385)
!3389 = !DILocation(line: 83, column: 3, scope: !3338)
!3390 = !DILocation(line: 85, column: 3, scope: !3338)
!3391 = !DILocation(line: 88, column: 3, scope: !3338)
!3392 = !DILocation(line: 95, column: 3, scope: !3338)
!3393 = !DILocation(line: 97, column: 3, scope: !3338)
!3394 = !DILocation(line: 105, column: 7, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3338, file: !182, line: 98, column: 5)
!3396 = !DILocation(line: 106, column: 7, scope: !3395)
!3397 = !DILocation(line: 109, column: 7, scope: !3395)
!3398 = !DILocation(line: 110, column: 7, scope: !3395)
!3399 = !DILocation(line: 113, column: 7, scope: !3395)
!3400 = !DILocation(line: 115, column: 7, scope: !3395)
!3401 = !DILocation(line: 120, column: 7, scope: !3395)
!3402 = !DILocation(line: 122, column: 7, scope: !3395)
!3403 = !DILocation(line: 127, column: 7, scope: !3395)
!3404 = !DILocation(line: 129, column: 7, scope: !3395)
!3405 = !DILocation(line: 134, column: 7, scope: !3395)
!3406 = !DILocation(line: 137, column: 7, scope: !3395)
!3407 = !DILocation(line: 142, column: 7, scope: !3395)
!3408 = !DILocation(line: 145, column: 7, scope: !3395)
!3409 = !DILocation(line: 150, column: 7, scope: !3395)
!3410 = !DILocation(line: 154, column: 7, scope: !3395)
!3411 = !DILocation(line: 159, column: 7, scope: !3395)
!3412 = !DILocation(line: 163, column: 7, scope: !3395)
!3413 = !DILocation(line: 170, column: 7, scope: !3395)
!3414 = !DILocation(line: 174, column: 7, scope: !3395)
!3415 = !DILocation(line: 176, column: 1, scope: !3338)
!3416 = distinct !DISubprogram(name: "version_etc_ar", scope: !182, file: !182, line: 183, type: !3417, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3419)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{null, !3341, !36, !36, !36, !3375}
!3419 = !{!3420, !3421, !3422, !3423, !3424, !3425}
!3420 = !DILocalVariable(name: "stream", arg: 1, scope: !3416, file: !182, line: 183, type: !3341)
!3421 = !DILocalVariable(name: "command_name", arg: 2, scope: !3416, file: !182, line: 184, type: !36)
!3422 = !DILocalVariable(name: "package", arg: 3, scope: !3416, file: !182, line: 184, type: !36)
!3423 = !DILocalVariable(name: "version", arg: 4, scope: !3416, file: !182, line: 185, type: !36)
!3424 = !DILocalVariable(name: "authors", arg: 5, scope: !3416, file: !182, line: 185, type: !3375)
!3425 = !DILocalVariable(name: "n_authors", scope: !3416, file: !182, line: 187, type: !33)
!3426 = !DILocation(line: 0, scope: !3416)
!3427 = !DILocation(line: 189, column: 8, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3416, file: !182, line: 189, column: 3)
!3429 = !DILocation(line: 0, scope: !3428)
!3430 = !DILocation(line: 189, column: 23, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3428, file: !182, line: 189, column: 3)
!3432 = !DILocation(line: 189, column: 3, scope: !3428)
!3433 = !DILocation(line: 189, column: 52, scope: !3431)
!3434 = distinct !{!3434, !3432, !3435, !697}
!3435 = !DILocation(line: 190, column: 5, scope: !3428)
!3436 = !DILocation(line: 191, column: 3, scope: !3416)
!3437 = !DILocation(line: 192, column: 1, scope: !3416)
!3438 = distinct !DISubprogram(name: "version_etc_va", scope: !182, file: !182, line: 199, type: !3439, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3448)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{null, !3341, !36, !36, !36, !3441}
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3443)
!3443 = !{!3444, !3445, !3446, !3447}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3442, file: !182, line: 192, baseType: !7, size: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3442, file: !182, line: 192, baseType: !7, size: 32, offset: 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3442, file: !182, line: 192, baseType: !32, size: 64, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3442, file: !182, line: 192, baseType: !32, size: 64, offset: 128)
!3448 = !{!3449, !3450, !3451, !3452, !3453, !3454, !3455}
!3449 = !DILocalVariable(name: "stream", arg: 1, scope: !3438, file: !182, line: 199, type: !3341)
!3450 = !DILocalVariable(name: "command_name", arg: 2, scope: !3438, file: !182, line: 200, type: !36)
!3451 = !DILocalVariable(name: "package", arg: 3, scope: !3438, file: !182, line: 200, type: !36)
!3452 = !DILocalVariable(name: "version", arg: 4, scope: !3438, file: !182, line: 201, type: !36)
!3453 = !DILocalVariable(name: "authors", arg: 5, scope: !3438, file: !182, line: 201, type: !3441)
!3454 = !DILocalVariable(name: "n_authors", scope: !3438, file: !182, line: 203, type: !33)
!3455 = !DILocalVariable(name: "authtab", scope: !3438, file: !182, line: 204, type: !3456)
!3456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 640, elements: !136)
!3457 = !DILocation(line: 0, scope: !3438)
!3458 = !DILocation(line: 204, column: 3, scope: !3438)
!3459 = !DILocation(line: 204, column: 15, scope: !3438)
!3460 = !DILocation(line: 208, column: 35, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !182, line: 206, column: 3)
!3462 = distinct !DILexicalBlock(scope: !3438, file: !182, line: 206, column: 3)
!3463 = !DILocation(line: 208, column: 14, scope: !3461)
!3464 = !DILocation(line: 208, column: 33, scope: !3461)
!3465 = !DILocation(line: 208, column: 67, scope: !3461)
!3466 = !DILocation(line: 206, column: 3, scope: !3462)
!3467 = !DILocation(line: 0, scope: !3462)
!3468 = !DILocation(line: 211, column: 3, scope: !3438)
!3469 = !DILocation(line: 213, column: 1, scope: !3438)
!3470 = distinct !DISubprogram(name: "version_etc", scope: !182, file: !182, line: 230, type: !3471, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !3473)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{null, !3341, !36, !36, !36, null}
!3473 = !{!3474, !3475, !3476, !3477, !3478}
!3474 = !DILocalVariable(name: "stream", arg: 1, scope: !3470, file: !182, line: 230, type: !3341)
!3475 = !DILocalVariable(name: "command_name", arg: 2, scope: !3470, file: !182, line: 231, type: !36)
!3476 = !DILocalVariable(name: "package", arg: 3, scope: !3470, file: !182, line: 231, type: !36)
!3477 = !DILocalVariable(name: "version", arg: 4, scope: !3470, file: !182, line: 232, type: !36)
!3478 = !DILocalVariable(name: "authors", scope: !3470, file: !182, line: 234, type: !3479)
!3479 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !722, line: 52, baseType: !3480)
!3480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3481, line: 32, baseType: !3482)
!3481 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !182, baseType: !3483)
!3483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3442, size: 192, elements: !755)
!3484 = !DILocation(line: 0, scope: !3470)
!3485 = !DILocation(line: 234, column: 3, scope: !3470)
!3486 = !DILocation(line: 234, column: 11, scope: !3470)
!3487 = !DILocation(line: 236, column: 3, scope: !3470)
!3488 = !DILocation(line: 237, column: 3, scope: !3470)
!3489 = !DILocation(line: 238, column: 3, scope: !3470)
!3490 = !DILocation(line: 239, column: 1, scope: !3470)
!3491 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !182, file: !182, line: 242, type: !655, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !57)
!3492 = !DILocation(line: 244, column: 3, scope: !3491)
!3493 = !DILocation(line: 249, column: 3, scope: !3491)
!3494 = !DILocation(line: 255, column: 3, scope: !3491)
!3495 = !DILocation(line: 260, column: 3, scope: !3491)
!3496 = !DILocation(line: 262, column: 1, scope: !3491)
!3497 = distinct !DISubprogram(name: "xnmalloc", scope: !192, file: !192, line: 99, type: !3498, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !3500)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!32, !33, !33}
!3500 = !{!3501, !3502}
!3501 = !DILocalVariable(name: "n", arg: 1, scope: !3497, file: !192, line: 99, type: !33)
!3502 = !DILocalVariable(name: "s", arg: 2, scope: !3497, file: !192, line: 99, type: !33)
!3503 = !DILocation(line: 0, scope: !3497)
!3504 = !DILocation(line: 101, column: 7, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3497, file: !192, line: 101, column: 7)
!3506 = !DILocation(line: 101, column: 7, scope: !3497)
!3507 = !DILocation(line: 102, column: 5, scope: !3505)
!3508 = !DILocation(line: 103, column: 21, scope: !3497)
!3509 = !DILocalVariable(name: "n", arg: 1, scope: !3510, file: !189, line: 39, type: !33)
!3510 = distinct !DISubprogram(name: "xmalloc", scope: !189, file: !189, line: 39, type: !3511, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !3513)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!32, !33}
!3513 = !{!3509, !3514}
!3514 = !DILocalVariable(name: "p", scope: !3510, file: !189, line: 41, type: !32)
!3515 = !DILocation(line: 0, scope: !3510, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 103, column: 10, scope: !3497)
!3517 = !DILocation(line: 41, column: 13, scope: !3510, inlinedAt: !3516)
!3518 = !DILocation(line: 42, column: 8, scope: !3519, inlinedAt: !3516)
!3519 = distinct !DILexicalBlock(scope: !3510, file: !189, line: 42, column: 7)
!3520 = !DILocation(line: 42, column: 10, scope: !3519, inlinedAt: !3516)
!3521 = !DILocation(line: 43, column: 5, scope: !3519, inlinedAt: !3516)
!3522 = !DILocation(line: 103, column: 3, scope: !3497)
!3523 = !DILocation(line: 0, scope: !3510)
!3524 = !DILocation(line: 41, column: 13, scope: !3510)
!3525 = !DILocation(line: 42, column: 8, scope: !3519)
!3526 = !DILocation(line: 42, column: 10, scope: !3519)
!3527 = !DILocation(line: 43, column: 5, scope: !3519)
!3528 = !DILocation(line: 44, column: 3, scope: !3510)
!3529 = distinct !DISubprogram(name: "xnrealloc", scope: !192, file: !192, line: 112, type: !3530, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !3532)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!32, !32, !33, !33}
!3532 = !{!3533, !3534, !3535}
!3533 = !DILocalVariable(name: "p", arg: 1, scope: !3529, file: !192, line: 112, type: !32)
!3534 = !DILocalVariable(name: "n", arg: 2, scope: !3529, file: !192, line: 112, type: !33)
!3535 = !DILocalVariable(name: "s", arg: 3, scope: !3529, file: !192, line: 112, type: !33)
!3536 = !DILocation(line: 0, scope: !3529)
!3537 = !DILocation(line: 114, column: 7, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3529, file: !192, line: 114, column: 7)
!3539 = !DILocation(line: 114, column: 7, scope: !3529)
!3540 = !DILocation(line: 115, column: 5, scope: !3538)
!3541 = !DILocation(line: 116, column: 25, scope: !3529)
!3542 = !DILocalVariable(name: "p", arg: 1, scope: !3543, file: !189, line: 51, type: !32)
!3543 = distinct !DISubprogram(name: "xrealloc", scope: !189, file: !189, line: 51, type: !3544, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !3546)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!32, !32, !33}
!3546 = !{!3542, !3547}
!3547 = !DILocalVariable(name: "n", arg: 2, scope: !3543, file: !189, line: 51, type: !33)
!3548 = !DILocation(line: 0, scope: !3543, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 116, column: 10, scope: !3529)
!3550 = !DILocation(line: 53, column: 8, scope: !3551, inlinedAt: !3549)
!3551 = distinct !DILexicalBlock(scope: !3543, file: !189, line: 53, column: 7)
!3552 = !DILocation(line: 53, column: 10, scope: !3551, inlinedAt: !3549)
!3553 = !DILocation(line: 57, column: 7, scope: !3554, inlinedAt: !3549)
!3554 = distinct !DILexicalBlock(scope: !3551, file: !189, line: 54, column: 5)
!3555 = !DILocation(line: 58, column: 7, scope: !3554, inlinedAt: !3549)
!3556 = !DILocation(line: 61, column: 7, scope: !3543, inlinedAt: !3549)
!3557 = !DILocation(line: 62, column: 8, scope: !3558, inlinedAt: !3549)
!3558 = distinct !DILexicalBlock(scope: !3543, file: !189, line: 62, column: 7)
!3559 = !DILocation(line: 62, column: 10, scope: !3558, inlinedAt: !3549)
!3560 = !DILocation(line: 63, column: 5, scope: !3558, inlinedAt: !3549)
!3561 = !DILocation(line: 116, column: 3, scope: !3529)
!3562 = !DILocation(line: 0, scope: !3543)
!3563 = !DILocation(line: 53, column: 8, scope: !3551)
!3564 = !DILocation(line: 53, column: 10, scope: !3551)
!3565 = !DILocation(line: 57, column: 7, scope: !3554)
!3566 = !DILocation(line: 58, column: 7, scope: !3554)
!3567 = !DILocation(line: 61, column: 7, scope: !3543)
!3568 = !DILocation(line: 62, column: 8, scope: !3558)
!3569 = !DILocation(line: 62, column: 10, scope: !3558)
!3570 = !DILocation(line: 63, column: 5, scope: !3558)
!3571 = !DILocation(line: 65, column: 1, scope: !3543)
!3572 = !DILocation(line: 0, scope: !193)
!3573 = !DILocation(line: 176, column: 14, scope: !193)
!3574 = !DILocation(line: 178, column: 9, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !193, file: !192, line: 178, column: 7)
!3576 = !DILocation(line: 178, column: 7, scope: !193)
!3577 = !DILocation(line: 180, column: 13, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !192, line: 180, column: 11)
!3579 = distinct !DILexicalBlock(scope: !3575, file: !192, line: 179, column: 5)
!3580 = !DILocation(line: 180, column: 11, scope: !3579)
!3581 = !DILocation(line: 188, column: 30, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3578, file: !192, line: 181, column: 9)
!3583 = !DILocation(line: 189, column: 16, scope: !3582)
!3584 = !DILocation(line: 189, column: 13, scope: !3582)
!3585 = !DILocation(line: 190, column: 9, scope: !3582)
!3586 = !DILocation(line: 191, column: 11, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3579, file: !192, line: 191, column: 11)
!3588 = !DILocation(line: 191, column: 11, scope: !3579)
!3589 = !DILocation(line: 206, column: 7, scope: !193)
!3590 = !DILocation(line: 207, column: 25, scope: !193)
!3591 = !DILocation(line: 0, scope: !3543, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 207, column: 10, scope: !193)
!3593 = !DILocation(line: 53, column: 10, scope: !3551, inlinedAt: !3592)
!3594 = !DILocation(line: 192, column: 9, scope: !3587)
!3595 = !DILocation(line: 200, column: 69, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !192, line: 200, column: 11)
!3597 = distinct !DILexicalBlock(scope: !3575, file: !192, line: 195, column: 5)
!3598 = !DILocation(line: 201, column: 11, scope: !3596)
!3599 = !DILocation(line: 200, column: 11, scope: !3597)
!3600 = !DILocation(line: 202, column: 9, scope: !3596)
!3601 = !DILocation(line: 203, column: 14, scope: !3597)
!3602 = !DILocation(line: 203, column: 18, scope: !3597)
!3603 = !DILocation(line: 203, column: 9, scope: !3597)
!3604 = !DILocation(line: 53, column: 8, scope: !3551, inlinedAt: !3592)
!3605 = !DILocation(line: 57, column: 7, scope: !3554, inlinedAt: !3592)
!3606 = !DILocation(line: 58, column: 7, scope: !3554, inlinedAt: !3592)
!3607 = !DILocation(line: 61, column: 7, scope: !3543, inlinedAt: !3592)
!3608 = !DILocation(line: 62, column: 8, scope: !3558, inlinedAt: !3592)
!3609 = !DILocation(line: 62, column: 10, scope: !3558, inlinedAt: !3592)
!3610 = !DILocation(line: 63, column: 5, scope: !3558, inlinedAt: !3592)
!3611 = !DILocation(line: 207, column: 3, scope: !193)
!3612 = distinct !DISubprogram(name: "xcharalloc", scope: !192, file: !192, line: 216, type: !2751, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !3613)
!3613 = !{!3614}
!3614 = !DILocalVariable(name: "n", arg: 1, scope: !3612, file: !192, line: 216, type: !33)
!3615 = !DILocation(line: 0, scope: !3612)
!3616 = !DILocation(line: 0, scope: !3510, inlinedAt: !3617)
!3617 = distinct !DILocation(line: 218, column: 10, scope: !3612)
!3618 = !DILocation(line: 41, column: 13, scope: !3510, inlinedAt: !3617)
!3619 = !DILocation(line: 42, column: 8, scope: !3519, inlinedAt: !3617)
!3620 = !DILocation(line: 42, column: 10, scope: !3519, inlinedAt: !3617)
!3621 = !DILocation(line: 43, column: 5, scope: !3519, inlinedAt: !3617)
!3622 = !DILocation(line: 218, column: 3, scope: !3612)
!3623 = distinct !DISubprogram(name: "x2realloc", scope: !189, file: !189, line: 74, type: !3624, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !3626)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!32, !32, !196}
!3626 = !{!3627, !3628}
!3627 = !DILocalVariable(name: "p", arg: 1, scope: !3623, file: !189, line: 74, type: !32)
!3628 = !DILocalVariable(name: "pn", arg: 2, scope: !3623, file: !189, line: 74, type: !196)
!3629 = !DILocation(line: 0, scope: !3623)
!3630 = !DILocation(line: 0, scope: !193, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 76, column: 10, scope: !3623)
!3632 = !DILocation(line: 176, column: 14, scope: !193, inlinedAt: !3631)
!3633 = !DILocation(line: 178, column: 9, scope: !3575, inlinedAt: !3631)
!3634 = !DILocation(line: 178, column: 7, scope: !193, inlinedAt: !3631)
!3635 = !DILocation(line: 180, column: 13, scope: !3578, inlinedAt: !3631)
!3636 = !DILocation(line: 180, column: 11, scope: !3579, inlinedAt: !3631)
!3637 = !DILocation(line: 191, column: 11, scope: !3587, inlinedAt: !3631)
!3638 = !DILocation(line: 191, column: 11, scope: !3579, inlinedAt: !3631)
!3639 = !DILocation(line: 192, column: 9, scope: !3587, inlinedAt: !3631)
!3640 = !DILocation(line: 201, column: 11, scope: !3596, inlinedAt: !3631)
!3641 = !DILocation(line: 200, column: 11, scope: !3597, inlinedAt: !3631)
!3642 = !DILocation(line: 202, column: 9, scope: !3596, inlinedAt: !3631)
!3643 = !DILocation(line: 203, column: 14, scope: !3597, inlinedAt: !3631)
!3644 = !DILocation(line: 203, column: 18, scope: !3597, inlinedAt: !3631)
!3645 = !DILocation(line: 203, column: 9, scope: !3597, inlinedAt: !3631)
!3646 = !DILocation(line: 0, scope: !3543, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 207, column: 10, scope: !193, inlinedAt: !3631)
!3648 = !DILocation(line: 53, column: 10, scope: !3551, inlinedAt: !3647)
!3649 = !DILocation(line: 206, column: 7, scope: !193, inlinedAt: !3631)
!3650 = !DILocation(line: 61, column: 7, scope: !3543, inlinedAt: !3647)
!3651 = !DILocation(line: 62, column: 8, scope: !3558, inlinedAt: !3647)
!3652 = !DILocation(line: 62, column: 10, scope: !3558, inlinedAt: !3647)
!3653 = !DILocation(line: 63, column: 5, scope: !3558, inlinedAt: !3647)
!3654 = !DILocation(line: 76, column: 3, scope: !3623)
!3655 = distinct !DISubprogram(name: "xzalloc", scope: !189, file: !189, line: 84, type: !3511, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !3656)
!3656 = !{!3657}
!3657 = !DILocalVariable(name: "n", arg: 1, scope: !3655, file: !189, line: 84, type: !33)
!3658 = !DILocation(line: 0, scope: !3655)
!3659 = !DILocalVariable(name: "n", arg: 1, scope: !3660, file: !189, line: 93, type: !33)
!3660 = distinct !DISubprogram(name: "xcalloc", scope: !189, file: !189, line: 93, type: !3498, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !3661)
!3661 = !{!3659, !3662, !3663}
!3662 = !DILocalVariable(name: "s", arg: 2, scope: !3660, file: !189, line: 93, type: !33)
!3663 = !DILocalVariable(name: "p", scope: !3660, file: !189, line: 95, type: !32)
!3664 = !DILocation(line: 0, scope: !3660, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 86, column: 10, scope: !3655)
!3666 = !DILocation(line: 100, column: 7, scope: !3667, inlinedAt: !3665)
!3667 = distinct !DILexicalBlock(scope: !3660, file: !189, line: 100, column: 7)
!3668 = !DILocation(line: 101, column: 7, scope: !3667, inlinedAt: !3665)
!3669 = !DILocation(line: 101, column: 18, scope: !3667, inlinedAt: !3665)
!3670 = !DILocation(line: 101, column: 16, scope: !3667, inlinedAt: !3665)
!3671 = !DILocation(line: 100, column: 7, scope: !3660, inlinedAt: !3665)
!3672 = !DILocation(line: 102, column: 5, scope: !3667, inlinedAt: !3665)
!3673 = !DILocation(line: 86, column: 3, scope: !3655)
!3674 = !DILocation(line: 0, scope: !3660)
!3675 = !DILocation(line: 100, column: 7, scope: !3667)
!3676 = !DILocation(line: 101, column: 7, scope: !3667)
!3677 = !DILocation(line: 101, column: 18, scope: !3667)
!3678 = !DILocation(line: 101, column: 16, scope: !3667)
!3679 = !DILocation(line: 100, column: 7, scope: !3660)
!3680 = !DILocation(line: 102, column: 5, scope: !3667)
!3681 = !DILocation(line: 103, column: 3, scope: !3660)
!3682 = distinct !DISubprogram(name: "xmemdup", scope: !189, file: !189, line: 111, type: !3683, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !3685)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!32, !928, !33}
!3685 = !{!3686, !3687}
!3686 = !DILocalVariable(name: "p", arg: 1, scope: !3682, file: !189, line: 111, type: !928)
!3687 = !DILocalVariable(name: "s", arg: 2, scope: !3682, file: !189, line: 111, type: !33)
!3688 = !DILocation(line: 0, scope: !3682)
!3689 = !DILocation(line: 0, scope: !3510, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 113, column: 18, scope: !3682)
!3691 = !DILocation(line: 41, column: 13, scope: !3510, inlinedAt: !3690)
!3692 = !DILocation(line: 42, column: 8, scope: !3519, inlinedAt: !3690)
!3693 = !DILocation(line: 42, column: 10, scope: !3519, inlinedAt: !3690)
!3694 = !DILocation(line: 43, column: 5, scope: !3519, inlinedAt: !3690)
!3695 = !DILocalVariable(name: "__dest", arg: 1, scope: !3696, file: !925, line: 26, type: !3699)
!3696 = distinct !DISubprogram(name: "memcpy", scope: !925, file: !925, line: 26, type: !3697, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !3701)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!32, !3699, !3700, !33}
!3699 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!3700 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !928)
!3701 = !{!3695, !3702, !3703}
!3702 = !DILocalVariable(name: "__src", arg: 2, scope: !3696, file: !925, line: 26, type: !3700)
!3703 = !DILocalVariable(name: "__len", arg: 3, scope: !3696, file: !925, line: 26, type: !33)
!3704 = !DILocation(line: 0, scope: !3696, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 113, column: 10, scope: !3682)
!3706 = !DILocation(line: 29, column: 10, scope: !3696, inlinedAt: !3705)
!3707 = !DILocation(line: 113, column: 3, scope: !3682)
!3708 = distinct !DISubprogram(name: "xstrdup", scope: !189, file: !189, line: 119, type: !1154, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !3709)
!3709 = !{!3710}
!3710 = !DILocalVariable(name: "string", arg: 1, scope: !3708, file: !189, line: 119, type: !36)
!3711 = !DILocation(line: 0, scope: !3708)
!3712 = !DILocation(line: 121, column: 27, scope: !3708)
!3713 = !DILocation(line: 121, column: 43, scope: !3708)
!3714 = !DILocation(line: 0, scope: !3682, inlinedAt: !3715)
!3715 = distinct !DILocation(line: 121, column: 10, scope: !3708)
!3716 = !DILocation(line: 0, scope: !3510, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 113, column: 18, scope: !3682, inlinedAt: !3715)
!3718 = !DILocation(line: 41, column: 13, scope: !3510, inlinedAt: !3717)
!3719 = !DILocation(line: 42, column: 8, scope: !3519, inlinedAt: !3717)
!3720 = !DILocation(line: 42, column: 10, scope: !3519, inlinedAt: !3717)
!3721 = !DILocation(line: 43, column: 5, scope: !3519, inlinedAt: !3717)
!3722 = !DILocation(line: 0, scope: !3696, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 113, column: 10, scope: !3682, inlinedAt: !3715)
!3724 = !DILocation(line: 29, column: 10, scope: !3696, inlinedAt: !3723)
!3725 = !DILocation(line: 121, column: 3, scope: !3708)
!3726 = distinct !DISubprogram(name: "xalloc_die", scope: !206, file: !206, line: 32, type: !655, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !57)
!3727 = !DILocation(line: 34, column: 10, scope: !3726)
!3728 = !DILocation(line: 34, column: 33, scope: !3726)
!3729 = !DILocation(line: 34, column: 3, scope: !3726)
!3730 = !DILocation(line: 40, column: 3, scope: !3726)
!3731 = distinct !DISubprogram(name: "xnumtoumax", scope: !3732, file: !3732, line: 36, type: !3733, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !3735)
!3732 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!796, !36, !47, !796, !796, !36, !36, !47}
!3735 = !{!3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3745}
!3736 = !DILocalVariable(name: "n_str", arg: 1, scope: !3731, file: !3732, line: 36, type: !36)
!3737 = !DILocalVariable(name: "base", arg: 2, scope: !3731, file: !3732, line: 36, type: !47)
!3738 = !DILocalVariable(name: "min", arg: 3, scope: !3731, file: !3732, line: 36, type: !796)
!3739 = !DILocalVariable(name: "max", arg: 4, scope: !3731, file: !3732, line: 36, type: !796)
!3740 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3731, file: !3732, line: 37, type: !36)
!3741 = !DILocalVariable(name: "err", arg: 6, scope: !3731, file: !3732, line: 37, type: !36)
!3742 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3731, file: !3732, line: 37, type: !47)
!3743 = !DILocalVariable(name: "s_err", scope: !3731, file: !3732, line: 39, type: !3744)
!3744 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !211, line: 38, baseType: !210)
!3745 = !DILocalVariable(name: "tnum", scope: !3731, file: !3732, line: 41, type: !796)
!3746 = !DILocation(line: 0, scope: !3731)
!3747 = !DILocation(line: 41, column: 3, scope: !3731)
!3748 = !DILocation(line: 42, column: 11, scope: !3731)
!3749 = !DILocation(line: 44, column: 7, scope: !3731)
!3750 = !DILocation(line: 69, column: 50, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3752, file: !3732, line: 67, column: 5)
!3752 = distinct !DILexicalBlock(scope: !3731, file: !3732, line: 66, column: 7)
!3753 = !DILocation(line: 46, column: 11, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3755, file: !3732, line: 46, column: 11)
!3755 = distinct !DILexicalBlock(scope: !3756, file: !3732, line: 45, column: 5)
!3756 = distinct !DILexicalBlock(scope: !3731, file: !3732, line: 44, column: 7)
!3757 = !DILocation(line: 46, column: 16, scope: !3754)
!3758 = !DILocation(line: 46, column: 22, scope: !3754)
!3759 = !DILocation(line: 51, column: 20, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3761, file: !3732, line: 51, column: 15)
!3761 = distinct !DILexicalBlock(scope: !3754, file: !3732, line: 47, column: 9)
!3762 = !DILocation(line: 0, scope: !3760)
!3763 = !DILocation(line: 51, column: 15, scope: !3761)
!3764 = !DILocation(line: 52, column: 19, scope: !3760)
!3765 = !DILocation(line: 66, column: 7, scope: !3731)
!3766 = !DILocation(line: 58, column: 19, scope: !3760)
!3767 = !DILocation(line: 62, column: 5, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3756, file: !3732, line: 61, column: 12)
!3769 = !DILocation(line: 62, column: 11, scope: !3768)
!3770 = !DILocation(line: 64, column: 5, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3768, file: !3732, line: 63, column: 12)
!3772 = !DILocation(line: 64, column: 11, scope: !3771)
!3773 = !DILocation(line: 69, column: 14, scope: !3751)
!3774 = !DILocation(line: 69, column: 56, scope: !3751)
!3775 = !DILocation(line: 70, column: 29, scope: !3751)
!3776 = !DILocation(line: 69, column: 7, scope: !3751)
!3777 = !DILocation(line: 73, column: 10, scope: !3731)
!3778 = !DILocation(line: 71, column: 5, scope: !3751)
!3779 = !DILocation(line: 74, column: 1, scope: !3731)
!3780 = !DILocation(line: 73, column: 3, scope: !3731)
!3781 = distinct !DISubprogram(name: "xdectoumax", scope: !3732, file: !3732, line: 82, type: !3782, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !3784)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!796, !36, !796, !796, !36, !36, !47}
!3784 = !{!3785, !3786, !3787, !3788, !3789, !3790}
!3785 = !DILocalVariable(name: "n_str", arg: 1, scope: !3781, file: !3732, line: 82, type: !36)
!3786 = !DILocalVariable(name: "min", arg: 2, scope: !3781, file: !3732, line: 82, type: !796)
!3787 = !DILocalVariable(name: "max", arg: 3, scope: !3781, file: !3732, line: 82, type: !796)
!3788 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3781, file: !3732, line: 83, type: !36)
!3789 = !DILocalVariable(name: "err", arg: 5, scope: !3781, file: !3732, line: 83, type: !36)
!3790 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3781, file: !3732, line: 83, type: !47)
!3791 = !DILocation(line: 0, scope: !3781)
!3792 = !DILocation(line: 85, column: 10, scope: !3781)
!3793 = !DILocation(line: 85, column: 3, scope: !3781)
!3794 = distinct !DISubprogram(name: "xstrtoumax", scope: !3795, file: !3795, line: 76, type: !3796, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !3799)
!3795 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!3744, !36, !783, !47, !3798, !36}
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!3799 = !{!3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3812, !3813, !3816, !3817}
!3800 = !DILocalVariable(name: "s", arg: 1, scope: !3794, file: !3795, line: 76, type: !36)
!3801 = !DILocalVariable(name: "ptr", arg: 2, scope: !3794, file: !3795, line: 76, type: !783)
!3802 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3794, file: !3795, line: 76, type: !47)
!3803 = !DILocalVariable(name: "val", arg: 4, scope: !3794, file: !3795, line: 77, type: !3798)
!3804 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3794, file: !3795, line: 77, type: !36)
!3805 = !DILocalVariable(name: "t_ptr", scope: !3794, file: !3795, line: 79, type: !30)
!3806 = !DILocalVariable(name: "p", scope: !3794, file: !3795, line: 80, type: !783)
!3807 = !DILocalVariable(name: "tmp", scope: !3794, file: !3795, line: 81, type: !796)
!3808 = !DILocalVariable(name: "err", scope: !3794, file: !3795, line: 82, type: !3744)
!3809 = !DILocalVariable(name: "q", scope: !3810, file: !3795, line: 92, type: !36)
!3810 = distinct !DILexicalBlock(scope: !3811, file: !3795, line: 91, column: 5)
!3811 = distinct !DILexicalBlock(scope: !3794, file: !3795, line: 90, column: 7)
!3812 = !DILocalVariable(name: "ch", scope: !3810, file: !3795, line: 93, type: !38)
!3813 = !DILocalVariable(name: "base", scope: !3814, file: !3795, line: 129, type: !47)
!3814 = distinct !DILexicalBlock(scope: !3815, file: !3795, line: 128, column: 5)
!3815 = distinct !DILexicalBlock(scope: !3794, file: !3795, line: 127, column: 7)
!3816 = !DILocalVariable(name: "suffixes", scope: !3814, file: !3795, line: 130, type: !47)
!3817 = !DILocalVariable(name: "overflow", scope: !3814, file: !3795, line: 131, type: !3744)
!3818 = !DILocation(line: 0, scope: !3794)
!3819 = !DILocation(line: 79, column: 3, scope: !3794)
!3820 = !DILocation(line: 84, column: 3, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3822, file: !3795, line: 84, column: 3)
!3822 = distinct !DILexicalBlock(scope: !3794, file: !3795, line: 84, column: 3)
!3823 = !DILocation(line: 86, column: 8, scope: !3794)
!3824 = !DILocation(line: 88, column: 3, scope: !3794)
!3825 = !DILocation(line: 88, column: 9, scope: !3794)
!3826 = !DILocation(line: 0, scope: !3810)
!3827 = !DILocation(line: 94, column: 7, scope: !3810)
!3828 = !DILocation(line: 94, column: 14, scope: !3810)
!3829 = !DILocation(line: 95, column: 15, scope: !3810)
!3830 = distinct !{!3830, !3827, !3831, !697}
!3831 = !DILocation(line: 95, column: 17, scope: !3810)
!3832 = !DILocation(line: 96, column: 14, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3810, file: !3795, line: 96, column: 11)
!3834 = !DILocation(line: 100, column: 9, scope: !3794)
!3835 = !DILocation(line: 102, column: 7, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3794, file: !3795, line: 102, column: 7)
!3837 = !DILocation(line: 102, column: 10, scope: !3836)
!3838 = !DILocation(line: 102, column: 7, scope: !3794)
!3839 = !DILocation(line: 106, column: 11, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3841, file: !3795, line: 106, column: 11)
!3841 = distinct !DILexicalBlock(scope: !3836, file: !3795, line: 103, column: 5)
!3842 = !DILocation(line: 106, column: 26, scope: !3840)
!3843 = !DILocation(line: 106, column: 29, scope: !3840)
!3844 = !DILocation(line: 106, column: 33, scope: !3840)
!3845 = !DILocation(line: 106, column: 36, scope: !3840)
!3846 = !DILocation(line: 106, column: 11, scope: !3841)
!3847 = !DILocation(line: 111, column: 12, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3836, file: !3795, line: 111, column: 12)
!3849 = !DILocation(line: 111, column: 12, scope: !3836)
!3850 = !DILocation(line: 116, column: 5, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3848, file: !3795, line: 112, column: 5)
!3852 = !DILocation(line: 121, column: 8, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3794, file: !3795, line: 121, column: 7)
!3854 = !DILocation(line: 121, column: 7, scope: !3794)
!3855 = !DILocation(line: 123, column: 12, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3853, file: !3795, line: 122, column: 5)
!3857 = !DILocation(line: 124, column: 7, scope: !3856)
!3858 = !DILocation(line: 127, column: 7, scope: !3815)
!3859 = !DILocation(line: 127, column: 11, scope: !3815)
!3860 = !DILocation(line: 127, column: 7, scope: !3794)
!3861 = !DILocation(line: 0, scope: !3814)
!3862 = !DILocation(line: 133, column: 12, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3814, file: !3795, line: 133, column: 11)
!3864 = !DILocation(line: 133, column: 11, scope: !3814)
!3865 = !DILocation(line: 135, column: 16, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3863, file: !3795, line: 134, column: 9)
!3867 = !DILocation(line: 136, column: 22, scope: !3866)
!3868 = !DILocation(line: 136, column: 11, scope: !3866)
!3869 = !DILocation(line: 139, column: 7, scope: !3814)
!3870 = !DILocation(line: 151, column: 15, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3872, file: !3795, line: 151, column: 15)
!3872 = distinct !DILexicalBlock(scope: !3814, file: !3795, line: 140, column: 9)
!3873 = !DILocation(line: 151, column: 15, scope: !3872)
!3874 = !DILocation(line: 152, column: 21, scope: !3871)
!3875 = !DILocation(line: 152, column: 13, scope: !3871)
!3876 = !DILocation(line: 155, column: 21, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3878, file: !3795, line: 155, column: 21)
!3878 = distinct !DILexicalBlock(scope: !3871, file: !3795, line: 153, column: 15)
!3879 = !DILocation(line: 155, column: 29, scope: !3877)
!3880 = !DILocation(line: 155, column: 21, scope: !3878)
!3881 = !DILocation(line: 163, column: 17, scope: !3878)
!3882 = !DILocation(line: 167, column: 7, scope: !3814)
!3883 = !DILocalVariable(name: "err", scope: !3884, file: !3795, line: 67, type: !3744)
!3884 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3795, file: !3795, line: 65, type: !3885, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !3887)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!3744, !3798, !47, !47}
!3887 = !{!3888, !3889, !3890, !3883}
!3888 = !DILocalVariable(name: "x", arg: 1, scope: !3884, file: !3795, line: 65, type: !3798)
!3889 = !DILocalVariable(name: "base", arg: 2, scope: !3884, file: !3795, line: 65, type: !47)
!3890 = !DILocalVariable(name: "power", arg: 3, scope: !3884, file: !3795, line: 65, type: !47)
!3891 = !DILocation(line: 0, scope: !3884, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 221, column: 22, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3814, file: !3795, line: 168, column: 9)
!3894 = !DILocalVariable(name: "x", arg: 1, scope: !3895, file: !3795, line: 48, type: !3798)
!3895 = distinct !DISubprogram(name: "bkm_scale", scope: !3795, file: !3795, line: 48, type: !3896, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !3898)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!3744, !3798, !47}
!3898 = !{!3894, !3899}
!3899 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3895, file: !3795, line: 48, type: !47)
!3900 = !DILocation(line: 0, scope: !3895, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 69, column: 12, scope: !3884, inlinedAt: !3892)
!3902 = !DILocation(line: 55, column: 39, scope: !3903, inlinedAt: !3901)
!3903 = distinct !DILexicalBlock(scope: !3895, file: !3795, line: 55, column: 7)
!3904 = !DILocation(line: 55, column: 7, scope: !3895, inlinedAt: !3901)
!3905 = !DILocation(line: 69, column: 9, scope: !3884, inlinedAt: !3892)
!3906 = !DILocation(line: 229, column: 11, scope: !3814)
!3907 = !DILocation(line: 0, scope: !3884, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 217, column: 22, scope: !3893)
!3909 = !DILocation(line: 0, scope: !3895, inlinedAt: !3910)
!3910 = distinct !DILocation(line: 69, column: 12, scope: !3884, inlinedAt: !3908)
!3911 = !DILocation(line: 55, column: 39, scope: !3903, inlinedAt: !3910)
!3912 = !DILocation(line: 55, column: 7, scope: !3895, inlinedAt: !3910)
!3913 = !DILocation(line: 69, column: 9, scope: !3884, inlinedAt: !3908)
!3914 = !DILocation(line: 0, scope: !3884, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 204, column: 22, scope: !3893)
!3916 = !DILocation(line: 0, scope: !3895, inlinedAt: !3917)
!3917 = distinct !DILocation(line: 69, column: 12, scope: !3884, inlinedAt: !3915)
!3918 = !DILocation(line: 55, column: 39, scope: !3903, inlinedAt: !3917)
!3919 = !DILocation(line: 55, column: 7, scope: !3895, inlinedAt: !3917)
!3920 = !DILocation(line: 69, column: 9, scope: !3884, inlinedAt: !3915)
!3921 = !DILocation(line: 0, scope: !3884, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 185, column: 22, scope: !3893)
!3923 = !DILocation(line: 0, scope: !3895, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 69, column: 12, scope: !3884, inlinedAt: !3922)
!3925 = !DILocation(line: 55, column: 39, scope: !3903, inlinedAt: !3924)
!3926 = !DILocation(line: 55, column: 7, scope: !3895, inlinedAt: !3924)
!3927 = !DILocation(line: 69, column: 9, scope: !3884, inlinedAt: !3922)
!3928 = !DILocation(line: 0, scope: !3895, inlinedAt: !3929)
!3929 = distinct !DILocation(line: 170, column: 22, scope: !3893)
!3930 = !DILocation(line: 55, column: 39, scope: !3903, inlinedAt: !3929)
!3931 = !DILocation(line: 55, column: 7, scope: !3895, inlinedAt: !3929)
!3932 = !DILocation(line: 171, column: 11, scope: !3893)
!3933 = !DILocation(line: 0, scope: !3895, inlinedAt: !3934)
!3934 = distinct !DILocation(line: 177, column: 22, scope: !3893)
!3935 = !DILocation(line: 55, column: 39, scope: !3903, inlinedAt: !3934)
!3936 = !DILocation(line: 55, column: 7, scope: !3895, inlinedAt: !3934)
!3937 = !DILocation(line: 178, column: 11, scope: !3893)
!3938 = !DILocation(line: 0, scope: !3884, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 190, column: 22, scope: !3893)
!3940 = !DILocation(line: 0, scope: !3895, inlinedAt: !3941)
!3941 = distinct !DILocation(line: 69, column: 12, scope: !3884, inlinedAt: !3939)
!3942 = !DILocation(line: 55, column: 39, scope: !3903, inlinedAt: !3941)
!3943 = !DILocation(line: 55, column: 7, scope: !3895, inlinedAt: !3941)
!3944 = !DILocation(line: 69, column: 9, scope: !3884, inlinedAt: !3939)
!3945 = !DILocation(line: 0, scope: !3884, inlinedAt: !3946)
!3946 = distinct !DILocation(line: 200, column: 22, scope: !3893)
!3947 = !DILocation(line: 0, scope: !3895, inlinedAt: !3948)
!3948 = distinct !DILocation(line: 69, column: 12, scope: !3884, inlinedAt: !3946)
!3949 = !DILocation(line: 55, column: 39, scope: !3903, inlinedAt: !3948)
!3950 = !DILocation(line: 55, column: 7, scope: !3895, inlinedAt: !3948)
!3951 = !DILocation(line: 69, column: 9, scope: !3884, inlinedAt: !3946)
!3952 = !DILocation(line: 0, scope: !3884, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 209, column: 22, scope: !3893)
!3954 = !DILocation(line: 0, scope: !3895, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 69, column: 12, scope: !3884, inlinedAt: !3953)
!3956 = !DILocation(line: 55, column: 39, scope: !3903, inlinedAt: !3955)
!3957 = !DILocation(line: 55, column: 7, scope: !3895, inlinedAt: !3955)
!3958 = !DILocation(line: 69, column: 9, scope: !3884, inlinedAt: !3953)
!3959 = !DILocation(line: 0, scope: !3895, inlinedAt: !3960)
!3960 = distinct !DILocation(line: 213, column: 22, scope: !3893)
!3961 = !DILocation(line: 55, column: 39, scope: !3903, inlinedAt: !3960)
!3962 = !DILocation(line: 55, column: 7, scope: !3895, inlinedAt: !3960)
!3963 = !DILocation(line: 214, column: 11, scope: !3893)
!3964 = !DILocation(line: 225, column: 16, scope: !3893)
!3965 = !DILocation(line: 226, column: 22, scope: !3893)
!3966 = !DILocation(line: 226, column: 11, scope: !3893)
!3967 = !DILocation(line: 0, scope: !3884, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 195, column: 22, scope: !3893)
!3969 = !DILocation(line: 0, scope: !3895, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 69, column: 12, scope: !3884, inlinedAt: !3968)
!3971 = !DILocation(line: 55, column: 39, scope: !3903, inlinedAt: !3970)
!3972 = !DILocation(line: 55, column: 7, scope: !3895, inlinedAt: !3970)
!3973 = !DILocation(line: 0, scope: !3893)
!3974 = !DILocation(line: 230, column: 10, scope: !3814)
!3975 = !DILocation(line: 231, column: 11, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3814, file: !3795, line: 231, column: 11)
!3977 = !DILocation(line: 231, column: 11, scope: !3814)
!3978 = !DILocation(line: 107, column: 13, scope: !3840)
!3979 = !DILocation(line: 82, column: 16, scope: !3794)
!3980 = !DILocation(line: 235, column: 8, scope: !3794)
!3981 = !DILocation(line: 236, column: 3, scope: !3794)
!3982 = !DILocation(line: 237, column: 1, scope: !3794)
!3983 = !DISubprogram(name: "strtoumax", scope: !3984, file: !3984, line: 301, type: !3985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!3984 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!35, !36, !783, !47}
!3987 = distinct !DISubprogram(name: "rpl_calloc", scope: !223, file: !223, line: 42, type: !3498, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !222, retainedNodes: !3988)
!3988 = !{!3989, !3990, !3991, !3992}
!3989 = !DILocalVariable(name: "n", arg: 1, scope: !3987, file: !223, line: 42, type: !33)
!3990 = !DILocalVariable(name: "s", arg: 2, scope: !3987, file: !223, line: 42, type: !33)
!3991 = !DILocalVariable(name: "result", scope: !3987, file: !223, line: 44, type: !32)
!3992 = !DILocalVariable(name: "bytes", scope: !3993, file: !223, line: 56, type: !33)
!3993 = distinct !DILexicalBlock(scope: !3994, file: !223, line: 53, column: 5)
!3994 = distinct !DILexicalBlock(scope: !3987, file: !223, line: 47, column: 7)
!3995 = !DILocation(line: 0, scope: !3987)
!3996 = !DILocation(line: 47, column: 9, scope: !3994)
!3997 = !DILocation(line: 47, column: 14, scope: !3994)
!3998 = !DILocation(line: 0, scope: !3993)
!3999 = !DILocation(line: 57, column: 21, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3993, file: !223, line: 57, column: 11)
!4001 = !DILocation(line: 57, column: 11, scope: !3993)
!4002 = !DILocation(line: 59, column: 11, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !4000, file: !223, line: 58, column: 9)
!4004 = !DILocation(line: 59, column: 17, scope: !4003)
!4005 = !DILocation(line: 65, column: 12, scope: !3987)
!4006 = !DILocation(line: 72, column: 3, scope: !3987)
!4007 = !DILocation(line: 73, column: 1, scope: !3987)
!4008 = distinct !DISubprogram(name: "rpl_fclose", scope: !225, file: !225, line: 58, type: !4009, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !4045)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!47, !4011}
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 7, baseType: !4013)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !4014)
!4014 = !{!4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4013, file: !727, line: 51, baseType: !47, size: 32)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4013, file: !727, line: 54, baseType: !30, size: 64, offset: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4013, file: !727, line: 55, baseType: !30, size: 64, offset: 128)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4013, file: !727, line: 56, baseType: !30, size: 64, offset: 192)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4013, file: !727, line: 57, baseType: !30, size: 64, offset: 256)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4013, file: !727, line: 58, baseType: !30, size: 64, offset: 320)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4013, file: !727, line: 59, baseType: !30, size: 64, offset: 384)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4013, file: !727, line: 60, baseType: !30, size: 64, offset: 448)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4013, file: !727, line: 61, baseType: !30, size: 64, offset: 512)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4013, file: !727, line: 64, baseType: !30, size: 64, offset: 576)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4013, file: !727, line: 65, baseType: !30, size: 64, offset: 640)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4013, file: !727, line: 66, baseType: !30, size: 64, offset: 704)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4013, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4013, file: !727, line: 70, baseType: !4029, size: 64, offset: 832)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4013, file: !727, line: 72, baseType: !47, size: 32, offset: 896)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4013, file: !727, line: 73, baseType: !47, size: 32, offset: 928)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4013, file: !727, line: 74, baseType: !748, size: 64, offset: 960)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4013, file: !727, line: 77, baseType: !130, size: 16, offset: 1024)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4013, file: !727, line: 78, baseType: !74, size: 8, offset: 1040)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4013, file: !727, line: 79, baseType: !754, size: 8, offset: 1048)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4013, file: !727, line: 81, baseType: !758, size: 64, offset: 1088)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4013, file: !727, line: 89, baseType: !761, size: 64, offset: 1152)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4013, file: !727, line: 91, baseType: !763, size: 64, offset: 1216)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4013, file: !727, line: 92, baseType: !766, size: 64, offset: 1280)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4013, file: !727, line: 93, baseType: !4029, size: 64, offset: 1344)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4013, file: !727, line: 94, baseType: !32, size: 64, offset: 1408)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4013, file: !727, line: 95, baseType: !33, size: 64, offset: 1472)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4013, file: !727, line: 96, baseType: !47, size: 32, offset: 1536)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4013, file: !727, line: 98, baseType: !773, size: 160, offset: 1568)
!4045 = !{!4046, !4047, !4048, !4049}
!4046 = !DILocalVariable(name: "fp", arg: 1, scope: !4008, file: !225, line: 58, type: !4011)
!4047 = !DILocalVariable(name: "saved_errno", scope: !4008, file: !225, line: 60, type: !47)
!4048 = !DILocalVariable(name: "fd", scope: !4008, file: !225, line: 61, type: !47)
!4049 = !DILocalVariable(name: "result", scope: !4008, file: !225, line: 62, type: !47)
!4050 = !DILocation(line: 0, scope: !4008)
!4051 = !DILocation(line: 65, column: 8, scope: !4008)
!4052 = !DILocation(line: 66, column: 10, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4008, file: !225, line: 66, column: 7)
!4054 = !DILocation(line: 66, column: 7, scope: !4008)
!4055 = !DILocation(line: 67, column: 12, scope: !4053)
!4056 = !DILocation(line: 67, column: 5, scope: !4053)
!4057 = !DILocation(line: 72, column: 9, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4008, file: !225, line: 72, column: 7)
!4059 = !DILocation(line: 72, column: 23, scope: !4058)
!4060 = !DILocation(line: 72, column: 33, scope: !4058)
!4061 = !DILocation(line: 72, column: 26, scope: !4058)
!4062 = !DILocation(line: 72, column: 59, scope: !4058)
!4063 = !DILocation(line: 73, column: 7, scope: !4058)
!4064 = !DILocation(line: 73, column: 10, scope: !4058)
!4065 = !DILocation(line: 72, column: 7, scope: !4008)
!4066 = !DILocation(line: 100, column: 12, scope: !4008)
!4067 = !DILocation(line: 105, column: 7, scope: !4008)
!4068 = !DILocation(line: 74, column: 19, scope: !4058)
!4069 = !DILocation(line: 105, column: 19, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4008, file: !225, line: 105, column: 7)
!4071 = !DILocation(line: 107, column: 13, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4070, file: !225, line: 106, column: 5)
!4073 = !DILocation(line: 109, column: 5, scope: !4072)
!4074 = !DILocation(line: 112, column: 1, scope: !4008)
!4075 = !DISubprogram(name: "fclose", scope: !722, file: !722, line: 213, type: !4076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!47, !4029}
!4078 = !DISubprogram(name: "lseek", scope: !4079, file: !4079, line: 334, type: !4080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!4079 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!750, !47, !750, !47}
!4082 = distinct !DISubprogram(name: "rpl_fflush", scope: !227, file: !227, line: 129, type: !4083, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !4119)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!47, !4085}
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 7, baseType: !4087)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !4088)
!4088 = !{!4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4087, file: !727, line: 51, baseType: !47, size: 32)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4087, file: !727, line: 54, baseType: !30, size: 64, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4087, file: !727, line: 55, baseType: !30, size: 64, offset: 128)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4087, file: !727, line: 56, baseType: !30, size: 64, offset: 192)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4087, file: !727, line: 57, baseType: !30, size: 64, offset: 256)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4087, file: !727, line: 58, baseType: !30, size: 64, offset: 320)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4087, file: !727, line: 59, baseType: !30, size: 64, offset: 384)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4087, file: !727, line: 60, baseType: !30, size: 64, offset: 448)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4087, file: !727, line: 61, baseType: !30, size: 64, offset: 512)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4087, file: !727, line: 64, baseType: !30, size: 64, offset: 576)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4087, file: !727, line: 65, baseType: !30, size: 64, offset: 640)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4087, file: !727, line: 66, baseType: !30, size: 64, offset: 704)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4087, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4087, file: !727, line: 70, baseType: !4103, size: 64, offset: 832)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4087, file: !727, line: 72, baseType: !47, size: 32, offset: 896)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4087, file: !727, line: 73, baseType: !47, size: 32, offset: 928)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4087, file: !727, line: 74, baseType: !748, size: 64, offset: 960)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4087, file: !727, line: 77, baseType: !130, size: 16, offset: 1024)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4087, file: !727, line: 78, baseType: !74, size: 8, offset: 1040)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4087, file: !727, line: 79, baseType: !754, size: 8, offset: 1048)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4087, file: !727, line: 81, baseType: !758, size: 64, offset: 1088)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4087, file: !727, line: 89, baseType: !761, size: 64, offset: 1152)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4087, file: !727, line: 91, baseType: !763, size: 64, offset: 1216)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4087, file: !727, line: 92, baseType: !766, size: 64, offset: 1280)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4087, file: !727, line: 93, baseType: !4103, size: 64, offset: 1344)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4087, file: !727, line: 94, baseType: !32, size: 64, offset: 1408)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4087, file: !727, line: 95, baseType: !33, size: 64, offset: 1472)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4087, file: !727, line: 96, baseType: !47, size: 32, offset: 1536)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4087, file: !727, line: 98, baseType: !773, size: 160, offset: 1568)
!4119 = !{!4120}
!4120 = !DILocalVariable(name: "stream", arg: 1, scope: !4082, file: !227, line: 129, type: !4085)
!4121 = !DILocation(line: 0, scope: !4082)
!4122 = !DILocation(line: 150, column: 14, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4082, file: !227, line: 150, column: 7)
!4124 = !DILocation(line: 150, column: 22, scope: !4123)
!4125 = !DILocation(line: 150, column: 27, scope: !4123)
!4126 = !DILocation(line: 150, column: 7, scope: !4082)
!4127 = !DILocation(line: 151, column: 12, scope: !4123)
!4128 = !DILocation(line: 151, column: 5, scope: !4123)
!4129 = !DILocalVariable(name: "fp", arg: 1, scope: !4130, file: !227, line: 41, type: !4085)
!4130 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !227, file: !227, line: 41, type: !4131, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !4133)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{null, !4085}
!4133 = !{!4129}
!4134 = !DILocation(line: 0, scope: !4130, inlinedAt: !4135)
!4135 = distinct !DILocation(line: 156, column: 3, scope: !4082)
!4136 = !DILocation(line: 43, column: 11, scope: !4137, inlinedAt: !4135)
!4137 = distinct !DILexicalBlock(scope: !4130, file: !227, line: 43, column: 7)
!4138 = !DILocation(line: 43, column: 18, scope: !4137, inlinedAt: !4135)
!4139 = !DILocation(line: 43, column: 7, scope: !4130, inlinedAt: !4135)
!4140 = !DILocation(line: 45, column: 5, scope: !4137, inlinedAt: !4135)
!4141 = !DILocation(line: 158, column: 10, scope: !4082)
!4142 = !DILocation(line: 158, column: 3, scope: !4082)
!4143 = !DILocation(line: 235, column: 1, scope: !4082)
!4144 = !DISubprogram(name: "fflush", scope: !722, file: !722, line: 218, type: !4145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!47, !4103}
!4147 = distinct !DISubprogram(name: "rpl_fseeko", scope: !229, file: !229, line: 28, type: !4148, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !228, retainedNodes: !4184)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!47, !4150, !1759, !47}
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 7, baseType: !4152)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !4153)
!4153 = !{!4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4152, file: !727, line: 51, baseType: !47, size: 32)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4152, file: !727, line: 54, baseType: !30, size: 64, offset: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4152, file: !727, line: 55, baseType: !30, size: 64, offset: 128)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4152, file: !727, line: 56, baseType: !30, size: 64, offset: 192)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4152, file: !727, line: 57, baseType: !30, size: 64, offset: 256)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4152, file: !727, line: 58, baseType: !30, size: 64, offset: 320)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4152, file: !727, line: 59, baseType: !30, size: 64, offset: 384)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4152, file: !727, line: 60, baseType: !30, size: 64, offset: 448)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4152, file: !727, line: 61, baseType: !30, size: 64, offset: 512)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4152, file: !727, line: 64, baseType: !30, size: 64, offset: 576)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4152, file: !727, line: 65, baseType: !30, size: 64, offset: 640)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4152, file: !727, line: 66, baseType: !30, size: 64, offset: 704)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4152, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4152, file: !727, line: 70, baseType: !4168, size: 64, offset: 832)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4152, file: !727, line: 72, baseType: !47, size: 32, offset: 896)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4152, file: !727, line: 73, baseType: !47, size: 32, offset: 928)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4152, file: !727, line: 74, baseType: !748, size: 64, offset: 960)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4152, file: !727, line: 77, baseType: !130, size: 16, offset: 1024)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4152, file: !727, line: 78, baseType: !74, size: 8, offset: 1040)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4152, file: !727, line: 79, baseType: !754, size: 8, offset: 1048)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4152, file: !727, line: 81, baseType: !758, size: 64, offset: 1088)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4152, file: !727, line: 89, baseType: !761, size: 64, offset: 1152)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4152, file: !727, line: 91, baseType: !763, size: 64, offset: 1216)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4152, file: !727, line: 92, baseType: !766, size: 64, offset: 1280)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4152, file: !727, line: 93, baseType: !4168, size: 64, offset: 1344)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4152, file: !727, line: 94, baseType: !32, size: 64, offset: 1408)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4152, file: !727, line: 95, baseType: !33, size: 64, offset: 1472)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4152, file: !727, line: 96, baseType: !47, size: 32, offset: 1536)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4152, file: !727, line: 98, baseType: !773, size: 160, offset: 1568)
!4184 = !{!4185, !4186, !4187, !4188}
!4185 = !DILocalVariable(name: "fp", arg: 1, scope: !4147, file: !229, line: 28, type: !4150)
!4186 = !DILocalVariable(name: "offset", arg: 2, scope: !4147, file: !229, line: 28, type: !1759)
!4187 = !DILocalVariable(name: "whence", arg: 3, scope: !4147, file: !229, line: 28, type: !47)
!4188 = !DILocalVariable(name: "pos", scope: !4189, file: !229, line: 117, type: !1759)
!4189 = distinct !DILexicalBlock(scope: !4190, file: !229, line: 113, column: 5)
!4190 = distinct !DILexicalBlock(scope: !4147, file: !229, line: 52, column: 7)
!4191 = !DILocation(line: 0, scope: !4147)
!4192 = !DILocation(line: 52, column: 11, scope: !4190)
!4193 = !{!954, !646, i64 16}
!4194 = !DILocation(line: 52, column: 31, scope: !4190)
!4195 = !{!954, !646, i64 8}
!4196 = !DILocation(line: 52, column: 24, scope: !4190)
!4197 = !DILocation(line: 53, column: 7, scope: !4190)
!4198 = !DILocation(line: 53, column: 14, scope: !4190)
!4199 = !DILocation(line: 53, column: 35, scope: !4190)
!4200 = !{!954, !646, i64 32}
!4201 = !DILocation(line: 53, column: 28, scope: !4190)
!4202 = !DILocation(line: 54, column: 7, scope: !4190)
!4203 = !DILocation(line: 54, column: 14, scope: !4190)
!4204 = !{!954, !646, i64 72}
!4205 = !DILocation(line: 54, column: 28, scope: !4190)
!4206 = !DILocation(line: 52, column: 7, scope: !4147)
!4207 = !DILocation(line: 117, column: 26, scope: !4189)
!4208 = !DILocation(line: 117, column: 19, scope: !4189)
!4209 = !DILocation(line: 0, scope: !4189)
!4210 = !DILocation(line: 118, column: 15, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4189, file: !229, line: 118, column: 11)
!4212 = !DILocation(line: 118, column: 11, scope: !4189)
!4213 = !DILocation(line: 129, column: 11, scope: !4189)
!4214 = !DILocation(line: 129, column: 18, scope: !4189)
!4215 = !DILocation(line: 130, column: 11, scope: !4189)
!4216 = !DILocation(line: 130, column: 19, scope: !4189)
!4217 = !{!954, !906, i64 144}
!4218 = !DILocation(line: 161, column: 7, scope: !4189)
!4219 = !DILocation(line: 163, column: 10, scope: !4147)
!4220 = !DILocation(line: 163, column: 3, scope: !4147)
!4221 = !DILocation(line: 164, column: 1, scope: !4147)
!4222 = !DISubprogram(name: "fseeko", scope: !722, file: !722, line: 712, type: !4223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!47, !4168, !750, !47}
!4225 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !231, file: !231, line: 86, type: !4226, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !4240)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!33, !4228, !36, !33, !4229}
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2033, line: 6, baseType: !4231)
!4231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2035, line: 21, baseType: !4232)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2035, line: 13, size: 64, elements: !4233)
!4233 = !{!4234, !4235}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4232, file: !2035, line: 15, baseType: !47, size: 32)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4232, file: !2035, line: 20, baseType: !4236, size: 32, offset: 32)
!4236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4232, file: !2035, line: 16, size: 32, elements: !4237)
!4237 = !{!4238, !4239}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4236, file: !2035, line: 18, baseType: !7, size: 32)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4236, file: !2035, line: 19, baseType: !2044, size: 32)
!4240 = !{!4241, !4242, !4243, !4244, !4245, !4246, !4247}
!4241 = !DILocalVariable(name: "pwc", arg: 1, scope: !4225, file: !231, line: 86, type: !4228)
!4242 = !DILocalVariable(name: "s", arg: 2, scope: !4225, file: !231, line: 86, type: !36)
!4243 = !DILocalVariable(name: "n", arg: 3, scope: !4225, file: !231, line: 86, type: !33)
!4244 = !DILocalVariable(name: "ps", arg: 4, scope: !4225, file: !231, line: 86, type: !4229)
!4245 = !DILocalVariable(name: "ret", scope: !4225, file: !231, line: 88, type: !33)
!4246 = !DILocalVariable(name: "wc", scope: !4225, file: !231, line: 89, type: !2049)
!4247 = !DILocalVariable(name: "uc", scope: !4248, file: !231, line: 156, type: !38)
!4248 = distinct !DILexicalBlock(scope: !4249, file: !231, line: 155, column: 5)
!4249 = distinct !DILexicalBlock(scope: !4225, file: !231, line: 154, column: 7)
!4250 = !DILocation(line: 0, scope: !4225)
!4251 = !DILocation(line: 89, column: 3, scope: !4225)
!4252 = !DILocation(line: 105, column: 9, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4225, file: !231, line: 105, column: 7)
!4254 = !DILocation(line: 105, column: 7, scope: !4225)
!4255 = !DILocation(line: 145, column: 9, scope: !4225)
!4256 = !DILocation(line: 154, column: 19, scope: !4249)
!4257 = !DILocation(line: 154, column: 26, scope: !4249)
!4258 = !DILocation(line: 154, column: 41, scope: !4249)
!4259 = !DILocation(line: 154, column: 7, scope: !4225)
!4260 = !DILocation(line: 156, column: 26, scope: !4248)
!4261 = !DILocation(line: 0, scope: !4248)
!4262 = !DILocation(line: 157, column: 14, scope: !4248)
!4263 = !DILocation(line: 157, column: 12, scope: !4248)
!4264 = !DILocation(line: 163, column: 1, scope: !4225)
!4265 = !DISubprogram(name: "mbrtowc", scope: !2711, file: !2711, line: 296, type: !4266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!35, !49, !36, !35, !4268}
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4269 = distinct !DISubprogram(name: "close_stream", scope: !234, file: !234, line: 56, type: !4270, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !4306)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!47, !4272}
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !791, line: 7, baseType: !4274)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !727, line: 49, size: 1728, elements: !4275)
!4275 = !{!4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4274, file: !727, line: 51, baseType: !47, size: 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4274, file: !727, line: 54, baseType: !30, size: 64, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4274, file: !727, line: 55, baseType: !30, size: 64, offset: 128)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4274, file: !727, line: 56, baseType: !30, size: 64, offset: 192)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4274, file: !727, line: 57, baseType: !30, size: 64, offset: 256)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4274, file: !727, line: 58, baseType: !30, size: 64, offset: 320)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4274, file: !727, line: 59, baseType: !30, size: 64, offset: 384)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4274, file: !727, line: 60, baseType: !30, size: 64, offset: 448)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4274, file: !727, line: 61, baseType: !30, size: 64, offset: 512)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4274, file: !727, line: 64, baseType: !30, size: 64, offset: 576)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4274, file: !727, line: 65, baseType: !30, size: 64, offset: 640)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4274, file: !727, line: 66, baseType: !30, size: 64, offset: 704)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4274, file: !727, line: 68, baseType: !742, size: 64, offset: 768)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4274, file: !727, line: 70, baseType: !4290, size: 64, offset: 832)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4274, file: !727, line: 72, baseType: !47, size: 32, offset: 896)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4274, file: !727, line: 73, baseType: !47, size: 32, offset: 928)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4274, file: !727, line: 74, baseType: !748, size: 64, offset: 960)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4274, file: !727, line: 77, baseType: !130, size: 16, offset: 1024)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4274, file: !727, line: 78, baseType: !74, size: 8, offset: 1040)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4274, file: !727, line: 79, baseType: !754, size: 8, offset: 1048)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4274, file: !727, line: 81, baseType: !758, size: 64, offset: 1088)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4274, file: !727, line: 89, baseType: !761, size: 64, offset: 1152)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4274, file: !727, line: 91, baseType: !763, size: 64, offset: 1216)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4274, file: !727, line: 92, baseType: !766, size: 64, offset: 1280)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4274, file: !727, line: 93, baseType: !4290, size: 64, offset: 1344)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4274, file: !727, line: 94, baseType: !32, size: 64, offset: 1408)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4274, file: !727, line: 95, baseType: !33, size: 64, offset: 1472)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4274, file: !727, line: 96, baseType: !47, size: 32, offset: 1536)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4274, file: !727, line: 98, baseType: !773, size: 160, offset: 1568)
!4306 = !{!4307, !4308, !4310, !4311}
!4307 = !DILocalVariable(name: "stream", arg: 1, scope: !4269, file: !234, line: 56, type: !4272)
!4308 = !DILocalVariable(name: "some_pending", scope: !4269, file: !234, line: 58, type: !4309)
!4309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!4310 = !DILocalVariable(name: "prev_fail", scope: !4269, file: !234, line: 59, type: !4309)
!4311 = !DILocalVariable(name: "fclose_fail", scope: !4269, file: !234, line: 60, type: !4309)
!4312 = !DILocation(line: 0, scope: !4269)
!4313 = !DILocation(line: 58, column: 30, scope: !4269)
!4314 = !DILocalVariable(name: "__stream", arg: 1, scope: !4315, file: !945, line: 135, type: !4272)
!4315 = distinct !DISubprogram(name: "ferror_unlocked", scope: !945, file: !945, line: 135, type: !4270, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !233, retainedNodes: !4316)
!4316 = !{!4314}
!4317 = !DILocation(line: 0, scope: !4315, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 59, column: 27, scope: !4269)
!4319 = !DILocation(line: 137, column: 10, scope: !4315, inlinedAt: !4318)
!4320 = !DILocation(line: 59, column: 43, scope: !4269)
!4321 = !DILocation(line: 60, column: 29, scope: !4269)
!4322 = !DILocation(line: 60, column: 45, scope: !4269)
!4323 = !DILocation(line: 70, column: 17, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4269, file: !234, line: 70, column: 7)
!4325 = !DILocation(line: 58, column: 50, scope: !4269)
!4326 = !DILocation(line: 70, column: 33, scope: !4324)
!4327 = !DILocation(line: 70, column: 53, scope: !4324)
!4328 = !DILocation(line: 70, column: 59, scope: !4324)
!4329 = !DILocation(line: 70, column: 7, scope: !4269)
!4330 = !DILocation(line: 72, column: 11, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4324, file: !234, line: 71, column: 5)
!4332 = !DILocation(line: 73, column: 9, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4331, file: !234, line: 72, column: 11)
!4334 = !DILocation(line: 73, column: 15, scope: !4333)
!4335 = !DILocation(line: 78, column: 1, scope: !4269)
!4336 = distinct !DISubprogram(name: "hard_locale", scope: !236, file: !236, line: 27, type: !4337, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4339)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!92, !47}
!4339 = !{!4340, !4341}
!4340 = !DILocalVariable(name: "category", arg: 1, scope: !4336, file: !236, line: 27, type: !47)
!4341 = !DILocalVariable(name: "locale", scope: !4336, file: !236, line: 29, type: !4342)
!4342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2056, elements: !4343)
!4343 = !{!4344}
!4344 = !DISubrange(count: 257)
!4345 = !DILocation(line: 0, scope: !4336)
!4346 = !DILocation(line: 29, column: 3, scope: !4336)
!4347 = !DILocation(line: 29, column: 8, scope: !4336)
!4348 = !DILocation(line: 31, column: 7, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4336, file: !236, line: 31, column: 7)
!4350 = !DILocation(line: 31, column: 7, scope: !4336)
!4351 = !DILocation(line: 34, column: 12, scope: !4336)
!4352 = !DILocation(line: 34, column: 38, scope: !4336)
!4353 = !DILocation(line: 34, column: 41, scope: !4336)
!4354 = !DILocation(line: 34, column: 66, scope: !4336)
!4355 = !DILocation(line: 35, column: 1, scope: !4336)
!4356 = distinct !DISubprogram(name: "locale_charset", scope: !238, file: !238, line: 831, type: !4357, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !4359)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!36}
!4359 = !{!4360}
!4360 = !DILocalVariable(name: "codeset", scope: !4356, file: !238, line: 833, type: !36)
!4361 = !DILocation(line: 847, column: 13, scope: !4356)
!4362 = !DILocation(line: 0, scope: !4356)
!4363 = !DILocation(line: 911, column: 15, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4356, file: !238, line: 911, column: 7)
!4365 = !DILocation(line: 911, column: 7, scope: !4356)
!4366 = !DILocation(line: 1070, column: 13, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4368, file: !238, line: 1070, column: 13)
!4368 = distinct !DILexicalBlock(scope: !4369, file: !238, line: 1060, column: 7)
!4369 = distinct !DILexicalBlock(scope: !4356, file: !238, line: 1019, column: 3)
!4370 = !DILocation(line: 1070, column: 24, scope: !4367)
!4371 = !DILocation(line: 1070, column: 13, scope: !4368)
!4372 = !DILocation(line: 1158, column: 3, scope: !4356)
!4373 = !DISubprogram(name: "nl_langinfo", scope: !241, file: !241, line: 661, type: !4374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!30, !47}
!4376 = distinct !DISubprogram(name: "setlocale_null_r", scope: !627, file: !627, line: 269, type: !4377, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !626, retainedNodes: !4379)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!47, !47, !30, !33}
!4379 = !{!4380, !4381, !4382}
!4380 = !DILocalVariable(name: "category", arg: 1, scope: !4376, file: !627, line: 269, type: !47)
!4381 = !DILocalVariable(name: "buf", arg: 2, scope: !4376, file: !627, line: 269, type: !30)
!4382 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4376, file: !627, line: 269, type: !33)
!4383 = !DILocation(line: 0, scope: !4376)
!4384 = !DILocalVariable(name: "category", arg: 1, scope: !4385, file: !627, line: 91, type: !47)
!4385 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !627, file: !627, line: 91, type: !4377, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !626, retainedNodes: !4386)
!4386 = !{!4384, !4387, !4388, !4389, !4390}
!4387 = !DILocalVariable(name: "buf", arg: 2, scope: !4385, file: !627, line: 91, type: !30)
!4388 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4385, file: !627, line: 91, type: !33)
!4389 = !DILocalVariable(name: "result", scope: !4385, file: !627, line: 140, type: !36)
!4390 = !DILocalVariable(name: "length", scope: !4391, file: !627, line: 154, type: !33)
!4391 = distinct !DILexicalBlock(scope: !4392, file: !627, line: 153, column: 5)
!4392 = distinct !DILexicalBlock(scope: !4385, file: !627, line: 142, column: 7)
!4393 = !DILocation(line: 0, scope: !4385, inlinedAt: !4394)
!4394 = distinct !DILocation(line: 274, column: 10, scope: !4376)
!4395 = !DILocalVariable(name: "category", arg: 1, scope: !4396, file: !627, line: 60, type: !47)
!4396 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !627, file: !627, line: 60, type: !4397, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !626, retainedNodes: !4399)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!36, !47}
!4399 = !{!4395, !4400}
!4400 = !DILocalVariable(name: "result", scope: !4396, file: !627, line: 62, type: !36)
!4401 = !DILocation(line: 0, scope: !4396, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 140, column: 24, scope: !4385, inlinedAt: !4394)
!4403 = !DILocation(line: 62, column: 24, scope: !4396, inlinedAt: !4402)
!4404 = !DILocation(line: 142, column: 14, scope: !4392, inlinedAt: !4394)
!4405 = !DILocation(line: 142, column: 7, scope: !4385, inlinedAt: !4394)
!4406 = !DILocation(line: 145, column: 19, scope: !4407, inlinedAt: !4394)
!4407 = distinct !DILexicalBlock(scope: !4408, file: !627, line: 145, column: 11)
!4408 = distinct !DILexicalBlock(scope: !4392, file: !627, line: 143, column: 5)
!4409 = !DILocation(line: 145, column: 11, scope: !4408, inlinedAt: !4394)
!4410 = !DILocation(line: 149, column: 16, scope: !4407, inlinedAt: !4394)
!4411 = !DILocation(line: 149, column: 9, scope: !4407, inlinedAt: !4394)
!4412 = !DILocation(line: 154, column: 23, scope: !4391, inlinedAt: !4394)
!4413 = !DILocation(line: 0, scope: !4391, inlinedAt: !4394)
!4414 = !DILocation(line: 155, column: 18, scope: !4415, inlinedAt: !4394)
!4415 = distinct !DILexicalBlock(scope: !4391, file: !627, line: 155, column: 11)
!4416 = !DILocation(line: 155, column: 11, scope: !4391, inlinedAt: !4394)
!4417 = !DILocation(line: 157, column: 39, scope: !4418, inlinedAt: !4394)
!4418 = distinct !DILexicalBlock(scope: !4415, file: !627, line: 156, column: 9)
!4419 = !DILocalVariable(name: "__dest", arg: 1, scope: !4420, file: !925, line: 26, type: !3699)
!4420 = distinct !DISubprogram(name: "memcpy", scope: !925, file: !925, line: 26, type: !3697, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !626, retainedNodes: !4421)
!4421 = !{!4419, !4422, !4423}
!4422 = !DILocalVariable(name: "__src", arg: 2, scope: !4420, file: !925, line: 26, type: !3700)
!4423 = !DILocalVariable(name: "__len", arg: 3, scope: !4420, file: !925, line: 26, type: !33)
!4424 = !DILocation(line: 0, scope: !4420, inlinedAt: !4425)
!4425 = distinct !DILocation(line: 157, column: 11, scope: !4418, inlinedAt: !4394)
!4426 = !DILocation(line: 29, column: 10, scope: !4420, inlinedAt: !4425)
!4427 = !DILocation(line: 158, column: 11, scope: !4418, inlinedAt: !4394)
!4428 = !DILocation(line: 162, column: 23, scope: !4429, inlinedAt: !4394)
!4429 = distinct !DILexicalBlock(scope: !4430, file: !627, line: 162, column: 15)
!4430 = distinct !DILexicalBlock(scope: !4415, file: !627, line: 161, column: 9)
!4431 = !DILocation(line: 162, column: 15, scope: !4430, inlinedAt: !4394)
!4432 = !DILocation(line: 167, column: 44, scope: !4433, inlinedAt: !4394)
!4433 = distinct !DILexicalBlock(scope: !4429, file: !627, line: 163, column: 13)
!4434 = !DILocation(line: 0, scope: !4420, inlinedAt: !4435)
!4435 = distinct !DILocation(line: 167, column: 15, scope: !4433, inlinedAt: !4394)
!4436 = !DILocation(line: 29, column: 10, scope: !4420, inlinedAt: !4435)
!4437 = !DILocation(line: 168, column: 15, scope: !4433, inlinedAt: !4394)
!4438 = !DILocation(line: 168, column: 32, scope: !4433, inlinedAt: !4394)
!4439 = !DILocation(line: 169, column: 13, scope: !4433, inlinedAt: !4394)
!4440 = !DILocation(line: 0, scope: !4392, inlinedAt: !4394)
!4441 = !DILocation(line: 274, column: 3, scope: !4376)
!4442 = distinct !DISubprogram(name: "setlocale_null", scope: !627, file: !627, line: 301, type: !4397, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !626, retainedNodes: !4443)
!4443 = !{!4444}
!4444 = !DILocalVariable(name: "category", arg: 1, scope: !4442, file: !627, line: 301, type: !47)
!4445 = !DILocation(line: 0, scope: !4442)
!4446 = !DILocation(line: 0, scope: !4396, inlinedAt: !4447)
!4447 = distinct !DILocation(line: 304, column: 10, scope: !4442)
!4448 = !DILocation(line: 62, column: 24, scope: !4396, inlinedAt: !4447)
!4449 = !DILocation(line: 304, column: 3, scope: !4442)
