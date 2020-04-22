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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), align 8, !dbg !200
@.str.45 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@base32_encode.b32str = internal unnamed_addr constant [32 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", align 16, !dbg !205
@b32 = internal unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16, !dbg !219
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !233
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !276
@.str.56 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.57 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.58 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !278
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !284
@.str.67 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.68 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.69 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.72, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.73, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.74, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.77, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.79, i32 0, i32 0), i8* null], align 16, !dbg !325
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !410
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !416
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !418
@.str.11.80 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.81 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.82 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.83 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.84 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.85 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.86 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !423
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !430
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !420
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !432
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !438
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
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1170 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1175, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i32 %0, metadata !1174, metadata !DIExpression()), !dbg !1196
  %3 = icmp eq i32 %0, 0, !dbg !1197
  br i1 %3, label %9, label %4, !dbg !1198

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1199, !tbaa !1201
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #20, !dbg !1199
  %7 = load i8*, i8** @program_name, align 8, !dbg !1199, !tbaa !1201
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #20, !dbg !1199
  br label %68, !dbg !1199

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #20, !dbg !1205
  %11 = load i8*, i8** @program_name, align 8, !dbg !1205, !tbaa !1201
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #20, !dbg !1205
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 5) #20, !dbg !1206
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i32 32) #20, !dbg !1206
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i64 0, i64 0), i32 5) #20, !dbg !1207
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1207, !tbaa !1201
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #20, !dbg !1207
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #20, !dbg !1210
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1210, !tbaa !1201
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #20, !dbg !1210
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([243 x i8], [243 x i8]* @.str.3, i64 0, i64 0), i32 5) #20, !dbg !1213
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1213, !tbaa !1201
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22), !dbg !1213
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #20, !dbg !1214
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1214, !tbaa !1201
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25), !dbg !1214
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #20, !dbg !1215
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1215, !tbaa !1201
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28), !dbg !1215
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([268 x i8], [268 x i8]* @.str.6, i64 0, i64 0), i32 5) #20, !dbg !1216
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #20, !dbg !1216
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), metadata !1179, metadata !DIExpression()) #20, !dbg !1217
  %32 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1218
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %32) #20, !dbg !1218
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %32, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #20, !dbg !1192
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), metadata !1180, metadata !DIExpression()) #20, !dbg !1217
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1181, metadata !DIExpression()) #20, !dbg !1217
  %33 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1219
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !1181, metadata !DIExpression()) #20, !dbg !1217
  br label %34, !dbg !1220

34:                                               ; preds = %39, %9
  %35 = phi i8* [ %42, %39 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %36 = phi %struct.infomap* [ %40, %39 ], [ %33, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !1181, metadata !DIExpression()) #20, !dbg !1217
  %37 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %35) #22, !dbg !1221
  %38 = icmp eq i32 %37, 0, !dbg !1221
  br i1 %38, label %44, label %39, !dbg !1220

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 1, !dbg !1222
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !1181, metadata !DIExpression()) #20, !dbg !1217
  %41 = getelementptr inbounds %struct.infomap, %struct.infomap* %40, i64 0, i32 0, !dbg !1223
  %42 = load i8*, i8** %41, align 8, !dbg !1223, !tbaa !1224
  %43 = icmp eq i8* %42, null, !dbg !1226
  br i1 %43, label %44, label %34, !dbg !1227, !llvm.loop !1228

44:                                               ; preds = %39, %34
  %45 = phi %struct.infomap* [ %40, %39 ], [ %36, %34 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %45, metadata !1181, metadata !DIExpression()) #20, !dbg !1217
  call void @llvm.dbg.value(metadata %struct.infomap* %45, metadata !1181, metadata !DIExpression()) #20, !dbg !1217
  %46 = getelementptr inbounds %struct.infomap, %struct.infomap* %45, i64 0, i32 1, !dbg !1229
  %47 = load i8*, i8** %46, align 8, !dbg !1229, !tbaa !1231
  %48 = icmp eq i8* %47, null, !dbg !1232
  %49 = select i1 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %47, !dbg !1233
  call void @llvm.dbg.value(metadata i8* %49, metadata !1180, metadata !DIExpression()) #20, !dbg !1217
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #20, !dbg !1234
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #20, !dbg !1234
  %52 = tail call i8* @setlocale(i32 5, i8* null) #20, !dbg !1235
  call void @llvm.dbg.value(metadata i8* %52, metadata !1188, metadata !DIExpression()) #20, !dbg !1217
  %53 = icmp eq i8* %52, null, !dbg !1236
  br i1 %53, label %61, label %54, !dbg !1238

54:                                               ; preds = %44
  %55 = tail call i32 @strncmp(i8* nonnull %52, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #22, !dbg !1239
  %56 = icmp eq i32 %55, 0, !dbg !1239
  br i1 %56, label %61, label %57, !dbg !1240

57:                                               ; preds = %54
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.33, i64 0, i64 0), i32 5) #20, !dbg !1241
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1241, !tbaa !1201
  %60 = tail call i32 @fputs_unlocked(i8* %58, %struct._IO_FILE* %59) #20, !dbg !1241
  br label %61, !dbg !1243

61:                                               ; preds = %44, %54, %57
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 5) #20, !dbg !1244
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #20, !dbg !1244
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #20, !dbg !1245
  %65 = icmp eq i8* %49, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), !dbg !1245
  %66 = select i1 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !1245
  %67 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* %49, i8* %66) #20, !dbg !1245
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %32) #20, !dbg !1246
  br label %68

68:                                               ; preds = %61, %4
  tail call void @exit(i32 %0) #23, !dbg !1247
  unreachable, !dbg !1247
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !30 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !40 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !105 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1248 {
  %3 = alloca %struct.base32_decode_context, align 4
  call void @llvm.dbg.declare(metadata %struct.base32_decode_context* %3, metadata !1266, metadata !DIExpression()), !dbg !1294
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1252, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8** %1, metadata !1253, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8 0, metadata !1260, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8 0, metadata !1261, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i64 76, metadata !1262, metadata !DIExpression()), !dbg !1297
  %5 = load i8*, i8** %1, align 8, !dbg !1298, !tbaa !1201
  tail call void @set_program_name(i8* %5) #20, !dbg !1299
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #20, !dbg !1300
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #20, !dbg !1301
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #20, !dbg !1302
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #20, !dbg !1303
  br label %10, !dbg !1304

10:                                               ; preds = %17, %2
  %11 = phi i8 [ 0, %2 ], [ 1, %17 ]
  %12 = phi i8 [ 0, %2 ], [ %15, %17 ]
  %13 = phi i64 [ 76, %2 ], [ %18, %17 ]
  br label %14, !dbg !1304

14:                                               ; preds = %17, %10
  %15 = phi i8 [ %12, %10 ], [ 1, %17 ]
  %16 = phi i64 [ %13, %10 ], [ %18, %17 ]
  br label %17, !dbg !1304

17:                                               ; preds = %14, %20
  %18 = phi i64 [ %23, %20 ], [ %16, %14 ], !dbg !1305
  call void @llvm.dbg.value(metadata i64 %18, metadata !1262, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8 %15, metadata !1261, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8 %11, metadata !1260, metadata !DIExpression()), !dbg !1297
  %19 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #20, !dbg !1306
  call void @llvm.dbg.value(metadata i32 %19, metadata !1254, metadata !DIExpression()), !dbg !1297
  switch i32 %19, label %28 [
    i32 -1, label %29
    i32 100, label %10
    i32 119, label %20
    i32 105, label %14
    i32 -130, label %24
    i32 -131, label %25
  ], !dbg !1304, !llvm.loop !1307

20:                                               ; preds = %17
  %21 = load i8*, i8** @optarg, align 8, !dbg !1309, !tbaa !1201
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 5) #20, !dbg !1311
  %23 = tail call i64 @xdectoumax(i8* %21, i64 0, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* %22, i32 0) #20, !dbg !1312
  call void @llvm.dbg.value(metadata i64 %23, metadata !1262, metadata !DIExpression()), !dbg !1297
  br label %17, !dbg !1313, !llvm.loop !1307

24:                                               ; preds = %17
  tail call void @usage(i32 0) #24, !dbg !1314
  unreachable, !dbg !1314

25:                                               ; preds = %17
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1315, !tbaa !1201
  %27 = load i8*, i8** @Version, align 8, !dbg !1315, !tbaa !1201
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* null) #20, !dbg !1315
  tail call void @exit(i32 0) #23, !dbg !1315
  unreachable, !dbg !1315

28:                                               ; preds = %17
  tail call void @usage(i32 1) #24, !dbg !1316
  unreachable, !dbg !1316

29:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i64 %18, metadata !1262, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i64 %18, metadata !1262, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8 %11, metadata !1260, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8 %15, metadata !1261, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i64 %18, metadata !1262, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8 %11, metadata !1260, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8 %15, metadata !1261, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i64 %18, metadata !1262, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8 %11, metadata !1260, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8 %15, metadata !1261, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i64 %18, metadata !1262, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8 %11, metadata !1260, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8 %15, metadata !1261, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i64 %18, metadata !1262, metadata !DIExpression()), !dbg !1297
  %30 = load i32, i32* @optind, align 4, !dbg !1317, !tbaa !1319
  %31 = sub nsw i32 %0, %30, !dbg !1321
  %32 = icmp sgt i32 %31, 1, !dbg !1322
  br i1 %32, label %33, label %41, !dbg !1323

33:                                               ; preds = %29
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 5) #20, !dbg !1324
  %35 = load i32, i32* @optind, align 4, !dbg !1326, !tbaa !1319
  %36 = add nsw i32 %35, 1, !dbg !1327
  %37 = sext i32 %36 to i64, !dbg !1328
  %38 = getelementptr inbounds i8*, i8** %1, i64 %37, !dbg !1328
  %39 = load i8*, i8** %38, align 8, !dbg !1328, !tbaa !1201
  %40 = tail call i8* @quote(i8* %39) #20, !dbg !1329
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %34, i8* %40) #20, !dbg !1330
  tail call void @usage(i32 1) #24, !dbg !1331
  unreachable, !dbg !1331

41:                                               ; preds = %29
  %42 = icmp slt i32 %30, %0, !dbg !1332
  br i1 %42, label %43, label %47, !dbg !1334

43:                                               ; preds = %41
  %44 = sext i32 %30 to i64, !dbg !1335
  %45 = getelementptr inbounds i8*, i8** %1, i64 %44, !dbg !1335
  %46 = load i8*, i8** %45, align 8, !dbg !1335, !tbaa !1201
  call void @llvm.dbg.value(metadata i8* %46, metadata !1259, metadata !DIExpression()), !dbg !1297
  br label %47, !dbg !1336

47:                                               ; preds = %41, %43
  %48 = phi i8* [ %46, %43 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %41 ], !dbg !1337
  call void @llvm.dbg.value(metadata i8* %48, metadata !1259, metadata !DIExpression()), !dbg !1297
  %49 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #22, !dbg !1338
  %50 = icmp eq i32 %49, 0, !dbg !1338
  br i1 %50, label %51, label %53, !dbg !1340

51:                                               ; preds = %47
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1341, !tbaa !1201
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %52, metadata !1255, metadata !DIExpression()), !dbg !1297
  br label %60, !dbg !1343

53:                                               ; preds = %47
  %54 = tail call %struct._IO_FILE* @fopen(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)), !dbg !1344
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %54, metadata !1255, metadata !DIExpression()), !dbg !1297
  %55 = icmp eq %struct._IO_FILE* %54, null, !dbg !1346
  br i1 %55, label %56, label %60, !dbg !1348

56:                                               ; preds = %53
  %57 = tail call i32* @__errno_location() #25, !dbg !1349
  %58 = load i32, i32* %57, align 4, !dbg !1349, !tbaa !1319
  %59 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %48) #20, !dbg !1349
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %59) #20, !dbg !1349
  unreachable, !dbg !1349

60:                                               ; preds = %53, %51
  %61 = phi %struct._IO_FILE* [ %52, %51 ], [ %54, %53 ], !dbg !1350
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1255, metadata !DIExpression()), !dbg !1297
  tail call void @fadvise(%struct._IO_FILE* %61, i32 2) #20, !dbg !1351
  %62 = icmp eq i8 %11, 0, !dbg !1352
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1353, !tbaa !1201
  br i1 %62, label %144, label %64, !dbg !1354

64:                                               ; preds = %60
  %65 = icmp eq i8 %15, 0, !dbg !1355
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1271, metadata !DIExpression()) #20, !dbg !1356
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !1272, metadata !DIExpression()) #20, !dbg !1356
  call void @llvm.dbg.value(metadata i1 %65, metadata !1273, metadata !DIExpression()) #20, !dbg !1356
  %66 = bitcast %struct.base32_decode_context* %3 to i8*, !dbg !1357
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %66) #20, !dbg !1357
  %67 = tail call noalias i8* @xmalloc(i64 8192) #20, !dbg !1358
  call void @llvm.dbg.value(metadata i8* %67, metadata !1274, metadata !DIExpression()) #20, !dbg !1356
  %68 = tail call noalias i8* @xmalloc(i64 5120) #20, !dbg !1359
  call void @llvm.dbg.value(metadata i8* %68, metadata !1275, metadata !DIExpression()) #20, !dbg !1356
  call void @base32_decode_ctx_init(%struct.base32_decode_context* nonnull %3) #20, !dbg !1360
  %69 = bitcast i64* %4 to i8*, !dbg !1361
  %70 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %61, i64 0, i32 0, !dbg !1362
  %71 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %3, i64 0, i32 0, !dbg !1371
  br label %72, !dbg !1373

72:                                               ; preds = %142, %64
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %69) #20, !dbg !1374
  call void @llvm.dbg.value(metadata i64 0, metadata !1276, metadata !DIExpression()) #20, !dbg !1356
  br label %73, !dbg !1375

73:                                               ; preds = %110, %72
  %74 = phi i64 [ 0, %72 ], [ %102, %110 ], !dbg !1361
  call void @llvm.dbg.value(metadata i64 %74, metadata !1276, metadata !DIExpression()) #20, !dbg !1356
  %75 = getelementptr inbounds i8, i8* %67, i64 %74, !dbg !1376
  %76 = sub nuw nsw i64 8192, %74, !dbg !1376
  %77 = call i64 @fread_unlocked(i8* %75, i64 1, i64 %76, %struct._IO_FILE* %61) #20, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %77, metadata !1279, metadata !DIExpression()) #20, !dbg !1361
  store i64 %77, i64* %4, align 8, !dbg !1377, !tbaa !1378
  br i1 %65, label %100, label %78, !dbg !1380

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata i64 0, metadata !1281, metadata !DIExpression()) #20, !dbg !1381
  call void @llvm.dbg.value(metadata i64 %77, metadata !1279, metadata !DIExpression()) #20, !dbg !1361
  %79 = icmp eq i64 %77, 0, !dbg !1382
  br i1 %79, label %100, label %80, !dbg !1384

80:                                               ; preds = %78, %96
  %81 = phi i64 [ %97, %96 ], [ %77, %78 ]
  %82 = phi i64 [ %98, %96 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata i64 %82, metadata !1281, metadata !DIExpression()) #20, !dbg !1381
  %83 = add i64 %82, %74, !dbg !1385
  %84 = getelementptr inbounds i8, i8* %67, i64 %83, !dbg !1388
  %85 = load i8, i8* %84, align 1, !dbg !1388, !tbaa !1389
  %86 = call zeroext i1 @isbase32(i8 signext %85) #25, !dbg !1390
  %87 = icmp eq i8 %85, 61, !dbg !1391
  %88 = or i1 %86, %87, !dbg !1392
  br i1 %88, label %89, label %91, !dbg !1392

89:                                               ; preds = %80
  %90 = add nuw i64 %82, 1, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %90, metadata !1281, metadata !DIExpression()) #20, !dbg !1381
  br label %96, !dbg !1394

91:                                               ; preds = %80
  %92 = getelementptr inbounds i8, i8* %75, i64 %82, !dbg !1395
  %93 = getelementptr inbounds i8, i8* %92, i64 1, !dbg !1396
  %94 = add i64 %81, -1, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %94, metadata !1279, metadata !DIExpression()) #20, !dbg !1361
  store i64 %94, i64* %4, align 8, !dbg !1397, !tbaa !1378
  %95 = sub i64 %94, %82, !dbg !1398
  call void @llvm.dbg.value(metadata i8* %92, metadata !1399, metadata !DIExpression()) #20, !dbg !1407
  call void @llvm.dbg.value(metadata i8* %93, metadata !1405, metadata !DIExpression()) #20, !dbg !1407
  call void @llvm.dbg.value(metadata i64 %95, metadata !1406, metadata !DIExpression()) #20, !dbg !1407
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 1 %92, i8* nonnull align 1 %93, i64 %95, i1 false) #20, !dbg !1409
  br label %96

96:                                               ; preds = %91, %89
  %97 = phi i64 [ %81, %89 ], [ %94, %91 ], !dbg !1410
  %98 = phi i64 [ %90, %89 ], [ %82, %91 ], !dbg !1381
  call void @llvm.dbg.value(metadata i64 %98, metadata !1281, metadata !DIExpression()) #20, !dbg !1381
  call void @llvm.dbg.value(metadata i64 %97, metadata !1279, metadata !DIExpression()) #20, !dbg !1361
  %99 = icmp ult i64 %98, %97, !dbg !1382
  br i1 %99, label %80, label %100, !dbg !1384, !llvm.loop !1411

100:                                              ; preds = %96, %73, %78
  %101 = phi i64 [ 0, %78 ], [ %77, %73 ], [ %97, %96 ], !dbg !1413
  call void @llvm.dbg.value(metadata i64 %101, metadata !1279, metadata !DIExpression()) #20, !dbg !1361
  %102 = add i64 %101, %74, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %102, metadata !1276, metadata !DIExpression()) #20, !dbg !1356
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1368, metadata !DIExpression()) #20, !dbg !1362
  %103 = load i32, i32* %70, align 8, !dbg !1415, !tbaa !1416
  %104 = and i32 %103, 32, !dbg !1415
  %105 = icmp eq i32 %104, 0, !dbg !1419
  br i1 %105, label %110, label %106, !dbg !1420

106:                                              ; preds = %100
  %107 = tail call i32* @__errno_location() #25, !dbg !1421
  %108 = load i32, i32* %107, align 4, !dbg !1421, !tbaa !1319
  %109 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i32 5) #20, !dbg !1421
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %108, i8* %109) #20, !dbg !1421
  unreachable, !dbg !1421

110:                                              ; preds = %100
  %111 = icmp ult i64 %102, 8192, !dbg !1422
  %112 = and i32 %103, 16, !dbg !1423
  %113 = icmp eq i32 %112, 0, !dbg !1428
  %114 = and i1 %111, %113, !dbg !1429
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1426, metadata !DIExpression()) #20, !dbg !1430
  br i1 %114, label %73, label %125, !dbg !1429, !llvm.loop !1431

115:                                              ; preds = %138
  call void @llvm.dbg.value(metadata i32 %139, metadata !1280, metadata !DIExpression()) #20, !dbg !1361
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1426, metadata !DIExpression()) #20, !dbg !1433
  %116 = load i32, i32* %70, align 8, !dbg !1435, !tbaa !1416
  %117 = and i32 %116, 16, !dbg !1435
  %118 = icmp eq i32 %117, 0, !dbg !1436
  %119 = select i1 %118, i32 1, i32 2, !dbg !1437
  %120 = icmp ult i32 %139, %119, !dbg !1438
  br i1 %120, label %121, label %142, !dbg !1439, !llvm.loop !1440

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i32 %139, metadata !1280, metadata !DIExpression()) #20, !dbg !1361
  %122 = load i32, i32* %71, align 4, !dbg !1442
  %123 = or i32 %126, %122, !dbg !1443
  %124 = icmp eq i32 %123, 0, !dbg !1443
  br i1 %124, label %142, label %125, !dbg !1443, !llvm.loop !1440

125:                                              ; preds = %110, %121
  %126 = phi i32 [ %139, %121 ], [ 0, %110 ]
  call void @llvm.dbg.value(metadata i32 %126, metadata !1280, metadata !DIExpression()) #20, !dbg !1361
  call void @llvm.dbg.value(metadata i64 5120, metadata !1279, metadata !DIExpression()) #20, !dbg !1361
  store i64 5120, i64* %4, align 8, !dbg !1444, !tbaa !1378
  %127 = icmp eq i32 %126, 0, !dbg !1445
  %128 = select i1 %127, i64 %102, i64 0, !dbg !1446
  call void @llvm.dbg.value(metadata i64* %4, metadata !1279, metadata !DIExpression(DW_OP_deref)) #20, !dbg !1361
  %129 = call zeroext i1 @base32_decode_ctx(%struct.base32_decode_context* nonnull %3, i8* %67, i64 %128, i8* %68, i64* nonnull %4) #20, !dbg !1447
  call void @llvm.dbg.value(metadata i1 %129, metadata !1277, metadata !DIExpression()) #20, !dbg !1361
  %130 = load i64, i64* %4, align 8, !dbg !1448, !tbaa !1378
  call void @llvm.dbg.value(metadata i64 %130, metadata !1279, metadata !DIExpression()) #20, !dbg !1361
  %131 = call i64 @fwrite_unlocked(i8* %68, i64 1, i64 %130, %struct._IO_FILE* %63) #20, !dbg !1448
  %132 = load i64, i64* %4, align 8, !dbg !1449, !tbaa !1378
  call void @llvm.dbg.value(metadata i64 %132, metadata !1279, metadata !DIExpression()) #20, !dbg !1361
  %133 = icmp ult i64 %131, %132, !dbg !1450
  br i1 %133, label %134, label %138, !dbg !1451

134:                                              ; preds = %125
  %135 = tail call i32* @__errno_location() #25, !dbg !1452
  %136 = load i32, i32* %135, align 4, !dbg !1452, !tbaa !1319
  %137 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #20, !dbg !1452
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %136, i8* %137) #20, !dbg !1452
  unreachable, !dbg !1452

138:                                              ; preds = %125
  %139 = add nuw nsw i32 %126, 1, !dbg !1453
  call void @llvm.dbg.value(metadata i32 %139, metadata !1280, metadata !DIExpression()) #20, !dbg !1361
  br i1 %129, label %115, label %140, !dbg !1454

140:                                              ; preds = %138
  %141 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), i32 5) #20, !dbg !1455
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %141) #20, !dbg !1455
  unreachable, !dbg !1455

142:                                              ; preds = %121, %115
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %69) #20, !dbg !1457
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1426, metadata !DIExpression()) #20, !dbg !1458
  br i1 %118, label %72, label %143, !dbg !1460, !llvm.loop !1461

143:                                              ; preds = %142
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %66) #20, !dbg !1463
  br label %255, !dbg !1464

144:                                              ; preds = %60
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1465, metadata !DIExpression()) #20, !dbg !1478
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !1470, metadata !DIExpression()) #20, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %18, metadata !1471, metadata !DIExpression()) #20, !dbg !1478
  call void @llvm.dbg.value(metadata i64 0, metadata !1472, metadata !DIExpression()) #20, !dbg !1478
  %145 = tail call noalias i8* @xmalloc(i64 30720) #20, !dbg !1480
  call void @llvm.dbg.value(metadata i8* %145, metadata !1473, metadata !DIExpression()) #20, !dbg !1478
  %146 = tail call noalias i8* @xmalloc(i64 49152) #20, !dbg !1481
  call void @llvm.dbg.value(metadata i8* %146, metadata !1474, metadata !DIExpression()) #20, !dbg !1478
  %147 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %61, i64 0, i32 0, !dbg !1482
  %148 = icmp eq i64 %18, 0, !dbg !1484
  %149 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %63, i64 0, i32 5, !dbg !1517
  %150 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %63, i64 0, i32 6, !dbg !1517
  br label %151, !dbg !1527

151:                                              ; preds = %225, %144
  %152 = phi i64 [ 0, %144 ], [ %221, %225 ], !dbg !1528
  call void @llvm.dbg.value(metadata i64 0, metadata !1475, metadata !DIExpression()) #20, !dbg !1478
  br label %153, !dbg !1529

153:                                              ; preds = %162, %151
  %154 = phi i64 [ 0, %151 ], [ %158, %162 ], !dbg !1530
  call void @llvm.dbg.value(metadata i64 %154, metadata !1475, metadata !DIExpression()) #20, !dbg !1478
  %155 = getelementptr inbounds i8, i8* %145, i64 %154, !dbg !1531
  %156 = sub nuw nsw i64 30720, %154, !dbg !1531
  %157 = tail call i64 @fread_unlocked(i8* %155, i64 1, i64 %156, %struct._IO_FILE* %61) #20, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %157, metadata !1476, metadata !DIExpression()) #20, !dbg !1530
  %158 = add i64 %157, %154, !dbg !1533
  call void @llvm.dbg.value(metadata i64 %158, metadata !1475, metadata !DIExpression()) #20, !dbg !1478
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1426, metadata !DIExpression()) #20, !dbg !1482
  %159 = load i32, i32* %147, align 8, !dbg !1534, !tbaa !1416
  %160 = and i32 %159, 16, !dbg !1534
  %161 = icmp eq i32 %160, 0, !dbg !1535
  br i1 %161, label %162, label %167, !dbg !1536

162:                                              ; preds = %153
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1368, metadata !DIExpression()) #20, !dbg !1537
  %163 = and i32 %159, 32, !dbg !1539
  %164 = icmp eq i32 %163, 0, !dbg !1540
  %165 = icmp ult i64 %158, 30720, !dbg !1541
  %166 = and i1 %165, %164, !dbg !1542
  br i1 %166, label %153, label %167, !dbg !1542, !llvm.loop !1543

167:                                              ; preds = %162, %153
  %168 = icmp eq i64 %158, 0, !dbg !1545
  br i1 %168, label %220, label %169, !dbg !1546

169:                                              ; preds = %167
  %170 = add i64 %158, 4, !dbg !1547
  %171 = udiv i64 %170, 5, !dbg !1547
  %172 = shl i64 %171, 3, !dbg !1547
  tail call void @base32_encode(i8* %145, i64 %158, i8* %146, i64 %172) #20, !dbg !1548
  call void @llvm.dbg.value(metadata i8* %146, metadata !1490, metadata !DIExpression()) #20, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %172, metadata !1491, metadata !DIExpression()) #20, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %18, metadata !1492, metadata !DIExpression()) #20, !dbg !1549
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !1494, metadata !DIExpression()) #20, !dbg !1549
  br i1 %148, label %175, label %173, !dbg !1550

173:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i64 0, metadata !1495, metadata !DIExpression()) #20, !dbg !1549
  %174 = icmp eq i64 %172, 0, !dbg !1551
  br i1 %174, label %220, label %183, !dbg !1552

175:                                              ; preds = %169
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1553, !tbaa !1201
  %177 = tail call i64 @fwrite_unlocked(i8* %146, i64 1, i64 %172, %struct._IO_FILE* %176) #20, !dbg !1553
  %178 = icmp ult i64 %177, %172, !dbg !1554
  br i1 %178, label %179, label %220, !dbg !1555

179:                                              ; preds = %175
  %180 = tail call i32* @__errno_location() #25, !dbg !1556
  %181 = load i32, i32* %180, align 4, !dbg !1556, !tbaa !1319
  %182 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #20, !dbg !1556
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %181, i8* %182) #20, !dbg !1556
  unreachable, !dbg !1556

183:                                              ; preds = %173, %216
  %184 = phi i64 [ %217, %216 ], [ %152, %173 ], !dbg !1478
  %185 = phi i64 [ %218, %216 ], [ 0, %173 ]
  call void @llvm.dbg.value(metadata i64 %185, metadata !1495, metadata !DIExpression()) #20, !dbg !1549
  %186 = sub i64 %18, %184, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %186, metadata !1502, metadata !DIExpression()) #20, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %186, metadata !1506, metadata !DIExpression()) #20, !dbg !1558
  %187 = sub i64 %172, %185, !dbg !1559
  %188 = icmp ult i64 %186, %187, !dbg !1559
  %189 = select i1 %188, i64 %186, i64 %187, !dbg !1559
  call void @llvm.dbg.value(metadata i64 %189, metadata !1506, metadata !DIExpression()) #20, !dbg !1558
  %190 = icmp eq i64 %189, 0, !dbg !1560
  br i1 %190, label %191, label %204, !dbg !1561

191:                                              ; preds = %183
  call void @llvm.dbg.value(metadata i32 10, metadata !1522, metadata !DIExpression()) #20, !dbg !1517
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !1523, metadata !DIExpression()) #20, !dbg !1517
  %192 = load i8*, i8** %149, align 8, !dbg !1562, !tbaa !1563
  %193 = load i8*, i8** %150, align 8, !dbg !1562, !tbaa !1564
  %194 = icmp ult i8* %192, %193, !dbg !1562
  br i1 %194, label %195, label %197, !dbg !1562, !prof !1565, !misexpect !1566

195:                                              ; preds = %191
  %196 = getelementptr inbounds i8, i8* %192, i64 1, !dbg !1562
  store i8* %196, i8** %149, align 8, !dbg !1562, !tbaa !1563
  store i8 10, i8* %192, align 1, !dbg !1562, !tbaa !1389
  br label %216, !dbg !1567

197:                                              ; preds = %191
  %198 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %63, i32 10) #20, !dbg !1562
  %199 = icmp eq i32 %198, -1, !dbg !1568
  br i1 %199, label %200, label %216, !dbg !1567

200:                                              ; preds = %197
  %201 = tail call i32* @__errno_location() #25, !dbg !1569
  %202 = load i32, i32* %201, align 4, !dbg !1569, !tbaa !1319
  %203 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #20, !dbg !1569
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %202, i8* %203) #20, !dbg !1569
  unreachable, !dbg !1569

204:                                              ; preds = %183
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1570, !tbaa !1201
  %206 = getelementptr inbounds i8, i8* %146, i64 %185, !dbg !1570
  %207 = tail call i64 @fwrite_unlocked(i8* %206, i64 1, i64 %189, %struct._IO_FILE* %205) #20, !dbg !1571
  %208 = icmp ult i64 %207, %189, !dbg !1572
  br i1 %208, label %209, label %213, !dbg !1573

209:                                              ; preds = %204
  %210 = tail call i32* @__errno_location() #25, !dbg !1574
  %211 = load i32, i32* %210, align 4, !dbg !1574, !tbaa !1319
  %212 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #20, !dbg !1574
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %211, i8* %212) #20, !dbg !1574
  unreachable, !dbg !1574

213:                                              ; preds = %204
  %214 = add i64 %189, %184, !dbg !1575
  %215 = add i64 %189, %185, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %215, metadata !1495, metadata !DIExpression()) #20, !dbg !1549
  br label %216

216:                                              ; preds = %213, %197, %195
  %217 = phi i64 [ %214, %213 ], [ 0, %197 ], [ 0, %195 ], !dbg !1577
  %218 = phi i64 [ %215, %213 ], [ %185, %197 ], [ %185, %195 ], !dbg !1578
  call void @llvm.dbg.value(metadata i64 %218, metadata !1495, metadata !DIExpression()) #20, !dbg !1549
  %219 = icmp ult i64 %218, %172, !dbg !1551
  br i1 %219, label %183, label %220, !dbg !1552, !llvm.loop !1579

220:                                              ; preds = %216, %175, %173, %167
  %221 = phi i64 [ %152, %167 ], [ %152, %175 ], [ %152, %173 ], [ %217, %216 ], !dbg !1528
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1426, metadata !DIExpression()) #20, !dbg !1581
  %222 = load i32, i32* %147, align 8, !dbg !1583, !tbaa !1416
  %223 = and i32 %222, 16, !dbg !1583
  %224 = icmp eq i32 %223, 0, !dbg !1584
  br i1 %224, label %225, label %230, !dbg !1585

225:                                              ; preds = %220
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1368, metadata !DIExpression()) #20, !dbg !1586
  %226 = and i32 %222, 32, !dbg !1588
  %227 = icmp eq i32 %226, 0, !dbg !1589
  %228 = icmp eq i64 %158, 30720, !dbg !1590
  %229 = and i1 %228, %227, !dbg !1591
  br i1 %229, label %151, label %230, !dbg !1591, !llvm.loop !1592

230:                                              ; preds = %225, %220
  %231 = icmp ne i64 %18, 0, !dbg !1594
  call void @llvm.dbg.value(metadata i64 %221, metadata !1472, metadata !DIExpression()) #20, !dbg !1478
  %232 = icmp ne i64 %221, 0, !dbg !1596
  %233 = and i1 %231, %232, !dbg !1597
  br i1 %233, label %234, label %247, !dbg !1597

234:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i32 10, metadata !1522, metadata !DIExpression()) #20, !dbg !1598
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !1523, metadata !DIExpression()) #20, !dbg !1598
  %235 = load i8*, i8** %149, align 8, !dbg !1600, !tbaa !1563
  %236 = load i8*, i8** %150, align 8, !dbg !1600, !tbaa !1564
  %237 = icmp ult i8* %235, %236, !dbg !1600
  br i1 %237, label %238, label %240, !dbg !1600, !prof !1565, !misexpect !1566

238:                                              ; preds = %234
  %239 = getelementptr inbounds i8, i8* %235, i64 1, !dbg !1600
  store i8* %239, i8** %149, align 8, !dbg !1600, !tbaa !1563
  store i8 10, i8* %235, align 1, !dbg !1600, !tbaa !1389
  br label %247, !dbg !1601

240:                                              ; preds = %234
  %241 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %63, i32 10) #20, !dbg !1600
  %242 = icmp eq i32 %241, -1, !dbg !1602
  br i1 %242, label %243, label %247, !dbg !1601

243:                                              ; preds = %240
  %244 = tail call i32* @__errno_location() #25, !dbg !1603
  %245 = load i32, i32* %244, align 4, !dbg !1603, !tbaa !1319
  %246 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #20, !dbg !1603
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %245, i8* %246) #20, !dbg !1603
  unreachable, !dbg !1603

247:                                              ; preds = %240, %238, %230
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1368, metadata !DIExpression()) #20, !dbg !1604
  %248 = load i32, i32* %147, align 8, !dbg !1607, !tbaa !1416
  %249 = and i32 %248, 32, !dbg !1607
  %250 = icmp eq i32 %249, 0, !dbg !1608
  br i1 %250, label %255, label %251, !dbg !1609

251:                                              ; preds = %247
  %252 = tail call i32* @__errno_location() #25, !dbg !1610
  %253 = load i32, i32* %252, align 4, !dbg !1610, !tbaa !1319
  %254 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i32 5) #20, !dbg !1610
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %253, i8* %254) #20, !dbg !1610
  unreachable, !dbg !1610

255:                                              ; preds = %247, %143
  %256 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %61) #20, !dbg !1611
  %257 = icmp eq i32 %256, -1, !dbg !1613
  br i1 %257, label %258, label %267, !dbg !1614

258:                                              ; preds = %255
  %259 = call i32 @strcmp(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #22, !dbg !1615
  %260 = icmp eq i32 %259, 0, !dbg !1615
  %261 = tail call i32* @__errno_location() #25, !dbg !1618
  %262 = load i32, i32* %261, align 4, !dbg !1618, !tbaa !1319
  br i1 %260, label %263, label %265, !dbg !1619

263:                                              ; preds = %258
  %264 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 5) #20, !dbg !1620
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %262, i8* %264) #20, !dbg !1620
  unreachable, !dbg !1620

265:                                              ; preds = %258
  %266 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %48) #20, !dbg !1621
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %262, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %266) #20, !dbg !1621
  unreachable, !dbg !1621

267:                                              ; preds = %255
  ret i32 0, !dbg !1622
}

; Function Attrs: nounwind
declare !dbg !109 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !112 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !115 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !122 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !149 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare i64 @fread_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare !dbg !187 i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local void @base32_encode(i8* noalias nocapture readonly %0, i64 %1, i8* noalias nocapture %2, i64 %3) local_unnamed_addr #10 !dbg !207 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !226, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i64 %1, metadata !227, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i8* %2, metadata !228, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i64 %3, metadata !229, metadata !DIExpression()), !dbg !1623
  %5 = icmp ne i64 %1, 0, !dbg !1624
  %6 = icmp ne i64 %3, 0, !dbg !1625
  %7 = and i1 %5, %6, !dbg !1625
  br i1 %7, label %8, label %158, !dbg !1626

8:                                                ; preds = %4, %151
  %9 = phi i64 [ %149, %151 ], [ %3, %4 ]
  %10 = phi i8* [ %152, %151 ], [ %2, %4 ]
  %11 = phi i64 [ %153, %151 ], [ %1, %4 ]
  %12 = phi i8* [ %157, %151 ], [ %0, %4 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !229, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i8* %10, metadata !228, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i64 %11, metadata !227, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i8* %12, metadata !226, metadata !DIExpression()), !dbg !1623
  %13 = load i8, i8* %12, align 1, !dbg !1627, !tbaa !1389
  %14 = lshr i8 %13, 3, !dbg !1629
  %15 = zext i8 %14 to i64, !dbg !1630
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %15, !dbg !1630
  %17 = load i8, i8* %16, align 1, !dbg !1630, !tbaa !1389
  %18 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1631
  call void @llvm.dbg.value(metadata i8* %18, metadata !228, metadata !DIExpression()), !dbg !1623
  store i8 %17, i8* %10, align 1, !dbg !1632, !tbaa !1389
  call void @llvm.dbg.value(metadata i64 %9, metadata !229, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1623
  %19 = icmp eq i64 %9, 1, !dbg !1633
  br i1 %19, label %162, label %20, !dbg !1635

20:                                               ; preds = %8
  %21 = load i8, i8* %12, align 1, !dbg !1636, !tbaa !1389
  %22 = zext i8 %21 to i64, !dbg !1637
  %23 = shl nuw nsw i64 %22, 2, !dbg !1638
  call void @llvm.dbg.value(metadata i64 %11, metadata !227, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1623
  %24 = icmp ne i64 %11, 1, !dbg !1639
  br i1 %24, label %25, label %30, !dbg !1639

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1640
  %27 = load i8, i8* %26, align 1, !dbg !1640, !tbaa !1389
  %28 = lshr i8 %27, 6, !dbg !1641
  %29 = zext i8 %28 to i64, !dbg !1641
  br label %30, !dbg !1639

30:                                               ; preds = %20, %25
  %31 = phi i64 [ %29, %25 ], [ 0, %20 ], !dbg !1639
  %32 = add nuw nsw i64 %31, %23, !dbg !1642
  %33 = and i64 %32, 31, !dbg !1643
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %33, !dbg !1644
  %35 = load i8, i8* %34, align 1, !dbg !1644, !tbaa !1389
  %36 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !1645
  call void @llvm.dbg.value(metadata i8* %36, metadata !228, metadata !DIExpression()), !dbg !1623
  store i8 %35, i8* %18, align 1, !dbg !1646, !tbaa !1389
  call void @llvm.dbg.value(metadata i64 %9, metadata !229, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1623
  %37 = icmp eq i64 %9, 2, !dbg !1647
  br i1 %37, label %162, label %38, !dbg !1649

38:                                               ; preds = %30
  br i1 %24, label %39, label %47, !dbg !1650

39:                                               ; preds = %38
  %40 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1651
  %41 = load i8, i8* %40, align 1, !dbg !1651, !tbaa !1389
  %42 = lshr i8 %41, 1, !dbg !1652
  %43 = and i8 %42, 31, !dbg !1653
  %44 = zext i8 %43 to i64, !dbg !1654
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %44, !dbg !1654
  %46 = load i8, i8* %45, align 1, !dbg !1654, !tbaa !1389
  br label %47, !dbg !1650

47:                                               ; preds = %38, %39
  %48 = phi i8 [ %46, %39 ], [ 61, %38 ], !dbg !1650
  %49 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1655
  call void @llvm.dbg.value(metadata i8* %49, metadata !228, metadata !DIExpression()), !dbg !1623
  store i8 %48, i8* %36, align 1, !dbg !1656, !tbaa !1389
  call void @llvm.dbg.value(metadata i64 %9, metadata !229, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1623
  %50 = icmp eq i64 %9, 3, !dbg !1657
  br i1 %50, label %162, label %51, !dbg !1659

51:                                               ; preds = %47
  br i1 %24, label %52, label %70, !dbg !1660

52:                                               ; preds = %51
  %53 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1661
  %54 = load i8, i8* %53, align 1, !dbg !1661, !tbaa !1389
  %55 = zext i8 %54 to i64, !dbg !1662
  %56 = shl nuw nsw i64 %55, 4, !dbg !1663
  %57 = add i64 %11, -2, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %57, metadata !227, metadata !DIExpression()), !dbg !1623
  %58 = icmp eq i64 %57, 0, !dbg !1664
  br i1 %58, label %64, label %59, !dbg !1664

59:                                               ; preds = %52
  %60 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1665
  %61 = load i8, i8* %60, align 1, !dbg !1665, !tbaa !1389
  %62 = lshr i8 %61, 4, !dbg !1666
  %63 = zext i8 %62 to i64, !dbg !1666
  br label %64, !dbg !1664

64:                                               ; preds = %52, %59
  %65 = phi i64 [ %63, %59 ], [ 0, %52 ], !dbg !1664
  %66 = add nuw nsw i64 %65, %56, !dbg !1667
  %67 = and i64 %66, 31, !dbg !1668
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %67, !dbg !1669
  %69 = load i8, i8* %68, align 1, !dbg !1669, !tbaa !1389
  br label %70, !dbg !1660

70:                                               ; preds = %51, %64
  %71 = phi i64 [ %57, %64 ], [ 0, %51 ], !dbg !1670
  %72 = phi i8 [ %69, %64 ], [ 61, %51 ], !dbg !1660
  call void @llvm.dbg.value(metadata i64 %71, metadata !227, metadata !DIExpression()), !dbg !1623
  %73 = getelementptr inbounds i8, i8* %10, i64 4, !dbg !1671
  call void @llvm.dbg.value(metadata i8* %73, metadata !228, metadata !DIExpression()), !dbg !1623
  store i8 %72, i8* %49, align 1, !dbg !1672, !tbaa !1389
  call void @llvm.dbg.value(metadata i64 %9, metadata !229, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !1623
  %74 = icmp eq i64 %9, 4, !dbg !1673
  br i1 %74, label %162, label %75, !dbg !1675

75:                                               ; preds = %70
  %76 = icmp eq i64 %71, 0, !dbg !1676
  br i1 %76, label %95, label %77, !dbg !1676

77:                                               ; preds = %75
  %78 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1677
  %79 = load i8, i8* %78, align 1, !dbg !1677, !tbaa !1389
  %80 = zext i8 %79 to i64, !dbg !1678
  %81 = shl nuw nsw i64 %80, 1, !dbg !1679
  %82 = add i64 %71, -1, !dbg !1680
  call void @llvm.dbg.value(metadata i64 %82, metadata !227, metadata !DIExpression()), !dbg !1623
  %83 = icmp eq i64 %82, 0, !dbg !1680
  br i1 %83, label %89, label %84, !dbg !1680

84:                                               ; preds = %77
  %85 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1681
  %86 = load i8, i8* %85, align 1, !dbg !1681, !tbaa !1389
  %87 = lshr i8 %86, 7, !dbg !1682
  %88 = zext i8 %87 to i64, !dbg !1682
  br label %89, !dbg !1680

89:                                               ; preds = %77, %84
  %90 = phi i64 [ %88, %84 ], [ 0, %77 ], !dbg !1680
  %91 = add nuw nsw i64 %90, %81, !dbg !1683
  %92 = and i64 %91, 31, !dbg !1684
  %93 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %92, !dbg !1685
  %94 = load i8, i8* %93, align 1, !dbg !1685, !tbaa !1389
  br label %95, !dbg !1676

95:                                               ; preds = %75, %89
  %96 = phi i64 [ %82, %89 ], [ 0, %75 ], !dbg !1670
  %97 = phi i8 [ %94, %89 ], [ 61, %75 ], !dbg !1676
  call void @llvm.dbg.value(metadata i64 %96, metadata !227, metadata !DIExpression()), !dbg !1623
  %98 = getelementptr inbounds i8, i8* %10, i64 5, !dbg !1686
  call void @llvm.dbg.value(metadata i8* %98, metadata !228, metadata !DIExpression()), !dbg !1623
  store i8 %97, i8* %73, align 1, !dbg !1687, !tbaa !1389
  call void @llvm.dbg.value(metadata i64 %9, metadata !229, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value)), !dbg !1623
  %99 = icmp eq i64 %9, 5, !dbg !1688
  br i1 %99, label %162, label %100, !dbg !1690

100:                                              ; preds = %95
  %101 = icmp ne i64 %96, 0, !dbg !1691
  br i1 %101, label %102, label %110, !dbg !1691

102:                                              ; preds = %100
  %103 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1692
  %104 = load i8, i8* %103, align 1, !dbg !1692, !tbaa !1389
  %105 = lshr i8 %104, 2, !dbg !1693
  %106 = and i8 %105, 31, !dbg !1694
  %107 = zext i8 %106 to i64, !dbg !1695
  %108 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %107, !dbg !1695
  %109 = load i8, i8* %108, align 1, !dbg !1695, !tbaa !1389
  br label %110, !dbg !1691

110:                                              ; preds = %100, %102
  %111 = phi i8 [ %109, %102 ], [ 61, %100 ], !dbg !1691
  %112 = getelementptr inbounds i8, i8* %10, i64 6, !dbg !1696
  call void @llvm.dbg.value(metadata i8* %112, metadata !228, metadata !DIExpression()), !dbg !1623
  store i8 %111, i8* %98, align 1, !dbg !1697, !tbaa !1389
  call void @llvm.dbg.value(metadata i64 %9, metadata !229, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !1623
  %113 = icmp eq i64 %9, 6, !dbg !1698
  br i1 %113, label %162, label %114, !dbg !1700

114:                                              ; preds = %110
  br i1 %101, label %115, label %133, !dbg !1701

115:                                              ; preds = %114
  %116 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1702
  %117 = load i8, i8* %116, align 1, !dbg !1702, !tbaa !1389
  %118 = zext i8 %117 to i64, !dbg !1703
  %119 = shl nuw nsw i64 %118, 3, !dbg !1704
  %120 = add i64 %96, -1, !dbg !1705
  call void @llvm.dbg.value(metadata i64 %120, metadata !227, metadata !DIExpression()), !dbg !1623
  %121 = icmp eq i64 %120, 0, !dbg !1705
  br i1 %121, label %127, label %122, !dbg !1705

122:                                              ; preds = %115
  %123 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1706
  %124 = load i8, i8* %123, align 1, !dbg !1706, !tbaa !1389
  %125 = lshr i8 %124, 5, !dbg !1707
  %126 = zext i8 %125 to i64, !dbg !1707
  br label %127, !dbg !1705

127:                                              ; preds = %115, %122
  %128 = phi i64 [ %126, %122 ], [ 0, %115 ], !dbg !1705
  %129 = add nuw nsw i64 %128, %119, !dbg !1708
  %130 = and i64 %129, 31, !dbg !1709
  %131 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %130, !dbg !1710
  %132 = load i8, i8* %131, align 1, !dbg !1710, !tbaa !1389
  br label %133, !dbg !1701

133:                                              ; preds = %114, %127
  %134 = phi i64 [ %120, %127 ], [ 0, %114 ], !dbg !1670
  %135 = phi i8 [ %132, %127 ], [ 61, %114 ], !dbg !1701
  call void @llvm.dbg.value(metadata i64 %134, metadata !227, metadata !DIExpression()), !dbg !1623
  %136 = getelementptr inbounds i8, i8* %10, i64 7, !dbg !1711
  call void @llvm.dbg.value(metadata i8* %136, metadata !228, metadata !DIExpression()), !dbg !1623
  store i8 %135, i8* %112, align 1, !dbg !1712, !tbaa !1389
  call void @llvm.dbg.value(metadata i64 %9, metadata !229, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !1623
  %137 = icmp eq i64 %9, 7, !dbg !1713
  br i1 %137, label %162, label %138, !dbg !1715

138:                                              ; preds = %133
  %139 = icmp ne i64 %134, 0, !dbg !1716
  br i1 %139, label %140, label %147, !dbg !1716

140:                                              ; preds = %138
  %141 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1717
  %142 = load i8, i8* %141, align 1, !dbg !1717, !tbaa !1389
  %143 = and i8 %142, 31, !dbg !1718
  %144 = zext i8 %143 to i64, !dbg !1719
  %145 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %144, !dbg !1719
  %146 = load i8, i8* %145, align 1, !dbg !1719, !tbaa !1389
  br label %147, !dbg !1716

147:                                              ; preds = %138, %140
  %148 = phi i8 [ %146, %140 ], [ 61, %138 ], !dbg !1716
  call void @llvm.dbg.value(metadata i8* %10, metadata !228, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1623
  store i8 %148, i8* %136, align 1, !dbg !1720, !tbaa !1389
  %149 = add i64 %9, -8, !dbg !1721
  call void @llvm.dbg.value(metadata i64 %149, metadata !229, metadata !DIExpression()), !dbg !1623
  %150 = icmp eq i64 %149, 0, !dbg !1721
  br i1 %150, label %162, label %151, !dbg !1723

151:                                              ; preds = %147
  %152 = getelementptr inbounds i8, i8* %10, i64 8, !dbg !1724
  call void @llvm.dbg.value(metadata i8* %152, metadata !228, metadata !DIExpression()), !dbg !1623
  %153 = add i64 %134, -1, !dbg !1725
  call void @llvm.dbg.value(metadata i64 undef, metadata !227, metadata !DIExpression()), !dbg !1623
  %154 = icmp eq i64 %153, 0, !dbg !1727
  %155 = xor i1 %139, true, !dbg !1727
  %156 = or i1 %154, %155, !dbg !1727
  %157 = getelementptr inbounds i8, i8* %12, i64 5, !dbg !1729
  call void @llvm.dbg.value(metadata i64 %149, metadata !229, metadata !DIExpression()), !dbg !1623
  br i1 %156, label %160, label %8, !dbg !1626, !llvm.loop !1730

158:                                              ; preds = %4
  call void @llvm.dbg.value(metadata i8* %2, metadata !228, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i64 %3, metadata !229, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i64 %3, metadata !229, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i8* %2, metadata !228, metadata !DIExpression()), !dbg !1623
  %159 = icmp eq i64 %3, 0, !dbg !1732
  br i1 %159, label %162, label %160, !dbg !1734

160:                                              ; preds = %151, %158
  %161 = phi i8* [ %2, %158 ], [ %152, %151 ]
  store i8 0, i8* %161, align 1, !dbg !1735, !tbaa !1389
  br label %162, !dbg !1736

162:                                              ; preds = %8, %30, %47, %70, %95, %110, %133, %147, %158, %160
  ret void, !dbg !1737
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i64 @base32_encode_alloc(i8* nocapture readonly %0, i64 %1, i8** nocapture %2) local_unnamed_addr #11 !dbg !1738 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1742, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i64 %1, metadata !1743, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8** %2, metadata !1744, metadata !DIExpression()), !dbg !1746
  %4 = add i64 %1, 4, !dbg !1747
  %5 = udiv i64 %4, 5, !dbg !1747
  %6 = shl i64 %5, 3, !dbg !1747
  %7 = or i64 %6, 1, !dbg !1748
  call void @llvm.dbg.value(metadata i64 %7, metadata !1745, metadata !DIExpression()), !dbg !1746
  %8 = icmp ult i64 %7, %1, !dbg !1749
  br i1 %8, label %9, label %10, !dbg !1751

9:                                                ; preds = %3
  store i8* null, i8** %2, align 8, !dbg !1752, !tbaa !1201
  br label %14, !dbg !1754

10:                                               ; preds = %3
  %11 = tail call noalias i8* @malloc(i64 %7) #20, !dbg !1755
  store i8* %11, i8** %2, align 8, !dbg !1756, !tbaa !1201
  %12 = icmp eq i8* %11, null, !dbg !1757
  br i1 %12, label %14, label %13, !dbg !1759

13:                                               ; preds = %10
  tail call void @base32_encode(i8* %0, i64 %1, i8* nonnull %11, i64 %7), !dbg !1760
  br label %14, !dbg !1761

14:                                               ; preds = %10, %13, %9
  %15 = phi i64 [ 0, %9 ], [ %6, %13 ], [ %7, %10 ], !dbg !1746
  ret i64 %15, !dbg !1762
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: norecurse nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @isbase32(i8 signext %0) local_unnamed_addr #12 !dbg !1763 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1765, metadata !DIExpression()), !dbg !1766
  %2 = zext i8 %0 to i64, !dbg !1767
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %2, !dbg !1767
  %4 = load i8, i8* %3, align 1, !dbg !1767, !tbaa !1389
  %5 = icmp sgt i8 %4, -1, !dbg !1768
  ret i1 %5, !dbg !1769
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @base32_decode_ctx_init(%struct.base32_decode_context* nocapture %0) local_unnamed_addr #13 !dbg !1770 {
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, metadata !1779, metadata !DIExpression()), !dbg !1780
  %2 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 0, !dbg !1781
  store i32 0, i32* %2, align 4, !dbg !1782, !tbaa !1783
  ret void, !dbg !1785
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @base32_decode_ctx(%struct.base32_decode_context* %0, i8* noalias %1, i64 %2, i8* noalias %3, i64* nocapture %4) local_unnamed_addr #8 !dbg !1786 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, metadata !1790, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8* %1, metadata !1791, metadata !DIExpression()), !dbg !1804
  %8 = ptrtoint i8* %1 to i64
  call void @llvm.dbg.value(metadata i64 %2, metadata !1792, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8* %3, metadata !1793, metadata !DIExpression()), !dbg !1804
  store i8* %3, i8** %6, align 8, !tbaa !1201
  call void @llvm.dbg.value(metadata i64* %4, metadata !1794, metadata !DIExpression()), !dbg !1804
  %9 = bitcast i64* %7 to i8*, !dbg !1805
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #20, !dbg !1805
  %10 = load i64, i64* %4, align 8, !dbg !1806, !tbaa !1378
  call void @llvm.dbg.value(metadata i64 %10, metadata !1795, metadata !DIExpression()), !dbg !1804
  store i64 %10, i64* %7, align 8, !dbg !1807, !tbaa !1378
  %11 = icmp ne %struct.base32_decode_context* %0, null, !dbg !1808
  call void @llvm.dbg.value(metadata i1 %11, metadata !1796, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8 0, metadata !1797, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i32 0, metadata !1798, metadata !DIExpression()), !dbg !1804
  br i1 %11, label %12, label %17, !dbg !1809

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 0, !dbg !1810
  %14 = load i32, i32* %13, align 4, !dbg !1810, !tbaa !1783
  call void @llvm.dbg.value(metadata i32 %14, metadata !1798, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %2, metadata !1792, metadata !DIExpression()), !dbg !1804
  %15 = icmp eq i64 %2, 0, !dbg !1813
  call void @llvm.dbg.value(metadata i1 %15, metadata !1797, metadata !DIExpression()), !dbg !1804
  %16 = icmp ne i32 %14, 0, !dbg !1814
  br label %17, !dbg !1814

17:                                               ; preds = %12, %5
  %18 = phi i1 [ %16, %12 ], [ false, %5 ]
  %19 = phi i1 [ %15, %12 ], [ false, %5 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1797, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i32 undef, metadata !1798, metadata !DIExpression()), !dbg !1804
  %20 = or i1 %18, %19, !dbg !1815
  %21 = xor i1 %11, true, !dbg !1817
  %22 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 0, !dbg !1819
  %23 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 1, i64 0, !dbg !1839
  br label %24, !dbg !1840

24:                                               ; preds = %118, %17
  %25 = phi i64 [ %10, %17 ], [ %121, %118 ], !dbg !1841
  %26 = phi i64 [ %8, %17 ], [ %119, %118 ]
  %27 = phi i64 [ %2, %17 ], [ %120, %118 ]
  call void @llvm.dbg.value(metadata i64 %25, metadata !1795, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %25, metadata !1799, metadata !DIExpression()), !dbg !1842
  br i1 %20, label %40, label %28, !dbg !1843

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 %25, metadata !1795, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %25, metadata !1799, metadata !DIExpression()), !dbg !1842
  %29 = inttoptr i64 %26 to i8*, !dbg !1844
  call void @llvm.dbg.value(metadata i8* %29, metadata !1791, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %27, metadata !1792, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8** %6, metadata !1793, metadata !DIExpression(DW_OP_deref)), !dbg !1804
  call void @llvm.dbg.value(metadata i64* %7, metadata !1795, metadata !DIExpression(DW_OP_deref)), !dbg !1804
  %30 = call fastcc zeroext i1 @decode_8(i8* %29, i64 %27, i8** nonnull %6, i64* nonnull %7), !dbg !1848
  br i1 %30, label %31, label %40, !dbg !1849

31:                                               ; preds = %28, %31
  %32 = phi i8* [ %34, %31 ], [ %29, %28 ]
  %33 = phi i64 [ %35, %31 ], [ %27, %28 ]
  call void @llvm.dbg.value(metadata i64 %33, metadata !1792, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8* %32, metadata !1791, metadata !DIExpression()), !dbg !1804
  %34 = getelementptr inbounds i8, i8* %32, i64 8, !dbg !1850
  call void @llvm.dbg.value(metadata i8* %34, metadata !1791, metadata !DIExpression()), !dbg !1804
  %35 = add i64 %33, -8, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %35, metadata !1792, metadata !DIExpression()), !dbg !1804
  %36 = load i64, i64* %7, align 8, !dbg !1852, !tbaa !1378
  call void @llvm.dbg.value(metadata i64 %36, metadata !1795, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %36, metadata !1799, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8* %34, metadata !1791, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8** %6, metadata !1793, metadata !DIExpression(DW_OP_deref)), !dbg !1804
  call void @llvm.dbg.value(metadata i64* %7, metadata !1795, metadata !DIExpression(DW_OP_deref)), !dbg !1804
  %37 = call fastcc zeroext i1 @decode_8(i8* nonnull %34, i64 %35, i8** nonnull %6, i64* nonnull %7), !dbg !1848
  br i1 %37, label %31, label %38, !dbg !1849, !llvm.loop !1853

38:                                               ; preds = %31
  %39 = ptrtoint i8* %34 to i64, !dbg !1850
  br label %40, !dbg !1849

40:                                               ; preds = %28, %38, %24
  %41 = phi i64 [ %26, %24 ], [ %39, %38 ], [ %26, %28 ]
  %42 = phi i64 [ %27, %24 ], [ %35, %38 ], [ %27, %28 ]
  %43 = phi i64 [ %25, %24 ], [ %36, %38 ], [ %25, %28 ], !dbg !1842
  call void @llvm.dbg.value(metadata i64 %43, metadata !1799, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %42, metadata !1792, metadata !DIExpression()), !dbg !1804
  %44 = icmp eq i64 %42, 0, !dbg !1856
  %45 = xor i1 %44, true, !dbg !1858
  %46 = or i1 %19, %45, !dbg !1858
  br i1 %46, label %47, label %122, !dbg !1858

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 %42, metadata !1792, metadata !DIExpression()), !dbg !1804
  %48 = inttoptr i64 %41 to i8*, !dbg !1842
  br i1 %44, label %57, label %49, !dbg !1859

49:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i8* %48, metadata !1791, metadata !DIExpression()), !dbg !1804
  %50 = load i8, i8* %48, align 1, !dbg !1860, !tbaa !1389
  %51 = icmp ne i8 %50, 10, !dbg !1861
  %52 = or i1 %51, %21, !dbg !1862
  br i1 %52, label %57, label %53, !dbg !1862

53:                                               ; preds = %49
  %54 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !1863
  call void @llvm.dbg.value(metadata i8* %54, metadata !1791, metadata !DIExpression()), !dbg !1804
  %55 = ptrtoint i8* %54 to i64, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %42, metadata !1792, metadata !DIExpression()), !dbg !1804
  %56 = add i64 %42, -1, !dbg !1865
  call void @llvm.dbg.value(metadata i64 %56, metadata !1792, metadata !DIExpression()), !dbg !1804
  br label %118, !dbg !1866, !llvm.loop !1867

57:                                               ; preds = %47, %49
  %58 = load i64, i64* %7, align 8, !dbg !1869, !tbaa !1378
  call void @llvm.dbg.value(metadata i64 %58, metadata !1795, metadata !DIExpression()), !dbg !1804
  %59 = load i8*, i8** %6, align 8, !dbg !1870, !tbaa !1201
  call void @llvm.dbg.value(metadata i8* %59, metadata !1793, metadata !DIExpression()), !dbg !1804
  %60 = sub i64 %58, %43, !dbg !1870
  %61 = getelementptr inbounds i8, i8* %59, i64 %60, !dbg !1870
  call void @llvm.dbg.value(metadata i8* %61, metadata !1793, metadata !DIExpression()), !dbg !1804
  store i8* %61, i8** %6, align 8, !dbg !1870, !tbaa !1201
  call void @llvm.dbg.value(metadata i64 %43, metadata !1795, metadata !DIExpression()), !dbg !1804
  store i64 %43, i64* %7, align 8, !dbg !1871, !tbaa !1378
  call void @llvm.dbg.value(metadata i8* %48, metadata !1791, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %42, metadata !1792, metadata !DIExpression()), !dbg !1804
  %62 = getelementptr inbounds i8, i8* %48, i64 %42, !dbg !1872
  call void @llvm.dbg.value(metadata i8* %62, metadata !1801, metadata !DIExpression()), !dbg !1873
  br i1 %11, label %63, label %101, !dbg !1874

63:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8** undef, metadata !1791, metadata !DIExpression(DW_OP_deref)), !dbg !1804
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, metadata !1826, metadata !DIExpression()) #20, !dbg !1875
  call void @llvm.dbg.value(metadata i8** undef, metadata !1827, metadata !DIExpression()) #20, !dbg !1875
  call void @llvm.dbg.value(metadata i8* %62, metadata !1828, metadata !DIExpression()) #20, !dbg !1875
  %64 = load i32, i32* %22, align 4, !dbg !1876, !tbaa !1783, !noalias !1877
  switch i32 %64, label %76 [
    i32 8, label %65
    i32 0, label %66
  ], !dbg !1880

65:                                               ; preds = %63
  store i32 0, i32* %22, align 4, !dbg !1881, !tbaa !1783, !noalias !1877
  br label %66, !dbg !1882

66:                                               ; preds = %65, %63
  call void @llvm.dbg.value(metadata i8* %48, metadata !1830, metadata !DIExpression()) #20, !dbg !1883
  %67 = ptrtoint i8* %62 to i64, !dbg !1884
  %68 = sub i64 %67, %41, !dbg !1884
  %69 = icmp sgt i64 %68, 7, !dbg !1886
  br i1 %69, label %70, label %76, !dbg !1887

70:                                               ; preds = %66
  %71 = tail call i8* @memchr(i8* nonnull dereferenceable(8) %48, i32 10, i64 8) #22, !dbg !1888
  %72 = icmp eq i8* %71, null, !dbg !1889
  br i1 %72, label %73, label %76, !dbg !1890

73:                                               ; preds = %70
  %74 = getelementptr inbounds i8, i8* %48, i64 8, !dbg !1891
  %75 = ptrtoint i8* %74 to i64, !dbg !1891
  call void @llvm.dbg.value(metadata i8* %104, metadata !1803, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %103, metadata !1792, metadata !DIExpression()), !dbg !1804
  br label %110, !dbg !1893

76:                                               ; preds = %63, %70, %66
  %77 = phi i32 [ 0, %70 ], [ 0, %66 ], [ %64, %63 ]
  call void @llvm.dbg.value(metadata i8* %48, metadata !1833, metadata !DIExpression()) #20, !dbg !1839
  %78 = icmp sgt i64 %42, 0, !dbg !1895
  br i1 %78, label %79, label %96, !dbg !1896

79:                                               ; preds = %76, %87
  %80 = phi i32 [ %88, %87 ], [ %77, %76 ]
  %81 = phi i8* [ %84, %87 ], [ %48, %76 ]
  br label %82, !dbg !1897

82:                                               ; preds = %79, %94
  %83 = phi i8* [ %84, %94 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8* %83, metadata !1833, metadata !DIExpression()) #20, !dbg !1839
  %84 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !1898
  call void @llvm.dbg.value(metadata i8* %84, metadata !1833, metadata !DIExpression()) #20, !dbg !1839
  %85 = load i8, i8* %83, align 1, !dbg !1899, !tbaa !1389
  call void @llvm.dbg.value(metadata i8 %85, metadata !1835, metadata !DIExpression()) #20, !dbg !1900
  %86 = icmp eq i8 %85, 10, !dbg !1901
  br i1 %86, label %94, label %87, !dbg !1897

87:                                               ; preds = %82
  %88 = add i32 %80, 1, !dbg !1903
  store i32 %88, i32* %22, align 4, !dbg !1903, !tbaa !1783, !noalias !1877
  %89 = zext i32 %80 to i64, !dbg !1905
  %90 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 1, i64 %89, !dbg !1905
  store i8 %85, i8* %90, align 1, !dbg !1906, !tbaa !1389, !noalias !1877
  %91 = icmp ne i32 %88, 8, !dbg !1907
  %92 = icmp ult i8* %84, %62, !dbg !1895
  %93 = and i1 %91, %92, !dbg !1909
  call void @llvm.dbg.value(metadata i8* %84, metadata !1833, metadata !DIExpression()) #20, !dbg !1839
  br i1 %93, label %79, label %96, !dbg !1909

94:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i8* %84, metadata !1833, metadata !DIExpression()) #20, !dbg !1839
  %95 = icmp ult i8* %84, %62, !dbg !1895
  br i1 %95, label %82, label %96, !dbg !1896

96:                                               ; preds = %94, %87, %76
  %97 = phi i32 [ %77, %76 ], [ %80, %94 ], [ %88, %87 ], !dbg !1910
  %98 = phi i8* [ %48, %76 ], [ %84, %87 ], [ %84, %94 ], !dbg !1839
  call void @llvm.dbg.value(metadata i8* %98, metadata !1833, metadata !DIExpression()) #20, !dbg !1839
  %99 = ptrtoint i8* %98 to i64, !dbg !1911
  %100 = zext i32 %97 to i64, !dbg !1912
  br label %101

101:                                              ; preds = %96, %57
  %102 = phi i64 [ %41, %57 ], [ %99, %96 ]
  %103 = phi i64 [ %42, %57 ], [ %100, %96 ]
  %104 = phi i8* [ %48, %57 ], [ %23, %96 ], !dbg !1913
  call void @llvm.dbg.value(metadata i8* %104, metadata !1803, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %103, metadata !1792, metadata !DIExpression()), !dbg !1804
  %105 = icmp eq i64 %103, 0, !dbg !1914
  br i1 %105, label %122, label %106, !dbg !1915

106:                                              ; preds = %101
  %107 = icmp ugt i64 %103, 7, !dbg !1916
  %108 = or i1 %19, %107, !dbg !1893
  %109 = or i1 %108, %21, !dbg !1893
  br i1 %109, label %110, label %122, !dbg !1893

110:                                              ; preds = %73, %106
  %111 = phi i64 [ %75, %73 ], [ %102, %106 ]
  %112 = phi i64 [ 8, %73 ], [ %103, %106 ]
  %113 = phi i8* [ %48, %73 ], [ %104, %106 ]
  call void @llvm.dbg.value(metadata i64 %103, metadata !1792, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8** %6, metadata !1793, metadata !DIExpression(DW_OP_deref)), !dbg !1804
  call void @llvm.dbg.value(metadata i64* %7, metadata !1795, metadata !DIExpression(DW_OP_deref)), !dbg !1804
  %114 = call fastcc zeroext i1 @decode_8(i8* %113, i64 %112, i8** nonnull %6, i64* nonnull %7), !dbg !1917
  br i1 %114, label %115, label %122, !dbg !1919

115:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i8* undef, metadata !1791, metadata !DIExpression()), !dbg !1804
  %116 = ptrtoint i8* %62 to i64, !dbg !1920
  %117 = sub i64 %116, %111, !dbg !1920
  call void @llvm.dbg.value(metadata i64 %117, metadata !1792, metadata !DIExpression()), !dbg !1804
  br label %118, !dbg !1921

118:                                              ; preds = %53, %115
  %119 = phi i64 [ %55, %53 ], [ %111, %115 ]
  %120 = phi i64 [ %56, %53 ], [ %117, %115 ]
  %121 = load i64, i64* %7, align 8, !dbg !1841, !tbaa !1378
  br label %24

122:                                              ; preds = %101, %106, %110, %40
  %123 = phi i64 [ %42, %40 ], [ 0, %101 ], [ 0, %106 ], [ %112, %110 ]
  %124 = load i64, i64* %7, align 8, !dbg !1922, !tbaa !1378
  call void @llvm.dbg.value(metadata i64 %124, metadata !1795, metadata !DIExpression()), !dbg !1804
  %125 = load i64, i64* %4, align 8, !dbg !1923, !tbaa !1378
  %126 = sub i64 %125, %124, !dbg !1923
  store i64 %126, i64* %4, align 8, !dbg !1923, !tbaa !1378
  call void @llvm.dbg.value(metadata i64 %120, metadata !1792, metadata !DIExpression()), !dbg !1804
  %127 = icmp eq i64 %123, 0, !dbg !1924
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #20, !dbg !1925
  ret i1 %127, !dbg !1926
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define internal fastcc zeroext i1 @decode_8(i8* noalias nocapture readonly %0, i64 %1, i8** nocapture %2, i64* nocapture %3) unnamed_addr #10 !dbg !1927 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1932, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 %1, metadata !1933, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8** %2, metadata !1934, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64* %3, metadata !1935, metadata !DIExpression()), !dbg !1937
  %5 = load i8*, i8** %2, align 8, !dbg !1938, !tbaa !1201
  call void @llvm.dbg.value(metadata i8* %5, metadata !1936, metadata !DIExpression()), !dbg !1937
  %6 = icmp ult i64 %1, 8, !dbg !1939
  br i1 %6, label %180, label %7, !dbg !1941

7:                                                ; preds = %4
  %8 = load i8, i8* %0, align 1, !dbg !1942, !tbaa !1389
  call void @llvm.dbg.value(metadata i8 %8, metadata !1765, metadata !DIExpression()), !dbg !1944
  %9 = zext i8 %8 to i64, !dbg !1946
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %9, !dbg !1946
  %11 = load i8, i8* %10, align 1, !dbg !1946, !tbaa !1389
  %12 = icmp sgt i8 %11, -1, !dbg !1947
  br i1 %12, label %13, label %180, !dbg !1948

13:                                               ; preds = %7
  %14 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1949
  %15 = load i8, i8* %14, align 1, !dbg !1949, !tbaa !1389
  call void @llvm.dbg.value(metadata i8 %15, metadata !1765, metadata !DIExpression()), !dbg !1950
  %16 = zext i8 %15 to i64, !dbg !1952
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %16, !dbg !1952
  %18 = load i8, i8* %17, align 1, !dbg !1952, !tbaa !1389
  %19 = icmp sgt i8 %18, -1, !dbg !1953
  br i1 %19, label %20, label %180, !dbg !1954

20:                                               ; preds = %13
  %21 = load i64, i64* %3, align 8, !dbg !1955, !tbaa !1378
  %22 = icmp eq i64 %21, 0, !dbg !1955
  br i1 %22, label %30, label %23, !dbg !1957

23:                                               ; preds = %20
  %24 = shl i8 %11, 3, !dbg !1958
  %25 = lshr i8 %18, 2, !dbg !1960
  %26 = or i8 %25, %24, !dbg !1961
  %27 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1962
  call void @llvm.dbg.value(metadata i8* %27, metadata !1936, metadata !DIExpression()), !dbg !1937
  store i8 %26, i8* %5, align 1, !dbg !1963, !tbaa !1389
  %28 = load i64, i64* %3, align 8, !dbg !1964, !tbaa !1378
  %29 = add i64 %28, -1, !dbg !1964
  store i64 %29, i64* %3, align 8, !dbg !1964, !tbaa !1378
  br label %30, !dbg !1965

30:                                               ; preds = %20, %23
  %31 = phi i64 [ %29, %23 ], [ 0, %20 ]
  %32 = phi i8* [ %27, %23 ], [ %5, %20 ], !dbg !1937
  call void @llvm.dbg.value(metadata i8* %32, metadata !1936, metadata !DIExpression()), !dbg !1937
  %33 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1966
  %34 = load i8, i8* %33, align 1, !dbg !1966, !tbaa !1389
  %35 = icmp eq i8 %34, 61, !dbg !1968
  br i1 %35, label %36, label %57, !dbg !1969

36:                                               ; preds = %30
  %37 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1970
  %38 = load i8, i8* %37, align 1, !dbg !1970, !tbaa !1389
  %39 = icmp eq i8 %38, 61, !dbg !1973
  br i1 %39, label %40, label %56, !dbg !1974

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1975
  %42 = load i8, i8* %41, align 1, !dbg !1975, !tbaa !1389
  %43 = icmp eq i8 %42, 61, !dbg !1976
  br i1 %43, label %44, label %56, !dbg !1977

44:                                               ; preds = %40
  %45 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1978
  %46 = load i8, i8* %45, align 1, !dbg !1978, !tbaa !1389
  %47 = icmp eq i8 %46, 61, !dbg !1979
  br i1 %47, label %48, label %56, !dbg !1980

48:                                               ; preds = %44
  %49 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1981
  %50 = load i8, i8* %49, align 1, !dbg !1981, !tbaa !1389
  %51 = icmp eq i8 %50, 61, !dbg !1982
  br i1 %51, label %52, label %56, !dbg !1983

52:                                               ; preds = %48
  %53 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1984
  %54 = load i8, i8* %53, align 1, !dbg !1984, !tbaa !1389
  %55 = icmp eq i8 %54, 61, !dbg !1985
  br i1 %55, label %178, label %56, !dbg !1986

56:                                               ; preds = %52, %48, %44, %40, %36
  store i8* %32, i8** %2, align 8, !dbg !1987, !tbaa !1201
  br label %180, !dbg !1987

57:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i8 %34, metadata !1765, metadata !DIExpression()), !dbg !1989
  %58 = zext i8 %34 to i64, !dbg !1993
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %58, !dbg !1993
  %60 = load i8, i8* %59, align 1, !dbg !1993, !tbaa !1389
  %61 = icmp sgt i8 %60, -1, !dbg !1994
  br i1 %61, label %62, label %69, !dbg !1995

62:                                               ; preds = %57
  %63 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1996
  %64 = load i8, i8* %63, align 1, !dbg !1996, !tbaa !1389
  call void @llvm.dbg.value(metadata i8 %64, metadata !1765, metadata !DIExpression()), !dbg !1997
  %65 = zext i8 %64 to i64, !dbg !1999
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %65, !dbg !1999
  %67 = load i8, i8* %66, align 1, !dbg !1999, !tbaa !1389
  %68 = icmp sgt i8 %67, -1, !dbg !2000
  br i1 %68, label %70, label %69, !dbg !2001

69:                                               ; preds = %57, %62
  store i8* %32, i8** %2, align 8, !dbg !2002, !tbaa !1201
  br label %180, !dbg !2002

70:                                               ; preds = %62
  %71 = icmp eq i64 %31, 0, !dbg !2004
  br i1 %71, label %81, label %72, !dbg !2006

72:                                               ; preds = %70
  %73 = shl i8 %18, 6, !dbg !2007
  %74 = shl nuw i8 %60, 1, !dbg !2009
  %75 = or i8 %74, %73, !dbg !2010
  %76 = lshr i8 %67, 4, !dbg !2011
  %77 = or i8 %75, %76, !dbg !2012
  %78 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !2013
  call void @llvm.dbg.value(metadata i8* %78, metadata !1936, metadata !DIExpression()), !dbg !1937
  store i8 %77, i8* %32, align 1, !dbg !2014, !tbaa !1389
  %79 = load i64, i64* %3, align 8, !dbg !2015, !tbaa !1378
  %80 = add i64 %79, -1, !dbg !2015
  store i64 %80, i64* %3, align 8, !dbg !2015, !tbaa !1378
  br label %81, !dbg !2016

81:                                               ; preds = %70, %72
  %82 = phi i64 [ %80, %72 ], [ 0, %70 ]
  %83 = phi i8* [ %78, %72 ], [ %32, %70 ], !dbg !1937
  call void @llvm.dbg.value(metadata i8* %83, metadata !1936, metadata !DIExpression()), !dbg !1937
  %84 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !2017
  %85 = load i8, i8* %84, align 1, !dbg !2017, !tbaa !1389
  %86 = icmp eq i8 %85, 61, !dbg !2019
  br i1 %86, label %87, label %100, !dbg !2020

87:                                               ; preds = %81
  %88 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !2021
  %89 = load i8, i8* %88, align 1, !dbg !2021, !tbaa !1389
  %90 = icmp eq i8 %89, 61, !dbg !2024
  br i1 %90, label %91, label %99, !dbg !2025

91:                                               ; preds = %87
  %92 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !2026
  %93 = load i8, i8* %92, align 1, !dbg !2026, !tbaa !1389
  %94 = icmp eq i8 %93, 61, !dbg !2027
  br i1 %94, label %95, label %99, !dbg !2028

95:                                               ; preds = %91
  %96 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !2029
  %97 = load i8, i8* %96, align 1, !dbg !2029, !tbaa !1389
  %98 = icmp eq i8 %97, 61, !dbg !2030
  br i1 %98, label %178, label %99, !dbg !2031

99:                                               ; preds = %95, %91, %87
  store i8* %83, i8** %2, align 8, !dbg !2032, !tbaa !1201
  br label %180, !dbg !2032

100:                                              ; preds = %81
  call void @llvm.dbg.value(metadata i8 %85, metadata !1765, metadata !DIExpression()), !dbg !2034
  %101 = zext i8 %85 to i64, !dbg !2038
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %101, !dbg !2038
  %103 = load i8, i8* %102, align 1, !dbg !2038, !tbaa !1389
  %104 = icmp sgt i8 %103, -1, !dbg !2039
  br i1 %104, label %106, label %105, !dbg !2040

105:                                              ; preds = %100
  store i8* %83, i8** %2, align 8, !dbg !2041, !tbaa !1201
  br label %180, !dbg !2041

106:                                              ; preds = %100
  %107 = icmp eq i64 %82, 0, !dbg !2043
  br i1 %107, label %115, label %108, !dbg !2045

108:                                              ; preds = %106
  %109 = shl i8 %67, 4, !dbg !2046
  %110 = lshr i8 %103, 1, !dbg !2048
  %111 = or i8 %110, %109, !dbg !2049
  %112 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !2050
  call void @llvm.dbg.value(metadata i8* %112, metadata !1936, metadata !DIExpression()), !dbg !1937
  store i8 %111, i8* %83, align 1, !dbg !2051, !tbaa !1389
  %113 = load i64, i64* %3, align 8, !dbg !2052, !tbaa !1378
  %114 = add i64 %113, -1, !dbg !2052
  store i64 %114, i64* %3, align 8, !dbg !2052, !tbaa !1378
  br label %115, !dbg !2053

115:                                              ; preds = %106, %108
  %116 = phi i64 [ %114, %108 ], [ 0, %106 ]
  %117 = phi i8* [ %112, %108 ], [ %83, %106 ], !dbg !2054
  call void @llvm.dbg.value(metadata i8* %117, metadata !1936, metadata !DIExpression()), !dbg !1937
  %118 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !2055
  %119 = load i8, i8* %118, align 1, !dbg !2055, !tbaa !1389
  %120 = icmp eq i8 %119, 61, !dbg !2057
  br i1 %120, label %121, label %130, !dbg !2058

121:                                              ; preds = %115
  %122 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !2059
  %123 = load i8, i8* %122, align 1, !dbg !2059, !tbaa !1389
  %124 = icmp eq i8 %123, 61, !dbg !2062
  br i1 %124, label %125, label %129, !dbg !2063

125:                                              ; preds = %121
  %126 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !2064
  %127 = load i8, i8* %126, align 1, !dbg !2064, !tbaa !1389
  %128 = icmp eq i8 %127, 61, !dbg !2065
  br i1 %128, label %178, label %129, !dbg !2066

129:                                              ; preds = %125, %121
  store i8* %117, i8** %2, align 8, !dbg !2067, !tbaa !1201
  br label %180, !dbg !2067

130:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i8 %119, metadata !1765, metadata !DIExpression()), !dbg !2069
  %131 = zext i8 %119 to i64, !dbg !2073
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %131, !dbg !2073
  %133 = load i8, i8* %132, align 1, !dbg !2073, !tbaa !1389
  %134 = icmp sgt i8 %133, -1, !dbg !2074
  br i1 %134, label %135, label %142, !dbg !2075

135:                                              ; preds = %130
  %136 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !2076
  %137 = load i8, i8* %136, align 1, !dbg !2076, !tbaa !1389
  call void @llvm.dbg.value(metadata i8 %137, metadata !1765, metadata !DIExpression()), !dbg !2077
  %138 = zext i8 %137 to i64, !dbg !2079
  %139 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %138, !dbg !2079
  %140 = load i8, i8* %139, align 1, !dbg !2079, !tbaa !1389
  %141 = icmp sgt i8 %140, -1, !dbg !2080
  br i1 %141, label %143, label %142, !dbg !2081

142:                                              ; preds = %130, %135
  store i8* %117, i8** %2, align 8, !dbg !2082, !tbaa !1201
  br label %180, !dbg !2082

143:                                              ; preds = %135
  %144 = icmp eq i64 %116, 0, !dbg !2084
  br i1 %144, label %154, label %145, !dbg !2086

145:                                              ; preds = %143
  %146 = shl i8 %103, 7, !dbg !2087
  %147 = shl i8 %133, 2, !dbg !2089
  %148 = lshr i8 %140, 3, !dbg !2090
  %149 = or i8 %148, %147, !dbg !2091
  %150 = or i8 %149, %146, !dbg !2092
  %151 = getelementptr inbounds i8, i8* %117, i64 1, !dbg !2093
  call void @llvm.dbg.value(metadata i8* %151, metadata !1936, metadata !DIExpression()), !dbg !1937
  store i8 %150, i8* %117, align 1, !dbg !2094, !tbaa !1389
  %152 = load i64, i64* %3, align 8, !dbg !2095, !tbaa !1378
  %153 = add i64 %152, -1, !dbg !2095
  store i64 %153, i64* %3, align 8, !dbg !2095, !tbaa !1378
  br label %154, !dbg !2096

154:                                              ; preds = %143, %145
  %155 = phi i64 [ %153, %145 ], [ 0, %143 ]
  %156 = phi i8* [ %151, %145 ], [ %117, %143 ], !dbg !2097
  call void @llvm.dbg.value(metadata i8* %156, metadata !1936, metadata !DIExpression()), !dbg !1937
  %157 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !2098
  %158 = load i8, i8* %157, align 1, !dbg !2098, !tbaa !1389
  %159 = icmp eq i8 %158, 61, !dbg !2100
  br i1 %159, label %178, label %160, !dbg !2101

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1765, metadata !DIExpression()), !dbg !2102
  %161 = zext i8 %158 to i64, !dbg !2106
  %162 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %161, !dbg !2106
  %163 = load i8, i8* %162, align 1, !dbg !2106, !tbaa !1389
  %164 = icmp sgt i8 %163, -1, !dbg !2107
  br i1 %164, label %166, label %165, !dbg !2108

165:                                              ; preds = %160
  store i8* %156, i8** %2, align 8, !dbg !2109, !tbaa !1201
  br label %180, !dbg !2109

166:                                              ; preds = %160
  %167 = icmp eq i64 %155, 0, !dbg !2111
  br i1 %167, label %178, label %168, !dbg !2113

168:                                              ; preds = %166
  %169 = load i8, i8* %136, align 1, !dbg !2114, !tbaa !1389
  %170 = zext i8 %169 to i64, !dbg !2116
  %171 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %170, !dbg !2116
  %172 = load i8, i8* %171, align 1, !dbg !2116, !tbaa !1389
  %173 = shl i8 %172, 5, !dbg !2117
  %174 = or i8 %173, %163, !dbg !2118
  %175 = getelementptr inbounds i8, i8* %156, i64 1, !dbg !2119
  call void @llvm.dbg.value(metadata i8* %175, metadata !1936, metadata !DIExpression()), !dbg !1937
  store i8 %174, i8* %156, align 1, !dbg !2120, !tbaa !1389
  %176 = load i64, i64* %3, align 8, !dbg !2121, !tbaa !1378
  %177 = add i64 %176, -1, !dbg !2121
  store i64 %177, i64* %3, align 8, !dbg !2121, !tbaa !1378
  br label %178, !dbg !2122

178:                                              ; preds = %52, %95, %125, %166, %154, %168
  %179 = phi i8* [ %32, %52 ], [ %83, %95 ], [ %117, %125 ], [ %175, %168 ], [ %156, %166 ], [ %156, %154 ], !dbg !1937
  call void @llvm.dbg.value(metadata i8* %179, metadata !1936, metadata !DIExpression()), !dbg !1937
  store i8* %179, i8** %2, align 8, !dbg !2123, !tbaa !1201
  br label %180, !dbg !2124

180:                                              ; preds = %7, %13, %4, %178, %165, %142, %129, %105, %99, %69, %56
  %181 = phi i1 [ false, %56 ], [ true, %178 ], [ false, %99 ], [ false, %129 ], [ false, %165 ], [ false, %142 ], [ false, %105 ], [ false, %69 ], [ false, %4 ], [ false, %13 ], [ false, %7 ], !dbg !1937
  ret i1 %181, !dbg !2125
}

; Function Attrs: nofree nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @base32_decode_alloc_ctx(%struct.base32_decode_context* %0, i8* %1, i64 %2, i8** nocapture %3, i64* %4) local_unnamed_addr #8 !dbg !2126 {
  %6 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, metadata !2130, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8* %1, metadata !2131, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i64 %2, metadata !2132, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8** %3, metadata !2133, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i64* %4, metadata !2134, metadata !DIExpression()), !dbg !2136
  %7 = bitcast i64* %6 to i8*, !dbg !2137
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #20, !dbg !2137
  %8 = lshr i64 %2, 3, !dbg !2138
  %9 = mul nuw i64 %8, 5, !dbg !2139
  %10 = add nuw i64 %9, 5, !dbg !2140
  call void @llvm.dbg.value(metadata i64 %10, metadata !2135, metadata !DIExpression()), !dbg !2136
  store i64 %10, i64* %6, align 8, !dbg !2141, !tbaa !1378
  %11 = tail call noalias i8* @malloc(i64 %10) #20, !dbg !2142
  store i8* %11, i8** %3, align 8, !dbg !2143, !tbaa !1201
  %12 = icmp eq i8* %11, null, !dbg !2144
  br i1 %12, label %21, label %13, !dbg !2146

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i64* %6, metadata !2135, metadata !DIExpression(DW_OP_deref)), !dbg !2136
  %14 = call zeroext i1 @base32_decode_ctx(%struct.base32_decode_context* %0, i8* %1, i64 %2, i8* nonnull %11, i64* nonnull %6), !dbg !2147
  br i1 %14, label %17, label %15, !dbg !2149

15:                                               ; preds = %13
  %16 = load i8*, i8** %3, align 8, !dbg !2150, !tbaa !1201
  tail call void @free(i8* %16) #20, !dbg !2152
  store i8* null, i8** %3, align 8, !dbg !2153, !tbaa !1201
  br label %21, !dbg !2154

17:                                               ; preds = %13
  %18 = icmp eq i64* %4, null, !dbg !2155
  br i1 %18, label %21, label %19, !dbg !2157

19:                                               ; preds = %17
  %20 = load i64, i64* %6, align 8, !dbg !2158, !tbaa !1378
  call void @llvm.dbg.value(metadata i64 %20, metadata !2135, metadata !DIExpression()), !dbg !2136
  store i64 %20, i64* %4, align 8, !dbg !2159, !tbaa !1378
  br label %21, !dbg !2160

21:                                               ; preds = %19, %17, %5, %15
  %22 = phi i1 [ false, %15 ], [ true, %5 ], [ true, %17 ], [ true, %19 ], !dbg !2136
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #20, !dbg !2161
  ret i1 %22, !dbg !2161
}

; Function Attrs: nounwind
declare !dbg !215 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #13 !dbg !2162 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2164, metadata !DIExpression()), !dbg !2165
  store i8* %0, i8** @file_name, align 8, !dbg !2166, !tbaa !1201
  ret void, !dbg !2167
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #13 !dbg !2168 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2172, metadata !DIExpression()), !dbg !2173
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2174, !tbaa !2175
  ret void, !dbg !2177
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !2178 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2183, !tbaa !1201
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #20, !dbg !2184
  %3 = icmp eq i32 %2, 0, !dbg !2185
  br i1 %3, label %22, label %4, !dbg !2186

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2187, !tbaa !2175, !range !2188
  %6 = icmp eq i8 %5, 0, !dbg !2187
  br i1 %6, label %11, label %7, !dbg !2189

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #25, !dbg !2190
  %9 = load i32, i32* %8, align 4, !dbg !2190, !tbaa !1319
  %10 = icmp eq i32 %9, 32, !dbg !2191
  br i1 %10, label %22, label %11, !dbg !2192

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i32 5) #20, !dbg !2193
  call void @llvm.dbg.value(metadata i8* %12, metadata !2180, metadata !DIExpression()), !dbg !2194
  %13 = load i8*, i8** @file_name, align 8, !dbg !2195, !tbaa !1201
  %14 = icmp eq i8* %13, null, !dbg !2195
  %15 = tail call i32* @__errno_location() #25, !dbg !2197
  %16 = load i32, i32* %15, align 4, !dbg !2197, !tbaa !1319
  br i1 %14, label %19, label %17, !dbg !2198

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #20, !dbg !2199
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.57, i64 0, i64 0), i8* %18, i8* %12) #20, !dbg !2200
  br label %20, !dbg !2200

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.58, i64 0, i64 0), i8* %12) #20, !dbg !2201
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2202, !tbaa !1319
  tail call void @_exit(i32 %21) #23, !dbg !2203
  unreachable, !dbg !2203

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2204, !tbaa !1201
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #20, !dbg !2206
  %25 = icmp eq i32 %24, 0, !dbg !2207
  br i1 %25, label %28, label %26, !dbg !2208

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2209, !tbaa !1319
  tail call void @_exit(i32 %27) #23, !dbg !2210
  unreachable, !dbg !2210

28:                                               ; preds = %22
  ret void, !dbg !2211
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !2212 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2218, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %1, metadata !2219, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %2, metadata !2220, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i32 %3, metadata !2221, metadata !DIExpression()), !dbg !2224
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #20, !dbg !2225
  call void @llvm.dbg.value(metadata i32 %5, metadata !2222, metadata !DIExpression()), !dbg !2226
  ret void, !dbg !2227
}

; Function Attrs: nounwind
declare !dbg !450 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !2228 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2234, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i32 %1, metadata !2235, metadata !DIExpression()), !dbg !2236
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2237
  br i1 %3, label %7, label %4, !dbg !2239

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !2240
  call void @llvm.dbg.value(metadata i32 %5, metadata !2218, metadata !DIExpression()) #20, !dbg !2241
  call void @llvm.dbg.value(metadata i64 0, metadata !2219, metadata !DIExpression()) #20, !dbg !2241
  call void @llvm.dbg.value(metadata i64 0, metadata !2220, metadata !DIExpression()) #20, !dbg !2241
  call void @llvm.dbg.value(metadata i32 %1, metadata !2221, metadata !DIExpression()) #20, !dbg !2241
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #20, !dbg !2243
  call void @llvm.dbg.value(metadata i32 %6, metadata !2222, metadata !DIExpression()) #20, !dbg !2244
  br label %7, !dbg !2245

7:                                                ; preds = %2, %4
  ret void, !dbg !2246
}

; Function Attrs: nofree nounwind
declare !dbg !454 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2247 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2249, metadata !DIExpression()), !dbg !2252
  %2 = icmp eq i8* %0, null, !dbg !2253
  br i1 %2, label %3, label %6, !dbg !2255

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2256, !tbaa !1201
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.67, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #26, !dbg !2258
  tail call void @abort() #23, !dbg !2259
  unreachable, !dbg !2259

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !2260
  call void @llvm.dbg.value(metadata i8* %7, metadata !2250, metadata !DIExpression()), !dbg !2252
  %8 = icmp eq i8* %7, null, !dbg !2261
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2262
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2262
  call void @llvm.dbg.value(metadata i8* %10, metadata !2251, metadata !DIExpression()), !dbg !2252
  %11 = ptrtoint i8* %10 to i64, !dbg !2263
  %12 = ptrtoint i8* %0 to i64, !dbg !2263
  %13 = sub i64 %11, %12, !dbg !2263
  %14 = icmp sgt i64 %13, 6, !dbg !2265
  br i1 %14, label %15, label %24, !dbg !2266

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2267
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.68, i64 0, i64 0), i64 7) #22, !dbg !2268
  %18 = icmp eq i32 %17, 0, !dbg !2269
  br i1 %18, label %19, label %24, !dbg !2270

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2249, metadata !DIExpression()), !dbg !2252
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.69, i64 0, i64 0), i64 3) #22, !dbg !2271
  %21 = icmp eq i32 %20, 0, !dbg !2274
  br i1 %21, label %22, label %24, !dbg !2275

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2276
  call void @llvm.dbg.value(metadata i8* %23, metadata !2249, metadata !DIExpression()), !dbg !2252
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2278, !tbaa !1201
  br label %24, !dbg !2279

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2249, metadata !DIExpression()), !dbg !2252
  store i8* %25, i8** @program_name, align 8, !dbg !2280, !tbaa !1201
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2281, !tbaa !1201
  ret void, !dbg !2282
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #15

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2283 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2288, metadata !DIExpression()), !dbg !2291
  %2 = tail call i32* @__errno_location() #25, !dbg !2292
  %3 = load i32, i32* %2, align 4, !dbg !2292, !tbaa !1319
  call void @llvm.dbg.value(metadata i32 %3, metadata !2289, metadata !DIExpression()), !dbg !2291
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2293
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2293
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2293
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #20, !dbg !2294
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2294
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2290, metadata !DIExpression()), !dbg !2291
  store i32 %3, i32* %2, align 4, !dbg !2295, !tbaa !1319
  ret %struct.quoting_options* %8, !dbg !2296
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #16 !dbg !2297 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2301, metadata !DIExpression()), !dbg !2302
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2303
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2303
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2304
  %5 = load i32, i32* %4, align 8, !dbg !2304, !tbaa !2305
  ret i32 %5, !dbg !2307
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #13 !dbg !2308 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2312, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i32 %1, metadata !2313, metadata !DIExpression()), !dbg !2314
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2315
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2315
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2316
  store i32 %1, i32* %5, align 8, !dbg !2317, !tbaa !2305
  ret void, !dbg !2318
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #10 !dbg !2319 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2323, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i8 %1, metadata !2324, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i32 %2, metadata !2325, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i8 %1, metadata !2326, metadata !DIExpression()), !dbg !2331
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2332
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2332
  %6 = lshr i8 %1, 5, !dbg !2333
  %7 = zext i8 %6 to i64, !dbg !2333
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2334
  call void @llvm.dbg.value(metadata i32* %8, metadata !2327, metadata !DIExpression()), !dbg !2331
  %9 = and i8 %1, 31, !dbg !2335
  %10 = zext i8 %9 to i32, !dbg !2335
  call void @llvm.dbg.value(metadata i32 %10, metadata !2329, metadata !DIExpression()), !dbg !2331
  %11 = load i32, i32* %8, align 4, !dbg !2336, !tbaa !1319
  %12 = lshr i32 %11, %10, !dbg !2337
  %13 = and i32 %12, 1, !dbg !2338
  call void @llvm.dbg.value(metadata i32 %13, metadata !2330, metadata !DIExpression()), !dbg !2331
  %14 = and i32 %2, 1, !dbg !2339
  %15 = xor i32 %13, %14, !dbg !2340
  %16 = shl i32 %15, %10, !dbg !2341
  %17 = xor i32 %16, %11, !dbg !2342
  store i32 %17, i32* %8, align 4, !dbg !2342, !tbaa !1319
  ret i32 %13, !dbg !2343
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !2344 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2348, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i32 %1, metadata !2349, metadata !DIExpression()), !dbg !2351
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2352
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2354
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2348, metadata !DIExpression()), !dbg !2351
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2355
  %6 = load i32, i32* %5, align 4, !dbg !2355, !tbaa !2356
  call void @llvm.dbg.value(metadata i32 %6, metadata !2350, metadata !DIExpression()), !dbg !2351
  store i32 %1, i32* %5, align 4, !dbg !2357, !tbaa !2356
  ret i32 %6, !dbg !2358
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2359 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2363, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i8* %1, metadata !2364, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i8* %2, metadata !2365, metadata !DIExpression()), !dbg !2366
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2367
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2369
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2363, metadata !DIExpression()), !dbg !2366
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2370
  store i32 10, i32* %6, align 8, !dbg !2371, !tbaa !2305
  %7 = icmp ne i8* %1, null, !dbg !2372
  %8 = icmp ne i8* %2, null, !dbg !2374
  %9 = and i1 %7, %8, !dbg !2375
  br i1 %9, label %11, label %10, !dbg !2375

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !2376
  unreachable, !dbg !2376

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2377
  store i8* %1, i8** %12, align 8, !dbg !2378, !tbaa !2379
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2380
  store i8* %2, i8** %13, align 8, !dbg !2381, !tbaa !2382
  ret void, !dbg !2383
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2384 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2388, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i64 %1, metadata !2389, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i8* %2, metadata !2390, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i64 %3, metadata !2391, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2392, metadata !DIExpression()), !dbg !2396
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2397
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2397
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2393, metadata !DIExpression()), !dbg !2396
  %8 = tail call i32* @__errno_location() #25, !dbg !2398
  %9 = load i32, i32* %8, align 4, !dbg !2398, !tbaa !1319
  call void @llvm.dbg.value(metadata i32 %9, metadata !2394, metadata !DIExpression()), !dbg !2396
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2399
  %11 = load i32, i32* %10, align 8, !dbg !2399, !tbaa !2305
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2400
  %13 = load i32, i32* %12, align 4, !dbg !2400, !tbaa !2356
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2401
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2402
  %16 = load i8*, i8** %15, align 8, !dbg !2402, !tbaa !2379
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2403
  %18 = load i8*, i8** %17, align 8, !dbg !2403, !tbaa !2382
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2404
  call void @llvm.dbg.value(metadata i64 %19, metadata !2395, metadata !DIExpression()), !dbg !2396
  store i32 %9, i32* %8, align 4, !dbg !2405, !tbaa !1319
  ret i64 %19, !dbg !2406
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2407 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2413, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %1, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %2, metadata !2415, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %3, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 %4, metadata !2417, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 %5, metadata !2418, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32* %6, metadata !2419, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %7, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %8, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 0, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 0, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* null, metadata !2425, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 0, metadata !2426, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 0, metadata !2427, metadata !DIExpression()), !dbg !2471
  %13 = tail call i64 @__ctype_get_mb_cur_max() #20, !dbg !2472
  %14 = icmp eq i64 %13, 1, !dbg !2473
  call void @llvm.dbg.value(metadata i1 %14, metadata !2428, metadata !DIExpression()), !dbg !2471
  %15 = lshr i32 %5, 1, !dbg !2474
  %16 = trunc i32 %15 to i8, !dbg !2474
  %17 = and i8 %16, 1, !dbg !2474
  call void @llvm.dbg.value(metadata i8 %17, metadata !2429, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 0, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 0, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 1, metadata !2432, metadata !DIExpression()), !dbg !2471
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2475
  %19 = and i32 %5, 4, !dbg !2477
  %20 = icmp eq i32 %19, 0, !dbg !2477
  %21 = and i32 %5, 1, !dbg !2480
  %22 = icmp eq i32 %21, 0, !dbg !2480
  %23 = bitcast i64* %10 to i8*, !dbg !2483
  %24 = bitcast i32* %12 to i8*, !dbg !2484
  %25 = icmp eq i32* %6, null, !dbg !2485
  br label %26, !dbg !2487

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2488
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2489
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2490
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2491
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2471
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2492
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2493
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2494
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %38, metadata !2432, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %37, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %36, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %35, metadata !2429, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %34, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %33, metadata !2427, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %32, metadata !2426, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %31, metadata !2425, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %30, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 0, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %29, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %28, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 %27, metadata !2417, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.label(metadata !2465), !dbg !2495
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
  ], !dbg !2496

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2417, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 1, metadata !2429, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %35, metadata !2429, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 5, metadata !2417, metadata !DIExpression()), !dbg !2471
  br label %92, !dbg !2497

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2429, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 5, metadata !2417, metadata !DIExpression()), !dbg !2471
  %42 = and i8 %35, 1, !dbg !2499
  %43 = icmp eq i8 %42, 0, !dbg !2499
  br i1 %43, label %44, label %92, !dbg !2497

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2501
  br i1 %45, label %92, label %46, !dbg !2504

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2501, !tbaa !1389
  br label %92, !dbg !2501

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.80, i64 0, i64 0), i32 %27), !dbg !2505
  call void @llvm.dbg.value(metadata i8* %48, metadata !2420, metadata !DIExpression()), !dbg !2471
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), i32 %27), !dbg !2509
  call void @llvm.dbg.value(metadata i8* %49, metadata !2421, metadata !DIExpression()), !dbg !2471
  br label %50, !dbg !2510

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %51, metadata !2420, metadata !DIExpression()), !dbg !2471
  %53 = and i8 %35, 1, !dbg !2511
  %54 = icmp eq i8 %53, 0, !dbg !2511
  br i1 %54, label %55, label %70, !dbg !2513

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2425, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 0, metadata !2423, metadata !DIExpression()), !dbg !2471
  %56 = load i8, i8* %51, align 1, !dbg !2514, !tbaa !1389
  %57 = icmp eq i8 %56, 0, !dbg !2517
  br i1 %57, label %70, label %58, !dbg !2517

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2425, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %61, metadata !2423, metadata !DIExpression()), !dbg !2471
  %62 = icmp ult i64 %61, %39, !dbg !2518
  br i1 %62, label %63, label %65, !dbg !2521

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2518
  store i8 %59, i8* %64, align 1, !dbg !2518, !tbaa !1389
  br label %65, !dbg !2518

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2521
  call void @llvm.dbg.value(metadata i64 %66, metadata !2423, metadata !DIExpression()), !dbg !2471
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2522
  call void @llvm.dbg.value(metadata i8* %67, metadata !2425, metadata !DIExpression()), !dbg !2471
  %68 = load i8, i8* %67, align 1, !dbg !2514, !tbaa !1389
  %69 = icmp eq i8 %68, 0, !dbg !2517
  br i1 %69, label %70, label %58, !dbg !2517, !llvm.loop !2523

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2525
  call void @llvm.dbg.value(metadata i64 %71, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 1, metadata !2427, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %52, metadata !2425, metadata !DIExpression()), !dbg !2471
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !2526
  call void @llvm.dbg.value(metadata i64 %72, metadata !2426, metadata !DIExpression()), !dbg !2471
  br label %92, !dbg !2527

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2427, metadata !DIExpression()), !dbg !2471
  br label %74, !dbg !2528

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2471
  call void @llvm.dbg.value(metadata i8 %75, metadata !2427, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 1, metadata !2429, metadata !DIExpression()), !dbg !2471
  br label %76, !dbg !2529

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2491
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2471
  call void @llvm.dbg.value(metadata i8 %78, metadata !2429, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %77, metadata !2427, metadata !DIExpression()), !dbg !2471
  %79 = and i8 %78, 1, !dbg !2530
  %80 = icmp eq i8 %79, 0, !dbg !2530
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2532
  br label %82, !dbg !2532

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2471
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2474
  call void @llvm.dbg.value(metadata i8 %84, metadata !2429, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %83, metadata !2427, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 2, metadata !2417, metadata !DIExpression()), !dbg !2471
  %85 = and i8 %84, 1, !dbg !2533
  %86 = icmp eq i8 %85, 0, !dbg !2533
  br i1 %86, label %87, label %92, !dbg !2535

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2536
  br i1 %88, label %92, label %89, !dbg !2539

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2536, !tbaa !1389
  br label %92, !dbg !2536

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2429, metadata !DIExpression()), !dbg !2471
  br label %92, !dbg !2540

91:                                               ; preds = %26
  call void @abort() #23, !dbg !2541
  unreachable, !dbg !2541

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2525
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %40 ], !dbg !2471
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2471
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2471
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2471
  call void @llvm.dbg.value(metadata i8 %100, metadata !2429, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %99, metadata !2427, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %98, metadata !2426, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %97, metadata !2425, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %96, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 %93, metadata !2417, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 0, metadata !2422, metadata !DIExpression()), !dbg !2471
  %101 = and i8 %99, 1, !dbg !2542
  %102 = icmp ne i8 %101, 0, !dbg !2542
  %103 = icmp ne i32 %93, 2, !dbg !2542
  %104 = and i1 %103, %102, !dbg !2542
  %105 = icmp ne i64 %98, 0, !dbg !2542
  %106 = and i1 %105, %104, !dbg !2542
  %107 = icmp ugt i64 %98, 1, !dbg !2542
  %108 = and i8 %100, 1, !dbg !2544
  %109 = icmp eq i8 %108, 0, !dbg !2544
  %110 = icmp eq i32 %93, 2, !dbg !2547
  %111 = or i1 %103, %109, !dbg !2549
  %112 = icmp ne i8 %108, 0, !dbg !2551
  %113 = and i1 %110, %112, !dbg !2551
  %114 = xor i1 %102, true, !dbg !2552
  %115 = xor i1 %104, true, !dbg !2485
  %116 = and i1 %109, %115, !dbg !2485
  %117 = or i1 %25, %116, !dbg !2485
  %118 = and i8 %99, %100, !dbg !2553
  %119 = and i8 %118, 1, !dbg !2553
  %120 = icmp ne i8 %119, 0, !dbg !2553
  %121 = and i1 %120, %105, !dbg !2553
  br label %122, !dbg !2555

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2556
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2525
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2488
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2492
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2493
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2494
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %129, metadata !2432, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %128, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %127, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %126, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %125, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %123, metadata !2422, metadata !DIExpression()), !dbg !2471
  %131 = icmp eq i64 %126, -1, !dbg !2557
  br i1 %131, label %132, label %136, !dbg !2558

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2559
  %134 = load i8, i8* %133, align 1, !dbg !2559, !tbaa !1389
  %135 = icmp eq i8 %134, 0, !dbg !2560
  br i1 %135, label %581, label %138, !dbg !2561

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2562
  br i1 %137, label %581, label %138, !dbg !2561

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2438, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 0, metadata !2439, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 0, metadata !2440, metadata !DIExpression()), !dbg !2563
  br i1 %106, label %139, label %154, !dbg !2564

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2565
  %141 = and i1 %107, %131, !dbg !2566
  br i1 %141, label %142, label %144, !dbg !2566

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2567
  call void @llvm.dbg.value(metadata i64 %143, metadata !2416, metadata !DIExpression()), !dbg !2471
  br label %144, !dbg !2568

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2416, metadata !DIExpression()), !dbg !2471
  %146 = icmp ugt i64 %140, %145, !dbg !2569
  br i1 %146, label %154, label %147, !dbg !2570

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2571
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2572
  %150 = icmp ne i32 %149, 0, !dbg !2573
  %151 = or i1 %150, %109, !dbg !2574
  %152 = xor i1 %150, true, !dbg !2574
  %153 = zext i1 %152 to i8, !dbg !2574
  br i1 %151, label %154, label %639, !dbg !2574

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2563
  call void @llvm.dbg.value(metadata i8 %156, metadata !2438, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i64 %155, metadata !2416, metadata !DIExpression()), !dbg !2471
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2575
  %158 = load i8, i8* %157, align 1, !dbg !2575, !tbaa !1389
  call void @llvm.dbg.value(metadata i8 %158, metadata !2433, metadata !DIExpression()), !dbg !2563
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
  ], !dbg !2576

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2577

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2578

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2439, metadata !DIExpression()), !dbg !2563
  %162 = and i8 %127, 1, !dbg !2581
  %163 = icmp eq i8 %162, 0, !dbg !2581
  %164 = and i1 %110, %163, !dbg !2581
  br i1 %164, label %165, label %181, !dbg !2581

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2583
  br i1 %166, label %167, label %169, !dbg !2587

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2583
  store i8 39, i8* %168, align 1, !dbg !2583, !tbaa !1389
  br label %169, !dbg !2583

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2587
  call void @llvm.dbg.value(metadata i64 %170, metadata !2423, metadata !DIExpression()), !dbg !2471
  %171 = icmp ult i64 %170, %130, !dbg !2588
  br i1 %171, label %172, label %174, !dbg !2591

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2588
  store i8 36, i8* %173, align 1, !dbg !2588, !tbaa !1389
  br label %174, !dbg !2588

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2591
  call void @llvm.dbg.value(metadata i64 %175, metadata !2423, metadata !DIExpression()), !dbg !2471
  %176 = icmp ult i64 %175, %130, !dbg !2592
  br i1 %176, label %177, label %179, !dbg !2595

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2592
  store i8 39, i8* %178, align 1, !dbg !2592, !tbaa !1389
  br label %179, !dbg !2592

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2595
  call void @llvm.dbg.value(metadata i64 %180, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 1, metadata !2430, metadata !DIExpression()), !dbg !2471
  br label %181, !dbg !2596

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2471
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2471
  call void @llvm.dbg.value(metadata i8 %183, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %182, metadata !2423, metadata !DIExpression()), !dbg !2471
  %184 = icmp ult i64 %182, %130, !dbg !2597
  br i1 %184, label %185, label %187, !dbg !2600

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2597
  store i8 92, i8* %186, align 1, !dbg !2597, !tbaa !1389
  br label %187, !dbg !2597

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2600
  call void @llvm.dbg.value(metadata i64 %188, metadata !2423, metadata !DIExpression()), !dbg !2471
  br i1 %103, label %189, label %463, !dbg !2601

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2603
  %191 = icmp ult i64 %190, %155, !dbg !2604
  br i1 %191, label %192, label %463, !dbg !2605

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2606
  %194 = load i8, i8* %193, align 1, !dbg !2606, !tbaa !1389
  %195 = add i8 %194, -48, !dbg !2607
  %196 = icmp ult i8 %195, 10, !dbg !2607
  br i1 %196, label %197, label %463, !dbg !2607

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2608
  br i1 %198, label %199, label %201, !dbg !2612

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2608
  store i8 48, i8* %200, align 1, !dbg !2608, !tbaa !1389
  br label %201, !dbg !2608

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2612
  call void @llvm.dbg.value(metadata i64 %202, metadata !2423, metadata !DIExpression()), !dbg !2471
  %203 = icmp ult i64 %202, %130, !dbg !2613
  br i1 %203, label %204, label %206, !dbg !2616

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2613
  store i8 48, i8* %205, align 1, !dbg !2613, !tbaa !1389
  br label %206, !dbg !2613

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2616
  call void @llvm.dbg.value(metadata i64 %207, metadata !2423, metadata !DIExpression()), !dbg !2471
  br label %463, !dbg !2617

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2618

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2619

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2620

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2621

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2622
  %214 = icmp ult i64 %213, %155, !dbg !2623
  br i1 %214, label %215, label %463, !dbg !2624

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2625
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2626
  %218 = load i8, i8* %217, align 1, !dbg !2626, !tbaa !1389
  %219 = icmp eq i8 %218, 63, !dbg !2627
  br i1 %219, label %220, label %463, !dbg !2628

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2629
  %222 = load i8, i8* %221, align 1, !dbg !2629, !tbaa !1389
  %223 = sext i8 %222 to i32, !dbg !2629
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
  ], !dbg !2630

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2631

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2433, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i64 %213, metadata !2422, metadata !DIExpression()), !dbg !2471
  %226 = icmp ult i64 %124, %130, !dbg !2633
  br i1 %226, label %227, label %229, !dbg !2636

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2633
  store i8 63, i8* %228, align 1, !dbg !2633, !tbaa !1389
  br label %229, !dbg !2633

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2636
  call void @llvm.dbg.value(metadata i64 %230, metadata !2423, metadata !DIExpression()), !dbg !2471
  %231 = icmp ult i64 %230, %130, !dbg !2637
  br i1 %231, label %232, label %234, !dbg !2640

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2637
  store i8 34, i8* %233, align 1, !dbg !2637, !tbaa !1389
  br label %234, !dbg !2637

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2640
  call void @llvm.dbg.value(metadata i64 %235, metadata !2423, metadata !DIExpression()), !dbg !2471
  %236 = icmp ult i64 %235, %130, !dbg !2641
  br i1 %236, label %237, label %239, !dbg !2644

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2641
  store i8 34, i8* %238, align 1, !dbg !2641, !tbaa !1389
  br label %239, !dbg !2641

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2644
  call void @llvm.dbg.value(metadata i64 %240, metadata !2423, metadata !DIExpression()), !dbg !2471
  %241 = icmp ult i64 %240, %130, !dbg !2645
  br i1 %241, label %242, label %244, !dbg !2648

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2645
  store i8 63, i8* %243, align 1, !dbg !2645, !tbaa !1389
  br label %244, !dbg !2645

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2648
  call void @llvm.dbg.value(metadata i64 %245, metadata !2423, metadata !DIExpression()), !dbg !2471
  br label %463, !dbg !2649

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2437, metadata !DIExpression()), !dbg !2563
  br label %256, !dbg !2650

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2437, metadata !DIExpression()), !dbg !2563
  br label %256, !dbg !2651

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2437, metadata !DIExpression()), !dbg !2563
  br label %254, !dbg !2652

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2437, metadata !DIExpression()), !dbg !2563
  br label %254, !dbg !2653

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2437, metadata !DIExpression()), !dbg !2563
  br label %256, !dbg !2654

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2437, metadata !DIExpression()), !dbg !2563
  br i1 %110, label %252, label %253, !dbg !2655

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2656

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2659

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2660
  call void @llvm.dbg.value(metadata i8 %255, metadata !2437, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.label(metadata !2466), !dbg !2661
  br i1 %111, label %256, label %625, !dbg !2662

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2660
  call void @llvm.dbg.value(metadata i8 %257, metadata !2437, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.label(metadata !2467), !dbg !2664
  br i1 %102, label %488, label %463, !dbg !2665

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2666

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2667, !tbaa !1389
  %261 = icmp eq i8 %260, 0, !dbg !2668
  br i1 %261, label %262, label %463, !dbg !2669

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2670
  br i1 %263, label %264, label %463, !dbg !2672

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2440, metadata !DIExpression()), !dbg !2563
  br label %265, !dbg !2673

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2563
  call void @llvm.dbg.value(metadata i8 %266, metadata !2440, metadata !DIExpression()), !dbg !2563
  br i1 %111, label %463, label %625, !dbg !2674

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 1, metadata !2440, metadata !DIExpression()), !dbg !2563
  br i1 %110, label %268, label %463, !dbg !2675

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2676

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2678
  %271 = icmp ne i64 %125, 0, !dbg !2680
  %272 = or i1 %271, %270, !dbg !2681
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2681
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2681
  call void @llvm.dbg.value(metadata i64 %274, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %273, metadata !2424, metadata !DIExpression()), !dbg !2471
  %275 = icmp ult i64 %124, %274, !dbg !2682
  br i1 %275, label %276, label %278, !dbg !2685

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2682
  store i8 39, i8* %277, align 1, !dbg !2682, !tbaa !1389
  br label %278, !dbg !2682

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2685
  call void @llvm.dbg.value(metadata i64 %279, metadata !2423, metadata !DIExpression()), !dbg !2471
  %280 = icmp ult i64 %279, %274, !dbg !2686
  br i1 %280, label %281, label %283, !dbg !2689

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2686
  store i8 92, i8* %282, align 1, !dbg !2686, !tbaa !1389
  br label %283, !dbg !2686

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2689
  call void @llvm.dbg.value(metadata i64 %284, metadata !2423, metadata !DIExpression()), !dbg !2471
  %285 = icmp ult i64 %284, %274, !dbg !2690
  br i1 %285, label %286, label %288, !dbg !2693

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2690
  store i8 39, i8* %287, align 1, !dbg !2690, !tbaa !1389
  br label %288, !dbg !2690

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2693
  call void @llvm.dbg.value(metadata i64 %289, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 0, metadata !2430, metadata !DIExpression()), !dbg !2471
  br label %463, !dbg !2694

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2695

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2441, metadata !DIExpression()), !dbg !2696
  %292 = tail call i16** @__ctype_b_loc() #25, !dbg !2697
  %293 = load i16*, i16** %292, align 8, !dbg !2697, !tbaa !1201
  %294 = zext i8 %158 to i64, !dbg !2697
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2697
  %296 = load i16, i16* %295, align 2, !dbg !2697, !tbaa !2699
  %297 = lshr i16 %296, 14, !dbg !2700
  %298 = trunc i16 %297 to i8, !dbg !2700
  %299 = and i8 %298, 1, !dbg !2700
  call void @llvm.dbg.value(metadata i8 %299, metadata !2444, metadata !DIExpression()), !dbg !2696
  br label %355, !dbg !2701

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2702
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2445, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i8* %23, metadata !2704, metadata !DIExpression()) #20, !dbg !2711
  call void @llvm.dbg.value(metadata i32 0, metadata !2709, metadata !DIExpression()) #20, !dbg !2711
  call void @llvm.dbg.value(metadata i64 8, metadata !2710, metadata !DIExpression()) #20, !dbg !2711
  store i64 0, i64* %10, align 8, !dbg !2713
  call void @llvm.dbg.value(metadata i64 0, metadata !2441, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i8 1, metadata !2444, metadata !DIExpression()), !dbg !2696
  %301 = icmp eq i64 %155, -1, !dbg !2714
  br i1 %301, label %302, label %304, !dbg !2716

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2717
  call void @llvm.dbg.value(metadata i64 %303, metadata !2416, metadata !DIExpression()), !dbg !2471
  br label %304, !dbg !2718

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2563
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  br label %306, !dbg !2719

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2720
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2721
  call void @llvm.dbg.value(metadata i8 %308, metadata !2444, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 %307, metadata !2441, metadata !DIExpression()), !dbg !2696
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2722
  %309 = add i64 %307, %123, !dbg !2723
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2724
  %311 = sub i64 %305, %309, !dbg !2725
  call void @llvm.dbg.value(metadata i32* %12, metadata !2451, metadata !DIExpression(DW_OP_deref)), !dbg !2484
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #20, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %312, metadata !2454, metadata !DIExpression()), !dbg !2484
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2727

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2441, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 %307, metadata !2441, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 %307, metadata !2441, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 %307, metadata !2441, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 %307, metadata !2441, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 %307, metadata !2441, metadata !DIExpression()), !dbg !2696
  %314 = icmp ugt i64 %305, %309, !dbg !2728
  br i1 %314, label %315, label %340, !dbg !2730

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2731
  br label %317, !dbg !2731

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2441, metadata !DIExpression()), !dbg !2696
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2732
  %321 = load i8, i8* %320, align 1, !dbg !2732, !tbaa !1389
  %322 = icmp eq i8 %321, 0, !dbg !2730
  br i1 %322, label %340, label %323, !dbg !2731

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2733
  call void @llvm.dbg.value(metadata i64 %324, metadata !2441, metadata !DIExpression()), !dbg !2696
  %325 = add i64 %324, %123, !dbg !2734
  %326 = icmp ult i64 %325, %305, !dbg !2728
  br i1 %326, label %317, label %340, !dbg !2730, !llvm.loop !2735

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2736
  %329 = and i1 %113, %328, !dbg !2739
  call void @llvm.dbg.value(metadata i64 1, metadata !2455, metadata !DIExpression()), !dbg !2740
  br i1 %329, label %330, label %343, !dbg !2739

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2455, metadata !DIExpression()), !dbg !2740
  %332 = add i64 %331, %309, !dbg !2741
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2742
  %334 = load i8, i8* %333, align 1, !dbg !2742, !tbaa !1389
  %335 = sext i8 %334 to i32, !dbg !2742
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2743

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2744
  call void @llvm.dbg.value(metadata i64 %337, metadata !2455, metadata !DIExpression()), !dbg !2740
  %338 = icmp eq i64 %337, %312, !dbg !2736
  br i1 %338, label %343, label %330, !dbg !2745, !llvm.loop !2746

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2441, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i8 %308, metadata !2444, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 %307, metadata !2441, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i8 %308, metadata !2444, metadata !DIExpression()), !dbg !2696
  br label %340, !dbg !2748

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2748
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2749, !tbaa !1319
  call void @llvm.dbg.value(metadata i32 %344, metadata !2451, metadata !DIExpression()), !dbg !2484
  %345 = call i32 @iswprint(i32 %344) #20, !dbg !2751
  %346 = icmp eq i32 %345, 0, !dbg !2751
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2752
  call void @llvm.dbg.value(metadata i8 %347, metadata !2444, metadata !DIExpression()), !dbg !2696
  %348 = add i64 %312, %307, !dbg !2753
  call void @llvm.dbg.value(metadata i64 %348, metadata !2441, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i8 %347, metadata !2444, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 %348, metadata !2441, metadata !DIExpression()), !dbg !2696
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2748
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !2754
  %350 = icmp eq i32 %349, 0, !dbg !2755
  br i1 %350, label %306, label %351, !dbg !2756, !llvm.loop !2757

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2759
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 2, metadata !2417, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 2, metadata !2417, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 2, metadata !2417, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 2, metadata !2417, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 2, metadata !2417, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %99, metadata !2427, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %99, metadata !2427, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %99, metadata !2427, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %99, metadata !2427, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %99, metadata !2427, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 2, metadata !2417, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 2, metadata !2417, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 2, metadata !2417, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 2, metadata !2417, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 2, metadata !2417, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %99, metadata !2427, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %99, metadata !2427, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %99, metadata !2427, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %99, metadata !2427, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %99, metadata !2427, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %305, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2748
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2759
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2563
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2760
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2760
  call void @llvm.dbg.value(metadata i8 %358, metadata !2444, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 %357, metadata !2441, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 %356, metadata !2416, metadata !DIExpression()), !dbg !2471
  %359 = and i8 %358, 1, !dbg !2761
  %360 = icmp ne i8 %359, 0, !dbg !2761
  call void @llvm.dbg.value(metadata i8 %359, metadata !2440, metadata !DIExpression()), !dbg !2563
  %361 = icmp ult i64 %357, 2, !dbg !2762
  %362 = or i1 %360, %114, !dbg !2763
  %363 = and i1 %361, %362, !dbg !2764
  br i1 %363, label %463, label %364, !dbg !2764

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2765
  call void @llvm.dbg.value(metadata i64 %365, metadata !2462, metadata !DIExpression()), !dbg !2766
  br label %366, !dbg !2767

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2556
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2471
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2492
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2563
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2563
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2768
  call void @llvm.dbg.value(metadata i8 %372, metadata !2439, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 %371, metadata !2438, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 %370, metadata !2433, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 %369, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %368, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %367, metadata !2422, metadata !DIExpression()), !dbg !2471
  br i1 %362, label %419, label %373, !dbg !2769

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2774

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2439, metadata !DIExpression()), !dbg !2563
  %375 = and i8 %369, 1, !dbg !2777
  %376 = icmp eq i8 %375, 0, !dbg !2777
  %377 = and i1 %110, %376, !dbg !2777
  br i1 %377, label %378, label %394, !dbg !2777

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2779
  br i1 %379, label %380, label %382, !dbg !2783

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2779
  store i8 39, i8* %381, align 1, !dbg !2779, !tbaa !1389
  br label %382, !dbg !2779

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2783
  call void @llvm.dbg.value(metadata i64 %383, metadata !2423, metadata !DIExpression()), !dbg !2471
  %384 = icmp ult i64 %383, %130, !dbg !2784
  br i1 %384, label %385, label %387, !dbg !2787

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2784
  store i8 36, i8* %386, align 1, !dbg !2784, !tbaa !1389
  br label %387, !dbg !2784

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2787
  call void @llvm.dbg.value(metadata i64 %388, metadata !2423, metadata !DIExpression()), !dbg !2471
  %389 = icmp ult i64 %388, %130, !dbg !2788
  br i1 %389, label %390, label %392, !dbg !2791

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2788
  store i8 39, i8* %391, align 1, !dbg !2788, !tbaa !1389
  br label %392, !dbg !2788

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2791
  call void @llvm.dbg.value(metadata i64 %393, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 1, metadata !2430, metadata !DIExpression()), !dbg !2471
  br label %394, !dbg !2792

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2471
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2471
  call void @llvm.dbg.value(metadata i8 %396, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %395, metadata !2423, metadata !DIExpression()), !dbg !2471
  %397 = icmp ult i64 %395, %130, !dbg !2793
  br i1 %397, label %398, label %400, !dbg !2796

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2793
  store i8 92, i8* %399, align 1, !dbg !2793, !tbaa !1389
  br label %400, !dbg !2793

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2796
  call void @llvm.dbg.value(metadata i64 %401, metadata !2423, metadata !DIExpression()), !dbg !2471
  %402 = icmp ult i64 %401, %130, !dbg !2797
  br i1 %402, label %403, label %407, !dbg !2800

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2797
  %405 = or i8 %404, 48, !dbg !2797
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2797
  store i8 %405, i8* %406, align 1, !dbg !2797, !tbaa !1389
  br label %407, !dbg !2797

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2800
  call void @llvm.dbg.value(metadata i64 %408, metadata !2423, metadata !DIExpression()), !dbg !2471
  %409 = icmp ult i64 %408, %130, !dbg !2801
  br i1 %409, label %410, label %415, !dbg !2804

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2801
  %412 = and i8 %411, 7, !dbg !2801
  %413 = or i8 %412, 48, !dbg !2801
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2801
  store i8 %413, i8* %414, align 1, !dbg !2801, !tbaa !1389
  br label %415, !dbg !2801

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2804
  call void @llvm.dbg.value(metadata i64 %416, metadata !2423, metadata !DIExpression()), !dbg !2471
  %417 = and i8 %370, 7, !dbg !2805
  %418 = or i8 %417, 48, !dbg !2806
  call void @llvm.dbg.value(metadata i8 %418, metadata !2433, metadata !DIExpression()), !dbg !2563
  br label %428, !dbg !2807

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2808
  %421 = icmp eq i8 %420, 0, !dbg !2808
  br i1 %421, label %428, label %422, !dbg !2810

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2811
  br i1 %423, label %424, label %426, !dbg !2815

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2811
  store i8 92, i8* %425, align 1, !dbg !2811, !tbaa !1389
  br label %426, !dbg !2811

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2815
  call void @llvm.dbg.value(metadata i64 %427, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 0, metadata !2438, metadata !DIExpression()), !dbg !2563
  br label %428, !dbg !2816

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2471
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2492
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2563
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2563
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2563
  call void @llvm.dbg.value(metadata i8 %433, metadata !2439, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 %432, metadata !2438, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 %431, metadata !2433, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 %430, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %429, metadata !2423, metadata !DIExpression()), !dbg !2471
  %434 = add i64 %367, 1, !dbg !2817
  %435 = icmp ugt i64 %365, %434, !dbg !2819
  br i1 %435, label %436, label %526, !dbg !2820

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2821
  %438 = icmp ne i8 %437, 0, !dbg !2821
  %439 = and i8 %433, 1, !dbg !2821
  %440 = icmp eq i8 %439, 0, !dbg !2821
  %441 = and i1 %438, %440, !dbg !2821
  br i1 %441, label %442, label %453, !dbg !2821

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2824
  br i1 %443, label %444, label %446, !dbg !2828

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2824
  store i8 39, i8* %445, align 1, !dbg !2824, !tbaa !1389
  br label %446, !dbg !2824

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2828
  call void @llvm.dbg.value(metadata i64 %447, metadata !2423, metadata !DIExpression()), !dbg !2471
  %448 = icmp ult i64 %447, %130, !dbg !2829
  br i1 %448, label %449, label %451, !dbg !2832

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2829
  store i8 39, i8* %450, align 1, !dbg !2829, !tbaa !1389
  br label %451, !dbg !2829

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2832
  call void @llvm.dbg.value(metadata i64 %452, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 0, metadata !2430, metadata !DIExpression()), !dbg !2471
  br label %453, !dbg !2833

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2834
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2471
  call void @llvm.dbg.value(metadata i8 %455, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %454, metadata !2423, metadata !DIExpression()), !dbg !2471
  %456 = icmp ult i64 %454, %130, !dbg !2835
  br i1 %456, label %457, label %459, !dbg !2838

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2835
  store i8 %431, i8* %458, align 1, !dbg !2835, !tbaa !1389
  br label %459, !dbg !2835

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2838
  call void @llvm.dbg.value(metadata i64 %460, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %434, metadata !2422, metadata !DIExpression()), !dbg !2471
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2839
  %462 = load i8, i8* %461, align 1, !dbg !2839, !tbaa !1389
  call void @llvm.dbg.value(metadata i8 %462, metadata !2433, metadata !DIExpression()), !dbg !2563
  br label %366, !dbg !2840, !llvm.loop !2841

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2556
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2471
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2488
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2844
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2471
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2471
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2563
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2563
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2563
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %472, metadata !2440, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 %471, metadata !2439, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 %156, metadata !2438, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 %470, metadata !2433, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 %469, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %468, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %467, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %466, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %465, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %464, metadata !2422, metadata !DIExpression()), !dbg !2471
  br i1 %117, label %486, label %474, !dbg !2845

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2846
  %476 = zext i8 %475 to i64, !dbg !2846
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2847
  %478 = load i32, i32* %477, align 4, !dbg !2847, !tbaa !1319
  %479 = and i8 %470, 31, !dbg !2848
  %480 = zext i8 %479 to i32, !dbg !2848
  %481 = shl nuw i32 1, %480, !dbg !2849
  %482 = and i32 %478, %481, !dbg !2849
  %483 = icmp eq i32 %482, 0, !dbg !2849
  %484 = icmp eq i8 %156, 0, !dbg !2850
  %485 = and i1 %484, %483, !dbg !2851
  br i1 %485, label %526, label %488, !dbg !2851

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2850
  br i1 %487, label %526, label %488, !dbg !2852

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2853
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2471
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2488
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2844
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2492
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2493
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2563
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2563
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %496, metadata !2440, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 %495, metadata !2433, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 %494, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %493, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %492, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %491, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %490, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %489, metadata !2422, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.label(metadata !2468), !dbg !2854
  br i1 %109, label %498, label %629, !dbg !2855

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2439, metadata !DIExpression()), !dbg !2563
  %499 = and i8 %493, 1, !dbg !2857
  %500 = icmp eq i8 %499, 0, !dbg !2857
  %501 = and i1 %110, %500, !dbg !2857
  br i1 %501, label %502, label %518, !dbg !2857

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2859
  br i1 %503, label %504, label %506, !dbg !2863

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2859
  store i8 39, i8* %505, align 1, !dbg !2859, !tbaa !1389
  br label %506, !dbg !2859

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2863
  call void @llvm.dbg.value(metadata i64 %507, metadata !2423, metadata !DIExpression()), !dbg !2471
  %508 = icmp ult i64 %507, %497, !dbg !2864
  br i1 %508, label %509, label %511, !dbg !2867

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2864
  store i8 36, i8* %510, align 1, !dbg !2864, !tbaa !1389
  br label %511, !dbg !2864

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2867
  call void @llvm.dbg.value(metadata i64 %512, metadata !2423, metadata !DIExpression()), !dbg !2471
  %513 = icmp ult i64 %512, %497, !dbg !2868
  br i1 %513, label %514, label %516, !dbg !2871

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2868
  store i8 39, i8* %515, align 1, !dbg !2868, !tbaa !1389
  br label %516, !dbg !2868

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2871
  call void @llvm.dbg.value(metadata i64 %517, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 1, metadata !2430, metadata !DIExpression()), !dbg !2471
  br label %518, !dbg !2872

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2563
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2471
  call void @llvm.dbg.value(metadata i8 %520, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %519, metadata !2423, metadata !DIExpression()), !dbg !2471
  %521 = icmp ult i64 %519, %497, !dbg !2873
  br i1 %521, label %522, label %524, !dbg !2876

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2873
  store i8 92, i8* %523, align 1, !dbg !2873, !tbaa !1389
  br label %524, !dbg !2873

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2876
  call void @llvm.dbg.value(metadata i64 %525, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %536, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %535, metadata !2440, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 %534, metadata !2439, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 %533, metadata !2433, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 %532, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %531, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %530, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %529, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %528, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %527, metadata !2422, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.label(metadata !2469), !dbg !2877
  br label %553, !dbg !2878

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2853
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2471
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2488
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2844
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2492
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2493
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2881
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2563
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2563
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %535, metadata !2440, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 %534, metadata !2439, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 %533, metadata !2433, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 %532, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %531, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %530, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %529, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %528, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %527, metadata !2422, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.label(metadata !2469), !dbg !2877
  %537 = and i8 %531, 1, !dbg !2878
  %538 = icmp ne i8 %537, 0, !dbg !2878
  %539 = and i8 %534, 1, !dbg !2878
  %540 = icmp eq i8 %539, 0, !dbg !2878
  %541 = and i1 %538, %540, !dbg !2878
  br i1 %541, label %542, label %553, !dbg !2878

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2882
  br i1 %543, label %544, label %546, !dbg !2886

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2882
  store i8 39, i8* %545, align 1, !dbg !2882, !tbaa !1389
  br label %546, !dbg !2882

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2886
  call void @llvm.dbg.value(metadata i64 %547, metadata !2423, metadata !DIExpression()), !dbg !2471
  %548 = icmp ult i64 %547, %536, !dbg !2887
  br i1 %548, label %549, label %551, !dbg !2890

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2887
  store i8 39, i8* %550, align 1, !dbg !2887, !tbaa !1389
  br label %551, !dbg !2887

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2890
  call void @llvm.dbg.value(metadata i64 %552, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 0, metadata !2430, metadata !DIExpression()), !dbg !2471
  br label %553, !dbg !2891

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2563
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2471
  call void @llvm.dbg.value(metadata i8 %562, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %561, metadata !2423, metadata !DIExpression()), !dbg !2471
  %563 = icmp ult i64 %561, %554, !dbg !2892
  br i1 %563, label %564, label %566, !dbg !2895

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2892
  store i8 %556, i8* %565, align 1, !dbg !2892, !tbaa !1389
  br label %566, !dbg !2892

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %567, metadata !2423, metadata !DIExpression()), !dbg !2471
  %568 = and i8 %555, 1, !dbg !2896
  %569 = icmp eq i8 %568, 0, !dbg !2896
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2898
  call void @llvm.dbg.value(metadata i8 %570, metadata !2432, metadata !DIExpression()), !dbg !2471
  br label %571, !dbg !2899

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2853
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2471
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2488
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2844
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2492
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2471
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2494
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %578, metadata !2432, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %577, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %576, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %575, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %574, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %573, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %572, metadata !2422, metadata !DIExpression()), !dbg !2471
  %580 = add i64 %572, 1, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %580, metadata !2422, metadata !DIExpression()), !dbg !2471
  br label %122, !dbg !2901, !llvm.loop !2902

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %125, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %125, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %127, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %127, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %128, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %128, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %129, metadata !2432, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %129, metadata !2432, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %125, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %125, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %127, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %127, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %128, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %128, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %129, metadata !2432, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %129, metadata !2432, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %125, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %125, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %127, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %127, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %128, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %128, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %129, metadata !2432, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %129, metadata !2432, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %125, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %125, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %127, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %127, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %128, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %128, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %129, metadata !2432, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %129, metadata !2432, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %125, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %125, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %582, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %582, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %127, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %127, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %128, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %128, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %129, metadata !2432, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %129, metadata !2432, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %125, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %125, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %582, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %582, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %127, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %127, metadata !2430, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %128, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %128, metadata !2431, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %129, metadata !2432, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 %129, metadata !2432, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  %583 = icmp eq i64 %124, 0, !dbg !2904
  %584 = and i1 %110, %583, !dbg !2906
  %585 = xor i1 %584, true, !dbg !2906
  %586 = or i1 %109, %585, !dbg !2906
  br i1 %586, label %587, label %629, !dbg !2906

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2907
  %589 = xor i1 %588, true, !dbg !2907
  %590 = and i8 %128, 1, !dbg !2909
  %591 = icmp eq i8 %590, 0, !dbg !2909
  %592 = or i1 %591, %589, !dbg !2907
  br i1 %592, label %602, label %593, !dbg !2907

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2910
  %595 = icmp eq i8 %594, 0, !dbg !2910
  br i1 %595, label %598, label %596, !dbg !2913

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %125, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %582, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %125, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %582, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %125, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %582, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %125, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %125, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %582, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %94, metadata !2420, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %95, metadata !2421, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %125, metadata !2424, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %582, metadata !2416, metadata !DIExpression()), !dbg !2471
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2914
  br label %645, !dbg !2915

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2916
  %600 = icmp ne i64 %125, 0, !dbg !2918
  %601 = and i1 %600, %599, !dbg !2919
  br i1 %601, label %26, label %602, !dbg !2919

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2425, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %97, metadata !2425, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %97, metadata !2425, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %97, metadata !2425, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %97, metadata !2425, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %97, metadata !2425, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %97, metadata !2425, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %97, metadata !2425, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %97, metadata !2425, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %97, metadata !2425, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %130, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %97, metadata !2425, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %97, metadata !2425, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  %603 = icmp ne i8* %97, null, !dbg !2920
  %604 = and i1 %603, %109, !dbg !2922
  br i1 %604, label %605, label %620, !dbg !2922

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2425, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %124, metadata !2423, metadata !DIExpression()), !dbg !2471
  %606 = load i8, i8* %97, align 1, !dbg !2923, !tbaa !1389
  %607 = icmp eq i8 %606, 0, !dbg !2926
  br i1 %607, label %620, label %608, !dbg !2926

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2425, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %611, metadata !2423, metadata !DIExpression()), !dbg !2471
  %612 = icmp ult i64 %611, %130, !dbg !2927
  br i1 %612, label %613, label %615, !dbg !2930

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2927
  store i8 %609, i8* %614, align 1, !dbg !2927, !tbaa !1389
  br label %615, !dbg !2927

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2930
  call void @llvm.dbg.value(metadata i64 %616, metadata !2423, metadata !DIExpression()), !dbg !2471
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2931
  call void @llvm.dbg.value(metadata i8* %617, metadata !2425, metadata !DIExpression()), !dbg !2471
  %618 = load i8, i8* %617, align 1, !dbg !2923, !tbaa !1389
  %619 = icmp eq i8 %618, 0, !dbg !2926
  br i1 %619, label %620, label %608, !dbg !2926, !llvm.loop !2932

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2525
  call void @llvm.dbg.value(metadata i64 %621, metadata !2423, metadata !DIExpression()), !dbg !2471
  %622 = icmp ult i64 %621, %130, !dbg !2934
  br i1 %622, label %623, label %645, !dbg !2936

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2937
  store i8 0, i8* %624, align 1, !dbg !2938, !tbaa !1389
  br label %645, !dbg !2937

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %630, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.label(metadata !2470), !dbg !2939
  %627 = icmp eq i8 %101, 0, !dbg !2940
  %628 = select i1 %627, i32 2, i32 4, !dbg !2940
  br label %635, !dbg !2940

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2414, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i64 %630, metadata !2416, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.label(metadata !2470), !dbg !2939
  %632 = icmp eq i32 %93, 2, !dbg !2942
  %633 = icmp eq i8 %101, 0, !dbg !2940
  %634 = select i1 %633, i32 2, i32 4, !dbg !2940
  br i1 %632, label %635, label %639, !dbg !2940

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2940

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2417, metadata !DIExpression()), !dbg !2471
  %643 = and i32 %5, -3, !dbg !2943
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2944
  br label %645, !dbg !2945

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2946
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2947 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2951, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 %1, metadata !2952, metadata !DIExpression()), !dbg !2955
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #20, !dbg !2956
  call void @llvm.dbg.value(metadata i8* %3, metadata !2953, metadata !DIExpression()), !dbg !2955
  %4 = icmp eq i8* %3, %0, !dbg !2957
  br i1 %4, label %5, label %71, !dbg !2959

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #20, !dbg !2960
  call void @llvm.dbg.value(metadata i8* %6, metadata !2954, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8* %6, metadata !2961, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8* undef, metadata !2967, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8 85, metadata !2968, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8 84, metadata !2969, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8 70, metadata !2970, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8 45, metadata !2971, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8 56, metadata !2972, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8 0, metadata !2973, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8 0, metadata !2974, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8 0, metadata !2975, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8 0, metadata !2976, metadata !DIExpression()), !dbg !2977
  %7 = load i8, i8* %6, align 1, !dbg !2980, !tbaa !1389
  %8 = and i8 %7, -33, !dbg !2980
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2980

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2982, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i8* undef, metadata !2987, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i8 84, metadata !2988, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i8 70, metadata !2989, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i8 45, metadata !2990, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i8 56, metadata !2991, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i8 0, metadata !2992, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i8 0, metadata !2993, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i8 0, metadata !2994, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i8 0, metadata !2995, metadata !DIExpression()), !dbg !2996
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3000
  %11 = load i8, i8* %10, align 1, !dbg !3000, !tbaa !1389
  %12 = and i8 %11, -33, !dbg !3000
  %13 = icmp eq i8 %12, 84, !dbg !3000
  br i1 %13, label %14, label %68, !dbg !3000

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3002, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8* undef, metadata !3007, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8 70, metadata !3008, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8 45, metadata !3009, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8 56, metadata !3010, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8 0, metadata !3011, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8 0, metadata !3012, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8 0, metadata !3013, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8 0, metadata !3014, metadata !DIExpression()), !dbg !3015
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3019
  %16 = load i8, i8* %15, align 1, !dbg !3019, !tbaa !1389
  %17 = and i8 %16, -33, !dbg !3019
  %18 = icmp eq i8 %17, 70, !dbg !3019
  br i1 %18, label %19, label %68, !dbg !3019

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3021, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8* undef, metadata !3026, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 45, metadata !3027, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 56, metadata !3028, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 0, metadata !3029, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 0, metadata !3030, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 0, metadata !3031, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 0, metadata !3032, metadata !DIExpression()), !dbg !3033
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3037
  %21 = load i8, i8* %20, align 1, !dbg !3037, !tbaa !1389
  %22 = icmp eq i8 %21, 45, !dbg !3037
  br i1 %22, label %23, label %68, !dbg !3039

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3040, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i8* undef, metadata !3045, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i8 56, metadata !3046, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i8 0, metadata !3047, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i8 0, metadata !3048, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i8 0, metadata !3049, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i8 0, metadata !3050, metadata !DIExpression()), !dbg !3051
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3055
  %25 = load i8, i8* %24, align 1, !dbg !3055, !tbaa !1389
  %26 = icmp eq i8 %25, 56, !dbg !3055
  br i1 %26, label %27, label %68, !dbg !3057

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3058, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i8* undef, metadata !3063, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i8 0, metadata !3064, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i8 0, metadata !3065, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i8 0, metadata !3066, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i8 0, metadata !3067, metadata !DIExpression()), !dbg !3068
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3072
  %29 = load i8, i8* %28, align 1, !dbg !3072, !tbaa !1389
  %30 = icmp eq i8 %29, 0, !dbg !3072
  br i1 %30, label %31, label %68, !dbg !3074

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3075, !tbaa !1389
  %33 = icmp eq i8 %32, 96, !dbg !3076
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.83, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.84, i64 0, i64 0), !dbg !3075
  br label %71, !dbg !3077

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2982, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8* undef, metadata !2987, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8 66, metadata !2988, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8 49, metadata !2989, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8 56, metadata !2990, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8 48, metadata !2991, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8 51, metadata !2992, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8 48, metadata !2993, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8 0, metadata !2994, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8 0, metadata !2995, metadata !DIExpression()), !dbg !3078
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3082
  %37 = load i8, i8* %36, align 1, !dbg !3082, !tbaa !1389
  %38 = and i8 %37, -33, !dbg !3082
  %39 = icmp eq i8 %38, 66, !dbg !3082
  br i1 %39, label %40, label %68, !dbg !3082

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3002, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i8* undef, metadata !3007, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i8 49, metadata !3008, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i8 56, metadata !3009, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i8 48, metadata !3010, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i8 51, metadata !3011, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i8 48, metadata !3012, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i8 0, metadata !3013, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i8 0, metadata !3014, metadata !DIExpression()), !dbg !3083
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3085
  %42 = load i8, i8* %41, align 1, !dbg !3085, !tbaa !1389
  %43 = icmp eq i8 %42, 49, !dbg !3085
  br i1 %43, label %44, label %68, !dbg !3086

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3021, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8* undef, metadata !3026, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 56, metadata !3027, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 48, metadata !3028, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 51, metadata !3029, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 48, metadata !3030, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 0, metadata !3031, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 0, metadata !3032, metadata !DIExpression()), !dbg !3087
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3089
  %46 = load i8, i8* %45, align 1, !dbg !3089, !tbaa !1389
  %47 = icmp eq i8 %46, 56, !dbg !3089
  br i1 %47, label %48, label %68, !dbg !3090

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3040, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8* undef, metadata !3045, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8 48, metadata !3046, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8 51, metadata !3047, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8 48, metadata !3048, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8 0, metadata !3049, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8 0, metadata !3050, metadata !DIExpression()), !dbg !3091
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3093
  %50 = load i8, i8* %49, align 1, !dbg !3093, !tbaa !1389
  %51 = icmp eq i8 %50, 48, !dbg !3093
  br i1 %51, label %52, label %68, !dbg !3094

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3058, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8* undef, metadata !3063, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8 51, metadata !3064, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8 48, metadata !3065, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8 0, metadata !3066, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8 0, metadata !3067, metadata !DIExpression()), !dbg !3095
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3097
  %54 = load i8, i8* %53, align 1, !dbg !3097, !tbaa !1389
  %55 = icmp eq i8 %54, 51, !dbg !3097
  br i1 %55, label %56, label %68, !dbg !3098

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3099, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i8* undef, metadata !3104, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i8 48, metadata !3105, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i8 0, metadata !3106, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i8 0, metadata !3107, metadata !DIExpression()), !dbg !3108
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3112
  %58 = load i8, i8* %57, align 1, !dbg !3112, !tbaa !1389
  %59 = icmp eq i8 %58, 48, !dbg !3112
  br i1 %59, label %60, label %68, !dbg !3114

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3115, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i8* undef, metadata !3120, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i8 0, metadata !3121, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i8 0, metadata !3122, metadata !DIExpression()), !dbg !3123
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3127
  %62 = load i8, i8* %61, align 1, !dbg !3127, !tbaa !1389
  %63 = icmp eq i8 %62, 0, !dbg !3127
  br i1 %63, label %64, label %68, !dbg !3129

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3130, !tbaa !1389
  %66 = icmp eq i8 %65, 96, !dbg !3131
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.85, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.86, i64 0, i64 0), !dbg !3130
  br label %71, !dbg !3132

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3133
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), !dbg !3134
  br label %71, !dbg !3135

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2955
  ret i8* %72, !dbg !3136
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #17

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !387 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !391 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3137 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3141, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64 %1, metadata !3142, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3143, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i8* %0, metadata !3145, metadata !DIExpression()) #20, !dbg !3158
  call void @llvm.dbg.value(metadata i64 %1, metadata !3150, metadata !DIExpression()) #20, !dbg !3158
  call void @llvm.dbg.value(metadata i64* null, metadata !3151, metadata !DIExpression()) #20, !dbg !3158
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3152, metadata !DIExpression()) #20, !dbg !3158
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3160
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3160
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3153, metadata !DIExpression()) #20, !dbg !3158
  %6 = tail call i32* @__errno_location() #25, !dbg !3161
  %7 = load i32, i32* %6, align 4, !dbg !3161, !tbaa !1319
  call void @llvm.dbg.value(metadata i32 %7, metadata !3154, metadata !DIExpression()) #20, !dbg !3158
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3162
  %9 = load i32, i32* %8, align 4, !dbg !3162, !tbaa !2356
  %10 = or i32 %9, 1, !dbg !3163
  call void @llvm.dbg.value(metadata i32 %10, metadata !3155, metadata !DIExpression()) #20, !dbg !3158
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3164
  %12 = load i32, i32* %11, align 8, !dbg !3164, !tbaa !2305
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3165
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3166
  %15 = load i8*, i8** %14, align 8, !dbg !3166, !tbaa !2379
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3167
  %17 = load i8*, i8** %16, align 8, !dbg !3167, !tbaa !2382
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #20, !dbg !3168
  %19 = add i64 %18, 1, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %19, metadata !3156, metadata !DIExpression()) #20, !dbg !3158
  call void @llvm.dbg.value(metadata i64 %19, metadata !3170, metadata !DIExpression()) #20, !dbg !3175
  %20 = tail call noalias i8* @xmalloc(i64 %19) #20, !dbg !3177
  call void @llvm.dbg.value(metadata i8* %20, metadata !3157, metadata !DIExpression()) #20, !dbg !3158
  %21 = load i32, i32* %11, align 8, !dbg !3178, !tbaa !2305
  %22 = load i8*, i8** %14, align 8, !dbg !3179, !tbaa !2379
  %23 = load i8*, i8** %16, align 8, !dbg !3180, !tbaa !2382
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #20, !dbg !3181
  store i32 %7, i32* %6, align 4, !dbg !3182, !tbaa !1319
  ret i8* %20, !dbg !3183
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3146 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3145, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i64 %1, metadata !3150, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i64* %2, metadata !3151, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3152, metadata !DIExpression()), !dbg !3184
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3185
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3185
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3153, metadata !DIExpression()), !dbg !3184
  %7 = tail call i32* @__errno_location() #25, !dbg !3186
  %8 = load i32, i32* %7, align 4, !dbg !3186, !tbaa !1319
  call void @llvm.dbg.value(metadata i32 %8, metadata !3154, metadata !DIExpression()), !dbg !3184
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3187
  %10 = load i32, i32* %9, align 4, !dbg !3187, !tbaa !2356
  %11 = icmp ne i64* %2, null, !dbg !3188
  %12 = xor i1 %11, true, !dbg !3188
  %13 = zext i1 %12 to i32, !dbg !3188
  %14 = or i32 %10, %13, !dbg !3189
  call void @llvm.dbg.value(metadata i32 %14, metadata !3155, metadata !DIExpression()), !dbg !3184
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3190
  %16 = load i32, i32* %15, align 8, !dbg !3190, !tbaa !2305
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3191
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3192
  %19 = load i8*, i8** %18, align 8, !dbg !3192, !tbaa !2379
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3193
  %21 = load i8*, i8** %20, align 8, !dbg !3193, !tbaa !2382
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3194
  %23 = add i64 %22, 1, !dbg !3195
  call void @llvm.dbg.value(metadata i64 %23, metadata !3156, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i64 %23, metadata !3170, metadata !DIExpression()) #20, !dbg !3196
  %24 = tail call noalias i8* @xmalloc(i64 %23) #20, !dbg !3198
  call void @llvm.dbg.value(metadata i8* %24, metadata !3157, metadata !DIExpression()), !dbg !3184
  %25 = load i32, i32* %15, align 8, !dbg !3199, !tbaa !2305
  %26 = load i8*, i8** %18, align 8, !dbg !3200, !tbaa !2379
  %27 = load i8*, i8** %20, align 8, !dbg !3201, !tbaa !2382
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3202
  store i32 %8, i32* %7, align 4, !dbg !3203, !tbaa !1319
  br i1 %11, label %29, label %30, !dbg !3204

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3205, !tbaa !1378
  br label %30, !dbg !3207

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3208
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3209 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3213, !tbaa !1201
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3211, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i32 1, metadata !3212, metadata !DIExpression()), !dbg !3214
  %2 = load i32, i32* @nslots, align 4, !dbg !3215, !tbaa !1319
  %3 = icmp sgt i32 %2, 1, !dbg !3218
  br i1 %3, label %4, label %12, !dbg !3219

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3212, metadata !DIExpression()), !dbg !3214
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3220
  %7 = load i8*, i8** %6, align 8, !dbg !3220, !tbaa !3221
  tail call void @free(i8* %7) #20, !dbg !3223
  %8 = add nuw nsw i64 %5, 1, !dbg !3224
  call void @llvm.dbg.value(metadata i64 %8, metadata !3212, metadata !DIExpression()), !dbg !3214
  %9 = load i32, i32* @nslots, align 4, !dbg !3215, !tbaa !1319
  %10 = sext i32 %9 to i64, !dbg !3218
  %11 = icmp slt i64 %8, %10, !dbg !3218
  br i1 %11, label %4, label %12, !dbg !3219, !llvm.loop !3225

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3227
  %14 = load i8*, i8** %13, align 8, !dbg !3227, !tbaa !3221
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3229
  br i1 %15, label %17, label %16, !dbg !3230

16:                                               ; preds = %12
  tail call void @free(i8* %14) #20, !dbg !3231
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3233, !tbaa !3234
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3235, !tbaa !3221
  br label %17, !dbg !3236

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3237
  br i1 %18, label %21, label %19, !dbg !3239

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3240
  tail call void @free(i8* %20) #20, !dbg !3242
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3243, !tbaa !1201
  br label %21, !dbg !3244

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3245, !tbaa !1319
  ret void, !dbg !3246
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3247 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3249, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i8* %1, metadata !3250, metadata !DIExpression()), !dbg !3251
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3252
  ret i8* %3, !dbg !3253
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3254 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3258, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i8* %1, metadata !3259, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i64 %2, metadata !3260, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3261, metadata !DIExpression()), !dbg !3273
  %5 = tail call i32* @__errno_location() #25, !dbg !3274
  %6 = load i32, i32* %5, align 4, !dbg !3274, !tbaa !1319
  call void @llvm.dbg.value(metadata i32 %6, metadata !3262, metadata !DIExpression()), !dbg !3273
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3275, !tbaa !1201
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3263, metadata !DIExpression()), !dbg !3273
  %8 = icmp slt i32 %0, 0, !dbg !3276
  br i1 %8, label %9, label %10, !dbg !3278

9:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3279
  unreachable, !dbg !3279

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3280, !tbaa !1319
  %12 = icmp sgt i32 %11, %0, !dbg !3281
  br i1 %12, label %34, label %13, !dbg !3282

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3283
  call void @llvm.dbg.value(metadata i1 %14, metadata !3264, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3267, metadata !DIExpression()), !dbg !3284
  %15 = icmp eq i32 %0, 2147483647, !dbg !3285
  br i1 %15, label %16, label %17, !dbg !3287

16:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3288
  unreachable, !dbg !3288

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3289
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3289
  %20 = add nuw nsw i32 %0, 1, !dbg !3290
  %21 = sext i32 %20 to i64, !dbg !3291
  %22 = shl nuw nsw i64 %21, 4, !dbg !3292
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #20, !dbg !3293
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3293
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3263, metadata !DIExpression()), !dbg !3273
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3294, !tbaa !1201
  br i1 %14, label %25, label %26, !dbg !3295

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3296, !tbaa.struct !3298
  br label %26, !dbg !3299

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3300, !tbaa !1319
  %28 = sext i32 %27 to i64, !dbg !3301
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3301
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3302
  %31 = sub nsw i32 %20, %27, !dbg !3303
  %32 = sext i32 %31 to i64, !dbg !3304
  %33 = shl nsw i64 %32, 4, !dbg !3305
  call void @llvm.dbg.value(metadata i8* %30, metadata !2704, metadata !DIExpression()) #20, !dbg !3306
  call void @llvm.dbg.value(metadata i32 0, metadata !2709, metadata !DIExpression()) #20, !dbg !3306
  call void @llvm.dbg.value(metadata i64 %33, metadata !2710, metadata !DIExpression()) #20, !dbg !3306
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #20, !dbg !3308
  store i32 %20, i32* @nslots, align 4, !dbg !3309, !tbaa !1319
  br label %34, !dbg !3310

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3273
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3263, metadata !DIExpression()), !dbg !3273
  %36 = zext i32 %0 to i64, !dbg !3311
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3312
  %38 = load i64, i64* %37, align 8, !dbg !3312, !tbaa !3234
  call void @llvm.dbg.value(metadata i64 %38, metadata !3268, metadata !DIExpression()), !dbg !3313
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3314
  %40 = load i8*, i8** %39, align 8, !dbg !3314, !tbaa !3221
  call void @llvm.dbg.value(metadata i8* %40, metadata !3270, metadata !DIExpression()), !dbg !3313
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3315
  %42 = load i32, i32* %41, align 4, !dbg !3315, !tbaa !2356
  %43 = or i32 %42, 1, !dbg !3316
  call void @llvm.dbg.value(metadata i32 %43, metadata !3271, metadata !DIExpression()), !dbg !3313
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3317
  %45 = load i32, i32* %44, align 8, !dbg !3317, !tbaa !2305
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3318
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3319
  %48 = load i8*, i8** %47, align 8, !dbg !3319, !tbaa !2379
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3320
  %50 = load i8*, i8** %49, align 8, !dbg !3320, !tbaa !2382
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3321
  call void @llvm.dbg.value(metadata i64 %51, metadata !3272, metadata !DIExpression()), !dbg !3313
  %52 = icmp ugt i64 %38, %51, !dbg !3322
  br i1 %52, label %63, label %53, !dbg !3324

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3325
  call void @llvm.dbg.value(metadata i64 %54, metadata !3268, metadata !DIExpression()), !dbg !3313
  store i64 %54, i64* %37, align 8, !dbg !3327, !tbaa !3234
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3328
  br i1 %55, label %57, label %56, !dbg !3330

56:                                               ; preds = %53
  tail call void @free(i8* %40) #20, !dbg !3331
  br label %57, !dbg !3331

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3170, metadata !DIExpression()) #20, !dbg !3332
  %58 = tail call noalias i8* @xmalloc(i64 %54) #20, !dbg !3334
  call void @llvm.dbg.value(metadata i8* %58, metadata !3270, metadata !DIExpression()), !dbg !3313
  store i8* %58, i8** %39, align 8, !dbg !3335, !tbaa !3221
  %59 = load i32, i32* %44, align 8, !dbg !3336, !tbaa !2305
  %60 = load i8*, i8** %47, align 8, !dbg !3337, !tbaa !2379
  %61 = load i8*, i8** %49, align 8, !dbg !3338, !tbaa !2382
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3339
  br label %63, !dbg !3340

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3313
  call void @llvm.dbg.value(metadata i8* %64, metadata !3270, metadata !DIExpression()), !dbg !3313
  store i32 %6, i32* %5, align 4, !dbg !3341, !tbaa !1319
  ret i8* %64, !dbg !3342
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3343 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3347, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8* %1, metadata !3348, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i64 %2, metadata !3349, metadata !DIExpression()), !dbg !3350
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3351
  ret i8* %4, !dbg !3352
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3353 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3355, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i32 0, metadata !3249, metadata !DIExpression()) #20, !dbg !3357
  call void @llvm.dbg.value(metadata i8* %0, metadata !3250, metadata !DIExpression()) #20, !dbg !3357
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !3359
  ret i8* %2, !dbg !3360
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3361 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3365, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i64 %1, metadata !3366, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i32 0, metadata !3347, metadata !DIExpression()) #20, !dbg !3368
  call void @llvm.dbg.value(metadata i8* %0, metadata !3348, metadata !DIExpression()) #20, !dbg !3368
  call void @llvm.dbg.value(metadata i64 %1, metadata !3349, metadata !DIExpression()) #20, !dbg !3368
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !3370
  ret i8* %3, !dbg !3371
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3372 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3374, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i32 %1, metadata !3375, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i8* %2, metadata !3376, metadata !DIExpression()), !dbg !3378
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3379
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3379
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3377, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i32 %1, metadata !3381, metadata !DIExpression()) #20, !dbg !3387
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3386, metadata !DIExpression()) #20, !dbg !3389
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3389, !alias.scope !3390
  %6 = icmp eq i32 %1, 10, !dbg !3393
  br i1 %6, label %7, label %8, !dbg !3395

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3396, !noalias !3390
  unreachable, !dbg !3396

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3397
  store i32 %1, i32* %9, align 8, !dbg !3398, !tbaa !2305, !alias.scope !3390
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3399
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3400
  ret i8* %10, !dbg !3401
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3402 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3406, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i32 %1, metadata !3407, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i8* %2, metadata !3408, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i64 %3, metadata !3409, metadata !DIExpression()), !dbg !3411
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3412
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3412
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3410, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i32 %1, metadata !3381, metadata !DIExpression()) #20, !dbg !3414
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3386, metadata !DIExpression()) #20, !dbg !3416
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #20, !dbg !3416, !alias.scope !3417
  %7 = icmp eq i32 %1, 10, !dbg !3420
  br i1 %7, label %8, label %9, !dbg !3421

8:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3422, !noalias !3417
  unreachable, !dbg !3422

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3423
  store i32 %1, i32* %10, align 8, !dbg !3424, !tbaa !2305, !alias.scope !3417
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3425
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3426
  ret i8* %11, !dbg !3427
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3428 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3386, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3377, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i32 %0, metadata !3432, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i8* %1, metadata !3433, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i32 0, metadata !3374, metadata !DIExpression()) #20, !dbg !3439
  call void @llvm.dbg.value(metadata i32 %0, metadata !3375, metadata !DIExpression()) #20, !dbg !3439
  call void @llvm.dbg.value(metadata i8* %1, metadata !3376, metadata !DIExpression()) #20, !dbg !3439
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3440
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3440
  call void @llvm.dbg.value(metadata i32 %0, metadata !3381, metadata !DIExpression()) #20, !dbg !3441
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #20, !dbg !3434, !alias.scope !3442
  %5 = icmp eq i32 %0, 10, !dbg !3445
  br i1 %5, label %6, label %7, !dbg !3446

6:                                                ; preds = %2
  tail call void @abort() #23, !dbg !3447, !noalias !3442
  unreachable, !dbg !3447

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3448
  store i32 %0, i32* %8, align 8, !dbg !3449, !tbaa !2305, !alias.scope !3442
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !3450
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3451
  ret i8* %9, !dbg !3452
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3453 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3386, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3410, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i32 %0, metadata !3457, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i8* %1, metadata !3458, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i64 %2, metadata !3459, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i32 0, metadata !3406, metadata !DIExpression()) #20, !dbg !3465
  call void @llvm.dbg.value(metadata i32 %0, metadata !3407, metadata !DIExpression()) #20, !dbg !3465
  call void @llvm.dbg.value(metadata i8* %1, metadata !3408, metadata !DIExpression()) #20, !dbg !3465
  call void @llvm.dbg.value(metadata i64 %2, metadata !3409, metadata !DIExpression()) #20, !dbg !3465
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3466
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3466
  call void @llvm.dbg.value(metadata i32 %0, metadata !3381, metadata !DIExpression()) #20, !dbg !3467
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3460, !alias.scope !3468
  %6 = icmp eq i32 %0, 10, !dbg !3471
  br i1 %6, label %7, label %8, !dbg !3472

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3473, !noalias !3468
  unreachable, !dbg !3473

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3474
  store i32 %0, i32* %9, align 8, !dbg !3475, !tbaa !2305, !alias.scope !3468
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #20, !dbg !3476
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3477
  ret i8* %10, !dbg !3478
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3479 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3483, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i64 %1, metadata !3484, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i8 %2, metadata !3485, metadata !DIExpression()), !dbg !3487
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3488
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3488
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3486, metadata !DIExpression()), !dbg !3489
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3490, !tbaa.struct !3491
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2323, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 %2, metadata !2324, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 1, metadata !2325, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8 %2, metadata !2326, metadata !DIExpression()), !dbg !3492
  %6 = lshr i8 %2, 5, !dbg !3494
  %7 = zext i8 %6 to i64, !dbg !3494
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3495
  call void @llvm.dbg.value(metadata i32* %8, metadata !2327, metadata !DIExpression()), !dbg !3492
  %9 = and i8 %2, 31, !dbg !3496
  %10 = zext i8 %9 to i32, !dbg !3496
  call void @llvm.dbg.value(metadata i32 %10, metadata !2329, metadata !DIExpression()), !dbg !3492
  %11 = load i32, i32* %8, align 4, !dbg !3497, !tbaa !1319
  %12 = lshr i32 %11, %10, !dbg !3498
  %13 = and i32 %12, 1, !dbg !3499
  call void @llvm.dbg.value(metadata i32 %13, metadata !2330, metadata !DIExpression()), !dbg !3492
  %14 = xor i32 %13, 1, !dbg !3500
  %15 = shl i32 %14, %10, !dbg !3501
  %16 = xor i32 %15, %11, !dbg !3502
  store i32 %16, i32* %8, align 4, !dbg !3502, !tbaa !1319
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3503
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3504
  ret i8* %17, !dbg !3505
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3506 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3486, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i8* %0, metadata !3510, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i8 %1, metadata !3511, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i8* %0, metadata !3483, metadata !DIExpression()) #20, !dbg !3515
  call void @llvm.dbg.value(metadata i64 -1, metadata !3484, metadata !DIExpression()) #20, !dbg !3515
  call void @llvm.dbg.value(metadata i8 %1, metadata !3485, metadata !DIExpression()) #20, !dbg !3515
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3516
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3516
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3517, !tbaa.struct !3491
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2323, metadata !DIExpression()) #20, !dbg !3518
  call void @llvm.dbg.value(metadata i8 %1, metadata !2324, metadata !DIExpression()) #20, !dbg !3518
  call void @llvm.dbg.value(metadata i32 1, metadata !2325, metadata !DIExpression()) #20, !dbg !3518
  call void @llvm.dbg.value(metadata i8 %1, metadata !2326, metadata !DIExpression()) #20, !dbg !3518
  %5 = lshr i8 %1, 5, !dbg !3520
  %6 = zext i8 %5 to i64, !dbg !3520
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3521
  call void @llvm.dbg.value(metadata i32* %7, metadata !2327, metadata !DIExpression()) #20, !dbg !3518
  %8 = and i8 %1, 31, !dbg !3522
  %9 = zext i8 %8 to i32, !dbg !3522
  call void @llvm.dbg.value(metadata i32 %9, metadata !2329, metadata !DIExpression()) #20, !dbg !3518
  %10 = load i32, i32* %7, align 4, !dbg !3523, !tbaa !1319
  %11 = lshr i32 %10, %9, !dbg !3524
  %12 = and i32 %11, 1, !dbg !3525
  call void @llvm.dbg.value(metadata i32 %12, metadata !2330, metadata !DIExpression()) #20, !dbg !3518
  %13 = xor i32 %12, 1, !dbg !3526
  %14 = shl i32 %13, %9, !dbg !3527
  %15 = xor i32 %14, %10, !dbg !3528
  store i32 %15, i32* %7, align 4, !dbg !3528, !tbaa !1319
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !3529
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3530
  ret i8* %16, !dbg !3531
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3532 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3486, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i8* %0, metadata !3534, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i8* %0, metadata !3510, metadata !DIExpression()) #20, !dbg !3539
  call void @llvm.dbg.value(metadata i8 58, metadata !3511, metadata !DIExpression()) #20, !dbg !3539
  call void @llvm.dbg.value(metadata i8* %0, metadata !3483, metadata !DIExpression()) #20, !dbg !3540
  call void @llvm.dbg.value(metadata i64 -1, metadata !3484, metadata !DIExpression()) #20, !dbg !3540
  call void @llvm.dbg.value(metadata i8 58, metadata !3485, metadata !DIExpression()) #20, !dbg !3540
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3541
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #20, !dbg !3541
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3542, !tbaa.struct !3491
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2323, metadata !DIExpression()) #20, !dbg !3543
  call void @llvm.dbg.value(metadata i8 58, metadata !2324, metadata !DIExpression()) #20, !dbg !3543
  call void @llvm.dbg.value(metadata i32 1, metadata !2325, metadata !DIExpression()) #20, !dbg !3543
  call void @llvm.dbg.value(metadata i8 58, metadata !2326, metadata !DIExpression()) #20, !dbg !3543
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3545
  call void @llvm.dbg.value(metadata i32* %4, metadata !2327, metadata !DIExpression()) #20, !dbg !3543
  call void @llvm.dbg.value(metadata i32 26, metadata !2329, metadata !DIExpression()) #20, !dbg !3543
  %5 = load i32, i32* %4, align 4, !dbg !3546, !tbaa !1319
  call void @llvm.dbg.value(metadata i32 %5, metadata !2330, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !3543
  %6 = or i32 %5, 67108864, !dbg !3547
  store i32 %6, i32* %4, align 4, !dbg !3547, !tbaa !1319
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #20, !dbg !3548
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #20, !dbg !3549
  ret i8* %7, !dbg !3550
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3551 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3486, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i8* %0, metadata !3553, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i64 %1, metadata !3554, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i8* %0, metadata !3483, metadata !DIExpression()) #20, !dbg !3558
  call void @llvm.dbg.value(metadata i64 %1, metadata !3484, metadata !DIExpression()) #20, !dbg !3558
  call void @llvm.dbg.value(metadata i8 58, metadata !3485, metadata !DIExpression()) #20, !dbg !3558
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3559
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3559
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3560, !tbaa.struct !3491
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2323, metadata !DIExpression()) #20, !dbg !3561
  call void @llvm.dbg.value(metadata i8 58, metadata !2324, metadata !DIExpression()) #20, !dbg !3561
  call void @llvm.dbg.value(metadata i32 1, metadata !2325, metadata !DIExpression()) #20, !dbg !3561
  call void @llvm.dbg.value(metadata i8 58, metadata !2326, metadata !DIExpression()) #20, !dbg !3561
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3563
  call void @llvm.dbg.value(metadata i32* %5, metadata !2327, metadata !DIExpression()) #20, !dbg !3561
  call void @llvm.dbg.value(metadata i32 26, metadata !2329, metadata !DIExpression()) #20, !dbg !3561
  %6 = load i32, i32* %5, align 4, !dbg !3564, !tbaa !1319
  call void @llvm.dbg.value(metadata i32 %6, metadata !2330, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !3561
  %7 = or i32 %6, 67108864, !dbg !3565
  store i32 %7, i32* %5, align 4, !dbg !3565, !tbaa !1319
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #20, !dbg !3566
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3567
  ret i8* %8, !dbg !3568
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3569 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3386, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3575
  call void @llvm.dbg.value(metadata i32 %0, metadata !3571, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i32 %1, metadata !3572, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i8* %2, metadata !3573, metadata !DIExpression()), !dbg !3577
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3578
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3578
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3574, metadata !DIExpression()), !dbg !3579
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3580
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3580
  call void @llvm.dbg.value(metadata i32 %1, metadata !3381, metadata !DIExpression()) #20, !dbg !3581
  call void @llvm.dbg.value(metadata i32 0, metadata !3386, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3581
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3575, !alias.scope !3582
  %8 = icmp eq i32 %1, 10, !dbg !3585
  br i1 %8, label %9, label %10, !dbg !3586

9:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3587, !noalias !3582
  unreachable, !dbg !3587

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3386, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3581
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3580
  store i32 %1, i32* %11, align 8, !dbg !3580, !tbaa.struct !3491
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3580
  %13 = bitcast i32* %12 to i8*, !dbg !3580
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3580, !tbaa.struct !3491
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3580
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2323, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i8 58, metadata !2324, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 1, metadata !2325, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i8 58, metadata !2326, metadata !DIExpression()), !dbg !3588
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3590
  call void @llvm.dbg.value(metadata i32* %14, metadata !2327, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 26, metadata !2329, metadata !DIExpression()), !dbg !3588
  %15 = load i32, i32* %14, align 4, !dbg !3591, !tbaa !1319
  call void @llvm.dbg.value(metadata i32 %15, metadata !2330, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3588
  %16 = or i32 %15, 67108864, !dbg !3592
  store i32 %16, i32* %14, align 4, !dbg !3592, !tbaa !1319
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3593
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3594
  ret i8* %17, !dbg !3595
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3596 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3604, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i32 %0, metadata !3600, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i8* %1, metadata !3601, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i8* %2, metadata !3602, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i8* %3, metadata !3603, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i32 %0, metadata !3609, metadata !DIExpression()) #20, !dbg !3617
  call void @llvm.dbg.value(metadata i8* %1, metadata !3610, metadata !DIExpression()) #20, !dbg !3617
  call void @llvm.dbg.value(metadata i8* %2, metadata !3611, metadata !DIExpression()) #20, !dbg !3617
  call void @llvm.dbg.value(metadata i8* %3, metadata !3612, metadata !DIExpression()) #20, !dbg !3617
  call void @llvm.dbg.value(metadata i64 -1, metadata !3613, metadata !DIExpression()) #20, !dbg !3617
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3618
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3618
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3619, !tbaa.struct !3491
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2363, metadata !DIExpression()) #20, !dbg !3620
  call void @llvm.dbg.value(metadata i8* %1, metadata !2364, metadata !DIExpression()) #20, !dbg !3620
  call void @llvm.dbg.value(metadata i8* %2, metadata !2365, metadata !DIExpression()) #20, !dbg !3620
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2363, metadata !DIExpression()) #20, !dbg !3620
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3622
  store i32 10, i32* %7, align 8, !dbg !3623, !tbaa !2305
  %8 = icmp ne i8* %1, null, !dbg !3624
  %9 = icmp ne i8* %2, null, !dbg !3625
  %10 = and i1 %8, %9, !dbg !3626
  br i1 %10, label %12, label %11, !dbg !3626

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3627
  unreachable, !dbg !3627

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3628
  store i8* %1, i8** %13, align 8, !dbg !3629, !tbaa !2379
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3630
  store i8* %2, i8** %14, align 8, !dbg !3631, !tbaa !2382
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #20, !dbg !3632
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3633
  ret i8* %15, !dbg !3634
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3605 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3609, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i8* %1, metadata !3610, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i8* %2, metadata !3611, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i8* %3, metadata !3612, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i64 %4, metadata !3613, metadata !DIExpression()), !dbg !3635
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3636
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #20, !dbg !3636
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3604, metadata !DIExpression()), !dbg !3637
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3638, !tbaa.struct !3491
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2363, metadata !DIExpression()) #20, !dbg !3639
  call void @llvm.dbg.value(metadata i8* %1, metadata !2364, metadata !DIExpression()) #20, !dbg !3639
  call void @llvm.dbg.value(metadata i8* %2, metadata !2365, metadata !DIExpression()) #20, !dbg !3639
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2363, metadata !DIExpression()) #20, !dbg !3639
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3641
  store i32 10, i32* %8, align 8, !dbg !3642, !tbaa !2305
  %9 = icmp ne i8* %1, null, !dbg !3643
  %10 = icmp ne i8* %2, null, !dbg !3644
  %11 = and i1 %9, %10, !dbg !3645
  br i1 %11, label %13, label %12, !dbg !3645

12:                                               ; preds = %5
  tail call void @abort() #23, !dbg !3646
  unreachable, !dbg !3646

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3647
  store i8* %1, i8** %14, align 8, !dbg !3648, !tbaa !2379
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3649
  store i8* %2, i8** %15, align 8, !dbg !3650, !tbaa !2382
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3651
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #20, !dbg !3652
  ret i8* %16, !dbg !3653
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3654 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3604, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i8* %0, metadata !3658, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i8* %1, metadata !3659, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i8* %2, metadata !3660, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i32 0, metadata !3600, metadata !DIExpression()) #20, !dbg !3665
  call void @llvm.dbg.value(metadata i8* %0, metadata !3601, metadata !DIExpression()) #20, !dbg !3665
  call void @llvm.dbg.value(metadata i8* %1, metadata !3602, metadata !DIExpression()) #20, !dbg !3665
  call void @llvm.dbg.value(metadata i8* %2, metadata !3603, metadata !DIExpression()) #20, !dbg !3665
  call void @llvm.dbg.value(metadata i32 0, metadata !3609, metadata !DIExpression()) #20, !dbg !3666
  call void @llvm.dbg.value(metadata i8* %0, metadata !3610, metadata !DIExpression()) #20, !dbg !3666
  call void @llvm.dbg.value(metadata i8* %1, metadata !3611, metadata !DIExpression()) #20, !dbg !3666
  call void @llvm.dbg.value(metadata i8* %2, metadata !3612, metadata !DIExpression()) #20, !dbg !3666
  call void @llvm.dbg.value(metadata i64 -1, metadata !3613, metadata !DIExpression()) #20, !dbg !3666
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3667
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3667
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3668, !tbaa.struct !3491
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2363, metadata !DIExpression()) #20, !dbg !3669
  call void @llvm.dbg.value(metadata i8* %0, metadata !2364, metadata !DIExpression()) #20, !dbg !3669
  call void @llvm.dbg.value(metadata i8* %1, metadata !2365, metadata !DIExpression()) #20, !dbg !3669
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2363, metadata !DIExpression()) #20, !dbg !3669
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3671
  store i32 10, i32* %6, align 8, !dbg !3672, !tbaa !2305
  %7 = icmp ne i8* %0, null, !dbg !3673
  %8 = icmp ne i8* %1, null, !dbg !3674
  %9 = and i1 %7, %8, !dbg !3675
  br i1 %9, label %11, label %10, !dbg !3675

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !3676
  unreachable, !dbg !3676

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3677
  store i8* %0, i8** %12, align 8, !dbg !3678, !tbaa !2379
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3679
  store i8* %1, i8** %13, align 8, !dbg !3680, !tbaa !2382
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #20, !dbg !3681
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3682
  ret i8* %14, !dbg !3683
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3684 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3604, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8* %0, metadata !3688, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i8* %1, metadata !3689, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i8* %2, metadata !3690, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i64 %3, metadata !3691, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i32 0, metadata !3609, metadata !DIExpression()) #20, !dbg !3695
  call void @llvm.dbg.value(metadata i8* %0, metadata !3610, metadata !DIExpression()) #20, !dbg !3695
  call void @llvm.dbg.value(metadata i8* %1, metadata !3611, metadata !DIExpression()) #20, !dbg !3695
  call void @llvm.dbg.value(metadata i8* %2, metadata !3612, metadata !DIExpression()) #20, !dbg !3695
  call void @llvm.dbg.value(metadata i64 %3, metadata !3613, metadata !DIExpression()) #20, !dbg !3695
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3696
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3696
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3697, !tbaa.struct !3491
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2363, metadata !DIExpression()) #20, !dbg !3698
  call void @llvm.dbg.value(metadata i8* %0, metadata !2364, metadata !DIExpression()) #20, !dbg !3698
  call void @llvm.dbg.value(metadata i8* %1, metadata !2365, metadata !DIExpression()) #20, !dbg !3698
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2363, metadata !DIExpression()) #20, !dbg !3698
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3700
  store i32 10, i32* %7, align 8, !dbg !3701, !tbaa !2305
  %8 = icmp ne i8* %0, null, !dbg !3702
  %9 = icmp ne i8* %1, null, !dbg !3703
  %10 = and i1 %8, %9, !dbg !3704
  br i1 %10, label %12, label %11, !dbg !3704

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3705
  unreachable, !dbg !3705

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3706
  store i8* %0, i8** %13, align 8, !dbg !3707, !tbaa !2379
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3708
  store i8* %1, i8** %14, align 8, !dbg !3709, !tbaa !2382
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #20, !dbg !3710
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3711
  ret i8* %15, !dbg !3712
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3713 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3717, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i8* %1, metadata !3718, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i64 %2, metadata !3719, metadata !DIExpression()), !dbg !3720
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3721
  ret i8* %4, !dbg !3722
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3723 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3727, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i64 %1, metadata !3728, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i32 0, metadata !3717, metadata !DIExpression()) #20, !dbg !3730
  call void @llvm.dbg.value(metadata i8* %0, metadata !3718, metadata !DIExpression()) #20, !dbg !3730
  call void @llvm.dbg.value(metadata i64 %1, metadata !3719, metadata !DIExpression()) #20, !dbg !3730
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3732
  ret i8* %3, !dbg !3733
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3734 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3738, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i8* %1, metadata !3739, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i32 %0, metadata !3717, metadata !DIExpression()) #20, !dbg !3741
  call void @llvm.dbg.value(metadata i8* %1, metadata !3718, metadata !DIExpression()) #20, !dbg !3741
  call void @llvm.dbg.value(metadata i64 -1, metadata !3719, metadata !DIExpression()) #20, !dbg !3741
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3743
  ret i8* %3, !dbg !3744
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3745 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3747, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i32 0, metadata !3738, metadata !DIExpression()) #20, !dbg !3749
  call void @llvm.dbg.value(metadata i8* %0, metadata !3739, metadata !DIExpression()) #20, !dbg !3749
  call void @llvm.dbg.value(metadata i32 0, metadata !3717, metadata !DIExpression()) #20, !dbg !3751
  call void @llvm.dbg.value(metadata i8* %0, metadata !3718, metadata !DIExpression()) #20, !dbg !3751
  call void @llvm.dbg.value(metadata i64 -1, metadata !3719, metadata !DIExpression()) #20, !dbg !3751
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3753
  ret i8* %2, !dbg !3754
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3755 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3762, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i8* %1, metadata !3763, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i8* %2, metadata !3764, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i8* %3, metadata !3765, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i8** %4, metadata !3766, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i64 %5, metadata !3767, metadata !DIExpression()), !dbg !3768
  %7 = icmp eq i8* %1, null, !dbg !3769
  br i1 %7, label %10, label %8, !dbg !3771

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #20, !dbg !3772
  br label %12, !dbg !3772

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.94, i64 0, i64 0), i8* %2, i8* %3) #20, !dbg !3773
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.95, i64 0, i64 0), i32 5) #20, !dbg !3774
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #20, !dbg !3774
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.96, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3775
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.97, i64 0, i64 0), i32 5) #20, !dbg !3776
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.98, i64 0, i64 0)) #20, !dbg !3776
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.96, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3777
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
  ], !dbg !3778

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.99, i64 0, i64 0), i32 5) #20, !dbg !3779
  %21 = load i8*, i8** %4, align 8, !dbg !3779, !tbaa !1201
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #20, !dbg !3779
  br label %147, !dbg !3781

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.100, i64 0, i64 0), i32 5) #20, !dbg !3782
  %25 = load i8*, i8** %4, align 8, !dbg !3782, !tbaa !1201
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3782
  %27 = load i8*, i8** %26, align 8, !dbg !3782, !tbaa !1201
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #20, !dbg !3782
  br label %147, !dbg !3783

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.101, i64 0, i64 0), i32 5) #20, !dbg !3784
  %31 = load i8*, i8** %4, align 8, !dbg !3784, !tbaa !1201
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3784
  %33 = load i8*, i8** %32, align 8, !dbg !3784, !tbaa !1201
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3784
  %35 = load i8*, i8** %34, align 8, !dbg !3784, !tbaa !1201
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #20, !dbg !3784
  br label %147, !dbg !3785

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.102, i64 0, i64 0), i32 5) #20, !dbg !3786
  %39 = load i8*, i8** %4, align 8, !dbg !3786, !tbaa !1201
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3786
  %41 = load i8*, i8** %40, align 8, !dbg !3786, !tbaa !1201
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3786
  %43 = load i8*, i8** %42, align 8, !dbg !3786, !tbaa !1201
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3786
  %45 = load i8*, i8** %44, align 8, !dbg !3786, !tbaa !1201
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #20, !dbg !3786
  br label %147, !dbg !3787

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.103, i64 0, i64 0), i32 5) #20, !dbg !3788
  %49 = load i8*, i8** %4, align 8, !dbg !3788, !tbaa !1201
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3788
  %51 = load i8*, i8** %50, align 8, !dbg !3788, !tbaa !1201
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3788
  %53 = load i8*, i8** %52, align 8, !dbg !3788, !tbaa !1201
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3788
  %55 = load i8*, i8** %54, align 8, !dbg !3788, !tbaa !1201
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3788
  %57 = load i8*, i8** %56, align 8, !dbg !3788, !tbaa !1201
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #20, !dbg !3788
  br label %147, !dbg !3789

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.104, i64 0, i64 0), i32 5) #20, !dbg !3790
  %61 = load i8*, i8** %4, align 8, !dbg !3790, !tbaa !1201
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3790
  %63 = load i8*, i8** %62, align 8, !dbg !3790, !tbaa !1201
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3790
  %65 = load i8*, i8** %64, align 8, !dbg !3790, !tbaa !1201
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3790
  %67 = load i8*, i8** %66, align 8, !dbg !3790, !tbaa !1201
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3790
  %69 = load i8*, i8** %68, align 8, !dbg !3790, !tbaa !1201
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3790
  %71 = load i8*, i8** %70, align 8, !dbg !3790, !tbaa !1201
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #20, !dbg !3790
  br label %147, !dbg !3791

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.105, i64 0, i64 0), i32 5) #20, !dbg !3792
  %75 = load i8*, i8** %4, align 8, !dbg !3792, !tbaa !1201
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3792
  %77 = load i8*, i8** %76, align 8, !dbg !3792, !tbaa !1201
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3792
  %79 = load i8*, i8** %78, align 8, !dbg !3792, !tbaa !1201
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3792
  %81 = load i8*, i8** %80, align 8, !dbg !3792, !tbaa !1201
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3792
  %83 = load i8*, i8** %82, align 8, !dbg !3792, !tbaa !1201
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3792
  %85 = load i8*, i8** %84, align 8, !dbg !3792, !tbaa !1201
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3792
  %87 = load i8*, i8** %86, align 8, !dbg !3792, !tbaa !1201
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #20, !dbg !3792
  br label %147, !dbg !3793

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.106, i64 0, i64 0), i32 5) #20, !dbg !3794
  %91 = load i8*, i8** %4, align 8, !dbg !3794, !tbaa !1201
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3794
  %93 = load i8*, i8** %92, align 8, !dbg !3794, !tbaa !1201
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3794
  %95 = load i8*, i8** %94, align 8, !dbg !3794, !tbaa !1201
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3794
  %97 = load i8*, i8** %96, align 8, !dbg !3794, !tbaa !1201
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3794
  %99 = load i8*, i8** %98, align 8, !dbg !3794, !tbaa !1201
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3794
  %101 = load i8*, i8** %100, align 8, !dbg !3794, !tbaa !1201
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3794
  %103 = load i8*, i8** %102, align 8, !dbg !3794, !tbaa !1201
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3794
  %105 = load i8*, i8** %104, align 8, !dbg !3794, !tbaa !1201
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #20, !dbg !3794
  br label %147, !dbg !3795

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.107, i64 0, i64 0), i32 5) #20, !dbg !3796
  %109 = load i8*, i8** %4, align 8, !dbg !3796, !tbaa !1201
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3796
  %111 = load i8*, i8** %110, align 8, !dbg !3796, !tbaa !1201
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3796
  %113 = load i8*, i8** %112, align 8, !dbg !3796, !tbaa !1201
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3796
  %115 = load i8*, i8** %114, align 8, !dbg !3796, !tbaa !1201
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3796
  %117 = load i8*, i8** %116, align 8, !dbg !3796, !tbaa !1201
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3796
  %119 = load i8*, i8** %118, align 8, !dbg !3796, !tbaa !1201
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3796
  %121 = load i8*, i8** %120, align 8, !dbg !3796, !tbaa !1201
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3796
  %123 = load i8*, i8** %122, align 8, !dbg !3796, !tbaa !1201
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3796
  %125 = load i8*, i8** %124, align 8, !dbg !3796, !tbaa !1201
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #20, !dbg !3796
  br label %147, !dbg !3797

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.108, i64 0, i64 0), i32 5) #20, !dbg !3798
  %129 = load i8*, i8** %4, align 8, !dbg !3798, !tbaa !1201
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3798
  %131 = load i8*, i8** %130, align 8, !dbg !3798, !tbaa !1201
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3798
  %133 = load i8*, i8** %132, align 8, !dbg !3798, !tbaa !1201
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3798
  %135 = load i8*, i8** %134, align 8, !dbg !3798, !tbaa !1201
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3798
  %137 = load i8*, i8** %136, align 8, !dbg !3798, !tbaa !1201
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3798
  %139 = load i8*, i8** %138, align 8, !dbg !3798, !tbaa !1201
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3798
  %141 = load i8*, i8** %140, align 8, !dbg !3798, !tbaa !1201
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3798
  %143 = load i8*, i8** %142, align 8, !dbg !3798, !tbaa !1201
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3798
  %145 = load i8*, i8** %144, align 8, !dbg !3798, !tbaa !1201
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #20, !dbg !3798
  br label %147, !dbg !3799

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3800
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3801 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3805, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i8* %1, metadata !3806, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i8* %2, metadata !3807, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i8* %3, metadata !3808, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i8** %4, metadata !3809, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i64 0, metadata !3810, metadata !DIExpression()), !dbg !3811
  br label %6, !dbg !3812

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3814
  call void @llvm.dbg.value(metadata i64 %7, metadata !3810, metadata !DIExpression()), !dbg !3811
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3815
  %9 = load i8*, i8** %8, align 8, !dbg !3815, !tbaa !1201
  %10 = icmp eq i8* %9, null, !dbg !3817
  %11 = add i64 %7, 1, !dbg !3818
  call void @llvm.dbg.value(metadata i64 %11, metadata !3810, metadata !DIExpression()), !dbg !3811
  br i1 %10, label %12, label %6, !dbg !3817, !llvm.loop !3819

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3810, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i64 %7, metadata !3810, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i64 %7, metadata !3810, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i64 %7, metadata !3810, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i64 %7, metadata !3810, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i64 %7, metadata !3810, metadata !DIExpression()), !dbg !3811
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3821
  ret void, !dbg !3822
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3823 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3834, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i8* %1, metadata !3835, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i8* %2, metadata !3836, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i8* %3, metadata !3837, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3838, metadata !DIExpression()), !dbg !3842
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3843
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #20, !dbg !3843
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3840, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i64 0, metadata !3839, metadata !DIExpression()), !dbg !3842
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3845
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3845
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3845
  %11 = load i32, i32* %8, align 8, !dbg !3848
  %12 = icmp ult i32 %11, 41, !dbg !3848
  br i1 %12, label %13, label %18, !dbg !3848

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3848
  %15 = zext i32 %11 to i64, !dbg !3848
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3848
  %17 = add nuw nsw i32 %11, 8, !dbg !3848
  store i32 %17, i32* %8, align 8, !dbg !3848
  br label %21, !dbg !3848

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3848
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3848
  store i8* %20, i8** %9, align 8, !dbg !3848
  br label %21, !dbg !3848

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3848
  %25 = load i8*, i8** %24, align 8, !dbg !3848
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3849
  store i8* %25, i8** %26, align 16, !dbg !3850, !tbaa !1201
  %27 = icmp eq i8* %25, null, !dbg !3851
  br i1 %27, label %30, label %28, !dbg !3852

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3839, metadata !DIExpression()), !dbg !3842
  %29 = icmp ult i32 %22, 41, !dbg !3848
  br i1 %29, label %35, label %32, !dbg !3848

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3853
  call void @llvm.dbg.value(metadata i64 %31, metadata !3839, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i64 %31, metadata !3839, metadata !DIExpression()), !dbg !3842
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3854
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #20, !dbg !3855
  ret void, !dbg !3855

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3848
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3848
  store i8* %34, i8** %9, align 8, !dbg !3848
  br label %40, !dbg !3848

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3848
  %37 = zext i32 %22 to i64, !dbg !3848
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3848
  %39 = add nuw nsw i32 %22, 8, !dbg !3848
  store i32 %39, i32* %8, align 8, !dbg !3848
  br label %40, !dbg !3848

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3848
  %44 = load i8*, i8** %43, align 8, !dbg !3848
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3849
  store i8* %44, i8** %45, align 8, !dbg !3850, !tbaa !1201
  %46 = icmp eq i8* %44, null, !dbg !3851
  br i1 %46, label %30, label %47, !dbg !3852

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3839, metadata !DIExpression()), !dbg !3842
  %48 = icmp ult i32 %41, 41, !dbg !3848
  br i1 %48, label %52, label %49, !dbg !3848

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3848
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3848
  store i8* %51, i8** %9, align 8, !dbg !3848
  br label %57, !dbg !3848

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3848
  %54 = zext i32 %41 to i64, !dbg !3848
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3848
  %56 = add nuw nsw i32 %41, 8, !dbg !3848
  store i32 %56, i32* %8, align 8, !dbg !3848
  br label %57, !dbg !3848

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3848
  %61 = load i8*, i8** %60, align 8, !dbg !3848
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3849
  store i8* %61, i8** %62, align 16, !dbg !3850, !tbaa !1201
  %63 = icmp eq i8* %61, null, !dbg !3851
  br i1 %63, label %30, label %64, !dbg !3852

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3839, metadata !DIExpression()), !dbg !3842
  %65 = icmp ult i32 %58, 41, !dbg !3848
  br i1 %65, label %69, label %66, !dbg !3848

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3848
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3848
  store i8* %68, i8** %9, align 8, !dbg !3848
  br label %74, !dbg !3848

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3848
  %71 = zext i32 %58 to i64, !dbg !3848
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3848
  %73 = add nuw nsw i32 %58, 8, !dbg !3848
  store i32 %73, i32* %8, align 8, !dbg !3848
  br label %74, !dbg !3848

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3848
  %78 = load i8*, i8** %77, align 8, !dbg !3848
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3849
  store i8* %78, i8** %79, align 8, !dbg !3850, !tbaa !1201
  %80 = icmp eq i8* %78, null, !dbg !3851
  br i1 %80, label %30, label %81, !dbg !3852

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3839, metadata !DIExpression()), !dbg !3842
  %82 = icmp ult i32 %75, 41, !dbg !3848
  br i1 %82, label %86, label %83, !dbg !3848

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3848
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3848
  store i8* %85, i8** %9, align 8, !dbg !3848
  br label %91, !dbg !3848

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3848
  %88 = zext i32 %75 to i64, !dbg !3848
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3848
  %90 = add nuw nsw i32 %75, 8, !dbg !3848
  store i32 %90, i32* %8, align 8, !dbg !3848
  br label %91, !dbg !3848

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3848
  %95 = load i8*, i8** %94, align 8, !dbg !3848
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3849
  store i8* %95, i8** %96, align 16, !dbg !3850, !tbaa !1201
  %97 = icmp eq i8* %95, null, !dbg !3851
  br i1 %97, label %30, label %98, !dbg !3852

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3839, metadata !DIExpression()), !dbg !3842
  %99 = icmp ult i32 %92, 41, !dbg !3848
  br i1 %99, label %103, label %100, !dbg !3848

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3848
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3848
  store i8* %102, i8** %9, align 8, !dbg !3848
  br label %108, !dbg !3848

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3848
  %105 = zext i32 %92 to i64, !dbg !3848
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3848
  %107 = add nuw nsw i32 %92, 8, !dbg !3848
  store i32 %107, i32* %8, align 8, !dbg !3848
  br label %108, !dbg !3848

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3848
  %111 = load i8*, i8** %110, align 8, !dbg !3848
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3849
  store i8* %111, i8** %112, align 8, !dbg !3850, !tbaa !1201
  %113 = icmp eq i8* %111, null, !dbg !3851
  br i1 %113, label %30, label %114, !dbg !3852

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3839, metadata !DIExpression()), !dbg !3842
  %115 = load i8*, i8** %9, align 8, !dbg !3848
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3848
  store i8* %116, i8** %9, align 8, !dbg !3848
  %117 = bitcast i8* %115 to i8**, !dbg !3848
  %118 = load i8*, i8** %117, align 8, !dbg !3848
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3849
  store i8* %118, i8** %119, align 16, !dbg !3850, !tbaa !1201
  %120 = icmp eq i8* %118, null, !dbg !3851
  br i1 %120, label %30, label %121, !dbg !3852

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3839, metadata !DIExpression()), !dbg !3842
  %122 = load i8*, i8** %9, align 8, !dbg !3848
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3848
  store i8* %123, i8** %9, align 8, !dbg !3848
  %124 = bitcast i8* %122 to i8**, !dbg !3848
  %125 = load i8*, i8** %124, align 8, !dbg !3848
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3849
  store i8* %125, i8** %126, align 8, !dbg !3850, !tbaa !1201
  %127 = icmp eq i8* %125, null, !dbg !3851
  br i1 %127, label %30, label %128, !dbg !3852

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3839, metadata !DIExpression()), !dbg !3842
  %129 = load i8*, i8** %9, align 8, !dbg !3848
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3848
  store i8* %130, i8** %9, align 8, !dbg !3848
  %131 = bitcast i8* %129 to i8**, !dbg !3848
  %132 = load i8*, i8** %131, align 8, !dbg !3848
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3849
  store i8* %132, i8** %133, align 16, !dbg !3850, !tbaa !1201
  %134 = icmp eq i8* %132, null, !dbg !3851
  br i1 %134, label %30, label %135, !dbg !3852

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3839, metadata !DIExpression()), !dbg !3842
  %136 = load i8*, i8** %9, align 8, !dbg !3848
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3848
  store i8* %137, i8** %9, align 8, !dbg !3848
  %138 = bitcast i8* %136 to i8**, !dbg !3848
  %139 = load i8*, i8** %138, align 8, !dbg !3848
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3849
  store i8* %139, i8** %140, align 8, !dbg !3850, !tbaa !1201
  %141 = icmp eq i8* %139, null, !dbg !3851
  %142 = select i1 %141, i64 9, i64 10, !dbg !3852
  br label %30, !dbg !3852
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3856 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3860, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i8* %1, metadata !3861, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i8* %2, metadata !3862, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i8* %3, metadata !3863, metadata !DIExpression()), !dbg !3870
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3871
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #20, !dbg !3871
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3864, metadata !DIExpression()), !dbg !3872
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3873
  call void @llvm.va_start(i8* nonnull %6), !dbg !3873
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3874
  call void @llvm.va_end(i8* nonnull %6), !dbg !3875
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #20, !dbg !3876
  ret void, !dbg !3876
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #20

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3877 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3878, !tbaa !1201
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.96, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3878
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.111, i64 0, i64 0), i32 5) #20, !dbg !3879
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.112, i64 0, i64 0)) #20, !dbg !3879
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.113, i64 0, i64 0), i32 5) #20, !dbg !3880
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.114, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.115, i64 0, i64 0)) #20, !dbg !3880
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.116, i64 0, i64 0), i32 5) #20, !dbg !3881
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.117, i64 0, i64 0)) #20, !dbg !3881
  ret void, !dbg !3882
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !3883 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3887, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i64 %1, metadata !3888, metadata !DIExpression()), !dbg !3889
  %3 = udiv i64 9223372036854775807, %1, !dbg !3890
  %4 = icmp ult i64 %3, %0, !dbg !3890
  br i1 %4, label %5, label %6, !dbg !3892

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3893
  unreachable, !dbg !3893

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3894
  call void @llvm.dbg.value(metadata i64 %7, metadata !3895, metadata !DIExpression()) #20, !dbg !3901
  %8 = tail call noalias i8* @malloc(i64 %7) #20, !dbg !3903
  call void @llvm.dbg.value(metadata i8* %8, metadata !3900, metadata !DIExpression()) #20, !dbg !3901
  %9 = icmp eq i8* %8, null, !dbg !3904
  %10 = icmp ne i64 %7, 0, !dbg !3906
  %11 = and i1 %10, %9, !dbg !3907
  br i1 %11, label %12, label %13, !dbg !3907

12:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !3908
  unreachable, !dbg !3908

13:                                               ; preds = %6
  ret i8* %8, !dbg !3909
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3896 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3895, metadata !DIExpression()), !dbg !3910
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !3911
  call void @llvm.dbg.value(metadata i8* %2, metadata !3900, metadata !DIExpression()), !dbg !3910
  %3 = icmp eq i8* %2, null, !dbg !3912
  %4 = icmp ne i64 %0, 0, !dbg !3913
  %5 = and i1 %4, %3, !dbg !3914
  br i1 %5, label %6, label %7, !dbg !3914

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3915
  unreachable, !dbg !3915

7:                                                ; preds = %1
  ret i8* %2, !dbg !3916
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !3917 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3921, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i64 %1, metadata !3922, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i64 %2, metadata !3923, metadata !DIExpression()), !dbg !3924
  %4 = udiv i64 9223372036854775807, %2, !dbg !3925
  %5 = icmp ult i64 %4, %1, !dbg !3925
  br i1 %5, label %6, label %7, !dbg !3927

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !3928
  unreachable, !dbg !3928

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3929
  call void @llvm.dbg.value(metadata i8* %0, metadata !3930, metadata !DIExpression()) #20, !dbg !3936
  call void @llvm.dbg.value(metadata i64 %8, metadata !3935, metadata !DIExpression()) #20, !dbg !3936
  %9 = icmp eq i64 %8, 0, !dbg !3938
  %10 = icmp ne i8* %0, null, !dbg !3940
  %11 = and i1 %10, %9, !dbg !3941
  br i1 %11, label %12, label %13, !dbg !3941

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #20, !dbg !3942
  br label %19, !dbg !3944

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #20, !dbg !3945
  call void @llvm.dbg.value(metadata i8* %14, metadata !3930, metadata !DIExpression()) #20, !dbg !3936
  %15 = icmp eq i8* %14, null, !dbg !3946
  %16 = icmp ne i64 %8, 0, !dbg !3948
  %17 = and i1 %16, %15, !dbg !3949
  br i1 %17, label %18, label %19, !dbg !3949

18:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3950
  unreachable, !dbg !3950

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3936
  ret i8* %20, !dbg !3951
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3931 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3930, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i64 %1, metadata !3935, metadata !DIExpression()), !dbg !3952
  %3 = icmp eq i64 %1, 0, !dbg !3953
  %4 = icmp ne i8* %0, null, !dbg !3954
  %5 = and i1 %4, %3, !dbg !3955
  br i1 %5, label %6, label %7, !dbg !3955

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #20, !dbg !3956
  br label %13, !dbg !3957

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #20, !dbg !3958
  call void @llvm.dbg.value(metadata i8* %8, metadata !3930, metadata !DIExpression()), !dbg !3952
  %9 = icmp eq i8* %8, null, !dbg !3959
  %10 = icmp ne i64 %1, 0, !dbg !3960
  %11 = and i1 %10, %9, !dbg !3961
  br i1 %11, label %12, label %13, !dbg !3961

12:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3962
  unreachable, !dbg !3962

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3952
  ret i8* %14, !dbg !3963
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !535 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !540, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64* %1, metadata !541, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %2, metadata !542, metadata !DIExpression()), !dbg !3964
  %4 = load i64, i64* %1, align 8, !dbg !3965, !tbaa !1378
  call void @llvm.dbg.value(metadata i64 %4, metadata !543, metadata !DIExpression()), !dbg !3964
  %5 = icmp eq i8* %0, null, !dbg !3966
  br i1 %5, label %6, label %20, !dbg !3968

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3969
  br i1 %7, label %8, label %13, !dbg !3972

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3973
  call void @llvm.dbg.value(metadata i64 %9, metadata !543, metadata !DIExpression()), !dbg !3964
  %10 = icmp ugt i64 %2, 128, !dbg !3975
  %11 = zext i1 %10 to i64, !dbg !3975
  %12 = add nuw nsw i64 %9, %11, !dbg !3976
  call void @llvm.dbg.value(metadata i64 %12, metadata !543, metadata !DIExpression()), !dbg !3964
  br label %13, !dbg !3977

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3964
  call void @llvm.dbg.value(metadata i64 %14, metadata !543, metadata !DIExpression()), !dbg !3964
  %15 = udiv i64 9223372036854775807, %2, !dbg !3978
  %16 = icmp ult i64 %15, %14, !dbg !3978
  br i1 %16, label %19, label %17, !dbg !3980

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !543, metadata !DIExpression()), !dbg !3964
  store i64 %14, i64* %1, align 8, !dbg !3981, !tbaa !1378
  %18 = mul i64 %14, %2, !dbg !3982
  call void @llvm.dbg.value(metadata i8* %0, metadata !3930, metadata !DIExpression()) #20, !dbg !3983
  call void @llvm.dbg.value(metadata i64 %28, metadata !3935, metadata !DIExpression()) #20, !dbg !3983
  br label %31, !dbg !3985

19:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3986
  unreachable, !dbg !3986

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3987
  %22 = icmp ugt i64 %21, %4, !dbg !3990
  br i1 %22, label %24, label %23, !dbg !3991

23:                                               ; preds = %20
  tail call void @xalloc_die() #23, !dbg !3992
  unreachable, !dbg !3992

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3993
  %26 = add nuw i64 %4, 1, !dbg !3994
  %27 = add i64 %26, %25, !dbg !3995
  call void @llvm.dbg.value(metadata i64 %27, metadata !543, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %27, metadata !543, metadata !DIExpression()), !dbg !3964
  store i64 %27, i64* %1, align 8, !dbg !3981, !tbaa !1378
  %28 = mul i64 %27, %2, !dbg !3982
  call void @llvm.dbg.value(metadata i8* %0, metadata !3930, metadata !DIExpression()) #20, !dbg !3983
  call void @llvm.dbg.value(metadata i64 %28, metadata !3935, metadata !DIExpression()) #20, !dbg !3983
  %29 = icmp eq i64 %28, 0, !dbg !3996
  br i1 %29, label %30, label %31, !dbg !3985

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #20, !dbg !3997
  br label %38, !dbg !3998

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #20, !dbg !3999
  call void @llvm.dbg.value(metadata i8* %33, metadata !3930, metadata !DIExpression()) #20, !dbg !3983
  %34 = icmp eq i8* %33, null, !dbg !4000
  %35 = icmp ne i64 %32, 0, !dbg !4001
  %36 = and i1 %35, %34, !dbg !4002
  br i1 %36, label %37, label %38, !dbg !4002

37:                                               ; preds = %31
  tail call void @xalloc_die() #23, !dbg !4003
  unreachable, !dbg !4003

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3983
  ret i8* %39, !dbg !4004
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !4005 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4007, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i64 %0, metadata !3895, metadata !DIExpression()) #20, !dbg !4009
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !4011
  call void @llvm.dbg.value(metadata i8* %2, metadata !3900, metadata !DIExpression()) #20, !dbg !4009
  %3 = icmp eq i8* %2, null, !dbg !4012
  %4 = icmp ne i64 %0, 0, !dbg !4013
  %5 = and i1 %4, %3, !dbg !4014
  br i1 %5, label %6, label %7, !dbg !4014

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !4015
  unreachable, !dbg !4015

7:                                                ; preds = %1
  ret i8* %2, !dbg !4016
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4017 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4021, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64* %1, metadata !4022, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i8* %0, metadata !540, metadata !DIExpression()) #20, !dbg !4024
  call void @llvm.dbg.value(metadata i64* %1, metadata !541, metadata !DIExpression()) #20, !dbg !4024
  call void @llvm.dbg.value(metadata i64 1, metadata !542, metadata !DIExpression()) #20, !dbg !4024
  %3 = load i64, i64* %1, align 8, !dbg !4026, !tbaa !1378
  call void @llvm.dbg.value(metadata i64 %3, metadata !543, metadata !DIExpression()) #20, !dbg !4024
  %4 = icmp eq i8* %0, null, !dbg !4027
  br i1 %4, label %5, label %12, !dbg !4028

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4029
  br i1 %6, label %9, label %7, !dbg !4030

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !543, metadata !DIExpression()) #20, !dbg !4024
  %8 = icmp slt i64 %3, 0, !dbg !4031
  br i1 %8, label %11, label %9, !dbg !4032

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !543, metadata !DIExpression()) #20, !dbg !4024
  store i64 %10, i64* %1, align 8, !dbg !4033, !tbaa !1378
  call void @llvm.dbg.value(metadata i8* %0, metadata !3930, metadata !DIExpression()) #20, !dbg !4034
  call void @llvm.dbg.value(metadata i64 %18, metadata !3935, metadata !DIExpression()) #20, !dbg !4034
  br label %21, !dbg !4036

11:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !4037
  unreachable, !dbg !4037

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4038
  br i1 %13, label %15, label %14, !dbg !4039

14:                                               ; preds = %12
  tail call void @xalloc_die() #23, !dbg !4040
  unreachable, !dbg !4040

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4041
  %17 = add nuw nsw i64 %3, 1, !dbg !4042
  %18 = add nuw nsw i64 %17, %16, !dbg !4043
  call void @llvm.dbg.value(metadata i64 %18, metadata !543, metadata !DIExpression()) #20, !dbg !4024
  call void @llvm.dbg.value(metadata i64 %18, metadata !543, metadata !DIExpression()) #20, !dbg !4024
  store i64 %18, i64* %1, align 8, !dbg !4033, !tbaa !1378
  call void @llvm.dbg.value(metadata i8* %0, metadata !3930, metadata !DIExpression()) #20, !dbg !4034
  call void @llvm.dbg.value(metadata i64 %18, metadata !3935, metadata !DIExpression()) #20, !dbg !4034
  %19 = icmp eq i64 %18, 0, !dbg !4044
  br i1 %19, label %20, label %21, !dbg !4036

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #20, !dbg !4045
  br label %28, !dbg !4046

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #20, !dbg !4047
  call void @llvm.dbg.value(metadata i8* %23, metadata !3930, metadata !DIExpression()) #20, !dbg !4034
  %24 = icmp eq i8* %23, null, !dbg !4048
  %25 = icmp ne i64 %22, 0, !dbg !4049
  %26 = and i1 %25, %24, !dbg !4050
  br i1 %26, label %27, label %28, !dbg !4050

27:                                               ; preds = %21
  tail call void @xalloc_die() #23, !dbg !4051
  unreachable, !dbg !4051

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4034
  ret i8* %29, !dbg !4052
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4053 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i64 %0, metadata !4057, metadata !DIExpression()) #20, !dbg !4062
  call void @llvm.dbg.value(metadata i64 1, metadata !4060, metadata !DIExpression()) #20, !dbg !4062
  %2 = icmp slt i64 %0, 0, !dbg !4064
  br i1 %2, label %6, label %3, !dbg !4066

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #20, !dbg !4067
  call void @llvm.dbg.value(metadata i8* %4, metadata !4061, metadata !DIExpression()) #20, !dbg !4062
  %5 = icmp eq i8* %4, null, !dbg !4068
  br i1 %5, label %6, label %7, !dbg !4069

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #23, !dbg !4070
  unreachable, !dbg !4070

7:                                                ; preds = %3
  ret i8* %4, !dbg !4071
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4058 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4057, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i64 %1, metadata !4060, metadata !DIExpression()), !dbg !4072
  %3 = udiv i64 9223372036854775807, %1, !dbg !4073
  %4 = icmp ult i64 %3, %0, !dbg !4073
  br i1 %4, label %8, label %5, !dbg !4074

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #20, !dbg !4075
  call void @llvm.dbg.value(metadata i8* %6, metadata !4061, metadata !DIExpression()), !dbg !4072
  %7 = icmp eq i8* %6, null, !dbg !4076
  br i1 %7, label %8, label %9, !dbg !4077

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #23, !dbg !4078
  unreachable, !dbg !4078

9:                                                ; preds = %5
  ret i8* %6, !dbg !4079
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4080 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4084, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata i64 %1, metadata !4085, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata i64 %1, metadata !3895, metadata !DIExpression()) #20, !dbg !4087
  %3 = tail call noalias i8* @malloc(i64 %1) #20, !dbg !4089
  call void @llvm.dbg.value(metadata i8* %3, metadata !3900, metadata !DIExpression()) #20, !dbg !4087
  %4 = icmp eq i8* %3, null, !dbg !4090
  %5 = icmp ne i64 %1, 0, !dbg !4091
  %6 = and i1 %5, %4, !dbg !4092
  br i1 %6, label %7, label %8, !dbg !4092

7:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !4093
  unreachable, !dbg !4093

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4094, metadata !DIExpression()) #20, !dbg !4103
  call void @llvm.dbg.value(metadata i8* %0, metadata !4101, metadata !DIExpression()) #20, !dbg !4103
  call void @llvm.dbg.value(metadata i64 %1, metadata !4102, metadata !DIExpression()) #20, !dbg !4103
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #20, !dbg !4105
  ret i8* %3, !dbg !4106
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4107 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4109, metadata !DIExpression()), !dbg !4110
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !4111
  %3 = add i64 %2, 1, !dbg !4112
  call void @llvm.dbg.value(metadata i8* %0, metadata !4084, metadata !DIExpression()) #20, !dbg !4113
  call void @llvm.dbg.value(metadata i64 %3, metadata !4085, metadata !DIExpression()) #20, !dbg !4113
  call void @llvm.dbg.value(metadata i64 %3, metadata !3895, metadata !DIExpression()) #20, !dbg !4115
  %4 = tail call noalias i8* @malloc(i64 %3) #20, !dbg !4117
  call void @llvm.dbg.value(metadata i8* %4, metadata !3900, metadata !DIExpression()) #20, !dbg !4115
  %5 = icmp eq i8* %4, null, !dbg !4118
  %6 = icmp ne i64 %3, 0, !dbg !4119
  %7 = and i1 %6, %5, !dbg !4120
  br i1 %7, label %8, label %9, !dbg !4120

8:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !4121
  unreachable, !dbg !4121

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4094, metadata !DIExpression()) #20, !dbg !4122
  call void @llvm.dbg.value(metadata i8* %0, metadata !4101, metadata !DIExpression()) #20, !dbg !4122
  call void @llvm.dbg.value(metadata i64 %3, metadata !4102, metadata !DIExpression()) #20, !dbg !4122
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #20, !dbg !4124
  ret i8* %4, !dbg !4125
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4126 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4127, !tbaa !1319
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.128, i64 0, i64 0), i32 5) #20, !dbg !4128
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i64 0, i64 0), i8* %2) #20, !dbg !4129
  tail call void @abort() #23, !dbg !4130
  unreachable, !dbg !4130
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoumax(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i8* %5, i32 %6) local_unnamed_addr #8 !dbg !4131 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4136, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i32 %1, metadata !4137, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i64 %2, metadata !4138, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i64 %3, metadata !4139, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i8* %4, metadata !4140, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i8* %5, metadata !4141, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i32 %6, metadata !4142, metadata !DIExpression()), !dbg !4146
  %9 = bitcast i64* %8 to i8*, !dbg !4147
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #20, !dbg !4147
  call void @llvm.dbg.value(metadata i64* %8, metadata !4145, metadata !DIExpression(DW_OP_deref)), !dbg !4146
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #20, !dbg !4148
  call void @llvm.dbg.value(metadata i32 %10, metadata !4143, metadata !DIExpression()), !dbg !4146
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %23
    i32 3, label %25
  ], !dbg !4149

11:                                               ; preds = %7
  %12 = tail call i32* @__errno_location() #25, !dbg !4150
  br label %27, !dbg !4149

13:                                               ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !4153, !tbaa !1378
  call void @llvm.dbg.value(metadata i64 %14, metadata !4145, metadata !DIExpression()), !dbg !4146
  %15 = icmp ult i64 %14, %2, !dbg !4157
  %16 = icmp ugt i64 %14, %3, !dbg !4158
  %17 = or i1 %15, %16, !dbg !4159
  br i1 %17, label %18, label %36, !dbg !4159

18:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !4143, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i64 %14, metadata !4145, metadata !DIExpression()), !dbg !4146
  %19 = icmp ugt i64 %14, 1073741823, !dbg !4160
  %20 = tail call i32* @__errno_location() #25, !dbg !4163
  br i1 %19, label %21, label %22, !dbg !4164

21:                                               ; preds = %18
  store i32 75, i32* %20, align 4, !dbg !4165, !tbaa !1319
  call void @llvm.dbg.value(metadata i32 undef, metadata !4143, metadata !DIExpression()), !dbg !4146
  br label %27, !dbg !4166

22:                                               ; preds = %18
  store i32 34, i32* %20, align 4, !dbg !4167, !tbaa !1319
  call void @llvm.dbg.value(metadata i32 undef, metadata !4143, metadata !DIExpression()), !dbg !4146
  br label %27, !dbg !4166

23:                                               ; preds = %7
  %24 = tail call i32* @__errno_location() #25, !dbg !4168
  store i32 75, i32* %24, align 4, !dbg !4170, !tbaa !1319
  call void @llvm.dbg.value(metadata i32 undef, metadata !4143, metadata !DIExpression()), !dbg !4146
  br label %27, !dbg !4166

25:                                               ; preds = %7
  %26 = tail call i32* @__errno_location() #25, !dbg !4171
  store i32 0, i32* %26, align 4, !dbg !4173, !tbaa !1319
  call void @llvm.dbg.value(metadata i32 undef, metadata !4143, metadata !DIExpression()), !dbg !4146
  br label %27, !dbg !4166

27:                                               ; preds = %11, %25, %23, %22, %21
  %28 = phi i32* [ %12, %11 ], [ %26, %25 ], [ %24, %23 ], [ %20, %22 ], [ %20, %21 ], !dbg !4150
  %29 = icmp eq i32 %6, 0, !dbg !4174
  %30 = select i1 %29, i32 1, i32 %6, !dbg !4174
  %31 = load i32, i32* %28, align 4, !dbg !4150, !tbaa !1319
  %32 = icmp eq i32 %31, 22, !dbg !4175
  %33 = select i1 %32, i32 0, i32 %31, !dbg !4150
  %34 = call i8* @quote(i8* %0) #20, !dbg !4176
  call void (i32, i32, i8*, ...) @error(i32 %30, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i64 0, i64 0), i8* %5, i8* %34) #20, !dbg !4177
  %35 = load i64, i64* %8, align 8, !dbg !4178, !tbaa !1378
  br label %36, !dbg !4179

36:                                               ; preds = %13, %27
  %37 = phi i64 [ %14, %13 ], [ %35, %27 ], !dbg !4178
  call void @llvm.dbg.value(metadata i64 %37, metadata !4145, metadata !DIExpression()), !dbg !4146
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #20, !dbg !4180
  ret i64 %37, !dbg !4181
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoumax(i8* %0, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5) local_unnamed_addr #8 !dbg !4182 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4186, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata i64 %1, metadata !4187, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata i64 %2, metadata !4188, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata i8* %3, metadata !4189, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata i8* %4, metadata !4190, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata i32 %5, metadata !4191, metadata !DIExpression()), !dbg !4192
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !4193
  ret i64 %7, !dbg !4194
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !4195 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4201, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i8** %1, metadata !4202, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i32 %2, metadata !4203, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i64* %3, metadata !4204, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i8* %4, metadata !4205, metadata !DIExpression()), !dbg !4219
  %7 = bitcast i8** %6 to i8*, !dbg !4220
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #20, !dbg !4220
  call void @llvm.dbg.value(metadata i32 0, metadata !4209, metadata !DIExpression()), !dbg !4219
  %8 = icmp ult i32 %2, 37, !dbg !4221
  br i1 %8, label %10, label %9, !dbg !4221

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.135, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.136, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #23, !dbg !4221
  unreachable, !dbg !4221

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4224
  call void @llvm.dbg.value(metadata i8** %25, metadata !4207, metadata !DIExpression()), !dbg !4219
  %12 = tail call i32* @__errno_location() #25, !dbg !4225
  store i32 0, i32* %12, align 4, !dbg !4226, !tbaa !1319
  call void @llvm.dbg.value(metadata i8* %0, metadata !4210, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i8 undef, metadata !4213, metadata !DIExpression()), !dbg !4227
  %13 = tail call i16** @__ctype_b_loc() #25, !dbg !4227
  %14 = load i16*, i16** %13, align 8, !dbg !4227, !tbaa !1201
  br label %15, !dbg !4228

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !4227
  %17 = load i8, i8* %16, align 1, !dbg !4227, !tbaa !1389
  call void @llvm.dbg.value(metadata i8 %17, metadata !4213, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i8* %16, metadata !4210, metadata !DIExpression()), !dbg !4227
  %18 = zext i8 %17 to i64, !dbg !4229
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4229
  %20 = load i16, i16* %19, align 2, !dbg !4229, !tbaa !2699
  %21 = and i16 %20, 8192, !dbg !4229
  %22 = icmp eq i16 %21, 0, !dbg !4228
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4230
  call void @llvm.dbg.value(metadata i8* %23, metadata !4210, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i8 undef, metadata !4213, metadata !DIExpression()), !dbg !4227
  br i1 %22, label %24, label %15, !dbg !4228, !llvm.loop !4231

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4224
  %26 = icmp eq i8 %17, 45, !dbg !4233
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %0, metadata !4235, metadata !DIExpression()) #20, !dbg !4244
  call void @llvm.dbg.value(metadata i8** %25, metadata !4242, metadata !DIExpression()) #20, !dbg !4244
  call void @llvm.dbg.value(metadata i32 %2, metadata !4243, metadata !DIExpression()) #20, !dbg !4244
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #20, !dbg !4246
  call void @llvm.dbg.value(metadata i64 %28, metadata !4208, metadata !DIExpression()), !dbg !4219
  %29 = load i8*, i8** %25, align 8, !dbg !4247, !tbaa !1201
  %30 = icmp eq i8* %29, %0, !dbg !4249
  br i1 %30, label %31, label %40, !dbg !4250

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4251
  br i1 %32, label %285, label %33, !dbg !4254

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4255, !tbaa !1389
  %35 = icmp eq i8 %34, 0, !dbg !4255
  br i1 %35, label %285, label %36, !dbg !4256

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4255
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #22, !dbg !4257
  %39 = icmp eq i8* %38, null, !dbg !4257
  br i1 %39, label %285, label %47, !dbg !4258

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4259, !tbaa !1319
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4261

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !4209, metadata !DIExpression()), !dbg !4219
  br label %43, !dbg !4262

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !4219
  call void @llvm.dbg.value(metadata i32 %44, metadata !4209, metadata !DIExpression()), !dbg !4219
  %45 = icmp eq i8* %4, null, !dbg !4264
  br i1 %45, label %46, label %47, !dbg !4266

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !4208, metadata !DIExpression()), !dbg !4219
  store i64 %28, i64* %3, align 8, !dbg !4267, !tbaa !1378
  br label %285, !dbg !4269

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4270, !tbaa !1389
  %51 = sext i8 %50 to i32, !dbg !4270
  %52 = icmp eq i8 %50, 0, !dbg !4271
  br i1 %52, label %282, label %53, !dbg !4272

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !4214, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i32 1, metadata !4217, metadata !DIExpression()), !dbg !4273
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #22, !dbg !4274
  %55 = icmp eq i8* %54, null, !dbg !4274
  br i1 %55, label %56, label %58, !dbg !4276

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !4208, metadata !DIExpression()), !dbg !4219
  store i64 %49, i64* %3, align 8, !dbg !4277, !tbaa !1378
  %57 = or i32 %48, 2, !dbg !4279
  br label %285, !dbg !4280

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
  ], !dbg !4281

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #22, !dbg !4282
  %61 = icmp eq i8* %60, null, !dbg !4282
  br i1 %61, label %72, label %62, !dbg !4285

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4286
  %64 = load i8, i8* %63, align 1, !dbg !4286, !tbaa !1389
  %65 = sext i8 %64 to i32, !dbg !4286
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4287

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4288
  %68 = load i8, i8* %67, align 1, !dbg !4288, !tbaa !1389
  %69 = icmp eq i8 %68, 66, !dbg !4291
  %70 = select i1 %69, i64 3, i64 1, !dbg !4292
  br label %72, !dbg !4292

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !4214, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i32 2, metadata !4217, metadata !DIExpression()), !dbg !4273
  br label %72, !dbg !4293

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !4217, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i32 undef, metadata !4214, metadata !DIExpression()), !dbg !4273
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
  ], !dbg !4294

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4295, metadata !DIExpression()) #20, !dbg !4303
  call void @llvm.dbg.value(metadata i32 6, metadata !4302, metadata !DIExpression()) #20, !dbg !4303
  call void @llvm.dbg.value(metadata i32 undef, metadata !4306, metadata !DIExpression()) #20, !dbg !4312
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4314
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4314
  %78 = mul i64 %49, %73, !dbg !4316
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4316
  call void @llvm.dbg.value(metadata i1 %77, metadata !4295, metadata !DIExpression()) #20, !dbg !4303
  call void @llvm.dbg.value(metadata i32 5, metadata !4302, metadata !DIExpression()) #20, !dbg !4303
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #20, !dbg !4314
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !4314
  %82 = mul i64 %79, %73, !dbg !4316
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4316
  %84 = or i1 %77, %81, !dbg !4317
  call void @llvm.dbg.value(metadata i1 %84, metadata !4295, metadata !DIExpression()) #20, !dbg !4303
  call void @llvm.dbg.value(metadata i32 4, metadata !4302, metadata !DIExpression()) #20, !dbg !4303
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #20, !dbg !4314
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !4314
  %87 = mul i64 %83, %73, !dbg !4316
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !4316
  %89 = or i1 %84, %86, !dbg !4317
  call void @llvm.dbg.value(metadata i1 %89, metadata !4295, metadata !DIExpression()) #20, !dbg !4303
  call void @llvm.dbg.value(metadata i32 3, metadata !4302, metadata !DIExpression()) #20, !dbg !4303
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #20, !dbg !4314
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !4314
  %92 = mul i64 %88, %73, !dbg !4316
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !4316
  %94 = or i1 %89, %91, !dbg !4317
  call void @llvm.dbg.value(metadata i1 %94, metadata !4295, metadata !DIExpression()) #20, !dbg !4303
  call void @llvm.dbg.value(metadata i32 2, metadata !4302, metadata !DIExpression()) #20, !dbg !4303
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #20, !dbg !4314
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !4314
  %97 = mul i64 %93, %73, !dbg !4316
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !4316
  %99 = or i1 %94, %96, !dbg !4317
  call void @llvm.dbg.value(metadata i1 %99, metadata !4295, metadata !DIExpression()) #20, !dbg !4303
  call void @llvm.dbg.value(metadata i32 1, metadata !4302, metadata !DIExpression()) #20, !dbg !4303
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #20, !dbg !4314
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !4314
  %102 = mul i64 %98, %73, !dbg !4316
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !4316
  %104 = or i1 %99, %101, !dbg !4317
  call void @llvm.dbg.value(metadata i1 %104, metadata !4295, metadata !DIExpression()) #20, !dbg !4303
  call void @llvm.dbg.value(metadata i32 0, metadata !4302, metadata !DIExpression()) #20, !dbg !4303
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #20, !dbg !4314
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !4314
  %107 = mul i64 %103, %73, !dbg !4316
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4316
  %109 = or i1 %104, %106, !dbg !4317
  call void @llvm.dbg.value(metadata i1 %109, metadata !4295, metadata !DIExpression()) #20, !dbg !4303
  call void @llvm.dbg.value(metadata i32 0, metadata !4302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4303
  br label %272, !dbg !4318

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4295, metadata !DIExpression()) #20, !dbg !4319
  call void @llvm.dbg.value(metadata i32 7, metadata !4302, metadata !DIExpression()) #20, !dbg !4319
  call void @llvm.dbg.value(metadata i32 undef, metadata !4306, metadata !DIExpression()) #20, !dbg !4321
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4323
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !4323
  %113 = mul i64 %49, %73, !dbg !4324
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !4324
  call void @llvm.dbg.value(metadata i1 %112, metadata !4295, metadata !DIExpression()) #20, !dbg !4319
  call void @llvm.dbg.value(metadata i32 6, metadata !4302, metadata !DIExpression()) #20, !dbg !4319
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #20, !dbg !4323
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !4323
  %117 = mul i64 %114, %73, !dbg !4324
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4324
  %119 = or i1 %112, %116, !dbg !4325
  call void @llvm.dbg.value(metadata i1 %119, metadata !4295, metadata !DIExpression()) #20, !dbg !4319
  call void @llvm.dbg.value(metadata i32 5, metadata !4302, metadata !DIExpression()) #20, !dbg !4319
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #20, !dbg !4323
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !4323
  %122 = mul i64 %118, %73, !dbg !4324
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !4324
  %124 = or i1 %119, %121, !dbg !4325
  call void @llvm.dbg.value(metadata i1 %124, metadata !4295, metadata !DIExpression()) #20, !dbg !4319
  call void @llvm.dbg.value(metadata i32 4, metadata !4302, metadata !DIExpression()) #20, !dbg !4319
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #20, !dbg !4323
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !4323
  %127 = mul i64 %123, %73, !dbg !4324
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !4324
  %129 = or i1 %124, %126, !dbg !4325
  call void @llvm.dbg.value(metadata i1 %129, metadata !4295, metadata !DIExpression()) #20, !dbg !4319
  call void @llvm.dbg.value(metadata i32 3, metadata !4302, metadata !DIExpression()) #20, !dbg !4319
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #20, !dbg !4323
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !4323
  %132 = mul i64 %128, %73, !dbg !4324
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !4324
  %134 = or i1 %129, %131, !dbg !4325
  call void @llvm.dbg.value(metadata i1 %134, metadata !4295, metadata !DIExpression()) #20, !dbg !4319
  call void @llvm.dbg.value(metadata i32 2, metadata !4302, metadata !DIExpression()) #20, !dbg !4319
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #20, !dbg !4323
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !4323
  %137 = mul i64 %133, %73, !dbg !4324
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4324
  %139 = or i1 %134, %136, !dbg !4325
  call void @llvm.dbg.value(metadata i1 %139, metadata !4295, metadata !DIExpression()) #20, !dbg !4319
  call void @llvm.dbg.value(metadata i32 1, metadata !4302, metadata !DIExpression()) #20, !dbg !4319
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #20, !dbg !4323
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !4323
  %142 = mul i64 %138, %73, !dbg !4324
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !4324
  %144 = or i1 %139, %141, !dbg !4325
  call void @llvm.dbg.value(metadata i1 %144, metadata !4295, metadata !DIExpression()) #20, !dbg !4319
  call void @llvm.dbg.value(metadata i32 0, metadata !4302, metadata !DIExpression()) #20, !dbg !4319
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #20, !dbg !4323
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !4323
  %147 = mul i64 %143, %73, !dbg !4324
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4324
  %149 = or i1 %144, %146, !dbg !4325
  call void @llvm.dbg.value(metadata i1 %149, metadata !4295, metadata !DIExpression()) #20, !dbg !4319
  call void @llvm.dbg.value(metadata i32 0, metadata !4302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4319
  br label %272, !dbg !4318

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4295, metadata !DIExpression()) #20, !dbg !4326
  call void @llvm.dbg.value(metadata i32 4, metadata !4302, metadata !DIExpression()) #20, !dbg !4326
  call void @llvm.dbg.value(metadata i32 undef, metadata !4306, metadata !DIExpression()) #20, !dbg !4328
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4330
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !4330
  %153 = mul i64 %49, %73, !dbg !4331
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !4331
  call void @llvm.dbg.value(metadata i1 %152, metadata !4295, metadata !DIExpression()) #20, !dbg !4326
  call void @llvm.dbg.value(metadata i32 3, metadata !4302, metadata !DIExpression()) #20, !dbg !4326
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #20, !dbg !4330
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !4330
  %157 = mul i64 %154, %73, !dbg !4331
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !4331
  %159 = or i1 %152, %156, !dbg !4332
  call void @llvm.dbg.value(metadata i1 %159, metadata !4295, metadata !DIExpression()) #20, !dbg !4326
  call void @llvm.dbg.value(metadata i32 2, metadata !4302, metadata !DIExpression()) #20, !dbg !4326
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #20, !dbg !4330
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !4330
  %162 = mul i64 %158, %73, !dbg !4331
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !4331
  %164 = or i1 %159, %161, !dbg !4332
  call void @llvm.dbg.value(metadata i1 %164, metadata !4295, metadata !DIExpression()) #20, !dbg !4326
  call void @llvm.dbg.value(metadata i32 1, metadata !4302, metadata !DIExpression()) #20, !dbg !4326
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #20, !dbg !4330
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !4330
  %167 = mul i64 %163, %73, !dbg !4331
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !4331
  %169 = or i1 %164, %166, !dbg !4332
  call void @llvm.dbg.value(metadata i1 %169, metadata !4295, metadata !DIExpression()) #20, !dbg !4326
  call void @llvm.dbg.value(metadata i32 0, metadata !4302, metadata !DIExpression()) #20, !dbg !4326
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #20, !dbg !4330
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !4330
  %172 = mul i64 %168, %73, !dbg !4331
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !4331
  %174 = or i1 %169, %171, !dbg !4332
  call void @llvm.dbg.value(metadata i1 %174, metadata !4295, metadata !DIExpression()) #20, !dbg !4326
  call void @llvm.dbg.value(metadata i32 0, metadata !4302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4326
  br label %272, !dbg !4318

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4295, metadata !DIExpression()) #20, !dbg !4333
  call void @llvm.dbg.value(metadata i32 5, metadata !4302, metadata !DIExpression()) #20, !dbg !4333
  call void @llvm.dbg.value(metadata i32 undef, metadata !4306, metadata !DIExpression()) #20, !dbg !4335
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4337
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !4337
  %178 = mul i64 %49, %73, !dbg !4338
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !4338
  call void @llvm.dbg.value(metadata i1 %177, metadata !4295, metadata !DIExpression()) #20, !dbg !4333
  call void @llvm.dbg.value(metadata i32 4, metadata !4302, metadata !DIExpression()) #20, !dbg !4333
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #20, !dbg !4337
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !4337
  %182 = mul i64 %179, %73, !dbg !4338
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !4338
  %184 = or i1 %177, %181, !dbg !4339
  call void @llvm.dbg.value(metadata i1 %184, metadata !4295, metadata !DIExpression()) #20, !dbg !4333
  call void @llvm.dbg.value(metadata i32 3, metadata !4302, metadata !DIExpression()) #20, !dbg !4333
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #20, !dbg !4337
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !4337
  %187 = mul i64 %183, %73, !dbg !4338
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !4338
  %189 = or i1 %184, %186, !dbg !4339
  call void @llvm.dbg.value(metadata i1 %189, metadata !4295, metadata !DIExpression()) #20, !dbg !4333
  call void @llvm.dbg.value(metadata i32 2, metadata !4302, metadata !DIExpression()) #20, !dbg !4333
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #20, !dbg !4337
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !4337
  %192 = mul i64 %188, %73, !dbg !4338
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !4338
  %194 = or i1 %189, %191, !dbg !4339
  call void @llvm.dbg.value(metadata i1 %194, metadata !4295, metadata !DIExpression()) #20, !dbg !4333
  call void @llvm.dbg.value(metadata i32 1, metadata !4302, metadata !DIExpression()) #20, !dbg !4333
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #20, !dbg !4337
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4337
  %197 = mul i64 %193, %73, !dbg !4338
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4338
  %199 = or i1 %194, %196, !dbg !4339
  call void @llvm.dbg.value(metadata i1 %199, metadata !4295, metadata !DIExpression()) #20, !dbg !4333
  call void @llvm.dbg.value(metadata i32 0, metadata !4302, metadata !DIExpression()) #20, !dbg !4333
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #20, !dbg !4337
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !4337
  %202 = mul i64 %198, %73, !dbg !4338
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !4338
  %204 = or i1 %199, %201, !dbg !4339
  call void @llvm.dbg.value(metadata i1 %204, metadata !4295, metadata !DIExpression()) #20, !dbg !4333
  call void @llvm.dbg.value(metadata i32 0, metadata !4302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4333
  br label %272, !dbg !4318

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !4306, metadata !DIExpression()) #20, !dbg !4340
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #20, !dbg !4342
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !4342
  %208 = shl i64 %49, 9, !dbg !4343
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !4343
  call void @llvm.dbg.value(metadata i1 %207, metadata !4218, metadata !DIExpression()), !dbg !4273
  br label %272, !dbg !4344

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !4306, metadata !DIExpression()) #20, !dbg !4345
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #20, !dbg !4347
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !4347
  %213 = shl i64 %49, 10, !dbg !4348
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4348
  call void @llvm.dbg.value(metadata i1 %212, metadata !4218, metadata !DIExpression()), !dbg !4273
  br label %272, !dbg !4349

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4301, metadata !DIExpression()) #20, !dbg !4350
  call void @llvm.dbg.value(metadata i32 0, metadata !4295, metadata !DIExpression()) #20, !dbg !4350
  call void @llvm.dbg.value(metadata i32 2, metadata !4302, metadata !DIExpression()) #20, !dbg !4350
  call void @llvm.dbg.value(metadata i32 undef, metadata !4306, metadata !DIExpression()) #20, !dbg !4352
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4354
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !4354
  %218 = mul i64 %49, %73, !dbg !4355
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !4355
  call void @llvm.dbg.value(metadata i1 %217, metadata !4295, metadata !DIExpression()) #20, !dbg !4350
  call void @llvm.dbg.value(metadata i32 1, metadata !4302, metadata !DIExpression()) #20, !dbg !4350
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #20, !dbg !4354
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !4354
  %222 = mul i64 %219, %73, !dbg !4355
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !4355
  %224 = or i1 %217, %221, !dbg !4356
  call void @llvm.dbg.value(metadata i1 %224, metadata !4295, metadata !DIExpression()) #20, !dbg !4350
  call void @llvm.dbg.value(metadata i32 0, metadata !4302, metadata !DIExpression()) #20, !dbg !4350
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #20, !dbg !4354
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !4354
  %227 = mul i64 %223, %73, !dbg !4355
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4355
  %229 = or i1 %224, %226, !dbg !4356
  call void @llvm.dbg.value(metadata i1 %229, metadata !4295, metadata !DIExpression()) #20, !dbg !4350
  call void @llvm.dbg.value(metadata i32 0, metadata !4302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4350
  br label %272, !dbg !4318

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4301, metadata !DIExpression()) #20, !dbg !4357
  call void @llvm.dbg.value(metadata i32 0, metadata !4295, metadata !DIExpression()) #20, !dbg !4357
  call void @llvm.dbg.value(metadata i32 undef, metadata !4302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4357
  call void @llvm.dbg.value(metadata i32 undef, metadata !4306, metadata !DIExpression()) #20, !dbg !4359
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4361
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !4361
  %233 = mul i64 %49, %73, !dbg !4362
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !4362
  call void @llvm.dbg.value(metadata i1 %232, metadata !4295, metadata !DIExpression()) #20, !dbg !4357
  call void @llvm.dbg.value(metadata i32 undef, metadata !4302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4357
  br label %272, !dbg !4318

235:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4301, metadata !DIExpression()) #20, !dbg !4363
  call void @llvm.dbg.value(metadata i32 0, metadata !4295, metadata !DIExpression()) #20, !dbg !4363
  call void @llvm.dbg.value(metadata i32 1, metadata !4302, metadata !DIExpression()) #20, !dbg !4363
  call void @llvm.dbg.value(metadata i32 undef, metadata !4306, metadata !DIExpression()) #20, !dbg !4365
  %236 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4367
  %237 = extractvalue { i64, i1 } %236, 1, !dbg !4367
  %238 = mul i64 %49, %73, !dbg !4368
  %239 = select i1 %237, i64 -1, i64 %238, !dbg !4368
  call void @llvm.dbg.value(metadata i1 %237, metadata !4295, metadata !DIExpression()) #20, !dbg !4363
  call void @llvm.dbg.value(metadata i32 0, metadata !4302, metadata !DIExpression()) #20, !dbg !4363
  %240 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %239) #20, !dbg !4367
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !4367
  %242 = mul i64 %239, %73, !dbg !4368
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !4368
  %244 = or i1 %237, %241, !dbg !4369
  call void @llvm.dbg.value(metadata i1 %244, metadata !4295, metadata !DIExpression()) #20, !dbg !4363
  call void @llvm.dbg.value(metadata i32 0, metadata !4302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4363
  br label %272, !dbg !4318

245:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4301, metadata !DIExpression()) #20, !dbg !4370
  call void @llvm.dbg.value(metadata i32 0, metadata !4295, metadata !DIExpression()) #20, !dbg !4370
  call void @llvm.dbg.value(metadata i32 3, metadata !4302, metadata !DIExpression()) #20, !dbg !4370
  call void @llvm.dbg.value(metadata i32 undef, metadata !4306, metadata !DIExpression()) #20, !dbg !4372
  %246 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4374
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !4374
  %248 = mul i64 %49, %73, !dbg !4375
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !4375
  call void @llvm.dbg.value(metadata i1 %247, metadata !4295, metadata !DIExpression()) #20, !dbg !4370
  call void @llvm.dbg.value(metadata i32 2, metadata !4302, metadata !DIExpression()) #20, !dbg !4370
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %249) #20, !dbg !4374
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4374
  %252 = mul i64 %249, %73, !dbg !4375
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4375
  %254 = or i1 %247, %251, !dbg !4376
  call void @llvm.dbg.value(metadata i1 %254, metadata !4295, metadata !DIExpression()) #20, !dbg !4370
  call void @llvm.dbg.value(metadata i32 1, metadata !4302, metadata !DIExpression()) #20, !dbg !4370
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #20, !dbg !4374
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4374
  %257 = mul i64 %253, %73, !dbg !4375
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4375
  %259 = or i1 %254, %256, !dbg !4376
  call void @llvm.dbg.value(metadata i1 %259, metadata !4295, metadata !DIExpression()) #20, !dbg !4370
  call void @llvm.dbg.value(metadata i32 0, metadata !4302, metadata !DIExpression()) #20, !dbg !4370
  %260 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %258) #20, !dbg !4374
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !4374
  %262 = mul i64 %258, %73, !dbg !4375
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !4375
  %264 = or i1 %259, %261, !dbg !4376
  call void @llvm.dbg.value(metadata i1 %264, metadata !4295, metadata !DIExpression()) #20, !dbg !4370
  call void @llvm.dbg.value(metadata i32 0, metadata !4302, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4370
  br label %272, !dbg !4318

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4306, metadata !DIExpression()) #20, !dbg !4377
  %266 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #20, !dbg !4379
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !4379
  %268 = shl i64 %49, 1, !dbg !4380
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !4380
  call void @llvm.dbg.value(metadata i1 %267, metadata !4218, metadata !DIExpression()), !dbg !4273
  br label %272, !dbg !4381

270:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !4208, metadata !DIExpression()), !dbg !4219
  store i64 %49, i64* %3, align 8, !dbg !4382, !tbaa !1378
  %271 = or i32 %48, 2, !dbg !4383
  br label %285, !dbg !4384

272:                                              ; preds = %75, %110, %245, %150, %235, %230, %215, %175, %205, %210, %265, %72
  %273 = phi i64 [ %269, %265 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %234, %230 ], [ %243, %235 ], [ %173, %150 ], [ %263, %245 ], [ %148, %110 ], [ %108, %75 ], !dbg !4219
  %274 = phi i1 [ %267, %265 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %232, %230 ], [ %244, %235 ], [ %174, %150 ], [ %264, %245 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !4385
  call void @llvm.dbg.value(metadata i32 %275, metadata !4218, metadata !DIExpression()), !dbg !4273
  %276 = or i32 %48, %275, !dbg !4318
  call void @llvm.dbg.value(metadata i32 %276, metadata !4209, metadata !DIExpression()), !dbg !4219
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4386
  store i8* %277, i8** %25, align 8, !dbg !4386, !tbaa !1201
  %278 = load i8, i8* %277, align 1, !dbg !4387, !tbaa !1389
  %279 = icmp eq i8 %278, 0, !dbg !4387
  %280 = or i32 %276, 2, !dbg !4389
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !4390
  call void @llvm.dbg.value(metadata i32 %281, metadata !4209, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i32 %281, metadata !4209, metadata !DIExpression()), !dbg !4219
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !4391
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !4392
  call void @llvm.dbg.value(metadata i32 %284, metadata !4209, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i64 %283, metadata !4208, metadata !DIExpression()), !dbg !4219
  store i64 %283, i64* %3, align 8, !dbg !4393, !tbaa !1378
  br label %285, !dbg !4394

285:                                              ; preds = %24, %56, %270, %40, %31, %33, %36, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %271, %270 ], !dbg !4219
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #20, !dbg !4395
  ret i32 %286, !dbg !4395
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
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #11 !dbg !4396 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4398, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i64 %1, metadata !4399, metadata !DIExpression()), !dbg !4404
  %3 = icmp eq i64 %0, 0, !dbg !4405
  %4 = icmp eq i64 %1, 0, !dbg !4406
  %5 = or i1 %3, %4, !dbg !4407
  br i1 %5, label %11, label %6, !dbg !4407

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4401, metadata !DIExpression()), !dbg !4408
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4409
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4409
  br i1 %8, label %9, label %11, !dbg !4411

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #25, !dbg !4412
  store i32 12, i32* %10, align 4, !dbg !4414, !tbaa !1319
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4398, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i64 %12, metadata !4399, metadata !DIExpression()), !dbg !4404
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #20, !dbg !4415
  call void @llvm.dbg.value(metadata i8* %14, metadata !4400, metadata !DIExpression()), !dbg !4404
  br label %15, !dbg !4416

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4404
  ret i8* %16, !dbg !4417
}

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4418 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4424, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata i32 0, metadata !4425, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata i32 0, metadata !4427, metadata !DIExpression()), !dbg !4428
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4429
  call void @llvm.dbg.value(metadata i32 %2, metadata !4426, metadata !DIExpression()), !dbg !4428
  %3 = icmp slt i32 %2, 0, !dbg !4430
  br i1 %3, label %4, label %6, !dbg !4432

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4433
  br label %24, !dbg !4434

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !4435
  %8 = icmp eq i32 %7, 0, !dbg !4435
  br i1 %8, label %13, label %9, !dbg !4437

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4438
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #20, !dbg !4439
  %12 = icmp eq i64 %11, -1, !dbg !4440
  br i1 %12, label %16, label %13, !dbg !4441

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #20, !dbg !4442
  %15 = icmp eq i32 %14, 0, !dbg !4442
  br i1 %15, label %16, label %18, !dbg !4443

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4425, metadata !DIExpression()), !dbg !4428
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4444
  call void @llvm.dbg.value(metadata i32 %21, metadata !4427, metadata !DIExpression()), !dbg !4428
  br label %24, !dbg !4445

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #25, !dbg !4446
  %20 = load i32, i32* %19, align 4, !dbg !4446, !tbaa !1319
  call void @llvm.dbg.value(metadata i32 %20, metadata !4425, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata i32 %20, metadata !4425, metadata !DIExpression()), !dbg !4428
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4444
  call void @llvm.dbg.value(metadata i32 %21, metadata !4427, metadata !DIExpression()), !dbg !4428
  %22 = icmp eq i32 %20, 0, !dbg !4447
  br i1 %22, label %24, label %23, !dbg !4445

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4449, !tbaa !1319
  call void @llvm.dbg.value(metadata i32 -1, metadata !4427, metadata !DIExpression()), !dbg !4428
  br label %24, !dbg !4451

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4428
  ret i32 %25, !dbg !4452
}

; Function Attrs: nofree nounwind
declare !dbg !616 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !617 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4453 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4459, metadata !DIExpression()), !dbg !4460
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4461
  br i1 %2, label %6, label %3, !dbg !4463

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !4464
  %5 = icmp eq i32 %4, 0, !dbg !4464
  br i1 %5, label %6, label %8, !dbg !4465

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4466
  br label %17, !dbg !4467

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4468, metadata !DIExpression()) #20, !dbg !4473
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4475
  %10 = load i32, i32* %9, align 8, !dbg !4475, !tbaa !1416
  %11 = and i32 %10, 256, !dbg !4477
  %12 = icmp eq i32 %11, 0, !dbg !4477
  br i1 %12, label %15, label %13, !dbg !4478

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #20, !dbg !4479
  br label %15, !dbg !4479

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4480
  br label %17, !dbg !4481

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4460
  ret i32 %18, !dbg !4482
}

; Function Attrs: nofree nounwind
declare !dbg !625 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4483 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4489, metadata !DIExpression()), !dbg !4495
  call void @llvm.dbg.value(metadata i64 %1, metadata !4490, metadata !DIExpression()), !dbg !4495
  call void @llvm.dbg.value(metadata i32 %2, metadata !4491, metadata !DIExpression()), !dbg !4495
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4496
  %5 = load i8*, i8** %4, align 8, !dbg !4496, !tbaa !4497
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4498
  %7 = load i8*, i8** %6, align 8, !dbg !4498, !tbaa !4499
  %8 = icmp eq i8* %5, %7, !dbg !4500
  br i1 %8, label %9, label %28, !dbg !4501

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4502
  %11 = load i8*, i8** %10, align 8, !dbg !4502, !tbaa !1563
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4503
  %13 = load i8*, i8** %12, align 8, !dbg !4503, !tbaa !4504
  %14 = icmp eq i8* %11, %13, !dbg !4505
  br i1 %14, label %15, label %28, !dbg !4506

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4507
  %17 = load i8*, i8** %16, align 8, !dbg !4507, !tbaa !4508
  %18 = icmp eq i8* %17, null, !dbg !4509
  br i1 %18, label %19, label %28, !dbg !4510

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4511
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #20, !dbg !4512
  call void @llvm.dbg.value(metadata i64 %21, metadata !4492, metadata !DIExpression()), !dbg !4513
  %22 = icmp eq i64 %21, -1, !dbg !4514
  br i1 %22, label %30, label %23, !dbg !4516

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4517
  %25 = load i32, i32* %24, align 8, !dbg !4518, !tbaa !1416
  %26 = and i32 %25, -17, !dbg !4518
  store i32 %26, i32* %24, align 8, !dbg !4518, !tbaa !1416
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4519
  store i64 %21, i64* %27, align 8, !dbg !4520, !tbaa !4521
  br label %30, !dbg !4522

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4523
  br label %30, !dbg !4524

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4495
  ret i32 %31, !dbg !4525
}

; Function Attrs: nofree nounwind
declare !dbg !701 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4526 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4534, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i8* %1, metadata !4535, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i64 %2, metadata !4536, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4537, metadata !DIExpression()), !dbg !4543
  %6 = bitcast i32* %5 to i8*, !dbg !4544
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4544
  %7 = icmp eq i32* %0, null, !dbg !4545
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4547
  call void @llvm.dbg.value(metadata i32* %8, metadata !4534, metadata !DIExpression()), !dbg !4543
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #20, !dbg !4548
  call void @llvm.dbg.value(metadata i64 %9, metadata !4538, metadata !DIExpression()), !dbg !4543
  %10 = icmp ugt i64 %9, -3, !dbg !4549
  %11 = icmp ne i64 %2, 0, !dbg !4550
  %12 = and i1 %11, %10, !dbg !4551
  br i1 %12, label %13, label %18, !dbg !4551

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #20, !dbg !4552
  br i1 %14, label %18, label %15, !dbg !4553

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4554, !tbaa !1389
  call void @llvm.dbg.value(metadata i8 %16, metadata !4540, metadata !DIExpression()), !dbg !4555
  %17 = zext i8 %16 to i32, !dbg !4556
  store i32 %17, i32* %8, align 4, !dbg !4557, !tbaa !1319
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4543
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4558
  ret i64 %19, !dbg !4558
}

; Function Attrs: nounwind
declare !dbg !707 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4559 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4565, metadata !DIExpression()), !dbg !4570
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #20, !dbg !4571
  call void @llvm.dbg.value(metadata i1 undef, metadata !4566, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4572, metadata !DIExpression()), !dbg !4575
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4577
  %4 = load i32, i32* %3, align 8, !dbg !4577, !tbaa !1416
  %5 = and i32 %4, 32, !dbg !4577
  %6 = icmp eq i32 %5, 0, !dbg !4578
  call void @llvm.dbg.value(metadata i1 %6, metadata !4568, metadata !DIExpression()), !dbg !4570
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #20, !dbg !4579
  %8 = icmp ne i32 %7, 0, !dbg !4580
  call void @llvm.dbg.value(metadata i1 %8, metadata !4569, metadata !DIExpression()), !dbg !4570
  br i1 %6, label %9, label %19, !dbg !4581

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4583
  call void @llvm.dbg.value(metadata i1 %10, metadata !4566, metadata !DIExpression()), !dbg !4570
  %11 = xor i1 %8, true, !dbg !4584
  %12 = or i1 %10, %11, !dbg !4584
  %13 = sext i1 %8 to i32, !dbg !4584
  br i1 %12, label %22, label %14, !dbg !4584

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #25, !dbg !4585
  %16 = load i32, i32* %15, align 4, !dbg !4585, !tbaa !1319
  %17 = icmp ne i32 %16, 9, !dbg !4586
  %18 = sext i1 %17 to i32, !dbg !4587
  br label %22, !dbg !4587

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4588

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #25, !dbg !4590
  store i32 0, i32* %21, align 4, !dbg !4592, !tbaa !1319
  br label %22, !dbg !4590

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4570
  ret i32 %23, !dbg !4593
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4594 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4596, metadata !DIExpression()), !dbg !4601
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4602
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #20, !dbg !4602
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4597, metadata !DIExpression()), !dbg !4603
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #20, !dbg !4604
  %5 = icmp eq i32 %4, 0, !dbg !4604
  br i1 %5, label %6, label %13, !dbg !4606

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4607
  %8 = load i16, i16* %7, align 16, !dbg !4607
  %9 = icmp eq i16 %8, 67, !dbg !4607
  br i1 %9, label %13, label %10, !dbg !4608

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.151, i64 0, i64 0), i64 6), !dbg !4609
  %12 = icmp ne i32 %11, 0, !dbg !4610
  br label %13, !dbg !4608

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4601
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #20, !dbg !4611
  ret i1 %14, !dbg !4611
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4612 {
  %1 = tail call i8* @nl_langinfo(i32 14) #20, !dbg !4615
  call void @llvm.dbg.value(metadata i8* %1, metadata !4614, metadata !DIExpression()), !dbg !4616
  %2 = icmp eq i8* %1, null, !dbg !4617
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.154, i64 0, i64 0), i8* %1, !dbg !4619
  call void @llvm.dbg.value(metadata i8* %3, metadata !4614, metadata !DIExpression()), !dbg !4616
  %4 = load i8, i8* %3, align 1, !dbg !4620, !tbaa !1389
  %5 = icmp eq i8 %4, 0, !dbg !4624
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.155, i64 0, i64 0), i8* %3, !dbg !4625
  call void @llvm.dbg.value(metadata i8* %6, metadata !4614, metadata !DIExpression()), !dbg !4616
  ret i8* %6, !dbg !4626
}

; Function Attrs: nounwind
declare !dbg !1158 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4627 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4631, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata i8* %1, metadata !4632, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata i64 %2, metadata !4633, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata i32 %0, metadata !4635, metadata !DIExpression()) #20, !dbg !4644
  call void @llvm.dbg.value(metadata i8* %1, metadata !4638, metadata !DIExpression()) #20, !dbg !4644
  call void @llvm.dbg.value(metadata i64 %2, metadata !4639, metadata !DIExpression()) #20, !dbg !4644
  call void @llvm.dbg.value(metadata i32 %0, metadata !4646, metadata !DIExpression()) #20, !dbg !4652
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !4654
  call void @llvm.dbg.value(metadata i8* %4, metadata !4651, metadata !DIExpression()) #20, !dbg !4652
  call void @llvm.dbg.value(metadata i8* %4, metadata !4640, metadata !DIExpression()) #20, !dbg !4644
  %5 = icmp eq i8* %4, null, !dbg !4655
  br i1 %5, label %6, label %9, !dbg !4656

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4657
  br i1 %7, label %19, label %8, !dbg !4660

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4661, !tbaa !1389
  br label %19, !dbg !4662

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !4663
  call void @llvm.dbg.value(metadata i64 %10, metadata !4641, metadata !DIExpression()) #20, !dbg !4664
  %11 = icmp ult i64 %10, %2, !dbg !4665
  br i1 %11, label %12, label %14, !dbg !4667

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4668
  call void @llvm.dbg.value(metadata i8* %1, metadata !4670, metadata !DIExpression()) #20, !dbg !4675
  call void @llvm.dbg.value(metadata i8* %4, metadata !4673, metadata !DIExpression()) #20, !dbg !4675
  call void @llvm.dbg.value(metadata i64 %13, metadata !4674, metadata !DIExpression()) #20, !dbg !4675
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #20, !dbg !4677
  br label %19, !dbg !4678

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4679
  br i1 %15, label %19, label %16, !dbg !4682

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4683
  call void @llvm.dbg.value(metadata i8* %1, metadata !4670, metadata !DIExpression()) #20, !dbg !4685
  call void @llvm.dbg.value(metadata i8* %4, metadata !4673, metadata !DIExpression()) #20, !dbg !4685
  call void @llvm.dbg.value(metadata i64 %17, metadata !4674, metadata !DIExpression()) #20, !dbg !4685
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #20, !dbg !4687
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4688
  store i8 0, i8* %18, align 1, !dbg !4689, !tbaa !1389
  br label %19, !dbg !4690

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4691
  ret i32 %20, !dbg !4692
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4693 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4695, metadata !DIExpression()), !dbg !4696
  call void @llvm.dbg.value(metadata i32 %0, metadata !4646, metadata !DIExpression()) #20, !dbg !4697
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !4699
  call void @llvm.dbg.value(metadata i8* %2, metadata !4651, metadata !DIExpression()) #20, !dbg !4697
  ret i8* %2, !dbg !4700
}

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
attributes #10 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { norecurse nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree nounwind }
attributes #16 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree nounwind readonly }
attributes #19 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nounwind }
attributes #21 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { nounwind readnone }
attributes #26 = { cold }

!llvm.dbg.cu = !{!2, !202, !213, !235, !280, !446, !286, !327, !489, !440, !531, !552, !555, !571, !575, !578, !622, !663, !704, !723, !761, !768, !1161}
!llvm.ident = !{!1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164, !1164}
!llvm.module.flags = !{!1165, !1166, !1167, !1168, !1169}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 74, type: !197, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !196, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/basenc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 32, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!21 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!26 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!27 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!28 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!29 = !{!30, !40, !101, !105, !109, !112, !115, !122, !137, !34, !91, !141, !145, !149, !153, !156, !159, !163, !167, !179, !183, !93, !36, !187, !192, !193}
!30 = !DISubprogram(name: "dcgettext", scope: !31, file: !31, line: 51, type: !32, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!31 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !36, !36, !38}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !{}
!40 = !DISubprogram(name: "fputs_unlocked", scope: !41, file: !41, line: 662, type: !42, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!41 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!42 = !DISubroutineType(types: !43)
!43 = !{!38, !36, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !47)
!46 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !63, !64, !65, !66, !70, !72, !74, !78, !81, !83, !86, !89, !90, !92, !96, !97}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !45, file: !46, line: 51, baseType: !38, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !45, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !45, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !45, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !45, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !45, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !45, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !45, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !45, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !45, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !45, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !45, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !45, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !46, line: 36, flags: DIFlagFwdDecl)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !45, file: !46, line: 70, baseType: !44, size: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !45, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !45, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !45, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !68, line: 152, baseType: !69)
!68 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!69 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !45, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!71 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !45, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!73 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !45, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 1)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !45, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !46, line: 43, baseType: null)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !45, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !68, line: 153, baseType: !69)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !45, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !46, line: 37, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !45, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !46, line: 38, flags: DIFlagFwdDecl)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !45, file: !46, line: 93, baseType: !44, size: 64, offset: 1344)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !45, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !45, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !94, line: 46, baseType: !95)
!94 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!95 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !45, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !45, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 160, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 20)
!101 = !DISubprogram(name: "set_program_name", scope: !102, file: !102, line: 37, type: !103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!102 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!103 = !DISubroutineType(types: !104)
!104 = !{null, !36}
!105 = !DISubprogram(name: "setlocale", scope: !106, file: !106, line: 122, type: !107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!106 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!107 = !DISubroutineType(types: !108)
!108 = !{!34, !38, !36}
!109 = !DISubprogram(name: "bindtextdomain", scope: !31, file: !31, line: 86, type: !110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!110 = !DISubroutineType(types: !111)
!111 = !{!34, !36, !36}
!112 = !DISubprogram(name: "textdomain", scope: !31, file: !31, line: 82, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!113 = !DISubroutineType(types: !114)
!114 = !{!34, !36}
!115 = !DISubprogram(name: "atexit", scope: !116, file: !116, line: 595, type: !117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!116 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!117 = !DISubroutineType(types: !118)
!118 = !{!38, !119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{null}
!122 = !DISubprogram(name: "getopt_long", scope: !123, file: !123, line: 66, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!123 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!124 = !DISubroutineType(types: !125)
!125 = !{!38, !38, !126, !36, !128, !135}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !123, line: 50, size: 256, elements: !131)
!131 = !{!132, !133, !134, !136}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !130, file: !123, line: 52, baseType: !36, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !130, file: !123, line: 55, baseType: !38, size: 32, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !130, file: !123, line: 56, baseType: !135, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !130, file: !123, line: 57, baseType: !38, size: 32, offset: 192)
!137 = !DISubprogram(name: "xdectoumax", scope: !138, file: !138, line: 31, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!138 = !DIFile(filename: "./lib/xdectoint.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!139 = !DISubroutineType(types: !140)
!140 = !{!95, !36, !95, !95, !36, !36, !38}
!141 = !DISubprogram(name: "version_etc", scope: !142, file: !142, line: 69, type: !143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!142 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!143 = !DISubroutineType(types: !144)
!144 = !{null, !44, !36, !36, !36, null}
!145 = !DISubprogram(name: "quote", scope: !146, file: !146, line: 44, type: !147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!146 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!147 = !DISubroutineType(types: !148)
!148 = !{!36, !36}
!149 = !DISubprogram(name: "error", scope: !150, file: !150, line: 52, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!150 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!151 = !DISubroutineType(types: !152)
!152 = !{null, !38, !38, !36, null}
!153 = !DISubprogram(name: "quotearg_n_style_colon", scope: !6, file: !6, line: 397, type: !154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!154 = !DISubroutineType(types: !155)
!155 = !{!34, !38, !5, !36}
!156 = !DISubprogram(name: "fadvise", scope: !21, file: !21, line: 72, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !44, !20}
!159 = !DISubprogram(name: "rpl_fclose", scope: !160, file: !160, line: 672, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!160 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!161 = !DISubroutineType(types: !162)
!162 = !{!38, !44}
!163 = !DISubprogram(name: "xmalloc", scope: !164, file: !164, line: 53, type: !165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!164 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!165 = !DISubroutineType(types: !166)
!166 = !{!91, !95}
!167 = !DISubprogram(name: "base32_decode_ctx_init", scope: !168, file: !168, line: 44, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!168 = !DIFile(filename: "./lib/base32.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!169 = !DISubroutineType(types: !170)
!170 = !{null, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base32_decode_context", file: !168, line: 31, size: 96, elements: !173)
!173 = !{!174, !175}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !172, file: !168, line: 33, baseType: !7, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !172, file: !168, line: 34, baseType: !176, size: 64, offset: 32)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 8)
!179 = !DISubprogram(name: "isbase32", scope: !168, file: !168, line: 37, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!180 = !DISubroutineType(types: !181)
!181 = !{!182, !35}
!182 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!183 = !DISubprogram(name: "base32_decode_ctx", scope: !168, file: !168, line: 46, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!184 = !DISubroutineType(types: !185)
!185 = !{!182, !171, !36, !95, !34, !186}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!187 = !DISubprogram(name: "fwrite_unlocked", scope: !41, file: !41, line: 675, type: !188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!188 = !DISubroutineType(types: !189)
!189 = !{!95, !190, !95, !95, !44}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!192 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!193 = !DISubprogram(name: "base32_encode", scope: !168, file: !168, line: 39, type: !194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !36, !95, !34, !95}
!196 = !{!0}
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 1536, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 6)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "Version", scope: !202, file: !203, line: 2, type: !36, isLocal: false, isDefinition: true)
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !204, splitDebugInlining: false, nameTableKind: None)
!203 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!204 = !{!200}
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "b32str", scope: !207, file: !208, line: 68, type: !230, isLocal: true, isDefinition: true)
!207 = distinct !DISubprogram(name: "base32_encode", scope: !208, file: !208, line: 65, type: !209, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !225)
!208 = !DIFile(filename: "lib/base32.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!209 = !DISubroutineType(types: !210)
!210 = !{null, !211, !93, !212, !93}
!211 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!212 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !208, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !214, globals: !218, splitDebugInlining: false, nameTableKind: None)
!214 = !{!91, !215, !34}
!215 = !DISubprogram(name: "free", scope: !116, file: !116, line: 565, type: !216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !91}
!218 = !{!205, !219}
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "b32", scope: !213, file: !208, line: 209, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 2048, elements: !223)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!223 = !{!224}
!224 = !DISubrange(count: 256)
!225 = !{!226, !227, !228, !229}
!226 = !DILocalVariable(name: "in", arg: 1, scope: !207, file: !208, line: 65, type: !211)
!227 = !DILocalVariable(name: "inlen", arg: 2, scope: !207, file: !208, line: 65, type: !93)
!228 = !DILocalVariable(name: "out", arg: 3, scope: !207, file: !208, line: 66, type: !212)
!229 = !DILocalVariable(name: "outlen", arg: 4, scope: !207, file: !208, line: 66, type: !93)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 256, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 32)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "file_name", scope: !235, file: !236, line: 46, type: !36, isLocal: true, isDefinition: true)
!235 = distinct !DICompileUnit(language: DW_LANG_C99, file: !236, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !237, globals: !275, splitDebugInlining: false, nameTableKind: None)
!236 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!237 = !{!238, !30, !274, !149}
!238 = !DISubprogram(name: "close_stream", scope: !239, file: !239, line: 2, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!239 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!240 = !DISubroutineType(types: !241)
!241 = !{!38, !242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !243, file: !46, line: 51, baseType: !38, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !243, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !243, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !243, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !243, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !243, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !243, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !243, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !243, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !243, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !243, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !243, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !243, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !243, file: !46, line: 70, baseType: !242, size: 64, offset: 832)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !243, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !243, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !243, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !243, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !243, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !243, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !243, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !243, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !243, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !243, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !243, file: !46, line: 93, baseType: !242, size: 64, offset: 1344)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !243, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !243, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !243, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !243, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!274 = !DISubprogram(name: "quotearg_colon", scope: !6, file: !6, line: 391, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!275 = !{!233, !276}
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !235, file: !236, line: 56, type: !182, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(name: "exit_failure", scope: !280, file: !281, line: 24, type: !283, isLocal: false, isDefinition: true)
!280 = distinct !DICompileUnit(language: DW_LANG_C99, file: !281, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !282, splitDebugInlining: false, nameTableKind: None)
!281 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!282 = !{!278}
!283 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(name: "program_name", scope: !286, file: !287, line: 33, type: !36, isLocal: false, isDefinition: true)
!286 = distinct !DICompileUnit(language: DW_LANG_C99, file: !287, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !288, globals: !324, splitDebugInlining: false, nameTableKind: None)
!287 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!288 = !{!91, !289, !34}
!289 = !DISubprogram(name: "fputs", scope: !41, file: !41, line: 626, type: !290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!290 = !DISubroutineType(types: !291)
!291 = !{!38, !36, !292}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !294)
!294 = !{!295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !293, file: !46, line: 51, baseType: !38, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !293, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !293, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !293, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !293, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !293, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !293, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !293, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !293, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !293, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !293, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !293, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !293, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !293, file: !46, line: 70, baseType: !292, size: 64, offset: 832)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !293, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !293, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !293, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !293, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !293, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !293, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !293, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !293, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !293, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !293, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !293, file: !46, line: 93, baseType: !292, size: 64, offset: 1344)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !293, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !293, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !293, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !293, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!324 = !{!284}
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !327, file: !328, line: 85, type: !434, isLocal: false, isDefinition: true)
!327 = distinct !DICompileUnit(language: DW_LANG_C99, file: !328, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !329, retainedTypes: !350, globals: !409, splitDebugInlining: false, nameTableKind: None)
!328 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!329 = !{!5, !330, !335}
!330 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !331)
!331 = !{!332, !333, !334}
!332 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!333 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!334 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!335 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !336, line: 46, baseType: !7, size: 32, elements: !337)
!336 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349}
!338 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!339 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!340 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!341 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!342 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!343 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!344 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!345 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!346 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!347 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!348 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!349 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!350 = !{!351, !354, !215, !367, !38, !71, !370, !93, !387, !391, !30, !397, !401, !34, !163, !405, !406}
!351 = !DISubprogram(name: "xmemdup", scope: !164, file: !164, line: 62, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!352 = !DISubroutineType(types: !353)
!353 = !{!91, !190, !95}
!354 = !DISubprogram(name: "quotearg_alloc_mem", scope: !6, file: !6, line: 342, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!355 = !DISubroutineType(types: !356)
!356 = !{!34, !36, !95, !186, !357}
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !328, line: 65, size: 448, elements: !360)
!360 = !{!361, !362, !363, !365, !366}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !359, file: !328, line: 68, baseType: !5, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !359, file: !328, line: 71, baseType: !38, size: 32, offset: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !359, file: !328, line: 75, baseType: !364, size: 256, offset: 64)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !177)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !359, file: !328, line: 78, baseType: !36, size: 64, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !359, file: !328, line: 81, baseType: !36, size: 64, offset: 384)
!367 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !6, file: !6, line: 408, type: !368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!368 = !DISubroutineType(types: !369)
!369 = !{!34, !38, !36, !36, !36, !95}
!370 = !DISubprogram(name: "rpl_mbrtowc", scope: !371, file: !371, line: 717, type: !372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!371 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!372 = !DISubroutineType(types: !373)
!373 = !{!95, !135, !36, !95, !374}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 13, size: 64, elements: !377)
!376 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !375, file: !376, line: 15, baseType: !38, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !375, file: !376, line: 20, baseType: !380, size: 32, offset: 32)
!380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !376, line: 16, size: 32, elements: !381)
!381 = !{!382, !383}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !380, file: !376, line: 18, baseType: !7, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !380, file: !376, line: 19, baseType: !384, size: 32)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 4)
!387 = !DISubprogram(name: "iswprint", scope: !388, file: !388, line: 120, type: !389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!388 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!389 = !DISubroutineType(types: !390)
!390 = !{!38, !7}
!391 = !DISubprogram(name: "mbsinit", scope: !392, file: !392, line: 292, type: !393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!392 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!393 = !DISubroutineType(types: !394)
!394 = !{!38, !395}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!397 = !DISubprogram(name: "locale_charset", scope: !398, file: !398, line: 35, type: !399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!398 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!399 = !DISubroutineType(types: !400)
!400 = !{!36}
!401 = !DISubprogram(name: "c_strcasecmp", scope: !402, file: !402, line: 42, type: !403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!402 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!403 = !DISubroutineType(types: !404)
!404 = !{!38, !36, !36}
!405 = !DISubprogram(name: "xalloc_die", scope: !164, file: !164, line: 51, type: !120, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !39)
!406 = !DISubprogram(name: "xrealloc", scope: !164, file: !164, line: 59, type: !407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!407 = !DISubroutineType(types: !408)
!408 = !{!91, !91, !95}
!409 = !{!325, !410, !416, !418, !420, !423, !430, !432}
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !327, file: !328, line: 101, type: !412, isLocal: false, isDefinition: true)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 320, elements: !414)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!414 = !{!415}
!415 = !DISubrange(count: 10)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !327, file: !328, line: 1052, type: !359, isLocal: false, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !327, file: !328, line: 116, type: !359, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "slot0", scope: !327, file: !328, line: 842, type: !422, isLocal: true, isDefinition: true)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2048, elements: !223)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(name: "slotvec", scope: !327, file: !328, line: 845, type: !425, isLocal: true, isDefinition: true)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !328, line: 834, size: 128, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !426, file: !328, line: 836, baseType: !93, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !426, file: !328, line: 837, baseType: !34, size: 64, offset: 64)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(name: "nslots", scope: !327, file: !328, line: 843, type: !38, isLocal: true, isDefinition: true)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(name: "slotvec0", scope: !327, file: !328, line: 844, type: !426, isLocal: true, isDefinition: true)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 704, elements: !436)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!436 = !{!437}
!437 = !DISubrange(count: 11)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !440, file: !441, line: 26, type: !443, isLocal: false, isDefinition: true)
!440 = distinct !DICompileUnit(language: DW_LANG_C99, file: !441, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !442, splitDebugInlining: false, nameTableKind: None)
!441 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!442 = !{!438}
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 376, elements: !444)
!444 = !{!445}
!445 = !DISubrange(count: 47)
!446 = distinct !DICompileUnit(language: DW_LANG_C99, file: !447, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !448, retainedTypes: !449, splitDebugInlining: false, nameTableKind: None)
!447 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!448 = !{!20}
!449 = !{!450, !454}
!450 = !DISubprogram(name: "posix_fadvise", scope: !451, file: !451, line: 288, type: !452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!451 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!452 = !DISubroutineType(types: !453)
!453 = !{!38, !38, !69, !69, !38}
!454 = !DISubprogram(name: "fileno", scope: !41, file: !41, line: 786, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!455 = !DISubroutineType(types: !456)
!456 = !{!38, !457}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !459)
!459 = !{!460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !458, file: !46, line: 51, baseType: !38, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !458, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !458, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !458, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !458, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !458, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !458, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !458, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !458, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !458, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !458, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !458, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !458, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !458, file: !46, line: 70, baseType: !457, size: 64, offset: 832)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !458, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !458, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !458, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !458, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !458, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !458, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !458, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !458, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !458, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !458, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !458, file: !46, line: 93, baseType: !457, size: 64, offset: 1344)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !458, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !458, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !458, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !458, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!489 = distinct !DICompileUnit(language: DW_LANG_C99, file: !490, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !491, retainedTypes: !495, splitDebugInlining: false, nameTableKind: None)
!490 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!491 = !{!492}
!492 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !490, line: 40, baseType: !7, size: 32, elements: !493)
!493 = !{!494}
!494 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!495 = !{!30, !496, !91}
!496 = !DISubprogram(name: "fputs_unlocked", scope: !41, file: !41, line: 662, type: !497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!497 = !DISubroutineType(types: !498)
!498 = !{!38, !36, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !500, file: !46, line: 51, baseType: !38, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !500, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !500, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !500, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !500, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !500, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !500, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !500, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !500, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !500, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !500, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !500, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !500, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !500, file: !46, line: 70, baseType: !499, size: 64, offset: 832)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !500, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !500, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !500, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !500, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !500, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !500, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !500, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !500, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !500, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !500, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !500, file: !46, line: 93, baseType: !499, size: 64, offset: 1344)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !500, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !500, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !500, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !500, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!531 = distinct !DICompileUnit(language: DW_LANG_C99, file: !532, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !533, retainedTypes: !546, splitDebugInlining: false, nameTableKind: None)
!532 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!533 = !{!534}
!534 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !535, file: !164, line: 186, baseType: !7, size: 32, elements: !544)
!535 = distinct !DISubprogram(name: "x2nrealloc", scope: !164, file: !164, line: 174, type: !536, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !539)
!536 = !DISubroutineType(types: !537)
!537 = !{!91, !91, !538, !93}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!539 = !{!540, !541, !542, !543}
!540 = !DILocalVariable(name: "p", arg: 1, scope: !535, file: !164, line: 174, type: !91)
!541 = !DILocalVariable(name: "pn", arg: 2, scope: !535, file: !164, line: 174, type: !538)
!542 = !DILocalVariable(name: "s", arg: 3, scope: !535, file: !164, line: 174, type: !93)
!543 = !DILocalVariable(name: "n", scope: !535, file: !164, line: 176, type: !93)
!544 = !{!545}
!545 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!546 = !{!93, !405, !163, !406, !34, !215, !91, !547, !550}
!547 = !DISubprogram(name: "xcalloc", scope: !164, file: !164, line: 57, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!548 = !DISubroutineType(types: !549)
!549 = !{!91, !95, !95}
!550 = !DISubprogram(name: "rpl_calloc", scope: !551, file: !551, line: 688, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!551 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!552 = distinct !DICompileUnit(language: DW_LANG_C99, file: !553, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !554, splitDebugInlining: false, nameTableKind: None)
!553 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!554 = !{!30, !149}
!555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !556, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !557, retainedTypes: !566, splitDebugInlining: false, nameTableKind: None)
!556 = !DIFile(filename: "lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!557 = !{!558}
!558 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !559, line: 25, baseType: !7, size: 32, elements: !560)
!559 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!560 = !{!561, !562, !563, !564, !565}
!561 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!562 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!563 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!564 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!565 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!566 = !{!567, !145, !149}
!567 = !DISubprogram(name: "xstrtoumax", scope: !559, file: !559, line: 48, type: !568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!568 = !DISubroutineType(types: !569)
!569 = !{!558, !36, !570, !38, !186, !36}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !573, retainedTypes: !574, splitDebugInlining: false, nameTableKind: None)
!572 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!573 = !{!558, !335}
!574 = !{!38, !71}
!575 = distinct !DICompileUnit(language: DW_LANG_C99, file: !576, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !577, splitDebugInlining: false, nameTableKind: None)
!576 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!577 = !{!91}
!578 = distinct !DICompileUnit(language: DW_LANG_C99, file: !579, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !580, splitDebugInlining: false, nameTableKind: None)
!579 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!580 = !{!581, !616, !617, !621}
!581 = !DISubprogram(name: "fileno", scope: !41, file: !41, line: 786, type: !582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!582 = !DISubroutineType(types: !583)
!583 = !{!38, !584}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !586)
!586 = !{!587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !585, file: !46, line: 51, baseType: !38, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !585, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !585, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !585, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !585, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !585, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !585, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !585, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !585, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !585, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !585, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !585, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !585, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !585, file: !46, line: 70, baseType: !584, size: 64, offset: 832)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !585, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !585, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !585, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !585, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !585, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !585, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !585, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !585, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !585, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !585, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !585, file: !46, line: 93, baseType: !584, size: 64, offset: 1344)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !585, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !585, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !585, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !585, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!616 = !DISubprogram(name: "fclose", scope: !41, file: !41, line: 213, type: !582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!617 = !DISubprogram(name: "lseek", scope: !618, file: !618, line: 334, type: !619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!618 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!619 = !DISubroutineType(types: !620)
!620 = !{!69, !38, !69, !38}
!621 = !DISubprogram(name: "rpl_fflush", scope: !160, file: !160, line: 718, type: !582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!622 = distinct !DICompileUnit(language: DW_LANG_C99, file: !623, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !624, splitDebugInlining: false, nameTableKind: None)
!623 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!624 = !{!91, !625, !660}
!625 = !DISubprogram(name: "fflush", scope: !41, file: !41, line: 218, type: !626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!626 = !DISubroutineType(types: !627)
!627 = !{!38, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !630)
!630 = !{!631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !629, file: !46, line: 51, baseType: !38, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !629, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !629, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !629, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !629, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !629, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !629, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !629, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !629, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !629, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !629, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !629, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !629, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !629, file: !46, line: 70, baseType: !628, size: 64, offset: 832)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !629, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !629, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !629, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !629, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !629, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !629, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !629, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !629, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !629, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !629, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !629, file: !46, line: 93, baseType: !628, size: 64, offset: 1344)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !629, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !629, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !629, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !629, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!660 = !DISubprogram(name: "rpl_fseeko", scope: !160, file: !160, line: 1034, type: !661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!661 = !DISubroutineType(types: !662)
!662 = !{!38, !628, !69, !38}
!663 = distinct !DICompileUnit(language: DW_LANG_C99, file: !664, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !665, splitDebugInlining: false, nameTableKind: None)
!664 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!665 = !{!91, !666, !617, !701}
!666 = !DISubprogram(name: "fileno", scope: !41, file: !41, line: 786, type: !667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!667 = !DISubroutineType(types: !668)
!668 = !{!38, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !671)
!671 = !{!672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !670, file: !46, line: 51, baseType: !38, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !670, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !670, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !670, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !670, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !670, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !670, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !670, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !670, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !670, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !670, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !670, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !670, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !670, file: !46, line: 70, baseType: !669, size: 64, offset: 832)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !670, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !670, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !670, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !670, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !670, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !670, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !670, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !670, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !670, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !670, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !670, file: !46, line: 93, baseType: !669, size: 64, offset: 1344)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !670, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !670, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !670, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !670, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!701 = !DISubprogram(name: "fseeko", scope: !41, file: !41, line: 707, type: !702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!702 = !DISubroutineType(types: !703)
!703 = !{!38, !669, !69, !38}
!704 = distinct !DICompileUnit(language: DW_LANG_C99, file: !705, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !706, splitDebugInlining: false, nameTableKind: None)
!705 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!706 = !{!707, !93, !719}
!707 = !DISubprogram(name: "mbrtowc", scope: !392, file: !392, line: 296, type: !708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!708 = !DISubroutineType(types: !709)
!709 = !{!95, !135, !36, !95, !710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 13, size: 64, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !711, file: !376, line: 15, baseType: !38, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !711, file: !376, line: 20, baseType: !715, size: 32, offset: 32)
!715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !376, line: 16, size: 32, elements: !716)
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !715, file: !376, line: 18, baseType: !7, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !715, file: !376, line: 19, baseType: !384, size: 32)
!719 = !DISubprogram(name: "hard_locale", scope: !720, file: !720, line: 26, type: !721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!720 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!721 = !DISubroutineType(types: !722)
!722 = !{!182, !38}
!723 = distinct !DICompileUnit(language: DW_LANG_C99, file: !724, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !725, splitDebugInlining: false, nameTableKind: None)
!724 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!725 = !{!726}
!726 = !DISubprogram(name: "rpl_fclose", scope: !160, file: !160, line: 672, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!727 = !DISubroutineType(types: !728)
!728 = !{!38, !729}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !731)
!731 = !{!732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !730, file: !46, line: 51, baseType: !38, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !730, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !730, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !730, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !730, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !730, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !730, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !730, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !730, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !730, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !730, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !730, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !730, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !730, file: !46, line: 70, baseType: !729, size: 64, offset: 832)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !730, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !730, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !730, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !730, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !730, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !730, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !730, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !730, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !730, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !730, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !730, file: !46, line: 93, baseType: !729, size: 64, offset: 1344)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !730, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !730, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !730, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !730, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!761 = distinct !DICompileUnit(language: DW_LANG_C99, file: !762, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !763, splitDebugInlining: false, nameTableKind: None)
!762 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!763 = !{!764}
!764 = !DISubprogram(name: "setlocale_null_r", scope: !765, file: !765, line: 64, type: !766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!765 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!766 = !DISubroutineType(types: !767)
!767 = !{!38, !38, !34, !95}
!768 = distinct !DICompileUnit(language: DW_LANG_C99, file: !769, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !770, retainedTypes: !1157, splitDebugInlining: false, nameTableKind: None)
!769 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!770 = !{!771}
!771 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !772, line: 41, baseType: !7, size: 32, elements: !773)
!772 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!773 = !{!774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156}
!774 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!775 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!776 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!777 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!778 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!779 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!780 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!781 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!782 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!783 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!784 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!785 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!786 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!787 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!788 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!789 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!790 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!791 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!792 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!793 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!794 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!795 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!796 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!797 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!798 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!799 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!800 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!801 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!802 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!803 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!804 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!805 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!806 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!807 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!808 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!809 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!810 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!811 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!812 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!813 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!814 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!815 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!816 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!817 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!818 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!819 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!820 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!821 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!822 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!823 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!882 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!885 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!886 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!887 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!888 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!889 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!890 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!891 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!892 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!893 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!894 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!895 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!896 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!969 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1042 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1043 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1044 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1045 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1046 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1047 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1048 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1049 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1050 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1051 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1052 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1053 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1054 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1055 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1056 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1058 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1059 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1060 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1061 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1062 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1063 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1089 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1090 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1091 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1092 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1093 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1098 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1099 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1100 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1101 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1107 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1108 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1109 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1110 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1111 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1112 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1113 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1114 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1115 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1116 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1117 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1118 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1119 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1120 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1121 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1122 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1123 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1124 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1125 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1126 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1127 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1128 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1129 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1130 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1131 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1132 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1133 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1134 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1135 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1136 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1137 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1138 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1139 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1140 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1141 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1142 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1143 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1144 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1145 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1146 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1147 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1148 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1149 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1150 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1151 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1152 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1153 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1154 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1155 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1156 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1157 = !{!1158, !91}
!1158 = !DISubprogram(name: "nl_langinfo", scope: !772, file: !772, line: 661, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!34, !38}
!1161 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1162, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !1163, splitDebugInlining: false, nameTableKind: None)
!1162 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1163 = !{!91, !105}
!1164 = !{!"clang version 10.0.0 "}
!1165 = !{i32 7, !"Dwarf Version", i32 4}
!1166 = !{i32 2, !"Debug Info Version", i32 3}
!1167 = !{i32 1, !"wchar_size", i32 4}
!1168 = !{i32 7, !"PIC Level", i32 2}
!1169 = !{i32 7, !"PIE Level", i32 2}
!1170 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 95, type: !1171, scopeLine: 96, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1173)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !38}
!1173 = !{!1174}
!1174 = !DILocalVariable(name: "status", arg: 1, scope: !1170, file: !3, line: 95, type: !38)
!1175 = !DILocalVariable(name: "infomap", scope: !1176, file: !1177, line: 636, type: !1189)
!1176 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1177, file: !1177, line: 634, type: !103, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1178)
!1177 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1178 = !{!1179, !1175, !1180, !1181, !1188}
!1179 = !DILocalVariable(name: "program", arg: 1, scope: !1176, file: !1177, line: 634, type: !36)
!1180 = !DILocalVariable(name: "node", scope: !1176, file: !1177, line: 646, type: !36)
!1181 = !DILocalVariable(name: "map_prog", scope: !1176, file: !1177, line: 647, type: !1182)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1184)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1176, file: !1177, line: 636, size: 128, elements: !1185)
!1185 = !{!1186, !1187}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1184, file: !1177, line: 636, baseType: !36, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1184, file: !1177, line: 636, baseType: !36, size: 64, offset: 64)
!1188 = !DILocalVariable(name: "lc_messages", scope: !1176, file: !1177, line: 659, type: !36)
!1189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1183, size: 896, elements: !1190)
!1190 = !{!1191}
!1191 = !DISubrange(count: 7)
!1192 = !DILocation(line: 636, column: 67, scope: !1176, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 172, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 100, column: 5)
!1195 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 97, column: 7)
!1196 = !DILocation(line: 0, scope: !1170)
!1197 = !DILocation(line: 97, column: 14, scope: !1195)
!1198 = !DILocation(line: 97, column: 7, scope: !1170)
!1199 = !DILocation(line: 98, column: 5, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 98, column: 5)
!1201 = !{!1202, !1202, i64 0}
!1202 = !{!"any pointer", !1203, i64 0}
!1203 = !{!"omnipotent char", !1204, i64 0}
!1204 = !{!"Simple C/C++ TBAA"}
!1205 = !DILocation(line: 101, column: 7, scope: !1194)
!1206 = !DILocation(line: 110, column: 7, scope: !1194)
!1207 = !DILocation(line: 583, column: 3, scope: !1208, inlinedAt: !1209)
!1208 = distinct !DISubprogram(name: "emit_stdin_note", scope: !1177, file: !1177, line: 581, type: !120, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!1209 = distinct !DILocation(line: 115, column: 7, scope: !1194)
!1210 = !DILocation(line: 590, column: 3, scope: !1211, inlinedAt: !1212)
!1211 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !1177, file: !1177, line: 588, type: !120, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!1212 = distinct !DILocation(line: 116, column: 7, scope: !1194)
!1213 = !DILocation(line: 140, column: 7, scope: !1194)
!1214 = !DILocation(line: 154, column: 7, scope: !1194)
!1215 = !DILocation(line: 155, column: 7, scope: !1194)
!1216 = !DILocation(line: 164, column: 7, scope: !1194)
!1217 = !DILocation(line: 0, scope: !1176, inlinedAt: !1193)
!1218 = !DILocation(line: 636, column: 3, scope: !1176, inlinedAt: !1193)
!1219 = !DILocation(line: 647, column: 36, scope: !1176, inlinedAt: !1193)
!1220 = !DILocation(line: 649, column: 3, scope: !1176, inlinedAt: !1193)
!1221 = !DILocation(line: 649, column: 33, scope: !1176, inlinedAt: !1193)
!1222 = !DILocation(line: 650, column: 13, scope: !1176, inlinedAt: !1193)
!1223 = !DILocation(line: 649, column: 20, scope: !1176, inlinedAt: !1193)
!1224 = !{!1225, !1202, i64 0}
!1225 = !{!"infomap", !1202, i64 0, !1202, i64 8}
!1226 = !DILocation(line: 649, column: 10, scope: !1176, inlinedAt: !1193)
!1227 = !DILocation(line: 649, column: 28, scope: !1176, inlinedAt: !1193)
!1228 = distinct !{!1228, !1220, !1222}
!1229 = !DILocation(line: 652, column: 17, scope: !1230, inlinedAt: !1193)
!1230 = distinct !DILexicalBlock(scope: !1176, file: !1177, line: 652, column: 7)
!1231 = !{!1225, !1202, i64 8}
!1232 = !DILocation(line: 652, column: 7, scope: !1230, inlinedAt: !1193)
!1233 = !DILocation(line: 652, column: 7, scope: !1176, inlinedAt: !1193)
!1234 = !DILocation(line: 655, column: 3, scope: !1176, inlinedAt: !1193)
!1235 = !DILocation(line: 659, column: 29, scope: !1176, inlinedAt: !1193)
!1236 = !DILocation(line: 660, column: 7, scope: !1237, inlinedAt: !1193)
!1237 = distinct !DILexicalBlock(scope: !1176, file: !1177, line: 660, column: 7)
!1238 = !DILocation(line: 660, column: 19, scope: !1237, inlinedAt: !1193)
!1239 = !DILocation(line: 660, column: 22, scope: !1237, inlinedAt: !1193)
!1240 = !DILocation(line: 660, column: 7, scope: !1176, inlinedAt: !1193)
!1241 = !DILocation(line: 666, column: 7, scope: !1242, inlinedAt: !1193)
!1242 = distinct !DILexicalBlock(scope: !1237, file: !1177, line: 661, column: 5)
!1243 = !DILocation(line: 668, column: 5, scope: !1242, inlinedAt: !1193)
!1244 = !DILocation(line: 669, column: 3, scope: !1176, inlinedAt: !1193)
!1245 = !DILocation(line: 671, column: 3, scope: !1176, inlinedAt: !1193)
!1246 = !DILocation(line: 673, column: 1, scope: !1176, inlinedAt: !1193)
!1247 = !DILocation(line: 175, column: 3, scope: !1170)
!1248 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 1087, type: !1249, scopeLine: 1088, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1251)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!38, !38, !570}
!1251 = !{!1252, !1253, !1254, !1255, !1259, !1260, !1261, !1262}
!1252 = !DILocalVariable(name: "argc", arg: 1, scope: !1248, file: !3, line: 1087, type: !38)
!1253 = !DILocalVariable(name: "argv", arg: 2, scope: !1248, file: !3, line: 1087, type: !570)
!1254 = !DILocalVariable(name: "opt", scope: !1248, file: !3, line: 1089, type: !38)
!1255 = !DILocalVariable(name: "input_fh", scope: !1248, file: !3, line: 1090, type: !1256)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1258, line: 7, baseType: !45)
!1258 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1259 = !DILocalVariable(name: "infile", scope: !1248, file: !3, line: 1091, type: !36)
!1260 = !DILocalVariable(name: "decode", scope: !1248, file: !3, line: 1094, type: !182)
!1261 = !DILocalVariable(name: "ignore_garbage", scope: !1248, file: !3, line: 1096, type: !182)
!1262 = !DILocalVariable(name: "wrap_column", scope: !1248, file: !3, line: 1098, type: !1263)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1264, line: 102, baseType: !1265)
!1264 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !68, line: 73, baseType: !95)
!1266 = !DILocalVariable(name: "ctx", scope: !1267, file: !3, line: 1020, type: !172)
!1267 = distinct !DISubprogram(name: "do_decode", scope: !3, file: !3, line: 1016, type: !1268, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1270)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !1256, !1256, !182}
!1270 = !{!1271, !1272, !1273, !1274, !1275, !1276, !1266, !1277, !1279, !1280, !1281, !1286, !1292, !1293}
!1271 = !DILocalVariable(name: "in", arg: 1, scope: !1267, file: !3, line: 1016, type: !1256)
!1272 = !DILocalVariable(name: "out", arg: 2, scope: !1267, file: !3, line: 1016, type: !1256)
!1273 = !DILocalVariable(name: "ignore_garbage", arg: 3, scope: !1267, file: !3, line: 1016, type: !182)
!1274 = !DILocalVariable(name: "inbuf", scope: !1267, file: !3, line: 1018, type: !34)
!1275 = !DILocalVariable(name: "outbuf", scope: !1267, file: !3, line: 1018, type: !34)
!1276 = !DILocalVariable(name: "sum", scope: !1267, file: !3, line: 1019, type: !93)
!1277 = !DILocalVariable(name: "ok", scope: !1278, file: !3, line: 1032, type: !182)
!1278 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 1031, column: 5)
!1279 = !DILocalVariable(name: "n", scope: !1278, file: !3, line: 1033, type: !93)
!1280 = !DILocalVariable(name: "k", scope: !1278, file: !3, line: 1034, type: !7)
!1281 = !DILocalVariable(name: "i", scope: !1282, file: !3, line: 1043, type: !93)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 1043, column: 15)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 1042, column: 13)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 1041, column: 15)
!1285 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 1038, column: 9)
!1286 = !DILocalVariable(name: "__ptr", scope: !1287, file: !3, line: 1070, type: !36)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 1070, column: 15)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 1070, column: 15)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 1064, column: 9)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 1063, column: 7)
!1291 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 1063, column: 7)
!1292 = !DILocalVariable(name: "__stream", scope: !1287, file: !3, line: 1070, type: !1256)
!1293 = !DILocalVariable(name: "__cnt", scope: !1287, file: !3, line: 1070, type: !93)
!1294 = !DILocation(line: 1020, column: 30, scope: !1267, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 1249, column: 5, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 1248, column: 7)
!1297 = !DILocation(line: 0, scope: !1248)
!1298 = !DILocation(line: 1105, column: 21, scope: !1248)
!1299 = !DILocation(line: 1105, column: 3, scope: !1248)
!1300 = !DILocation(line: 1106, column: 3, scope: !1248)
!1301 = !DILocation(line: 1107, column: 3, scope: !1248)
!1302 = !DILocation(line: 1108, column: 3, scope: !1248)
!1303 = !DILocation(line: 1110, column: 3, scope: !1248)
!1304 = !DILocation(line: 1112, column: 3, scope: !1248)
!1305 = !DILocation(line: 1098, column: 13, scope: !1248)
!1306 = !DILocation(line: 1112, column: 17, scope: !1248)
!1307 = distinct !{!1307, !1304, !1308}
!1308 = !DILocation(line: 1148, column: 7, scope: !1248)
!1309 = !DILocation(line: 1120, column: 35, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 1114, column: 7)
!1311 = !DILocation(line: 1121, column: 35, scope: !1310)
!1312 = !DILocation(line: 1120, column: 23, scope: !1310)
!1313 = !DILocation(line: 1122, column: 9, scope: !1310)
!1314 = !DILocation(line: 1141, column: 7, scope: !1310)
!1315 = !DILocation(line: 1143, column: 7, scope: !1310)
!1316 = !DILocation(line: 1146, column: 9, scope: !1310)
!1317 = !DILocation(line: 1223, column: 14, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 1223, column: 7)
!1319 = !{!1320, !1320, i64 0}
!1320 = !{!"int", !1203, i64 0}
!1321 = !DILocation(line: 1223, column: 12, scope: !1318)
!1322 = !DILocation(line: 1223, column: 21, scope: !1318)
!1323 = !DILocation(line: 1223, column: 7, scope: !1248)
!1324 = !DILocation(line: 1225, column: 20, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 1224, column: 5)
!1326 = !DILocation(line: 1225, column: 55, scope: !1325)
!1327 = !DILocation(line: 1225, column: 61, scope: !1325)
!1328 = !DILocation(line: 1225, column: 50, scope: !1325)
!1329 = !DILocation(line: 1225, column: 43, scope: !1325)
!1330 = !DILocation(line: 1225, column: 7, scope: !1325)
!1331 = !DILocation(line: 1226, column: 7, scope: !1325)
!1332 = !DILocation(line: 1229, column: 14, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 1229, column: 7)
!1334 = !DILocation(line: 1229, column: 7, scope: !1248)
!1335 = !DILocation(line: 1230, column: 14, scope: !1333)
!1336 = !DILocation(line: 1230, column: 5, scope: !1333)
!1337 = !DILocation(line: 0, scope: !1333)
!1338 = !DILocation(line: 1234, column: 7, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 1234, column: 7)
!1340 = !DILocation(line: 1234, column: 7, scope: !1248)
!1341 = !DILocation(line: 1237, column: 18, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 1235, column: 5)
!1343 = !DILocation(line: 1238, column: 5, scope: !1342)
!1344 = !DILocation(line: 1241, column: 18, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 1240, column: 5)
!1346 = !DILocation(line: 1242, column: 20, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 1242, column: 11)
!1348 = !DILocation(line: 1242, column: 11, scope: !1345)
!1349 = !DILocation(line: 1243, column: 9, scope: !1347)
!1350 = !DILocation(line: 0, scope: !1339)
!1351 = !DILocation(line: 1246, column: 3, scope: !1248)
!1352 = !DILocation(line: 1248, column: 7, scope: !1296)
!1353 = !DILocation(line: 0, scope: !1296)
!1354 = !DILocation(line: 1248, column: 7, scope: !1248)
!1355 = !DILocation(line: 1249, column: 34, scope: !1296)
!1356 = !DILocation(line: 0, scope: !1267, inlinedAt: !1295)
!1357 = !DILocation(line: 1020, column: 3, scope: !1267, inlinedAt: !1295)
!1358 = !DILocation(line: 1022, column: 11, scope: !1267, inlinedAt: !1295)
!1359 = !DILocation(line: 1023, column: 12, scope: !1267, inlinedAt: !1295)
!1360 = !DILocation(line: 1028, column: 3, scope: !1267, inlinedAt: !1295)
!1361 = !DILocation(line: 0, scope: !1278, inlinedAt: !1295)
!1362 = !DILocation(line: 0, scope: !1363, inlinedAt: !1369)
!1363 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1364, file: !1364, line: 135, type: !1365, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1367)
!1364 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!38, !1256}
!1367 = !{!1368}
!1368 = !DILocalVariable(name: "__stream", arg: 1, scope: !1363, file: !1364, line: 135, type: !1256)
!1369 = distinct !DILocation(line: 1054, column: 15, scope: !1370, inlinedAt: !1295)
!1370 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 1054, column: 15)
!1371 = !DILocation(line: 0, scope: !1372, inlinedAt: !1295)
!1372 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 1065, column: 15)
!1373 = !DILocation(line: 1030, column: 3, scope: !1267, inlinedAt: !1295)
!1374 = !DILocation(line: 1033, column: 7, scope: !1278, inlinedAt: !1295)
!1375 = !DILocation(line: 1037, column: 7, scope: !1278, inlinedAt: !1295)
!1376 = !DILocation(line: 1039, column: 15, scope: !1285, inlinedAt: !1295)
!1377 = !DILocation(line: 1039, column: 13, scope: !1285, inlinedAt: !1295)
!1378 = !{!1379, !1379, i64 0}
!1379 = !{!"long", !1203, i64 0}
!1380 = !DILocation(line: 1041, column: 15, scope: !1285, inlinedAt: !1295)
!1381 = !DILocation(line: 0, scope: !1282, inlinedAt: !1295)
!1382 = !DILocation(line: 1043, column: 40, scope: !1383, inlinedAt: !1295)
!1383 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 1043, column: 15)
!1384 = !DILocation(line: 1043, column: 15, scope: !1282, inlinedAt: !1295)
!1385 = !DILocation(line: 1045, column: 41, scope: !1386, inlinedAt: !1295)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1045, column: 23)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 1044, column: 17)
!1388 = !DILocation(line: 1045, column: 31, scope: !1386, inlinedAt: !1295)
!1389 = !{!1203, !1203, i64 0}
!1390 = !DILocation(line: 1045, column: 23, scope: !1386, inlinedAt: !1295)
!1391 = !DILocation(line: 1045, column: 65, scope: !1386, inlinedAt: !1295)
!1392 = !DILocation(line: 1045, column: 47, scope: !1386, inlinedAt: !1295)
!1393 = !DILocation(line: 1046, column: 22, scope: !1386, inlinedAt: !1295)
!1394 = !DILocation(line: 1046, column: 21, scope: !1386, inlinedAt: !1295)
!1395 = !DILocation(line: 1048, column: 42, scope: !1386, inlinedAt: !1295)
!1396 = !DILocation(line: 1048, column: 63, scope: !1386, inlinedAt: !1295)
!1397 = !DILocation(line: 1048, column: 68, scope: !1386, inlinedAt: !1295)
!1398 = !DILocation(line: 1048, column: 72, scope: !1386, inlinedAt: !1295)
!1399 = !DILocalVariable(name: "__dest", arg: 1, scope: !1400, file: !1401, line: 38, type: !91)
!1400 = distinct !DISubprogram(name: "memmove", scope: !1401, file: !1401, line: 38, type: !1402, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1404)
!1401 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!91, !91, !190, !93}
!1404 = !{!1399, !1405, !1406}
!1405 = !DILocalVariable(name: "__src", arg: 2, scope: !1400, file: !1401, line: 38, type: !190)
!1406 = !DILocalVariable(name: "__len", arg: 3, scope: !1400, file: !1401, line: 38, type: !93)
!1407 = !DILocation(line: 0, scope: !1400, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 1048, column: 21, scope: !1386, inlinedAt: !1295)
!1409 = !DILocation(line: 40, column: 10, scope: !1400, inlinedAt: !1408)
!1410 = !DILocation(line: 1043, column: 34, scope: !1383, inlinedAt: !1295)
!1411 = distinct !{!1411, !1384, !1412}
!1412 = !DILocation(line: 1049, column: 17, scope: !1282, inlinedAt: !1295)
!1413 = !DILocation(line: 1052, column: 18, scope: !1285, inlinedAt: !1295)
!1414 = !DILocation(line: 1052, column: 15, scope: !1285, inlinedAt: !1295)
!1415 = !DILocation(line: 137, column: 10, scope: !1363, inlinedAt: !1369)
!1416 = !{!1417, !1320, i64 0}
!1417 = !{!"_IO_FILE", !1320, i64 0, !1202, i64 8, !1202, i64 16, !1202, i64 24, !1202, i64 32, !1202, i64 40, !1202, i64 48, !1202, i64 56, !1202, i64 64, !1202, i64 72, !1202, i64 80, !1202, i64 88, !1202, i64 96, !1202, i64 104, !1320, i64 112, !1320, i64 116, !1379, i64 120, !1418, i64 128, !1203, i64 130, !1203, i64 131, !1202, i64 136, !1379, i64 144, !1202, i64 152, !1202, i64 160, !1202, i64 168, !1202, i64 176, !1379, i64 184, !1320, i64 192, !1203, i64 196}
!1418 = !{!"short", !1203, i64 0}
!1419 = !DILocation(line: 1054, column: 15, scope: !1370, inlinedAt: !1295)
!1420 = !DILocation(line: 1054, column: 15, scope: !1285, inlinedAt: !1295)
!1421 = !DILocation(line: 1055, column: 13, scope: !1370, inlinedAt: !1295)
!1422 = !DILocation(line: 1057, column: 18, scope: !1278, inlinedAt: !1295)
!1423 = !DILocation(line: 130, column: 10, scope: !1424, inlinedAt: !1427)
!1424 = distinct !DISubprogram(name: "feof_unlocked", scope: !1364, file: !1364, line: 128, type: !1365, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1425)
!1425 = !{!1426}
!1426 = !DILocalVariable(name: "__stream", arg: 1, scope: !1424, file: !1364, line: 128, type: !1256)
!1427 = distinct !DILocation(line: 1057, column: 52, scope: !1278, inlinedAt: !1295)
!1428 = !DILocation(line: 1057, column: 51, scope: !1278, inlinedAt: !1295)
!1429 = !DILocation(line: 1057, column: 48, scope: !1278, inlinedAt: !1295)
!1430 = !DILocation(line: 0, scope: !1424, inlinedAt: !1427)
!1431 = distinct !{!1431, !1375, !1432}
!1432 = !DILocation(line: 1057, column: 61, scope: !1278, inlinedAt: !1295)
!1433 = !DILocation(line: 0, scope: !1424, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 1063, column: 29, scope: !1290, inlinedAt: !1295)
!1435 = !DILocation(line: 130, column: 10, scope: !1424, inlinedAt: !1434)
!1436 = !DILocation(line: 1063, column: 28, scope: !1290, inlinedAt: !1295)
!1437 = !DILocation(line: 1063, column: 25, scope: !1290, inlinedAt: !1295)
!1438 = !DILocation(line: 1063, column: 21, scope: !1290, inlinedAt: !1295)
!1439 = !DILocation(line: 1063, column: 7, scope: !1291, inlinedAt: !1295)
!1440 = distinct !{!1440, !1439, !1441}
!1441 = !DILocation(line: 1075, column: 9, scope: !1291, inlinedAt: !1295)
!1442 = !DILocation(line: 1065, column: 29, scope: !1372, inlinedAt: !1295)
!1443 = !DILocation(line: 1065, column: 22, scope: !1372, inlinedAt: !1295)
!1444 = !DILocation(line: 1067, column: 13, scope: !1289, inlinedAt: !1295)
!1445 = !DILocation(line: 1068, column: 49, scope: !1289, inlinedAt: !1295)
!1446 = !DILocation(line: 1068, column: 47, scope: !1289, inlinedAt: !1295)
!1447 = !DILocation(line: 1068, column: 16, scope: !1289, inlinedAt: !1295)
!1448 = !DILocation(line: 1070, column: 15, scope: !1288, inlinedAt: !1295)
!1449 = !DILocation(line: 1070, column: 44, scope: !1288, inlinedAt: !1295)
!1450 = !DILocation(line: 1070, column: 42, scope: !1288, inlinedAt: !1295)
!1451 = !DILocation(line: 1070, column: 15, scope: !1289, inlinedAt: !1295)
!1452 = !DILocation(line: 1071, column: 13, scope: !1288, inlinedAt: !1295)
!1453 = !DILocation(line: 1063, column: 41, scope: !1290, inlinedAt: !1295)
!1454 = !DILocation(line: 1073, column: 15, scope: !1289, inlinedAt: !1295)
!1455 = !DILocation(line: 1074, column: 13, scope: !1456, inlinedAt: !1295)
!1456 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 1073, column: 15)
!1457 = !DILocation(line: 1076, column: 5, scope: !1267, inlinedAt: !1295)
!1458 = !DILocation(line: 0, scope: !1424, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 1077, column: 11, scope: !1267, inlinedAt: !1295)
!1460 = !DILocation(line: 1076, column: 5, scope: !1278, inlinedAt: !1295)
!1461 = distinct !{!1461, !1373, !1462}
!1462 = !DILocation(line: 1077, column: 20, scope: !1267, inlinedAt: !1295)
!1463 = !DILocation(line: 1084, column: 1, scope: !1267, inlinedAt: !1295)
!1464 = !DILocation(line: 1249, column: 5, scope: !1296)
!1465 = !DILocalVariable(name: "in", arg: 1, scope: !1466, file: !3, line: 971, type: !1256)
!1466 = distinct !DISubprogram(name: "do_encode", scope: !3, file: !3, line: 971, type: !1467, scopeLine: 972, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1469)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{null, !1256, !1256, !1263}
!1469 = !{!1465, !1470, !1471, !1472, !1473, !1474, !1475, !1476}
!1470 = !DILocalVariable(name: "out", arg: 2, scope: !1466, file: !3, line: 971, type: !1256)
!1471 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !1466, file: !3, line: 971, type: !1263)
!1472 = !DILocalVariable(name: "current_column", scope: !1466, file: !3, line: 973, type: !93)
!1473 = !DILocalVariable(name: "inbuf", scope: !1466, file: !3, line: 974, type: !34)
!1474 = !DILocalVariable(name: "outbuf", scope: !1466, file: !3, line: 974, type: !34)
!1475 = !DILocalVariable(name: "sum", scope: !1466, file: !3, line: 975, type: !93)
!1476 = !DILocalVariable(name: "n", scope: !1477, file: !3, line: 982, type: !93)
!1477 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 981, column: 5)
!1478 = !DILocation(line: 0, scope: !1466, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 1251, column: 5, scope: !1296)
!1480 = !DILocation(line: 977, column: 11, scope: !1466, inlinedAt: !1479)
!1481 = !DILocation(line: 978, column: 12, scope: !1466, inlinedAt: !1479)
!1482 = !DILocation(line: 0, scope: !1424, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 990, column: 15, scope: !1477, inlinedAt: !1479)
!1484 = !DILocation(line: 0, scope: !1485, inlinedAt: !1514)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 941, column: 7)
!1486 = distinct !DISubprogram(name: "wrap_write", scope: !3, file: !3, line: 936, type: !1487, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1489)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{null, !36, !93, !1263, !538, !1256}
!1489 = !{!1490, !1491, !1492, !1493, !1494, !1495, !1496, !1500, !1501, !1502, !1506, !1507, !1512, !1513}
!1490 = !DILocalVariable(name: "buffer", arg: 1, scope: !1486, file: !3, line: 936, type: !36)
!1491 = !DILocalVariable(name: "len", arg: 2, scope: !1486, file: !3, line: 936, type: !93)
!1492 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !1486, file: !3, line: 937, type: !1263)
!1493 = !DILocalVariable(name: "current_column", arg: 4, scope: !1486, file: !3, line: 937, type: !538)
!1494 = !DILocalVariable(name: "out", arg: 5, scope: !1486, file: !3, line: 937, type: !1256)
!1495 = !DILocalVariable(name: "written", scope: !1486, file: !3, line: 939, type: !93)
!1496 = !DILocalVariable(name: "__ptr", scope: !1497, file: !3, line: 944, type: !36)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 944, column: 11)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 944, column: 11)
!1499 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 942, column: 5)
!1500 = !DILocalVariable(name: "__stream", scope: !1497, file: !3, line: 944, type: !1256)
!1501 = !DILocalVariable(name: "__cnt", scope: !1497, file: !3, line: 944, type: !93)
!1502 = !DILocalVariable(name: "cols_remaining", scope: !1503, file: !3, line: 950, type: !1263)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 949, column: 7)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 948, column: 5)
!1505 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 948, column: 5)
!1506 = !DILocalVariable(name: "to_write", scope: !1503, file: !3, line: 951, type: !93)
!1507 = !DILocalVariable(name: "__ptr", scope: !1508, file: !3, line: 962, type: !36)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 962, column: 17)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 962, column: 17)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 961, column: 11)
!1511 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 954, column: 13)
!1512 = !DILocalVariable(name: "__stream", scope: !1508, file: !3, line: 962, type: !1256)
!1513 = !DILocalVariable(name: "__cnt", scope: !1508, file: !3, line: 962, type: !93)
!1514 = distinct !DILocation(line: 998, column: 11, scope: !1515, inlinedAt: !1479)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 993, column: 9)
!1516 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 992, column: 11)
!1517 = !DILocation(line: 0, scope: !1518, inlinedAt: !1524)
!1518 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1364, file: !1364, line: 91, type: !1519, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1521)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!38, !38, !1256}
!1521 = !{!1522, !1523}
!1522 = !DILocalVariable(name: "__c", arg: 1, scope: !1518, file: !1364, line: 91, type: !38)
!1523 = !DILocalVariable(name: "__stream", arg: 2, scope: !1518, file: !1364, line: 91, type: !1256)
!1524 = distinct !DILocation(line: 956, column: 17, scope: !1525, inlinedAt: !1514)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 956, column: 17)
!1526 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 955, column: 11)
!1527 = !DILocation(line: 980, column: 3, scope: !1466, inlinedAt: !1479)
!1528 = !DILocation(line: 973, column: 10, scope: !1466, inlinedAt: !1479)
!1529 = !DILocation(line: 985, column: 7, scope: !1477, inlinedAt: !1479)
!1530 = !DILocation(line: 0, scope: !1477, inlinedAt: !1479)
!1531 = !DILocation(line: 987, column: 15, scope: !1532, inlinedAt: !1479)
!1532 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 986, column: 9)
!1533 = !DILocation(line: 988, column: 15, scope: !1532, inlinedAt: !1479)
!1534 = !DILocation(line: 130, column: 10, scope: !1424, inlinedAt: !1483)
!1535 = !DILocation(line: 990, column: 15, scope: !1477, inlinedAt: !1479)
!1536 = !DILocation(line: 990, column: 25, scope: !1477, inlinedAt: !1479)
!1537 = !DILocation(line: 0, scope: !1363, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 990, column: 29, scope: !1477, inlinedAt: !1479)
!1539 = !DILocation(line: 137, column: 10, scope: !1363, inlinedAt: !1538)
!1540 = !DILocation(line: 990, column: 29, scope: !1477, inlinedAt: !1479)
!1541 = !DILocation(line: 990, column: 48, scope: !1477, inlinedAt: !1479)
!1542 = !DILocation(line: 990, column: 41, scope: !1477, inlinedAt: !1479)
!1543 = distinct !{!1543, !1529, !1544}
!1544 = !DILocation(line: 990, column: 63, scope: !1477, inlinedAt: !1479)
!1545 = !DILocation(line: 992, column: 15, scope: !1516, inlinedAt: !1479)
!1546 = !DILocation(line: 992, column: 11, scope: !1477, inlinedAt: !1479)
!1547 = !DILocation(line: 996, column: 44, scope: !1515, inlinedAt: !1479)
!1548 = !DILocation(line: 996, column: 11, scope: !1515, inlinedAt: !1479)
!1549 = !DILocation(line: 0, scope: !1486, inlinedAt: !1514)
!1550 = !DILocation(line: 941, column: 7, scope: !1486, inlinedAt: !1514)
!1551 = !DILocation(line: 948, column: 31, scope: !1504, inlinedAt: !1514)
!1552 = !DILocation(line: 948, column: 5, scope: !1505, inlinedAt: !1514)
!1553 = !DILocation(line: 944, column: 11, scope: !1498, inlinedAt: !1514)
!1554 = !DILocation(line: 944, column: 43, scope: !1498, inlinedAt: !1514)
!1555 = !DILocation(line: 944, column: 11, scope: !1499, inlinedAt: !1514)
!1556 = !DILocation(line: 945, column: 9, scope: !1498, inlinedAt: !1514)
!1557 = !DILocation(line: 950, column: 48, scope: !1503, inlinedAt: !1514)
!1558 = !DILocation(line: 0, scope: !1503, inlinedAt: !1514)
!1559 = !DILocation(line: 952, column: 20, scope: !1503, inlinedAt: !1514)
!1560 = !DILocation(line: 954, column: 22, scope: !1511, inlinedAt: !1514)
!1561 = !DILocation(line: 954, column: 13, scope: !1503, inlinedAt: !1514)
!1562 = !DILocation(line: 93, column: 10, scope: !1518, inlinedAt: !1524)
!1563 = !{!1417, !1202, i64 40}
!1564 = !{!1417, !1202, i64 48}
!1565 = !{!"branch_weights", i32 2000, i32 1}
!1566 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1567 = !DILocation(line: 956, column: 17, scope: !1526, inlinedAt: !1514)
!1568 = !DILocation(line: 956, column: 35, scope: !1525, inlinedAt: !1514)
!1569 = !DILocation(line: 957, column: 15, scope: !1525, inlinedAt: !1514)
!1570 = !DILocation(line: 0, scope: !1509, inlinedAt: !1514)
!1571 = !DILocation(line: 962, column: 17, scope: !1509, inlinedAt: !1514)
!1572 = !DILocation(line: 962, column: 64, scope: !1509, inlinedAt: !1514)
!1573 = !DILocation(line: 962, column: 17, scope: !1510, inlinedAt: !1514)
!1574 = !DILocation(line: 963, column: 15, scope: !1509, inlinedAt: !1514)
!1575 = !DILocation(line: 964, column: 29, scope: !1510, inlinedAt: !1514)
!1576 = !DILocation(line: 965, column: 21, scope: !1510, inlinedAt: !1514)
!1577 = !DILocation(line: 0, scope: !1511, inlinedAt: !1514)
!1578 = !DILocation(line: 0, scope: !1505, inlinedAt: !1514)
!1579 = distinct !{!1579, !1552, !1580}
!1580 = !DILocation(line: 967, column: 7, scope: !1505, inlinedAt: !1514)
!1581 = !DILocation(line: 0, scope: !1424, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 1002, column: 11, scope: !1466, inlinedAt: !1479)
!1583 = !DILocation(line: 130, column: 10, scope: !1424, inlinedAt: !1582)
!1584 = !DILocation(line: 1002, column: 11, scope: !1466, inlinedAt: !1479)
!1585 = !DILocation(line: 1002, column: 21, scope: !1466, inlinedAt: !1479)
!1586 = !DILocation(line: 0, scope: !1363, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 1002, column: 25, scope: !1466, inlinedAt: !1479)
!1588 = !DILocation(line: 137, column: 10, scope: !1363, inlinedAt: !1587)
!1589 = !DILocation(line: 1002, column: 25, scope: !1466, inlinedAt: !1479)
!1590 = !DILocation(line: 1002, column: 44, scope: !1466, inlinedAt: !1479)
!1591 = !DILocation(line: 1002, column: 37, scope: !1466, inlinedAt: !1479)
!1592 = distinct !{!1592, !1527, !1593}
!1593 = !DILocation(line: 1002, column: 60, scope: !1466, inlinedAt: !1479)
!1594 = !DILocation(line: 1005, column: 7, scope: !1595, inlinedAt: !1479)
!1595 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 1005, column: 7)
!1596 = !DILocation(line: 1005, column: 37, scope: !1595, inlinedAt: !1479)
!1597 = !DILocation(line: 1005, column: 19, scope: !1595, inlinedAt: !1479)
!1598 = !DILocation(line: 0, scope: !1518, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 1005, column: 44, scope: !1595, inlinedAt: !1479)
!1600 = !DILocation(line: 93, column: 10, scope: !1518, inlinedAt: !1599)
!1601 = !DILocation(line: 1005, column: 7, scope: !1466, inlinedAt: !1479)
!1602 = !DILocation(line: 1005, column: 62, scope: !1595, inlinedAt: !1479)
!1603 = !DILocation(line: 1006, column: 5, scope: !1595, inlinedAt: !1479)
!1604 = !DILocation(line: 0, scope: !1363, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 1008, column: 7, scope: !1606, inlinedAt: !1479)
!1606 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 1008, column: 7)
!1607 = !DILocation(line: 137, column: 10, scope: !1363, inlinedAt: !1605)
!1608 = !DILocation(line: 1008, column: 7, scope: !1606, inlinedAt: !1479)
!1609 = !DILocation(line: 1008, column: 7, scope: !1466, inlinedAt: !1479)
!1610 = !DILocation(line: 1009, column: 5, scope: !1606, inlinedAt: !1479)
!1611 = !DILocation(line: 1253, column: 7, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 1253, column: 7)
!1613 = !DILocation(line: 1253, column: 25, scope: !1612)
!1614 = !DILocation(line: 1253, column: 7, scope: !1248)
!1615 = !DILocation(line: 1255, column: 11, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 1255, column: 11)
!1617 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 1254, column: 5)
!1618 = !DILocation(line: 0, scope: !1616)
!1619 = !DILocation(line: 1255, column: 11, scope: !1617)
!1620 = !DILocation(line: 1256, column: 9, scope: !1616)
!1621 = !DILocation(line: 1258, column: 9, scope: !1616)
!1622 = !DILocation(line: 1262, column: 1, scope: !1248)
!1623 = !DILocation(line: 0, scope: !207)
!1624 = !DILocation(line: 71, column: 10, scope: !207)
!1625 = !DILocation(line: 71, column: 16, scope: !207)
!1626 = !DILocation(line: 71, column: 3, scope: !207)
!1627 = !DILocation(line: 73, column: 34, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !207, file: !208, line: 72, column: 5)
!1629 = !DILocation(line: 73, column: 41, scope: !1628)
!1630 = !DILocation(line: 73, column: 16, scope: !1628)
!1631 = !DILocation(line: 73, column: 11, scope: !1628)
!1632 = !DILocation(line: 73, column: 14, scope: !1628)
!1633 = !DILocation(line: 74, column: 12, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1628, file: !208, line: 74, column: 11)
!1635 = !DILocation(line: 74, column: 11, scope: !1628)
!1636 = !DILocation(line: 76, column: 35, scope: !1628)
!1637 = !DILocation(line: 76, column: 25, scope: !1628)
!1638 = !DILocation(line: 76, column: 42, scope: !1628)
!1639 = !DILocation(line: 77, column: 27, scope: !1628)
!1640 = !DILocation(line: 77, column: 47, scope: !1628)
!1641 = !DILocation(line: 77, column: 54, scope: !1628)
!1642 = !DILocation(line: 77, column: 24, scope: !1628)
!1643 = !DILocation(line: 78, column: 23, scope: !1628)
!1644 = !DILocation(line: 76, column: 16, scope: !1628)
!1645 = !DILocation(line: 76, column: 11, scope: !1628)
!1646 = !DILocation(line: 76, column: 14, scope: !1628)
!1647 = !DILocation(line: 79, column: 12, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1628, file: !208, line: 79, column: 11)
!1649 = !DILocation(line: 79, column: 11, scope: !1628)
!1650 = !DILocation(line: 82, column: 10, scope: !1628)
!1651 = !DILocation(line: 83, column: 30, scope: !1628)
!1652 = !DILocation(line: 83, column: 37, scope: !1628)
!1653 = !DILocation(line: 83, column: 43, scope: !1628)
!1654 = !DILocation(line: 83, column: 12, scope: !1628)
!1655 = !DILocation(line: 81, column: 11, scope: !1628)
!1656 = !DILocation(line: 81, column: 14, scope: !1628)
!1657 = !DILocation(line: 85, column: 12, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1628, file: !208, line: 85, column: 11)
!1659 = !DILocation(line: 85, column: 11, scope: !1628)
!1660 = !DILocation(line: 88, column: 10, scope: !1628)
!1661 = !DILocation(line: 89, column: 31, scope: !1628)
!1662 = !DILocation(line: 89, column: 21, scope: !1628)
!1663 = !DILocation(line: 89, column: 38, scope: !1628)
!1664 = !DILocation(line: 90, column: 23, scope: !1628)
!1665 = !DILocation(line: 90, column: 43, scope: !1628)
!1666 = !DILocation(line: 90, column: 50, scope: !1628)
!1667 = !DILocation(line: 90, column: 20, scope: !1628)
!1668 = !DILocation(line: 91, column: 19, scope: !1628)
!1669 = !DILocation(line: 89, column: 12, scope: !1628)
!1670 = !DILocation(line: 0, scope: !1628)
!1671 = !DILocation(line: 87, column: 11, scope: !1628)
!1672 = !DILocation(line: 87, column: 14, scope: !1628)
!1673 = !DILocation(line: 93, column: 12, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1628, file: !208, line: 93, column: 11)
!1675 = !DILocation(line: 93, column: 11, scope: !1628)
!1676 = !DILocation(line: 96, column: 10, scope: !1628)
!1677 = !DILocation(line: 97, column: 31, scope: !1628)
!1678 = !DILocation(line: 97, column: 21, scope: !1628)
!1679 = !DILocation(line: 97, column: 38, scope: !1628)
!1680 = !DILocation(line: 98, column: 23, scope: !1628)
!1681 = !DILocation(line: 98, column: 43, scope: !1628)
!1682 = !DILocation(line: 98, column: 50, scope: !1628)
!1683 = !DILocation(line: 98, column: 20, scope: !1628)
!1684 = !DILocation(line: 99, column: 19, scope: !1628)
!1685 = !DILocation(line: 97, column: 12, scope: !1628)
!1686 = !DILocation(line: 95, column: 11, scope: !1628)
!1687 = !DILocation(line: 95, column: 14, scope: !1628)
!1688 = !DILocation(line: 101, column: 12, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1628, file: !208, line: 101, column: 11)
!1690 = !DILocation(line: 101, column: 11, scope: !1628)
!1691 = !DILocation(line: 104, column: 10, scope: !1628)
!1692 = !DILocation(line: 105, column: 30, scope: !1628)
!1693 = !DILocation(line: 105, column: 37, scope: !1628)
!1694 = !DILocation(line: 105, column: 43, scope: !1628)
!1695 = !DILocation(line: 105, column: 12, scope: !1628)
!1696 = !DILocation(line: 103, column: 11, scope: !1628)
!1697 = !DILocation(line: 103, column: 14, scope: !1628)
!1698 = !DILocation(line: 107, column: 12, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1628, file: !208, line: 107, column: 11)
!1700 = !DILocation(line: 107, column: 11, scope: !1628)
!1701 = !DILocation(line: 110, column: 10, scope: !1628)
!1702 = !DILocation(line: 111, column: 31, scope: !1628)
!1703 = !DILocation(line: 111, column: 21, scope: !1628)
!1704 = !DILocation(line: 111, column: 38, scope: !1628)
!1705 = !DILocation(line: 112, column: 23, scope: !1628)
!1706 = !DILocation(line: 112, column: 43, scope: !1628)
!1707 = !DILocation(line: 112, column: 50, scope: !1628)
!1708 = !DILocation(line: 112, column: 20, scope: !1628)
!1709 = !DILocation(line: 113, column: 19, scope: !1628)
!1710 = !DILocation(line: 111, column: 12, scope: !1628)
!1711 = !DILocation(line: 109, column: 11, scope: !1628)
!1712 = !DILocation(line: 109, column: 14, scope: !1628)
!1713 = !DILocation(line: 115, column: 12, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1628, file: !208, line: 115, column: 11)
!1715 = !DILocation(line: 115, column: 11, scope: !1628)
!1716 = !DILocation(line: 117, column: 16, scope: !1628)
!1717 = !DILocation(line: 117, column: 41, scope: !1628)
!1718 = !DILocation(line: 117, column: 48, scope: !1628)
!1719 = !DILocation(line: 117, column: 24, scope: !1628)
!1720 = !DILocation(line: 117, column: 14, scope: !1628)
!1721 = !DILocation(line: 118, column: 12, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1628, file: !208, line: 118, column: 11)
!1723 = !DILocation(line: 118, column: 11, scope: !1628)
!1724 = !DILocation(line: 117, column: 11, scope: !1628)
!1725 = !DILocation(line: 121, column: 14, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1628, file: !208, line: 120, column: 11)
!1727 = !DILocation(line: 122, column: 11, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1628, file: !208, line: 122, column: 11)
!1729 = !DILocation(line: 122, column: 11, scope: !1628)
!1730 = distinct !{!1730, !1626, !1731}
!1731 = !DILocation(line: 124, column: 5, scope: !207)
!1732 = !DILocation(line: 126, column: 7, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !207, file: !208, line: 126, column: 7)
!1734 = !DILocation(line: 126, column: 7, scope: !207)
!1735 = !DILocation(line: 127, column: 10, scope: !1733)
!1736 = !DILocation(line: 127, column: 5, scope: !1733)
!1737 = !DILocation(line: 128, column: 1, scope: !207)
!1738 = distinct !DISubprogram(name: "base32_encode_alloc", scope: !208, file: !208, line: 140, type: !1739, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !1741)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!93, !36, !93, !570}
!1741 = !{!1742, !1743, !1744, !1745}
!1742 = !DILocalVariable(name: "in", arg: 1, scope: !1738, file: !208, line: 140, type: !36)
!1743 = !DILocalVariable(name: "inlen", arg: 2, scope: !1738, file: !208, line: 140, type: !93)
!1744 = !DILocalVariable(name: "out", arg: 3, scope: !1738, file: !208, line: 140, type: !570)
!1745 = !DILocalVariable(name: "outlen", scope: !1738, file: !208, line: 142, type: !93)
!1746 = !DILocation(line: 0, scope: !1738)
!1747 = !DILocation(line: 142, column: 23, scope: !1738)
!1748 = !DILocation(line: 142, column: 21, scope: !1738)
!1749 = !DILocation(line: 150, column: 13, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1738, file: !208, line: 150, column: 7)
!1751 = !DILocation(line: 150, column: 7, scope: !1738)
!1752 = !DILocation(line: 152, column: 12, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1750, file: !208, line: 151, column: 5)
!1754 = !DILocation(line: 153, column: 7, scope: !1753)
!1755 = !DILocation(line: 156, column: 10, scope: !1738)
!1756 = !DILocation(line: 156, column: 8, scope: !1738)
!1757 = !DILocation(line: 157, column: 8, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1738, file: !208, line: 157, column: 7)
!1759 = !DILocation(line: 157, column: 7, scope: !1738)
!1760 = !DILocation(line: 160, column: 3, scope: !1738)
!1761 = !DILocation(line: 162, column: 3, scope: !1738)
!1762 = !DILocation(line: 163, column: 1, scope: !1738)
!1763 = distinct !DISubprogram(name: "isbase32", scope: !208, file: !208, line: 286, type: !180, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !1764)
!1764 = !{!1765}
!1765 = !DILocalVariable(name: "ch", arg: 1, scope: !1763, file: !208, line: 286, type: !35)
!1766 = !DILocation(line: 0, scope: !1763)
!1767 = !DILocation(line: 288, column: 49, scope: !1763)
!1768 = !DILocation(line: 288, column: 46, scope: !1763)
!1769 = !DILocation(line: 288, column: 3, scope: !1763)
!1770 = distinct !DISubprogram(name: "base32_decode_ctx_init", scope: !208, file: !208, line: 293, type: !1771, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !1778)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{null, !1773}
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base32_decode_context", file: !168, line: 31, size: 96, elements: !1775)
!1775 = !{!1776, !1777}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1774, file: !168, line: 33, baseType: !7, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1774, file: !168, line: 34, baseType: !176, size: 64, offset: 32)
!1778 = !{!1779}
!1779 = !DILocalVariable(name: "ctx", arg: 1, scope: !1770, file: !208, line: 293, type: !1773)
!1780 = !DILocation(line: 0, scope: !1770)
!1781 = !DILocation(line: 295, column: 8, scope: !1770)
!1782 = !DILocation(line: 295, column: 10, scope: !1770)
!1783 = !{!1784, !1320, i64 0}
!1784 = !{!"base32_decode_context", !1320, i64 0, !1203, i64 4}
!1785 = !DILocation(line: 296, column: 1, scope: !1770)
!1786 = distinct !DISubprogram(name: "base32_decode_ctx", scope: !208, file: !208, line: 470, type: !1787, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !1789)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!182, !1773, !211, !93, !212, !538}
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1801, !1803}
!1790 = !DILocalVariable(name: "ctx", arg: 1, scope: !1786, file: !208, line: 470, type: !1773)
!1791 = !DILocalVariable(name: "in", arg: 2, scope: !1786, file: !208, line: 471, type: !211)
!1792 = !DILocalVariable(name: "inlen", arg: 3, scope: !1786, file: !208, line: 471, type: !93)
!1793 = !DILocalVariable(name: "out", arg: 4, scope: !1786, file: !208, line: 472, type: !212)
!1794 = !DILocalVariable(name: "outlen", arg: 5, scope: !1786, file: !208, line: 472, type: !538)
!1795 = !DILocalVariable(name: "outleft", scope: !1786, file: !208, line: 474, type: !93)
!1796 = !DILocalVariable(name: "ignore_newlines", scope: !1786, file: !208, line: 475, type: !182)
!1797 = !DILocalVariable(name: "flush_ctx", scope: !1786, file: !208, line: 476, type: !182)
!1798 = !DILocalVariable(name: "ctx_i", scope: !1786, file: !208, line: 477, type: !7)
!1799 = !DILocalVariable(name: "outleft_save", scope: !1800, file: !208, line: 488, type: !93)
!1800 = distinct !DILexicalBlock(scope: !1786, file: !208, line: 487, column: 5)
!1801 = !DILocalVariable(name: "in_end", scope: !1802, file: !208, line: 521, type: !36)
!1802 = distinct !DILexicalBlock(scope: !1800, file: !208, line: 520, column: 7)
!1803 = !DILocalVariable(name: "non_nl", scope: !1802, file: !208, line: 522, type: !36)
!1804 = !DILocation(line: 0, scope: !1786)
!1805 = !DILocation(line: 474, column: 3, scope: !1786)
!1806 = !DILocation(line: 474, column: 20, scope: !1786)
!1807 = !DILocation(line: 474, column: 10, scope: !1786)
!1808 = !DILocation(line: 475, column: 30, scope: !1786)
!1809 = !DILocation(line: 479, column: 7, scope: !1786)
!1810 = !DILocation(line: 481, column: 20, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !208, line: 480, column: 5)
!1812 = distinct !DILexicalBlock(scope: !1786, file: !208, line: 479, column: 7)
!1813 = !DILocation(line: 482, column: 25, scope: !1811)
!1814 = !DILocation(line: 483, column: 5, scope: !1811)
!1815 = !DILocation(line: 0, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1800, file: !208, line: 489, column: 11)
!1817 = !DILocation(line: 0, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1800, file: !208, line: 509, column: 11)
!1819 = !DILocation(line: 0, scope: !1820, inlinedAt: !1837)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !208, line: 310, column: 7)
!1821 = distinct !DISubprogram(name: "get_8", scope: !208, file: !208, line: 306, type: !1822, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !1825)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!34, !1773, !1824, !211, !538}
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!1825 = !{!1826, !1827, !1828, !1829, !1830, !1833, !1835}
!1826 = !DILocalVariable(name: "ctx", arg: 1, scope: !1821, file: !208, line: 306, type: !1773)
!1827 = !DILocalVariable(name: "in", arg: 2, scope: !1821, file: !208, line: 307, type: !1824)
!1828 = !DILocalVariable(name: "in_end", arg: 3, scope: !1821, file: !208, line: 307, type: !211)
!1829 = !DILocalVariable(name: "n_non_newline", arg: 4, scope: !1821, file: !208, line: 308, type: !538)
!1830 = !DILocalVariable(name: "t", scope: !1831, file: !208, line: 315, type: !36)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !208, line: 314, column: 5)
!1832 = distinct !DILexicalBlock(scope: !1821, file: !208, line: 313, column: 7)
!1833 = !DILocalVariable(name: "p", scope: !1834, file: !208, line: 327, type: !36)
!1834 = distinct !DILexicalBlock(scope: !1821, file: !208, line: 325, column: 3)
!1835 = !DILocalVariable(name: "c", scope: !1836, file: !208, line: 330, type: !35)
!1836 = distinct !DILexicalBlock(scope: !1834, file: !208, line: 329, column: 7)
!1837 = distinct !DILocation(line: 525, column: 20, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1802, file: !208, line: 524, column: 13)
!1839 = !DILocation(line: 0, scope: !1834, inlinedAt: !1837)
!1840 = !DILocation(line: 486, column: 3, scope: !1786)
!1841 = !DILocation(line: 488, column: 29, scope: !1800)
!1842 = !DILocation(line: 0, scope: !1800)
!1843 = !DILocation(line: 489, column: 22, scope: !1816)
!1844 = !DILocation(line: 496, column: 30, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !208, line: 496, column: 19)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !208, line: 492, column: 13)
!1847 = distinct !DILexicalBlock(scope: !1816, file: !208, line: 490, column: 9)
!1848 = !DILocation(line: 496, column: 20, scope: !1845)
!1849 = !DILocation(line: 496, column: 19, scope: !1846)
!1850 = !DILocation(line: 499, column: 18, scope: !1846)
!1851 = !DILocation(line: 500, column: 21, scope: !1846)
!1852 = !DILocation(line: 495, column: 30, scope: !1846)
!1853 = distinct !{!1853, !1854, !1855}
!1854 = !DILocation(line: 491, column: 11, scope: !1847)
!1855 = !DILocation(line: 501, column: 13, scope: !1847)
!1856 = !DILocation(line: 504, column: 17, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1800, file: !208, line: 504, column: 11)
!1858 = !DILocation(line: 504, column: 22, scope: !1857)
!1859 = !DILocation(line: 509, column: 17, scope: !1818)
!1860 = !DILocation(line: 509, column: 20, scope: !1818)
!1861 = !DILocation(line: 509, column: 24, scope: !1818)
!1862 = !DILocation(line: 509, column: 32, scope: !1818)
!1863 = !DILocation(line: 511, column: 11, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1818, file: !208, line: 510, column: 9)
!1865 = !DILocation(line: 512, column: 11, scope: !1864)
!1866 = !DILocation(line: 513, column: 11, scope: !1864)
!1867 = distinct !{!1867, !1840, !1868}
!1868 = !DILocation(line: 542, column: 5, scope: !1786)
!1869 = !DILocation(line: 517, column: 29, scope: !1800)
!1870 = !DILocation(line: 517, column: 11, scope: !1800)
!1871 = !DILocation(line: 518, column: 15, scope: !1800)
!1872 = !DILocation(line: 521, column: 33, scope: !1802)
!1873 = !DILocation(line: 0, scope: !1802)
!1874 = !DILocation(line: 524, column: 13, scope: !1802)
!1875 = !DILocation(line: 0, scope: !1821, inlinedAt: !1837)
!1876 = !DILocation(line: 310, column: 12, scope: !1820, inlinedAt: !1837)
!1877 = !{!1878}
!1878 = distinct !{!1878, !1879, !"get_8: argument 0"}
!1879 = distinct !{!1879, !"get_8"}
!1880 = !DILocation(line: 310, column: 7, scope: !1821, inlinedAt: !1837)
!1881 = !DILocation(line: 311, column: 12, scope: !1820, inlinedAt: !1837)
!1882 = !DILocation(line: 313, column: 7, scope: !1821, inlinedAt: !1837)
!1883 = !DILocation(line: 0, scope: !1831, inlinedAt: !1837)
!1884 = !DILocation(line: 316, column: 23, scope: !1885, inlinedAt: !1837)
!1885 = distinct !DILexicalBlock(scope: !1831, file: !208, line: 316, column: 11)
!1886 = !DILocation(line: 316, column: 13, scope: !1885, inlinedAt: !1837)
!1887 = !DILocation(line: 316, column: 29, scope: !1885, inlinedAt: !1837)
!1888 = !DILocation(line: 316, column: 32, scope: !1885, inlinedAt: !1837)
!1889 = !DILocation(line: 316, column: 52, scope: !1885, inlinedAt: !1837)
!1890 = !DILocation(line: 316, column: 11, scope: !1831, inlinedAt: !1837)
!1891 = !DILocation(line: 319, column: 15, scope: !1892, inlinedAt: !1837)
!1892 = distinct !DILexicalBlock(scope: !1885, file: !208, line: 317, column: 9)
!1893 = !DILocation(line: 532, column: 38, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1802, file: !208, line: 532, column: 13)
!1895 = !DILocation(line: 328, column: 14, scope: !1834, inlinedAt: !1837)
!1896 = !DILocation(line: 328, column: 5, scope: !1834, inlinedAt: !1837)
!1897 = !DILocation(line: 331, column: 13, scope: !1836, inlinedAt: !1837)
!1898 = !DILocation(line: 330, column: 20, scope: !1836, inlinedAt: !1837)
!1899 = !DILocation(line: 330, column: 18, scope: !1836, inlinedAt: !1837)
!1900 = !DILocation(line: 0, scope: !1836, inlinedAt: !1837)
!1901 = !DILocation(line: 331, column: 15, scope: !1902, inlinedAt: !1837)
!1902 = distinct !DILexicalBlock(scope: !1836, file: !208, line: 331, column: 13)
!1903 = !DILocation(line: 333, column: 28, scope: !1904, inlinedAt: !1837)
!1904 = distinct !DILexicalBlock(scope: !1902, file: !208, line: 332, column: 11)
!1905 = !DILocation(line: 333, column: 13, scope: !1904, inlinedAt: !1837)
!1906 = !DILocation(line: 333, column: 32, scope: !1904, inlinedAt: !1837)
!1907 = !DILocation(line: 334, column: 24, scope: !1908, inlinedAt: !1837)
!1908 = distinct !DILexicalBlock(scope: !1904, file: !208, line: 334, column: 17)
!1909 = !DILocation(line: 334, column: 17, scope: !1904, inlinedAt: !1837)
!1910 = !DILocation(line: 340, column: 27, scope: !1834, inlinedAt: !1837)
!1911 = !DILocation(line: 339, column: 9, scope: !1834, inlinedAt: !1837)
!1912 = !DILocation(line: 340, column: 22, scope: !1834, inlinedAt: !1837)
!1913 = !DILocation(line: 0, scope: !1838)
!1914 = !DILocation(line: 532, column: 19, scope: !1894)
!1915 = !DILocation(line: 532, column: 24, scope: !1894)
!1916 = !DILocation(line: 532, column: 34, scope: !1894)
!1917 = !DILocation(line: 537, column: 14, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1802, file: !208, line: 537, column: 13)
!1919 = !DILocation(line: 537, column: 13, scope: !1802)
!1920 = !DILocation(line: 540, column: 24, scope: !1802)
!1921 = !DILocation(line: 541, column: 7, scope: !1800)
!1922 = !DILocation(line: 544, column: 14, scope: !1786)
!1923 = !DILocation(line: 544, column: 11, scope: !1786)
!1924 = !DILocation(line: 546, column: 16, scope: !1786)
!1925 = !DILocation(line: 547, column: 1, scope: !1786)
!1926 = !DILocation(line: 546, column: 3, scope: !1786)
!1927 = distinct !DISubprogram(name: "decode_8", scope: !208, file: !208, line: 360, type: !1928, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !1931)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!182, !211, !93, !1930, !538}
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!1931 = !{!1932, !1933, !1934, !1935, !1936}
!1932 = !DILocalVariable(name: "in", arg: 1, scope: !1927, file: !208, line: 360, type: !211)
!1933 = !DILocalVariable(name: "inlen", arg: 2, scope: !1927, file: !208, line: 360, type: !93)
!1934 = !DILocalVariable(name: "outp", arg: 3, scope: !1927, file: !208, line: 361, type: !1930)
!1935 = !DILocalVariable(name: "outleft", arg: 4, scope: !1927, file: !208, line: 361, type: !538)
!1936 = !DILocalVariable(name: "out", scope: !1927, file: !208, line: 363, type: !34)
!1937 = !DILocation(line: 0, scope: !1927)
!1938 = !DILocation(line: 363, column: 15, scope: !1927)
!1939 = !DILocation(line: 364, column: 13, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1927, file: !208, line: 364, column: 7)
!1941 = !DILocation(line: 364, column: 7, scope: !1927)
!1942 = !DILocation(line: 367, column: 18, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1927, file: !208, line: 367, column: 7)
!1944 = !DILocation(line: 0, scope: !1763, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 367, column: 8, scope: !1943)
!1946 = !DILocation(line: 288, column: 49, scope: !1763, inlinedAt: !1945)
!1947 = !DILocation(line: 288, column: 46, scope: !1763, inlinedAt: !1945)
!1948 = !DILocation(line: 367, column: 25, scope: !1943)
!1949 = !DILocation(line: 367, column: 39, scope: !1943)
!1950 = !DILocation(line: 0, scope: !1763, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 367, column: 29, scope: !1943)
!1952 = !DILocation(line: 288, column: 49, scope: !1763, inlinedAt: !1951)
!1953 = !DILocation(line: 288, column: 46, scope: !1763, inlinedAt: !1951)
!1954 = !DILocation(line: 367, column: 7, scope: !1927)
!1955 = !DILocation(line: 370, column: 7, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1927, file: !208, line: 370, column: 7)
!1957 = !DILocation(line: 370, column: 7, scope: !1927)
!1958 = !DILocation(line: 372, column: 40, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1956, file: !208, line: 371, column: 5)
!1960 = !DILocation(line: 373, column: 42, scope: !1959)
!1961 = !DILocation(line: 373, column: 17, scope: !1959)
!1962 = !DILocation(line: 372, column: 11, scope: !1959)
!1963 = !DILocation(line: 372, column: 14, scope: !1959)
!1964 = !DILocation(line: 374, column: 7, scope: !1959)
!1965 = !DILocation(line: 375, column: 5, scope: !1959)
!1966 = !DILocation(line: 377, column: 7, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1927, file: !208, line: 377, column: 7)
!1968 = !DILocation(line: 377, column: 13, scope: !1967)
!1969 = !DILocation(line: 377, column: 7, scope: !1927)
!1970 = !DILocation(line: 379, column: 11, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !208, line: 379, column: 11)
!1972 = distinct !DILexicalBlock(scope: !1967, file: !208, line: 378, column: 5)
!1973 = !DILocation(line: 379, column: 17, scope: !1971)
!1974 = !DILocation(line: 379, column: 24, scope: !1971)
!1975 = !DILocation(line: 379, column: 27, scope: !1971)
!1976 = !DILocation(line: 379, column: 33, scope: !1971)
!1977 = !DILocation(line: 379, column: 40, scope: !1971)
!1978 = !DILocation(line: 379, column: 43, scope: !1971)
!1979 = !DILocation(line: 379, column: 49, scope: !1971)
!1980 = !DILocation(line: 380, column: 11, scope: !1971)
!1981 = !DILocation(line: 380, column: 14, scope: !1971)
!1982 = !DILocation(line: 380, column: 20, scope: !1971)
!1983 = !DILocation(line: 380, column: 27, scope: !1971)
!1984 = !DILocation(line: 380, column: 30, scope: !1971)
!1985 = !DILocation(line: 380, column: 36, scope: !1971)
!1986 = !DILocation(line: 379, column: 11, scope: !1972)
!1987 = !DILocation(line: 381, column: 9, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1971, file: !208, line: 381, column: 9)
!1989 = !DILocation(line: 0, scope: !1763, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 385, column: 12, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !208, line: 385, column: 11)
!1992 = distinct !DILexicalBlock(scope: !1967, file: !208, line: 384, column: 5)
!1993 = !DILocation(line: 288, column: 49, scope: !1763, inlinedAt: !1990)
!1994 = !DILocation(line: 288, column: 46, scope: !1763, inlinedAt: !1990)
!1995 = !DILocation(line: 385, column: 29, scope: !1991)
!1996 = !DILocation(line: 385, column: 43, scope: !1991)
!1997 = !DILocation(line: 0, scope: !1763, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 385, column: 33, scope: !1991)
!1999 = !DILocation(line: 288, column: 49, scope: !1763, inlinedAt: !1998)
!2000 = !DILocation(line: 288, column: 46, scope: !1763, inlinedAt: !1998)
!2001 = !DILocation(line: 385, column: 11, scope: !1992)
!2002 = !DILocation(line: 386, column: 9, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1991, file: !208, line: 386, column: 9)
!2004 = !DILocation(line: 388, column: 11, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1992, file: !208, line: 388, column: 11)
!2006 = !DILocation(line: 388, column: 11, scope: !1992)
!2007 = !DILocation(line: 390, column: 44, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2005, file: !208, line: 389, column: 9)
!2009 = !DILocation(line: 391, column: 46, scope: !2008)
!2010 = !DILocation(line: 391, column: 21, scope: !2008)
!2011 = !DILocation(line: 392, column: 46, scope: !2008)
!2012 = !DILocation(line: 392, column: 21, scope: !2008)
!2013 = !DILocation(line: 390, column: 15, scope: !2008)
!2014 = !DILocation(line: 390, column: 18, scope: !2008)
!2015 = !DILocation(line: 393, column: 11, scope: !2008)
!2016 = !DILocation(line: 394, column: 9, scope: !2008)
!2017 = !DILocation(line: 396, column: 11, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1992, file: !208, line: 396, column: 11)
!2019 = !DILocation(line: 396, column: 17, scope: !2018)
!2020 = !DILocation(line: 396, column: 11, scope: !1992)
!2021 = !DILocation(line: 398, column: 15, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !208, line: 398, column: 15)
!2023 = distinct !DILexicalBlock(scope: !2018, file: !208, line: 397, column: 9)
!2024 = !DILocation(line: 398, column: 21, scope: !2022)
!2025 = !DILocation(line: 398, column: 28, scope: !2022)
!2026 = !DILocation(line: 398, column: 31, scope: !2022)
!2027 = !DILocation(line: 398, column: 37, scope: !2022)
!2028 = !DILocation(line: 398, column: 44, scope: !2022)
!2029 = !DILocation(line: 398, column: 47, scope: !2022)
!2030 = !DILocation(line: 398, column: 53, scope: !2022)
!2031 = !DILocation(line: 398, column: 15, scope: !2023)
!2032 = !DILocation(line: 399, column: 13, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2022, file: !208, line: 399, column: 13)
!2034 = !DILocation(line: 0, scope: !1763, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 403, column: 16, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !208, line: 403, column: 15)
!2037 = distinct !DILexicalBlock(scope: !2018, file: !208, line: 402, column: 9)
!2038 = !DILocation(line: 288, column: 49, scope: !1763, inlinedAt: !2035)
!2039 = !DILocation(line: 288, column: 46, scope: !1763, inlinedAt: !2035)
!2040 = !DILocation(line: 403, column: 15, scope: !2037)
!2041 = !DILocation(line: 404, column: 13, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2036, file: !208, line: 404, column: 13)
!2043 = !DILocation(line: 406, column: 15, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2037, file: !208, line: 406, column: 15)
!2045 = !DILocation(line: 406, column: 15, scope: !2037)
!2046 = !DILocation(line: 408, column: 48, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2044, file: !208, line: 407, column: 13)
!2048 = !DILocation(line: 409, column: 50, scope: !2047)
!2049 = !DILocation(line: 409, column: 25, scope: !2047)
!2050 = !DILocation(line: 408, column: 19, scope: !2047)
!2051 = !DILocation(line: 408, column: 22, scope: !2047)
!2052 = !DILocation(line: 410, column: 15, scope: !2047)
!2053 = !DILocation(line: 411, column: 13, scope: !2047)
!2054 = !DILocation(line: 0, scope: !1992)
!2055 = !DILocation(line: 413, column: 15, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2037, file: !208, line: 413, column: 15)
!2057 = !DILocation(line: 413, column: 21, scope: !2056)
!2058 = !DILocation(line: 413, column: 15, scope: !2037)
!2059 = !DILocation(line: 415, column: 19, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !208, line: 415, column: 19)
!2061 = distinct !DILexicalBlock(scope: !2056, file: !208, line: 414, column: 13)
!2062 = !DILocation(line: 415, column: 25, scope: !2060)
!2063 = !DILocation(line: 415, column: 32, scope: !2060)
!2064 = !DILocation(line: 415, column: 35, scope: !2060)
!2065 = !DILocation(line: 415, column: 41, scope: !2060)
!2066 = !DILocation(line: 415, column: 19, scope: !2061)
!2067 = !DILocation(line: 416, column: 17, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2060, file: !208, line: 416, column: 17)
!2069 = !DILocation(line: 0, scope: !1763, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 420, column: 20, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !208, line: 420, column: 19)
!2072 = distinct !DILexicalBlock(scope: !2056, file: !208, line: 419, column: 13)
!2073 = !DILocation(line: 288, column: 49, scope: !1763, inlinedAt: !2070)
!2074 = !DILocation(line: 288, column: 46, scope: !1763, inlinedAt: !2070)
!2075 = !DILocation(line: 420, column: 37, scope: !2071)
!2076 = !DILocation(line: 420, column: 51, scope: !2071)
!2077 = !DILocation(line: 0, scope: !1763, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 420, column: 41, scope: !2071)
!2079 = !DILocation(line: 288, column: 49, scope: !1763, inlinedAt: !2078)
!2080 = !DILocation(line: 288, column: 46, scope: !1763, inlinedAt: !2078)
!2081 = !DILocation(line: 420, column: 19, scope: !2072)
!2082 = !DILocation(line: 421, column: 17, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2071, file: !208, line: 421, column: 17)
!2084 = !DILocation(line: 423, column: 19, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2072, file: !208, line: 423, column: 19)
!2086 = !DILocation(line: 423, column: 19, scope: !2072)
!2087 = !DILocation(line: 425, column: 52, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2085, file: !208, line: 424, column: 17)
!2089 = !DILocation(line: 426, column: 54, scope: !2088)
!2090 = !DILocation(line: 427, column: 54, scope: !2088)
!2091 = !DILocation(line: 426, column: 29, scope: !2088)
!2092 = !DILocation(line: 427, column: 29, scope: !2088)
!2093 = !DILocation(line: 425, column: 23, scope: !2088)
!2094 = !DILocation(line: 425, column: 26, scope: !2088)
!2095 = !DILocation(line: 428, column: 19, scope: !2088)
!2096 = !DILocation(line: 429, column: 17, scope: !2088)
!2097 = !DILocation(line: 0, scope: !2037)
!2098 = !DILocation(line: 431, column: 19, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2072, file: !208, line: 431, column: 19)
!2100 = !DILocation(line: 431, column: 25, scope: !2099)
!2101 = !DILocation(line: 431, column: 19, scope: !2072)
!2102 = !DILocation(line: 0, scope: !1763, inlinedAt: !2103)
!2103 = distinct !DILocation(line: 433, column: 24, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !208, line: 433, column: 23)
!2105 = distinct !DILexicalBlock(scope: !2099, file: !208, line: 432, column: 17)
!2106 = !DILocation(line: 288, column: 49, scope: !1763, inlinedAt: !2103)
!2107 = !DILocation(line: 288, column: 46, scope: !1763, inlinedAt: !2103)
!2108 = !DILocation(line: 433, column: 23, scope: !2105)
!2109 = !DILocation(line: 434, column: 21, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2104, file: !208, line: 434, column: 21)
!2111 = !DILocation(line: 436, column: 23, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2105, file: !208, line: 436, column: 23)
!2113 = !DILocation(line: 436, column: 23, scope: !2105)
!2114 = !DILocation(line: 438, column: 48, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2112, file: !208, line: 437, column: 21)
!2116 = !DILocation(line: 438, column: 34, scope: !2115)
!2117 = !DILocation(line: 438, column: 56, scope: !2115)
!2118 = !DILocation(line: 439, column: 33, scope: !2115)
!2119 = !DILocation(line: 438, column: 27, scope: !2115)
!2120 = !DILocation(line: 438, column: 30, scope: !2115)
!2121 = !DILocation(line: 440, column: 23, scope: !2115)
!2122 = !DILocation(line: 441, column: 21, scope: !2115)
!2123 = !DILocation(line: 447, column: 9, scope: !1927)
!2124 = !DILocation(line: 448, column: 3, scope: !1927)
!2125 = !DILocation(line: 449, column: 1, scope: !1927)
!2126 = distinct !DISubprogram(name: "base32_decode_alloc_ctx", scope: !208, file: !208, line: 561, type: !2127, scopeLine: 564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !2129)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!182, !1773, !36, !93, !570, !538}
!2129 = !{!2130, !2131, !2132, !2133, !2134, !2135}
!2130 = !DILocalVariable(name: "ctx", arg: 1, scope: !2126, file: !208, line: 561, type: !1773)
!2131 = !DILocalVariable(name: "in", arg: 2, scope: !2126, file: !208, line: 562, type: !36)
!2132 = !DILocalVariable(name: "inlen", arg: 3, scope: !2126, file: !208, line: 562, type: !93)
!2133 = !DILocalVariable(name: "out", arg: 4, scope: !2126, file: !208, line: 562, type: !570)
!2134 = !DILocalVariable(name: "outlen", arg: 5, scope: !2126, file: !208, line: 563, type: !538)
!2135 = !DILocalVariable(name: "needlen", scope: !2126, file: !208, line: 570, type: !93)
!2136 = !DILocation(line: 0, scope: !2126)
!2137 = !DILocation(line: 570, column: 3, scope: !2126)
!2138 = !DILocation(line: 570, column: 31, scope: !2126)
!2139 = !DILocation(line: 570, column: 22, scope: !2126)
!2140 = !DILocation(line: 570, column: 36, scope: !2126)
!2141 = !DILocation(line: 570, column: 10, scope: !2126)
!2142 = !DILocation(line: 572, column: 10, scope: !2126)
!2143 = !DILocation(line: 572, column: 8, scope: !2126)
!2144 = !DILocation(line: 573, column: 8, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2126, file: !208, line: 573, column: 7)
!2146 = !DILocation(line: 573, column: 7, scope: !2126)
!2147 = !DILocation(line: 576, column: 8, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2126, file: !208, line: 576, column: 7)
!2149 = !DILocation(line: 576, column: 7, scope: !2126)
!2150 = !DILocation(line: 578, column: 13, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2148, file: !208, line: 577, column: 5)
!2152 = !DILocation(line: 578, column: 7, scope: !2151)
!2153 = !DILocation(line: 579, column: 12, scope: !2151)
!2154 = !DILocation(line: 580, column: 7, scope: !2151)
!2155 = !DILocation(line: 583, column: 7, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2126, file: !208, line: 583, column: 7)
!2157 = !DILocation(line: 583, column: 7, scope: !2126)
!2158 = !DILocation(line: 584, column: 15, scope: !2156)
!2159 = !DILocation(line: 584, column: 13, scope: !2156)
!2160 = !DILocation(line: 584, column: 5, scope: !2156)
!2161 = !DILocation(line: 587, column: 1, scope: !2126)
!2162 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !236, file: !236, line: 51, type: !103, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2163)
!2163 = !{!2164}
!2164 = !DILocalVariable(name: "file", arg: 1, scope: !2162, file: !236, line: 51, type: !36)
!2165 = !DILocation(line: 0, scope: !2162)
!2166 = !DILocation(line: 53, column: 13, scope: !2162)
!2167 = !DILocation(line: 54, column: 1, scope: !2162)
!2168 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !236, file: !236, line: 88, type: !2169, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2171)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{null, !182}
!2171 = !{!2172}
!2172 = !DILocalVariable(name: "ignore", arg: 1, scope: !2168, file: !236, line: 88, type: !182)
!2173 = !DILocation(line: 0, scope: !2168)
!2174 = !DILocation(line: 90, column: 16, scope: !2168)
!2175 = !{!2176, !2176, i64 0}
!2176 = !{!"_Bool", !1203, i64 0}
!2177 = !DILocation(line: 91, column: 1, scope: !2168)
!2178 = distinct !DISubprogram(name: "close_stdout", scope: !236, file: !236, line: 117, type: !120, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !2179)
!2179 = !{!2180}
!2180 = !DILocalVariable(name: "write_error", scope: !2181, file: !236, line: 122, type: !36)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !236, line: 121, column: 5)
!2182 = distinct !DILexicalBlock(scope: !2178, file: !236, line: 119, column: 7)
!2183 = !DILocation(line: 119, column: 21, scope: !2182)
!2184 = !DILocation(line: 119, column: 7, scope: !2182)
!2185 = !DILocation(line: 119, column: 29, scope: !2182)
!2186 = !DILocation(line: 120, column: 7, scope: !2182)
!2187 = !DILocation(line: 120, column: 12, scope: !2182)
!2188 = !{i8 0, i8 2}
!2189 = !DILocation(line: 120, column: 25, scope: !2182)
!2190 = !DILocation(line: 120, column: 28, scope: !2182)
!2191 = !DILocation(line: 120, column: 34, scope: !2182)
!2192 = !DILocation(line: 119, column: 7, scope: !2178)
!2193 = !DILocation(line: 122, column: 33, scope: !2181)
!2194 = !DILocation(line: 0, scope: !2181)
!2195 = !DILocation(line: 123, column: 11, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2181, file: !236, line: 123, column: 11)
!2197 = !DILocation(line: 0, scope: !2196)
!2198 = !DILocation(line: 123, column: 11, scope: !2181)
!2199 = !DILocation(line: 124, column: 36, scope: !2196)
!2200 = !DILocation(line: 124, column: 9, scope: !2196)
!2201 = !DILocation(line: 127, column: 9, scope: !2196)
!2202 = !DILocation(line: 129, column: 14, scope: !2181)
!2203 = !DILocation(line: 129, column: 7, scope: !2181)
!2204 = !DILocation(line: 134, column: 42, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2178, file: !236, line: 134, column: 7)
!2206 = !DILocation(line: 134, column: 28, scope: !2205)
!2207 = !DILocation(line: 134, column: 50, scope: !2205)
!2208 = !DILocation(line: 134, column: 7, scope: !2178)
!2209 = !DILocation(line: 135, column: 12, scope: !2205)
!2210 = !DILocation(line: 135, column: 5, scope: !2205)
!2211 = !DILocation(line: 136, column: 1, scope: !2178)
!2212 = distinct !DISubprogram(name: "fdadvise", scope: !447, file: !447, line: 31, type: !2213, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !2217)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{null, !38, !2215, !2215, !2216}
!2215 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !41, line: 63, baseType: !67)
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!2217 = !{!2218, !2219, !2220, !2221, !2222}
!2218 = !DILocalVariable(name: "fd", arg: 1, scope: !2212, file: !447, line: 31, type: !38)
!2219 = !DILocalVariable(name: "offset", arg: 2, scope: !2212, file: !447, line: 31, type: !2215)
!2220 = !DILocalVariable(name: "len", arg: 3, scope: !2212, file: !447, line: 31, type: !2215)
!2221 = !DILocalVariable(name: "advice", arg: 4, scope: !2212, file: !447, line: 31, type: !2216)
!2222 = !DILocalVariable(name: "__x", scope: !2223, file: !447, line: 34, type: !38)
!2223 = distinct !DILexicalBlock(scope: !2212, file: !447, line: 34, column: 3)
!2224 = !DILocation(line: 0, scope: !2212)
!2225 = !DILocation(line: 34, column: 3, scope: !2223)
!2226 = !DILocation(line: 0, scope: !2223)
!2227 = !DILocation(line: 36, column: 1, scope: !2212)
!2228 = distinct !DISubprogram(name: "fadvise", scope: !447, file: !447, line: 39, type: !2229, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !2233)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{null, !2231, !2216}
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1258, line: 7, baseType: !458)
!2233 = !{!2234, !2235}
!2234 = !DILocalVariable(name: "fp", arg: 1, scope: !2228, file: !447, line: 39, type: !2231)
!2235 = !DILocalVariable(name: "advice", arg: 2, scope: !2228, file: !447, line: 39, type: !2216)
!2236 = !DILocation(line: 0, scope: !2228)
!2237 = !DILocation(line: 41, column: 7, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2228, file: !447, line: 41, column: 7)
!2239 = !DILocation(line: 41, column: 7, scope: !2228)
!2240 = !DILocation(line: 42, column: 15, scope: !2238)
!2241 = !DILocation(line: 0, scope: !2212, inlinedAt: !2242)
!2242 = distinct !DILocation(line: 42, column: 5, scope: !2238)
!2243 = !DILocation(line: 34, column: 3, scope: !2223, inlinedAt: !2242)
!2244 = !DILocation(line: 0, scope: !2223, inlinedAt: !2242)
!2245 = !DILocation(line: 42, column: 5, scope: !2238)
!2246 = !DILocation(line: 43, column: 1, scope: !2228)
!2247 = distinct !DISubprogram(name: "set_program_name", scope: !287, file: !287, line: 39, type: !103, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2248)
!2248 = !{!2249, !2250, !2251}
!2249 = !DILocalVariable(name: "argv0", arg: 1, scope: !2247, file: !287, line: 39, type: !36)
!2250 = !DILocalVariable(name: "slash", scope: !2247, file: !287, line: 46, type: !36)
!2251 = !DILocalVariable(name: "base", scope: !2247, file: !287, line: 47, type: !36)
!2252 = !DILocation(line: 0, scope: !2247)
!2253 = !DILocation(line: 51, column: 13, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2247, file: !287, line: 51, column: 7)
!2255 = !DILocation(line: 51, column: 7, scope: !2247)
!2256 = !DILocation(line: 55, column: 14, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2254, file: !287, line: 52, column: 5)
!2258 = !DILocation(line: 54, column: 7, scope: !2257)
!2259 = !DILocation(line: 56, column: 7, scope: !2257)
!2260 = !DILocation(line: 59, column: 11, scope: !2247)
!2261 = !DILocation(line: 60, column: 17, scope: !2247)
!2262 = !DILocation(line: 60, column: 11, scope: !2247)
!2263 = !DILocation(line: 61, column: 12, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2247, file: !287, line: 61, column: 7)
!2265 = !DILocation(line: 61, column: 20, scope: !2264)
!2266 = !DILocation(line: 61, column: 25, scope: !2264)
!2267 = !DILocation(line: 61, column: 42, scope: !2264)
!2268 = !DILocation(line: 61, column: 28, scope: !2264)
!2269 = !DILocation(line: 61, column: 61, scope: !2264)
!2270 = !DILocation(line: 61, column: 7, scope: !2247)
!2271 = !DILocation(line: 64, column: 11, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !287, line: 64, column: 11)
!2273 = distinct !DILexicalBlock(scope: !2264, file: !287, line: 62, column: 5)
!2274 = !DILocation(line: 64, column: 36, scope: !2272)
!2275 = !DILocation(line: 64, column: 11, scope: !2273)
!2276 = !DILocation(line: 66, column: 24, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2272, file: !287, line: 65, column: 9)
!2278 = !DILocation(line: 70, column: 41, scope: !2277)
!2279 = !DILocation(line: 72, column: 9, scope: !2277)
!2280 = !DILocation(line: 84, column: 16, scope: !2247)
!2281 = !DILocation(line: 90, column: 27, scope: !2247)
!2282 = !DILocation(line: 92, column: 1, scope: !2247)
!2283 = distinct !DISubprogram(name: "clone_quoting_options", scope: !328, file: !328, line: 122, type: !2284, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !2287)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!2286, !2286}
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!2287 = !{!2288, !2289, !2290}
!2288 = !DILocalVariable(name: "o", arg: 1, scope: !2283, file: !328, line: 122, type: !2286)
!2289 = !DILocalVariable(name: "e", scope: !2283, file: !328, line: 124, type: !38)
!2290 = !DILocalVariable(name: "p", scope: !2283, file: !328, line: 125, type: !2286)
!2291 = !DILocation(line: 0, scope: !2283)
!2292 = !DILocation(line: 124, column: 11, scope: !2283)
!2293 = !DILocation(line: 125, column: 40, scope: !2283)
!2294 = !DILocation(line: 125, column: 31, scope: !2283)
!2295 = !DILocation(line: 127, column: 9, scope: !2283)
!2296 = !DILocation(line: 128, column: 3, scope: !2283)
!2297 = distinct !DISubprogram(name: "get_quoting_style", scope: !328, file: !328, line: 133, type: !2298, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !2300)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!5, !357}
!2300 = !{!2301}
!2301 = !DILocalVariable(name: "o", arg: 1, scope: !2297, file: !328, line: 133, type: !357)
!2302 = !DILocation(line: 0, scope: !2297)
!2303 = !DILocation(line: 135, column: 11, scope: !2297)
!2304 = !DILocation(line: 135, column: 46, scope: !2297)
!2305 = !{!2306, !1203, i64 0}
!2306 = !{!"quoting_options", !1203, i64 0, !1320, i64 4, !1203, i64 8, !1202, i64 40, !1202, i64 48}
!2307 = !DILocation(line: 135, column: 3, scope: !2297)
!2308 = distinct !DISubprogram(name: "set_quoting_style", scope: !328, file: !328, line: 141, type: !2309, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !2311)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{null, !2286, !5}
!2311 = !{!2312, !2313}
!2312 = !DILocalVariable(name: "o", arg: 1, scope: !2308, file: !328, line: 141, type: !2286)
!2313 = !DILocalVariable(name: "s", arg: 2, scope: !2308, file: !328, line: 141, type: !5)
!2314 = !DILocation(line: 0, scope: !2308)
!2315 = !DILocation(line: 143, column: 4, scope: !2308)
!2316 = !DILocation(line: 143, column: 39, scope: !2308)
!2317 = !DILocation(line: 143, column: 45, scope: !2308)
!2318 = !DILocation(line: 144, column: 1, scope: !2308)
!2319 = distinct !DISubprogram(name: "set_char_quoting", scope: !328, file: !328, line: 152, type: !2320, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !2322)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!38, !2286, !35, !38}
!2322 = !{!2323, !2324, !2325, !2326, !2327, !2329, !2330}
!2323 = !DILocalVariable(name: "o", arg: 1, scope: !2319, file: !328, line: 152, type: !2286)
!2324 = !DILocalVariable(name: "c", arg: 2, scope: !2319, file: !328, line: 152, type: !35)
!2325 = !DILocalVariable(name: "i", arg: 3, scope: !2319, file: !328, line: 152, type: !38)
!2326 = !DILocalVariable(name: "uc", scope: !2319, file: !328, line: 154, type: !192)
!2327 = !DILocalVariable(name: "p", scope: !2319, file: !328, line: 155, type: !2328)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2329 = !DILocalVariable(name: "shift", scope: !2319, file: !328, line: 157, type: !38)
!2330 = !DILocalVariable(name: "r", scope: !2319, file: !328, line: 158, type: !38)
!2331 = !DILocation(line: 0, scope: !2319)
!2332 = !DILocation(line: 156, column: 6, scope: !2319)
!2333 = !DILocation(line: 156, column: 62, scope: !2319)
!2334 = !DILocation(line: 156, column: 57, scope: !2319)
!2335 = !DILocation(line: 157, column: 15, scope: !2319)
!2336 = !DILocation(line: 158, column: 12, scope: !2319)
!2337 = !DILocation(line: 158, column: 15, scope: !2319)
!2338 = !DILocation(line: 158, column: 25, scope: !2319)
!2339 = !DILocation(line: 159, column: 13, scope: !2319)
!2340 = !DILocation(line: 159, column: 18, scope: !2319)
!2341 = !DILocation(line: 159, column: 23, scope: !2319)
!2342 = !DILocation(line: 159, column: 6, scope: !2319)
!2343 = !DILocation(line: 160, column: 3, scope: !2319)
!2344 = distinct !DISubprogram(name: "set_quoting_flags", scope: !328, file: !328, line: 168, type: !2345, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !2347)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!38, !2286, !38}
!2347 = !{!2348, !2349, !2350}
!2348 = !DILocalVariable(name: "o", arg: 1, scope: !2344, file: !328, line: 168, type: !2286)
!2349 = !DILocalVariable(name: "i", arg: 2, scope: !2344, file: !328, line: 168, type: !38)
!2350 = !DILocalVariable(name: "r", scope: !2344, file: !328, line: 170, type: !38)
!2351 = !DILocation(line: 0, scope: !2344)
!2352 = !DILocation(line: 171, column: 8, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2344, file: !328, line: 171, column: 7)
!2354 = !DILocation(line: 171, column: 7, scope: !2344)
!2355 = !DILocation(line: 173, column: 10, scope: !2344)
!2356 = !{!2306, !1320, i64 4}
!2357 = !DILocation(line: 174, column: 12, scope: !2344)
!2358 = !DILocation(line: 175, column: 3, scope: !2344)
!2359 = distinct !DISubprogram(name: "set_custom_quoting", scope: !328, file: !328, line: 179, type: !2360, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{null, !2286, !36, !36}
!2362 = !{!2363, !2364, !2365}
!2363 = !DILocalVariable(name: "o", arg: 1, scope: !2359, file: !328, line: 179, type: !2286)
!2364 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2359, file: !328, line: 180, type: !36)
!2365 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2359, file: !328, line: 180, type: !36)
!2366 = !DILocation(line: 0, scope: !2359)
!2367 = !DILocation(line: 182, column: 8, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2359, file: !328, line: 182, column: 7)
!2369 = !DILocation(line: 182, column: 7, scope: !2359)
!2370 = !DILocation(line: 184, column: 6, scope: !2359)
!2371 = !DILocation(line: 184, column: 12, scope: !2359)
!2372 = !DILocation(line: 185, column: 8, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2359, file: !328, line: 185, column: 7)
!2374 = !DILocation(line: 185, column: 23, scope: !2373)
!2375 = !DILocation(line: 185, column: 19, scope: !2373)
!2376 = !DILocation(line: 186, column: 5, scope: !2373)
!2377 = !DILocation(line: 187, column: 6, scope: !2359)
!2378 = !DILocation(line: 187, column: 17, scope: !2359)
!2379 = !{!2306, !1202, i64 40}
!2380 = !DILocation(line: 188, column: 6, scope: !2359)
!2381 = !DILocation(line: 188, column: 18, scope: !2359)
!2382 = !{!2306, !1202, i64 48}
!2383 = !DILocation(line: 189, column: 1, scope: !2359)
!2384 = distinct !DISubprogram(name: "quotearg_buffer", scope: !328, file: !328, line: 784, type: !2385, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !2387)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!93, !34, !93, !36, !93, !357}
!2387 = !{!2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395}
!2388 = !DILocalVariable(name: "buffer", arg: 1, scope: !2384, file: !328, line: 784, type: !34)
!2389 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2384, file: !328, line: 784, type: !93)
!2390 = !DILocalVariable(name: "arg", arg: 3, scope: !2384, file: !328, line: 785, type: !36)
!2391 = !DILocalVariable(name: "argsize", arg: 4, scope: !2384, file: !328, line: 785, type: !93)
!2392 = !DILocalVariable(name: "o", arg: 5, scope: !2384, file: !328, line: 786, type: !357)
!2393 = !DILocalVariable(name: "p", scope: !2384, file: !328, line: 788, type: !357)
!2394 = !DILocalVariable(name: "e", scope: !2384, file: !328, line: 789, type: !38)
!2395 = !DILocalVariable(name: "r", scope: !2384, file: !328, line: 790, type: !93)
!2396 = !DILocation(line: 0, scope: !2384)
!2397 = !DILocation(line: 788, column: 37, scope: !2384)
!2398 = !DILocation(line: 789, column: 11, scope: !2384)
!2399 = !DILocation(line: 791, column: 43, scope: !2384)
!2400 = !DILocation(line: 791, column: 53, scope: !2384)
!2401 = !DILocation(line: 791, column: 60, scope: !2384)
!2402 = !DILocation(line: 792, column: 43, scope: !2384)
!2403 = !DILocation(line: 792, column: 58, scope: !2384)
!2404 = !DILocation(line: 790, column: 14, scope: !2384)
!2405 = !DILocation(line: 793, column: 9, scope: !2384)
!2406 = !DILocation(line: 794, column: 3, scope: !2384)
!2407 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !328, file: !328, line: 256, type: !2408, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !2412)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!93, !34, !93, !36, !93, !5, !38, !2410, !36, !36}
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2412 = !{!2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2437, !2438, !2439, !2440, !2441, !2444, !2445, !2451, !2454, !2455, !2462, !2465, !2466, !2467, !2468, !2469, !2470}
!2413 = !DILocalVariable(name: "buffer", arg: 1, scope: !2407, file: !328, line: 256, type: !34)
!2414 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2407, file: !328, line: 256, type: !93)
!2415 = !DILocalVariable(name: "arg", arg: 3, scope: !2407, file: !328, line: 257, type: !36)
!2416 = !DILocalVariable(name: "argsize", arg: 4, scope: !2407, file: !328, line: 257, type: !93)
!2417 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2407, file: !328, line: 258, type: !5)
!2418 = !DILocalVariable(name: "flags", arg: 6, scope: !2407, file: !328, line: 258, type: !38)
!2419 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2407, file: !328, line: 259, type: !2410)
!2420 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2407, file: !328, line: 260, type: !36)
!2421 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2407, file: !328, line: 261, type: !36)
!2422 = !DILocalVariable(name: "i", scope: !2407, file: !328, line: 263, type: !93)
!2423 = !DILocalVariable(name: "len", scope: !2407, file: !328, line: 264, type: !93)
!2424 = !DILocalVariable(name: "orig_buffersize", scope: !2407, file: !328, line: 265, type: !93)
!2425 = !DILocalVariable(name: "quote_string", scope: !2407, file: !328, line: 266, type: !36)
!2426 = !DILocalVariable(name: "quote_string_len", scope: !2407, file: !328, line: 267, type: !93)
!2427 = !DILocalVariable(name: "backslash_escapes", scope: !2407, file: !328, line: 268, type: !182)
!2428 = !DILocalVariable(name: "unibyte_locale", scope: !2407, file: !328, line: 269, type: !182)
!2429 = !DILocalVariable(name: "elide_outer_quotes", scope: !2407, file: !328, line: 270, type: !182)
!2430 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2407, file: !328, line: 271, type: !182)
!2431 = !DILocalVariable(name: "encountered_single_quote", scope: !2407, file: !328, line: 272, type: !182)
!2432 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2407, file: !328, line: 273, type: !182)
!2433 = !DILocalVariable(name: "c", scope: !2434, file: !328, line: 402, type: !192)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !328, line: 401, column: 5)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !328, line: 400, column: 3)
!2436 = distinct !DILexicalBlock(scope: !2407, file: !328, line: 400, column: 3)
!2437 = !DILocalVariable(name: "esc", scope: !2434, file: !328, line: 403, type: !192)
!2438 = !DILocalVariable(name: "is_right_quote", scope: !2434, file: !328, line: 404, type: !182)
!2439 = !DILocalVariable(name: "escaping", scope: !2434, file: !328, line: 405, type: !182)
!2440 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2434, file: !328, line: 406, type: !182)
!2441 = !DILocalVariable(name: "m", scope: !2442, file: !328, line: 610, type: !93)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !328, line: 608, column: 11)
!2443 = distinct !DILexicalBlock(scope: !2434, file: !328, line: 426, column: 9)
!2444 = !DILocalVariable(name: "printable", scope: !2442, file: !328, line: 612, type: !182)
!2445 = !DILocalVariable(name: "mbstate", scope: !2446, file: !328, line: 621, type: !2448)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !328, line: 620, column: 15)
!2447 = distinct !DILexicalBlock(scope: !2442, file: !328, line: 614, column: 17)
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2449, line: 6, baseType: !2450)
!2449 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !376, line: 21, baseType: !375)
!2451 = !DILocalVariable(name: "w", scope: !2452, file: !328, line: 631, type: !2453)
!2452 = distinct !DILexicalBlock(scope: !2446, file: !328, line: 630, column: 19)
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !94, line: 74, baseType: !38)
!2454 = !DILocalVariable(name: "bytes", scope: !2452, file: !328, line: 632, type: !93)
!2455 = !DILocalVariable(name: "j", scope: !2456, file: !328, line: 657, type: !93)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !328, line: 656, column: 27)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !328, line: 654, column: 29)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !328, line: 649, column: 23)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !328, line: 641, column: 30)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !328, line: 636, column: 30)
!2461 = distinct !DILexicalBlock(scope: !2452, file: !328, line: 634, column: 25)
!2462 = !DILocalVariable(name: "ilim", scope: !2463, file: !328, line: 684, type: !93)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !328, line: 681, column: 15)
!2464 = distinct !DILexicalBlock(scope: !2442, file: !328, line: 680, column: 17)
!2465 = !DILabel(scope: !2407, name: "process_input", file: !328, line: 314)
!2466 = !DILabel(scope: !2443, name: "c_and_shell_escape", file: !328, line: 512)
!2467 = !DILabel(scope: !2443, name: "c_escape", file: !328, line: 517)
!2468 = !DILabel(scope: !2434, name: "store_escape", file: !328, line: 719)
!2469 = !DILabel(scope: !2434, name: "store_c", file: !328, line: 722)
!2470 = !DILabel(scope: !2407, name: "force_outer_quoting_style", file: !328, line: 763)
!2471 = !DILocation(line: 0, scope: !2407)
!2472 = !DILocation(line: 269, column: 25, scope: !2407)
!2473 = !DILocation(line: 269, column: 36, scope: !2407)
!2474 = !DILocation(line: 270, column: 8, scope: !2407)
!2475 = !DILocation(line: 0, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2443, file: !328, line: 526, column: 15)
!2477 = !DILocation(line: 0, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !328, line: 462, column: 19)
!2479 = distinct !DILexicalBlock(scope: !2443, file: !328, line: 455, column: 13)
!2480 = !DILocation(line: 0, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !328, line: 449, column: 20)
!2482 = distinct !DILexicalBlock(scope: !2443, file: !328, line: 428, column: 15)
!2483 = !DILocation(line: 0, scope: !2446)
!2484 = !DILocation(line: 0, scope: !2452)
!2485 = !DILocation(line: 0, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2434, file: !328, line: 712, column: 11)
!2487 = !DILocation(line: 273, column: 3, scope: !2407)
!2488 = !DILocation(line: 265, column: 10, scope: !2407)
!2489 = !DILocation(line: 266, column: 15, scope: !2407)
!2490 = !DILocation(line: 267, column: 10, scope: !2407)
!2491 = !DILocation(line: 268, column: 8, scope: !2407)
!2492 = !DILocation(line: 271, column: 8, scope: !2407)
!2493 = !DILocation(line: 272, column: 8, scope: !2407)
!2494 = !DILocation(line: 273, column: 8, scope: !2407)
!2495 = !DILocation(line: 314, column: 2, scope: !2407)
!2496 = !DILocation(line: 316, column: 3, scope: !2407)
!2497 = !DILocation(line: 323, column: 11, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2407, file: !328, line: 317, column: 5)
!2499 = !DILocation(line: 323, column: 12, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2498, file: !328, line: 323, column: 11)
!2501 = !DILocation(line: 324, column: 9, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !328, line: 324, column: 9)
!2503 = distinct !DILexicalBlock(scope: !2500, file: !328, line: 324, column: 9)
!2504 = !DILocation(line: 324, column: 9, scope: !2503)
!2505 = !DILocation(line: 362, column: 26, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !328, line: 340, column: 11)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !328, line: 339, column: 13)
!2508 = distinct !DILexicalBlock(scope: !2498, file: !328, line: 338, column: 7)
!2509 = !DILocation(line: 363, column: 27, scope: !2506)
!2510 = !DILocation(line: 364, column: 11, scope: !2506)
!2511 = !DILocation(line: 365, column: 14, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2508, file: !328, line: 365, column: 13)
!2513 = !DILocation(line: 365, column: 13, scope: !2508)
!2514 = !DILocation(line: 366, column: 43, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !328, line: 366, column: 11)
!2516 = distinct !DILexicalBlock(scope: !2512, file: !328, line: 366, column: 11)
!2517 = !DILocation(line: 366, column: 11, scope: !2516)
!2518 = !DILocation(line: 367, column: 13, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !328, line: 367, column: 13)
!2520 = distinct !DILexicalBlock(scope: !2515, file: !328, line: 367, column: 13)
!2521 = !DILocation(line: 367, column: 13, scope: !2520)
!2522 = !DILocation(line: 366, column: 70, scope: !2515)
!2523 = distinct !{!2523, !2517, !2524}
!2524 = !DILocation(line: 367, column: 13, scope: !2516)
!2525 = !DILocation(line: 264, column: 10, scope: !2407)
!2526 = !DILocation(line: 370, column: 28, scope: !2508)
!2527 = !DILocation(line: 372, column: 7, scope: !2498)
!2528 = !DILocation(line: 376, column: 7, scope: !2498)
!2529 = !DILocation(line: 379, column: 7, scope: !2498)
!2530 = !DILocation(line: 381, column: 12, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2498, file: !328, line: 381, column: 11)
!2532 = !DILocation(line: 381, column: 11, scope: !2498)
!2533 = !DILocation(line: 386, column: 12, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2498, file: !328, line: 386, column: 11)
!2535 = !DILocation(line: 386, column: 11, scope: !2498)
!2536 = !DILocation(line: 387, column: 9, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !328, line: 387, column: 9)
!2538 = distinct !DILexicalBlock(scope: !2534, file: !328, line: 387, column: 9)
!2539 = !DILocation(line: 387, column: 9, scope: !2538)
!2540 = !DILocation(line: 394, column: 7, scope: !2498)
!2541 = !DILocation(line: 397, column: 7, scope: !2498)
!2542 = !DILocation(line: 0, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2434, file: !328, line: 408, column: 11)
!2544 = !DILocation(line: 0, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !328, line: 419, column: 15)
!2546 = distinct !DILexicalBlock(scope: !2543, file: !328, line: 418, column: 9)
!2547 = !DILocation(line: 0, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2443, file: !328, line: 556, column: 15)
!2549 = !DILocation(line: 0, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2443, file: !328, line: 548, column: 15)
!2551 = !DILocation(line: 0, scope: !2457)
!2552 = !DILocation(line: 0, scope: !2464)
!2553 = !DILocation(line: 0, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2443, file: !328, line: 509, column: 15)
!2555 = !DILocation(line: 400, column: 8, scope: !2436)
!2556 = !DILocation(line: 0, scope: !2436)
!2557 = !DILocation(line: 400, column: 27, scope: !2435)
!2558 = !DILocation(line: 400, column: 19, scope: !2435)
!2559 = !DILocation(line: 400, column: 41, scope: !2435)
!2560 = !DILocation(line: 400, column: 48, scope: !2435)
!2561 = !DILocation(line: 400, column: 3, scope: !2436)
!2562 = !DILocation(line: 400, column: 60, scope: !2435)
!2563 = !DILocation(line: 0, scope: !2434)
!2564 = !DILocation(line: 409, column: 11, scope: !2543)
!2565 = !DILocation(line: 411, column: 17, scope: !2543)
!2566 = !DILocation(line: 412, column: 39, scope: !2543)
!2567 = !DILocation(line: 416, column: 32, scope: !2543)
!2568 = !DILocation(line: 412, column: 19, scope: !2543)
!2569 = !DILocation(line: 412, column: 15, scope: !2543)
!2570 = !DILocation(line: 417, column: 11, scope: !2543)
!2571 = !DILocation(line: 417, column: 26, scope: !2543)
!2572 = !DILocation(line: 417, column: 14, scope: !2543)
!2573 = !DILocation(line: 417, column: 63, scope: !2543)
!2574 = !DILocation(line: 408, column: 11, scope: !2434)
!2575 = !DILocation(line: 424, column: 11, scope: !2434)
!2576 = !DILocation(line: 425, column: 7, scope: !2434)
!2577 = !DILocation(line: 428, column: 15, scope: !2443)
!2578 = !DILocation(line: 430, column: 15, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !328, line: 430, column: 15)
!2580 = distinct !DILexicalBlock(scope: !2482, file: !328, line: 429, column: 13)
!2581 = !DILocation(line: 430, column: 15, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2579, file: !328, line: 430, column: 15)
!2583 = !DILocation(line: 430, column: 15, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !328, line: 430, column: 15)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !328, line: 430, column: 15)
!2586 = distinct !DILexicalBlock(scope: !2582, file: !328, line: 430, column: 15)
!2587 = !DILocation(line: 430, column: 15, scope: !2585)
!2588 = !DILocation(line: 430, column: 15, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !328, line: 430, column: 15)
!2590 = distinct !DILexicalBlock(scope: !2586, file: !328, line: 430, column: 15)
!2591 = !DILocation(line: 430, column: 15, scope: !2590)
!2592 = !DILocation(line: 430, column: 15, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !328, line: 430, column: 15)
!2594 = distinct !DILexicalBlock(scope: !2586, file: !328, line: 430, column: 15)
!2595 = !DILocation(line: 430, column: 15, scope: !2594)
!2596 = !DILocation(line: 430, column: 15, scope: !2586)
!2597 = !DILocation(line: 430, column: 15, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !328, line: 430, column: 15)
!2599 = distinct !DILexicalBlock(scope: !2579, file: !328, line: 430, column: 15)
!2600 = !DILocation(line: 430, column: 15, scope: !2599)
!2601 = !DILocation(line: 438, column: 19, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2580, file: !328, line: 437, column: 19)
!2603 = !DILocation(line: 438, column: 24, scope: !2602)
!2604 = !DILocation(line: 438, column: 28, scope: !2602)
!2605 = !DILocation(line: 438, column: 38, scope: !2602)
!2606 = !DILocation(line: 438, column: 48, scope: !2602)
!2607 = !DILocation(line: 438, column: 59, scope: !2602)
!2608 = !DILocation(line: 440, column: 19, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !328, line: 440, column: 19)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !328, line: 440, column: 19)
!2611 = distinct !DILexicalBlock(scope: !2602, file: !328, line: 439, column: 17)
!2612 = !DILocation(line: 440, column: 19, scope: !2610)
!2613 = !DILocation(line: 441, column: 19, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !328, line: 441, column: 19)
!2615 = distinct !DILexicalBlock(scope: !2611, file: !328, line: 441, column: 19)
!2616 = !DILocation(line: 441, column: 19, scope: !2615)
!2617 = !DILocation(line: 442, column: 17, scope: !2611)
!2618 = !DILocation(line: 449, column: 20, scope: !2482)
!2619 = !DILocation(line: 454, column: 11, scope: !2443)
!2620 = !DILocation(line: 457, column: 19, scope: !2479)
!2621 = !DILocation(line: 463, column: 19, scope: !2478)
!2622 = !DILocation(line: 463, column: 24, scope: !2478)
!2623 = !DILocation(line: 463, column: 28, scope: !2478)
!2624 = !DILocation(line: 463, column: 38, scope: !2478)
!2625 = !DILocation(line: 463, column: 47, scope: !2478)
!2626 = !DILocation(line: 463, column: 41, scope: !2478)
!2627 = !DILocation(line: 463, column: 52, scope: !2478)
!2628 = !DILocation(line: 462, column: 19, scope: !2479)
!2629 = !DILocation(line: 464, column: 25, scope: !2478)
!2630 = !DILocation(line: 464, column: 17, scope: !2478)
!2631 = !DILocation(line: 471, column: 25, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2478, file: !328, line: 465, column: 19)
!2633 = !DILocation(line: 475, column: 21, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2635, file: !328, line: 475, column: 21)
!2635 = distinct !DILexicalBlock(scope: !2632, file: !328, line: 475, column: 21)
!2636 = !DILocation(line: 475, column: 21, scope: !2635)
!2637 = !DILocation(line: 476, column: 21, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !328, line: 476, column: 21)
!2639 = distinct !DILexicalBlock(scope: !2632, file: !328, line: 476, column: 21)
!2640 = !DILocation(line: 476, column: 21, scope: !2639)
!2641 = !DILocation(line: 477, column: 21, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !328, line: 477, column: 21)
!2643 = distinct !DILexicalBlock(scope: !2632, file: !328, line: 477, column: 21)
!2644 = !DILocation(line: 477, column: 21, scope: !2643)
!2645 = !DILocation(line: 478, column: 21, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !328, line: 478, column: 21)
!2647 = distinct !DILexicalBlock(scope: !2632, file: !328, line: 478, column: 21)
!2648 = !DILocation(line: 478, column: 21, scope: !2647)
!2649 = !DILocation(line: 479, column: 21, scope: !2632)
!2650 = !DILocation(line: 492, column: 31, scope: !2443)
!2651 = !DILocation(line: 493, column: 31, scope: !2443)
!2652 = !DILocation(line: 495, column: 31, scope: !2443)
!2653 = !DILocation(line: 496, column: 31, scope: !2443)
!2654 = !DILocation(line: 497, column: 31, scope: !2443)
!2655 = !DILocation(line: 500, column: 15, scope: !2443)
!2656 = !DILocation(line: 502, column: 19, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !328, line: 501, column: 13)
!2658 = distinct !DILexicalBlock(scope: !2443, file: !328, line: 500, column: 15)
!2659 = !DILocation(line: 509, column: 33, scope: !2554)
!2660 = !DILocation(line: 0, scope: !2443)
!2661 = !DILocation(line: 512, column: 9, scope: !2443)
!2662 = !DILocation(line: 514, column: 15, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2443, file: !328, line: 513, column: 15)
!2664 = !DILocation(line: 517, column: 9, scope: !2443)
!2665 = !DILocation(line: 518, column: 15, scope: !2443)
!2666 = !DILocation(line: 526, column: 15, scope: !2443)
!2667 = !DILocation(line: 526, column: 40, scope: !2476)
!2668 = !DILocation(line: 526, column: 47, scope: !2476)
!2669 = !DILocation(line: 526, column: 18, scope: !2476)
!2670 = !DILocation(line: 530, column: 17, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2443, file: !328, line: 530, column: 15)
!2672 = !DILocation(line: 530, column: 15, scope: !2443)
!2673 = !DILocation(line: 535, column: 11, scope: !2443)
!2674 = !DILocation(line: 549, column: 15, scope: !2550)
!2675 = !DILocation(line: 556, column: 15, scope: !2443)
!2676 = !DILocation(line: 558, column: 19, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2548, file: !328, line: 557, column: 13)
!2678 = !DILocation(line: 561, column: 19, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2677, file: !328, line: 561, column: 19)
!2680 = !DILocation(line: 561, column: 35, scope: !2679)
!2681 = !DILocation(line: 561, column: 30, scope: !2679)
!2682 = !DILocation(line: 570, column: 15, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !328, line: 570, column: 15)
!2684 = distinct !DILexicalBlock(scope: !2677, file: !328, line: 570, column: 15)
!2685 = !DILocation(line: 570, column: 15, scope: !2684)
!2686 = !DILocation(line: 571, column: 15, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !328, line: 571, column: 15)
!2688 = distinct !DILexicalBlock(scope: !2677, file: !328, line: 571, column: 15)
!2689 = !DILocation(line: 571, column: 15, scope: !2688)
!2690 = !DILocation(line: 572, column: 15, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !328, line: 572, column: 15)
!2692 = distinct !DILexicalBlock(scope: !2677, file: !328, line: 572, column: 15)
!2693 = !DILocation(line: 572, column: 15, scope: !2692)
!2694 = !DILocation(line: 574, column: 13, scope: !2677)
!2695 = !DILocation(line: 614, column: 17, scope: !2442)
!2696 = !DILocation(line: 0, scope: !2442)
!2697 = !DILocation(line: 617, column: 29, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2447, file: !328, line: 615, column: 15)
!2699 = !{!1418, !1418, i64 0}
!2700 = !DILocation(line: 617, column: 27, scope: !2698)
!2701 = !DILocation(line: 618, column: 15, scope: !2698)
!2702 = !DILocation(line: 621, column: 17, scope: !2446)
!2703 = !DILocation(line: 621, column: 27, scope: !2446)
!2704 = !DILocalVariable(name: "__dest", arg: 1, scope: !2705, file: !1401, line: 59, type: !91)
!2705 = distinct !DISubprogram(name: "memset", scope: !1401, file: !1401, line: 59, type: !2706, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !2708)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!91, !91, !38, !93}
!2708 = !{!2704, !2709, !2710}
!2709 = !DILocalVariable(name: "__ch", arg: 2, scope: !2705, file: !1401, line: 59, type: !38)
!2710 = !DILocalVariable(name: "__len", arg: 3, scope: !2705, file: !1401, line: 59, type: !93)
!2711 = !DILocation(line: 0, scope: !2705, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 622, column: 17, scope: !2446)
!2713 = !DILocation(line: 71, column: 10, scope: !2705, inlinedAt: !2712)
!2714 = !DILocation(line: 626, column: 29, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2446, file: !328, line: 626, column: 21)
!2716 = !DILocation(line: 626, column: 21, scope: !2446)
!2717 = !DILocation(line: 627, column: 29, scope: !2715)
!2718 = !DILocation(line: 627, column: 19, scope: !2715)
!2719 = !DILocation(line: 629, column: 17, scope: !2446)
!2720 = !DILocation(line: 624, column: 19, scope: !2446)
!2721 = !DILocation(line: 625, column: 27, scope: !2446)
!2722 = !DILocation(line: 631, column: 21, scope: !2452)
!2723 = !DILocation(line: 632, column: 56, scope: !2452)
!2724 = !DILocation(line: 632, column: 50, scope: !2452)
!2725 = !DILocation(line: 633, column: 53, scope: !2452)
!2726 = !DILocation(line: 632, column: 36, scope: !2452)
!2727 = !DILocation(line: 634, column: 25, scope: !2452)
!2728 = !DILocation(line: 644, column: 38, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2459, file: !328, line: 642, column: 23)
!2730 = !DILocation(line: 644, column: 48, scope: !2729)
!2731 = !DILocation(line: 644, column: 25, scope: !2729)
!2732 = !DILocation(line: 644, column: 51, scope: !2729)
!2733 = !DILocation(line: 645, column: 28, scope: !2729)
!2734 = !DILocation(line: 644, column: 34, scope: !2729)
!2735 = distinct !{!2735, !2731, !2733}
!2736 = !DILocation(line: 658, column: 43, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !328, line: 658, column: 29)
!2738 = distinct !DILexicalBlock(scope: !2456, file: !328, line: 658, column: 29)
!2739 = !DILocation(line: 655, column: 29, scope: !2457)
!2740 = !DILocation(line: 0, scope: !2456)
!2741 = !DILocation(line: 659, column: 49, scope: !2737)
!2742 = !DILocation(line: 659, column: 39, scope: !2737)
!2743 = !DILocation(line: 659, column: 31, scope: !2737)
!2744 = !DILocation(line: 658, column: 53, scope: !2737)
!2745 = !DILocation(line: 658, column: 29, scope: !2738)
!2746 = distinct !{!2746, !2745, !2747}
!2747 = !DILocation(line: 667, column: 33, scope: !2738)
!2748 = !DILocation(line: 674, column: 19, scope: !2446)
!2749 = !DILocation(line: 670, column: 41, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2458, file: !328, line: 670, column: 29)
!2751 = !DILocation(line: 670, column: 31, scope: !2750)
!2752 = !DILocation(line: 670, column: 29, scope: !2458)
!2753 = !DILocation(line: 672, column: 27, scope: !2458)
!2754 = !DILocation(line: 675, column: 26, scope: !2446)
!2755 = !DILocation(line: 675, column: 24, scope: !2446)
!2756 = !DILocation(line: 674, column: 19, scope: !2452)
!2757 = distinct !{!2757, !2719, !2758}
!2758 = !DILocation(line: 675, column: 44, scope: !2446)
!2759 = !DILocation(line: 676, column: 15, scope: !2447)
!2760 = !DILocation(line: 0, scope: !2447)
!2761 = !DILocation(line: 678, column: 40, scope: !2442)
!2762 = !DILocation(line: 680, column: 19, scope: !2464)
!2763 = !DILocation(line: 680, column: 45, scope: !2464)
!2764 = !DILocation(line: 680, column: 23, scope: !2464)
!2765 = !DILocation(line: 684, column: 33, scope: !2463)
!2766 = !DILocation(line: 0, scope: !2463)
!2767 = !DILocation(line: 686, column: 17, scope: !2463)
!2768 = !DILocation(line: 405, column: 12, scope: !2434)
!2769 = !DILocation(line: 688, column: 43, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !328, line: 688, column: 25)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !328, line: 687, column: 19)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !328, line: 686, column: 17)
!2773 = distinct !DILexicalBlock(scope: !2463, file: !328, line: 686, column: 17)
!2774 = !DILocation(line: 690, column: 25, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !328, line: 690, column: 25)
!2776 = distinct !DILexicalBlock(scope: !2770, file: !328, line: 689, column: 23)
!2777 = !DILocation(line: 690, column: 25, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2775, file: !328, line: 690, column: 25)
!2779 = !DILocation(line: 690, column: 25, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !328, line: 690, column: 25)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !328, line: 690, column: 25)
!2782 = distinct !DILexicalBlock(scope: !2778, file: !328, line: 690, column: 25)
!2783 = !DILocation(line: 690, column: 25, scope: !2781)
!2784 = !DILocation(line: 690, column: 25, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !328, line: 690, column: 25)
!2786 = distinct !DILexicalBlock(scope: !2782, file: !328, line: 690, column: 25)
!2787 = !DILocation(line: 690, column: 25, scope: !2786)
!2788 = !DILocation(line: 690, column: 25, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !328, line: 690, column: 25)
!2790 = distinct !DILexicalBlock(scope: !2782, file: !328, line: 690, column: 25)
!2791 = !DILocation(line: 690, column: 25, scope: !2790)
!2792 = !DILocation(line: 690, column: 25, scope: !2782)
!2793 = !DILocation(line: 690, column: 25, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !328, line: 690, column: 25)
!2795 = distinct !DILexicalBlock(scope: !2775, file: !328, line: 690, column: 25)
!2796 = !DILocation(line: 690, column: 25, scope: !2795)
!2797 = !DILocation(line: 691, column: 25, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !328, line: 691, column: 25)
!2799 = distinct !DILexicalBlock(scope: !2776, file: !328, line: 691, column: 25)
!2800 = !DILocation(line: 691, column: 25, scope: !2799)
!2801 = !DILocation(line: 692, column: 25, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !328, line: 692, column: 25)
!2803 = distinct !DILexicalBlock(scope: !2776, file: !328, line: 692, column: 25)
!2804 = !DILocation(line: 692, column: 25, scope: !2803)
!2805 = !DILocation(line: 693, column: 38, scope: !2776)
!2806 = !DILocation(line: 693, column: 33, scope: !2776)
!2807 = !DILocation(line: 694, column: 23, scope: !2776)
!2808 = !DILocation(line: 695, column: 30, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2770, file: !328, line: 695, column: 30)
!2810 = !DILocation(line: 695, column: 30, scope: !2770)
!2811 = !DILocation(line: 697, column: 25, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !328, line: 697, column: 25)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !328, line: 697, column: 25)
!2814 = distinct !DILexicalBlock(scope: !2809, file: !328, line: 696, column: 23)
!2815 = !DILocation(line: 697, column: 25, scope: !2813)
!2816 = !DILocation(line: 699, column: 23, scope: !2814)
!2817 = !DILocation(line: 700, column: 35, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2771, file: !328, line: 700, column: 25)
!2819 = !DILocation(line: 700, column: 30, scope: !2818)
!2820 = !DILocation(line: 700, column: 25, scope: !2771)
!2821 = !DILocation(line: 702, column: 21, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !328, line: 702, column: 21)
!2823 = distinct !DILexicalBlock(scope: !2771, file: !328, line: 702, column: 21)
!2824 = !DILocation(line: 702, column: 21, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !328, line: 702, column: 21)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !328, line: 702, column: 21)
!2827 = distinct !DILexicalBlock(scope: !2822, file: !328, line: 702, column: 21)
!2828 = !DILocation(line: 702, column: 21, scope: !2826)
!2829 = !DILocation(line: 702, column: 21, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !328, line: 702, column: 21)
!2831 = distinct !DILexicalBlock(scope: !2827, file: !328, line: 702, column: 21)
!2832 = !DILocation(line: 702, column: 21, scope: !2831)
!2833 = !DILocation(line: 702, column: 21, scope: !2827)
!2834 = !DILocation(line: 0, scope: !2771)
!2835 = !DILocation(line: 703, column: 21, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !328, line: 703, column: 21)
!2837 = distinct !DILexicalBlock(scope: !2771, file: !328, line: 703, column: 21)
!2838 = !DILocation(line: 703, column: 21, scope: !2837)
!2839 = !DILocation(line: 704, column: 25, scope: !2771)
!2840 = !DILocation(line: 686, column: 17, scope: !2772)
!2841 = distinct !{!2841, !2842, !2843}
!2842 = !DILocation(line: 686, column: 17, scope: !2773)
!2843 = !DILocation(line: 705, column: 19, scope: !2773)
!2844 = !DILocation(line: 416, column: 30, scope: !2543)
!2845 = !DILocation(line: 712, column: 34, scope: !2486)
!2846 = !DILocation(line: 715, column: 35, scope: !2486)
!2847 = !DILocation(line: 715, column: 17, scope: !2486)
!2848 = !DILocation(line: 715, column: 47, scope: !2486)
!2849 = !DILocation(line: 715, column: 65, scope: !2486)
!2850 = !DILocation(line: 716, column: 15, scope: !2486)
!2851 = !DILocation(line: 716, column: 11, scope: !2486)
!2852 = !DILocation(line: 712, column: 11, scope: !2434)
!2853 = !DILocation(line: 400, column: 10, scope: !2436)
!2854 = !DILocation(line: 719, column: 5, scope: !2434)
!2855 = !DILocation(line: 720, column: 7, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2434, file: !328, line: 720, column: 7)
!2857 = !DILocation(line: 720, column: 7, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2856, file: !328, line: 720, column: 7)
!2859 = !DILocation(line: 720, column: 7, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !328, line: 720, column: 7)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !328, line: 720, column: 7)
!2862 = distinct !DILexicalBlock(scope: !2858, file: !328, line: 720, column: 7)
!2863 = !DILocation(line: 720, column: 7, scope: !2861)
!2864 = !DILocation(line: 720, column: 7, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !328, line: 720, column: 7)
!2866 = distinct !DILexicalBlock(scope: !2862, file: !328, line: 720, column: 7)
!2867 = !DILocation(line: 720, column: 7, scope: !2866)
!2868 = !DILocation(line: 720, column: 7, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !328, line: 720, column: 7)
!2870 = distinct !DILexicalBlock(scope: !2862, file: !328, line: 720, column: 7)
!2871 = !DILocation(line: 720, column: 7, scope: !2870)
!2872 = !DILocation(line: 720, column: 7, scope: !2862)
!2873 = !DILocation(line: 720, column: 7, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !328, line: 720, column: 7)
!2875 = distinct !DILexicalBlock(scope: !2856, file: !328, line: 720, column: 7)
!2876 = !DILocation(line: 720, column: 7, scope: !2875)
!2877 = !DILocation(line: 722, column: 5, scope: !2434)
!2878 = !DILocation(line: 723, column: 7, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !328, line: 723, column: 7)
!2880 = distinct !DILexicalBlock(scope: !2434, file: !328, line: 723, column: 7)
!2881 = !DILocation(line: 424, column: 9, scope: !2434)
!2882 = !DILocation(line: 723, column: 7, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !328, line: 723, column: 7)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !328, line: 723, column: 7)
!2885 = distinct !DILexicalBlock(scope: !2879, file: !328, line: 723, column: 7)
!2886 = !DILocation(line: 723, column: 7, scope: !2884)
!2887 = !DILocation(line: 723, column: 7, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !328, line: 723, column: 7)
!2889 = distinct !DILexicalBlock(scope: !2885, file: !328, line: 723, column: 7)
!2890 = !DILocation(line: 723, column: 7, scope: !2889)
!2891 = !DILocation(line: 723, column: 7, scope: !2885)
!2892 = !DILocation(line: 724, column: 7, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !328, line: 724, column: 7)
!2894 = distinct !DILexicalBlock(scope: !2434, file: !328, line: 724, column: 7)
!2895 = !DILocation(line: 724, column: 7, scope: !2894)
!2896 = !DILocation(line: 726, column: 13, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2434, file: !328, line: 726, column: 11)
!2898 = !DILocation(line: 726, column: 11, scope: !2434)
!2899 = !DILocation(line: 728, column: 5, scope: !2435)
!2900 = !DILocation(line: 400, column: 75, scope: !2435)
!2901 = !DILocation(line: 400, column: 3, scope: !2435)
!2902 = distinct !{!2902, !2561, !2903}
!2903 = !DILocation(line: 728, column: 5, scope: !2436)
!2904 = !DILocation(line: 730, column: 11, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2407, file: !328, line: 730, column: 7)
!2906 = !DILocation(line: 730, column: 16, scope: !2905)
!2907 = !DILocation(line: 738, column: 51, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2407, file: !328, line: 738, column: 7)
!2909 = !DILocation(line: 739, column: 10, scope: !2908)
!2910 = !DILocation(line: 741, column: 11, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !328, line: 741, column: 11)
!2912 = distinct !DILexicalBlock(scope: !2908, file: !328, line: 740, column: 5)
!2913 = !DILocation(line: 741, column: 11, scope: !2912)
!2914 = !DILocation(line: 742, column: 16, scope: !2911)
!2915 = !DILocation(line: 742, column: 9, scope: !2911)
!2916 = !DILocation(line: 746, column: 18, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2911, file: !328, line: 746, column: 16)
!2918 = !DILocation(line: 746, column: 32, scope: !2917)
!2919 = !DILocation(line: 746, column: 29, scope: !2917)
!2920 = !DILocation(line: 755, column: 7, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2407, file: !328, line: 755, column: 7)
!2922 = !DILocation(line: 755, column: 20, scope: !2921)
!2923 = !DILocation(line: 756, column: 12, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !328, line: 756, column: 5)
!2925 = distinct !DILexicalBlock(scope: !2921, file: !328, line: 756, column: 5)
!2926 = !DILocation(line: 756, column: 5, scope: !2925)
!2927 = !DILocation(line: 757, column: 7, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !328, line: 757, column: 7)
!2929 = distinct !DILexicalBlock(scope: !2924, file: !328, line: 757, column: 7)
!2930 = !DILocation(line: 757, column: 7, scope: !2929)
!2931 = !DILocation(line: 756, column: 39, scope: !2924)
!2932 = distinct !{!2932, !2926, !2933}
!2933 = !DILocation(line: 757, column: 7, scope: !2925)
!2934 = !DILocation(line: 759, column: 11, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2407, file: !328, line: 759, column: 7)
!2936 = !DILocation(line: 759, column: 7, scope: !2407)
!2937 = !DILocation(line: 760, column: 5, scope: !2935)
!2938 = !DILocation(line: 760, column: 17, scope: !2935)
!2939 = !DILocation(line: 763, column: 2, scope: !2407)
!2940 = !DILocation(line: 766, column: 51, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2407, file: !328, line: 766, column: 7)
!2942 = !DILocation(line: 766, column: 21, scope: !2941)
!2943 = !DILocation(line: 770, column: 42, scope: !2407)
!2944 = !DILocation(line: 768, column: 10, scope: !2407)
!2945 = !DILocation(line: 768, column: 3, scope: !2407)
!2946 = !DILocation(line: 772, column: 1, scope: !2407)
!2947 = distinct !DISubprogram(name: "gettext_quote", scope: !328, file: !328, line: 207, type: !2948, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!36, !36, !5}
!2950 = !{!2951, !2952, !2953, !2954}
!2951 = !DILocalVariable(name: "msgid", arg: 1, scope: !2947, file: !328, line: 207, type: !36)
!2952 = !DILocalVariable(name: "s", arg: 2, scope: !2947, file: !328, line: 207, type: !5)
!2953 = !DILocalVariable(name: "translation", scope: !2947, file: !328, line: 209, type: !36)
!2954 = !DILocalVariable(name: "locale_code", scope: !2947, file: !328, line: 210, type: !36)
!2955 = !DILocation(line: 0, scope: !2947)
!2956 = !DILocation(line: 209, column: 29, scope: !2947)
!2957 = !DILocation(line: 212, column: 19, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2947, file: !328, line: 212, column: 7)
!2959 = !DILocation(line: 212, column: 7, scope: !2947)
!2960 = !DILocation(line: 233, column: 17, scope: !2947)
!2961 = !DILocalVariable(name: "s1", arg: 1, scope: !2962, file: !2963, line: 160, type: !36)
!2962 = distinct !DISubprogram(name: "strcaseeq0", scope: !2963, file: !2963, line: 160, type: !2964, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !2966)
!2963 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!38, !36, !36, !35, !35, !35, !35, !35, !35, !35, !35, !35}
!2966 = !{!2961, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976}
!2967 = !DILocalVariable(name: "s2", arg: 2, scope: !2962, file: !2963, line: 160, type: !36)
!2968 = !DILocalVariable(name: "s20", arg: 3, scope: !2962, file: !2963, line: 160, type: !35)
!2969 = !DILocalVariable(name: "s21", arg: 4, scope: !2962, file: !2963, line: 160, type: !35)
!2970 = !DILocalVariable(name: "s22", arg: 5, scope: !2962, file: !2963, line: 160, type: !35)
!2971 = !DILocalVariable(name: "s23", arg: 6, scope: !2962, file: !2963, line: 160, type: !35)
!2972 = !DILocalVariable(name: "s24", arg: 7, scope: !2962, file: !2963, line: 160, type: !35)
!2973 = !DILocalVariable(name: "s25", arg: 8, scope: !2962, file: !2963, line: 160, type: !35)
!2974 = !DILocalVariable(name: "s26", arg: 9, scope: !2962, file: !2963, line: 160, type: !35)
!2975 = !DILocalVariable(name: "s27", arg: 10, scope: !2962, file: !2963, line: 160, type: !35)
!2976 = !DILocalVariable(name: "s28", arg: 11, scope: !2962, file: !2963, line: 160, type: !35)
!2977 = !DILocation(line: 0, scope: !2962, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 234, column: 7, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2947, file: !328, line: 234, column: 7)
!2980 = !DILocation(line: 162, column: 7, scope: !2981, inlinedAt: !2978)
!2981 = distinct !DILexicalBlock(scope: !2962, file: !2963, line: 162, column: 7)
!2982 = !DILocalVariable(name: "s1", arg: 1, scope: !2983, file: !2963, line: 146, type: !36)
!2983 = distinct !DISubprogram(name: "strcaseeq1", scope: !2963, file: !2963, line: 146, type: !2984, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !2986)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!38, !36, !36, !35, !35, !35, !35, !35, !35, !35, !35}
!2986 = !{!2982, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995}
!2987 = !DILocalVariable(name: "s2", arg: 2, scope: !2983, file: !2963, line: 146, type: !36)
!2988 = !DILocalVariable(name: "s21", arg: 3, scope: !2983, file: !2963, line: 146, type: !35)
!2989 = !DILocalVariable(name: "s22", arg: 4, scope: !2983, file: !2963, line: 146, type: !35)
!2990 = !DILocalVariable(name: "s23", arg: 5, scope: !2983, file: !2963, line: 146, type: !35)
!2991 = !DILocalVariable(name: "s24", arg: 6, scope: !2983, file: !2963, line: 146, type: !35)
!2992 = !DILocalVariable(name: "s25", arg: 7, scope: !2983, file: !2963, line: 146, type: !35)
!2993 = !DILocalVariable(name: "s26", arg: 8, scope: !2983, file: !2963, line: 146, type: !35)
!2994 = !DILocalVariable(name: "s27", arg: 9, scope: !2983, file: !2963, line: 146, type: !35)
!2995 = !DILocalVariable(name: "s28", arg: 10, scope: !2983, file: !2963, line: 146, type: !35)
!2996 = !DILocation(line: 0, scope: !2983, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 167, column: 16, scope: !2998, inlinedAt: !2978)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !2963, line: 164, column: 11)
!2999 = distinct !DILexicalBlock(scope: !2981, file: !2963, line: 163, column: 5)
!3000 = !DILocation(line: 148, column: 7, scope: !3001, inlinedAt: !2997)
!3001 = distinct !DILexicalBlock(scope: !2983, file: !2963, line: 148, column: 7)
!3002 = !DILocalVariable(name: "s1", arg: 1, scope: !3003, file: !2963, line: 132, type: !36)
!3003 = distinct !DISubprogram(name: "strcaseeq2", scope: !2963, file: !2963, line: 132, type: !3004, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3006)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!38, !36, !36, !35, !35, !35, !35, !35, !35, !35}
!3006 = !{!3002, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014}
!3007 = !DILocalVariable(name: "s2", arg: 2, scope: !3003, file: !2963, line: 132, type: !36)
!3008 = !DILocalVariable(name: "s22", arg: 3, scope: !3003, file: !2963, line: 132, type: !35)
!3009 = !DILocalVariable(name: "s23", arg: 4, scope: !3003, file: !2963, line: 132, type: !35)
!3010 = !DILocalVariable(name: "s24", arg: 5, scope: !3003, file: !2963, line: 132, type: !35)
!3011 = !DILocalVariable(name: "s25", arg: 6, scope: !3003, file: !2963, line: 132, type: !35)
!3012 = !DILocalVariable(name: "s26", arg: 7, scope: !3003, file: !2963, line: 132, type: !35)
!3013 = !DILocalVariable(name: "s27", arg: 8, scope: !3003, file: !2963, line: 132, type: !35)
!3014 = !DILocalVariable(name: "s28", arg: 9, scope: !3003, file: !2963, line: 132, type: !35)
!3015 = !DILocation(line: 0, scope: !3003, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 153, column: 16, scope: !3017, inlinedAt: !2997)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !2963, line: 150, column: 11)
!3018 = distinct !DILexicalBlock(scope: !3001, file: !2963, line: 149, column: 5)
!3019 = !DILocation(line: 134, column: 7, scope: !3020, inlinedAt: !3016)
!3020 = distinct !DILexicalBlock(scope: !3003, file: !2963, line: 134, column: 7)
!3021 = !DILocalVariable(name: "s1", arg: 1, scope: !3022, file: !2963, line: 118, type: !36)
!3022 = distinct !DISubprogram(name: "strcaseeq3", scope: !2963, file: !2963, line: 118, type: !3023, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!38, !36, !36, !35, !35, !35, !35, !35, !35}
!3025 = !{!3021, !3026, !3027, !3028, !3029, !3030, !3031, !3032}
!3026 = !DILocalVariable(name: "s2", arg: 2, scope: !3022, file: !2963, line: 118, type: !36)
!3027 = !DILocalVariable(name: "s23", arg: 3, scope: !3022, file: !2963, line: 118, type: !35)
!3028 = !DILocalVariable(name: "s24", arg: 4, scope: !3022, file: !2963, line: 118, type: !35)
!3029 = !DILocalVariable(name: "s25", arg: 5, scope: !3022, file: !2963, line: 118, type: !35)
!3030 = !DILocalVariable(name: "s26", arg: 6, scope: !3022, file: !2963, line: 118, type: !35)
!3031 = !DILocalVariable(name: "s27", arg: 7, scope: !3022, file: !2963, line: 118, type: !35)
!3032 = !DILocalVariable(name: "s28", arg: 8, scope: !3022, file: !2963, line: 118, type: !35)
!3033 = !DILocation(line: 0, scope: !3022, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 139, column: 16, scope: !3035, inlinedAt: !3016)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !2963, line: 136, column: 11)
!3036 = distinct !DILexicalBlock(scope: !3020, file: !2963, line: 135, column: 5)
!3037 = !DILocation(line: 120, column: 7, scope: !3038, inlinedAt: !3034)
!3038 = distinct !DILexicalBlock(scope: !3022, file: !2963, line: 120, column: 7)
!3039 = !DILocation(line: 120, column: 7, scope: !3022, inlinedAt: !3034)
!3040 = !DILocalVariable(name: "s1", arg: 1, scope: !3041, file: !2963, line: 104, type: !36)
!3041 = distinct !DISubprogram(name: "strcaseeq4", scope: !2963, file: !2963, line: 104, type: !3042, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3044)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!38, !36, !36, !35, !35, !35, !35, !35}
!3044 = !{!3040, !3045, !3046, !3047, !3048, !3049, !3050}
!3045 = !DILocalVariable(name: "s2", arg: 2, scope: !3041, file: !2963, line: 104, type: !36)
!3046 = !DILocalVariable(name: "s24", arg: 3, scope: !3041, file: !2963, line: 104, type: !35)
!3047 = !DILocalVariable(name: "s25", arg: 4, scope: !3041, file: !2963, line: 104, type: !35)
!3048 = !DILocalVariable(name: "s26", arg: 5, scope: !3041, file: !2963, line: 104, type: !35)
!3049 = !DILocalVariable(name: "s27", arg: 6, scope: !3041, file: !2963, line: 104, type: !35)
!3050 = !DILocalVariable(name: "s28", arg: 7, scope: !3041, file: !2963, line: 104, type: !35)
!3051 = !DILocation(line: 0, scope: !3041, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 125, column: 16, scope: !3053, inlinedAt: !3034)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !2963, line: 122, column: 11)
!3054 = distinct !DILexicalBlock(scope: !3038, file: !2963, line: 121, column: 5)
!3055 = !DILocation(line: 106, column: 7, scope: !3056, inlinedAt: !3052)
!3056 = distinct !DILexicalBlock(scope: !3041, file: !2963, line: 106, column: 7)
!3057 = !DILocation(line: 106, column: 7, scope: !3041, inlinedAt: !3052)
!3058 = !DILocalVariable(name: "s1", arg: 1, scope: !3059, file: !2963, line: 90, type: !36)
!3059 = distinct !DISubprogram(name: "strcaseeq5", scope: !2963, file: !2963, line: 90, type: !3060, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3062)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!38, !36, !36, !35, !35, !35, !35}
!3062 = !{!3058, !3063, !3064, !3065, !3066, !3067}
!3063 = !DILocalVariable(name: "s2", arg: 2, scope: !3059, file: !2963, line: 90, type: !36)
!3064 = !DILocalVariable(name: "s25", arg: 3, scope: !3059, file: !2963, line: 90, type: !35)
!3065 = !DILocalVariable(name: "s26", arg: 4, scope: !3059, file: !2963, line: 90, type: !35)
!3066 = !DILocalVariable(name: "s27", arg: 5, scope: !3059, file: !2963, line: 90, type: !35)
!3067 = !DILocalVariable(name: "s28", arg: 6, scope: !3059, file: !2963, line: 90, type: !35)
!3068 = !DILocation(line: 0, scope: !3059, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 111, column: 16, scope: !3070, inlinedAt: !3052)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !2963, line: 108, column: 11)
!3071 = distinct !DILexicalBlock(scope: !3056, file: !2963, line: 107, column: 5)
!3072 = !DILocation(line: 92, column: 7, scope: !3073, inlinedAt: !3069)
!3073 = distinct !DILexicalBlock(scope: !3059, file: !2963, line: 92, column: 7)
!3074 = !DILocation(line: 92, column: 7, scope: !3059, inlinedAt: !3069)
!3075 = !DILocation(line: 235, column: 12, scope: !2979)
!3076 = !DILocation(line: 235, column: 21, scope: !2979)
!3077 = !DILocation(line: 235, column: 5, scope: !2979)
!3078 = !DILocation(line: 0, scope: !2983, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 167, column: 16, scope: !2998, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 236, column: 7, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !2947, file: !328, line: 236, column: 7)
!3082 = !DILocation(line: 148, column: 7, scope: !3001, inlinedAt: !3079)
!3083 = !DILocation(line: 0, scope: !3003, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 153, column: 16, scope: !3017, inlinedAt: !3079)
!3085 = !DILocation(line: 134, column: 7, scope: !3020, inlinedAt: !3084)
!3086 = !DILocation(line: 134, column: 7, scope: !3003, inlinedAt: !3084)
!3087 = !DILocation(line: 0, scope: !3022, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 139, column: 16, scope: !3035, inlinedAt: !3084)
!3089 = !DILocation(line: 120, column: 7, scope: !3038, inlinedAt: !3088)
!3090 = !DILocation(line: 120, column: 7, scope: !3022, inlinedAt: !3088)
!3091 = !DILocation(line: 0, scope: !3041, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 125, column: 16, scope: !3053, inlinedAt: !3088)
!3093 = !DILocation(line: 106, column: 7, scope: !3056, inlinedAt: !3092)
!3094 = !DILocation(line: 106, column: 7, scope: !3041, inlinedAt: !3092)
!3095 = !DILocation(line: 0, scope: !3059, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 111, column: 16, scope: !3070, inlinedAt: !3092)
!3097 = !DILocation(line: 92, column: 7, scope: !3073, inlinedAt: !3096)
!3098 = !DILocation(line: 92, column: 7, scope: !3059, inlinedAt: !3096)
!3099 = !DILocalVariable(name: "s1", arg: 1, scope: !3100, file: !2963, line: 76, type: !36)
!3100 = distinct !DISubprogram(name: "strcaseeq6", scope: !2963, file: !2963, line: 76, type: !3101, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!38, !36, !36, !35, !35, !35}
!3103 = !{!3099, !3104, !3105, !3106, !3107}
!3104 = !DILocalVariable(name: "s2", arg: 2, scope: !3100, file: !2963, line: 76, type: !36)
!3105 = !DILocalVariable(name: "s26", arg: 3, scope: !3100, file: !2963, line: 76, type: !35)
!3106 = !DILocalVariable(name: "s27", arg: 4, scope: !3100, file: !2963, line: 76, type: !35)
!3107 = !DILocalVariable(name: "s28", arg: 5, scope: !3100, file: !2963, line: 76, type: !35)
!3108 = !DILocation(line: 0, scope: !3100, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 97, column: 16, scope: !3110, inlinedAt: !3096)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !2963, line: 94, column: 11)
!3111 = distinct !DILexicalBlock(scope: !3073, file: !2963, line: 93, column: 5)
!3112 = !DILocation(line: 78, column: 7, scope: !3113, inlinedAt: !3109)
!3113 = distinct !DILexicalBlock(scope: !3100, file: !2963, line: 78, column: 7)
!3114 = !DILocation(line: 78, column: 7, scope: !3100, inlinedAt: !3109)
!3115 = !DILocalVariable(name: "s1", arg: 1, scope: !3116, file: !2963, line: 62, type: !36)
!3116 = distinct !DISubprogram(name: "strcaseeq7", scope: !2963, file: !2963, line: 62, type: !3117, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3119)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!38, !36, !36, !35, !35}
!3119 = !{!3115, !3120, !3121, !3122}
!3120 = !DILocalVariable(name: "s2", arg: 2, scope: !3116, file: !2963, line: 62, type: !36)
!3121 = !DILocalVariable(name: "s27", arg: 3, scope: !3116, file: !2963, line: 62, type: !35)
!3122 = !DILocalVariable(name: "s28", arg: 4, scope: !3116, file: !2963, line: 62, type: !35)
!3123 = !DILocation(line: 0, scope: !3116, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 83, column: 16, scope: !3125, inlinedAt: !3109)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !2963, line: 80, column: 11)
!3126 = distinct !DILexicalBlock(scope: !3113, file: !2963, line: 79, column: 5)
!3127 = !DILocation(line: 64, column: 7, scope: !3128, inlinedAt: !3124)
!3128 = distinct !DILexicalBlock(scope: !3116, file: !2963, line: 64, column: 7)
!3129 = !DILocation(line: 236, column: 7, scope: !2947)
!3130 = !DILocation(line: 237, column: 12, scope: !3081)
!3131 = !DILocation(line: 237, column: 21, scope: !3081)
!3132 = !DILocation(line: 237, column: 5, scope: !3081)
!3133 = !DILocation(line: 239, column: 13, scope: !2947)
!3134 = !DILocation(line: 239, column: 11, scope: !2947)
!3135 = !DILocation(line: 239, column: 3, scope: !2947)
!3136 = !DILocation(line: 240, column: 1, scope: !2947)
!3137 = distinct !DISubprogram(name: "quotearg_alloc", scope: !328, file: !328, line: 799, type: !3138, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3140)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!34, !36, !93, !357}
!3140 = !{!3141, !3142, !3143}
!3141 = !DILocalVariable(name: "arg", arg: 1, scope: !3137, file: !328, line: 799, type: !36)
!3142 = !DILocalVariable(name: "argsize", arg: 2, scope: !3137, file: !328, line: 799, type: !93)
!3143 = !DILocalVariable(name: "o", arg: 3, scope: !3137, file: !328, line: 800, type: !357)
!3144 = !DILocation(line: 0, scope: !3137)
!3145 = !DILocalVariable(name: "arg", arg: 1, scope: !3146, file: !328, line: 812, type: !36)
!3146 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !328, file: !328, line: 812, type: !3147, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3149)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!34, !36, !93, !538, !357}
!3149 = !{!3145, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157}
!3150 = !DILocalVariable(name: "argsize", arg: 2, scope: !3146, file: !328, line: 812, type: !93)
!3151 = !DILocalVariable(name: "size", arg: 3, scope: !3146, file: !328, line: 812, type: !538)
!3152 = !DILocalVariable(name: "o", arg: 4, scope: !3146, file: !328, line: 813, type: !357)
!3153 = !DILocalVariable(name: "p", scope: !3146, file: !328, line: 815, type: !357)
!3154 = !DILocalVariable(name: "e", scope: !3146, file: !328, line: 816, type: !38)
!3155 = !DILocalVariable(name: "flags", scope: !3146, file: !328, line: 818, type: !38)
!3156 = !DILocalVariable(name: "bufsize", scope: !3146, file: !328, line: 819, type: !93)
!3157 = !DILocalVariable(name: "buf", scope: !3146, file: !328, line: 823, type: !34)
!3158 = !DILocation(line: 0, scope: !3146, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 802, column: 10, scope: !3137)
!3160 = !DILocation(line: 815, column: 37, scope: !3146, inlinedAt: !3159)
!3161 = !DILocation(line: 816, column: 11, scope: !3146, inlinedAt: !3159)
!3162 = !DILocation(line: 818, column: 18, scope: !3146, inlinedAt: !3159)
!3163 = !DILocation(line: 818, column: 24, scope: !3146, inlinedAt: !3159)
!3164 = !DILocation(line: 819, column: 69, scope: !3146, inlinedAt: !3159)
!3165 = !DILocation(line: 820, column: 53, scope: !3146, inlinedAt: !3159)
!3166 = !DILocation(line: 821, column: 49, scope: !3146, inlinedAt: !3159)
!3167 = !DILocation(line: 822, column: 49, scope: !3146, inlinedAt: !3159)
!3168 = !DILocation(line: 819, column: 20, scope: !3146, inlinedAt: !3159)
!3169 = !DILocation(line: 822, column: 62, scope: !3146, inlinedAt: !3159)
!3170 = !DILocalVariable(name: "n", arg: 1, scope: !3171, file: !164, line: 216, type: !93)
!3171 = distinct !DISubprogram(name: "xcharalloc", scope: !164, file: !164, line: 216, type: !3172, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3174)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!34, !93}
!3174 = !{!3170}
!3175 = !DILocation(line: 0, scope: !3171, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 823, column: 15, scope: !3146, inlinedAt: !3159)
!3177 = !DILocation(line: 218, column: 10, scope: !3171, inlinedAt: !3176)
!3178 = !DILocation(line: 824, column: 60, scope: !3146, inlinedAt: !3159)
!3179 = !DILocation(line: 826, column: 32, scope: !3146, inlinedAt: !3159)
!3180 = !DILocation(line: 826, column: 47, scope: !3146, inlinedAt: !3159)
!3181 = !DILocation(line: 824, column: 3, scope: !3146, inlinedAt: !3159)
!3182 = !DILocation(line: 827, column: 9, scope: !3146, inlinedAt: !3159)
!3183 = !DILocation(line: 802, column: 3, scope: !3137)
!3184 = !DILocation(line: 0, scope: !3146)
!3185 = !DILocation(line: 815, column: 37, scope: !3146)
!3186 = !DILocation(line: 816, column: 11, scope: !3146)
!3187 = !DILocation(line: 818, column: 18, scope: !3146)
!3188 = !DILocation(line: 818, column: 27, scope: !3146)
!3189 = !DILocation(line: 818, column: 24, scope: !3146)
!3190 = !DILocation(line: 819, column: 69, scope: !3146)
!3191 = !DILocation(line: 820, column: 53, scope: !3146)
!3192 = !DILocation(line: 821, column: 49, scope: !3146)
!3193 = !DILocation(line: 822, column: 49, scope: !3146)
!3194 = !DILocation(line: 819, column: 20, scope: !3146)
!3195 = !DILocation(line: 822, column: 62, scope: !3146)
!3196 = !DILocation(line: 0, scope: !3171, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 823, column: 15, scope: !3146)
!3198 = !DILocation(line: 218, column: 10, scope: !3171, inlinedAt: !3197)
!3199 = !DILocation(line: 824, column: 60, scope: !3146)
!3200 = !DILocation(line: 826, column: 32, scope: !3146)
!3201 = !DILocation(line: 826, column: 47, scope: !3146)
!3202 = !DILocation(line: 824, column: 3, scope: !3146)
!3203 = !DILocation(line: 827, column: 9, scope: !3146)
!3204 = !DILocation(line: 828, column: 7, scope: !3146)
!3205 = !DILocation(line: 829, column: 11, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3146, file: !328, line: 828, column: 7)
!3207 = !DILocation(line: 829, column: 5, scope: !3206)
!3208 = !DILocation(line: 830, column: 3, scope: !3146)
!3209 = distinct !DISubprogram(name: "quotearg_free", scope: !328, file: !328, line: 848, type: !120, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3210)
!3210 = !{!3211, !3212}
!3211 = !DILocalVariable(name: "sv", scope: !3209, file: !328, line: 850, type: !425)
!3212 = !DILocalVariable(name: "i", scope: !3209, file: !328, line: 851, type: !38)
!3213 = !DILocation(line: 850, column: 24, scope: !3209)
!3214 = !DILocation(line: 0, scope: !3209)
!3215 = !DILocation(line: 852, column: 19, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !328, line: 852, column: 3)
!3217 = distinct !DILexicalBlock(scope: !3209, file: !328, line: 852, column: 3)
!3218 = !DILocation(line: 852, column: 17, scope: !3216)
!3219 = !DILocation(line: 852, column: 3, scope: !3217)
!3220 = !DILocation(line: 853, column: 17, scope: !3216)
!3221 = !{!3222, !1202, i64 8}
!3222 = !{!"slotvec", !1379, i64 0, !1202, i64 8}
!3223 = !DILocation(line: 853, column: 5, scope: !3216)
!3224 = !DILocation(line: 852, column: 28, scope: !3216)
!3225 = distinct !{!3225, !3219, !3226}
!3226 = !DILocation(line: 853, column: 20, scope: !3217)
!3227 = !DILocation(line: 854, column: 13, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3209, file: !328, line: 854, column: 7)
!3229 = !DILocation(line: 854, column: 17, scope: !3228)
!3230 = !DILocation(line: 854, column: 7, scope: !3209)
!3231 = !DILocation(line: 856, column: 7, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3228, file: !328, line: 855, column: 5)
!3233 = !DILocation(line: 857, column: 21, scope: !3232)
!3234 = !{!3222, !1379, i64 0}
!3235 = !DILocation(line: 858, column: 20, scope: !3232)
!3236 = !DILocation(line: 859, column: 5, scope: !3232)
!3237 = !DILocation(line: 860, column: 10, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3209, file: !328, line: 860, column: 7)
!3239 = !DILocation(line: 860, column: 7, scope: !3209)
!3240 = !DILocation(line: 862, column: 13, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3238, file: !328, line: 861, column: 5)
!3242 = !DILocation(line: 862, column: 7, scope: !3241)
!3243 = !DILocation(line: 863, column: 15, scope: !3241)
!3244 = !DILocation(line: 864, column: 5, scope: !3241)
!3245 = !DILocation(line: 865, column: 10, scope: !3209)
!3246 = !DILocation(line: 866, column: 1, scope: !3209)
!3247 = distinct !DISubprogram(name: "quotearg_n", scope: !328, file: !328, line: 931, type: !107, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3248)
!3248 = !{!3249, !3250}
!3249 = !DILocalVariable(name: "n", arg: 1, scope: !3247, file: !328, line: 931, type: !38)
!3250 = !DILocalVariable(name: "arg", arg: 2, scope: !3247, file: !328, line: 931, type: !36)
!3251 = !DILocation(line: 0, scope: !3247)
!3252 = !DILocation(line: 933, column: 10, scope: !3247)
!3253 = !DILocation(line: 933, column: 3, scope: !3247)
!3254 = distinct !DISubprogram(name: "quotearg_n_options", scope: !328, file: !328, line: 877, type: !3255, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3257)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!34, !38, !36, !93, !357}
!3257 = !{!3258, !3259, !3260, !3261, !3262, !3263, !3264, !3267, !3268, !3270, !3271, !3272}
!3258 = !DILocalVariable(name: "n", arg: 1, scope: !3254, file: !328, line: 877, type: !38)
!3259 = !DILocalVariable(name: "arg", arg: 2, scope: !3254, file: !328, line: 877, type: !36)
!3260 = !DILocalVariable(name: "argsize", arg: 3, scope: !3254, file: !328, line: 877, type: !93)
!3261 = !DILocalVariable(name: "options", arg: 4, scope: !3254, file: !328, line: 878, type: !357)
!3262 = !DILocalVariable(name: "e", scope: !3254, file: !328, line: 880, type: !38)
!3263 = !DILocalVariable(name: "sv", scope: !3254, file: !328, line: 882, type: !425)
!3264 = !DILocalVariable(name: "preallocated", scope: !3265, file: !328, line: 889, type: !182)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !328, line: 888, column: 5)
!3266 = distinct !DILexicalBlock(scope: !3254, file: !328, line: 887, column: 7)
!3267 = !DILocalVariable(name: "nmax", scope: !3265, file: !328, line: 890, type: !38)
!3268 = !DILocalVariable(name: "size", scope: !3269, file: !328, line: 903, type: !93)
!3269 = distinct !DILexicalBlock(scope: !3254, file: !328, line: 902, column: 3)
!3270 = !DILocalVariable(name: "val", scope: !3269, file: !328, line: 904, type: !34)
!3271 = !DILocalVariable(name: "flags", scope: !3269, file: !328, line: 906, type: !38)
!3272 = !DILocalVariable(name: "qsize", scope: !3269, file: !328, line: 907, type: !93)
!3273 = !DILocation(line: 0, scope: !3254)
!3274 = !DILocation(line: 880, column: 11, scope: !3254)
!3275 = !DILocation(line: 882, column: 24, scope: !3254)
!3276 = !DILocation(line: 884, column: 9, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3254, file: !328, line: 884, column: 7)
!3278 = !DILocation(line: 884, column: 7, scope: !3254)
!3279 = !DILocation(line: 885, column: 5, scope: !3277)
!3280 = !DILocation(line: 887, column: 7, scope: !3266)
!3281 = !DILocation(line: 887, column: 14, scope: !3266)
!3282 = !DILocation(line: 887, column: 7, scope: !3254)
!3283 = !DILocation(line: 889, column: 31, scope: !3265)
!3284 = !DILocation(line: 0, scope: !3265)
!3285 = !DILocation(line: 892, column: 16, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3265, file: !328, line: 892, column: 11)
!3287 = !DILocation(line: 892, column: 11, scope: !3265)
!3288 = !DILocation(line: 893, column: 9, scope: !3286)
!3289 = !DILocation(line: 895, column: 32, scope: !3265)
!3290 = !DILocation(line: 895, column: 61, scope: !3265)
!3291 = !DILocation(line: 895, column: 58, scope: !3265)
!3292 = !DILocation(line: 895, column: 66, scope: !3265)
!3293 = !DILocation(line: 895, column: 22, scope: !3265)
!3294 = !DILocation(line: 895, column: 15, scope: !3265)
!3295 = !DILocation(line: 896, column: 11, scope: !3265)
!3296 = !DILocation(line: 897, column: 15, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3265, file: !328, line: 896, column: 11)
!3298 = !{i64 0, i64 8, !1378, i64 8, i64 8, !1201}
!3299 = !DILocation(line: 897, column: 9, scope: !3297)
!3300 = !DILocation(line: 898, column: 20, scope: !3265)
!3301 = !DILocation(line: 898, column: 18, scope: !3265)
!3302 = !DILocation(line: 898, column: 15, scope: !3265)
!3303 = !DILocation(line: 898, column: 38, scope: !3265)
!3304 = !DILocation(line: 898, column: 31, scope: !3265)
!3305 = !DILocation(line: 898, column: 48, scope: !3265)
!3306 = !DILocation(line: 0, scope: !2705, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 898, column: 7, scope: !3265)
!3308 = !DILocation(line: 71, column: 10, scope: !2705, inlinedAt: !3307)
!3309 = !DILocation(line: 899, column: 14, scope: !3265)
!3310 = !DILocation(line: 900, column: 5, scope: !3265)
!3311 = !DILocation(line: 903, column: 19, scope: !3269)
!3312 = !DILocation(line: 903, column: 25, scope: !3269)
!3313 = !DILocation(line: 0, scope: !3269)
!3314 = !DILocation(line: 904, column: 23, scope: !3269)
!3315 = !DILocation(line: 906, column: 26, scope: !3269)
!3316 = !DILocation(line: 906, column: 32, scope: !3269)
!3317 = !DILocation(line: 908, column: 55, scope: !3269)
!3318 = !DILocation(line: 909, column: 46, scope: !3269)
!3319 = !DILocation(line: 910, column: 55, scope: !3269)
!3320 = !DILocation(line: 911, column: 55, scope: !3269)
!3321 = !DILocation(line: 907, column: 20, scope: !3269)
!3322 = !DILocation(line: 913, column: 14, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3269, file: !328, line: 913, column: 9)
!3324 = !DILocation(line: 913, column: 9, scope: !3269)
!3325 = !DILocation(line: 915, column: 35, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3323, file: !328, line: 914, column: 7)
!3327 = !DILocation(line: 915, column: 20, scope: !3326)
!3328 = !DILocation(line: 916, column: 17, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3326, file: !328, line: 916, column: 13)
!3330 = !DILocation(line: 916, column: 13, scope: !3326)
!3331 = !DILocation(line: 917, column: 11, scope: !3329)
!3332 = !DILocation(line: 0, scope: !3171, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 918, column: 27, scope: !3326)
!3334 = !DILocation(line: 218, column: 10, scope: !3171, inlinedAt: !3333)
!3335 = !DILocation(line: 918, column: 19, scope: !3326)
!3336 = !DILocation(line: 919, column: 69, scope: !3326)
!3337 = !DILocation(line: 921, column: 44, scope: !3326)
!3338 = !DILocation(line: 922, column: 44, scope: !3326)
!3339 = !DILocation(line: 919, column: 9, scope: !3326)
!3340 = !DILocation(line: 923, column: 7, scope: !3326)
!3341 = !DILocation(line: 925, column: 11, scope: !3269)
!3342 = !DILocation(line: 926, column: 5, scope: !3269)
!3343 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !328, file: !328, line: 937, type: !3344, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3346)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!34, !38, !36, !93}
!3346 = !{!3347, !3348, !3349}
!3347 = !DILocalVariable(name: "n", arg: 1, scope: !3343, file: !328, line: 937, type: !38)
!3348 = !DILocalVariable(name: "arg", arg: 2, scope: !3343, file: !328, line: 937, type: !36)
!3349 = !DILocalVariable(name: "argsize", arg: 3, scope: !3343, file: !328, line: 937, type: !93)
!3350 = !DILocation(line: 0, scope: !3343)
!3351 = !DILocation(line: 939, column: 10, scope: !3343)
!3352 = !DILocation(line: 939, column: 3, scope: !3343)
!3353 = distinct !DISubprogram(name: "quotearg", scope: !328, file: !328, line: 943, type: !113, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3354)
!3354 = !{!3355}
!3355 = !DILocalVariable(name: "arg", arg: 1, scope: !3353, file: !328, line: 943, type: !36)
!3356 = !DILocation(line: 0, scope: !3353)
!3357 = !DILocation(line: 0, scope: !3247, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 945, column: 10, scope: !3353)
!3359 = !DILocation(line: 933, column: 10, scope: !3247, inlinedAt: !3358)
!3360 = !DILocation(line: 945, column: 3, scope: !3353)
!3361 = distinct !DISubprogram(name: "quotearg_mem", scope: !328, file: !328, line: 949, type: !3362, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3364)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!34, !36, !93}
!3364 = !{!3365, !3366}
!3365 = !DILocalVariable(name: "arg", arg: 1, scope: !3361, file: !328, line: 949, type: !36)
!3366 = !DILocalVariable(name: "argsize", arg: 2, scope: !3361, file: !328, line: 949, type: !93)
!3367 = !DILocation(line: 0, scope: !3361)
!3368 = !DILocation(line: 0, scope: !3343, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 951, column: 10, scope: !3361)
!3370 = !DILocation(line: 939, column: 10, scope: !3343, inlinedAt: !3369)
!3371 = !DILocation(line: 951, column: 3, scope: !3361)
!3372 = distinct !DISubprogram(name: "quotearg_n_style", scope: !328, file: !328, line: 955, type: !154, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3373)
!3373 = !{!3374, !3375, !3376, !3377}
!3374 = !DILocalVariable(name: "n", arg: 1, scope: !3372, file: !328, line: 955, type: !38)
!3375 = !DILocalVariable(name: "s", arg: 2, scope: !3372, file: !328, line: 955, type: !5)
!3376 = !DILocalVariable(name: "arg", arg: 3, scope: !3372, file: !328, line: 955, type: !36)
!3377 = !DILocalVariable(name: "o", scope: !3372, file: !328, line: 957, type: !358)
!3378 = !DILocation(line: 0, scope: !3372)
!3379 = !DILocation(line: 957, column: 3, scope: !3372)
!3380 = !DILocation(line: 957, column: 32, scope: !3372)
!3381 = !DILocalVariable(name: "style", arg: 1, scope: !3382, file: !328, line: 193, type: !5)
!3382 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !328, file: !328, line: 193, type: !3383, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3385)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!359, !5}
!3385 = !{!3381, !3386}
!3386 = !DILocalVariable(name: "o", scope: !3382, file: !328, line: 195, type: !359)
!3387 = !DILocation(line: 0, scope: !3382, inlinedAt: !3388)
!3388 = distinct !DILocation(line: 957, column: 36, scope: !3372)
!3389 = !DILocation(line: 195, column: 26, scope: !3382, inlinedAt: !3388)
!3390 = !{!3391}
!3391 = distinct !{!3391, !3392, !"quoting_options_from_style: argument 0"}
!3392 = distinct !{!3392, !"quoting_options_from_style"}
!3393 = !DILocation(line: 196, column: 13, scope: !3394, inlinedAt: !3388)
!3394 = distinct !DILexicalBlock(scope: !3382, file: !328, line: 196, column: 7)
!3395 = !DILocation(line: 196, column: 7, scope: !3382, inlinedAt: !3388)
!3396 = !DILocation(line: 197, column: 5, scope: !3394, inlinedAt: !3388)
!3397 = !DILocation(line: 198, column: 5, scope: !3382, inlinedAt: !3388)
!3398 = !DILocation(line: 198, column: 11, scope: !3382, inlinedAt: !3388)
!3399 = !DILocation(line: 958, column: 10, scope: !3372)
!3400 = !DILocation(line: 959, column: 1, scope: !3372)
!3401 = !DILocation(line: 958, column: 3, scope: !3372)
!3402 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !328, file: !328, line: 962, type: !3403, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3405)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!34, !38, !5, !36, !93}
!3405 = !{!3406, !3407, !3408, !3409, !3410}
!3406 = !DILocalVariable(name: "n", arg: 1, scope: !3402, file: !328, line: 962, type: !38)
!3407 = !DILocalVariable(name: "s", arg: 2, scope: !3402, file: !328, line: 962, type: !5)
!3408 = !DILocalVariable(name: "arg", arg: 3, scope: !3402, file: !328, line: 963, type: !36)
!3409 = !DILocalVariable(name: "argsize", arg: 4, scope: !3402, file: !328, line: 963, type: !93)
!3410 = !DILocalVariable(name: "o", scope: !3402, file: !328, line: 965, type: !358)
!3411 = !DILocation(line: 0, scope: !3402)
!3412 = !DILocation(line: 965, column: 3, scope: !3402)
!3413 = !DILocation(line: 965, column: 32, scope: !3402)
!3414 = !DILocation(line: 0, scope: !3382, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 965, column: 36, scope: !3402)
!3416 = !DILocation(line: 195, column: 26, scope: !3382, inlinedAt: !3415)
!3417 = !{!3418}
!3418 = distinct !{!3418, !3419, !"quoting_options_from_style: argument 0"}
!3419 = distinct !{!3419, !"quoting_options_from_style"}
!3420 = !DILocation(line: 196, column: 13, scope: !3394, inlinedAt: !3415)
!3421 = !DILocation(line: 196, column: 7, scope: !3382, inlinedAt: !3415)
!3422 = !DILocation(line: 197, column: 5, scope: !3394, inlinedAt: !3415)
!3423 = !DILocation(line: 198, column: 5, scope: !3382, inlinedAt: !3415)
!3424 = !DILocation(line: 198, column: 11, scope: !3382, inlinedAt: !3415)
!3425 = !DILocation(line: 966, column: 10, scope: !3402)
!3426 = !DILocation(line: 967, column: 1, scope: !3402)
!3427 = !DILocation(line: 966, column: 3, scope: !3402)
!3428 = distinct !DISubprogram(name: "quotearg_style", scope: !328, file: !328, line: 970, type: !3429, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3431)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!34, !5, !36}
!3431 = !{!3432, !3433}
!3432 = !DILocalVariable(name: "s", arg: 1, scope: !3428, file: !328, line: 970, type: !5)
!3433 = !DILocalVariable(name: "arg", arg: 2, scope: !3428, file: !328, line: 970, type: !36)
!3434 = !DILocation(line: 195, column: 26, scope: !3382, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 957, column: 36, scope: !3372, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 972, column: 10, scope: !3428)
!3437 = !DILocation(line: 957, column: 32, scope: !3372, inlinedAt: !3436)
!3438 = !DILocation(line: 0, scope: !3428)
!3439 = !DILocation(line: 0, scope: !3372, inlinedAt: !3436)
!3440 = !DILocation(line: 957, column: 3, scope: !3372, inlinedAt: !3436)
!3441 = !DILocation(line: 0, scope: !3382, inlinedAt: !3435)
!3442 = !{!3443}
!3443 = distinct !{!3443, !3444, !"quoting_options_from_style: argument 0"}
!3444 = distinct !{!3444, !"quoting_options_from_style"}
!3445 = !DILocation(line: 196, column: 13, scope: !3394, inlinedAt: !3435)
!3446 = !DILocation(line: 196, column: 7, scope: !3382, inlinedAt: !3435)
!3447 = !DILocation(line: 197, column: 5, scope: !3394, inlinedAt: !3435)
!3448 = !DILocation(line: 198, column: 5, scope: !3382, inlinedAt: !3435)
!3449 = !DILocation(line: 198, column: 11, scope: !3382, inlinedAt: !3435)
!3450 = !DILocation(line: 958, column: 10, scope: !3372, inlinedAt: !3436)
!3451 = !DILocation(line: 959, column: 1, scope: !3372, inlinedAt: !3436)
!3452 = !DILocation(line: 972, column: 3, scope: !3428)
!3453 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !328, file: !328, line: 976, type: !3454, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3456)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!34, !5, !36, !93}
!3456 = !{!3457, !3458, !3459}
!3457 = !DILocalVariable(name: "s", arg: 1, scope: !3453, file: !328, line: 976, type: !5)
!3458 = !DILocalVariable(name: "arg", arg: 2, scope: !3453, file: !328, line: 976, type: !36)
!3459 = !DILocalVariable(name: "argsize", arg: 3, scope: !3453, file: !328, line: 976, type: !93)
!3460 = !DILocation(line: 195, column: 26, scope: !3382, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 965, column: 36, scope: !3402, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 978, column: 10, scope: !3453)
!3463 = !DILocation(line: 965, column: 32, scope: !3402, inlinedAt: !3462)
!3464 = !DILocation(line: 0, scope: !3453)
!3465 = !DILocation(line: 0, scope: !3402, inlinedAt: !3462)
!3466 = !DILocation(line: 965, column: 3, scope: !3402, inlinedAt: !3462)
!3467 = !DILocation(line: 0, scope: !3382, inlinedAt: !3461)
!3468 = !{!3469}
!3469 = distinct !{!3469, !3470, !"quoting_options_from_style: argument 0"}
!3470 = distinct !{!3470, !"quoting_options_from_style"}
!3471 = !DILocation(line: 196, column: 13, scope: !3394, inlinedAt: !3461)
!3472 = !DILocation(line: 196, column: 7, scope: !3382, inlinedAt: !3461)
!3473 = !DILocation(line: 197, column: 5, scope: !3394, inlinedAt: !3461)
!3474 = !DILocation(line: 198, column: 5, scope: !3382, inlinedAt: !3461)
!3475 = !DILocation(line: 198, column: 11, scope: !3382, inlinedAt: !3461)
!3476 = !DILocation(line: 966, column: 10, scope: !3402, inlinedAt: !3462)
!3477 = !DILocation(line: 967, column: 1, scope: !3402, inlinedAt: !3462)
!3478 = !DILocation(line: 978, column: 3, scope: !3453)
!3479 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !328, file: !328, line: 982, type: !3480, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3482)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!34, !36, !93, !35}
!3482 = !{!3483, !3484, !3485, !3486}
!3483 = !DILocalVariable(name: "arg", arg: 1, scope: !3479, file: !328, line: 982, type: !36)
!3484 = !DILocalVariable(name: "argsize", arg: 2, scope: !3479, file: !328, line: 982, type: !93)
!3485 = !DILocalVariable(name: "ch", arg: 3, scope: !3479, file: !328, line: 982, type: !35)
!3486 = !DILocalVariable(name: "options", scope: !3479, file: !328, line: 984, type: !359)
!3487 = !DILocation(line: 0, scope: !3479)
!3488 = !DILocation(line: 984, column: 3, scope: !3479)
!3489 = !DILocation(line: 984, column: 26, scope: !3479)
!3490 = !DILocation(line: 985, column: 13, scope: !3479)
!3491 = !{i64 0, i64 4, !1389, i64 4, i64 4, !1319, i64 8, i64 32, !1389, i64 40, i64 8, !1201, i64 48, i64 8, !1201}
!3492 = !DILocation(line: 0, scope: !2319, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 986, column: 3, scope: !3479)
!3494 = !DILocation(line: 156, column: 62, scope: !2319, inlinedAt: !3493)
!3495 = !DILocation(line: 156, column: 57, scope: !2319, inlinedAt: !3493)
!3496 = !DILocation(line: 157, column: 15, scope: !2319, inlinedAt: !3493)
!3497 = !DILocation(line: 158, column: 12, scope: !2319, inlinedAt: !3493)
!3498 = !DILocation(line: 158, column: 15, scope: !2319, inlinedAt: !3493)
!3499 = !DILocation(line: 158, column: 25, scope: !2319, inlinedAt: !3493)
!3500 = !DILocation(line: 159, column: 18, scope: !2319, inlinedAt: !3493)
!3501 = !DILocation(line: 159, column: 23, scope: !2319, inlinedAt: !3493)
!3502 = !DILocation(line: 159, column: 6, scope: !2319, inlinedAt: !3493)
!3503 = !DILocation(line: 987, column: 10, scope: !3479)
!3504 = !DILocation(line: 988, column: 1, scope: !3479)
!3505 = !DILocation(line: 987, column: 3, scope: !3479)
!3506 = distinct !DISubprogram(name: "quotearg_char", scope: !328, file: !328, line: 991, type: !3507, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3509)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!34, !36, !35}
!3509 = !{!3510, !3511}
!3510 = !DILocalVariable(name: "arg", arg: 1, scope: !3506, file: !328, line: 991, type: !36)
!3511 = !DILocalVariable(name: "ch", arg: 2, scope: !3506, file: !328, line: 991, type: !35)
!3512 = !DILocation(line: 984, column: 26, scope: !3479, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 993, column: 10, scope: !3506)
!3514 = !DILocation(line: 0, scope: !3506)
!3515 = !DILocation(line: 0, scope: !3479, inlinedAt: !3513)
!3516 = !DILocation(line: 984, column: 3, scope: !3479, inlinedAt: !3513)
!3517 = !DILocation(line: 985, column: 13, scope: !3479, inlinedAt: !3513)
!3518 = !DILocation(line: 0, scope: !2319, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 986, column: 3, scope: !3479, inlinedAt: !3513)
!3520 = !DILocation(line: 156, column: 62, scope: !2319, inlinedAt: !3519)
!3521 = !DILocation(line: 156, column: 57, scope: !2319, inlinedAt: !3519)
!3522 = !DILocation(line: 157, column: 15, scope: !2319, inlinedAt: !3519)
!3523 = !DILocation(line: 158, column: 12, scope: !2319, inlinedAt: !3519)
!3524 = !DILocation(line: 158, column: 15, scope: !2319, inlinedAt: !3519)
!3525 = !DILocation(line: 158, column: 25, scope: !2319, inlinedAt: !3519)
!3526 = !DILocation(line: 159, column: 18, scope: !2319, inlinedAt: !3519)
!3527 = !DILocation(line: 159, column: 23, scope: !2319, inlinedAt: !3519)
!3528 = !DILocation(line: 159, column: 6, scope: !2319, inlinedAt: !3519)
!3529 = !DILocation(line: 987, column: 10, scope: !3479, inlinedAt: !3513)
!3530 = !DILocation(line: 988, column: 1, scope: !3479, inlinedAt: !3513)
!3531 = !DILocation(line: 993, column: 3, scope: !3506)
!3532 = distinct !DISubprogram(name: "quotearg_colon", scope: !328, file: !328, line: 997, type: !113, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3533)
!3533 = !{!3534}
!3534 = !DILocalVariable(name: "arg", arg: 1, scope: !3532, file: !328, line: 997, type: !36)
!3535 = !DILocation(line: 984, column: 26, scope: !3479, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 993, column: 10, scope: !3506, inlinedAt: !3537)
!3537 = distinct !DILocation(line: 999, column: 10, scope: !3532)
!3538 = !DILocation(line: 0, scope: !3532)
!3539 = !DILocation(line: 0, scope: !3506, inlinedAt: !3537)
!3540 = !DILocation(line: 0, scope: !3479, inlinedAt: !3536)
!3541 = !DILocation(line: 984, column: 3, scope: !3479, inlinedAt: !3536)
!3542 = !DILocation(line: 985, column: 13, scope: !3479, inlinedAt: !3536)
!3543 = !DILocation(line: 0, scope: !2319, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 986, column: 3, scope: !3479, inlinedAt: !3536)
!3545 = !DILocation(line: 156, column: 57, scope: !2319, inlinedAt: !3544)
!3546 = !DILocation(line: 158, column: 12, scope: !2319, inlinedAt: !3544)
!3547 = !DILocation(line: 159, column: 6, scope: !2319, inlinedAt: !3544)
!3548 = !DILocation(line: 987, column: 10, scope: !3479, inlinedAt: !3536)
!3549 = !DILocation(line: 988, column: 1, scope: !3479, inlinedAt: !3536)
!3550 = !DILocation(line: 999, column: 3, scope: !3532)
!3551 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !328, file: !328, line: 1003, type: !3362, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3552)
!3552 = !{!3553, !3554}
!3553 = !DILocalVariable(name: "arg", arg: 1, scope: !3551, file: !328, line: 1003, type: !36)
!3554 = !DILocalVariable(name: "argsize", arg: 2, scope: !3551, file: !328, line: 1003, type: !93)
!3555 = !DILocation(line: 984, column: 26, scope: !3479, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 1005, column: 10, scope: !3551)
!3557 = !DILocation(line: 0, scope: !3551)
!3558 = !DILocation(line: 0, scope: !3479, inlinedAt: !3556)
!3559 = !DILocation(line: 984, column: 3, scope: !3479, inlinedAt: !3556)
!3560 = !DILocation(line: 985, column: 13, scope: !3479, inlinedAt: !3556)
!3561 = !DILocation(line: 0, scope: !2319, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 986, column: 3, scope: !3479, inlinedAt: !3556)
!3563 = !DILocation(line: 156, column: 57, scope: !2319, inlinedAt: !3562)
!3564 = !DILocation(line: 158, column: 12, scope: !2319, inlinedAt: !3562)
!3565 = !DILocation(line: 159, column: 6, scope: !2319, inlinedAt: !3562)
!3566 = !DILocation(line: 987, column: 10, scope: !3479, inlinedAt: !3556)
!3567 = !DILocation(line: 988, column: 1, scope: !3479, inlinedAt: !3556)
!3568 = !DILocation(line: 1005, column: 3, scope: !3551)
!3569 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !328, file: !328, line: 1009, type: !154, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3570)
!3570 = !{!3571, !3572, !3573, !3574}
!3571 = !DILocalVariable(name: "n", arg: 1, scope: !3569, file: !328, line: 1009, type: !38)
!3572 = !DILocalVariable(name: "s", arg: 2, scope: !3569, file: !328, line: 1009, type: !5)
!3573 = !DILocalVariable(name: "arg", arg: 3, scope: !3569, file: !328, line: 1009, type: !36)
!3574 = !DILocalVariable(name: "options", scope: !3569, file: !328, line: 1011, type: !359)
!3575 = !DILocation(line: 195, column: 26, scope: !3382, inlinedAt: !3576)
!3576 = distinct !DILocation(line: 1012, column: 13, scope: !3569)
!3577 = !DILocation(line: 0, scope: !3569)
!3578 = !DILocation(line: 1011, column: 3, scope: !3569)
!3579 = !DILocation(line: 1011, column: 26, scope: !3569)
!3580 = !DILocation(line: 1012, column: 13, scope: !3569)
!3581 = !DILocation(line: 0, scope: !3382, inlinedAt: !3576)
!3582 = !{!3583}
!3583 = distinct !{!3583, !3584, !"quoting_options_from_style: argument 0"}
!3584 = distinct !{!3584, !"quoting_options_from_style"}
!3585 = !DILocation(line: 196, column: 13, scope: !3394, inlinedAt: !3576)
!3586 = !DILocation(line: 196, column: 7, scope: !3382, inlinedAt: !3576)
!3587 = !DILocation(line: 197, column: 5, scope: !3394, inlinedAt: !3576)
!3588 = !DILocation(line: 0, scope: !2319, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 1013, column: 3, scope: !3569)
!3590 = !DILocation(line: 156, column: 57, scope: !2319, inlinedAt: !3589)
!3591 = !DILocation(line: 158, column: 12, scope: !2319, inlinedAt: !3589)
!3592 = !DILocation(line: 159, column: 6, scope: !2319, inlinedAt: !3589)
!3593 = !DILocation(line: 1014, column: 10, scope: !3569)
!3594 = !DILocation(line: 1015, column: 1, scope: !3569)
!3595 = !DILocation(line: 1014, column: 3, scope: !3569)
!3596 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !328, file: !328, line: 1018, type: !3597, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3599)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!34, !38, !36, !36, !36}
!3599 = !{!3600, !3601, !3602, !3603}
!3600 = !DILocalVariable(name: "n", arg: 1, scope: !3596, file: !328, line: 1018, type: !38)
!3601 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3596, file: !328, line: 1018, type: !36)
!3602 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3596, file: !328, line: 1019, type: !36)
!3603 = !DILocalVariable(name: "arg", arg: 4, scope: !3596, file: !328, line: 1019, type: !36)
!3604 = !DILocalVariable(name: "o", scope: !3605, file: !328, line: 1030, type: !359)
!3605 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !328, file: !328, line: 1026, type: !3606, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3608)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!34, !38, !36, !36, !36, !93}
!3608 = !{!3609, !3610, !3611, !3612, !3613, !3604}
!3609 = !DILocalVariable(name: "n", arg: 1, scope: !3605, file: !328, line: 1026, type: !38)
!3610 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3605, file: !328, line: 1026, type: !36)
!3611 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3605, file: !328, line: 1027, type: !36)
!3612 = !DILocalVariable(name: "arg", arg: 4, scope: !3605, file: !328, line: 1028, type: !36)
!3613 = !DILocalVariable(name: "argsize", arg: 5, scope: !3605, file: !328, line: 1028, type: !93)
!3614 = !DILocation(line: 1030, column: 26, scope: !3605, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 1021, column: 10, scope: !3596)
!3616 = !DILocation(line: 0, scope: !3596)
!3617 = !DILocation(line: 0, scope: !3605, inlinedAt: !3615)
!3618 = !DILocation(line: 1030, column: 3, scope: !3605, inlinedAt: !3615)
!3619 = !DILocation(line: 1030, column: 30, scope: !3605, inlinedAt: !3615)
!3620 = !DILocation(line: 0, scope: !2359, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 1031, column: 3, scope: !3605, inlinedAt: !3615)
!3622 = !DILocation(line: 184, column: 6, scope: !2359, inlinedAt: !3621)
!3623 = !DILocation(line: 184, column: 12, scope: !2359, inlinedAt: !3621)
!3624 = !DILocation(line: 185, column: 8, scope: !2373, inlinedAt: !3621)
!3625 = !DILocation(line: 185, column: 23, scope: !2373, inlinedAt: !3621)
!3626 = !DILocation(line: 185, column: 19, scope: !2373, inlinedAt: !3621)
!3627 = !DILocation(line: 186, column: 5, scope: !2373, inlinedAt: !3621)
!3628 = !DILocation(line: 187, column: 6, scope: !2359, inlinedAt: !3621)
!3629 = !DILocation(line: 187, column: 17, scope: !2359, inlinedAt: !3621)
!3630 = !DILocation(line: 188, column: 6, scope: !2359, inlinedAt: !3621)
!3631 = !DILocation(line: 188, column: 18, scope: !2359, inlinedAt: !3621)
!3632 = !DILocation(line: 1032, column: 10, scope: !3605, inlinedAt: !3615)
!3633 = !DILocation(line: 1033, column: 1, scope: !3605, inlinedAt: !3615)
!3634 = !DILocation(line: 1021, column: 3, scope: !3596)
!3635 = !DILocation(line: 0, scope: !3605)
!3636 = !DILocation(line: 1030, column: 3, scope: !3605)
!3637 = !DILocation(line: 1030, column: 26, scope: !3605)
!3638 = !DILocation(line: 1030, column: 30, scope: !3605)
!3639 = !DILocation(line: 0, scope: !2359, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 1031, column: 3, scope: !3605)
!3641 = !DILocation(line: 184, column: 6, scope: !2359, inlinedAt: !3640)
!3642 = !DILocation(line: 184, column: 12, scope: !2359, inlinedAt: !3640)
!3643 = !DILocation(line: 185, column: 8, scope: !2373, inlinedAt: !3640)
!3644 = !DILocation(line: 185, column: 23, scope: !2373, inlinedAt: !3640)
!3645 = !DILocation(line: 185, column: 19, scope: !2373, inlinedAt: !3640)
!3646 = !DILocation(line: 186, column: 5, scope: !2373, inlinedAt: !3640)
!3647 = !DILocation(line: 187, column: 6, scope: !2359, inlinedAt: !3640)
!3648 = !DILocation(line: 187, column: 17, scope: !2359, inlinedAt: !3640)
!3649 = !DILocation(line: 188, column: 6, scope: !2359, inlinedAt: !3640)
!3650 = !DILocation(line: 188, column: 18, scope: !2359, inlinedAt: !3640)
!3651 = !DILocation(line: 1032, column: 10, scope: !3605)
!3652 = !DILocation(line: 1033, column: 1, scope: !3605)
!3653 = !DILocation(line: 1032, column: 3, scope: !3605)
!3654 = distinct !DISubprogram(name: "quotearg_custom", scope: !328, file: !328, line: 1036, type: !3655, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3657)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!34, !36, !36, !36}
!3657 = !{!3658, !3659, !3660}
!3658 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3654, file: !328, line: 1036, type: !36)
!3659 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3654, file: !328, line: 1036, type: !36)
!3660 = !DILocalVariable(name: "arg", arg: 3, scope: !3654, file: !328, line: 1037, type: !36)
!3661 = !DILocation(line: 1030, column: 26, scope: !3605, inlinedAt: !3662)
!3662 = distinct !DILocation(line: 1021, column: 10, scope: !3596, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 1039, column: 10, scope: !3654)
!3664 = !DILocation(line: 0, scope: !3654)
!3665 = !DILocation(line: 0, scope: !3596, inlinedAt: !3663)
!3666 = !DILocation(line: 0, scope: !3605, inlinedAt: !3662)
!3667 = !DILocation(line: 1030, column: 3, scope: !3605, inlinedAt: !3662)
!3668 = !DILocation(line: 1030, column: 30, scope: !3605, inlinedAt: !3662)
!3669 = !DILocation(line: 0, scope: !2359, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 1031, column: 3, scope: !3605, inlinedAt: !3662)
!3671 = !DILocation(line: 184, column: 6, scope: !2359, inlinedAt: !3670)
!3672 = !DILocation(line: 184, column: 12, scope: !2359, inlinedAt: !3670)
!3673 = !DILocation(line: 185, column: 8, scope: !2373, inlinedAt: !3670)
!3674 = !DILocation(line: 185, column: 23, scope: !2373, inlinedAt: !3670)
!3675 = !DILocation(line: 185, column: 19, scope: !2373, inlinedAt: !3670)
!3676 = !DILocation(line: 186, column: 5, scope: !2373, inlinedAt: !3670)
!3677 = !DILocation(line: 187, column: 6, scope: !2359, inlinedAt: !3670)
!3678 = !DILocation(line: 187, column: 17, scope: !2359, inlinedAt: !3670)
!3679 = !DILocation(line: 188, column: 6, scope: !2359, inlinedAt: !3670)
!3680 = !DILocation(line: 188, column: 18, scope: !2359, inlinedAt: !3670)
!3681 = !DILocation(line: 1032, column: 10, scope: !3605, inlinedAt: !3662)
!3682 = !DILocation(line: 1033, column: 1, scope: !3605, inlinedAt: !3662)
!3683 = !DILocation(line: 1039, column: 3, scope: !3654)
!3684 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !328, file: !328, line: 1043, type: !3685, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3687)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!34, !36, !36, !36, !93}
!3687 = !{!3688, !3689, !3690, !3691}
!3688 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3684, file: !328, line: 1043, type: !36)
!3689 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3684, file: !328, line: 1043, type: !36)
!3690 = !DILocalVariable(name: "arg", arg: 3, scope: !3684, file: !328, line: 1044, type: !36)
!3691 = !DILocalVariable(name: "argsize", arg: 4, scope: !3684, file: !328, line: 1044, type: !93)
!3692 = !DILocation(line: 1030, column: 26, scope: !3605, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 1046, column: 10, scope: !3684)
!3694 = !DILocation(line: 0, scope: !3684)
!3695 = !DILocation(line: 0, scope: !3605, inlinedAt: !3693)
!3696 = !DILocation(line: 1030, column: 3, scope: !3605, inlinedAt: !3693)
!3697 = !DILocation(line: 1030, column: 30, scope: !3605, inlinedAt: !3693)
!3698 = !DILocation(line: 0, scope: !2359, inlinedAt: !3699)
!3699 = distinct !DILocation(line: 1031, column: 3, scope: !3605, inlinedAt: !3693)
!3700 = !DILocation(line: 184, column: 6, scope: !2359, inlinedAt: !3699)
!3701 = !DILocation(line: 184, column: 12, scope: !2359, inlinedAt: !3699)
!3702 = !DILocation(line: 185, column: 8, scope: !2373, inlinedAt: !3699)
!3703 = !DILocation(line: 185, column: 23, scope: !2373, inlinedAt: !3699)
!3704 = !DILocation(line: 185, column: 19, scope: !2373, inlinedAt: !3699)
!3705 = !DILocation(line: 186, column: 5, scope: !2373, inlinedAt: !3699)
!3706 = !DILocation(line: 187, column: 6, scope: !2359, inlinedAt: !3699)
!3707 = !DILocation(line: 187, column: 17, scope: !2359, inlinedAt: !3699)
!3708 = !DILocation(line: 188, column: 6, scope: !2359, inlinedAt: !3699)
!3709 = !DILocation(line: 188, column: 18, scope: !2359, inlinedAt: !3699)
!3710 = !DILocation(line: 1032, column: 10, scope: !3605, inlinedAt: !3693)
!3711 = !DILocation(line: 1033, column: 1, scope: !3605, inlinedAt: !3693)
!3712 = !DILocation(line: 1046, column: 3, scope: !3684)
!3713 = distinct !DISubprogram(name: "quote_n_mem", scope: !328, file: !328, line: 1061, type: !3714, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3716)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!36, !38, !36, !93}
!3716 = !{!3717, !3718, !3719}
!3717 = !DILocalVariable(name: "n", arg: 1, scope: !3713, file: !328, line: 1061, type: !38)
!3718 = !DILocalVariable(name: "arg", arg: 2, scope: !3713, file: !328, line: 1061, type: !36)
!3719 = !DILocalVariable(name: "argsize", arg: 3, scope: !3713, file: !328, line: 1061, type: !93)
!3720 = !DILocation(line: 0, scope: !3713)
!3721 = !DILocation(line: 1063, column: 10, scope: !3713)
!3722 = !DILocation(line: 1063, column: 3, scope: !3713)
!3723 = distinct !DISubprogram(name: "quote_mem", scope: !328, file: !328, line: 1067, type: !3724, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3726)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!36, !36, !93}
!3726 = !{!3727, !3728}
!3727 = !DILocalVariable(name: "arg", arg: 1, scope: !3723, file: !328, line: 1067, type: !36)
!3728 = !DILocalVariable(name: "argsize", arg: 2, scope: !3723, file: !328, line: 1067, type: !93)
!3729 = !DILocation(line: 0, scope: !3723)
!3730 = !DILocation(line: 0, scope: !3713, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 1069, column: 10, scope: !3723)
!3732 = !DILocation(line: 1063, column: 10, scope: !3713, inlinedAt: !3731)
!3733 = !DILocation(line: 1069, column: 3, scope: !3723)
!3734 = distinct !DISubprogram(name: "quote_n", scope: !328, file: !328, line: 1073, type: !3735, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3737)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!36, !38, !36}
!3737 = !{!3738, !3739}
!3738 = !DILocalVariable(name: "n", arg: 1, scope: !3734, file: !328, line: 1073, type: !38)
!3739 = !DILocalVariable(name: "arg", arg: 2, scope: !3734, file: !328, line: 1073, type: !36)
!3740 = !DILocation(line: 0, scope: !3734)
!3741 = !DILocation(line: 0, scope: !3713, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 1075, column: 10, scope: !3734)
!3743 = !DILocation(line: 1063, column: 10, scope: !3713, inlinedAt: !3742)
!3744 = !DILocation(line: 1075, column: 3, scope: !3734)
!3745 = distinct !DISubprogram(name: "quote", scope: !328, file: !328, line: 1079, type: !147, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3746)
!3746 = !{!3747}
!3747 = !DILocalVariable(name: "arg", arg: 1, scope: !3745, file: !328, line: 1079, type: !36)
!3748 = !DILocation(line: 0, scope: !3745)
!3749 = !DILocation(line: 0, scope: !3734, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 1081, column: 10, scope: !3745)
!3751 = !DILocation(line: 0, scope: !3713, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 1075, column: 10, scope: !3734, inlinedAt: !3750)
!3753 = !DILocation(line: 1063, column: 10, scope: !3713, inlinedAt: !3752)
!3754 = !DILocation(line: 1081, column: 3, scope: !3745)
!3755 = distinct !DISubprogram(name: "version_etc_arn", scope: !490, file: !490, line: 61, type: !3756, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !3761)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{null, !3758, !36, !36, !36, !3760, !93}
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1258, line: 7, baseType: !500)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!3761 = !{!3762, !3763, !3764, !3765, !3766, !3767}
!3762 = !DILocalVariable(name: "stream", arg: 1, scope: !3755, file: !490, line: 61, type: !3758)
!3763 = !DILocalVariable(name: "command_name", arg: 2, scope: !3755, file: !490, line: 62, type: !36)
!3764 = !DILocalVariable(name: "package", arg: 3, scope: !3755, file: !490, line: 62, type: !36)
!3765 = !DILocalVariable(name: "version", arg: 4, scope: !3755, file: !490, line: 63, type: !36)
!3766 = !DILocalVariable(name: "authors", arg: 5, scope: !3755, file: !490, line: 64, type: !3760)
!3767 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3755, file: !490, line: 64, type: !93)
!3768 = !DILocation(line: 0, scope: !3755)
!3769 = !DILocation(line: 66, column: 7, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3755, file: !490, line: 66, column: 7)
!3771 = !DILocation(line: 66, column: 7, scope: !3755)
!3772 = !DILocation(line: 67, column: 5, scope: !3770)
!3773 = !DILocation(line: 69, column: 5, scope: !3770)
!3774 = !DILocation(line: 83, column: 3, scope: !3755)
!3775 = !DILocation(line: 85, column: 3, scope: !3755)
!3776 = !DILocation(line: 88, column: 3, scope: !3755)
!3777 = !DILocation(line: 95, column: 3, scope: !3755)
!3778 = !DILocation(line: 97, column: 3, scope: !3755)
!3779 = !DILocation(line: 105, column: 7, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3755, file: !490, line: 98, column: 5)
!3781 = !DILocation(line: 106, column: 7, scope: !3780)
!3782 = !DILocation(line: 109, column: 7, scope: !3780)
!3783 = !DILocation(line: 110, column: 7, scope: !3780)
!3784 = !DILocation(line: 113, column: 7, scope: !3780)
!3785 = !DILocation(line: 115, column: 7, scope: !3780)
!3786 = !DILocation(line: 120, column: 7, scope: !3780)
!3787 = !DILocation(line: 122, column: 7, scope: !3780)
!3788 = !DILocation(line: 127, column: 7, scope: !3780)
!3789 = !DILocation(line: 129, column: 7, scope: !3780)
!3790 = !DILocation(line: 134, column: 7, scope: !3780)
!3791 = !DILocation(line: 137, column: 7, scope: !3780)
!3792 = !DILocation(line: 142, column: 7, scope: !3780)
!3793 = !DILocation(line: 145, column: 7, scope: !3780)
!3794 = !DILocation(line: 150, column: 7, scope: !3780)
!3795 = !DILocation(line: 154, column: 7, scope: !3780)
!3796 = !DILocation(line: 159, column: 7, scope: !3780)
!3797 = !DILocation(line: 163, column: 7, scope: !3780)
!3798 = !DILocation(line: 170, column: 7, scope: !3780)
!3799 = !DILocation(line: 174, column: 7, scope: !3780)
!3800 = !DILocation(line: 176, column: 1, scope: !3755)
!3801 = distinct !DISubprogram(name: "version_etc_ar", scope: !490, file: !490, line: 183, type: !3802, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !3804)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{null, !3758, !36, !36, !36, !3760}
!3804 = !{!3805, !3806, !3807, !3808, !3809, !3810}
!3805 = !DILocalVariable(name: "stream", arg: 1, scope: !3801, file: !490, line: 183, type: !3758)
!3806 = !DILocalVariable(name: "command_name", arg: 2, scope: !3801, file: !490, line: 184, type: !36)
!3807 = !DILocalVariable(name: "package", arg: 3, scope: !3801, file: !490, line: 184, type: !36)
!3808 = !DILocalVariable(name: "version", arg: 4, scope: !3801, file: !490, line: 185, type: !36)
!3809 = !DILocalVariable(name: "authors", arg: 5, scope: !3801, file: !490, line: 185, type: !3760)
!3810 = !DILocalVariable(name: "n_authors", scope: !3801, file: !490, line: 187, type: !93)
!3811 = !DILocation(line: 0, scope: !3801)
!3812 = !DILocation(line: 189, column: 8, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3801, file: !490, line: 189, column: 3)
!3814 = !DILocation(line: 0, scope: !3813)
!3815 = !DILocation(line: 189, column: 23, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3813, file: !490, line: 189, column: 3)
!3817 = !DILocation(line: 189, column: 3, scope: !3813)
!3818 = !DILocation(line: 189, column: 52, scope: !3816)
!3819 = distinct !{!3819, !3817, !3820}
!3820 = !DILocation(line: 190, column: 5, scope: !3813)
!3821 = !DILocation(line: 191, column: 3, scope: !3801)
!3822 = !DILocation(line: 192, column: 1, scope: !3801)
!3823 = distinct !DISubprogram(name: "version_etc_va", scope: !490, file: !490, line: 199, type: !3824, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !3833)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{null, !3758, !36, !36, !36, !3826}
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !490, line: 192, size: 192, elements: !3828)
!3828 = !{!3829, !3830, !3831, !3832}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3827, file: !490, line: 192, baseType: !7, size: 32)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3827, file: !490, line: 192, baseType: !7, size: 32, offset: 32)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3827, file: !490, line: 192, baseType: !91, size: 64, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3827, file: !490, line: 192, baseType: !91, size: 64, offset: 128)
!3833 = !{!3834, !3835, !3836, !3837, !3838, !3839, !3840}
!3834 = !DILocalVariable(name: "stream", arg: 1, scope: !3823, file: !490, line: 199, type: !3758)
!3835 = !DILocalVariable(name: "command_name", arg: 2, scope: !3823, file: !490, line: 200, type: !36)
!3836 = !DILocalVariable(name: "package", arg: 3, scope: !3823, file: !490, line: 200, type: !36)
!3837 = !DILocalVariable(name: "version", arg: 4, scope: !3823, file: !490, line: 201, type: !36)
!3838 = !DILocalVariable(name: "authors", arg: 5, scope: !3823, file: !490, line: 201, type: !3826)
!3839 = !DILocalVariable(name: "n_authors", scope: !3823, file: !490, line: 203, type: !93)
!3840 = !DILocalVariable(name: "authtab", scope: !3823, file: !490, line: 204, type: !3841)
!3841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 640, elements: !414)
!3842 = !DILocation(line: 0, scope: !3823)
!3843 = !DILocation(line: 204, column: 3, scope: !3823)
!3844 = !DILocation(line: 204, column: 15, scope: !3823)
!3845 = !DILocation(line: 0, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3847, file: !490, line: 206, column: 3)
!3847 = distinct !DILexicalBlock(scope: !3823, file: !490, line: 206, column: 3)
!3848 = !DILocation(line: 208, column: 35, scope: !3846)
!3849 = !DILocation(line: 208, column: 14, scope: !3846)
!3850 = !DILocation(line: 208, column: 33, scope: !3846)
!3851 = !DILocation(line: 208, column: 67, scope: !3846)
!3852 = !DILocation(line: 206, column: 3, scope: !3847)
!3853 = !DILocation(line: 0, scope: !3847)
!3854 = !DILocation(line: 211, column: 3, scope: !3823)
!3855 = !DILocation(line: 213, column: 1, scope: !3823)
!3856 = distinct !DISubprogram(name: "version_etc", scope: !490, file: !490, line: 230, type: !3857, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !3859)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{null, !3758, !36, !36, !36, null}
!3859 = !{!3860, !3861, !3862, !3863, !3864}
!3860 = !DILocalVariable(name: "stream", arg: 1, scope: !3856, file: !490, line: 230, type: !3758)
!3861 = !DILocalVariable(name: "command_name", arg: 2, scope: !3856, file: !490, line: 231, type: !36)
!3862 = !DILocalVariable(name: "package", arg: 3, scope: !3856, file: !490, line: 231, type: !36)
!3863 = !DILocalVariable(name: "version", arg: 4, scope: !3856, file: !490, line: 232, type: !36)
!3864 = !DILocalVariable(name: "authors", scope: !3856, file: !490, line: 234, type: !3865)
!3865 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !41, line: 52, baseType: !3866)
!3866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3867, line: 32, baseType: !3868)
!3867 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !490, line: 234, baseType: !3869)
!3869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3827, size: 192, elements: !76)
!3870 = !DILocation(line: 0, scope: !3856)
!3871 = !DILocation(line: 234, column: 3, scope: !3856)
!3872 = !DILocation(line: 234, column: 11, scope: !3856)
!3873 = !DILocation(line: 236, column: 3, scope: !3856)
!3874 = !DILocation(line: 237, column: 3, scope: !3856)
!3875 = !DILocation(line: 238, column: 3, scope: !3856)
!3876 = !DILocation(line: 239, column: 1, scope: !3856)
!3877 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !490, file: !490, line: 242, type: !120, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !489, retainedNodes: !39)
!3878 = !DILocation(line: 244, column: 3, scope: !3877)
!3879 = !DILocation(line: 249, column: 3, scope: !3877)
!3880 = !DILocation(line: 255, column: 3, scope: !3877)
!3881 = !DILocation(line: 260, column: 3, scope: !3877)
!3882 = !DILocation(line: 262, column: 1, scope: !3877)
!3883 = distinct !DISubprogram(name: "xnmalloc", scope: !164, file: !164, line: 99, type: !3884, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !3886)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!91, !93, !93}
!3886 = !{!3887, !3888}
!3887 = !DILocalVariable(name: "n", arg: 1, scope: !3883, file: !164, line: 99, type: !93)
!3888 = !DILocalVariable(name: "s", arg: 2, scope: !3883, file: !164, line: 99, type: !93)
!3889 = !DILocation(line: 0, scope: !3883)
!3890 = !DILocation(line: 101, column: 7, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3883, file: !164, line: 101, column: 7)
!3892 = !DILocation(line: 101, column: 7, scope: !3883)
!3893 = !DILocation(line: 102, column: 5, scope: !3891)
!3894 = !DILocation(line: 103, column: 21, scope: !3883)
!3895 = !DILocalVariable(name: "n", arg: 1, scope: !3896, file: !532, line: 39, type: !93)
!3896 = distinct !DISubprogram(name: "xmalloc", scope: !532, file: !532, line: 39, type: !3897, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !3899)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!91, !93}
!3899 = !{!3895, !3900}
!3900 = !DILocalVariable(name: "p", scope: !3896, file: !532, line: 41, type: !91)
!3901 = !DILocation(line: 0, scope: !3896, inlinedAt: !3902)
!3902 = distinct !DILocation(line: 103, column: 10, scope: !3883)
!3903 = !DILocation(line: 41, column: 13, scope: !3896, inlinedAt: !3902)
!3904 = !DILocation(line: 42, column: 8, scope: !3905, inlinedAt: !3902)
!3905 = distinct !DILexicalBlock(scope: !3896, file: !532, line: 42, column: 7)
!3906 = !DILocation(line: 42, column: 15, scope: !3905, inlinedAt: !3902)
!3907 = !DILocation(line: 42, column: 10, scope: !3905, inlinedAt: !3902)
!3908 = !DILocation(line: 43, column: 5, scope: !3905, inlinedAt: !3902)
!3909 = !DILocation(line: 103, column: 3, scope: !3883)
!3910 = !DILocation(line: 0, scope: !3896)
!3911 = !DILocation(line: 41, column: 13, scope: !3896)
!3912 = !DILocation(line: 42, column: 8, scope: !3905)
!3913 = !DILocation(line: 42, column: 15, scope: !3905)
!3914 = !DILocation(line: 42, column: 10, scope: !3905)
!3915 = !DILocation(line: 43, column: 5, scope: !3905)
!3916 = !DILocation(line: 44, column: 3, scope: !3896)
!3917 = distinct !DISubprogram(name: "xnrealloc", scope: !164, file: !164, line: 112, type: !3918, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !3920)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!91, !91, !93, !93}
!3920 = !{!3921, !3922, !3923}
!3921 = !DILocalVariable(name: "p", arg: 1, scope: !3917, file: !164, line: 112, type: !91)
!3922 = !DILocalVariable(name: "n", arg: 2, scope: !3917, file: !164, line: 112, type: !93)
!3923 = !DILocalVariable(name: "s", arg: 3, scope: !3917, file: !164, line: 112, type: !93)
!3924 = !DILocation(line: 0, scope: !3917)
!3925 = !DILocation(line: 114, column: 7, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3917, file: !164, line: 114, column: 7)
!3927 = !DILocation(line: 114, column: 7, scope: !3917)
!3928 = !DILocation(line: 115, column: 5, scope: !3926)
!3929 = !DILocation(line: 116, column: 25, scope: !3917)
!3930 = !DILocalVariable(name: "p", arg: 1, scope: !3931, file: !532, line: 51, type: !91)
!3931 = distinct !DISubprogram(name: "xrealloc", scope: !532, file: !532, line: 51, type: !3932, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !3934)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!91, !91, !93}
!3934 = !{!3930, !3935}
!3935 = !DILocalVariable(name: "n", arg: 2, scope: !3931, file: !532, line: 51, type: !93)
!3936 = !DILocation(line: 0, scope: !3931, inlinedAt: !3937)
!3937 = distinct !DILocation(line: 116, column: 10, scope: !3917)
!3938 = !DILocation(line: 53, column: 8, scope: !3939, inlinedAt: !3937)
!3939 = distinct !DILexicalBlock(scope: !3931, file: !532, line: 53, column: 7)
!3940 = !DILocation(line: 53, column: 13, scope: !3939, inlinedAt: !3937)
!3941 = !DILocation(line: 53, column: 10, scope: !3939, inlinedAt: !3937)
!3942 = !DILocation(line: 57, column: 7, scope: !3943, inlinedAt: !3937)
!3943 = distinct !DILexicalBlock(scope: !3939, file: !532, line: 54, column: 5)
!3944 = !DILocation(line: 58, column: 7, scope: !3943, inlinedAt: !3937)
!3945 = !DILocation(line: 61, column: 7, scope: !3931, inlinedAt: !3937)
!3946 = !DILocation(line: 62, column: 8, scope: !3947, inlinedAt: !3937)
!3947 = distinct !DILexicalBlock(scope: !3931, file: !532, line: 62, column: 7)
!3948 = !DILocation(line: 62, column: 13, scope: !3947, inlinedAt: !3937)
!3949 = !DILocation(line: 62, column: 10, scope: !3947, inlinedAt: !3937)
!3950 = !DILocation(line: 63, column: 5, scope: !3947, inlinedAt: !3937)
!3951 = !DILocation(line: 116, column: 3, scope: !3917)
!3952 = !DILocation(line: 0, scope: !3931)
!3953 = !DILocation(line: 53, column: 8, scope: !3939)
!3954 = !DILocation(line: 53, column: 13, scope: !3939)
!3955 = !DILocation(line: 53, column: 10, scope: !3939)
!3956 = !DILocation(line: 57, column: 7, scope: !3943)
!3957 = !DILocation(line: 58, column: 7, scope: !3943)
!3958 = !DILocation(line: 61, column: 7, scope: !3931)
!3959 = !DILocation(line: 62, column: 8, scope: !3947)
!3960 = !DILocation(line: 62, column: 13, scope: !3947)
!3961 = !DILocation(line: 62, column: 10, scope: !3947)
!3962 = !DILocation(line: 63, column: 5, scope: !3947)
!3963 = !DILocation(line: 65, column: 1, scope: !3931)
!3964 = !DILocation(line: 0, scope: !535)
!3965 = !DILocation(line: 176, column: 14, scope: !535)
!3966 = !DILocation(line: 178, column: 9, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !535, file: !164, line: 178, column: 7)
!3968 = !DILocation(line: 178, column: 7, scope: !535)
!3969 = !DILocation(line: 180, column: 13, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3971, file: !164, line: 180, column: 11)
!3971 = distinct !DILexicalBlock(scope: !3967, file: !164, line: 179, column: 5)
!3972 = !DILocation(line: 180, column: 11, scope: !3971)
!3973 = !DILocation(line: 188, column: 30, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3970, file: !164, line: 181, column: 9)
!3975 = !DILocation(line: 189, column: 16, scope: !3974)
!3976 = !DILocation(line: 189, column: 13, scope: !3974)
!3977 = !DILocation(line: 190, column: 9, scope: !3974)
!3978 = !DILocation(line: 191, column: 11, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3971, file: !164, line: 191, column: 11)
!3980 = !DILocation(line: 191, column: 11, scope: !3971)
!3981 = !DILocation(line: 206, column: 7, scope: !535)
!3982 = !DILocation(line: 207, column: 25, scope: !535)
!3983 = !DILocation(line: 0, scope: !3931, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 207, column: 10, scope: !535)
!3985 = !DILocation(line: 53, column: 10, scope: !3939, inlinedAt: !3984)
!3986 = !DILocation(line: 192, column: 9, scope: !3979)
!3987 = !DILocation(line: 200, column: 69, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3989, file: !164, line: 200, column: 11)
!3989 = distinct !DILexicalBlock(scope: !3967, file: !164, line: 195, column: 5)
!3990 = !DILocation(line: 201, column: 11, scope: !3988)
!3991 = !DILocation(line: 200, column: 11, scope: !3989)
!3992 = !DILocation(line: 202, column: 9, scope: !3988)
!3993 = !DILocation(line: 203, column: 14, scope: !3989)
!3994 = !DILocation(line: 203, column: 18, scope: !3989)
!3995 = !DILocation(line: 203, column: 9, scope: !3989)
!3996 = !DILocation(line: 53, column: 8, scope: !3939, inlinedAt: !3984)
!3997 = !DILocation(line: 57, column: 7, scope: !3943, inlinedAt: !3984)
!3998 = !DILocation(line: 58, column: 7, scope: !3943, inlinedAt: !3984)
!3999 = !DILocation(line: 61, column: 7, scope: !3931, inlinedAt: !3984)
!4000 = !DILocation(line: 62, column: 8, scope: !3947, inlinedAt: !3984)
!4001 = !DILocation(line: 62, column: 13, scope: !3947, inlinedAt: !3984)
!4002 = !DILocation(line: 62, column: 10, scope: !3947, inlinedAt: !3984)
!4003 = !DILocation(line: 63, column: 5, scope: !3947, inlinedAt: !3984)
!4004 = !DILocation(line: 207, column: 3, scope: !535)
!4005 = distinct !DISubprogram(name: "xcharalloc", scope: !164, file: !164, line: 216, type: !3172, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !4006)
!4006 = !{!4007}
!4007 = !DILocalVariable(name: "n", arg: 1, scope: !4005, file: !164, line: 216, type: !93)
!4008 = !DILocation(line: 0, scope: !4005)
!4009 = !DILocation(line: 0, scope: !3896, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 218, column: 10, scope: !4005)
!4011 = !DILocation(line: 41, column: 13, scope: !3896, inlinedAt: !4010)
!4012 = !DILocation(line: 42, column: 8, scope: !3905, inlinedAt: !4010)
!4013 = !DILocation(line: 42, column: 15, scope: !3905, inlinedAt: !4010)
!4014 = !DILocation(line: 42, column: 10, scope: !3905, inlinedAt: !4010)
!4015 = !DILocation(line: 43, column: 5, scope: !3905, inlinedAt: !4010)
!4016 = !DILocation(line: 218, column: 3, scope: !4005)
!4017 = distinct !DISubprogram(name: "x2realloc", scope: !532, file: !532, line: 74, type: !4018, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !4020)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!91, !91, !538}
!4020 = !{!4021, !4022}
!4021 = !DILocalVariable(name: "p", arg: 1, scope: !4017, file: !532, line: 74, type: !91)
!4022 = !DILocalVariable(name: "pn", arg: 2, scope: !4017, file: !532, line: 74, type: !538)
!4023 = !DILocation(line: 0, scope: !4017)
!4024 = !DILocation(line: 0, scope: !535, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 76, column: 10, scope: !4017)
!4026 = !DILocation(line: 176, column: 14, scope: !535, inlinedAt: !4025)
!4027 = !DILocation(line: 178, column: 9, scope: !3967, inlinedAt: !4025)
!4028 = !DILocation(line: 178, column: 7, scope: !535, inlinedAt: !4025)
!4029 = !DILocation(line: 180, column: 13, scope: !3970, inlinedAt: !4025)
!4030 = !DILocation(line: 180, column: 11, scope: !3971, inlinedAt: !4025)
!4031 = !DILocation(line: 191, column: 11, scope: !3979, inlinedAt: !4025)
!4032 = !DILocation(line: 191, column: 11, scope: !3971, inlinedAt: !4025)
!4033 = !DILocation(line: 206, column: 7, scope: !535, inlinedAt: !4025)
!4034 = !DILocation(line: 0, scope: !3931, inlinedAt: !4035)
!4035 = distinct !DILocation(line: 207, column: 10, scope: !535, inlinedAt: !4025)
!4036 = !DILocation(line: 53, column: 10, scope: !3939, inlinedAt: !4035)
!4037 = !DILocation(line: 192, column: 9, scope: !3979, inlinedAt: !4025)
!4038 = !DILocation(line: 201, column: 11, scope: !3988, inlinedAt: !4025)
!4039 = !DILocation(line: 200, column: 11, scope: !3989, inlinedAt: !4025)
!4040 = !DILocation(line: 202, column: 9, scope: !3988, inlinedAt: !4025)
!4041 = !DILocation(line: 203, column: 14, scope: !3989, inlinedAt: !4025)
!4042 = !DILocation(line: 203, column: 18, scope: !3989, inlinedAt: !4025)
!4043 = !DILocation(line: 203, column: 9, scope: !3989, inlinedAt: !4025)
!4044 = !DILocation(line: 53, column: 8, scope: !3939, inlinedAt: !4035)
!4045 = !DILocation(line: 57, column: 7, scope: !3943, inlinedAt: !4035)
!4046 = !DILocation(line: 58, column: 7, scope: !3943, inlinedAt: !4035)
!4047 = !DILocation(line: 61, column: 7, scope: !3931, inlinedAt: !4035)
!4048 = !DILocation(line: 62, column: 8, scope: !3947, inlinedAt: !4035)
!4049 = !DILocation(line: 62, column: 13, scope: !3947, inlinedAt: !4035)
!4050 = !DILocation(line: 62, column: 10, scope: !3947, inlinedAt: !4035)
!4051 = !DILocation(line: 63, column: 5, scope: !3947, inlinedAt: !4035)
!4052 = !DILocation(line: 76, column: 3, scope: !4017)
!4053 = distinct !DISubprogram(name: "xzalloc", scope: !532, file: !532, line: 84, type: !3897, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !4054)
!4054 = !{!4055}
!4055 = !DILocalVariable(name: "n", arg: 1, scope: !4053, file: !532, line: 84, type: !93)
!4056 = !DILocation(line: 0, scope: !4053)
!4057 = !DILocalVariable(name: "n", arg: 1, scope: !4058, file: !532, line: 93, type: !93)
!4058 = distinct !DISubprogram(name: "xcalloc", scope: !532, file: !532, line: 93, type: !3884, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !4059)
!4059 = !{!4057, !4060, !4061}
!4060 = !DILocalVariable(name: "s", arg: 2, scope: !4058, file: !532, line: 93, type: !93)
!4061 = !DILocalVariable(name: "p", scope: !4058, file: !532, line: 95, type: !91)
!4062 = !DILocation(line: 0, scope: !4058, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 86, column: 10, scope: !4053)
!4064 = !DILocation(line: 100, column: 7, scope: !4065, inlinedAt: !4063)
!4065 = distinct !DILexicalBlock(scope: !4058, file: !532, line: 100, column: 7)
!4066 = !DILocation(line: 101, column: 7, scope: !4065, inlinedAt: !4063)
!4067 = !DILocation(line: 101, column: 18, scope: !4065, inlinedAt: !4063)
!4068 = !DILocation(line: 101, column: 16, scope: !4065, inlinedAt: !4063)
!4069 = !DILocation(line: 100, column: 7, scope: !4058, inlinedAt: !4063)
!4070 = !DILocation(line: 102, column: 5, scope: !4065, inlinedAt: !4063)
!4071 = !DILocation(line: 86, column: 3, scope: !4053)
!4072 = !DILocation(line: 0, scope: !4058)
!4073 = !DILocation(line: 100, column: 7, scope: !4065)
!4074 = !DILocation(line: 101, column: 7, scope: !4065)
!4075 = !DILocation(line: 101, column: 18, scope: !4065)
!4076 = !DILocation(line: 101, column: 16, scope: !4065)
!4077 = !DILocation(line: 100, column: 7, scope: !4058)
!4078 = !DILocation(line: 102, column: 5, scope: !4065)
!4079 = !DILocation(line: 103, column: 3, scope: !4058)
!4080 = distinct !DISubprogram(name: "xmemdup", scope: !532, file: !532, line: 111, type: !4081, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !4083)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!91, !190, !93}
!4083 = !{!4084, !4085}
!4084 = !DILocalVariable(name: "p", arg: 1, scope: !4080, file: !532, line: 111, type: !190)
!4085 = !DILocalVariable(name: "s", arg: 2, scope: !4080, file: !532, line: 111, type: !93)
!4086 = !DILocation(line: 0, scope: !4080)
!4087 = !DILocation(line: 0, scope: !3896, inlinedAt: !4088)
!4088 = distinct !DILocation(line: 113, column: 18, scope: !4080)
!4089 = !DILocation(line: 41, column: 13, scope: !3896, inlinedAt: !4088)
!4090 = !DILocation(line: 42, column: 8, scope: !3905, inlinedAt: !4088)
!4091 = !DILocation(line: 42, column: 15, scope: !3905, inlinedAt: !4088)
!4092 = !DILocation(line: 42, column: 10, scope: !3905, inlinedAt: !4088)
!4093 = !DILocation(line: 43, column: 5, scope: !3905, inlinedAt: !4088)
!4094 = !DILocalVariable(name: "__dest", arg: 1, scope: !4095, file: !1401, line: 31, type: !4098)
!4095 = distinct !DISubprogram(name: "memcpy", scope: !1401, file: !1401, line: 31, type: !4096, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !4100)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!91, !4098, !4099, !93}
!4098 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!4099 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !190)
!4100 = !{!4094, !4101, !4102}
!4101 = !DILocalVariable(name: "__src", arg: 2, scope: !4095, file: !1401, line: 31, type: !4099)
!4102 = !DILocalVariable(name: "__len", arg: 3, scope: !4095, file: !1401, line: 31, type: !93)
!4103 = !DILocation(line: 0, scope: !4095, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 113, column: 10, scope: !4080)
!4105 = !DILocation(line: 34, column: 10, scope: !4095, inlinedAt: !4104)
!4106 = !DILocation(line: 113, column: 3, scope: !4080)
!4107 = distinct !DISubprogram(name: "xstrdup", scope: !532, file: !532, line: 119, type: !113, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !4108)
!4108 = !{!4109}
!4109 = !DILocalVariable(name: "string", arg: 1, scope: !4107, file: !532, line: 119, type: !36)
!4110 = !DILocation(line: 0, scope: !4107)
!4111 = !DILocation(line: 121, column: 27, scope: !4107)
!4112 = !DILocation(line: 121, column: 43, scope: !4107)
!4113 = !DILocation(line: 0, scope: !4080, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 121, column: 10, scope: !4107)
!4115 = !DILocation(line: 0, scope: !3896, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 113, column: 18, scope: !4080, inlinedAt: !4114)
!4117 = !DILocation(line: 41, column: 13, scope: !3896, inlinedAt: !4116)
!4118 = !DILocation(line: 42, column: 8, scope: !3905, inlinedAt: !4116)
!4119 = !DILocation(line: 42, column: 15, scope: !3905, inlinedAt: !4116)
!4120 = !DILocation(line: 42, column: 10, scope: !3905, inlinedAt: !4116)
!4121 = !DILocation(line: 43, column: 5, scope: !3905, inlinedAt: !4116)
!4122 = !DILocation(line: 0, scope: !4095, inlinedAt: !4123)
!4123 = distinct !DILocation(line: 113, column: 10, scope: !4080, inlinedAt: !4114)
!4124 = !DILocation(line: 34, column: 10, scope: !4095, inlinedAt: !4123)
!4125 = !DILocation(line: 121, column: 3, scope: !4107)
!4126 = distinct !DISubprogram(name: "xalloc_die", scope: !553, file: !553, line: 32, type: !120, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !552, retainedNodes: !39)
!4127 = !DILocation(line: 34, column: 10, scope: !4126)
!4128 = !DILocation(line: 34, column: 33, scope: !4126)
!4129 = !DILocation(line: 34, column: 3, scope: !4126)
!4130 = !DILocation(line: 40, column: 3, scope: !4126)
!4131 = distinct !DISubprogram(name: "xnumtoumax", scope: !4132, file: !4132, line: 36, type: !4133, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4135)
!4132 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!1263, !36, !38, !1263, !1263, !36, !36, !38}
!4135 = !{!4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4145}
!4136 = !DILocalVariable(name: "n_str", arg: 1, scope: !4131, file: !4132, line: 36, type: !36)
!4137 = !DILocalVariable(name: "base", arg: 2, scope: !4131, file: !4132, line: 36, type: !38)
!4138 = !DILocalVariable(name: "min", arg: 3, scope: !4131, file: !4132, line: 36, type: !1263)
!4139 = !DILocalVariable(name: "max", arg: 4, scope: !4131, file: !4132, line: 36, type: !1263)
!4140 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4131, file: !4132, line: 37, type: !36)
!4141 = !DILocalVariable(name: "err", arg: 6, scope: !4131, file: !4132, line: 37, type: !36)
!4142 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4131, file: !4132, line: 37, type: !38)
!4143 = !DILocalVariable(name: "s_err", scope: !4131, file: !4132, line: 39, type: !4144)
!4144 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !559, line: 38, baseType: !558)
!4145 = !DILocalVariable(name: "tnum", scope: !4131, file: !4132, line: 41, type: !1263)
!4146 = !DILocation(line: 0, scope: !4131)
!4147 = !DILocation(line: 41, column: 3, scope: !4131)
!4148 = !DILocation(line: 42, column: 11, scope: !4131)
!4149 = !DILocation(line: 44, column: 7, scope: !4131)
!4150 = !DILocation(line: 69, column: 50, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4152, file: !4132, line: 67, column: 5)
!4152 = distinct !DILexicalBlock(scope: !4131, file: !4132, line: 66, column: 7)
!4153 = !DILocation(line: 46, column: 11, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4155, file: !4132, line: 46, column: 11)
!4155 = distinct !DILexicalBlock(scope: !4156, file: !4132, line: 45, column: 5)
!4156 = distinct !DILexicalBlock(scope: !4131, file: !4132, line: 44, column: 7)
!4157 = !DILocation(line: 46, column: 16, scope: !4154)
!4158 = !DILocation(line: 46, column: 29, scope: !4154)
!4159 = !DILocation(line: 46, column: 22, scope: !4154)
!4160 = !DILocation(line: 51, column: 20, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4162, file: !4132, line: 51, column: 15)
!4162 = distinct !DILexicalBlock(scope: !4154, file: !4132, line: 47, column: 9)
!4163 = !DILocation(line: 0, scope: !4161)
!4164 = !DILocation(line: 51, column: 15, scope: !4162)
!4165 = !DILocation(line: 52, column: 19, scope: !4161)
!4166 = !DILocation(line: 66, column: 7, scope: !4131)
!4167 = !DILocation(line: 58, column: 19, scope: !4161)
!4168 = !DILocation(line: 62, column: 5, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4156, file: !4132, line: 61, column: 12)
!4170 = !DILocation(line: 62, column: 11, scope: !4169)
!4171 = !DILocation(line: 64, column: 5, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4169, file: !4132, line: 63, column: 12)
!4173 = !DILocation(line: 64, column: 11, scope: !4172)
!4174 = !DILocation(line: 69, column: 14, scope: !4151)
!4175 = !DILocation(line: 69, column: 56, scope: !4151)
!4176 = !DILocation(line: 70, column: 29, scope: !4151)
!4177 = !DILocation(line: 69, column: 7, scope: !4151)
!4178 = !DILocation(line: 73, column: 10, scope: !4131)
!4179 = !DILocation(line: 71, column: 5, scope: !4151)
!4180 = !DILocation(line: 74, column: 1, scope: !4131)
!4181 = !DILocation(line: 73, column: 3, scope: !4131)
!4182 = distinct !DISubprogram(name: "xdectoumax", scope: !4132, file: !4132, line: 82, type: !4183, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4185)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!1263, !36, !1263, !1263, !36, !36, !38}
!4185 = !{!4186, !4187, !4188, !4189, !4190, !4191}
!4186 = !DILocalVariable(name: "n_str", arg: 1, scope: !4182, file: !4132, line: 82, type: !36)
!4187 = !DILocalVariable(name: "min", arg: 2, scope: !4182, file: !4132, line: 82, type: !1263)
!4188 = !DILocalVariable(name: "max", arg: 3, scope: !4182, file: !4132, line: 82, type: !1263)
!4189 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4182, file: !4132, line: 83, type: !36)
!4190 = !DILocalVariable(name: "err", arg: 5, scope: !4182, file: !4132, line: 83, type: !36)
!4191 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4182, file: !4132, line: 83, type: !38)
!4192 = !DILocation(line: 0, scope: !4182)
!4193 = !DILocation(line: 85, column: 10, scope: !4182)
!4194 = !DILocation(line: 85, column: 3, scope: !4182)
!4195 = distinct !DISubprogram(name: "xstrtoumax", scope: !4196, file: !4196, line: 76, type: !4197, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !4200)
!4196 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!4144, !36, !570, !38, !4199, !36}
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!4200 = !{!4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4213, !4214, !4217, !4218}
!4201 = !DILocalVariable(name: "s", arg: 1, scope: !4195, file: !4196, line: 76, type: !36)
!4202 = !DILocalVariable(name: "ptr", arg: 2, scope: !4195, file: !4196, line: 76, type: !570)
!4203 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4195, file: !4196, line: 76, type: !38)
!4204 = !DILocalVariable(name: "val", arg: 4, scope: !4195, file: !4196, line: 77, type: !4199)
!4205 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4195, file: !4196, line: 77, type: !36)
!4206 = !DILocalVariable(name: "t_ptr", scope: !4195, file: !4196, line: 79, type: !34)
!4207 = !DILocalVariable(name: "p", scope: !4195, file: !4196, line: 80, type: !570)
!4208 = !DILocalVariable(name: "tmp", scope: !4195, file: !4196, line: 81, type: !1263)
!4209 = !DILocalVariable(name: "err", scope: !4195, file: !4196, line: 82, type: !4144)
!4210 = !DILocalVariable(name: "q", scope: !4211, file: !4196, line: 92, type: !36)
!4211 = distinct !DILexicalBlock(scope: !4212, file: !4196, line: 91, column: 5)
!4212 = distinct !DILexicalBlock(scope: !4195, file: !4196, line: 90, column: 7)
!4213 = !DILocalVariable(name: "ch", scope: !4211, file: !4196, line: 93, type: !192)
!4214 = !DILocalVariable(name: "base", scope: !4215, file: !4196, line: 129, type: !38)
!4215 = distinct !DILexicalBlock(scope: !4216, file: !4196, line: 128, column: 5)
!4216 = distinct !DILexicalBlock(scope: !4195, file: !4196, line: 127, column: 7)
!4217 = !DILocalVariable(name: "suffixes", scope: !4215, file: !4196, line: 130, type: !38)
!4218 = !DILocalVariable(name: "overflow", scope: !4215, file: !4196, line: 131, type: !4144)
!4219 = !DILocation(line: 0, scope: !4195)
!4220 = !DILocation(line: 79, column: 3, scope: !4195)
!4221 = !DILocation(line: 84, column: 3, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4223, file: !4196, line: 84, column: 3)
!4223 = distinct !DILexicalBlock(scope: !4195, file: !4196, line: 84, column: 3)
!4224 = !DILocation(line: 86, column: 8, scope: !4195)
!4225 = !DILocation(line: 88, column: 3, scope: !4195)
!4226 = !DILocation(line: 88, column: 9, scope: !4195)
!4227 = !DILocation(line: 0, scope: !4211)
!4228 = !DILocation(line: 94, column: 7, scope: !4211)
!4229 = !DILocation(line: 94, column: 14, scope: !4211)
!4230 = !DILocation(line: 95, column: 15, scope: !4211)
!4231 = distinct !{!4231, !4228, !4232}
!4232 = !DILocation(line: 95, column: 17, scope: !4211)
!4233 = !DILocation(line: 96, column: 14, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4211, file: !4196, line: 96, column: 11)
!4235 = !DILocalVariable(name: "nptr", arg: 1, scope: !4236, file: !4237, line: 336, type: !211)
!4236 = distinct !DISubprogram(name: "strtoumax", scope: !4237, file: !4237, line: 336, type: !4238, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !4241)
!4237 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!1263, !211, !4240, !38}
!4240 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !570)
!4241 = !{!4235, !4242, !4243}
!4242 = !DILocalVariable(name: "endptr", arg: 2, scope: !4236, file: !4237, line: 336, type: !4240)
!4243 = !DILocalVariable(name: "base", arg: 3, scope: !4236, file: !4237, line: 336, type: !38)
!4244 = !DILocation(line: 0, scope: !4236, inlinedAt: !4245)
!4245 = distinct !DILocation(line: 100, column: 9, scope: !4195)
!4246 = !DILocation(line: 339, column: 10, scope: !4236, inlinedAt: !4245)
!4247 = !DILocation(line: 102, column: 7, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4195, file: !4196, line: 102, column: 7)
!4249 = !DILocation(line: 102, column: 10, scope: !4248)
!4250 = !DILocation(line: 102, column: 7, scope: !4195)
!4251 = !DILocation(line: 106, column: 11, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4253, file: !4196, line: 106, column: 11)
!4253 = distinct !DILexicalBlock(scope: !4248, file: !4196, line: 103, column: 5)
!4254 = !DILocation(line: 106, column: 26, scope: !4252)
!4255 = !DILocation(line: 106, column: 29, scope: !4252)
!4256 = !DILocation(line: 106, column: 33, scope: !4252)
!4257 = !DILocation(line: 106, column: 36, scope: !4252)
!4258 = !DILocation(line: 106, column: 11, scope: !4253)
!4259 = !DILocation(line: 111, column: 12, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4248, file: !4196, line: 111, column: 12)
!4261 = !DILocation(line: 111, column: 12, scope: !4248)
!4262 = !DILocation(line: 116, column: 5, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4260, file: !4196, line: 112, column: 5)
!4264 = !DILocation(line: 121, column: 8, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4195, file: !4196, line: 121, column: 7)
!4266 = !DILocation(line: 121, column: 7, scope: !4195)
!4267 = !DILocation(line: 123, column: 12, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4265, file: !4196, line: 122, column: 5)
!4269 = !DILocation(line: 124, column: 7, scope: !4268)
!4270 = !DILocation(line: 127, column: 7, scope: !4216)
!4271 = !DILocation(line: 127, column: 11, scope: !4216)
!4272 = !DILocation(line: 127, column: 7, scope: !4195)
!4273 = !DILocation(line: 0, scope: !4215)
!4274 = !DILocation(line: 133, column: 12, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4215, file: !4196, line: 133, column: 11)
!4276 = !DILocation(line: 133, column: 11, scope: !4215)
!4277 = !DILocation(line: 135, column: 16, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4275, file: !4196, line: 134, column: 9)
!4279 = !DILocation(line: 136, column: 22, scope: !4278)
!4280 = !DILocation(line: 136, column: 11, scope: !4278)
!4281 = !DILocation(line: 139, column: 7, scope: !4215)
!4282 = !DILocation(line: 151, column: 15, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4284, file: !4196, line: 151, column: 15)
!4284 = distinct !DILexicalBlock(scope: !4215, file: !4196, line: 140, column: 9)
!4285 = !DILocation(line: 151, column: 15, scope: !4284)
!4286 = !DILocation(line: 152, column: 21, scope: !4283)
!4287 = !DILocation(line: 152, column: 13, scope: !4283)
!4288 = !DILocation(line: 155, column: 21, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4290, file: !4196, line: 155, column: 21)
!4290 = distinct !DILexicalBlock(scope: !4283, file: !4196, line: 153, column: 15)
!4291 = !DILocation(line: 155, column: 29, scope: !4289)
!4292 = !DILocation(line: 155, column: 21, scope: !4290)
!4293 = !DILocation(line: 163, column: 17, scope: !4290)
!4294 = !DILocation(line: 167, column: 7, scope: !4215)
!4295 = !DILocalVariable(name: "err", scope: !4296, file: !4196, line: 67, type: !4144)
!4296 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4196, file: !4196, line: 65, type: !4297, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !4299)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!4144, !4199, !38, !38}
!4299 = !{!4300, !4301, !4302, !4295}
!4300 = !DILocalVariable(name: "x", arg: 1, scope: !4296, file: !4196, line: 65, type: !4199)
!4301 = !DILocalVariable(name: "base", arg: 2, scope: !4296, file: !4196, line: 65, type: !38)
!4302 = !DILocalVariable(name: "power", arg: 3, scope: !4296, file: !4196, line: 65, type: !38)
!4303 = !DILocation(line: 0, scope: !4296, inlinedAt: !4304)
!4304 = distinct !DILocation(line: 221, column: 22, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4215, file: !4196, line: 168, column: 9)
!4306 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4307, file: !4196, line: 48, type: !38)
!4307 = distinct !DISubprogram(name: "bkm_scale", scope: !4196, file: !4196, line: 48, type: !4308, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !4310)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!4144, !4199, !38}
!4310 = !{!4311, !4306}
!4311 = !DILocalVariable(name: "x", arg: 1, scope: !4307, file: !4196, line: 48, type: !4199)
!4312 = !DILocation(line: 0, scope: !4307, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 69, column: 12, scope: !4296, inlinedAt: !4304)
!4314 = !DILocation(line: 55, column: 39, scope: !4315, inlinedAt: !4313)
!4315 = distinct !DILexicalBlock(scope: !4307, file: !4196, line: 55, column: 7)
!4316 = !DILocation(line: 55, column: 7, scope: !4307, inlinedAt: !4313)
!4317 = !DILocation(line: 69, column: 9, scope: !4296, inlinedAt: !4304)
!4318 = !DILocation(line: 229, column: 11, scope: !4215)
!4319 = !DILocation(line: 0, scope: !4296, inlinedAt: !4320)
!4320 = distinct !DILocation(line: 217, column: 22, scope: !4305)
!4321 = !DILocation(line: 0, scope: !4307, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 69, column: 12, scope: !4296, inlinedAt: !4320)
!4323 = !DILocation(line: 55, column: 39, scope: !4315, inlinedAt: !4322)
!4324 = !DILocation(line: 55, column: 7, scope: !4307, inlinedAt: !4322)
!4325 = !DILocation(line: 69, column: 9, scope: !4296, inlinedAt: !4320)
!4326 = !DILocation(line: 0, scope: !4296, inlinedAt: !4327)
!4327 = distinct !DILocation(line: 204, column: 22, scope: !4305)
!4328 = !DILocation(line: 0, scope: !4307, inlinedAt: !4329)
!4329 = distinct !DILocation(line: 69, column: 12, scope: !4296, inlinedAt: !4327)
!4330 = !DILocation(line: 55, column: 39, scope: !4315, inlinedAt: !4329)
!4331 = !DILocation(line: 55, column: 7, scope: !4307, inlinedAt: !4329)
!4332 = !DILocation(line: 69, column: 9, scope: !4296, inlinedAt: !4327)
!4333 = !DILocation(line: 0, scope: !4296, inlinedAt: !4334)
!4334 = distinct !DILocation(line: 185, column: 22, scope: !4305)
!4335 = !DILocation(line: 0, scope: !4307, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 69, column: 12, scope: !4296, inlinedAt: !4334)
!4337 = !DILocation(line: 55, column: 39, scope: !4315, inlinedAt: !4336)
!4338 = !DILocation(line: 55, column: 7, scope: !4307, inlinedAt: !4336)
!4339 = !DILocation(line: 69, column: 9, scope: !4296, inlinedAt: !4334)
!4340 = !DILocation(line: 0, scope: !4307, inlinedAt: !4341)
!4341 = distinct !DILocation(line: 170, column: 22, scope: !4305)
!4342 = !DILocation(line: 55, column: 39, scope: !4315, inlinedAt: !4341)
!4343 = !DILocation(line: 55, column: 7, scope: !4307, inlinedAt: !4341)
!4344 = !DILocation(line: 171, column: 11, scope: !4305)
!4345 = !DILocation(line: 0, scope: !4307, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 177, column: 22, scope: !4305)
!4347 = !DILocation(line: 55, column: 39, scope: !4315, inlinedAt: !4346)
!4348 = !DILocation(line: 55, column: 7, scope: !4307, inlinedAt: !4346)
!4349 = !DILocation(line: 178, column: 11, scope: !4305)
!4350 = !DILocation(line: 0, scope: !4296, inlinedAt: !4351)
!4351 = distinct !DILocation(line: 190, column: 22, scope: !4305)
!4352 = !DILocation(line: 0, scope: !4307, inlinedAt: !4353)
!4353 = distinct !DILocation(line: 69, column: 12, scope: !4296, inlinedAt: !4351)
!4354 = !DILocation(line: 55, column: 39, scope: !4315, inlinedAt: !4353)
!4355 = !DILocation(line: 55, column: 7, scope: !4307, inlinedAt: !4353)
!4356 = !DILocation(line: 69, column: 9, scope: !4296, inlinedAt: !4351)
!4357 = !DILocation(line: 0, scope: !4296, inlinedAt: !4358)
!4358 = distinct !DILocation(line: 195, column: 22, scope: !4305)
!4359 = !DILocation(line: 0, scope: !4307, inlinedAt: !4360)
!4360 = distinct !DILocation(line: 69, column: 12, scope: !4296, inlinedAt: !4358)
!4361 = !DILocation(line: 55, column: 39, scope: !4315, inlinedAt: !4360)
!4362 = !DILocation(line: 55, column: 7, scope: !4307, inlinedAt: !4360)
!4363 = !DILocation(line: 0, scope: !4296, inlinedAt: !4364)
!4364 = distinct !DILocation(line: 200, column: 22, scope: !4305)
!4365 = !DILocation(line: 0, scope: !4307, inlinedAt: !4366)
!4366 = distinct !DILocation(line: 69, column: 12, scope: !4296, inlinedAt: !4364)
!4367 = !DILocation(line: 55, column: 39, scope: !4315, inlinedAt: !4366)
!4368 = !DILocation(line: 55, column: 7, scope: !4307, inlinedAt: !4366)
!4369 = !DILocation(line: 69, column: 9, scope: !4296, inlinedAt: !4364)
!4370 = !DILocation(line: 0, scope: !4296, inlinedAt: !4371)
!4371 = distinct !DILocation(line: 209, column: 22, scope: !4305)
!4372 = !DILocation(line: 0, scope: !4307, inlinedAt: !4373)
!4373 = distinct !DILocation(line: 69, column: 12, scope: !4296, inlinedAt: !4371)
!4374 = !DILocation(line: 55, column: 39, scope: !4315, inlinedAt: !4373)
!4375 = !DILocation(line: 55, column: 7, scope: !4307, inlinedAt: !4373)
!4376 = !DILocation(line: 69, column: 9, scope: !4296, inlinedAt: !4371)
!4377 = !DILocation(line: 0, scope: !4307, inlinedAt: !4378)
!4378 = distinct !DILocation(line: 213, column: 22, scope: !4305)
!4379 = !DILocation(line: 55, column: 39, scope: !4315, inlinedAt: !4378)
!4380 = !DILocation(line: 55, column: 7, scope: !4307, inlinedAt: !4378)
!4381 = !DILocation(line: 214, column: 11, scope: !4305)
!4382 = !DILocation(line: 225, column: 16, scope: !4305)
!4383 = !DILocation(line: 226, column: 22, scope: !4305)
!4384 = !DILocation(line: 226, column: 11, scope: !4305)
!4385 = !DILocation(line: 0, scope: !4305)
!4386 = !DILocation(line: 230, column: 10, scope: !4215)
!4387 = !DILocation(line: 231, column: 11, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4215, file: !4196, line: 231, column: 11)
!4389 = !DILocation(line: 232, column: 13, scope: !4388)
!4390 = !DILocation(line: 231, column: 11, scope: !4215)
!4391 = !DILocation(line: 107, column: 13, scope: !4252)
!4392 = !DILocation(line: 82, column: 16, scope: !4195)
!4393 = !DILocation(line: 235, column: 8, scope: !4195)
!4394 = !DILocation(line: 236, column: 3, scope: !4195)
!4395 = !DILocation(line: 237, column: 1, scope: !4195)
!4396 = distinct !DISubprogram(name: "rpl_calloc", scope: !576, file: !576, line: 42, type: !3884, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !4397)
!4397 = !{!4398, !4399, !4400, !4401}
!4398 = !DILocalVariable(name: "n", arg: 1, scope: !4396, file: !576, line: 42, type: !93)
!4399 = !DILocalVariable(name: "s", arg: 2, scope: !4396, file: !576, line: 42, type: !93)
!4400 = !DILocalVariable(name: "result", scope: !4396, file: !576, line: 44, type: !91)
!4401 = !DILocalVariable(name: "bytes", scope: !4402, file: !576, line: 56, type: !93)
!4402 = distinct !DILexicalBlock(scope: !4403, file: !576, line: 53, column: 5)
!4403 = distinct !DILexicalBlock(scope: !4396, file: !576, line: 47, column: 7)
!4404 = !DILocation(line: 0, scope: !4396)
!4405 = !DILocation(line: 47, column: 9, scope: !4403)
!4406 = !DILocation(line: 47, column: 19, scope: !4403)
!4407 = !DILocation(line: 47, column: 14, scope: !4403)
!4408 = !DILocation(line: 0, scope: !4402)
!4409 = !DILocation(line: 57, column: 21, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4402, file: !576, line: 57, column: 11)
!4411 = !DILocation(line: 57, column: 11, scope: !4402)
!4412 = !DILocation(line: 59, column: 11, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4410, file: !576, line: 58, column: 9)
!4414 = !DILocation(line: 59, column: 17, scope: !4413)
!4415 = !DILocation(line: 65, column: 12, scope: !4396)
!4416 = !DILocation(line: 72, column: 3, scope: !4396)
!4417 = !DILocation(line: 73, column: 1, scope: !4396)
!4418 = distinct !DISubprogram(name: "rpl_fclose", scope: !579, file: !579, line: 58, type: !4419, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !4423)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!38, !4421}
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1258, line: 7, baseType: !585)
!4423 = !{!4424, !4425, !4426, !4427}
!4424 = !DILocalVariable(name: "fp", arg: 1, scope: !4418, file: !579, line: 58, type: !4421)
!4425 = !DILocalVariable(name: "saved_errno", scope: !4418, file: !579, line: 60, type: !38)
!4426 = !DILocalVariable(name: "fd", scope: !4418, file: !579, line: 61, type: !38)
!4427 = !DILocalVariable(name: "result", scope: !4418, file: !579, line: 62, type: !38)
!4428 = !DILocation(line: 0, scope: !4418)
!4429 = !DILocation(line: 65, column: 8, scope: !4418)
!4430 = !DILocation(line: 66, column: 10, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4418, file: !579, line: 66, column: 7)
!4432 = !DILocation(line: 66, column: 7, scope: !4418)
!4433 = !DILocation(line: 67, column: 12, scope: !4431)
!4434 = !DILocation(line: 67, column: 5, scope: !4431)
!4435 = !DILocation(line: 72, column: 9, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4418, file: !579, line: 72, column: 7)
!4437 = !DILocation(line: 72, column: 23, scope: !4436)
!4438 = !DILocation(line: 72, column: 33, scope: !4436)
!4439 = !DILocation(line: 72, column: 26, scope: !4436)
!4440 = !DILocation(line: 72, column: 59, scope: !4436)
!4441 = !DILocation(line: 73, column: 7, scope: !4436)
!4442 = !DILocation(line: 73, column: 10, scope: !4436)
!4443 = !DILocation(line: 72, column: 7, scope: !4418)
!4444 = !DILocation(line: 100, column: 12, scope: !4418)
!4445 = !DILocation(line: 105, column: 7, scope: !4418)
!4446 = !DILocation(line: 74, column: 19, scope: !4436)
!4447 = !DILocation(line: 105, column: 19, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4418, file: !579, line: 105, column: 7)
!4449 = !DILocation(line: 107, column: 13, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4448, file: !579, line: 106, column: 5)
!4451 = !DILocation(line: 109, column: 5, scope: !4450)
!4452 = !DILocation(line: 112, column: 1, scope: !4418)
!4453 = distinct !DISubprogram(name: "rpl_fflush", scope: !623, file: !623, line: 129, type: !4454, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !4458)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!38, !4456}
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1258, line: 7, baseType: !629)
!4458 = !{!4459}
!4459 = !DILocalVariable(name: "stream", arg: 1, scope: !4453, file: !623, line: 129, type: !4456)
!4460 = !DILocation(line: 0, scope: !4453)
!4461 = !DILocation(line: 150, column: 14, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4453, file: !623, line: 150, column: 7)
!4463 = !DILocation(line: 150, column: 22, scope: !4462)
!4464 = !DILocation(line: 150, column: 27, scope: !4462)
!4465 = !DILocation(line: 150, column: 7, scope: !4453)
!4466 = !DILocation(line: 151, column: 12, scope: !4462)
!4467 = !DILocation(line: 151, column: 5, scope: !4462)
!4468 = !DILocalVariable(name: "fp", arg: 1, scope: !4469, file: !623, line: 41, type: !4456)
!4469 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !623, file: !623, line: 41, type: !4470, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !4472)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{null, !4456}
!4472 = !{!4468}
!4473 = !DILocation(line: 0, scope: !4469, inlinedAt: !4474)
!4474 = distinct !DILocation(line: 156, column: 3, scope: !4453)
!4475 = !DILocation(line: 43, column: 11, scope: !4476, inlinedAt: !4474)
!4476 = distinct !DILexicalBlock(scope: !4469, file: !623, line: 43, column: 7)
!4477 = !DILocation(line: 43, column: 18, scope: !4476, inlinedAt: !4474)
!4478 = !DILocation(line: 43, column: 7, scope: !4469, inlinedAt: !4474)
!4479 = !DILocation(line: 45, column: 5, scope: !4476, inlinedAt: !4474)
!4480 = !DILocation(line: 158, column: 10, scope: !4453)
!4481 = !DILocation(line: 158, column: 3, scope: !4453)
!4482 = !DILocation(line: 235, column: 1, scope: !4453)
!4483 = distinct !DISubprogram(name: "rpl_fseeko", scope: !664, file: !664, line: 28, type: !4484, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !4488)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!38, !4486, !2215, !38}
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1258, line: 7, baseType: !670)
!4488 = !{!4489, !4490, !4491, !4492}
!4489 = !DILocalVariable(name: "fp", arg: 1, scope: !4483, file: !664, line: 28, type: !4486)
!4490 = !DILocalVariable(name: "offset", arg: 2, scope: !4483, file: !664, line: 28, type: !2215)
!4491 = !DILocalVariable(name: "whence", arg: 3, scope: !4483, file: !664, line: 28, type: !38)
!4492 = !DILocalVariable(name: "pos", scope: !4493, file: !664, line: 117, type: !2215)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !664, line: 113, column: 5)
!4494 = distinct !DILexicalBlock(scope: !4483, file: !664, line: 52, column: 7)
!4495 = !DILocation(line: 0, scope: !4483)
!4496 = !DILocation(line: 52, column: 11, scope: !4494)
!4497 = !{!1417, !1202, i64 16}
!4498 = !DILocation(line: 52, column: 31, scope: !4494)
!4499 = !{!1417, !1202, i64 8}
!4500 = !DILocation(line: 52, column: 24, scope: !4494)
!4501 = !DILocation(line: 53, column: 7, scope: !4494)
!4502 = !DILocation(line: 53, column: 14, scope: !4494)
!4503 = !DILocation(line: 53, column: 35, scope: !4494)
!4504 = !{!1417, !1202, i64 32}
!4505 = !DILocation(line: 53, column: 28, scope: !4494)
!4506 = !DILocation(line: 54, column: 7, scope: !4494)
!4507 = !DILocation(line: 54, column: 14, scope: !4494)
!4508 = !{!1417, !1202, i64 72}
!4509 = !DILocation(line: 54, column: 28, scope: !4494)
!4510 = !DILocation(line: 52, column: 7, scope: !4483)
!4511 = !DILocation(line: 117, column: 26, scope: !4493)
!4512 = !DILocation(line: 117, column: 19, scope: !4493)
!4513 = !DILocation(line: 0, scope: !4493)
!4514 = !DILocation(line: 118, column: 15, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4493, file: !664, line: 118, column: 11)
!4516 = !DILocation(line: 118, column: 11, scope: !4493)
!4517 = !DILocation(line: 129, column: 11, scope: !4493)
!4518 = !DILocation(line: 129, column: 18, scope: !4493)
!4519 = !DILocation(line: 130, column: 11, scope: !4493)
!4520 = !DILocation(line: 130, column: 19, scope: !4493)
!4521 = !{!1417, !1379, i64 144}
!4522 = !DILocation(line: 161, column: 7, scope: !4493)
!4523 = !DILocation(line: 163, column: 10, scope: !4483)
!4524 = !DILocation(line: 163, column: 3, scope: !4483)
!4525 = !DILocation(line: 164, column: 1, scope: !4483)
!4526 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !705, file: !705, line: 86, type: !4527, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !704, retainedNodes: !4533)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{!93, !4529, !36, !93, !4530}
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2449, line: 6, baseType: !4532)
!4532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !376, line: 21, baseType: !711)
!4533 = !{!4534, !4535, !4536, !4537, !4538, !4539, !4540}
!4534 = !DILocalVariable(name: "pwc", arg: 1, scope: !4526, file: !705, line: 86, type: !4529)
!4535 = !DILocalVariable(name: "s", arg: 2, scope: !4526, file: !705, line: 86, type: !36)
!4536 = !DILocalVariable(name: "n", arg: 3, scope: !4526, file: !705, line: 86, type: !93)
!4537 = !DILocalVariable(name: "ps", arg: 4, scope: !4526, file: !705, line: 86, type: !4530)
!4538 = !DILocalVariable(name: "ret", scope: !4526, file: !705, line: 88, type: !93)
!4539 = !DILocalVariable(name: "wc", scope: !4526, file: !705, line: 89, type: !2453)
!4540 = !DILocalVariable(name: "uc", scope: !4541, file: !705, line: 156, type: !192)
!4541 = distinct !DILexicalBlock(scope: !4542, file: !705, line: 155, column: 5)
!4542 = distinct !DILexicalBlock(scope: !4526, file: !705, line: 154, column: 7)
!4543 = !DILocation(line: 0, scope: !4526)
!4544 = !DILocation(line: 89, column: 3, scope: !4526)
!4545 = !DILocation(line: 105, column: 9, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4526, file: !705, line: 105, column: 7)
!4547 = !DILocation(line: 105, column: 7, scope: !4526)
!4548 = !DILocation(line: 145, column: 9, scope: !4526)
!4549 = !DILocation(line: 154, column: 19, scope: !4542)
!4550 = !DILocation(line: 154, column: 31, scope: !4542)
!4551 = !DILocation(line: 154, column: 26, scope: !4542)
!4552 = !DILocation(line: 154, column: 41, scope: !4542)
!4553 = !DILocation(line: 154, column: 7, scope: !4526)
!4554 = !DILocation(line: 156, column: 26, scope: !4541)
!4555 = !DILocation(line: 0, scope: !4541)
!4556 = !DILocation(line: 157, column: 14, scope: !4541)
!4557 = !DILocation(line: 157, column: 12, scope: !4541)
!4558 = !DILocation(line: 163, column: 1, scope: !4526)
!4559 = distinct !DISubprogram(name: "close_stream", scope: !724, file: !724, line: 56, type: !4560, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !4564)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!38, !4562}
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1258, line: 7, baseType: !730)
!4564 = !{!4565, !4566, !4568, !4569}
!4565 = !DILocalVariable(name: "stream", arg: 1, scope: !4559, file: !724, line: 56, type: !4562)
!4566 = !DILocalVariable(name: "some_pending", scope: !4559, file: !724, line: 58, type: !4567)
!4567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!4568 = !DILocalVariable(name: "prev_fail", scope: !4559, file: !724, line: 59, type: !4567)
!4569 = !DILocalVariable(name: "fclose_fail", scope: !4559, file: !724, line: 60, type: !4567)
!4570 = !DILocation(line: 0, scope: !4559)
!4571 = !DILocation(line: 58, column: 30, scope: !4559)
!4572 = !DILocalVariable(name: "__stream", arg: 1, scope: !4573, file: !1364, line: 135, type: !4562)
!4573 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1364, file: !1364, line: 135, type: !4560, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !4574)
!4574 = !{!4572}
!4575 = !DILocation(line: 0, scope: !4573, inlinedAt: !4576)
!4576 = distinct !DILocation(line: 59, column: 27, scope: !4559)
!4577 = !DILocation(line: 137, column: 10, scope: !4573, inlinedAt: !4576)
!4578 = !DILocation(line: 59, column: 43, scope: !4559)
!4579 = !DILocation(line: 60, column: 29, scope: !4559)
!4580 = !DILocation(line: 60, column: 45, scope: !4559)
!4581 = !DILocation(line: 70, column: 17, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4559, file: !724, line: 70, column: 7)
!4583 = !DILocation(line: 58, column: 50, scope: !4559)
!4584 = !DILocation(line: 70, column: 33, scope: !4582)
!4585 = !DILocation(line: 70, column: 53, scope: !4582)
!4586 = !DILocation(line: 70, column: 59, scope: !4582)
!4587 = !DILocation(line: 70, column: 7, scope: !4559)
!4588 = !DILocation(line: 72, column: 11, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4582, file: !724, line: 71, column: 5)
!4590 = !DILocation(line: 73, column: 9, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4589, file: !724, line: 72, column: 11)
!4592 = !DILocation(line: 73, column: 15, scope: !4591)
!4593 = !DILocation(line: 78, column: 1, scope: !4559)
!4594 = distinct !DISubprogram(name: "hard_locale", scope: !762, file: !762, line: 27, type: !721, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !4595)
!4595 = !{!4596, !4597}
!4596 = !DILocalVariable(name: "category", arg: 1, scope: !4594, file: !762, line: 27, type: !38)
!4597 = !DILocalVariable(name: "locale", scope: !4594, file: !762, line: 29, type: !4598)
!4598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2056, elements: !4599)
!4599 = !{!4600}
!4600 = !DISubrange(count: 257)
!4601 = !DILocation(line: 0, scope: !4594)
!4602 = !DILocation(line: 29, column: 3, scope: !4594)
!4603 = !DILocation(line: 29, column: 8, scope: !4594)
!4604 = !DILocation(line: 31, column: 7, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4594, file: !762, line: 31, column: 7)
!4606 = !DILocation(line: 31, column: 7, scope: !4594)
!4607 = !DILocation(line: 34, column: 12, scope: !4594)
!4608 = !DILocation(line: 34, column: 38, scope: !4594)
!4609 = !DILocation(line: 34, column: 41, scope: !4594)
!4610 = !DILocation(line: 34, column: 66, scope: !4594)
!4611 = !DILocation(line: 35, column: 1, scope: !4594)
!4612 = distinct !DISubprogram(name: "locale_charset", scope: !769, file: !769, line: 831, type: !399, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !4613)
!4613 = !{!4614}
!4614 = !DILocalVariable(name: "codeset", scope: !4612, file: !769, line: 833, type: !36)
!4615 = !DILocation(line: 847, column: 13, scope: !4612)
!4616 = !DILocation(line: 0, scope: !4612)
!4617 = !DILocation(line: 911, column: 15, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4612, file: !769, line: 911, column: 7)
!4619 = !DILocation(line: 911, column: 7, scope: !4612)
!4620 = !DILocation(line: 1070, column: 13, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4622, file: !769, line: 1070, column: 13)
!4622 = distinct !DILexicalBlock(scope: !4623, file: !769, line: 1060, column: 7)
!4623 = distinct !DILexicalBlock(scope: !4612, file: !769, line: 1019, column: 3)
!4624 = !DILocation(line: 1070, column: 24, scope: !4621)
!4625 = !DILocation(line: 1070, column: 13, scope: !4622)
!4626 = !DILocation(line: 1158, column: 3, scope: !4612)
!4627 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1162, file: !1162, line: 269, type: !4628, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1161, retainedNodes: !4630)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!38, !38, !34, !93}
!4630 = !{!4631, !4632, !4633}
!4631 = !DILocalVariable(name: "category", arg: 1, scope: !4627, file: !1162, line: 269, type: !38)
!4632 = !DILocalVariable(name: "buf", arg: 2, scope: !4627, file: !1162, line: 269, type: !34)
!4633 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4627, file: !1162, line: 269, type: !93)
!4634 = !DILocation(line: 0, scope: !4627)
!4635 = !DILocalVariable(name: "category", arg: 1, scope: !4636, file: !1162, line: 91, type: !38)
!4636 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1162, file: !1162, line: 91, type: !4628, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1161, retainedNodes: !4637)
!4637 = !{!4635, !4638, !4639, !4640, !4641}
!4638 = !DILocalVariable(name: "buf", arg: 2, scope: !4636, file: !1162, line: 91, type: !34)
!4639 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4636, file: !1162, line: 91, type: !93)
!4640 = !DILocalVariable(name: "result", scope: !4636, file: !1162, line: 140, type: !36)
!4641 = !DILocalVariable(name: "length", scope: !4642, file: !1162, line: 154, type: !93)
!4642 = distinct !DILexicalBlock(scope: !4643, file: !1162, line: 153, column: 5)
!4643 = distinct !DILexicalBlock(scope: !4636, file: !1162, line: 142, column: 7)
!4644 = !DILocation(line: 0, scope: !4636, inlinedAt: !4645)
!4645 = distinct !DILocation(line: 274, column: 10, scope: !4627)
!4646 = !DILocalVariable(name: "category", arg: 1, scope: !4647, file: !1162, line: 60, type: !38)
!4647 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1162, file: !1162, line: 60, type: !4648, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1161, retainedNodes: !4650)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!36, !38}
!4650 = !{!4646, !4651}
!4651 = !DILocalVariable(name: "result", scope: !4647, file: !1162, line: 62, type: !36)
!4652 = !DILocation(line: 0, scope: !4647, inlinedAt: !4653)
!4653 = distinct !DILocation(line: 140, column: 24, scope: !4636, inlinedAt: !4645)
!4654 = !DILocation(line: 62, column: 24, scope: !4647, inlinedAt: !4653)
!4655 = !DILocation(line: 142, column: 14, scope: !4643, inlinedAt: !4645)
!4656 = !DILocation(line: 142, column: 7, scope: !4636, inlinedAt: !4645)
!4657 = !DILocation(line: 145, column: 19, scope: !4658, inlinedAt: !4645)
!4658 = distinct !DILexicalBlock(scope: !4659, file: !1162, line: 145, column: 11)
!4659 = distinct !DILexicalBlock(scope: !4643, file: !1162, line: 143, column: 5)
!4660 = !DILocation(line: 145, column: 11, scope: !4659, inlinedAt: !4645)
!4661 = !DILocation(line: 149, column: 16, scope: !4658, inlinedAt: !4645)
!4662 = !DILocation(line: 149, column: 9, scope: !4658, inlinedAt: !4645)
!4663 = !DILocation(line: 154, column: 23, scope: !4642, inlinedAt: !4645)
!4664 = !DILocation(line: 0, scope: !4642, inlinedAt: !4645)
!4665 = !DILocation(line: 155, column: 18, scope: !4666, inlinedAt: !4645)
!4666 = distinct !DILexicalBlock(scope: !4642, file: !1162, line: 155, column: 11)
!4667 = !DILocation(line: 155, column: 11, scope: !4642, inlinedAt: !4645)
!4668 = !DILocation(line: 157, column: 39, scope: !4669, inlinedAt: !4645)
!4669 = distinct !DILexicalBlock(scope: !4666, file: !1162, line: 156, column: 9)
!4670 = !DILocalVariable(name: "__dest", arg: 1, scope: !4671, file: !1401, line: 31, type: !4098)
!4671 = distinct !DISubprogram(name: "memcpy", scope: !1401, file: !1401, line: 31, type: !4096, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1161, retainedNodes: !4672)
!4672 = !{!4670, !4673, !4674}
!4673 = !DILocalVariable(name: "__src", arg: 2, scope: !4671, file: !1401, line: 31, type: !4099)
!4674 = !DILocalVariable(name: "__len", arg: 3, scope: !4671, file: !1401, line: 31, type: !93)
!4675 = !DILocation(line: 0, scope: !4671, inlinedAt: !4676)
!4676 = distinct !DILocation(line: 157, column: 11, scope: !4669, inlinedAt: !4645)
!4677 = !DILocation(line: 34, column: 10, scope: !4671, inlinedAt: !4676)
!4678 = !DILocation(line: 158, column: 11, scope: !4669, inlinedAt: !4645)
!4679 = !DILocation(line: 162, column: 23, scope: !4680, inlinedAt: !4645)
!4680 = distinct !DILexicalBlock(scope: !4681, file: !1162, line: 162, column: 15)
!4681 = distinct !DILexicalBlock(scope: !4666, file: !1162, line: 161, column: 9)
!4682 = !DILocation(line: 162, column: 15, scope: !4681, inlinedAt: !4645)
!4683 = !DILocation(line: 167, column: 44, scope: !4684, inlinedAt: !4645)
!4684 = distinct !DILexicalBlock(scope: !4680, file: !1162, line: 163, column: 13)
!4685 = !DILocation(line: 0, scope: !4671, inlinedAt: !4686)
!4686 = distinct !DILocation(line: 167, column: 15, scope: !4684, inlinedAt: !4645)
!4687 = !DILocation(line: 34, column: 10, scope: !4671, inlinedAt: !4686)
!4688 = !DILocation(line: 168, column: 15, scope: !4684, inlinedAt: !4645)
!4689 = !DILocation(line: 168, column: 32, scope: !4684, inlinedAt: !4645)
!4690 = !DILocation(line: 169, column: 13, scope: !4684, inlinedAt: !4645)
!4691 = !DILocation(line: 0, scope: !4643, inlinedAt: !4645)
!4692 = !DILocation(line: 274, column: 3, scope: !4627)
!4693 = distinct !DISubprogram(name: "setlocale_null", scope: !1162, file: !1162, line: 301, type: !4648, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1161, retainedNodes: !4694)
!4694 = !{!4695}
!4695 = !DILocalVariable(name: "category", arg: 1, scope: !4693, file: !1162, line: 301, type: !38)
!4696 = !DILocation(line: 0, scope: !4693)
!4697 = !DILocation(line: 0, scope: !4647, inlinedAt: !4698)
!4698 = distinct !DILocation(line: 304, column: 10, scope: !4693)
!4699 = !DILocation(line: 62, column: 24, scope: !4647, inlinedAt: !4698)
!4700 = !DILocation(line: 304, column: 3, scope: !4693)
