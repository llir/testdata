; ModuleID = 'coreutils-8.32/src/base64.bc'
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
%struct.base64_decode_context = type { i32, [4 x i8] }
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
@.str.7 = private unnamed_addr constant [7 x i8] c"base64\00", align 1
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
@b64c = internal unnamed_addr constant [64 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", align 16, !dbg !59
@b64 = internal unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16, !dbg !65
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !75
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !80
@.str.56 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.57 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.58 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !83
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !89
@.str.67 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.68 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.69 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.72, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.73, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.74, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.77, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.79, i32 0, i32 0), i8* null], align 16, !dbg !94
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !122
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !128
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !140
@.str.11.80 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.81 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.82 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.83 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.84 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.85 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.86 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !145
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !152
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !142
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !154
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !160
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
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !624 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !628, metadata !DIExpression()), !dbg !629
  %3 = icmp eq i32 %0, 0, !dbg !630
  br i1 %3, label %9, label %4, !dbg !632

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !633, !tbaa !635
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #26, !dbg !633
  %7 = load i8*, i8** @program_name, align 8, !dbg !633, !tbaa !635
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #26, !dbg !633
  br label %68, !dbg !633

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #26, !dbg !639
  %11 = load i8*, i8** @program_name, align 8, !dbg !639, !tbaa !635
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #26, !dbg !639
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 5) #26, !dbg !641
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i32 64) #26, !dbg !641
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i64 0, i64 0), i32 5) #26, !dbg !642
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !642, !tbaa !635
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #26, !dbg !642
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #26, !dbg !648
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !648, !tbaa !635
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #26, !dbg !648
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([243 x i8], [243 x i8]* @.str.3, i64 0, i64 0), i32 5) #26, !dbg !651
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !651, !tbaa !635
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22), !dbg !651
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #26, !dbg !652
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !652, !tbaa !635
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25), !dbg !652
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #26, !dbg !653
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !653, !tbaa !635
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28), !dbg !653
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([268 x i8], [268 x i8]* @.str.6, i64 0, i64 0), i32 5) #26, !dbg !654
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #26, !dbg !654
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), metadata !655, metadata !DIExpression()) #26, !dbg !673
  %32 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !675
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %32) #26, !dbg !675
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !660, metadata !DIExpression()) #26, !dbg !676
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %32, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #26, !dbg !676
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), metadata !669, metadata !DIExpression()) #26, !dbg !673
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !670, metadata !DIExpression()) #26, !dbg !673
  %33 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !677
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !670, metadata !DIExpression()) #26, !dbg !673
  br label %34, !dbg !678

34:                                               ; preds = %39, %9
  %35 = phi i8* [ %42, %39 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %36 = phi %struct.infomap* [ %40, %39 ], [ %33, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !670, metadata !DIExpression()) #26, !dbg !673
  %37 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %35) #27, !dbg !679
  %38 = icmp eq i32 %37, 0, !dbg !679
  br i1 %38, label %44, label %39, !dbg !678

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 1, !dbg !680
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !670, metadata !DIExpression()) #26, !dbg !673
  %41 = getelementptr inbounds %struct.infomap, %struct.infomap* %40, i64 0, i32 0, !dbg !681
  %42 = load i8*, i8** %41, align 8, !dbg !681, !tbaa !682
  %43 = icmp eq i8* %42, null, !dbg !684
  br i1 %43, label %44, label %34, !dbg !685, !llvm.loop !686

44:                                               ; preds = %39, %34
  %45 = phi %struct.infomap* [ %36, %34 ], [ %40, %39 ]
  %46 = getelementptr inbounds %struct.infomap, %struct.infomap* %45, i64 0, i32 1, !dbg !688
  %47 = load i8*, i8** %46, align 8, !dbg !688, !tbaa !690
  %48 = icmp eq i8* %47, null, !dbg !691
  %49 = select i1 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %47, !dbg !692
  call void @llvm.dbg.value(metadata i8* %49, metadata !669, metadata !DIExpression()) #26, !dbg !673
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #26, !dbg !693
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #26, !dbg !693
  %52 = tail call i8* @setlocale(i32 5, i8* null) #26, !dbg !694
  call void @llvm.dbg.value(metadata i8* %52, metadata !672, metadata !DIExpression()) #26, !dbg !673
  %53 = icmp eq i8* %52, null, !dbg !695
  br i1 %53, label %61, label %54, !dbg !697

54:                                               ; preds = %44
  %55 = tail call i32 @strncmp(i8* nonnull %52, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #27, !dbg !698
  %56 = icmp eq i32 %55, 0, !dbg !698
  br i1 %56, label %61, label %57, !dbg !699

57:                                               ; preds = %54
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.33, i64 0, i64 0), i32 5) #26, !dbg !700
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !700, !tbaa !635
  %60 = tail call i32 @fputs_unlocked(i8* %58, %struct._IO_FILE* %59) #26, !dbg !700
  br label %61, !dbg !702

61:                                               ; preds = %44, %54, %57
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 5) #26, !dbg !703
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #26, !dbg !703
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #26, !dbg !704
  %65 = icmp eq i8* %49, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), !dbg !704
  %66 = select i1 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !704
  %67 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* %49, i8* %66) #26, !dbg !704
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %32) #26, !dbg !705
  br label %68

68:                                               ; preds = %61, %4
  tail call void @exit(i32 %0) #28, !dbg !706
  unreachable, !dbg !706
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !707 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !711 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !766 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !770 {
  %3 = alloca %struct.base64_decode_context, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !775, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i8** %1, metadata !776, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i8 0, metadata !783, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i8 0, metadata !784, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i64 76, metadata !785, metadata !DIExpression()), !dbg !789
  %5 = load i8*, i8** %1, align 8, !dbg !790, !tbaa !635
  tail call void @set_program_name(i8* %5) #26, !dbg !791
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #26, !dbg !792
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #26, !dbg !793
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #26, !dbg !794
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #26, !dbg !795
  br label %10, !dbg !796

10:                                               ; preds = %17, %2
  %11 = phi i1 [ true, %2 ], [ false, %17 ]
  %12 = phi i8 [ 0, %2 ], [ %15, %17 ]
  %13 = phi i64 [ 76, %2 ], [ %18, %17 ]
  br label %14, !dbg !796

14:                                               ; preds = %17, %10
  %15 = phi i8 [ %12, %10 ], [ 1, %17 ]
  %16 = phi i64 [ %13, %10 ], [ %18, %17 ]
  br label %17, !dbg !796

17:                                               ; preds = %14, %20
  %18 = phi i64 [ %23, %20 ], [ %16, %14 ], !dbg !797
  call void @llvm.dbg.value(metadata i64 %18, metadata !785, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i8 %15, metadata !784, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i8 undef, metadata !783, metadata !DIExpression()), !dbg !789
  %19 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #26, !dbg !798
  call void @llvm.dbg.value(metadata i32 %19, metadata !777, metadata !DIExpression()), !dbg !789
  switch i32 %19, label %28 [
    i32 -1, label %29
    i32 100, label %10
    i32 119, label %20
    i32 105, label %14
    i32 -130, label %24
    i32 -131, label %25
  ], !dbg !796, !llvm.loop !799

20:                                               ; preds = %17
  %21 = load i8*, i8** @optarg, align 8, !dbg !801, !tbaa !635
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 5) #26, !dbg !803
  %23 = tail call i64 @xdectoumax(i8* %21, i64 0, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* %22, i32 0) #26, !dbg !804
  call void @llvm.dbg.value(metadata i64 %23, metadata !785, metadata !DIExpression()), !dbg !789
  br label %17, !dbg !805, !llvm.loop !799

24:                                               ; preds = %17
  tail call void @usage(i32 0) #29, !dbg !806
  unreachable, !dbg !806

25:                                               ; preds = %17
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !807, !tbaa !635
  %27 = load i8*, i8** @Version, align 8, !dbg !807, !tbaa !635
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* null) #26, !dbg !807
  tail call void @exit(i32 0) #28, !dbg !807
  unreachable, !dbg !807

28:                                               ; preds = %17
  tail call void @usage(i32 1) #29, !dbg !808
  unreachable, !dbg !808

29:                                               ; preds = %17
  %30 = load i32, i32* @optind, align 4, !dbg !809, !tbaa !811
  %31 = sub nsw i32 %0, %30, !dbg !813
  %32 = icmp sgt i32 %31, 1, !dbg !814
  br i1 %32, label %33, label %41, !dbg !815

33:                                               ; preds = %29
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 5) #26, !dbg !816
  %35 = load i32, i32* @optind, align 4, !dbg !818, !tbaa !811
  %36 = add nsw i32 %35, 1, !dbg !819
  %37 = sext i32 %36 to i64, !dbg !820
  %38 = getelementptr inbounds i8*, i8** %1, i64 %37, !dbg !820
  %39 = load i8*, i8** %38, align 8, !dbg !820, !tbaa !635
  %40 = tail call i8* @quote(i8* %39) #26, !dbg !821
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %34, i8* %40) #26, !dbg !822
  tail call void @usage(i32 1) #29, !dbg !823
  unreachable, !dbg !823

41:                                               ; preds = %29
  %42 = icmp slt i32 %30, %0, !dbg !824
  br i1 %42, label %43, label %47, !dbg !826

43:                                               ; preds = %41
  %44 = sext i32 %30 to i64, !dbg !827
  %45 = getelementptr inbounds i8*, i8** %1, i64 %44, !dbg !827
  %46 = load i8*, i8** %45, align 8, !dbg !827, !tbaa !635
  call void @llvm.dbg.value(metadata i8* %46, metadata !782, metadata !DIExpression()), !dbg !789
  br label %47, !dbg !828

47:                                               ; preds = %41, %43
  %48 = phi i8* [ %46, %43 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %41 ], !dbg !829
  call void @llvm.dbg.value(metadata i8* %48, metadata !782, metadata !DIExpression()), !dbg !789
  %49 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #27, !dbg !830
  %50 = icmp eq i32 %49, 0, !dbg !830
  br i1 %50, label %51, label %53, !dbg !832

51:                                               ; preds = %47
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !833, !tbaa !635
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %52, metadata !778, metadata !DIExpression()), !dbg !789
  br label %60, !dbg !835

53:                                               ; preds = %47
  %54 = tail call %struct._IO_FILE* @fopen(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)), !dbg !836
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %54, metadata !778, metadata !DIExpression()), !dbg !789
  %55 = icmp eq %struct._IO_FILE* %54, null, !dbg !838
  br i1 %55, label %56, label %60, !dbg !840

56:                                               ; preds = %53
  %57 = tail call i32* @__errno_location() #30, !dbg !841
  %58 = load i32, i32* %57, align 4, !dbg !841, !tbaa !811
  %59 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %48) #26, !dbg !841
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %59) #26, !dbg !841
  unreachable, !dbg !841

60:                                               ; preds = %53, %51
  %61 = phi %struct._IO_FILE* [ %52, %51 ], [ %54, %53 ], !dbg !842
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !778, metadata !DIExpression()), !dbg !789
  tail call void @fadvise(%struct._IO_FILE* %61, i32 2) #26, !dbg !843
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !844, !tbaa !635
  br i1 %11, label %143, label %63, !dbg !846

63:                                               ; preds = %60
  %64 = icmp ne i8 %15, 0, !dbg !847
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !848, metadata !DIExpression()) #26, !dbg !884
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %62, metadata !853, metadata !DIExpression()) #26, !dbg !884
  call void @llvm.dbg.value(metadata i1 %64, metadata !854, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !884
  %65 = bitcast %struct.base64_decode_context* %3 to i8*, !dbg !886
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %65) #26, !dbg !886
  call void @llvm.dbg.declare(metadata %struct.base64_decode_context* %3, metadata !858, metadata !DIExpression()) #26, !dbg !887
  %66 = tail call noalias i8* @xmalloc(i64 4096) #26, !dbg !888
  call void @llvm.dbg.value(metadata i8* %66, metadata !855, metadata !DIExpression()) #26, !dbg !884
  %67 = tail call noalias i8* @xmalloc(i64 3072) #26, !dbg !889
  call void @llvm.dbg.value(metadata i8* %67, metadata !856, metadata !DIExpression()) #26, !dbg !884
  call void @base64_decode_ctx_init(%struct.base64_decode_context* nonnull %3) #26, !dbg !890
  %68 = bitcast i64* %4 to i8*
  %69 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %61, i64 0, i32 0
  %70 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %3, i64 0, i32 0
  br label %71, !dbg !891

71:                                               ; preds = %141, %63
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %68) #26, !dbg !892
  call void @llvm.dbg.value(metadata i64 0, metadata !857, metadata !DIExpression()) #26, !dbg !884
  br label %72, !dbg !893

72:                                               ; preds = %109, %71
  %73 = phi i64 [ 0, %71 ], [ %101, %109 ], !dbg !894
  call void @llvm.dbg.value(metadata i64 %73, metadata !857, metadata !DIExpression()) #26, !dbg !884
  %74 = getelementptr inbounds i8, i8* %66, i64 %73, !dbg !895
  %75 = sub nuw nsw i64 4096, %73, !dbg !895
  %76 = call i64 @fread_unlocked(i8* %74, i64 1, i64 %75, %struct._IO_FILE* %61) #26, !dbg !895
  call void @llvm.dbg.value(metadata i64 %76, metadata !869, metadata !DIExpression()) #26, !dbg !894
  store i64 %76, i64* %4, align 8, !dbg !896, !tbaa !897
  %77 = icmp ne i64 %76, 0
  %78 = and i1 %64, %77, !dbg !899
  call void @llvm.dbg.value(metadata i64 0, metadata !871, metadata !DIExpression()) #26, !dbg !900
  call void @llvm.dbg.value(metadata i64 %76, metadata !869, metadata !DIExpression()) #26, !dbg !894
  br i1 %78, label %79, label %99, !dbg !899

79:                                               ; preds = %72, %95
  %80 = phi i64 [ %96, %95 ], [ %76, %72 ]
  %81 = phi i64 [ %97, %95 ], [ 0, %72 ]
  call void @llvm.dbg.value(metadata i64 %81, metadata !871, metadata !DIExpression()) #26, !dbg !900
  %82 = add i64 %81, %73, !dbg !901
  %83 = getelementptr inbounds i8, i8* %66, i64 %82, !dbg !905
  %84 = load i8, i8* %83, align 1, !dbg !905, !tbaa !906
  %85 = call zeroext i1 @isbase64(i8 signext %84) #30, !dbg !907
  %86 = icmp eq i8 %84, 61
  %87 = or i1 %85, %86, !dbg !908
  br i1 %87, label %88, label %90, !dbg !908

88:                                               ; preds = %79
  %89 = add nuw i64 %81, 1, !dbg !909
  call void @llvm.dbg.value(metadata i64 %89, metadata !871, metadata !DIExpression()) #26, !dbg !900
  br label %95, !dbg !910

90:                                               ; preds = %79
  %91 = getelementptr inbounds i8, i8* %74, i64 %81, !dbg !911
  %92 = getelementptr inbounds i8, i8* %91, i64 1, !dbg !912
  %93 = add i64 %80, -1, !dbg !913
  call void @llvm.dbg.value(metadata i64 %93, metadata !869, metadata !DIExpression()) #26, !dbg !894
  store i64 %93, i64* %4, align 8, !dbg !913, !tbaa !897
  %94 = sub i64 %93, %81, !dbg !914
  call void @llvm.dbg.value(metadata i8* %91, metadata !915, metadata !DIExpression()) #26, !dbg !925
  call void @llvm.dbg.value(metadata i8* %92, metadata !923, metadata !DIExpression()) #26, !dbg !925
  call void @llvm.dbg.value(metadata i64 %94, metadata !924, metadata !DIExpression()) #26, !dbg !925
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 1 %91, i8* nonnull align 1 %92, i64 %94, i1 false) #26, !dbg !927
  br label %95

95:                                               ; preds = %90, %88
  %96 = phi i64 [ %80, %88 ], [ %93, %90 ], !dbg !928
  %97 = phi i64 [ %89, %88 ], [ %81, %90 ], !dbg !900
  call void @llvm.dbg.value(metadata i64 %97, metadata !871, metadata !DIExpression()) #26, !dbg !900
  call void @llvm.dbg.value(metadata i64 %96, metadata !869, metadata !DIExpression()) #26, !dbg !894
  %98 = icmp ult i64 %97, %96, !dbg !929
  br i1 %98, label %79, label %99, !dbg !930, !llvm.loop !931

99:                                               ; preds = %95, %72
  %100 = phi i64 [ %76, %72 ], [ %96, %95 ], !dbg !933
  call void @llvm.dbg.value(metadata i64 %100, metadata !869, metadata !DIExpression()) #26, !dbg !894
  %101 = add i64 %100, %73, !dbg !934
  call void @llvm.dbg.value(metadata i64 %101, metadata !857, metadata !DIExpression()) #26, !dbg !884
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !935, metadata !DIExpression()) #26, !dbg !941
  %102 = load i32, i32* %69, align 8, !dbg !944, !tbaa !945
  %103 = and i32 %102, 32, !dbg !948
  %104 = icmp eq i32 %103, 0, !dbg !948
  br i1 %104, label %109, label %105, !dbg !949

105:                                              ; preds = %99
  %106 = tail call i32* @__errno_location() #30, !dbg !950
  %107 = load i32, i32* %106, align 4, !dbg !950, !tbaa !811
  %108 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i32 5) #26, !dbg !950
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %107, i8* %108) #26, !dbg !950
  unreachable, !dbg !950

109:                                              ; preds = %99
  %110 = icmp ult i64 %101, 4096, !dbg !951
  %111 = and i32 %102, 16
  %112 = icmp eq i32 %111, 0
  %113 = and i1 %110, %112, !dbg !952
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !953, metadata !DIExpression()) #26, !dbg !956
  br i1 %113, label %72, label %124, !dbg !952, !llvm.loop !958

114:                                              ; preds = %137
  call void @llvm.dbg.value(metadata i32 %138, metadata !870, metadata !DIExpression()) #26, !dbg !894
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !953, metadata !DIExpression()) #26, !dbg !960
  %115 = load i32, i32* %69, align 8, !dbg !962, !tbaa !945
  %116 = and i32 %115, 16, !dbg !963
  %117 = icmp eq i32 %116, 0, !dbg !963
  %118 = select i1 %117, i32 1, i32 2, !dbg !964
  %119 = icmp ult i32 %138, %118, !dbg !965
  br i1 %119, label %120, label %141, !dbg !966, !llvm.loop !967

120:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i32 %138, metadata !870, metadata !DIExpression()) #26, !dbg !894
  %121 = load i32, i32* %70, align 4
  %122 = or i32 %125, %121, !dbg !969
  %123 = icmp eq i32 %122, 0, !dbg !969
  br i1 %123, label %141, label %124, !dbg !969, !llvm.loop !967

124:                                              ; preds = %109, %120
  %125 = phi i32 [ %138, %120 ], [ 0, %109 ]
  call void @llvm.dbg.value(metadata i32 %125, metadata !870, metadata !DIExpression()) #26, !dbg !894
  call void @llvm.dbg.value(metadata i64 3072, metadata !869, metadata !DIExpression()) #26, !dbg !894
  store i64 3072, i64* %4, align 8, !dbg !971, !tbaa !897
  %126 = icmp eq i32 %125, 0, !dbg !972
  %127 = select i1 %126, i64 %101, i64 0, !dbg !973
  call void @llvm.dbg.value(metadata i64* %4, metadata !869, metadata !DIExpression(DW_OP_deref)) #26, !dbg !894
  %128 = call zeroext i1 @base64_decode_ctx(%struct.base64_decode_context* nonnull %3, i8* %66, i64 %127, i8* %67, i64* nonnull %4) #26, !dbg !974
  call void @llvm.dbg.value(metadata i1 %128, metadata !867, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !894
  %129 = load i64, i64* %4, align 8, !dbg !975, !tbaa !897
  call void @llvm.dbg.value(metadata i64 %129, metadata !869, metadata !DIExpression()) #26, !dbg !894
  call void @llvm.dbg.value(metadata i64 %129, metadata !869, metadata !DIExpression()) #26, !dbg !894
  %130 = call i64 @fwrite_unlocked(i8* %67, i64 1, i64 %129, %struct._IO_FILE* %62) #26, !dbg !975
  %131 = load i64, i64* %4, align 8, !dbg !976, !tbaa !897
  call void @llvm.dbg.value(metadata i64 %131, metadata !869, metadata !DIExpression()) #26, !dbg !894
  %132 = icmp ult i64 %130, %131, !dbg !977
  br i1 %132, label %133, label %137, !dbg !978

133:                                              ; preds = %124
  %134 = tail call i32* @__errno_location() #30, !dbg !979
  %135 = load i32, i32* %134, align 4, !dbg !979, !tbaa !811
  %136 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #26, !dbg !979
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %135, i8* %136) #26, !dbg !979
  unreachable, !dbg !979

137:                                              ; preds = %124
  %138 = add nuw nsw i32 %125, 1, !dbg !980
  call void @llvm.dbg.value(metadata i32 %138, metadata !870, metadata !DIExpression()) #26, !dbg !894
  br i1 %128, label %114, label %139, !dbg !981

139:                                              ; preds = %137
  %140 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), i32 5) #26, !dbg !982
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %140) #26, !dbg !982
  unreachable, !dbg !982

141:                                              ; preds = %120, %114
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68) #26, !dbg !984
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !953, metadata !DIExpression()) #26, !dbg !985
  br i1 %117, label %71, label %142, !dbg !987, !llvm.loop !988

142:                                              ; preds = %141
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %65) #26, !dbg !990
  br label %254, !dbg !991

143:                                              ; preds = %60
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !992, metadata !DIExpression()) #26, !dbg !1005
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %62, metadata !997, metadata !DIExpression()) #26, !dbg !1005
  call void @llvm.dbg.value(metadata i64 %18, metadata !998, metadata !DIExpression()) #26, !dbg !1005
  call void @llvm.dbg.value(metadata i64 0, metadata !999, metadata !DIExpression()) #26, !dbg !1005
  %144 = tail call noalias i8* @xmalloc(i64 30720) #26, !dbg !1007
  call void @llvm.dbg.value(metadata i8* %144, metadata !1000, metadata !DIExpression()) #26, !dbg !1005
  %145 = tail call noalias i8* @xmalloc(i64 40960) #26, !dbg !1008
  call void @llvm.dbg.value(metadata i8* %145, metadata !1001, metadata !DIExpression()) #26, !dbg !1005
  %146 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %61, i64 0, i32 0
  %147 = icmp eq i64 %18, 0
  %148 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %62, i64 0, i32 5
  %149 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %62, i64 0, i32 6
  br label %150, !dbg !1009

150:                                              ; preds = %224, %143
  %151 = phi i64 [ 0, %143 ], [ %220, %224 ], !dbg !1010
  call void @llvm.dbg.value(metadata i64 0, metadata !1002, metadata !DIExpression()) #26, !dbg !1005
  br label %152, !dbg !1011

152:                                              ; preds = %161, %150
  %153 = phi i64 [ 0, %150 ], [ %157, %161 ], !dbg !1012
  call void @llvm.dbg.value(metadata i64 %153, metadata !1002, metadata !DIExpression()) #26, !dbg !1005
  %154 = getelementptr inbounds i8, i8* %144, i64 %153, !dbg !1013
  %155 = sub nuw nsw i64 30720, %153, !dbg !1013
  %156 = tail call i64 @fread_unlocked(i8* %154, i64 1, i64 %155, %struct._IO_FILE* %61) #26, !dbg !1013
  call void @llvm.dbg.value(metadata i64 %156, metadata !1003, metadata !DIExpression()) #26, !dbg !1012
  %157 = add i64 %156, %153, !dbg !1015
  call void @llvm.dbg.value(metadata i64 %157, metadata !1002, metadata !DIExpression()) #26, !dbg !1005
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !953, metadata !DIExpression()) #26, !dbg !1016
  %158 = load i32, i32* %146, align 8, !dbg !1018, !tbaa !945
  %159 = and i32 %158, 16, !dbg !1019
  %160 = icmp eq i32 %159, 0, !dbg !1019
  br i1 %160, label %161, label %166, !dbg !1020

161:                                              ; preds = %152
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !935, metadata !DIExpression()) #26, !dbg !1021
  %162 = and i32 %158, 32, !dbg !1023
  %163 = icmp eq i32 %162, 0, !dbg !1023
  %164 = icmp ult i64 %157, 30720
  %165 = and i1 %164, %163, !dbg !1024
  br i1 %165, label %152, label %166, !dbg !1024, !llvm.loop !1025

166:                                              ; preds = %161, %152
  %167 = icmp eq i64 %157, 0, !dbg !1027
  br i1 %167, label %219, label %168, !dbg !1029

168:                                              ; preds = %166
  %169 = add i64 %157, 2, !dbg !1030
  %170 = udiv i64 %169, 3, !dbg !1030
  %171 = shl i64 %170, 2, !dbg !1030
  tail call void @base64_encode(i8* %144, i64 %157, i8* %145, i64 %171) #26, !dbg !1032
  call void @llvm.dbg.value(metadata i8* %145, metadata !1033, metadata !DIExpression()) #26, !dbg !1062
  call void @llvm.dbg.value(metadata i64 %171, metadata !1038, metadata !DIExpression()) #26, !dbg !1062
  call void @llvm.dbg.value(metadata i64 %18, metadata !1039, metadata !DIExpression()) #26, !dbg !1062
  call void @llvm.dbg.value(metadata i64* undef, metadata !1040, metadata !DIExpression()) #26, !dbg !1062
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %62, metadata !1041, metadata !DIExpression()) #26, !dbg !1062
  br i1 %147, label %174, label %172, !dbg !1064

172:                                              ; preds = %168
  call void @llvm.dbg.value(metadata i64 0, metadata !1042, metadata !DIExpression()) #26, !dbg !1062
  %173 = icmp eq i64 %171, 0, !dbg !1065
  br i1 %173, label %219, label %182, !dbg !1066

174:                                              ; preds = %168
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1067, !tbaa !635
  %176 = tail call i64 @fwrite_unlocked(i8* %145, i64 1, i64 %171, %struct._IO_FILE* %175) #26, !dbg !1067
  %177 = icmp ult i64 %176, %171, !dbg !1068
  br i1 %177, label %178, label %219, !dbg !1069

178:                                              ; preds = %174
  %179 = tail call i32* @__errno_location() #30, !dbg !1070
  %180 = load i32, i32* %179, align 4, !dbg !1070, !tbaa !811
  %181 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #26, !dbg !1070
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %180, i8* %181) #26, !dbg !1070
  unreachable, !dbg !1070

182:                                              ; preds = %172, %215
  %183 = phi i64 [ %216, %215 ], [ %151, %172 ], !dbg !1005
  %184 = phi i64 [ %217, %215 ], [ 0, %172 ]
  call void @llvm.dbg.value(metadata i64 %184, metadata !1042, metadata !DIExpression()) #26, !dbg !1062
  %185 = sub i64 %18, %183, !dbg !1071
  call void @llvm.dbg.value(metadata i64 %185, metadata !1050, metadata !DIExpression()) #26, !dbg !1072
  call void @llvm.dbg.value(metadata i64 %185, metadata !1054, metadata !DIExpression()) #26, !dbg !1072
  %186 = sub i64 %171, %184, !dbg !1073
  %187 = icmp ult i64 %185, %186, !dbg !1073
  %188 = select i1 %187, i64 %185, i64 %186, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %188, metadata !1054, metadata !DIExpression()) #26, !dbg !1072
  %189 = icmp eq i64 %188, 0, !dbg !1074
  br i1 %189, label %190, label %203, !dbg !1075

190:                                              ; preds = %182
  call void @llvm.dbg.value(metadata i32 10, metadata !1076, metadata !DIExpression()) #26, !dbg !1082
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %62, metadata !1081, metadata !DIExpression()) #26, !dbg !1082
  %191 = load i8*, i8** %148, align 8, !dbg !1086, !tbaa !1087
  %192 = load i8*, i8** %149, align 8, !dbg !1086, !tbaa !1088
  %193 = icmp ult i8* %191, %192, !dbg !1086
  br i1 %193, label %194, label %196, !dbg !1086, !prof !1089

194:                                              ; preds = %190
  %195 = getelementptr inbounds i8, i8* %191, i64 1, !dbg !1086
  store i8* %195, i8** %148, align 8, !dbg !1086, !tbaa !1087
  store i8 10, i8* %191, align 1, !dbg !1086, !tbaa !906
  br label %215, !dbg !1090

196:                                              ; preds = %190
  %197 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %62, i32 10) #26, !dbg !1086
  %198 = icmp eq i32 %197, -1, !dbg !1091
  br i1 %198, label %199, label %215, !dbg !1090

199:                                              ; preds = %196
  %200 = tail call i32* @__errno_location() #30, !dbg !1092
  %201 = load i32, i32* %200, align 4, !dbg !1092, !tbaa !811
  %202 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #26, !dbg !1092
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %201, i8* %202) #26, !dbg !1092
  unreachable, !dbg !1092

203:                                              ; preds = %182
  %204 = getelementptr inbounds i8, i8* %145, i64 %184, !dbg !1093
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1093, !tbaa !635
  %206 = tail call i64 @fwrite_unlocked(i8* %204, i64 1, i64 %188, %struct._IO_FILE* %205) #26, !dbg !1093
  %207 = icmp ult i64 %206, %188, !dbg !1094
  br i1 %207, label %208, label %212, !dbg !1095

208:                                              ; preds = %203
  %209 = tail call i32* @__errno_location() #30, !dbg !1096
  %210 = load i32, i32* %209, align 4, !dbg !1096, !tbaa !811
  %211 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #26, !dbg !1096
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %210, i8* %211) #26, !dbg !1096
  unreachable, !dbg !1096

212:                                              ; preds = %203
  %213 = add i64 %188, %183, !dbg !1097
  %214 = add i64 %188, %184, !dbg !1098
  call void @llvm.dbg.value(metadata i64 %214, metadata !1042, metadata !DIExpression()) #26, !dbg !1062
  br label %215

215:                                              ; preds = %212, %196, %194
  %216 = phi i64 [ %213, %212 ], [ 0, %196 ], [ 0, %194 ], !dbg !1099
  %217 = phi i64 [ %214, %212 ], [ %184, %196 ], [ %184, %194 ], !dbg !1100
  call void @llvm.dbg.value(metadata i64 %217, metadata !1042, metadata !DIExpression()) #26, !dbg !1062
  %218 = icmp ult i64 %217, %171, !dbg !1065
  br i1 %218, label %182, label %219, !dbg !1066, !llvm.loop !1101

219:                                              ; preds = %215, %174, %172, %166
  %220 = phi i64 [ %151, %166 ], [ %151, %174 ], [ %151, %172 ], [ %216, %215 ], !dbg !1010
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !953, metadata !DIExpression()) #26, !dbg !1103
  %221 = load i32, i32* %146, align 8, !dbg !1105, !tbaa !945
  %222 = and i32 %221, 16, !dbg !1106
  %223 = icmp eq i32 %222, 0, !dbg !1106
  br i1 %223, label %224, label %229, !dbg !1107

224:                                              ; preds = %219
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !935, metadata !DIExpression()) #26, !dbg !1108
  %225 = and i32 %221, 32, !dbg !1110
  %226 = icmp eq i32 %225, 0, !dbg !1110
  %227 = icmp eq i64 %157, 30720
  %228 = and i1 %227, %226, !dbg !1111
  br i1 %228, label %150, label %229, !dbg !1111, !llvm.loop !1112

229:                                              ; preds = %224, %219
  %230 = icmp ne i64 %18, 0, !dbg !1114
  call void @llvm.dbg.value(metadata i64 %220, metadata !999, metadata !DIExpression()) #26, !dbg !1005
  %231 = icmp ne i64 %220, 0
  %232 = and i1 %230, %231, !dbg !1116
  br i1 %232, label %233, label %246, !dbg !1116

233:                                              ; preds = %229
  call void @llvm.dbg.value(metadata i32 10, metadata !1076, metadata !DIExpression()) #26, !dbg !1117
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %62, metadata !1081, metadata !DIExpression()) #26, !dbg !1117
  %234 = load i8*, i8** %148, align 8, !dbg !1119, !tbaa !1087
  %235 = load i8*, i8** %149, align 8, !dbg !1119, !tbaa !1088
  %236 = icmp ult i8* %234, %235, !dbg !1119
  br i1 %236, label %237, label %239, !dbg !1119, !prof !1089

237:                                              ; preds = %233
  %238 = getelementptr inbounds i8, i8* %234, i64 1, !dbg !1119
  store i8* %238, i8** %148, align 8, !dbg !1119, !tbaa !1087
  store i8 10, i8* %234, align 1, !dbg !1119, !tbaa !906
  br label %246, !dbg !1120

239:                                              ; preds = %233
  %240 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %62, i32 10) #26, !dbg !1119
  %241 = icmp eq i32 %240, -1, !dbg !1121
  br i1 %241, label %242, label %246, !dbg !1120

242:                                              ; preds = %239
  %243 = tail call i32* @__errno_location() #30, !dbg !1122
  %244 = load i32, i32* %243, align 4, !dbg !1122, !tbaa !811
  %245 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #26, !dbg !1122
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %244, i8* %245) #26, !dbg !1122
  unreachable, !dbg !1122

246:                                              ; preds = %239, %237, %229
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !935, metadata !DIExpression()) #26, !dbg !1123
  %247 = load i32, i32* %146, align 8, !dbg !1126, !tbaa !945
  %248 = and i32 %247, 32, !dbg !1127
  %249 = icmp eq i32 %248, 0, !dbg !1127
  br i1 %249, label %254, label %250, !dbg !1128

250:                                              ; preds = %246
  %251 = tail call i32* @__errno_location() #30, !dbg !1129
  %252 = load i32, i32* %251, align 4, !dbg !1129, !tbaa !811
  %253 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i32 5) #26, !dbg !1129
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %252, i8* %253) #26, !dbg !1129
  unreachable, !dbg !1129

254:                                              ; preds = %246, %142
  %255 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %61) #26, !dbg !1130
  %256 = icmp eq i32 %255, -1, !dbg !1132
  br i1 %256, label %257, label %266, !dbg !1133

257:                                              ; preds = %254
  %258 = call i32 @strcmp(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #27, !dbg !1134
  %259 = icmp eq i32 %258, 0, !dbg !1134
  %260 = tail call i32* @__errno_location() #30, !dbg !1137
  %261 = load i32, i32* %260, align 4, !dbg !1137, !tbaa !811
  br i1 %259, label %262, label %264, !dbg !1138

262:                                              ; preds = %257
  %263 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 5) #26, !dbg !1139
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %261, i8* %263) #26, !dbg !1139
  unreachable, !dbg !1139

264:                                              ; preds = %257
  %265 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %48) #26, !dbg !1140
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %261, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %265) #26, !dbg !1140
  unreachable, !dbg !1140

266:                                              ; preds = %254
  ret i32 0, !dbg !1141
}

; Function Attrs: nounwind
declare !dbg !1142 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1145 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1148 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1153 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !1159 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare !dbg !1163 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local void @base64_encode(i8* noalias nocapture readonly %0, i64 %1, i8* noalias nocapture %2, i64 %3) local_unnamed_addr #10 !dbg !1166 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1172, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i64 %1, metadata !1173, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8* %2, metadata !1174, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i64 %3, metadata !1175, metadata !DIExpression()), !dbg !1176
  %5 = and i64 %3, 3, !dbg !1177
  %6 = icmp eq i64 %5, 0, !dbg !1179
  br i1 %6, label %7, label %53, !dbg !1180

7:                                                ; preds = %4
  %8 = lshr i64 %3, 2, !dbg !1181
  %9 = mul nuw i64 %8, 3, !dbg !1182
  %10 = icmp eq i64 %9, %1, !dbg !1183
  br i1 %10, label %11, label %53, !dbg !1184

11:                                               ; preds = %7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1185), !dbg !1188
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1190), !dbg !1188
  call void @llvm.dbg.value(metadata i8* %0, metadata !1192, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i64 %1, metadata !1197, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i8* %2, metadata !1198, metadata !DIExpression()), !dbg !1199
  %12 = icmp eq i64 %1, 0, !dbg !1201
  br i1 %12, label %136, label %13, !dbg !1201

13:                                               ; preds = %11, %13
  %14 = phi i8* [ %49, %13 ], [ %2, %11 ]
  %15 = phi i64 [ %50, %13 ], [ %1, %11 ]
  %16 = phi i8* [ %51, %13 ], [ %0, %11 ]
  call void @llvm.dbg.value(metadata i8* %14, metadata !1198, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i64 %15, metadata !1197, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i8* %16, metadata !1192, metadata !DIExpression()), !dbg !1199
  %17 = load i8, i8* %16, align 1, !dbg !1202, !tbaa !906, !alias.scope !1185, !noalias !1190
  %18 = lshr i8 %17, 2, !dbg !1204
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %19, !dbg !1205
  %21 = load i8, i8* %20, align 1, !dbg !1205, !tbaa !906, !noalias !1206
  %22 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !1207
  call void @llvm.dbg.value(metadata i8* %22, metadata !1198, metadata !DIExpression()), !dbg !1199
  store i8 %21, i8* %14, align 1, !dbg !1208, !tbaa !906, !alias.scope !1190, !noalias !1185
  %23 = zext i8 %17 to i64, !dbg !1209
  %24 = shl nuw nsw i64 %23, 4, !dbg !1210
  %25 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !1211
  %26 = load i8, i8* %25, align 1, !dbg !1211, !tbaa !906, !alias.scope !1185, !noalias !1190
  %27 = lshr i8 %26, 4, !dbg !1212
  %28 = zext i8 %27 to i64, !dbg !1212
  %29 = and i64 %24, 48, !dbg !1213
  %30 = or i64 %29, %28, !dbg !1213
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %30, !dbg !1214
  %32 = load i8, i8* %31, align 1, !dbg !1214, !tbaa !906, !noalias !1206
  %33 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !1215
  call void @llvm.dbg.value(metadata i8* %33, metadata !1198, metadata !DIExpression()), !dbg !1199
  store i8 %32, i8* %22, align 1, !dbg !1216, !tbaa !906, !alias.scope !1190, !noalias !1185
  %34 = zext i8 %26 to i64, !dbg !1217
  %35 = shl nuw nsw i64 %34, 2, !dbg !1218
  %36 = getelementptr inbounds i8, i8* %16, i64 2, !dbg !1219
  %37 = load i8, i8* %36, align 1, !dbg !1219, !tbaa !906, !alias.scope !1185, !noalias !1190
  %38 = lshr i8 %37, 6, !dbg !1220
  %39 = zext i8 %38 to i64, !dbg !1220
  %40 = and i64 %35, 60, !dbg !1221
  %41 = or i64 %40, %39, !dbg !1221
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %41, !dbg !1222
  %43 = load i8, i8* %42, align 1, !dbg !1222, !tbaa !906, !noalias !1206
  %44 = getelementptr inbounds i8, i8* %14, i64 3, !dbg !1223
  call void @llvm.dbg.value(metadata i8* %44, metadata !1198, metadata !DIExpression()), !dbg !1199
  store i8 %43, i8* %33, align 1, !dbg !1224, !tbaa !906, !alias.scope !1190, !noalias !1185
  %45 = and i8 %37, 63, !dbg !1225
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %46, !dbg !1226
  %48 = load i8, i8* %47, align 1, !dbg !1226, !tbaa !906, !noalias !1206
  %49 = getelementptr inbounds i8, i8* %14, i64 4, !dbg !1227
  call void @llvm.dbg.value(metadata i8* %49, metadata !1198, metadata !DIExpression()), !dbg !1199
  store i8 %48, i8* %44, align 1, !dbg !1228, !tbaa !906, !alias.scope !1190, !noalias !1185
  %50 = add i64 %15, -3, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %50, metadata !1197, metadata !DIExpression()), !dbg !1199
  %51 = getelementptr inbounds i8, i8* %16, i64 3, !dbg !1230
  call void @llvm.dbg.value(metadata i8* %51, metadata !1192, metadata !DIExpression()), !dbg !1199
  %52 = icmp eq i64 %50, 0, !dbg !1201
  br i1 %52, label %136, label %13, !dbg !1201, !llvm.loop !1231

53:                                               ; preds = %7, %4
  call void @llvm.dbg.value(metadata i64 %3, metadata !1175, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8* %2, metadata !1174, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i64 %1, metadata !1173, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8* %0, metadata !1172, metadata !DIExpression()), !dbg !1176
  %54 = icmp ne i64 %1, 0, !dbg !1233
  %55 = icmp ne i64 %3, 0, !dbg !1234
  %56 = and i1 %54, %55, !dbg !1234
  br i1 %56, label %57, label %132, !dbg !1235

57:                                               ; preds = %53, %126
  %58 = phi i64 [ %124, %126 ], [ %3, %53 ]
  %59 = phi i8* [ %127, %126 ], [ %2, %53 ]
  %60 = phi i64 [ %129, %126 ], [ %1, %53 ]
  %61 = phi i8* [ %131, %126 ], [ %0, %53 ]
  call void @llvm.dbg.value(metadata i64 %58, metadata !1175, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8* %59, metadata !1174, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i64 %60, metadata !1173, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8* %61, metadata !1172, metadata !DIExpression()), !dbg !1176
  %62 = load i8, i8* %61, align 1, !dbg !1236, !tbaa !906
  %63 = lshr i8 %62, 2, !dbg !1238
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %64, !dbg !1239
  %66 = load i8, i8* %65, align 1, !dbg !1239, !tbaa !906
  %67 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !1240
  call void @llvm.dbg.value(metadata i8* %67, metadata !1174, metadata !DIExpression()), !dbg !1176
  store i8 %66, i8* %59, align 1, !dbg !1241, !tbaa !906
  call void @llvm.dbg.value(metadata i64 %58, metadata !1175, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1176
  %68 = icmp eq i64 %58, 1, !dbg !1242
  br i1 %68, label %136, label %69, !dbg !1244

69:                                               ; preds = %57
  %70 = load i8, i8* %61, align 1, !dbg !1245, !tbaa !906
  %71 = zext i8 %70 to i64, !dbg !1246
  %72 = shl nuw nsw i64 %71, 4, !dbg !1247
  call void @llvm.dbg.value(metadata i64 %60, metadata !1173, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1176
  %73 = icmp eq i64 %60, 1, !dbg !1248
  br i1 %73, label %79, label %74, !dbg !1248

74:                                               ; preds = %69
  %75 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1249
  %76 = load i8, i8* %75, align 1, !dbg !1249, !tbaa !906
  %77 = lshr i8 %76, 4, !dbg !1250
  %78 = zext i8 %77 to i64, !dbg !1250
  br label %79, !dbg !1248

79:                                               ; preds = %69, %74
  %80 = phi i64 [ %78, %74 ], [ 0, %69 ], !dbg !1248
  %81 = add nuw nsw i64 %80, %72, !dbg !1251
  %82 = and i64 %81, 63, !dbg !1252
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %82, !dbg !1253
  %84 = load i8, i8* %83, align 1, !dbg !1253, !tbaa !906
  %85 = getelementptr inbounds i8, i8* %59, i64 2, !dbg !1254
  call void @llvm.dbg.value(metadata i8* %85, metadata !1174, metadata !DIExpression()), !dbg !1176
  store i8 %84, i8* %67, align 1, !dbg !1255, !tbaa !906
  call void @llvm.dbg.value(metadata i64 %58, metadata !1175, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1176
  %86 = icmp eq i64 %58, 2, !dbg !1256
  br i1 %86, label %136, label %87, !dbg !1258

87:                                               ; preds = %79
  br i1 %73, label %110, label %88, !dbg !1259

88:                                               ; preds = %87
  %89 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1260
  %90 = load i8, i8* %89, align 1, !dbg !1260, !tbaa !906
  %91 = zext i8 %90 to i64, !dbg !1261
  %92 = shl nuw nsw i64 %91, 2, !dbg !1262
  %93 = add i64 %60, -2, !dbg !1263
  call void @llvm.dbg.value(metadata i64 %93, metadata !1173, metadata !DIExpression()), !dbg !1176
  %94 = icmp eq i64 %93, 0, !dbg !1263
  br i1 %94, label %95, label %100, !dbg !1263

95:                                               ; preds = %88
  %96 = and i64 %92, 60, !dbg !1264
  %97 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %96, !dbg !1265
  %98 = load i8, i8* %97, align 4, !dbg !1265, !tbaa !906
  call void @llvm.dbg.value(metadata i64 %93, metadata !1173, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8* %59, metadata !1174, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1176
  store i8 %98, i8* %85, align 1, !dbg !1266, !tbaa !906
  call void @llvm.dbg.value(metadata i64 %58, metadata !1175, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1176
  %99 = icmp eq i64 %58, 3, !dbg !1267
  br i1 %99, label %136, label %119, !dbg !1269

100:                                              ; preds = %88
  %101 = getelementptr inbounds i8, i8* %61, i64 2, !dbg !1270
  %102 = load i8, i8* %101, align 1, !dbg !1270, !tbaa !906
  %103 = lshr i8 %102, 6, !dbg !1271
  %104 = zext i8 %103 to i64, !dbg !1271
  %105 = and i64 %92, 60, !dbg !1264
  %106 = or i64 %105, %104, !dbg !1264
  %107 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %106, !dbg !1265
  %108 = load i8, i8* %107, align 1, !dbg !1265, !tbaa !906
  call void @llvm.dbg.value(metadata i64 %93, metadata !1173, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8* %59, metadata !1174, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1176
  store i8 %108, i8* %85, align 1, !dbg !1266, !tbaa !906
  call void @llvm.dbg.value(metadata i64 %58, metadata !1175, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1176
  %109 = icmp eq i64 %58, 3, !dbg !1267
  br i1 %109, label %136, label %112, !dbg !1269

110:                                              ; preds = %87
  call void @llvm.dbg.value(metadata i64 %93, metadata !1173, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8* %59, metadata !1174, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1176
  store i8 61, i8* %85, align 1, !dbg !1266, !tbaa !906
  call void @llvm.dbg.value(metadata i64 %58, metadata !1175, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1176
  %111 = icmp eq i64 %58, 3, !dbg !1267
  br i1 %111, label %136, label %119, !dbg !1269

112:                                              ; preds = %100
  %113 = getelementptr inbounds i8, i8* %61, i64 2, !dbg !1272
  %114 = load i8, i8* %113, align 1, !dbg !1272, !tbaa !906
  %115 = and i8 %114, 63, !dbg !1273
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %116, !dbg !1274
  %118 = load i8, i8* %117, align 1, !dbg !1274, !tbaa !906
  br label %119, !dbg !1275

119:                                              ; preds = %95, %110, %112
  %120 = phi i1 [ false, %112 ], [ true, %110 ], [ true, %95 ]
  %121 = phi i64 [ %93, %112 ], [ 0, %110 ], [ 0, %95 ]
  %122 = phi i8 [ %118, %112 ], [ 61, %110 ], [ 61, %95 ], !dbg !1275
  %123 = getelementptr inbounds i8, i8* %59, i64 3, !dbg !1276
  call void @llvm.dbg.value(metadata i8* %59, metadata !1174, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1176
  store i8 %122, i8* %123, align 1, !dbg !1277, !tbaa !906
  %124 = add i64 %58, -4, !dbg !1278
  call void @llvm.dbg.value(metadata i64 %124, metadata !1175, metadata !DIExpression()), !dbg !1176
  %125 = icmp eq i64 %124, 0, !dbg !1278
  br i1 %125, label %136, label %126, !dbg !1280

126:                                              ; preds = %119
  %127 = getelementptr inbounds i8, i8* %59, i64 4, !dbg !1281
  call void @llvm.dbg.value(metadata i8* %127, metadata !1174, metadata !DIExpression()), !dbg !1176
  %128 = add i64 %121, -1
  %129 = select i1 %120, i64 0, i64 %128, !dbg !1282
  call void @llvm.dbg.value(metadata i64 %129, metadata !1173, metadata !DIExpression()), !dbg !1176
  %130 = icmp eq i64 %129, 0, !dbg !1283
  %131 = getelementptr inbounds i8, i8* %61, i64 3, !dbg !1285
  call void @llvm.dbg.value(metadata i64 %124, metadata !1175, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8* undef, metadata !1172, metadata !DIExpression()), !dbg !1176
  br i1 %130, label %134, label %57, !dbg !1235, !llvm.loop !1286

132:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i64 %3, metadata !1175, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8* %2, metadata !1174, metadata !DIExpression()), !dbg !1176
  %133 = icmp eq i64 %3, 0, !dbg !1288
  br i1 %133, label %136, label %134, !dbg !1290

134:                                              ; preds = %126, %132
  %135 = phi i8* [ %2, %132 ], [ %127, %126 ]
  store i8 0, i8* %135, align 1, !dbg !1291, !tbaa !906
  br label %136, !dbg !1292

136:                                              ; preds = %110, %57, %79, %95, %119, %100, %13, %11, %134, %132
  ret void, !dbg !1293
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i64 @base64_encode_alloc(i8* nocapture readonly %0, i64 %1, i8** nocapture %2) local_unnamed_addr #10 !dbg !1294 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1298, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i64 %1, metadata !1299, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8** %2, metadata !1300, metadata !DIExpression()), !dbg !1302
  %4 = add i64 %1, 2, !dbg !1303
  %5 = udiv i64 %4, 3, !dbg !1303
  %6 = shl i64 %5, 2, !dbg !1303
  %7 = or i64 %6, 1, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %7, metadata !1301, metadata !DIExpression()), !dbg !1302
  %8 = icmp ult i64 %7, %1, !dbg !1305
  br i1 %8, label %9, label %10, !dbg !1307

9:                                                ; preds = %3
  store i8* null, i8** %2, align 8, !dbg !1308, !tbaa !635
  br label %14, !dbg !1310

10:                                               ; preds = %3
  %11 = tail call noalias i8* @malloc(i64 %7) #26, !dbg !1311
  store i8* %11, i8** %2, align 8, !dbg !1312, !tbaa !635
  %12 = icmp eq i8* %11, null, !dbg !1313
  br i1 %12, label %14, label %13, !dbg !1315

13:                                               ; preds = %10
  tail call void @base64_encode(i8* %0, i64 %1, i8* nonnull %11, i64 %7), !dbg !1316
  br label %14, !dbg !1317

14:                                               ; preds = %10, %13, %9
  %15 = phi i64 [ 0, %9 ], [ %6, %13 ], [ %7, %10 ], !dbg !1302
  ret i64 %15, !dbg !1318
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #12

; Function Attrs: norecurse nounwind readnone sspstrong uwtable willreturn
define dso_local zeroext i1 @isbase64(i8 signext %0) local_unnamed_addr #13 !dbg !1319 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1323, metadata !DIExpression()), !dbg !1324
  %2 = zext i8 %0 to i64, !dbg !1325
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %2, !dbg !1325
  %4 = load i8, i8* %3, align 1, !dbg !1325, !tbaa !906
  %5 = icmp sgt i8 %4, -1, !dbg !1326
  ret i1 %5, !dbg !1327
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @base64_decode_ctx_init(%struct.base64_decode_context* nocapture %0) local_unnamed_addr #14 !dbg !1328 {
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, metadata !1337, metadata !DIExpression()), !dbg !1338
  %2 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 0, !dbg !1339
  store i32 0, i32* %2, align 4, !dbg !1340, !tbaa !1341
  ret void, !dbg !1343
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local zeroext i1 @base64_decode_ctx(%struct.base64_decode_context* %0, i8* noalias %1, i64 %2, i8* noalias %3, i64* nocapture %4) local_unnamed_addr #10 !dbg !1344 {
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, metadata !1348, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i8* %1, metadata !1349, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i64 %2, metadata !1350, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i8* %3, metadata !1351, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i64* %4, metadata !1352, metadata !DIExpression()), !dbg !1362
  %6 = load i64, i64* %4, align 8, !dbg !1363, !tbaa !897
  call void @llvm.dbg.value(metadata i64 %6, metadata !1353, metadata !DIExpression()), !dbg !1362
  %7 = icmp eq %struct.base64_decode_context* %0, null, !dbg !1364
  call void @llvm.dbg.value(metadata i1 %7, metadata !1354, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1362
  call void @llvm.dbg.value(metadata i8 0, metadata !1355, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i32 0, metadata !1356, metadata !DIExpression()), !dbg !1362
  br i1 %7, label %13, label %8, !dbg !1365

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 0, !dbg !1366
  %10 = load i32, i32* %9, align 4, !dbg !1366, !tbaa !1341
  call void @llvm.dbg.value(metadata i32 %10, metadata !1356, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i64 %2, metadata !1350, metadata !DIExpression()), !dbg !1362
  %11 = icmp eq i64 %2, 0, !dbg !1369
  call void @llvm.dbg.value(metadata i1 %11, metadata !1355, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1362
  %12 = icmp ne i32 %10, 0, !dbg !1370
  br label %13, !dbg !1370

13:                                               ; preds = %8, %5
  %14 = phi i1 [ %12, %8 ], [ false, %5 ]
  %15 = phi i1 [ %11, %8 ], [ false, %5 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1355, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i32 undef, metadata !1356, metadata !DIExpression()), !dbg !1362
  %16 = or i1 %14, %15
  %17 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 0
  %18 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 1, i64 0
  br label %19, !dbg !1371

19:                                               ; preds = %266, %13
  %20 = phi i8* [ %1, %13 ], [ %267, %266 ]
  %21 = phi i64 [ %2, %13 ], [ %268, %266 ]
  %22 = phi i8* [ %3, %13 ], [ %269, %266 ]
  %23 = phi i64 [ %6, %13 ], [ %270, %266 ], !dbg !1362
  call void @llvm.dbg.value(metadata i64 %23, metadata !1353, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i64 %23, metadata !1357, metadata !DIExpression()), !dbg !1372
  %24 = icmp ult i64 %21, 2
  %25 = or i1 %16, %24, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %23, metadata !1353, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i64 %23, metadata !1357, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i8* %20, metadata !1349, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i64 %21, metadata !1350, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i8* %20, metadata !1375, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %21, metadata !1381, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8** undef, metadata !1382, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64* undef, metadata !1383, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %22, metadata !1384, metadata !DIExpression()), !dbg !1385
  br i1 %25, label %110, label %26, !dbg !1373

26:                                               ; preds = %19, %104
  %27 = phi i64 [ %105, %104 ], [ %23, %19 ]
  %28 = phi i8* [ %106, %104 ], [ %22, %19 ]
  %29 = phi i64 [ %108, %104 ], [ %21, %19 ]
  %30 = phi i8* [ %107, %104 ], [ %20, %19 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !1353, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i8* %28, metadata !1384, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %29, metadata !1350, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i8* %30, metadata !1349, metadata !DIExpression()), !dbg !1362
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390), !dbg !1393
  %31 = load i8, i8* %30, align 1, !dbg !1394, !tbaa !906, !alias.scope !1390
  call void @llvm.dbg.value(metadata i8 %31, metadata !1323, metadata !DIExpression()), !dbg !1396
  %32 = zext i8 %31 to i64, !dbg !1398
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %32, !dbg !1398
  %34 = load i8, i8* %33, align 1, !dbg !1398, !tbaa !906, !noalias !1390
  %35 = icmp sgt i8 %34, -1, !dbg !1399
  br i1 %35, label %36, label %119, !dbg !1400

36:                                               ; preds = %26
  %37 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !1401
  %38 = load i8, i8* %37, align 1, !dbg !1401, !tbaa !906, !alias.scope !1390
  call void @llvm.dbg.value(metadata i8 %38, metadata !1323, metadata !DIExpression()), !dbg !1402
  %39 = zext i8 %38 to i64, !dbg !1404
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %39, !dbg !1404
  %41 = load i8, i8* %40, align 1, !dbg !1404, !tbaa !906, !noalias !1390
  %42 = icmp sgt i8 %41, -1, !dbg !1405
  br i1 %42, label %43, label %119, !dbg !1406

43:                                               ; preds = %36
  %44 = icmp eq i64 %27, 0, !dbg !1407
  br i1 %44, label %51, label %45, !dbg !1409

45:                                               ; preds = %43
  %46 = shl i8 %34, 2, !dbg !1410
  %47 = lshr i8 %41, 4, !dbg !1412
  %48 = or i8 %47, %46, !dbg !1413
  %49 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !1414
  call void @llvm.dbg.value(metadata i8* %49, metadata !1384, metadata !DIExpression()), !dbg !1385
  store i8 %48, i8* %28, align 1, !dbg !1415, !tbaa !906, !noalias !1390
  %50 = add i64 %27, -1, !dbg !1416
  br label %51, !dbg !1417

51:                                               ; preds = %45, %43
  %52 = phi i64 [ 0, %43 ], [ %50, %45 ], !dbg !1362
  %53 = phi i8* [ %28, %43 ], [ %49, %45 ], !dbg !1385
  call void @llvm.dbg.value(metadata i8* %53, metadata !1384, metadata !DIExpression()), !dbg !1385
  %54 = icmp eq i64 %29, 2, !dbg !1418
  br i1 %54, label %119, label %55, !dbg !1420

55:                                               ; preds = %51
  %56 = getelementptr inbounds i8, i8* %30, i64 2, !dbg !1421
  %57 = load i8, i8* %56, align 1, !dbg !1421, !tbaa !906, !alias.scope !1390
  %58 = icmp eq i8 %57, 61, !dbg !1423
  br i1 %58, label %59, label %65, !dbg !1424

59:                                               ; preds = %55
  %60 = icmp eq i64 %29, 4, !dbg !1425
  br i1 %60, label %61, label %119, !dbg !1428

61:                                               ; preds = %59
  %62 = getelementptr inbounds i8, i8* %30, i64 3, !dbg !1429
  %63 = load i8, i8* %62, align 1, !dbg !1429, !tbaa !906, !alias.scope !1390
  %64 = icmp eq i8 %63, 61, !dbg !1431
  br i1 %64, label %100, label %119, !dbg !1432

65:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i8 %57, metadata !1323, metadata !DIExpression()), !dbg !1433
  %66 = zext i8 %57 to i64, !dbg !1437
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %66, !dbg !1437
  %68 = load i8, i8* %67, align 1, !dbg !1437, !tbaa !906, !noalias !1390
  %69 = icmp sgt i8 %68, -1, !dbg !1438
  br i1 %69, label %70, label %119, !dbg !1439

70:                                               ; preds = %65
  %71 = icmp eq i64 %52, 0, !dbg !1440
  br i1 %71, label %78, label %72, !dbg !1442

72:                                               ; preds = %70
  %73 = shl i8 %41, 4, !dbg !1443
  %74 = lshr i8 %68, 2, !dbg !1445
  %75 = or i8 %74, %73, !dbg !1446
  %76 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !1447
  call void @llvm.dbg.value(metadata i8* %76, metadata !1384, metadata !DIExpression()), !dbg !1385
  store i8 %75, i8* %53, align 1, !dbg !1448, !tbaa !906, !noalias !1390
  %77 = add i64 %52, -1, !dbg !1449
  br label %78, !dbg !1450

78:                                               ; preds = %72, %70
  %79 = phi i64 [ 0, %70 ], [ %77, %72 ]
  %80 = phi i8* [ %53, %70 ], [ %76, %72 ], !dbg !1385
  call void @llvm.dbg.value(metadata i8* %80, metadata !1384, metadata !DIExpression()), !dbg !1385
  %81 = icmp eq i64 %29, 3, !dbg !1451
  br i1 %81, label %119, label %82, !dbg !1453

82:                                               ; preds = %78
  %83 = getelementptr inbounds i8, i8* %30, i64 3, !dbg !1454
  %84 = load i8, i8* %83, align 1, !dbg !1454, !tbaa !906, !alias.scope !1390
  %85 = icmp eq i8 %84, 61, !dbg !1456
  br i1 %85, label %86, label %88, !dbg !1457

86:                                               ; preds = %82
  %87 = icmp eq i64 %29, 4, !dbg !1458
  br i1 %87, label %100, label %119, !dbg !1461

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i8 %84, metadata !1323, metadata !DIExpression()), !dbg !1462
  %89 = zext i8 %84 to i64, !dbg !1466
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %89, !dbg !1466
  %91 = load i8, i8* %90, align 1, !dbg !1466, !tbaa !906, !noalias !1390
  %92 = icmp sgt i8 %91, -1, !dbg !1467
  br i1 %92, label %93, label %119, !dbg !1468

93:                                               ; preds = %88
  %94 = icmp eq i64 %79, 0, !dbg !1469
  br i1 %94, label %104, label %95, !dbg !1471

95:                                               ; preds = %93
  %96 = shl i8 %68, 6, !dbg !1472
  %97 = or i8 %91, %96, !dbg !1474
  %98 = getelementptr inbounds i8, i8* %80, i64 1, !dbg !1475
  call void @llvm.dbg.value(metadata i8* %98, metadata !1384, metadata !DIExpression()), !dbg !1385
  store i8 %97, i8* %80, align 1, !dbg !1476, !tbaa !906, !noalias !1390
  %99 = add i64 %79, -1, !dbg !1477
  br label %104, !dbg !1478

100:                                              ; preds = %86, %61
  %101 = phi i64 [ %79, %86 ], [ %52, %61 ]
  %102 = phi i8* [ %80, %86 ], [ %53, %61 ]
  call void @llvm.dbg.value(metadata i8* undef, metadata !1384, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %30, metadata !1349, metadata !DIExpression()), !dbg !1362
  %103 = getelementptr inbounds i8, i8* %30, i64 4, !dbg !1479
  call void @llvm.dbg.value(metadata i8* undef, metadata !1349, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i64 %29, metadata !1350, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i64 undef, metadata !1353, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i64 undef, metadata !1357, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i64 undef, metadata !1350, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i8* undef, metadata !1375, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 undef, metadata !1381, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8** undef, metadata !1382, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64* undef, metadata !1383, metadata !DIExpression()), !dbg !1385
  br label %110, !dbg !1480

104:                                              ; preds = %95, %93
  %105 = phi i64 [ 0, %93 ], [ %99, %95 ], !dbg !1362
  %106 = phi i8* [ %80, %93 ], [ %98, %95 ], !dbg !1385
  call void @llvm.dbg.value(metadata i8* %106, metadata !1384, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %30, metadata !1349, metadata !DIExpression()), !dbg !1362
  %107 = getelementptr inbounds i8, i8* %30, i64 4, !dbg !1479
  call void @llvm.dbg.value(metadata i8* %107, metadata !1349, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i64 %29, metadata !1350, metadata !DIExpression()), !dbg !1362
  %108 = add i64 %29, -4, !dbg !1481
  call void @llvm.dbg.value(metadata i64 %105, metadata !1353, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i64 %105, metadata !1357, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i64 %108, metadata !1350, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i8* %107, metadata !1375, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64 %108, metadata !1381, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8** undef, metadata !1382, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i64* undef, metadata !1383, metadata !DIExpression()), !dbg !1385
  %109 = icmp ult i64 %108, 2, !dbg !1482
  br i1 %109, label %110, label %26, !dbg !1480, !llvm.loop !1484

110:                                              ; preds = %104, %100, %19
  %111 = phi i8* [ %20, %19 ], [ %103, %100 ], [ %107, %104 ]
  %112 = phi i64 [ %21, %19 ], [ 0, %100 ], [ %108, %104 ]
  %113 = phi i8* [ %22, %19 ], [ %102, %100 ], [ %106, %104 ]
  %114 = phi i64 [ %23, %19 ], [ %101, %100 ], [ %105, %104 ], !dbg !1487
  call void @llvm.dbg.value(metadata i64 %114, metadata !1357, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i64 %112, metadata !1350, metadata !DIExpression()), !dbg !1362
  %115 = icmp eq i64 %112, 0, !dbg !1488
  %116 = xor i1 %115, true, !dbg !1490
  %117 = or i1 %15, %116, !dbg !1490
  br i1 %117, label %118, label %271, !dbg !1490

118:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i64 %112, metadata !1350, metadata !DIExpression()), !dbg !1362
  br i1 %115, label %131, label %119, !dbg !1491

119:                                              ; preds = %88, %78, %65, %51, %26, %36, %86, %61, %59, %118
  %120 = phi i8* [ %111, %118 ], [ %30, %59 ], [ %30, %61 ], [ %30, %86 ], [ %30, %36 ], [ %30, %26 ], [ %30, %51 ], [ %30, %65 ], [ %30, %78 ], [ %30, %88 ]
  %121 = phi i64 [ %112, %118 ], [ %29, %59 ], [ 4, %61 ], [ %29, %86 ], [ %29, %88 ], [ 3, %78 ], [ %29, %65 ], [ 2, %51 ], [ %29, %26 ], [ %29, %36 ]
  %122 = phi i8* [ %113, %118 ], [ %53, %59 ], [ %53, %61 ], [ %80, %86 ], [ %80, %88 ], [ %80, %78 ], [ %53, %65 ], [ %53, %51 ], [ %28, %26 ], [ %28, %36 ]
  %123 = phi i64 [ %114, %118 ], [ %52, %59 ], [ %52, %61 ], [ %79, %86 ], [ %79, %88 ], [ %79, %78 ], [ %52, %65 ], [ %52, %51 ], [ %27, %26 ], [ %27, %36 ]
  %124 = phi i64 [ %114, %118 ], [ %27, %59 ], [ %27, %61 ], [ %27, %86 ], [ %27, %36 ], [ %27, %26 ], [ %27, %51 ], [ %27, %65 ], [ %27, %78 ], [ %27, %88 ]
  call void @llvm.dbg.value(metadata i8* %111, metadata !1349, metadata !DIExpression()), !dbg !1362
  %125 = load i8, i8* %120, align 1, !dbg !1493, !tbaa !906
  %126 = icmp ne i8 %125, 10, !dbg !1494
  %127 = or i1 %7, %126, !dbg !1495
  br i1 %127, label %131, label %128, !dbg !1495

128:                                              ; preds = %119
  %129 = getelementptr inbounds i8, i8* %120, i64 1, !dbg !1496
  call void @llvm.dbg.value(metadata i8* %129, metadata !1349, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i64 %112, metadata !1350, metadata !DIExpression()), !dbg !1362
  %130 = add i64 %121, -1, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %130, metadata !1350, metadata !DIExpression()), !dbg !1362
  br label %266, !dbg !1499

131:                                              ; preds = %119, %118
  %132 = phi i8* [ %120, %119 ], [ %111, %118 ]
  %133 = phi i64 [ %121, %119 ], [ 0, %118 ]
  %134 = phi i8* [ %122, %119 ], [ %113, %118 ]
  %135 = phi i64 [ %123, %119 ], [ %114, %118 ]
  %136 = phi i64 [ %124, %119 ], [ %114, %118 ]
  call void @llvm.dbg.value(metadata i64 %114, metadata !1353, metadata !DIExpression()), !dbg !1362
  %137 = sub i64 %135, %136, !dbg !1500
  call void @llvm.dbg.value(metadata i8* %113, metadata !1351, metadata !DIExpression()), !dbg !1362
  %138 = getelementptr inbounds i8, i8* %134, i64 %137, !dbg !1501
  call void @llvm.dbg.value(metadata i8* %138, metadata !1351, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i8* %111, metadata !1349, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i64 %112, metadata !1350, metadata !DIExpression()), !dbg !1362
  %139 = getelementptr inbounds i8, i8* %132, i64 %133, !dbg !1502
  call void @llvm.dbg.value(metadata i8* %139, metadata !1359, metadata !DIExpression()), !dbg !1503
  br i1 %7, label %176, label %140, !dbg !1504

140:                                              ; preds = %131
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, metadata !1505, metadata !DIExpression()) #26, !dbg !1521
  call void @llvm.dbg.value(metadata i8** undef, metadata !1511, metadata !DIExpression()) #26, !dbg !1521
  call void @llvm.dbg.value(metadata i8* %139, metadata !1512, metadata !DIExpression()) #26, !dbg !1521
  call void @llvm.dbg.value(metadata i64* undef, metadata !1513, metadata !DIExpression()) #26, !dbg !1521
  %141 = load i32, i32* %17, align 4, !dbg !1524, !tbaa !1341, !noalias !1526
  switch i32 %141, label %150 [
    i32 4, label %142
    i32 0, label %143
  ], !dbg !1529

142:                                              ; preds = %140
  store i32 0, i32* %17, align 4, !dbg !1530, !tbaa !1341, !noalias !1526
  br label %143, !dbg !1531

143:                                              ; preds = %142, %140
  call void @llvm.dbg.value(metadata i8* %111, metadata !1514, metadata !DIExpression()) #26, !dbg !1532
  %144 = icmp sgt i64 %133, 3, !dbg !1533
  br i1 %144, label %145, label %150, !dbg !1535

145:                                              ; preds = %143
  %146 = tail call i8* @memchr(i8* nonnull dereferenceable(4) %132, i32 10, i64 4) #27, !dbg !1536
  %147 = icmp eq i8* %146, null, !dbg !1537
  br i1 %147, label %148, label %153, !dbg !1538

148:                                              ; preds = %145
  %149 = getelementptr inbounds i8, i8* %132, i64 4, !dbg !1539
  call void @llvm.dbg.value(metadata i8* %179, metadata !1361, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i64 %178, metadata !1350, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i8* %179, metadata !1375, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i64 %178, metadata !1381, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8** undef, metadata !1382, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i64* undef, metadata !1383, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8* %138, metadata !1384, metadata !DIExpression()), !dbg !1541
  br label %187, !dbg !1544

150:                                              ; preds = %140, %143
  %151 = phi i32 [ 0, %143 ], [ %141, %140 ]
  call void @llvm.dbg.value(metadata i8* %111, metadata !1517, metadata !DIExpression()) #26, !dbg !1545
  %152 = icmp sgt i64 %133, 0, !dbg !1546
  br i1 %152, label %153, label %172, !dbg !1547

153:                                              ; preds = %145, %150
  %154 = phi i32 [ 0, %145 ], [ %151, %150 ]
  br label %155, !dbg !1548

155:                                              ; preds = %153, %163
  %156 = phi i32 [ %154, %153 ], [ %164, %163 ]
  %157 = phi i8* [ %132, %153 ], [ %160, %163 ]
  br label %158, !dbg !1548

158:                                              ; preds = %155, %170
  %159 = phi i8* [ %160, %170 ], [ %157, %155 ]
  call void @llvm.dbg.value(metadata i8* %159, metadata !1517, metadata !DIExpression()) #26, !dbg !1545
  %160 = getelementptr inbounds i8, i8* %159, i64 1, !dbg !1549
  call void @llvm.dbg.value(metadata i8* %160, metadata !1517, metadata !DIExpression()) #26, !dbg !1545
  %161 = load i8, i8* %159, align 1, !dbg !1550, !tbaa !906
  call void @llvm.dbg.value(metadata i8 %161, metadata !1519, metadata !DIExpression()) #26, !dbg !1551
  %162 = icmp eq i8 %161, 10, !dbg !1552
  br i1 %162, label %170, label %163, !dbg !1548

163:                                              ; preds = %158
  %164 = add i32 %156, 1, !dbg !1554
  store i32 %164, i32* %17, align 4, !dbg !1554, !tbaa !1341, !noalias !1526
  %165 = zext i32 %156 to i64, !dbg !1556
  %166 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 1, i64 %165, !dbg !1556
  store i8 %161, i8* %166, align 1, !dbg !1557, !tbaa !906, !noalias !1526
  %167 = icmp ne i32 %164, 4, !dbg !1558
  %168 = icmp ult i8* %160, %139
  %169 = and i1 %167, %168, !dbg !1560
  call void @llvm.dbg.value(metadata i8* %160, metadata !1517, metadata !DIExpression()) #26, !dbg !1545
  br i1 %169, label %155, label %172, !dbg !1560

170:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8* %160, metadata !1517, metadata !DIExpression()) #26, !dbg !1545
  %171 = icmp ult i8* %160, %139, !dbg !1546
  br i1 %171, label %158, label %172, !dbg !1547

172:                                              ; preds = %170, %163, %150
  %173 = phi i32 [ %151, %150 ], [ %156, %170 ], [ %164, %163 ], !dbg !1561
  %174 = phi i8* [ %132, %150 ], [ %160, %163 ], [ %160, %170 ], !dbg !1545
  call void @llvm.dbg.value(metadata i8* %174, metadata !1517, metadata !DIExpression()) #26, !dbg !1545
  %175 = zext i32 %173 to i64, !dbg !1562
  br label %176

176:                                              ; preds = %172, %131
  %177 = phi i8* [ %132, %131 ], [ %174, %172 ]
  %178 = phi i64 [ %133, %131 ], [ %175, %172 ]
  %179 = phi i8* [ %132, %131 ], [ %18, %172 ], !dbg !1563
  call void @llvm.dbg.value(metadata i8* %179, metadata !1361, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i64 %178, metadata !1350, metadata !DIExpression()), !dbg !1362
  %180 = icmp eq i64 %178, 0, !dbg !1564
  br i1 %180, label %271, label %181, !dbg !1566

181:                                              ; preds = %176
  %182 = icmp ugt i64 %178, 3, !dbg !1567
  %183 = or i1 %15, %182, !dbg !1568
  %184 = or i1 %7, %183, !dbg !1568
  br i1 %184, label %185, label %271, !dbg !1568

185:                                              ; preds = %181
  call void @llvm.dbg.value(metadata i64 %178, metadata !1350, metadata !DIExpression()), !dbg !1362
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1569), !dbg !1572
  call void @llvm.dbg.value(metadata i8* %179, metadata !1375, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i64 %178, metadata !1381, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8** undef, metadata !1382, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i64* undef, metadata !1383, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8* %138, metadata !1384, metadata !DIExpression()), !dbg !1541
  %186 = icmp ult i64 %178, 2, !dbg !1573
  br i1 %186, label %271, label %187, !dbg !1544

187:                                              ; preds = %148, %185
  %188 = phi i8* [ %132, %148 ], [ %179, %185 ]
  %189 = phi i64 [ 4, %148 ], [ %178, %185 ]
  %190 = phi i8* [ %149, %148 ], [ %177, %185 ]
  %191 = load i8, i8* %188, align 1, !dbg !1574, !tbaa !906, !alias.scope !1569
  call void @llvm.dbg.value(metadata i8 %191, metadata !1323, metadata !DIExpression()), !dbg !1575
  %192 = zext i8 %191 to i64, !dbg !1577
  %193 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %192, !dbg !1577
  %194 = load i8, i8* %193, align 1, !dbg !1577, !tbaa !906, !noalias !1569
  %195 = icmp sgt i8 %194, -1, !dbg !1578
  br i1 %195, label %196, label %271, !dbg !1579

196:                                              ; preds = %187
  %197 = getelementptr inbounds i8, i8* %188, i64 1, !dbg !1580
  %198 = load i8, i8* %197, align 1, !dbg !1580, !tbaa !906, !alias.scope !1569
  call void @llvm.dbg.value(metadata i8 %198, metadata !1323, metadata !DIExpression()), !dbg !1581
  %199 = zext i8 %198 to i64, !dbg !1583
  %200 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %199, !dbg !1583
  %201 = load i8, i8* %200, align 1, !dbg !1583, !tbaa !906, !noalias !1569
  %202 = icmp sgt i8 %201, -1, !dbg !1584
  br i1 %202, label %203, label %271, !dbg !1585

203:                                              ; preds = %196
  %204 = icmp eq i64 %136, 0, !dbg !1586
  br i1 %204, label %211, label %205, !dbg !1587

205:                                              ; preds = %203
  %206 = shl i8 %194, 2, !dbg !1588
  %207 = lshr i8 %201, 4, !dbg !1589
  %208 = or i8 %207, %206, !dbg !1590
  %209 = getelementptr inbounds i8, i8* %138, i64 1, !dbg !1591
  call void @llvm.dbg.value(metadata i8* %209, metadata !1384, metadata !DIExpression()), !dbg !1541
  store i8 %208, i8* %138, align 1, !dbg !1592, !tbaa !906, !noalias !1569
  %210 = add i64 %136, -1, !dbg !1593
  br label %211, !dbg !1594

211:                                              ; preds = %205, %203
  %212 = phi i64 [ 0, %203 ], [ %210, %205 ], !dbg !1372
  %213 = phi i8* [ %138, %203 ], [ %209, %205 ], !dbg !1541
  call void @llvm.dbg.value(metadata i8* %213, metadata !1384, metadata !DIExpression()), !dbg !1541
  %214 = icmp eq i64 %189, 2, !dbg !1595
  br i1 %214, label %271, label %215, !dbg !1596

215:                                              ; preds = %211
  %216 = getelementptr inbounds i8, i8* %188, i64 2, !dbg !1597
  %217 = load i8, i8* %216, align 1, !dbg !1597, !tbaa !906, !alias.scope !1569
  %218 = icmp eq i8 %217, 61, !dbg !1598
  br i1 %218, label %219, label %225, !dbg !1599

219:                                              ; preds = %215
  %220 = icmp eq i64 %189, 4, !dbg !1600
  br i1 %220, label %221, label %271, !dbg !1601

221:                                              ; preds = %219
  %222 = getelementptr inbounds i8, i8* %188, i64 3, !dbg !1602
  %223 = load i8, i8* %222, align 1, !dbg !1602, !tbaa !906, !alias.scope !1569
  %224 = icmp eq i8 %223, 61, !dbg !1603
  br i1 %224, label %260, label %271, !dbg !1604

225:                                              ; preds = %215
  call void @llvm.dbg.value(metadata i8 %217, metadata !1323, metadata !DIExpression()), !dbg !1605
  %226 = zext i8 %217 to i64, !dbg !1607
  %227 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %226, !dbg !1607
  %228 = load i8, i8* %227, align 1, !dbg !1607, !tbaa !906, !noalias !1569
  %229 = icmp sgt i8 %228, -1, !dbg !1608
  br i1 %229, label %230, label %271, !dbg !1609

230:                                              ; preds = %225
  %231 = icmp eq i64 %212, 0, !dbg !1610
  br i1 %231, label %238, label %232, !dbg !1611

232:                                              ; preds = %230
  %233 = shl i8 %201, 4, !dbg !1612
  %234 = lshr i8 %228, 2, !dbg !1613
  %235 = or i8 %234, %233, !dbg !1614
  %236 = getelementptr inbounds i8, i8* %213, i64 1, !dbg !1615
  call void @llvm.dbg.value(metadata i8* %236, metadata !1384, metadata !DIExpression()), !dbg !1541
  store i8 %235, i8* %213, align 1, !dbg !1616, !tbaa !906, !noalias !1569
  %237 = add i64 %212, -1, !dbg !1617
  br label %238, !dbg !1618

238:                                              ; preds = %232, %230
  %239 = phi i64 [ 0, %230 ], [ %237, %232 ]
  %240 = phi i8* [ %213, %230 ], [ %236, %232 ], !dbg !1541
  call void @llvm.dbg.value(metadata i8* %240, metadata !1384, metadata !DIExpression()), !dbg !1541
  %241 = icmp eq i64 %189, 3, !dbg !1619
  br i1 %241, label %271, label %242, !dbg !1620

242:                                              ; preds = %238
  %243 = getelementptr inbounds i8, i8* %188, i64 3, !dbg !1621
  %244 = load i8, i8* %243, align 1, !dbg !1621, !tbaa !906, !alias.scope !1569
  %245 = icmp eq i8 %244, 61, !dbg !1622
  br i1 %245, label %246, label %248, !dbg !1623

246:                                              ; preds = %242
  %247 = icmp eq i64 %189, 4, !dbg !1624
  br i1 %247, label %260, label %271, !dbg !1625

248:                                              ; preds = %242
  call void @llvm.dbg.value(metadata i8 %244, metadata !1323, metadata !DIExpression()), !dbg !1626
  %249 = zext i8 %244 to i64, !dbg !1628
  %250 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %249, !dbg !1628
  %251 = load i8, i8* %250, align 1, !dbg !1628, !tbaa !906, !noalias !1569
  %252 = icmp sgt i8 %251, -1, !dbg !1629
  br i1 %252, label %253, label %271, !dbg !1630

253:                                              ; preds = %248
  %254 = icmp eq i64 %239, 0, !dbg !1631
  br i1 %254, label %260, label %255, !dbg !1632

255:                                              ; preds = %253
  %256 = shl i8 %228, 6, !dbg !1633
  %257 = or i8 %251, %256, !dbg !1634
  %258 = getelementptr inbounds i8, i8* %240, i64 1, !dbg !1635
  call void @llvm.dbg.value(metadata i8* %258, metadata !1384, metadata !DIExpression()), !dbg !1541
  store i8 %257, i8* %240, align 1, !dbg !1636, !tbaa !906, !noalias !1569
  %259 = add i64 %239, -1, !dbg !1637
  br label %260, !dbg !1638

260:                                              ; preds = %255, %253, %246, %221
  %261 = phi i64 [ %212, %221 ], [ %239, %246 ], [ 0, %253 ], [ %259, %255 ], !dbg !1372
  %262 = phi i8* [ %213, %221 ], [ %240, %246 ], [ %240, %253 ], [ %258, %255 ], !dbg !1541
  call void @llvm.dbg.value(metadata i8* %262, metadata !1384, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8* %177, metadata !1349, metadata !DIExpression()), !dbg !1362
  %263 = ptrtoint i8* %139 to i64, !dbg !1639
  %264 = ptrtoint i8* %190 to i64, !dbg !1639
  %265 = sub i64 %263, %264, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %265, metadata !1350, metadata !DIExpression()), !dbg !1362
  br label %266

266:                                              ; preds = %260, %128
  %267 = phi i8* [ %129, %128 ], [ %190, %260 ]
  %268 = phi i64 [ %130, %128 ], [ %265, %260 ]
  %269 = phi i8* [ %122, %128 ], [ %262, %260 ]
  %270 = phi i64 [ %123, %128 ], [ %261, %260 ]
  br label %19, !dbg !1362, !llvm.loop !1640

271:                                              ; preds = %248, %246, %238, %225, %221, %219, %211, %187, %196, %185, %176, %181, %110
  %272 = phi i64 [ %112, %110 ], [ 0, %176 ], [ 0, %181 ], [ 3, %248 ], [ 3, %246 ], [ 3, %238 ], [ 3, %225 ], [ 3, %221 ], [ 3, %219 ], [ 3, %211 ], [ 3, %187 ], [ 3, %196 ], [ 3, %185 ]
  %273 = phi i64 [ %114, %110 ], [ %136, %176 ], [ %136, %181 ], [ %239, %248 ], [ %239, %246 ], [ %239, %238 ], [ %212, %225 ], [ %212, %221 ], [ %212, %219 ], [ %212, %211 ], [ %136, %187 ], [ %136, %196 ], [ %136, %185 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !1353, metadata !DIExpression()), !dbg !1362
  %274 = load i64, i64* %4, align 8, !dbg !1642, !tbaa !897
  %275 = sub i64 %274, %273, !dbg !1642
  store i64 %275, i64* %4, align 8, !dbg !1642, !tbaa !897
  call void @llvm.dbg.value(metadata i64 undef, metadata !1350, metadata !DIExpression()), !dbg !1362
  %276 = icmp eq i64 %272, 0, !dbg !1643
  ret i1 %276, !dbg !1644
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @base64_decode_alloc_ctx(%struct.base64_decode_context* %0, i8* %1, i64 %2, i8** nocapture %3, i64* %4) local_unnamed_addr #8 !dbg !1645 {
  %6 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, metadata !1649, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %1, metadata !1650, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %2, metadata !1651, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8** %3, metadata !1652, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64* %4, metadata !1653, metadata !DIExpression()), !dbg !1655
  %7 = bitcast i64* %6 to i8*, !dbg !1656
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #26, !dbg !1656
  %8 = lshr i64 %2, 2, !dbg !1657
  %9 = mul nuw i64 %8, 3, !dbg !1658
  %10 = add nuw i64 %9, 3, !dbg !1659
  call void @llvm.dbg.value(metadata i64 %10, metadata !1654, metadata !DIExpression()), !dbg !1655
  store i64 %10, i64* %6, align 8, !dbg !1660, !tbaa !897
  %11 = tail call noalias i8* @malloc(i64 %10) #26, !dbg !1661
  store i8* %11, i8** %3, align 8, !dbg !1662, !tbaa !635
  %12 = icmp eq i8* %11, null, !dbg !1663
  br i1 %12, label %21, label %13, !dbg !1665

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i64* %6, metadata !1654, metadata !DIExpression(DW_OP_deref)), !dbg !1655
  %14 = call zeroext i1 @base64_decode_ctx(%struct.base64_decode_context* %0, i8* %1, i64 %2, i8* nonnull %11, i64* nonnull %6), !dbg !1666
  br i1 %14, label %17, label %15, !dbg !1668

15:                                               ; preds = %13
  %16 = load i8*, i8** %3, align 8, !dbg !1669, !tbaa !635
  tail call void @free(i8* %16) #26, !dbg !1671
  store i8* null, i8** %3, align 8, !dbg !1672, !tbaa !635
  br label %21, !dbg !1673

17:                                               ; preds = %13
  %18 = icmp eq i64* %4, null, !dbg !1674
  br i1 %18, label %21, label %19, !dbg !1676

19:                                               ; preds = %17
  %20 = load i64, i64* %6, align 8, !dbg !1677, !tbaa !897
  call void @llvm.dbg.value(metadata i64 %20, metadata !1654, metadata !DIExpression()), !dbg !1655
  store i64 %20, i64* %4, align 8, !dbg !1678, !tbaa !897
  br label %21, !dbg !1679

21:                                               ; preds = %17, %19, %5, %15
  %22 = phi i1 [ false, %15 ], [ true, %5 ], [ true, %19 ], [ true, %17 ], !dbg !1655
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #26, !dbg !1680
  ret i1 %22, !dbg !1680
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #14 !dbg !1681 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1683, metadata !DIExpression()), !dbg !1684
  store i8* %0, i8** @file_name, align 8, !dbg !1685, !tbaa !635
  ret void, !dbg !1686
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #14 !dbg !1687 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1691, metadata !DIExpression()), !dbg !1692
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1693, !tbaa !1694
  ret void, !dbg !1696
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1697 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1702, !tbaa !635
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #26, !dbg !1703
  %3 = icmp eq i32 %2, 0, !dbg !1704
  br i1 %3, label %22, label %4, !dbg !1705

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1706, !tbaa !1694, !range !1707
  %6 = icmp eq i8 %5, 0, !dbg !1706
  br i1 %6, label %11, label %7, !dbg !1708

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #30, !dbg !1709
  %9 = load i32, i32* %8, align 4, !dbg !1709, !tbaa !811
  %10 = icmp eq i32 %9, 32, !dbg !1710
  br i1 %10, label %22, label %11, !dbg !1711

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i32 5) #26, !dbg !1712
  call void @llvm.dbg.value(metadata i8* %12, metadata !1699, metadata !DIExpression()), !dbg !1713
  %13 = load i8*, i8** @file_name, align 8, !dbg !1714, !tbaa !635
  %14 = icmp eq i8* %13, null, !dbg !1714
  %15 = tail call i32* @__errno_location() #30, !dbg !1716
  %16 = load i32, i32* %15, align 4, !dbg !1716, !tbaa !811
  br i1 %14, label %19, label %17, !dbg !1717

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #26, !dbg !1718
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.57, i64 0, i64 0), i8* %18, i8* %12) #26, !dbg !1719
  br label %20, !dbg !1719

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.58, i64 0, i64 0), i8* %12) #26, !dbg !1720
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1721, !tbaa !811
  tail call void @_exit(i32 %21) #28, !dbg !1722
  unreachable, !dbg !1722

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1723, !tbaa !635
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #26, !dbg !1725
  %25 = icmp eq i32 %24, 0, !dbg !1726
  br i1 %25, label %28, label %26, !dbg !1727

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1728, !tbaa !811
  tail call void @_exit(i32 %27) #28, !dbg !1729
  unreachable, !dbg !1729

28:                                               ; preds = %22
  ret void, !dbg !1730
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1731 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1737, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i64 %1, metadata !1738, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i64 %2, metadata !1739, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i32 %3, metadata !1740, metadata !DIExpression()), !dbg !1743
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #26, !dbg !1744
  call void @llvm.dbg.value(metadata i32 %5, metadata !1741, metadata !DIExpression()), !dbg !1745
  ret void, !dbg !1746
}

; Function Attrs: nounwind
declare !dbg !1747 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1751 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1789, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i32 %1, metadata !1790, metadata !DIExpression()), !dbg !1791
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1792
  br i1 %3, label %7, label %4, !dbg !1794

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !1795
  call void @llvm.dbg.value(metadata i32 %5, metadata !1737, metadata !DIExpression()) #26, !dbg !1796
  call void @llvm.dbg.value(metadata i64 0, metadata !1738, metadata !DIExpression()) #26, !dbg !1796
  call void @llvm.dbg.value(metadata i64 0, metadata !1739, metadata !DIExpression()) #26, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %1, metadata !1740, metadata !DIExpression()) #26, !dbg !1796
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #26, !dbg !1798
  call void @llvm.dbg.value(metadata i32 %6, metadata !1741, metadata !DIExpression()) #26, !dbg !1799
  br label %7, !dbg !1800

7:                                                ; preds = %4, %2
  ret void, !dbg !1801
}

; Function Attrs: nofree nounwind
declare !dbg !1802 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1805 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1807, metadata !DIExpression()), !dbg !1810
  %2 = icmp eq i8* %0, null, !dbg !1811
  br i1 %2, label %3, label %6, !dbg !1813

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1814, !tbaa !635
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.67, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #31, !dbg !1816
  tail call void @abort() #28, !dbg !1817
  unreachable, !dbg !1817

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #27, !dbg !1818
  call void @llvm.dbg.value(metadata i8* %7, metadata !1808, metadata !DIExpression()), !dbg !1810
  %8 = icmp eq i8* %7, null, !dbg !1819
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1820
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1820
  call void @llvm.dbg.value(metadata i8* %10, metadata !1809, metadata !DIExpression()), !dbg !1810
  %11 = ptrtoint i8* %10 to i64, !dbg !1821
  %12 = ptrtoint i8* %0 to i64, !dbg !1821
  %13 = sub i64 %11, %12, !dbg !1821
  %14 = icmp sgt i64 %13, 6, !dbg !1823
  br i1 %14, label %15, label %24, !dbg !1824

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1825
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.68, i64 0, i64 0), i64 7) #27, !dbg !1826
  %18 = icmp eq i32 %17, 0, !dbg !1827
  br i1 %18, label %19, label %24, !dbg !1828

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1807, metadata !DIExpression()), !dbg !1810
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.69, i64 0, i64 0), i64 3) #27, !dbg !1829
  %21 = icmp eq i32 %20, 0, !dbg !1832
  br i1 %21, label %22, label %24, !dbg !1833

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1834
  call void @llvm.dbg.value(metadata i8* %23, metadata !1807, metadata !DIExpression()), !dbg !1810
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1836, !tbaa !635
  br label %24, !dbg !1837

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1807, metadata !DIExpression()), !dbg !1810
  store i8* %25, i8** @program_name, align 8, !dbg !1838, !tbaa !635
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1839, !tbaa !635
  ret void, !dbg !1840
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #17

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1841 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1846, metadata !DIExpression()), !dbg !1849
  %2 = tail call i32* @__errno_location() #30, !dbg !1850
  %3 = load i32, i32* %2, align 4, !dbg !1850, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %3, metadata !1847, metadata !DIExpression()), !dbg !1849
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1851
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1851
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1851
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #26, !dbg !1852
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1852
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1848, metadata !DIExpression()), !dbg !1849
  store i32 %3, i32* %2, align 4, !dbg !1853, !tbaa !811
  ret %struct.quoting_options* %8, !dbg !1854
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #18 !dbg !1855 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1861, metadata !DIExpression()), !dbg !1862
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1863
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1863
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1864
  %5 = load i32, i32* %4, align 8, !dbg !1864, !tbaa !1865
  ret i32 %5, !dbg !1867
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !1868 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1872, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 %1, metadata !1873, metadata !DIExpression()), !dbg !1874
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1875
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1875
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1876
  store i32 %1, i32* %5, align 8, !dbg !1877, !tbaa !1865
  ret void, !dbg !1878
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #19 !dbg !1879 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1883, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8 %1, metadata !1884, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i32 %2, metadata !1885, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8 %1, metadata !1886, metadata !DIExpression()), !dbg !1891
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1892
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1892
  %6 = lshr i8 %1, 5, !dbg !1893
  %7 = zext i8 %6 to i64, !dbg !1893
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1894
  call void @llvm.dbg.value(metadata i32* %8, metadata !1887, metadata !DIExpression()), !dbg !1891
  %9 = and i8 %1, 31, !dbg !1895
  %10 = zext i8 %9 to i32, !dbg !1895
  call void @llvm.dbg.value(metadata i32 %10, metadata !1889, metadata !DIExpression()), !dbg !1891
  %11 = load i32, i32* %8, align 4, !dbg !1896, !tbaa !811
  %12 = lshr i32 %11, %10, !dbg !1897
  %13 = and i32 %12, 1, !dbg !1898
  call void @llvm.dbg.value(metadata i32 %13, metadata !1890, metadata !DIExpression()), !dbg !1891
  %14 = and i32 %2, 1, !dbg !1899
  %15 = xor i32 %13, %14, !dbg !1900
  %16 = shl i32 %15, %10, !dbg !1901
  %17 = xor i32 %16, %11, !dbg !1902
  store i32 %17, i32* %8, align 4, !dbg !1902, !tbaa !811
  ret i32 %13, !dbg !1903
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #19 !dbg !1904 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1908, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i32 %1, metadata !1909, metadata !DIExpression()), !dbg !1911
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1912
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1914
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1908, metadata !DIExpression()), !dbg !1911
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1915
  %6 = load i32, i32* %5, align 4, !dbg !1915, !tbaa !1916
  call void @llvm.dbg.value(metadata i32 %6, metadata !1910, metadata !DIExpression()), !dbg !1911
  store i32 %1, i32* %5, align 4, !dbg !1917, !tbaa !1916
  ret i32 %6, !dbg !1918
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1919 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1923, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8* %1, metadata !1924, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8* %2, metadata !1925, metadata !DIExpression()), !dbg !1926
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1927
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1929
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1923, metadata !DIExpression()), !dbg !1926
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1930
  store i32 10, i32* %6, align 8, !dbg !1931, !tbaa !1865
  %7 = icmp ne i8* %1, null, !dbg !1932
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1934
  br i1 %9, label %11, label %10, !dbg !1934

10:                                               ; preds = %3
  tail call void @abort() #28, !dbg !1935
  unreachable, !dbg !1935

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1936
  store i8* %1, i8** %12, align 8, !dbg !1937, !tbaa !1938
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1939
  store i8* %2, i8** %13, align 8, !dbg !1940, !tbaa !1941
  ret void, !dbg !1942
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1943 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1947, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %1, metadata !1948, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8* %2, metadata !1949, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %3, metadata !1950, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1951, metadata !DIExpression()), !dbg !1955
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1956
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1956
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1952, metadata !DIExpression()), !dbg !1955
  %8 = tail call i32* @__errno_location() #30, !dbg !1957
  %9 = load i32, i32* %8, align 4, !dbg !1957, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %9, metadata !1953, metadata !DIExpression()), !dbg !1955
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1958
  %11 = load i32, i32* %10, align 8, !dbg !1958, !tbaa !1865
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1959
  %13 = load i32, i32* %12, align 4, !dbg !1959, !tbaa !1916
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1960
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1961
  %16 = load i8*, i8** %15, align 8, !dbg !1961, !tbaa !1938
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1962
  %18 = load i8*, i8** %17, align 8, !dbg !1962, !tbaa !1941
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %19, metadata !1954, metadata !DIExpression()), !dbg !1955
  store i32 %9, i32* %8, align 4, !dbg !1964, !tbaa !811
  ret i64 %19, !dbg !1965
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1966 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1972, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %1, metadata !1973, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %2, metadata !1974, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %3, metadata !1975, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 %4, metadata !1976, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 %5, metadata !1977, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32* %6, metadata !1978, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %7, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %8, metadata !1980, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 0, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 0, metadata !1983, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* null, metadata !1984, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 0, metadata !1985, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !1986, metadata !DIExpression()), !dbg !2039
  %13 = tail call i64 @__ctype_get_mb_cur_max() #26, !dbg !2040
  %14 = icmp eq i64 %13, 1, !dbg !2041
  call void @llvm.dbg.value(metadata i1 %14, metadata !1987, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2039
  %15 = lshr i32 %5, 1, !dbg !2042
  %16 = trunc i32 %15 to i8, !dbg !2042
  %17 = and i8 %16, 1, !dbg !2042
  call void @llvm.dbg.value(metadata i8 %17, metadata !1988, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !1989, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !1990, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 1, metadata !1991, metadata !DIExpression()), !dbg !2039
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
  call void @llvm.dbg.value(metadata i64 %39, metadata !1973, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %38, metadata !1991, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %37, metadata !1990, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %36, metadata !1989, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %35, metadata !1988, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %34, metadata !1975, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %33, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %32, metadata !1985, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %31, metadata !1984, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %30, metadata !1983, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 0, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %29, metadata !1980, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %28, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 %27, metadata !1976, metadata !DIExpression()), !dbg !2039
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
  call void @llvm.dbg.value(metadata i8 %35, metadata !1988, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 5, metadata !1976, metadata !DIExpression()), !dbg !2039
  br label %92, !dbg !2053

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1988, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 5, metadata !1976, metadata !DIExpression()), !dbg !2039
  %42 = and i8 %35, 1, !dbg !2055
  %43 = icmp eq i8 %42, 0, !dbg !2055
  br i1 %43, label %44, label %92, !dbg !2053

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2057
  br i1 %45, label %92, label %46, !dbg !2060

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2057, !tbaa !906
  br label %92, !dbg !2057

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.80, i64 0, i64 0), i32 %27), !dbg !2061
  call void @llvm.dbg.value(metadata i8* %48, metadata !1979, metadata !DIExpression()), !dbg !2039
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), i32 %27), !dbg !2065
  call void @llvm.dbg.value(metadata i8* %49, metadata !1980, metadata !DIExpression()), !dbg !2039
  br label %50, !dbg !2066

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1980, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %51, metadata !1979, metadata !DIExpression()), !dbg !2039
  %53 = and i8 %35, 1, !dbg !2067
  %54 = icmp eq i8 %53, 0, !dbg !2067
  br i1 %54, label %55, label %70, !dbg !2069

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1984, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 0, metadata !1982, metadata !DIExpression()), !dbg !2039
  %56 = load i8, i8* %51, align 1, !dbg !2070, !tbaa !906
  %57 = icmp eq i8 %56, 0, !dbg !2073
  br i1 %57, label %70, label %58, !dbg !2073

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1984, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %61, metadata !1982, metadata !DIExpression()), !dbg !2039
  %62 = icmp ult i64 %61, %39, !dbg !2074
  br i1 %62, label %63, label %65, !dbg !2077

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2074
  store i8 %59, i8* %64, align 1, !dbg !2074, !tbaa !906
  br label %65, !dbg !2074

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %66, metadata !1982, metadata !DIExpression()), !dbg !2039
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2078
  call void @llvm.dbg.value(metadata i8* %67, metadata !1984, metadata !DIExpression()), !dbg !2039
  %68 = load i8, i8* %67, align 1, !dbg !2070, !tbaa !906
  %69 = icmp eq i8 %68, 0, !dbg !2073
  br i1 %69, label %70, label %58, !dbg !2073, !llvm.loop !2079

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2081
  call void @llvm.dbg.value(metadata i64 %71, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 1, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %52, metadata !1984, metadata !DIExpression()), !dbg !2039
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #27, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %72, metadata !1985, metadata !DIExpression()), !dbg !2039
  br label %92, !dbg !2083

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1986, metadata !DIExpression()), !dbg !2039
  br label %74, !dbg !2084

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2039
  call void @llvm.dbg.value(metadata i8 %75, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 1, metadata !1988, metadata !DIExpression()), !dbg !2039
  br label %76, !dbg !2085

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2047
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2039
  call void @llvm.dbg.value(metadata i8 %78, metadata !1988, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %77, metadata !1986, metadata !DIExpression()), !dbg !2039
  %79 = and i8 %78, 1, !dbg !2086
  %80 = icmp eq i8 %79, 0, !dbg !2086
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2088
  br label %82, !dbg !2088

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2039
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2042
  call void @llvm.dbg.value(metadata i8 %84, metadata !1988, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %83, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 2, metadata !1976, metadata !DIExpression()), !dbg !2039
  %85 = and i8 %84, 1, !dbg !2089
  %86 = icmp eq i8 %85, 0, !dbg !2089
  br i1 %86, label %87, label %92, !dbg !2091

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2092
  br i1 %88, label %92, label %89, !dbg !2095

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2092, !tbaa !906
  br label %92, !dbg !2092

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1988, metadata !DIExpression()), !dbg !2039
  br label %92, !dbg !2096

91:                                               ; preds = %26
  call void @abort() #28, !dbg !2097
  unreachable, !dbg !2097

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !2081
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %40 ], !dbg !2039
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !2039
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !2039
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !2039
  call void @llvm.dbg.value(metadata i8 %100, metadata !1988, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %99, metadata !1986, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %98, metadata !1985, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %97, metadata !1984, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %96, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %95, metadata !1980, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %94, metadata !1979, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 %93, metadata !1976, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 0, metadata !1981, metadata !DIExpression()), !dbg !2039
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
  call void @llvm.dbg.value(metadata i64 %129, metadata !1973, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %128, metadata !1991, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %127, metadata !1990, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %126, metadata !1989, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %125, metadata !1975, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %124, metadata !1983, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %123, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %122, metadata !1981, metadata !DIExpression()), !dbg !2039
  %130 = icmp eq i64 %125, -1, !dbg !2100
  br i1 %130, label %131, label %135, !dbg !2101

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2102
  %133 = load i8, i8* %132, align 1, !dbg !2102, !tbaa !906
  %134 = icmp eq i8 %133, 0, !dbg !2103
  br i1 %134, label %587, label %137, !dbg !2104

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2105
  br i1 %136, label %587, label %137, !dbg !2104

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1997, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 0, metadata !1998, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 0, metadata !1999, metadata !DIExpression()), !dbg !2106
  br i1 %106, label %138, label %153, !dbg !2107

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2109
  %140 = and i1 %107, %130, !dbg !2110
  br i1 %140, label %141, label %143, !dbg !2110

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !2111
  call void @llvm.dbg.value(metadata i64 %142, metadata !1975, metadata !DIExpression()), !dbg !2039
  br label %143, !dbg !2112

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2112
  call void @llvm.dbg.value(metadata i64 %144, metadata !1975, metadata !DIExpression()), !dbg !2039
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
  call void @llvm.dbg.value(metadata i8 %156, metadata !1997, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i64 %154, metadata !1975, metadata !DIExpression()), !dbg !2039
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2119
  %158 = load i8, i8* %157, align 1, !dbg !2119, !tbaa !906
  call void @llvm.dbg.value(metadata i8 %158, metadata !1992, metadata !DIExpression()), !dbg !2106
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
  call void @llvm.dbg.value(metadata i8 1, metadata !1998, metadata !DIExpression()), !dbg !2106
  %162 = and i8 %126, 1, !dbg !2126
  %163 = icmp eq i8 %162, 0, !dbg !2126
  %164 = and i1 %110, %163, !dbg !2126
  br i1 %164, label %165, label %181, !dbg !2126

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2128
  br i1 %166, label %167, label %169, !dbg !2132

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2128
  store i8 39, i8* %168, align 1, !dbg !2128, !tbaa !906
  br label %169, !dbg !2128

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2132
  call void @llvm.dbg.value(metadata i64 %170, metadata !1982, metadata !DIExpression()), !dbg !2039
  %171 = icmp ult i64 %170, %129, !dbg !2133
  br i1 %171, label %172, label %174, !dbg !2136

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2133
  store i8 36, i8* %173, align 1, !dbg !2133, !tbaa !906
  br label %174, !dbg !2133

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2136
  call void @llvm.dbg.value(metadata i64 %175, metadata !1982, metadata !DIExpression()), !dbg !2039
  %176 = icmp ult i64 %175, %129, !dbg !2137
  br i1 %176, label %177, label %179, !dbg !2140

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2137
  store i8 39, i8* %178, align 1, !dbg !2137, !tbaa !906
  br label %179, !dbg !2137

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2140
  call void @llvm.dbg.value(metadata i64 %180, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 1, metadata !1989, metadata !DIExpression()), !dbg !2039
  br label %181, !dbg !2141

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !2039
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !2039
  call void @llvm.dbg.value(metadata i8 %183, metadata !1989, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %182, metadata !1982, metadata !DIExpression()), !dbg !2039
  %184 = icmp ult i64 %182, %129, !dbg !2142
  br i1 %184, label %185, label %187, !dbg !2145

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2142
  store i8 92, i8* %186, align 1, !dbg !2142, !tbaa !906
  br label %187, !dbg !2142

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %188, metadata !1982, metadata !DIExpression()), !dbg !2039
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2146
  br i1 %191, label %192, label %473, !dbg !2146

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2148
  %194 = load i8, i8* %193, align 1, !dbg !2148, !tbaa !906
  %195 = add i8 %194, -48, !dbg !2149
  %196 = icmp ult i8 %195, 10, !dbg !2149
  br i1 %196, label %197, label %473, !dbg !2149

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2150
  br i1 %198, label %199, label %201, !dbg !2154

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2150
  store i8 48, i8* %200, align 1, !dbg !2150, !tbaa !906
  br label %201, !dbg !2150

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %202, metadata !1982, metadata !DIExpression()), !dbg !2039
  %203 = icmp ult i64 %202, %129, !dbg !2155
  br i1 %203, label %204, label %206, !dbg !2158

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2155
  store i8 48, i8* %205, align 1, !dbg !2155, !tbaa !906
  br label %206, !dbg !2155

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %207, metadata !1982, metadata !DIExpression()), !dbg !2039
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
  %218 = load i8, i8* %217, align 1, !dbg !2167, !tbaa !906
  %219 = icmp eq i8 %218, 63, !dbg !2168
  br i1 %219, label %220, label %473, !dbg !2169

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2170
  %222 = load i8, i8* %221, align 1, !dbg !2170, !tbaa !906
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
  call void @llvm.dbg.value(metadata i8 %222, metadata !1992, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i64 undef, metadata !1981, metadata !DIExpression()), !dbg !2039
  %226 = icmp ult i64 %123, %129, !dbg !2174
  br i1 %226, label %227, label %229, !dbg !2177

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2174
  store i8 63, i8* %228, align 1, !dbg !2174, !tbaa !906
  br label %229, !dbg !2174

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %230, metadata !1982, metadata !DIExpression()), !dbg !2039
  %231 = icmp ult i64 %230, %129, !dbg !2178
  br i1 %231, label %232, label %234, !dbg !2181

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2178
  store i8 34, i8* %233, align 1, !dbg !2178, !tbaa !906
  br label %234, !dbg !2178

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %235, metadata !1982, metadata !DIExpression()), !dbg !2039
  %236 = icmp ult i64 %235, %129, !dbg !2182
  br i1 %236, label %237, label %239, !dbg !2185

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2182
  store i8 34, i8* %238, align 1, !dbg !2182, !tbaa !906
  br label %239, !dbg !2182

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %240, metadata !1982, metadata !DIExpression()), !dbg !2039
  %241 = icmp ult i64 %240, %129, !dbg !2186
  br i1 %241, label %242, label %244, !dbg !2189

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2186
  store i8 63, i8* %243, align 1, !dbg !2186, !tbaa !906
  br label %244, !dbg !2186

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2189
  call void @llvm.dbg.value(metadata i64 %245, metadata !1982, metadata !DIExpression()), !dbg !2039
  br label %473, !dbg !2190

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1996, metadata !DIExpression()), !dbg !2106
  br label %256, !dbg !2191

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1996, metadata !DIExpression()), !dbg !2106
  br label %256, !dbg !2192

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1996, metadata !DIExpression()), !dbg !2106
  br label %254, !dbg !2193

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1996, metadata !DIExpression()), !dbg !2106
  br label %254, !dbg !2194

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1996, metadata !DIExpression()), !dbg !2106
  br label %256, !dbg !2195

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1996, metadata !DIExpression()), !dbg !2106
  br i1 %110, label %252, label %253, !dbg !2196

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2197

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2200

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2202
  call void @llvm.dbg.value(metadata i8 %255, metadata !1996, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.label(metadata !2034), !dbg !2203
  br i1 %111, label %256, label %631, !dbg !2204

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2202
  call void @llvm.dbg.value(metadata i8 %257, metadata !1996, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.label(metadata !2035), !dbg !2206
  br i1 %102, label %495, label %473, !dbg !2207

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2208

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2209, !tbaa !906
  %261 = icmp eq i8 %260, 0, !dbg !2211
  br i1 %261, label %262, label %473, !dbg !2212

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2213
  br i1 %263, label %264, label %473, !dbg !2215

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1999, metadata !DIExpression()), !dbg !2106
  br label %265, !dbg !2216

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !2106
  call void @llvm.dbg.value(metadata i8 %266, metadata !1999, metadata !DIExpression()), !dbg !2106
  br i1 %111, label %473, label %631, !dbg !2217

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1990, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 1, metadata !1999, metadata !DIExpression()), !dbg !2106
  br i1 %110, label %268, label %473, !dbg !2219

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2220

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2223
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2225
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2225
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2225
  call void @llvm.dbg.value(metadata i64 %274, metadata !1973, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %273, metadata !1983, metadata !DIExpression()), !dbg !2039
  %275 = icmp ult i64 %123, %274, !dbg !2226
  br i1 %275, label %276, label %278, !dbg !2229

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2226
  store i8 39, i8* %277, align 1, !dbg !2226, !tbaa !906
  br label %278, !dbg !2226

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %279, metadata !1982, metadata !DIExpression()), !dbg !2039
  %280 = icmp ult i64 %279, %274, !dbg !2230
  br i1 %280, label %281, label %283, !dbg !2233

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2230
  store i8 92, i8* %282, align 1, !dbg !2230, !tbaa !906
  br label %283, !dbg !2230

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2233
  call void @llvm.dbg.value(metadata i64 %284, metadata !1982, metadata !DIExpression()), !dbg !2039
  %285 = icmp ult i64 %284, %274, !dbg !2234
  br i1 %285, label %286, label %288, !dbg !2237

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2234
  store i8 39, i8* %287, align 1, !dbg !2234, !tbaa !906
  br label %288, !dbg !2234

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %289, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !1989, metadata !DIExpression()), !dbg !2039
  br label %473, !dbg !2238

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2239

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2000, metadata !DIExpression()), !dbg !2240
  %292 = tail call i16** @__ctype_b_loc() #30, !dbg !2241
  %293 = load i16*, i16** %292, align 8, !dbg !2241, !tbaa !635
  %294 = zext i8 %158 to i64, !dbg !2241
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2241
  %296 = load i16, i16* %295, align 2, !dbg !2241, !tbaa !2243
  %297 = lshr i16 %296, 14, !dbg !2244
  %298 = trunc i16 %297 to i8, !dbg !2244
  %299 = and i8 %298, 1, !dbg !2244
  call void @llvm.dbg.value(metadata i8 %354, metadata !2003, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i64 %355, metadata !2000, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i64 %306, metadata !1975, metadata !DIExpression()), !dbg !2039
  %300 = icmp eq i8 %299, 0, !dbg !2245
  call void @llvm.dbg.value(metadata i1 %357, metadata !1999, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2106
  br label %359, !dbg !2246

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #26, !dbg !2247
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2004, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %23, metadata !2249, metadata !DIExpression()) #26, !dbg !2256
  call void @llvm.dbg.value(metadata i32 0, metadata !2254, metadata !DIExpression()) #26, !dbg !2256
  call void @llvm.dbg.value(metadata i64 8, metadata !2255, metadata !DIExpression()) #26, !dbg !2256
  store i64 0, i64* %10, align 8, !dbg !2258
  call void @llvm.dbg.value(metadata i64 0, metadata !2000, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8 1, metadata !2003, metadata !DIExpression()), !dbg !2240
  %302 = icmp eq i64 %154, -1, !dbg !2259
  br i1 %302, label %303, label %305, !dbg !2261

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !2262
  call void @llvm.dbg.value(metadata i64 %304, metadata !1975, metadata !DIExpression()), !dbg !2039
  br label %305, !dbg !2263

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !2106
  call void @llvm.dbg.value(metadata i64 %306, metadata !1975, metadata !DIExpression()), !dbg !2039
  br label %307, !dbg !2264

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2265
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2266
  call void @llvm.dbg.value(metadata i8 %309, metadata !2003, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i64 %308, metadata !2000, metadata !DIExpression()), !dbg !2240
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #26, !dbg !2267
  %310 = add i64 %308, %122, !dbg !2268
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2269
  %312 = sub i64 %306, %310, !dbg !2270
  call void @llvm.dbg.value(metadata i32* %12, metadata !2019, metadata !DIExpression(DW_OP_deref)), !dbg !2271
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #26, !dbg !2272
  call void @llvm.dbg.value(metadata i64 %313, metadata !2022, metadata !DIExpression()), !dbg !2271
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2273

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !2000, metadata !DIExpression()), !dbg !2240
  %315 = icmp ugt i64 %306, %310, !dbg !2274
  br i1 %315, label %316, label %341, !dbg !2276

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2277
  br label %318, !dbg !2277

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !2000, metadata !DIExpression()), !dbg !2240
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2278
  %322 = load i8, i8* %321, align 1, !dbg !2278, !tbaa !906
  %323 = icmp eq i8 %322, 0, !dbg !2276
  br i1 %323, label %341, label %324, !dbg !2277

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %325, metadata !2000, metadata !DIExpression()), !dbg !2240
  %326 = add i64 %325, %122, !dbg !2280
  %327 = icmp ult i64 %326, %306, !dbg !2274
  br i1 %327, label %318, label %341, !dbg !2276, !llvm.loop !2281

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2282
  call void @llvm.dbg.value(metadata i64 1, metadata !2023, metadata !DIExpression()), !dbg !2283
  br i1 %330, label %331, label %344, !dbg !2282

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !2023, metadata !DIExpression()), !dbg !2283
  %333 = add i64 %332, %310, !dbg !2284
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2287
  %335 = load i8, i8* %334, align 1, !dbg !2287, !tbaa !906
  %336 = sext i8 %335 to i32, !dbg !2287
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2288

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2289
  call void @llvm.dbg.value(metadata i64 %338, metadata !2023, metadata !DIExpression()), !dbg !2283
  %339 = icmp eq i64 %338, %313, !dbg !2290
  br i1 %339, label %344, label %331, !dbg !2291, !llvm.loop !2292

340:                                              ; preds = %307
  br label %341, !dbg !2294

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2003, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i64 undef, metadata !2000, metadata !DIExpression()), !dbg !2240
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !2294
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2295, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %345, metadata !2019, metadata !DIExpression()), !dbg !2271
  %346 = call i32 @iswprint(i32 %345) #26, !dbg !2297
  %347 = icmp eq i32 %346, 0, !dbg !2297
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2298
  call void @llvm.dbg.value(metadata i8 %348, metadata !2003, metadata !DIExpression()), !dbg !2240
  %349 = add i64 %313, %308, !dbg !2299
  call void @llvm.dbg.value(metadata i64 %349, metadata !2000, metadata !DIExpression()), !dbg !2240
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !2294
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #27, !dbg !2300
  %351 = icmp eq i32 %350, 0, !dbg !2301
  br i1 %351, label %307, label %353, !dbg !2302, !llvm.loop !2303

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !2003, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i64 undef, metadata !2000, metadata !DIExpression()), !dbg !2240
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !2294
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !2305
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !2305
  call void @llvm.dbg.value(metadata i8 %354, metadata !2003, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i64 %355, metadata !2000, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i64 %306, metadata !1975, metadata !DIExpression()), !dbg !2039
  %356 = and i8 %354, 1, !dbg !2245
  %357 = icmp eq i8 %356, 0, !dbg !2245
  call void @llvm.dbg.value(metadata i1 %357, metadata !1999, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2106
  %358 = icmp ugt i64 %355, 1, !dbg !2306
  br i1 %358, label %367, label %359, !dbg !2246

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2307
  br i1 %364, label %367, label %365, !dbg !2307

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !2106
  call void @llvm.dbg.value(metadata i8 %472, metadata !1999, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %441, metadata !1998, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %440, metadata !1997, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %439, metadata !1992, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %438, metadata !1989, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %371, metadata !1975, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %437, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %375, metadata !1981, metadata !DIExpression()), !dbg !2039
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %372, metadata !2030, metadata !DIExpression()), !dbg !2309
  %373 = and i1 %102, %368
  br label %374, !dbg !2310

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !2099
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !2039
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !2048
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !2106
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !2106
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2311
  call void @llvm.dbg.value(metadata i8 %380, metadata !1998, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %379, metadata !1997, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %378, metadata !1992, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %377, metadata !1989, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %376, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %375, metadata !1981, metadata !DIExpression()), !dbg !2039
  br i1 %373, label %381, label %427, !dbg !2312

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2317

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1998, metadata !DIExpression()), !dbg !2106
  %383 = and i8 %377, 1, !dbg !2320
  %384 = icmp eq i8 %383, 0, !dbg !2320
  %385 = and i1 %110, %384, !dbg !2320
  br i1 %385, label %386, label %402, !dbg !2320

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2322
  br i1 %387, label %388, label %390, !dbg !2326

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2322
  store i8 39, i8* %389, align 1, !dbg !2322, !tbaa !906
  br label %390, !dbg !2322

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %391, metadata !1982, metadata !DIExpression()), !dbg !2039
  %392 = icmp ult i64 %391, %129, !dbg !2327
  br i1 %392, label %393, label %395, !dbg !2330

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2327
  store i8 36, i8* %394, align 1, !dbg !2327, !tbaa !906
  br label %395, !dbg !2327

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2330
  call void @llvm.dbg.value(metadata i64 %396, metadata !1982, metadata !DIExpression()), !dbg !2039
  %397 = icmp ult i64 %396, %129, !dbg !2331
  br i1 %397, label %398, label %400, !dbg !2334

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2331
  store i8 39, i8* %399, align 1, !dbg !2331, !tbaa !906
  br label %400, !dbg !2331

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2334
  call void @llvm.dbg.value(metadata i64 %401, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 1, metadata !1989, metadata !DIExpression()), !dbg !2039
  br label %402, !dbg !2335

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !2039
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !2039
  call void @llvm.dbg.value(metadata i8 %404, metadata !1989, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %403, metadata !1982, metadata !DIExpression()), !dbg !2039
  %405 = icmp ult i64 %403, %129, !dbg !2336
  br i1 %405, label %406, label %408, !dbg !2339

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2336
  store i8 92, i8* %407, align 1, !dbg !2336, !tbaa !906
  br label %408, !dbg !2336

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2339
  call void @llvm.dbg.value(metadata i64 %409, metadata !1982, metadata !DIExpression()), !dbg !2039
  %410 = icmp ult i64 %409, %129, !dbg !2340
  br i1 %410, label %411, label %415, !dbg !2343

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2340
  %413 = or i8 %412, 48, !dbg !2340
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2340
  store i8 %413, i8* %414, align 1, !dbg !2340, !tbaa !906
  br label %415, !dbg !2340

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2343
  call void @llvm.dbg.value(metadata i64 %416, metadata !1982, metadata !DIExpression()), !dbg !2039
  %417 = icmp ult i64 %416, %129, !dbg !2344
  br i1 %417, label %418, label %423, !dbg !2347

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2344
  %420 = and i8 %419, 7, !dbg !2344
  %421 = or i8 %420, 48, !dbg !2344
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2344
  store i8 %421, i8* %422, align 1, !dbg !2344, !tbaa !906
  br label %423, !dbg !2344

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2347
  call void @llvm.dbg.value(metadata i64 %424, metadata !1982, metadata !DIExpression()), !dbg !2039
  %425 = and i8 %378, 7, !dbg !2348
  %426 = or i8 %425, 48, !dbg !2349
  call void @llvm.dbg.value(metadata i8 %426, metadata !1992, metadata !DIExpression()), !dbg !2106
  br label %436, !dbg !2350

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2351
  %429 = icmp eq i8 %428, 0, !dbg !2351
  br i1 %429, label %436, label %430, !dbg !2353

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2354
  br i1 %431, label %432, label %434, !dbg !2358

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2354
  store i8 92, i8* %433, align 1, !dbg !2354, !tbaa !906
  br label %434, !dbg !2354

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2358
  call void @llvm.dbg.value(metadata i64 %435, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !1997, metadata !DIExpression()), !dbg !2106
  br label %436, !dbg !2359

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !2039
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !2048
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !2106
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !2106
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !2106
  call void @llvm.dbg.value(metadata i8 %441, metadata !1998, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %440, metadata !1997, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %439, metadata !1992, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %438, metadata !1989, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %437, metadata !1982, metadata !DIExpression()), !dbg !2039
  %442 = add i64 %375, 1, !dbg !2360
  %443 = icmp ugt i64 %372, %442, !dbg !2362
  br i1 %443, label %444, label %471, !dbg !2363

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2364
  %446 = icmp ne i8 %445, 0, !dbg !2364
  %447 = and i8 %441, 1, !dbg !2364
  %448 = icmp eq i8 %447, 0, !dbg !2364
  %449 = and i1 %446, %448, !dbg !2364
  br i1 %449, label %450, label %461, !dbg !2364

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2367
  br i1 %451, label %452, label %454, !dbg !2371

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2367
  store i8 39, i8* %453, align 1, !dbg !2367, !tbaa !906
  br label %454, !dbg !2367

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2371
  call void @llvm.dbg.value(metadata i64 %455, metadata !1982, metadata !DIExpression()), !dbg !2039
  %456 = icmp ult i64 %455, %129, !dbg !2372
  br i1 %456, label %457, label %459, !dbg !2375

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2372
  store i8 39, i8* %458, align 1, !dbg !2372, !tbaa !906
  br label %459, !dbg !2372

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2375
  call void @llvm.dbg.value(metadata i64 %460, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !1989, metadata !DIExpression()), !dbg !2039
  br label %461, !dbg !2376

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2377
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !2039
  call void @llvm.dbg.value(metadata i8 %463, metadata !1989, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %462, metadata !1982, metadata !DIExpression()), !dbg !2039
  %464 = icmp ult i64 %462, %129, !dbg !2378
  br i1 %464, label %465, label %467, !dbg !2381

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2378
  store i8 %439, i8* %466, align 1, !dbg !2378, !tbaa !906
  br label %467, !dbg !2378

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2381
  call void @llvm.dbg.value(metadata i64 %468, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %442, metadata !1981, metadata !DIExpression()), !dbg !2039
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2382
  %470 = load i8, i8* %469, align 1, !dbg !2382, !tbaa !906
  call void @llvm.dbg.value(metadata i8 %470, metadata !1992, metadata !DIExpression()), !dbg !2106
  br label %374, !dbg !2383, !llvm.loop !2384

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !2106
  call void @llvm.dbg.value(metadata i8 %472, metadata !1999, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %441, metadata !1998, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %440, metadata !1997, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %439, metadata !1992, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %438, metadata !1989, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %371, metadata !1975, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %437, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %375, metadata !1981, metadata !DIExpression()), !dbg !2039
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !2099
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !2039
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !2044
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2387
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !2039
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !2039
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !2106
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !2106
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !2106
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1973, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %482, metadata !1999, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %481, metadata !1998, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %156, metadata !1997, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %480, metadata !1992, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %479, metadata !1990, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %478, metadata !1989, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %477, metadata !1975, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %476, metadata !1983, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %475, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %474, metadata !1981, metadata !DIExpression()), !dbg !2039
  br i1 %116, label %494, label %484, !dbg !2388

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2390
  %486 = zext i8 %485 to i64, !dbg !2390
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2391
  %488 = load i32, i32* %487, align 4, !dbg !2391, !tbaa !811
  %489 = and i8 %480, 31, !dbg !2392
  %490 = zext i8 %489 to i32, !dbg !2392
  %491 = shl nuw i32 1, %490, !dbg !2393
  %492 = and i32 %488, %491, !dbg !2393
  %493 = icmp eq i32 %492, 0, !dbg !2393
  br i1 %493, label %494, label %495, !dbg !2394

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2395

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2396
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !2039
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !2044
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2387
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !2048
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !2049
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !2106
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !2106
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1973, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %503, metadata !1999, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %502, metadata !1992, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %501, metadata !1990, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %500, metadata !1989, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %499, metadata !1975, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %498, metadata !1983, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %497, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %496, metadata !1981, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.label(metadata !2036), !dbg !2397
  br i1 %109, label %505, label %635, !dbg !2398

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1998, metadata !DIExpression()), !dbg !2106
  %506 = and i8 %500, 1, !dbg !2400
  %507 = icmp eq i8 %506, 0, !dbg !2400
  %508 = and i1 %110, %507, !dbg !2400
  br i1 %508, label %509, label %525, !dbg !2400

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2402
  br i1 %510, label %511, label %513, !dbg !2406

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2402
  store i8 39, i8* %512, align 1, !dbg !2402, !tbaa !906
  br label %513, !dbg !2402

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2406
  call void @llvm.dbg.value(metadata i64 %514, metadata !1982, metadata !DIExpression()), !dbg !2039
  %515 = icmp ult i64 %514, %504, !dbg !2407
  br i1 %515, label %516, label %518, !dbg !2410

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2407
  store i8 36, i8* %517, align 1, !dbg !2407, !tbaa !906
  br label %518, !dbg !2407

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2410
  call void @llvm.dbg.value(metadata i64 %519, metadata !1982, metadata !DIExpression()), !dbg !2039
  %520 = icmp ult i64 %519, %504, !dbg !2411
  br i1 %520, label %521, label %523, !dbg !2414

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2411
  store i8 39, i8* %522, align 1, !dbg !2411, !tbaa !906
  br label %523, !dbg !2411

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2414
  call void @llvm.dbg.value(metadata i64 %524, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 1, metadata !1989, metadata !DIExpression()), !dbg !2039
  br label %525, !dbg !2415

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !2106
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !2039
  call void @llvm.dbg.value(metadata i8 %527, metadata !1989, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %526, metadata !1982, metadata !DIExpression()), !dbg !2039
  %528 = icmp ult i64 %526, %504, !dbg !2416
  br i1 %528, label %529, label %531, !dbg !2419

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2416
  store i8 92, i8* %530, align 1, !dbg !2416, !tbaa !906
  br label %531, !dbg !2416

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2419
  call void @llvm.dbg.value(metadata i64 %543, metadata !1973, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %542, metadata !1999, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %541, metadata !1998, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %540, metadata !1992, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %539, metadata !1990, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %538, metadata !1989, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %537, metadata !1975, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %536, metadata !1983, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %535, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %534, metadata !1981, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.label(metadata !2037), !dbg !2420
  br label %560, !dbg !2421

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2396
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !2039
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !2044
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2387
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !2048
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !2049
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2424
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2106
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2106
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1973, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %542, metadata !1999, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %541, metadata !1998, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %540, metadata !1992, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 %539, metadata !1990, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %538, metadata !1989, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %537, metadata !1975, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %536, metadata !1983, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %535, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %534, metadata !1981, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.label(metadata !2037), !dbg !2420
  %544 = and i8 %538, 1, !dbg !2421
  %545 = icmp ne i8 %544, 0, !dbg !2421
  %546 = and i8 %541, 1, !dbg !2421
  %547 = icmp eq i8 %546, 0, !dbg !2421
  %548 = and i1 %545, %547, !dbg !2421
  br i1 %548, label %549, label %560, !dbg !2421

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2425
  br i1 %550, label %551, label %553, !dbg !2429

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2425
  store i8 39, i8* %552, align 1, !dbg !2425, !tbaa !906
  br label %553, !dbg !2425

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2429
  call void @llvm.dbg.value(metadata i64 %554, metadata !1982, metadata !DIExpression()), !dbg !2039
  %555 = icmp ult i64 %554, %543, !dbg !2430
  br i1 %555, label %556, label %558, !dbg !2433

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2430
  store i8 39, i8* %557, align 1, !dbg !2430, !tbaa !906
  br label %558, !dbg !2430

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2433
  call void @llvm.dbg.value(metadata i64 %559, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !1989, metadata !DIExpression()), !dbg !2039
  br label %560, !dbg !2434

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
  call void @llvm.dbg.value(metadata i8 %569, metadata !1989, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %568, metadata !1982, metadata !DIExpression()), !dbg !2039
  %570 = icmp ult i64 %568, %561, !dbg !2435
  br i1 %570, label %571, label %573, !dbg !2438

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2435
  store i8 %563, i8* %572, align 1, !dbg !2435, !tbaa !906
  br label %573, !dbg !2435

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2438
  call void @llvm.dbg.value(metadata i64 %574, metadata !1982, metadata !DIExpression()), !dbg !2039
  %575 = icmp eq i8 %562, 0, !dbg !2439
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2441
  call void @llvm.dbg.value(metadata i8 %576, metadata !1991, metadata !DIExpression()), !dbg !2039
  br label %577, !dbg !2442

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2396
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !2039
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !2044
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2387
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !2048
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !2039
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !2050
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1973, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %584, metadata !1991, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %583, metadata !1990, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %582, metadata !1989, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %581, metadata !1975, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %580, metadata !1983, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %579, metadata !1982, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %578, metadata !1981, metadata !DIExpression()), !dbg !2039
  %586 = add i64 %578, 1, !dbg !2443
  call void @llvm.dbg.value(metadata i64 %586, metadata !1981, metadata !DIExpression()), !dbg !2039
  br label %121, !dbg !2444, !llvm.loop !2445

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2447
  %590 = and i1 %110, %589, !dbg !2449
  %591 = xor i1 %590, true, !dbg !2449
  %592 = or i1 %109, %591, !dbg !2449
  br i1 %592, label %593, label %635, !dbg !2449

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2450
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2450
  br i1 %597, label %598, label %607, !dbg !2450

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2452
  %600 = icmp eq i8 %599, 0, !dbg !2452
  br i1 %600, label %603, label %601, !dbg !2455

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2456
  br label %652, !dbg !2457

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2458
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2460
  br i1 %606, label %26, label %607, !dbg !2460

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2461
  %610 = and i1 %609, %608, !dbg !2463
  br i1 %610, label %611, label %626, !dbg !2463

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1984, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %123, metadata !1982, metadata !DIExpression()), !dbg !2039
  %612 = load i8, i8* %97, align 1, !dbg !2464, !tbaa !906
  %613 = icmp eq i8 %612, 0, !dbg !2467
  br i1 %613, label %626, label %614, !dbg !2467

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1984, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %617, metadata !1982, metadata !DIExpression()), !dbg !2039
  %618 = icmp ult i64 %617, %129, !dbg !2468
  br i1 %618, label %619, label %621, !dbg !2471

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2468
  store i8 %615, i8* %620, align 1, !dbg !2468, !tbaa !906
  br label %621, !dbg !2468

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2471
  call void @llvm.dbg.value(metadata i64 %622, metadata !1982, metadata !DIExpression()), !dbg !2039
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2472
  call void @llvm.dbg.value(metadata i8* %623, metadata !1984, metadata !DIExpression()), !dbg !2039
  %624 = load i8, i8* %623, align 1, !dbg !2464, !tbaa !906
  %625 = icmp eq i8 %624, 0, !dbg !2467
  br i1 %625, label %626, label %614, !dbg !2467, !llvm.loop !2473

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !2081
  call void @llvm.dbg.value(metadata i64 %627, metadata !1982, metadata !DIExpression()), !dbg !2039
  %628 = icmp ult i64 %627, %129, !dbg !2475
  br i1 %628, label %629, label %652, !dbg !2477

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2478
  store i8 0, i8* %630, align 1, !dbg !2479, !tbaa !906
  br label %652, !dbg !2478

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1973, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %637, metadata !1975, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.label(metadata !2038), !dbg !2480
  %633 = icmp eq i8 %101, 0, !dbg !2481
  %634 = select i1 %633, i32 2, i32 4, !dbg !2481
  br label %642, !dbg !2481

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1973, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %637, metadata !1975, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.label(metadata !2038), !dbg !2480
  %639 = icmp eq i32 %93, 2, !dbg !2483
  %640 = icmp eq i8 %636, 0, !dbg !2481
  %641 = select i1 %640, i32 2, i32 4, !dbg !2481
  br i1 %639, label %642, label %646, !dbg !2481

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2481

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1976, metadata !DIExpression()), !dbg !2039
  %650 = and i32 %5, -3, !dbg !2484
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2485
  br label %652, !dbg !2486

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2487
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2488 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2492, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i32 %1, metadata !2493, metadata !DIExpression()), !dbg !2496
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #26, !dbg !2497
  call void @llvm.dbg.value(metadata i8* %3, metadata !2494, metadata !DIExpression()), !dbg !2496
  %4 = icmp eq i8* %3, %0, !dbg !2498
  br i1 %4, label %5, label %72, !dbg !2500

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #26, !dbg !2501
  call void @llvm.dbg.value(metadata i8* %6, metadata !2495, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i8* %6, metadata !2502, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8* undef, metadata !2508, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8 85, metadata !2509, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8 84, metadata !2510, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8 70, metadata !2511, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8 45, metadata !2512, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8 56, metadata !2513, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8 0, metadata !2514, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8 0, metadata !2515, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8 0, metadata !2516, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8 0, metadata !2517, metadata !DIExpression()), !dbg !2518
  %7 = load i8, i8* %6, align 1, !dbg !2521, !tbaa !906
  %8 = and i8 %7, -33, !dbg !2521
  %9 = sext i8 %8 to i32, !dbg !2521
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2521

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2523, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8* undef, metadata !2528, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 84, metadata !2529, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 70, metadata !2530, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 45, metadata !2531, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 56, metadata !2532, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 0, metadata !2533, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 0, metadata !2534, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 0, metadata !2535, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 0, metadata !2536, metadata !DIExpression()), !dbg !2537
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2541
  %12 = load i8, i8* %11, align 1, !dbg !2541, !tbaa !906
  %13 = and i8 %12, -33, !dbg !2541
  %14 = icmp eq i8 %13, 84, !dbg !2541
  br i1 %14, label %15, label %69, !dbg !2541

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2543, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8* undef, metadata !2548, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 70, metadata !2549, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 45, metadata !2550, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 56, metadata !2551, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 0, metadata !2552, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 0, metadata !2553, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 0, metadata !2554, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 0, metadata !2555, metadata !DIExpression()), !dbg !2556
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2560
  %17 = load i8, i8* %16, align 1, !dbg !2560, !tbaa !906
  %18 = and i8 %17, -33, !dbg !2560
  %19 = icmp eq i8 %18, 70, !dbg !2560
  br i1 %19, label %20, label %69, !dbg !2560

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2562, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i8* undef, metadata !2567, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i8 45, metadata !2568, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i8 56, metadata !2569, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i8 0, metadata !2570, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i8 0, metadata !2571, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i8 0, metadata !2572, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i8 0, metadata !2573, metadata !DIExpression()), !dbg !2574
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2578
  %22 = load i8, i8* %21, align 1, !dbg !2578, !tbaa !906
  %23 = icmp eq i8 %22, 45, !dbg !2578
  br i1 %23, label %24, label %69, !dbg !2580

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2581, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8* undef, metadata !2586, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 56, metadata !2587, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 0, metadata !2588, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 0, metadata !2589, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 0, metadata !2590, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 0, metadata !2591, metadata !DIExpression()), !dbg !2592
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2596
  %26 = load i8, i8* %25, align 1, !dbg !2596, !tbaa !906
  %27 = icmp eq i8 %26, 56, !dbg !2596
  br i1 %27, label %28, label %69, !dbg !2598

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2599, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8* undef, metadata !2604, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 0, metadata !2605, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 0, metadata !2606, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 0, metadata !2607, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8 0, metadata !2608, metadata !DIExpression()), !dbg !2609
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2613
  %30 = load i8, i8* %29, align 1, !dbg !2613, !tbaa !906
  %31 = icmp eq i8 %30, 0, !dbg !2613
  br i1 %31, label %32, label %69, !dbg !2615

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2616, !tbaa !906
  %34 = icmp eq i8 %33, 96, !dbg !2617
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.83, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.84, i64 0, i64 0), !dbg !2616
  br label %72, !dbg !2618

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2523, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8* undef, metadata !2528, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8 66, metadata !2529, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8 49, metadata !2530, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8 56, metadata !2531, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8 48, metadata !2532, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8 51, metadata !2533, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8 48, metadata !2534, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8 0, metadata !2535, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8 0, metadata !2536, metadata !DIExpression()), !dbg !2619
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2623
  %38 = load i8, i8* %37, align 1, !dbg !2623, !tbaa !906
  %39 = and i8 %38, -33, !dbg !2623
  %40 = icmp eq i8 %39, 66, !dbg !2623
  br i1 %40, label %41, label %69, !dbg !2623

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2543, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8* undef, metadata !2548, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8 49, metadata !2549, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8 56, metadata !2550, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8 48, metadata !2551, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8 51, metadata !2552, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8 48, metadata !2553, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8 0, metadata !2554, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8 0, metadata !2555, metadata !DIExpression()), !dbg !2624
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2626
  %43 = load i8, i8* %42, align 1, !dbg !2626, !tbaa !906
  %44 = icmp eq i8 %43, 49, !dbg !2626
  br i1 %44, label %45, label %69, !dbg !2627

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2562, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8* undef, metadata !2567, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 56, metadata !2568, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 48, metadata !2569, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 51, metadata !2570, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 48, metadata !2571, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 0, metadata !2572, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 0, metadata !2573, metadata !DIExpression()), !dbg !2628
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2630
  %47 = load i8, i8* %46, align 1, !dbg !2630, !tbaa !906
  %48 = icmp eq i8 %47, 56, !dbg !2630
  br i1 %48, label %49, label %69, !dbg !2631

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2581, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8* undef, metadata !2586, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 48, metadata !2587, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 51, metadata !2588, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 48, metadata !2589, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 0, metadata !2590, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 0, metadata !2591, metadata !DIExpression()), !dbg !2632
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2634
  %51 = load i8, i8* %50, align 1, !dbg !2634, !tbaa !906
  %52 = icmp eq i8 %51, 48, !dbg !2634
  br i1 %52, label %53, label %69, !dbg !2635

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2599, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i8* undef, metadata !2604, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i8 51, metadata !2605, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i8 48, metadata !2606, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i8 0, metadata !2607, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i8 0, metadata !2608, metadata !DIExpression()), !dbg !2636
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2638
  %55 = load i8, i8* %54, align 1, !dbg !2638, !tbaa !906
  %56 = icmp eq i8 %55, 51, !dbg !2638
  br i1 %56, label %57, label %69, !dbg !2639

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2640, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8* undef, metadata !2645, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8 48, metadata !2646, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8 0, metadata !2647, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8 0, metadata !2648, metadata !DIExpression()), !dbg !2649
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2653
  %59 = load i8, i8* %58, align 1, !dbg !2653, !tbaa !906
  %60 = icmp eq i8 %59, 48, !dbg !2653
  br i1 %60, label %61, label %69, !dbg !2655

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2656, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8* undef, metadata !2661, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 0, metadata !2662, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 0, metadata !2663, metadata !DIExpression()), !dbg !2664
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2668
  %63 = load i8, i8* %62, align 1, !dbg !2668, !tbaa !906
  %64 = icmp eq i8 %63, 0, !dbg !2668
  br i1 %64, label %65, label %69, !dbg !2670

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2671, !tbaa !906
  %67 = icmp eq i8 %66, 96, !dbg !2672
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.85, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.86, i64 0, i64 0), !dbg !2671
  br label %72, !dbg !2673

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2674
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), !dbg !2675
  br label %72, !dbg !2676

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2496
  ret i8* %73, !dbg !2677
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2678 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2682 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2688 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2692, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 %1, metadata !2693, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2694, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8* %0, metadata !2696, metadata !DIExpression()) #26, !dbg !2709
  call void @llvm.dbg.value(metadata i64 %1, metadata !2701, metadata !DIExpression()) #26, !dbg !2709
  call void @llvm.dbg.value(metadata i64* null, metadata !2702, metadata !DIExpression()) #26, !dbg !2709
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2703, metadata !DIExpression()) #26, !dbg !2709
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2711
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2711
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2704, metadata !DIExpression()) #26, !dbg !2709
  %6 = tail call i32* @__errno_location() #30, !dbg !2712
  %7 = load i32, i32* %6, align 4, !dbg !2712, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %7, metadata !2705, metadata !DIExpression()) #26, !dbg !2709
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2713
  %9 = load i32, i32* %8, align 4, !dbg !2713, !tbaa !1916
  %10 = or i32 %9, 1, !dbg !2714
  call void @llvm.dbg.value(metadata i32 %10, metadata !2706, metadata !DIExpression()) #26, !dbg !2709
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2715
  %12 = load i32, i32* %11, align 8, !dbg !2715, !tbaa !1865
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2716
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2717
  %15 = load i8*, i8** %14, align 8, !dbg !2717, !tbaa !1938
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2718
  %17 = load i8*, i8** %16, align 8, !dbg !2718, !tbaa !1941
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #26, !dbg !2719
  %19 = add i64 %18, 1, !dbg !2720
  call void @llvm.dbg.value(metadata i64 %19, metadata !2707, metadata !DIExpression()) #26, !dbg !2709
  call void @llvm.dbg.value(metadata i64 %19, metadata !2721, metadata !DIExpression()) #26, !dbg !2726
  %20 = tail call noalias i8* @xmalloc(i64 %19) #26, !dbg !2728
  call void @llvm.dbg.value(metadata i8* %20, metadata !2708, metadata !DIExpression()) #26, !dbg !2709
  %21 = load i32, i32* %11, align 8, !dbg !2729, !tbaa !1865
  %22 = load i8*, i8** %14, align 8, !dbg !2730, !tbaa !1938
  %23 = load i8*, i8** %16, align 8, !dbg !2731, !tbaa !1941
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #26, !dbg !2732
  store i32 %7, i32* %6, align 4, !dbg !2733, !tbaa !811
  ret i8* %20, !dbg !2734
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2697 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2696, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64 %1, metadata !2701, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64* %2, metadata !2702, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2703, metadata !DIExpression()), !dbg !2735
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2736
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2736
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2704, metadata !DIExpression()), !dbg !2735
  %7 = tail call i32* @__errno_location() #30, !dbg !2737
  %8 = load i32, i32* %7, align 4, !dbg !2737, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %8, metadata !2705, metadata !DIExpression()), !dbg !2735
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2738
  %10 = load i32, i32* %9, align 4, !dbg !2738, !tbaa !1916
  %11 = icmp eq i64* %2, null, !dbg !2739
  %12 = zext i1 %11 to i32, !dbg !2739
  %13 = or i32 %10, %12, !dbg !2740
  call void @llvm.dbg.value(metadata i32 %13, metadata !2706, metadata !DIExpression()), !dbg !2735
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2741
  %15 = load i32, i32* %14, align 8, !dbg !2741, !tbaa !1865
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2742
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2743
  %18 = load i8*, i8** %17, align 8, !dbg !2743, !tbaa !1938
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2744
  %20 = load i8*, i8** %19, align 8, !dbg !2744, !tbaa !1941
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2745
  %22 = add i64 %21, 1, !dbg !2746
  call void @llvm.dbg.value(metadata i64 %22, metadata !2707, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64 %22, metadata !2721, metadata !DIExpression()) #26, !dbg !2747
  %23 = tail call noalias i8* @xmalloc(i64 %22) #26, !dbg !2749
  call void @llvm.dbg.value(metadata i8* %23, metadata !2708, metadata !DIExpression()), !dbg !2735
  %24 = load i32, i32* %14, align 8, !dbg !2750, !tbaa !1865
  %25 = load i8*, i8** %17, align 8, !dbg !2751, !tbaa !1938
  %26 = load i8*, i8** %19, align 8, !dbg !2752, !tbaa !1941
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2753
  store i32 %8, i32* %7, align 4, !dbg !2754, !tbaa !811
  br i1 %11, label %29, label %28, !dbg !2755

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2756, !tbaa !897
  br label %29, !dbg !2758

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2759
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2760 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2764, !tbaa !635
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2762, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i32 1, metadata !2763, metadata !DIExpression()), !dbg !2765
  %2 = load i32, i32* @nslots, align 4, !dbg !2766, !tbaa !811
  %3 = icmp sgt i32 %2, 1, !dbg !2769
  br i1 %3, label %4, label %12, !dbg !2770

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2769
  br label %6, !dbg !2770

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2763, metadata !DIExpression()), !dbg !2765
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2771
  %9 = load i8*, i8** %8, align 8, !dbg !2771, !tbaa !2772
  tail call void @free(i8* %9) #26, !dbg !2774
  %10 = add nuw nsw i64 %7, 1, !dbg !2775
  call void @llvm.dbg.value(metadata i64 %10, metadata !2763, metadata !DIExpression()), !dbg !2765
  %11 = icmp eq i64 %10, %5, !dbg !2769
  br i1 %11, label %12, label %6, !dbg !2770, !llvm.loop !2776

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2778
  %14 = load i8*, i8** %13, align 8, !dbg !2778, !tbaa !2772
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2780
  br i1 %15, label %17, label %16, !dbg !2781

16:                                               ; preds = %12
  tail call void @free(i8* %14) #26, !dbg !2782
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2784, !tbaa !2785
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2786, !tbaa !2772
  br label %17, !dbg !2787

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2788
  br i1 %18, label %21, label %19, !dbg !2790

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2791
  tail call void @free(i8* %20) #26, !dbg !2793
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2794, !tbaa !635
  br label %21, !dbg !2795

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2796, !tbaa !811
  ret void, !dbg !2797
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2798 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2800, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i8* %1, metadata !2801, metadata !DIExpression()), !dbg !2802
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2803
  ret i8* %3, !dbg !2804
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2805 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2809, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i8* %1, metadata !2810, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i64 %2, metadata !2811, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2812, metadata !DIExpression()), !dbg !2824
  %5 = tail call i32* @__errno_location() #30, !dbg !2825
  %6 = load i32, i32* %5, align 4, !dbg !2825, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %6, metadata !2813, metadata !DIExpression()), !dbg !2824
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2826, !tbaa !635
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2814, metadata !DIExpression()), !dbg !2824
  %8 = icmp slt i32 %0, 0, !dbg !2827
  br i1 %8, label %9, label %10, !dbg !2829

9:                                                ; preds = %4
  tail call void @abort() #28, !dbg !2830
  unreachable, !dbg !2830

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2831, !tbaa !811
  %12 = icmp sgt i32 %11, %0, !dbg !2832
  br i1 %12, label %34, label %13, !dbg !2833

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2834
  call void @llvm.dbg.value(metadata i1 %14, metadata !2815, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2835
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2818, metadata !DIExpression()), !dbg !2835
  %15 = icmp eq i32 %0, 2147483647, !dbg !2836
  br i1 %15, label %16, label %17, !dbg !2838

16:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !2839
  unreachable, !dbg !2839

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2840
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2840
  %20 = add nuw nsw i32 %0, 1, !dbg !2841
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2842
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #26, !dbg !2843
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2843
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2814, metadata !DIExpression()), !dbg !2824
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2844, !tbaa !635
  br i1 %14, label %25, label %26, !dbg !2845

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2846, !tbaa.struct !2848
  br label %26, !dbg !2849

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2850, !tbaa !811
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2851
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2852
  %31 = sub nsw i32 %20, %27, !dbg !2853
  %32 = sext i32 %31 to i64, !dbg !2854
  %33 = shl nsw i64 %32, 4, !dbg !2855
  call void @llvm.dbg.value(metadata i8* %30, metadata !2249, metadata !DIExpression()) #26, !dbg !2856
  call void @llvm.dbg.value(metadata i32 0, metadata !2254, metadata !DIExpression()) #26, !dbg !2856
  call void @llvm.dbg.value(metadata i64 %33, metadata !2255, metadata !DIExpression()) #26, !dbg !2856
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #26, !dbg !2858
  store i32 %20, i32* @nslots, align 4, !dbg !2859, !tbaa !811
  br label %34, !dbg !2860

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2824
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2814, metadata !DIExpression()), !dbg !2824
  %36 = zext i32 %0 to i64, !dbg !2861
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2862
  %38 = load i64, i64* %37, align 8, !dbg !2862, !tbaa !2785
  call void @llvm.dbg.value(metadata i64 %38, metadata !2819, metadata !DIExpression()), !dbg !2863
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2864
  %40 = load i8*, i8** %39, align 8, !dbg !2864, !tbaa !2772
  call void @llvm.dbg.value(metadata i8* %40, metadata !2821, metadata !DIExpression()), !dbg !2863
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2865
  %42 = load i32, i32* %41, align 4, !dbg !2865, !tbaa !1916
  %43 = or i32 %42, 1, !dbg !2866
  call void @llvm.dbg.value(metadata i32 %43, metadata !2822, metadata !DIExpression()), !dbg !2863
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2867
  %45 = load i32, i32* %44, align 8, !dbg !2867, !tbaa !1865
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2868
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2869
  %48 = load i8*, i8** %47, align 8, !dbg !2869, !tbaa !1938
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2870
  %50 = load i8*, i8** %49, align 8, !dbg !2870, !tbaa !1941
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %51, metadata !2823, metadata !DIExpression()), !dbg !2863
  %52 = icmp ugt i64 %38, %51, !dbg !2872
  br i1 %52, label %63, label %53, !dbg !2874

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2875
  call void @llvm.dbg.value(metadata i64 %54, metadata !2819, metadata !DIExpression()), !dbg !2863
  store i64 %54, i64* %37, align 8, !dbg !2877, !tbaa !2785
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2878
  br i1 %55, label %57, label %56, !dbg !2880

56:                                               ; preds = %53
  tail call void @free(i8* %40) #26, !dbg !2881
  br label %57, !dbg !2881

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2721, metadata !DIExpression()) #26, !dbg !2882
  %58 = tail call noalias i8* @xmalloc(i64 %54) #26, !dbg !2884
  call void @llvm.dbg.value(metadata i8* %58, metadata !2821, metadata !DIExpression()), !dbg !2863
  store i8* %58, i8** %39, align 8, !dbg !2885, !tbaa !2772
  %59 = load i32, i32* %44, align 8, !dbg !2886, !tbaa !1865
  %60 = load i8*, i8** %47, align 8, !dbg !2887, !tbaa !1938
  %61 = load i8*, i8** %49, align 8, !dbg !2888, !tbaa !1941
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2889
  br label %63, !dbg !2890

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2863
  call void @llvm.dbg.value(metadata i8* %64, metadata !2821, metadata !DIExpression()), !dbg !2863
  store i32 %6, i32* %5, align 4, !dbg !2891, !tbaa !811
  ret i8* %64, !dbg !2892
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2893 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2897, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8* %1, metadata !2898, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %2, metadata !2899, metadata !DIExpression()), !dbg !2900
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2901
  ret i8* %4, !dbg !2902
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2903 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2905, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i32 0, metadata !2800, metadata !DIExpression()) #26, !dbg !2907
  call void @llvm.dbg.value(metadata i8* %0, metadata !2801, metadata !DIExpression()) #26, !dbg !2907
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2909
  ret i8* %2, !dbg !2910
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2911 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2915, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i64 %1, metadata !2916, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i32 0, metadata !2897, metadata !DIExpression()) #26, !dbg !2918
  call void @llvm.dbg.value(metadata i8* %0, metadata !2898, metadata !DIExpression()) #26, !dbg !2918
  call void @llvm.dbg.value(metadata i64 %1, metadata !2899, metadata !DIExpression()) #26, !dbg !2918
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2920
  ret i8* %3, !dbg !2921
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2922 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2926, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i32 %1, metadata !2927, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8* %2, metadata !2928, metadata !DIExpression()), !dbg !2930
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2931
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2931
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2929, metadata !DIExpression()), !dbg !2932
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2933), !dbg !2936
  call void @llvm.dbg.value(metadata i32 %1, metadata !2937, metadata !DIExpression()) #26, !dbg !2943
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2942, metadata !DIExpression()) #26, !dbg !2945
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !2945, !alias.scope !2933
  %6 = icmp eq i32 %1, 10, !dbg !2946
  br i1 %6, label %7, label %8, !dbg !2948

7:                                                ; preds = %3
  tail call void @abort() #28, !dbg !2949, !noalias !2933
  unreachable, !dbg !2949

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2950
  store i32 %1, i32* %9, align 8, !dbg !2951, !tbaa !1865, !alias.scope !2933
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2952
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2953
  ret i8* %10, !dbg !2954
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2955 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2959, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i32 %1, metadata !2960, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i8* %2, metadata !2961, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %3, metadata !2962, metadata !DIExpression()), !dbg !2964
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2965
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2965
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2963, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2967), !dbg !2970
  call void @llvm.dbg.value(metadata i32 %1, metadata !2937, metadata !DIExpression()) #26, !dbg !2971
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2942, metadata !DIExpression()) #26, !dbg !2973
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #26, !dbg !2973, !alias.scope !2967
  %7 = icmp eq i32 %1, 10, !dbg !2974
  br i1 %7, label %8, label %9, !dbg !2975

8:                                                ; preds = %4
  tail call void @abort() #28, !dbg !2976, !noalias !2967
  unreachable, !dbg !2976

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2977
  store i32 %1, i32* %10, align 8, !dbg !2978, !tbaa !1865, !alias.scope !2967
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2979
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2980
  ret i8* %11, !dbg !2981
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2982 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2986, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i8* %1, metadata !2987, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i32 0, metadata !2926, metadata !DIExpression()) #26, !dbg !2989
  call void @llvm.dbg.value(metadata i32 %0, metadata !2927, metadata !DIExpression()) #26, !dbg !2989
  call void @llvm.dbg.value(metadata i8* %1, metadata !2928, metadata !DIExpression()) #26, !dbg !2989
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2991
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2991
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2929, metadata !DIExpression()) #26, !dbg !2992
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2993) #26, !dbg !2996
  call void @llvm.dbg.value(metadata i32 %0, metadata !2937, metadata !DIExpression()) #26, !dbg !2997
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2942, metadata !DIExpression()) #26, !dbg !2999
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #26, !dbg !2999, !alias.scope !2993
  %5 = icmp eq i32 %0, 10, !dbg !3000
  br i1 %5, label %6, label %7, !dbg !3001

6:                                                ; preds = %2
  tail call void @abort() #28, !dbg !3002, !noalias !2993
  unreachable, !dbg !3002

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3003
  store i32 %0, i32* %8, align 8, !dbg !3004, !tbaa !1865, !alias.scope !2993
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !3005
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !3006
  ret i8* %9, !dbg !3007
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3008 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3012, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8* %1, metadata !3013, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i64 %2, metadata !3014, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i32 0, metadata !2959, metadata !DIExpression()) #26, !dbg !3016
  call void @llvm.dbg.value(metadata i32 %0, metadata !2960, metadata !DIExpression()) #26, !dbg !3016
  call void @llvm.dbg.value(metadata i8* %1, metadata !2961, metadata !DIExpression()) #26, !dbg !3016
  call void @llvm.dbg.value(metadata i64 %2, metadata !2962, metadata !DIExpression()) #26, !dbg !3016
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3018
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !3018
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2963, metadata !DIExpression()) #26, !dbg !3019
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3020) #26, !dbg !3023
  call void @llvm.dbg.value(metadata i32 %0, metadata !2937, metadata !DIExpression()) #26, !dbg !3024
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2942, metadata !DIExpression()) #26, !dbg !3026
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !3026, !alias.scope !3020
  %6 = icmp eq i32 %0, 10, !dbg !3027
  br i1 %6, label %7, label %8, !dbg !3028

7:                                                ; preds = %3
  tail call void @abort() #28, !dbg !3029, !noalias !3020
  unreachable, !dbg !3029

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3030
  store i32 %0, i32* %9, align 8, !dbg !3031, !tbaa !1865, !alias.scope !3020
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #26, !dbg !3032
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !3033
  ret i8* %10, !dbg !3034
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3035 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3039, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %1, metadata !3040, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8 %2, metadata !3041, metadata !DIExpression()), !dbg !3043
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3044
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !3044
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3042, metadata !DIExpression()), !dbg !3045
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3046, !tbaa.struct !3047
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1883, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i8 %2, metadata !1884, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i32 1, metadata !1885, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i8 %2, metadata !1886, metadata !DIExpression()), !dbg !3048
  %6 = lshr i8 %2, 5, !dbg !3050
  %7 = zext i8 %6 to i64, !dbg !3050
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3051
  call void @llvm.dbg.value(metadata i32* %8, metadata !1887, metadata !DIExpression()), !dbg !3048
  %9 = and i8 %2, 31, !dbg !3052
  %10 = zext i8 %9 to i32, !dbg !3052
  call void @llvm.dbg.value(metadata i32 %10, metadata !1889, metadata !DIExpression()), !dbg !3048
  %11 = load i32, i32* %8, align 4, !dbg !3053, !tbaa !811
  %12 = lshr i32 %11, %10, !dbg !3054
  %13 = and i32 %12, 1, !dbg !3055
  call void @llvm.dbg.value(metadata i32 %13, metadata !1890, metadata !DIExpression()), !dbg !3048
  %14 = xor i32 %13, 1, !dbg !3056
  %15 = shl i32 %14, %10, !dbg !3057
  %16 = xor i32 %15, %11, !dbg !3058
  store i32 %16, i32* %8, align 4, !dbg !3058, !tbaa !811
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3059
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !3060
  ret i8* %17, !dbg !3061
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3062 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3066, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i8 %1, metadata !3067, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i8* %0, metadata !3039, metadata !DIExpression()) #26, !dbg !3069
  call void @llvm.dbg.value(metadata i64 -1, metadata !3040, metadata !DIExpression()) #26, !dbg !3069
  call void @llvm.dbg.value(metadata i8 %1, metadata !3041, metadata !DIExpression()) #26, !dbg !3069
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3071
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !3071
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3042, metadata !DIExpression()) #26, !dbg !3072
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !3073, !tbaa.struct !3047
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1883, metadata !DIExpression()) #26, !dbg !3074
  call void @llvm.dbg.value(metadata i8 %1, metadata !1884, metadata !DIExpression()) #26, !dbg !3074
  call void @llvm.dbg.value(metadata i32 1, metadata !1885, metadata !DIExpression()) #26, !dbg !3074
  call void @llvm.dbg.value(metadata i8 %1, metadata !1886, metadata !DIExpression()) #26, !dbg !3074
  %5 = lshr i8 %1, 5, !dbg !3076
  %6 = zext i8 %5 to i64, !dbg !3076
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3077
  call void @llvm.dbg.value(metadata i32* %7, metadata !1887, metadata !DIExpression()) #26, !dbg !3074
  %8 = and i8 %1, 31, !dbg !3078
  %9 = zext i8 %8 to i32, !dbg !3078
  call void @llvm.dbg.value(metadata i32 %9, metadata !1889, metadata !DIExpression()) #26, !dbg !3074
  %10 = load i32, i32* %7, align 4, !dbg !3079, !tbaa !811
  %11 = lshr i32 %10, %9, !dbg !3080
  %12 = and i32 %11, 1, !dbg !3081
  call void @llvm.dbg.value(metadata i32 %12, metadata !1890, metadata !DIExpression()) #26, !dbg !3074
  %13 = xor i32 %12, 1, !dbg !3082
  %14 = shl i32 %13, %9, !dbg !3083
  %15 = xor i32 %14, %10, !dbg !3084
  store i32 %15, i32* %7, align 4, !dbg !3084, !tbaa !811
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !3085
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !3086
  ret i8* %16, !dbg !3087
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3088 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3090, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8* %0, metadata !3066, metadata !DIExpression()) #26, !dbg !3092
  call void @llvm.dbg.value(metadata i8 58, metadata !3067, metadata !DIExpression()) #26, !dbg !3092
  call void @llvm.dbg.value(metadata i8* %0, metadata !3039, metadata !DIExpression()) #26, !dbg !3094
  call void @llvm.dbg.value(metadata i64 -1, metadata !3040, metadata !DIExpression()) #26, !dbg !3094
  call void @llvm.dbg.value(metadata i8 58, metadata !3041, metadata !DIExpression()) #26, !dbg !3094
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3096
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #26, !dbg !3096
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3042, metadata !DIExpression()) #26, !dbg !3097
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !3098, !tbaa.struct !3047
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1883, metadata !DIExpression()) #26, !dbg !3099
  call void @llvm.dbg.value(metadata i8 58, metadata !1884, metadata !DIExpression()) #26, !dbg !3099
  call void @llvm.dbg.value(metadata i32 1, metadata !1885, metadata !DIExpression()) #26, !dbg !3099
  call void @llvm.dbg.value(metadata i8 58, metadata !1886, metadata !DIExpression()) #26, !dbg !3099
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3101
  call void @llvm.dbg.value(metadata i32* %4, metadata !1887, metadata !DIExpression()) #26, !dbg !3099
  call void @llvm.dbg.value(metadata i32 26, metadata !1889, metadata !DIExpression()) #26, !dbg !3099
  %5 = load i32, i32* %4, align 4, !dbg !3102, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %5, metadata !1890, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !3099
  %6 = or i32 %5, 67108864, !dbg !3103
  store i32 %6, i32* %4, align 4, !dbg !3103, !tbaa !811
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #26, !dbg !3104
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #26, !dbg !3105
  ret i8* %7, !dbg !3106
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3107 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3109, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 %1, metadata !3110, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i8* %0, metadata !3039, metadata !DIExpression()) #26, !dbg !3112
  call void @llvm.dbg.value(metadata i64 %1, metadata !3040, metadata !DIExpression()) #26, !dbg !3112
  call void @llvm.dbg.value(metadata i8 58, metadata !3041, metadata !DIExpression()) #26, !dbg !3112
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3114
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !3114
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3042, metadata !DIExpression()) #26, !dbg !3115
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !3116, !tbaa.struct !3047
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1883, metadata !DIExpression()) #26, !dbg !3117
  call void @llvm.dbg.value(metadata i8 58, metadata !1884, metadata !DIExpression()) #26, !dbg !3117
  call void @llvm.dbg.value(metadata i32 1, metadata !1885, metadata !DIExpression()) #26, !dbg !3117
  call void @llvm.dbg.value(metadata i8 58, metadata !1886, metadata !DIExpression()) #26, !dbg !3117
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3119
  call void @llvm.dbg.value(metadata i32* %5, metadata !1887, metadata !DIExpression()) #26, !dbg !3117
  call void @llvm.dbg.value(metadata i32 26, metadata !1889, metadata !DIExpression()) #26, !dbg !3117
  %6 = load i32, i32* %5, align 4, !dbg !3120, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %6, metadata !1890, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !3117
  %7 = or i32 %6, 67108864, !dbg !3121
  store i32 %7, i32* %5, align 4, !dbg !3121, !tbaa !811
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #26, !dbg !3122
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !3123
  ret i8* %8, !dbg !3124
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3125 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2942, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3131
  call void @llvm.dbg.value(metadata i32 %0, metadata !3127, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i32 %1, metadata !3128, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8* %2, metadata !3129, metadata !DIExpression()), !dbg !3133
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3134
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !3134
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3130, metadata !DIExpression()), !dbg !3135
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3136
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3137), !dbg !3136
  call void @llvm.dbg.value(metadata i32 %1, metadata !2937, metadata !DIExpression()) #26, !dbg !3140
  call void @llvm.dbg.value(metadata i32 0, metadata !2942, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3140
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3131, !alias.scope !3137
  %8 = icmp eq i32 %1, 10, !dbg !3141
  br i1 %8, label %9, label %10, !dbg !3142

9:                                                ; preds = %3
  tail call void @abort() #28, !dbg !3143, !noalias !3137
  unreachable, !dbg !3143

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2942, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3140
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3136
  store i32 %1, i32* %11, align 8, !dbg !3136, !tbaa.struct !3047
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3136
  %13 = bitcast i32* %12 to i8*, !dbg !3136
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3136, !tbaa.struct !3144
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3136
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1883, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i8 58, metadata !1884, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i32 1, metadata !1885, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i8 58, metadata !1886, metadata !DIExpression()), !dbg !3145
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3147
  call void @llvm.dbg.value(metadata i32* %14, metadata !1887, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i32 26, metadata !1889, metadata !DIExpression()), !dbg !3145
  %15 = load i32, i32* %14, align 4, !dbg !3148, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %15, metadata !1890, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3145
  %16 = or i32 %15, 67108864, !dbg !3149
  store i32 %16, i32* %14, align 4, !dbg !3149, !tbaa !811
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3150
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !3151
  ret i8* %17, !dbg !3152
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3153 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3157, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i8* %1, metadata !3158, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i8* %2, metadata !3159, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i8* %3, metadata !3160, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i32 %0, metadata !3162, metadata !DIExpression()) #26, !dbg !3172
  call void @llvm.dbg.value(metadata i8* %1, metadata !3167, metadata !DIExpression()) #26, !dbg !3172
  call void @llvm.dbg.value(metadata i8* %2, metadata !3168, metadata !DIExpression()) #26, !dbg !3172
  call void @llvm.dbg.value(metadata i8* %3, metadata !3169, metadata !DIExpression()) #26, !dbg !3172
  call void @llvm.dbg.value(metadata i64 -1, metadata !3170, metadata !DIExpression()) #26, !dbg !3172
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3174
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !3174
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3171, metadata !DIExpression()) #26, !dbg !3175
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !3176, !tbaa.struct !3047
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1923, metadata !DIExpression()) #26, !dbg !3177
  call void @llvm.dbg.value(metadata i8* %1, metadata !1924, metadata !DIExpression()) #26, !dbg !3177
  call void @llvm.dbg.value(metadata i8* %2, metadata !1925, metadata !DIExpression()) #26, !dbg !3177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1923, metadata !DIExpression()) #26, !dbg !3177
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3179
  store i32 10, i32* %7, align 8, !dbg !3180, !tbaa !1865
  %8 = icmp ne i8* %1, null, !dbg !3181
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3182
  br i1 %10, label %12, label %11, !dbg !3182

11:                                               ; preds = %4
  tail call void @abort() #28, !dbg !3183
  unreachable, !dbg !3183

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3184
  store i8* %1, i8** %13, align 8, !dbg !3185, !tbaa !1938
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3186
  store i8* %2, i8** %14, align 8, !dbg !3187, !tbaa !1941
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #26, !dbg !3188
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !3189
  ret i8* %15, !dbg !3190
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3163 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3162, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i8* %1, metadata !3167, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i8* %2, metadata !3168, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i8* %3, metadata !3169, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i64 %4, metadata !3170, metadata !DIExpression()), !dbg !3191
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3192
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #26, !dbg !3192
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3171, metadata !DIExpression()), !dbg !3193
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3194, !tbaa.struct !3047
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1923, metadata !DIExpression()) #26, !dbg !3195
  call void @llvm.dbg.value(metadata i8* %1, metadata !1924, metadata !DIExpression()) #26, !dbg !3195
  call void @llvm.dbg.value(metadata i8* %2, metadata !1925, metadata !DIExpression()) #26, !dbg !3195
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1923, metadata !DIExpression()) #26, !dbg !3195
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3197
  store i32 10, i32* %8, align 8, !dbg !3198, !tbaa !1865
  %9 = icmp ne i8* %1, null, !dbg !3199
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3200
  br i1 %11, label %13, label %12, !dbg !3200

12:                                               ; preds = %5
  tail call void @abort() #28, !dbg !3201
  unreachable, !dbg !3201

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3202
  store i8* %1, i8** %14, align 8, !dbg !3203, !tbaa !1938
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3204
  store i8* %2, i8** %15, align 8, !dbg !3205, !tbaa !1941
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3206
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #26, !dbg !3207
  ret i8* %16, !dbg !3208
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3209 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3213, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i8* %1, metadata !3214, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i8* %2, metadata !3215, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 0, metadata !3157, metadata !DIExpression()) #26, !dbg !3217
  call void @llvm.dbg.value(metadata i8* %0, metadata !3158, metadata !DIExpression()) #26, !dbg !3217
  call void @llvm.dbg.value(metadata i8* %1, metadata !3159, metadata !DIExpression()) #26, !dbg !3217
  call void @llvm.dbg.value(metadata i8* %2, metadata !3160, metadata !DIExpression()) #26, !dbg !3217
  call void @llvm.dbg.value(metadata i32 0, metadata !3162, metadata !DIExpression()) #26, !dbg !3219
  call void @llvm.dbg.value(metadata i8* %0, metadata !3167, metadata !DIExpression()) #26, !dbg !3219
  call void @llvm.dbg.value(metadata i8* %1, metadata !3168, metadata !DIExpression()) #26, !dbg !3219
  call void @llvm.dbg.value(metadata i8* %2, metadata !3169, metadata !DIExpression()) #26, !dbg !3219
  call void @llvm.dbg.value(metadata i64 -1, metadata !3170, metadata !DIExpression()) #26, !dbg !3219
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3221
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !3221
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3171, metadata !DIExpression()) #26, !dbg !3222
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !3223, !tbaa.struct !3047
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1923, metadata !DIExpression()) #26, !dbg !3224
  call void @llvm.dbg.value(metadata i8* %0, metadata !1924, metadata !DIExpression()) #26, !dbg !3224
  call void @llvm.dbg.value(metadata i8* %1, metadata !1925, metadata !DIExpression()) #26, !dbg !3224
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1923, metadata !DIExpression()) #26, !dbg !3224
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3226
  store i32 10, i32* %6, align 8, !dbg !3227, !tbaa !1865
  %7 = icmp ne i8* %0, null, !dbg !3228
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3229
  br i1 %9, label %11, label %10, !dbg !3229

10:                                               ; preds = %3
  tail call void @abort() #28, !dbg !3230
  unreachable, !dbg !3230

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3231
  store i8* %0, i8** %12, align 8, !dbg !3232, !tbaa !1938
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3233
  store i8* %1, i8** %13, align 8, !dbg !3234, !tbaa !1941
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #26, !dbg !3235
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !3236
  ret i8* %14, !dbg !3237
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3238 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3242, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i8* %1, metadata !3243, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i8* %2, metadata !3244, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %3, metadata !3245, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i32 0, metadata !3162, metadata !DIExpression()) #26, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %0, metadata !3167, metadata !DIExpression()) #26, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %1, metadata !3168, metadata !DIExpression()) #26, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %2, metadata !3169, metadata !DIExpression()) #26, !dbg !3247
  call void @llvm.dbg.value(metadata i64 %3, metadata !3170, metadata !DIExpression()) #26, !dbg !3247
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3249
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !3249
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3171, metadata !DIExpression()) #26, !dbg !3250
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !3251, !tbaa.struct !3047
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1923, metadata !DIExpression()) #26, !dbg !3252
  call void @llvm.dbg.value(metadata i8* %0, metadata !1924, metadata !DIExpression()) #26, !dbg !3252
  call void @llvm.dbg.value(metadata i8* %1, metadata !1925, metadata !DIExpression()) #26, !dbg !3252
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1923, metadata !DIExpression()) #26, !dbg !3252
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3254
  store i32 10, i32* %7, align 8, !dbg !3255, !tbaa !1865
  %8 = icmp ne i8* %0, null, !dbg !3256
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3257
  br i1 %10, label %12, label %11, !dbg !3257

11:                                               ; preds = %4
  tail call void @abort() #28, !dbg !3258
  unreachable, !dbg !3258

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3259
  store i8* %0, i8** %13, align 8, !dbg !3260, !tbaa !1938
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3261
  store i8* %1, i8** %14, align 8, !dbg !3262, !tbaa !1941
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #26, !dbg !3263
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !3264
  ret i8* %15, !dbg !3265
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3266 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3270, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i8* %1, metadata !3271, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i64 %2, metadata !3272, metadata !DIExpression()), !dbg !3273
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3274
  ret i8* %4, !dbg !3275
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3276 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3280, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %1, metadata !3281, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i32 0, metadata !3270, metadata !DIExpression()) #26, !dbg !3283
  call void @llvm.dbg.value(metadata i8* %0, metadata !3271, metadata !DIExpression()) #26, !dbg !3283
  call void @llvm.dbg.value(metadata i64 %1, metadata !3272, metadata !DIExpression()) #26, !dbg !3283
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !3285
  ret i8* %3, !dbg !3286
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3287 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3291, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %1, metadata !3292, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i32 %0, metadata !3270, metadata !DIExpression()) #26, !dbg !3294
  call void @llvm.dbg.value(metadata i8* %1, metadata !3271, metadata !DIExpression()) #26, !dbg !3294
  call void @llvm.dbg.value(metadata i64 -1, metadata !3272, metadata !DIExpression()) #26, !dbg !3294
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !3296
  ret i8* %3, !dbg !3297
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3298 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3302, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i32 0, metadata !3291, metadata !DIExpression()) #26, !dbg !3304
  call void @llvm.dbg.value(metadata i8* %0, metadata !3292, metadata !DIExpression()) #26, !dbg !3304
  call void @llvm.dbg.value(metadata i32 0, metadata !3270, metadata !DIExpression()) #26, !dbg !3306
  call void @llvm.dbg.value(metadata i8* %0, metadata !3271, metadata !DIExpression()) #26, !dbg !3306
  call void @llvm.dbg.value(metadata i64 -1, metadata !3272, metadata !DIExpression()) #26, !dbg !3306
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !3308
  ret i8* %2, !dbg !3309
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3310 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3349, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i8* %1, metadata !3350, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i8* %2, metadata !3351, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i8* %3, metadata !3352, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i8** %4, metadata !3353, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i64 %5, metadata !3354, metadata !DIExpression()), !dbg !3355
  %7 = icmp eq i8* %1, null, !dbg !3356
  br i1 %7, label %10, label %8, !dbg !3358

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #26, !dbg !3359
  br label %12, !dbg !3359

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.94, i64 0, i64 0), i8* %2, i8* %3) #26, !dbg !3360
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.95, i64 0, i64 0), i32 5) #26, !dbg !3361
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #26, !dbg !3361
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.96, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3362
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.97, i64 0, i64 0), i32 5) #26, !dbg !3363
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.98, i64 0, i64 0)) #26, !dbg !3363
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.96, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3364
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
  ], !dbg !3365

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.99, i64 0, i64 0), i32 5) #26, !dbg !3366
  %21 = load i8*, i8** %4, align 8, !dbg !3366, !tbaa !635
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #26, !dbg !3366
  br label %147, !dbg !3368

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.100, i64 0, i64 0), i32 5) #26, !dbg !3369
  %25 = load i8*, i8** %4, align 8, !dbg !3369, !tbaa !635
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3369
  %27 = load i8*, i8** %26, align 8, !dbg !3369, !tbaa !635
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #26, !dbg !3369
  br label %147, !dbg !3370

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.101, i64 0, i64 0), i32 5) #26, !dbg !3371
  %31 = load i8*, i8** %4, align 8, !dbg !3371, !tbaa !635
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3371
  %33 = load i8*, i8** %32, align 8, !dbg !3371, !tbaa !635
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3371
  %35 = load i8*, i8** %34, align 8, !dbg !3371, !tbaa !635
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #26, !dbg !3371
  br label %147, !dbg !3372

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.102, i64 0, i64 0), i32 5) #26, !dbg !3373
  %39 = load i8*, i8** %4, align 8, !dbg !3373, !tbaa !635
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3373
  %41 = load i8*, i8** %40, align 8, !dbg !3373, !tbaa !635
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3373
  %43 = load i8*, i8** %42, align 8, !dbg !3373, !tbaa !635
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3373
  %45 = load i8*, i8** %44, align 8, !dbg !3373, !tbaa !635
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #26, !dbg !3373
  br label %147, !dbg !3374

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.103, i64 0, i64 0), i32 5) #26, !dbg !3375
  %49 = load i8*, i8** %4, align 8, !dbg !3375, !tbaa !635
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3375
  %51 = load i8*, i8** %50, align 8, !dbg !3375, !tbaa !635
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3375
  %53 = load i8*, i8** %52, align 8, !dbg !3375, !tbaa !635
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3375
  %55 = load i8*, i8** %54, align 8, !dbg !3375, !tbaa !635
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3375
  %57 = load i8*, i8** %56, align 8, !dbg !3375, !tbaa !635
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #26, !dbg !3375
  br label %147, !dbg !3376

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.104, i64 0, i64 0), i32 5) #26, !dbg !3377
  %61 = load i8*, i8** %4, align 8, !dbg !3377, !tbaa !635
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3377
  %63 = load i8*, i8** %62, align 8, !dbg !3377, !tbaa !635
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3377
  %65 = load i8*, i8** %64, align 8, !dbg !3377, !tbaa !635
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3377
  %67 = load i8*, i8** %66, align 8, !dbg !3377, !tbaa !635
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3377
  %69 = load i8*, i8** %68, align 8, !dbg !3377, !tbaa !635
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3377
  %71 = load i8*, i8** %70, align 8, !dbg !3377, !tbaa !635
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #26, !dbg !3377
  br label %147, !dbg !3378

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.105, i64 0, i64 0), i32 5) #26, !dbg !3379
  %75 = load i8*, i8** %4, align 8, !dbg !3379, !tbaa !635
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3379
  %77 = load i8*, i8** %76, align 8, !dbg !3379, !tbaa !635
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3379
  %79 = load i8*, i8** %78, align 8, !dbg !3379, !tbaa !635
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3379
  %81 = load i8*, i8** %80, align 8, !dbg !3379, !tbaa !635
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3379
  %83 = load i8*, i8** %82, align 8, !dbg !3379, !tbaa !635
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3379
  %85 = load i8*, i8** %84, align 8, !dbg !3379, !tbaa !635
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3379
  %87 = load i8*, i8** %86, align 8, !dbg !3379, !tbaa !635
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #26, !dbg !3379
  br label %147, !dbg !3380

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.106, i64 0, i64 0), i32 5) #26, !dbg !3381
  %91 = load i8*, i8** %4, align 8, !dbg !3381, !tbaa !635
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3381
  %93 = load i8*, i8** %92, align 8, !dbg !3381, !tbaa !635
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3381
  %95 = load i8*, i8** %94, align 8, !dbg !3381, !tbaa !635
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3381
  %97 = load i8*, i8** %96, align 8, !dbg !3381, !tbaa !635
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3381
  %99 = load i8*, i8** %98, align 8, !dbg !3381, !tbaa !635
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3381
  %101 = load i8*, i8** %100, align 8, !dbg !3381, !tbaa !635
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3381
  %103 = load i8*, i8** %102, align 8, !dbg !3381, !tbaa !635
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3381
  %105 = load i8*, i8** %104, align 8, !dbg !3381, !tbaa !635
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #26, !dbg !3381
  br label %147, !dbg !3382

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.107, i64 0, i64 0), i32 5) #26, !dbg !3383
  %109 = load i8*, i8** %4, align 8, !dbg !3383, !tbaa !635
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3383
  %111 = load i8*, i8** %110, align 8, !dbg !3383, !tbaa !635
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3383
  %113 = load i8*, i8** %112, align 8, !dbg !3383, !tbaa !635
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3383
  %115 = load i8*, i8** %114, align 8, !dbg !3383, !tbaa !635
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3383
  %117 = load i8*, i8** %116, align 8, !dbg !3383, !tbaa !635
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3383
  %119 = load i8*, i8** %118, align 8, !dbg !3383, !tbaa !635
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3383
  %121 = load i8*, i8** %120, align 8, !dbg !3383, !tbaa !635
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3383
  %123 = load i8*, i8** %122, align 8, !dbg !3383, !tbaa !635
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3383
  %125 = load i8*, i8** %124, align 8, !dbg !3383, !tbaa !635
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #26, !dbg !3383
  br label %147, !dbg !3384

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.108, i64 0, i64 0), i32 5) #26, !dbg !3385
  %129 = load i8*, i8** %4, align 8, !dbg !3385, !tbaa !635
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3385
  %131 = load i8*, i8** %130, align 8, !dbg !3385, !tbaa !635
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3385
  %133 = load i8*, i8** %132, align 8, !dbg !3385, !tbaa !635
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3385
  %135 = load i8*, i8** %134, align 8, !dbg !3385, !tbaa !635
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3385
  %137 = load i8*, i8** %136, align 8, !dbg !3385, !tbaa !635
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3385
  %139 = load i8*, i8** %138, align 8, !dbg !3385, !tbaa !635
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3385
  %141 = load i8*, i8** %140, align 8, !dbg !3385, !tbaa !635
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3385
  %143 = load i8*, i8** %142, align 8, !dbg !3385, !tbaa !635
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3385
  %145 = load i8*, i8** %144, align 8, !dbg !3385, !tbaa !635
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #26, !dbg !3385
  br label %147, !dbg !3386

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3387
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3388 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3392, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i8* %1, metadata !3393, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i8* %2, metadata !3394, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i8* %3, metadata !3395, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i8** %4, metadata !3396, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 0, metadata !3397, metadata !DIExpression()), !dbg !3398
  br label %6, !dbg !3399

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3401
  call void @llvm.dbg.value(metadata i64 %7, metadata !3397, metadata !DIExpression()), !dbg !3398
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3402
  %9 = load i8*, i8** %8, align 8, !dbg !3402, !tbaa !635
  %10 = icmp eq i8* %9, null, !dbg !3404
  %11 = add i64 %7, 1, !dbg !3405
  call void @llvm.dbg.value(metadata i64 %11, metadata !3397, metadata !DIExpression()), !dbg !3398
  br i1 %10, label %12, label %6, !dbg !3404, !llvm.loop !3406

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3408
  ret void, !dbg !3409
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3410 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3421, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i8* %1, metadata !3422, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i8* %2, metadata !3423, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i8* %3, metadata !3424, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3425, metadata !DIExpression()), !dbg !3429
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3430
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #26, !dbg !3430
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3427, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i64 0, metadata !3426, metadata !DIExpression()), !dbg !3429
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3426, metadata !DIExpression()), !dbg !3429
  %11 = load i32, i32* %8, align 8, !dbg !3432
  %12 = icmp ult i32 %11, 41, !dbg !3432
  br i1 %12, label %13, label %18, !dbg !3432

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3432
  %15 = zext i32 %11 to i64, !dbg !3432
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3432
  %17 = add nuw nsw i32 %11, 8, !dbg !3432
  store i32 %17, i32* %8, align 8, !dbg !3432
  br label %21, !dbg !3432

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3432
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3432
  store i8* %20, i8** %9, align 8, !dbg !3432
  br label %21, !dbg !3432

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3432
  %25 = load i8*, i8** %24, align 8, !dbg !3432
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3435
  store i8* %25, i8** %26, align 16, !dbg !3436, !tbaa !635
  %27 = icmp eq i8* %25, null, !dbg !3437
  br i1 %27, label %30, label %28, !dbg !3438

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3426, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i64 1, metadata !3426, metadata !DIExpression()), !dbg !3429
  %29 = icmp ult i32 %22, 41, !dbg !3432
  br i1 %29, label %35, label %32, !dbg !3432

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3439
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3440
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #26, !dbg !3441
  ret void, !dbg !3441

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3432
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3432
  store i8* %34, i8** %9, align 8, !dbg !3432
  br label %40, !dbg !3432

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3432
  %37 = zext i32 %22 to i64, !dbg !3432
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3432
  %39 = add nuw nsw i32 %22, 8, !dbg !3432
  store i32 %39, i32* %8, align 8, !dbg !3432
  br label %40, !dbg !3432

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3432
  %44 = load i8*, i8** %43, align 8, !dbg !3432
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3435
  store i8* %44, i8** %45, align 8, !dbg !3436, !tbaa !635
  %46 = icmp eq i8* %44, null, !dbg !3437
  br i1 %46, label %30, label %47, !dbg !3438

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3426, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i64 2, metadata !3426, metadata !DIExpression()), !dbg !3429
  %48 = icmp ult i32 %41, 41, !dbg !3432
  br i1 %48, label %52, label %49, !dbg !3432

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3432
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3432
  store i8* %51, i8** %9, align 8, !dbg !3432
  br label %57, !dbg !3432

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3432
  %54 = zext i32 %41 to i64, !dbg !3432
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3432
  %56 = add nuw nsw i32 %41, 8, !dbg !3432
  store i32 %56, i32* %8, align 8, !dbg !3432
  br label %57, !dbg !3432

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3432
  %61 = load i8*, i8** %60, align 8, !dbg !3432
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3435
  store i8* %61, i8** %62, align 16, !dbg !3436, !tbaa !635
  %63 = icmp eq i8* %61, null, !dbg !3437
  br i1 %63, label %30, label %64, !dbg !3438

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3426, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i64 3, metadata !3426, metadata !DIExpression()), !dbg !3429
  %65 = icmp ult i32 %58, 41, !dbg !3432
  br i1 %65, label %69, label %66, !dbg !3432

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3432
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3432
  store i8* %68, i8** %9, align 8, !dbg !3432
  br label %74, !dbg !3432

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3432
  %71 = zext i32 %58 to i64, !dbg !3432
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3432
  %73 = add nuw nsw i32 %58, 8, !dbg !3432
  store i32 %73, i32* %8, align 8, !dbg !3432
  br label %74, !dbg !3432

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3432
  %78 = load i8*, i8** %77, align 8, !dbg !3432
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3435
  store i8* %78, i8** %79, align 8, !dbg !3436, !tbaa !635
  %80 = icmp eq i8* %78, null, !dbg !3437
  br i1 %80, label %30, label %81, !dbg !3438

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3426, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i64 4, metadata !3426, metadata !DIExpression()), !dbg !3429
  %82 = icmp ult i32 %75, 41, !dbg !3432
  br i1 %82, label %86, label %83, !dbg !3432

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3432
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3432
  store i8* %85, i8** %9, align 8, !dbg !3432
  br label %91, !dbg !3432

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3432
  %88 = zext i32 %75 to i64, !dbg !3432
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3432
  %90 = add nuw nsw i32 %75, 8, !dbg !3432
  store i32 %90, i32* %8, align 8, !dbg !3432
  br label %91, !dbg !3432

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3432
  %95 = load i8*, i8** %94, align 8, !dbg !3432
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3435
  store i8* %95, i8** %96, align 16, !dbg !3436, !tbaa !635
  %97 = icmp eq i8* %95, null, !dbg !3437
  br i1 %97, label %30, label %98, !dbg !3438

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3426, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i64 5, metadata !3426, metadata !DIExpression()), !dbg !3429
  %99 = icmp ult i32 %92, 41, !dbg !3432
  br i1 %99, label %103, label %100, !dbg !3432

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3432
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3432
  store i8* %102, i8** %9, align 8, !dbg !3432
  br label %108, !dbg !3432

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3432
  %105 = zext i32 %92 to i64, !dbg !3432
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3432
  %107 = add nuw nsw i32 %92, 8, !dbg !3432
  store i32 %107, i32* %8, align 8, !dbg !3432
  br label %108, !dbg !3432

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3432
  %111 = load i8*, i8** %110, align 8, !dbg !3432
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3435
  store i8* %111, i8** %112, align 8, !dbg !3436, !tbaa !635
  %113 = icmp eq i8* %111, null, !dbg !3437
  br i1 %113, label %30, label %114, !dbg !3438

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3426, metadata !DIExpression()), !dbg !3429
  %115 = load i8*, i8** %9, align 8, !dbg !3432
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3432
  store i8* %116, i8** %9, align 8, !dbg !3432
  %117 = bitcast i8* %115 to i8**, !dbg !3432
  %118 = load i8*, i8** %117, align 8, !dbg !3432
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3435
  store i8* %118, i8** %119, align 16, !dbg !3436, !tbaa !635
  %120 = icmp eq i8* %118, null, !dbg !3437
  br i1 %120, label %30, label %121, !dbg !3438

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3426, metadata !DIExpression()), !dbg !3429
  %122 = load i8*, i8** %9, align 8, !dbg !3432
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3432
  store i8* %123, i8** %9, align 8, !dbg !3432
  %124 = bitcast i8* %122 to i8**, !dbg !3432
  %125 = load i8*, i8** %124, align 8, !dbg !3432
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3435
  store i8* %125, i8** %126, align 8, !dbg !3436, !tbaa !635
  %127 = icmp eq i8* %125, null, !dbg !3437
  br i1 %127, label %30, label %128, !dbg !3438

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3426, metadata !DIExpression()), !dbg !3429
  %129 = load i8*, i8** %9, align 8, !dbg !3432
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3432
  store i8* %130, i8** %9, align 8, !dbg !3432
  %131 = bitcast i8* %129 to i8**, !dbg !3432
  %132 = load i8*, i8** %131, align 8, !dbg !3432
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3435
  store i8* %132, i8** %133, align 16, !dbg !3436, !tbaa !635
  %134 = icmp eq i8* %132, null, !dbg !3437
  br i1 %134, label %30, label %135, !dbg !3438

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3426, metadata !DIExpression()), !dbg !3429
  %136 = load i8*, i8** %9, align 8, !dbg !3432
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3432
  store i8* %137, i8** %9, align 8, !dbg !3432
  %138 = bitcast i8* %136 to i8**, !dbg !3432
  %139 = load i8*, i8** %138, align 8, !dbg !3432
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3435
  store i8* %139, i8** %140, align 8, !dbg !3436, !tbaa !635
  %141 = icmp eq i8* %139, null, !dbg !3437
  %142 = select i1 %141, i64 9, i64 10, !dbg !3438
  br label %30, !dbg !3438
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3442 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3446, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i8* %1, metadata !3447, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i8* %2, metadata !3448, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i8* %3, metadata !3449, metadata !DIExpression()), !dbg !3456
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3457
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #26, !dbg !3457
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3450, metadata !DIExpression()), !dbg !3458
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3459
  call void @llvm.va_start(i8* nonnull %6), !dbg !3459
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3460
  call void @llvm.va_end(i8* nonnull %6), !dbg !3461
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #26, !dbg !3462
  ret void, !dbg !3462
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #23

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3463 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3464, !tbaa !635
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.96, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3464
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.111, i64 0, i64 0), i32 5) #26, !dbg !3465
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.112, i64 0, i64 0)) #26, !dbg !3465
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.113, i64 0, i64 0), i32 5) #26, !dbg !3466
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.114, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.115, i64 0, i64 0)) #26, !dbg !3466
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.116, i64 0, i64 0), i32 5) #26, !dbg !3467
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.117, i64 0, i64 0)) #26, !dbg !3467
  ret void, !dbg !3468
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !3469 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3473, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i64 %1, metadata !3474, metadata !DIExpression()), !dbg !3475
  %3 = udiv i64 9223372036854775807, %1, !dbg !3476
  %4 = icmp ult i64 %3, %0, !dbg !3476
  br i1 %4, label %5, label %6, !dbg !3478

5:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !3479
  unreachable, !dbg !3479

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3480
  call void @llvm.dbg.value(metadata i64 %7, metadata !3481, metadata !DIExpression()) #26, !dbg !3487
  %8 = tail call noalias i8* @malloc(i64 %7) #26, !dbg !3489
  call void @llvm.dbg.value(metadata i8* %8, metadata !3486, metadata !DIExpression()) #26, !dbg !3487
  %9 = icmp eq i8* %8, null, !dbg !3490
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3492
  br i1 %11, label %12, label %13, !dbg !3492

12:                                               ; preds = %6
  tail call void @xalloc_die() #28, !dbg !3493
  unreachable, !dbg !3493

13:                                               ; preds = %6
  ret i8* %8, !dbg !3494
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3482 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3481, metadata !DIExpression()), !dbg !3495
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !3496
  call void @llvm.dbg.value(metadata i8* %2, metadata !3486, metadata !DIExpression()), !dbg !3495
  %3 = icmp eq i8* %2, null, !dbg !3497
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3498
  br i1 %5, label %6, label %7, !dbg !3498

6:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !3499
  unreachable, !dbg !3499

7:                                                ; preds = %1
  ret i8* %2, !dbg !3500
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #24 !dbg !3501 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3505, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i64 %1, metadata !3506, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i64 %2, metadata !3507, metadata !DIExpression()), !dbg !3508
  %4 = udiv i64 9223372036854775807, %2, !dbg !3509
  %5 = icmp ult i64 %4, %1, !dbg !3509
  br i1 %5, label %6, label %7, !dbg !3511

6:                                                ; preds = %3
  tail call void @xalloc_die() #28, !dbg !3512
  unreachable, !dbg !3512

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3513
  call void @llvm.dbg.value(metadata i8* %0, metadata !3514, metadata !DIExpression()) #26, !dbg !3520
  call void @llvm.dbg.value(metadata i64 %8, metadata !3519, metadata !DIExpression()) #26, !dbg !3520
  %9 = icmp eq i64 %8, 0, !dbg !3522
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3524
  br i1 %11, label %12, label %13, !dbg !3524

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #26, !dbg !3525
  br label %19, !dbg !3527

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #26, !dbg !3528
  call void @llvm.dbg.value(metadata i8* %14, metadata !3514, metadata !DIExpression()) #26, !dbg !3520
  %15 = icmp eq i8* %14, null, !dbg !3529
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3531
  br i1 %17, label %18, label %19, !dbg !3531

18:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !3532
  unreachable, !dbg !3532

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3520
  ret i8* %20, !dbg !3533
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #15

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3515 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3514, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i64 %1, metadata !3519, metadata !DIExpression()), !dbg !3534
  %3 = icmp eq i64 %1, 0, !dbg !3535
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3536
  br i1 %5, label %6, label %7, !dbg !3536

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #26, !dbg !3537
  br label %13, !dbg !3538

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #26, !dbg !3539
  call void @llvm.dbg.value(metadata i8* %8, metadata !3514, metadata !DIExpression()), !dbg !3534
  %9 = icmp eq i8* %8, null, !dbg !3540
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3541
  br i1 %11, label %12, label %13, !dbg !3541

12:                                               ; preds = %7
  tail call void @xalloc_die() #28, !dbg !3542
  unreachable, !dbg !3542

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3534
  ret i8* %14, !dbg !3543
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #24 !dbg !183 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !188, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i64* %1, metadata !189, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i64 %2, metadata !190, metadata !DIExpression()), !dbg !3544
  %4 = load i64, i64* %1, align 8, !dbg !3545, !tbaa !897
  call void @llvm.dbg.value(metadata i64 %4, metadata !191, metadata !DIExpression()), !dbg !3544
  %5 = icmp eq i8* %0, null, !dbg !3546
  br i1 %5, label %6, label %20, !dbg !3548

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3549
  br i1 %7, label %8, label %13, !dbg !3552

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3553
  call void @llvm.dbg.value(metadata i64 %9, metadata !191, metadata !DIExpression()), !dbg !3544
  %10 = icmp ugt i64 %2, 128, !dbg !3555
  %11 = zext i1 %10 to i64, !dbg !3555
  %12 = add nuw nsw i64 %9, %11, !dbg !3556
  call void @llvm.dbg.value(metadata i64 %12, metadata !191, metadata !DIExpression()), !dbg !3544
  br label %13, !dbg !3557

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3544
  call void @llvm.dbg.value(metadata i64 %14, metadata !191, metadata !DIExpression()), !dbg !3544
  %15 = udiv i64 9223372036854775807, %2, !dbg !3558
  %16 = icmp ult i64 %15, %14, !dbg !3558
  br i1 %16, label %19, label %17, !dbg !3560

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !191, metadata !DIExpression()), !dbg !3544
  store i64 %14, i64* %1, align 8, !dbg !3561, !tbaa !897
  %18 = mul i64 %14, %2, !dbg !3562
  call void @llvm.dbg.value(metadata i8* %0, metadata !3514, metadata !DIExpression()) #26, !dbg !3563
  call void @llvm.dbg.value(metadata i64 %28, metadata !3519, metadata !DIExpression()) #26, !dbg !3563
  br label %31, !dbg !3565

19:                                               ; preds = %13
  tail call void @xalloc_die() #28, !dbg !3566
  unreachable, !dbg !3566

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3567
  %22 = icmp ugt i64 %21, %4, !dbg !3570
  br i1 %22, label %24, label %23, !dbg !3571

23:                                               ; preds = %20
  tail call void @xalloc_die() #28, !dbg !3572
  unreachable, !dbg !3572

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3573
  %26 = add nuw i64 %4, 1, !dbg !3574
  %27 = add i64 %26, %25, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %27, metadata !191, metadata !DIExpression()), !dbg !3544
  store i64 %27, i64* %1, align 8, !dbg !3561, !tbaa !897
  %28 = mul i64 %27, %2, !dbg !3562
  call void @llvm.dbg.value(metadata i8* %0, metadata !3514, metadata !DIExpression()) #26, !dbg !3563
  call void @llvm.dbg.value(metadata i64 %28, metadata !3519, metadata !DIExpression()) #26, !dbg !3563
  %29 = icmp eq i64 %28, 0, !dbg !3576
  br i1 %29, label %30, label %31, !dbg !3565

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #26, !dbg !3577
  br label %38, !dbg !3578

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #26, !dbg !3579
  call void @llvm.dbg.value(metadata i8* %33, metadata !3514, metadata !DIExpression()) #26, !dbg !3563
  %34 = icmp eq i8* %33, null, !dbg !3580
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3581
  br i1 %36, label %37, label %38, !dbg !3581

37:                                               ; preds = %31
  tail call void @xalloc_die() #28, !dbg !3582
  unreachable, !dbg !3582

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3563
  ret i8* %39, !dbg !3583
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #24 !dbg !3584 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3586, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i64 %0, metadata !3481, metadata !DIExpression()) #26, !dbg !3588
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !3590
  call void @llvm.dbg.value(metadata i8* %2, metadata !3486, metadata !DIExpression()) #26, !dbg !3588
  %3 = icmp eq i8* %2, null, !dbg !3591
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3592
  br i1 %5, label %6, label %7, !dbg !3592

6:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !3593
  unreachable, !dbg !3593

7:                                                ; preds = %1
  ret i8* %2, !dbg !3594
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3595 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3599, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64* %1, metadata !3600, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %0, metadata !188, metadata !DIExpression()) #26, !dbg !3602
  call void @llvm.dbg.value(metadata i64* %1, metadata !189, metadata !DIExpression()) #26, !dbg !3602
  call void @llvm.dbg.value(metadata i64 1, metadata !190, metadata !DIExpression()) #26, !dbg !3602
  %3 = load i64, i64* %1, align 8, !dbg !3604, !tbaa !897
  call void @llvm.dbg.value(metadata i64 %3, metadata !191, metadata !DIExpression()) #26, !dbg !3602
  %4 = icmp eq i8* %0, null, !dbg !3605
  br i1 %4, label %5, label %10, !dbg !3606

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3607
  br i1 %6, label %17, label %7, !dbg !3608

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !191, metadata !DIExpression()) #26, !dbg !3602
  %8 = icmp slt i64 %3, 0, !dbg !3609
  br i1 %8, label %9, label %17, !dbg !3610

9:                                                ; preds = %7
  tail call void @xalloc_die() #28, !dbg !3611
  unreachable, !dbg !3611

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3612
  br i1 %11, label %13, label %12, !dbg !3613

12:                                               ; preds = %10
  tail call void @xalloc_die() #28, !dbg !3614
  unreachable, !dbg !3614

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3615
  %15 = add nuw nsw i64 %3, 1, !dbg !3616
  %16 = add nuw nsw i64 %15, %14, !dbg !3617
  call void @llvm.dbg.value(metadata i64 %16, metadata !191, metadata !DIExpression()) #26, !dbg !3602
  call void @llvm.dbg.value(metadata i8* %0, metadata !3514, metadata !DIExpression()) #26, !dbg !3618
  call void @llvm.dbg.value(metadata i64 %16, metadata !3519, metadata !DIExpression()) #26, !dbg !3618
  br label %17, !dbg !3620

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3621
  store i64 %18, i64* %1, align 8, !dbg !3621, !tbaa !897
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #26, !dbg !3622
  call void @llvm.dbg.value(metadata i8* %19, metadata !3514, metadata !DIExpression()) #26, !dbg !3618
  %20 = icmp eq i8* %19, null, !dbg !3623
  br i1 %20, label %21, label %22, !dbg !3624

21:                                               ; preds = %17
  tail call void @xalloc_die() #28, !dbg !3625
  unreachable, !dbg !3625

22:                                               ; preds = %17
  ret i8* %19, !dbg !3626
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3627 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3629, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %0, metadata !3631, metadata !DIExpression()) #26, !dbg !3636
  call void @llvm.dbg.value(metadata i64 1, metadata !3634, metadata !DIExpression()) #26, !dbg !3636
  %2 = icmp slt i64 %0, 0, !dbg !3638
  br i1 %2, label %6, label %3, !dbg !3640

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #26, !dbg !3641
  call void @llvm.dbg.value(metadata i8* %4, metadata !3635, metadata !DIExpression()) #26, !dbg !3636
  %5 = icmp eq i8* %4, null, !dbg !3642
  br i1 %5, label %6, label %7, !dbg !3643

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #28, !dbg !3644
  unreachable, !dbg !3644

7:                                                ; preds = %3
  ret i8* %4, !dbg !3645
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3632 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3631, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %1, metadata !3634, metadata !DIExpression()), !dbg !3646
  %3 = udiv i64 9223372036854775807, %1, !dbg !3647
  %4 = icmp ult i64 %3, %0, !dbg !3647
  br i1 %4, label %8, label %5, !dbg !3648

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #26, !dbg !3649
  call void @llvm.dbg.value(metadata i8* %6, metadata !3635, metadata !DIExpression()), !dbg !3646
  %7 = icmp eq i8* %6, null, !dbg !3650
  br i1 %7, label %8, label %9, !dbg !3651

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #28, !dbg !3652
  unreachable, !dbg !3652

9:                                                ; preds = %5
  ret i8* %6, !dbg !3653
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3654 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3658, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i64 %1, metadata !3659, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i64 %1, metadata !3481, metadata !DIExpression()) #26, !dbg !3661
  %3 = tail call noalias i8* @malloc(i64 %1) #26, !dbg !3663
  call void @llvm.dbg.value(metadata i8* %3, metadata !3486, metadata !DIExpression()) #26, !dbg !3661
  %4 = icmp eq i8* %3, null, !dbg !3664
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3665
  br i1 %6, label %7, label %8, !dbg !3665

7:                                                ; preds = %2
  tail call void @xalloc_die() #28, !dbg !3666
  unreachable, !dbg !3666

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3667, metadata !DIExpression()) #26, !dbg !3676
  call void @llvm.dbg.value(metadata i8* %0, metadata !3674, metadata !DIExpression()) #26, !dbg !3676
  call void @llvm.dbg.value(metadata i64 %1, metadata !3675, metadata !DIExpression()) #26, !dbg !3676
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #26, !dbg !3678
  ret i8* %3, !dbg !3679
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3680 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3682, metadata !DIExpression()), !dbg !3683
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #27, !dbg !3684
  %3 = add i64 %2, 1, !dbg !3685
  call void @llvm.dbg.value(metadata i8* %0, metadata !3658, metadata !DIExpression()) #26, !dbg !3686
  call void @llvm.dbg.value(metadata i64 %3, metadata !3659, metadata !DIExpression()) #26, !dbg !3686
  call void @llvm.dbg.value(metadata i64 %3, metadata !3481, metadata !DIExpression()) #26, !dbg !3688
  %4 = tail call noalias i8* @malloc(i64 %3) #26, !dbg !3690
  call void @llvm.dbg.value(metadata i8* %4, metadata !3486, metadata !DIExpression()) #26, !dbg !3688
  %5 = icmp eq i8* %4, null, !dbg !3691
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3692
  br i1 %7, label %8, label %9, !dbg !3692

8:                                                ; preds = %1
  tail call void @xalloc_die() #28, !dbg !3693
  unreachable, !dbg !3693

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3667, metadata !DIExpression()) #26, !dbg !3694
  call void @llvm.dbg.value(metadata i8* %0, metadata !3674, metadata !DIExpression()) #26, !dbg !3694
  call void @llvm.dbg.value(metadata i64 %3, metadata !3675, metadata !DIExpression()) #26, !dbg !3694
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #26, !dbg !3696
  ret i8* %4, !dbg !3697
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3698 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3699, !tbaa !811
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.128, i64 0, i64 0), i32 5) #26, !dbg !3700
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i64 0, i64 0), i8* %2) #26, !dbg !3701
  tail call void @abort() #28, !dbg !3702
  unreachable, !dbg !3702
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoumax(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i8* %5, i32 %6) local_unnamed_addr #8 !dbg !3703 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3708, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i32 %1, metadata !3709, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i64 %2, metadata !3710, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i64 %3, metadata !3711, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i8* %4, metadata !3712, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i8* %5, metadata !3713, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i32 %6, metadata !3714, metadata !DIExpression()), !dbg !3718
  %9 = bitcast i64* %8 to i8*, !dbg !3719
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #26, !dbg !3719
  call void @llvm.dbg.value(metadata i64* %8, metadata !3717, metadata !DIExpression(DW_OP_deref)), !dbg !3718
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #26, !dbg !3720
  call void @llvm.dbg.value(metadata i32 %10, metadata !3715, metadata !DIExpression()), !dbg !3718
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %23
    i32 3, label %25
  ], !dbg !3721

11:                                               ; preds = %7
  %12 = tail call i32* @__errno_location() #30, !dbg !3722
  br label %27, !dbg !3721

13:                                               ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !3725, !tbaa !897
  call void @llvm.dbg.value(metadata i64 %14, metadata !3717, metadata !DIExpression()), !dbg !3718
  %15 = icmp ult i64 %14, %2, !dbg !3729
  %16 = icmp ugt i64 %14, %3
  %17 = or i1 %15, %16, !dbg !3730
  br i1 %17, label %18, label %36, !dbg !3730

18:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !3715, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i64 %14, metadata !3717, metadata !DIExpression()), !dbg !3718
  %19 = icmp ugt i64 %14, 1073741823, !dbg !3731
  %20 = tail call i32* @__errno_location() #30, !dbg !3734
  br i1 %19, label %21, label %22, !dbg !3735

21:                                               ; preds = %18
  store i32 75, i32* %20, align 4, !dbg !3736, !tbaa !811
  call void @llvm.dbg.value(metadata i32 undef, metadata !3715, metadata !DIExpression()), !dbg !3718
  br label %27, !dbg !3737

22:                                               ; preds = %18
  store i32 34, i32* %20, align 4, !dbg !3738, !tbaa !811
  call void @llvm.dbg.value(metadata i32 undef, metadata !3715, metadata !DIExpression()), !dbg !3718
  br label %27, !dbg !3737

23:                                               ; preds = %7
  %24 = tail call i32* @__errno_location() #30, !dbg !3739
  store i32 75, i32* %24, align 4, !dbg !3741, !tbaa !811
  call void @llvm.dbg.value(metadata i32 undef, metadata !3715, metadata !DIExpression()), !dbg !3718
  br label %27, !dbg !3737

25:                                               ; preds = %7
  %26 = tail call i32* @__errno_location() #30, !dbg !3742
  store i32 0, i32* %26, align 4, !dbg !3744, !tbaa !811
  call void @llvm.dbg.value(metadata i32 undef, metadata !3715, metadata !DIExpression()), !dbg !3718
  br label %27, !dbg !3737

27:                                               ; preds = %11, %21, %22, %25, %23
  %28 = phi i32* [ %12, %11 ], [ %20, %21 ], [ %20, %22 ], [ %26, %25 ], [ %24, %23 ], !dbg !3722
  %29 = icmp eq i32 %6, 0, !dbg !3745
  %30 = select i1 %29, i32 1, i32 %6, !dbg !3745
  %31 = load i32, i32* %28, align 4, !dbg !3722, !tbaa !811
  %32 = icmp eq i32 %31, 22, !dbg !3746
  %33 = select i1 %32, i32 0, i32 %31, !dbg !3722
  %34 = call i8* @quote(i8* %0) #26, !dbg !3747
  call void (i32, i32, i8*, ...) @error(i32 %30, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i64 0, i64 0), i8* %5, i8* %34) #26, !dbg !3748
  %35 = load i64, i64* %8, align 8, !dbg !3749, !tbaa !897
  br label %36, !dbg !3750

36:                                               ; preds = %13, %27
  %37 = phi i64 [ %14, %13 ], [ %35, %27 ], !dbg !3749
  call void @llvm.dbg.value(metadata i64 %37, metadata !3717, metadata !DIExpression()), !dbg !3718
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #26, !dbg !3751
  ret i64 %37, !dbg !3752
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoumax(i8* %0, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5) local_unnamed_addr #8 !dbg !3753 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3757, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i64 %1, metadata !3758, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i64 %2, metadata !3759, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i8* %3, metadata !3760, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i8* %4, metadata !3761, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i32 %5, metadata !3762, metadata !DIExpression()), !dbg !3763
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !3764
  ret i64 %7, !dbg !3765
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !3766 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3772, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i8** %1, metadata !3773, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i32 %2, metadata !3774, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i64* %3, metadata !3775, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i8* %4, metadata !3776, metadata !DIExpression()), !dbg !3790
  %7 = bitcast i8** %6 to i8*, !dbg !3791
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #26, !dbg !3791
  call void @llvm.dbg.value(metadata i32 0, metadata !3780, metadata !DIExpression()), !dbg !3790
  %8 = icmp ult i32 %2, 37, !dbg !3792
  br i1 %8, label %10, label %9, !dbg !3792

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.135, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.136, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #28, !dbg !3792
  unreachable, !dbg !3792

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3795
  call void @llvm.dbg.value(metadata i8** %25, metadata !3778, metadata !DIExpression()), !dbg !3790
  %12 = tail call i32* @__errno_location() #30, !dbg !3796
  store i32 0, i32* %12, align 4, !dbg !3797, !tbaa !811
  call void @llvm.dbg.value(metadata i8* %0, metadata !3781, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i8 undef, metadata !3784, metadata !DIExpression()), !dbg !3798
  %13 = tail call i16** @__ctype_b_loc() #30, !dbg !3790
  %14 = load i16*, i16** %13, align 8, !tbaa !635
  br label %15, !dbg !3799

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !3798
  %17 = load i8, i8* %16, align 1, !dbg !3798, !tbaa !906
  call void @llvm.dbg.value(metadata i8 %17, metadata !3784, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i8* %16, metadata !3781, metadata !DIExpression()), !dbg !3798
  %18 = zext i8 %17 to i64, !dbg !3800
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3800
  %20 = load i16, i16* %19, align 2, !dbg !3800, !tbaa !2243
  %21 = and i16 %20, 8192, !dbg !3800
  %22 = icmp eq i16 %21, 0, !dbg !3799
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3801
  call void @llvm.dbg.value(metadata i8* %23, metadata !3781, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i8 undef, metadata !3784, metadata !DIExpression()), !dbg !3798
  br i1 %22, label %24, label %15, !dbg !3799, !llvm.loop !3802

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3795
  %26 = icmp eq i8 %17, 45, !dbg !3804
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  %28 = call i64 @strtoumax(i8* %0, i8** %25, i32 %2) #26, !dbg !3806
  call void @llvm.dbg.value(metadata i64 %28, metadata !3779, metadata !DIExpression()), !dbg !3790
  %29 = load i8*, i8** %25, align 8, !dbg !3807, !tbaa !635
  %30 = icmp eq i8* %29, %0, !dbg !3809
  br i1 %30, label %31, label %40, !dbg !3810

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3811
  br i1 %32, label %285, label %33, !dbg !3814

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3815, !tbaa !906
  %35 = icmp eq i8 %34, 0, !dbg !3815
  br i1 %35, label %285, label %36, !dbg !3816

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3815
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #27, !dbg !3817
  %39 = icmp eq i8* %38, null, !dbg !3817
  br i1 %39, label %285, label %47, !dbg !3818

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3819, !tbaa !811
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3821

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !3780, metadata !DIExpression()), !dbg !3790
  br label %43, !dbg !3822

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !3790
  call void @llvm.dbg.value(metadata i32 %44, metadata !3780, metadata !DIExpression()), !dbg !3790
  %45 = icmp eq i8* %4, null, !dbg !3824
  br i1 %45, label %46, label %47, !dbg !3826

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !3779, metadata !DIExpression()), !dbg !3790
  store i64 %28, i64* %3, align 8, !dbg !3827, !tbaa !897
  br label %285, !dbg !3829

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3830, !tbaa !906
  %51 = sext i8 %50 to i32, !dbg !3830
  %52 = icmp eq i8 %50, 0, !dbg !3831
  br i1 %52, label %282, label %53, !dbg !3832

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !3785, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i32 1, metadata !3788, metadata !DIExpression()), !dbg !3833
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #27, !dbg !3834
  %55 = icmp eq i8* %54, null, !dbg !3834
  br i1 %55, label %56, label %58, !dbg !3836

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !3779, metadata !DIExpression()), !dbg !3790
  store i64 %49, i64* %3, align 8, !dbg !3837, !tbaa !897
  %57 = or i32 %48, 2, !dbg !3839
  br label %285, !dbg !3840

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
  ], !dbg !3841

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #27, !dbg !3842
  %61 = icmp eq i8* %60, null, !dbg !3842
  br i1 %61, label %72, label %62, !dbg !3845

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3846
  %64 = load i8, i8* %63, align 1, !dbg !3846, !tbaa !906
  %65 = sext i8 %64 to i32, !dbg !3846
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3847

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3848
  %68 = load i8, i8* %67, align 1, !dbg !3848, !tbaa !906
  %69 = icmp eq i8 %68, 66, !dbg !3851
  %70 = select i1 %69, i64 3, i64 1, !dbg !3852
  br label %72, !dbg !3852

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !3785, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i32 2, metadata !3788, metadata !DIExpression()), !dbg !3833
  br label %72, !dbg !3853

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3788, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i32 undef, metadata !3785, metadata !DIExpression()), !dbg !3833
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
  ], !dbg !3854

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3855, metadata !DIExpression()) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i32 7, metadata !3862, metadata !DIExpression()) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i32 6, metadata !3862, metadata !DIExpression()) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3872
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3872
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #26, !dbg !3874
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !3874
  %78 = mul i64 %49, %73, !dbg !3876
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !3876
  call void @llvm.dbg.value(metadata i1 %77, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i32 6, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i1 %77, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i32 6, metadata !3862, metadata !DIExpression()) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i32 5, metadata !3862, metadata !DIExpression()) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3872
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3872
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #26, !dbg !3874
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !3874
  %82 = mul i64 %79, %73, !dbg !3876
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3876
  %84 = or i1 %77, %81, !dbg !3877
  call void @llvm.dbg.value(metadata i1 %84, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i32 5, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i1 %84, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i32 5, metadata !3862, metadata !DIExpression()) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i32 4, metadata !3862, metadata !DIExpression()) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3872
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3872
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #26, !dbg !3874
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !3874
  %87 = mul i64 %83, %73, !dbg !3876
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !3876
  %89 = or i1 %84, %86, !dbg !3877
  call void @llvm.dbg.value(metadata i1 %89, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i32 4, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i1 %89, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i32 4, metadata !3862, metadata !DIExpression()) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i32 3, metadata !3862, metadata !DIExpression()) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3872
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3872
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #26, !dbg !3874
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !3874
  %92 = mul i64 %88, %73, !dbg !3876
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !3876
  %94 = or i1 %89, %91, !dbg !3877
  call void @llvm.dbg.value(metadata i1 %94, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i32 3, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i1 %94, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i32 3, metadata !3862, metadata !DIExpression()) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i32 2, metadata !3862, metadata !DIExpression()) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3872
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3872
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #26, !dbg !3874
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !3874
  %97 = mul i64 %93, %73, !dbg !3876
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !3876
  %99 = or i1 %94, %96, !dbg !3877
  call void @llvm.dbg.value(metadata i1 %99, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i32 2, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i1 %99, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i32 2, metadata !3862, metadata !DIExpression()) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i32 1, metadata !3862, metadata !DIExpression()) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3872
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3872
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #26, !dbg !3874
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !3874
  %102 = mul i64 %98, %73, !dbg !3876
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !3876
  %104 = or i1 %99, %101, !dbg !3877
  call void @llvm.dbg.value(metadata i1 %104, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i32 1, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i1 %104, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i32 1, metadata !3862, metadata !DIExpression()) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3872
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3872
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #26, !dbg !3874
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !3874
  %107 = mul i64 %103, %73, !dbg !3876
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3876
  %109 = or i1 %104, %106, !dbg !3877
  call void @llvm.dbg.value(metadata i1 %109, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3863
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3863
  br label %272, !dbg !3878

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3855, metadata !DIExpression()) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 8, metadata !3862, metadata !DIExpression()) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 7, metadata !3862, metadata !DIExpression()) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3881
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3881
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #26, !dbg !3883
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !3883
  %113 = mul i64 %49, %73, !dbg !3884
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !3884
  call void @llvm.dbg.value(metadata i1 %112, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 7, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i1 %112, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 7, metadata !3862, metadata !DIExpression()) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 6, metadata !3862, metadata !DIExpression()) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3881
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3881
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #26, !dbg !3883
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !3883
  %117 = mul i64 %114, %73, !dbg !3884
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3884
  %119 = or i1 %112, %116, !dbg !3885
  call void @llvm.dbg.value(metadata i1 %119, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 6, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i1 %119, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 6, metadata !3862, metadata !DIExpression()) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 5, metadata !3862, metadata !DIExpression()) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3881
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3881
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #26, !dbg !3883
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !3883
  %122 = mul i64 %118, %73, !dbg !3884
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !3884
  %124 = or i1 %119, %121, !dbg !3885
  call void @llvm.dbg.value(metadata i1 %124, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 5, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i1 %124, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 5, metadata !3862, metadata !DIExpression()) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 4, metadata !3862, metadata !DIExpression()) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3881
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3881
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #26, !dbg !3883
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !3883
  %127 = mul i64 %123, %73, !dbg !3884
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !3884
  %129 = or i1 %124, %126, !dbg !3885
  call void @llvm.dbg.value(metadata i1 %129, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 4, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i1 %129, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 4, metadata !3862, metadata !DIExpression()) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 3, metadata !3862, metadata !DIExpression()) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3881
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3881
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #26, !dbg !3883
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !3883
  %132 = mul i64 %128, %73, !dbg !3884
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !3884
  %134 = or i1 %129, %131, !dbg !3885
  call void @llvm.dbg.value(metadata i1 %134, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 3, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i1 %134, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 3, metadata !3862, metadata !DIExpression()) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 2, metadata !3862, metadata !DIExpression()) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3881
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3881
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #26, !dbg !3883
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !3883
  %137 = mul i64 %133, %73, !dbg !3884
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3884
  %139 = or i1 %134, %136, !dbg !3885
  call void @llvm.dbg.value(metadata i1 %139, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 2, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i1 %139, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 2, metadata !3862, metadata !DIExpression()) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 1, metadata !3862, metadata !DIExpression()) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3881
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3881
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #26, !dbg !3883
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !3883
  %142 = mul i64 %138, %73, !dbg !3884
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !3884
  %144 = or i1 %139, %141, !dbg !3885
  call void @llvm.dbg.value(metadata i1 %144, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 1, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i1 %144, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 1, metadata !3862, metadata !DIExpression()) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3881
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3881
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #26, !dbg !3883
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !3883
  %147 = mul i64 %143, %73, !dbg !3884
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3884
  %149 = or i1 %144, %146, !dbg !3885
  call void @llvm.dbg.value(metadata i1 %149, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3879
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3879
  br label %272, !dbg !3878

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3855, metadata !DIExpression()) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i32 5, metadata !3862, metadata !DIExpression()) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i32 4, metadata !3862, metadata !DIExpression()) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3888
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3888
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #26, !dbg !3890
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !3890
  %153 = mul i64 %49, %73, !dbg !3891
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !3891
  call void @llvm.dbg.value(metadata i1 %152, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i32 4, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i1 %152, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i32 4, metadata !3862, metadata !DIExpression()) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i32 3, metadata !3862, metadata !DIExpression()) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3888
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3888
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #26, !dbg !3890
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !3890
  %157 = mul i64 %154, %73, !dbg !3891
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !3891
  %159 = or i1 %152, %156, !dbg !3892
  call void @llvm.dbg.value(metadata i1 %159, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i32 3, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i1 %159, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i32 3, metadata !3862, metadata !DIExpression()) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i32 2, metadata !3862, metadata !DIExpression()) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3888
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3888
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #26, !dbg !3890
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !3890
  %162 = mul i64 %158, %73, !dbg !3891
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !3891
  %164 = or i1 %159, %161, !dbg !3892
  call void @llvm.dbg.value(metadata i1 %164, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i32 2, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i1 %164, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i32 2, metadata !3862, metadata !DIExpression()) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i32 1, metadata !3862, metadata !DIExpression()) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3888
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3888
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #26, !dbg !3890
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !3890
  %167 = mul i64 %163, %73, !dbg !3891
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !3891
  %169 = or i1 %164, %166, !dbg !3892
  call void @llvm.dbg.value(metadata i1 %169, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i32 1, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i1 %169, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i32 1, metadata !3862, metadata !DIExpression()) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3888
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3888
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #26, !dbg !3890
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !3890
  %172 = mul i64 %168, %73, !dbg !3891
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !3891
  %174 = or i1 %169, %171, !dbg !3892
  call void @llvm.dbg.value(metadata i1 %174, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3886
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3886
  br label %272, !dbg !3878

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3855, metadata !DIExpression()) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i32 6, metadata !3862, metadata !DIExpression()) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i32 5, metadata !3862, metadata !DIExpression()) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3895
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3895
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #26, !dbg !3897
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !3897
  %178 = mul i64 %49, %73, !dbg !3898
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !3898
  call void @llvm.dbg.value(metadata i1 %177, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i32 5, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i1 %177, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i32 5, metadata !3862, metadata !DIExpression()) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i32 4, metadata !3862, metadata !DIExpression()) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3895
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3895
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #26, !dbg !3897
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !3897
  %182 = mul i64 %179, %73, !dbg !3898
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !3898
  %184 = or i1 %177, %181, !dbg !3899
  call void @llvm.dbg.value(metadata i1 %184, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i32 4, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i1 %184, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i32 4, metadata !3862, metadata !DIExpression()) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i32 3, metadata !3862, metadata !DIExpression()) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3895
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3895
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #26, !dbg !3897
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !3897
  %187 = mul i64 %183, %73, !dbg !3898
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !3898
  %189 = or i1 %184, %186, !dbg !3899
  call void @llvm.dbg.value(metadata i1 %189, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i32 3, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i1 %189, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i32 3, metadata !3862, metadata !DIExpression()) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i32 2, metadata !3862, metadata !DIExpression()) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3895
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3895
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #26, !dbg !3897
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !3897
  %192 = mul i64 %188, %73, !dbg !3898
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !3898
  %194 = or i1 %189, %191, !dbg !3899
  call void @llvm.dbg.value(metadata i1 %194, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i32 2, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i1 %194, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i32 2, metadata !3862, metadata !DIExpression()) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i32 1, metadata !3862, metadata !DIExpression()) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3895
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3895
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #26, !dbg !3897
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !3897
  %197 = mul i64 %193, %73, !dbg !3898
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3898
  %199 = or i1 %194, %196, !dbg !3899
  call void @llvm.dbg.value(metadata i1 %199, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i32 1, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i1 %199, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i32 1, metadata !3862, metadata !DIExpression()) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3895
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3895
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #26, !dbg !3897
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !3897
  %202 = mul i64 %198, %73, !dbg !3898
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !3898
  %204 = or i1 %199, %201, !dbg !3899
  call void @llvm.dbg.value(metadata i1 %204, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3893
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3893
  br label %272, !dbg !3878

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3900
  call void @llvm.dbg.value(metadata i32 512, metadata !3871, metadata !DIExpression()) #26, !dbg !3900
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #26, !dbg !3902
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !3902
  %208 = shl i64 %49, 9, !dbg !3903
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !3903
  call void @llvm.dbg.value(metadata i1 %207, metadata !3789, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3833
  br label %272, !dbg !3904

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3905
  call void @llvm.dbg.value(metadata i32 1024, metadata !3871, metadata !DIExpression()) #26, !dbg !3905
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #26, !dbg !3907
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !3907
  %213 = shl i64 %49, 10, !dbg !3908
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3908
  call void @llvm.dbg.value(metadata i1 %212, metadata !3789, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3833
  br label %272, !dbg !3909

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3860, metadata !DIExpression()) #26, !dbg !3910
  call void @llvm.dbg.value(metadata i32 undef, metadata !3861, metadata !DIExpression()) #26, !dbg !3910
  call void @llvm.dbg.value(metadata i32 0, metadata !3855, metadata !DIExpression()) #26, !dbg !3910
  call void @llvm.dbg.value(metadata i32 3, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3910
  call void @llvm.dbg.value(metadata i32 0, metadata !3855, metadata !DIExpression()) #26, !dbg !3910
  call void @llvm.dbg.value(metadata i32 3, metadata !3862, metadata !DIExpression()) #26, !dbg !3910
  call void @llvm.dbg.value(metadata i32 2, metadata !3862, metadata !DIExpression()) #26, !dbg !3910
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3912
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3912
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #26, !dbg !3914
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !3914
  %218 = mul i64 %49, %73, !dbg !3915
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !3915
  call void @llvm.dbg.value(metadata i1 %217, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3910
  call void @llvm.dbg.value(metadata i32 2, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3910
  call void @llvm.dbg.value(metadata i1 %217, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3910
  call void @llvm.dbg.value(metadata i32 2, metadata !3862, metadata !DIExpression()) #26, !dbg !3910
  call void @llvm.dbg.value(metadata i32 1, metadata !3862, metadata !DIExpression()) #26, !dbg !3910
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3912
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3912
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #26, !dbg !3914
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !3914
  %222 = mul i64 %219, %73, !dbg !3915
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !3915
  %224 = or i1 %217, %221, !dbg !3916
  call void @llvm.dbg.value(metadata i1 %224, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3910
  call void @llvm.dbg.value(metadata i32 1, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3910
  call void @llvm.dbg.value(metadata i1 %224, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3910
  call void @llvm.dbg.value(metadata i32 1, metadata !3862, metadata !DIExpression()) #26, !dbg !3910
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()) #26, !dbg !3910
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3912
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3912
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #26, !dbg !3914
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !3914
  %227 = mul i64 %223, %73, !dbg !3915
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3915
  %229 = or i1 %224, %226, !dbg !3916
  call void @llvm.dbg.value(metadata i1 %229, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3910
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3910
  br label %272, !dbg !3878

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3860, metadata !DIExpression()) #26, !dbg !3917
  call void @llvm.dbg.value(metadata i32 undef, metadata !3861, metadata !DIExpression()) #26, !dbg !3917
  call void @llvm.dbg.value(metadata i32 0, metadata !3855, metadata !DIExpression()) #26, !dbg !3917
  call void @llvm.dbg.value(metadata i32 1, metadata !3862, metadata !DIExpression()) #26, !dbg !3917
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3919
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3919
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #26, !dbg !3921
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !3921
  %233 = mul i64 %49, %73, !dbg !3922
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !3922
  call void @llvm.dbg.value(metadata i1 %232, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3917
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()) #26, !dbg !3917
  %235 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %234) #26, !dbg !3921
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !3921
  %237 = mul i64 %234, %73, !dbg !3922
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !3922
  %239 = or i1 %232, %236, !dbg !3923
  call void @llvm.dbg.value(metadata i1 %239, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3917
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3917
  br label %272, !dbg !3878

240:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3860, metadata !DIExpression()) #26, !dbg !3924
  call void @llvm.dbg.value(metadata i32 undef, metadata !3861, metadata !DIExpression()) #26, !dbg !3924
  call void @llvm.dbg.value(metadata i32 0, metadata !3855, metadata !DIExpression()) #26, !dbg !3924
  call void @llvm.dbg.value(metadata i32 3, metadata !3862, metadata !DIExpression()) #26, !dbg !3924
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3926
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3926
  %241 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #26, !dbg !3928
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !3928
  %243 = mul i64 %49, %73, !dbg !3929
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !3929
  call void @llvm.dbg.value(metadata i1 %242, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3924
  call void @llvm.dbg.value(metadata i32 2, metadata !3862, metadata !DIExpression()) #26, !dbg !3924
  %245 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %244) #26, !dbg !3928
  %246 = extractvalue { i64, i1 } %245, 1, !dbg !3928
  %247 = mul i64 %244, %73, !dbg !3929
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !3929
  %249 = or i1 %242, %246, !dbg !3930
  call void @llvm.dbg.value(metadata i1 %249, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3924
  call void @llvm.dbg.value(metadata i32 1, metadata !3862, metadata !DIExpression()) #26, !dbg !3924
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %248) #26, !dbg !3928
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !3928
  %252 = mul i64 %248, %73, !dbg !3929
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !3929
  %254 = or i1 %249, %251, !dbg !3930
  call void @llvm.dbg.value(metadata i1 %254, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3924
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()) #26, !dbg !3924
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #26, !dbg !3928
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !3928
  %257 = mul i64 %253, %73, !dbg !3929
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !3929
  %259 = or i1 %254, %256, !dbg !3930
  call void @llvm.dbg.value(metadata i1 %259, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3924
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3924
  br label %272, !dbg !3878

260:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3931
  call void @llvm.dbg.value(metadata i32 2, metadata !3871, metadata !DIExpression()) #26, !dbg !3931
  %261 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #26, !dbg !3933
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !3933
  %263 = shl i64 %49, 1, !dbg !3934
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !3934
  call void @llvm.dbg.value(metadata i1 %262, metadata !3789, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3833
  br label %272, !dbg !3935

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !3779, metadata !DIExpression()), !dbg !3790
  store i64 %49, i64* %3, align 8, !dbg !3936, !tbaa !897
  %266 = or i32 %48, 2, !dbg !3937
  br label %285, !dbg !3938

267:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3860, metadata !DIExpression()) #26, !dbg !3939
  call void @llvm.dbg.value(metadata i32 undef, metadata !3861, metadata !DIExpression()) #26, !dbg !3939
  call void @llvm.dbg.value(metadata i32 0, metadata !3855, metadata !DIExpression()) #26, !dbg !3939
  call void @llvm.dbg.value(metadata i32 undef, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3939
  call void @llvm.dbg.value(metadata i64* undef, metadata !3866, metadata !DIExpression()) #26, !dbg !3941
  call void @llvm.dbg.value(metadata i32 undef, metadata !3871, metadata !DIExpression()) #26, !dbg !3941
  %268 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #26, !dbg !3943
  %269 = extractvalue { i64, i1 } %268, 1, !dbg !3943
  call void @llvm.dbg.value(metadata i32 undef, metadata !3862, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #26, !dbg !3939
  call void @llvm.dbg.value(metadata i1 %269, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !3939
  %270 = mul i64 %49, %73, !dbg !3944
  %271 = select i1 %269, i64 -1, i64 %270, !dbg !3944
  br label %272, !dbg !3878

272:                                              ; preds = %75, %110, %240, %150, %230, %267, %215, %175, %205, %210, %260, %72
  %273 = phi i64 [ %264, %260 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %271, %267 ], [ %238, %230 ], [ %173, %150 ], [ %258, %240 ], [ %148, %110 ], [ %108, %75 ], !dbg !3790
  %274 = phi i1 [ %262, %260 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %269, %267 ], [ %239, %230 ], [ %174, %150 ], [ %259, %240 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !3945
  call void @llvm.dbg.value(metadata i32 %275, metadata !3789, metadata !DIExpression()), !dbg !3833
  %276 = or i32 %48, %275, !dbg !3878
  call void @llvm.dbg.value(metadata i32 %276, metadata !3780, metadata !DIExpression()), !dbg !3790
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3946
  store i8* %277, i8** %25, align 8, !dbg !3946, !tbaa !635
  %278 = load i8, i8* %277, align 1, !dbg !3947, !tbaa !906
  %279 = icmp eq i8 %278, 0, !dbg !3947
  %280 = or i32 %276, 2
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !3949
  call void @llvm.dbg.value(metadata i32 %281, metadata !3780, metadata !DIExpression()), !dbg !3790
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !3950
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !3951
  call void @llvm.dbg.value(metadata i32 %284, metadata !3780, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i64 %283, metadata !3779, metadata !DIExpression()), !dbg !3790
  store i64 %283, i64* %3, align 8, !dbg !3952, !tbaa !897
  br label %285, !dbg !3953

285:                                              ; preds = %56, %265, %40, %31, %33, %36, %24, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %266, %265 ], !dbg !3790
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #26, !dbg !3954
  ret i32 %286, !dbg !3954
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !3955 i64 @strtoumax(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #25 !dbg !3959 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3961, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i64 %1, metadata !3962, metadata !DIExpression()), !dbg !3967
  %3 = icmp eq i64 %0, 0, !dbg !3968
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3969
  br i1 %5, label %11, label %6, !dbg !3969

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3964, metadata !DIExpression()), !dbg !3970
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3971
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3971
  br i1 %8, label %9, label %11, !dbg !3973

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #30, !dbg !3974
  store i32 12, i32* %10, align 4, !dbg !3976, !tbaa !811
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3961, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i64 %12, metadata !3962, metadata !DIExpression()), !dbg !3967
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #26, !dbg !3977
  call void @llvm.dbg.value(metadata i8* %14, metadata !3963, metadata !DIExpression()), !dbg !3967
  br label %15, !dbg !3978

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3967
  ret i8* %16, !dbg !3979
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3980 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4018, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata i32 0, metadata !4019, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata i32 0, metadata !4021, metadata !DIExpression()), !dbg !4022
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !4023
  call void @llvm.dbg.value(metadata i32 %2, metadata !4020, metadata !DIExpression()), !dbg !4022
  %3 = icmp slt i32 %2, 0, !dbg !4024
  br i1 %3, label %4, label %6, !dbg !4026

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4027
  br label %24, !dbg !4028

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !4029
  %8 = icmp eq i32 %7, 0, !dbg !4029
  br i1 %8, label %13, label %9, !dbg !4031

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !4032
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #26, !dbg !4033
  %12 = icmp eq i64 %11, -1, !dbg !4034
  br i1 %12, label %16, label %13, !dbg !4035

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #26, !dbg !4036
  %15 = icmp eq i32 %14, 0, !dbg !4036
  br i1 %15, label %16, label %18, !dbg !4037

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4019, metadata !DIExpression()), !dbg !4022
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4038
  call void @llvm.dbg.value(metadata i32 %21, metadata !4021, metadata !DIExpression()), !dbg !4022
  br label %24, !dbg !4039

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #30, !dbg !4040
  %20 = load i32, i32* %19, align 4, !dbg !4040, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %20, metadata !4019, metadata !DIExpression()), !dbg !4022
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4038
  call void @llvm.dbg.value(metadata i32 %21, metadata !4021, metadata !DIExpression()), !dbg !4022
  %22 = icmp eq i32 %20, 0, !dbg !4041
  br i1 %22, label %24, label %23, !dbg !4039

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4043, !tbaa !811
  call void @llvm.dbg.value(metadata i32 -1, metadata !4021, metadata !DIExpression()), !dbg !4022
  br label %24, !dbg !4045

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4022
  ret i32 %25, !dbg !4046
}

; Function Attrs: nofree nounwind
declare !dbg !4047 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4050 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4054 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4092, metadata !DIExpression()), !dbg !4093
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4094
  br i1 %2, label %6, label %3, !dbg !4096

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !4097
  %5 = icmp eq i32 %4, 0, !dbg !4097
  br i1 %5, label %6, label %8, !dbg !4098

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4099
  br label %17, !dbg !4100

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4101, metadata !DIExpression()) #26, !dbg !4106
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4108
  %10 = load i32, i32* %9, align 8, !dbg !4108, !tbaa !945
  %11 = and i32 %10, 256, !dbg !4110
  %12 = icmp eq i32 %11, 0, !dbg !4110
  br i1 %12, label %15, label %13, !dbg !4111

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #26, !dbg !4112
  br label %15, !dbg !4112

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4113
  br label %17, !dbg !4114

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4093
  ret i32 %18, !dbg !4115
}

; Function Attrs: nofree nounwind
declare !dbg !4116 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4119 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4157, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i64 %1, metadata !4158, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i32 %2, metadata !4159, metadata !DIExpression()), !dbg !4163
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4164
  %5 = load i8*, i8** %4, align 8, !dbg !4164, !tbaa !4165
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4166
  %7 = load i8*, i8** %6, align 8, !dbg !4166, !tbaa !4167
  %8 = icmp eq i8* %5, %7, !dbg !4168
  br i1 %8, label %9, label %28, !dbg !4169

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4170
  %11 = load i8*, i8** %10, align 8, !dbg !4170, !tbaa !1087
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4171
  %13 = load i8*, i8** %12, align 8, !dbg !4171, !tbaa !4172
  %14 = icmp eq i8* %11, %13, !dbg !4173
  br i1 %14, label %15, label %28, !dbg !4174

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4175
  %17 = load i8*, i8** %16, align 8, !dbg !4175, !tbaa !4176
  %18 = icmp eq i8* %17, null, !dbg !4177
  br i1 %18, label %19, label %28, !dbg !4178

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !4179
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #26, !dbg !4180
  call void @llvm.dbg.value(metadata i64 %21, metadata !4160, metadata !DIExpression()), !dbg !4181
  %22 = icmp eq i64 %21, -1, !dbg !4182
  br i1 %22, label %30, label %23, !dbg !4184

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4185
  %25 = load i32, i32* %24, align 8, !dbg !4186, !tbaa !945
  %26 = and i32 %25, -17, !dbg !4186
  store i32 %26, i32* %24, align 8, !dbg !4186, !tbaa !945
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4187
  store i64 %21, i64* %27, align 8, !dbg !4188, !tbaa !4189
  br label %30, !dbg !4190

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4191
  br label %30, !dbg !4192

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4163
  ret i32 %31, !dbg !4193
}

; Function Attrs: nofree nounwind
declare !dbg !4194 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4197 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4213, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i8* %1, metadata !4214, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 %2, metadata !4215, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4216, metadata !DIExpression()), !dbg !4222
  %6 = bitcast i32* %5 to i8*, !dbg !4223
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #26, !dbg !4223
  %7 = icmp eq i32* %0, null, !dbg !4224
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4226
  call void @llvm.dbg.value(metadata i32* %8, metadata !4213, metadata !DIExpression()), !dbg !4222
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #26, !dbg !4227
  call void @llvm.dbg.value(metadata i64 %9, metadata !4217, metadata !DIExpression()), !dbg !4222
  %10 = icmp ugt i64 %9, -3, !dbg !4228
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !4229
  br i1 %12, label %13, label %18, !dbg !4229

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #26, !dbg !4230
  br i1 %14, label %18, label %15, !dbg !4231

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4232, !tbaa !906
  call void @llvm.dbg.value(metadata i8 %16, metadata !4219, metadata !DIExpression()), !dbg !4233
  %17 = zext i8 %16 to i32, !dbg !4234
  store i32 %17, i32* %8, align 4, !dbg !4235, !tbaa !811
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4222
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #26, !dbg !4236
  ret i64 %19, !dbg !4236
}

; Function Attrs: nounwind
declare !dbg !4237 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4241 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4279, metadata !DIExpression()), !dbg !4284
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #26, !dbg !4285
  call void @llvm.dbg.value(metadata i1 undef, metadata !4280, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4284
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4286, metadata !DIExpression()), !dbg !4289
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4291
  %4 = load i32, i32* %3, align 8, !dbg !4291, !tbaa !945
  %5 = and i32 %4, 32, !dbg !4292
  %6 = icmp eq i32 %5, 0, !dbg !4292
  call void @llvm.dbg.value(metadata i1 %6, metadata !4282, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4284
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #26, !dbg !4293
  %8 = icmp eq i32 %7, 0, !dbg !4294
  call void @llvm.dbg.value(metadata i1 %8, metadata !4283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4284
  br i1 %6, label %9, label %19, !dbg !4295

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4297
  call void @llvm.dbg.value(metadata i1 %10, metadata !4280, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4284
  %11 = or i1 %10, %8, !dbg !4298
  %12 = xor i1 %8, true, !dbg !4298
  %13 = sext i1 %12 to i32, !dbg !4298
  br i1 %11, label %22, label %14, !dbg !4298

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #30, !dbg !4299
  %16 = load i32, i32* %15, align 4, !dbg !4299, !tbaa !811
  %17 = icmp ne i32 %16, 9, !dbg !4300
  %18 = sext i1 %17 to i32, !dbg !4301
  br label %22, !dbg !4301

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4302

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #30, !dbg !4304
  store i32 0, i32* %21, align 4, !dbg !4306, !tbaa !811
  br label %22, !dbg !4304

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4284
  ret i32 %23, !dbg !4307
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4308 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4312, metadata !DIExpression()), !dbg !4317
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4318
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #26, !dbg !4318
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4313, metadata !DIExpression()), !dbg !4319
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #26, !dbg !4320
  %5 = icmp eq i32 %4, 0, !dbg !4320
  br i1 %5, label %6, label %13, !dbg !4322

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4323
  %8 = load i16, i16* %7, align 16, !dbg !4323
  %9 = icmp eq i16 %8, 67, !dbg !4323
  br i1 %9, label %13, label %10, !dbg !4324

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.151, i64 0, i64 0), i64 6), !dbg !4325
  %12 = icmp ne i32 %11, 0, !dbg !4326
  br label %13, !dbg !4324

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4317
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #26, !dbg !4327
  ret i1 %14, !dbg !4327
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4328 {
  %1 = tail call i8* @nl_langinfo(i32 14) #26, !dbg !4333
  call void @llvm.dbg.value(metadata i8* %1, metadata !4332, metadata !DIExpression()), !dbg !4334
  %2 = icmp eq i8* %1, null, !dbg !4335
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.154, i64 0, i64 0), i8* %1, !dbg !4337
  call void @llvm.dbg.value(metadata i8* %3, metadata !4332, metadata !DIExpression()), !dbg !4334
  %4 = load i8, i8* %3, align 1, !dbg !4338, !tbaa !906
  %5 = icmp eq i8 %4, 0, !dbg !4342
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.155, i64 0, i64 0), i8* %3, !dbg !4343
  call void @llvm.dbg.value(metadata i8* %6, metadata !4332, metadata !DIExpression()), !dbg !4334
  ret i8* %6, !dbg !4344
}

; Function Attrs: nounwind
declare !dbg !4345 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4348 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4352, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i8* %1, metadata !4353, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64 %2, metadata !4354, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i32 %0, metadata !4356, metadata !DIExpression()) #26, !dbg !4365
  call void @llvm.dbg.value(metadata i8* %1, metadata !4359, metadata !DIExpression()) #26, !dbg !4365
  call void @llvm.dbg.value(metadata i64 %2, metadata !4360, metadata !DIExpression()) #26, !dbg !4365
  call void @llvm.dbg.value(metadata i32 %0, metadata !4367, metadata !DIExpression()) #26, !dbg !4373
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !4375
  call void @llvm.dbg.value(metadata i8* %4, metadata !4372, metadata !DIExpression()) #26, !dbg !4373
  call void @llvm.dbg.value(metadata i8* %4, metadata !4361, metadata !DIExpression()) #26, !dbg !4365
  %5 = icmp eq i8* %4, null, !dbg !4376
  br i1 %5, label %6, label %9, !dbg !4377

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4378
  br i1 %7, label %19, label %8, !dbg !4381

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4382, !tbaa !906
  br label %19, !dbg !4383

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #27, !dbg !4384
  call void @llvm.dbg.value(metadata i64 %10, metadata !4362, metadata !DIExpression()) #26, !dbg !4385
  %11 = icmp ult i64 %10, %2, !dbg !4386
  br i1 %11, label %12, label %14, !dbg !4388

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4389
  call void @llvm.dbg.value(metadata i8* %1, metadata !4391, metadata !DIExpression()) #26, !dbg !4396
  call void @llvm.dbg.value(metadata i8* %4, metadata !4394, metadata !DIExpression()) #26, !dbg !4396
  call void @llvm.dbg.value(metadata i64 %13, metadata !4395, metadata !DIExpression()) #26, !dbg !4396
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #26, !dbg !4398
  br label %19, !dbg !4399

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4400
  br i1 %15, label %19, label %16, !dbg !4403

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4404
  call void @llvm.dbg.value(metadata i8* %1, metadata !4391, metadata !DIExpression()) #26, !dbg !4406
  call void @llvm.dbg.value(metadata i8* %4, metadata !4394, metadata !DIExpression()) #26, !dbg !4406
  call void @llvm.dbg.value(metadata i64 %17, metadata !4395, metadata !DIExpression()) #26, !dbg !4406
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #26, !dbg !4408
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4409
  store i8 0, i8* %18, align 1, !dbg !4410, !tbaa !906
  br label %19, !dbg !4411

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4412
  ret i32 %20, !dbg !4413
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4414 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4416, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.value(metadata i32 %0, metadata !4367, metadata !DIExpression()) #26, !dbg !4418
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !4420
  call void @llvm.dbg.value(metadata i8* %2, metadata !4372, metadata !DIExpression()) #26, !dbg !4418
  ret i8* %2, !dbg !4421
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
attributes #10 = { nofree nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #12 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { norecurse nounwind readnone sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nounwind }
attributes #18 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #23 = { nofree nosync nounwind willreturn }
attributes #24 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { nounwind }
attributes #27 = { nounwind readonly willreturn }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { nounwind readnone willreturn }
attributes #31 = { cold }

!llvm.dbg.cu = !{!2, !55, !61, !77, !85, !168, !91, !96, !171, !162, !178, !195, !197, !208, !212, !214, !216, !218, !220, !223, !225, !227, !616}
!llvm.ident = !{!618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618, !618}
!llvm.module.flags = !{!619, !620, !621, !622, !623}

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
!60 = distinct !DIGlobalVariable(name: "b64c", scope: !61, file: !62, line: 62, type: !72, isLocal: true, isDefinition: true)
!61 = distinct !DICompileUnit(language: DW_LANG_C99, file: !62, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !63, globals: !64, splitDebugInlining: false, nameTableKind: None)
!62 = !DIFile(filename: "lib/base64.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!63 = !{!32, !30}
!64 = !{!59, !65}
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "b64", scope: !61, file: !62, line: 252, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 2048, elements: !70)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!70 = !{!71}
!71 = !DISubrange(count: 256)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 512, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 64)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "file_name", scope: !77, file: !78, line: 46, type: !36, isLocal: true, isDefinition: true)
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, globals: !79, splitDebugInlining: false, nameTableKind: None)
!78 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!79 = !{!75, !80}
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !77, file: !78, line: 56, type: !82, isLocal: true, isDefinition: true)
!82 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "exit_failure", scope: !85, file: !86, line: 24, type: !88, isLocal: false, isDefinition: true)
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, globals: !87, splitDebugInlining: false, nameTableKind: None)
!86 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!87 = !{!83}
!88 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "program_name", scope: !91, file: !92, line: 33, type: !36, isLocal: false, isDefinition: true)
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !63, globals: !93, splitDebugInlining: false, nameTableKind: None)
!92 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!93 = !{!89}
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !96, file: !97, line: 85, type: !156, isLocal: false, isDefinition: true)
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !98, retainedTypes: !119, globals: !121, splitDebugInlining: false, nameTableKind: None)
!97 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!98 = !{!5, !99, !104}
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !100)
!100 = !{!101, !102, !103}
!101 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!102 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!103 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !105, line: 46, baseType: !7, size: 32, elements: !106)
!105 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!107 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!108 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!109 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!110 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!111 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!112 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!113 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!114 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!115 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!116 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!117 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!118 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!119 = !{!47, !120, !33, !30}
!120 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!121 = !{!94, !122, !128, !140, !142, !145, !152, !154}
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !96, file: !97, line: 101, type: !124, isLocal: false, isDefinition: true)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 320, elements: !126)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!126 = !{!127}
!127 = !DISubrange(count: 10)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !96, file: !97, line: 1052, type: !130, isLocal: false, isDefinition: true)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !97, line: 65, size: 448, elements: !131)
!131 = !{!132, !133, !134, !138, !139}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !130, file: !97, line: 68, baseType: !5, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !97, line: 71, baseType: !47, size: 32, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !130, file: !97, line: 75, baseType: !135, size: 256, offset: 64)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 8)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !130, file: !97, line: 78, baseType: !36, size: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !130, file: !97, line: 81, baseType: !36, size: 64, offset: 384)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !96, file: !97, line: 116, type: !130, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "slot0", scope: !96, file: !97, line: 842, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2048, elements: !70)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "slotvec", scope: !96, file: !97, line: 845, type: !147, isLocal: true, isDefinition: true)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !97, line: 834, size: 128, elements: !149)
!149 = !{!150, !151}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !148, file: !97, line: 836, baseType: !33, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !148, file: !97, line: 837, baseType: !30, size: 64, offset: 64)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "nslots", scope: !96, file: !97, line: 843, type: !47, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "slotvec0", scope: !96, file: !97, line: 844, type: !148, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 704, elements: !158)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!158 = !{!159}
!159 = !DISubrange(count: 11)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !162, file: !163, line: 26, type: !165, isLocal: false, isDefinition: true)
!162 = distinct !DICompileUnit(language: DW_LANG_C99, file: !163, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, globals: !164, splitDebugInlining: false, nameTableKind: None)
!163 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!164 = !{!160}
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 376, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 47)
!168 = distinct !DICompileUnit(language: DW_LANG_C99, file: !169, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !170, splitDebugInlining: false, nameTableKind: None)
!169 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!170 = !{!20}
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !173, retainedTypes: !177, splitDebugInlining: false, nameTableKind: None)
!172 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!173 = !{!174}
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !172, line: 40, baseType: !7, size: 32, elements: !175)
!175 = !{!176}
!176 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!177 = !{!32}
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180, retainedTypes: !194, splitDebugInlining: false, nameTableKind: None)
!179 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!180 = !{!181}
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !183, file: !182, line: 186, baseType: !7, size: 32, elements: !192)
!182 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!183 = distinct !DISubprogram(name: "x2nrealloc", scope: !182, file: !182, line: 174, type: !184, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !187)
!184 = !DISubroutineType(types: !185)
!185 = !{!32, !32, !186, !33}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!187 = !{!188, !189, !190, !191}
!188 = !DILocalVariable(name: "p", arg: 1, scope: !183, file: !182, line: 174, type: !32)
!189 = !DILocalVariable(name: "pn", arg: 2, scope: !183, file: !182, line: 174, type: !186)
!190 = !DILocalVariable(name: "s", arg: 3, scope: !183, file: !182, line: 174, type: !33)
!191 = !DILocalVariable(name: "n", scope: !183, file: !182, line: 176, type: !33)
!192 = !{!193}
!193 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!194 = !{!33, !30, !32}
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, splitDebugInlining: false, nameTableKind: None)
!196 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !199, splitDebugInlining: false, nameTableKind: None)
!198 = !DIFile(filename: "lib/xdectoumax.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!199 = !{!200}
!200 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !201, line: 25, baseType: !7, size: 32, elements: !202)
!201 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!202 = !{!203, !204, !205, !206, !207}
!203 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!204 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!205 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!206 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!207 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!208 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !210, retainedTypes: !211, splitDebugInlining: false, nameTableKind: None)
!209 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!210 = !{!200, !104}
!211 = !{!47, !120}
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !177, splitDebugInlining: false, nameTableKind: None)
!213 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, splitDebugInlining: false, nameTableKind: None)
!215 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!216 = distinct !DICompileUnit(language: DW_LANG_C99, file: !217, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !177, splitDebugInlining: false, nameTableKind: None)
!217 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !177, splitDebugInlining: false, nameTableKind: None)
!219 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !222, splitDebugInlining: false, nameTableKind: None)
!221 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!222 = !{!33}
!223 = distinct !DICompileUnit(language: DW_LANG_C99, file: !224, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, splitDebugInlining: false, nameTableKind: None)
!224 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, splitDebugInlining: false, nameTableKind: None)
!226 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !229, retainedTypes: !177, splitDebugInlining: false, nameTableKind: None)
!228 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!229 = !{!230}
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !231, line: 41, baseType: !7, size: 32, elements: !232)
!231 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!232 = !{!233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615}
!233 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!234 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!235 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!236 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!237 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!238 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!239 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!240 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!241 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!242 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!243 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!244 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!245 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!246 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!247 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!248 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!249 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!250 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!251 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!252 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!253 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!254 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!255 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!256 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!257 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!258 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!259 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!260 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!261 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!262 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!263 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!264 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!265 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!266 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!267 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!268 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!269 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!270 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!271 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!272 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!273 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!274 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!275 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!276 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!277 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!278 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!279 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!280 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!281 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!282 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!341 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!344 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!345 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!346 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!347 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!348 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!349 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!350 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!351 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!352 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!353 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!354 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!355 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!428 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!501 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!502 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!503 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!504 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!505 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!506 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!507 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!508 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!509 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!510 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!511 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!512 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!513 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!514 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!515 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!517 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!518 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!519 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!520 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!521 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!522 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!548 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!549 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!550 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!551 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!552 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!557 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!558 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!559 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!560 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!616 = distinct !DICompileUnit(language: DW_LANG_C99, file: !617, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !177, splitDebugInlining: false, nameTableKind: None)
!617 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!618 = !{!"clang version 12.0.1"}
!619 = !{i32 7, !"Dwarf Version", i32 4}
!620 = !{i32 2, !"Debug Info Version", i32 3}
!621 = !{i32 1, !"wchar_size", i32 4}
!622 = !{i32 7, !"PIC Level", i32 2}
!623 = !{i32 7, !"PIE Level", i32 2}
!624 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 95, type: !625, scopeLine: 96, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !627)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !47}
!627 = !{!628}
!628 = !DILocalVariable(name: "status", arg: 1, scope: !624, file: !3, line: 95, type: !47)
!629 = !DILocation(line: 0, scope: !624)
!630 = !DILocation(line: 97, column: 14, scope: !631)
!631 = distinct !DILexicalBlock(scope: !624, file: !3, line: 97, column: 7)
!632 = !DILocation(line: 97, column: 7, scope: !624)
!633 = !DILocation(line: 98, column: 5, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !3, line: 98, column: 5)
!635 = !{!636, !636, i64 0}
!636 = !{!"any pointer", !637, i64 0}
!637 = !{!"omnipotent char", !638, i64 0}
!638 = !{!"Simple C/C++ TBAA"}
!639 = !DILocation(line: 101, column: 7, scope: !640)
!640 = distinct !DILexicalBlock(scope: !631, file: !3, line: 100, column: 5)
!641 = !DILocation(line: 110, column: 7, scope: !640)
!642 = !DILocation(line: 583, column: 3, scope: !643, inlinedAt: !647)
!643 = distinct !DISubprogram(name: "emit_stdin_note", scope: !644, file: !644, line: 581, type: !645, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !57)
!644 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!645 = !DISubroutineType(types: !646)
!646 = !{null}
!647 = distinct !DILocation(line: 115, column: 7, scope: !640)
!648 = !DILocation(line: 590, column: 3, scope: !649, inlinedAt: !650)
!649 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !644, file: !644, line: 588, type: !645, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !57)
!650 = distinct !DILocation(line: 116, column: 7, scope: !640)
!651 = !DILocation(line: 140, column: 7, scope: !640)
!652 = !DILocation(line: 154, column: 7, scope: !640)
!653 = !DILocation(line: 155, column: 7, scope: !640)
!654 = !DILocation(line: 164, column: 7, scope: !640)
!655 = !DILocalVariable(name: "program", arg: 1, scope: !656, file: !644, line: 634, type: !36)
!656 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !644, file: !644, line: 634, type: !657, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !659)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !36}
!659 = !{!655, !660, !669, !670, !672}
!660 = !DILocalVariable(name: "infomap", scope: !656, file: !644, line: 636, type: !661)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !662, size: 896, elements: !667)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !656, file: !644, line: 636, size: 128, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !663, file: !644, line: 636, baseType: !36, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !663, file: !644, line: 636, baseType: !36, size: 64, offset: 64)
!667 = !{!668}
!668 = !DISubrange(count: 7)
!669 = !DILocalVariable(name: "node", scope: !656, file: !644, line: 646, type: !36)
!670 = !DILocalVariable(name: "map_prog", scope: !656, file: !644, line: 647, type: !671)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!672 = !DILocalVariable(name: "lc_messages", scope: !656, file: !644, line: 659, type: !36)
!673 = !DILocation(line: 0, scope: !656, inlinedAt: !674)
!674 = distinct !DILocation(line: 172, column: 7, scope: !640)
!675 = !DILocation(line: 636, column: 3, scope: !656, inlinedAt: !674)
!676 = !DILocation(line: 636, column: 67, scope: !656, inlinedAt: !674)
!677 = !DILocation(line: 647, column: 36, scope: !656, inlinedAt: !674)
!678 = !DILocation(line: 649, column: 3, scope: !656, inlinedAt: !674)
!679 = !DILocation(line: 649, column: 33, scope: !656, inlinedAt: !674)
!680 = !DILocation(line: 650, column: 13, scope: !656, inlinedAt: !674)
!681 = !DILocation(line: 649, column: 20, scope: !656, inlinedAt: !674)
!682 = !{!683, !636, i64 0}
!683 = !{!"infomap", !636, i64 0, !636, i64 8}
!684 = !DILocation(line: 649, column: 10, scope: !656, inlinedAt: !674)
!685 = !DILocation(line: 649, column: 28, scope: !656, inlinedAt: !674)
!686 = distinct !{!686, !678, !680, !687}
!687 = !{!"llvm.loop.mustprogress"}
!688 = !DILocation(line: 652, column: 17, scope: !689, inlinedAt: !674)
!689 = distinct !DILexicalBlock(scope: !656, file: !644, line: 652, column: 7)
!690 = !{!683, !636, i64 8}
!691 = !DILocation(line: 652, column: 7, scope: !689, inlinedAt: !674)
!692 = !DILocation(line: 652, column: 7, scope: !656, inlinedAt: !674)
!693 = !DILocation(line: 655, column: 3, scope: !656, inlinedAt: !674)
!694 = !DILocation(line: 659, column: 29, scope: !656, inlinedAt: !674)
!695 = !DILocation(line: 660, column: 7, scope: !696, inlinedAt: !674)
!696 = distinct !DILexicalBlock(scope: !656, file: !644, line: 660, column: 7)
!697 = !DILocation(line: 660, column: 19, scope: !696, inlinedAt: !674)
!698 = !DILocation(line: 660, column: 22, scope: !696, inlinedAt: !674)
!699 = !DILocation(line: 660, column: 7, scope: !656, inlinedAt: !674)
!700 = !DILocation(line: 666, column: 7, scope: !701, inlinedAt: !674)
!701 = distinct !DILexicalBlock(scope: !696, file: !644, line: 661, column: 5)
!702 = !DILocation(line: 668, column: 5, scope: !701, inlinedAt: !674)
!703 = !DILocation(line: 669, column: 3, scope: !656, inlinedAt: !674)
!704 = !DILocation(line: 671, column: 3, scope: !656, inlinedAt: !674)
!705 = !DILocation(line: 673, column: 1, scope: !656, inlinedAt: !674)
!706 = !DILocation(line: 175, column: 3, scope: !624)
!707 = !DISubprogram(name: "dcgettext", scope: !708, file: !708, line: 51, type: !709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!708 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!709 = !DISubroutineType(types: !710)
!710 = !{!30, !36, !36, !47}
!711 = !DISubprogram(name: "fputs_unlocked", scope: !712, file: !712, line: 667, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!712 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!713 = !DISubroutineType(types: !714)
!714 = !{!47, !36, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !717, line: 49, size: 1728, elements: !718)
!717 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!718 = !{!719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !734, !735, !736, !737, !741, !742, !743, !747, !750, !752, !755, !758, !759, !760, !761, !762}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !716, file: !717, line: 51, baseType: !47, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !716, file: !717, line: 54, baseType: !30, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !716, file: !717, line: 55, baseType: !30, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !716, file: !717, line: 56, baseType: !30, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !716, file: !717, line: 57, baseType: !30, size: 64, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !716, file: !717, line: 58, baseType: !30, size: 64, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !716, file: !717, line: 59, baseType: !30, size: 64, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !716, file: !717, line: 60, baseType: !30, size: 64, offset: 448)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !716, file: !717, line: 61, baseType: !30, size: 64, offset: 512)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !716, file: !717, line: 64, baseType: !30, size: 64, offset: 576)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !716, file: !717, line: 65, baseType: !30, size: 64, offset: 640)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !716, file: !717, line: 66, baseType: !30, size: 64, offset: 704)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !716, file: !717, line: 68, baseType: !732, size: 64, offset: 768)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !717, line: 36, flags: DIFlagFwdDecl)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !716, file: !717, line: 70, baseType: !715, size: 64, offset: 832)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !716, file: !717, line: 72, baseType: !47, size: 32, offset: 896)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !716, file: !717, line: 73, baseType: !47, size: 32, offset: 928)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !716, file: !717, line: 74, baseType: !738, size: 64, offset: 960)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !739, line: 152, baseType: !740)
!739 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!740 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !716, file: !717, line: 77, baseType: !120, size: 16, offset: 1024)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !716, file: !717, line: 78, baseType: !69, size: 8, offset: 1040)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !716, file: !717, line: 79, baseType: !744, size: 8, offset: 1048)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 1)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !716, file: !717, line: 81, baseType: !748, size: 64, offset: 1088)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !717, line: 43, baseType: null)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !716, file: !717, line: 89, baseType: !751, size: 64, offset: 1152)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !739, line: 153, baseType: !740)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !716, file: !717, line: 91, baseType: !753, size: 64, offset: 1216)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !717, line: 37, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !716, file: !717, line: 92, baseType: !756, size: 64, offset: 1280)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !717, line: 38, flags: DIFlagFwdDecl)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !716, file: !717, line: 93, baseType: !715, size: 64, offset: 1344)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !716, file: !717, line: 94, baseType: !32, size: 64, offset: 1408)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !716, file: !717, line: 95, baseType: !33, size: 64, offset: 1472)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !716, file: !717, line: 96, baseType: !47, size: 32, offset: 1536)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !716, file: !717, line: 98, baseType: !763, size: 160, offset: 1568)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, elements: !764)
!764 = !{!765}
!765 = !DISubrange(count: 20)
!766 = !DISubprogram(name: "setlocale", scope: !767, file: !767, line: 122, type: !768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!767 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!768 = !DISubroutineType(types: !769)
!769 = !{!30, !47, !36}
!770 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 1087, type: !771, scopeLine: 1088, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !774)
!771 = !DISubroutineType(types: !772)
!772 = !{!47, !47, !773}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!774 = !{!775, !776, !777, !778, !782, !783, !784, !785}
!775 = !DILocalVariable(name: "argc", arg: 1, scope: !770, file: !3, line: 1087, type: !47)
!776 = !DILocalVariable(name: "argv", arg: 2, scope: !770, file: !3, line: 1087, type: !773)
!777 = !DILocalVariable(name: "opt", scope: !770, file: !3, line: 1089, type: !47)
!778 = !DILocalVariable(name: "input_fh", scope: !770, file: !3, line: 1090, type: !779)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !781, line: 7, baseType: !716)
!781 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!782 = !DILocalVariable(name: "infile", scope: !770, file: !3, line: 1091, type: !36)
!783 = !DILocalVariable(name: "decode", scope: !770, file: !3, line: 1094, type: !82)
!784 = !DILocalVariable(name: "ignore_garbage", scope: !770, file: !3, line: 1096, type: !82)
!785 = !DILocalVariable(name: "wrap_column", scope: !770, file: !3, line: 1098, type: !786)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !787, line: 102, baseType: !788)
!787 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !739, line: 73, baseType: !35)
!789 = !DILocation(line: 0, scope: !770)
!790 = !DILocation(line: 1105, column: 21, scope: !770)
!791 = !DILocation(line: 1105, column: 3, scope: !770)
!792 = !DILocation(line: 1106, column: 3, scope: !770)
!793 = !DILocation(line: 1107, column: 3, scope: !770)
!794 = !DILocation(line: 1108, column: 3, scope: !770)
!795 = !DILocation(line: 1110, column: 3, scope: !770)
!796 = !DILocation(line: 1112, column: 3, scope: !770)
!797 = !DILocation(line: 1098, column: 13, scope: !770)
!798 = !DILocation(line: 1112, column: 17, scope: !770)
!799 = distinct !{!799, !796, !800, !687}
!800 = !DILocation(line: 1148, column: 7, scope: !770)
!801 = !DILocation(line: 1120, column: 35, scope: !802)
!802 = distinct !DILexicalBlock(scope: !770, file: !3, line: 1114, column: 7)
!803 = !DILocation(line: 1121, column: 35, scope: !802)
!804 = !DILocation(line: 1120, column: 23, scope: !802)
!805 = !DILocation(line: 1122, column: 9, scope: !802)
!806 = !DILocation(line: 1141, column: 7, scope: !802)
!807 = !DILocation(line: 1143, column: 7, scope: !802)
!808 = !DILocation(line: 1146, column: 9, scope: !802)
!809 = !DILocation(line: 1223, column: 14, scope: !810)
!810 = distinct !DILexicalBlock(scope: !770, file: !3, line: 1223, column: 7)
!811 = !{!812, !812, i64 0}
!812 = !{!"int", !637, i64 0}
!813 = !DILocation(line: 1223, column: 12, scope: !810)
!814 = !DILocation(line: 1223, column: 21, scope: !810)
!815 = !DILocation(line: 1223, column: 7, scope: !770)
!816 = !DILocation(line: 1225, column: 20, scope: !817)
!817 = distinct !DILexicalBlock(scope: !810, file: !3, line: 1224, column: 5)
!818 = !DILocation(line: 1225, column: 55, scope: !817)
!819 = !DILocation(line: 1225, column: 61, scope: !817)
!820 = !DILocation(line: 1225, column: 50, scope: !817)
!821 = !DILocation(line: 1225, column: 43, scope: !817)
!822 = !DILocation(line: 1225, column: 7, scope: !817)
!823 = !DILocation(line: 1226, column: 7, scope: !817)
!824 = !DILocation(line: 1229, column: 14, scope: !825)
!825 = distinct !DILexicalBlock(scope: !770, file: !3, line: 1229, column: 7)
!826 = !DILocation(line: 1229, column: 7, scope: !770)
!827 = !DILocation(line: 1230, column: 14, scope: !825)
!828 = !DILocation(line: 1230, column: 5, scope: !825)
!829 = !DILocation(line: 0, scope: !825)
!830 = !DILocation(line: 1234, column: 7, scope: !831)
!831 = distinct !DILexicalBlock(scope: !770, file: !3, line: 1234, column: 7)
!832 = !DILocation(line: 1234, column: 7, scope: !770)
!833 = !DILocation(line: 1237, column: 18, scope: !834)
!834 = distinct !DILexicalBlock(scope: !831, file: !3, line: 1235, column: 5)
!835 = !DILocation(line: 1238, column: 5, scope: !834)
!836 = !DILocation(line: 1241, column: 18, scope: !837)
!837 = distinct !DILexicalBlock(scope: !831, file: !3, line: 1240, column: 5)
!838 = !DILocation(line: 1242, column: 20, scope: !839)
!839 = distinct !DILexicalBlock(scope: !837, file: !3, line: 1242, column: 11)
!840 = !DILocation(line: 1242, column: 11, scope: !837)
!841 = !DILocation(line: 1243, column: 9, scope: !839)
!842 = !DILocation(line: 0, scope: !831)
!843 = !DILocation(line: 1246, column: 3, scope: !770)
!844 = !DILocation(line: 0, scope: !845)
!845 = distinct !DILexicalBlock(scope: !770, file: !3, line: 1248, column: 7)
!846 = !DILocation(line: 1248, column: 7, scope: !770)
!847 = !DILocation(line: 1249, column: 34, scope: !845)
!848 = !DILocalVariable(name: "in", arg: 1, scope: !849, file: !3, line: 1016, type: !779)
!849 = distinct !DISubprogram(name: "do_decode", scope: !3, file: !3, line: 1016, type: !850, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !852)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !779, !779, !82}
!852 = !{!848, !853, !854, !855, !856, !857, !858, !867, !869, !870, !871, !876, !882, !883}
!853 = !DILocalVariable(name: "out", arg: 2, scope: !849, file: !3, line: 1016, type: !779)
!854 = !DILocalVariable(name: "ignore_garbage", arg: 3, scope: !849, file: !3, line: 1016, type: !82)
!855 = !DILocalVariable(name: "inbuf", scope: !849, file: !3, line: 1018, type: !30)
!856 = !DILocalVariable(name: "outbuf", scope: !849, file: !3, line: 1018, type: !30)
!857 = !DILocalVariable(name: "sum", scope: !849, file: !3, line: 1019, type: !33)
!858 = !DILocalVariable(name: "ctx", scope: !849, file: !3, line: 1020, type: !859)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base64_decode_context", file: !860, line: 35, size: 64, elements: !861)
!860 = !DIFile(filename: "./lib/base64.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !859, file: !860, line: 37, baseType: !7, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !859, file: !860, line: 38, baseType: !864, size: 32, offset: 32)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !865)
!865 = !{!866}
!866 = !DISubrange(count: 4)
!867 = !DILocalVariable(name: "ok", scope: !868, file: !3, line: 1032, type: !82)
!868 = distinct !DILexicalBlock(scope: !849, file: !3, line: 1031, column: 5)
!869 = !DILocalVariable(name: "n", scope: !868, file: !3, line: 1033, type: !33)
!870 = !DILocalVariable(name: "k", scope: !868, file: !3, line: 1034, type: !7)
!871 = !DILocalVariable(name: "i", scope: !872, file: !3, line: 1043, type: !33)
!872 = distinct !DILexicalBlock(scope: !873, file: !3, line: 1043, column: 15)
!873 = distinct !DILexicalBlock(scope: !874, file: !3, line: 1042, column: 13)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 1041, column: 15)
!875 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1038, column: 9)
!876 = !DILocalVariable(name: "__ptr", scope: !877, file: !3, line: 1070, type: !36)
!877 = distinct !DILexicalBlock(scope: !878, file: !3, line: 1070, column: 15)
!878 = distinct !DILexicalBlock(scope: !879, file: !3, line: 1070, column: 15)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 1064, column: 9)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 1063, column: 7)
!881 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1063, column: 7)
!882 = !DILocalVariable(name: "__stream", scope: !877, file: !3, line: 1070, type: !779)
!883 = !DILocalVariable(name: "__cnt", scope: !877, file: !3, line: 1070, type: !33)
!884 = !DILocation(line: 0, scope: !849, inlinedAt: !885)
!885 = distinct !DILocation(line: 1249, column: 5, scope: !845)
!886 = !DILocation(line: 1020, column: 3, scope: !849, inlinedAt: !885)
!887 = !DILocation(line: 1020, column: 30, scope: !849, inlinedAt: !885)
!888 = !DILocation(line: 1022, column: 11, scope: !849, inlinedAt: !885)
!889 = !DILocation(line: 1023, column: 12, scope: !849, inlinedAt: !885)
!890 = !DILocation(line: 1028, column: 3, scope: !849, inlinedAt: !885)
!891 = !DILocation(line: 1030, column: 3, scope: !849, inlinedAt: !885)
!892 = !DILocation(line: 1033, column: 7, scope: !868, inlinedAt: !885)
!893 = !DILocation(line: 1037, column: 7, scope: !868, inlinedAt: !885)
!894 = !DILocation(line: 0, scope: !868, inlinedAt: !885)
!895 = !DILocation(line: 1039, column: 15, scope: !875, inlinedAt: !885)
!896 = !DILocation(line: 1039, column: 13, scope: !875, inlinedAt: !885)
!897 = !{!898, !898, i64 0}
!898 = !{!"long", !637, i64 0}
!899 = !DILocation(line: 1041, column: 15, scope: !875, inlinedAt: !885)
!900 = !DILocation(line: 0, scope: !872, inlinedAt: !885)
!901 = !DILocation(line: 1045, column: 41, scope: !902, inlinedAt: !885)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 1045, column: 23)
!903 = distinct !DILexicalBlock(scope: !904, file: !3, line: 1044, column: 17)
!904 = distinct !DILexicalBlock(scope: !872, file: !3, line: 1043, column: 15)
!905 = !DILocation(line: 1045, column: 31, scope: !902, inlinedAt: !885)
!906 = !{!637, !637, i64 0}
!907 = !DILocation(line: 1045, column: 23, scope: !902, inlinedAt: !885)
!908 = !DILocation(line: 1045, column: 47, scope: !902, inlinedAt: !885)
!909 = !DILocation(line: 1046, column: 22, scope: !902, inlinedAt: !885)
!910 = !DILocation(line: 1046, column: 21, scope: !902, inlinedAt: !885)
!911 = !DILocation(line: 1048, column: 42, scope: !902, inlinedAt: !885)
!912 = !DILocation(line: 1048, column: 63, scope: !902, inlinedAt: !885)
!913 = !DILocation(line: 1048, column: 68, scope: !902, inlinedAt: !885)
!914 = !DILocation(line: 1048, column: 72, scope: !902, inlinedAt: !885)
!915 = !DILocalVariable(name: "__dest", arg: 1, scope: !916, file: !917, line: 34, type: !32)
!916 = distinct !DISubprogram(name: "memmove", scope: !917, file: !917, line: 34, type: !918, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !922)
!917 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!918 = !DISubroutineType(types: !919)
!919 = !{!32, !32, !920, !33}
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!922 = !{!915, !923, !924}
!923 = !DILocalVariable(name: "__src", arg: 2, scope: !916, file: !917, line: 34, type: !920)
!924 = !DILocalVariable(name: "__len", arg: 3, scope: !916, file: !917, line: 34, type: !33)
!925 = !DILocation(line: 0, scope: !916, inlinedAt: !926)
!926 = distinct !DILocation(line: 1048, column: 21, scope: !902, inlinedAt: !885)
!927 = !DILocation(line: 36, column: 10, scope: !916, inlinedAt: !926)
!928 = !DILocation(line: 1043, column: 34, scope: !904, inlinedAt: !885)
!929 = !DILocation(line: 1043, column: 40, scope: !904, inlinedAt: !885)
!930 = !DILocation(line: 1043, column: 15, scope: !872, inlinedAt: !885)
!931 = distinct !{!931, !930, !932, !687}
!932 = !DILocation(line: 1049, column: 17, scope: !872, inlinedAt: !885)
!933 = !DILocation(line: 1052, column: 18, scope: !875, inlinedAt: !885)
!934 = !DILocation(line: 1052, column: 15, scope: !875, inlinedAt: !885)
!935 = !DILocalVariable(name: "__stream", arg: 1, scope: !936, file: !937, line: 135, type: !779)
!936 = distinct !DISubprogram(name: "ferror_unlocked", scope: !937, file: !937, line: 135, type: !938, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !940)
!937 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!938 = !DISubroutineType(types: !939)
!939 = !{!47, !779}
!940 = !{!935}
!941 = !DILocation(line: 0, scope: !936, inlinedAt: !942)
!942 = distinct !DILocation(line: 1054, column: 15, scope: !943, inlinedAt: !885)
!943 = distinct !DILexicalBlock(scope: !875, file: !3, line: 1054, column: 15)
!944 = !DILocation(line: 137, column: 10, scope: !936, inlinedAt: !942)
!945 = !{!946, !812, i64 0}
!946 = !{!"_IO_FILE", !812, i64 0, !636, i64 8, !636, i64 16, !636, i64 24, !636, i64 32, !636, i64 40, !636, i64 48, !636, i64 56, !636, i64 64, !636, i64 72, !636, i64 80, !636, i64 88, !636, i64 96, !636, i64 104, !812, i64 112, !812, i64 116, !898, i64 120, !947, i64 128, !637, i64 130, !637, i64 131, !636, i64 136, !898, i64 144, !636, i64 152, !636, i64 160, !636, i64 168, !636, i64 176, !898, i64 184, !812, i64 192, !637, i64 196}
!947 = !{!"short", !637, i64 0}
!948 = !DILocation(line: 1054, column: 15, scope: !943, inlinedAt: !885)
!949 = !DILocation(line: 1054, column: 15, scope: !875, inlinedAt: !885)
!950 = !DILocation(line: 1055, column: 13, scope: !943, inlinedAt: !885)
!951 = !DILocation(line: 1057, column: 18, scope: !868, inlinedAt: !885)
!952 = !DILocation(line: 1057, column: 48, scope: !868, inlinedAt: !885)
!953 = !DILocalVariable(name: "__stream", arg: 1, scope: !954, file: !937, line: 128, type: !779)
!954 = distinct !DISubprogram(name: "feof_unlocked", scope: !937, file: !937, line: 128, type: !938, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !955)
!955 = !{!953}
!956 = !DILocation(line: 0, scope: !954, inlinedAt: !957)
!957 = distinct !DILocation(line: 1057, column: 52, scope: !868, inlinedAt: !885)
!958 = distinct !{!958, !893, !959, !687}
!959 = !DILocation(line: 1057, column: 61, scope: !868, inlinedAt: !885)
!960 = !DILocation(line: 0, scope: !954, inlinedAt: !961)
!961 = distinct !DILocation(line: 1063, column: 29, scope: !880, inlinedAt: !885)
!962 = !DILocation(line: 130, column: 10, scope: !954, inlinedAt: !961)
!963 = !DILocation(line: 1063, column: 28, scope: !880, inlinedAt: !885)
!964 = !DILocation(line: 1063, column: 25, scope: !880, inlinedAt: !885)
!965 = !DILocation(line: 1063, column: 21, scope: !880, inlinedAt: !885)
!966 = !DILocation(line: 1063, column: 7, scope: !881, inlinedAt: !885)
!967 = distinct !{!967, !966, !968, !687}
!968 = !DILocation(line: 1075, column: 9, scope: !881, inlinedAt: !885)
!969 = !DILocation(line: 1065, column: 22, scope: !970, inlinedAt: !885)
!970 = distinct !DILexicalBlock(scope: !879, file: !3, line: 1065, column: 15)
!971 = !DILocation(line: 1067, column: 13, scope: !879, inlinedAt: !885)
!972 = !DILocation(line: 1068, column: 49, scope: !879, inlinedAt: !885)
!973 = !DILocation(line: 1068, column: 47, scope: !879, inlinedAt: !885)
!974 = !DILocation(line: 1068, column: 16, scope: !879, inlinedAt: !885)
!975 = !DILocation(line: 1070, column: 15, scope: !878, inlinedAt: !885)
!976 = !DILocation(line: 1070, column: 44, scope: !878, inlinedAt: !885)
!977 = !DILocation(line: 1070, column: 42, scope: !878, inlinedAt: !885)
!978 = !DILocation(line: 1070, column: 15, scope: !879, inlinedAt: !885)
!979 = !DILocation(line: 1071, column: 13, scope: !878, inlinedAt: !885)
!980 = !DILocation(line: 1063, column: 41, scope: !880, inlinedAt: !885)
!981 = !DILocation(line: 1073, column: 15, scope: !879, inlinedAt: !885)
!982 = !DILocation(line: 1074, column: 13, scope: !983, inlinedAt: !885)
!983 = distinct !DILexicalBlock(scope: !879, file: !3, line: 1073, column: 15)
!984 = !DILocation(line: 1076, column: 5, scope: !849, inlinedAt: !885)
!985 = !DILocation(line: 0, scope: !954, inlinedAt: !986)
!986 = distinct !DILocation(line: 1077, column: 11, scope: !849, inlinedAt: !885)
!987 = !DILocation(line: 1076, column: 5, scope: !868, inlinedAt: !885)
!988 = distinct !{!988, !891, !989, !687}
!989 = !DILocation(line: 1077, column: 20, scope: !849, inlinedAt: !885)
!990 = !DILocation(line: 1084, column: 1, scope: !849, inlinedAt: !885)
!991 = !DILocation(line: 1249, column: 5, scope: !845)
!992 = !DILocalVariable(name: "in", arg: 1, scope: !993, file: !3, line: 971, type: !779)
!993 = distinct !DISubprogram(name: "do_encode", scope: !3, file: !3, line: 971, type: !994, scopeLine: 972, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !996)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !779, !779, !786}
!996 = !{!992, !997, !998, !999, !1000, !1001, !1002, !1003}
!997 = !DILocalVariable(name: "out", arg: 2, scope: !993, file: !3, line: 971, type: !779)
!998 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !993, file: !3, line: 971, type: !786)
!999 = !DILocalVariable(name: "current_column", scope: !993, file: !3, line: 973, type: !33)
!1000 = !DILocalVariable(name: "inbuf", scope: !993, file: !3, line: 974, type: !30)
!1001 = !DILocalVariable(name: "outbuf", scope: !993, file: !3, line: 974, type: !30)
!1002 = !DILocalVariable(name: "sum", scope: !993, file: !3, line: 975, type: !33)
!1003 = !DILocalVariable(name: "n", scope: !1004, file: !3, line: 982, type: !33)
!1004 = distinct !DILexicalBlock(scope: !993, file: !3, line: 981, column: 5)
!1005 = !DILocation(line: 0, scope: !993, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 1251, column: 5, scope: !845)
!1007 = !DILocation(line: 977, column: 11, scope: !993, inlinedAt: !1006)
!1008 = !DILocation(line: 978, column: 12, scope: !993, inlinedAt: !1006)
!1009 = !DILocation(line: 980, column: 3, scope: !993, inlinedAt: !1006)
!1010 = !DILocation(line: 973, column: 10, scope: !993, inlinedAt: !1006)
!1011 = !DILocation(line: 985, column: 7, scope: !1004, inlinedAt: !1006)
!1012 = !DILocation(line: 0, scope: !1004, inlinedAt: !1006)
!1013 = !DILocation(line: 987, column: 15, scope: !1014, inlinedAt: !1006)
!1014 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 986, column: 9)
!1015 = !DILocation(line: 988, column: 15, scope: !1014, inlinedAt: !1006)
!1016 = !DILocation(line: 0, scope: !954, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 990, column: 15, scope: !1004, inlinedAt: !1006)
!1018 = !DILocation(line: 130, column: 10, scope: !954, inlinedAt: !1017)
!1019 = !DILocation(line: 990, column: 15, scope: !1004, inlinedAt: !1006)
!1020 = !DILocation(line: 990, column: 25, scope: !1004, inlinedAt: !1006)
!1021 = !DILocation(line: 0, scope: !936, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 990, column: 29, scope: !1004, inlinedAt: !1006)
!1023 = !DILocation(line: 990, column: 29, scope: !1004, inlinedAt: !1006)
!1024 = !DILocation(line: 990, column: 41, scope: !1004, inlinedAt: !1006)
!1025 = distinct !{!1025, !1011, !1026, !687}
!1026 = !DILocation(line: 990, column: 63, scope: !1004, inlinedAt: !1006)
!1027 = !DILocation(line: 992, column: 15, scope: !1028, inlinedAt: !1006)
!1028 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 992, column: 11)
!1029 = !DILocation(line: 992, column: 11, scope: !1004, inlinedAt: !1006)
!1030 = !DILocation(line: 996, column: 44, scope: !1031, inlinedAt: !1006)
!1031 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 993, column: 9)
!1032 = !DILocation(line: 996, column: 11, scope: !1031, inlinedAt: !1006)
!1033 = !DILocalVariable(name: "buffer", arg: 1, scope: !1034, file: !3, line: 936, type: !36)
!1034 = distinct !DISubprogram(name: "wrap_write", scope: !3, file: !3, line: 936, type: !1035, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1037)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !36, !33, !786, !186, !779}
!1037 = !{!1033, !1038, !1039, !1040, !1041, !1042, !1043, !1048, !1049, !1050, !1054, !1055, !1060, !1061}
!1038 = !DILocalVariable(name: "len", arg: 2, scope: !1034, file: !3, line: 936, type: !33)
!1039 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !1034, file: !3, line: 937, type: !786)
!1040 = !DILocalVariable(name: "current_column", arg: 4, scope: !1034, file: !3, line: 937, type: !186)
!1041 = !DILocalVariable(name: "out", arg: 5, scope: !1034, file: !3, line: 937, type: !779)
!1042 = !DILocalVariable(name: "written", scope: !1034, file: !3, line: 939, type: !33)
!1043 = !DILocalVariable(name: "__ptr", scope: !1044, file: !3, line: 944, type: !36)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 944, column: 11)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 944, column: 11)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 942, column: 5)
!1047 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 941, column: 7)
!1048 = !DILocalVariable(name: "__stream", scope: !1044, file: !3, line: 944, type: !779)
!1049 = !DILocalVariable(name: "__cnt", scope: !1044, file: !3, line: 944, type: !33)
!1050 = !DILocalVariable(name: "cols_remaining", scope: !1051, file: !3, line: 950, type: !786)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 949, column: 7)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 948, column: 5)
!1053 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 948, column: 5)
!1054 = !DILocalVariable(name: "to_write", scope: !1051, file: !3, line: 951, type: !33)
!1055 = !DILocalVariable(name: "__ptr", scope: !1056, file: !3, line: 962, type: !36)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 962, column: 17)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 962, column: 17)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 961, column: 11)
!1059 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 954, column: 13)
!1060 = !DILocalVariable(name: "__stream", scope: !1056, file: !3, line: 962, type: !779)
!1061 = !DILocalVariable(name: "__cnt", scope: !1056, file: !3, line: 962, type: !33)
!1062 = !DILocation(line: 0, scope: !1034, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 998, column: 11, scope: !1031, inlinedAt: !1006)
!1064 = !DILocation(line: 941, column: 7, scope: !1034, inlinedAt: !1063)
!1065 = !DILocation(line: 948, column: 31, scope: !1052, inlinedAt: !1063)
!1066 = !DILocation(line: 948, column: 5, scope: !1053, inlinedAt: !1063)
!1067 = !DILocation(line: 944, column: 11, scope: !1045, inlinedAt: !1063)
!1068 = !DILocation(line: 944, column: 43, scope: !1045, inlinedAt: !1063)
!1069 = !DILocation(line: 944, column: 11, scope: !1046, inlinedAt: !1063)
!1070 = !DILocation(line: 945, column: 9, scope: !1045, inlinedAt: !1063)
!1071 = !DILocation(line: 950, column: 48, scope: !1051, inlinedAt: !1063)
!1072 = !DILocation(line: 0, scope: !1051, inlinedAt: !1063)
!1073 = !DILocation(line: 952, column: 20, scope: !1051, inlinedAt: !1063)
!1074 = !DILocation(line: 954, column: 22, scope: !1059, inlinedAt: !1063)
!1075 = !DILocation(line: 954, column: 13, scope: !1051, inlinedAt: !1063)
!1076 = !DILocalVariable(name: "__c", arg: 1, scope: !1077, file: !937, line: 91, type: !47)
!1077 = distinct !DISubprogram(name: "fputc_unlocked", scope: !937, file: !937, line: 91, type: !1078, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1080)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!47, !47, !779}
!1080 = !{!1076, !1081}
!1081 = !DILocalVariable(name: "__stream", arg: 2, scope: !1077, file: !937, line: 91, type: !779)
!1082 = !DILocation(line: 0, scope: !1077, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 956, column: 17, scope: !1084, inlinedAt: !1063)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 956, column: 17)
!1085 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 955, column: 11)
!1086 = !DILocation(line: 93, column: 10, scope: !1077, inlinedAt: !1083)
!1087 = !{!946, !636, i64 40}
!1088 = !{!946, !636, i64 48}
!1089 = !{!"branch_weights", i32 2000, i32 1}
!1090 = !DILocation(line: 956, column: 17, scope: !1085, inlinedAt: !1063)
!1091 = !DILocation(line: 956, column: 35, scope: !1084, inlinedAt: !1063)
!1092 = !DILocation(line: 957, column: 15, scope: !1084, inlinedAt: !1063)
!1093 = !DILocation(line: 962, column: 17, scope: !1057, inlinedAt: !1063)
!1094 = !DILocation(line: 962, column: 64, scope: !1057, inlinedAt: !1063)
!1095 = !DILocation(line: 962, column: 17, scope: !1058, inlinedAt: !1063)
!1096 = !DILocation(line: 963, column: 15, scope: !1057, inlinedAt: !1063)
!1097 = !DILocation(line: 964, column: 29, scope: !1058, inlinedAt: !1063)
!1098 = !DILocation(line: 965, column: 21, scope: !1058, inlinedAt: !1063)
!1099 = !DILocation(line: 0, scope: !1059, inlinedAt: !1063)
!1100 = !DILocation(line: 0, scope: !1053, inlinedAt: !1063)
!1101 = distinct !{!1101, !1066, !1102, !687}
!1102 = !DILocation(line: 967, column: 7, scope: !1053, inlinedAt: !1063)
!1103 = !DILocation(line: 0, scope: !954, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 1002, column: 11, scope: !993, inlinedAt: !1006)
!1105 = !DILocation(line: 130, column: 10, scope: !954, inlinedAt: !1104)
!1106 = !DILocation(line: 1002, column: 11, scope: !993, inlinedAt: !1006)
!1107 = !DILocation(line: 1002, column: 21, scope: !993, inlinedAt: !1006)
!1108 = !DILocation(line: 0, scope: !936, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 1002, column: 25, scope: !993, inlinedAt: !1006)
!1110 = !DILocation(line: 1002, column: 25, scope: !993, inlinedAt: !1006)
!1111 = !DILocation(line: 1002, column: 37, scope: !993, inlinedAt: !1006)
!1112 = distinct !{!1112, !1009, !1113, !687}
!1113 = !DILocation(line: 1002, column: 60, scope: !993, inlinedAt: !1006)
!1114 = !DILocation(line: 1005, column: 7, scope: !1115, inlinedAt: !1006)
!1115 = distinct !DILexicalBlock(scope: !993, file: !3, line: 1005, column: 7)
!1116 = !DILocation(line: 1005, column: 19, scope: !1115, inlinedAt: !1006)
!1117 = !DILocation(line: 0, scope: !1077, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 1005, column: 44, scope: !1115, inlinedAt: !1006)
!1119 = !DILocation(line: 93, column: 10, scope: !1077, inlinedAt: !1118)
!1120 = !DILocation(line: 1005, column: 7, scope: !993, inlinedAt: !1006)
!1121 = !DILocation(line: 1005, column: 62, scope: !1115, inlinedAt: !1006)
!1122 = !DILocation(line: 1006, column: 5, scope: !1115, inlinedAt: !1006)
!1123 = !DILocation(line: 0, scope: !936, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 1008, column: 7, scope: !1125, inlinedAt: !1006)
!1125 = distinct !DILexicalBlock(scope: !993, file: !3, line: 1008, column: 7)
!1126 = !DILocation(line: 137, column: 10, scope: !936, inlinedAt: !1124)
!1127 = !DILocation(line: 1008, column: 7, scope: !1125, inlinedAt: !1006)
!1128 = !DILocation(line: 1008, column: 7, scope: !993, inlinedAt: !1006)
!1129 = !DILocation(line: 1009, column: 5, scope: !1125, inlinedAt: !1006)
!1130 = !DILocation(line: 1253, column: 7, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !770, file: !3, line: 1253, column: 7)
!1132 = !DILocation(line: 1253, column: 25, scope: !1131)
!1133 = !DILocation(line: 1253, column: 7, scope: !770)
!1134 = !DILocation(line: 1255, column: 11, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 1255, column: 11)
!1136 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 1254, column: 5)
!1137 = !DILocation(line: 0, scope: !1135)
!1138 = !DILocation(line: 1255, column: 11, scope: !1136)
!1139 = !DILocation(line: 1256, column: 9, scope: !1135)
!1140 = !DILocation(line: 1258, column: 9, scope: !1135)
!1141 = !DILocation(line: 1262, column: 1, scope: !770)
!1142 = !DISubprogram(name: "bindtextdomain", scope: !708, file: !708, line: 86, type: !1143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!30, !36, !36}
!1145 = !DISubprogram(name: "textdomain", scope: !708, file: !708, line: 82, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!30, !36}
!1148 = !DISubprogram(name: "atexit", scope: !1149, file: !1149, line: 595, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!1149 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!47, !1152}
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!1153 = !DISubprogram(name: "getopt_long", scope: !43, file: !43, line: 66, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!47, !47, !1156, !36, !1158, !49}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!1159 = !DISubprogram(name: "error", scope: !1160, file: !1160, line: 52, type: !1161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!1160 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !47, !47, !36, null}
!1163 = !DISubprogram(name: "fwrite_unlocked", scope: !712, file: !712, line: 680, type: !1164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!35, !920, !35, !35, !715}
!1166 = distinct !DISubprogram(name: "base64_encode", scope: !62, file: !62, line: 88, type: !1167, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1171)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null, !1169, !33, !1170, !33}
!1169 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!1170 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!1171 = !{!1172, !1173, !1174, !1175}
!1172 = !DILocalVariable(name: "in", arg: 1, scope: !1166, file: !62, line: 88, type: !1169)
!1173 = !DILocalVariable(name: "inlen", arg: 2, scope: !1166, file: !62, line: 88, type: !33)
!1174 = !DILocalVariable(name: "out", arg: 3, scope: !1166, file: !62, line: 89, type: !1170)
!1175 = !DILocalVariable(name: "outlen", arg: 4, scope: !1166, file: !62, line: 89, type: !33)
!1176 = !DILocation(line: 0, scope: !1166)
!1177 = !DILocation(line: 98, column: 14, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1166, file: !62, line: 98, column: 7)
!1179 = !DILocation(line: 98, column: 18, scope: !1178)
!1180 = !DILocation(line: 98, column: 23, scope: !1178)
!1181 = !DILocation(line: 98, column: 42, scope: !1178)
!1182 = !DILocation(line: 98, column: 46, scope: !1178)
!1183 = !DILocation(line: 98, column: 32, scope: !1178)
!1184 = !DILocation(line: 98, column: 7, scope: !1166)
!1185 = !{!1186}
!1186 = distinct !{!1186, !1187, !"base64_encode_fast: argument 0"}
!1187 = distinct !{!1187, !"base64_encode_fast"}
!1188 = !DILocation(line: 100, column: 7, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1178, file: !62, line: 99, column: 5)
!1190 = !{!1191}
!1191 = distinct !{!1191, !1187, !"base64_encode_fast: argument 1"}
!1192 = !DILocalVariable(name: "in", arg: 1, scope: !1193, file: !62, line: 69, type: !1169)
!1193 = distinct !DISubprogram(name: "base64_encode_fast", scope: !62, file: !62, line: 69, type: !1194, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1196)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !1169, !33, !1170}
!1196 = !{!1192, !1197, !1198}
!1197 = !DILocalVariable(name: "inlen", arg: 2, scope: !1193, file: !62, line: 69, type: !33)
!1198 = !DILocalVariable(name: "out", arg: 3, scope: !1193, file: !62, line: 69, type: !1170)
!1199 = !DILocation(line: 0, scope: !1193, inlinedAt: !1200)
!1200 = distinct !DILocation(line: 100, column: 7, scope: !1189)
!1201 = !DILocation(line: 71, column: 3, scope: !1193, inlinedAt: !1200)
!1202 = !DILocation(line: 73, column: 32, scope: !1203, inlinedAt: !1200)
!1203 = distinct !DILexicalBlock(scope: !1193, file: !62, line: 72, column: 5)
!1204 = !DILocation(line: 73, column: 39, scope: !1203, inlinedAt: !1200)
!1205 = !DILocation(line: 73, column: 16, scope: !1203, inlinedAt: !1200)
!1206 = !{!1186, !1191}
!1207 = !DILocation(line: 73, column: 11, scope: !1203, inlinedAt: !1200)
!1208 = !DILocation(line: 73, column: 14, scope: !1203, inlinedAt: !1200)
!1209 = !DILocation(line: 74, column: 23, scope: !1203, inlinedAt: !1200)
!1210 = !DILocation(line: 74, column: 40, scope: !1203, inlinedAt: !1200)
!1211 = !DILocation(line: 74, column: 59, scope: !1203, inlinedAt: !1200)
!1212 = !DILocation(line: 74, column: 66, scope: !1203, inlinedAt: !1200)
!1213 = !DILocation(line: 74, column: 73, scope: !1203, inlinedAt: !1200)
!1214 = !DILocation(line: 74, column: 16, scope: !1203, inlinedAt: !1200)
!1215 = !DILocation(line: 74, column: 11, scope: !1203, inlinedAt: !1200)
!1216 = !DILocation(line: 74, column: 14, scope: !1203, inlinedAt: !1200)
!1217 = !DILocation(line: 75, column: 23, scope: !1203, inlinedAt: !1200)
!1218 = !DILocation(line: 75, column: 40, scope: !1203, inlinedAt: !1200)
!1219 = !DILocation(line: 75, column: 59, scope: !1203, inlinedAt: !1200)
!1220 = !DILocation(line: 75, column: 66, scope: !1203, inlinedAt: !1200)
!1221 = !DILocation(line: 75, column: 73, scope: !1203, inlinedAt: !1200)
!1222 = !DILocation(line: 75, column: 16, scope: !1203, inlinedAt: !1200)
!1223 = !DILocation(line: 75, column: 11, scope: !1203, inlinedAt: !1200)
!1224 = !DILocation(line: 75, column: 14, scope: !1203, inlinedAt: !1200)
!1225 = !DILocation(line: 76, column: 38, scope: !1203, inlinedAt: !1200)
!1226 = !DILocation(line: 76, column: 16, scope: !1203, inlinedAt: !1200)
!1227 = !DILocation(line: 76, column: 11, scope: !1203, inlinedAt: !1200)
!1228 = !DILocation(line: 76, column: 14, scope: !1203, inlinedAt: !1200)
!1229 = !DILocation(line: 78, column: 13, scope: !1203, inlinedAt: !1200)
!1230 = !DILocation(line: 79, column: 10, scope: !1203, inlinedAt: !1200)
!1231 = distinct !{!1231, !1201, !1232, !687}
!1232 = !DILocation(line: 80, column: 5, scope: !1193, inlinedAt: !1200)
!1233 = !DILocation(line: 104, column: 10, scope: !1166)
!1234 = !DILocation(line: 104, column: 16, scope: !1166)
!1235 = !DILocation(line: 104, column: 3, scope: !1166)
!1236 = !DILocation(line: 106, column: 32, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1166, file: !62, line: 105, column: 5)
!1238 = !DILocation(line: 106, column: 39, scope: !1237)
!1239 = !DILocation(line: 106, column: 16, scope: !1237)
!1240 = !DILocation(line: 106, column: 11, scope: !1237)
!1241 = !DILocation(line: 106, column: 14, scope: !1237)
!1242 = !DILocation(line: 107, column: 12, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1237, file: !62, line: 107, column: 11)
!1244 = !DILocation(line: 107, column: 11, scope: !1237)
!1245 = !DILocation(line: 109, column: 33, scope: !1237)
!1246 = !DILocation(line: 109, column: 23, scope: !1237)
!1247 = !DILocation(line: 109, column: 40, scope: !1237)
!1248 = !DILocation(line: 110, column: 27, scope: !1237)
!1249 = !DILocation(line: 110, column: 47, scope: !1237)
!1250 = !DILocation(line: 110, column: 54, scope: !1237)
!1251 = !DILocation(line: 110, column: 24, scope: !1237)
!1252 = !DILocation(line: 111, column: 23, scope: !1237)
!1253 = !DILocation(line: 109, column: 16, scope: !1237)
!1254 = !DILocation(line: 109, column: 11, scope: !1237)
!1255 = !DILocation(line: 109, column: 14, scope: !1237)
!1256 = !DILocation(line: 112, column: 12, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1237, file: !62, line: 112, column: 11)
!1258 = !DILocation(line: 112, column: 11, scope: !1237)
!1259 = !DILocation(line: 115, column: 10, scope: !1237)
!1260 = !DILocation(line: 116, column: 29, scope: !1237)
!1261 = !DILocation(line: 116, column: 19, scope: !1237)
!1262 = !DILocation(line: 116, column: 36, scope: !1237)
!1263 = !DILocation(line: 117, column: 23, scope: !1237)
!1264 = !DILocation(line: 118, column: 19, scope: !1237)
!1265 = !DILocation(line: 116, column: 12, scope: !1237)
!1266 = !DILocation(line: 114, column: 14, scope: !1237)
!1267 = !DILocation(line: 120, column: 12, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1237, file: !62, line: 120, column: 11)
!1269 = !DILocation(line: 120, column: 11, scope: !1237)
!1270 = !DILocation(line: 117, column: 43, scope: !1237)
!1271 = !DILocation(line: 117, column: 50, scope: !1237)
!1272 = !DILocation(line: 122, column: 39, scope: !1237)
!1273 = !DILocation(line: 122, column: 46, scope: !1237)
!1274 = !DILocation(line: 122, column: 24, scope: !1237)
!1275 = !DILocation(line: 122, column: 16, scope: !1237)
!1276 = !DILocation(line: 114, column: 11, scope: !1237)
!1277 = !DILocation(line: 122, column: 14, scope: !1237)
!1278 = !DILocation(line: 123, column: 12, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1237, file: !62, line: 123, column: 11)
!1280 = !DILocation(line: 123, column: 11, scope: !1237)
!1281 = !DILocation(line: 122, column: 11, scope: !1237)
!1282 = !DILocation(line: 125, column: 11, scope: !1237)
!1283 = !DILocation(line: 127, column: 11, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1237, file: !62, line: 127, column: 11)
!1285 = !DILocation(line: 127, column: 11, scope: !1237)
!1286 = distinct !{!1286, !1235, !1287, !687}
!1287 = !DILocation(line: 129, column: 5, scope: !1166)
!1288 = !DILocation(line: 131, column: 7, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1166, file: !62, line: 131, column: 7)
!1290 = !DILocation(line: 131, column: 7, scope: !1166)
!1291 = !DILocation(line: 132, column: 10, scope: !1289)
!1292 = !DILocation(line: 132, column: 5, scope: !1289)
!1293 = !DILocation(line: 133, column: 1, scope: !1166)
!1294 = distinct !DISubprogram(name: "base64_encode_alloc", scope: !62, file: !62, line: 145, type: !1295, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1297)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!33, !36, !33, !773}
!1297 = !{!1298, !1299, !1300, !1301}
!1298 = !DILocalVariable(name: "in", arg: 1, scope: !1294, file: !62, line: 145, type: !36)
!1299 = !DILocalVariable(name: "inlen", arg: 2, scope: !1294, file: !62, line: 145, type: !33)
!1300 = !DILocalVariable(name: "out", arg: 3, scope: !1294, file: !62, line: 145, type: !773)
!1301 = !DILocalVariable(name: "outlen", scope: !1294, file: !62, line: 147, type: !33)
!1302 = !DILocation(line: 0, scope: !1294)
!1303 = !DILocation(line: 147, column: 23, scope: !1294)
!1304 = !DILocation(line: 147, column: 21, scope: !1294)
!1305 = !DILocation(line: 161, column: 13, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1294, file: !62, line: 161, column: 7)
!1307 = !DILocation(line: 161, column: 7, scope: !1294)
!1308 = !DILocation(line: 163, column: 12, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1306, file: !62, line: 162, column: 5)
!1310 = !DILocation(line: 164, column: 7, scope: !1309)
!1311 = !DILocation(line: 167, column: 10, scope: !1294)
!1312 = !DILocation(line: 167, column: 8, scope: !1294)
!1313 = !DILocation(line: 168, column: 8, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1294, file: !62, line: 168, column: 7)
!1315 = !DILocation(line: 168, column: 7, scope: !1294)
!1316 = !DILocation(line: 171, column: 3, scope: !1294)
!1317 = !DILocation(line: 173, column: 3, scope: !1294)
!1318 = !DILocation(line: 174, column: 1, scope: !1294)
!1319 = distinct !DISubprogram(name: "isbase64", scope: !62, file: !62, line: 329, type: !1320, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1322)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!82, !31}
!1322 = !{!1323}
!1323 = !DILocalVariable(name: "ch", arg: 1, scope: !1319, file: !62, line: 329, type: !31)
!1324 = !DILocation(line: 0, scope: !1319)
!1325 = !DILocation(line: 331, column: 49, scope: !1319)
!1326 = !DILocation(line: 331, column: 46, scope: !1319)
!1327 = !DILocation(line: 331, column: 3, scope: !1319)
!1328 = distinct !DISubprogram(name: "base64_decode_ctx_init", scope: !62, file: !62, line: 336, type: !1329, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1336)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{null, !1331}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base64_decode_context", file: !860, line: 35, size: 64, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1332, file: !860, line: 37, baseType: !7, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1332, file: !860, line: 38, baseType: !864, size: 32, offset: 32)
!1336 = !{!1337}
!1337 = !DILocalVariable(name: "ctx", arg: 1, scope: !1328, file: !62, line: 336, type: !1331)
!1338 = !DILocation(line: 0, scope: !1328)
!1339 = !DILocation(line: 338, column: 8, scope: !1328)
!1340 = !DILocation(line: 338, column: 10, scope: !1328)
!1341 = !{!1342, !812, i64 0}
!1342 = !{!"base64_decode_context", !812, i64 0, !637, i64 4}
!1343 = !DILocation(line: 339, column: 1, scope: !1328)
!1344 = distinct !DISubprogram(name: "base64_decode_ctx", scope: !62, file: !62, line: 488, type: !1345, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1347)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!82, !1331, !1169, !33, !1170, !186}
!1347 = !{!1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1359, !1361}
!1348 = !DILocalVariable(name: "ctx", arg: 1, scope: !1344, file: !62, line: 488, type: !1331)
!1349 = !DILocalVariable(name: "in", arg: 2, scope: !1344, file: !62, line: 489, type: !1169)
!1350 = !DILocalVariable(name: "inlen", arg: 3, scope: !1344, file: !62, line: 489, type: !33)
!1351 = !DILocalVariable(name: "out", arg: 4, scope: !1344, file: !62, line: 490, type: !1170)
!1352 = !DILocalVariable(name: "outlen", arg: 5, scope: !1344, file: !62, line: 490, type: !186)
!1353 = !DILocalVariable(name: "outleft", scope: !1344, file: !62, line: 492, type: !33)
!1354 = !DILocalVariable(name: "ignore_newlines", scope: !1344, file: !62, line: 493, type: !82)
!1355 = !DILocalVariable(name: "flush_ctx", scope: !1344, file: !62, line: 494, type: !82)
!1356 = !DILocalVariable(name: "ctx_i", scope: !1344, file: !62, line: 495, type: !7)
!1357 = !DILocalVariable(name: "outleft_save", scope: !1358, file: !62, line: 506, type: !33)
!1358 = distinct !DILexicalBlock(scope: !1344, file: !62, line: 505, column: 5)
!1359 = !DILocalVariable(name: "in_end", scope: !1360, file: !62, line: 539, type: !36)
!1360 = distinct !DILexicalBlock(scope: !1358, file: !62, line: 538, column: 7)
!1361 = !DILocalVariable(name: "non_nl", scope: !1360, file: !62, line: 540, type: !36)
!1362 = !DILocation(line: 0, scope: !1344)
!1363 = !DILocation(line: 492, column: 20, scope: !1344)
!1364 = !DILocation(line: 493, column: 30, scope: !1344)
!1365 = !DILocation(line: 497, column: 7, scope: !1344)
!1366 = !DILocation(line: 499, column: 20, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !62, line: 498, column: 5)
!1368 = distinct !DILexicalBlock(scope: !1344, file: !62, line: 497, column: 7)
!1369 = !DILocation(line: 500, column: 25, scope: !1367)
!1370 = !DILocation(line: 501, column: 5, scope: !1367)
!1371 = !DILocation(line: 504, column: 3, scope: !1344)
!1372 = !DILocation(line: 0, scope: !1358)
!1373 = !DILocation(line: 507, column: 22, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1358, file: !62, line: 507, column: 11)
!1375 = !DILocalVariable(name: "in", arg: 1, scope: !1376, file: !62, line: 403, type: !1169)
!1376 = distinct !DISubprogram(name: "decode_4", scope: !62, file: !62, line: 403, type: !1377, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1380)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!82, !1169, !33, !1379, !186}
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1380 = !{!1375, !1381, !1382, !1383, !1384}
!1381 = !DILocalVariable(name: "inlen", arg: 2, scope: !1376, file: !62, line: 403, type: !33)
!1382 = !DILocalVariable(name: "outp", arg: 3, scope: !1376, file: !62, line: 404, type: !1379)
!1383 = !DILocalVariable(name: "outleft", arg: 4, scope: !1376, file: !62, line: 404, type: !186)
!1384 = !DILocalVariable(name: "out", scope: !1376, file: !62, line: 406, type: !30)
!1385 = !DILocation(line: 0, scope: !1376, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 514, column: 20, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !62, line: 514, column: 19)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !62, line: 510, column: 13)
!1389 = distinct !DILexicalBlock(scope: !1374, file: !62, line: 508, column: 9)
!1390 = !{!1391}
!1391 = distinct !{!1391, !1392, !"decode_4: argument 0"}
!1392 = distinct !{!1392, !"decode_4"}
!1393 = !DILocation(line: 514, column: 20, scope: !1387)
!1394 = !DILocation(line: 410, column: 18, scope: !1395, inlinedAt: !1386)
!1395 = distinct !DILexicalBlock(scope: !1376, file: !62, line: 410, column: 7)
!1396 = !DILocation(line: 0, scope: !1319, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 410, column: 8, scope: !1395, inlinedAt: !1386)
!1398 = !DILocation(line: 331, column: 49, scope: !1319, inlinedAt: !1397)
!1399 = !DILocation(line: 331, column: 46, scope: !1319, inlinedAt: !1397)
!1400 = !DILocation(line: 410, column: 25, scope: !1395, inlinedAt: !1386)
!1401 = !DILocation(line: 410, column: 39, scope: !1395, inlinedAt: !1386)
!1402 = !DILocation(line: 0, scope: !1319, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 410, column: 29, scope: !1395, inlinedAt: !1386)
!1404 = !DILocation(line: 331, column: 49, scope: !1319, inlinedAt: !1403)
!1405 = !DILocation(line: 331, column: 46, scope: !1319, inlinedAt: !1403)
!1406 = !DILocation(line: 410, column: 7, scope: !1376, inlinedAt: !1386)
!1407 = !DILocation(line: 413, column: 7, scope: !1408, inlinedAt: !1386)
!1408 = distinct !DILexicalBlock(scope: !1376, file: !62, line: 413, column: 7)
!1409 = !DILocation(line: 413, column: 7, scope: !1376, inlinedAt: !1386)
!1410 = !DILocation(line: 415, column: 40, scope: !1411, inlinedAt: !1386)
!1411 = distinct !DILexicalBlock(scope: !1408, file: !62, line: 414, column: 5)
!1412 = !DILocation(line: 416, column: 42, scope: !1411, inlinedAt: !1386)
!1413 = !DILocation(line: 416, column: 17, scope: !1411, inlinedAt: !1386)
!1414 = !DILocation(line: 415, column: 11, scope: !1411, inlinedAt: !1386)
!1415 = !DILocation(line: 415, column: 14, scope: !1411, inlinedAt: !1386)
!1416 = !DILocation(line: 417, column: 7, scope: !1411, inlinedAt: !1386)
!1417 = !DILocation(line: 418, column: 5, scope: !1411, inlinedAt: !1386)
!1418 = !DILocation(line: 420, column: 13, scope: !1419, inlinedAt: !1386)
!1419 = distinct !DILexicalBlock(scope: !1376, file: !62, line: 420, column: 7)
!1420 = !DILocation(line: 420, column: 7, scope: !1376, inlinedAt: !1386)
!1421 = !DILocation(line: 423, column: 7, scope: !1422, inlinedAt: !1386)
!1422 = distinct !DILexicalBlock(scope: !1376, file: !62, line: 423, column: 7)
!1423 = !DILocation(line: 423, column: 13, scope: !1422, inlinedAt: !1386)
!1424 = !DILocation(line: 423, column: 7, scope: !1376, inlinedAt: !1386)
!1425 = !DILocation(line: 425, column: 17, scope: !1426, inlinedAt: !1386)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !62, line: 425, column: 11)
!1427 = distinct !DILexicalBlock(scope: !1422, file: !62, line: 424, column: 5)
!1428 = !DILocation(line: 425, column: 11, scope: !1427, inlinedAt: !1386)
!1429 = !DILocation(line: 428, column: 11, scope: !1430, inlinedAt: !1386)
!1430 = distinct !DILexicalBlock(scope: !1427, file: !62, line: 428, column: 11)
!1431 = !DILocation(line: 428, column: 17, scope: !1430, inlinedAt: !1386)
!1432 = !DILocation(line: 428, column: 11, scope: !1427, inlinedAt: !1386)
!1433 = !DILocation(line: 0, scope: !1319, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 433, column: 12, scope: !1435, inlinedAt: !1386)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !62, line: 433, column: 11)
!1436 = distinct !DILexicalBlock(scope: !1422, file: !62, line: 432, column: 5)
!1437 = !DILocation(line: 331, column: 49, scope: !1319, inlinedAt: !1434)
!1438 = !DILocation(line: 331, column: 46, scope: !1319, inlinedAt: !1434)
!1439 = !DILocation(line: 433, column: 11, scope: !1436, inlinedAt: !1386)
!1440 = !DILocation(line: 436, column: 11, scope: !1441, inlinedAt: !1386)
!1441 = distinct !DILexicalBlock(scope: !1436, file: !62, line: 436, column: 11)
!1442 = !DILocation(line: 436, column: 11, scope: !1436, inlinedAt: !1386)
!1443 = !DILocation(line: 438, column: 45, scope: !1444, inlinedAt: !1386)
!1444 = distinct !DILexicalBlock(scope: !1441, file: !62, line: 437, column: 9)
!1445 = !DILocation(line: 439, column: 46, scope: !1444, inlinedAt: !1386)
!1446 = !DILocation(line: 439, column: 21, scope: !1444, inlinedAt: !1386)
!1447 = !DILocation(line: 438, column: 15, scope: !1444, inlinedAt: !1386)
!1448 = !DILocation(line: 438, column: 18, scope: !1444, inlinedAt: !1386)
!1449 = !DILocation(line: 440, column: 11, scope: !1444, inlinedAt: !1386)
!1450 = !DILocation(line: 441, column: 9, scope: !1444, inlinedAt: !1386)
!1451 = !DILocation(line: 443, column: 17, scope: !1452, inlinedAt: !1386)
!1452 = distinct !DILexicalBlock(scope: !1436, file: !62, line: 443, column: 11)
!1453 = !DILocation(line: 443, column: 11, scope: !1436, inlinedAt: !1386)
!1454 = !DILocation(line: 446, column: 11, scope: !1455, inlinedAt: !1386)
!1455 = distinct !DILexicalBlock(scope: !1436, file: !62, line: 446, column: 11)
!1456 = !DILocation(line: 446, column: 17, scope: !1455, inlinedAt: !1386)
!1457 = !DILocation(line: 446, column: 11, scope: !1436, inlinedAt: !1386)
!1458 = !DILocation(line: 448, column: 21, scope: !1459, inlinedAt: !1386)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !62, line: 448, column: 15)
!1460 = distinct !DILexicalBlock(scope: !1455, file: !62, line: 447, column: 9)
!1461 = !DILocation(line: 448, column: 15, scope: !1460, inlinedAt: !1386)
!1462 = !DILocation(line: 0, scope: !1319, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 453, column: 16, scope: !1464, inlinedAt: !1386)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !62, line: 453, column: 15)
!1465 = distinct !DILexicalBlock(scope: !1455, file: !62, line: 452, column: 9)
!1466 = !DILocation(line: 331, column: 49, scope: !1319, inlinedAt: !1463)
!1467 = !DILocation(line: 331, column: 46, scope: !1319, inlinedAt: !1463)
!1468 = !DILocation(line: 453, column: 15, scope: !1465, inlinedAt: !1386)
!1469 = !DILocation(line: 456, column: 15, scope: !1470, inlinedAt: !1386)
!1470 = distinct !DILexicalBlock(scope: !1465, file: !62, line: 456, column: 15)
!1471 = !DILocation(line: 456, column: 15, scope: !1465, inlinedAt: !1386)
!1472 = !DILocation(line: 458, column: 49, scope: !1473, inlinedAt: !1386)
!1473 = distinct !DILexicalBlock(scope: !1470, file: !62, line: 457, column: 13)
!1474 = !DILocation(line: 459, column: 25, scope: !1473, inlinedAt: !1386)
!1475 = !DILocation(line: 458, column: 19, scope: !1473, inlinedAt: !1386)
!1476 = !DILocation(line: 458, column: 22, scope: !1473, inlinedAt: !1386)
!1477 = !DILocation(line: 460, column: 15, scope: !1473, inlinedAt: !1386)
!1478 = !DILocation(line: 461, column: 13, scope: !1473, inlinedAt: !1386)
!1479 = !DILocation(line: 517, column: 18, scope: !1388)
!1480 = !DILocation(line: 407, column: 7, scope: !1376, inlinedAt: !1386)
!1481 = !DILocation(line: 518, column: 21, scope: !1388)
!1482 = !DILocation(line: 407, column: 13, scope: !1483, inlinedAt: !1386)
!1483 = distinct !DILexicalBlock(scope: !1376, file: !62, line: 407, column: 7)
!1484 = distinct !{!1484, !1485, !1486}
!1485 = !DILocation(line: 509, column: 11, scope: !1389)
!1486 = !DILocation(line: 519, column: 13, scope: !1389)
!1487 = !DILocation(line: 492, column: 10, scope: !1344)
!1488 = !DILocation(line: 522, column: 17, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1358, file: !62, line: 522, column: 11)
!1490 = !DILocation(line: 522, column: 22, scope: !1489)
!1491 = !DILocation(line: 527, column: 17, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1358, file: !62, line: 527, column: 11)
!1493 = !DILocation(line: 527, column: 20, scope: !1492)
!1494 = !DILocation(line: 527, column: 24, scope: !1492)
!1495 = !DILocation(line: 527, column: 32, scope: !1492)
!1496 = !DILocation(line: 529, column: 11, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1492, file: !62, line: 528, column: 9)
!1498 = !DILocation(line: 530, column: 11, scope: !1497)
!1499 = !DILocation(line: 531, column: 11, scope: !1497)
!1500 = !DILocation(line: 535, column: 27, scope: !1358)
!1501 = !DILocation(line: 535, column: 11, scope: !1358)
!1502 = !DILocation(line: 539, column: 33, scope: !1360)
!1503 = !DILocation(line: 0, scope: !1360)
!1504 = !DILocation(line: 542, column: 13, scope: !1360)
!1505 = !DILocalVariable(name: "ctx", arg: 1, scope: !1506, file: !62, line: 349, type: !1331)
!1506 = distinct !DISubprogram(name: "get_4", scope: !62, file: !62, line: 349, type: !1507, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1510)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!30, !1331, !1509, !1169, !186}
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1510 = !{!1505, !1511, !1512, !1513, !1514, !1517, !1519}
!1511 = !DILocalVariable(name: "in", arg: 2, scope: !1506, file: !62, line: 350, type: !1509)
!1512 = !DILocalVariable(name: "in_end", arg: 3, scope: !1506, file: !62, line: 350, type: !1169)
!1513 = !DILocalVariable(name: "n_non_newline", arg: 4, scope: !1506, file: !62, line: 351, type: !186)
!1514 = !DILocalVariable(name: "t", scope: !1515, file: !62, line: 358, type: !36)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !62, line: 357, column: 5)
!1516 = distinct !DILexicalBlock(scope: !1506, file: !62, line: 356, column: 7)
!1517 = !DILocalVariable(name: "p", scope: !1518, file: !62, line: 370, type: !36)
!1518 = distinct !DILexicalBlock(scope: !1506, file: !62, line: 368, column: 3)
!1519 = !DILocalVariable(name: "c", scope: !1520, file: !62, line: 373, type: !31)
!1520 = distinct !DILexicalBlock(scope: !1518, file: !62, line: 372, column: 7)
!1521 = !DILocation(line: 0, scope: !1506, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 543, column: 20, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1360, file: !62, line: 542, column: 13)
!1524 = !DILocation(line: 353, column: 12, scope: !1525, inlinedAt: !1522)
!1525 = distinct !DILexicalBlock(scope: !1506, file: !62, line: 353, column: 7)
!1526 = !{!1527}
!1527 = distinct !{!1527, !1528, !"get_4: argument 0"}
!1528 = distinct !{!1528, !"get_4"}
!1529 = !DILocation(line: 353, column: 7, scope: !1506, inlinedAt: !1522)
!1530 = !DILocation(line: 354, column: 12, scope: !1525, inlinedAt: !1522)
!1531 = !DILocation(line: 356, column: 7, scope: !1506, inlinedAt: !1522)
!1532 = !DILocation(line: 0, scope: !1515, inlinedAt: !1522)
!1533 = !DILocation(line: 359, column: 13, scope: !1534, inlinedAt: !1522)
!1534 = distinct !DILexicalBlock(scope: !1515, file: !62, line: 359, column: 11)
!1535 = !DILocation(line: 359, column: 29, scope: !1534, inlinedAt: !1522)
!1536 = !DILocation(line: 359, column: 32, scope: !1534, inlinedAt: !1522)
!1537 = !DILocation(line: 359, column: 52, scope: !1534, inlinedAt: !1522)
!1538 = !DILocation(line: 359, column: 11, scope: !1515, inlinedAt: !1522)
!1539 = !DILocation(line: 362, column: 15, scope: !1540, inlinedAt: !1522)
!1540 = distinct !DILexicalBlock(scope: !1534, file: !62, line: 360, column: 9)
!1541 = !DILocation(line: 0, scope: !1376, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 555, column: 14, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1360, file: !62, line: 555, column: 13)
!1544 = !DILocation(line: 407, column: 7, scope: !1376, inlinedAt: !1542)
!1545 = !DILocation(line: 0, scope: !1518, inlinedAt: !1522)
!1546 = !DILocation(line: 371, column: 14, scope: !1518, inlinedAt: !1522)
!1547 = !DILocation(line: 371, column: 5, scope: !1518, inlinedAt: !1522)
!1548 = !DILocation(line: 374, column: 13, scope: !1520, inlinedAt: !1522)
!1549 = !DILocation(line: 373, column: 20, scope: !1520, inlinedAt: !1522)
!1550 = !DILocation(line: 373, column: 18, scope: !1520, inlinedAt: !1522)
!1551 = !DILocation(line: 0, scope: !1520, inlinedAt: !1522)
!1552 = !DILocation(line: 374, column: 15, scope: !1553, inlinedAt: !1522)
!1553 = distinct !DILexicalBlock(scope: !1520, file: !62, line: 374, column: 13)
!1554 = !DILocation(line: 376, column: 28, scope: !1555, inlinedAt: !1522)
!1555 = distinct !DILexicalBlock(scope: !1553, file: !62, line: 375, column: 11)
!1556 = !DILocation(line: 376, column: 13, scope: !1555, inlinedAt: !1522)
!1557 = !DILocation(line: 376, column: 32, scope: !1555, inlinedAt: !1522)
!1558 = !DILocation(line: 377, column: 24, scope: !1559, inlinedAt: !1522)
!1559 = distinct !DILexicalBlock(scope: !1555, file: !62, line: 377, column: 17)
!1560 = !DILocation(line: 377, column: 17, scope: !1555, inlinedAt: !1522)
!1561 = !DILocation(line: 383, column: 27, scope: !1518, inlinedAt: !1522)
!1562 = !DILocation(line: 383, column: 22, scope: !1518, inlinedAt: !1522)
!1563 = !DILocation(line: 0, scope: !1523)
!1564 = !DILocation(line: 550, column: 19, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1360, file: !62, line: 550, column: 13)
!1566 = !DILocation(line: 550, column: 24, scope: !1565)
!1567 = !DILocation(line: 550, column: 34, scope: !1565)
!1568 = !DILocation(line: 550, column: 38, scope: !1565)
!1569 = !{!1570}
!1570 = distinct !{!1570, !1571, !"decode_4: argument 0"}
!1571 = distinct !{!1571, !"decode_4"}
!1572 = !DILocation(line: 555, column: 14, scope: !1543)
!1573 = !DILocation(line: 407, column: 13, scope: !1483, inlinedAt: !1542)
!1574 = !DILocation(line: 410, column: 18, scope: !1395, inlinedAt: !1542)
!1575 = !DILocation(line: 0, scope: !1319, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 410, column: 8, scope: !1395, inlinedAt: !1542)
!1577 = !DILocation(line: 331, column: 49, scope: !1319, inlinedAt: !1576)
!1578 = !DILocation(line: 331, column: 46, scope: !1319, inlinedAt: !1576)
!1579 = !DILocation(line: 410, column: 25, scope: !1395, inlinedAt: !1542)
!1580 = !DILocation(line: 410, column: 39, scope: !1395, inlinedAt: !1542)
!1581 = !DILocation(line: 0, scope: !1319, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 410, column: 29, scope: !1395, inlinedAt: !1542)
!1583 = !DILocation(line: 331, column: 49, scope: !1319, inlinedAt: !1582)
!1584 = !DILocation(line: 331, column: 46, scope: !1319, inlinedAt: !1582)
!1585 = !DILocation(line: 410, column: 7, scope: !1376, inlinedAt: !1542)
!1586 = !DILocation(line: 413, column: 7, scope: !1408, inlinedAt: !1542)
!1587 = !DILocation(line: 413, column: 7, scope: !1376, inlinedAt: !1542)
!1588 = !DILocation(line: 415, column: 40, scope: !1411, inlinedAt: !1542)
!1589 = !DILocation(line: 416, column: 42, scope: !1411, inlinedAt: !1542)
!1590 = !DILocation(line: 416, column: 17, scope: !1411, inlinedAt: !1542)
!1591 = !DILocation(line: 415, column: 11, scope: !1411, inlinedAt: !1542)
!1592 = !DILocation(line: 415, column: 14, scope: !1411, inlinedAt: !1542)
!1593 = !DILocation(line: 417, column: 7, scope: !1411, inlinedAt: !1542)
!1594 = !DILocation(line: 418, column: 5, scope: !1411, inlinedAt: !1542)
!1595 = !DILocation(line: 420, column: 13, scope: !1419, inlinedAt: !1542)
!1596 = !DILocation(line: 420, column: 7, scope: !1376, inlinedAt: !1542)
!1597 = !DILocation(line: 423, column: 7, scope: !1422, inlinedAt: !1542)
!1598 = !DILocation(line: 423, column: 13, scope: !1422, inlinedAt: !1542)
!1599 = !DILocation(line: 423, column: 7, scope: !1376, inlinedAt: !1542)
!1600 = !DILocation(line: 425, column: 17, scope: !1426, inlinedAt: !1542)
!1601 = !DILocation(line: 425, column: 11, scope: !1427, inlinedAt: !1542)
!1602 = !DILocation(line: 428, column: 11, scope: !1430, inlinedAt: !1542)
!1603 = !DILocation(line: 428, column: 17, scope: !1430, inlinedAt: !1542)
!1604 = !DILocation(line: 428, column: 11, scope: !1427, inlinedAt: !1542)
!1605 = !DILocation(line: 0, scope: !1319, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 433, column: 12, scope: !1435, inlinedAt: !1542)
!1607 = !DILocation(line: 331, column: 49, scope: !1319, inlinedAt: !1606)
!1608 = !DILocation(line: 331, column: 46, scope: !1319, inlinedAt: !1606)
!1609 = !DILocation(line: 433, column: 11, scope: !1436, inlinedAt: !1542)
!1610 = !DILocation(line: 436, column: 11, scope: !1441, inlinedAt: !1542)
!1611 = !DILocation(line: 436, column: 11, scope: !1436, inlinedAt: !1542)
!1612 = !DILocation(line: 438, column: 45, scope: !1444, inlinedAt: !1542)
!1613 = !DILocation(line: 439, column: 46, scope: !1444, inlinedAt: !1542)
!1614 = !DILocation(line: 439, column: 21, scope: !1444, inlinedAt: !1542)
!1615 = !DILocation(line: 438, column: 15, scope: !1444, inlinedAt: !1542)
!1616 = !DILocation(line: 438, column: 18, scope: !1444, inlinedAt: !1542)
!1617 = !DILocation(line: 440, column: 11, scope: !1444, inlinedAt: !1542)
!1618 = !DILocation(line: 441, column: 9, scope: !1444, inlinedAt: !1542)
!1619 = !DILocation(line: 443, column: 17, scope: !1452, inlinedAt: !1542)
!1620 = !DILocation(line: 443, column: 11, scope: !1436, inlinedAt: !1542)
!1621 = !DILocation(line: 446, column: 11, scope: !1455, inlinedAt: !1542)
!1622 = !DILocation(line: 446, column: 17, scope: !1455, inlinedAt: !1542)
!1623 = !DILocation(line: 446, column: 11, scope: !1436, inlinedAt: !1542)
!1624 = !DILocation(line: 448, column: 21, scope: !1459, inlinedAt: !1542)
!1625 = !DILocation(line: 448, column: 15, scope: !1460, inlinedAt: !1542)
!1626 = !DILocation(line: 0, scope: !1319, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 453, column: 16, scope: !1464, inlinedAt: !1542)
!1628 = !DILocation(line: 331, column: 49, scope: !1319, inlinedAt: !1627)
!1629 = !DILocation(line: 331, column: 46, scope: !1319, inlinedAt: !1627)
!1630 = !DILocation(line: 453, column: 15, scope: !1465, inlinedAt: !1542)
!1631 = !DILocation(line: 456, column: 15, scope: !1470, inlinedAt: !1542)
!1632 = !DILocation(line: 456, column: 15, scope: !1465, inlinedAt: !1542)
!1633 = !DILocation(line: 458, column: 49, scope: !1473, inlinedAt: !1542)
!1634 = !DILocation(line: 459, column: 25, scope: !1473, inlinedAt: !1542)
!1635 = !DILocation(line: 458, column: 19, scope: !1473, inlinedAt: !1542)
!1636 = !DILocation(line: 458, column: 22, scope: !1473, inlinedAt: !1542)
!1637 = !DILocation(line: 460, column: 15, scope: !1473, inlinedAt: !1542)
!1638 = !DILocation(line: 461, column: 13, scope: !1473, inlinedAt: !1542)
!1639 = !DILocation(line: 558, column: 24, scope: !1360)
!1640 = distinct !{!1640, !1371, !1641}
!1641 = !DILocation(line: 560, column: 5, scope: !1344)
!1642 = !DILocation(line: 562, column: 11, scope: !1344)
!1643 = !DILocation(line: 564, column: 16, scope: !1344)
!1644 = !DILocation(line: 564, column: 3, scope: !1344)
!1645 = distinct !DISubprogram(name: "base64_decode_alloc_ctx", scope: !62, file: !62, line: 579, type: !1646, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1648)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!82, !1331, !36, !33, !773, !186}
!1648 = !{!1649, !1650, !1651, !1652, !1653, !1654}
!1649 = !DILocalVariable(name: "ctx", arg: 1, scope: !1645, file: !62, line: 579, type: !1331)
!1650 = !DILocalVariable(name: "in", arg: 2, scope: !1645, file: !62, line: 580, type: !36)
!1651 = !DILocalVariable(name: "inlen", arg: 3, scope: !1645, file: !62, line: 580, type: !33)
!1652 = !DILocalVariable(name: "out", arg: 4, scope: !1645, file: !62, line: 580, type: !773)
!1653 = !DILocalVariable(name: "outlen", arg: 5, scope: !1645, file: !62, line: 581, type: !186)
!1654 = !DILocalVariable(name: "needlen", scope: !1645, file: !62, line: 588, type: !33)
!1655 = !DILocation(line: 0, scope: !1645)
!1656 = !DILocation(line: 588, column: 3, scope: !1645)
!1657 = !DILocation(line: 588, column: 31, scope: !1645)
!1658 = !DILocation(line: 588, column: 22, scope: !1645)
!1659 = !DILocation(line: 588, column: 36, scope: !1645)
!1660 = !DILocation(line: 588, column: 10, scope: !1645)
!1661 = !DILocation(line: 590, column: 10, scope: !1645)
!1662 = !DILocation(line: 590, column: 8, scope: !1645)
!1663 = !DILocation(line: 591, column: 8, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1645, file: !62, line: 591, column: 7)
!1665 = !DILocation(line: 591, column: 7, scope: !1645)
!1666 = !DILocation(line: 594, column: 8, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1645, file: !62, line: 594, column: 7)
!1668 = !DILocation(line: 594, column: 7, scope: !1645)
!1669 = !DILocation(line: 596, column: 13, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1667, file: !62, line: 595, column: 5)
!1671 = !DILocation(line: 596, column: 7, scope: !1670)
!1672 = !DILocation(line: 597, column: 12, scope: !1670)
!1673 = !DILocation(line: 598, column: 7, scope: !1670)
!1674 = !DILocation(line: 601, column: 7, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1645, file: !62, line: 601, column: 7)
!1676 = !DILocation(line: 601, column: 7, scope: !1645)
!1677 = !DILocation(line: 602, column: 15, scope: !1675)
!1678 = !DILocation(line: 602, column: 13, scope: !1675)
!1679 = !DILocation(line: 602, column: 5, scope: !1675)
!1680 = !DILocation(line: 605, column: 1, scope: !1645)
!1681 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !78, file: !78, line: 51, type: !657, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1682)
!1682 = !{!1683}
!1683 = !DILocalVariable(name: "file", arg: 1, scope: !1681, file: !78, line: 51, type: !36)
!1684 = !DILocation(line: 0, scope: !1681)
!1685 = !DILocation(line: 53, column: 13, scope: !1681)
!1686 = !DILocation(line: 54, column: 1, scope: !1681)
!1687 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !78, file: !78, line: 88, type: !1688, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1690)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !82}
!1690 = !{!1691}
!1691 = !DILocalVariable(name: "ignore", arg: 1, scope: !1687, file: !78, line: 88, type: !82)
!1692 = !DILocation(line: 0, scope: !1687)
!1693 = !DILocation(line: 90, column: 16, scope: !1687)
!1694 = !{!1695, !1695, i64 0}
!1695 = !{!"_Bool", !637, i64 0}
!1696 = !DILocation(line: 91, column: 1, scope: !1687)
!1697 = distinct !DISubprogram(name: "close_stdout", scope: !78, file: !78, line: 117, type: !645, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1698)
!1698 = !{!1699}
!1699 = !DILocalVariable(name: "write_error", scope: !1700, file: !78, line: 122, type: !36)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !78, line: 121, column: 5)
!1701 = distinct !DILexicalBlock(scope: !1697, file: !78, line: 119, column: 7)
!1702 = !DILocation(line: 119, column: 21, scope: !1701)
!1703 = !DILocation(line: 119, column: 7, scope: !1701)
!1704 = !DILocation(line: 119, column: 29, scope: !1701)
!1705 = !DILocation(line: 120, column: 7, scope: !1701)
!1706 = !DILocation(line: 120, column: 12, scope: !1701)
!1707 = !{i8 0, i8 2}
!1708 = !DILocation(line: 120, column: 25, scope: !1701)
!1709 = !DILocation(line: 120, column: 28, scope: !1701)
!1710 = !DILocation(line: 120, column: 34, scope: !1701)
!1711 = !DILocation(line: 119, column: 7, scope: !1697)
!1712 = !DILocation(line: 122, column: 33, scope: !1700)
!1713 = !DILocation(line: 0, scope: !1700)
!1714 = !DILocation(line: 123, column: 11, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1700, file: !78, line: 123, column: 11)
!1716 = !DILocation(line: 0, scope: !1715)
!1717 = !DILocation(line: 123, column: 11, scope: !1700)
!1718 = !DILocation(line: 124, column: 36, scope: !1715)
!1719 = !DILocation(line: 124, column: 9, scope: !1715)
!1720 = !DILocation(line: 127, column: 9, scope: !1715)
!1721 = !DILocation(line: 129, column: 14, scope: !1700)
!1722 = !DILocation(line: 129, column: 7, scope: !1700)
!1723 = !DILocation(line: 134, column: 42, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1697, file: !78, line: 134, column: 7)
!1725 = !DILocation(line: 134, column: 28, scope: !1724)
!1726 = !DILocation(line: 134, column: 50, scope: !1724)
!1727 = !DILocation(line: 134, column: 7, scope: !1697)
!1728 = !DILocation(line: 135, column: 12, scope: !1724)
!1729 = !DILocation(line: 135, column: 5, scope: !1724)
!1730 = !DILocation(line: 136, column: 1, scope: !1697)
!1731 = distinct !DISubprogram(name: "fdadvise", scope: !169, file: !169, line: 31, type: !1732, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !1736)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !47, !1734, !1734, !1735}
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !712, line: 63, baseType: !738)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!1736 = !{!1737, !1738, !1739, !1740, !1741}
!1737 = !DILocalVariable(name: "fd", arg: 1, scope: !1731, file: !169, line: 31, type: !47)
!1738 = !DILocalVariable(name: "offset", arg: 2, scope: !1731, file: !169, line: 31, type: !1734)
!1739 = !DILocalVariable(name: "len", arg: 3, scope: !1731, file: !169, line: 31, type: !1734)
!1740 = !DILocalVariable(name: "advice", arg: 4, scope: !1731, file: !169, line: 31, type: !1735)
!1741 = !DILocalVariable(name: "__x", scope: !1742, file: !169, line: 34, type: !47)
!1742 = distinct !DILexicalBlock(scope: !1731, file: !169, line: 34, column: 3)
!1743 = !DILocation(line: 0, scope: !1731)
!1744 = !DILocation(line: 34, column: 3, scope: !1742)
!1745 = !DILocation(line: 0, scope: !1742)
!1746 = !DILocation(line: 36, column: 1, scope: !1731)
!1747 = !DISubprogram(name: "posix_fadvise", scope: !1748, file: !1748, line: 288, type: !1749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!1748 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!47, !47, !740, !740, !47}
!1751 = distinct !DISubprogram(name: "fadvise", scope: !169, file: !169, line: 39, type: !1752, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !1788)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{null, !1754, !1735}
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !781, line: 7, baseType: !1756)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !717, line: 49, size: 1728, elements: !1757)
!1757 = !{!1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1756, file: !717, line: 51, baseType: !47, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1756, file: !717, line: 54, baseType: !30, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1756, file: !717, line: 55, baseType: !30, size: 64, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1756, file: !717, line: 56, baseType: !30, size: 64, offset: 192)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1756, file: !717, line: 57, baseType: !30, size: 64, offset: 256)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1756, file: !717, line: 58, baseType: !30, size: 64, offset: 320)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1756, file: !717, line: 59, baseType: !30, size: 64, offset: 384)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1756, file: !717, line: 60, baseType: !30, size: 64, offset: 448)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1756, file: !717, line: 61, baseType: !30, size: 64, offset: 512)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1756, file: !717, line: 64, baseType: !30, size: 64, offset: 576)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1756, file: !717, line: 65, baseType: !30, size: 64, offset: 640)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1756, file: !717, line: 66, baseType: !30, size: 64, offset: 704)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1756, file: !717, line: 68, baseType: !732, size: 64, offset: 768)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1756, file: !717, line: 70, baseType: !1772, size: 64, offset: 832)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1756, file: !717, line: 72, baseType: !47, size: 32, offset: 896)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1756, file: !717, line: 73, baseType: !47, size: 32, offset: 928)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1756, file: !717, line: 74, baseType: !738, size: 64, offset: 960)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1756, file: !717, line: 77, baseType: !120, size: 16, offset: 1024)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1756, file: !717, line: 78, baseType: !69, size: 8, offset: 1040)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1756, file: !717, line: 79, baseType: !744, size: 8, offset: 1048)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1756, file: !717, line: 81, baseType: !748, size: 64, offset: 1088)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1756, file: !717, line: 89, baseType: !751, size: 64, offset: 1152)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1756, file: !717, line: 91, baseType: !753, size: 64, offset: 1216)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1756, file: !717, line: 92, baseType: !756, size: 64, offset: 1280)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1756, file: !717, line: 93, baseType: !1772, size: 64, offset: 1344)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1756, file: !717, line: 94, baseType: !32, size: 64, offset: 1408)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1756, file: !717, line: 95, baseType: !33, size: 64, offset: 1472)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1756, file: !717, line: 96, baseType: !47, size: 32, offset: 1536)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1756, file: !717, line: 98, baseType: !763, size: 160, offset: 1568)
!1788 = !{!1789, !1790}
!1789 = !DILocalVariable(name: "fp", arg: 1, scope: !1751, file: !169, line: 39, type: !1754)
!1790 = !DILocalVariable(name: "advice", arg: 2, scope: !1751, file: !169, line: 39, type: !1735)
!1791 = !DILocation(line: 0, scope: !1751)
!1792 = !DILocation(line: 41, column: 7, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1751, file: !169, line: 41, column: 7)
!1794 = !DILocation(line: 41, column: 7, scope: !1751)
!1795 = !DILocation(line: 42, column: 15, scope: !1793)
!1796 = !DILocation(line: 0, scope: !1731, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 42, column: 5, scope: !1793)
!1798 = !DILocation(line: 34, column: 3, scope: !1742, inlinedAt: !1797)
!1799 = !DILocation(line: 0, scope: !1742, inlinedAt: !1797)
!1800 = !DILocation(line: 42, column: 5, scope: !1793)
!1801 = !DILocation(line: 43, column: 1, scope: !1751)
!1802 = !DISubprogram(name: "fileno", scope: !712, file: !712, line: 785, type: !1803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!47, !1772}
!1805 = distinct !DISubprogram(name: "set_program_name", scope: !92, file: !92, line: 39, type: !657, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !91, retainedNodes: !1806)
!1806 = !{!1807, !1808, !1809}
!1807 = !DILocalVariable(name: "argv0", arg: 1, scope: !1805, file: !92, line: 39, type: !36)
!1808 = !DILocalVariable(name: "slash", scope: !1805, file: !92, line: 46, type: !36)
!1809 = !DILocalVariable(name: "base", scope: !1805, file: !92, line: 47, type: !36)
!1810 = !DILocation(line: 0, scope: !1805)
!1811 = !DILocation(line: 51, column: 13, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1805, file: !92, line: 51, column: 7)
!1813 = !DILocation(line: 51, column: 7, scope: !1805)
!1814 = !DILocation(line: 55, column: 14, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1812, file: !92, line: 52, column: 5)
!1816 = !DILocation(line: 54, column: 7, scope: !1815)
!1817 = !DILocation(line: 56, column: 7, scope: !1815)
!1818 = !DILocation(line: 59, column: 11, scope: !1805)
!1819 = !DILocation(line: 60, column: 17, scope: !1805)
!1820 = !DILocation(line: 60, column: 11, scope: !1805)
!1821 = !DILocation(line: 61, column: 12, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1805, file: !92, line: 61, column: 7)
!1823 = !DILocation(line: 61, column: 20, scope: !1822)
!1824 = !DILocation(line: 61, column: 25, scope: !1822)
!1825 = !DILocation(line: 61, column: 42, scope: !1822)
!1826 = !DILocation(line: 61, column: 28, scope: !1822)
!1827 = !DILocation(line: 61, column: 61, scope: !1822)
!1828 = !DILocation(line: 61, column: 7, scope: !1805)
!1829 = !DILocation(line: 64, column: 11, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !92, line: 64, column: 11)
!1831 = distinct !DILexicalBlock(scope: !1822, file: !92, line: 62, column: 5)
!1832 = !DILocation(line: 64, column: 36, scope: !1830)
!1833 = !DILocation(line: 64, column: 11, scope: !1831)
!1834 = !DILocation(line: 66, column: 24, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1830, file: !92, line: 65, column: 9)
!1836 = !DILocation(line: 70, column: 41, scope: !1835)
!1837 = !DILocation(line: 72, column: 9, scope: !1835)
!1838 = !DILocation(line: 84, column: 16, scope: !1805)
!1839 = !DILocation(line: 90, column: 27, scope: !1805)
!1840 = !DILocation(line: 92, column: 1, scope: !1805)
!1841 = distinct !DISubprogram(name: "clone_quoting_options", scope: !97, file: !97, line: 122, type: !1842, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !1845)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!1844, !1844}
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!1845 = !{!1846, !1847, !1848}
!1846 = !DILocalVariable(name: "o", arg: 1, scope: !1841, file: !97, line: 122, type: !1844)
!1847 = !DILocalVariable(name: "e", scope: !1841, file: !97, line: 124, type: !47)
!1848 = !DILocalVariable(name: "p", scope: !1841, file: !97, line: 125, type: !1844)
!1849 = !DILocation(line: 0, scope: !1841)
!1850 = !DILocation(line: 124, column: 11, scope: !1841)
!1851 = !DILocation(line: 125, column: 40, scope: !1841)
!1852 = !DILocation(line: 125, column: 31, scope: !1841)
!1853 = !DILocation(line: 127, column: 9, scope: !1841)
!1854 = !DILocation(line: 128, column: 3, scope: !1841)
!1855 = distinct !DISubprogram(name: "get_quoting_style", scope: !97, file: !97, line: 133, type: !1856, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !1860)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!5, !1858}
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!1860 = !{!1861}
!1861 = !DILocalVariable(name: "o", arg: 1, scope: !1855, file: !97, line: 133, type: !1858)
!1862 = !DILocation(line: 0, scope: !1855)
!1863 = !DILocation(line: 135, column: 11, scope: !1855)
!1864 = !DILocation(line: 135, column: 46, scope: !1855)
!1865 = !{!1866, !637, i64 0}
!1866 = !{!"quoting_options", !637, i64 0, !812, i64 4, !637, i64 8, !636, i64 40, !636, i64 48}
!1867 = !DILocation(line: 135, column: 3, scope: !1855)
!1868 = distinct !DISubprogram(name: "set_quoting_style", scope: !97, file: !97, line: 141, type: !1869, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !1871)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{null, !1844, !5}
!1871 = !{!1872, !1873}
!1872 = !DILocalVariable(name: "o", arg: 1, scope: !1868, file: !97, line: 141, type: !1844)
!1873 = !DILocalVariable(name: "s", arg: 2, scope: !1868, file: !97, line: 141, type: !5)
!1874 = !DILocation(line: 0, scope: !1868)
!1875 = !DILocation(line: 143, column: 4, scope: !1868)
!1876 = !DILocation(line: 143, column: 39, scope: !1868)
!1877 = !DILocation(line: 143, column: 45, scope: !1868)
!1878 = !DILocation(line: 144, column: 1, scope: !1868)
!1879 = distinct !DISubprogram(name: "set_char_quoting", scope: !97, file: !97, line: 152, type: !1880, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !1882)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!47, !1844, !31, !47}
!1882 = !{!1883, !1884, !1885, !1886, !1887, !1889, !1890}
!1883 = !DILocalVariable(name: "o", arg: 1, scope: !1879, file: !97, line: 152, type: !1844)
!1884 = !DILocalVariable(name: "c", arg: 2, scope: !1879, file: !97, line: 152, type: !31)
!1885 = !DILocalVariable(name: "i", arg: 3, scope: !1879, file: !97, line: 152, type: !47)
!1886 = !DILocalVariable(name: "uc", scope: !1879, file: !97, line: 154, type: !38)
!1887 = !DILocalVariable(name: "p", scope: !1879, file: !97, line: 155, type: !1888)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1889 = !DILocalVariable(name: "shift", scope: !1879, file: !97, line: 157, type: !47)
!1890 = !DILocalVariable(name: "r", scope: !1879, file: !97, line: 158, type: !47)
!1891 = !DILocation(line: 0, scope: !1879)
!1892 = !DILocation(line: 156, column: 6, scope: !1879)
!1893 = !DILocation(line: 156, column: 62, scope: !1879)
!1894 = !DILocation(line: 156, column: 57, scope: !1879)
!1895 = !DILocation(line: 157, column: 15, scope: !1879)
!1896 = !DILocation(line: 158, column: 12, scope: !1879)
!1897 = !DILocation(line: 158, column: 15, scope: !1879)
!1898 = !DILocation(line: 158, column: 25, scope: !1879)
!1899 = !DILocation(line: 159, column: 13, scope: !1879)
!1900 = !DILocation(line: 159, column: 18, scope: !1879)
!1901 = !DILocation(line: 159, column: 23, scope: !1879)
!1902 = !DILocation(line: 159, column: 6, scope: !1879)
!1903 = !DILocation(line: 160, column: 3, scope: !1879)
!1904 = distinct !DISubprogram(name: "set_quoting_flags", scope: !97, file: !97, line: 168, type: !1905, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !1907)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!47, !1844, !47}
!1907 = !{!1908, !1909, !1910}
!1908 = !DILocalVariable(name: "o", arg: 1, scope: !1904, file: !97, line: 168, type: !1844)
!1909 = !DILocalVariable(name: "i", arg: 2, scope: !1904, file: !97, line: 168, type: !47)
!1910 = !DILocalVariable(name: "r", scope: !1904, file: !97, line: 170, type: !47)
!1911 = !DILocation(line: 0, scope: !1904)
!1912 = !DILocation(line: 171, column: 8, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1904, file: !97, line: 171, column: 7)
!1914 = !DILocation(line: 171, column: 7, scope: !1904)
!1915 = !DILocation(line: 173, column: 10, scope: !1904)
!1916 = !{!1866, !812, i64 4}
!1917 = !DILocation(line: 174, column: 12, scope: !1904)
!1918 = !DILocation(line: 175, column: 3, scope: !1904)
!1919 = distinct !DISubprogram(name: "set_custom_quoting", scope: !97, file: !97, line: 179, type: !1920, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !1922)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{null, !1844, !36, !36}
!1922 = !{!1923, !1924, !1925}
!1923 = !DILocalVariable(name: "o", arg: 1, scope: !1919, file: !97, line: 179, type: !1844)
!1924 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1919, file: !97, line: 180, type: !36)
!1925 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1919, file: !97, line: 180, type: !36)
!1926 = !DILocation(line: 0, scope: !1919)
!1927 = !DILocation(line: 182, column: 8, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1919, file: !97, line: 182, column: 7)
!1929 = !DILocation(line: 182, column: 7, scope: !1919)
!1930 = !DILocation(line: 184, column: 6, scope: !1919)
!1931 = !DILocation(line: 184, column: 12, scope: !1919)
!1932 = !DILocation(line: 185, column: 8, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1919, file: !97, line: 185, column: 7)
!1934 = !DILocation(line: 185, column: 19, scope: !1933)
!1935 = !DILocation(line: 186, column: 5, scope: !1933)
!1936 = !DILocation(line: 187, column: 6, scope: !1919)
!1937 = !DILocation(line: 187, column: 17, scope: !1919)
!1938 = !{!1866, !636, i64 40}
!1939 = !DILocation(line: 188, column: 6, scope: !1919)
!1940 = !DILocation(line: 188, column: 18, scope: !1919)
!1941 = !{!1866, !636, i64 48}
!1942 = !DILocation(line: 189, column: 1, scope: !1919)
!1943 = distinct !DISubprogram(name: "quotearg_buffer", scope: !97, file: !97, line: 784, type: !1944, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !1946)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!33, !30, !33, !36, !33, !1858}
!1946 = !{!1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954}
!1947 = !DILocalVariable(name: "buffer", arg: 1, scope: !1943, file: !97, line: 784, type: !30)
!1948 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1943, file: !97, line: 784, type: !33)
!1949 = !DILocalVariable(name: "arg", arg: 3, scope: !1943, file: !97, line: 785, type: !36)
!1950 = !DILocalVariable(name: "argsize", arg: 4, scope: !1943, file: !97, line: 785, type: !33)
!1951 = !DILocalVariable(name: "o", arg: 5, scope: !1943, file: !97, line: 786, type: !1858)
!1952 = !DILocalVariable(name: "p", scope: !1943, file: !97, line: 788, type: !1858)
!1953 = !DILocalVariable(name: "e", scope: !1943, file: !97, line: 789, type: !47)
!1954 = !DILocalVariable(name: "r", scope: !1943, file: !97, line: 790, type: !33)
!1955 = !DILocation(line: 0, scope: !1943)
!1956 = !DILocation(line: 788, column: 37, scope: !1943)
!1957 = !DILocation(line: 789, column: 11, scope: !1943)
!1958 = !DILocation(line: 791, column: 43, scope: !1943)
!1959 = !DILocation(line: 791, column: 53, scope: !1943)
!1960 = !DILocation(line: 791, column: 60, scope: !1943)
!1961 = !DILocation(line: 792, column: 43, scope: !1943)
!1962 = !DILocation(line: 792, column: 58, scope: !1943)
!1963 = !DILocation(line: 790, column: 14, scope: !1943)
!1964 = !DILocation(line: 793, column: 9, scope: !1943)
!1965 = !DILocation(line: 794, column: 3, scope: !1943)
!1966 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !97, file: !97, line: 256, type: !1967, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !1971)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!33, !30, !33, !36, !33, !5, !47, !1969, !36, !36}
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1971 = !{!1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1996, !1997, !1998, !1999, !2000, !2003, !2004, !2019, !2022, !2023, !2030, !2033, !2034, !2035, !2036, !2037, !2038}
!1972 = !DILocalVariable(name: "buffer", arg: 1, scope: !1966, file: !97, line: 256, type: !30)
!1973 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1966, file: !97, line: 256, type: !33)
!1974 = !DILocalVariable(name: "arg", arg: 3, scope: !1966, file: !97, line: 257, type: !36)
!1975 = !DILocalVariable(name: "argsize", arg: 4, scope: !1966, file: !97, line: 257, type: !33)
!1976 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1966, file: !97, line: 258, type: !5)
!1977 = !DILocalVariable(name: "flags", arg: 6, scope: !1966, file: !97, line: 258, type: !47)
!1978 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1966, file: !97, line: 259, type: !1969)
!1979 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1966, file: !97, line: 260, type: !36)
!1980 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1966, file: !97, line: 261, type: !36)
!1981 = !DILocalVariable(name: "i", scope: !1966, file: !97, line: 263, type: !33)
!1982 = !DILocalVariable(name: "len", scope: !1966, file: !97, line: 264, type: !33)
!1983 = !DILocalVariable(name: "orig_buffersize", scope: !1966, file: !97, line: 265, type: !33)
!1984 = !DILocalVariable(name: "quote_string", scope: !1966, file: !97, line: 266, type: !36)
!1985 = !DILocalVariable(name: "quote_string_len", scope: !1966, file: !97, line: 267, type: !33)
!1986 = !DILocalVariable(name: "backslash_escapes", scope: !1966, file: !97, line: 268, type: !82)
!1987 = !DILocalVariable(name: "unibyte_locale", scope: !1966, file: !97, line: 269, type: !82)
!1988 = !DILocalVariable(name: "elide_outer_quotes", scope: !1966, file: !97, line: 270, type: !82)
!1989 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1966, file: !97, line: 271, type: !82)
!1990 = !DILocalVariable(name: "encountered_single_quote", scope: !1966, file: !97, line: 272, type: !82)
!1991 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1966, file: !97, line: 273, type: !82)
!1992 = !DILocalVariable(name: "c", scope: !1993, file: !97, line: 402, type: !38)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !97, line: 401, column: 5)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !97, line: 400, column: 3)
!1995 = distinct !DILexicalBlock(scope: !1966, file: !97, line: 400, column: 3)
!1996 = !DILocalVariable(name: "esc", scope: !1993, file: !97, line: 403, type: !38)
!1997 = !DILocalVariable(name: "is_right_quote", scope: !1993, file: !97, line: 404, type: !82)
!1998 = !DILocalVariable(name: "escaping", scope: !1993, file: !97, line: 405, type: !82)
!1999 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1993, file: !97, line: 406, type: !82)
!2000 = !DILocalVariable(name: "m", scope: !2001, file: !97, line: 610, type: !33)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !97, line: 608, column: 11)
!2002 = distinct !DILexicalBlock(scope: !1993, file: !97, line: 426, column: 9)
!2003 = !DILocalVariable(name: "printable", scope: !2001, file: !97, line: 612, type: !82)
!2004 = !DILocalVariable(name: "mbstate", scope: !2005, file: !97, line: 621, type: !2007)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !97, line: 620, column: 15)
!2006 = distinct !DILexicalBlock(scope: !2001, file: !97, line: 614, column: 17)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2008, line: 6, baseType: !2009)
!2008 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2010, line: 21, baseType: !2011)
!2010 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2010, line: 13, size: 64, elements: !2012)
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2011, file: !2010, line: 15, baseType: !47, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2011, file: !2010, line: 20, baseType: !2015, size: 32, offset: 32)
!2015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2011, file: !2010, line: 16, size: 32, elements: !2016)
!2016 = !{!2017, !2018}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2015, file: !2010, line: 18, baseType: !7, size: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2015, file: !2010, line: 19, baseType: !864, size: 32)
!2019 = !DILocalVariable(name: "w", scope: !2020, file: !97, line: 631, type: !2021)
!2020 = distinct !DILexicalBlock(scope: !2005, file: !97, line: 630, column: 19)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !34, line: 74, baseType: !47)
!2022 = !DILocalVariable(name: "bytes", scope: !2020, file: !97, line: 632, type: !33)
!2023 = !DILocalVariable(name: "j", scope: !2024, file: !97, line: 657, type: !33)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !97, line: 656, column: 27)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !97, line: 654, column: 29)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !97, line: 649, column: 23)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !97, line: 641, column: 30)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !97, line: 636, column: 30)
!2029 = distinct !DILexicalBlock(scope: !2020, file: !97, line: 634, column: 25)
!2030 = !DILocalVariable(name: "ilim", scope: !2031, file: !97, line: 684, type: !33)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !97, line: 681, column: 15)
!2032 = distinct !DILexicalBlock(scope: !2001, file: !97, line: 680, column: 17)
!2033 = !DILabel(scope: !1966, name: "process_input", file: !97, line: 314)
!2034 = !DILabel(scope: !2002, name: "c_and_shell_escape", file: !97, line: 512)
!2035 = !DILabel(scope: !2002, name: "c_escape", file: !97, line: 517)
!2036 = !DILabel(scope: !1993, name: "store_escape", file: !97, line: 719)
!2037 = !DILabel(scope: !1993, name: "store_c", file: !97, line: 722)
!2038 = !DILabel(scope: !1966, name: "force_outer_quoting_style", file: !97, line: 763)
!2039 = !DILocation(line: 0, scope: !1966)
!2040 = !DILocation(line: 269, column: 25, scope: !1966)
!2041 = !DILocation(line: 269, column: 36, scope: !1966)
!2042 = !DILocation(line: 270, column: 8, scope: !1966)
!2043 = !DILocation(line: 273, column: 3, scope: !1966)
!2044 = !DILocation(line: 265, column: 10, scope: !1966)
!2045 = !DILocation(line: 266, column: 15, scope: !1966)
!2046 = !DILocation(line: 267, column: 10, scope: !1966)
!2047 = !DILocation(line: 268, column: 8, scope: !1966)
!2048 = !DILocation(line: 271, column: 8, scope: !1966)
!2049 = !DILocation(line: 272, column: 8, scope: !1966)
!2050 = !DILocation(line: 273, column: 8, scope: !1966)
!2051 = !DILocation(line: 314, column: 2, scope: !1966)
!2052 = !DILocation(line: 316, column: 3, scope: !1966)
!2053 = !DILocation(line: 323, column: 11, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1966, file: !97, line: 317, column: 5)
!2055 = !DILocation(line: 323, column: 12, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2054, file: !97, line: 323, column: 11)
!2057 = !DILocation(line: 324, column: 9, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !97, line: 324, column: 9)
!2059 = distinct !DILexicalBlock(scope: !2056, file: !97, line: 324, column: 9)
!2060 = !DILocation(line: 324, column: 9, scope: !2059)
!2061 = !DILocation(line: 362, column: 26, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !97, line: 340, column: 11)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !97, line: 339, column: 13)
!2064 = distinct !DILexicalBlock(scope: !2054, file: !97, line: 338, column: 7)
!2065 = !DILocation(line: 363, column: 27, scope: !2062)
!2066 = !DILocation(line: 364, column: 11, scope: !2062)
!2067 = !DILocation(line: 365, column: 14, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2064, file: !97, line: 365, column: 13)
!2069 = !DILocation(line: 365, column: 13, scope: !2064)
!2070 = !DILocation(line: 366, column: 43, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !97, line: 366, column: 11)
!2072 = distinct !DILexicalBlock(scope: !2068, file: !97, line: 366, column: 11)
!2073 = !DILocation(line: 366, column: 11, scope: !2072)
!2074 = !DILocation(line: 367, column: 13, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !97, line: 367, column: 13)
!2076 = distinct !DILexicalBlock(scope: !2071, file: !97, line: 367, column: 13)
!2077 = !DILocation(line: 367, column: 13, scope: !2076)
!2078 = !DILocation(line: 366, column: 70, scope: !2071)
!2079 = distinct !{!2079, !2073, !2080, !687}
!2080 = !DILocation(line: 367, column: 13, scope: !2072)
!2081 = !DILocation(line: 264, column: 10, scope: !1966)
!2082 = !DILocation(line: 370, column: 28, scope: !2064)
!2083 = !DILocation(line: 372, column: 7, scope: !2054)
!2084 = !DILocation(line: 376, column: 7, scope: !2054)
!2085 = !DILocation(line: 379, column: 7, scope: !2054)
!2086 = !DILocation(line: 381, column: 12, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2054, file: !97, line: 381, column: 11)
!2088 = !DILocation(line: 381, column: 11, scope: !2054)
!2089 = !DILocation(line: 386, column: 12, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2054, file: !97, line: 386, column: 11)
!2091 = !DILocation(line: 386, column: 11, scope: !2054)
!2092 = !DILocation(line: 387, column: 9, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !97, line: 387, column: 9)
!2094 = distinct !DILexicalBlock(scope: !2090, file: !97, line: 387, column: 9)
!2095 = !DILocation(line: 387, column: 9, scope: !2094)
!2096 = !DILocation(line: 394, column: 7, scope: !2054)
!2097 = !DILocation(line: 397, column: 7, scope: !2054)
!2098 = !DILocation(line: 400, column: 8, scope: !1995)
!2099 = !DILocation(line: 0, scope: !1995)
!2100 = !DILocation(line: 400, column: 27, scope: !1994)
!2101 = !DILocation(line: 400, column: 19, scope: !1994)
!2102 = !DILocation(line: 400, column: 41, scope: !1994)
!2103 = !DILocation(line: 400, column: 48, scope: !1994)
!2104 = !DILocation(line: 400, column: 3, scope: !1995)
!2105 = !DILocation(line: 400, column: 60, scope: !1994)
!2106 = !DILocation(line: 0, scope: !1993)
!2107 = !DILocation(line: 409, column: 11, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !1993, file: !97, line: 408, column: 11)
!2109 = !DILocation(line: 411, column: 17, scope: !2108)
!2110 = !DILocation(line: 412, column: 39, scope: !2108)
!2111 = !DILocation(line: 416, column: 32, scope: !2108)
!2112 = !DILocation(line: 412, column: 19, scope: !2108)
!2113 = !DILocation(line: 412, column: 15, scope: !2108)
!2114 = !DILocation(line: 417, column: 11, scope: !2108)
!2115 = !DILocation(line: 417, column: 26, scope: !2108)
!2116 = !DILocation(line: 417, column: 14, scope: !2108)
!2117 = !DILocation(line: 417, column: 63, scope: !2108)
!2118 = !DILocation(line: 408, column: 11, scope: !1993)
!2119 = !DILocation(line: 424, column: 11, scope: !1993)
!2120 = !DILocation(line: 425, column: 7, scope: !1993)
!2121 = !DILocation(line: 428, column: 15, scope: !2002)
!2122 = !DILocation(line: 430, column: 15, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !97, line: 430, column: 15)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !97, line: 429, column: 13)
!2125 = distinct !DILexicalBlock(scope: !2002, file: !97, line: 428, column: 15)
!2126 = !DILocation(line: 430, column: 15, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2123, file: !97, line: 430, column: 15)
!2128 = !DILocation(line: 430, column: 15, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !97, line: 430, column: 15)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !97, line: 430, column: 15)
!2131 = distinct !DILexicalBlock(scope: !2127, file: !97, line: 430, column: 15)
!2132 = !DILocation(line: 430, column: 15, scope: !2130)
!2133 = !DILocation(line: 430, column: 15, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !97, line: 430, column: 15)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !97, line: 430, column: 15)
!2136 = !DILocation(line: 430, column: 15, scope: !2135)
!2137 = !DILocation(line: 430, column: 15, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !97, line: 430, column: 15)
!2139 = distinct !DILexicalBlock(scope: !2131, file: !97, line: 430, column: 15)
!2140 = !DILocation(line: 430, column: 15, scope: !2139)
!2141 = !DILocation(line: 430, column: 15, scope: !2131)
!2142 = !DILocation(line: 430, column: 15, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !97, line: 430, column: 15)
!2144 = distinct !DILexicalBlock(scope: !2123, file: !97, line: 430, column: 15)
!2145 = !DILocation(line: 430, column: 15, scope: !2144)
!2146 = !DILocation(line: 438, column: 19, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2124, file: !97, line: 437, column: 19)
!2148 = !DILocation(line: 438, column: 48, scope: !2147)
!2149 = !DILocation(line: 438, column: 59, scope: !2147)
!2150 = !DILocation(line: 440, column: 19, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !97, line: 440, column: 19)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !97, line: 440, column: 19)
!2153 = distinct !DILexicalBlock(scope: !2147, file: !97, line: 439, column: 17)
!2154 = !DILocation(line: 440, column: 19, scope: !2152)
!2155 = !DILocation(line: 441, column: 19, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !97, line: 441, column: 19)
!2157 = distinct !DILexicalBlock(scope: !2153, file: !97, line: 441, column: 19)
!2158 = !DILocation(line: 441, column: 19, scope: !2157)
!2159 = !DILocation(line: 442, column: 17, scope: !2153)
!2160 = !DILocation(line: 449, column: 20, scope: !2125)
!2161 = !DILocation(line: 454, column: 11, scope: !2002)
!2162 = !DILocation(line: 457, column: 19, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2002, file: !97, line: 455, column: 13)
!2164 = !DILocation(line: 463, column: 19, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2163, file: !97, line: 462, column: 19)
!2166 = !DILocation(line: 463, column: 47, scope: !2165)
!2167 = !DILocation(line: 463, column: 41, scope: !2165)
!2168 = !DILocation(line: 463, column: 52, scope: !2165)
!2169 = !DILocation(line: 462, column: 19, scope: !2163)
!2170 = !DILocation(line: 464, column: 25, scope: !2165)
!2171 = !DILocation(line: 464, column: 17, scope: !2165)
!2172 = !DILocation(line: 471, column: 25, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2165, file: !97, line: 465, column: 19)
!2174 = !DILocation(line: 475, column: 21, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !97, line: 475, column: 21)
!2176 = distinct !DILexicalBlock(scope: !2173, file: !97, line: 475, column: 21)
!2177 = !DILocation(line: 475, column: 21, scope: !2176)
!2178 = !DILocation(line: 476, column: 21, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !97, line: 476, column: 21)
!2180 = distinct !DILexicalBlock(scope: !2173, file: !97, line: 476, column: 21)
!2181 = !DILocation(line: 476, column: 21, scope: !2180)
!2182 = !DILocation(line: 477, column: 21, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !97, line: 477, column: 21)
!2184 = distinct !DILexicalBlock(scope: !2173, file: !97, line: 477, column: 21)
!2185 = !DILocation(line: 477, column: 21, scope: !2184)
!2186 = !DILocation(line: 478, column: 21, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !97, line: 478, column: 21)
!2188 = distinct !DILexicalBlock(scope: !2173, file: !97, line: 478, column: 21)
!2189 = !DILocation(line: 478, column: 21, scope: !2188)
!2190 = !DILocation(line: 479, column: 21, scope: !2173)
!2191 = !DILocation(line: 492, column: 31, scope: !2002)
!2192 = !DILocation(line: 493, column: 31, scope: !2002)
!2193 = !DILocation(line: 495, column: 31, scope: !2002)
!2194 = !DILocation(line: 496, column: 31, scope: !2002)
!2195 = !DILocation(line: 497, column: 31, scope: !2002)
!2196 = !DILocation(line: 500, column: 15, scope: !2002)
!2197 = !DILocation(line: 502, column: 19, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !97, line: 501, column: 13)
!2199 = distinct !DILexicalBlock(scope: !2002, file: !97, line: 500, column: 15)
!2200 = !DILocation(line: 509, column: 33, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2002, file: !97, line: 509, column: 15)
!2202 = !DILocation(line: 0, scope: !2002)
!2203 = !DILocation(line: 512, column: 9, scope: !2002)
!2204 = !DILocation(line: 514, column: 15, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2002, file: !97, line: 513, column: 15)
!2206 = !DILocation(line: 517, column: 9, scope: !2002)
!2207 = !DILocation(line: 518, column: 15, scope: !2002)
!2208 = !DILocation(line: 526, column: 15, scope: !2002)
!2209 = !DILocation(line: 526, column: 40, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2002, file: !97, line: 526, column: 15)
!2211 = !DILocation(line: 526, column: 47, scope: !2210)
!2212 = !DILocation(line: 526, column: 18, scope: !2210)
!2213 = !DILocation(line: 530, column: 17, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2002, file: !97, line: 530, column: 15)
!2215 = !DILocation(line: 530, column: 15, scope: !2002)
!2216 = !DILocation(line: 535, column: 11, scope: !2002)
!2217 = !DILocation(line: 549, column: 15, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2002, file: !97, line: 548, column: 15)
!2219 = !DILocation(line: 556, column: 15, scope: !2002)
!2220 = !DILocation(line: 558, column: 19, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !97, line: 557, column: 13)
!2222 = distinct !DILexicalBlock(scope: !2002, file: !97, line: 556, column: 15)
!2223 = !DILocation(line: 561, column: 19, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2221, file: !97, line: 561, column: 19)
!2225 = !DILocation(line: 561, column: 30, scope: !2224)
!2226 = !DILocation(line: 570, column: 15, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !97, line: 570, column: 15)
!2228 = distinct !DILexicalBlock(scope: !2221, file: !97, line: 570, column: 15)
!2229 = !DILocation(line: 570, column: 15, scope: !2228)
!2230 = !DILocation(line: 571, column: 15, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !97, line: 571, column: 15)
!2232 = distinct !DILexicalBlock(scope: !2221, file: !97, line: 571, column: 15)
!2233 = !DILocation(line: 571, column: 15, scope: !2232)
!2234 = !DILocation(line: 572, column: 15, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !97, line: 572, column: 15)
!2236 = distinct !DILexicalBlock(scope: !2221, file: !97, line: 572, column: 15)
!2237 = !DILocation(line: 572, column: 15, scope: !2236)
!2238 = !DILocation(line: 574, column: 13, scope: !2221)
!2239 = !DILocation(line: 614, column: 17, scope: !2001)
!2240 = !DILocation(line: 0, scope: !2001)
!2241 = !DILocation(line: 617, column: 29, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2006, file: !97, line: 615, column: 15)
!2243 = !{!947, !947, i64 0}
!2244 = !DILocation(line: 617, column: 27, scope: !2242)
!2245 = !DILocation(line: 678, column: 40, scope: !2001)
!2246 = !DILocation(line: 680, column: 23, scope: !2032)
!2247 = !DILocation(line: 621, column: 17, scope: !2005)
!2248 = !DILocation(line: 621, column: 27, scope: !2005)
!2249 = !DILocalVariable(name: "__dest", arg: 1, scope: !2250, file: !917, line: 57, type: !32)
!2250 = distinct !DISubprogram(name: "memset", scope: !917, file: !917, line: 57, type: !2251, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2253)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!32, !32, !47, !33}
!2253 = !{!2249, !2254, !2255}
!2254 = !DILocalVariable(name: "__ch", arg: 2, scope: !2250, file: !917, line: 57, type: !47)
!2255 = !DILocalVariable(name: "__len", arg: 3, scope: !2250, file: !917, line: 57, type: !33)
!2256 = !DILocation(line: 0, scope: !2250, inlinedAt: !2257)
!2257 = distinct !DILocation(line: 622, column: 17, scope: !2005)
!2258 = !DILocation(line: 59, column: 10, scope: !2250, inlinedAt: !2257)
!2259 = !DILocation(line: 626, column: 29, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2005, file: !97, line: 626, column: 21)
!2261 = !DILocation(line: 626, column: 21, scope: !2005)
!2262 = !DILocation(line: 627, column: 29, scope: !2260)
!2263 = !DILocation(line: 627, column: 19, scope: !2260)
!2264 = !DILocation(line: 629, column: 17, scope: !2005)
!2265 = !DILocation(line: 624, column: 19, scope: !2005)
!2266 = !DILocation(line: 625, column: 27, scope: !2005)
!2267 = !DILocation(line: 631, column: 21, scope: !2020)
!2268 = !DILocation(line: 632, column: 56, scope: !2020)
!2269 = !DILocation(line: 632, column: 50, scope: !2020)
!2270 = !DILocation(line: 633, column: 53, scope: !2020)
!2271 = !DILocation(line: 0, scope: !2020)
!2272 = !DILocation(line: 632, column: 36, scope: !2020)
!2273 = !DILocation(line: 634, column: 25, scope: !2020)
!2274 = !DILocation(line: 644, column: 38, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2027, file: !97, line: 642, column: 23)
!2276 = !DILocation(line: 644, column: 48, scope: !2275)
!2277 = !DILocation(line: 644, column: 25, scope: !2275)
!2278 = !DILocation(line: 644, column: 51, scope: !2275)
!2279 = !DILocation(line: 645, column: 28, scope: !2275)
!2280 = !DILocation(line: 644, column: 34, scope: !2275)
!2281 = distinct !{!2281, !2277, !2279, !687}
!2282 = !DILocation(line: 655, column: 29, scope: !2025)
!2283 = !DILocation(line: 0, scope: !2024)
!2284 = !DILocation(line: 659, column: 49, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !97, line: 658, column: 29)
!2286 = distinct !DILexicalBlock(scope: !2024, file: !97, line: 658, column: 29)
!2287 = !DILocation(line: 659, column: 39, scope: !2285)
!2288 = !DILocation(line: 659, column: 31, scope: !2285)
!2289 = !DILocation(line: 658, column: 53, scope: !2285)
!2290 = !DILocation(line: 658, column: 43, scope: !2285)
!2291 = !DILocation(line: 658, column: 29, scope: !2286)
!2292 = distinct !{!2292, !2291, !2293, !687}
!2293 = !DILocation(line: 667, column: 33, scope: !2286)
!2294 = !DILocation(line: 674, column: 19, scope: !2005)
!2295 = !DILocation(line: 670, column: 41, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2026, file: !97, line: 670, column: 29)
!2297 = !DILocation(line: 670, column: 31, scope: !2296)
!2298 = !DILocation(line: 670, column: 29, scope: !2026)
!2299 = !DILocation(line: 672, column: 27, scope: !2026)
!2300 = !DILocation(line: 675, column: 26, scope: !2005)
!2301 = !DILocation(line: 675, column: 24, scope: !2005)
!2302 = !DILocation(line: 674, column: 19, scope: !2020)
!2303 = distinct !{!2303, !2264, !2304, !687}
!2304 = !DILocation(line: 675, column: 44, scope: !2005)
!2305 = !DILocation(line: 676, column: 15, scope: !2006)
!2306 = !DILocation(line: 680, column: 19, scope: !2032)
!2307 = !DILocation(line: 680, column: 45, scope: !2032)
!2308 = !DILocation(line: 684, column: 33, scope: !2031)
!2309 = !DILocation(line: 0, scope: !2031)
!2310 = !DILocation(line: 686, column: 17, scope: !2031)
!2311 = !DILocation(line: 405, column: 12, scope: !1993)
!2312 = !DILocation(line: 688, column: 43, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !97, line: 688, column: 25)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !97, line: 687, column: 19)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !97, line: 686, column: 17)
!2316 = distinct !DILexicalBlock(scope: !2031, file: !97, line: 686, column: 17)
!2317 = !DILocation(line: 690, column: 25, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !97, line: 690, column: 25)
!2319 = distinct !DILexicalBlock(scope: !2313, file: !97, line: 689, column: 23)
!2320 = !DILocation(line: 690, column: 25, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2318, file: !97, line: 690, column: 25)
!2322 = !DILocation(line: 690, column: 25, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !97, line: 690, column: 25)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !97, line: 690, column: 25)
!2325 = distinct !DILexicalBlock(scope: !2321, file: !97, line: 690, column: 25)
!2326 = !DILocation(line: 690, column: 25, scope: !2324)
!2327 = !DILocation(line: 690, column: 25, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !97, line: 690, column: 25)
!2329 = distinct !DILexicalBlock(scope: !2325, file: !97, line: 690, column: 25)
!2330 = !DILocation(line: 690, column: 25, scope: !2329)
!2331 = !DILocation(line: 690, column: 25, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !97, line: 690, column: 25)
!2333 = distinct !DILexicalBlock(scope: !2325, file: !97, line: 690, column: 25)
!2334 = !DILocation(line: 690, column: 25, scope: !2333)
!2335 = !DILocation(line: 690, column: 25, scope: !2325)
!2336 = !DILocation(line: 690, column: 25, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !97, line: 690, column: 25)
!2338 = distinct !DILexicalBlock(scope: !2318, file: !97, line: 690, column: 25)
!2339 = !DILocation(line: 690, column: 25, scope: !2338)
!2340 = !DILocation(line: 691, column: 25, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !97, line: 691, column: 25)
!2342 = distinct !DILexicalBlock(scope: !2319, file: !97, line: 691, column: 25)
!2343 = !DILocation(line: 691, column: 25, scope: !2342)
!2344 = !DILocation(line: 692, column: 25, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !97, line: 692, column: 25)
!2346 = distinct !DILexicalBlock(scope: !2319, file: !97, line: 692, column: 25)
!2347 = !DILocation(line: 692, column: 25, scope: !2346)
!2348 = !DILocation(line: 693, column: 38, scope: !2319)
!2349 = !DILocation(line: 693, column: 33, scope: !2319)
!2350 = !DILocation(line: 694, column: 23, scope: !2319)
!2351 = !DILocation(line: 695, column: 30, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2313, file: !97, line: 695, column: 30)
!2353 = !DILocation(line: 695, column: 30, scope: !2313)
!2354 = !DILocation(line: 697, column: 25, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !97, line: 697, column: 25)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !97, line: 697, column: 25)
!2357 = distinct !DILexicalBlock(scope: !2352, file: !97, line: 696, column: 23)
!2358 = !DILocation(line: 697, column: 25, scope: !2356)
!2359 = !DILocation(line: 699, column: 23, scope: !2357)
!2360 = !DILocation(line: 700, column: 35, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2314, file: !97, line: 700, column: 25)
!2362 = !DILocation(line: 700, column: 30, scope: !2361)
!2363 = !DILocation(line: 700, column: 25, scope: !2314)
!2364 = !DILocation(line: 702, column: 21, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !97, line: 702, column: 21)
!2366 = distinct !DILexicalBlock(scope: !2314, file: !97, line: 702, column: 21)
!2367 = !DILocation(line: 702, column: 21, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !97, line: 702, column: 21)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !97, line: 702, column: 21)
!2370 = distinct !DILexicalBlock(scope: !2365, file: !97, line: 702, column: 21)
!2371 = !DILocation(line: 702, column: 21, scope: !2369)
!2372 = !DILocation(line: 702, column: 21, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !97, line: 702, column: 21)
!2374 = distinct !DILexicalBlock(scope: !2370, file: !97, line: 702, column: 21)
!2375 = !DILocation(line: 702, column: 21, scope: !2374)
!2376 = !DILocation(line: 702, column: 21, scope: !2370)
!2377 = !DILocation(line: 0, scope: !2314)
!2378 = !DILocation(line: 703, column: 21, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !97, line: 703, column: 21)
!2380 = distinct !DILexicalBlock(scope: !2314, file: !97, line: 703, column: 21)
!2381 = !DILocation(line: 703, column: 21, scope: !2380)
!2382 = !DILocation(line: 704, column: 25, scope: !2314)
!2383 = !DILocation(line: 686, column: 17, scope: !2315)
!2384 = distinct !{!2384, !2385, !2386}
!2385 = !DILocation(line: 686, column: 17, scope: !2316)
!2386 = !DILocation(line: 705, column: 19, scope: !2316)
!2387 = !DILocation(line: 416, column: 30, scope: !2108)
!2388 = !DILocation(line: 712, column: 34, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !1993, file: !97, line: 712, column: 11)
!2390 = !DILocation(line: 715, column: 35, scope: !2389)
!2391 = !DILocation(line: 715, column: 17, scope: !2389)
!2392 = !DILocation(line: 715, column: 47, scope: !2389)
!2393 = !DILocation(line: 715, column: 65, scope: !2389)
!2394 = !DILocation(line: 716, column: 11, scope: !2389)
!2395 = !DILocation(line: 712, column: 11, scope: !1993)
!2396 = !DILocation(line: 400, column: 10, scope: !1995)
!2397 = !DILocation(line: 719, column: 5, scope: !1993)
!2398 = !DILocation(line: 720, column: 7, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !1993, file: !97, line: 720, column: 7)
!2400 = !DILocation(line: 720, column: 7, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2399, file: !97, line: 720, column: 7)
!2402 = !DILocation(line: 720, column: 7, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !97, line: 720, column: 7)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !97, line: 720, column: 7)
!2405 = distinct !DILexicalBlock(scope: !2401, file: !97, line: 720, column: 7)
!2406 = !DILocation(line: 720, column: 7, scope: !2404)
!2407 = !DILocation(line: 720, column: 7, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !97, line: 720, column: 7)
!2409 = distinct !DILexicalBlock(scope: !2405, file: !97, line: 720, column: 7)
!2410 = !DILocation(line: 720, column: 7, scope: !2409)
!2411 = !DILocation(line: 720, column: 7, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !97, line: 720, column: 7)
!2413 = distinct !DILexicalBlock(scope: !2405, file: !97, line: 720, column: 7)
!2414 = !DILocation(line: 720, column: 7, scope: !2413)
!2415 = !DILocation(line: 720, column: 7, scope: !2405)
!2416 = !DILocation(line: 720, column: 7, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !97, line: 720, column: 7)
!2418 = distinct !DILexicalBlock(scope: !2399, file: !97, line: 720, column: 7)
!2419 = !DILocation(line: 720, column: 7, scope: !2418)
!2420 = !DILocation(line: 722, column: 5, scope: !1993)
!2421 = !DILocation(line: 723, column: 7, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !97, line: 723, column: 7)
!2423 = distinct !DILexicalBlock(scope: !1993, file: !97, line: 723, column: 7)
!2424 = !DILocation(line: 424, column: 9, scope: !1993)
!2425 = !DILocation(line: 723, column: 7, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !97, line: 723, column: 7)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !97, line: 723, column: 7)
!2428 = distinct !DILexicalBlock(scope: !2422, file: !97, line: 723, column: 7)
!2429 = !DILocation(line: 723, column: 7, scope: !2427)
!2430 = !DILocation(line: 723, column: 7, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !97, line: 723, column: 7)
!2432 = distinct !DILexicalBlock(scope: !2428, file: !97, line: 723, column: 7)
!2433 = !DILocation(line: 723, column: 7, scope: !2432)
!2434 = !DILocation(line: 723, column: 7, scope: !2428)
!2435 = !DILocation(line: 724, column: 7, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !97, line: 724, column: 7)
!2437 = distinct !DILexicalBlock(scope: !1993, file: !97, line: 724, column: 7)
!2438 = !DILocation(line: 724, column: 7, scope: !2437)
!2439 = !DILocation(line: 726, column: 13, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !1993, file: !97, line: 726, column: 11)
!2441 = !DILocation(line: 726, column: 11, scope: !1993)
!2442 = !DILocation(line: 728, column: 5, scope: !1994)
!2443 = !DILocation(line: 400, column: 75, scope: !1994)
!2444 = !DILocation(line: 400, column: 3, scope: !1994)
!2445 = distinct !{!2445, !2104, !2446, !687}
!2446 = !DILocation(line: 728, column: 5, scope: !1995)
!2447 = !DILocation(line: 730, column: 11, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !1966, file: !97, line: 730, column: 7)
!2449 = !DILocation(line: 730, column: 16, scope: !2448)
!2450 = !DILocation(line: 738, column: 51, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !1966, file: !97, line: 738, column: 7)
!2452 = !DILocation(line: 741, column: 11, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !97, line: 741, column: 11)
!2454 = distinct !DILexicalBlock(scope: !2451, file: !97, line: 740, column: 5)
!2455 = !DILocation(line: 741, column: 11, scope: !2454)
!2456 = !DILocation(line: 742, column: 16, scope: !2453)
!2457 = !DILocation(line: 742, column: 9, scope: !2453)
!2458 = !DILocation(line: 746, column: 18, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2453, file: !97, line: 746, column: 16)
!2460 = !DILocation(line: 746, column: 29, scope: !2459)
!2461 = !DILocation(line: 755, column: 7, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !1966, file: !97, line: 755, column: 7)
!2463 = !DILocation(line: 755, column: 20, scope: !2462)
!2464 = !DILocation(line: 756, column: 12, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !97, line: 756, column: 5)
!2466 = distinct !DILexicalBlock(scope: !2462, file: !97, line: 756, column: 5)
!2467 = !DILocation(line: 756, column: 5, scope: !2466)
!2468 = !DILocation(line: 757, column: 7, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !97, line: 757, column: 7)
!2470 = distinct !DILexicalBlock(scope: !2465, file: !97, line: 757, column: 7)
!2471 = !DILocation(line: 757, column: 7, scope: !2470)
!2472 = !DILocation(line: 756, column: 39, scope: !2465)
!2473 = distinct !{!2473, !2467, !2474, !687}
!2474 = !DILocation(line: 757, column: 7, scope: !2466)
!2475 = !DILocation(line: 759, column: 11, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !1966, file: !97, line: 759, column: 7)
!2477 = !DILocation(line: 759, column: 7, scope: !1966)
!2478 = !DILocation(line: 760, column: 5, scope: !2476)
!2479 = !DILocation(line: 760, column: 17, scope: !2476)
!2480 = !DILocation(line: 763, column: 2, scope: !1966)
!2481 = !DILocation(line: 766, column: 51, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !1966, file: !97, line: 766, column: 7)
!2483 = !DILocation(line: 766, column: 21, scope: !2482)
!2484 = !DILocation(line: 770, column: 42, scope: !1966)
!2485 = !DILocation(line: 768, column: 10, scope: !1966)
!2486 = !DILocation(line: 768, column: 3, scope: !1966)
!2487 = !DILocation(line: 772, column: 1, scope: !1966)
!2488 = distinct !DISubprogram(name: "gettext_quote", scope: !97, file: !97, line: 207, type: !2489, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2491)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!36, !36, !5}
!2491 = !{!2492, !2493, !2494, !2495}
!2492 = !DILocalVariable(name: "msgid", arg: 1, scope: !2488, file: !97, line: 207, type: !36)
!2493 = !DILocalVariable(name: "s", arg: 2, scope: !2488, file: !97, line: 207, type: !5)
!2494 = !DILocalVariable(name: "translation", scope: !2488, file: !97, line: 209, type: !36)
!2495 = !DILocalVariable(name: "locale_code", scope: !2488, file: !97, line: 210, type: !36)
!2496 = !DILocation(line: 0, scope: !2488)
!2497 = !DILocation(line: 209, column: 29, scope: !2488)
!2498 = !DILocation(line: 212, column: 19, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2488, file: !97, line: 212, column: 7)
!2500 = !DILocation(line: 212, column: 7, scope: !2488)
!2501 = !DILocation(line: 233, column: 17, scope: !2488)
!2502 = !DILocalVariable(name: "s1", arg: 1, scope: !2503, file: !2504, line: 160, type: !36)
!2503 = distinct !DISubprogram(name: "strcaseeq0", scope: !2504, file: !2504, line: 160, type: !2505, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2507)
!2504 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!47, !36, !36, !31, !31, !31, !31, !31, !31, !31, !31, !31}
!2507 = !{!2502, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517}
!2508 = !DILocalVariable(name: "s2", arg: 2, scope: !2503, file: !2504, line: 160, type: !36)
!2509 = !DILocalVariable(name: "s20", arg: 3, scope: !2503, file: !2504, line: 160, type: !31)
!2510 = !DILocalVariable(name: "s21", arg: 4, scope: !2503, file: !2504, line: 160, type: !31)
!2511 = !DILocalVariable(name: "s22", arg: 5, scope: !2503, file: !2504, line: 160, type: !31)
!2512 = !DILocalVariable(name: "s23", arg: 6, scope: !2503, file: !2504, line: 160, type: !31)
!2513 = !DILocalVariable(name: "s24", arg: 7, scope: !2503, file: !2504, line: 160, type: !31)
!2514 = !DILocalVariable(name: "s25", arg: 8, scope: !2503, file: !2504, line: 160, type: !31)
!2515 = !DILocalVariable(name: "s26", arg: 9, scope: !2503, file: !2504, line: 160, type: !31)
!2516 = !DILocalVariable(name: "s27", arg: 10, scope: !2503, file: !2504, line: 160, type: !31)
!2517 = !DILocalVariable(name: "s28", arg: 11, scope: !2503, file: !2504, line: 160, type: !31)
!2518 = !DILocation(line: 0, scope: !2503, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 234, column: 7, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2488, file: !97, line: 234, column: 7)
!2521 = !DILocation(line: 162, column: 7, scope: !2522, inlinedAt: !2519)
!2522 = distinct !DILexicalBlock(scope: !2503, file: !2504, line: 162, column: 7)
!2523 = !DILocalVariable(name: "s1", arg: 1, scope: !2524, file: !2504, line: 146, type: !36)
!2524 = distinct !DISubprogram(name: "strcaseeq1", scope: !2504, file: !2504, line: 146, type: !2525, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2527)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!47, !36, !36, !31, !31, !31, !31, !31, !31, !31, !31}
!2527 = !{!2523, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536}
!2528 = !DILocalVariable(name: "s2", arg: 2, scope: !2524, file: !2504, line: 146, type: !36)
!2529 = !DILocalVariable(name: "s21", arg: 3, scope: !2524, file: !2504, line: 146, type: !31)
!2530 = !DILocalVariable(name: "s22", arg: 4, scope: !2524, file: !2504, line: 146, type: !31)
!2531 = !DILocalVariable(name: "s23", arg: 5, scope: !2524, file: !2504, line: 146, type: !31)
!2532 = !DILocalVariable(name: "s24", arg: 6, scope: !2524, file: !2504, line: 146, type: !31)
!2533 = !DILocalVariable(name: "s25", arg: 7, scope: !2524, file: !2504, line: 146, type: !31)
!2534 = !DILocalVariable(name: "s26", arg: 8, scope: !2524, file: !2504, line: 146, type: !31)
!2535 = !DILocalVariable(name: "s27", arg: 9, scope: !2524, file: !2504, line: 146, type: !31)
!2536 = !DILocalVariable(name: "s28", arg: 10, scope: !2524, file: !2504, line: 146, type: !31)
!2537 = !DILocation(line: 0, scope: !2524, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 167, column: 16, scope: !2539, inlinedAt: !2519)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !2504, line: 164, column: 11)
!2540 = distinct !DILexicalBlock(scope: !2522, file: !2504, line: 163, column: 5)
!2541 = !DILocation(line: 148, column: 7, scope: !2542, inlinedAt: !2538)
!2542 = distinct !DILexicalBlock(scope: !2524, file: !2504, line: 148, column: 7)
!2543 = !DILocalVariable(name: "s1", arg: 1, scope: !2544, file: !2504, line: 132, type: !36)
!2544 = distinct !DISubprogram(name: "strcaseeq2", scope: !2504, file: !2504, line: 132, type: !2545, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2547)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!47, !36, !36, !31, !31, !31, !31, !31, !31, !31}
!2547 = !{!2543, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555}
!2548 = !DILocalVariable(name: "s2", arg: 2, scope: !2544, file: !2504, line: 132, type: !36)
!2549 = !DILocalVariable(name: "s22", arg: 3, scope: !2544, file: !2504, line: 132, type: !31)
!2550 = !DILocalVariable(name: "s23", arg: 4, scope: !2544, file: !2504, line: 132, type: !31)
!2551 = !DILocalVariable(name: "s24", arg: 5, scope: !2544, file: !2504, line: 132, type: !31)
!2552 = !DILocalVariable(name: "s25", arg: 6, scope: !2544, file: !2504, line: 132, type: !31)
!2553 = !DILocalVariable(name: "s26", arg: 7, scope: !2544, file: !2504, line: 132, type: !31)
!2554 = !DILocalVariable(name: "s27", arg: 8, scope: !2544, file: !2504, line: 132, type: !31)
!2555 = !DILocalVariable(name: "s28", arg: 9, scope: !2544, file: !2504, line: 132, type: !31)
!2556 = !DILocation(line: 0, scope: !2544, inlinedAt: !2557)
!2557 = distinct !DILocation(line: 153, column: 16, scope: !2558, inlinedAt: !2538)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !2504, line: 150, column: 11)
!2559 = distinct !DILexicalBlock(scope: !2542, file: !2504, line: 149, column: 5)
!2560 = !DILocation(line: 134, column: 7, scope: !2561, inlinedAt: !2557)
!2561 = distinct !DILexicalBlock(scope: !2544, file: !2504, line: 134, column: 7)
!2562 = !DILocalVariable(name: "s1", arg: 1, scope: !2563, file: !2504, line: 118, type: !36)
!2563 = distinct !DISubprogram(name: "strcaseeq3", scope: !2504, file: !2504, line: 118, type: !2564, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2566)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!47, !36, !36, !31, !31, !31, !31, !31, !31}
!2566 = !{!2562, !2567, !2568, !2569, !2570, !2571, !2572, !2573}
!2567 = !DILocalVariable(name: "s2", arg: 2, scope: !2563, file: !2504, line: 118, type: !36)
!2568 = !DILocalVariable(name: "s23", arg: 3, scope: !2563, file: !2504, line: 118, type: !31)
!2569 = !DILocalVariable(name: "s24", arg: 4, scope: !2563, file: !2504, line: 118, type: !31)
!2570 = !DILocalVariable(name: "s25", arg: 5, scope: !2563, file: !2504, line: 118, type: !31)
!2571 = !DILocalVariable(name: "s26", arg: 6, scope: !2563, file: !2504, line: 118, type: !31)
!2572 = !DILocalVariable(name: "s27", arg: 7, scope: !2563, file: !2504, line: 118, type: !31)
!2573 = !DILocalVariable(name: "s28", arg: 8, scope: !2563, file: !2504, line: 118, type: !31)
!2574 = !DILocation(line: 0, scope: !2563, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 139, column: 16, scope: !2576, inlinedAt: !2557)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !2504, line: 136, column: 11)
!2577 = distinct !DILexicalBlock(scope: !2561, file: !2504, line: 135, column: 5)
!2578 = !DILocation(line: 120, column: 7, scope: !2579, inlinedAt: !2575)
!2579 = distinct !DILexicalBlock(scope: !2563, file: !2504, line: 120, column: 7)
!2580 = !DILocation(line: 120, column: 7, scope: !2563, inlinedAt: !2575)
!2581 = !DILocalVariable(name: "s1", arg: 1, scope: !2582, file: !2504, line: 104, type: !36)
!2582 = distinct !DISubprogram(name: "strcaseeq4", scope: !2504, file: !2504, line: 104, type: !2583, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2585)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!47, !36, !36, !31, !31, !31, !31, !31}
!2585 = !{!2581, !2586, !2587, !2588, !2589, !2590, !2591}
!2586 = !DILocalVariable(name: "s2", arg: 2, scope: !2582, file: !2504, line: 104, type: !36)
!2587 = !DILocalVariable(name: "s24", arg: 3, scope: !2582, file: !2504, line: 104, type: !31)
!2588 = !DILocalVariable(name: "s25", arg: 4, scope: !2582, file: !2504, line: 104, type: !31)
!2589 = !DILocalVariable(name: "s26", arg: 5, scope: !2582, file: !2504, line: 104, type: !31)
!2590 = !DILocalVariable(name: "s27", arg: 6, scope: !2582, file: !2504, line: 104, type: !31)
!2591 = !DILocalVariable(name: "s28", arg: 7, scope: !2582, file: !2504, line: 104, type: !31)
!2592 = !DILocation(line: 0, scope: !2582, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 125, column: 16, scope: !2594, inlinedAt: !2575)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !2504, line: 122, column: 11)
!2595 = distinct !DILexicalBlock(scope: !2579, file: !2504, line: 121, column: 5)
!2596 = !DILocation(line: 106, column: 7, scope: !2597, inlinedAt: !2593)
!2597 = distinct !DILexicalBlock(scope: !2582, file: !2504, line: 106, column: 7)
!2598 = !DILocation(line: 106, column: 7, scope: !2582, inlinedAt: !2593)
!2599 = !DILocalVariable(name: "s1", arg: 1, scope: !2600, file: !2504, line: 90, type: !36)
!2600 = distinct !DISubprogram(name: "strcaseeq5", scope: !2504, file: !2504, line: 90, type: !2601, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2603)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!47, !36, !36, !31, !31, !31, !31}
!2603 = !{!2599, !2604, !2605, !2606, !2607, !2608}
!2604 = !DILocalVariable(name: "s2", arg: 2, scope: !2600, file: !2504, line: 90, type: !36)
!2605 = !DILocalVariable(name: "s25", arg: 3, scope: !2600, file: !2504, line: 90, type: !31)
!2606 = !DILocalVariable(name: "s26", arg: 4, scope: !2600, file: !2504, line: 90, type: !31)
!2607 = !DILocalVariable(name: "s27", arg: 5, scope: !2600, file: !2504, line: 90, type: !31)
!2608 = !DILocalVariable(name: "s28", arg: 6, scope: !2600, file: !2504, line: 90, type: !31)
!2609 = !DILocation(line: 0, scope: !2600, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 111, column: 16, scope: !2611, inlinedAt: !2593)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !2504, line: 108, column: 11)
!2612 = distinct !DILexicalBlock(scope: !2597, file: !2504, line: 107, column: 5)
!2613 = !DILocation(line: 92, column: 7, scope: !2614, inlinedAt: !2610)
!2614 = distinct !DILexicalBlock(scope: !2600, file: !2504, line: 92, column: 7)
!2615 = !DILocation(line: 92, column: 7, scope: !2600, inlinedAt: !2610)
!2616 = !DILocation(line: 235, column: 12, scope: !2520)
!2617 = !DILocation(line: 235, column: 21, scope: !2520)
!2618 = !DILocation(line: 235, column: 5, scope: !2520)
!2619 = !DILocation(line: 0, scope: !2524, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 167, column: 16, scope: !2539, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 236, column: 7, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2488, file: !97, line: 236, column: 7)
!2623 = !DILocation(line: 148, column: 7, scope: !2542, inlinedAt: !2620)
!2624 = !DILocation(line: 0, scope: !2544, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 153, column: 16, scope: !2558, inlinedAt: !2620)
!2626 = !DILocation(line: 134, column: 7, scope: !2561, inlinedAt: !2625)
!2627 = !DILocation(line: 134, column: 7, scope: !2544, inlinedAt: !2625)
!2628 = !DILocation(line: 0, scope: !2563, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 139, column: 16, scope: !2576, inlinedAt: !2625)
!2630 = !DILocation(line: 120, column: 7, scope: !2579, inlinedAt: !2629)
!2631 = !DILocation(line: 120, column: 7, scope: !2563, inlinedAt: !2629)
!2632 = !DILocation(line: 0, scope: !2582, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 125, column: 16, scope: !2594, inlinedAt: !2629)
!2634 = !DILocation(line: 106, column: 7, scope: !2597, inlinedAt: !2633)
!2635 = !DILocation(line: 106, column: 7, scope: !2582, inlinedAt: !2633)
!2636 = !DILocation(line: 0, scope: !2600, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 111, column: 16, scope: !2611, inlinedAt: !2633)
!2638 = !DILocation(line: 92, column: 7, scope: !2614, inlinedAt: !2637)
!2639 = !DILocation(line: 92, column: 7, scope: !2600, inlinedAt: !2637)
!2640 = !DILocalVariable(name: "s1", arg: 1, scope: !2641, file: !2504, line: 76, type: !36)
!2641 = distinct !DISubprogram(name: "strcaseeq6", scope: !2504, file: !2504, line: 76, type: !2642, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2644)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!47, !36, !36, !31, !31, !31}
!2644 = !{!2640, !2645, !2646, !2647, !2648}
!2645 = !DILocalVariable(name: "s2", arg: 2, scope: !2641, file: !2504, line: 76, type: !36)
!2646 = !DILocalVariable(name: "s26", arg: 3, scope: !2641, file: !2504, line: 76, type: !31)
!2647 = !DILocalVariable(name: "s27", arg: 4, scope: !2641, file: !2504, line: 76, type: !31)
!2648 = !DILocalVariable(name: "s28", arg: 5, scope: !2641, file: !2504, line: 76, type: !31)
!2649 = !DILocation(line: 0, scope: !2641, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 97, column: 16, scope: !2651, inlinedAt: !2637)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !2504, line: 94, column: 11)
!2652 = distinct !DILexicalBlock(scope: !2614, file: !2504, line: 93, column: 5)
!2653 = !DILocation(line: 78, column: 7, scope: !2654, inlinedAt: !2650)
!2654 = distinct !DILexicalBlock(scope: !2641, file: !2504, line: 78, column: 7)
!2655 = !DILocation(line: 78, column: 7, scope: !2641, inlinedAt: !2650)
!2656 = !DILocalVariable(name: "s1", arg: 1, scope: !2657, file: !2504, line: 62, type: !36)
!2657 = distinct !DISubprogram(name: "strcaseeq7", scope: !2504, file: !2504, line: 62, type: !2658, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2660)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!47, !36, !36, !31, !31}
!2660 = !{!2656, !2661, !2662, !2663}
!2661 = !DILocalVariable(name: "s2", arg: 2, scope: !2657, file: !2504, line: 62, type: !36)
!2662 = !DILocalVariable(name: "s27", arg: 3, scope: !2657, file: !2504, line: 62, type: !31)
!2663 = !DILocalVariable(name: "s28", arg: 4, scope: !2657, file: !2504, line: 62, type: !31)
!2664 = !DILocation(line: 0, scope: !2657, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 83, column: 16, scope: !2666, inlinedAt: !2650)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !2504, line: 80, column: 11)
!2667 = distinct !DILexicalBlock(scope: !2654, file: !2504, line: 79, column: 5)
!2668 = !DILocation(line: 64, column: 7, scope: !2669, inlinedAt: !2665)
!2669 = distinct !DILexicalBlock(scope: !2657, file: !2504, line: 64, column: 7)
!2670 = !DILocation(line: 236, column: 7, scope: !2488)
!2671 = !DILocation(line: 237, column: 12, scope: !2622)
!2672 = !DILocation(line: 237, column: 21, scope: !2622)
!2673 = !DILocation(line: 237, column: 5, scope: !2622)
!2674 = !DILocation(line: 239, column: 13, scope: !2488)
!2675 = !DILocation(line: 239, column: 11, scope: !2488)
!2676 = !DILocation(line: 239, column: 3, scope: !2488)
!2677 = !DILocation(line: 240, column: 1, scope: !2488)
!2678 = !DISubprogram(name: "iswprint", scope: !2679, file: !2679, line: 120, type: !2680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!2679 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!47, !7}
!2682 = !DISubprogram(name: "mbsinit", scope: !2683, file: !2683, line: 292, type: !2684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!2683 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!47, !2686}
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2011)
!2688 = distinct !DISubprogram(name: "quotearg_alloc", scope: !97, file: !97, line: 799, type: !2689, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2691)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!30, !36, !33, !1858}
!2691 = !{!2692, !2693, !2694}
!2692 = !DILocalVariable(name: "arg", arg: 1, scope: !2688, file: !97, line: 799, type: !36)
!2693 = !DILocalVariable(name: "argsize", arg: 2, scope: !2688, file: !97, line: 799, type: !33)
!2694 = !DILocalVariable(name: "o", arg: 3, scope: !2688, file: !97, line: 800, type: !1858)
!2695 = !DILocation(line: 0, scope: !2688)
!2696 = !DILocalVariable(name: "arg", arg: 1, scope: !2697, file: !97, line: 812, type: !36)
!2697 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !97, file: !97, line: 812, type: !2698, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!30, !36, !33, !186, !1858}
!2700 = !{!2696, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708}
!2701 = !DILocalVariable(name: "argsize", arg: 2, scope: !2697, file: !97, line: 812, type: !33)
!2702 = !DILocalVariable(name: "size", arg: 3, scope: !2697, file: !97, line: 812, type: !186)
!2703 = !DILocalVariable(name: "o", arg: 4, scope: !2697, file: !97, line: 813, type: !1858)
!2704 = !DILocalVariable(name: "p", scope: !2697, file: !97, line: 815, type: !1858)
!2705 = !DILocalVariable(name: "e", scope: !2697, file: !97, line: 816, type: !47)
!2706 = !DILocalVariable(name: "flags", scope: !2697, file: !97, line: 818, type: !47)
!2707 = !DILocalVariable(name: "bufsize", scope: !2697, file: !97, line: 819, type: !33)
!2708 = !DILocalVariable(name: "buf", scope: !2697, file: !97, line: 823, type: !30)
!2709 = !DILocation(line: 0, scope: !2697, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 802, column: 10, scope: !2688)
!2711 = !DILocation(line: 815, column: 37, scope: !2697, inlinedAt: !2710)
!2712 = !DILocation(line: 816, column: 11, scope: !2697, inlinedAt: !2710)
!2713 = !DILocation(line: 818, column: 18, scope: !2697, inlinedAt: !2710)
!2714 = !DILocation(line: 818, column: 24, scope: !2697, inlinedAt: !2710)
!2715 = !DILocation(line: 819, column: 69, scope: !2697, inlinedAt: !2710)
!2716 = !DILocation(line: 820, column: 53, scope: !2697, inlinedAt: !2710)
!2717 = !DILocation(line: 821, column: 49, scope: !2697, inlinedAt: !2710)
!2718 = !DILocation(line: 822, column: 49, scope: !2697, inlinedAt: !2710)
!2719 = !DILocation(line: 819, column: 20, scope: !2697, inlinedAt: !2710)
!2720 = !DILocation(line: 822, column: 62, scope: !2697, inlinedAt: !2710)
!2721 = !DILocalVariable(name: "n", arg: 1, scope: !2722, file: !182, line: 216, type: !33)
!2722 = distinct !DISubprogram(name: "xcharalloc", scope: !182, file: !182, line: 216, type: !2723, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2725)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!30, !33}
!2725 = !{!2721}
!2726 = !DILocation(line: 0, scope: !2722, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 823, column: 15, scope: !2697, inlinedAt: !2710)
!2728 = !DILocation(line: 218, column: 10, scope: !2722, inlinedAt: !2727)
!2729 = !DILocation(line: 824, column: 60, scope: !2697, inlinedAt: !2710)
!2730 = !DILocation(line: 826, column: 32, scope: !2697, inlinedAt: !2710)
!2731 = !DILocation(line: 826, column: 47, scope: !2697, inlinedAt: !2710)
!2732 = !DILocation(line: 824, column: 3, scope: !2697, inlinedAt: !2710)
!2733 = !DILocation(line: 827, column: 9, scope: !2697, inlinedAt: !2710)
!2734 = !DILocation(line: 802, column: 3, scope: !2688)
!2735 = !DILocation(line: 0, scope: !2697)
!2736 = !DILocation(line: 815, column: 37, scope: !2697)
!2737 = !DILocation(line: 816, column: 11, scope: !2697)
!2738 = !DILocation(line: 818, column: 18, scope: !2697)
!2739 = !DILocation(line: 818, column: 27, scope: !2697)
!2740 = !DILocation(line: 818, column: 24, scope: !2697)
!2741 = !DILocation(line: 819, column: 69, scope: !2697)
!2742 = !DILocation(line: 820, column: 53, scope: !2697)
!2743 = !DILocation(line: 821, column: 49, scope: !2697)
!2744 = !DILocation(line: 822, column: 49, scope: !2697)
!2745 = !DILocation(line: 819, column: 20, scope: !2697)
!2746 = !DILocation(line: 822, column: 62, scope: !2697)
!2747 = !DILocation(line: 0, scope: !2722, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 823, column: 15, scope: !2697)
!2749 = !DILocation(line: 218, column: 10, scope: !2722, inlinedAt: !2748)
!2750 = !DILocation(line: 824, column: 60, scope: !2697)
!2751 = !DILocation(line: 826, column: 32, scope: !2697)
!2752 = !DILocation(line: 826, column: 47, scope: !2697)
!2753 = !DILocation(line: 824, column: 3, scope: !2697)
!2754 = !DILocation(line: 827, column: 9, scope: !2697)
!2755 = !DILocation(line: 828, column: 7, scope: !2697)
!2756 = !DILocation(line: 829, column: 11, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2697, file: !97, line: 828, column: 7)
!2758 = !DILocation(line: 829, column: 5, scope: !2757)
!2759 = !DILocation(line: 830, column: 3, scope: !2697)
!2760 = distinct !DISubprogram(name: "quotearg_free", scope: !97, file: !97, line: 848, type: !645, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2761)
!2761 = !{!2762, !2763}
!2762 = !DILocalVariable(name: "sv", scope: !2760, file: !97, line: 850, type: !147)
!2763 = !DILocalVariable(name: "i", scope: !2760, file: !97, line: 851, type: !47)
!2764 = !DILocation(line: 850, column: 24, scope: !2760)
!2765 = !DILocation(line: 0, scope: !2760)
!2766 = !DILocation(line: 852, column: 19, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !97, line: 852, column: 3)
!2768 = distinct !DILexicalBlock(scope: !2760, file: !97, line: 852, column: 3)
!2769 = !DILocation(line: 852, column: 17, scope: !2767)
!2770 = !DILocation(line: 852, column: 3, scope: !2768)
!2771 = !DILocation(line: 853, column: 17, scope: !2767)
!2772 = !{!2773, !636, i64 8}
!2773 = !{!"slotvec", !898, i64 0, !636, i64 8}
!2774 = !DILocation(line: 853, column: 5, scope: !2767)
!2775 = !DILocation(line: 852, column: 28, scope: !2767)
!2776 = distinct !{!2776, !2770, !2777, !687}
!2777 = !DILocation(line: 853, column: 20, scope: !2768)
!2778 = !DILocation(line: 854, column: 13, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2760, file: !97, line: 854, column: 7)
!2780 = !DILocation(line: 854, column: 17, scope: !2779)
!2781 = !DILocation(line: 854, column: 7, scope: !2760)
!2782 = !DILocation(line: 856, column: 7, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2779, file: !97, line: 855, column: 5)
!2784 = !DILocation(line: 857, column: 21, scope: !2783)
!2785 = !{!2773, !898, i64 0}
!2786 = !DILocation(line: 858, column: 20, scope: !2783)
!2787 = !DILocation(line: 859, column: 5, scope: !2783)
!2788 = !DILocation(line: 860, column: 10, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2760, file: !97, line: 860, column: 7)
!2790 = !DILocation(line: 860, column: 7, scope: !2760)
!2791 = !DILocation(line: 862, column: 13, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2789, file: !97, line: 861, column: 5)
!2793 = !DILocation(line: 862, column: 7, scope: !2792)
!2794 = !DILocation(line: 863, column: 15, scope: !2792)
!2795 = !DILocation(line: 864, column: 5, scope: !2792)
!2796 = !DILocation(line: 865, column: 10, scope: !2760)
!2797 = !DILocation(line: 866, column: 1, scope: !2760)
!2798 = distinct !DISubprogram(name: "quotearg_n", scope: !97, file: !97, line: 931, type: !768, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2799)
!2799 = !{!2800, !2801}
!2800 = !DILocalVariable(name: "n", arg: 1, scope: !2798, file: !97, line: 931, type: !47)
!2801 = !DILocalVariable(name: "arg", arg: 2, scope: !2798, file: !97, line: 931, type: !36)
!2802 = !DILocation(line: 0, scope: !2798)
!2803 = !DILocation(line: 933, column: 10, scope: !2798)
!2804 = !DILocation(line: 933, column: 3, scope: !2798)
!2805 = distinct !DISubprogram(name: "quotearg_n_options", scope: !97, file: !97, line: 877, type: !2806, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2808)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!30, !47, !36, !33, !1858}
!2808 = !{!2809, !2810, !2811, !2812, !2813, !2814, !2815, !2818, !2819, !2821, !2822, !2823}
!2809 = !DILocalVariable(name: "n", arg: 1, scope: !2805, file: !97, line: 877, type: !47)
!2810 = !DILocalVariable(name: "arg", arg: 2, scope: !2805, file: !97, line: 877, type: !36)
!2811 = !DILocalVariable(name: "argsize", arg: 3, scope: !2805, file: !97, line: 877, type: !33)
!2812 = !DILocalVariable(name: "options", arg: 4, scope: !2805, file: !97, line: 878, type: !1858)
!2813 = !DILocalVariable(name: "e", scope: !2805, file: !97, line: 880, type: !47)
!2814 = !DILocalVariable(name: "sv", scope: !2805, file: !97, line: 882, type: !147)
!2815 = !DILocalVariable(name: "preallocated", scope: !2816, file: !97, line: 889, type: !82)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !97, line: 888, column: 5)
!2817 = distinct !DILexicalBlock(scope: !2805, file: !97, line: 887, column: 7)
!2818 = !DILocalVariable(name: "nmax", scope: !2816, file: !97, line: 890, type: !47)
!2819 = !DILocalVariable(name: "size", scope: !2820, file: !97, line: 903, type: !33)
!2820 = distinct !DILexicalBlock(scope: !2805, file: !97, line: 902, column: 3)
!2821 = !DILocalVariable(name: "val", scope: !2820, file: !97, line: 904, type: !30)
!2822 = !DILocalVariable(name: "flags", scope: !2820, file: !97, line: 906, type: !47)
!2823 = !DILocalVariable(name: "qsize", scope: !2820, file: !97, line: 907, type: !33)
!2824 = !DILocation(line: 0, scope: !2805)
!2825 = !DILocation(line: 880, column: 11, scope: !2805)
!2826 = !DILocation(line: 882, column: 24, scope: !2805)
!2827 = !DILocation(line: 884, column: 9, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2805, file: !97, line: 884, column: 7)
!2829 = !DILocation(line: 884, column: 7, scope: !2805)
!2830 = !DILocation(line: 885, column: 5, scope: !2828)
!2831 = !DILocation(line: 887, column: 7, scope: !2817)
!2832 = !DILocation(line: 887, column: 14, scope: !2817)
!2833 = !DILocation(line: 887, column: 7, scope: !2805)
!2834 = !DILocation(line: 889, column: 31, scope: !2816)
!2835 = !DILocation(line: 0, scope: !2816)
!2836 = !DILocation(line: 892, column: 16, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2816, file: !97, line: 892, column: 11)
!2838 = !DILocation(line: 892, column: 11, scope: !2816)
!2839 = !DILocation(line: 893, column: 9, scope: !2837)
!2840 = !DILocation(line: 895, column: 32, scope: !2816)
!2841 = !DILocation(line: 895, column: 61, scope: !2816)
!2842 = !DILocation(line: 895, column: 66, scope: !2816)
!2843 = !DILocation(line: 895, column: 22, scope: !2816)
!2844 = !DILocation(line: 895, column: 15, scope: !2816)
!2845 = !DILocation(line: 896, column: 11, scope: !2816)
!2846 = !DILocation(line: 897, column: 15, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2816, file: !97, line: 896, column: 11)
!2848 = !{i64 0, i64 8, !897, i64 8, i64 8, !635}
!2849 = !DILocation(line: 897, column: 9, scope: !2847)
!2850 = !DILocation(line: 898, column: 20, scope: !2816)
!2851 = !DILocation(line: 898, column: 18, scope: !2816)
!2852 = !DILocation(line: 898, column: 15, scope: !2816)
!2853 = !DILocation(line: 898, column: 38, scope: !2816)
!2854 = !DILocation(line: 898, column: 31, scope: !2816)
!2855 = !DILocation(line: 898, column: 48, scope: !2816)
!2856 = !DILocation(line: 0, scope: !2250, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 898, column: 7, scope: !2816)
!2858 = !DILocation(line: 59, column: 10, scope: !2250, inlinedAt: !2857)
!2859 = !DILocation(line: 899, column: 14, scope: !2816)
!2860 = !DILocation(line: 900, column: 5, scope: !2816)
!2861 = !DILocation(line: 903, column: 19, scope: !2820)
!2862 = !DILocation(line: 903, column: 25, scope: !2820)
!2863 = !DILocation(line: 0, scope: !2820)
!2864 = !DILocation(line: 904, column: 23, scope: !2820)
!2865 = !DILocation(line: 906, column: 26, scope: !2820)
!2866 = !DILocation(line: 906, column: 32, scope: !2820)
!2867 = !DILocation(line: 908, column: 55, scope: !2820)
!2868 = !DILocation(line: 909, column: 46, scope: !2820)
!2869 = !DILocation(line: 910, column: 55, scope: !2820)
!2870 = !DILocation(line: 911, column: 55, scope: !2820)
!2871 = !DILocation(line: 907, column: 20, scope: !2820)
!2872 = !DILocation(line: 913, column: 14, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2820, file: !97, line: 913, column: 9)
!2874 = !DILocation(line: 913, column: 9, scope: !2820)
!2875 = !DILocation(line: 915, column: 35, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2873, file: !97, line: 914, column: 7)
!2877 = !DILocation(line: 915, column: 20, scope: !2876)
!2878 = !DILocation(line: 916, column: 17, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2876, file: !97, line: 916, column: 13)
!2880 = !DILocation(line: 916, column: 13, scope: !2876)
!2881 = !DILocation(line: 917, column: 11, scope: !2879)
!2882 = !DILocation(line: 0, scope: !2722, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 918, column: 27, scope: !2876)
!2884 = !DILocation(line: 218, column: 10, scope: !2722, inlinedAt: !2883)
!2885 = !DILocation(line: 918, column: 19, scope: !2876)
!2886 = !DILocation(line: 919, column: 69, scope: !2876)
!2887 = !DILocation(line: 921, column: 44, scope: !2876)
!2888 = !DILocation(line: 922, column: 44, scope: !2876)
!2889 = !DILocation(line: 919, column: 9, scope: !2876)
!2890 = !DILocation(line: 923, column: 7, scope: !2876)
!2891 = !DILocation(line: 925, column: 11, scope: !2820)
!2892 = !DILocation(line: 926, column: 5, scope: !2820)
!2893 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !97, file: !97, line: 937, type: !2894, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2896)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!30, !47, !36, !33}
!2896 = !{!2897, !2898, !2899}
!2897 = !DILocalVariable(name: "n", arg: 1, scope: !2893, file: !97, line: 937, type: !47)
!2898 = !DILocalVariable(name: "arg", arg: 2, scope: !2893, file: !97, line: 937, type: !36)
!2899 = !DILocalVariable(name: "argsize", arg: 3, scope: !2893, file: !97, line: 937, type: !33)
!2900 = !DILocation(line: 0, scope: !2893)
!2901 = !DILocation(line: 939, column: 10, scope: !2893)
!2902 = !DILocation(line: 939, column: 3, scope: !2893)
!2903 = distinct !DISubprogram(name: "quotearg", scope: !97, file: !97, line: 943, type: !1146, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2904)
!2904 = !{!2905}
!2905 = !DILocalVariable(name: "arg", arg: 1, scope: !2903, file: !97, line: 943, type: !36)
!2906 = !DILocation(line: 0, scope: !2903)
!2907 = !DILocation(line: 0, scope: !2798, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 945, column: 10, scope: !2903)
!2909 = !DILocation(line: 933, column: 10, scope: !2798, inlinedAt: !2908)
!2910 = !DILocation(line: 945, column: 3, scope: !2903)
!2911 = distinct !DISubprogram(name: "quotearg_mem", scope: !97, file: !97, line: 949, type: !2912, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2914)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!30, !36, !33}
!2914 = !{!2915, !2916}
!2915 = !DILocalVariable(name: "arg", arg: 1, scope: !2911, file: !97, line: 949, type: !36)
!2916 = !DILocalVariable(name: "argsize", arg: 2, scope: !2911, file: !97, line: 949, type: !33)
!2917 = !DILocation(line: 0, scope: !2911)
!2918 = !DILocation(line: 0, scope: !2893, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 951, column: 10, scope: !2911)
!2920 = !DILocation(line: 939, column: 10, scope: !2893, inlinedAt: !2919)
!2921 = !DILocation(line: 951, column: 3, scope: !2911)
!2922 = distinct !DISubprogram(name: "quotearg_n_style", scope: !97, file: !97, line: 955, type: !2923, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2925)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!30, !47, !5, !36}
!2925 = !{!2926, !2927, !2928, !2929}
!2926 = !DILocalVariable(name: "n", arg: 1, scope: !2922, file: !97, line: 955, type: !47)
!2927 = !DILocalVariable(name: "s", arg: 2, scope: !2922, file: !97, line: 955, type: !5)
!2928 = !DILocalVariable(name: "arg", arg: 3, scope: !2922, file: !97, line: 955, type: !36)
!2929 = !DILocalVariable(name: "o", scope: !2922, file: !97, line: 957, type: !1859)
!2930 = !DILocation(line: 0, scope: !2922)
!2931 = !DILocation(line: 957, column: 3, scope: !2922)
!2932 = !DILocation(line: 957, column: 32, scope: !2922)
!2933 = !{!2934}
!2934 = distinct !{!2934, !2935, !"quoting_options_from_style: argument 0"}
!2935 = distinct !{!2935, !"quoting_options_from_style"}
!2936 = !DILocation(line: 957, column: 36, scope: !2922)
!2937 = !DILocalVariable(name: "style", arg: 1, scope: !2938, file: !97, line: 193, type: !5)
!2938 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !97, file: !97, line: 193, type: !2939, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2941)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!130, !5}
!2941 = !{!2937, !2942}
!2942 = !DILocalVariable(name: "o", scope: !2938, file: !97, line: 195, type: !130)
!2943 = !DILocation(line: 0, scope: !2938, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 957, column: 36, scope: !2922)
!2945 = !DILocation(line: 195, column: 26, scope: !2938, inlinedAt: !2944)
!2946 = !DILocation(line: 196, column: 13, scope: !2947, inlinedAt: !2944)
!2947 = distinct !DILexicalBlock(scope: !2938, file: !97, line: 196, column: 7)
!2948 = !DILocation(line: 196, column: 7, scope: !2938, inlinedAt: !2944)
!2949 = !DILocation(line: 197, column: 5, scope: !2947, inlinedAt: !2944)
!2950 = !DILocation(line: 198, column: 5, scope: !2938, inlinedAt: !2944)
!2951 = !DILocation(line: 198, column: 11, scope: !2938, inlinedAt: !2944)
!2952 = !DILocation(line: 958, column: 10, scope: !2922)
!2953 = !DILocation(line: 959, column: 1, scope: !2922)
!2954 = !DILocation(line: 958, column: 3, scope: !2922)
!2955 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !97, file: !97, line: 962, type: !2956, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2958)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!30, !47, !5, !36, !33}
!2958 = !{!2959, !2960, !2961, !2962, !2963}
!2959 = !DILocalVariable(name: "n", arg: 1, scope: !2955, file: !97, line: 962, type: !47)
!2960 = !DILocalVariable(name: "s", arg: 2, scope: !2955, file: !97, line: 962, type: !5)
!2961 = !DILocalVariable(name: "arg", arg: 3, scope: !2955, file: !97, line: 963, type: !36)
!2962 = !DILocalVariable(name: "argsize", arg: 4, scope: !2955, file: !97, line: 963, type: !33)
!2963 = !DILocalVariable(name: "o", scope: !2955, file: !97, line: 965, type: !1859)
!2964 = !DILocation(line: 0, scope: !2955)
!2965 = !DILocation(line: 965, column: 3, scope: !2955)
!2966 = !DILocation(line: 965, column: 32, scope: !2955)
!2967 = !{!2968}
!2968 = distinct !{!2968, !2969, !"quoting_options_from_style: argument 0"}
!2969 = distinct !{!2969, !"quoting_options_from_style"}
!2970 = !DILocation(line: 965, column: 36, scope: !2955)
!2971 = !DILocation(line: 0, scope: !2938, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 965, column: 36, scope: !2955)
!2973 = !DILocation(line: 195, column: 26, scope: !2938, inlinedAt: !2972)
!2974 = !DILocation(line: 196, column: 13, scope: !2947, inlinedAt: !2972)
!2975 = !DILocation(line: 196, column: 7, scope: !2938, inlinedAt: !2972)
!2976 = !DILocation(line: 197, column: 5, scope: !2947, inlinedAt: !2972)
!2977 = !DILocation(line: 198, column: 5, scope: !2938, inlinedAt: !2972)
!2978 = !DILocation(line: 198, column: 11, scope: !2938, inlinedAt: !2972)
!2979 = !DILocation(line: 966, column: 10, scope: !2955)
!2980 = !DILocation(line: 967, column: 1, scope: !2955)
!2981 = !DILocation(line: 966, column: 3, scope: !2955)
!2982 = distinct !DISubprogram(name: "quotearg_style", scope: !97, file: !97, line: 970, type: !2983, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !2985)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!30, !5, !36}
!2985 = !{!2986, !2987}
!2986 = !DILocalVariable(name: "s", arg: 1, scope: !2982, file: !97, line: 970, type: !5)
!2987 = !DILocalVariable(name: "arg", arg: 2, scope: !2982, file: !97, line: 970, type: !36)
!2988 = !DILocation(line: 0, scope: !2982)
!2989 = !DILocation(line: 0, scope: !2922, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 972, column: 10, scope: !2982)
!2991 = !DILocation(line: 957, column: 3, scope: !2922, inlinedAt: !2990)
!2992 = !DILocation(line: 957, column: 32, scope: !2922, inlinedAt: !2990)
!2993 = !{!2994}
!2994 = distinct !{!2994, !2995, !"quoting_options_from_style: argument 0"}
!2995 = distinct !{!2995, !"quoting_options_from_style"}
!2996 = !DILocation(line: 957, column: 36, scope: !2922, inlinedAt: !2990)
!2997 = !DILocation(line: 0, scope: !2938, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 957, column: 36, scope: !2922, inlinedAt: !2990)
!2999 = !DILocation(line: 195, column: 26, scope: !2938, inlinedAt: !2998)
!3000 = !DILocation(line: 196, column: 13, scope: !2947, inlinedAt: !2998)
!3001 = !DILocation(line: 196, column: 7, scope: !2938, inlinedAt: !2998)
!3002 = !DILocation(line: 197, column: 5, scope: !2947, inlinedAt: !2998)
!3003 = !DILocation(line: 198, column: 5, scope: !2938, inlinedAt: !2998)
!3004 = !DILocation(line: 198, column: 11, scope: !2938, inlinedAt: !2998)
!3005 = !DILocation(line: 958, column: 10, scope: !2922, inlinedAt: !2990)
!3006 = !DILocation(line: 959, column: 1, scope: !2922, inlinedAt: !2990)
!3007 = !DILocation(line: 972, column: 3, scope: !2982)
!3008 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !97, file: !97, line: 976, type: !3009, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !3011)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!30, !5, !36, !33}
!3011 = !{!3012, !3013, !3014}
!3012 = !DILocalVariable(name: "s", arg: 1, scope: !3008, file: !97, line: 976, type: !5)
!3013 = !DILocalVariable(name: "arg", arg: 2, scope: !3008, file: !97, line: 976, type: !36)
!3014 = !DILocalVariable(name: "argsize", arg: 3, scope: !3008, file: !97, line: 976, type: !33)
!3015 = !DILocation(line: 0, scope: !3008)
!3016 = !DILocation(line: 0, scope: !2955, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 978, column: 10, scope: !3008)
!3018 = !DILocation(line: 965, column: 3, scope: !2955, inlinedAt: !3017)
!3019 = !DILocation(line: 965, column: 32, scope: !2955, inlinedAt: !3017)
!3020 = !{!3021}
!3021 = distinct !{!3021, !3022, !"quoting_options_from_style: argument 0"}
!3022 = distinct !{!3022, !"quoting_options_from_style"}
!3023 = !DILocation(line: 965, column: 36, scope: !2955, inlinedAt: !3017)
!3024 = !DILocation(line: 0, scope: !2938, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 965, column: 36, scope: !2955, inlinedAt: !3017)
!3026 = !DILocation(line: 195, column: 26, scope: !2938, inlinedAt: !3025)
!3027 = !DILocation(line: 196, column: 13, scope: !2947, inlinedAt: !3025)
!3028 = !DILocation(line: 196, column: 7, scope: !2938, inlinedAt: !3025)
!3029 = !DILocation(line: 197, column: 5, scope: !2947, inlinedAt: !3025)
!3030 = !DILocation(line: 198, column: 5, scope: !2938, inlinedAt: !3025)
!3031 = !DILocation(line: 198, column: 11, scope: !2938, inlinedAt: !3025)
!3032 = !DILocation(line: 966, column: 10, scope: !2955, inlinedAt: !3017)
!3033 = !DILocation(line: 967, column: 1, scope: !2955, inlinedAt: !3017)
!3034 = !DILocation(line: 978, column: 3, scope: !3008)
!3035 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !97, file: !97, line: 982, type: !3036, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !3038)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!30, !36, !33, !31}
!3038 = !{!3039, !3040, !3041, !3042}
!3039 = !DILocalVariable(name: "arg", arg: 1, scope: !3035, file: !97, line: 982, type: !36)
!3040 = !DILocalVariable(name: "argsize", arg: 2, scope: !3035, file: !97, line: 982, type: !33)
!3041 = !DILocalVariable(name: "ch", arg: 3, scope: !3035, file: !97, line: 982, type: !31)
!3042 = !DILocalVariable(name: "options", scope: !3035, file: !97, line: 984, type: !130)
!3043 = !DILocation(line: 0, scope: !3035)
!3044 = !DILocation(line: 984, column: 3, scope: !3035)
!3045 = !DILocation(line: 984, column: 26, scope: !3035)
!3046 = !DILocation(line: 985, column: 13, scope: !3035)
!3047 = !{i64 0, i64 4, !906, i64 4, i64 4, !811, i64 8, i64 32, !906, i64 40, i64 8, !635, i64 48, i64 8, !635}
!3048 = !DILocation(line: 0, scope: !1879, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 986, column: 3, scope: !3035)
!3050 = !DILocation(line: 156, column: 62, scope: !1879, inlinedAt: !3049)
!3051 = !DILocation(line: 156, column: 57, scope: !1879, inlinedAt: !3049)
!3052 = !DILocation(line: 157, column: 15, scope: !1879, inlinedAt: !3049)
!3053 = !DILocation(line: 158, column: 12, scope: !1879, inlinedAt: !3049)
!3054 = !DILocation(line: 158, column: 15, scope: !1879, inlinedAt: !3049)
!3055 = !DILocation(line: 158, column: 25, scope: !1879, inlinedAt: !3049)
!3056 = !DILocation(line: 159, column: 18, scope: !1879, inlinedAt: !3049)
!3057 = !DILocation(line: 159, column: 23, scope: !1879, inlinedAt: !3049)
!3058 = !DILocation(line: 159, column: 6, scope: !1879, inlinedAt: !3049)
!3059 = !DILocation(line: 987, column: 10, scope: !3035)
!3060 = !DILocation(line: 988, column: 1, scope: !3035)
!3061 = !DILocation(line: 987, column: 3, scope: !3035)
!3062 = distinct !DISubprogram(name: "quotearg_char", scope: !97, file: !97, line: 991, type: !3063, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !3065)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!30, !36, !31}
!3065 = !{!3066, !3067}
!3066 = !DILocalVariable(name: "arg", arg: 1, scope: !3062, file: !97, line: 991, type: !36)
!3067 = !DILocalVariable(name: "ch", arg: 2, scope: !3062, file: !97, line: 991, type: !31)
!3068 = !DILocation(line: 0, scope: !3062)
!3069 = !DILocation(line: 0, scope: !3035, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 993, column: 10, scope: !3062)
!3071 = !DILocation(line: 984, column: 3, scope: !3035, inlinedAt: !3070)
!3072 = !DILocation(line: 984, column: 26, scope: !3035, inlinedAt: !3070)
!3073 = !DILocation(line: 985, column: 13, scope: !3035, inlinedAt: !3070)
!3074 = !DILocation(line: 0, scope: !1879, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 986, column: 3, scope: !3035, inlinedAt: !3070)
!3076 = !DILocation(line: 156, column: 62, scope: !1879, inlinedAt: !3075)
!3077 = !DILocation(line: 156, column: 57, scope: !1879, inlinedAt: !3075)
!3078 = !DILocation(line: 157, column: 15, scope: !1879, inlinedAt: !3075)
!3079 = !DILocation(line: 158, column: 12, scope: !1879, inlinedAt: !3075)
!3080 = !DILocation(line: 158, column: 15, scope: !1879, inlinedAt: !3075)
!3081 = !DILocation(line: 158, column: 25, scope: !1879, inlinedAt: !3075)
!3082 = !DILocation(line: 159, column: 18, scope: !1879, inlinedAt: !3075)
!3083 = !DILocation(line: 159, column: 23, scope: !1879, inlinedAt: !3075)
!3084 = !DILocation(line: 159, column: 6, scope: !1879, inlinedAt: !3075)
!3085 = !DILocation(line: 987, column: 10, scope: !3035, inlinedAt: !3070)
!3086 = !DILocation(line: 988, column: 1, scope: !3035, inlinedAt: !3070)
!3087 = !DILocation(line: 993, column: 3, scope: !3062)
!3088 = distinct !DISubprogram(name: "quotearg_colon", scope: !97, file: !97, line: 997, type: !1146, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !3089)
!3089 = !{!3090}
!3090 = !DILocalVariable(name: "arg", arg: 1, scope: !3088, file: !97, line: 997, type: !36)
!3091 = !DILocation(line: 0, scope: !3088)
!3092 = !DILocation(line: 0, scope: !3062, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 999, column: 10, scope: !3088)
!3094 = !DILocation(line: 0, scope: !3035, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 993, column: 10, scope: !3062, inlinedAt: !3093)
!3096 = !DILocation(line: 984, column: 3, scope: !3035, inlinedAt: !3095)
!3097 = !DILocation(line: 984, column: 26, scope: !3035, inlinedAt: !3095)
!3098 = !DILocation(line: 985, column: 13, scope: !3035, inlinedAt: !3095)
!3099 = !DILocation(line: 0, scope: !1879, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 986, column: 3, scope: !3035, inlinedAt: !3095)
!3101 = !DILocation(line: 156, column: 57, scope: !1879, inlinedAt: !3100)
!3102 = !DILocation(line: 158, column: 12, scope: !1879, inlinedAt: !3100)
!3103 = !DILocation(line: 159, column: 6, scope: !1879, inlinedAt: !3100)
!3104 = !DILocation(line: 987, column: 10, scope: !3035, inlinedAt: !3095)
!3105 = !DILocation(line: 988, column: 1, scope: !3035, inlinedAt: !3095)
!3106 = !DILocation(line: 999, column: 3, scope: !3088)
!3107 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !97, file: !97, line: 1003, type: !2912, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !3108)
!3108 = !{!3109, !3110}
!3109 = !DILocalVariable(name: "arg", arg: 1, scope: !3107, file: !97, line: 1003, type: !36)
!3110 = !DILocalVariable(name: "argsize", arg: 2, scope: !3107, file: !97, line: 1003, type: !33)
!3111 = !DILocation(line: 0, scope: !3107)
!3112 = !DILocation(line: 0, scope: !3035, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 1005, column: 10, scope: !3107)
!3114 = !DILocation(line: 984, column: 3, scope: !3035, inlinedAt: !3113)
!3115 = !DILocation(line: 984, column: 26, scope: !3035, inlinedAt: !3113)
!3116 = !DILocation(line: 985, column: 13, scope: !3035, inlinedAt: !3113)
!3117 = !DILocation(line: 0, scope: !1879, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 986, column: 3, scope: !3035, inlinedAt: !3113)
!3119 = !DILocation(line: 156, column: 57, scope: !1879, inlinedAt: !3118)
!3120 = !DILocation(line: 158, column: 12, scope: !1879, inlinedAt: !3118)
!3121 = !DILocation(line: 159, column: 6, scope: !1879, inlinedAt: !3118)
!3122 = !DILocation(line: 987, column: 10, scope: !3035, inlinedAt: !3113)
!3123 = !DILocation(line: 988, column: 1, scope: !3035, inlinedAt: !3113)
!3124 = !DILocation(line: 1005, column: 3, scope: !3107)
!3125 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !97, file: !97, line: 1009, type: !2923, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !3126)
!3126 = !{!3127, !3128, !3129, !3130}
!3127 = !DILocalVariable(name: "n", arg: 1, scope: !3125, file: !97, line: 1009, type: !47)
!3128 = !DILocalVariable(name: "s", arg: 2, scope: !3125, file: !97, line: 1009, type: !5)
!3129 = !DILocalVariable(name: "arg", arg: 3, scope: !3125, file: !97, line: 1009, type: !36)
!3130 = !DILocalVariable(name: "options", scope: !3125, file: !97, line: 1011, type: !130)
!3131 = !DILocation(line: 195, column: 26, scope: !2938, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 1012, column: 13, scope: !3125)
!3133 = !DILocation(line: 0, scope: !3125)
!3134 = !DILocation(line: 1011, column: 3, scope: !3125)
!3135 = !DILocation(line: 1011, column: 26, scope: !3125)
!3136 = !DILocation(line: 1012, column: 13, scope: !3125)
!3137 = !{!3138}
!3138 = distinct !{!3138, !3139, !"quoting_options_from_style: argument 0"}
!3139 = distinct !{!3139, !"quoting_options_from_style"}
!3140 = !DILocation(line: 0, scope: !2938, inlinedAt: !3132)
!3141 = !DILocation(line: 196, column: 13, scope: !2947, inlinedAt: !3132)
!3142 = !DILocation(line: 196, column: 7, scope: !2938, inlinedAt: !3132)
!3143 = !DILocation(line: 197, column: 5, scope: !2947, inlinedAt: !3132)
!3144 = !{i64 0, i64 4, !811, i64 4, i64 32, !906, i64 36, i64 8, !635, i64 44, i64 8, !635}
!3145 = !DILocation(line: 0, scope: !1879, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 1013, column: 3, scope: !3125)
!3147 = !DILocation(line: 156, column: 57, scope: !1879, inlinedAt: !3146)
!3148 = !DILocation(line: 158, column: 12, scope: !1879, inlinedAt: !3146)
!3149 = !DILocation(line: 159, column: 6, scope: !1879, inlinedAt: !3146)
!3150 = !DILocation(line: 1014, column: 10, scope: !3125)
!3151 = !DILocation(line: 1015, column: 1, scope: !3125)
!3152 = !DILocation(line: 1014, column: 3, scope: !3125)
!3153 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !97, file: !97, line: 1018, type: !3154, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!30, !47, !36, !36, !36}
!3156 = !{!3157, !3158, !3159, !3160}
!3157 = !DILocalVariable(name: "n", arg: 1, scope: !3153, file: !97, line: 1018, type: !47)
!3158 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3153, file: !97, line: 1018, type: !36)
!3159 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3153, file: !97, line: 1019, type: !36)
!3160 = !DILocalVariable(name: "arg", arg: 4, scope: !3153, file: !97, line: 1019, type: !36)
!3161 = !DILocation(line: 0, scope: !3153)
!3162 = !DILocalVariable(name: "n", arg: 1, scope: !3163, file: !97, line: 1026, type: !47)
!3163 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !97, file: !97, line: 1026, type: !3164, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !3166)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!30, !47, !36, !36, !36, !33}
!3166 = !{!3162, !3167, !3168, !3169, !3170, !3171}
!3167 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3163, file: !97, line: 1026, type: !36)
!3168 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3163, file: !97, line: 1027, type: !36)
!3169 = !DILocalVariable(name: "arg", arg: 4, scope: !3163, file: !97, line: 1028, type: !36)
!3170 = !DILocalVariable(name: "argsize", arg: 5, scope: !3163, file: !97, line: 1028, type: !33)
!3171 = !DILocalVariable(name: "o", scope: !3163, file: !97, line: 1030, type: !130)
!3172 = !DILocation(line: 0, scope: !3163, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 1021, column: 10, scope: !3153)
!3174 = !DILocation(line: 1030, column: 3, scope: !3163, inlinedAt: !3173)
!3175 = !DILocation(line: 1030, column: 26, scope: !3163, inlinedAt: !3173)
!3176 = !DILocation(line: 1030, column: 30, scope: !3163, inlinedAt: !3173)
!3177 = !DILocation(line: 0, scope: !1919, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 1031, column: 3, scope: !3163, inlinedAt: !3173)
!3179 = !DILocation(line: 184, column: 6, scope: !1919, inlinedAt: !3178)
!3180 = !DILocation(line: 184, column: 12, scope: !1919, inlinedAt: !3178)
!3181 = !DILocation(line: 185, column: 8, scope: !1933, inlinedAt: !3178)
!3182 = !DILocation(line: 185, column: 19, scope: !1933, inlinedAt: !3178)
!3183 = !DILocation(line: 186, column: 5, scope: !1933, inlinedAt: !3178)
!3184 = !DILocation(line: 187, column: 6, scope: !1919, inlinedAt: !3178)
!3185 = !DILocation(line: 187, column: 17, scope: !1919, inlinedAt: !3178)
!3186 = !DILocation(line: 188, column: 6, scope: !1919, inlinedAt: !3178)
!3187 = !DILocation(line: 188, column: 18, scope: !1919, inlinedAt: !3178)
!3188 = !DILocation(line: 1032, column: 10, scope: !3163, inlinedAt: !3173)
!3189 = !DILocation(line: 1033, column: 1, scope: !3163, inlinedAt: !3173)
!3190 = !DILocation(line: 1021, column: 3, scope: !3153)
!3191 = !DILocation(line: 0, scope: !3163)
!3192 = !DILocation(line: 1030, column: 3, scope: !3163)
!3193 = !DILocation(line: 1030, column: 26, scope: !3163)
!3194 = !DILocation(line: 1030, column: 30, scope: !3163)
!3195 = !DILocation(line: 0, scope: !1919, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 1031, column: 3, scope: !3163)
!3197 = !DILocation(line: 184, column: 6, scope: !1919, inlinedAt: !3196)
!3198 = !DILocation(line: 184, column: 12, scope: !1919, inlinedAt: !3196)
!3199 = !DILocation(line: 185, column: 8, scope: !1933, inlinedAt: !3196)
!3200 = !DILocation(line: 185, column: 19, scope: !1933, inlinedAt: !3196)
!3201 = !DILocation(line: 186, column: 5, scope: !1933, inlinedAt: !3196)
!3202 = !DILocation(line: 187, column: 6, scope: !1919, inlinedAt: !3196)
!3203 = !DILocation(line: 187, column: 17, scope: !1919, inlinedAt: !3196)
!3204 = !DILocation(line: 188, column: 6, scope: !1919, inlinedAt: !3196)
!3205 = !DILocation(line: 188, column: 18, scope: !1919, inlinedAt: !3196)
!3206 = !DILocation(line: 1032, column: 10, scope: !3163)
!3207 = !DILocation(line: 1033, column: 1, scope: !3163)
!3208 = !DILocation(line: 1032, column: 3, scope: !3163)
!3209 = distinct !DISubprogram(name: "quotearg_custom", scope: !97, file: !97, line: 1036, type: !3210, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !3212)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!30, !36, !36, !36}
!3212 = !{!3213, !3214, !3215}
!3213 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3209, file: !97, line: 1036, type: !36)
!3214 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3209, file: !97, line: 1036, type: !36)
!3215 = !DILocalVariable(name: "arg", arg: 3, scope: !3209, file: !97, line: 1037, type: !36)
!3216 = !DILocation(line: 0, scope: !3209)
!3217 = !DILocation(line: 0, scope: !3153, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 1039, column: 10, scope: !3209)
!3219 = !DILocation(line: 0, scope: !3163, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 1021, column: 10, scope: !3153, inlinedAt: !3218)
!3221 = !DILocation(line: 1030, column: 3, scope: !3163, inlinedAt: !3220)
!3222 = !DILocation(line: 1030, column: 26, scope: !3163, inlinedAt: !3220)
!3223 = !DILocation(line: 1030, column: 30, scope: !3163, inlinedAt: !3220)
!3224 = !DILocation(line: 0, scope: !1919, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 1031, column: 3, scope: !3163, inlinedAt: !3220)
!3226 = !DILocation(line: 184, column: 6, scope: !1919, inlinedAt: !3225)
!3227 = !DILocation(line: 184, column: 12, scope: !1919, inlinedAt: !3225)
!3228 = !DILocation(line: 185, column: 8, scope: !1933, inlinedAt: !3225)
!3229 = !DILocation(line: 185, column: 19, scope: !1933, inlinedAt: !3225)
!3230 = !DILocation(line: 186, column: 5, scope: !1933, inlinedAt: !3225)
!3231 = !DILocation(line: 187, column: 6, scope: !1919, inlinedAt: !3225)
!3232 = !DILocation(line: 187, column: 17, scope: !1919, inlinedAt: !3225)
!3233 = !DILocation(line: 188, column: 6, scope: !1919, inlinedAt: !3225)
!3234 = !DILocation(line: 188, column: 18, scope: !1919, inlinedAt: !3225)
!3235 = !DILocation(line: 1032, column: 10, scope: !3163, inlinedAt: !3220)
!3236 = !DILocation(line: 1033, column: 1, scope: !3163, inlinedAt: !3220)
!3237 = !DILocation(line: 1039, column: 3, scope: !3209)
!3238 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !97, file: !97, line: 1043, type: !3239, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !3241)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!30, !36, !36, !36, !33}
!3241 = !{!3242, !3243, !3244, !3245}
!3242 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3238, file: !97, line: 1043, type: !36)
!3243 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3238, file: !97, line: 1043, type: !36)
!3244 = !DILocalVariable(name: "arg", arg: 3, scope: !3238, file: !97, line: 1044, type: !36)
!3245 = !DILocalVariable(name: "argsize", arg: 4, scope: !3238, file: !97, line: 1044, type: !33)
!3246 = !DILocation(line: 0, scope: !3238)
!3247 = !DILocation(line: 0, scope: !3163, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 1046, column: 10, scope: !3238)
!3249 = !DILocation(line: 1030, column: 3, scope: !3163, inlinedAt: !3248)
!3250 = !DILocation(line: 1030, column: 26, scope: !3163, inlinedAt: !3248)
!3251 = !DILocation(line: 1030, column: 30, scope: !3163, inlinedAt: !3248)
!3252 = !DILocation(line: 0, scope: !1919, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 1031, column: 3, scope: !3163, inlinedAt: !3248)
!3254 = !DILocation(line: 184, column: 6, scope: !1919, inlinedAt: !3253)
!3255 = !DILocation(line: 184, column: 12, scope: !1919, inlinedAt: !3253)
!3256 = !DILocation(line: 185, column: 8, scope: !1933, inlinedAt: !3253)
!3257 = !DILocation(line: 185, column: 19, scope: !1933, inlinedAt: !3253)
!3258 = !DILocation(line: 186, column: 5, scope: !1933, inlinedAt: !3253)
!3259 = !DILocation(line: 187, column: 6, scope: !1919, inlinedAt: !3253)
!3260 = !DILocation(line: 187, column: 17, scope: !1919, inlinedAt: !3253)
!3261 = !DILocation(line: 188, column: 6, scope: !1919, inlinedAt: !3253)
!3262 = !DILocation(line: 188, column: 18, scope: !1919, inlinedAt: !3253)
!3263 = !DILocation(line: 1032, column: 10, scope: !3163, inlinedAt: !3248)
!3264 = !DILocation(line: 1033, column: 1, scope: !3163, inlinedAt: !3248)
!3265 = !DILocation(line: 1046, column: 3, scope: !3238)
!3266 = distinct !DISubprogram(name: "quote_n_mem", scope: !97, file: !97, line: 1061, type: !3267, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !3269)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!36, !47, !36, !33}
!3269 = !{!3270, !3271, !3272}
!3270 = !DILocalVariable(name: "n", arg: 1, scope: !3266, file: !97, line: 1061, type: !47)
!3271 = !DILocalVariable(name: "arg", arg: 2, scope: !3266, file: !97, line: 1061, type: !36)
!3272 = !DILocalVariable(name: "argsize", arg: 3, scope: !3266, file: !97, line: 1061, type: !33)
!3273 = !DILocation(line: 0, scope: !3266)
!3274 = !DILocation(line: 1063, column: 10, scope: !3266)
!3275 = !DILocation(line: 1063, column: 3, scope: !3266)
!3276 = distinct !DISubprogram(name: "quote_mem", scope: !97, file: !97, line: 1067, type: !3277, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !3279)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!36, !36, !33}
!3279 = !{!3280, !3281}
!3280 = !DILocalVariable(name: "arg", arg: 1, scope: !3276, file: !97, line: 1067, type: !36)
!3281 = !DILocalVariable(name: "argsize", arg: 2, scope: !3276, file: !97, line: 1067, type: !33)
!3282 = !DILocation(line: 0, scope: !3276)
!3283 = !DILocation(line: 0, scope: !3266, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 1069, column: 10, scope: !3276)
!3285 = !DILocation(line: 1063, column: 10, scope: !3266, inlinedAt: !3284)
!3286 = !DILocation(line: 1069, column: 3, scope: !3276)
!3287 = distinct !DISubprogram(name: "quote_n", scope: !97, file: !97, line: 1073, type: !3288, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !3290)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!36, !47, !36}
!3290 = !{!3291, !3292}
!3291 = !DILocalVariable(name: "n", arg: 1, scope: !3287, file: !97, line: 1073, type: !47)
!3292 = !DILocalVariable(name: "arg", arg: 2, scope: !3287, file: !97, line: 1073, type: !36)
!3293 = !DILocation(line: 0, scope: !3287)
!3294 = !DILocation(line: 0, scope: !3266, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 1075, column: 10, scope: !3287)
!3296 = !DILocation(line: 1063, column: 10, scope: !3266, inlinedAt: !3295)
!3297 = !DILocation(line: 1075, column: 3, scope: !3287)
!3298 = distinct !DISubprogram(name: "quote", scope: !97, file: !97, line: 1079, type: !3299, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !96, retainedNodes: !3301)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!36, !36}
!3301 = !{!3302}
!3302 = !DILocalVariable(name: "arg", arg: 1, scope: !3298, file: !97, line: 1079, type: !36)
!3303 = !DILocation(line: 0, scope: !3298)
!3304 = !DILocation(line: 0, scope: !3287, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 1081, column: 10, scope: !3298)
!3306 = !DILocation(line: 0, scope: !3266, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 1075, column: 10, scope: !3287, inlinedAt: !3305)
!3308 = !DILocation(line: 1063, column: 10, scope: !3266, inlinedAt: !3307)
!3309 = !DILocation(line: 1081, column: 3, scope: !3298)
!3310 = distinct !DISubprogram(name: "version_etc_arn", scope: !172, file: !172, line: 61, type: !3311, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3348)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{null, !3313, !36, !36, !36, !3347, !33}
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !781, line: 7, baseType: !3315)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !717, line: 49, size: 1728, elements: !3316)
!3316 = !{!3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3315, file: !717, line: 51, baseType: !47, size: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3315, file: !717, line: 54, baseType: !30, size: 64, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3315, file: !717, line: 55, baseType: !30, size: 64, offset: 128)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3315, file: !717, line: 56, baseType: !30, size: 64, offset: 192)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3315, file: !717, line: 57, baseType: !30, size: 64, offset: 256)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3315, file: !717, line: 58, baseType: !30, size: 64, offset: 320)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3315, file: !717, line: 59, baseType: !30, size: 64, offset: 384)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3315, file: !717, line: 60, baseType: !30, size: 64, offset: 448)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3315, file: !717, line: 61, baseType: !30, size: 64, offset: 512)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3315, file: !717, line: 64, baseType: !30, size: 64, offset: 576)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3315, file: !717, line: 65, baseType: !30, size: 64, offset: 640)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3315, file: !717, line: 66, baseType: !30, size: 64, offset: 704)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3315, file: !717, line: 68, baseType: !732, size: 64, offset: 768)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3315, file: !717, line: 70, baseType: !3331, size: 64, offset: 832)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3315, file: !717, line: 72, baseType: !47, size: 32, offset: 896)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3315, file: !717, line: 73, baseType: !47, size: 32, offset: 928)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3315, file: !717, line: 74, baseType: !738, size: 64, offset: 960)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3315, file: !717, line: 77, baseType: !120, size: 16, offset: 1024)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3315, file: !717, line: 78, baseType: !69, size: 8, offset: 1040)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3315, file: !717, line: 79, baseType: !744, size: 8, offset: 1048)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3315, file: !717, line: 81, baseType: !748, size: 64, offset: 1088)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3315, file: !717, line: 89, baseType: !751, size: 64, offset: 1152)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3315, file: !717, line: 91, baseType: !753, size: 64, offset: 1216)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3315, file: !717, line: 92, baseType: !756, size: 64, offset: 1280)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3315, file: !717, line: 93, baseType: !3331, size: 64, offset: 1344)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3315, file: !717, line: 94, baseType: !32, size: 64, offset: 1408)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3315, file: !717, line: 95, baseType: !33, size: 64, offset: 1472)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3315, file: !717, line: 96, baseType: !47, size: 32, offset: 1536)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3315, file: !717, line: 98, baseType: !763, size: 160, offset: 1568)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!3348 = !{!3349, !3350, !3351, !3352, !3353, !3354}
!3349 = !DILocalVariable(name: "stream", arg: 1, scope: !3310, file: !172, line: 61, type: !3313)
!3350 = !DILocalVariable(name: "command_name", arg: 2, scope: !3310, file: !172, line: 62, type: !36)
!3351 = !DILocalVariable(name: "package", arg: 3, scope: !3310, file: !172, line: 62, type: !36)
!3352 = !DILocalVariable(name: "version", arg: 4, scope: !3310, file: !172, line: 63, type: !36)
!3353 = !DILocalVariable(name: "authors", arg: 5, scope: !3310, file: !172, line: 64, type: !3347)
!3354 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3310, file: !172, line: 64, type: !33)
!3355 = !DILocation(line: 0, scope: !3310)
!3356 = !DILocation(line: 66, column: 7, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3310, file: !172, line: 66, column: 7)
!3358 = !DILocation(line: 66, column: 7, scope: !3310)
!3359 = !DILocation(line: 67, column: 5, scope: !3357)
!3360 = !DILocation(line: 69, column: 5, scope: !3357)
!3361 = !DILocation(line: 83, column: 3, scope: !3310)
!3362 = !DILocation(line: 85, column: 3, scope: !3310)
!3363 = !DILocation(line: 88, column: 3, scope: !3310)
!3364 = !DILocation(line: 95, column: 3, scope: !3310)
!3365 = !DILocation(line: 97, column: 3, scope: !3310)
!3366 = !DILocation(line: 105, column: 7, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3310, file: !172, line: 98, column: 5)
!3368 = !DILocation(line: 106, column: 7, scope: !3367)
!3369 = !DILocation(line: 109, column: 7, scope: !3367)
!3370 = !DILocation(line: 110, column: 7, scope: !3367)
!3371 = !DILocation(line: 113, column: 7, scope: !3367)
!3372 = !DILocation(line: 115, column: 7, scope: !3367)
!3373 = !DILocation(line: 120, column: 7, scope: !3367)
!3374 = !DILocation(line: 122, column: 7, scope: !3367)
!3375 = !DILocation(line: 127, column: 7, scope: !3367)
!3376 = !DILocation(line: 129, column: 7, scope: !3367)
!3377 = !DILocation(line: 134, column: 7, scope: !3367)
!3378 = !DILocation(line: 137, column: 7, scope: !3367)
!3379 = !DILocation(line: 142, column: 7, scope: !3367)
!3380 = !DILocation(line: 145, column: 7, scope: !3367)
!3381 = !DILocation(line: 150, column: 7, scope: !3367)
!3382 = !DILocation(line: 154, column: 7, scope: !3367)
!3383 = !DILocation(line: 159, column: 7, scope: !3367)
!3384 = !DILocation(line: 163, column: 7, scope: !3367)
!3385 = !DILocation(line: 170, column: 7, scope: !3367)
!3386 = !DILocation(line: 174, column: 7, scope: !3367)
!3387 = !DILocation(line: 176, column: 1, scope: !3310)
!3388 = distinct !DISubprogram(name: "version_etc_ar", scope: !172, file: !172, line: 183, type: !3389, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3391)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{null, !3313, !36, !36, !36, !3347}
!3391 = !{!3392, !3393, !3394, !3395, !3396, !3397}
!3392 = !DILocalVariable(name: "stream", arg: 1, scope: !3388, file: !172, line: 183, type: !3313)
!3393 = !DILocalVariable(name: "command_name", arg: 2, scope: !3388, file: !172, line: 184, type: !36)
!3394 = !DILocalVariable(name: "package", arg: 3, scope: !3388, file: !172, line: 184, type: !36)
!3395 = !DILocalVariable(name: "version", arg: 4, scope: !3388, file: !172, line: 185, type: !36)
!3396 = !DILocalVariable(name: "authors", arg: 5, scope: !3388, file: !172, line: 185, type: !3347)
!3397 = !DILocalVariable(name: "n_authors", scope: !3388, file: !172, line: 187, type: !33)
!3398 = !DILocation(line: 0, scope: !3388)
!3399 = !DILocation(line: 189, column: 8, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3388, file: !172, line: 189, column: 3)
!3401 = !DILocation(line: 0, scope: !3400)
!3402 = !DILocation(line: 189, column: 23, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3400, file: !172, line: 189, column: 3)
!3404 = !DILocation(line: 189, column: 3, scope: !3400)
!3405 = !DILocation(line: 189, column: 52, scope: !3403)
!3406 = distinct !{!3406, !3404, !3407, !687}
!3407 = !DILocation(line: 190, column: 5, scope: !3400)
!3408 = !DILocation(line: 191, column: 3, scope: !3388)
!3409 = !DILocation(line: 192, column: 1, scope: !3388)
!3410 = distinct !DISubprogram(name: "version_etc_va", scope: !172, file: !172, line: 199, type: !3411, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3420)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{null, !3313, !36, !36, !36, !3413}
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3415)
!3415 = !{!3416, !3417, !3418, !3419}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3414, file: !172, line: 192, baseType: !7, size: 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3414, file: !172, line: 192, baseType: !7, size: 32, offset: 32)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3414, file: !172, line: 192, baseType: !32, size: 64, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3414, file: !172, line: 192, baseType: !32, size: 64, offset: 128)
!3420 = !{!3421, !3422, !3423, !3424, !3425, !3426, !3427}
!3421 = !DILocalVariable(name: "stream", arg: 1, scope: !3410, file: !172, line: 199, type: !3313)
!3422 = !DILocalVariable(name: "command_name", arg: 2, scope: !3410, file: !172, line: 200, type: !36)
!3423 = !DILocalVariable(name: "package", arg: 3, scope: !3410, file: !172, line: 200, type: !36)
!3424 = !DILocalVariable(name: "version", arg: 4, scope: !3410, file: !172, line: 201, type: !36)
!3425 = !DILocalVariable(name: "authors", arg: 5, scope: !3410, file: !172, line: 201, type: !3413)
!3426 = !DILocalVariable(name: "n_authors", scope: !3410, file: !172, line: 203, type: !33)
!3427 = !DILocalVariable(name: "authtab", scope: !3410, file: !172, line: 204, type: !3428)
!3428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 640, elements: !126)
!3429 = !DILocation(line: 0, scope: !3410)
!3430 = !DILocation(line: 204, column: 3, scope: !3410)
!3431 = !DILocation(line: 204, column: 15, scope: !3410)
!3432 = !DILocation(line: 208, column: 35, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3434, file: !172, line: 206, column: 3)
!3434 = distinct !DILexicalBlock(scope: !3410, file: !172, line: 206, column: 3)
!3435 = !DILocation(line: 208, column: 14, scope: !3433)
!3436 = !DILocation(line: 208, column: 33, scope: !3433)
!3437 = !DILocation(line: 208, column: 67, scope: !3433)
!3438 = !DILocation(line: 206, column: 3, scope: !3434)
!3439 = !DILocation(line: 0, scope: !3434)
!3440 = !DILocation(line: 211, column: 3, scope: !3410)
!3441 = !DILocation(line: 213, column: 1, scope: !3410)
!3442 = distinct !DISubprogram(name: "version_etc", scope: !172, file: !172, line: 230, type: !3443, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3445)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{null, !3313, !36, !36, !36, null}
!3445 = !{!3446, !3447, !3448, !3449, !3450}
!3446 = !DILocalVariable(name: "stream", arg: 1, scope: !3442, file: !172, line: 230, type: !3313)
!3447 = !DILocalVariable(name: "command_name", arg: 2, scope: !3442, file: !172, line: 231, type: !36)
!3448 = !DILocalVariable(name: "package", arg: 3, scope: !3442, file: !172, line: 231, type: !36)
!3449 = !DILocalVariable(name: "version", arg: 4, scope: !3442, file: !172, line: 232, type: !36)
!3450 = !DILocalVariable(name: "authors", scope: !3442, file: !172, line: 234, type: !3451)
!3451 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !712, line: 52, baseType: !3452)
!3452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3453, line: 32, baseType: !3454)
!3453 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !172, baseType: !3455)
!3455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3414, size: 192, elements: !745)
!3456 = !DILocation(line: 0, scope: !3442)
!3457 = !DILocation(line: 234, column: 3, scope: !3442)
!3458 = !DILocation(line: 234, column: 11, scope: !3442)
!3459 = !DILocation(line: 236, column: 3, scope: !3442)
!3460 = !DILocation(line: 237, column: 3, scope: !3442)
!3461 = !DILocation(line: 238, column: 3, scope: !3442)
!3462 = !DILocation(line: 239, column: 1, scope: !3442)
!3463 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !172, file: !172, line: 242, type: !645, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !57)
!3464 = !DILocation(line: 244, column: 3, scope: !3463)
!3465 = !DILocation(line: 249, column: 3, scope: !3463)
!3466 = !DILocation(line: 255, column: 3, scope: !3463)
!3467 = !DILocation(line: 260, column: 3, scope: !3463)
!3468 = !DILocation(line: 262, column: 1, scope: !3463)
!3469 = distinct !DISubprogram(name: "xnmalloc", scope: !182, file: !182, line: 99, type: !3470, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !3472)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!32, !33, !33}
!3472 = !{!3473, !3474}
!3473 = !DILocalVariable(name: "n", arg: 1, scope: !3469, file: !182, line: 99, type: !33)
!3474 = !DILocalVariable(name: "s", arg: 2, scope: !3469, file: !182, line: 99, type: !33)
!3475 = !DILocation(line: 0, scope: !3469)
!3476 = !DILocation(line: 101, column: 7, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3469, file: !182, line: 101, column: 7)
!3478 = !DILocation(line: 101, column: 7, scope: !3469)
!3479 = !DILocation(line: 102, column: 5, scope: !3477)
!3480 = !DILocation(line: 103, column: 21, scope: !3469)
!3481 = !DILocalVariable(name: "n", arg: 1, scope: !3482, file: !179, line: 39, type: !33)
!3482 = distinct !DISubprogram(name: "xmalloc", scope: !179, file: !179, line: 39, type: !3483, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !3485)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!32, !33}
!3485 = !{!3481, !3486}
!3486 = !DILocalVariable(name: "p", scope: !3482, file: !179, line: 41, type: !32)
!3487 = !DILocation(line: 0, scope: !3482, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 103, column: 10, scope: !3469)
!3489 = !DILocation(line: 41, column: 13, scope: !3482, inlinedAt: !3488)
!3490 = !DILocation(line: 42, column: 8, scope: !3491, inlinedAt: !3488)
!3491 = distinct !DILexicalBlock(scope: !3482, file: !179, line: 42, column: 7)
!3492 = !DILocation(line: 42, column: 10, scope: !3491, inlinedAt: !3488)
!3493 = !DILocation(line: 43, column: 5, scope: !3491, inlinedAt: !3488)
!3494 = !DILocation(line: 103, column: 3, scope: !3469)
!3495 = !DILocation(line: 0, scope: !3482)
!3496 = !DILocation(line: 41, column: 13, scope: !3482)
!3497 = !DILocation(line: 42, column: 8, scope: !3491)
!3498 = !DILocation(line: 42, column: 10, scope: !3491)
!3499 = !DILocation(line: 43, column: 5, scope: !3491)
!3500 = !DILocation(line: 44, column: 3, scope: !3482)
!3501 = distinct !DISubprogram(name: "xnrealloc", scope: !182, file: !182, line: 112, type: !3502, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !3504)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!32, !32, !33, !33}
!3504 = !{!3505, !3506, !3507}
!3505 = !DILocalVariable(name: "p", arg: 1, scope: !3501, file: !182, line: 112, type: !32)
!3506 = !DILocalVariable(name: "n", arg: 2, scope: !3501, file: !182, line: 112, type: !33)
!3507 = !DILocalVariable(name: "s", arg: 3, scope: !3501, file: !182, line: 112, type: !33)
!3508 = !DILocation(line: 0, scope: !3501)
!3509 = !DILocation(line: 114, column: 7, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3501, file: !182, line: 114, column: 7)
!3511 = !DILocation(line: 114, column: 7, scope: !3501)
!3512 = !DILocation(line: 115, column: 5, scope: !3510)
!3513 = !DILocation(line: 116, column: 25, scope: !3501)
!3514 = !DILocalVariable(name: "p", arg: 1, scope: !3515, file: !179, line: 51, type: !32)
!3515 = distinct !DISubprogram(name: "xrealloc", scope: !179, file: !179, line: 51, type: !3516, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !3518)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!32, !32, !33}
!3518 = !{!3514, !3519}
!3519 = !DILocalVariable(name: "n", arg: 2, scope: !3515, file: !179, line: 51, type: !33)
!3520 = !DILocation(line: 0, scope: !3515, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 116, column: 10, scope: !3501)
!3522 = !DILocation(line: 53, column: 8, scope: !3523, inlinedAt: !3521)
!3523 = distinct !DILexicalBlock(scope: !3515, file: !179, line: 53, column: 7)
!3524 = !DILocation(line: 53, column: 10, scope: !3523, inlinedAt: !3521)
!3525 = !DILocation(line: 57, column: 7, scope: !3526, inlinedAt: !3521)
!3526 = distinct !DILexicalBlock(scope: !3523, file: !179, line: 54, column: 5)
!3527 = !DILocation(line: 58, column: 7, scope: !3526, inlinedAt: !3521)
!3528 = !DILocation(line: 61, column: 7, scope: !3515, inlinedAt: !3521)
!3529 = !DILocation(line: 62, column: 8, scope: !3530, inlinedAt: !3521)
!3530 = distinct !DILexicalBlock(scope: !3515, file: !179, line: 62, column: 7)
!3531 = !DILocation(line: 62, column: 10, scope: !3530, inlinedAt: !3521)
!3532 = !DILocation(line: 63, column: 5, scope: !3530, inlinedAt: !3521)
!3533 = !DILocation(line: 116, column: 3, scope: !3501)
!3534 = !DILocation(line: 0, scope: !3515)
!3535 = !DILocation(line: 53, column: 8, scope: !3523)
!3536 = !DILocation(line: 53, column: 10, scope: !3523)
!3537 = !DILocation(line: 57, column: 7, scope: !3526)
!3538 = !DILocation(line: 58, column: 7, scope: !3526)
!3539 = !DILocation(line: 61, column: 7, scope: !3515)
!3540 = !DILocation(line: 62, column: 8, scope: !3530)
!3541 = !DILocation(line: 62, column: 10, scope: !3530)
!3542 = !DILocation(line: 63, column: 5, scope: !3530)
!3543 = !DILocation(line: 65, column: 1, scope: !3515)
!3544 = !DILocation(line: 0, scope: !183)
!3545 = !DILocation(line: 176, column: 14, scope: !183)
!3546 = !DILocation(line: 178, column: 9, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !183, file: !182, line: 178, column: 7)
!3548 = !DILocation(line: 178, column: 7, scope: !183)
!3549 = !DILocation(line: 180, column: 13, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3551, file: !182, line: 180, column: 11)
!3551 = distinct !DILexicalBlock(scope: !3547, file: !182, line: 179, column: 5)
!3552 = !DILocation(line: 180, column: 11, scope: !3551)
!3553 = !DILocation(line: 188, column: 30, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3550, file: !182, line: 181, column: 9)
!3555 = !DILocation(line: 189, column: 16, scope: !3554)
!3556 = !DILocation(line: 189, column: 13, scope: !3554)
!3557 = !DILocation(line: 190, column: 9, scope: !3554)
!3558 = !DILocation(line: 191, column: 11, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3551, file: !182, line: 191, column: 11)
!3560 = !DILocation(line: 191, column: 11, scope: !3551)
!3561 = !DILocation(line: 206, column: 7, scope: !183)
!3562 = !DILocation(line: 207, column: 25, scope: !183)
!3563 = !DILocation(line: 0, scope: !3515, inlinedAt: !3564)
!3564 = distinct !DILocation(line: 207, column: 10, scope: !183)
!3565 = !DILocation(line: 53, column: 10, scope: !3523, inlinedAt: !3564)
!3566 = !DILocation(line: 192, column: 9, scope: !3559)
!3567 = !DILocation(line: 200, column: 69, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !182, line: 200, column: 11)
!3569 = distinct !DILexicalBlock(scope: !3547, file: !182, line: 195, column: 5)
!3570 = !DILocation(line: 201, column: 11, scope: !3568)
!3571 = !DILocation(line: 200, column: 11, scope: !3569)
!3572 = !DILocation(line: 202, column: 9, scope: !3568)
!3573 = !DILocation(line: 203, column: 14, scope: !3569)
!3574 = !DILocation(line: 203, column: 18, scope: !3569)
!3575 = !DILocation(line: 203, column: 9, scope: !3569)
!3576 = !DILocation(line: 53, column: 8, scope: !3523, inlinedAt: !3564)
!3577 = !DILocation(line: 57, column: 7, scope: !3526, inlinedAt: !3564)
!3578 = !DILocation(line: 58, column: 7, scope: !3526, inlinedAt: !3564)
!3579 = !DILocation(line: 61, column: 7, scope: !3515, inlinedAt: !3564)
!3580 = !DILocation(line: 62, column: 8, scope: !3530, inlinedAt: !3564)
!3581 = !DILocation(line: 62, column: 10, scope: !3530, inlinedAt: !3564)
!3582 = !DILocation(line: 63, column: 5, scope: !3530, inlinedAt: !3564)
!3583 = !DILocation(line: 207, column: 3, scope: !183)
!3584 = distinct !DISubprogram(name: "xcharalloc", scope: !182, file: !182, line: 216, type: !2723, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !3585)
!3585 = !{!3586}
!3586 = !DILocalVariable(name: "n", arg: 1, scope: !3584, file: !182, line: 216, type: !33)
!3587 = !DILocation(line: 0, scope: !3584)
!3588 = !DILocation(line: 0, scope: !3482, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 218, column: 10, scope: !3584)
!3590 = !DILocation(line: 41, column: 13, scope: !3482, inlinedAt: !3589)
!3591 = !DILocation(line: 42, column: 8, scope: !3491, inlinedAt: !3589)
!3592 = !DILocation(line: 42, column: 10, scope: !3491, inlinedAt: !3589)
!3593 = !DILocation(line: 43, column: 5, scope: !3491, inlinedAt: !3589)
!3594 = !DILocation(line: 218, column: 3, scope: !3584)
!3595 = distinct !DISubprogram(name: "x2realloc", scope: !179, file: !179, line: 74, type: !3596, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !3598)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!32, !32, !186}
!3598 = !{!3599, !3600}
!3599 = !DILocalVariable(name: "p", arg: 1, scope: !3595, file: !179, line: 74, type: !32)
!3600 = !DILocalVariable(name: "pn", arg: 2, scope: !3595, file: !179, line: 74, type: !186)
!3601 = !DILocation(line: 0, scope: !3595)
!3602 = !DILocation(line: 0, scope: !183, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 76, column: 10, scope: !3595)
!3604 = !DILocation(line: 176, column: 14, scope: !183, inlinedAt: !3603)
!3605 = !DILocation(line: 178, column: 9, scope: !3547, inlinedAt: !3603)
!3606 = !DILocation(line: 178, column: 7, scope: !183, inlinedAt: !3603)
!3607 = !DILocation(line: 180, column: 13, scope: !3550, inlinedAt: !3603)
!3608 = !DILocation(line: 180, column: 11, scope: !3551, inlinedAt: !3603)
!3609 = !DILocation(line: 191, column: 11, scope: !3559, inlinedAt: !3603)
!3610 = !DILocation(line: 191, column: 11, scope: !3551, inlinedAt: !3603)
!3611 = !DILocation(line: 192, column: 9, scope: !3559, inlinedAt: !3603)
!3612 = !DILocation(line: 201, column: 11, scope: !3568, inlinedAt: !3603)
!3613 = !DILocation(line: 200, column: 11, scope: !3569, inlinedAt: !3603)
!3614 = !DILocation(line: 202, column: 9, scope: !3568, inlinedAt: !3603)
!3615 = !DILocation(line: 203, column: 14, scope: !3569, inlinedAt: !3603)
!3616 = !DILocation(line: 203, column: 18, scope: !3569, inlinedAt: !3603)
!3617 = !DILocation(line: 203, column: 9, scope: !3569, inlinedAt: !3603)
!3618 = !DILocation(line: 0, scope: !3515, inlinedAt: !3619)
!3619 = distinct !DILocation(line: 207, column: 10, scope: !183, inlinedAt: !3603)
!3620 = !DILocation(line: 53, column: 10, scope: !3523, inlinedAt: !3619)
!3621 = !DILocation(line: 206, column: 7, scope: !183, inlinedAt: !3603)
!3622 = !DILocation(line: 61, column: 7, scope: !3515, inlinedAt: !3619)
!3623 = !DILocation(line: 62, column: 8, scope: !3530, inlinedAt: !3619)
!3624 = !DILocation(line: 62, column: 10, scope: !3530, inlinedAt: !3619)
!3625 = !DILocation(line: 63, column: 5, scope: !3530, inlinedAt: !3619)
!3626 = !DILocation(line: 76, column: 3, scope: !3595)
!3627 = distinct !DISubprogram(name: "xzalloc", scope: !179, file: !179, line: 84, type: !3483, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !3628)
!3628 = !{!3629}
!3629 = !DILocalVariable(name: "n", arg: 1, scope: !3627, file: !179, line: 84, type: !33)
!3630 = !DILocation(line: 0, scope: !3627)
!3631 = !DILocalVariable(name: "n", arg: 1, scope: !3632, file: !179, line: 93, type: !33)
!3632 = distinct !DISubprogram(name: "xcalloc", scope: !179, file: !179, line: 93, type: !3470, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !3633)
!3633 = !{!3631, !3634, !3635}
!3634 = !DILocalVariable(name: "s", arg: 2, scope: !3632, file: !179, line: 93, type: !33)
!3635 = !DILocalVariable(name: "p", scope: !3632, file: !179, line: 95, type: !32)
!3636 = !DILocation(line: 0, scope: !3632, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 86, column: 10, scope: !3627)
!3638 = !DILocation(line: 100, column: 7, scope: !3639, inlinedAt: !3637)
!3639 = distinct !DILexicalBlock(scope: !3632, file: !179, line: 100, column: 7)
!3640 = !DILocation(line: 101, column: 7, scope: !3639, inlinedAt: !3637)
!3641 = !DILocation(line: 101, column: 18, scope: !3639, inlinedAt: !3637)
!3642 = !DILocation(line: 101, column: 16, scope: !3639, inlinedAt: !3637)
!3643 = !DILocation(line: 100, column: 7, scope: !3632, inlinedAt: !3637)
!3644 = !DILocation(line: 102, column: 5, scope: !3639, inlinedAt: !3637)
!3645 = !DILocation(line: 86, column: 3, scope: !3627)
!3646 = !DILocation(line: 0, scope: !3632)
!3647 = !DILocation(line: 100, column: 7, scope: !3639)
!3648 = !DILocation(line: 101, column: 7, scope: !3639)
!3649 = !DILocation(line: 101, column: 18, scope: !3639)
!3650 = !DILocation(line: 101, column: 16, scope: !3639)
!3651 = !DILocation(line: 100, column: 7, scope: !3632)
!3652 = !DILocation(line: 102, column: 5, scope: !3639)
!3653 = !DILocation(line: 103, column: 3, scope: !3632)
!3654 = distinct !DISubprogram(name: "xmemdup", scope: !179, file: !179, line: 111, type: !3655, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !3657)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!32, !920, !33}
!3657 = !{!3658, !3659}
!3658 = !DILocalVariable(name: "p", arg: 1, scope: !3654, file: !179, line: 111, type: !920)
!3659 = !DILocalVariable(name: "s", arg: 2, scope: !3654, file: !179, line: 111, type: !33)
!3660 = !DILocation(line: 0, scope: !3654)
!3661 = !DILocation(line: 0, scope: !3482, inlinedAt: !3662)
!3662 = distinct !DILocation(line: 113, column: 18, scope: !3654)
!3663 = !DILocation(line: 41, column: 13, scope: !3482, inlinedAt: !3662)
!3664 = !DILocation(line: 42, column: 8, scope: !3491, inlinedAt: !3662)
!3665 = !DILocation(line: 42, column: 10, scope: !3491, inlinedAt: !3662)
!3666 = !DILocation(line: 43, column: 5, scope: !3491, inlinedAt: !3662)
!3667 = !DILocalVariable(name: "__dest", arg: 1, scope: !3668, file: !917, line: 26, type: !3671)
!3668 = distinct !DISubprogram(name: "memcpy", scope: !917, file: !917, line: 26, type: !3669, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !3673)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!32, !3671, !3672, !33}
!3671 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!3672 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !920)
!3673 = !{!3667, !3674, !3675}
!3674 = !DILocalVariable(name: "__src", arg: 2, scope: !3668, file: !917, line: 26, type: !3672)
!3675 = !DILocalVariable(name: "__len", arg: 3, scope: !3668, file: !917, line: 26, type: !33)
!3676 = !DILocation(line: 0, scope: !3668, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 113, column: 10, scope: !3654)
!3678 = !DILocation(line: 29, column: 10, scope: !3668, inlinedAt: !3677)
!3679 = !DILocation(line: 113, column: 3, scope: !3654)
!3680 = distinct !DISubprogram(name: "xstrdup", scope: !179, file: !179, line: 119, type: !1146, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !3681)
!3681 = !{!3682}
!3682 = !DILocalVariable(name: "string", arg: 1, scope: !3680, file: !179, line: 119, type: !36)
!3683 = !DILocation(line: 0, scope: !3680)
!3684 = !DILocation(line: 121, column: 27, scope: !3680)
!3685 = !DILocation(line: 121, column: 43, scope: !3680)
!3686 = !DILocation(line: 0, scope: !3654, inlinedAt: !3687)
!3687 = distinct !DILocation(line: 121, column: 10, scope: !3680)
!3688 = !DILocation(line: 0, scope: !3482, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 113, column: 18, scope: !3654, inlinedAt: !3687)
!3690 = !DILocation(line: 41, column: 13, scope: !3482, inlinedAt: !3689)
!3691 = !DILocation(line: 42, column: 8, scope: !3491, inlinedAt: !3689)
!3692 = !DILocation(line: 42, column: 10, scope: !3491, inlinedAt: !3689)
!3693 = !DILocation(line: 43, column: 5, scope: !3491, inlinedAt: !3689)
!3694 = !DILocation(line: 0, scope: !3668, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 113, column: 10, scope: !3654, inlinedAt: !3687)
!3696 = !DILocation(line: 29, column: 10, scope: !3668, inlinedAt: !3695)
!3697 = !DILocation(line: 121, column: 3, scope: !3680)
!3698 = distinct !DISubprogram(name: "xalloc_die", scope: !196, file: !196, line: 32, type: !645, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !57)
!3699 = !DILocation(line: 34, column: 10, scope: !3698)
!3700 = !DILocation(line: 34, column: 33, scope: !3698)
!3701 = !DILocation(line: 34, column: 3, scope: !3698)
!3702 = !DILocation(line: 40, column: 3, scope: !3698)
!3703 = distinct !DISubprogram(name: "xnumtoumax", scope: !3704, file: !3704, line: 36, type: !3705, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !3707)
!3704 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!786, !36, !47, !786, !786, !36, !36, !47}
!3707 = !{!3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3717}
!3708 = !DILocalVariable(name: "n_str", arg: 1, scope: !3703, file: !3704, line: 36, type: !36)
!3709 = !DILocalVariable(name: "base", arg: 2, scope: !3703, file: !3704, line: 36, type: !47)
!3710 = !DILocalVariable(name: "min", arg: 3, scope: !3703, file: !3704, line: 36, type: !786)
!3711 = !DILocalVariable(name: "max", arg: 4, scope: !3703, file: !3704, line: 36, type: !786)
!3712 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3703, file: !3704, line: 37, type: !36)
!3713 = !DILocalVariable(name: "err", arg: 6, scope: !3703, file: !3704, line: 37, type: !36)
!3714 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3703, file: !3704, line: 37, type: !47)
!3715 = !DILocalVariable(name: "s_err", scope: !3703, file: !3704, line: 39, type: !3716)
!3716 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !201, line: 38, baseType: !200)
!3717 = !DILocalVariable(name: "tnum", scope: !3703, file: !3704, line: 41, type: !786)
!3718 = !DILocation(line: 0, scope: !3703)
!3719 = !DILocation(line: 41, column: 3, scope: !3703)
!3720 = !DILocation(line: 42, column: 11, scope: !3703)
!3721 = !DILocation(line: 44, column: 7, scope: !3703)
!3722 = !DILocation(line: 69, column: 50, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3724, file: !3704, line: 67, column: 5)
!3724 = distinct !DILexicalBlock(scope: !3703, file: !3704, line: 66, column: 7)
!3725 = !DILocation(line: 46, column: 11, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3727, file: !3704, line: 46, column: 11)
!3727 = distinct !DILexicalBlock(scope: !3728, file: !3704, line: 45, column: 5)
!3728 = distinct !DILexicalBlock(scope: !3703, file: !3704, line: 44, column: 7)
!3729 = !DILocation(line: 46, column: 16, scope: !3726)
!3730 = !DILocation(line: 46, column: 22, scope: !3726)
!3731 = !DILocation(line: 51, column: 20, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3733, file: !3704, line: 51, column: 15)
!3733 = distinct !DILexicalBlock(scope: !3726, file: !3704, line: 47, column: 9)
!3734 = !DILocation(line: 0, scope: !3732)
!3735 = !DILocation(line: 51, column: 15, scope: !3733)
!3736 = !DILocation(line: 52, column: 19, scope: !3732)
!3737 = !DILocation(line: 66, column: 7, scope: !3703)
!3738 = !DILocation(line: 58, column: 19, scope: !3732)
!3739 = !DILocation(line: 62, column: 5, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3728, file: !3704, line: 61, column: 12)
!3741 = !DILocation(line: 62, column: 11, scope: !3740)
!3742 = !DILocation(line: 64, column: 5, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3740, file: !3704, line: 63, column: 12)
!3744 = !DILocation(line: 64, column: 11, scope: !3743)
!3745 = !DILocation(line: 69, column: 14, scope: !3723)
!3746 = !DILocation(line: 69, column: 56, scope: !3723)
!3747 = !DILocation(line: 70, column: 29, scope: !3723)
!3748 = !DILocation(line: 69, column: 7, scope: !3723)
!3749 = !DILocation(line: 73, column: 10, scope: !3703)
!3750 = !DILocation(line: 71, column: 5, scope: !3723)
!3751 = !DILocation(line: 74, column: 1, scope: !3703)
!3752 = !DILocation(line: 73, column: 3, scope: !3703)
!3753 = distinct !DISubprogram(name: "xdectoumax", scope: !3704, file: !3704, line: 82, type: !3754, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !3756)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!786, !36, !786, !786, !36, !36, !47}
!3756 = !{!3757, !3758, !3759, !3760, !3761, !3762}
!3757 = !DILocalVariable(name: "n_str", arg: 1, scope: !3753, file: !3704, line: 82, type: !36)
!3758 = !DILocalVariable(name: "min", arg: 2, scope: !3753, file: !3704, line: 82, type: !786)
!3759 = !DILocalVariable(name: "max", arg: 3, scope: !3753, file: !3704, line: 82, type: !786)
!3760 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3753, file: !3704, line: 83, type: !36)
!3761 = !DILocalVariable(name: "err", arg: 5, scope: !3753, file: !3704, line: 83, type: !36)
!3762 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3753, file: !3704, line: 83, type: !47)
!3763 = !DILocation(line: 0, scope: !3753)
!3764 = !DILocation(line: 85, column: 10, scope: !3753)
!3765 = !DILocation(line: 85, column: 3, scope: !3753)
!3766 = distinct !DISubprogram(name: "xstrtoumax", scope: !3767, file: !3767, line: 76, type: !3768, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !208, retainedNodes: !3771)
!3767 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!3716, !36, !773, !47, !3770, !36}
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!3771 = !{!3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3784, !3785, !3788, !3789}
!3772 = !DILocalVariable(name: "s", arg: 1, scope: !3766, file: !3767, line: 76, type: !36)
!3773 = !DILocalVariable(name: "ptr", arg: 2, scope: !3766, file: !3767, line: 76, type: !773)
!3774 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3766, file: !3767, line: 76, type: !47)
!3775 = !DILocalVariable(name: "val", arg: 4, scope: !3766, file: !3767, line: 77, type: !3770)
!3776 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3766, file: !3767, line: 77, type: !36)
!3777 = !DILocalVariable(name: "t_ptr", scope: !3766, file: !3767, line: 79, type: !30)
!3778 = !DILocalVariable(name: "p", scope: !3766, file: !3767, line: 80, type: !773)
!3779 = !DILocalVariable(name: "tmp", scope: !3766, file: !3767, line: 81, type: !786)
!3780 = !DILocalVariable(name: "err", scope: !3766, file: !3767, line: 82, type: !3716)
!3781 = !DILocalVariable(name: "q", scope: !3782, file: !3767, line: 92, type: !36)
!3782 = distinct !DILexicalBlock(scope: !3783, file: !3767, line: 91, column: 5)
!3783 = distinct !DILexicalBlock(scope: !3766, file: !3767, line: 90, column: 7)
!3784 = !DILocalVariable(name: "ch", scope: !3782, file: !3767, line: 93, type: !38)
!3785 = !DILocalVariable(name: "base", scope: !3786, file: !3767, line: 129, type: !47)
!3786 = distinct !DILexicalBlock(scope: !3787, file: !3767, line: 128, column: 5)
!3787 = distinct !DILexicalBlock(scope: !3766, file: !3767, line: 127, column: 7)
!3788 = !DILocalVariable(name: "suffixes", scope: !3786, file: !3767, line: 130, type: !47)
!3789 = !DILocalVariable(name: "overflow", scope: !3786, file: !3767, line: 131, type: !3716)
!3790 = !DILocation(line: 0, scope: !3766)
!3791 = !DILocation(line: 79, column: 3, scope: !3766)
!3792 = !DILocation(line: 84, column: 3, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3794, file: !3767, line: 84, column: 3)
!3794 = distinct !DILexicalBlock(scope: !3766, file: !3767, line: 84, column: 3)
!3795 = !DILocation(line: 86, column: 8, scope: !3766)
!3796 = !DILocation(line: 88, column: 3, scope: !3766)
!3797 = !DILocation(line: 88, column: 9, scope: !3766)
!3798 = !DILocation(line: 0, scope: !3782)
!3799 = !DILocation(line: 94, column: 7, scope: !3782)
!3800 = !DILocation(line: 94, column: 14, scope: !3782)
!3801 = !DILocation(line: 95, column: 15, scope: !3782)
!3802 = distinct !{!3802, !3799, !3803, !687}
!3803 = !DILocation(line: 95, column: 17, scope: !3782)
!3804 = !DILocation(line: 96, column: 14, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3782, file: !3767, line: 96, column: 11)
!3806 = !DILocation(line: 100, column: 9, scope: !3766)
!3807 = !DILocation(line: 102, column: 7, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3766, file: !3767, line: 102, column: 7)
!3809 = !DILocation(line: 102, column: 10, scope: !3808)
!3810 = !DILocation(line: 102, column: 7, scope: !3766)
!3811 = !DILocation(line: 106, column: 11, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3813, file: !3767, line: 106, column: 11)
!3813 = distinct !DILexicalBlock(scope: !3808, file: !3767, line: 103, column: 5)
!3814 = !DILocation(line: 106, column: 26, scope: !3812)
!3815 = !DILocation(line: 106, column: 29, scope: !3812)
!3816 = !DILocation(line: 106, column: 33, scope: !3812)
!3817 = !DILocation(line: 106, column: 36, scope: !3812)
!3818 = !DILocation(line: 106, column: 11, scope: !3813)
!3819 = !DILocation(line: 111, column: 12, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3808, file: !3767, line: 111, column: 12)
!3821 = !DILocation(line: 111, column: 12, scope: !3808)
!3822 = !DILocation(line: 116, column: 5, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3820, file: !3767, line: 112, column: 5)
!3824 = !DILocation(line: 121, column: 8, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3766, file: !3767, line: 121, column: 7)
!3826 = !DILocation(line: 121, column: 7, scope: !3766)
!3827 = !DILocation(line: 123, column: 12, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3825, file: !3767, line: 122, column: 5)
!3829 = !DILocation(line: 124, column: 7, scope: !3828)
!3830 = !DILocation(line: 127, column: 7, scope: !3787)
!3831 = !DILocation(line: 127, column: 11, scope: !3787)
!3832 = !DILocation(line: 127, column: 7, scope: !3766)
!3833 = !DILocation(line: 0, scope: !3786)
!3834 = !DILocation(line: 133, column: 12, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3786, file: !3767, line: 133, column: 11)
!3836 = !DILocation(line: 133, column: 11, scope: !3786)
!3837 = !DILocation(line: 135, column: 16, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3835, file: !3767, line: 134, column: 9)
!3839 = !DILocation(line: 136, column: 22, scope: !3838)
!3840 = !DILocation(line: 136, column: 11, scope: !3838)
!3841 = !DILocation(line: 139, column: 7, scope: !3786)
!3842 = !DILocation(line: 151, column: 15, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !3767, line: 151, column: 15)
!3844 = distinct !DILexicalBlock(scope: !3786, file: !3767, line: 140, column: 9)
!3845 = !DILocation(line: 151, column: 15, scope: !3844)
!3846 = !DILocation(line: 152, column: 21, scope: !3843)
!3847 = !DILocation(line: 152, column: 13, scope: !3843)
!3848 = !DILocation(line: 155, column: 21, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3850, file: !3767, line: 155, column: 21)
!3850 = distinct !DILexicalBlock(scope: !3843, file: !3767, line: 153, column: 15)
!3851 = !DILocation(line: 155, column: 29, scope: !3849)
!3852 = !DILocation(line: 155, column: 21, scope: !3850)
!3853 = !DILocation(line: 163, column: 17, scope: !3850)
!3854 = !DILocation(line: 167, column: 7, scope: !3786)
!3855 = !DILocalVariable(name: "err", scope: !3856, file: !3767, line: 67, type: !3716)
!3856 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3767, file: !3767, line: 65, type: !3857, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !208, retainedNodes: !3859)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!3716, !3770, !47, !47}
!3859 = !{!3860, !3861, !3862, !3855}
!3860 = !DILocalVariable(name: "x", arg: 1, scope: !3856, file: !3767, line: 65, type: !3770)
!3861 = !DILocalVariable(name: "base", arg: 2, scope: !3856, file: !3767, line: 65, type: !47)
!3862 = !DILocalVariable(name: "power", arg: 3, scope: !3856, file: !3767, line: 65, type: !47)
!3863 = !DILocation(line: 0, scope: !3856, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 221, column: 22, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3786, file: !3767, line: 168, column: 9)
!3866 = !DILocalVariable(name: "x", arg: 1, scope: !3867, file: !3767, line: 48, type: !3770)
!3867 = distinct !DISubprogram(name: "bkm_scale", scope: !3767, file: !3767, line: 48, type: !3868, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !208, retainedNodes: !3870)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!3716, !3770, !47}
!3870 = !{!3866, !3871}
!3871 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3867, file: !3767, line: 48, type: !47)
!3872 = !DILocation(line: 0, scope: !3867, inlinedAt: !3873)
!3873 = distinct !DILocation(line: 69, column: 12, scope: !3856, inlinedAt: !3864)
!3874 = !DILocation(line: 55, column: 39, scope: !3875, inlinedAt: !3873)
!3875 = distinct !DILexicalBlock(scope: !3867, file: !3767, line: 55, column: 7)
!3876 = !DILocation(line: 55, column: 7, scope: !3867, inlinedAt: !3873)
!3877 = !DILocation(line: 69, column: 9, scope: !3856, inlinedAt: !3864)
!3878 = !DILocation(line: 229, column: 11, scope: !3786)
!3879 = !DILocation(line: 0, scope: !3856, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 217, column: 22, scope: !3865)
!3881 = !DILocation(line: 0, scope: !3867, inlinedAt: !3882)
!3882 = distinct !DILocation(line: 69, column: 12, scope: !3856, inlinedAt: !3880)
!3883 = !DILocation(line: 55, column: 39, scope: !3875, inlinedAt: !3882)
!3884 = !DILocation(line: 55, column: 7, scope: !3867, inlinedAt: !3882)
!3885 = !DILocation(line: 69, column: 9, scope: !3856, inlinedAt: !3880)
!3886 = !DILocation(line: 0, scope: !3856, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 204, column: 22, scope: !3865)
!3888 = !DILocation(line: 0, scope: !3867, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 69, column: 12, scope: !3856, inlinedAt: !3887)
!3890 = !DILocation(line: 55, column: 39, scope: !3875, inlinedAt: !3889)
!3891 = !DILocation(line: 55, column: 7, scope: !3867, inlinedAt: !3889)
!3892 = !DILocation(line: 69, column: 9, scope: !3856, inlinedAt: !3887)
!3893 = !DILocation(line: 0, scope: !3856, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 185, column: 22, scope: !3865)
!3895 = !DILocation(line: 0, scope: !3867, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 69, column: 12, scope: !3856, inlinedAt: !3894)
!3897 = !DILocation(line: 55, column: 39, scope: !3875, inlinedAt: !3896)
!3898 = !DILocation(line: 55, column: 7, scope: !3867, inlinedAt: !3896)
!3899 = !DILocation(line: 69, column: 9, scope: !3856, inlinedAt: !3894)
!3900 = !DILocation(line: 0, scope: !3867, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 170, column: 22, scope: !3865)
!3902 = !DILocation(line: 55, column: 39, scope: !3875, inlinedAt: !3901)
!3903 = !DILocation(line: 55, column: 7, scope: !3867, inlinedAt: !3901)
!3904 = !DILocation(line: 171, column: 11, scope: !3865)
!3905 = !DILocation(line: 0, scope: !3867, inlinedAt: !3906)
!3906 = distinct !DILocation(line: 177, column: 22, scope: !3865)
!3907 = !DILocation(line: 55, column: 39, scope: !3875, inlinedAt: !3906)
!3908 = !DILocation(line: 55, column: 7, scope: !3867, inlinedAt: !3906)
!3909 = !DILocation(line: 178, column: 11, scope: !3865)
!3910 = !DILocation(line: 0, scope: !3856, inlinedAt: !3911)
!3911 = distinct !DILocation(line: 190, column: 22, scope: !3865)
!3912 = !DILocation(line: 0, scope: !3867, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 69, column: 12, scope: !3856, inlinedAt: !3911)
!3914 = !DILocation(line: 55, column: 39, scope: !3875, inlinedAt: !3913)
!3915 = !DILocation(line: 55, column: 7, scope: !3867, inlinedAt: !3913)
!3916 = !DILocation(line: 69, column: 9, scope: !3856, inlinedAt: !3911)
!3917 = !DILocation(line: 0, scope: !3856, inlinedAt: !3918)
!3918 = distinct !DILocation(line: 200, column: 22, scope: !3865)
!3919 = !DILocation(line: 0, scope: !3867, inlinedAt: !3920)
!3920 = distinct !DILocation(line: 69, column: 12, scope: !3856, inlinedAt: !3918)
!3921 = !DILocation(line: 55, column: 39, scope: !3875, inlinedAt: !3920)
!3922 = !DILocation(line: 55, column: 7, scope: !3867, inlinedAt: !3920)
!3923 = !DILocation(line: 69, column: 9, scope: !3856, inlinedAt: !3918)
!3924 = !DILocation(line: 0, scope: !3856, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 209, column: 22, scope: !3865)
!3926 = !DILocation(line: 0, scope: !3867, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 69, column: 12, scope: !3856, inlinedAt: !3925)
!3928 = !DILocation(line: 55, column: 39, scope: !3875, inlinedAt: !3927)
!3929 = !DILocation(line: 55, column: 7, scope: !3867, inlinedAt: !3927)
!3930 = !DILocation(line: 69, column: 9, scope: !3856, inlinedAt: !3925)
!3931 = !DILocation(line: 0, scope: !3867, inlinedAt: !3932)
!3932 = distinct !DILocation(line: 213, column: 22, scope: !3865)
!3933 = !DILocation(line: 55, column: 39, scope: !3875, inlinedAt: !3932)
!3934 = !DILocation(line: 55, column: 7, scope: !3867, inlinedAt: !3932)
!3935 = !DILocation(line: 214, column: 11, scope: !3865)
!3936 = !DILocation(line: 225, column: 16, scope: !3865)
!3937 = !DILocation(line: 226, column: 22, scope: !3865)
!3938 = !DILocation(line: 226, column: 11, scope: !3865)
!3939 = !DILocation(line: 0, scope: !3856, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 195, column: 22, scope: !3865)
!3941 = !DILocation(line: 0, scope: !3867, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 69, column: 12, scope: !3856, inlinedAt: !3940)
!3943 = !DILocation(line: 55, column: 39, scope: !3875, inlinedAt: !3942)
!3944 = !DILocation(line: 55, column: 7, scope: !3867, inlinedAt: !3942)
!3945 = !DILocation(line: 0, scope: !3865)
!3946 = !DILocation(line: 230, column: 10, scope: !3786)
!3947 = !DILocation(line: 231, column: 11, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3786, file: !3767, line: 231, column: 11)
!3949 = !DILocation(line: 231, column: 11, scope: !3786)
!3950 = !DILocation(line: 107, column: 13, scope: !3812)
!3951 = !DILocation(line: 82, column: 16, scope: !3766)
!3952 = !DILocation(line: 235, column: 8, scope: !3766)
!3953 = !DILocation(line: 236, column: 3, scope: !3766)
!3954 = !DILocation(line: 237, column: 1, scope: !3766)
!3955 = !DISubprogram(name: "strtoumax", scope: !3956, file: !3956, line: 301, type: !3957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!3956 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!35, !36, !773, !47}
!3959 = distinct !DISubprogram(name: "rpl_calloc", scope: !213, file: !213, line: 42, type: !3470, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !3960)
!3960 = !{!3961, !3962, !3963, !3964}
!3961 = !DILocalVariable(name: "n", arg: 1, scope: !3959, file: !213, line: 42, type: !33)
!3962 = !DILocalVariable(name: "s", arg: 2, scope: !3959, file: !213, line: 42, type: !33)
!3963 = !DILocalVariable(name: "result", scope: !3959, file: !213, line: 44, type: !32)
!3964 = !DILocalVariable(name: "bytes", scope: !3965, file: !213, line: 56, type: !33)
!3965 = distinct !DILexicalBlock(scope: !3966, file: !213, line: 53, column: 5)
!3966 = distinct !DILexicalBlock(scope: !3959, file: !213, line: 47, column: 7)
!3967 = !DILocation(line: 0, scope: !3959)
!3968 = !DILocation(line: 47, column: 9, scope: !3966)
!3969 = !DILocation(line: 47, column: 14, scope: !3966)
!3970 = !DILocation(line: 0, scope: !3965)
!3971 = !DILocation(line: 57, column: 21, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3965, file: !213, line: 57, column: 11)
!3973 = !DILocation(line: 57, column: 11, scope: !3965)
!3974 = !DILocation(line: 59, column: 11, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3972, file: !213, line: 58, column: 9)
!3976 = !DILocation(line: 59, column: 17, scope: !3975)
!3977 = !DILocation(line: 65, column: 12, scope: !3959)
!3978 = !DILocation(line: 72, column: 3, scope: !3959)
!3979 = !DILocation(line: 73, column: 1, scope: !3959)
!3980 = distinct !DISubprogram(name: "rpl_fclose", scope: !215, file: !215, line: 58, type: !3981, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !4017)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!47, !3983}
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !781, line: 7, baseType: !3985)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !717, line: 49, size: 1728, elements: !3986)
!3986 = !{!3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3985, file: !717, line: 51, baseType: !47, size: 32)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3985, file: !717, line: 54, baseType: !30, size: 64, offset: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3985, file: !717, line: 55, baseType: !30, size: 64, offset: 128)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3985, file: !717, line: 56, baseType: !30, size: 64, offset: 192)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3985, file: !717, line: 57, baseType: !30, size: 64, offset: 256)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3985, file: !717, line: 58, baseType: !30, size: 64, offset: 320)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3985, file: !717, line: 59, baseType: !30, size: 64, offset: 384)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3985, file: !717, line: 60, baseType: !30, size: 64, offset: 448)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3985, file: !717, line: 61, baseType: !30, size: 64, offset: 512)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3985, file: !717, line: 64, baseType: !30, size: 64, offset: 576)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3985, file: !717, line: 65, baseType: !30, size: 64, offset: 640)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3985, file: !717, line: 66, baseType: !30, size: 64, offset: 704)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3985, file: !717, line: 68, baseType: !732, size: 64, offset: 768)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3985, file: !717, line: 70, baseType: !4001, size: 64, offset: 832)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3985, file: !717, line: 72, baseType: !47, size: 32, offset: 896)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3985, file: !717, line: 73, baseType: !47, size: 32, offset: 928)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3985, file: !717, line: 74, baseType: !738, size: 64, offset: 960)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3985, file: !717, line: 77, baseType: !120, size: 16, offset: 1024)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3985, file: !717, line: 78, baseType: !69, size: 8, offset: 1040)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3985, file: !717, line: 79, baseType: !744, size: 8, offset: 1048)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3985, file: !717, line: 81, baseType: !748, size: 64, offset: 1088)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3985, file: !717, line: 89, baseType: !751, size: 64, offset: 1152)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3985, file: !717, line: 91, baseType: !753, size: 64, offset: 1216)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3985, file: !717, line: 92, baseType: !756, size: 64, offset: 1280)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3985, file: !717, line: 93, baseType: !4001, size: 64, offset: 1344)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3985, file: !717, line: 94, baseType: !32, size: 64, offset: 1408)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3985, file: !717, line: 95, baseType: !33, size: 64, offset: 1472)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3985, file: !717, line: 96, baseType: !47, size: 32, offset: 1536)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3985, file: !717, line: 98, baseType: !763, size: 160, offset: 1568)
!4017 = !{!4018, !4019, !4020, !4021}
!4018 = !DILocalVariable(name: "fp", arg: 1, scope: !3980, file: !215, line: 58, type: !3983)
!4019 = !DILocalVariable(name: "saved_errno", scope: !3980, file: !215, line: 60, type: !47)
!4020 = !DILocalVariable(name: "fd", scope: !3980, file: !215, line: 61, type: !47)
!4021 = !DILocalVariable(name: "result", scope: !3980, file: !215, line: 62, type: !47)
!4022 = !DILocation(line: 0, scope: !3980)
!4023 = !DILocation(line: 65, column: 8, scope: !3980)
!4024 = !DILocation(line: 66, column: 10, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !3980, file: !215, line: 66, column: 7)
!4026 = !DILocation(line: 66, column: 7, scope: !3980)
!4027 = !DILocation(line: 67, column: 12, scope: !4025)
!4028 = !DILocation(line: 67, column: 5, scope: !4025)
!4029 = !DILocation(line: 72, column: 9, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !3980, file: !215, line: 72, column: 7)
!4031 = !DILocation(line: 72, column: 23, scope: !4030)
!4032 = !DILocation(line: 72, column: 33, scope: !4030)
!4033 = !DILocation(line: 72, column: 26, scope: !4030)
!4034 = !DILocation(line: 72, column: 59, scope: !4030)
!4035 = !DILocation(line: 73, column: 7, scope: !4030)
!4036 = !DILocation(line: 73, column: 10, scope: !4030)
!4037 = !DILocation(line: 72, column: 7, scope: !3980)
!4038 = !DILocation(line: 100, column: 12, scope: !3980)
!4039 = !DILocation(line: 105, column: 7, scope: !3980)
!4040 = !DILocation(line: 74, column: 19, scope: !4030)
!4041 = !DILocation(line: 105, column: 19, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !3980, file: !215, line: 105, column: 7)
!4043 = !DILocation(line: 107, column: 13, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4042, file: !215, line: 106, column: 5)
!4045 = !DILocation(line: 109, column: 5, scope: !4044)
!4046 = !DILocation(line: 112, column: 1, scope: !3980)
!4047 = !DISubprogram(name: "fclose", scope: !712, file: !712, line: 213, type: !4048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!47, !4001}
!4050 = !DISubprogram(name: "lseek", scope: !4051, file: !4051, line: 334, type: !4052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!4051 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!740, !47, !740, !47}
!4054 = distinct !DISubprogram(name: "rpl_fflush", scope: !217, file: !217, line: 129, type: !4055, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !4091)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!47, !4057}
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !781, line: 7, baseType: !4059)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !717, line: 49, size: 1728, elements: !4060)
!4060 = !{!4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4059, file: !717, line: 51, baseType: !47, size: 32)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4059, file: !717, line: 54, baseType: !30, size: 64, offset: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4059, file: !717, line: 55, baseType: !30, size: 64, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4059, file: !717, line: 56, baseType: !30, size: 64, offset: 192)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4059, file: !717, line: 57, baseType: !30, size: 64, offset: 256)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4059, file: !717, line: 58, baseType: !30, size: 64, offset: 320)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4059, file: !717, line: 59, baseType: !30, size: 64, offset: 384)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4059, file: !717, line: 60, baseType: !30, size: 64, offset: 448)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4059, file: !717, line: 61, baseType: !30, size: 64, offset: 512)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4059, file: !717, line: 64, baseType: !30, size: 64, offset: 576)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4059, file: !717, line: 65, baseType: !30, size: 64, offset: 640)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4059, file: !717, line: 66, baseType: !30, size: 64, offset: 704)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4059, file: !717, line: 68, baseType: !732, size: 64, offset: 768)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4059, file: !717, line: 70, baseType: !4075, size: 64, offset: 832)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4059, file: !717, line: 72, baseType: !47, size: 32, offset: 896)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4059, file: !717, line: 73, baseType: !47, size: 32, offset: 928)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4059, file: !717, line: 74, baseType: !738, size: 64, offset: 960)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4059, file: !717, line: 77, baseType: !120, size: 16, offset: 1024)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4059, file: !717, line: 78, baseType: !69, size: 8, offset: 1040)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4059, file: !717, line: 79, baseType: !744, size: 8, offset: 1048)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4059, file: !717, line: 81, baseType: !748, size: 64, offset: 1088)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4059, file: !717, line: 89, baseType: !751, size: 64, offset: 1152)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4059, file: !717, line: 91, baseType: !753, size: 64, offset: 1216)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4059, file: !717, line: 92, baseType: !756, size: 64, offset: 1280)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4059, file: !717, line: 93, baseType: !4075, size: 64, offset: 1344)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4059, file: !717, line: 94, baseType: !32, size: 64, offset: 1408)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4059, file: !717, line: 95, baseType: !33, size: 64, offset: 1472)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4059, file: !717, line: 96, baseType: !47, size: 32, offset: 1536)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4059, file: !717, line: 98, baseType: !763, size: 160, offset: 1568)
!4091 = !{!4092}
!4092 = !DILocalVariable(name: "stream", arg: 1, scope: !4054, file: !217, line: 129, type: !4057)
!4093 = !DILocation(line: 0, scope: !4054)
!4094 = !DILocation(line: 150, column: 14, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4054, file: !217, line: 150, column: 7)
!4096 = !DILocation(line: 150, column: 22, scope: !4095)
!4097 = !DILocation(line: 150, column: 27, scope: !4095)
!4098 = !DILocation(line: 150, column: 7, scope: !4054)
!4099 = !DILocation(line: 151, column: 12, scope: !4095)
!4100 = !DILocation(line: 151, column: 5, scope: !4095)
!4101 = !DILocalVariable(name: "fp", arg: 1, scope: !4102, file: !217, line: 41, type: !4057)
!4102 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !217, file: !217, line: 41, type: !4103, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !4105)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{null, !4057}
!4105 = !{!4101}
!4106 = !DILocation(line: 0, scope: !4102, inlinedAt: !4107)
!4107 = distinct !DILocation(line: 156, column: 3, scope: !4054)
!4108 = !DILocation(line: 43, column: 11, scope: !4109, inlinedAt: !4107)
!4109 = distinct !DILexicalBlock(scope: !4102, file: !217, line: 43, column: 7)
!4110 = !DILocation(line: 43, column: 18, scope: !4109, inlinedAt: !4107)
!4111 = !DILocation(line: 43, column: 7, scope: !4102, inlinedAt: !4107)
!4112 = !DILocation(line: 45, column: 5, scope: !4109, inlinedAt: !4107)
!4113 = !DILocation(line: 158, column: 10, scope: !4054)
!4114 = !DILocation(line: 158, column: 3, scope: !4054)
!4115 = !DILocation(line: 235, column: 1, scope: !4054)
!4116 = !DISubprogram(name: "fflush", scope: !712, file: !712, line: 218, type: !4117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!47, !4075}
!4119 = distinct !DISubprogram(name: "rpl_fseeko", scope: !219, file: !219, line: 28, type: !4120, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !4156)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!47, !4122, !1734, !47}
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !781, line: 7, baseType: !4124)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !717, line: 49, size: 1728, elements: !4125)
!4125 = !{!4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4124, file: !717, line: 51, baseType: !47, size: 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4124, file: !717, line: 54, baseType: !30, size: 64, offset: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4124, file: !717, line: 55, baseType: !30, size: 64, offset: 128)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4124, file: !717, line: 56, baseType: !30, size: 64, offset: 192)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4124, file: !717, line: 57, baseType: !30, size: 64, offset: 256)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4124, file: !717, line: 58, baseType: !30, size: 64, offset: 320)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4124, file: !717, line: 59, baseType: !30, size: 64, offset: 384)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4124, file: !717, line: 60, baseType: !30, size: 64, offset: 448)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4124, file: !717, line: 61, baseType: !30, size: 64, offset: 512)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4124, file: !717, line: 64, baseType: !30, size: 64, offset: 576)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4124, file: !717, line: 65, baseType: !30, size: 64, offset: 640)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4124, file: !717, line: 66, baseType: !30, size: 64, offset: 704)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4124, file: !717, line: 68, baseType: !732, size: 64, offset: 768)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4124, file: !717, line: 70, baseType: !4140, size: 64, offset: 832)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4124, file: !717, line: 72, baseType: !47, size: 32, offset: 896)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4124, file: !717, line: 73, baseType: !47, size: 32, offset: 928)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4124, file: !717, line: 74, baseType: !738, size: 64, offset: 960)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4124, file: !717, line: 77, baseType: !120, size: 16, offset: 1024)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4124, file: !717, line: 78, baseType: !69, size: 8, offset: 1040)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4124, file: !717, line: 79, baseType: !744, size: 8, offset: 1048)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4124, file: !717, line: 81, baseType: !748, size: 64, offset: 1088)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4124, file: !717, line: 89, baseType: !751, size: 64, offset: 1152)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4124, file: !717, line: 91, baseType: !753, size: 64, offset: 1216)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4124, file: !717, line: 92, baseType: !756, size: 64, offset: 1280)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4124, file: !717, line: 93, baseType: !4140, size: 64, offset: 1344)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4124, file: !717, line: 94, baseType: !32, size: 64, offset: 1408)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4124, file: !717, line: 95, baseType: !33, size: 64, offset: 1472)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4124, file: !717, line: 96, baseType: !47, size: 32, offset: 1536)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4124, file: !717, line: 98, baseType: !763, size: 160, offset: 1568)
!4156 = !{!4157, !4158, !4159, !4160}
!4157 = !DILocalVariable(name: "fp", arg: 1, scope: !4119, file: !219, line: 28, type: !4122)
!4158 = !DILocalVariable(name: "offset", arg: 2, scope: !4119, file: !219, line: 28, type: !1734)
!4159 = !DILocalVariable(name: "whence", arg: 3, scope: !4119, file: !219, line: 28, type: !47)
!4160 = !DILocalVariable(name: "pos", scope: !4161, file: !219, line: 117, type: !1734)
!4161 = distinct !DILexicalBlock(scope: !4162, file: !219, line: 113, column: 5)
!4162 = distinct !DILexicalBlock(scope: !4119, file: !219, line: 52, column: 7)
!4163 = !DILocation(line: 0, scope: !4119)
!4164 = !DILocation(line: 52, column: 11, scope: !4162)
!4165 = !{!946, !636, i64 16}
!4166 = !DILocation(line: 52, column: 31, scope: !4162)
!4167 = !{!946, !636, i64 8}
!4168 = !DILocation(line: 52, column: 24, scope: !4162)
!4169 = !DILocation(line: 53, column: 7, scope: !4162)
!4170 = !DILocation(line: 53, column: 14, scope: !4162)
!4171 = !DILocation(line: 53, column: 35, scope: !4162)
!4172 = !{!946, !636, i64 32}
!4173 = !DILocation(line: 53, column: 28, scope: !4162)
!4174 = !DILocation(line: 54, column: 7, scope: !4162)
!4175 = !DILocation(line: 54, column: 14, scope: !4162)
!4176 = !{!946, !636, i64 72}
!4177 = !DILocation(line: 54, column: 28, scope: !4162)
!4178 = !DILocation(line: 52, column: 7, scope: !4119)
!4179 = !DILocation(line: 117, column: 26, scope: !4161)
!4180 = !DILocation(line: 117, column: 19, scope: !4161)
!4181 = !DILocation(line: 0, scope: !4161)
!4182 = !DILocation(line: 118, column: 15, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4161, file: !219, line: 118, column: 11)
!4184 = !DILocation(line: 118, column: 11, scope: !4161)
!4185 = !DILocation(line: 129, column: 11, scope: !4161)
!4186 = !DILocation(line: 129, column: 18, scope: !4161)
!4187 = !DILocation(line: 130, column: 11, scope: !4161)
!4188 = !DILocation(line: 130, column: 19, scope: !4161)
!4189 = !{!946, !898, i64 144}
!4190 = !DILocation(line: 161, column: 7, scope: !4161)
!4191 = !DILocation(line: 163, column: 10, scope: !4119)
!4192 = !DILocation(line: 163, column: 3, scope: !4119)
!4193 = !DILocation(line: 164, column: 1, scope: !4119)
!4194 = !DISubprogram(name: "fseeko", scope: !712, file: !712, line: 712, type: !4195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!47, !4140, !740, !47}
!4197 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !221, file: !221, line: 86, type: !4198, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !220, retainedNodes: !4212)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!33, !4200, !36, !33, !4201}
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2008, line: 6, baseType: !4203)
!4203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2010, line: 21, baseType: !4204)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2010, line: 13, size: 64, elements: !4205)
!4205 = !{!4206, !4207}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4204, file: !2010, line: 15, baseType: !47, size: 32)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4204, file: !2010, line: 20, baseType: !4208, size: 32, offset: 32)
!4208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4204, file: !2010, line: 16, size: 32, elements: !4209)
!4209 = !{!4210, !4211}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4208, file: !2010, line: 18, baseType: !7, size: 32)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4208, file: !2010, line: 19, baseType: !864, size: 32)
!4212 = !{!4213, !4214, !4215, !4216, !4217, !4218, !4219}
!4213 = !DILocalVariable(name: "pwc", arg: 1, scope: !4197, file: !221, line: 86, type: !4200)
!4214 = !DILocalVariable(name: "s", arg: 2, scope: !4197, file: !221, line: 86, type: !36)
!4215 = !DILocalVariable(name: "n", arg: 3, scope: !4197, file: !221, line: 86, type: !33)
!4216 = !DILocalVariable(name: "ps", arg: 4, scope: !4197, file: !221, line: 86, type: !4201)
!4217 = !DILocalVariable(name: "ret", scope: !4197, file: !221, line: 88, type: !33)
!4218 = !DILocalVariable(name: "wc", scope: !4197, file: !221, line: 89, type: !2021)
!4219 = !DILocalVariable(name: "uc", scope: !4220, file: !221, line: 156, type: !38)
!4220 = distinct !DILexicalBlock(scope: !4221, file: !221, line: 155, column: 5)
!4221 = distinct !DILexicalBlock(scope: !4197, file: !221, line: 154, column: 7)
!4222 = !DILocation(line: 0, scope: !4197)
!4223 = !DILocation(line: 89, column: 3, scope: !4197)
!4224 = !DILocation(line: 105, column: 9, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4197, file: !221, line: 105, column: 7)
!4226 = !DILocation(line: 105, column: 7, scope: !4197)
!4227 = !DILocation(line: 145, column: 9, scope: !4197)
!4228 = !DILocation(line: 154, column: 19, scope: !4221)
!4229 = !DILocation(line: 154, column: 26, scope: !4221)
!4230 = !DILocation(line: 154, column: 41, scope: !4221)
!4231 = !DILocation(line: 154, column: 7, scope: !4197)
!4232 = !DILocation(line: 156, column: 26, scope: !4220)
!4233 = !DILocation(line: 0, scope: !4220)
!4234 = !DILocation(line: 157, column: 14, scope: !4220)
!4235 = !DILocation(line: 157, column: 12, scope: !4220)
!4236 = !DILocation(line: 163, column: 1, scope: !4197)
!4237 = !DISubprogram(name: "mbrtowc", scope: !2683, file: !2683, line: 296, type: !4238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!35, !49, !36, !35, !4240}
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4241 = distinct !DISubprogram(name: "close_stream", scope: !224, file: !224, line: 56, type: !4242, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !4278)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!47, !4244}
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !781, line: 7, baseType: !4246)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !717, line: 49, size: 1728, elements: !4247)
!4247 = !{!4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4246, file: !717, line: 51, baseType: !47, size: 32)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4246, file: !717, line: 54, baseType: !30, size: 64, offset: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4246, file: !717, line: 55, baseType: !30, size: 64, offset: 128)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4246, file: !717, line: 56, baseType: !30, size: 64, offset: 192)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4246, file: !717, line: 57, baseType: !30, size: 64, offset: 256)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4246, file: !717, line: 58, baseType: !30, size: 64, offset: 320)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4246, file: !717, line: 59, baseType: !30, size: 64, offset: 384)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4246, file: !717, line: 60, baseType: !30, size: 64, offset: 448)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4246, file: !717, line: 61, baseType: !30, size: 64, offset: 512)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4246, file: !717, line: 64, baseType: !30, size: 64, offset: 576)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4246, file: !717, line: 65, baseType: !30, size: 64, offset: 640)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4246, file: !717, line: 66, baseType: !30, size: 64, offset: 704)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4246, file: !717, line: 68, baseType: !732, size: 64, offset: 768)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4246, file: !717, line: 70, baseType: !4262, size: 64, offset: 832)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4246, file: !717, line: 72, baseType: !47, size: 32, offset: 896)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4246, file: !717, line: 73, baseType: !47, size: 32, offset: 928)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4246, file: !717, line: 74, baseType: !738, size: 64, offset: 960)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4246, file: !717, line: 77, baseType: !120, size: 16, offset: 1024)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4246, file: !717, line: 78, baseType: !69, size: 8, offset: 1040)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4246, file: !717, line: 79, baseType: !744, size: 8, offset: 1048)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4246, file: !717, line: 81, baseType: !748, size: 64, offset: 1088)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4246, file: !717, line: 89, baseType: !751, size: 64, offset: 1152)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4246, file: !717, line: 91, baseType: !753, size: 64, offset: 1216)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4246, file: !717, line: 92, baseType: !756, size: 64, offset: 1280)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4246, file: !717, line: 93, baseType: !4262, size: 64, offset: 1344)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4246, file: !717, line: 94, baseType: !32, size: 64, offset: 1408)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4246, file: !717, line: 95, baseType: !33, size: 64, offset: 1472)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4246, file: !717, line: 96, baseType: !47, size: 32, offset: 1536)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4246, file: !717, line: 98, baseType: !763, size: 160, offset: 1568)
!4278 = !{!4279, !4280, !4282, !4283}
!4279 = !DILocalVariable(name: "stream", arg: 1, scope: !4241, file: !224, line: 56, type: !4244)
!4280 = !DILocalVariable(name: "some_pending", scope: !4241, file: !224, line: 58, type: !4281)
!4281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!4282 = !DILocalVariable(name: "prev_fail", scope: !4241, file: !224, line: 59, type: !4281)
!4283 = !DILocalVariable(name: "fclose_fail", scope: !4241, file: !224, line: 60, type: !4281)
!4284 = !DILocation(line: 0, scope: !4241)
!4285 = !DILocation(line: 58, column: 30, scope: !4241)
!4286 = !DILocalVariable(name: "__stream", arg: 1, scope: !4287, file: !937, line: 135, type: !4244)
!4287 = distinct !DISubprogram(name: "ferror_unlocked", scope: !937, file: !937, line: 135, type: !4242, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !4288)
!4288 = !{!4286}
!4289 = !DILocation(line: 0, scope: !4287, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 59, column: 27, scope: !4241)
!4291 = !DILocation(line: 137, column: 10, scope: !4287, inlinedAt: !4290)
!4292 = !DILocation(line: 59, column: 43, scope: !4241)
!4293 = !DILocation(line: 60, column: 29, scope: !4241)
!4294 = !DILocation(line: 60, column: 45, scope: !4241)
!4295 = !DILocation(line: 70, column: 17, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4241, file: !224, line: 70, column: 7)
!4297 = !DILocation(line: 58, column: 50, scope: !4241)
!4298 = !DILocation(line: 70, column: 33, scope: !4296)
!4299 = !DILocation(line: 70, column: 53, scope: !4296)
!4300 = !DILocation(line: 70, column: 59, scope: !4296)
!4301 = !DILocation(line: 70, column: 7, scope: !4241)
!4302 = !DILocation(line: 72, column: 11, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4296, file: !224, line: 71, column: 5)
!4304 = !DILocation(line: 73, column: 9, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4303, file: !224, line: 72, column: 11)
!4306 = !DILocation(line: 73, column: 15, scope: !4305)
!4307 = !DILocation(line: 78, column: 1, scope: !4241)
!4308 = distinct !DISubprogram(name: "hard_locale", scope: !226, file: !226, line: 27, type: !4309, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4311)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!82, !47}
!4311 = !{!4312, !4313}
!4312 = !DILocalVariable(name: "category", arg: 1, scope: !4308, file: !226, line: 27, type: !47)
!4313 = !DILocalVariable(name: "locale", scope: !4308, file: !226, line: 29, type: !4314)
!4314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2056, elements: !4315)
!4315 = !{!4316}
!4316 = !DISubrange(count: 257)
!4317 = !DILocation(line: 0, scope: !4308)
!4318 = !DILocation(line: 29, column: 3, scope: !4308)
!4319 = !DILocation(line: 29, column: 8, scope: !4308)
!4320 = !DILocation(line: 31, column: 7, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4308, file: !226, line: 31, column: 7)
!4322 = !DILocation(line: 31, column: 7, scope: !4308)
!4323 = !DILocation(line: 34, column: 12, scope: !4308)
!4324 = !DILocation(line: 34, column: 38, scope: !4308)
!4325 = !DILocation(line: 34, column: 41, scope: !4308)
!4326 = !DILocation(line: 34, column: 66, scope: !4308)
!4327 = !DILocation(line: 35, column: 1, scope: !4308)
!4328 = distinct !DISubprogram(name: "locale_charset", scope: !228, file: !228, line: 831, type: !4329, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !4331)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!36}
!4331 = !{!4332}
!4332 = !DILocalVariable(name: "codeset", scope: !4328, file: !228, line: 833, type: !36)
!4333 = !DILocation(line: 847, column: 13, scope: !4328)
!4334 = !DILocation(line: 0, scope: !4328)
!4335 = !DILocation(line: 911, column: 15, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4328, file: !228, line: 911, column: 7)
!4337 = !DILocation(line: 911, column: 7, scope: !4328)
!4338 = !DILocation(line: 1070, column: 13, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4340, file: !228, line: 1070, column: 13)
!4340 = distinct !DILexicalBlock(scope: !4341, file: !228, line: 1060, column: 7)
!4341 = distinct !DILexicalBlock(scope: !4328, file: !228, line: 1019, column: 3)
!4342 = !DILocation(line: 1070, column: 24, scope: !4339)
!4343 = !DILocation(line: 1070, column: 13, scope: !4340)
!4344 = !DILocation(line: 1158, column: 3, scope: !4328)
!4345 = !DISubprogram(name: "nl_langinfo", scope: !231, file: !231, line: 661, type: !4346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !57)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!30, !47}
!4348 = distinct !DISubprogram(name: "setlocale_null_r", scope: !617, file: !617, line: 269, type: !4349, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !4351)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{!47, !47, !30, !33}
!4351 = !{!4352, !4353, !4354}
!4352 = !DILocalVariable(name: "category", arg: 1, scope: !4348, file: !617, line: 269, type: !47)
!4353 = !DILocalVariable(name: "buf", arg: 2, scope: !4348, file: !617, line: 269, type: !30)
!4354 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4348, file: !617, line: 269, type: !33)
!4355 = !DILocation(line: 0, scope: !4348)
!4356 = !DILocalVariable(name: "category", arg: 1, scope: !4357, file: !617, line: 91, type: !47)
!4357 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !617, file: !617, line: 91, type: !4349, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !4358)
!4358 = !{!4356, !4359, !4360, !4361, !4362}
!4359 = !DILocalVariable(name: "buf", arg: 2, scope: !4357, file: !617, line: 91, type: !30)
!4360 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4357, file: !617, line: 91, type: !33)
!4361 = !DILocalVariable(name: "result", scope: !4357, file: !617, line: 140, type: !36)
!4362 = !DILocalVariable(name: "length", scope: !4363, file: !617, line: 154, type: !33)
!4363 = distinct !DILexicalBlock(scope: !4364, file: !617, line: 153, column: 5)
!4364 = distinct !DILexicalBlock(scope: !4357, file: !617, line: 142, column: 7)
!4365 = !DILocation(line: 0, scope: !4357, inlinedAt: !4366)
!4366 = distinct !DILocation(line: 274, column: 10, scope: !4348)
!4367 = !DILocalVariable(name: "category", arg: 1, scope: !4368, file: !617, line: 60, type: !47)
!4368 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !617, file: !617, line: 60, type: !4369, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !4371)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!36, !47}
!4371 = !{!4367, !4372}
!4372 = !DILocalVariable(name: "result", scope: !4368, file: !617, line: 62, type: !36)
!4373 = !DILocation(line: 0, scope: !4368, inlinedAt: !4374)
!4374 = distinct !DILocation(line: 140, column: 24, scope: !4357, inlinedAt: !4366)
!4375 = !DILocation(line: 62, column: 24, scope: !4368, inlinedAt: !4374)
!4376 = !DILocation(line: 142, column: 14, scope: !4364, inlinedAt: !4366)
!4377 = !DILocation(line: 142, column: 7, scope: !4357, inlinedAt: !4366)
!4378 = !DILocation(line: 145, column: 19, scope: !4379, inlinedAt: !4366)
!4379 = distinct !DILexicalBlock(scope: !4380, file: !617, line: 145, column: 11)
!4380 = distinct !DILexicalBlock(scope: !4364, file: !617, line: 143, column: 5)
!4381 = !DILocation(line: 145, column: 11, scope: !4380, inlinedAt: !4366)
!4382 = !DILocation(line: 149, column: 16, scope: !4379, inlinedAt: !4366)
!4383 = !DILocation(line: 149, column: 9, scope: !4379, inlinedAt: !4366)
!4384 = !DILocation(line: 154, column: 23, scope: !4363, inlinedAt: !4366)
!4385 = !DILocation(line: 0, scope: !4363, inlinedAt: !4366)
!4386 = !DILocation(line: 155, column: 18, scope: !4387, inlinedAt: !4366)
!4387 = distinct !DILexicalBlock(scope: !4363, file: !617, line: 155, column: 11)
!4388 = !DILocation(line: 155, column: 11, scope: !4363, inlinedAt: !4366)
!4389 = !DILocation(line: 157, column: 39, scope: !4390, inlinedAt: !4366)
!4390 = distinct !DILexicalBlock(scope: !4387, file: !617, line: 156, column: 9)
!4391 = !DILocalVariable(name: "__dest", arg: 1, scope: !4392, file: !917, line: 26, type: !3671)
!4392 = distinct !DISubprogram(name: "memcpy", scope: !917, file: !917, line: 26, type: !3669, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !4393)
!4393 = !{!4391, !4394, !4395}
!4394 = !DILocalVariable(name: "__src", arg: 2, scope: !4392, file: !917, line: 26, type: !3672)
!4395 = !DILocalVariable(name: "__len", arg: 3, scope: !4392, file: !917, line: 26, type: !33)
!4396 = !DILocation(line: 0, scope: !4392, inlinedAt: !4397)
!4397 = distinct !DILocation(line: 157, column: 11, scope: !4390, inlinedAt: !4366)
!4398 = !DILocation(line: 29, column: 10, scope: !4392, inlinedAt: !4397)
!4399 = !DILocation(line: 158, column: 11, scope: !4390, inlinedAt: !4366)
!4400 = !DILocation(line: 162, column: 23, scope: !4401, inlinedAt: !4366)
!4401 = distinct !DILexicalBlock(scope: !4402, file: !617, line: 162, column: 15)
!4402 = distinct !DILexicalBlock(scope: !4387, file: !617, line: 161, column: 9)
!4403 = !DILocation(line: 162, column: 15, scope: !4402, inlinedAt: !4366)
!4404 = !DILocation(line: 167, column: 44, scope: !4405, inlinedAt: !4366)
!4405 = distinct !DILexicalBlock(scope: !4401, file: !617, line: 163, column: 13)
!4406 = !DILocation(line: 0, scope: !4392, inlinedAt: !4407)
!4407 = distinct !DILocation(line: 167, column: 15, scope: !4405, inlinedAt: !4366)
!4408 = !DILocation(line: 29, column: 10, scope: !4392, inlinedAt: !4407)
!4409 = !DILocation(line: 168, column: 15, scope: !4405, inlinedAt: !4366)
!4410 = !DILocation(line: 168, column: 32, scope: !4405, inlinedAt: !4366)
!4411 = !DILocation(line: 169, column: 13, scope: !4405, inlinedAt: !4366)
!4412 = !DILocation(line: 0, scope: !4364, inlinedAt: !4366)
!4413 = !DILocation(line: 274, column: 3, scope: !4348)
!4414 = distinct !DISubprogram(name: "setlocale_null", scope: !617, file: !617, line: 301, type: !4369, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !616, retainedNodes: !4415)
!4415 = !{!4416}
!4416 = !DILocalVariable(name: "category", arg: 1, scope: !4414, file: !617, line: 301, type: !47)
!4417 = !DILocation(line: 0, scope: !4414)
!4418 = !DILocation(line: 0, scope: !4368, inlinedAt: !4419)
!4419 = distinct !DILocation(line: 304, column: 10, scope: !4414)
!4420 = !DILocation(line: 62, column: 24, scope: !4368, inlinedAt: !4419)
!4421 = !DILocation(line: 304, column: 3, scope: !4414)
