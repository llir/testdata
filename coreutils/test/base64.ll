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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), align 8, !dbg !200
@.str.45 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@b64c = internal unnamed_addr constant [64 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", align 16, !dbg !205
@b64 = internal unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16, !dbg !214
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !223
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !266
@.str.56 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.57 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.58 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !268
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !274
@.str.67 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.68 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.69 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.72, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.73, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.74, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.77, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.79, i32 0, i32 0), i8* null], align 16, !dbg !315
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !399
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !405
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !407
@.str.11.80 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.81 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.82 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.83 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.84 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.85 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.86 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !412
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !419
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !409
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !421
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !427
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
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1159 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1164, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i32 %0, metadata !1163, metadata !DIExpression()), !dbg !1185
  %3 = icmp eq i32 %0, 0, !dbg !1186
  br i1 %3, label %9, label %4, !dbg !1187

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1188, !tbaa !1190
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #20, !dbg !1188
  %7 = load i8*, i8** @program_name, align 8, !dbg !1188, !tbaa !1190
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #20, !dbg !1188
  br label %68, !dbg !1188

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #20, !dbg !1194
  %11 = load i8*, i8** @program_name, align 8, !dbg !1194, !tbaa !1190
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #20, !dbg !1194
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 5) #20, !dbg !1195
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i32 64) #20, !dbg !1195
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i64 0, i64 0), i32 5) #20, !dbg !1196
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1196, !tbaa !1190
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #20, !dbg !1196
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #20, !dbg !1199
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1199, !tbaa !1190
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #20, !dbg !1199
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([243 x i8], [243 x i8]* @.str.3, i64 0, i64 0), i32 5) #20, !dbg !1202
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1202, !tbaa !1190
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22), !dbg !1202
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #20, !dbg !1203
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1203, !tbaa !1190
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25), !dbg !1203
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #20, !dbg !1204
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1204, !tbaa !1190
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28), !dbg !1204
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([268 x i8], [268 x i8]* @.str.6, i64 0, i64 0), i32 5) #20, !dbg !1205
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #20, !dbg !1205
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), metadata !1168, metadata !DIExpression()) #20, !dbg !1206
  %32 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1207
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %32) #20, !dbg !1207
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %32, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #20, !dbg !1181
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), metadata !1169, metadata !DIExpression()) #20, !dbg !1206
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1170, metadata !DIExpression()) #20, !dbg !1206
  %33 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1208
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !1170, metadata !DIExpression()) #20, !dbg !1206
  br label %34, !dbg !1209

34:                                               ; preds = %39, %9
  %35 = phi i8* [ %42, %39 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %36 = phi %struct.infomap* [ %40, %39 ], [ %33, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !1170, metadata !DIExpression()) #20, !dbg !1206
  %37 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %35) #22, !dbg !1210
  %38 = icmp eq i32 %37, 0, !dbg !1210
  br i1 %38, label %44, label %39, !dbg !1209

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 1, !dbg !1211
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !1170, metadata !DIExpression()) #20, !dbg !1206
  %41 = getelementptr inbounds %struct.infomap, %struct.infomap* %40, i64 0, i32 0, !dbg !1212
  %42 = load i8*, i8** %41, align 8, !dbg !1212, !tbaa !1213
  %43 = icmp eq i8* %42, null, !dbg !1215
  br i1 %43, label %44, label %34, !dbg !1216, !llvm.loop !1217

44:                                               ; preds = %39, %34
  %45 = phi %struct.infomap* [ %40, %39 ], [ %36, %34 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %45, metadata !1170, metadata !DIExpression()) #20, !dbg !1206
  call void @llvm.dbg.value(metadata %struct.infomap* %45, metadata !1170, metadata !DIExpression()) #20, !dbg !1206
  %46 = getelementptr inbounds %struct.infomap, %struct.infomap* %45, i64 0, i32 1, !dbg !1218
  %47 = load i8*, i8** %46, align 8, !dbg !1218, !tbaa !1220
  %48 = icmp eq i8* %47, null, !dbg !1221
  %49 = select i1 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %47, !dbg !1222
  call void @llvm.dbg.value(metadata i8* %49, metadata !1169, metadata !DIExpression()) #20, !dbg !1206
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #20, !dbg !1223
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #20, !dbg !1223
  %52 = tail call i8* @setlocale(i32 5, i8* null) #20, !dbg !1224
  call void @llvm.dbg.value(metadata i8* %52, metadata !1177, metadata !DIExpression()) #20, !dbg !1206
  %53 = icmp eq i8* %52, null, !dbg !1225
  br i1 %53, label %61, label %54, !dbg !1227

54:                                               ; preds = %44
  %55 = tail call i32 @strncmp(i8* nonnull %52, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #22, !dbg !1228
  %56 = icmp eq i32 %55, 0, !dbg !1228
  br i1 %56, label %61, label %57, !dbg !1229

57:                                               ; preds = %54
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.33, i64 0, i64 0), i32 5) #20, !dbg !1230
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1230, !tbaa !1190
  %60 = tail call i32 @fputs_unlocked(i8* %58, %struct._IO_FILE* %59) #20, !dbg !1230
  br label %61, !dbg !1232

61:                                               ; preds = %44, %54, %57
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 5) #20, !dbg !1233
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #20, !dbg !1233
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #20, !dbg !1234
  %65 = icmp eq i8* %49, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), !dbg !1234
  %66 = select i1 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !1234
  %67 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* %49, i8* %66) #20, !dbg !1234
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %32) #20, !dbg !1235
  br label %68

68:                                               ; preds = %61, %4
  tail call void @exit(i32 %0) #23, !dbg !1236
  unreachable, !dbg !1236
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
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1237 {
  %3 = alloca %struct.base64_decode_context, align 4
  call void @llvm.dbg.declare(metadata %struct.base64_decode_context* %3, metadata !1255, metadata !DIExpression()), !dbg !1283
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1241, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8** %1, metadata !1242, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 0, metadata !1249, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 0, metadata !1250, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 76, metadata !1251, metadata !DIExpression()), !dbg !1286
  %5 = load i8*, i8** %1, align 8, !dbg !1287, !tbaa !1190
  tail call void @set_program_name(i8* %5) #20, !dbg !1288
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #20, !dbg !1289
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #20, !dbg !1290
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #20, !dbg !1291
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #20, !dbg !1292
  br label %10, !dbg !1293

10:                                               ; preds = %17, %2
  %11 = phi i8 [ 0, %2 ], [ 1, %17 ]
  %12 = phi i8 [ 0, %2 ], [ %15, %17 ]
  %13 = phi i64 [ 76, %2 ], [ %18, %17 ]
  br label %14, !dbg !1293

14:                                               ; preds = %17, %10
  %15 = phi i8 [ %12, %10 ], [ 1, %17 ]
  %16 = phi i64 [ %13, %10 ], [ %18, %17 ]
  br label %17, !dbg !1293

17:                                               ; preds = %14, %20
  %18 = phi i64 [ %23, %20 ], [ %16, %14 ], !dbg !1294
  call void @llvm.dbg.value(metadata i64 %18, metadata !1251, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %15, metadata !1250, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %11, metadata !1249, metadata !DIExpression()), !dbg !1286
  %19 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #20, !dbg !1295
  call void @llvm.dbg.value(metadata i32 %19, metadata !1243, metadata !DIExpression()), !dbg !1286
  switch i32 %19, label %28 [
    i32 -1, label %29
    i32 100, label %10
    i32 119, label %20
    i32 105, label %14
    i32 -130, label %24
    i32 -131, label %25
  ], !dbg !1293, !llvm.loop !1296

20:                                               ; preds = %17
  %21 = load i8*, i8** @optarg, align 8, !dbg !1298, !tbaa !1190
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 5) #20, !dbg !1300
  %23 = tail call i64 @xdectoumax(i8* %21, i64 0, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* %22, i32 0) #20, !dbg !1301
  call void @llvm.dbg.value(metadata i64 %23, metadata !1251, metadata !DIExpression()), !dbg !1286
  br label %17, !dbg !1302, !llvm.loop !1296

24:                                               ; preds = %17
  tail call void @usage(i32 0) #24, !dbg !1303
  unreachable, !dbg !1303

25:                                               ; preds = %17
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1304, !tbaa !1190
  %27 = load i8*, i8** @Version, align 8, !dbg !1304, !tbaa !1190
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* null) #20, !dbg !1304
  tail call void @exit(i32 0) #23, !dbg !1304
  unreachable, !dbg !1304

28:                                               ; preds = %17
  tail call void @usage(i32 1) #24, !dbg !1305
  unreachable, !dbg !1305

29:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i64 %18, metadata !1251, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %18, metadata !1251, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %11, metadata !1249, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %15, metadata !1250, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %18, metadata !1251, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %11, metadata !1249, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %15, metadata !1250, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %18, metadata !1251, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %11, metadata !1249, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %15, metadata !1250, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %18, metadata !1251, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %11, metadata !1249, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %15, metadata !1250, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %18, metadata !1251, metadata !DIExpression()), !dbg !1286
  %30 = load i32, i32* @optind, align 4, !dbg !1306, !tbaa !1308
  %31 = sub nsw i32 %0, %30, !dbg !1310
  %32 = icmp sgt i32 %31, 1, !dbg !1311
  br i1 %32, label %33, label %41, !dbg !1312

33:                                               ; preds = %29
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 5) #20, !dbg !1313
  %35 = load i32, i32* @optind, align 4, !dbg !1315, !tbaa !1308
  %36 = add nsw i32 %35, 1, !dbg !1316
  %37 = sext i32 %36 to i64, !dbg !1317
  %38 = getelementptr inbounds i8*, i8** %1, i64 %37, !dbg !1317
  %39 = load i8*, i8** %38, align 8, !dbg !1317, !tbaa !1190
  %40 = tail call i8* @quote(i8* %39) #20, !dbg !1318
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %34, i8* %40) #20, !dbg !1319
  tail call void @usage(i32 1) #24, !dbg !1320
  unreachable, !dbg !1320

41:                                               ; preds = %29
  %42 = icmp slt i32 %30, %0, !dbg !1321
  br i1 %42, label %43, label %47, !dbg !1323

43:                                               ; preds = %41
  %44 = sext i32 %30 to i64, !dbg !1324
  %45 = getelementptr inbounds i8*, i8** %1, i64 %44, !dbg !1324
  %46 = load i8*, i8** %45, align 8, !dbg !1324, !tbaa !1190
  call void @llvm.dbg.value(metadata i8* %46, metadata !1248, metadata !DIExpression()), !dbg !1286
  br label %47, !dbg !1325

47:                                               ; preds = %41, %43
  %48 = phi i8* [ %46, %43 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %41 ], !dbg !1326
  call void @llvm.dbg.value(metadata i8* %48, metadata !1248, metadata !DIExpression()), !dbg !1286
  %49 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #22, !dbg !1327
  %50 = icmp eq i32 %49, 0, !dbg !1327
  br i1 %50, label %51, label %53, !dbg !1329

51:                                               ; preds = %47
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1330, !tbaa !1190
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %52, metadata !1244, metadata !DIExpression()), !dbg !1286
  br label %60, !dbg !1332

53:                                               ; preds = %47
  %54 = tail call %struct._IO_FILE* @fopen(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)), !dbg !1333
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %54, metadata !1244, metadata !DIExpression()), !dbg !1286
  %55 = icmp eq %struct._IO_FILE* %54, null, !dbg !1335
  br i1 %55, label %56, label %60, !dbg !1337

56:                                               ; preds = %53
  %57 = tail call i32* @__errno_location() #25, !dbg !1338
  %58 = load i32, i32* %57, align 4, !dbg !1338, !tbaa !1308
  %59 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %48) #20, !dbg !1338
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %59) #20, !dbg !1338
  unreachable, !dbg !1338

60:                                               ; preds = %53, %51
  %61 = phi %struct._IO_FILE* [ %52, %51 ], [ %54, %53 ], !dbg !1339
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1244, metadata !DIExpression()), !dbg !1286
  tail call void @fadvise(%struct._IO_FILE* %61, i32 2) #20, !dbg !1340
  %62 = icmp eq i8 %11, 0, !dbg !1341
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1342, !tbaa !1190
  br i1 %62, label %144, label %64, !dbg !1343

64:                                               ; preds = %60
  %65 = icmp eq i8 %15, 0, !dbg !1344
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1260, metadata !DIExpression()) #20, !dbg !1345
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !1261, metadata !DIExpression()) #20, !dbg !1345
  call void @llvm.dbg.value(metadata i1 %65, metadata !1262, metadata !DIExpression()) #20, !dbg !1345
  %66 = bitcast %struct.base64_decode_context* %3 to i8*, !dbg !1346
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %66) #20, !dbg !1346
  %67 = tail call noalias i8* @xmalloc(i64 4096) #20, !dbg !1347
  call void @llvm.dbg.value(metadata i8* %67, metadata !1263, metadata !DIExpression()) #20, !dbg !1345
  %68 = tail call noalias i8* @xmalloc(i64 3072) #20, !dbg !1348
  call void @llvm.dbg.value(metadata i8* %68, metadata !1264, metadata !DIExpression()) #20, !dbg !1345
  call void @base64_decode_ctx_init(%struct.base64_decode_context* nonnull %3) #20, !dbg !1349
  %69 = bitcast i64* %4 to i8*, !dbg !1350
  %70 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %61, i64 0, i32 0, !dbg !1351
  %71 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %3, i64 0, i32 0, !dbg !1360
  br label %72, !dbg !1362

72:                                               ; preds = %142, %64
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %69) #20, !dbg !1363
  call void @llvm.dbg.value(metadata i64 0, metadata !1265, metadata !DIExpression()) #20, !dbg !1345
  br label %73, !dbg !1364

73:                                               ; preds = %110, %72
  %74 = phi i64 [ 0, %72 ], [ %102, %110 ], !dbg !1350
  call void @llvm.dbg.value(metadata i64 %74, metadata !1265, metadata !DIExpression()) #20, !dbg !1345
  %75 = getelementptr inbounds i8, i8* %67, i64 %74, !dbg !1365
  %76 = sub nuw nsw i64 4096, %74, !dbg !1365
  %77 = call i64 @fread_unlocked(i8* %75, i64 1, i64 %76, %struct._IO_FILE* %61) #20, !dbg !1365
  call void @llvm.dbg.value(metadata i64 %77, metadata !1268, metadata !DIExpression()) #20, !dbg !1350
  store i64 %77, i64* %4, align 8, !dbg !1366, !tbaa !1367
  br i1 %65, label %100, label %78, !dbg !1369

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata i64 0, metadata !1270, metadata !DIExpression()) #20, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %77, metadata !1268, metadata !DIExpression()) #20, !dbg !1350
  %79 = icmp eq i64 %77, 0, !dbg !1371
  br i1 %79, label %100, label %80, !dbg !1373

80:                                               ; preds = %78, %96
  %81 = phi i64 [ %97, %96 ], [ %77, %78 ]
  %82 = phi i64 [ %98, %96 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata i64 %82, metadata !1270, metadata !DIExpression()) #20, !dbg !1370
  %83 = add i64 %82, %74, !dbg !1374
  %84 = getelementptr inbounds i8, i8* %67, i64 %83, !dbg !1377
  %85 = load i8, i8* %84, align 1, !dbg !1377, !tbaa !1378
  %86 = call zeroext i1 @isbase64(i8 signext %85) #25, !dbg !1379
  %87 = icmp eq i8 %85, 61, !dbg !1380
  %88 = or i1 %86, %87, !dbg !1381
  br i1 %88, label %89, label %91, !dbg !1381

89:                                               ; preds = %80
  %90 = add nuw i64 %82, 1, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %90, metadata !1270, metadata !DIExpression()) #20, !dbg !1370
  br label %96, !dbg !1383

91:                                               ; preds = %80
  %92 = getelementptr inbounds i8, i8* %75, i64 %82, !dbg !1384
  %93 = getelementptr inbounds i8, i8* %92, i64 1, !dbg !1385
  %94 = add i64 %81, -1, !dbg !1386
  call void @llvm.dbg.value(metadata i64 %94, metadata !1268, metadata !DIExpression()) #20, !dbg !1350
  store i64 %94, i64* %4, align 8, !dbg !1386, !tbaa !1367
  %95 = sub i64 %94, %82, !dbg !1387
  call void @llvm.dbg.value(metadata i8* %92, metadata !1388, metadata !DIExpression()) #20, !dbg !1396
  call void @llvm.dbg.value(metadata i8* %93, metadata !1394, metadata !DIExpression()) #20, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %95, metadata !1395, metadata !DIExpression()) #20, !dbg !1396
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 1 %92, i8* nonnull align 1 %93, i64 %95, i1 false) #20, !dbg !1398
  br label %96

96:                                               ; preds = %91, %89
  %97 = phi i64 [ %81, %89 ], [ %94, %91 ], !dbg !1399
  %98 = phi i64 [ %90, %89 ], [ %82, %91 ], !dbg !1370
  call void @llvm.dbg.value(metadata i64 %98, metadata !1270, metadata !DIExpression()) #20, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %97, metadata !1268, metadata !DIExpression()) #20, !dbg !1350
  %99 = icmp ult i64 %98, %97, !dbg !1371
  br i1 %99, label %80, label %100, !dbg !1373, !llvm.loop !1400

100:                                              ; preds = %96, %73, %78
  %101 = phi i64 [ 0, %78 ], [ %77, %73 ], [ %97, %96 ], !dbg !1402
  call void @llvm.dbg.value(metadata i64 %101, metadata !1268, metadata !DIExpression()) #20, !dbg !1350
  %102 = add i64 %101, %74, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %102, metadata !1265, metadata !DIExpression()) #20, !dbg !1345
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1357, metadata !DIExpression()) #20, !dbg !1351
  %103 = load i32, i32* %70, align 8, !dbg !1404, !tbaa !1405
  %104 = and i32 %103, 32, !dbg !1404
  %105 = icmp eq i32 %104, 0, !dbg !1408
  br i1 %105, label %110, label %106, !dbg !1409

106:                                              ; preds = %100
  %107 = tail call i32* @__errno_location() #25, !dbg !1410
  %108 = load i32, i32* %107, align 4, !dbg !1410, !tbaa !1308
  %109 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i32 5) #20, !dbg !1410
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %108, i8* %109) #20, !dbg !1410
  unreachable, !dbg !1410

110:                                              ; preds = %100
  %111 = icmp ult i64 %102, 4096, !dbg !1411
  %112 = and i32 %103, 16, !dbg !1412
  %113 = icmp eq i32 %112, 0, !dbg !1417
  %114 = and i1 %111, %113, !dbg !1418
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1415, metadata !DIExpression()) #20, !dbg !1419
  br i1 %114, label %73, label %125, !dbg !1418, !llvm.loop !1420

115:                                              ; preds = %138
  call void @llvm.dbg.value(metadata i32 %139, metadata !1269, metadata !DIExpression()) #20, !dbg !1350
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1415, metadata !DIExpression()) #20, !dbg !1422
  %116 = load i32, i32* %70, align 8, !dbg !1424, !tbaa !1405
  %117 = and i32 %116, 16, !dbg !1424
  %118 = icmp eq i32 %117, 0, !dbg !1425
  %119 = select i1 %118, i32 1, i32 2, !dbg !1426
  %120 = icmp ult i32 %139, %119, !dbg !1427
  br i1 %120, label %121, label %142, !dbg !1428, !llvm.loop !1429

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i32 %139, metadata !1269, metadata !DIExpression()) #20, !dbg !1350
  %122 = load i32, i32* %71, align 4, !dbg !1431
  %123 = or i32 %126, %122, !dbg !1432
  %124 = icmp eq i32 %123, 0, !dbg !1432
  br i1 %124, label %142, label %125, !dbg !1432, !llvm.loop !1429

125:                                              ; preds = %110, %121
  %126 = phi i32 [ %139, %121 ], [ 0, %110 ]
  call void @llvm.dbg.value(metadata i32 %126, metadata !1269, metadata !DIExpression()) #20, !dbg !1350
  call void @llvm.dbg.value(metadata i64 3072, metadata !1268, metadata !DIExpression()) #20, !dbg !1350
  store i64 3072, i64* %4, align 8, !dbg !1433, !tbaa !1367
  %127 = icmp eq i32 %126, 0, !dbg !1434
  %128 = select i1 %127, i64 %102, i64 0, !dbg !1435
  call void @llvm.dbg.value(metadata i64* %4, metadata !1268, metadata !DIExpression(DW_OP_deref)) #20, !dbg !1350
  %129 = call zeroext i1 @base64_decode_ctx(%struct.base64_decode_context* nonnull %3, i8* %67, i64 %128, i8* %68, i64* nonnull %4) #20, !dbg !1436
  call void @llvm.dbg.value(metadata i1 %129, metadata !1266, metadata !DIExpression()) #20, !dbg !1350
  %130 = load i64, i64* %4, align 8, !dbg !1437, !tbaa !1367
  call void @llvm.dbg.value(metadata i64 %130, metadata !1268, metadata !DIExpression()) #20, !dbg !1350
  %131 = call i64 @fwrite_unlocked(i8* %68, i64 1, i64 %130, %struct._IO_FILE* %63) #20, !dbg !1437
  %132 = load i64, i64* %4, align 8, !dbg !1438, !tbaa !1367
  call void @llvm.dbg.value(metadata i64 %132, metadata !1268, metadata !DIExpression()) #20, !dbg !1350
  %133 = icmp ult i64 %131, %132, !dbg !1439
  br i1 %133, label %134, label %138, !dbg !1440

134:                                              ; preds = %125
  %135 = tail call i32* @__errno_location() #25, !dbg !1441
  %136 = load i32, i32* %135, align 4, !dbg !1441, !tbaa !1308
  %137 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #20, !dbg !1441
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %136, i8* %137) #20, !dbg !1441
  unreachable, !dbg !1441

138:                                              ; preds = %125
  %139 = add nuw nsw i32 %126, 1, !dbg !1442
  call void @llvm.dbg.value(metadata i32 %139, metadata !1269, metadata !DIExpression()) #20, !dbg !1350
  br i1 %129, label %115, label %140, !dbg !1443

140:                                              ; preds = %138
  %141 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), i32 5) #20, !dbg !1444
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %141) #20, !dbg !1444
  unreachable, !dbg !1444

142:                                              ; preds = %121, %115
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %69) #20, !dbg !1446
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1415, metadata !DIExpression()) #20, !dbg !1447
  br i1 %118, label %72, label %143, !dbg !1449, !llvm.loop !1450

143:                                              ; preds = %142
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %66) #20, !dbg !1452
  br label %255, !dbg !1453

144:                                              ; preds = %60
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1454, metadata !DIExpression()) #20, !dbg !1467
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !1459, metadata !DIExpression()) #20, !dbg !1467
  call void @llvm.dbg.value(metadata i64 %18, metadata !1460, metadata !DIExpression()) #20, !dbg !1467
  call void @llvm.dbg.value(metadata i64 0, metadata !1461, metadata !DIExpression()) #20, !dbg !1467
  %145 = tail call noalias i8* @xmalloc(i64 30720) #20, !dbg !1469
  call void @llvm.dbg.value(metadata i8* %145, metadata !1462, metadata !DIExpression()) #20, !dbg !1467
  %146 = tail call noalias i8* @xmalloc(i64 40960) #20, !dbg !1470
  call void @llvm.dbg.value(metadata i8* %146, metadata !1463, metadata !DIExpression()) #20, !dbg !1467
  %147 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %61, i64 0, i32 0, !dbg !1471
  %148 = icmp eq i64 %18, 0, !dbg !1473
  %149 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %63, i64 0, i32 5, !dbg !1506
  %150 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %63, i64 0, i32 6, !dbg !1506
  br label %151, !dbg !1516

151:                                              ; preds = %225, %144
  %152 = phi i64 [ 0, %144 ], [ %221, %225 ], !dbg !1517
  call void @llvm.dbg.value(metadata i64 0, metadata !1464, metadata !DIExpression()) #20, !dbg !1467
  br label %153, !dbg !1518

153:                                              ; preds = %162, %151
  %154 = phi i64 [ 0, %151 ], [ %158, %162 ], !dbg !1519
  call void @llvm.dbg.value(metadata i64 %154, metadata !1464, metadata !DIExpression()) #20, !dbg !1467
  %155 = getelementptr inbounds i8, i8* %145, i64 %154, !dbg !1520
  %156 = sub nuw nsw i64 30720, %154, !dbg !1520
  %157 = tail call i64 @fread_unlocked(i8* %155, i64 1, i64 %156, %struct._IO_FILE* %61) #20, !dbg !1520
  call void @llvm.dbg.value(metadata i64 %157, metadata !1465, metadata !DIExpression()) #20, !dbg !1519
  %158 = add i64 %157, %154, !dbg !1522
  call void @llvm.dbg.value(metadata i64 %158, metadata !1464, metadata !DIExpression()) #20, !dbg !1467
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1415, metadata !DIExpression()) #20, !dbg !1471
  %159 = load i32, i32* %147, align 8, !dbg !1523, !tbaa !1405
  %160 = and i32 %159, 16, !dbg !1523
  %161 = icmp eq i32 %160, 0, !dbg !1524
  br i1 %161, label %162, label %167, !dbg !1525

162:                                              ; preds = %153
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1357, metadata !DIExpression()) #20, !dbg !1526
  %163 = and i32 %159, 32, !dbg !1528
  %164 = icmp eq i32 %163, 0, !dbg !1529
  %165 = icmp ult i64 %158, 30720, !dbg !1530
  %166 = and i1 %165, %164, !dbg !1531
  br i1 %166, label %153, label %167, !dbg !1531, !llvm.loop !1532

167:                                              ; preds = %162, %153
  %168 = icmp eq i64 %158, 0, !dbg !1534
  br i1 %168, label %220, label %169, !dbg !1535

169:                                              ; preds = %167
  %170 = add i64 %158, 2, !dbg !1536
  %171 = udiv i64 %170, 3, !dbg !1536
  %172 = shl i64 %171, 2, !dbg !1536
  tail call void @base64_encode(i8* %145, i64 %158, i8* %146, i64 %172) #20, !dbg !1537
  call void @llvm.dbg.value(metadata i8* %146, metadata !1479, metadata !DIExpression()) #20, !dbg !1538
  call void @llvm.dbg.value(metadata i64 %172, metadata !1480, metadata !DIExpression()) #20, !dbg !1538
  call void @llvm.dbg.value(metadata i64 %18, metadata !1481, metadata !DIExpression()) #20, !dbg !1538
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !1483, metadata !DIExpression()) #20, !dbg !1538
  br i1 %148, label %175, label %173, !dbg !1539

173:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i64 0, metadata !1484, metadata !DIExpression()) #20, !dbg !1538
  %174 = icmp eq i64 %172, 0, !dbg !1540
  br i1 %174, label %220, label %183, !dbg !1541

175:                                              ; preds = %169
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1542, !tbaa !1190
  %177 = tail call i64 @fwrite_unlocked(i8* %146, i64 1, i64 %172, %struct._IO_FILE* %176) #20, !dbg !1542
  %178 = icmp ult i64 %177, %172, !dbg !1543
  br i1 %178, label %179, label %220, !dbg !1544

179:                                              ; preds = %175
  %180 = tail call i32* @__errno_location() #25, !dbg !1545
  %181 = load i32, i32* %180, align 4, !dbg !1545, !tbaa !1308
  %182 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #20, !dbg !1545
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %181, i8* %182) #20, !dbg !1545
  unreachable, !dbg !1545

183:                                              ; preds = %173, %216
  %184 = phi i64 [ %217, %216 ], [ %152, %173 ], !dbg !1467
  %185 = phi i64 [ %218, %216 ], [ 0, %173 ]
  call void @llvm.dbg.value(metadata i64 %185, metadata !1484, metadata !DIExpression()) #20, !dbg !1538
  %186 = sub i64 %18, %184, !dbg !1546
  call void @llvm.dbg.value(metadata i64 %186, metadata !1491, metadata !DIExpression()) #20, !dbg !1547
  call void @llvm.dbg.value(metadata i64 %186, metadata !1495, metadata !DIExpression()) #20, !dbg !1547
  %187 = sub i64 %172, %185, !dbg !1548
  %188 = icmp ult i64 %186, %187, !dbg !1548
  %189 = select i1 %188, i64 %186, i64 %187, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %189, metadata !1495, metadata !DIExpression()) #20, !dbg !1547
  %190 = icmp eq i64 %189, 0, !dbg !1549
  br i1 %190, label %191, label %204, !dbg !1550

191:                                              ; preds = %183
  call void @llvm.dbg.value(metadata i32 10, metadata !1511, metadata !DIExpression()) #20, !dbg !1506
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !1512, metadata !DIExpression()) #20, !dbg !1506
  %192 = load i8*, i8** %149, align 8, !dbg !1551, !tbaa !1552
  %193 = load i8*, i8** %150, align 8, !dbg !1551, !tbaa !1553
  %194 = icmp ult i8* %192, %193, !dbg !1551
  br i1 %194, label %195, label %197, !dbg !1551, !prof !1554, !misexpect !1555

195:                                              ; preds = %191
  %196 = getelementptr inbounds i8, i8* %192, i64 1, !dbg !1551
  store i8* %196, i8** %149, align 8, !dbg !1551, !tbaa !1552
  store i8 10, i8* %192, align 1, !dbg !1551, !tbaa !1378
  br label %216, !dbg !1556

197:                                              ; preds = %191
  %198 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %63, i32 10) #20, !dbg !1551
  %199 = icmp eq i32 %198, -1, !dbg !1557
  br i1 %199, label %200, label %216, !dbg !1556

200:                                              ; preds = %197
  %201 = tail call i32* @__errno_location() #25, !dbg !1558
  %202 = load i32, i32* %201, align 4, !dbg !1558, !tbaa !1308
  %203 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #20, !dbg !1558
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %202, i8* %203) #20, !dbg !1558
  unreachable, !dbg !1558

204:                                              ; preds = %183
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1559, !tbaa !1190
  %206 = getelementptr inbounds i8, i8* %146, i64 %185, !dbg !1559
  %207 = tail call i64 @fwrite_unlocked(i8* %206, i64 1, i64 %189, %struct._IO_FILE* %205) #20, !dbg !1560
  %208 = icmp ult i64 %207, %189, !dbg !1561
  br i1 %208, label %209, label %213, !dbg !1562

209:                                              ; preds = %204
  %210 = tail call i32* @__errno_location() #25, !dbg !1563
  %211 = load i32, i32* %210, align 4, !dbg !1563, !tbaa !1308
  %212 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #20, !dbg !1563
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %211, i8* %212) #20, !dbg !1563
  unreachable, !dbg !1563

213:                                              ; preds = %204
  %214 = add i64 %189, %184, !dbg !1564
  %215 = add i64 %189, %185, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %215, metadata !1484, metadata !DIExpression()) #20, !dbg !1538
  br label %216

216:                                              ; preds = %213, %197, %195
  %217 = phi i64 [ %214, %213 ], [ 0, %197 ], [ 0, %195 ], !dbg !1566
  %218 = phi i64 [ %215, %213 ], [ %185, %197 ], [ %185, %195 ], !dbg !1567
  call void @llvm.dbg.value(metadata i64 %218, metadata !1484, metadata !DIExpression()) #20, !dbg !1538
  %219 = icmp ult i64 %218, %172, !dbg !1540
  br i1 %219, label %183, label %220, !dbg !1541, !llvm.loop !1568

220:                                              ; preds = %216, %175, %173, %167
  %221 = phi i64 [ %152, %167 ], [ %152, %175 ], [ %152, %173 ], [ %217, %216 ], !dbg !1517
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1415, metadata !DIExpression()) #20, !dbg !1570
  %222 = load i32, i32* %147, align 8, !dbg !1572, !tbaa !1405
  %223 = and i32 %222, 16, !dbg !1572
  %224 = icmp eq i32 %223, 0, !dbg !1573
  br i1 %224, label %225, label %230, !dbg !1574

225:                                              ; preds = %220
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1357, metadata !DIExpression()) #20, !dbg !1575
  %226 = and i32 %222, 32, !dbg !1577
  %227 = icmp eq i32 %226, 0, !dbg !1578
  %228 = icmp eq i64 %158, 30720, !dbg !1579
  %229 = and i1 %228, %227, !dbg !1580
  br i1 %229, label %151, label %230, !dbg !1580, !llvm.loop !1581

230:                                              ; preds = %225, %220
  %231 = icmp ne i64 %18, 0, !dbg !1583
  call void @llvm.dbg.value(metadata i64 %221, metadata !1461, metadata !DIExpression()) #20, !dbg !1467
  %232 = icmp ne i64 %221, 0, !dbg !1585
  %233 = and i1 %231, %232, !dbg !1586
  br i1 %233, label %234, label %247, !dbg !1586

234:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i32 10, metadata !1511, metadata !DIExpression()) #20, !dbg !1587
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !1512, metadata !DIExpression()) #20, !dbg !1587
  %235 = load i8*, i8** %149, align 8, !dbg !1589, !tbaa !1552
  %236 = load i8*, i8** %150, align 8, !dbg !1589, !tbaa !1553
  %237 = icmp ult i8* %235, %236, !dbg !1589
  br i1 %237, label %238, label %240, !dbg !1589, !prof !1554, !misexpect !1555

238:                                              ; preds = %234
  %239 = getelementptr inbounds i8, i8* %235, i64 1, !dbg !1589
  store i8* %239, i8** %149, align 8, !dbg !1589, !tbaa !1552
  store i8 10, i8* %235, align 1, !dbg !1589, !tbaa !1378
  br label %247, !dbg !1590

240:                                              ; preds = %234
  %241 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %63, i32 10) #20, !dbg !1589
  %242 = icmp eq i32 %241, -1, !dbg !1591
  br i1 %242, label %243, label %247, !dbg !1590

243:                                              ; preds = %240
  %244 = tail call i32* @__errno_location() #25, !dbg !1592
  %245 = load i32, i32* %244, align 4, !dbg !1592, !tbaa !1308
  %246 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #20, !dbg !1592
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %245, i8* %246) #20, !dbg !1592
  unreachable, !dbg !1592

247:                                              ; preds = %240, %238, %230
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1357, metadata !DIExpression()) #20, !dbg !1593
  %248 = load i32, i32* %147, align 8, !dbg !1596, !tbaa !1405
  %249 = and i32 %248, 32, !dbg !1596
  %250 = icmp eq i32 %249, 0, !dbg !1597
  br i1 %250, label %255, label %251, !dbg !1598

251:                                              ; preds = %247
  %252 = tail call i32* @__errno_location() #25, !dbg !1599
  %253 = load i32, i32* %252, align 4, !dbg !1599, !tbaa !1308
  %254 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i32 5) #20, !dbg !1599
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %253, i8* %254) #20, !dbg !1599
  unreachable, !dbg !1599

255:                                              ; preds = %247, %143
  %256 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %61) #20, !dbg !1600
  %257 = icmp eq i32 %256, -1, !dbg !1602
  br i1 %257, label %258, label %267, !dbg !1603

258:                                              ; preds = %255
  %259 = call i32 @strcmp(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #22, !dbg !1604
  %260 = icmp eq i32 %259, 0, !dbg !1604
  %261 = tail call i32* @__errno_location() #25, !dbg !1607
  %262 = load i32, i32* %261, align 4, !dbg !1607, !tbaa !1308
  br i1 %260, label %263, label %265, !dbg !1608

263:                                              ; preds = %258
  %264 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 5) #20, !dbg !1609
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %262, i8* %264) #20, !dbg !1609
  unreachable, !dbg !1609

265:                                              ; preds = %258
  %266 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %48) #20, !dbg !1610
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %262, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %266) #20, !dbg !1610
  unreachable, !dbg !1610

267:                                              ; preds = %255
  ret i32 0, !dbg !1611
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
define dso_local void @base64_encode(i8* noalias nocapture readonly %0, i64 %1, i8* noalias nocapture %2, i64 %3) local_unnamed_addr #10 !dbg !1612 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1618, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 %1, metadata !1619, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i8* %2, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 %3, metadata !1621, metadata !DIExpression()), !dbg !1622
  %5 = and i64 %3, 3, !dbg !1623
  %6 = icmp eq i64 %5, 0, !dbg !1625
  br i1 %6, label %7, label %53, !dbg !1626

7:                                                ; preds = %4
  %8 = lshr i64 %3, 2, !dbg !1627
  %9 = mul nuw i64 %8, 3, !dbg !1628
  %10 = icmp eq i64 %9, %1, !dbg !1629
  br i1 %10, label %11, label %53, !dbg !1630

11:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %0, metadata !1631, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %1, metadata !1636, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %2, metadata !1637, metadata !DIExpression()), !dbg !1638
  %12 = icmp eq i64 %1, 0, !dbg !1641
  br i1 %12, label %135, label %13, !dbg !1641

13:                                               ; preds = %11, %13
  %14 = phi i8* [ %49, %13 ], [ %2, %11 ]
  %15 = phi i64 [ %50, %13 ], [ %1, %11 ]
  %16 = phi i8* [ %51, %13 ], [ %0, %11 ]
  call void @llvm.dbg.value(metadata i8* %14, metadata !1637, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %15, metadata !1636, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %16, metadata !1631, metadata !DIExpression()), !dbg !1638
  %17 = load i8, i8* %16, align 1, !dbg !1642, !tbaa !1378, !alias.scope !1644, !noalias !1647
  %18 = lshr i8 %17, 2, !dbg !1649
  %19 = zext i8 %18 to i64, !dbg !1650
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %19, !dbg !1650
  %21 = load i8, i8* %20, align 1, !dbg !1650, !tbaa !1378, !noalias !1651
  %22 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !1652
  call void @llvm.dbg.value(metadata i8* %22, metadata !1637, metadata !DIExpression()), !dbg !1638
  store i8 %21, i8* %14, align 1, !dbg !1653, !tbaa !1378, !alias.scope !1647, !noalias !1644
  %23 = zext i8 %17 to i64, !dbg !1654
  %24 = shl nuw nsw i64 %23, 4, !dbg !1655
  %25 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !1656
  %26 = load i8, i8* %25, align 1, !dbg !1656, !tbaa !1378, !alias.scope !1644, !noalias !1647
  %27 = lshr i8 %26, 4, !dbg !1657
  %28 = zext i8 %27 to i64, !dbg !1657
  %29 = and i64 %24, 48, !dbg !1658
  %30 = or i64 %29, %28, !dbg !1658
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %30, !dbg !1659
  %32 = load i8, i8* %31, align 1, !dbg !1659, !tbaa !1378, !noalias !1651
  %33 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !1660
  call void @llvm.dbg.value(metadata i8* %33, metadata !1637, metadata !DIExpression()), !dbg !1638
  store i8 %32, i8* %22, align 1, !dbg !1661, !tbaa !1378, !alias.scope !1647, !noalias !1644
  %34 = zext i8 %26 to i64, !dbg !1662
  %35 = shl nuw nsw i64 %34, 2, !dbg !1663
  %36 = getelementptr inbounds i8, i8* %16, i64 2, !dbg !1664
  %37 = load i8, i8* %36, align 1, !dbg !1664, !tbaa !1378, !alias.scope !1644, !noalias !1647
  %38 = lshr i8 %37, 6, !dbg !1665
  %39 = zext i8 %38 to i64, !dbg !1665
  %40 = and i64 %35, 60, !dbg !1666
  %41 = or i64 %40, %39, !dbg !1666
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %41, !dbg !1667
  %43 = load i8, i8* %42, align 1, !dbg !1667, !tbaa !1378, !noalias !1651
  %44 = getelementptr inbounds i8, i8* %14, i64 3, !dbg !1668
  call void @llvm.dbg.value(metadata i8* %44, metadata !1637, metadata !DIExpression()), !dbg !1638
  store i8 %43, i8* %33, align 1, !dbg !1669, !tbaa !1378, !alias.scope !1647, !noalias !1644
  %45 = and i8 %37, 63, !dbg !1670
  %46 = zext i8 %45 to i64, !dbg !1671
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %46, !dbg !1671
  %48 = load i8, i8* %47, align 1, !dbg !1671, !tbaa !1378, !noalias !1651
  %49 = getelementptr inbounds i8, i8* %14, i64 4, !dbg !1672
  call void @llvm.dbg.value(metadata i8* %49, metadata !1637, metadata !DIExpression()), !dbg !1638
  store i8 %48, i8* %44, align 1, !dbg !1673, !tbaa !1378, !alias.scope !1647, !noalias !1644
  %50 = add i64 %15, -3, !dbg !1674
  call void @llvm.dbg.value(metadata i64 %50, metadata !1636, metadata !DIExpression()), !dbg !1638
  %51 = getelementptr inbounds i8, i8* %16, i64 3, !dbg !1675
  call void @llvm.dbg.value(metadata i8* %51, metadata !1631, metadata !DIExpression()), !dbg !1638
  %52 = icmp eq i64 %50, 0, !dbg !1641
  br i1 %52, label %135, label %13, !dbg !1641, !llvm.loop !1676

53:                                               ; preds = %7, %4
  call void @llvm.dbg.value(metadata i64 %3, metadata !1621, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i8* %2, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 %1, metadata !1619, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i8* %0, metadata !1618, metadata !DIExpression()), !dbg !1622
  %54 = icmp ne i64 %1, 0, !dbg !1678
  %55 = icmp ne i64 %3, 0, !dbg !1679
  %56 = and i1 %54, %55, !dbg !1679
  br i1 %56, label %57, label %131, !dbg !1680

57:                                               ; preds = %53, %124
  %58 = phi i64 [ %122, %124 ], [ %3, %53 ]
  %59 = phi i8* [ %125, %124 ], [ %2, %53 ]
  %60 = phi i64 [ %126, %124 ], [ %1, %53 ]
  %61 = phi i8* [ %130, %124 ], [ %0, %53 ]
  call void @llvm.dbg.value(metadata i64 %58, metadata !1621, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i8* %59, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 %60, metadata !1619, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i8* %61, metadata !1618, metadata !DIExpression()), !dbg !1622
  %62 = load i8, i8* %61, align 1, !dbg !1681, !tbaa !1378
  %63 = lshr i8 %62, 2, !dbg !1683
  %64 = zext i8 %63 to i64, !dbg !1684
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %64, !dbg !1684
  %66 = load i8, i8* %65, align 1, !dbg !1684, !tbaa !1378
  %67 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !1685
  call void @llvm.dbg.value(metadata i8* %67, metadata !1620, metadata !DIExpression()), !dbg !1622
  store i8 %66, i8* %59, align 1, !dbg !1686, !tbaa !1378
  call void @llvm.dbg.value(metadata i64 %58, metadata !1621, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1622
  %68 = icmp eq i64 %58, 1, !dbg !1687
  br i1 %68, label %135, label %69, !dbg !1689

69:                                               ; preds = %57
  %70 = load i8, i8* %61, align 1, !dbg !1690, !tbaa !1378
  %71 = zext i8 %70 to i64, !dbg !1691
  %72 = shl nuw nsw i64 %71, 4, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %60, metadata !1619, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1622
  %73 = icmp ne i64 %60, 1, !dbg !1693
  br i1 %73, label %74, label %79, !dbg !1693

74:                                               ; preds = %69
  %75 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1694
  %76 = load i8, i8* %75, align 1, !dbg !1694, !tbaa !1378
  %77 = lshr i8 %76, 4, !dbg !1695
  %78 = zext i8 %77 to i64, !dbg !1695
  br label %79, !dbg !1693

79:                                               ; preds = %69, %74
  %80 = phi i64 [ %78, %74 ], [ 0, %69 ], !dbg !1693
  %81 = add nuw nsw i64 %80, %72, !dbg !1696
  %82 = and i64 %81, 63, !dbg !1697
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %82, !dbg !1698
  %84 = load i8, i8* %83, align 1, !dbg !1698, !tbaa !1378
  %85 = getelementptr inbounds i8, i8* %59, i64 2, !dbg !1699
  call void @llvm.dbg.value(metadata i8* %85, metadata !1620, metadata !DIExpression()), !dbg !1622
  store i8 %84, i8* %67, align 1, !dbg !1700, !tbaa !1378
  call void @llvm.dbg.value(metadata i64 %58, metadata !1621, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1622
  %86 = icmp eq i64 %58, 2, !dbg !1701
  br i1 %86, label %135, label %87, !dbg !1703

87:                                               ; preds = %79
  br i1 %73, label %88, label %106, !dbg !1704

88:                                               ; preds = %87
  %89 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1705
  %90 = load i8, i8* %89, align 1, !dbg !1705, !tbaa !1378
  %91 = zext i8 %90 to i64, !dbg !1706
  %92 = shl nuw nsw i64 %91, 2, !dbg !1707
  %93 = add i64 %60, -2, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %93, metadata !1619, metadata !DIExpression()), !dbg !1622
  %94 = icmp eq i64 %93, 0, !dbg !1708
  br i1 %94, label %100, label %95, !dbg !1708

95:                                               ; preds = %88
  %96 = getelementptr inbounds i8, i8* %61, i64 2, !dbg !1709
  %97 = load i8, i8* %96, align 1, !dbg !1709, !tbaa !1378
  %98 = lshr i8 %97, 6, !dbg !1710
  %99 = zext i8 %98 to i64, !dbg !1710
  br label %100, !dbg !1708

100:                                              ; preds = %88, %95
  %101 = phi i64 [ %99, %95 ], [ 0, %88 ], !dbg !1708
  %102 = add nuw nsw i64 %101, %92, !dbg !1711
  %103 = and i64 %102, 63, !dbg !1712
  %104 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %103, !dbg !1713
  %105 = load i8, i8* %104, align 1, !dbg !1713, !tbaa !1378
  br label %106, !dbg !1704

106:                                              ; preds = %87, %100
  %107 = phi i64 [ %93, %100 ], [ 0, %87 ], !dbg !1714
  %108 = phi i8 [ %105, %100 ], [ 61, %87 ], !dbg !1704
  call void @llvm.dbg.value(metadata i64 %107, metadata !1619, metadata !DIExpression()), !dbg !1622
  %109 = getelementptr inbounds i8, i8* %59, i64 3, !dbg !1715
  call void @llvm.dbg.value(metadata i8* %109, metadata !1620, metadata !DIExpression()), !dbg !1622
  store i8 %108, i8* %85, align 1, !dbg !1716, !tbaa !1378
  call void @llvm.dbg.value(metadata i64 %58, metadata !1621, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1622
  %110 = icmp eq i64 %58, 3, !dbg !1717
  br i1 %110, label %135, label %111, !dbg !1719

111:                                              ; preds = %106
  %112 = icmp ne i64 %107, 0, !dbg !1720
  br i1 %112, label %113, label %120, !dbg !1720

113:                                              ; preds = %111
  %114 = getelementptr inbounds i8, i8* %61, i64 2, !dbg !1721
  %115 = load i8, i8* %114, align 1, !dbg !1721, !tbaa !1378
  %116 = and i8 %115, 63, !dbg !1722
  %117 = zext i8 %116 to i64, !dbg !1723
  %118 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %117, !dbg !1723
  %119 = load i8, i8* %118, align 1, !dbg !1723, !tbaa !1378
  br label %120, !dbg !1720

120:                                              ; preds = %111, %113
  %121 = phi i8 [ %119, %113 ], [ 61, %111 ], !dbg !1720
  call void @llvm.dbg.value(metadata i8* %59, metadata !1620, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1622
  store i8 %121, i8* %109, align 1, !dbg !1724, !tbaa !1378
  %122 = add i64 %58, -4, !dbg !1725
  call void @llvm.dbg.value(metadata i64 %122, metadata !1621, metadata !DIExpression()), !dbg !1622
  %123 = icmp eq i64 %122, 0, !dbg !1725
  br i1 %123, label %135, label %124, !dbg !1727

124:                                              ; preds = %120
  %125 = getelementptr inbounds i8, i8* %59, i64 4, !dbg !1728
  call void @llvm.dbg.value(metadata i8* %125, metadata !1620, metadata !DIExpression()), !dbg !1622
  %126 = add i64 %107, -1, !dbg !1729
  call void @llvm.dbg.value(metadata i64 undef, metadata !1619, metadata !DIExpression()), !dbg !1622
  %127 = icmp eq i64 %126, 0, !dbg !1731
  %128 = xor i1 %112, true, !dbg !1731
  %129 = or i1 %127, %128, !dbg !1731
  %130 = getelementptr inbounds i8, i8* %61, i64 3, !dbg !1733
  call void @llvm.dbg.value(metadata i64 %122, metadata !1621, metadata !DIExpression()), !dbg !1622
  br i1 %129, label %133, label %57, !dbg !1680, !llvm.loop !1734

131:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i8* %2, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 %3, metadata !1621, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 %3, metadata !1621, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i8* %2, metadata !1620, metadata !DIExpression()), !dbg !1622
  %132 = icmp eq i64 %3, 0, !dbg !1736
  br i1 %132, label %135, label %133, !dbg !1738

133:                                              ; preds = %124, %131
  %134 = phi i8* [ %2, %131 ], [ %125, %124 ]
  store i8 0, i8* %134, align 1, !dbg !1739, !tbaa !1378
  br label %135, !dbg !1740

135:                                              ; preds = %57, %79, %106, %120, %13, %11, %131, %133
  ret void, !dbg !1741
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i64 @base64_encode_alloc(i8* nocapture readonly %0, i64 %1, i8** nocapture %2) local_unnamed_addr #11 !dbg !1742 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1746, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %1, metadata !1747, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8** %2, metadata !1748, metadata !DIExpression()), !dbg !1750
  %4 = add i64 %1, 2, !dbg !1751
  %5 = udiv i64 %4, 3, !dbg !1751
  %6 = shl i64 %5, 2, !dbg !1751
  %7 = or i64 %6, 1, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %7, metadata !1749, metadata !DIExpression()), !dbg !1750
  %8 = icmp ult i64 %7, %1, !dbg !1753
  br i1 %8, label %9, label %10, !dbg !1755

9:                                                ; preds = %3
  store i8* null, i8** %2, align 8, !dbg !1756, !tbaa !1190
  br label %14, !dbg !1758

10:                                               ; preds = %3
  %11 = tail call noalias i8* @malloc(i64 %7) #20, !dbg !1759
  store i8* %11, i8** %2, align 8, !dbg !1760, !tbaa !1190
  %12 = icmp eq i8* %11, null, !dbg !1761
  br i1 %12, label %14, label %13, !dbg !1763

13:                                               ; preds = %10
  tail call void @base64_encode(i8* %0, i64 %1, i8* nonnull %11, i64 %7), !dbg !1764
  br label %14, !dbg !1765

14:                                               ; preds = %10, %13, %9
  %15 = phi i64 [ 0, %9 ], [ %6, %13 ], [ %7, %10 ], !dbg !1750
  ret i64 %15, !dbg !1766
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: norecurse nounwind readnone sspstrong uwtable
define dso_local zeroext i1 @isbase64(i8 signext %0) local_unnamed_addr #12 !dbg !1767 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1769, metadata !DIExpression()), !dbg !1770
  %2 = zext i8 %0 to i64, !dbg !1771
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %2, !dbg !1771
  %4 = load i8, i8* %3, align 1, !dbg !1771, !tbaa !1378
  %5 = icmp sgt i8 %4, -1, !dbg !1772
  ret i1 %5, !dbg !1773
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @base64_decode_ctx_init(%struct.base64_decode_context* nocapture %0) local_unnamed_addr #13 !dbg !1774 {
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, metadata !1783, metadata !DIExpression()), !dbg !1784
  %2 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 0, !dbg !1785
  store i32 0, i32* %2, align 4, !dbg !1786, !tbaa !1787
  ret void, !dbg !1789
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @base64_decode_ctx(%struct.base64_decode_context* %0, i8* noalias %1, i64 %2, i8* noalias %3, i64* nocapture %4) local_unnamed_addr #8 !dbg !1790 {
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, metadata !1794, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %1, metadata !1795, metadata !DIExpression()), !dbg !1808
  %6 = ptrtoint i8* %1 to i64
  call void @llvm.dbg.value(metadata i64 %2, metadata !1796, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %3, metadata !1797, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64* %4, metadata !1798, metadata !DIExpression()), !dbg !1808
  %7 = load i64, i64* %4, align 8, !dbg !1809, !tbaa !1367
  call void @llvm.dbg.value(metadata i64 %7, metadata !1799, metadata !DIExpression()), !dbg !1808
  %8 = icmp ne %struct.base64_decode_context* %0, null, !dbg !1810
  call void @llvm.dbg.value(metadata i1 %8, metadata !1800, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 0, metadata !1801, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i32 0, metadata !1802, metadata !DIExpression()), !dbg !1808
  br i1 %8, label %9, label %14, !dbg !1811

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 0, !dbg !1812
  %11 = load i32, i32* %10, align 4, !dbg !1812, !tbaa !1787
  call void @llvm.dbg.value(metadata i32 %11, metadata !1802, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %2, metadata !1796, metadata !DIExpression()), !dbg !1808
  %12 = icmp eq i64 %2, 0, !dbg !1815
  call void @llvm.dbg.value(metadata i1 %12, metadata !1801, metadata !DIExpression()), !dbg !1808
  %13 = icmp ne i32 %11, 0, !dbg !1816
  br label %14, !dbg !1816

14:                                               ; preds = %9, %5
  %15 = phi i1 [ %13, %9 ], [ false, %5 ]
  %16 = phi i1 [ %12, %9 ], [ false, %5 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1801, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i32 undef, metadata !1802, metadata !DIExpression()), !dbg !1808
  %17 = or i1 %15, %16, !dbg !1817
  %18 = xor i1 %8, true, !dbg !1819
  %19 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 0, !dbg !1821
  %20 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 1, i64 0, !dbg !1841
  br label %21, !dbg !1842

21:                                               ; preds = %281, %14
  %22 = phi i64 [ %6, %14 ], [ %282, %281 ]
  %23 = phi i64 [ %2, %14 ], [ %283, %281 ]
  %24 = phi i8* [ %3, %14 ], [ %284, %281 ]
  %25 = phi i64 [ %7, %14 ], [ %285, %281 ], !dbg !1808
  call void @llvm.dbg.value(metadata i64 %25, metadata !1799, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %25, metadata !1803, metadata !DIExpression()), !dbg !1843
  %26 = icmp ult i64 %23, 2, !dbg !1844
  %27 = or i1 %17, %26, !dbg !1860
  call void @llvm.dbg.value(metadata i64 %25, metadata !1799, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %25, metadata !1803, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %22, metadata !1795, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %23, metadata !1796, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %22, metadata !1851, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i64 %23, metadata !1852, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* %24, metadata !1855, metadata !DIExpression()), !dbg !1861
  br i1 %27, label %119, label %28, !dbg !1860

28:                                               ; preds = %21
  %29 = inttoptr i64 %22 to i8*
  br label %30, !dbg !1862

30:                                               ; preds = %28, %110
  %31 = phi i8* [ %113, %110 ], [ %29, %28 ]
  %32 = phi i64 [ %111, %110 ], [ %25, %28 ]
  %33 = phi i8* [ %112, %110 ], [ %24, %28 ]
  %34 = phi i64 [ %115, %110 ], [ %23, %28 ]
  %35 = phi i64 [ %114, %110 ], [ %22, %28 ]
  call void @llvm.dbg.value(metadata i64 %32, metadata !1799, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %33, metadata !1855, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i64 %34, metadata !1796, metadata !DIExpression()), !dbg !1808
  %36 = load i8, i8* %31, align 1, !dbg !1863, !tbaa !1378, !alias.scope !1865
  call void @llvm.dbg.value(metadata i8 %36, metadata !1769, metadata !DIExpression()), !dbg !1868
  %37 = zext i8 %36 to i64, !dbg !1870
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %37, !dbg !1870
  %39 = load i8, i8* %38, align 1, !dbg !1870, !tbaa !1378, !noalias !1865
  %40 = icmp sgt i8 %39, -1, !dbg !1871
  br i1 %40, label %41, label %130, !dbg !1872

41:                                               ; preds = %30
  %42 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1873
  %43 = load i8, i8* %42, align 1, !dbg !1873, !tbaa !1378, !alias.scope !1865
  call void @llvm.dbg.value(metadata i8 %43, metadata !1769, metadata !DIExpression()), !dbg !1874
  %44 = zext i8 %43 to i64, !dbg !1876
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %44, !dbg !1876
  %46 = load i8, i8* %45, align 1, !dbg !1876, !tbaa !1378, !noalias !1865
  %47 = icmp sgt i8 %46, -1, !dbg !1877
  br i1 %47, label %48, label %130, !dbg !1878

48:                                               ; preds = %41
  %49 = icmp eq i64 %32, 0, !dbg !1879
  br i1 %49, label %56, label %50, !dbg !1881

50:                                               ; preds = %48
  %51 = shl i8 %39, 2, !dbg !1882
  %52 = lshr i8 %46, 4, !dbg !1884
  %53 = or i8 %52, %51, !dbg !1885
  %54 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !1886
  call void @llvm.dbg.value(metadata i8* %54, metadata !1855, metadata !DIExpression()), !dbg !1861
  store i8 %53, i8* %33, align 1, !dbg !1887, !tbaa !1378, !noalias !1865
  %55 = add i64 %32, -1, !dbg !1888
  br label %56, !dbg !1889

56:                                               ; preds = %50, %48
  %57 = phi i64 [ 0, %48 ], [ %55, %50 ], !dbg !1808
  %58 = phi i8* [ %33, %48 ], [ %54, %50 ], !dbg !1861
  call void @llvm.dbg.value(metadata i8* %58, metadata !1855, metadata !DIExpression()), !dbg !1861
  %59 = icmp eq i64 %34, 2, !dbg !1890
  br i1 %59, label %130, label %60, !dbg !1892

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, i8* %31, i64 2, !dbg !1893
  %62 = load i8, i8* %61, align 1, !dbg !1893, !tbaa !1378, !alias.scope !1865
  %63 = icmp eq i8 %62, 61, !dbg !1895
  br i1 %63, label %64, label %70, !dbg !1896

64:                                               ; preds = %60
  call void @llvm.dbg.value(metadata i8* %58, metadata !1855, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i64 %32, metadata !1799, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %34, metadata !1796, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %58, metadata !1855, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i64 %32, metadata !1799, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %34, metadata !1796, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %58, metadata !1855, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i64 %32, metadata !1799, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %34, metadata !1796, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %58, metadata !1855, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i64 %32, metadata !1799, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %34, metadata !1796, metadata !DIExpression()), !dbg !1808
  %65 = icmp eq i64 %34, 4, !dbg !1897
  br i1 %65, label %66, label %130, !dbg !1900

66:                                               ; preds = %64
  %67 = getelementptr inbounds i8, i8* %31, i64 3, !dbg !1901
  %68 = load i8, i8* %67, align 1, !dbg !1901, !tbaa !1378, !alias.scope !1865
  %69 = icmp eq i8 %68, 61, !dbg !1903
  br i1 %69, label %105, label %130, !dbg !1904

70:                                               ; preds = %60
  call void @llvm.dbg.value(metadata i8 %62, metadata !1769, metadata !DIExpression()), !dbg !1905
  %71 = zext i8 %62 to i64, !dbg !1909
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %71, !dbg !1909
  %73 = load i8, i8* %72, align 1, !dbg !1909, !tbaa !1378, !noalias !1865
  %74 = icmp sgt i8 %73, -1, !dbg !1910
  br i1 %74, label %75, label %130, !dbg !1911

75:                                               ; preds = %70
  %76 = icmp eq i64 %57, 0, !dbg !1912
  br i1 %76, label %83, label %77, !dbg !1914

77:                                               ; preds = %75
  %78 = shl i8 %46, 4, !dbg !1915
  %79 = lshr i8 %73, 2, !dbg !1917
  %80 = or i8 %79, %78, !dbg !1918
  %81 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !1919
  call void @llvm.dbg.value(metadata i8* %81, metadata !1855, metadata !DIExpression()), !dbg !1861
  store i8 %80, i8* %58, align 1, !dbg !1920, !tbaa !1378, !noalias !1865
  %82 = add i64 %57, -1, !dbg !1921
  br label %83, !dbg !1922

83:                                               ; preds = %77, %75
  %84 = phi i64 [ 0, %75 ], [ %82, %77 ], !dbg !1808
  %85 = phi i8* [ %58, %75 ], [ %81, %77 ], !dbg !1861
  call void @llvm.dbg.value(metadata i8* %85, metadata !1855, metadata !DIExpression()), !dbg !1861
  %86 = icmp eq i64 %34, 3, !dbg !1923
  br i1 %86, label %130, label %87, !dbg !1925

87:                                               ; preds = %83
  %88 = getelementptr inbounds i8, i8* %31, i64 3, !dbg !1926
  %89 = load i8, i8* %88, align 1, !dbg !1926, !tbaa !1378, !alias.scope !1865
  %90 = icmp eq i8 %89, 61, !dbg !1928
  br i1 %90, label %91, label %93, !dbg !1929

91:                                               ; preds = %87
  call void @llvm.dbg.value(metadata i8* %85, metadata !1855, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i64 %32, metadata !1799, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %34, metadata !1796, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %85, metadata !1855, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i64 %32, metadata !1799, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %34, metadata !1796, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %85, metadata !1855, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i64 %32, metadata !1799, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %34, metadata !1796, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %85, metadata !1855, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i64 %32, metadata !1799, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %34, metadata !1796, metadata !DIExpression()), !dbg !1808
  %92 = icmp eq i64 %34, 4, !dbg !1930
  br i1 %92, label %105, label %130, !dbg !1933

93:                                               ; preds = %87
  call void @llvm.dbg.value(metadata i8 %89, metadata !1769, metadata !DIExpression()), !dbg !1934
  %94 = zext i8 %89 to i64, !dbg !1938
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %94, !dbg !1938
  %96 = load i8, i8* %95, align 1, !dbg !1938, !tbaa !1378, !noalias !1865
  %97 = icmp sgt i8 %96, -1, !dbg !1939
  br i1 %97, label %98, label %130, !dbg !1940

98:                                               ; preds = %93
  %99 = icmp eq i64 %84, 0, !dbg !1941
  br i1 %99, label %110, label %100, !dbg !1943

100:                                              ; preds = %98
  %101 = shl i8 %73, 6, !dbg !1944
  %102 = or i8 %96, %101, !dbg !1946
  %103 = getelementptr inbounds i8, i8* %85, i64 1, !dbg !1947
  call void @llvm.dbg.value(metadata i8* %103, metadata !1855, metadata !DIExpression()), !dbg !1861
  store i8 %102, i8* %85, align 1, !dbg !1948, !tbaa !1378, !noalias !1865
  %104 = add i64 %84, -1, !dbg !1949
  br label %110, !dbg !1950

105:                                              ; preds = %91, %66
  %106 = phi i64 [ %84, %91 ], [ %57, %66 ]
  %107 = phi i8* [ %85, %91 ], [ %58, %66 ]
  call void @llvm.dbg.value(metadata i8* %112, metadata !1855, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* %31, metadata !1795, metadata !DIExpression()), !dbg !1808
  %108 = getelementptr inbounds i8, i8* %31, i64 4, !dbg !1951
  call void @llvm.dbg.value(metadata i8* %113, metadata !1795, metadata !DIExpression()), !dbg !1808
  %109 = ptrtoint i8* %108 to i64, !dbg !1951
  call void @llvm.dbg.value(metadata i64 %115, metadata !1796, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %111, metadata !1799, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %111, metadata !1803, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %118, metadata !1795, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %118, metadata !1851, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i64 %115, metadata !1852, metadata !DIExpression()), !dbg !1861
  br label %119, !dbg !1952

110:                                              ; preds = %100, %98
  %111 = phi i64 [ %84, %98 ], [ %104, %100 ], !dbg !1808
  %112 = phi i8* [ %85, %98 ], [ %103, %100 ], !dbg !1861
  call void @llvm.dbg.value(metadata i8* %112, metadata !1855, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8* %31, metadata !1795, metadata !DIExpression()), !dbg !1808
  %113 = getelementptr inbounds i8, i8* %31, i64 4, !dbg !1951
  call void @llvm.dbg.value(metadata i8* %113, metadata !1795, metadata !DIExpression()), !dbg !1808
  %114 = ptrtoint i8* %113 to i64, !dbg !1951
  call void @llvm.dbg.value(metadata i64 %34, metadata !1796, metadata !DIExpression()), !dbg !1808
  %115 = add i64 %34, -4, !dbg !1953
  call void @llvm.dbg.value(metadata i64 %115, metadata !1796, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %111, metadata !1799, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %111, metadata !1803, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %114, metadata !1795, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %114, metadata !1851, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i64 %115, metadata !1852, metadata !DIExpression()), !dbg !1861
  %116 = icmp ult i64 %115, 2, !dbg !1844
  br i1 %116, label %117, label %30, !dbg !1952, !llvm.loop !1954

117:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i64 %111, metadata !1799, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %112, metadata !1855, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i64 %111, metadata !1799, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %112, metadata !1855, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i64 %111, metadata !1799, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %112, metadata !1855, metadata !DIExpression()), !dbg !1861
  %118 = ptrtoint i8* %113 to i64, !dbg !1951
  call void @llvm.dbg.value(metadata i64 %111, metadata !1799, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %112, metadata !1855, metadata !DIExpression()), !dbg !1861
  br label %119, !dbg !1956

119:                                              ; preds = %117, %105, %21
  %120 = phi i64 [ %22, %21 ], [ %109, %105 ], [ %118, %117 ]
  %121 = phi i64 [ %23, %21 ], [ 0, %105 ], [ %115, %117 ]
  %122 = phi i8* [ %24, %21 ], [ %107, %105 ], [ %112, %117 ]
  %123 = phi i64 [ %25, %21 ], [ %106, %105 ], [ %111, %117 ], !dbg !1958
  call void @llvm.dbg.value(metadata i64 %123, metadata !1803, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %121, metadata !1796, metadata !DIExpression()), !dbg !1808
  %124 = icmp eq i64 %121, 0, !dbg !1956
  %125 = xor i1 %124, true, !dbg !1959
  %126 = or i1 %16, %125, !dbg !1959
  br i1 %126, label %127, label %286, !dbg !1959

127:                                              ; preds = %119
  call void @llvm.dbg.value(metadata i64 %121, metadata !1796, metadata !DIExpression()), !dbg !1808
  br i1 %124, label %128, label %130, !dbg !1960

128:                                              ; preds = %127
  %129 = inttoptr i64 %120 to i8*, !dbg !1961
  br label %144, !dbg !1960

130:                                              ; preds = %93, %83, %70, %56, %30, %41, %91, %66, %64, %127
  %131 = phi i64 [ %120, %127 ], [ %35, %64 ], [ %35, %66 ], [ %35, %91 ], [ %35, %41 ], [ %35, %30 ], [ %35, %56 ], [ %35, %70 ], [ %35, %83 ], [ %35, %93 ]
  %132 = phi i64 [ %121, %127 ], [ %34, %64 ], [ 4, %66 ], [ %34, %91 ], [ %34, %93 ], [ 3, %83 ], [ %34, %70 ], [ 2, %56 ], [ %34, %30 ], [ %34, %41 ]
  %133 = phi i8* [ %122, %127 ], [ %58, %64 ], [ %58, %66 ], [ %85, %91 ], [ %85, %93 ], [ %85, %83 ], [ %58, %70 ], [ %58, %56 ], [ %33, %30 ], [ %33, %41 ]
  %134 = phi i64 [ %123, %127 ], [ %57, %64 ], [ %57, %66 ], [ %84, %91 ], [ %84, %93 ], [ %84, %83 ], [ %57, %70 ], [ %57, %56 ], [ %32, %30 ], [ %32, %41 ]
  %135 = phi i64 [ %123, %127 ], [ %32, %64 ], [ %32, %66 ], [ %32, %91 ], [ %32, %41 ], [ %32, %30 ], [ %32, %56 ], [ %32, %70 ], [ %32, %83 ], [ %32, %93 ]
  %136 = inttoptr i64 %131 to i8*, !dbg !1962
  call void @llvm.dbg.value(metadata i8* %136, metadata !1795, metadata !DIExpression()), !dbg !1808
  %137 = load i8, i8* %136, align 1, !dbg !1963, !tbaa !1378
  %138 = icmp ne i8 %137, 10, !dbg !1964
  %139 = or i1 %138, %18, !dbg !1965
  br i1 %139, label %144, label %140, !dbg !1965

140:                                              ; preds = %130
  %141 = getelementptr inbounds i8, i8* %136, i64 1, !dbg !1966
  call void @llvm.dbg.value(metadata i8* %141, metadata !1795, metadata !DIExpression()), !dbg !1808
  %142 = ptrtoint i8* %141 to i64, !dbg !1966
  call void @llvm.dbg.value(metadata i64 %121, metadata !1796, metadata !DIExpression()), !dbg !1808
  %143 = add i64 %132, -1, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %143, metadata !1796, metadata !DIExpression()), !dbg !1808
  br label %281, !dbg !1969

144:                                              ; preds = %128, %130
  %145 = phi i8* [ %129, %128 ], [ %136, %130 ], !dbg !1961
  %146 = phi i64 [ %120, %128 ], [ %131, %130 ]
  %147 = phi i64 [ 0, %128 ], [ %132, %130 ]
  %148 = phi i8* [ %122, %128 ], [ %133, %130 ]
  %149 = phi i64 [ %123, %128 ], [ %134, %130 ]
  %150 = phi i64 [ %123, %128 ], [ %135, %130 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1799, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %122, metadata !1797, metadata !DIExpression()), !dbg !1808
  %151 = sub i64 %149, %150, !dbg !1970
  %152 = getelementptr inbounds i8, i8* %148, i64 %151, !dbg !1970
  call void @llvm.dbg.value(metadata i8* %152, metadata !1797, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %123, metadata !1799, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %145, metadata !1795, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %121, metadata !1796, metadata !DIExpression()), !dbg !1808
  %153 = getelementptr inbounds i8, i8* %145, i64 %147, !dbg !1971
  call void @llvm.dbg.value(metadata i8* %153, metadata !1805, metadata !DIExpression()), !dbg !1972
  br i1 %8, label %154, label %192, !dbg !1973

154:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i8** undef, metadata !1795, metadata !DIExpression(DW_OP_deref)), !dbg !1808
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, metadata !1828, metadata !DIExpression()) #20, !dbg !1974
  call void @llvm.dbg.value(metadata i8** undef, metadata !1829, metadata !DIExpression()) #20, !dbg !1974
  call void @llvm.dbg.value(metadata i8* %153, metadata !1830, metadata !DIExpression()) #20, !dbg !1974
  %155 = load i32, i32* %19, align 4, !dbg !1975, !tbaa !1787, !noalias !1976
  switch i32 %155, label %167 [
    i32 4, label %156
    i32 0, label %157
  ], !dbg !1979

156:                                              ; preds = %154
  store i32 0, i32* %19, align 4, !dbg !1980, !tbaa !1787, !noalias !1976
  br label %157, !dbg !1981

157:                                              ; preds = %156, %154
  call void @llvm.dbg.value(metadata i8* %145, metadata !1832, metadata !DIExpression()) #20, !dbg !1982
  %158 = ptrtoint i8* %153 to i64, !dbg !1983
  %159 = sub i64 %158, %146, !dbg !1983
  %160 = icmp sgt i64 %159, 3, !dbg !1985
  br i1 %160, label %161, label %167, !dbg !1986

161:                                              ; preds = %157
  %162 = tail call i8* @memchr(i8* nonnull dereferenceable(4) %145, i32 10, i64 4) #22, !dbg !1987
  %163 = icmp eq i8* %162, null, !dbg !1988
  br i1 %163, label %164, label %167, !dbg !1989

164:                                              ; preds = %161
  %165 = getelementptr inbounds i8, i8* %145, i64 4, !dbg !1990
  %166 = ptrtoint i8* %165 to i64, !dbg !1990
  call void @llvm.dbg.value(metadata i8* %195, metadata !1807, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i64 %194, metadata !1796, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %194, metadata !1796, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %195, metadata !1851, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i64 %194, metadata !1852, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8* %152, metadata !1855, metadata !DIExpression()), !dbg !1992
  br label %203, !dbg !1995

167:                                              ; preds = %154, %161, %157
  %168 = phi i32 [ 0, %161 ], [ 0, %157 ], [ %155, %154 ]
  call void @llvm.dbg.value(metadata i8* %145, metadata !1835, metadata !DIExpression()) #20, !dbg !1841
  %169 = icmp sgt i64 %147, 0, !dbg !1996
  br i1 %169, label %170, label %187, !dbg !1997

170:                                              ; preds = %167, %178
  %171 = phi i32 [ %179, %178 ], [ %168, %167 ]
  %172 = phi i8* [ %175, %178 ], [ %145, %167 ]
  br label %173, !dbg !1998

173:                                              ; preds = %170, %185
  %174 = phi i8* [ %175, %185 ], [ %172, %170 ]
  call void @llvm.dbg.value(metadata i8* %174, metadata !1835, metadata !DIExpression()) #20, !dbg !1841
  %175 = getelementptr inbounds i8, i8* %174, i64 1, !dbg !1999
  call void @llvm.dbg.value(metadata i8* %175, metadata !1835, metadata !DIExpression()) #20, !dbg !1841
  %176 = load i8, i8* %174, align 1, !dbg !2000, !tbaa !1378
  call void @llvm.dbg.value(metadata i8 %176, metadata !1837, metadata !DIExpression()) #20, !dbg !2001
  %177 = icmp eq i8 %176, 10, !dbg !2002
  br i1 %177, label %185, label %178, !dbg !1998

178:                                              ; preds = %173
  %179 = add i32 %171, 1, !dbg !2004
  store i32 %179, i32* %19, align 4, !dbg !2004, !tbaa !1787, !noalias !1976
  %180 = zext i32 %171 to i64, !dbg !2006
  %181 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 1, i64 %180, !dbg !2006
  store i8 %176, i8* %181, align 1, !dbg !2007, !tbaa !1378, !noalias !1976
  %182 = icmp ne i32 %179, 4, !dbg !2008
  %183 = icmp ult i8* %175, %153, !dbg !1996
  %184 = and i1 %182, %183, !dbg !2010
  call void @llvm.dbg.value(metadata i8* %175, metadata !1835, metadata !DIExpression()) #20, !dbg !1841
  br i1 %184, label %170, label %187, !dbg !2010

185:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i8* %175, metadata !1835, metadata !DIExpression()) #20, !dbg !1841
  %186 = icmp ult i8* %175, %153, !dbg !1996
  br i1 %186, label %173, label %187, !dbg !1997

187:                                              ; preds = %185, %178, %167
  %188 = phi i32 [ %168, %167 ], [ %171, %185 ], [ %179, %178 ], !dbg !2011
  %189 = phi i8* [ %145, %167 ], [ %175, %178 ], [ %175, %185 ], !dbg !1841
  call void @llvm.dbg.value(metadata i8* %189, metadata !1835, metadata !DIExpression()) #20, !dbg !1841
  %190 = ptrtoint i8* %189 to i64, !dbg !2012
  %191 = zext i32 %188 to i64, !dbg !2013
  br label %192

192:                                              ; preds = %187, %144
  %193 = phi i64 [ %146, %144 ], [ %190, %187 ]
  %194 = phi i64 [ %147, %144 ], [ %191, %187 ]
  %195 = phi i8* [ %145, %144 ], [ %20, %187 ], !dbg !2014
  call void @llvm.dbg.value(metadata i8* %195, metadata !1807, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i64 %194, metadata !1796, metadata !DIExpression()), !dbg !1808
  %196 = icmp eq i64 %194, 0, !dbg !2015
  br i1 %196, label %286, label %197, !dbg !2017

197:                                              ; preds = %192
  %198 = icmp ugt i64 %194, 3, !dbg !2018
  %199 = or i1 %16, %198, !dbg !2019
  %200 = or i1 %199, %18, !dbg !2019
  br i1 %200, label %201, label %286, !dbg !2019

201:                                              ; preds = %197
  call void @llvm.dbg.value(metadata i64 %194, metadata !1796, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %195, metadata !1851, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i64 %194, metadata !1852, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8* %152, metadata !1855, metadata !DIExpression()), !dbg !1992
  %202 = icmp ult i64 %194, 2, !dbg !2020
  br i1 %202, label %286, label %203, !dbg !1995

203:                                              ; preds = %164, %201
  %204 = phi i8* [ %145, %164 ], [ %195, %201 ]
  %205 = phi i64 [ 4, %164 ], [ %194, %201 ]
  %206 = phi i64 [ %166, %164 ], [ %193, %201 ]
  %207 = load i8, i8* %204, align 1, !dbg !2021, !tbaa !1378, !alias.scope !2022
  call void @llvm.dbg.value(metadata i8 %207, metadata !1769, metadata !DIExpression()), !dbg !2025
  %208 = zext i8 %207 to i64, !dbg !2027
  %209 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %208, !dbg !2027
  %210 = load i8, i8* %209, align 1, !dbg !2027, !tbaa !1378, !noalias !2022
  %211 = icmp sgt i8 %210, -1, !dbg !2028
  br i1 %211, label %212, label %286, !dbg !2029

212:                                              ; preds = %203
  %213 = getelementptr inbounds i8, i8* %204, i64 1, !dbg !2030
  %214 = load i8, i8* %213, align 1, !dbg !2030, !tbaa !1378, !alias.scope !2022
  call void @llvm.dbg.value(metadata i8 %214, metadata !1769, metadata !DIExpression()), !dbg !2031
  %215 = zext i8 %214 to i64, !dbg !2033
  %216 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %215, !dbg !2033
  %217 = load i8, i8* %216, align 1, !dbg !2033, !tbaa !1378, !noalias !2022
  %218 = icmp sgt i8 %217, -1, !dbg !2034
  br i1 %218, label %219, label %286, !dbg !2035

219:                                              ; preds = %212
  %220 = icmp eq i64 %150, 0, !dbg !2036
  br i1 %220, label %227, label %221, !dbg !2037

221:                                              ; preds = %219
  %222 = shl i8 %210, 2, !dbg !2038
  %223 = lshr i8 %217, 4, !dbg !2039
  %224 = or i8 %223, %222, !dbg !2040
  %225 = getelementptr inbounds i8, i8* %152, i64 1, !dbg !2041
  call void @llvm.dbg.value(metadata i8* %225, metadata !1855, metadata !DIExpression()), !dbg !1992
  store i8 %224, i8* %152, align 1, !dbg !2042, !tbaa !1378, !noalias !2022
  %226 = add i64 %150, -1, !dbg !2043
  br label %227, !dbg !2044

227:                                              ; preds = %221, %219
  %228 = phi i64 [ 0, %219 ], [ %226, %221 ], !dbg !1843
  %229 = phi i8* [ %152, %219 ], [ %225, %221 ], !dbg !1992
  call void @llvm.dbg.value(metadata i8* %229, metadata !1855, metadata !DIExpression()), !dbg !1992
  %230 = icmp eq i64 %205, 2, !dbg !2045
  br i1 %230, label %286, label %231, !dbg !2046

231:                                              ; preds = %227
  %232 = getelementptr inbounds i8, i8* %204, i64 2, !dbg !2047
  %233 = load i8, i8* %232, align 1, !dbg !2047, !tbaa !1378, !alias.scope !2022
  %234 = icmp eq i8 %233, 61, !dbg !2048
  br i1 %234, label %235, label %241, !dbg !2049

235:                                              ; preds = %231
  %236 = icmp eq i64 %205, 4, !dbg !2050
  br i1 %236, label %237, label %286, !dbg !2051

237:                                              ; preds = %235
  %238 = getelementptr inbounds i8, i8* %204, i64 3, !dbg !2052
  %239 = load i8, i8* %238, align 1, !dbg !2052, !tbaa !1378, !alias.scope !2022
  %240 = icmp eq i8 %239, 61, !dbg !2053
  br i1 %240, label %276, label %286, !dbg !2054

241:                                              ; preds = %231
  call void @llvm.dbg.value(metadata i8 %233, metadata !1769, metadata !DIExpression()), !dbg !2055
  %242 = zext i8 %233 to i64, !dbg !2057
  %243 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %242, !dbg !2057
  %244 = load i8, i8* %243, align 1, !dbg !2057, !tbaa !1378, !noalias !2022
  %245 = icmp sgt i8 %244, -1, !dbg !2058
  br i1 %245, label %246, label %286, !dbg !2059

246:                                              ; preds = %241
  %247 = icmp eq i64 %228, 0, !dbg !2060
  br i1 %247, label %254, label %248, !dbg !2061

248:                                              ; preds = %246
  %249 = shl i8 %217, 4, !dbg !2062
  %250 = lshr i8 %244, 2, !dbg !2063
  %251 = or i8 %250, %249, !dbg !2064
  %252 = getelementptr inbounds i8, i8* %229, i64 1, !dbg !2065
  call void @llvm.dbg.value(metadata i8* %252, metadata !1855, metadata !DIExpression()), !dbg !1992
  store i8 %251, i8* %229, align 1, !dbg !2066, !tbaa !1378, !noalias !2022
  %253 = add i64 %228, -1, !dbg !2067
  br label %254, !dbg !2068

254:                                              ; preds = %248, %246
  %255 = phi i64 [ 0, %246 ], [ %253, %248 ], !dbg !1843
  %256 = phi i8* [ %229, %246 ], [ %252, %248 ], !dbg !1992
  call void @llvm.dbg.value(metadata i8* %256, metadata !1855, metadata !DIExpression()), !dbg !1992
  %257 = icmp eq i64 %205, 3, !dbg !2069
  br i1 %257, label %286, label %258, !dbg !2070

258:                                              ; preds = %254
  %259 = getelementptr inbounds i8, i8* %204, i64 3, !dbg !2071
  %260 = load i8, i8* %259, align 1, !dbg !2071, !tbaa !1378, !alias.scope !2022
  %261 = icmp eq i8 %260, 61, !dbg !2072
  br i1 %261, label %262, label %264, !dbg !2073

262:                                              ; preds = %258
  %263 = icmp eq i64 %205, 4, !dbg !2074
  br i1 %263, label %276, label %286, !dbg !2075

264:                                              ; preds = %258
  call void @llvm.dbg.value(metadata i8 %260, metadata !1769, metadata !DIExpression()), !dbg !2076
  %265 = zext i8 %260 to i64, !dbg !2078
  %266 = getelementptr inbounds [256 x i8], [256 x i8]* @b64, i64 0, i64 %265, !dbg !2078
  %267 = load i8, i8* %266, align 1, !dbg !2078, !tbaa !1378, !noalias !2022
  %268 = icmp sgt i8 %267, -1, !dbg !2079
  br i1 %268, label %269, label %286, !dbg !2080

269:                                              ; preds = %264
  %270 = icmp eq i64 %255, 0, !dbg !2081
  br i1 %270, label %276, label %271, !dbg !2082

271:                                              ; preds = %269
  %272 = shl i8 %244, 6, !dbg !2083
  %273 = or i8 %267, %272, !dbg !2084
  %274 = getelementptr inbounds i8, i8* %256, i64 1, !dbg !2085
  call void @llvm.dbg.value(metadata i8* %274, metadata !1855, metadata !DIExpression()), !dbg !1992
  store i8 %273, i8* %256, align 1, !dbg !2086, !tbaa !1378, !noalias !2022
  %275 = add i64 %255, -1, !dbg !2087
  br label %276, !dbg !2088

276:                                              ; preds = %271, %269, %262, %237
  %277 = phi i64 [ %228, %237 ], [ %255, %262 ], [ %255, %269 ], [ %275, %271 ], !dbg !1843
  %278 = phi i8* [ %229, %237 ], [ %256, %262 ], [ %256, %269 ], [ %274, %271 ], !dbg !1992
  call void @llvm.dbg.value(metadata i8* %278, metadata !1855, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8* undef, metadata !1795, metadata !DIExpression()), !dbg !1808
  %279 = ptrtoint i8* %153 to i64, !dbg !2089
  %280 = sub i64 %279, %206, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %280, metadata !1796, metadata !DIExpression()), !dbg !1808
  br label %281, !dbg !2090

281:                                              ; preds = %276, %140
  %282 = phi i64 [ %142, %140 ], [ %206, %276 ]
  %283 = phi i64 [ %143, %140 ], [ %280, %276 ]
  %284 = phi i8* [ %133, %140 ], [ %278, %276 ]
  %285 = phi i64 [ %134, %140 ], [ %277, %276 ]
  br label %21, !dbg !1808, !llvm.loop !2091

286:                                              ; preds = %201, %212, %203, %227, %235, %237, %241, %254, %262, %264, %192, %197, %119
  %287 = phi i64 [ %123, %119 ], [ %150, %201 ], [ %150, %212 ], [ %150, %203 ], [ %228, %227 ], [ %228, %235 ], [ %228, %237 ], [ %228, %241 ], [ %255, %254 ], [ %255, %262 ], [ %255, %264 ], [ %150, %192 ], [ %150, %197 ]
  %288 = phi i64 [ %121, %119 ], [ 1, %201 ], [ %205, %212 ], [ %205, %203 ], [ 1, %227 ], [ %205, %235 ], [ 1, %237 ], [ %205, %241 ], [ 1, %254 ], [ %205, %262 ], [ %205, %264 ], [ 0, %192 ], [ 0, %197 ]
  %289 = load i64, i64* %4, align 8, !dbg !2093, !tbaa !1367
  %290 = sub i64 %289, %287, !dbg !2093
  store i64 %290, i64* %4, align 8, !dbg !2093, !tbaa !1367
  %291 = icmp eq i64 %288, 0, !dbg !2094
  ret i1 %291, !dbg !2095
}

; Function Attrs: nofree nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @base64_decode_alloc_ctx(%struct.base64_decode_context* %0, i8* %1, i64 %2, i8** nocapture %3, i64* %4) local_unnamed_addr #8 !dbg !2096 {
  %6 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, metadata !2100, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8* %1, metadata !2101, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i64 %2, metadata !2102, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8** %3, metadata !2103, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i64* %4, metadata !2104, metadata !DIExpression()), !dbg !2106
  %7 = bitcast i64* %6 to i8*, !dbg !2107
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #20, !dbg !2107
  %8 = lshr i64 %2, 2, !dbg !2108
  %9 = mul nuw i64 %8, 3, !dbg !2109
  %10 = add nuw i64 %9, 3, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %10, metadata !2105, metadata !DIExpression()), !dbg !2106
  store i64 %10, i64* %6, align 8, !dbg !2111, !tbaa !1367
  %11 = tail call noalias i8* @malloc(i64 %10) #20, !dbg !2112
  store i8* %11, i8** %3, align 8, !dbg !2113, !tbaa !1190
  %12 = icmp eq i8* %11, null, !dbg !2114
  br i1 %12, label %21, label %13, !dbg !2116

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i64* %6, metadata !2105, metadata !DIExpression(DW_OP_deref)), !dbg !2106
  %14 = call zeroext i1 @base64_decode_ctx(%struct.base64_decode_context* %0, i8* %1, i64 %2, i8* nonnull %11, i64* nonnull %6), !dbg !2117
  br i1 %14, label %17, label %15, !dbg !2119

15:                                               ; preds = %13
  %16 = load i8*, i8** %3, align 8, !dbg !2120, !tbaa !1190
  tail call void @free(i8* %16) #20, !dbg !2122
  store i8* null, i8** %3, align 8, !dbg !2123, !tbaa !1190
  br label %21, !dbg !2124

17:                                               ; preds = %13
  %18 = icmp eq i64* %4, null, !dbg !2125
  br i1 %18, label %21, label %19, !dbg !2127

19:                                               ; preds = %17
  %20 = load i64, i64* %6, align 8, !dbg !2128, !tbaa !1367
  call void @llvm.dbg.value(metadata i64 %20, metadata !2105, metadata !DIExpression()), !dbg !2106
  store i64 %20, i64* %4, align 8, !dbg !2129, !tbaa !1367
  br label %21, !dbg !2130

21:                                               ; preds = %19, %17, %5, %15
  %22 = phi i1 [ false, %15 ], [ true, %5 ], [ true, %17 ], [ true, %19 ], !dbg !2106
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #20, !dbg !2131
  ret i1 %22, !dbg !2131
}

; Function Attrs: nounwind
declare !dbg !210 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #13 !dbg !2132 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2134, metadata !DIExpression()), !dbg !2135
  store i8* %0, i8** @file_name, align 8, !dbg !2136, !tbaa !1190
  ret void, !dbg !2137
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #13 !dbg !2138 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2142, metadata !DIExpression()), !dbg !2143
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2144, !tbaa !2145
  ret void, !dbg !2147
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !2148 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2153, !tbaa !1190
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #20, !dbg !2154
  %3 = icmp eq i32 %2, 0, !dbg !2155
  br i1 %3, label %22, label %4, !dbg !2156

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2157, !tbaa !2145, !range !2158
  %6 = icmp eq i8 %5, 0, !dbg !2157
  br i1 %6, label %11, label %7, !dbg !2159

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #25, !dbg !2160
  %9 = load i32, i32* %8, align 4, !dbg !2160, !tbaa !1308
  %10 = icmp eq i32 %9, 32, !dbg !2161
  br i1 %10, label %22, label %11, !dbg !2162

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i32 5) #20, !dbg !2163
  call void @llvm.dbg.value(metadata i8* %12, metadata !2150, metadata !DIExpression()), !dbg !2164
  %13 = load i8*, i8** @file_name, align 8, !dbg !2165, !tbaa !1190
  %14 = icmp eq i8* %13, null, !dbg !2165
  %15 = tail call i32* @__errno_location() #25, !dbg !2167
  %16 = load i32, i32* %15, align 4, !dbg !2167, !tbaa !1308
  br i1 %14, label %19, label %17, !dbg !2168

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #20, !dbg !2169
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.57, i64 0, i64 0), i8* %18, i8* %12) #20, !dbg !2170
  br label %20, !dbg !2170

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.58, i64 0, i64 0), i8* %12) #20, !dbg !2171
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2172, !tbaa !1308
  tail call void @_exit(i32 %21) #23, !dbg !2173
  unreachable, !dbg !2173

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2174, !tbaa !1190
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #20, !dbg !2176
  %25 = icmp eq i32 %24, 0, !dbg !2177
  br i1 %25, label %28, label %26, !dbg !2178

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2179, !tbaa !1308
  tail call void @_exit(i32 %27) #23, !dbg !2180
  unreachable, !dbg !2180

28:                                               ; preds = %22
  ret void, !dbg !2181
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !2182 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2188, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i64 %1, metadata !2189, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i64 %2, metadata !2190, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i32 %3, metadata !2191, metadata !DIExpression()), !dbg !2194
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #20, !dbg !2195
  call void @llvm.dbg.value(metadata i32 %5, metadata !2192, metadata !DIExpression()), !dbg !2196
  ret void, !dbg !2197
}

; Function Attrs: nounwind
declare !dbg !439 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !2198 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2204, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i32 %1, metadata !2205, metadata !DIExpression()), !dbg !2206
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2207
  br i1 %3, label %7, label %4, !dbg !2209

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !2210
  call void @llvm.dbg.value(metadata i32 %5, metadata !2188, metadata !DIExpression()) #20, !dbg !2211
  call void @llvm.dbg.value(metadata i64 0, metadata !2189, metadata !DIExpression()) #20, !dbg !2211
  call void @llvm.dbg.value(metadata i64 0, metadata !2190, metadata !DIExpression()) #20, !dbg !2211
  call void @llvm.dbg.value(metadata i32 %1, metadata !2191, metadata !DIExpression()) #20, !dbg !2211
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #20, !dbg !2213
  call void @llvm.dbg.value(metadata i32 %6, metadata !2192, metadata !DIExpression()) #20, !dbg !2214
  br label %7, !dbg !2215

7:                                                ; preds = %2, %4
  ret void, !dbg !2216
}

; Function Attrs: nofree nounwind
declare !dbg !443 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2217 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2219, metadata !DIExpression()), !dbg !2222
  %2 = icmp eq i8* %0, null, !dbg !2223
  br i1 %2, label %3, label %6, !dbg !2225

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2226, !tbaa !1190
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.67, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #26, !dbg !2228
  tail call void @abort() #23, !dbg !2229
  unreachable, !dbg !2229

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !2230
  call void @llvm.dbg.value(metadata i8* %7, metadata !2220, metadata !DIExpression()), !dbg !2222
  %8 = icmp eq i8* %7, null, !dbg !2231
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2232
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2232
  call void @llvm.dbg.value(metadata i8* %10, metadata !2221, metadata !DIExpression()), !dbg !2222
  %11 = ptrtoint i8* %10 to i64, !dbg !2233
  %12 = ptrtoint i8* %0 to i64, !dbg !2233
  %13 = sub i64 %11, %12, !dbg !2233
  %14 = icmp sgt i64 %13, 6, !dbg !2235
  br i1 %14, label %15, label %24, !dbg !2236

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2237
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.68, i64 0, i64 0), i64 7) #22, !dbg !2238
  %18 = icmp eq i32 %17, 0, !dbg !2239
  br i1 %18, label %19, label %24, !dbg !2240

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2219, metadata !DIExpression()), !dbg !2222
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.69, i64 0, i64 0), i64 3) #22, !dbg !2241
  %21 = icmp eq i32 %20, 0, !dbg !2244
  br i1 %21, label %22, label %24, !dbg !2245

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2246
  call void @llvm.dbg.value(metadata i8* %23, metadata !2219, metadata !DIExpression()), !dbg !2222
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2248, !tbaa !1190
  br label %24, !dbg !2249

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2219, metadata !DIExpression()), !dbg !2222
  store i8* %25, i8** @program_name, align 8, !dbg !2250, !tbaa !1190
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2251, !tbaa !1190
  ret void, !dbg !2252
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #15

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2253 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2258, metadata !DIExpression()), !dbg !2261
  %2 = tail call i32* @__errno_location() #25, !dbg !2262
  %3 = load i32, i32* %2, align 4, !dbg !2262, !tbaa !1308
  call void @llvm.dbg.value(metadata i32 %3, metadata !2259, metadata !DIExpression()), !dbg !2261
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2263
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2263
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2263
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #20, !dbg !2264
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2264
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2260, metadata !DIExpression()), !dbg !2261
  store i32 %3, i32* %2, align 4, !dbg !2265, !tbaa !1308
  ret %struct.quoting_options* %8, !dbg !2266
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #16 !dbg !2267 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2271, metadata !DIExpression()), !dbg !2272
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2273
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2273
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2274
  %5 = load i32, i32* %4, align 8, !dbg !2274, !tbaa !2275
  ret i32 %5, !dbg !2277
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #13 !dbg !2278 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2282, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 %1, metadata !2283, metadata !DIExpression()), !dbg !2284
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2285
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2285
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2286
  store i32 %1, i32* %5, align 8, !dbg !2287, !tbaa !2275
  ret void, !dbg !2288
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #10 !dbg !2289 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2293, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %1, metadata !2294, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 %2, metadata !2295, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8 %1, metadata !2296, metadata !DIExpression()), !dbg !2301
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2302
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2302
  %6 = lshr i8 %1, 5, !dbg !2303
  %7 = zext i8 %6 to i64, !dbg !2303
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2304
  call void @llvm.dbg.value(metadata i32* %8, metadata !2297, metadata !DIExpression()), !dbg !2301
  %9 = and i8 %1, 31, !dbg !2305
  %10 = zext i8 %9 to i32, !dbg !2305
  call void @llvm.dbg.value(metadata i32 %10, metadata !2299, metadata !DIExpression()), !dbg !2301
  %11 = load i32, i32* %8, align 4, !dbg !2306, !tbaa !1308
  %12 = lshr i32 %11, %10, !dbg !2307
  %13 = and i32 %12, 1, !dbg !2308
  call void @llvm.dbg.value(metadata i32 %13, metadata !2300, metadata !DIExpression()), !dbg !2301
  %14 = and i32 %2, 1, !dbg !2309
  %15 = xor i32 %13, %14, !dbg !2310
  %16 = shl i32 %15, %10, !dbg !2311
  %17 = xor i32 %16, %11, !dbg !2312
  store i32 %17, i32* %8, align 4, !dbg !2312, !tbaa !1308
  ret i32 %13, !dbg !2313
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !2314 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2318, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i32 %1, metadata !2319, metadata !DIExpression()), !dbg !2321
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2322
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2324
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2318, metadata !DIExpression()), !dbg !2321
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2325
  %6 = load i32, i32* %5, align 4, !dbg !2325, !tbaa !2326
  call void @llvm.dbg.value(metadata i32 %6, metadata !2320, metadata !DIExpression()), !dbg !2321
  store i32 %1, i32* %5, align 4, !dbg !2327, !tbaa !2326
  ret i32 %6, !dbg !2328
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2329 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2333, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i8* %1, metadata !2334, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i8* %2, metadata !2335, metadata !DIExpression()), !dbg !2336
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2337
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2333, metadata !DIExpression()), !dbg !2336
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2340
  store i32 10, i32* %6, align 8, !dbg !2341, !tbaa !2275
  %7 = icmp ne i8* %1, null, !dbg !2342
  %8 = icmp ne i8* %2, null, !dbg !2344
  %9 = and i1 %7, %8, !dbg !2345
  br i1 %9, label %11, label %10, !dbg !2345

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !2346
  unreachable, !dbg !2346

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2347
  store i8* %1, i8** %12, align 8, !dbg !2348, !tbaa !2349
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2350
  store i8* %2, i8** %13, align 8, !dbg !2351, !tbaa !2352
  ret void, !dbg !2353
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2354 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2358, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i64 %1, metadata !2359, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i8* %2, metadata !2360, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i64 %3, metadata !2361, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2362, metadata !DIExpression()), !dbg !2366
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2367
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2367
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2363, metadata !DIExpression()), !dbg !2366
  %8 = tail call i32* @__errno_location() #25, !dbg !2368
  %9 = load i32, i32* %8, align 4, !dbg !2368, !tbaa !1308
  call void @llvm.dbg.value(metadata i32 %9, metadata !2364, metadata !DIExpression()), !dbg !2366
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2369
  %11 = load i32, i32* %10, align 8, !dbg !2369, !tbaa !2275
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2370
  %13 = load i32, i32* %12, align 4, !dbg !2370, !tbaa !2326
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2371
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2372
  %16 = load i8*, i8** %15, align 8, !dbg !2372, !tbaa !2349
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2373
  %18 = load i8*, i8** %17, align 8, !dbg !2373, !tbaa !2352
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2374
  call void @llvm.dbg.value(metadata i64 %19, metadata !2365, metadata !DIExpression()), !dbg !2366
  store i32 %9, i32* %8, align 4, !dbg !2375, !tbaa !1308
  ret i64 %19, !dbg !2376
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2377 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2383, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %1, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %2, metadata !2385, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %3, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 %4, metadata !2387, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 %5, metadata !2388, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32* %6, metadata !2389, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %7, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %8, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 0, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 0, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* null, metadata !2395, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 0, metadata !2396, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 0, metadata !2397, metadata !DIExpression()), !dbg !2441
  %13 = tail call i64 @__ctype_get_mb_cur_max() #20, !dbg !2442
  %14 = icmp eq i64 %13, 1, !dbg !2443
  call void @llvm.dbg.value(metadata i1 %14, metadata !2398, metadata !DIExpression()), !dbg !2441
  %15 = lshr i32 %5, 1, !dbg !2444
  %16 = trunc i32 %15 to i8, !dbg !2444
  %17 = and i8 %16, 1, !dbg !2444
  call void @llvm.dbg.value(metadata i8 %17, metadata !2399, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 0, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 0, metadata !2401, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 1, metadata !2402, metadata !DIExpression()), !dbg !2441
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2445
  %19 = and i32 %5, 4, !dbg !2447
  %20 = icmp eq i32 %19, 0, !dbg !2447
  %21 = and i32 %5, 1, !dbg !2450
  %22 = icmp eq i32 %21, 0, !dbg !2450
  %23 = bitcast i64* %10 to i8*, !dbg !2453
  %24 = bitcast i32* %12 to i8*, !dbg !2454
  %25 = icmp eq i32* %6, null, !dbg !2455
  br label %26, !dbg !2457

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2458
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2459
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2460
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2461
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2441
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2462
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2463
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2464
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %38, metadata !2402, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %37, metadata !2401, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %36, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %35, metadata !2399, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %34, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %33, metadata !2397, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %32, metadata !2396, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %31, metadata !2395, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %30, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 0, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %29, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %28, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 %27, metadata !2387, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.label(metadata !2435), !dbg !2465
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
  ], !dbg !2466

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2387, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 1, metadata !2399, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %35, metadata !2399, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 5, metadata !2387, metadata !DIExpression()), !dbg !2441
  br label %92, !dbg !2467

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2399, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 5, metadata !2387, metadata !DIExpression()), !dbg !2441
  %42 = and i8 %35, 1, !dbg !2469
  %43 = icmp eq i8 %42, 0, !dbg !2469
  br i1 %43, label %44, label %92, !dbg !2467

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2471
  br i1 %45, label %92, label %46, !dbg !2474

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2471, !tbaa !1378
  br label %92, !dbg !2471

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.80, i64 0, i64 0), i32 %27), !dbg !2475
  call void @llvm.dbg.value(metadata i8* %48, metadata !2390, metadata !DIExpression()), !dbg !2441
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), i32 %27), !dbg !2479
  call void @llvm.dbg.value(metadata i8* %49, metadata !2391, metadata !DIExpression()), !dbg !2441
  br label %50, !dbg !2480

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %51, metadata !2390, metadata !DIExpression()), !dbg !2441
  %53 = and i8 %35, 1, !dbg !2481
  %54 = icmp eq i8 %53, 0, !dbg !2481
  br i1 %54, label %55, label %70, !dbg !2483

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2395, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 0, metadata !2393, metadata !DIExpression()), !dbg !2441
  %56 = load i8, i8* %51, align 1, !dbg !2484, !tbaa !1378
  %57 = icmp eq i8 %56, 0, !dbg !2487
  br i1 %57, label %70, label %58, !dbg !2487

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2395, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %61, metadata !2393, metadata !DIExpression()), !dbg !2441
  %62 = icmp ult i64 %61, %39, !dbg !2488
  br i1 %62, label %63, label %65, !dbg !2491

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2488
  store i8 %59, i8* %64, align 1, !dbg !2488, !tbaa !1378
  br label %65, !dbg !2488

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2491
  call void @llvm.dbg.value(metadata i64 %66, metadata !2393, metadata !DIExpression()), !dbg !2441
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2492
  call void @llvm.dbg.value(metadata i8* %67, metadata !2395, metadata !DIExpression()), !dbg !2441
  %68 = load i8, i8* %67, align 1, !dbg !2484, !tbaa !1378
  %69 = icmp eq i8 %68, 0, !dbg !2487
  br i1 %69, label %70, label %58, !dbg !2487, !llvm.loop !2493

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2495
  call void @llvm.dbg.value(metadata i64 %71, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 1, metadata !2397, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %52, metadata !2395, metadata !DIExpression()), !dbg !2441
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !2496
  call void @llvm.dbg.value(metadata i64 %72, metadata !2396, metadata !DIExpression()), !dbg !2441
  br label %92, !dbg !2497

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2397, metadata !DIExpression()), !dbg !2441
  br label %74, !dbg !2498

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2441
  call void @llvm.dbg.value(metadata i8 %75, metadata !2397, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 1, metadata !2399, metadata !DIExpression()), !dbg !2441
  br label %76, !dbg !2499

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2461
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2441
  call void @llvm.dbg.value(metadata i8 %78, metadata !2399, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %77, metadata !2397, metadata !DIExpression()), !dbg !2441
  %79 = and i8 %78, 1, !dbg !2500
  %80 = icmp eq i8 %79, 0, !dbg !2500
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2502
  br label %82, !dbg !2502

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2441
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2444
  call void @llvm.dbg.value(metadata i8 %84, metadata !2399, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %83, metadata !2397, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 2, metadata !2387, metadata !DIExpression()), !dbg !2441
  %85 = and i8 %84, 1, !dbg !2503
  %86 = icmp eq i8 %85, 0, !dbg !2503
  br i1 %86, label %87, label %92, !dbg !2505

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2506
  br i1 %88, label %92, label %89, !dbg !2509

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2506, !tbaa !1378
  br label %92, !dbg !2506

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2399, metadata !DIExpression()), !dbg !2441
  br label %92, !dbg !2510

91:                                               ; preds = %26
  call void @abort() #23, !dbg !2511
  unreachable, !dbg !2511

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2495
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %40 ], !dbg !2441
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2441
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2441
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2441
  call void @llvm.dbg.value(metadata i8 %100, metadata !2399, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %99, metadata !2397, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %98, metadata !2396, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %97, metadata !2395, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %96, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 %93, metadata !2387, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 0, metadata !2392, metadata !DIExpression()), !dbg !2441
  %101 = and i8 %99, 1, !dbg !2512
  %102 = icmp ne i8 %101, 0, !dbg !2512
  %103 = icmp ne i32 %93, 2, !dbg !2512
  %104 = and i1 %103, %102, !dbg !2512
  %105 = icmp ne i64 %98, 0, !dbg !2512
  %106 = and i1 %105, %104, !dbg !2512
  %107 = icmp ugt i64 %98, 1, !dbg !2512
  %108 = and i8 %100, 1, !dbg !2514
  %109 = icmp eq i8 %108, 0, !dbg !2514
  %110 = icmp eq i32 %93, 2, !dbg !2517
  %111 = or i1 %103, %109, !dbg !2519
  %112 = icmp ne i8 %108, 0, !dbg !2521
  %113 = and i1 %110, %112, !dbg !2521
  %114 = xor i1 %102, true, !dbg !2522
  %115 = xor i1 %104, true, !dbg !2455
  %116 = and i1 %109, %115, !dbg !2455
  %117 = or i1 %25, %116, !dbg !2455
  %118 = and i8 %99, %100, !dbg !2523
  %119 = and i8 %118, 1, !dbg !2523
  %120 = icmp ne i8 %119, 0, !dbg !2523
  %121 = and i1 %120, %105, !dbg !2523
  br label %122, !dbg !2525

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2526
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2495
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2458
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2462
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2463
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2464
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %129, metadata !2402, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %128, metadata !2401, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %127, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %126, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %125, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %123, metadata !2392, metadata !DIExpression()), !dbg !2441
  %131 = icmp eq i64 %126, -1, !dbg !2527
  br i1 %131, label %132, label %136, !dbg !2528

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2529
  %134 = load i8, i8* %133, align 1, !dbg !2529, !tbaa !1378
  %135 = icmp eq i8 %134, 0, !dbg !2530
  br i1 %135, label %581, label %138, !dbg !2531

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2532
  br i1 %137, label %581, label %138, !dbg !2531

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2408, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 0, metadata !2409, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 0, metadata !2410, metadata !DIExpression()), !dbg !2533
  br i1 %106, label %139, label %154, !dbg !2534

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2535
  %141 = and i1 %107, %131, !dbg !2536
  br i1 %141, label %142, label %144, !dbg !2536

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2537
  call void @llvm.dbg.value(metadata i64 %143, metadata !2386, metadata !DIExpression()), !dbg !2441
  br label %144, !dbg !2538

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2386, metadata !DIExpression()), !dbg !2441
  %146 = icmp ugt i64 %140, %145, !dbg !2539
  br i1 %146, label %154, label %147, !dbg !2540

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2541
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2542
  %150 = icmp ne i32 %149, 0, !dbg !2543
  %151 = or i1 %150, %109, !dbg !2544
  %152 = xor i1 %150, true, !dbg !2544
  %153 = zext i1 %152 to i8, !dbg !2544
  br i1 %151, label %154, label %639, !dbg !2544

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2533
  call void @llvm.dbg.value(metadata i8 %156, metadata !2408, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %155, metadata !2386, metadata !DIExpression()), !dbg !2441
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2545
  %158 = load i8, i8* %157, align 1, !dbg !2545, !tbaa !1378
  call void @llvm.dbg.value(metadata i8 %158, metadata !2403, metadata !DIExpression()), !dbg !2533
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
  ], !dbg !2546

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2547

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2548

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2409, metadata !DIExpression()), !dbg !2533
  %162 = and i8 %127, 1, !dbg !2551
  %163 = icmp eq i8 %162, 0, !dbg !2551
  %164 = and i1 %110, %163, !dbg !2551
  br i1 %164, label %165, label %181, !dbg !2551

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2553
  br i1 %166, label %167, label %169, !dbg !2557

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2553
  store i8 39, i8* %168, align 1, !dbg !2553, !tbaa !1378
  br label %169, !dbg !2553

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2557
  call void @llvm.dbg.value(metadata i64 %170, metadata !2393, metadata !DIExpression()), !dbg !2441
  %171 = icmp ult i64 %170, %130, !dbg !2558
  br i1 %171, label %172, label %174, !dbg !2561

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2558
  store i8 36, i8* %173, align 1, !dbg !2558, !tbaa !1378
  br label %174, !dbg !2558

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2561
  call void @llvm.dbg.value(metadata i64 %175, metadata !2393, metadata !DIExpression()), !dbg !2441
  %176 = icmp ult i64 %175, %130, !dbg !2562
  br i1 %176, label %177, label %179, !dbg !2565

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2562
  store i8 39, i8* %178, align 1, !dbg !2562, !tbaa !1378
  br label %179, !dbg !2562

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %180, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 1, metadata !2400, metadata !DIExpression()), !dbg !2441
  br label %181, !dbg !2566

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2441
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2441
  call void @llvm.dbg.value(metadata i8 %183, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %182, metadata !2393, metadata !DIExpression()), !dbg !2441
  %184 = icmp ult i64 %182, %130, !dbg !2567
  br i1 %184, label %185, label %187, !dbg !2570

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2567
  store i8 92, i8* %186, align 1, !dbg !2567, !tbaa !1378
  br label %187, !dbg !2567

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2570
  call void @llvm.dbg.value(metadata i64 %188, metadata !2393, metadata !DIExpression()), !dbg !2441
  br i1 %103, label %189, label %463, !dbg !2571

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2573
  %191 = icmp ult i64 %190, %155, !dbg !2574
  br i1 %191, label %192, label %463, !dbg !2575

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2576
  %194 = load i8, i8* %193, align 1, !dbg !2576, !tbaa !1378
  %195 = add i8 %194, -48, !dbg !2577
  %196 = icmp ult i8 %195, 10, !dbg !2577
  br i1 %196, label %197, label %463, !dbg !2577

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2578
  br i1 %198, label %199, label %201, !dbg !2582

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2578
  store i8 48, i8* %200, align 1, !dbg !2578, !tbaa !1378
  br label %201, !dbg !2578

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2582
  call void @llvm.dbg.value(metadata i64 %202, metadata !2393, metadata !DIExpression()), !dbg !2441
  %203 = icmp ult i64 %202, %130, !dbg !2583
  br i1 %203, label %204, label %206, !dbg !2586

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2583
  store i8 48, i8* %205, align 1, !dbg !2583, !tbaa !1378
  br label %206, !dbg !2583

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2586
  call void @llvm.dbg.value(metadata i64 %207, metadata !2393, metadata !DIExpression()), !dbg !2441
  br label %463, !dbg !2587

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2588

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2589

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2590

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2591

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2592
  %214 = icmp ult i64 %213, %155, !dbg !2593
  br i1 %214, label %215, label %463, !dbg !2594

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2595
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2596
  %218 = load i8, i8* %217, align 1, !dbg !2596, !tbaa !1378
  %219 = icmp eq i8 %218, 63, !dbg !2597
  br i1 %219, label %220, label %463, !dbg !2598

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2599
  %222 = load i8, i8* %221, align 1, !dbg !2599, !tbaa !1378
  %223 = sext i8 %222 to i32, !dbg !2599
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
  ], !dbg !2600

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2601

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2403, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %213, metadata !2392, metadata !DIExpression()), !dbg !2441
  %226 = icmp ult i64 %124, %130, !dbg !2603
  br i1 %226, label %227, label %229, !dbg !2606

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2603
  store i8 63, i8* %228, align 1, !dbg !2603, !tbaa !1378
  br label %229, !dbg !2603

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2606
  call void @llvm.dbg.value(metadata i64 %230, metadata !2393, metadata !DIExpression()), !dbg !2441
  %231 = icmp ult i64 %230, %130, !dbg !2607
  br i1 %231, label %232, label %234, !dbg !2610

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2607
  store i8 34, i8* %233, align 1, !dbg !2607, !tbaa !1378
  br label %234, !dbg !2607

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2610
  call void @llvm.dbg.value(metadata i64 %235, metadata !2393, metadata !DIExpression()), !dbg !2441
  %236 = icmp ult i64 %235, %130, !dbg !2611
  br i1 %236, label %237, label %239, !dbg !2614

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2611
  store i8 34, i8* %238, align 1, !dbg !2611, !tbaa !1378
  br label %239, !dbg !2611

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2614
  call void @llvm.dbg.value(metadata i64 %240, metadata !2393, metadata !DIExpression()), !dbg !2441
  %241 = icmp ult i64 %240, %130, !dbg !2615
  br i1 %241, label %242, label %244, !dbg !2618

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2615
  store i8 63, i8* %243, align 1, !dbg !2615, !tbaa !1378
  br label %244, !dbg !2615

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2618
  call void @llvm.dbg.value(metadata i64 %245, metadata !2393, metadata !DIExpression()), !dbg !2441
  br label %463, !dbg !2619

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2407, metadata !DIExpression()), !dbg !2533
  br label %256, !dbg !2620

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2407, metadata !DIExpression()), !dbg !2533
  br label %256, !dbg !2621

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2407, metadata !DIExpression()), !dbg !2533
  br label %254, !dbg !2622

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2407, metadata !DIExpression()), !dbg !2533
  br label %254, !dbg !2623

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2407, metadata !DIExpression()), !dbg !2533
  br label %256, !dbg !2624

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2407, metadata !DIExpression()), !dbg !2533
  br i1 %110, label %252, label %253, !dbg !2625

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2626

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2629

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2630
  call void @llvm.dbg.value(metadata i8 %255, metadata !2407, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.label(metadata !2436), !dbg !2631
  br i1 %111, label %256, label %625, !dbg !2632

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2630
  call void @llvm.dbg.value(metadata i8 %257, metadata !2407, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.label(metadata !2437), !dbg !2634
  br i1 %102, label %488, label %463, !dbg !2635

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2636

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2637, !tbaa !1378
  %261 = icmp eq i8 %260, 0, !dbg !2638
  br i1 %261, label %262, label %463, !dbg !2639

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2640
  br i1 %263, label %264, label %463, !dbg !2642

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2410, metadata !DIExpression()), !dbg !2533
  br label %265, !dbg !2643

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2533
  call void @llvm.dbg.value(metadata i8 %266, metadata !2410, metadata !DIExpression()), !dbg !2533
  br i1 %111, label %463, label %625, !dbg !2644

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2401, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 1, metadata !2410, metadata !DIExpression()), !dbg !2533
  br i1 %110, label %268, label %463, !dbg !2645

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2646

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2648
  %271 = icmp ne i64 %125, 0, !dbg !2650
  %272 = or i1 %271, %270, !dbg !2651
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2651
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2651
  call void @llvm.dbg.value(metadata i64 %274, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %273, metadata !2394, metadata !DIExpression()), !dbg !2441
  %275 = icmp ult i64 %124, %274, !dbg !2652
  br i1 %275, label %276, label %278, !dbg !2655

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2652
  store i8 39, i8* %277, align 1, !dbg !2652, !tbaa !1378
  br label %278, !dbg !2652

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2655
  call void @llvm.dbg.value(metadata i64 %279, metadata !2393, metadata !DIExpression()), !dbg !2441
  %280 = icmp ult i64 %279, %274, !dbg !2656
  br i1 %280, label %281, label %283, !dbg !2659

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2656
  store i8 92, i8* %282, align 1, !dbg !2656, !tbaa !1378
  br label %283, !dbg !2656

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2659
  call void @llvm.dbg.value(metadata i64 %284, metadata !2393, metadata !DIExpression()), !dbg !2441
  %285 = icmp ult i64 %284, %274, !dbg !2660
  br i1 %285, label %286, label %288, !dbg !2663

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2660
  store i8 39, i8* %287, align 1, !dbg !2660, !tbaa !1378
  br label %288, !dbg !2660

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %289, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 0, metadata !2400, metadata !DIExpression()), !dbg !2441
  br label %463, !dbg !2664

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2665

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2411, metadata !DIExpression()), !dbg !2666
  %292 = tail call i16** @__ctype_b_loc() #25, !dbg !2667
  %293 = load i16*, i16** %292, align 8, !dbg !2667, !tbaa !1190
  %294 = zext i8 %158 to i64, !dbg !2667
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2667
  %296 = load i16, i16* %295, align 2, !dbg !2667, !tbaa !2669
  %297 = lshr i16 %296, 14, !dbg !2670
  %298 = trunc i16 %297 to i8, !dbg !2670
  %299 = and i8 %298, 1, !dbg !2670
  call void @llvm.dbg.value(metadata i8 %299, metadata !2414, metadata !DIExpression()), !dbg !2666
  br label %355, !dbg !2671

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2672
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2415, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i8* %23, metadata !2674, metadata !DIExpression()) #20, !dbg !2681
  call void @llvm.dbg.value(metadata i32 0, metadata !2679, metadata !DIExpression()) #20, !dbg !2681
  call void @llvm.dbg.value(metadata i64 8, metadata !2680, metadata !DIExpression()) #20, !dbg !2681
  store i64 0, i64* %10, align 8, !dbg !2683
  call void @llvm.dbg.value(metadata i64 0, metadata !2411, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8 1, metadata !2414, metadata !DIExpression()), !dbg !2666
  %301 = icmp eq i64 %155, -1, !dbg !2684
  br i1 %301, label %302, label %304, !dbg !2686

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2687
  call void @llvm.dbg.value(metadata i64 %303, metadata !2386, metadata !DIExpression()), !dbg !2441
  br label %304, !dbg !2688

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2533
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  br label %306, !dbg !2689

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2690
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2691
  call void @llvm.dbg.value(metadata i8 %308, metadata !2414, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i64 %307, metadata !2411, metadata !DIExpression()), !dbg !2666
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2692
  %309 = add i64 %307, %123, !dbg !2693
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2694
  %311 = sub i64 %305, %309, !dbg !2695
  call void @llvm.dbg.value(metadata i32* %12, metadata !2421, metadata !DIExpression(DW_OP_deref)), !dbg !2454
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #20, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %312, metadata !2424, metadata !DIExpression()), !dbg !2454
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2697

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2411, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i64 %307, metadata !2411, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i64 %307, metadata !2411, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i64 %307, metadata !2411, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i64 %307, metadata !2411, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i64 %307, metadata !2411, metadata !DIExpression()), !dbg !2666
  %314 = icmp ugt i64 %305, %309, !dbg !2698
  br i1 %314, label %315, label %340, !dbg !2700

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2701
  br label %317, !dbg !2701

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2411, metadata !DIExpression()), !dbg !2666
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2702
  %321 = load i8, i8* %320, align 1, !dbg !2702, !tbaa !1378
  %322 = icmp eq i8 %321, 0, !dbg !2700
  br i1 %322, label %340, label %323, !dbg !2701

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2703
  call void @llvm.dbg.value(metadata i64 %324, metadata !2411, metadata !DIExpression()), !dbg !2666
  %325 = add i64 %324, %123, !dbg !2704
  %326 = icmp ult i64 %325, %305, !dbg !2698
  br i1 %326, label %317, label %340, !dbg !2700, !llvm.loop !2705

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2706
  %329 = and i1 %113, %328, !dbg !2709
  call void @llvm.dbg.value(metadata i64 1, metadata !2425, metadata !DIExpression()), !dbg !2710
  br i1 %329, label %330, label %343, !dbg !2709

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2425, metadata !DIExpression()), !dbg !2710
  %332 = add i64 %331, %309, !dbg !2711
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2712
  %334 = load i8, i8* %333, align 1, !dbg !2712, !tbaa !1378
  %335 = sext i8 %334 to i32, !dbg !2712
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2713

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2714
  call void @llvm.dbg.value(metadata i64 %337, metadata !2425, metadata !DIExpression()), !dbg !2710
  %338 = icmp eq i64 %337, %312, !dbg !2706
  br i1 %338, label %343, label %330, !dbg !2715, !llvm.loop !2716

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2411, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8 %308, metadata !2414, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i64 %307, metadata !2411, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8 %308, metadata !2414, metadata !DIExpression()), !dbg !2666
  br label %340, !dbg !2718

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2718
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2719, !tbaa !1308
  call void @llvm.dbg.value(metadata i32 %344, metadata !2421, metadata !DIExpression()), !dbg !2454
  %345 = call i32 @iswprint(i32 %344) #20, !dbg !2721
  %346 = icmp eq i32 %345, 0, !dbg !2721
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2722
  call void @llvm.dbg.value(metadata i8 %347, metadata !2414, metadata !DIExpression()), !dbg !2666
  %348 = add i64 %312, %307, !dbg !2723
  call void @llvm.dbg.value(metadata i64 %348, metadata !2411, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8 %347, metadata !2414, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i64 %348, metadata !2411, metadata !DIExpression()), !dbg !2666
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2718
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !2724
  %350 = icmp eq i32 %349, 0, !dbg !2725
  br i1 %350, label %306, label %351, !dbg !2726, !llvm.loop !2727

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2729
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 2, metadata !2387, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 2, metadata !2387, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 2, metadata !2387, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 2, metadata !2387, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 2, metadata !2387, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %99, metadata !2397, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %99, metadata !2397, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %99, metadata !2397, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %99, metadata !2397, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %99, metadata !2397, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 2, metadata !2387, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 2, metadata !2387, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 2, metadata !2387, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 2, metadata !2387, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 2, metadata !2387, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %99, metadata !2397, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %99, metadata !2397, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %99, metadata !2397, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %99, metadata !2397, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %99, metadata !2397, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %305, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2718
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2729
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2533
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2730
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2730
  call void @llvm.dbg.value(metadata i8 %358, metadata !2414, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i64 %357, metadata !2411, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i64 %356, metadata !2386, metadata !DIExpression()), !dbg !2441
  %359 = and i8 %358, 1, !dbg !2731
  %360 = icmp ne i8 %359, 0, !dbg !2731
  call void @llvm.dbg.value(metadata i8 %359, metadata !2410, metadata !DIExpression()), !dbg !2533
  %361 = icmp ult i64 %357, 2, !dbg !2732
  %362 = or i1 %360, %114, !dbg !2733
  %363 = and i1 %361, %362, !dbg !2734
  br i1 %363, label %463, label %364, !dbg !2734

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %365, metadata !2432, metadata !DIExpression()), !dbg !2736
  br label %366, !dbg !2737

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2526
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2441
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2462
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2533
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2533
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2738
  call void @llvm.dbg.value(metadata i8 %372, metadata !2409, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %371, metadata !2408, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %370, metadata !2403, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %369, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %368, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %367, metadata !2392, metadata !DIExpression()), !dbg !2441
  br i1 %362, label %419, label %373, !dbg !2739

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2744

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2409, metadata !DIExpression()), !dbg !2533
  %375 = and i8 %369, 1, !dbg !2747
  %376 = icmp eq i8 %375, 0, !dbg !2747
  %377 = and i1 %110, %376, !dbg !2747
  br i1 %377, label %378, label %394, !dbg !2747

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2749
  br i1 %379, label %380, label %382, !dbg !2753

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2749
  store i8 39, i8* %381, align 1, !dbg !2749, !tbaa !1378
  br label %382, !dbg !2749

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2753
  call void @llvm.dbg.value(metadata i64 %383, metadata !2393, metadata !DIExpression()), !dbg !2441
  %384 = icmp ult i64 %383, %130, !dbg !2754
  br i1 %384, label %385, label %387, !dbg !2757

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2754
  store i8 36, i8* %386, align 1, !dbg !2754, !tbaa !1378
  br label %387, !dbg !2754

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2757
  call void @llvm.dbg.value(metadata i64 %388, metadata !2393, metadata !DIExpression()), !dbg !2441
  %389 = icmp ult i64 %388, %130, !dbg !2758
  br i1 %389, label %390, label %392, !dbg !2761

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2758
  store i8 39, i8* %391, align 1, !dbg !2758, !tbaa !1378
  br label %392, !dbg !2758

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2761
  call void @llvm.dbg.value(metadata i64 %393, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 1, metadata !2400, metadata !DIExpression()), !dbg !2441
  br label %394, !dbg !2762

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2441
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2441
  call void @llvm.dbg.value(metadata i8 %396, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %395, metadata !2393, metadata !DIExpression()), !dbg !2441
  %397 = icmp ult i64 %395, %130, !dbg !2763
  br i1 %397, label %398, label %400, !dbg !2766

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2763
  store i8 92, i8* %399, align 1, !dbg !2763, !tbaa !1378
  br label %400, !dbg !2763

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2766
  call void @llvm.dbg.value(metadata i64 %401, metadata !2393, metadata !DIExpression()), !dbg !2441
  %402 = icmp ult i64 %401, %130, !dbg !2767
  br i1 %402, label %403, label %407, !dbg !2770

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2767
  %405 = or i8 %404, 48, !dbg !2767
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2767
  store i8 %405, i8* %406, align 1, !dbg !2767, !tbaa !1378
  br label %407, !dbg !2767

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2770
  call void @llvm.dbg.value(metadata i64 %408, metadata !2393, metadata !DIExpression()), !dbg !2441
  %409 = icmp ult i64 %408, %130, !dbg !2771
  br i1 %409, label %410, label %415, !dbg !2774

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2771
  %412 = and i8 %411, 7, !dbg !2771
  %413 = or i8 %412, 48, !dbg !2771
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2771
  store i8 %413, i8* %414, align 1, !dbg !2771, !tbaa !1378
  br label %415, !dbg !2771

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2774
  call void @llvm.dbg.value(metadata i64 %416, metadata !2393, metadata !DIExpression()), !dbg !2441
  %417 = and i8 %370, 7, !dbg !2775
  %418 = or i8 %417, 48, !dbg !2776
  call void @llvm.dbg.value(metadata i8 %418, metadata !2403, metadata !DIExpression()), !dbg !2533
  br label %428, !dbg !2777

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2778
  %421 = icmp eq i8 %420, 0, !dbg !2778
  br i1 %421, label %428, label %422, !dbg !2780

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2781
  br i1 %423, label %424, label %426, !dbg !2785

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2781
  store i8 92, i8* %425, align 1, !dbg !2781, !tbaa !1378
  br label %426, !dbg !2781

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2785
  call void @llvm.dbg.value(metadata i64 %427, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 0, metadata !2408, metadata !DIExpression()), !dbg !2533
  br label %428, !dbg !2786

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2441
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2462
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2533
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2533
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2533
  call void @llvm.dbg.value(metadata i8 %433, metadata !2409, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %432, metadata !2408, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %431, metadata !2403, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %430, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %429, metadata !2393, metadata !DIExpression()), !dbg !2441
  %434 = add i64 %367, 1, !dbg !2787
  %435 = icmp ugt i64 %365, %434, !dbg !2789
  br i1 %435, label %436, label %526, !dbg !2790

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2791
  %438 = icmp ne i8 %437, 0, !dbg !2791
  %439 = and i8 %433, 1, !dbg !2791
  %440 = icmp eq i8 %439, 0, !dbg !2791
  %441 = and i1 %438, %440, !dbg !2791
  br i1 %441, label %442, label %453, !dbg !2791

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2794
  br i1 %443, label %444, label %446, !dbg !2798

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2794
  store i8 39, i8* %445, align 1, !dbg !2794, !tbaa !1378
  br label %446, !dbg !2794

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %447, metadata !2393, metadata !DIExpression()), !dbg !2441
  %448 = icmp ult i64 %447, %130, !dbg !2799
  br i1 %448, label %449, label %451, !dbg !2802

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2799
  store i8 39, i8* %450, align 1, !dbg !2799, !tbaa !1378
  br label %451, !dbg !2799

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2802
  call void @llvm.dbg.value(metadata i64 %452, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 0, metadata !2400, metadata !DIExpression()), !dbg !2441
  br label %453, !dbg !2803

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2804
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2441
  call void @llvm.dbg.value(metadata i8 %455, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %454, metadata !2393, metadata !DIExpression()), !dbg !2441
  %456 = icmp ult i64 %454, %130, !dbg !2805
  br i1 %456, label %457, label %459, !dbg !2808

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2805
  store i8 %431, i8* %458, align 1, !dbg !2805, !tbaa !1378
  br label %459, !dbg !2805

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2808
  call void @llvm.dbg.value(metadata i64 %460, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %434, metadata !2392, metadata !DIExpression()), !dbg !2441
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2809
  %462 = load i8, i8* %461, align 1, !dbg !2809, !tbaa !1378
  call void @llvm.dbg.value(metadata i8 %462, metadata !2403, metadata !DIExpression()), !dbg !2533
  br label %366, !dbg !2810, !llvm.loop !2811

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2526
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2441
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2458
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2814
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2441
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2441
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2533
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2533
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2533
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %472, metadata !2410, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %471, metadata !2409, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %156, metadata !2408, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %470, metadata !2403, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %469, metadata !2401, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %468, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %467, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %466, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %465, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %464, metadata !2392, metadata !DIExpression()), !dbg !2441
  br i1 %117, label %486, label %474, !dbg !2815

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2816
  %476 = zext i8 %475 to i64, !dbg !2816
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2817
  %478 = load i32, i32* %477, align 4, !dbg !2817, !tbaa !1308
  %479 = and i8 %470, 31, !dbg !2818
  %480 = zext i8 %479 to i32, !dbg !2818
  %481 = shl nuw i32 1, %480, !dbg !2819
  %482 = and i32 %478, %481, !dbg !2819
  %483 = icmp eq i32 %482, 0, !dbg !2819
  %484 = icmp eq i8 %156, 0, !dbg !2820
  %485 = and i1 %484, %483, !dbg !2821
  br i1 %485, label %526, label %488, !dbg !2821

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2820
  br i1 %487, label %526, label %488, !dbg !2822

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2823
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2441
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2458
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2814
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2462
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2463
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2533
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2533
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %496, metadata !2410, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %495, metadata !2403, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %494, metadata !2401, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %493, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %492, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %491, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %490, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %489, metadata !2392, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.label(metadata !2438), !dbg !2824
  br i1 %109, label %498, label %629, !dbg !2825

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2409, metadata !DIExpression()), !dbg !2533
  %499 = and i8 %493, 1, !dbg !2827
  %500 = icmp eq i8 %499, 0, !dbg !2827
  %501 = and i1 %110, %500, !dbg !2827
  br i1 %501, label %502, label %518, !dbg !2827

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2829
  br i1 %503, label %504, label %506, !dbg !2833

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2829
  store i8 39, i8* %505, align 1, !dbg !2829, !tbaa !1378
  br label %506, !dbg !2829

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2833
  call void @llvm.dbg.value(metadata i64 %507, metadata !2393, metadata !DIExpression()), !dbg !2441
  %508 = icmp ult i64 %507, %497, !dbg !2834
  br i1 %508, label %509, label %511, !dbg !2837

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2834
  store i8 36, i8* %510, align 1, !dbg !2834, !tbaa !1378
  br label %511, !dbg !2834

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2837
  call void @llvm.dbg.value(metadata i64 %512, metadata !2393, metadata !DIExpression()), !dbg !2441
  %513 = icmp ult i64 %512, %497, !dbg !2838
  br i1 %513, label %514, label %516, !dbg !2841

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2838
  store i8 39, i8* %515, align 1, !dbg !2838, !tbaa !1378
  br label %516, !dbg !2838

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2841
  call void @llvm.dbg.value(metadata i64 %517, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 1, metadata !2400, metadata !DIExpression()), !dbg !2441
  br label %518, !dbg !2842

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2533
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2441
  call void @llvm.dbg.value(metadata i8 %520, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %519, metadata !2393, metadata !DIExpression()), !dbg !2441
  %521 = icmp ult i64 %519, %497, !dbg !2843
  br i1 %521, label %522, label %524, !dbg !2846

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2843
  store i8 92, i8* %523, align 1, !dbg !2843, !tbaa !1378
  br label %524, !dbg !2843

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2846
  call void @llvm.dbg.value(metadata i64 %525, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %536, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %535, metadata !2410, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %534, metadata !2409, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %533, metadata !2403, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %532, metadata !2401, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %531, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %530, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %529, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %528, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %527, metadata !2392, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.label(metadata !2439), !dbg !2847
  br label %553, !dbg !2848

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2823
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2441
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2458
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2814
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2462
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2463
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2851
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2533
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2533
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %535, metadata !2410, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %534, metadata !2409, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %533, metadata !2403, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %532, metadata !2401, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %531, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %530, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %529, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %528, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %527, metadata !2392, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.label(metadata !2439), !dbg !2847
  %537 = and i8 %531, 1, !dbg !2848
  %538 = icmp ne i8 %537, 0, !dbg !2848
  %539 = and i8 %534, 1, !dbg !2848
  %540 = icmp eq i8 %539, 0, !dbg !2848
  %541 = and i1 %538, %540, !dbg !2848
  br i1 %541, label %542, label %553, !dbg !2848

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2852
  br i1 %543, label %544, label %546, !dbg !2856

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2852
  store i8 39, i8* %545, align 1, !dbg !2852, !tbaa !1378
  br label %546, !dbg !2852

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2856
  call void @llvm.dbg.value(metadata i64 %547, metadata !2393, metadata !DIExpression()), !dbg !2441
  %548 = icmp ult i64 %547, %536, !dbg !2857
  br i1 %548, label %549, label %551, !dbg !2860

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2857
  store i8 39, i8* %550, align 1, !dbg !2857, !tbaa !1378
  br label %551, !dbg !2857

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2860
  call void @llvm.dbg.value(metadata i64 %552, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 0, metadata !2400, metadata !DIExpression()), !dbg !2441
  br label %553, !dbg !2861

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2533
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2441
  call void @llvm.dbg.value(metadata i8 %562, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %561, metadata !2393, metadata !DIExpression()), !dbg !2441
  %563 = icmp ult i64 %561, %554, !dbg !2862
  br i1 %563, label %564, label %566, !dbg !2865

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2862
  store i8 %556, i8* %565, align 1, !dbg !2862, !tbaa !1378
  br label %566, !dbg !2862

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2865
  call void @llvm.dbg.value(metadata i64 %567, metadata !2393, metadata !DIExpression()), !dbg !2441
  %568 = and i8 %555, 1, !dbg !2866
  %569 = icmp eq i8 %568, 0, !dbg !2866
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2868
  call void @llvm.dbg.value(metadata i8 %570, metadata !2402, metadata !DIExpression()), !dbg !2441
  br label %571, !dbg !2869

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2823
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2441
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2458
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2814
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2462
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2441
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2464
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %578, metadata !2402, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %577, metadata !2401, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %576, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %575, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %574, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %573, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %572, metadata !2392, metadata !DIExpression()), !dbg !2441
  %580 = add i64 %572, 1, !dbg !2870
  call void @llvm.dbg.value(metadata i64 %580, metadata !2392, metadata !DIExpression()), !dbg !2441
  br label %122, !dbg !2871, !llvm.loop !2872

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %125, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %125, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %127, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %127, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %128, metadata !2401, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %128, metadata !2401, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %129, metadata !2402, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %129, metadata !2402, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %125, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %125, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %127, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %127, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %128, metadata !2401, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %128, metadata !2401, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %129, metadata !2402, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %129, metadata !2402, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %125, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %125, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %127, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %127, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %128, metadata !2401, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %128, metadata !2401, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %129, metadata !2402, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %129, metadata !2402, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %125, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %125, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %127, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %127, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %128, metadata !2401, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %128, metadata !2401, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %129, metadata !2402, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %129, metadata !2402, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %125, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %125, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %582, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %582, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %127, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %127, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %128, metadata !2401, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %128, metadata !2401, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %129, metadata !2402, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %129, metadata !2402, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %125, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %125, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %582, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %582, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %127, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %127, metadata !2400, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %128, metadata !2401, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %128, metadata !2401, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %129, metadata !2402, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 %129, metadata !2402, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  %583 = icmp eq i64 %124, 0, !dbg !2874
  %584 = and i1 %110, %583, !dbg !2876
  %585 = xor i1 %584, true, !dbg !2876
  %586 = or i1 %109, %585, !dbg !2876
  br i1 %586, label %587, label %629, !dbg !2876

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2877
  %589 = xor i1 %588, true, !dbg !2877
  %590 = and i8 %128, 1, !dbg !2879
  %591 = icmp eq i8 %590, 0, !dbg !2879
  %592 = or i1 %591, %589, !dbg !2877
  br i1 %592, label %602, label %593, !dbg !2877

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2880
  %595 = icmp eq i8 %594, 0, !dbg !2880
  br i1 %595, label %598, label %596, !dbg !2883

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %125, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %582, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %125, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %582, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %125, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %582, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %125, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %125, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %582, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %94, metadata !2390, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %95, metadata !2391, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %125, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %582, metadata !2386, metadata !DIExpression()), !dbg !2441
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2884
  br label %645, !dbg !2885

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2886
  %600 = icmp ne i64 %125, 0, !dbg !2888
  %601 = and i1 %600, %599, !dbg !2889
  br i1 %601, label %26, label %602, !dbg !2889

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2395, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %97, metadata !2395, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %97, metadata !2395, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %97, metadata !2395, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %97, metadata !2395, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %97, metadata !2395, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %97, metadata !2395, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %97, metadata !2395, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %97, metadata !2395, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %97, metadata !2395, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %130, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %97, metadata !2395, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %97, metadata !2395, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  %603 = icmp ne i8* %97, null, !dbg !2890
  %604 = and i1 %603, %109, !dbg !2892
  br i1 %604, label %605, label %620, !dbg !2892

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2395, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %124, metadata !2393, metadata !DIExpression()), !dbg !2441
  %606 = load i8, i8* %97, align 1, !dbg !2893, !tbaa !1378
  %607 = icmp eq i8 %606, 0, !dbg !2896
  br i1 %607, label %620, label %608, !dbg !2896

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2395, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %611, metadata !2393, metadata !DIExpression()), !dbg !2441
  %612 = icmp ult i64 %611, %130, !dbg !2897
  br i1 %612, label %613, label %615, !dbg !2900

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2897
  store i8 %609, i8* %614, align 1, !dbg !2897, !tbaa !1378
  br label %615, !dbg !2897

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %616, metadata !2393, metadata !DIExpression()), !dbg !2441
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2901
  call void @llvm.dbg.value(metadata i8* %617, metadata !2395, metadata !DIExpression()), !dbg !2441
  %618 = load i8, i8* %617, align 1, !dbg !2893, !tbaa !1378
  %619 = icmp eq i8 %618, 0, !dbg !2896
  br i1 %619, label %620, label %608, !dbg !2896, !llvm.loop !2902

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2495
  call void @llvm.dbg.value(metadata i64 %621, metadata !2393, metadata !DIExpression()), !dbg !2441
  %622 = icmp ult i64 %621, %130, !dbg !2904
  br i1 %622, label %623, label %645, !dbg !2906

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2907
  store i8 0, i8* %624, align 1, !dbg !2908, !tbaa !1378
  br label %645, !dbg !2907

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %630, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.label(metadata !2440), !dbg !2909
  %627 = icmp eq i8 %101, 0, !dbg !2910
  %628 = select i1 %627, i32 2, i32 4, !dbg !2910
  br label %635, !dbg !2910

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2384, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %630, metadata !2386, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.label(metadata !2440), !dbg !2909
  %632 = icmp eq i32 %93, 2, !dbg !2912
  %633 = icmp eq i8 %101, 0, !dbg !2910
  %634 = select i1 %633, i32 2, i32 4, !dbg !2910
  br i1 %632, label %635, label %639, !dbg !2910

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2910

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2387, metadata !DIExpression()), !dbg !2441
  %643 = and i32 %5, -3, !dbg !2913
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2914
  br label %645, !dbg !2915

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2916
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2917 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2921, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i32 %1, metadata !2922, metadata !DIExpression()), !dbg !2925
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #20, !dbg !2926
  call void @llvm.dbg.value(metadata i8* %3, metadata !2923, metadata !DIExpression()), !dbg !2925
  %4 = icmp eq i8* %3, %0, !dbg !2927
  br i1 %4, label %5, label %71, !dbg !2929

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #20, !dbg !2930
  call void @llvm.dbg.value(metadata i8* %6, metadata !2924, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8* %6, metadata !2931, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8* undef, metadata !2937, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 85, metadata !2938, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 84, metadata !2939, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 70, metadata !2940, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 45, metadata !2941, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 56, metadata !2942, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 0, metadata !2943, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 0, metadata !2944, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 0, metadata !2945, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 0, metadata !2946, metadata !DIExpression()), !dbg !2947
  %7 = load i8, i8* %6, align 1, !dbg !2950, !tbaa !1378
  %8 = and i8 %7, -33, !dbg !2950
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2950

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2952, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8* undef, metadata !2957, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 84, metadata !2958, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 70, metadata !2959, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 45, metadata !2960, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 56, metadata !2961, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 0, metadata !2962, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 0, metadata !2963, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 0, metadata !2964, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 0, metadata !2965, metadata !DIExpression()), !dbg !2966
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2970
  %11 = load i8, i8* %10, align 1, !dbg !2970, !tbaa !1378
  %12 = and i8 %11, -33, !dbg !2970
  %13 = icmp eq i8 %12, 84, !dbg !2970
  br i1 %13, label %14, label %68, !dbg !2970

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2972, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8* undef, metadata !2977, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 70, metadata !2978, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 45, metadata !2979, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 56, metadata !2980, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 0, metadata !2981, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 0, metadata !2982, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 0, metadata !2983, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i8 0, metadata !2984, metadata !DIExpression()), !dbg !2985
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2989
  %16 = load i8, i8* %15, align 1, !dbg !2989, !tbaa !1378
  %17 = and i8 %16, -33, !dbg !2989
  %18 = icmp eq i8 %17, 70, !dbg !2989
  br i1 %18, label %19, label %68, !dbg !2989

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2991, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i8* undef, metadata !2996, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i8 45, metadata !2997, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i8 56, metadata !2998, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i8 0, metadata !2999, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i8 0, metadata !3000, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i8 0, metadata !3001, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i8 0, metadata !3002, metadata !DIExpression()), !dbg !3003
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3007
  %21 = load i8, i8* %20, align 1, !dbg !3007, !tbaa !1378
  %22 = icmp eq i8 %21, 45, !dbg !3007
  br i1 %22, label %23, label %68, !dbg !3009

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3010, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i8* undef, metadata !3015, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i8 56, metadata !3016, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i8 0, metadata !3017, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i8 0, metadata !3018, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i8 0, metadata !3019, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i8 0, metadata !3020, metadata !DIExpression()), !dbg !3021
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3025
  %25 = load i8, i8* %24, align 1, !dbg !3025, !tbaa !1378
  %26 = icmp eq i8 %25, 56, !dbg !3025
  br i1 %26, label %27, label %68, !dbg !3027

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3028, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8* undef, metadata !3033, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8 0, metadata !3034, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8 0, metadata !3035, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8 0, metadata !3036, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8 0, metadata !3037, metadata !DIExpression()), !dbg !3038
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3042
  %29 = load i8, i8* %28, align 1, !dbg !3042, !tbaa !1378
  %30 = icmp eq i8 %29, 0, !dbg !3042
  br i1 %30, label %31, label %68, !dbg !3044

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3045, !tbaa !1378
  %33 = icmp eq i8 %32, 96, !dbg !3046
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.83, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.84, i64 0, i64 0), !dbg !3045
  br label %71, !dbg !3047

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2952, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i8* undef, metadata !2957, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i8 66, metadata !2958, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i8 49, metadata !2959, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i8 56, metadata !2960, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i8 48, metadata !2961, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i8 51, metadata !2962, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i8 48, metadata !2963, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i8 0, metadata !2964, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i8 0, metadata !2965, metadata !DIExpression()), !dbg !3048
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3052
  %37 = load i8, i8* %36, align 1, !dbg !3052, !tbaa !1378
  %38 = and i8 %37, -33, !dbg !3052
  %39 = icmp eq i8 %38, 66, !dbg !3052
  br i1 %39, label %40, label %68, !dbg !3052

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2972, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i8* undef, metadata !2977, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i8 49, metadata !2978, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i8 56, metadata !2979, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i8 48, metadata !2980, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i8 51, metadata !2981, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i8 48, metadata !2982, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i8 0, metadata !2983, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i8 0, metadata !2984, metadata !DIExpression()), !dbg !3053
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3055
  %42 = load i8, i8* %41, align 1, !dbg !3055, !tbaa !1378
  %43 = icmp eq i8 %42, 49, !dbg !3055
  br i1 %43, label %44, label %68, !dbg !3056

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2991, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i8* undef, metadata !2996, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i8 56, metadata !2997, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i8 48, metadata !2998, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i8 51, metadata !2999, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i8 48, metadata !3000, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i8 0, metadata !3001, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i8 0, metadata !3002, metadata !DIExpression()), !dbg !3057
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3059
  %46 = load i8, i8* %45, align 1, !dbg !3059, !tbaa !1378
  %47 = icmp eq i8 %46, 56, !dbg !3059
  br i1 %47, label %48, label %68, !dbg !3060

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3010, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i8* undef, metadata !3015, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i8 48, metadata !3016, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i8 51, metadata !3017, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i8 48, metadata !3018, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i8 0, metadata !3019, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i8 0, metadata !3020, metadata !DIExpression()), !dbg !3061
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3063
  %50 = load i8, i8* %49, align 1, !dbg !3063, !tbaa !1378
  %51 = icmp eq i8 %50, 48, !dbg !3063
  br i1 %51, label %52, label %68, !dbg !3064

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3028, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i8* undef, metadata !3033, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i8 51, metadata !3034, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i8 48, metadata !3035, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i8 0, metadata !3036, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i8 0, metadata !3037, metadata !DIExpression()), !dbg !3065
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3067
  %54 = load i8, i8* %53, align 1, !dbg !3067, !tbaa !1378
  %55 = icmp eq i8 %54, 51, !dbg !3067
  br i1 %55, label %56, label %68, !dbg !3068

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3069, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8* undef, metadata !3074, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8 48, metadata !3075, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8 0, metadata !3076, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8 0, metadata !3077, metadata !DIExpression()), !dbg !3078
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3082
  %58 = load i8, i8* %57, align 1, !dbg !3082, !tbaa !1378
  %59 = icmp eq i8 %58, 48, !dbg !3082
  br i1 %59, label %60, label %68, !dbg !3084

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3085, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i8* undef, metadata !3090, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i8 0, metadata !3091, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i8 0, metadata !3092, metadata !DIExpression()), !dbg !3093
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3097
  %62 = load i8, i8* %61, align 1, !dbg !3097, !tbaa !1378
  %63 = icmp eq i8 %62, 0, !dbg !3097
  br i1 %63, label %64, label %68, !dbg !3099

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3100, !tbaa !1378
  %66 = icmp eq i8 %65, 96, !dbg !3101
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.85, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.86, i64 0, i64 0), !dbg !3100
  br label %71, !dbg !3102

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3103
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), !dbg !3104
  br label %71, !dbg !3105

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2925
  ret i8* %72, !dbg !3106
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #17

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !376 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !380 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3107 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3111, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %1, metadata !3112, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3113, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8* %0, metadata !3115, metadata !DIExpression()) #20, !dbg !3128
  call void @llvm.dbg.value(metadata i64 %1, metadata !3120, metadata !DIExpression()) #20, !dbg !3128
  call void @llvm.dbg.value(metadata i64* null, metadata !3121, metadata !DIExpression()) #20, !dbg !3128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3122, metadata !DIExpression()) #20, !dbg !3128
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3130
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3130
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3123, metadata !DIExpression()) #20, !dbg !3128
  %6 = tail call i32* @__errno_location() #25, !dbg !3131
  %7 = load i32, i32* %6, align 4, !dbg !3131, !tbaa !1308
  call void @llvm.dbg.value(metadata i32 %7, metadata !3124, metadata !DIExpression()) #20, !dbg !3128
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3132
  %9 = load i32, i32* %8, align 4, !dbg !3132, !tbaa !2326
  %10 = or i32 %9, 1, !dbg !3133
  call void @llvm.dbg.value(metadata i32 %10, metadata !3125, metadata !DIExpression()) #20, !dbg !3128
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3134
  %12 = load i32, i32* %11, align 8, !dbg !3134, !tbaa !2275
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3135
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3136
  %15 = load i8*, i8** %14, align 8, !dbg !3136, !tbaa !2349
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3137
  %17 = load i8*, i8** %16, align 8, !dbg !3137, !tbaa !2352
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #20, !dbg !3138
  %19 = add i64 %18, 1, !dbg !3139
  call void @llvm.dbg.value(metadata i64 %19, metadata !3126, metadata !DIExpression()) #20, !dbg !3128
  call void @llvm.dbg.value(metadata i64 %19, metadata !3140, metadata !DIExpression()) #20, !dbg !3145
  %20 = tail call noalias i8* @xmalloc(i64 %19) #20, !dbg !3147
  call void @llvm.dbg.value(metadata i8* %20, metadata !3127, metadata !DIExpression()) #20, !dbg !3128
  %21 = load i32, i32* %11, align 8, !dbg !3148, !tbaa !2275
  %22 = load i8*, i8** %14, align 8, !dbg !3149, !tbaa !2349
  %23 = load i8*, i8** %16, align 8, !dbg !3150, !tbaa !2352
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #20, !dbg !3151
  store i32 %7, i32* %6, align 4, !dbg !3152, !tbaa !1308
  ret i8* %20, !dbg !3153
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3116 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3115, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i64 %1, metadata !3120, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i64* %2, metadata !3121, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3122, metadata !DIExpression()), !dbg !3154
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3155
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3123, metadata !DIExpression()), !dbg !3154
  %7 = tail call i32* @__errno_location() #25, !dbg !3156
  %8 = load i32, i32* %7, align 4, !dbg !3156, !tbaa !1308
  call void @llvm.dbg.value(metadata i32 %8, metadata !3124, metadata !DIExpression()), !dbg !3154
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3157
  %10 = load i32, i32* %9, align 4, !dbg !3157, !tbaa !2326
  %11 = icmp ne i64* %2, null, !dbg !3158
  %12 = xor i1 %11, true, !dbg !3158
  %13 = zext i1 %12 to i32, !dbg !3158
  %14 = or i32 %10, %13, !dbg !3159
  call void @llvm.dbg.value(metadata i32 %14, metadata !3125, metadata !DIExpression()), !dbg !3154
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3160
  %16 = load i32, i32* %15, align 8, !dbg !3160, !tbaa !2275
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3161
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3162
  %19 = load i8*, i8** %18, align 8, !dbg !3162, !tbaa !2349
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3163
  %21 = load i8*, i8** %20, align 8, !dbg !3163, !tbaa !2352
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3164
  %23 = add i64 %22, 1, !dbg !3165
  call void @llvm.dbg.value(metadata i64 %23, metadata !3126, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i64 %23, metadata !3140, metadata !DIExpression()) #20, !dbg !3166
  %24 = tail call noalias i8* @xmalloc(i64 %23) #20, !dbg !3168
  call void @llvm.dbg.value(metadata i8* %24, metadata !3127, metadata !DIExpression()), !dbg !3154
  %25 = load i32, i32* %15, align 8, !dbg !3169, !tbaa !2275
  %26 = load i8*, i8** %18, align 8, !dbg !3170, !tbaa !2349
  %27 = load i8*, i8** %20, align 8, !dbg !3171, !tbaa !2352
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3172
  store i32 %8, i32* %7, align 4, !dbg !3173, !tbaa !1308
  br i1 %11, label %29, label %30, !dbg !3174

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3175, !tbaa !1367
  br label %30, !dbg !3177

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3178
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3179 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3183, !tbaa !1190
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3181, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i32 1, metadata !3182, metadata !DIExpression()), !dbg !3184
  %2 = load i32, i32* @nslots, align 4, !dbg !3185, !tbaa !1308
  %3 = icmp sgt i32 %2, 1, !dbg !3188
  br i1 %3, label %4, label %12, !dbg !3189

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3182, metadata !DIExpression()), !dbg !3184
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3190
  %7 = load i8*, i8** %6, align 8, !dbg !3190, !tbaa !3191
  tail call void @free(i8* %7) #20, !dbg !3193
  %8 = add nuw nsw i64 %5, 1, !dbg !3194
  call void @llvm.dbg.value(metadata i64 %8, metadata !3182, metadata !DIExpression()), !dbg !3184
  %9 = load i32, i32* @nslots, align 4, !dbg !3185, !tbaa !1308
  %10 = sext i32 %9 to i64, !dbg !3188
  %11 = icmp slt i64 %8, %10, !dbg !3188
  br i1 %11, label %4, label %12, !dbg !3189, !llvm.loop !3195

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3197
  %14 = load i8*, i8** %13, align 8, !dbg !3197, !tbaa !3191
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3199
  br i1 %15, label %17, label %16, !dbg !3200

16:                                               ; preds = %12
  tail call void @free(i8* %14) #20, !dbg !3201
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3203, !tbaa !3204
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3205, !tbaa !3191
  br label %17, !dbg !3206

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3207
  br i1 %18, label %21, label %19, !dbg !3209

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3210
  tail call void @free(i8* %20) #20, !dbg !3212
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3213, !tbaa !1190
  br label %21, !dbg !3214

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3215, !tbaa !1308
  ret void, !dbg !3216
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3217 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3219, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8* %1, metadata !3220, metadata !DIExpression()), !dbg !3221
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3222
  ret i8* %3, !dbg !3223
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3224 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3228, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i8* %1, metadata !3229, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 %2, metadata !3230, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3231, metadata !DIExpression()), !dbg !3243
  %5 = tail call i32* @__errno_location() #25, !dbg !3244
  %6 = load i32, i32* %5, align 4, !dbg !3244, !tbaa !1308
  call void @llvm.dbg.value(metadata i32 %6, metadata !3232, metadata !DIExpression()), !dbg !3243
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3245, !tbaa !1190
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3233, metadata !DIExpression()), !dbg !3243
  %8 = icmp slt i32 %0, 0, !dbg !3246
  br i1 %8, label %9, label %10, !dbg !3248

9:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3249
  unreachable, !dbg !3249

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3250, !tbaa !1308
  %12 = icmp sgt i32 %11, %0, !dbg !3251
  br i1 %12, label %34, label %13, !dbg !3252

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3253
  call void @llvm.dbg.value(metadata i1 %14, metadata !3234, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3237, metadata !DIExpression()), !dbg !3254
  %15 = icmp eq i32 %0, 2147483647, !dbg !3255
  br i1 %15, label %16, label %17, !dbg !3257

16:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3258
  unreachable, !dbg !3258

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3259
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3259
  %20 = add nuw nsw i32 %0, 1, !dbg !3260
  %21 = sext i32 %20 to i64, !dbg !3261
  %22 = shl nuw nsw i64 %21, 4, !dbg !3262
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #20, !dbg !3263
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3263
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3233, metadata !DIExpression()), !dbg !3243
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3264, !tbaa !1190
  br i1 %14, label %25, label %26, !dbg !3265

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3266, !tbaa.struct !3268
  br label %26, !dbg !3269

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3270, !tbaa !1308
  %28 = sext i32 %27 to i64, !dbg !3271
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3271
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3272
  %31 = sub nsw i32 %20, %27, !dbg !3273
  %32 = sext i32 %31 to i64, !dbg !3274
  %33 = shl nsw i64 %32, 4, !dbg !3275
  call void @llvm.dbg.value(metadata i8* %30, metadata !2674, metadata !DIExpression()) #20, !dbg !3276
  call void @llvm.dbg.value(metadata i32 0, metadata !2679, metadata !DIExpression()) #20, !dbg !3276
  call void @llvm.dbg.value(metadata i64 %33, metadata !2680, metadata !DIExpression()) #20, !dbg !3276
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #20, !dbg !3278
  store i32 %20, i32* @nslots, align 4, !dbg !3279, !tbaa !1308
  br label %34, !dbg !3280

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3243
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3233, metadata !DIExpression()), !dbg !3243
  %36 = zext i32 %0 to i64, !dbg !3281
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3282
  %38 = load i64, i64* %37, align 8, !dbg !3282, !tbaa !3204
  call void @llvm.dbg.value(metadata i64 %38, metadata !3238, metadata !DIExpression()), !dbg !3283
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3284
  %40 = load i8*, i8** %39, align 8, !dbg !3284, !tbaa !3191
  call void @llvm.dbg.value(metadata i8* %40, metadata !3240, metadata !DIExpression()), !dbg !3283
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3285
  %42 = load i32, i32* %41, align 4, !dbg !3285, !tbaa !2326
  %43 = or i32 %42, 1, !dbg !3286
  call void @llvm.dbg.value(metadata i32 %43, metadata !3241, metadata !DIExpression()), !dbg !3283
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3287
  %45 = load i32, i32* %44, align 8, !dbg !3287, !tbaa !2275
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3288
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3289
  %48 = load i8*, i8** %47, align 8, !dbg !3289, !tbaa !2349
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3290
  %50 = load i8*, i8** %49, align 8, !dbg !3290, !tbaa !2352
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3291
  call void @llvm.dbg.value(metadata i64 %51, metadata !3242, metadata !DIExpression()), !dbg !3283
  %52 = icmp ugt i64 %38, %51, !dbg !3292
  br i1 %52, label %63, label %53, !dbg !3294

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3295
  call void @llvm.dbg.value(metadata i64 %54, metadata !3238, metadata !DIExpression()), !dbg !3283
  store i64 %54, i64* %37, align 8, !dbg !3297, !tbaa !3204
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3298
  br i1 %55, label %57, label %56, !dbg !3300

56:                                               ; preds = %53
  tail call void @free(i8* %40) #20, !dbg !3301
  br label %57, !dbg !3301

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3140, metadata !DIExpression()) #20, !dbg !3302
  %58 = tail call noalias i8* @xmalloc(i64 %54) #20, !dbg !3304
  call void @llvm.dbg.value(metadata i8* %58, metadata !3240, metadata !DIExpression()), !dbg !3283
  store i8* %58, i8** %39, align 8, !dbg !3305, !tbaa !3191
  %59 = load i32, i32* %44, align 8, !dbg !3306, !tbaa !2275
  %60 = load i8*, i8** %47, align 8, !dbg !3307, !tbaa !2349
  %61 = load i8*, i8** %49, align 8, !dbg !3308, !tbaa !2352
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3309
  br label %63, !dbg !3310

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3283
  call void @llvm.dbg.value(metadata i8* %64, metadata !3240, metadata !DIExpression()), !dbg !3283
  store i32 %6, i32* %5, align 4, !dbg !3311, !tbaa !1308
  ret i8* %64, !dbg !3312
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3313 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3317, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i8* %1, metadata !3318, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i64 %2, metadata !3319, metadata !DIExpression()), !dbg !3320
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3321
  ret i8* %4, !dbg !3322
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3323 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3325, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i32 0, metadata !3219, metadata !DIExpression()) #20, !dbg !3327
  call void @llvm.dbg.value(metadata i8* %0, metadata !3220, metadata !DIExpression()) #20, !dbg !3327
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !3329
  ret i8* %2, !dbg !3330
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3331 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3335, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i64 %1, metadata !3336, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i32 0, metadata !3317, metadata !DIExpression()) #20, !dbg !3338
  call void @llvm.dbg.value(metadata i8* %0, metadata !3318, metadata !DIExpression()) #20, !dbg !3338
  call void @llvm.dbg.value(metadata i64 %1, metadata !3319, metadata !DIExpression()) #20, !dbg !3338
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !3340
  ret i8* %3, !dbg !3341
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3342 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3344, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %1, metadata !3345, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8* %2, metadata !3346, metadata !DIExpression()), !dbg !3348
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3349
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3349
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3347, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i32 %1, metadata !3351, metadata !DIExpression()) #20, !dbg !3357
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3356, metadata !DIExpression()) #20, !dbg !3359
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3359, !alias.scope !3360
  %6 = icmp eq i32 %1, 10, !dbg !3363
  br i1 %6, label %7, label %8, !dbg !3365

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3366, !noalias !3360
  unreachable, !dbg !3366

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3367
  store i32 %1, i32* %9, align 8, !dbg !3368, !tbaa !2275, !alias.scope !3360
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3369
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3370
  ret i8* %10, !dbg !3371
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3372 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3376, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i32 %1, metadata !3377, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8* %2, metadata !3378, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %3, metadata !3379, metadata !DIExpression()), !dbg !3381
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3382
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3382
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3380, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i32 %1, metadata !3351, metadata !DIExpression()) #20, !dbg !3384
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3356, metadata !DIExpression()) #20, !dbg !3386
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #20, !dbg !3386, !alias.scope !3387
  %7 = icmp eq i32 %1, 10, !dbg !3390
  br i1 %7, label %8, label %9, !dbg !3391

8:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3392, !noalias !3387
  unreachable, !dbg !3392

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3393
  store i32 %1, i32* %10, align 8, !dbg !3394, !tbaa !2275, !alias.scope !3387
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3395
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3396
  ret i8* %11, !dbg !3397
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3398 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3356, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3347, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i32 %0, metadata !3402, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i8* %1, metadata !3403, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i32 0, metadata !3344, metadata !DIExpression()) #20, !dbg !3409
  call void @llvm.dbg.value(metadata i32 %0, metadata !3345, metadata !DIExpression()) #20, !dbg !3409
  call void @llvm.dbg.value(metadata i8* %1, metadata !3346, metadata !DIExpression()) #20, !dbg !3409
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3410
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3410
  call void @llvm.dbg.value(metadata i32 %0, metadata !3351, metadata !DIExpression()) #20, !dbg !3411
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #20, !dbg !3404, !alias.scope !3412
  %5 = icmp eq i32 %0, 10, !dbg !3415
  br i1 %5, label %6, label %7, !dbg !3416

6:                                                ; preds = %2
  tail call void @abort() #23, !dbg !3417, !noalias !3412
  unreachable, !dbg !3417

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3418
  store i32 %0, i32* %8, align 8, !dbg !3419, !tbaa !2275, !alias.scope !3412
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !3420
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3421
  ret i8* %9, !dbg !3422
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3423 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3356, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3380, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i32 %0, metadata !3427, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i8* %1, metadata !3428, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i64 %2, metadata !3429, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i32 0, metadata !3376, metadata !DIExpression()) #20, !dbg !3435
  call void @llvm.dbg.value(metadata i32 %0, metadata !3377, metadata !DIExpression()) #20, !dbg !3435
  call void @llvm.dbg.value(metadata i8* %1, metadata !3378, metadata !DIExpression()) #20, !dbg !3435
  call void @llvm.dbg.value(metadata i64 %2, metadata !3379, metadata !DIExpression()) #20, !dbg !3435
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3436
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3436
  call void @llvm.dbg.value(metadata i32 %0, metadata !3351, metadata !DIExpression()) #20, !dbg !3437
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3430, !alias.scope !3438
  %6 = icmp eq i32 %0, 10, !dbg !3441
  br i1 %6, label %7, label %8, !dbg !3442

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3443, !noalias !3438
  unreachable, !dbg !3443

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3444
  store i32 %0, i32* %9, align 8, !dbg !3445, !tbaa !2275, !alias.scope !3438
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #20, !dbg !3446
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3447
  ret i8* %10, !dbg !3448
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3449 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3453, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %1, metadata !3454, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i8 %2, metadata !3455, metadata !DIExpression()), !dbg !3457
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3458
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3458
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3456, metadata !DIExpression()), !dbg !3459
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3460, !tbaa.struct !3461
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2293, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i8 %2, metadata !2294, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i32 1, metadata !2295, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i8 %2, metadata !2296, metadata !DIExpression()), !dbg !3462
  %6 = lshr i8 %2, 5, !dbg !3464
  %7 = zext i8 %6 to i64, !dbg !3464
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3465
  call void @llvm.dbg.value(metadata i32* %8, metadata !2297, metadata !DIExpression()), !dbg !3462
  %9 = and i8 %2, 31, !dbg !3466
  %10 = zext i8 %9 to i32, !dbg !3466
  call void @llvm.dbg.value(metadata i32 %10, metadata !2299, metadata !DIExpression()), !dbg !3462
  %11 = load i32, i32* %8, align 4, !dbg !3467, !tbaa !1308
  %12 = lshr i32 %11, %10, !dbg !3468
  %13 = and i32 %12, 1, !dbg !3469
  call void @llvm.dbg.value(metadata i32 %13, metadata !2300, metadata !DIExpression()), !dbg !3462
  %14 = xor i32 %13, 1, !dbg !3470
  %15 = shl i32 %14, %10, !dbg !3471
  %16 = xor i32 %15, %11, !dbg !3472
  store i32 %16, i32* %8, align 4, !dbg !3472, !tbaa !1308
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3473
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3474
  ret i8* %17, !dbg !3475
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3476 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3456, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i8* %0, metadata !3480, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i8 %1, metadata !3481, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i8* %0, metadata !3453, metadata !DIExpression()) #20, !dbg !3485
  call void @llvm.dbg.value(metadata i64 -1, metadata !3454, metadata !DIExpression()) #20, !dbg !3485
  call void @llvm.dbg.value(metadata i8 %1, metadata !3455, metadata !DIExpression()) #20, !dbg !3485
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3486
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3486
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3487, !tbaa.struct !3461
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2293, metadata !DIExpression()) #20, !dbg !3488
  call void @llvm.dbg.value(metadata i8 %1, metadata !2294, metadata !DIExpression()) #20, !dbg !3488
  call void @llvm.dbg.value(metadata i32 1, metadata !2295, metadata !DIExpression()) #20, !dbg !3488
  call void @llvm.dbg.value(metadata i8 %1, metadata !2296, metadata !DIExpression()) #20, !dbg !3488
  %5 = lshr i8 %1, 5, !dbg !3490
  %6 = zext i8 %5 to i64, !dbg !3490
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3491
  call void @llvm.dbg.value(metadata i32* %7, metadata !2297, metadata !DIExpression()) #20, !dbg !3488
  %8 = and i8 %1, 31, !dbg !3492
  %9 = zext i8 %8 to i32, !dbg !3492
  call void @llvm.dbg.value(metadata i32 %9, metadata !2299, metadata !DIExpression()) #20, !dbg !3488
  %10 = load i32, i32* %7, align 4, !dbg !3493, !tbaa !1308
  %11 = lshr i32 %10, %9, !dbg !3494
  %12 = and i32 %11, 1, !dbg !3495
  call void @llvm.dbg.value(metadata i32 %12, metadata !2300, metadata !DIExpression()) #20, !dbg !3488
  %13 = xor i32 %12, 1, !dbg !3496
  %14 = shl i32 %13, %9, !dbg !3497
  %15 = xor i32 %14, %10, !dbg !3498
  store i32 %15, i32* %7, align 4, !dbg !3498, !tbaa !1308
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !3499
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3500
  ret i8* %16, !dbg !3501
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3502 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3456, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8* %0, metadata !3504, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i8* %0, metadata !3480, metadata !DIExpression()) #20, !dbg !3509
  call void @llvm.dbg.value(metadata i8 58, metadata !3481, metadata !DIExpression()) #20, !dbg !3509
  call void @llvm.dbg.value(metadata i8* %0, metadata !3453, metadata !DIExpression()) #20, !dbg !3510
  call void @llvm.dbg.value(metadata i64 -1, metadata !3454, metadata !DIExpression()) #20, !dbg !3510
  call void @llvm.dbg.value(metadata i8 58, metadata !3455, metadata !DIExpression()) #20, !dbg !3510
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3511
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #20, !dbg !3511
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3512, !tbaa.struct !3461
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2293, metadata !DIExpression()) #20, !dbg !3513
  call void @llvm.dbg.value(metadata i8 58, metadata !2294, metadata !DIExpression()) #20, !dbg !3513
  call void @llvm.dbg.value(metadata i32 1, metadata !2295, metadata !DIExpression()) #20, !dbg !3513
  call void @llvm.dbg.value(metadata i8 58, metadata !2296, metadata !DIExpression()) #20, !dbg !3513
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3515
  call void @llvm.dbg.value(metadata i32* %4, metadata !2297, metadata !DIExpression()) #20, !dbg !3513
  call void @llvm.dbg.value(metadata i32 26, metadata !2299, metadata !DIExpression()) #20, !dbg !3513
  %5 = load i32, i32* %4, align 4, !dbg !3516, !tbaa !1308
  call void @llvm.dbg.value(metadata i32 %5, metadata !2300, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !3513
  %6 = or i32 %5, 67108864, !dbg !3517
  store i32 %6, i32* %4, align 4, !dbg !3517, !tbaa !1308
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #20, !dbg !3518
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #20, !dbg !3519
  ret i8* %7, !dbg !3520
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3521 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3456, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i8* %0, metadata !3523, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 %1, metadata !3524, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i8* %0, metadata !3453, metadata !DIExpression()) #20, !dbg !3528
  call void @llvm.dbg.value(metadata i64 %1, metadata !3454, metadata !DIExpression()) #20, !dbg !3528
  call void @llvm.dbg.value(metadata i8 58, metadata !3455, metadata !DIExpression()) #20, !dbg !3528
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3529
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3529
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3530, !tbaa.struct !3461
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2293, metadata !DIExpression()) #20, !dbg !3531
  call void @llvm.dbg.value(metadata i8 58, metadata !2294, metadata !DIExpression()) #20, !dbg !3531
  call void @llvm.dbg.value(metadata i32 1, metadata !2295, metadata !DIExpression()) #20, !dbg !3531
  call void @llvm.dbg.value(metadata i8 58, metadata !2296, metadata !DIExpression()) #20, !dbg !3531
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3533
  call void @llvm.dbg.value(metadata i32* %5, metadata !2297, metadata !DIExpression()) #20, !dbg !3531
  call void @llvm.dbg.value(metadata i32 26, metadata !2299, metadata !DIExpression()) #20, !dbg !3531
  %6 = load i32, i32* %5, align 4, !dbg !3534, !tbaa !1308
  call void @llvm.dbg.value(metadata i32 %6, metadata !2300, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !3531
  %7 = or i32 %6, 67108864, !dbg !3535
  store i32 %7, i32* %5, align 4, !dbg !3535, !tbaa !1308
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #20, !dbg !3536
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3537
  ret i8* %8, !dbg !3538
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3539 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3356, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3545
  call void @llvm.dbg.value(metadata i32 %0, metadata !3541, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i32 %1, metadata !3542, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i8* %2, metadata !3543, metadata !DIExpression()), !dbg !3547
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3548
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3548
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3544, metadata !DIExpression()), !dbg !3549
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3550
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3550
  call void @llvm.dbg.value(metadata i32 %1, metadata !3351, metadata !DIExpression()) #20, !dbg !3551
  call void @llvm.dbg.value(metadata i32 0, metadata !3356, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3551
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3545, !alias.scope !3552
  %8 = icmp eq i32 %1, 10, !dbg !3555
  br i1 %8, label %9, label %10, !dbg !3556

9:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3557, !noalias !3552
  unreachable, !dbg !3557

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3356, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3551
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3550
  store i32 %1, i32* %11, align 8, !dbg !3550, !tbaa.struct !3461
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3550
  %13 = bitcast i32* %12 to i8*, !dbg !3550
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3550, !tbaa.struct !3461
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3550
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2293, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i8 58, metadata !2294, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i32 1, metadata !2295, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i8 58, metadata !2296, metadata !DIExpression()), !dbg !3558
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3560
  call void @llvm.dbg.value(metadata i32* %14, metadata !2297, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i32 26, metadata !2299, metadata !DIExpression()), !dbg !3558
  %15 = load i32, i32* %14, align 4, !dbg !3561, !tbaa !1308
  call void @llvm.dbg.value(metadata i32 %15, metadata !2300, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3558
  %16 = or i32 %15, 67108864, !dbg !3562
  store i32 %16, i32* %14, align 4, !dbg !3562, !tbaa !1308
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3563
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3564
  ret i8* %17, !dbg !3565
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3566 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3574, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 %0, metadata !3570, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i8* %1, metadata !3571, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i8* %2, metadata !3572, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i8* %3, metadata !3573, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 %0, metadata !3579, metadata !DIExpression()) #20, !dbg !3587
  call void @llvm.dbg.value(metadata i8* %1, metadata !3580, metadata !DIExpression()) #20, !dbg !3587
  call void @llvm.dbg.value(metadata i8* %2, metadata !3581, metadata !DIExpression()) #20, !dbg !3587
  call void @llvm.dbg.value(metadata i8* %3, metadata !3582, metadata !DIExpression()) #20, !dbg !3587
  call void @llvm.dbg.value(metadata i64 -1, metadata !3583, metadata !DIExpression()) #20, !dbg !3587
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3588
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3588
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3589, !tbaa.struct !3461
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2333, metadata !DIExpression()) #20, !dbg !3590
  call void @llvm.dbg.value(metadata i8* %1, metadata !2334, metadata !DIExpression()) #20, !dbg !3590
  call void @llvm.dbg.value(metadata i8* %2, metadata !2335, metadata !DIExpression()) #20, !dbg !3590
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2333, metadata !DIExpression()) #20, !dbg !3590
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3592
  store i32 10, i32* %7, align 8, !dbg !3593, !tbaa !2275
  %8 = icmp ne i8* %1, null, !dbg !3594
  %9 = icmp ne i8* %2, null, !dbg !3595
  %10 = and i1 %8, %9, !dbg !3596
  br i1 %10, label %12, label %11, !dbg !3596

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3597
  unreachable, !dbg !3597

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3598
  store i8* %1, i8** %13, align 8, !dbg !3599, !tbaa !2349
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3600
  store i8* %2, i8** %14, align 8, !dbg !3601, !tbaa !2352
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #20, !dbg !3602
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3603
  ret i8* %15, !dbg !3604
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3575 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3579, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i8* %1, metadata !3580, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i8* %2, metadata !3581, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i8* %3, metadata !3582, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i64 %4, metadata !3583, metadata !DIExpression()), !dbg !3605
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3606
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #20, !dbg !3606
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3574, metadata !DIExpression()), !dbg !3607
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3608, !tbaa.struct !3461
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2333, metadata !DIExpression()) #20, !dbg !3609
  call void @llvm.dbg.value(metadata i8* %1, metadata !2334, metadata !DIExpression()) #20, !dbg !3609
  call void @llvm.dbg.value(metadata i8* %2, metadata !2335, metadata !DIExpression()) #20, !dbg !3609
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2333, metadata !DIExpression()) #20, !dbg !3609
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3611
  store i32 10, i32* %8, align 8, !dbg !3612, !tbaa !2275
  %9 = icmp ne i8* %1, null, !dbg !3613
  %10 = icmp ne i8* %2, null, !dbg !3614
  %11 = and i1 %9, %10, !dbg !3615
  br i1 %11, label %13, label %12, !dbg !3615

12:                                               ; preds = %5
  tail call void @abort() #23, !dbg !3616
  unreachable, !dbg !3616

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3617
  store i8* %1, i8** %14, align 8, !dbg !3618, !tbaa !2349
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3619
  store i8* %2, i8** %15, align 8, !dbg !3620, !tbaa !2352
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3621
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #20, !dbg !3622
  ret i8* %16, !dbg !3623
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3624 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3574, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i8* %0, metadata !3628, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i8* %1, metadata !3629, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i8* %2, metadata !3630, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i32 0, metadata !3570, metadata !DIExpression()) #20, !dbg !3635
  call void @llvm.dbg.value(metadata i8* %0, metadata !3571, metadata !DIExpression()) #20, !dbg !3635
  call void @llvm.dbg.value(metadata i8* %1, metadata !3572, metadata !DIExpression()) #20, !dbg !3635
  call void @llvm.dbg.value(metadata i8* %2, metadata !3573, metadata !DIExpression()) #20, !dbg !3635
  call void @llvm.dbg.value(metadata i32 0, metadata !3579, metadata !DIExpression()) #20, !dbg !3636
  call void @llvm.dbg.value(metadata i8* %0, metadata !3580, metadata !DIExpression()) #20, !dbg !3636
  call void @llvm.dbg.value(metadata i8* %1, metadata !3581, metadata !DIExpression()) #20, !dbg !3636
  call void @llvm.dbg.value(metadata i8* %2, metadata !3582, metadata !DIExpression()) #20, !dbg !3636
  call void @llvm.dbg.value(metadata i64 -1, metadata !3583, metadata !DIExpression()) #20, !dbg !3636
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3637
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3637
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3638, !tbaa.struct !3461
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2333, metadata !DIExpression()) #20, !dbg !3639
  call void @llvm.dbg.value(metadata i8* %0, metadata !2334, metadata !DIExpression()) #20, !dbg !3639
  call void @llvm.dbg.value(metadata i8* %1, metadata !2335, metadata !DIExpression()) #20, !dbg !3639
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2333, metadata !DIExpression()) #20, !dbg !3639
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3641
  store i32 10, i32* %6, align 8, !dbg !3642, !tbaa !2275
  %7 = icmp ne i8* %0, null, !dbg !3643
  %8 = icmp ne i8* %1, null, !dbg !3644
  %9 = and i1 %7, %8, !dbg !3645
  br i1 %9, label %11, label %10, !dbg !3645

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !3646
  unreachable, !dbg !3646

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3647
  store i8* %0, i8** %12, align 8, !dbg !3648, !tbaa !2349
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3649
  store i8* %1, i8** %13, align 8, !dbg !3650, !tbaa !2352
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #20, !dbg !3651
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3652
  ret i8* %14, !dbg !3653
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3654 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3574, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i8* %0, metadata !3658, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i8* %1, metadata !3659, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i8* %2, metadata !3660, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i64 %3, metadata !3661, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i32 0, metadata !3579, metadata !DIExpression()) #20, !dbg !3665
  call void @llvm.dbg.value(metadata i8* %0, metadata !3580, metadata !DIExpression()) #20, !dbg !3665
  call void @llvm.dbg.value(metadata i8* %1, metadata !3581, metadata !DIExpression()) #20, !dbg !3665
  call void @llvm.dbg.value(metadata i8* %2, metadata !3582, metadata !DIExpression()) #20, !dbg !3665
  call void @llvm.dbg.value(metadata i64 %3, metadata !3583, metadata !DIExpression()) #20, !dbg !3665
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3666
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3666
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3667, !tbaa.struct !3461
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2333, metadata !DIExpression()) #20, !dbg !3668
  call void @llvm.dbg.value(metadata i8* %0, metadata !2334, metadata !DIExpression()) #20, !dbg !3668
  call void @llvm.dbg.value(metadata i8* %1, metadata !2335, metadata !DIExpression()) #20, !dbg !3668
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2333, metadata !DIExpression()) #20, !dbg !3668
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3670
  store i32 10, i32* %7, align 8, !dbg !3671, !tbaa !2275
  %8 = icmp ne i8* %0, null, !dbg !3672
  %9 = icmp ne i8* %1, null, !dbg !3673
  %10 = and i1 %8, %9, !dbg !3674
  br i1 %10, label %12, label %11, !dbg !3674

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3675
  unreachable, !dbg !3675

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3676
  store i8* %0, i8** %13, align 8, !dbg !3677, !tbaa !2349
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3678
  store i8* %1, i8** %14, align 8, !dbg !3679, !tbaa !2352
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #20, !dbg !3680
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3681
  ret i8* %15, !dbg !3682
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3683 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3687, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata i8* %1, metadata !3688, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata i64 %2, metadata !3689, metadata !DIExpression()), !dbg !3690
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3691
  ret i8* %4, !dbg !3692
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3693 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3697, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i64 %1, metadata !3698, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i32 0, metadata !3687, metadata !DIExpression()) #20, !dbg !3700
  call void @llvm.dbg.value(metadata i8* %0, metadata !3688, metadata !DIExpression()) #20, !dbg !3700
  call void @llvm.dbg.value(metadata i64 %1, metadata !3689, metadata !DIExpression()) #20, !dbg !3700
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3702
  ret i8* %3, !dbg !3703
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3704 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3708, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i8* %1, metadata !3709, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i32 %0, metadata !3687, metadata !DIExpression()) #20, !dbg !3711
  call void @llvm.dbg.value(metadata i8* %1, metadata !3688, metadata !DIExpression()) #20, !dbg !3711
  call void @llvm.dbg.value(metadata i64 -1, metadata !3689, metadata !DIExpression()) #20, !dbg !3711
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3713
  ret i8* %3, !dbg !3714
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3715 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3717, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i32 0, metadata !3708, metadata !DIExpression()) #20, !dbg !3719
  call void @llvm.dbg.value(metadata i8* %0, metadata !3709, metadata !DIExpression()) #20, !dbg !3719
  call void @llvm.dbg.value(metadata i32 0, metadata !3687, metadata !DIExpression()) #20, !dbg !3721
  call void @llvm.dbg.value(metadata i8* %0, metadata !3688, metadata !DIExpression()) #20, !dbg !3721
  call void @llvm.dbg.value(metadata i64 -1, metadata !3689, metadata !DIExpression()) #20, !dbg !3721
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3723
  ret i8* %2, !dbg !3724
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3725 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3732, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8* %1, metadata !3733, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8* %2, metadata !3734, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8* %3, metadata !3735, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8** %4, metadata !3736, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 %5, metadata !3737, metadata !DIExpression()), !dbg !3738
  %7 = icmp eq i8* %1, null, !dbg !3739
  br i1 %7, label %10, label %8, !dbg !3741

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #20, !dbg !3742
  br label %12, !dbg !3742

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.94, i64 0, i64 0), i8* %2, i8* %3) #20, !dbg !3743
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.95, i64 0, i64 0), i32 5) #20, !dbg !3744
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #20, !dbg !3744
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.96, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3745
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.97, i64 0, i64 0), i32 5) #20, !dbg !3746
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.98, i64 0, i64 0)) #20, !dbg !3746
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.96, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3747
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
  ], !dbg !3748

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.99, i64 0, i64 0), i32 5) #20, !dbg !3749
  %21 = load i8*, i8** %4, align 8, !dbg !3749, !tbaa !1190
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #20, !dbg !3749
  br label %147, !dbg !3751

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.100, i64 0, i64 0), i32 5) #20, !dbg !3752
  %25 = load i8*, i8** %4, align 8, !dbg !3752, !tbaa !1190
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3752
  %27 = load i8*, i8** %26, align 8, !dbg !3752, !tbaa !1190
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #20, !dbg !3752
  br label %147, !dbg !3753

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.101, i64 0, i64 0), i32 5) #20, !dbg !3754
  %31 = load i8*, i8** %4, align 8, !dbg !3754, !tbaa !1190
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3754
  %33 = load i8*, i8** %32, align 8, !dbg !3754, !tbaa !1190
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3754
  %35 = load i8*, i8** %34, align 8, !dbg !3754, !tbaa !1190
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #20, !dbg !3754
  br label %147, !dbg !3755

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.102, i64 0, i64 0), i32 5) #20, !dbg !3756
  %39 = load i8*, i8** %4, align 8, !dbg !3756, !tbaa !1190
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3756
  %41 = load i8*, i8** %40, align 8, !dbg !3756, !tbaa !1190
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3756
  %43 = load i8*, i8** %42, align 8, !dbg !3756, !tbaa !1190
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3756
  %45 = load i8*, i8** %44, align 8, !dbg !3756, !tbaa !1190
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #20, !dbg !3756
  br label %147, !dbg !3757

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.103, i64 0, i64 0), i32 5) #20, !dbg !3758
  %49 = load i8*, i8** %4, align 8, !dbg !3758, !tbaa !1190
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3758
  %51 = load i8*, i8** %50, align 8, !dbg !3758, !tbaa !1190
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3758
  %53 = load i8*, i8** %52, align 8, !dbg !3758, !tbaa !1190
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3758
  %55 = load i8*, i8** %54, align 8, !dbg !3758, !tbaa !1190
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3758
  %57 = load i8*, i8** %56, align 8, !dbg !3758, !tbaa !1190
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #20, !dbg !3758
  br label %147, !dbg !3759

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.104, i64 0, i64 0), i32 5) #20, !dbg !3760
  %61 = load i8*, i8** %4, align 8, !dbg !3760, !tbaa !1190
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3760
  %63 = load i8*, i8** %62, align 8, !dbg !3760, !tbaa !1190
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3760
  %65 = load i8*, i8** %64, align 8, !dbg !3760, !tbaa !1190
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3760
  %67 = load i8*, i8** %66, align 8, !dbg !3760, !tbaa !1190
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3760
  %69 = load i8*, i8** %68, align 8, !dbg !3760, !tbaa !1190
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3760
  %71 = load i8*, i8** %70, align 8, !dbg !3760, !tbaa !1190
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #20, !dbg !3760
  br label %147, !dbg !3761

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.105, i64 0, i64 0), i32 5) #20, !dbg !3762
  %75 = load i8*, i8** %4, align 8, !dbg !3762, !tbaa !1190
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3762
  %77 = load i8*, i8** %76, align 8, !dbg !3762, !tbaa !1190
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3762
  %79 = load i8*, i8** %78, align 8, !dbg !3762, !tbaa !1190
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3762
  %81 = load i8*, i8** %80, align 8, !dbg !3762, !tbaa !1190
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3762
  %83 = load i8*, i8** %82, align 8, !dbg !3762, !tbaa !1190
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3762
  %85 = load i8*, i8** %84, align 8, !dbg !3762, !tbaa !1190
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3762
  %87 = load i8*, i8** %86, align 8, !dbg !3762, !tbaa !1190
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #20, !dbg !3762
  br label %147, !dbg !3763

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.106, i64 0, i64 0), i32 5) #20, !dbg !3764
  %91 = load i8*, i8** %4, align 8, !dbg !3764, !tbaa !1190
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3764
  %93 = load i8*, i8** %92, align 8, !dbg !3764, !tbaa !1190
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3764
  %95 = load i8*, i8** %94, align 8, !dbg !3764, !tbaa !1190
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3764
  %97 = load i8*, i8** %96, align 8, !dbg !3764, !tbaa !1190
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3764
  %99 = load i8*, i8** %98, align 8, !dbg !3764, !tbaa !1190
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3764
  %101 = load i8*, i8** %100, align 8, !dbg !3764, !tbaa !1190
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3764
  %103 = load i8*, i8** %102, align 8, !dbg !3764, !tbaa !1190
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3764
  %105 = load i8*, i8** %104, align 8, !dbg !3764, !tbaa !1190
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #20, !dbg !3764
  br label %147, !dbg !3765

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.107, i64 0, i64 0), i32 5) #20, !dbg !3766
  %109 = load i8*, i8** %4, align 8, !dbg !3766, !tbaa !1190
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3766
  %111 = load i8*, i8** %110, align 8, !dbg !3766, !tbaa !1190
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3766
  %113 = load i8*, i8** %112, align 8, !dbg !3766, !tbaa !1190
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3766
  %115 = load i8*, i8** %114, align 8, !dbg !3766, !tbaa !1190
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3766
  %117 = load i8*, i8** %116, align 8, !dbg !3766, !tbaa !1190
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3766
  %119 = load i8*, i8** %118, align 8, !dbg !3766, !tbaa !1190
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3766
  %121 = load i8*, i8** %120, align 8, !dbg !3766, !tbaa !1190
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3766
  %123 = load i8*, i8** %122, align 8, !dbg !3766, !tbaa !1190
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3766
  %125 = load i8*, i8** %124, align 8, !dbg !3766, !tbaa !1190
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #20, !dbg !3766
  br label %147, !dbg !3767

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.108, i64 0, i64 0), i32 5) #20, !dbg !3768
  %129 = load i8*, i8** %4, align 8, !dbg !3768, !tbaa !1190
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3768
  %131 = load i8*, i8** %130, align 8, !dbg !3768, !tbaa !1190
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3768
  %133 = load i8*, i8** %132, align 8, !dbg !3768, !tbaa !1190
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3768
  %135 = load i8*, i8** %134, align 8, !dbg !3768, !tbaa !1190
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3768
  %137 = load i8*, i8** %136, align 8, !dbg !3768, !tbaa !1190
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3768
  %139 = load i8*, i8** %138, align 8, !dbg !3768, !tbaa !1190
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3768
  %141 = load i8*, i8** %140, align 8, !dbg !3768, !tbaa !1190
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3768
  %143 = load i8*, i8** %142, align 8, !dbg !3768, !tbaa !1190
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3768
  %145 = load i8*, i8** %144, align 8, !dbg !3768, !tbaa !1190
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #20, !dbg !3768
  br label %147, !dbg !3769

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3770
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3771 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3775, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i8* %1, metadata !3776, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i8* %2, metadata !3777, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i8* %3, metadata !3778, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i8** %4, metadata !3779, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i64 0, metadata !3780, metadata !DIExpression()), !dbg !3781
  br label %6, !dbg !3782

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3784
  call void @llvm.dbg.value(metadata i64 %7, metadata !3780, metadata !DIExpression()), !dbg !3781
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3785
  %9 = load i8*, i8** %8, align 8, !dbg !3785, !tbaa !1190
  %10 = icmp eq i8* %9, null, !dbg !3787
  %11 = add i64 %7, 1, !dbg !3788
  call void @llvm.dbg.value(metadata i64 %11, metadata !3780, metadata !DIExpression()), !dbg !3781
  br i1 %10, label %12, label %6, !dbg !3787, !llvm.loop !3789

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3780, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i64 %7, metadata !3780, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i64 %7, metadata !3780, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i64 %7, metadata !3780, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i64 %7, metadata !3780, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i64 %7, metadata !3780, metadata !DIExpression()), !dbg !3781
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3791
  ret void, !dbg !3792
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3793 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3804, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i8* %1, metadata !3805, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i8* %2, metadata !3806, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i8* %3, metadata !3807, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3808, metadata !DIExpression()), !dbg !3812
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3813
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #20, !dbg !3813
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3810, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i64 0, metadata !3809, metadata !DIExpression()), !dbg !3812
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3815
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3815
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3815
  %11 = load i32, i32* %8, align 8, !dbg !3818
  %12 = icmp ult i32 %11, 41, !dbg !3818
  br i1 %12, label %13, label %18, !dbg !3818

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3818
  %15 = zext i32 %11 to i64, !dbg !3818
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3818
  %17 = add nuw nsw i32 %11, 8, !dbg !3818
  store i32 %17, i32* %8, align 8, !dbg !3818
  br label %21, !dbg !3818

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3818
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3818
  store i8* %20, i8** %9, align 8, !dbg !3818
  br label %21, !dbg !3818

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3818
  %25 = load i8*, i8** %24, align 8, !dbg !3818
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3819
  store i8* %25, i8** %26, align 16, !dbg !3820, !tbaa !1190
  %27 = icmp eq i8* %25, null, !dbg !3821
  br i1 %27, label %30, label %28, !dbg !3822

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3809, metadata !DIExpression()), !dbg !3812
  %29 = icmp ult i32 %22, 41, !dbg !3818
  br i1 %29, label %35, label %32, !dbg !3818

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3823
  call void @llvm.dbg.value(metadata i64 %31, metadata !3809, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i64 %31, metadata !3809, metadata !DIExpression()), !dbg !3812
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3824
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #20, !dbg !3825
  ret void, !dbg !3825

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3818
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3818
  store i8* %34, i8** %9, align 8, !dbg !3818
  br label %40, !dbg !3818

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3818
  %37 = zext i32 %22 to i64, !dbg !3818
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3818
  %39 = add nuw nsw i32 %22, 8, !dbg !3818
  store i32 %39, i32* %8, align 8, !dbg !3818
  br label %40, !dbg !3818

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3818
  %44 = load i8*, i8** %43, align 8, !dbg !3818
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3819
  store i8* %44, i8** %45, align 8, !dbg !3820, !tbaa !1190
  %46 = icmp eq i8* %44, null, !dbg !3821
  br i1 %46, label %30, label %47, !dbg !3822

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3809, metadata !DIExpression()), !dbg !3812
  %48 = icmp ult i32 %41, 41, !dbg !3818
  br i1 %48, label %52, label %49, !dbg !3818

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3818
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3818
  store i8* %51, i8** %9, align 8, !dbg !3818
  br label %57, !dbg !3818

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3818
  %54 = zext i32 %41 to i64, !dbg !3818
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3818
  %56 = add nuw nsw i32 %41, 8, !dbg !3818
  store i32 %56, i32* %8, align 8, !dbg !3818
  br label %57, !dbg !3818

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3818
  %61 = load i8*, i8** %60, align 8, !dbg !3818
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3819
  store i8* %61, i8** %62, align 16, !dbg !3820, !tbaa !1190
  %63 = icmp eq i8* %61, null, !dbg !3821
  br i1 %63, label %30, label %64, !dbg !3822

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3809, metadata !DIExpression()), !dbg !3812
  %65 = icmp ult i32 %58, 41, !dbg !3818
  br i1 %65, label %69, label %66, !dbg !3818

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3818
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3818
  store i8* %68, i8** %9, align 8, !dbg !3818
  br label %74, !dbg !3818

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3818
  %71 = zext i32 %58 to i64, !dbg !3818
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3818
  %73 = add nuw nsw i32 %58, 8, !dbg !3818
  store i32 %73, i32* %8, align 8, !dbg !3818
  br label %74, !dbg !3818

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3818
  %78 = load i8*, i8** %77, align 8, !dbg !3818
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3819
  store i8* %78, i8** %79, align 8, !dbg !3820, !tbaa !1190
  %80 = icmp eq i8* %78, null, !dbg !3821
  br i1 %80, label %30, label %81, !dbg !3822

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3809, metadata !DIExpression()), !dbg !3812
  %82 = icmp ult i32 %75, 41, !dbg !3818
  br i1 %82, label %86, label %83, !dbg !3818

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3818
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3818
  store i8* %85, i8** %9, align 8, !dbg !3818
  br label %91, !dbg !3818

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3818
  %88 = zext i32 %75 to i64, !dbg !3818
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3818
  %90 = add nuw nsw i32 %75, 8, !dbg !3818
  store i32 %90, i32* %8, align 8, !dbg !3818
  br label %91, !dbg !3818

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3818
  %95 = load i8*, i8** %94, align 8, !dbg !3818
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3819
  store i8* %95, i8** %96, align 16, !dbg !3820, !tbaa !1190
  %97 = icmp eq i8* %95, null, !dbg !3821
  br i1 %97, label %30, label %98, !dbg !3822

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3809, metadata !DIExpression()), !dbg !3812
  %99 = icmp ult i32 %92, 41, !dbg !3818
  br i1 %99, label %103, label %100, !dbg !3818

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3818
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3818
  store i8* %102, i8** %9, align 8, !dbg !3818
  br label %108, !dbg !3818

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3818
  %105 = zext i32 %92 to i64, !dbg !3818
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3818
  %107 = add nuw nsw i32 %92, 8, !dbg !3818
  store i32 %107, i32* %8, align 8, !dbg !3818
  br label %108, !dbg !3818

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3818
  %111 = load i8*, i8** %110, align 8, !dbg !3818
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3819
  store i8* %111, i8** %112, align 8, !dbg !3820, !tbaa !1190
  %113 = icmp eq i8* %111, null, !dbg !3821
  br i1 %113, label %30, label %114, !dbg !3822

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3809, metadata !DIExpression()), !dbg !3812
  %115 = load i8*, i8** %9, align 8, !dbg !3818
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3818
  store i8* %116, i8** %9, align 8, !dbg !3818
  %117 = bitcast i8* %115 to i8**, !dbg !3818
  %118 = load i8*, i8** %117, align 8, !dbg !3818
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3819
  store i8* %118, i8** %119, align 16, !dbg !3820, !tbaa !1190
  %120 = icmp eq i8* %118, null, !dbg !3821
  br i1 %120, label %30, label %121, !dbg !3822

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3809, metadata !DIExpression()), !dbg !3812
  %122 = load i8*, i8** %9, align 8, !dbg !3818
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3818
  store i8* %123, i8** %9, align 8, !dbg !3818
  %124 = bitcast i8* %122 to i8**, !dbg !3818
  %125 = load i8*, i8** %124, align 8, !dbg !3818
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3819
  store i8* %125, i8** %126, align 8, !dbg !3820, !tbaa !1190
  %127 = icmp eq i8* %125, null, !dbg !3821
  br i1 %127, label %30, label %128, !dbg !3822

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3809, metadata !DIExpression()), !dbg !3812
  %129 = load i8*, i8** %9, align 8, !dbg !3818
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3818
  store i8* %130, i8** %9, align 8, !dbg !3818
  %131 = bitcast i8* %129 to i8**, !dbg !3818
  %132 = load i8*, i8** %131, align 8, !dbg !3818
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3819
  store i8* %132, i8** %133, align 16, !dbg !3820, !tbaa !1190
  %134 = icmp eq i8* %132, null, !dbg !3821
  br i1 %134, label %30, label %135, !dbg !3822

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3809, metadata !DIExpression()), !dbg !3812
  %136 = load i8*, i8** %9, align 8, !dbg !3818
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3818
  store i8* %137, i8** %9, align 8, !dbg !3818
  %138 = bitcast i8* %136 to i8**, !dbg !3818
  %139 = load i8*, i8** %138, align 8, !dbg !3818
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3819
  store i8* %139, i8** %140, align 8, !dbg !3820, !tbaa !1190
  %141 = icmp eq i8* %139, null, !dbg !3821
  %142 = select i1 %141, i64 9, i64 10, !dbg !3822
  br label %30, !dbg !3822
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3826 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3830, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i8* %1, metadata !3831, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i8* %2, metadata !3832, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i8* %3, metadata !3833, metadata !DIExpression()), !dbg !3840
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3841
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #20, !dbg !3841
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3834, metadata !DIExpression()), !dbg !3842
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3843
  call void @llvm.va_start(i8* nonnull %6), !dbg !3843
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3844
  call void @llvm.va_end(i8* nonnull %6), !dbg !3845
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #20, !dbg !3846
  ret void, !dbg !3846
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #20

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3847 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3848, !tbaa !1190
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.96, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3848
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.111, i64 0, i64 0), i32 5) #20, !dbg !3849
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.112, i64 0, i64 0)) #20, !dbg !3849
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.113, i64 0, i64 0), i32 5) #20, !dbg !3850
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.114, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.115, i64 0, i64 0)) #20, !dbg !3850
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.116, i64 0, i64 0), i32 5) #20, !dbg !3851
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.117, i64 0, i64 0)) #20, !dbg !3851
  ret void, !dbg !3852
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !3853 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3857, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i64 %1, metadata !3858, metadata !DIExpression()), !dbg !3859
  %3 = udiv i64 9223372036854775807, %1, !dbg !3860
  %4 = icmp ult i64 %3, %0, !dbg !3860
  br i1 %4, label %5, label %6, !dbg !3862

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3863
  unreachable, !dbg !3863

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3864
  call void @llvm.dbg.value(metadata i64 %7, metadata !3865, metadata !DIExpression()) #20, !dbg !3871
  %8 = tail call noalias i8* @malloc(i64 %7) #20, !dbg !3873
  call void @llvm.dbg.value(metadata i8* %8, metadata !3870, metadata !DIExpression()) #20, !dbg !3871
  %9 = icmp eq i8* %8, null, !dbg !3874
  %10 = icmp ne i64 %7, 0, !dbg !3876
  %11 = and i1 %10, %9, !dbg !3877
  br i1 %11, label %12, label %13, !dbg !3877

12:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !3878
  unreachable, !dbg !3878

13:                                               ; preds = %6
  ret i8* %8, !dbg !3879
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3866 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3865, metadata !DIExpression()), !dbg !3880
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !3881
  call void @llvm.dbg.value(metadata i8* %2, metadata !3870, metadata !DIExpression()), !dbg !3880
  %3 = icmp eq i8* %2, null, !dbg !3882
  %4 = icmp ne i64 %0, 0, !dbg !3883
  %5 = and i1 %4, %3, !dbg !3884
  br i1 %5, label %6, label %7, !dbg !3884

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3885
  unreachable, !dbg !3885

7:                                                ; preds = %1
  ret i8* %2, !dbg !3886
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !3887 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3891, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i64 %1, metadata !3892, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i64 %2, metadata !3893, metadata !DIExpression()), !dbg !3894
  %4 = udiv i64 9223372036854775807, %2, !dbg !3895
  %5 = icmp ult i64 %4, %1, !dbg !3895
  br i1 %5, label %6, label %7, !dbg !3897

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !3898
  unreachable, !dbg !3898

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3899
  call void @llvm.dbg.value(metadata i8* %0, metadata !3900, metadata !DIExpression()) #20, !dbg !3906
  call void @llvm.dbg.value(metadata i64 %8, metadata !3905, metadata !DIExpression()) #20, !dbg !3906
  %9 = icmp eq i64 %8, 0, !dbg !3908
  %10 = icmp ne i8* %0, null, !dbg !3910
  %11 = and i1 %10, %9, !dbg !3911
  br i1 %11, label %12, label %13, !dbg !3911

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #20, !dbg !3912
  br label %19, !dbg !3914

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #20, !dbg !3915
  call void @llvm.dbg.value(metadata i8* %14, metadata !3900, metadata !DIExpression()) #20, !dbg !3906
  %15 = icmp eq i8* %14, null, !dbg !3916
  %16 = icmp ne i64 %8, 0, !dbg !3918
  %17 = and i1 %16, %15, !dbg !3919
  br i1 %17, label %18, label %19, !dbg !3919

18:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3920
  unreachable, !dbg !3920

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3906
  ret i8* %20, !dbg !3921
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3901 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3900, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i64 %1, metadata !3905, metadata !DIExpression()), !dbg !3922
  %3 = icmp eq i64 %1, 0, !dbg !3923
  %4 = icmp ne i8* %0, null, !dbg !3924
  %5 = and i1 %4, %3, !dbg !3925
  br i1 %5, label %6, label %7, !dbg !3925

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #20, !dbg !3926
  br label %13, !dbg !3927

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #20, !dbg !3928
  call void @llvm.dbg.value(metadata i8* %8, metadata !3900, metadata !DIExpression()), !dbg !3922
  %9 = icmp eq i8* %8, null, !dbg !3929
  %10 = icmp ne i64 %1, 0, !dbg !3930
  %11 = and i1 %10, %9, !dbg !3931
  br i1 %11, label %12, label %13, !dbg !3931

12:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3932
  unreachable, !dbg !3932

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3922
  ret i8* %14, !dbg !3933
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !524 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !529, metadata !DIExpression()), !dbg !3934
  call void @llvm.dbg.value(metadata i64* %1, metadata !530, metadata !DIExpression()), !dbg !3934
  call void @llvm.dbg.value(metadata i64 %2, metadata !531, metadata !DIExpression()), !dbg !3934
  %4 = load i64, i64* %1, align 8, !dbg !3935, !tbaa !1367
  call void @llvm.dbg.value(metadata i64 %4, metadata !532, metadata !DIExpression()), !dbg !3934
  %5 = icmp eq i8* %0, null, !dbg !3936
  br i1 %5, label %6, label %20, !dbg !3938

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3939
  br i1 %7, label %8, label %13, !dbg !3942

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3943
  call void @llvm.dbg.value(metadata i64 %9, metadata !532, metadata !DIExpression()), !dbg !3934
  %10 = icmp ugt i64 %2, 128, !dbg !3945
  %11 = zext i1 %10 to i64, !dbg !3945
  %12 = add nuw nsw i64 %9, %11, !dbg !3946
  call void @llvm.dbg.value(metadata i64 %12, metadata !532, metadata !DIExpression()), !dbg !3934
  br label %13, !dbg !3947

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3934
  call void @llvm.dbg.value(metadata i64 %14, metadata !532, metadata !DIExpression()), !dbg !3934
  %15 = udiv i64 9223372036854775807, %2, !dbg !3948
  %16 = icmp ult i64 %15, %14, !dbg !3948
  br i1 %16, label %19, label %17, !dbg !3950

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !532, metadata !DIExpression()), !dbg !3934
  store i64 %14, i64* %1, align 8, !dbg !3951, !tbaa !1367
  %18 = mul i64 %14, %2, !dbg !3952
  call void @llvm.dbg.value(metadata i8* %0, metadata !3900, metadata !DIExpression()) #20, !dbg !3953
  call void @llvm.dbg.value(metadata i64 %28, metadata !3905, metadata !DIExpression()) #20, !dbg !3953
  br label %31, !dbg !3955

19:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3956
  unreachable, !dbg !3956

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3957
  %22 = icmp ugt i64 %21, %4, !dbg !3960
  br i1 %22, label %24, label %23, !dbg !3961

23:                                               ; preds = %20
  tail call void @xalloc_die() #23, !dbg !3962
  unreachable, !dbg !3962

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3963
  %26 = add nuw i64 %4, 1, !dbg !3964
  %27 = add i64 %26, %25, !dbg !3965
  call void @llvm.dbg.value(metadata i64 %27, metadata !532, metadata !DIExpression()), !dbg !3934
  call void @llvm.dbg.value(metadata i64 %27, metadata !532, metadata !DIExpression()), !dbg !3934
  store i64 %27, i64* %1, align 8, !dbg !3951, !tbaa !1367
  %28 = mul i64 %27, %2, !dbg !3952
  call void @llvm.dbg.value(metadata i8* %0, metadata !3900, metadata !DIExpression()) #20, !dbg !3953
  call void @llvm.dbg.value(metadata i64 %28, metadata !3905, metadata !DIExpression()) #20, !dbg !3953
  %29 = icmp eq i64 %28, 0, !dbg !3966
  br i1 %29, label %30, label %31, !dbg !3955

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #20, !dbg !3967
  br label %38, !dbg !3968

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #20, !dbg !3969
  call void @llvm.dbg.value(metadata i8* %33, metadata !3900, metadata !DIExpression()) #20, !dbg !3953
  %34 = icmp eq i8* %33, null, !dbg !3970
  %35 = icmp ne i64 %32, 0, !dbg !3971
  %36 = and i1 %35, %34, !dbg !3972
  br i1 %36, label %37, label %38, !dbg !3972

37:                                               ; preds = %31
  tail call void @xalloc_die() #23, !dbg !3973
  unreachable, !dbg !3973

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3953
  ret i8* %39, !dbg !3974
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !3975 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3977, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i64 %0, metadata !3865, metadata !DIExpression()) #20, !dbg !3979
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !3981
  call void @llvm.dbg.value(metadata i8* %2, metadata !3870, metadata !DIExpression()) #20, !dbg !3979
  %3 = icmp eq i8* %2, null, !dbg !3982
  %4 = icmp ne i64 %0, 0, !dbg !3983
  %5 = and i1 %4, %3, !dbg !3984
  br i1 %5, label %6, label %7, !dbg !3984

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3985
  unreachable, !dbg !3985

7:                                                ; preds = %1
  ret i8* %2, !dbg !3986
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3987 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3991, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i64* %1, metadata !3992, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i8* %0, metadata !529, metadata !DIExpression()) #20, !dbg !3994
  call void @llvm.dbg.value(metadata i64* %1, metadata !530, metadata !DIExpression()) #20, !dbg !3994
  call void @llvm.dbg.value(metadata i64 1, metadata !531, metadata !DIExpression()) #20, !dbg !3994
  %3 = load i64, i64* %1, align 8, !dbg !3996, !tbaa !1367
  call void @llvm.dbg.value(metadata i64 %3, metadata !532, metadata !DIExpression()) #20, !dbg !3994
  %4 = icmp eq i8* %0, null, !dbg !3997
  br i1 %4, label %5, label %12, !dbg !3998

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3999
  br i1 %6, label %9, label %7, !dbg !4000

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !532, metadata !DIExpression()) #20, !dbg !3994
  %8 = icmp slt i64 %3, 0, !dbg !4001
  br i1 %8, label %11, label %9, !dbg !4002

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !532, metadata !DIExpression()) #20, !dbg !3994
  store i64 %10, i64* %1, align 8, !dbg !4003, !tbaa !1367
  call void @llvm.dbg.value(metadata i8* %0, metadata !3900, metadata !DIExpression()) #20, !dbg !4004
  call void @llvm.dbg.value(metadata i64 %18, metadata !3905, metadata !DIExpression()) #20, !dbg !4004
  br label %21, !dbg !4006

11:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !4007
  unreachable, !dbg !4007

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4008
  br i1 %13, label %15, label %14, !dbg !4009

14:                                               ; preds = %12
  tail call void @xalloc_die() #23, !dbg !4010
  unreachable, !dbg !4010

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4011
  %17 = add nuw nsw i64 %3, 1, !dbg !4012
  %18 = add nuw nsw i64 %17, %16, !dbg !4013
  call void @llvm.dbg.value(metadata i64 %18, metadata !532, metadata !DIExpression()) #20, !dbg !3994
  call void @llvm.dbg.value(metadata i64 %18, metadata !532, metadata !DIExpression()) #20, !dbg !3994
  store i64 %18, i64* %1, align 8, !dbg !4003, !tbaa !1367
  call void @llvm.dbg.value(metadata i8* %0, metadata !3900, metadata !DIExpression()) #20, !dbg !4004
  call void @llvm.dbg.value(metadata i64 %18, metadata !3905, metadata !DIExpression()) #20, !dbg !4004
  %19 = icmp eq i64 %18, 0, !dbg !4014
  br i1 %19, label %20, label %21, !dbg !4006

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #20, !dbg !4015
  br label %28, !dbg !4016

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #20, !dbg !4017
  call void @llvm.dbg.value(metadata i8* %23, metadata !3900, metadata !DIExpression()) #20, !dbg !4004
  %24 = icmp eq i8* %23, null, !dbg !4018
  %25 = icmp ne i64 %22, 0, !dbg !4019
  %26 = and i1 %25, %24, !dbg !4020
  br i1 %26, label %27, label %28, !dbg !4020

27:                                               ; preds = %21
  tail call void @xalloc_die() #23, !dbg !4021
  unreachable, !dbg !4021

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4004
  ret i8* %29, !dbg !4022
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4023 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4025, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i64 %0, metadata !4027, metadata !DIExpression()) #20, !dbg !4032
  call void @llvm.dbg.value(metadata i64 1, metadata !4030, metadata !DIExpression()) #20, !dbg !4032
  %2 = icmp slt i64 %0, 0, !dbg !4034
  br i1 %2, label %6, label %3, !dbg !4036

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #20, !dbg !4037
  call void @llvm.dbg.value(metadata i8* %4, metadata !4031, metadata !DIExpression()) #20, !dbg !4032
  %5 = icmp eq i8* %4, null, !dbg !4038
  br i1 %5, label %6, label %7, !dbg !4039

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #23, !dbg !4040
  unreachable, !dbg !4040

7:                                                ; preds = %3
  ret i8* %4, !dbg !4041
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4028 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4027, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata i64 %1, metadata !4030, metadata !DIExpression()), !dbg !4042
  %3 = udiv i64 9223372036854775807, %1, !dbg !4043
  %4 = icmp ult i64 %3, %0, !dbg !4043
  br i1 %4, label %8, label %5, !dbg !4044

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #20, !dbg !4045
  call void @llvm.dbg.value(metadata i8* %6, metadata !4031, metadata !DIExpression()), !dbg !4042
  %7 = icmp eq i8* %6, null, !dbg !4046
  br i1 %7, label %8, label %9, !dbg !4047

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #23, !dbg !4048
  unreachable, !dbg !4048

9:                                                ; preds = %5
  ret i8* %6, !dbg !4049
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4050 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4054, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i64 %1, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i64 %1, metadata !3865, metadata !DIExpression()) #20, !dbg !4057
  %3 = tail call noalias i8* @malloc(i64 %1) #20, !dbg !4059
  call void @llvm.dbg.value(metadata i8* %3, metadata !3870, metadata !DIExpression()) #20, !dbg !4057
  %4 = icmp eq i8* %3, null, !dbg !4060
  %5 = icmp ne i64 %1, 0, !dbg !4061
  %6 = and i1 %5, %4, !dbg !4062
  br i1 %6, label %7, label %8, !dbg !4062

7:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !4063
  unreachable, !dbg !4063

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4064, metadata !DIExpression()) #20, !dbg !4073
  call void @llvm.dbg.value(metadata i8* %0, metadata !4071, metadata !DIExpression()) #20, !dbg !4073
  call void @llvm.dbg.value(metadata i64 %1, metadata !4072, metadata !DIExpression()) #20, !dbg !4073
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #20, !dbg !4075
  ret i8* %3, !dbg !4076
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4077 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4079, metadata !DIExpression()), !dbg !4080
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !4081
  %3 = add i64 %2, 1, !dbg !4082
  call void @llvm.dbg.value(metadata i8* %0, metadata !4054, metadata !DIExpression()) #20, !dbg !4083
  call void @llvm.dbg.value(metadata i64 %3, metadata !4055, metadata !DIExpression()) #20, !dbg !4083
  call void @llvm.dbg.value(metadata i64 %3, metadata !3865, metadata !DIExpression()) #20, !dbg !4085
  %4 = tail call noalias i8* @malloc(i64 %3) #20, !dbg !4087
  call void @llvm.dbg.value(metadata i8* %4, metadata !3870, metadata !DIExpression()) #20, !dbg !4085
  %5 = icmp eq i8* %4, null, !dbg !4088
  %6 = icmp ne i64 %3, 0, !dbg !4089
  %7 = and i1 %6, %5, !dbg !4090
  br i1 %7, label %8, label %9, !dbg !4090

8:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !4091
  unreachable, !dbg !4091

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4064, metadata !DIExpression()) #20, !dbg !4092
  call void @llvm.dbg.value(metadata i8* %0, metadata !4071, metadata !DIExpression()) #20, !dbg !4092
  call void @llvm.dbg.value(metadata i64 %3, metadata !4072, metadata !DIExpression()) #20, !dbg !4092
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #20, !dbg !4094
  ret i8* %4, !dbg !4095
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4096 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4097, !tbaa !1308
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.128, i64 0, i64 0), i32 5) #20, !dbg !4098
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i64 0, i64 0), i8* %2) #20, !dbg !4099
  tail call void @abort() #23, !dbg !4100
  unreachable, !dbg !4100
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoumax(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i8* %5, i32 %6) local_unnamed_addr #8 !dbg !4101 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4106, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.value(metadata i32 %1, metadata !4107, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.value(metadata i64 %2, metadata !4108, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.value(metadata i64 %3, metadata !4109, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.value(metadata i8* %4, metadata !4110, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.value(metadata i8* %5, metadata !4111, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.value(metadata i32 %6, metadata !4112, metadata !DIExpression()), !dbg !4116
  %9 = bitcast i64* %8 to i8*, !dbg !4117
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #20, !dbg !4117
  call void @llvm.dbg.value(metadata i64* %8, metadata !4115, metadata !DIExpression(DW_OP_deref)), !dbg !4116
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #20, !dbg !4118
  call void @llvm.dbg.value(metadata i32 %10, metadata !4113, metadata !DIExpression()), !dbg !4116
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %23
    i32 3, label %25
  ], !dbg !4119

11:                                               ; preds = %7
  %12 = tail call i32* @__errno_location() #25, !dbg !4120
  br label %27, !dbg !4119

13:                                               ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !4123, !tbaa !1367
  call void @llvm.dbg.value(metadata i64 %14, metadata !4115, metadata !DIExpression()), !dbg !4116
  %15 = icmp ult i64 %14, %2, !dbg !4127
  %16 = icmp ugt i64 %14, %3, !dbg !4128
  %17 = or i1 %15, %16, !dbg !4129
  br i1 %17, label %18, label %36, !dbg !4129

18:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !4113, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.value(metadata i64 %14, metadata !4115, metadata !DIExpression()), !dbg !4116
  %19 = icmp ugt i64 %14, 1073741823, !dbg !4130
  %20 = tail call i32* @__errno_location() #25, !dbg !4133
  br i1 %19, label %21, label %22, !dbg !4134

21:                                               ; preds = %18
  store i32 75, i32* %20, align 4, !dbg !4135, !tbaa !1308
  call void @llvm.dbg.value(metadata i32 undef, metadata !4113, metadata !DIExpression()), !dbg !4116
  br label %27, !dbg !4136

22:                                               ; preds = %18
  store i32 34, i32* %20, align 4, !dbg !4137, !tbaa !1308
  call void @llvm.dbg.value(metadata i32 undef, metadata !4113, metadata !DIExpression()), !dbg !4116
  br label %27, !dbg !4136

23:                                               ; preds = %7
  %24 = tail call i32* @__errno_location() #25, !dbg !4138
  store i32 75, i32* %24, align 4, !dbg !4140, !tbaa !1308
  call void @llvm.dbg.value(metadata i32 undef, metadata !4113, metadata !DIExpression()), !dbg !4116
  br label %27, !dbg !4136

25:                                               ; preds = %7
  %26 = tail call i32* @__errno_location() #25, !dbg !4141
  store i32 0, i32* %26, align 4, !dbg !4143, !tbaa !1308
  call void @llvm.dbg.value(metadata i32 undef, metadata !4113, metadata !DIExpression()), !dbg !4116
  br label %27, !dbg !4136

27:                                               ; preds = %11, %25, %23, %22, %21
  %28 = phi i32* [ %12, %11 ], [ %26, %25 ], [ %24, %23 ], [ %20, %22 ], [ %20, %21 ], !dbg !4120
  %29 = icmp eq i32 %6, 0, !dbg !4144
  %30 = select i1 %29, i32 1, i32 %6, !dbg !4144
  %31 = load i32, i32* %28, align 4, !dbg !4120, !tbaa !1308
  %32 = icmp eq i32 %31, 22, !dbg !4145
  %33 = select i1 %32, i32 0, i32 %31, !dbg !4120
  %34 = call i8* @quote(i8* %0) #20, !dbg !4146
  call void (i32, i32, i8*, ...) @error(i32 %30, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i64 0, i64 0), i8* %5, i8* %34) #20, !dbg !4147
  %35 = load i64, i64* %8, align 8, !dbg !4148, !tbaa !1367
  br label %36, !dbg !4149

36:                                               ; preds = %13, %27
  %37 = phi i64 [ %14, %13 ], [ %35, %27 ], !dbg !4148
  call void @llvm.dbg.value(metadata i64 %37, metadata !4115, metadata !DIExpression()), !dbg !4116
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #20, !dbg !4150
  ret i64 %37, !dbg !4151
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoumax(i8* %0, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5) local_unnamed_addr #8 !dbg !4152 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4156, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata i64 %1, metadata !4157, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata i64 %2, metadata !4158, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata i8* %3, metadata !4159, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata i8* %4, metadata !4160, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata i32 %5, metadata !4161, metadata !DIExpression()), !dbg !4162
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !4163
  ret i64 %7, !dbg !4164
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !4165 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4171, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i8** %1, metadata !4172, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i32 %2, metadata !4173, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i64* %3, metadata !4174, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i8* %4, metadata !4175, metadata !DIExpression()), !dbg !4189
  %7 = bitcast i8** %6 to i8*, !dbg !4190
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #20, !dbg !4190
  call void @llvm.dbg.value(metadata i32 0, metadata !4179, metadata !DIExpression()), !dbg !4189
  %8 = icmp ult i32 %2, 37, !dbg !4191
  br i1 %8, label %10, label %9, !dbg !4191

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.135, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.136, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #23, !dbg !4191
  unreachable, !dbg !4191

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4194
  call void @llvm.dbg.value(metadata i8** %25, metadata !4177, metadata !DIExpression()), !dbg !4189
  %12 = tail call i32* @__errno_location() #25, !dbg !4195
  store i32 0, i32* %12, align 4, !dbg !4196, !tbaa !1308
  call void @llvm.dbg.value(metadata i8* %0, metadata !4180, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i8 undef, metadata !4183, metadata !DIExpression()), !dbg !4197
  %13 = tail call i16** @__ctype_b_loc() #25, !dbg !4197
  %14 = load i16*, i16** %13, align 8, !dbg !4197, !tbaa !1190
  br label %15, !dbg !4198

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !4197
  %17 = load i8, i8* %16, align 1, !dbg !4197, !tbaa !1378
  call void @llvm.dbg.value(metadata i8 %17, metadata !4183, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i8* %16, metadata !4180, metadata !DIExpression()), !dbg !4197
  %18 = zext i8 %17 to i64, !dbg !4199
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4199
  %20 = load i16, i16* %19, align 2, !dbg !4199, !tbaa !2669
  %21 = and i16 %20, 8192, !dbg !4199
  %22 = icmp eq i16 %21, 0, !dbg !4198
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4200
  call void @llvm.dbg.value(metadata i8* %23, metadata !4180, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i8 undef, metadata !4183, metadata !DIExpression()), !dbg !4197
  br i1 %22, label %24, label %15, !dbg !4198, !llvm.loop !4201

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4194
  %26 = icmp eq i8 %17, 45, !dbg !4203
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %0, metadata !4205, metadata !DIExpression()) #20, !dbg !4214
  call void @llvm.dbg.value(metadata i8** %25, metadata !4212, metadata !DIExpression()) #20, !dbg !4214
  call void @llvm.dbg.value(metadata i32 %2, metadata !4213, metadata !DIExpression()) #20, !dbg !4214
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #20, !dbg !4216
  call void @llvm.dbg.value(metadata i64 %28, metadata !4178, metadata !DIExpression()), !dbg !4189
  %29 = load i8*, i8** %25, align 8, !dbg !4217, !tbaa !1190
  %30 = icmp eq i8* %29, %0, !dbg !4219
  br i1 %30, label %31, label %40, !dbg !4220

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4221
  br i1 %32, label %285, label %33, !dbg !4224

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4225, !tbaa !1378
  %35 = icmp eq i8 %34, 0, !dbg !4225
  br i1 %35, label %285, label %36, !dbg !4226

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4225
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #22, !dbg !4227
  %39 = icmp eq i8* %38, null, !dbg !4227
  br i1 %39, label %285, label %47, !dbg !4228

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4229, !tbaa !1308
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4231

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !4179, metadata !DIExpression()), !dbg !4189
  br label %43, !dbg !4232

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !4189
  call void @llvm.dbg.value(metadata i32 %44, metadata !4179, metadata !DIExpression()), !dbg !4189
  %45 = icmp eq i8* %4, null, !dbg !4234
  br i1 %45, label %46, label %47, !dbg !4236

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !4178, metadata !DIExpression()), !dbg !4189
  store i64 %28, i64* %3, align 8, !dbg !4237, !tbaa !1367
  br label %285, !dbg !4239

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4240, !tbaa !1378
  %51 = sext i8 %50 to i32, !dbg !4240
  %52 = icmp eq i8 %50, 0, !dbg !4241
  br i1 %52, label %282, label %53, !dbg !4242

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !4184, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i32 1, metadata !4187, metadata !DIExpression()), !dbg !4243
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #22, !dbg !4244
  %55 = icmp eq i8* %54, null, !dbg !4244
  br i1 %55, label %56, label %58, !dbg !4246

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !4178, metadata !DIExpression()), !dbg !4189
  store i64 %49, i64* %3, align 8, !dbg !4247, !tbaa !1367
  %57 = or i32 %48, 2, !dbg !4249
  br label %285, !dbg !4250

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
  ], !dbg !4251

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #22, !dbg !4252
  %61 = icmp eq i8* %60, null, !dbg !4252
  br i1 %61, label %72, label %62, !dbg !4255

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4256
  %64 = load i8, i8* %63, align 1, !dbg !4256, !tbaa !1378
  %65 = sext i8 %64 to i32, !dbg !4256
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4257

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4258
  %68 = load i8, i8* %67, align 1, !dbg !4258, !tbaa !1378
  %69 = icmp eq i8 %68, 66, !dbg !4261
  %70 = select i1 %69, i64 3, i64 1, !dbg !4262
  br label %72, !dbg !4262

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !4184, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i32 2, metadata !4187, metadata !DIExpression()), !dbg !4243
  br label %72, !dbg !4263

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !4187, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i32 undef, metadata !4184, metadata !DIExpression()), !dbg !4243
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
  ], !dbg !4264

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4265, metadata !DIExpression()) #20, !dbg !4273
  call void @llvm.dbg.value(metadata i32 6, metadata !4272, metadata !DIExpression()) #20, !dbg !4273
  call void @llvm.dbg.value(metadata i32 undef, metadata !4276, metadata !DIExpression()) #20, !dbg !4282
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4284
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4284
  %78 = mul i64 %49, %73, !dbg !4286
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4286
  call void @llvm.dbg.value(metadata i1 %77, metadata !4265, metadata !DIExpression()) #20, !dbg !4273
  call void @llvm.dbg.value(metadata i32 5, metadata !4272, metadata !DIExpression()) #20, !dbg !4273
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #20, !dbg !4284
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !4284
  %82 = mul i64 %79, %73, !dbg !4286
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4286
  %84 = or i1 %77, %81, !dbg !4287
  call void @llvm.dbg.value(metadata i1 %84, metadata !4265, metadata !DIExpression()) #20, !dbg !4273
  call void @llvm.dbg.value(metadata i32 4, metadata !4272, metadata !DIExpression()) #20, !dbg !4273
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #20, !dbg !4284
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !4284
  %87 = mul i64 %83, %73, !dbg !4286
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !4286
  %89 = or i1 %84, %86, !dbg !4287
  call void @llvm.dbg.value(metadata i1 %89, metadata !4265, metadata !DIExpression()) #20, !dbg !4273
  call void @llvm.dbg.value(metadata i32 3, metadata !4272, metadata !DIExpression()) #20, !dbg !4273
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #20, !dbg !4284
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !4284
  %92 = mul i64 %88, %73, !dbg !4286
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !4286
  %94 = or i1 %89, %91, !dbg !4287
  call void @llvm.dbg.value(metadata i1 %94, metadata !4265, metadata !DIExpression()) #20, !dbg !4273
  call void @llvm.dbg.value(metadata i32 2, metadata !4272, metadata !DIExpression()) #20, !dbg !4273
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #20, !dbg !4284
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !4284
  %97 = mul i64 %93, %73, !dbg !4286
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !4286
  %99 = or i1 %94, %96, !dbg !4287
  call void @llvm.dbg.value(metadata i1 %99, metadata !4265, metadata !DIExpression()) #20, !dbg !4273
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()) #20, !dbg !4273
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #20, !dbg !4284
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !4284
  %102 = mul i64 %98, %73, !dbg !4286
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !4286
  %104 = or i1 %99, %101, !dbg !4287
  call void @llvm.dbg.value(metadata i1 %104, metadata !4265, metadata !DIExpression()) #20, !dbg !4273
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()) #20, !dbg !4273
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #20, !dbg !4284
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !4284
  %107 = mul i64 %103, %73, !dbg !4286
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4286
  %109 = or i1 %104, %106, !dbg !4287
  call void @llvm.dbg.value(metadata i1 %109, metadata !4265, metadata !DIExpression()) #20, !dbg !4273
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4273
  br label %272, !dbg !4288

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4265, metadata !DIExpression()) #20, !dbg !4289
  call void @llvm.dbg.value(metadata i32 7, metadata !4272, metadata !DIExpression()) #20, !dbg !4289
  call void @llvm.dbg.value(metadata i32 undef, metadata !4276, metadata !DIExpression()) #20, !dbg !4291
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4293
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !4293
  %113 = mul i64 %49, %73, !dbg !4294
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !4294
  call void @llvm.dbg.value(metadata i1 %112, metadata !4265, metadata !DIExpression()) #20, !dbg !4289
  call void @llvm.dbg.value(metadata i32 6, metadata !4272, metadata !DIExpression()) #20, !dbg !4289
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #20, !dbg !4293
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !4293
  %117 = mul i64 %114, %73, !dbg !4294
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4294
  %119 = or i1 %112, %116, !dbg !4295
  call void @llvm.dbg.value(metadata i1 %119, metadata !4265, metadata !DIExpression()) #20, !dbg !4289
  call void @llvm.dbg.value(metadata i32 5, metadata !4272, metadata !DIExpression()) #20, !dbg !4289
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #20, !dbg !4293
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !4293
  %122 = mul i64 %118, %73, !dbg !4294
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !4294
  %124 = or i1 %119, %121, !dbg !4295
  call void @llvm.dbg.value(metadata i1 %124, metadata !4265, metadata !DIExpression()) #20, !dbg !4289
  call void @llvm.dbg.value(metadata i32 4, metadata !4272, metadata !DIExpression()) #20, !dbg !4289
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #20, !dbg !4293
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !4293
  %127 = mul i64 %123, %73, !dbg !4294
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !4294
  %129 = or i1 %124, %126, !dbg !4295
  call void @llvm.dbg.value(metadata i1 %129, metadata !4265, metadata !DIExpression()) #20, !dbg !4289
  call void @llvm.dbg.value(metadata i32 3, metadata !4272, metadata !DIExpression()) #20, !dbg !4289
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #20, !dbg !4293
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !4293
  %132 = mul i64 %128, %73, !dbg !4294
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !4294
  %134 = or i1 %129, %131, !dbg !4295
  call void @llvm.dbg.value(metadata i1 %134, metadata !4265, metadata !DIExpression()) #20, !dbg !4289
  call void @llvm.dbg.value(metadata i32 2, metadata !4272, metadata !DIExpression()) #20, !dbg !4289
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #20, !dbg !4293
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !4293
  %137 = mul i64 %133, %73, !dbg !4294
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4294
  %139 = or i1 %134, %136, !dbg !4295
  call void @llvm.dbg.value(metadata i1 %139, metadata !4265, metadata !DIExpression()) #20, !dbg !4289
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()) #20, !dbg !4289
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #20, !dbg !4293
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !4293
  %142 = mul i64 %138, %73, !dbg !4294
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !4294
  %144 = or i1 %139, %141, !dbg !4295
  call void @llvm.dbg.value(metadata i1 %144, metadata !4265, metadata !DIExpression()) #20, !dbg !4289
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()) #20, !dbg !4289
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #20, !dbg !4293
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !4293
  %147 = mul i64 %143, %73, !dbg !4294
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4294
  %149 = or i1 %144, %146, !dbg !4295
  call void @llvm.dbg.value(metadata i1 %149, metadata !4265, metadata !DIExpression()) #20, !dbg !4289
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4289
  br label %272, !dbg !4288

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4265, metadata !DIExpression()) #20, !dbg !4296
  call void @llvm.dbg.value(metadata i32 4, metadata !4272, metadata !DIExpression()) #20, !dbg !4296
  call void @llvm.dbg.value(metadata i32 undef, metadata !4276, metadata !DIExpression()) #20, !dbg !4298
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4300
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !4300
  %153 = mul i64 %49, %73, !dbg !4301
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !4301
  call void @llvm.dbg.value(metadata i1 %152, metadata !4265, metadata !DIExpression()) #20, !dbg !4296
  call void @llvm.dbg.value(metadata i32 3, metadata !4272, metadata !DIExpression()) #20, !dbg !4296
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #20, !dbg !4300
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !4300
  %157 = mul i64 %154, %73, !dbg !4301
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !4301
  %159 = or i1 %152, %156, !dbg !4302
  call void @llvm.dbg.value(metadata i1 %159, metadata !4265, metadata !DIExpression()) #20, !dbg !4296
  call void @llvm.dbg.value(metadata i32 2, metadata !4272, metadata !DIExpression()) #20, !dbg !4296
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #20, !dbg !4300
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !4300
  %162 = mul i64 %158, %73, !dbg !4301
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !4301
  %164 = or i1 %159, %161, !dbg !4302
  call void @llvm.dbg.value(metadata i1 %164, metadata !4265, metadata !DIExpression()) #20, !dbg !4296
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()) #20, !dbg !4296
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #20, !dbg !4300
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !4300
  %167 = mul i64 %163, %73, !dbg !4301
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !4301
  %169 = or i1 %164, %166, !dbg !4302
  call void @llvm.dbg.value(metadata i1 %169, metadata !4265, metadata !DIExpression()) #20, !dbg !4296
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()) #20, !dbg !4296
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #20, !dbg !4300
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !4300
  %172 = mul i64 %168, %73, !dbg !4301
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !4301
  %174 = or i1 %169, %171, !dbg !4302
  call void @llvm.dbg.value(metadata i1 %174, metadata !4265, metadata !DIExpression()) #20, !dbg !4296
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4296
  br label %272, !dbg !4288

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4265, metadata !DIExpression()) #20, !dbg !4303
  call void @llvm.dbg.value(metadata i32 5, metadata !4272, metadata !DIExpression()) #20, !dbg !4303
  call void @llvm.dbg.value(metadata i32 undef, metadata !4276, metadata !DIExpression()) #20, !dbg !4305
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4307
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !4307
  %178 = mul i64 %49, %73, !dbg !4308
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !4308
  call void @llvm.dbg.value(metadata i1 %177, metadata !4265, metadata !DIExpression()) #20, !dbg !4303
  call void @llvm.dbg.value(metadata i32 4, metadata !4272, metadata !DIExpression()) #20, !dbg !4303
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #20, !dbg !4307
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !4307
  %182 = mul i64 %179, %73, !dbg !4308
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !4308
  %184 = or i1 %177, %181, !dbg !4309
  call void @llvm.dbg.value(metadata i1 %184, metadata !4265, metadata !DIExpression()) #20, !dbg !4303
  call void @llvm.dbg.value(metadata i32 3, metadata !4272, metadata !DIExpression()) #20, !dbg !4303
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #20, !dbg !4307
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !4307
  %187 = mul i64 %183, %73, !dbg !4308
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !4308
  %189 = or i1 %184, %186, !dbg !4309
  call void @llvm.dbg.value(metadata i1 %189, metadata !4265, metadata !DIExpression()) #20, !dbg !4303
  call void @llvm.dbg.value(metadata i32 2, metadata !4272, metadata !DIExpression()) #20, !dbg !4303
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #20, !dbg !4307
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !4307
  %192 = mul i64 %188, %73, !dbg !4308
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !4308
  %194 = or i1 %189, %191, !dbg !4309
  call void @llvm.dbg.value(metadata i1 %194, metadata !4265, metadata !DIExpression()) #20, !dbg !4303
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()) #20, !dbg !4303
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #20, !dbg !4307
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4307
  %197 = mul i64 %193, %73, !dbg !4308
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4308
  %199 = or i1 %194, %196, !dbg !4309
  call void @llvm.dbg.value(metadata i1 %199, metadata !4265, metadata !DIExpression()) #20, !dbg !4303
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()) #20, !dbg !4303
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #20, !dbg !4307
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !4307
  %202 = mul i64 %198, %73, !dbg !4308
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !4308
  %204 = or i1 %199, %201, !dbg !4309
  call void @llvm.dbg.value(metadata i1 %204, metadata !4265, metadata !DIExpression()) #20, !dbg !4303
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4303
  br label %272, !dbg !4288

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !4276, metadata !DIExpression()) #20, !dbg !4310
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #20, !dbg !4312
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !4312
  %208 = shl i64 %49, 9, !dbg !4313
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !4313
  call void @llvm.dbg.value(metadata i1 %207, metadata !4188, metadata !DIExpression()), !dbg !4243
  br label %272, !dbg !4314

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !4276, metadata !DIExpression()) #20, !dbg !4315
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #20, !dbg !4317
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !4317
  %213 = shl i64 %49, 10, !dbg !4318
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4318
  call void @llvm.dbg.value(metadata i1 %212, metadata !4188, metadata !DIExpression()), !dbg !4243
  br label %272, !dbg !4319

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4271, metadata !DIExpression()) #20, !dbg !4320
  call void @llvm.dbg.value(metadata i32 0, metadata !4265, metadata !DIExpression()) #20, !dbg !4320
  call void @llvm.dbg.value(metadata i32 2, metadata !4272, metadata !DIExpression()) #20, !dbg !4320
  call void @llvm.dbg.value(metadata i32 undef, metadata !4276, metadata !DIExpression()) #20, !dbg !4322
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4324
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !4324
  %218 = mul i64 %49, %73, !dbg !4325
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !4325
  call void @llvm.dbg.value(metadata i1 %217, metadata !4265, metadata !DIExpression()) #20, !dbg !4320
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()) #20, !dbg !4320
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #20, !dbg !4324
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !4324
  %222 = mul i64 %219, %73, !dbg !4325
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !4325
  %224 = or i1 %217, %221, !dbg !4326
  call void @llvm.dbg.value(metadata i1 %224, metadata !4265, metadata !DIExpression()) #20, !dbg !4320
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()) #20, !dbg !4320
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #20, !dbg !4324
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !4324
  %227 = mul i64 %223, %73, !dbg !4325
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4325
  %229 = or i1 %224, %226, !dbg !4326
  call void @llvm.dbg.value(metadata i1 %229, metadata !4265, metadata !DIExpression()) #20, !dbg !4320
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4320
  br label %272, !dbg !4288

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4271, metadata !DIExpression()) #20, !dbg !4327
  call void @llvm.dbg.value(metadata i32 0, metadata !4265, metadata !DIExpression()) #20, !dbg !4327
  call void @llvm.dbg.value(metadata i32 undef, metadata !4272, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4327
  call void @llvm.dbg.value(metadata i32 undef, metadata !4276, metadata !DIExpression()) #20, !dbg !4329
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4331
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !4331
  %233 = mul i64 %49, %73, !dbg !4332
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !4332
  call void @llvm.dbg.value(metadata i1 %232, metadata !4265, metadata !DIExpression()) #20, !dbg !4327
  call void @llvm.dbg.value(metadata i32 undef, metadata !4272, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4327
  br label %272, !dbg !4288

235:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4271, metadata !DIExpression()) #20, !dbg !4333
  call void @llvm.dbg.value(metadata i32 0, metadata !4265, metadata !DIExpression()) #20, !dbg !4333
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()) #20, !dbg !4333
  call void @llvm.dbg.value(metadata i32 undef, metadata !4276, metadata !DIExpression()) #20, !dbg !4335
  %236 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4337
  %237 = extractvalue { i64, i1 } %236, 1, !dbg !4337
  %238 = mul i64 %49, %73, !dbg !4338
  %239 = select i1 %237, i64 -1, i64 %238, !dbg !4338
  call void @llvm.dbg.value(metadata i1 %237, metadata !4265, metadata !DIExpression()) #20, !dbg !4333
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()) #20, !dbg !4333
  %240 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %239) #20, !dbg !4337
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !4337
  %242 = mul i64 %239, %73, !dbg !4338
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !4338
  %244 = or i1 %237, %241, !dbg !4339
  call void @llvm.dbg.value(metadata i1 %244, metadata !4265, metadata !DIExpression()) #20, !dbg !4333
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4333
  br label %272, !dbg !4288

245:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4271, metadata !DIExpression()) #20, !dbg !4340
  call void @llvm.dbg.value(metadata i32 0, metadata !4265, metadata !DIExpression()) #20, !dbg !4340
  call void @llvm.dbg.value(metadata i32 3, metadata !4272, metadata !DIExpression()) #20, !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4276, metadata !DIExpression()) #20, !dbg !4342
  %246 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #20, !dbg !4344
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !4344
  %248 = mul i64 %49, %73, !dbg !4345
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !4345
  call void @llvm.dbg.value(metadata i1 %247, metadata !4265, metadata !DIExpression()) #20, !dbg !4340
  call void @llvm.dbg.value(metadata i32 2, metadata !4272, metadata !DIExpression()) #20, !dbg !4340
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %249) #20, !dbg !4344
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4344
  %252 = mul i64 %249, %73, !dbg !4345
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4345
  %254 = or i1 %247, %251, !dbg !4346
  call void @llvm.dbg.value(metadata i1 %254, metadata !4265, metadata !DIExpression()) #20, !dbg !4340
  call void @llvm.dbg.value(metadata i32 1, metadata !4272, metadata !DIExpression()) #20, !dbg !4340
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #20, !dbg !4344
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4344
  %257 = mul i64 %253, %73, !dbg !4345
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4345
  %259 = or i1 %254, %256, !dbg !4346
  call void @llvm.dbg.value(metadata i1 %259, metadata !4265, metadata !DIExpression()) #20, !dbg !4340
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()) #20, !dbg !4340
  %260 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %258) #20, !dbg !4344
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !4344
  %262 = mul i64 %258, %73, !dbg !4345
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !4345
  %264 = or i1 %259, %261, !dbg !4346
  call void @llvm.dbg.value(metadata i1 %264, metadata !4265, metadata !DIExpression()) #20, !dbg !4340
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #20, !dbg !4340
  br label %272, !dbg !4288

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4276, metadata !DIExpression()) #20, !dbg !4347
  %266 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #20, !dbg !4349
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !4349
  %268 = shl i64 %49, 1, !dbg !4350
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !4350
  call void @llvm.dbg.value(metadata i1 %267, metadata !4188, metadata !DIExpression()), !dbg !4243
  br label %272, !dbg !4351

270:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !4178, metadata !DIExpression()), !dbg !4189
  store i64 %49, i64* %3, align 8, !dbg !4352, !tbaa !1367
  %271 = or i32 %48, 2, !dbg !4353
  br label %285, !dbg !4354

272:                                              ; preds = %75, %110, %245, %150, %235, %230, %215, %175, %205, %210, %265, %72
  %273 = phi i64 [ %269, %265 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %234, %230 ], [ %243, %235 ], [ %173, %150 ], [ %263, %245 ], [ %148, %110 ], [ %108, %75 ], !dbg !4189
  %274 = phi i1 [ %267, %265 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %232, %230 ], [ %244, %235 ], [ %174, %150 ], [ %264, %245 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !4355
  call void @llvm.dbg.value(metadata i32 %275, metadata !4188, metadata !DIExpression()), !dbg !4243
  %276 = or i32 %48, %275, !dbg !4288
  call void @llvm.dbg.value(metadata i32 %276, metadata !4179, metadata !DIExpression()), !dbg !4189
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4356
  store i8* %277, i8** %25, align 8, !dbg !4356, !tbaa !1190
  %278 = load i8, i8* %277, align 1, !dbg !4357, !tbaa !1378
  %279 = icmp eq i8 %278, 0, !dbg !4357
  %280 = or i32 %276, 2, !dbg !4359
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !4360
  call void @llvm.dbg.value(metadata i32 %281, metadata !4179, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i32 %281, metadata !4179, metadata !DIExpression()), !dbg !4189
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !4361
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !4362
  call void @llvm.dbg.value(metadata i32 %284, metadata !4179, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i64 %283, metadata !4178, metadata !DIExpression()), !dbg !4189
  store i64 %283, i64* %3, align 8, !dbg !4363, !tbaa !1367
  br label %285, !dbg !4364

285:                                              ; preds = %24, %56, %270, %40, %31, %33, %36, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %271, %270 ], !dbg !4189
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #20, !dbg !4365
  ret i32 %286, !dbg !4365
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
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #11 !dbg !4366 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4368, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i64 %1, metadata !4369, metadata !DIExpression()), !dbg !4374
  %3 = icmp eq i64 %0, 0, !dbg !4375
  %4 = icmp eq i64 %1, 0, !dbg !4376
  %5 = or i1 %3, %4, !dbg !4377
  br i1 %5, label %11, label %6, !dbg !4377

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4371, metadata !DIExpression()), !dbg !4378
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4379
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4379
  br i1 %8, label %9, label %11, !dbg !4381

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #25, !dbg !4382
  store i32 12, i32* %10, align 4, !dbg !4384, !tbaa !1308
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4368, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i64 %12, metadata !4369, metadata !DIExpression()), !dbg !4374
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #20, !dbg !4385
  call void @llvm.dbg.value(metadata i8* %14, metadata !4370, metadata !DIExpression()), !dbg !4374
  br label %15, !dbg !4386

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4374
  ret i8* %16, !dbg !4387
}

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4388 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4394, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i32 0, metadata !4395, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i32 0, metadata !4397, metadata !DIExpression()), !dbg !4398
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4399
  call void @llvm.dbg.value(metadata i32 %2, metadata !4396, metadata !DIExpression()), !dbg !4398
  %3 = icmp slt i32 %2, 0, !dbg !4400
  br i1 %3, label %4, label %6, !dbg !4402

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4403
  br label %24, !dbg !4404

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !4405
  %8 = icmp eq i32 %7, 0, !dbg !4405
  br i1 %8, label %13, label %9, !dbg !4407

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4408
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #20, !dbg !4409
  %12 = icmp eq i64 %11, -1, !dbg !4410
  br i1 %12, label %16, label %13, !dbg !4411

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #20, !dbg !4412
  %15 = icmp eq i32 %14, 0, !dbg !4412
  br i1 %15, label %16, label %18, !dbg !4413

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4395, metadata !DIExpression()), !dbg !4398
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4414
  call void @llvm.dbg.value(metadata i32 %21, metadata !4397, metadata !DIExpression()), !dbg !4398
  br label %24, !dbg !4415

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #25, !dbg !4416
  %20 = load i32, i32* %19, align 4, !dbg !4416, !tbaa !1308
  call void @llvm.dbg.value(metadata i32 %20, metadata !4395, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i32 %20, metadata !4395, metadata !DIExpression()), !dbg !4398
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4414
  call void @llvm.dbg.value(metadata i32 %21, metadata !4397, metadata !DIExpression()), !dbg !4398
  %22 = icmp eq i32 %20, 0, !dbg !4417
  br i1 %22, label %24, label %23, !dbg !4415

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4419, !tbaa !1308
  call void @llvm.dbg.value(metadata i32 -1, metadata !4397, metadata !DIExpression()), !dbg !4398
  br label %24, !dbg !4421

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4398
  ret i32 %25, !dbg !4422
}

; Function Attrs: nofree nounwind
declare !dbg !605 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !606 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4423 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4429, metadata !DIExpression()), !dbg !4430
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4431
  br i1 %2, label %6, label %3, !dbg !4433

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !4434
  %5 = icmp eq i32 %4, 0, !dbg !4434
  br i1 %5, label %6, label %8, !dbg !4435

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4436
  br label %17, !dbg !4437

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4438, metadata !DIExpression()) #20, !dbg !4443
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4445
  %10 = load i32, i32* %9, align 8, !dbg !4445, !tbaa !1405
  %11 = and i32 %10, 256, !dbg !4447
  %12 = icmp eq i32 %11, 0, !dbg !4447
  br i1 %12, label %15, label %13, !dbg !4448

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #20, !dbg !4449
  br label %15, !dbg !4449

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4450
  br label %17, !dbg !4451

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4430
  ret i32 %18, !dbg !4452
}

; Function Attrs: nofree nounwind
declare !dbg !614 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4453 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4459, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata i64 %1, metadata !4460, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata i32 %2, metadata !4461, metadata !DIExpression()), !dbg !4465
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4466
  %5 = load i8*, i8** %4, align 8, !dbg !4466, !tbaa !4467
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4468
  %7 = load i8*, i8** %6, align 8, !dbg !4468, !tbaa !4469
  %8 = icmp eq i8* %5, %7, !dbg !4470
  br i1 %8, label %9, label %28, !dbg !4471

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4472
  %11 = load i8*, i8** %10, align 8, !dbg !4472, !tbaa !1552
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4473
  %13 = load i8*, i8** %12, align 8, !dbg !4473, !tbaa !4474
  %14 = icmp eq i8* %11, %13, !dbg !4475
  br i1 %14, label %15, label %28, !dbg !4476

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4477
  %17 = load i8*, i8** %16, align 8, !dbg !4477, !tbaa !4478
  %18 = icmp eq i8* %17, null, !dbg !4479
  br i1 %18, label %19, label %28, !dbg !4480

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4481
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #20, !dbg !4482
  call void @llvm.dbg.value(metadata i64 %21, metadata !4462, metadata !DIExpression()), !dbg !4483
  %22 = icmp eq i64 %21, -1, !dbg !4484
  br i1 %22, label %30, label %23, !dbg !4486

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4487
  %25 = load i32, i32* %24, align 8, !dbg !4488, !tbaa !1405
  %26 = and i32 %25, -17, !dbg !4488
  store i32 %26, i32* %24, align 8, !dbg !4488, !tbaa !1405
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4489
  store i64 %21, i64* %27, align 8, !dbg !4490, !tbaa !4491
  br label %30, !dbg !4492

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4493
  br label %30, !dbg !4494

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4465
  ret i32 %31, !dbg !4495
}

; Function Attrs: nofree nounwind
declare !dbg !690 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4496 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4504, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i8* %1, metadata !4505, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i64 %2, metadata !4506, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4507, metadata !DIExpression()), !dbg !4513
  %6 = bitcast i32* %5 to i8*, !dbg !4514
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4514
  %7 = icmp eq i32* %0, null, !dbg !4515
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4517
  call void @llvm.dbg.value(metadata i32* %8, metadata !4504, metadata !DIExpression()), !dbg !4513
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #20, !dbg !4518
  call void @llvm.dbg.value(metadata i64 %9, metadata !4508, metadata !DIExpression()), !dbg !4513
  %10 = icmp ugt i64 %9, -3, !dbg !4519
  %11 = icmp ne i64 %2, 0, !dbg !4520
  %12 = and i1 %11, %10, !dbg !4521
  br i1 %12, label %13, label %18, !dbg !4521

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #20, !dbg !4522
  br i1 %14, label %18, label %15, !dbg !4523

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4524, !tbaa !1378
  call void @llvm.dbg.value(metadata i8 %16, metadata !4510, metadata !DIExpression()), !dbg !4525
  %17 = zext i8 %16 to i32, !dbg !4526
  store i32 %17, i32* %8, align 4, !dbg !4527, !tbaa !1308
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4513
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4528
  ret i64 %19, !dbg !4528
}

; Function Attrs: nounwind
declare !dbg !696 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4529 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4535, metadata !DIExpression()), !dbg !4540
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #20, !dbg !4541
  call void @llvm.dbg.value(metadata i1 undef, metadata !4536, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4542, metadata !DIExpression()), !dbg !4545
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4547
  %4 = load i32, i32* %3, align 8, !dbg !4547, !tbaa !1405
  %5 = and i32 %4, 32, !dbg !4547
  %6 = icmp eq i32 %5, 0, !dbg !4548
  call void @llvm.dbg.value(metadata i1 %6, metadata !4538, metadata !DIExpression()), !dbg !4540
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #20, !dbg !4549
  %8 = icmp ne i32 %7, 0, !dbg !4550
  call void @llvm.dbg.value(metadata i1 %8, metadata !4539, metadata !DIExpression()), !dbg !4540
  br i1 %6, label %9, label %19, !dbg !4551

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4553
  call void @llvm.dbg.value(metadata i1 %10, metadata !4536, metadata !DIExpression()), !dbg !4540
  %11 = xor i1 %8, true, !dbg !4554
  %12 = or i1 %10, %11, !dbg !4554
  %13 = sext i1 %8 to i32, !dbg !4554
  br i1 %12, label %22, label %14, !dbg !4554

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #25, !dbg !4555
  %16 = load i32, i32* %15, align 4, !dbg !4555, !tbaa !1308
  %17 = icmp ne i32 %16, 9, !dbg !4556
  %18 = sext i1 %17 to i32, !dbg !4557
  br label %22, !dbg !4557

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4558

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #25, !dbg !4560
  store i32 0, i32* %21, align 4, !dbg !4562, !tbaa !1308
  br label %22, !dbg !4560

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4540
  ret i32 %23, !dbg !4563
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4564 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4566, metadata !DIExpression()), !dbg !4571
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4572
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #20, !dbg !4572
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4567, metadata !DIExpression()), !dbg !4573
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #20, !dbg !4574
  %5 = icmp eq i32 %4, 0, !dbg !4574
  br i1 %5, label %6, label %13, !dbg !4576

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4577
  %8 = load i16, i16* %7, align 16, !dbg !4577
  %9 = icmp eq i16 %8, 67, !dbg !4577
  br i1 %9, label %13, label %10, !dbg !4578

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.151, i64 0, i64 0), i64 6), !dbg !4579
  %12 = icmp ne i32 %11, 0, !dbg !4580
  br label %13, !dbg !4578

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4571
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #20, !dbg !4581
  ret i1 %14, !dbg !4581
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4582 {
  %1 = tail call i8* @nl_langinfo(i32 14) #20, !dbg !4585
  call void @llvm.dbg.value(metadata i8* %1, metadata !4584, metadata !DIExpression()), !dbg !4586
  %2 = icmp eq i8* %1, null, !dbg !4587
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.154, i64 0, i64 0), i8* %1, !dbg !4589
  call void @llvm.dbg.value(metadata i8* %3, metadata !4584, metadata !DIExpression()), !dbg !4586
  %4 = load i8, i8* %3, align 1, !dbg !4590, !tbaa !1378
  %5 = icmp eq i8 %4, 0, !dbg !4594
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.155, i64 0, i64 0), i8* %3, !dbg !4595
  call void @llvm.dbg.value(metadata i8* %6, metadata !4584, metadata !DIExpression()), !dbg !4586
  ret i8* %6, !dbg !4596
}

; Function Attrs: nounwind
declare !dbg !1147 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4597 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4601, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata i8* %1, metadata !4602, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata i64 %2, metadata !4603, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata i32 %0, metadata !4605, metadata !DIExpression()) #20, !dbg !4614
  call void @llvm.dbg.value(metadata i8* %1, metadata !4608, metadata !DIExpression()) #20, !dbg !4614
  call void @llvm.dbg.value(metadata i64 %2, metadata !4609, metadata !DIExpression()) #20, !dbg !4614
  call void @llvm.dbg.value(metadata i32 %0, metadata !4616, metadata !DIExpression()) #20, !dbg !4622
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !4624
  call void @llvm.dbg.value(metadata i8* %4, metadata !4621, metadata !DIExpression()) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i8* %4, metadata !4610, metadata !DIExpression()) #20, !dbg !4614
  %5 = icmp eq i8* %4, null, !dbg !4625
  br i1 %5, label %6, label %9, !dbg !4626

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4627
  br i1 %7, label %19, label %8, !dbg !4630

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4631, !tbaa !1378
  br label %19, !dbg !4632

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !4633
  call void @llvm.dbg.value(metadata i64 %10, metadata !4611, metadata !DIExpression()) #20, !dbg !4634
  %11 = icmp ult i64 %10, %2, !dbg !4635
  br i1 %11, label %12, label %14, !dbg !4637

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4638
  call void @llvm.dbg.value(metadata i8* %1, metadata !4640, metadata !DIExpression()) #20, !dbg !4645
  call void @llvm.dbg.value(metadata i8* %4, metadata !4643, metadata !DIExpression()) #20, !dbg !4645
  call void @llvm.dbg.value(metadata i64 %13, metadata !4644, metadata !DIExpression()) #20, !dbg !4645
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #20, !dbg !4647
  br label %19, !dbg !4648

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4649
  br i1 %15, label %19, label %16, !dbg !4652

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4653
  call void @llvm.dbg.value(metadata i8* %1, metadata !4640, metadata !DIExpression()) #20, !dbg !4655
  call void @llvm.dbg.value(metadata i8* %4, metadata !4643, metadata !DIExpression()) #20, !dbg !4655
  call void @llvm.dbg.value(metadata i64 %17, metadata !4644, metadata !DIExpression()) #20, !dbg !4655
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #20, !dbg !4657
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4658
  store i8 0, i8* %18, align 1, !dbg !4659, !tbaa !1378
  br label %19, !dbg !4660

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4661
  ret i32 %20, !dbg !4662
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4663 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4665, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.value(metadata i32 %0, metadata !4616, metadata !DIExpression()) #20, !dbg !4667
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !4669
  call void @llvm.dbg.value(metadata i8* %2, metadata !4621, metadata !DIExpression()) #20, !dbg !4667
  ret i8* %2, !dbg !4670
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

!llvm.dbg.cu = !{!2, !202, !207, !225, !270, !435, !276, !317, !478, !429, !520, !541, !544, !560, !564, !567, !611, !652, !693, !712, !750, !757, !1150}
!llvm.ident = !{!1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153}
!llvm.module.flags = !{!1154, !1155, !1156, !1157, !1158}

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
!167 = !DISubprogram(name: "base64_decode_ctx_init", scope: !168, file: !168, line: 48, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!168 = !DIFile(filename: "./lib/base64.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!169 = !DISubroutineType(types: !170)
!170 = !{null, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base64_decode_context", file: !168, line: 35, size: 64, elements: !173)
!173 = !{!174, !175}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !172, file: !168, line: 37, baseType: !7, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !172, file: !168, line: 38, baseType: !176, size: 32, offset: 32)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 4)
!179 = !DISubprogram(name: "isbase64", scope: !168, file: !168, line: 41, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!180 = !DISubroutineType(types: !181)
!181 = !{!182, !35}
!182 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!183 = !DISubprogram(name: "base64_decode_ctx", scope: !168, file: !168, line: 50, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!184 = !DISubroutineType(types: !185)
!185 = !{!182, !171, !36, !95, !34, !186}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!187 = !DISubprogram(name: "fwrite_unlocked", scope: !41, file: !41, line: 675, type: !188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!188 = !DISubroutineType(types: !189)
!189 = !{!95, !190, !95, !95, !44}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!192 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!193 = !DISubprogram(name: "base64_encode", scope: !168, file: !168, line: 43, type: !194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
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
!206 = distinct !DIGlobalVariable(name: "b64c", scope: !207, file: !208, line: 62, type: !220, isLocal: true, isDefinition: true)
!207 = distinct !DICompileUnit(language: DW_LANG_C99, file: !208, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !209, globals: !213, splitDebugInlining: false, nameTableKind: None)
!208 = !DIFile(filename: "lib/base64.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!209 = !{!91, !210, !34}
!210 = !DISubprogram(name: "free", scope: !116, file: !116, line: 565, type: !211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !91}
!213 = !{!205, !214}
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(name: "b64", scope: !207, file: !208, line: 252, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 2048, elements: !218)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!218 = !{!219}
!219 = !DISubrange(count: 256)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 512, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 64)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "file_name", scope: !225, file: !226, line: 46, type: !36, isLocal: true, isDefinition: true)
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !227, globals: !265, splitDebugInlining: false, nameTableKind: None)
!226 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!227 = !{!228, !30, !264, !149}
!228 = !DISubprogram(name: "close_stream", scope: !229, file: !229, line: 2, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!229 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!230 = !DISubroutineType(types: !231)
!231 = !{!38, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !233, file: !46, line: 51, baseType: !38, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !233, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !233, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !233, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !233, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !233, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !233, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !233, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !233, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !233, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !233, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !233, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !233, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !233, file: !46, line: 70, baseType: !232, size: 64, offset: 832)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !233, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !233, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !233, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !233, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !233, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !233, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !233, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !233, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !233, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !233, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !233, file: !46, line: 93, baseType: !232, size: 64, offset: 1344)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !233, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !233, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !233, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !233, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!264 = !DISubprogram(name: "quotearg_colon", scope: !6, file: !6, line: 391, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!265 = !{!223, !266}
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !225, file: !226, line: 56, type: !182, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(name: "exit_failure", scope: !270, file: !271, line: 24, type: !273, isLocal: false, isDefinition: true)
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !272, splitDebugInlining: false, nameTableKind: None)
!271 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!272 = !{!268}
!273 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "program_name", scope: !276, file: !277, line: 33, type: !36, isLocal: false, isDefinition: true)
!276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !277, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !278, globals: !314, splitDebugInlining: false, nameTableKind: None)
!277 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!278 = !{!91, !279, !34}
!279 = !DISubprogram(name: "fputs", scope: !41, file: !41, line: 626, type: !280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!280 = !DISubroutineType(types: !281)
!281 = !{!38, !36, !282}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !283, file: !46, line: 51, baseType: !38, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !283, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !283, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !283, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !283, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !283, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !283, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !283, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !283, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !283, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !283, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !283, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !283, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !283, file: !46, line: 70, baseType: !282, size: 64, offset: 832)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !283, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !283, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !283, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !283, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !283, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !283, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !283, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !283, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !283, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !283, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !283, file: !46, line: 93, baseType: !282, size: 64, offset: 1344)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !283, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !283, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !283, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !283, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!314 = !{!274}
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !317, file: !318, line: 85, type: !423, isLocal: false, isDefinition: true)
!317 = distinct !DICompileUnit(language: DW_LANG_C99, file: !318, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !319, retainedTypes: !340, globals: !398, splitDebugInlining: false, nameTableKind: None)
!318 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!319 = !{!5, !320, !325}
!320 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !321)
!321 = !{!322, !323, !324}
!322 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!323 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!324 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!325 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !326, line: 46, baseType: !7, size: 32, elements: !327)
!326 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!327 = !{!328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339}
!328 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!329 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!330 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!331 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!332 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!333 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!334 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!335 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!336 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!337 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!338 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!339 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!340 = !{!341, !344, !210, !359, !38, !71, !362, !93, !376, !380, !30, !386, !390, !34, !163, !394, !395}
!341 = !DISubprogram(name: "xmemdup", scope: !164, file: !164, line: 62, type: !342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!342 = !DISubroutineType(types: !343)
!343 = !{!91, !190, !95}
!344 = !DISubprogram(name: "quotearg_alloc_mem", scope: !6, file: !6, line: 342, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!345 = !DISubroutineType(types: !346)
!346 = !{!34, !36, !95, !186, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !318, line: 65, size: 448, elements: !350)
!350 = !{!351, !352, !353, !357, !358}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !349, file: !318, line: 68, baseType: !5, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !349, file: !318, line: 71, baseType: !38, size: 32, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !349, file: !318, line: 75, baseType: !354, size: 256, offset: 64)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 8)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !349, file: !318, line: 78, baseType: !36, size: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !349, file: !318, line: 81, baseType: !36, size: 64, offset: 384)
!359 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !6, file: !6, line: 408, type: !360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!360 = !DISubroutineType(types: !361)
!361 = !{!34, !38, !36, !36, !36, !95}
!362 = !DISubprogram(name: "rpl_mbrtowc", scope: !363, file: !363, line: 717, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!363 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!364 = !DISubroutineType(types: !365)
!365 = !{!95, !135, !36, !95, !366}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 13, size: 64, elements: !369)
!368 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !367, file: !368, line: 15, baseType: !38, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !367, file: !368, line: 20, baseType: !372, size: 32, offset: 32)
!372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !367, file: !368, line: 16, size: 32, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !372, file: !368, line: 18, baseType: !7, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !372, file: !368, line: 19, baseType: !176, size: 32)
!376 = !DISubprogram(name: "iswprint", scope: !377, file: !377, line: 120, type: !378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!377 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!378 = !DISubroutineType(types: !379)
!379 = !{!38, !7}
!380 = !DISubprogram(name: "mbsinit", scope: !381, file: !381, line: 292, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!381 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!382 = !DISubroutineType(types: !383)
!383 = !{!38, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!386 = !DISubprogram(name: "locale_charset", scope: !387, file: !387, line: 35, type: !388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!387 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!388 = !DISubroutineType(types: !389)
!389 = !{!36}
!390 = !DISubprogram(name: "c_strcasecmp", scope: !391, file: !391, line: 42, type: !392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!391 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!392 = !DISubroutineType(types: !393)
!393 = !{!38, !36, !36}
!394 = !DISubprogram(name: "xalloc_die", scope: !164, file: !164, line: 51, type: !120, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !39)
!395 = !DISubprogram(name: "xrealloc", scope: !164, file: !164, line: 59, type: !396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!396 = !DISubroutineType(types: !397)
!397 = !{!91, !91, !95}
!398 = !{!315, !399, !405, !407, !409, !412, !419, !421}
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !317, file: !318, line: 101, type: !401, isLocal: false, isDefinition: true)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 320, elements: !403)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!403 = !{!404}
!404 = !DISubrange(count: 10)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !317, file: !318, line: 1052, type: !349, isLocal: false, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !317, file: !318, line: 116, type: !349, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(name: "slot0", scope: !317, file: !318, line: 842, type: !411, isLocal: true, isDefinition: true)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2048, elements: !218)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(name: "slotvec", scope: !317, file: !318, line: 845, type: !414, isLocal: true, isDefinition: true)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !318, line: 834, size: 128, elements: !416)
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !415, file: !318, line: 836, baseType: !93, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !415, file: !318, line: 837, baseType: !34, size: 64, offset: 64)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(name: "nslots", scope: !317, file: !318, line: 843, type: !38, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(name: "slotvec0", scope: !317, file: !318, line: 844, type: !415, isLocal: true, isDefinition: true)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 704, elements: !425)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!425 = !{!426}
!426 = !DISubrange(count: 11)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !429, file: !430, line: 26, type: !432, isLocal: false, isDefinition: true)
!429 = distinct !DICompileUnit(language: DW_LANG_C99, file: !430, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !431, splitDebugInlining: false, nameTableKind: None)
!430 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!431 = !{!427}
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 376, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 47)
!435 = distinct !DICompileUnit(language: DW_LANG_C99, file: !436, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !437, retainedTypes: !438, splitDebugInlining: false, nameTableKind: None)
!436 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!437 = !{!20}
!438 = !{!439, !443}
!439 = !DISubprogram(name: "posix_fadvise", scope: !440, file: !440, line: 288, type: !441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!440 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!441 = !DISubroutineType(types: !442)
!442 = !{!38, !38, !69, !69, !38}
!443 = !DISubprogram(name: "fileno", scope: !41, file: !41, line: 786, type: !444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!444 = !DISubroutineType(types: !445)
!445 = !{!38, !446}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !448)
!448 = !{!449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !447, file: !46, line: 51, baseType: !38, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !447, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !447, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !447, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !447, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !447, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !447, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !447, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !447, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !447, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !447, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !447, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !447, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !447, file: !46, line: 70, baseType: !446, size: 64, offset: 832)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !447, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !447, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !447, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !447, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !447, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !447, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !447, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !447, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !447, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !447, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !447, file: !46, line: 93, baseType: !446, size: 64, offset: 1344)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !447, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !447, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !447, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !447, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!478 = distinct !DICompileUnit(language: DW_LANG_C99, file: !479, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !480, retainedTypes: !484, splitDebugInlining: false, nameTableKind: None)
!479 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!480 = !{!481}
!481 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !479, line: 40, baseType: !7, size: 32, elements: !482)
!482 = !{!483}
!483 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!484 = !{!30, !485, !91}
!485 = !DISubprogram(name: "fputs_unlocked", scope: !41, file: !41, line: 662, type: !486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!486 = !DISubroutineType(types: !487)
!487 = !{!38, !36, !488}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !489, file: !46, line: 51, baseType: !38, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !489, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !489, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !489, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !489, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !489, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !489, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !489, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !489, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !489, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !489, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !489, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !489, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !489, file: !46, line: 70, baseType: !488, size: 64, offset: 832)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !489, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !489, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !489, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !489, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !489, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !489, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !489, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !489, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !489, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !489, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !489, file: !46, line: 93, baseType: !488, size: 64, offset: 1344)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !489, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !489, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !489, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !489, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!520 = distinct !DICompileUnit(language: DW_LANG_C99, file: !521, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !522, retainedTypes: !535, splitDebugInlining: false, nameTableKind: None)
!521 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!522 = !{!523}
!523 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !524, file: !164, line: 186, baseType: !7, size: 32, elements: !533)
!524 = distinct !DISubprogram(name: "x2nrealloc", scope: !164, file: !164, line: 174, type: !525, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !528)
!525 = !DISubroutineType(types: !526)
!526 = !{!91, !91, !527, !93}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!528 = !{!529, !530, !531, !532}
!529 = !DILocalVariable(name: "p", arg: 1, scope: !524, file: !164, line: 174, type: !91)
!530 = !DILocalVariable(name: "pn", arg: 2, scope: !524, file: !164, line: 174, type: !527)
!531 = !DILocalVariable(name: "s", arg: 3, scope: !524, file: !164, line: 174, type: !93)
!532 = !DILocalVariable(name: "n", scope: !524, file: !164, line: 176, type: !93)
!533 = !{!534}
!534 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!535 = !{!93, !394, !163, !395, !34, !210, !91, !536, !539}
!536 = !DISubprogram(name: "xcalloc", scope: !164, file: !164, line: 57, type: !537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!537 = !DISubroutineType(types: !538)
!538 = !{!91, !95, !95}
!539 = !DISubprogram(name: "rpl_calloc", scope: !540, file: !540, line: 688, type: !537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!540 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!541 = distinct !DICompileUnit(language: DW_LANG_C99, file: !542, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !543, splitDebugInlining: false, nameTableKind: None)
!542 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!543 = !{!30, !149}
!544 = distinct !DICompileUnit(language: DW_LANG_C99, file: !545, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !546, retainedTypes: !555, splitDebugInlining: false, nameTableKind: None)
!545 = !DIFile(filename: "lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!546 = !{!547}
!547 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !548, line: 25, baseType: !7, size: 32, elements: !549)
!548 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!549 = !{!550, !551, !552, !553, !554}
!550 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!551 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!552 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!553 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!554 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!555 = !{!556, !145, !149}
!556 = !DISubprogram(name: "xstrtoumax", scope: !548, file: !548, line: 48, type: !557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!557 = !DISubroutineType(types: !558)
!558 = !{!547, !36, !559, !38, !186, !36}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!560 = distinct !DICompileUnit(language: DW_LANG_C99, file: !561, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !562, retainedTypes: !563, splitDebugInlining: false, nameTableKind: None)
!561 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!562 = !{!547, !325}
!563 = !{!38, !71}
!564 = distinct !DICompileUnit(language: DW_LANG_C99, file: !565, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !566, splitDebugInlining: false, nameTableKind: None)
!565 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!566 = !{!91}
!567 = distinct !DICompileUnit(language: DW_LANG_C99, file: !568, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !569, splitDebugInlining: false, nameTableKind: None)
!568 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!569 = !{!570, !605, !606, !610}
!570 = !DISubprogram(name: "fileno", scope: !41, file: !41, line: 786, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!571 = !DISubroutineType(types: !572)
!572 = !{!38, !573}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !575)
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !574, file: !46, line: 51, baseType: !38, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !574, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !574, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !574, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !574, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !574, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !574, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !574, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !574, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !574, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !574, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !574, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !574, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !574, file: !46, line: 70, baseType: !573, size: 64, offset: 832)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !574, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !574, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !574, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !574, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !574, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !574, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !574, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !574, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !574, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !574, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !574, file: !46, line: 93, baseType: !573, size: 64, offset: 1344)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !574, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !574, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !574, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !574, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!605 = !DISubprogram(name: "fclose", scope: !41, file: !41, line: 213, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!606 = !DISubprogram(name: "lseek", scope: !607, file: !607, line: 334, type: !608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!607 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!608 = !DISubroutineType(types: !609)
!609 = !{!69, !38, !69, !38}
!610 = !DISubprogram(name: "rpl_fflush", scope: !160, file: !160, line: 718, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!611 = distinct !DICompileUnit(language: DW_LANG_C99, file: !612, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !613, splitDebugInlining: false, nameTableKind: None)
!612 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!613 = !{!91, !614, !649}
!614 = !DISubprogram(name: "fflush", scope: !41, file: !41, line: 218, type: !615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!615 = !DISubroutineType(types: !616)
!616 = !{!38, !617}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !618, file: !46, line: 51, baseType: !38, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !618, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !618, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !618, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !618, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !618, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !618, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !618, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !618, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !618, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !618, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !618, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !618, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !618, file: !46, line: 70, baseType: !617, size: 64, offset: 832)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !618, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !618, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !618, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !618, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !618, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !618, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !618, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !618, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !618, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !618, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !618, file: !46, line: 93, baseType: !617, size: 64, offset: 1344)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !618, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !618, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !618, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !618, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!649 = !DISubprogram(name: "rpl_fseeko", scope: !160, file: !160, line: 1034, type: !650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!650 = !DISubroutineType(types: !651)
!651 = !{!38, !617, !69, !38}
!652 = distinct !DICompileUnit(language: DW_LANG_C99, file: !653, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !654, splitDebugInlining: false, nameTableKind: None)
!653 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!654 = !{!91, !655, !606, !690}
!655 = !DISubprogram(name: "fileno", scope: !41, file: !41, line: 786, type: !656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!656 = !DISubroutineType(types: !657)
!657 = !{!38, !658}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !660)
!660 = !{!661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !659, file: !46, line: 51, baseType: !38, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !659, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !659, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !659, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !659, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !659, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !659, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !659, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !659, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !659, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !659, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !659, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !659, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !659, file: !46, line: 70, baseType: !658, size: 64, offset: 832)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !659, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !659, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !659, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !659, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !659, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !659, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !659, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !659, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !659, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !659, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !659, file: !46, line: 93, baseType: !658, size: 64, offset: 1344)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !659, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !659, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !659, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !659, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!690 = !DISubprogram(name: "fseeko", scope: !41, file: !41, line: 707, type: !691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!691 = !DISubroutineType(types: !692)
!692 = !{!38, !658, !69, !38}
!693 = distinct !DICompileUnit(language: DW_LANG_C99, file: !694, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !695, splitDebugInlining: false, nameTableKind: None)
!694 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!695 = !{!696, !93, !708}
!696 = !DISubprogram(name: "mbrtowc", scope: !381, file: !381, line: 296, type: !697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!697 = !DISubroutineType(types: !698)
!698 = !{!95, !135, !36, !95, !699}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 13, size: 64, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !700, file: !368, line: 15, baseType: !38, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !700, file: !368, line: 20, baseType: !704, size: 32, offset: 32)
!704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !700, file: !368, line: 16, size: 32, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !704, file: !368, line: 18, baseType: !7, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !704, file: !368, line: 19, baseType: !176, size: 32)
!708 = !DISubprogram(name: "hard_locale", scope: !709, file: !709, line: 26, type: !710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!709 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!710 = !DISubroutineType(types: !711)
!711 = !{!182, !38}
!712 = distinct !DICompileUnit(language: DW_LANG_C99, file: !713, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !714, splitDebugInlining: false, nameTableKind: None)
!713 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!714 = !{!715}
!715 = !DISubprogram(name: "rpl_fclose", scope: !160, file: !160, line: 672, type: !716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!716 = !DISubroutineType(types: !717)
!717 = !{!38, !718}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !720)
!720 = !{!721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !719, file: !46, line: 51, baseType: !38, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !719, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !719, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !719, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !719, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !719, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !719, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !719, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !719, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !719, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !719, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !719, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !719, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !719, file: !46, line: 70, baseType: !718, size: 64, offset: 832)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !719, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !719, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !719, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !719, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !719, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !719, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !719, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !719, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !719, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !719, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !719, file: !46, line: 93, baseType: !718, size: 64, offset: 1344)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !719, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !719, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !719, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !719, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!750 = distinct !DICompileUnit(language: DW_LANG_C99, file: !751, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !752, splitDebugInlining: false, nameTableKind: None)
!751 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!752 = !{!753}
!753 = !DISubprogram(name: "setlocale_null_r", scope: !754, file: !754, line: 64, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!754 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!755 = !DISubroutineType(types: !756)
!756 = !{!38, !38, !34, !95}
!757 = distinct !DICompileUnit(language: DW_LANG_C99, file: !758, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !759, retainedTypes: !1146, splitDebugInlining: false, nameTableKind: None)
!758 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!759 = !{!760}
!760 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !761, line: 41, baseType: !7, size: 32, elements: !762)
!761 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!762 = !{!763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145}
!763 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!764 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!765 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!766 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!767 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!768 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!769 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!770 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!771 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!772 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!773 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!774 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!775 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!776 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!777 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!778 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!779 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!780 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!781 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!782 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!783 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!784 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!785 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!786 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!787 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!788 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!789 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!790 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!791 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!792 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!793 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!794 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!795 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!796 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!797 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!798 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!799 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!800 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!801 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!802 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!803 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!804 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!805 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!806 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!807 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!808 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!809 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!810 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!811 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!812 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!871 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!874 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!875 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!876 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!877 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!878 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!879 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!880 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!881 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!882 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!883 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!884 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!885 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!958 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1031 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1032 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1033 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1034 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1035 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1036 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1037 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1038 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1039 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1040 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1041 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1042 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1043 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1044 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1045 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1047 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1048 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1049 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1050 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1051 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1052 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1078 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1079 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1080 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1081 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1082 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1087 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1088 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1089 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1090 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1107 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1108 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1109 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1110 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1111 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1112 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1113 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1114 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1115 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1116 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1117 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1118 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1119 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1120 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1121 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1122 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1123 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1124 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1125 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1126 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1127 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1128 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1129 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1130 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1131 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1132 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1133 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1134 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1135 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1136 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1137 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1138 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1139 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1140 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1141 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1142 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1143 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1144 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1145 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1146 = !{!1147, !91}
!1147 = !DISubprogram(name: "nl_langinfo", scope: !761, file: !761, line: 661, type: !1148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!34, !38}
!1150 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1151, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !1152, splitDebugInlining: false, nameTableKind: None)
!1151 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1152 = !{!91, !105}
!1153 = !{!"clang version 10.0.0 "}
!1154 = !{i32 7, !"Dwarf Version", i32 4}
!1155 = !{i32 2, !"Debug Info Version", i32 3}
!1156 = !{i32 1, !"wchar_size", i32 4}
!1157 = !{i32 7, !"PIC Level", i32 2}
!1158 = !{i32 7, !"PIE Level", i32 2}
!1159 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 95, type: !1160, scopeLine: 96, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1162)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null, !38}
!1162 = !{!1163}
!1163 = !DILocalVariable(name: "status", arg: 1, scope: !1159, file: !3, line: 95, type: !38)
!1164 = !DILocalVariable(name: "infomap", scope: !1165, file: !1166, line: 636, type: !1178)
!1165 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1166, file: !1166, line: 634, type: !103, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1167)
!1166 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1167 = !{!1168, !1164, !1169, !1170, !1177}
!1168 = !DILocalVariable(name: "program", arg: 1, scope: !1165, file: !1166, line: 634, type: !36)
!1169 = !DILocalVariable(name: "node", scope: !1165, file: !1166, line: 646, type: !36)
!1170 = !DILocalVariable(name: "map_prog", scope: !1165, file: !1166, line: 647, type: !1171)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1173)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1165, file: !1166, line: 636, size: 128, elements: !1174)
!1174 = !{!1175, !1176}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1173, file: !1166, line: 636, baseType: !36, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1173, file: !1166, line: 636, baseType: !36, size: 64, offset: 64)
!1177 = !DILocalVariable(name: "lc_messages", scope: !1165, file: !1166, line: 659, type: !36)
!1178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1172, size: 896, elements: !1179)
!1179 = !{!1180}
!1180 = !DISubrange(count: 7)
!1181 = !DILocation(line: 636, column: 67, scope: !1165, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 172, column: 7, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 100, column: 5)
!1184 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 97, column: 7)
!1185 = !DILocation(line: 0, scope: !1159)
!1186 = !DILocation(line: 97, column: 14, scope: !1184)
!1187 = !DILocation(line: 97, column: 7, scope: !1159)
!1188 = !DILocation(line: 98, column: 5, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 98, column: 5)
!1190 = !{!1191, !1191, i64 0}
!1191 = !{!"any pointer", !1192, i64 0}
!1192 = !{!"omnipotent char", !1193, i64 0}
!1193 = !{!"Simple C/C++ TBAA"}
!1194 = !DILocation(line: 101, column: 7, scope: !1183)
!1195 = !DILocation(line: 110, column: 7, scope: !1183)
!1196 = !DILocation(line: 583, column: 3, scope: !1197, inlinedAt: !1198)
!1197 = distinct !DISubprogram(name: "emit_stdin_note", scope: !1166, file: !1166, line: 581, type: !120, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!1198 = distinct !DILocation(line: 115, column: 7, scope: !1183)
!1199 = !DILocation(line: 590, column: 3, scope: !1200, inlinedAt: !1201)
!1200 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !1166, file: !1166, line: 588, type: !120, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!1201 = distinct !DILocation(line: 116, column: 7, scope: !1183)
!1202 = !DILocation(line: 140, column: 7, scope: !1183)
!1203 = !DILocation(line: 154, column: 7, scope: !1183)
!1204 = !DILocation(line: 155, column: 7, scope: !1183)
!1205 = !DILocation(line: 164, column: 7, scope: !1183)
!1206 = !DILocation(line: 0, scope: !1165, inlinedAt: !1182)
!1207 = !DILocation(line: 636, column: 3, scope: !1165, inlinedAt: !1182)
!1208 = !DILocation(line: 647, column: 36, scope: !1165, inlinedAt: !1182)
!1209 = !DILocation(line: 649, column: 3, scope: !1165, inlinedAt: !1182)
!1210 = !DILocation(line: 649, column: 33, scope: !1165, inlinedAt: !1182)
!1211 = !DILocation(line: 650, column: 13, scope: !1165, inlinedAt: !1182)
!1212 = !DILocation(line: 649, column: 20, scope: !1165, inlinedAt: !1182)
!1213 = !{!1214, !1191, i64 0}
!1214 = !{!"infomap", !1191, i64 0, !1191, i64 8}
!1215 = !DILocation(line: 649, column: 10, scope: !1165, inlinedAt: !1182)
!1216 = !DILocation(line: 649, column: 28, scope: !1165, inlinedAt: !1182)
!1217 = distinct !{!1217, !1209, !1211}
!1218 = !DILocation(line: 652, column: 17, scope: !1219, inlinedAt: !1182)
!1219 = distinct !DILexicalBlock(scope: !1165, file: !1166, line: 652, column: 7)
!1220 = !{!1214, !1191, i64 8}
!1221 = !DILocation(line: 652, column: 7, scope: !1219, inlinedAt: !1182)
!1222 = !DILocation(line: 652, column: 7, scope: !1165, inlinedAt: !1182)
!1223 = !DILocation(line: 655, column: 3, scope: !1165, inlinedAt: !1182)
!1224 = !DILocation(line: 659, column: 29, scope: !1165, inlinedAt: !1182)
!1225 = !DILocation(line: 660, column: 7, scope: !1226, inlinedAt: !1182)
!1226 = distinct !DILexicalBlock(scope: !1165, file: !1166, line: 660, column: 7)
!1227 = !DILocation(line: 660, column: 19, scope: !1226, inlinedAt: !1182)
!1228 = !DILocation(line: 660, column: 22, scope: !1226, inlinedAt: !1182)
!1229 = !DILocation(line: 660, column: 7, scope: !1165, inlinedAt: !1182)
!1230 = !DILocation(line: 666, column: 7, scope: !1231, inlinedAt: !1182)
!1231 = distinct !DILexicalBlock(scope: !1226, file: !1166, line: 661, column: 5)
!1232 = !DILocation(line: 668, column: 5, scope: !1231, inlinedAt: !1182)
!1233 = !DILocation(line: 669, column: 3, scope: !1165, inlinedAt: !1182)
!1234 = !DILocation(line: 671, column: 3, scope: !1165, inlinedAt: !1182)
!1235 = !DILocation(line: 673, column: 1, scope: !1165, inlinedAt: !1182)
!1236 = !DILocation(line: 175, column: 3, scope: !1159)
!1237 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 1087, type: !1238, scopeLine: 1088, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1240)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!38, !38, !559}
!1240 = !{!1241, !1242, !1243, !1244, !1248, !1249, !1250, !1251}
!1241 = !DILocalVariable(name: "argc", arg: 1, scope: !1237, file: !3, line: 1087, type: !38)
!1242 = !DILocalVariable(name: "argv", arg: 2, scope: !1237, file: !3, line: 1087, type: !559)
!1243 = !DILocalVariable(name: "opt", scope: !1237, file: !3, line: 1089, type: !38)
!1244 = !DILocalVariable(name: "input_fh", scope: !1237, file: !3, line: 1090, type: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1247, line: 7, baseType: !45)
!1247 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1248 = !DILocalVariable(name: "infile", scope: !1237, file: !3, line: 1091, type: !36)
!1249 = !DILocalVariable(name: "decode", scope: !1237, file: !3, line: 1094, type: !182)
!1250 = !DILocalVariable(name: "ignore_garbage", scope: !1237, file: !3, line: 1096, type: !182)
!1251 = !DILocalVariable(name: "wrap_column", scope: !1237, file: !3, line: 1098, type: !1252)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1253, line: 102, baseType: !1254)
!1253 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !68, line: 73, baseType: !95)
!1255 = !DILocalVariable(name: "ctx", scope: !1256, file: !3, line: 1020, type: !172)
!1256 = distinct !DISubprogram(name: "do_decode", scope: !3, file: !3, line: 1016, type: !1257, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1259)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{null, !1245, !1245, !182}
!1259 = !{!1260, !1261, !1262, !1263, !1264, !1265, !1255, !1266, !1268, !1269, !1270, !1275, !1281, !1282}
!1260 = !DILocalVariable(name: "in", arg: 1, scope: !1256, file: !3, line: 1016, type: !1245)
!1261 = !DILocalVariable(name: "out", arg: 2, scope: !1256, file: !3, line: 1016, type: !1245)
!1262 = !DILocalVariable(name: "ignore_garbage", arg: 3, scope: !1256, file: !3, line: 1016, type: !182)
!1263 = !DILocalVariable(name: "inbuf", scope: !1256, file: !3, line: 1018, type: !34)
!1264 = !DILocalVariable(name: "outbuf", scope: !1256, file: !3, line: 1018, type: !34)
!1265 = !DILocalVariable(name: "sum", scope: !1256, file: !3, line: 1019, type: !93)
!1266 = !DILocalVariable(name: "ok", scope: !1267, file: !3, line: 1032, type: !182)
!1267 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1031, column: 5)
!1268 = !DILocalVariable(name: "n", scope: !1267, file: !3, line: 1033, type: !93)
!1269 = !DILocalVariable(name: "k", scope: !1267, file: !3, line: 1034, type: !7)
!1270 = !DILocalVariable(name: "i", scope: !1271, file: !3, line: 1043, type: !93)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 1043, column: 15)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 1042, column: 13)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 1041, column: 15)
!1274 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 1038, column: 9)
!1275 = !DILocalVariable(name: "__ptr", scope: !1276, file: !3, line: 1070, type: !36)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 1070, column: 15)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 1070, column: 15)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 1064, column: 9)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 1063, column: 7)
!1280 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 1063, column: 7)
!1281 = !DILocalVariable(name: "__stream", scope: !1276, file: !3, line: 1070, type: !1245)
!1282 = !DILocalVariable(name: "__cnt", scope: !1276, file: !3, line: 1070, type: !93)
!1283 = !DILocation(line: 1020, column: 30, scope: !1256, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 1249, column: 5, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1248, column: 7)
!1286 = !DILocation(line: 0, scope: !1237)
!1287 = !DILocation(line: 1105, column: 21, scope: !1237)
!1288 = !DILocation(line: 1105, column: 3, scope: !1237)
!1289 = !DILocation(line: 1106, column: 3, scope: !1237)
!1290 = !DILocation(line: 1107, column: 3, scope: !1237)
!1291 = !DILocation(line: 1108, column: 3, scope: !1237)
!1292 = !DILocation(line: 1110, column: 3, scope: !1237)
!1293 = !DILocation(line: 1112, column: 3, scope: !1237)
!1294 = !DILocation(line: 1098, column: 13, scope: !1237)
!1295 = !DILocation(line: 1112, column: 17, scope: !1237)
!1296 = distinct !{!1296, !1293, !1297}
!1297 = !DILocation(line: 1148, column: 7, scope: !1237)
!1298 = !DILocation(line: 1120, column: 35, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1114, column: 7)
!1300 = !DILocation(line: 1121, column: 35, scope: !1299)
!1301 = !DILocation(line: 1120, column: 23, scope: !1299)
!1302 = !DILocation(line: 1122, column: 9, scope: !1299)
!1303 = !DILocation(line: 1141, column: 7, scope: !1299)
!1304 = !DILocation(line: 1143, column: 7, scope: !1299)
!1305 = !DILocation(line: 1146, column: 9, scope: !1299)
!1306 = !DILocation(line: 1223, column: 14, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1223, column: 7)
!1308 = !{!1309, !1309, i64 0}
!1309 = !{!"int", !1192, i64 0}
!1310 = !DILocation(line: 1223, column: 12, scope: !1307)
!1311 = !DILocation(line: 1223, column: 21, scope: !1307)
!1312 = !DILocation(line: 1223, column: 7, scope: !1237)
!1313 = !DILocation(line: 1225, column: 20, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 1224, column: 5)
!1315 = !DILocation(line: 1225, column: 55, scope: !1314)
!1316 = !DILocation(line: 1225, column: 61, scope: !1314)
!1317 = !DILocation(line: 1225, column: 50, scope: !1314)
!1318 = !DILocation(line: 1225, column: 43, scope: !1314)
!1319 = !DILocation(line: 1225, column: 7, scope: !1314)
!1320 = !DILocation(line: 1226, column: 7, scope: !1314)
!1321 = !DILocation(line: 1229, column: 14, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1229, column: 7)
!1323 = !DILocation(line: 1229, column: 7, scope: !1237)
!1324 = !DILocation(line: 1230, column: 14, scope: !1322)
!1325 = !DILocation(line: 1230, column: 5, scope: !1322)
!1326 = !DILocation(line: 0, scope: !1322)
!1327 = !DILocation(line: 1234, column: 7, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1234, column: 7)
!1329 = !DILocation(line: 1234, column: 7, scope: !1237)
!1330 = !DILocation(line: 1237, column: 18, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 1235, column: 5)
!1332 = !DILocation(line: 1238, column: 5, scope: !1331)
!1333 = !DILocation(line: 1241, column: 18, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 1240, column: 5)
!1335 = !DILocation(line: 1242, column: 20, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 1242, column: 11)
!1337 = !DILocation(line: 1242, column: 11, scope: !1334)
!1338 = !DILocation(line: 1243, column: 9, scope: !1336)
!1339 = !DILocation(line: 0, scope: !1328)
!1340 = !DILocation(line: 1246, column: 3, scope: !1237)
!1341 = !DILocation(line: 1248, column: 7, scope: !1285)
!1342 = !DILocation(line: 0, scope: !1285)
!1343 = !DILocation(line: 1248, column: 7, scope: !1237)
!1344 = !DILocation(line: 1249, column: 34, scope: !1285)
!1345 = !DILocation(line: 0, scope: !1256, inlinedAt: !1284)
!1346 = !DILocation(line: 1020, column: 3, scope: !1256, inlinedAt: !1284)
!1347 = !DILocation(line: 1022, column: 11, scope: !1256, inlinedAt: !1284)
!1348 = !DILocation(line: 1023, column: 12, scope: !1256, inlinedAt: !1284)
!1349 = !DILocation(line: 1028, column: 3, scope: !1256, inlinedAt: !1284)
!1350 = !DILocation(line: 0, scope: !1267, inlinedAt: !1284)
!1351 = !DILocation(line: 0, scope: !1352, inlinedAt: !1358)
!1352 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1353, file: !1353, line: 135, type: !1354, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1356)
!1353 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!38, !1245}
!1356 = !{!1357}
!1357 = !DILocalVariable(name: "__stream", arg: 1, scope: !1352, file: !1353, line: 135, type: !1245)
!1358 = distinct !DILocation(line: 1054, column: 15, scope: !1359, inlinedAt: !1284)
!1359 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 1054, column: 15)
!1360 = !DILocation(line: 0, scope: !1361, inlinedAt: !1284)
!1361 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 1065, column: 15)
!1362 = !DILocation(line: 1030, column: 3, scope: !1256, inlinedAt: !1284)
!1363 = !DILocation(line: 1033, column: 7, scope: !1267, inlinedAt: !1284)
!1364 = !DILocation(line: 1037, column: 7, scope: !1267, inlinedAt: !1284)
!1365 = !DILocation(line: 1039, column: 15, scope: !1274, inlinedAt: !1284)
!1366 = !DILocation(line: 1039, column: 13, scope: !1274, inlinedAt: !1284)
!1367 = !{!1368, !1368, i64 0}
!1368 = !{!"long", !1192, i64 0}
!1369 = !DILocation(line: 1041, column: 15, scope: !1274, inlinedAt: !1284)
!1370 = !DILocation(line: 0, scope: !1271, inlinedAt: !1284)
!1371 = !DILocation(line: 1043, column: 40, scope: !1372, inlinedAt: !1284)
!1372 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 1043, column: 15)
!1373 = !DILocation(line: 1043, column: 15, scope: !1271, inlinedAt: !1284)
!1374 = !DILocation(line: 1045, column: 41, scope: !1375, inlinedAt: !1284)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 1045, column: 23)
!1376 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 1044, column: 17)
!1377 = !DILocation(line: 1045, column: 31, scope: !1375, inlinedAt: !1284)
!1378 = !{!1192, !1192, i64 0}
!1379 = !DILocation(line: 1045, column: 23, scope: !1375, inlinedAt: !1284)
!1380 = !DILocation(line: 1045, column: 65, scope: !1375, inlinedAt: !1284)
!1381 = !DILocation(line: 1045, column: 47, scope: !1375, inlinedAt: !1284)
!1382 = !DILocation(line: 1046, column: 22, scope: !1375, inlinedAt: !1284)
!1383 = !DILocation(line: 1046, column: 21, scope: !1375, inlinedAt: !1284)
!1384 = !DILocation(line: 1048, column: 42, scope: !1375, inlinedAt: !1284)
!1385 = !DILocation(line: 1048, column: 63, scope: !1375, inlinedAt: !1284)
!1386 = !DILocation(line: 1048, column: 68, scope: !1375, inlinedAt: !1284)
!1387 = !DILocation(line: 1048, column: 72, scope: !1375, inlinedAt: !1284)
!1388 = !DILocalVariable(name: "__dest", arg: 1, scope: !1389, file: !1390, line: 38, type: !91)
!1389 = distinct !DISubprogram(name: "memmove", scope: !1390, file: !1390, line: 38, type: !1391, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1393)
!1390 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!91, !91, !190, !93}
!1393 = !{!1388, !1394, !1395}
!1394 = !DILocalVariable(name: "__src", arg: 2, scope: !1389, file: !1390, line: 38, type: !190)
!1395 = !DILocalVariable(name: "__len", arg: 3, scope: !1389, file: !1390, line: 38, type: !93)
!1396 = !DILocation(line: 0, scope: !1389, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 1048, column: 21, scope: !1375, inlinedAt: !1284)
!1398 = !DILocation(line: 40, column: 10, scope: !1389, inlinedAt: !1397)
!1399 = !DILocation(line: 1043, column: 34, scope: !1372, inlinedAt: !1284)
!1400 = distinct !{!1400, !1373, !1401}
!1401 = !DILocation(line: 1049, column: 17, scope: !1271, inlinedAt: !1284)
!1402 = !DILocation(line: 1052, column: 18, scope: !1274, inlinedAt: !1284)
!1403 = !DILocation(line: 1052, column: 15, scope: !1274, inlinedAt: !1284)
!1404 = !DILocation(line: 137, column: 10, scope: !1352, inlinedAt: !1358)
!1405 = !{!1406, !1309, i64 0}
!1406 = !{!"_IO_FILE", !1309, i64 0, !1191, i64 8, !1191, i64 16, !1191, i64 24, !1191, i64 32, !1191, i64 40, !1191, i64 48, !1191, i64 56, !1191, i64 64, !1191, i64 72, !1191, i64 80, !1191, i64 88, !1191, i64 96, !1191, i64 104, !1309, i64 112, !1309, i64 116, !1368, i64 120, !1407, i64 128, !1192, i64 130, !1192, i64 131, !1191, i64 136, !1368, i64 144, !1191, i64 152, !1191, i64 160, !1191, i64 168, !1191, i64 176, !1368, i64 184, !1309, i64 192, !1192, i64 196}
!1407 = !{!"short", !1192, i64 0}
!1408 = !DILocation(line: 1054, column: 15, scope: !1359, inlinedAt: !1284)
!1409 = !DILocation(line: 1054, column: 15, scope: !1274, inlinedAt: !1284)
!1410 = !DILocation(line: 1055, column: 13, scope: !1359, inlinedAt: !1284)
!1411 = !DILocation(line: 1057, column: 18, scope: !1267, inlinedAt: !1284)
!1412 = !DILocation(line: 130, column: 10, scope: !1413, inlinedAt: !1416)
!1413 = distinct !DISubprogram(name: "feof_unlocked", scope: !1353, file: !1353, line: 128, type: !1354, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1414)
!1414 = !{!1415}
!1415 = !DILocalVariable(name: "__stream", arg: 1, scope: !1413, file: !1353, line: 128, type: !1245)
!1416 = distinct !DILocation(line: 1057, column: 52, scope: !1267, inlinedAt: !1284)
!1417 = !DILocation(line: 1057, column: 51, scope: !1267, inlinedAt: !1284)
!1418 = !DILocation(line: 1057, column: 48, scope: !1267, inlinedAt: !1284)
!1419 = !DILocation(line: 0, scope: !1413, inlinedAt: !1416)
!1420 = distinct !{!1420, !1364, !1421}
!1421 = !DILocation(line: 1057, column: 61, scope: !1267, inlinedAt: !1284)
!1422 = !DILocation(line: 0, scope: !1413, inlinedAt: !1423)
!1423 = distinct !DILocation(line: 1063, column: 29, scope: !1279, inlinedAt: !1284)
!1424 = !DILocation(line: 130, column: 10, scope: !1413, inlinedAt: !1423)
!1425 = !DILocation(line: 1063, column: 28, scope: !1279, inlinedAt: !1284)
!1426 = !DILocation(line: 1063, column: 25, scope: !1279, inlinedAt: !1284)
!1427 = !DILocation(line: 1063, column: 21, scope: !1279, inlinedAt: !1284)
!1428 = !DILocation(line: 1063, column: 7, scope: !1280, inlinedAt: !1284)
!1429 = distinct !{!1429, !1428, !1430}
!1430 = !DILocation(line: 1075, column: 9, scope: !1280, inlinedAt: !1284)
!1431 = !DILocation(line: 1065, column: 29, scope: !1361, inlinedAt: !1284)
!1432 = !DILocation(line: 1065, column: 22, scope: !1361, inlinedAt: !1284)
!1433 = !DILocation(line: 1067, column: 13, scope: !1278, inlinedAt: !1284)
!1434 = !DILocation(line: 1068, column: 49, scope: !1278, inlinedAt: !1284)
!1435 = !DILocation(line: 1068, column: 47, scope: !1278, inlinedAt: !1284)
!1436 = !DILocation(line: 1068, column: 16, scope: !1278, inlinedAt: !1284)
!1437 = !DILocation(line: 1070, column: 15, scope: !1277, inlinedAt: !1284)
!1438 = !DILocation(line: 1070, column: 44, scope: !1277, inlinedAt: !1284)
!1439 = !DILocation(line: 1070, column: 42, scope: !1277, inlinedAt: !1284)
!1440 = !DILocation(line: 1070, column: 15, scope: !1278, inlinedAt: !1284)
!1441 = !DILocation(line: 1071, column: 13, scope: !1277, inlinedAt: !1284)
!1442 = !DILocation(line: 1063, column: 41, scope: !1279, inlinedAt: !1284)
!1443 = !DILocation(line: 1073, column: 15, scope: !1278, inlinedAt: !1284)
!1444 = !DILocation(line: 1074, column: 13, scope: !1445, inlinedAt: !1284)
!1445 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 1073, column: 15)
!1446 = !DILocation(line: 1076, column: 5, scope: !1256, inlinedAt: !1284)
!1447 = !DILocation(line: 0, scope: !1413, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 1077, column: 11, scope: !1256, inlinedAt: !1284)
!1449 = !DILocation(line: 1076, column: 5, scope: !1267, inlinedAt: !1284)
!1450 = distinct !{!1450, !1362, !1451}
!1451 = !DILocation(line: 1077, column: 20, scope: !1256, inlinedAt: !1284)
!1452 = !DILocation(line: 1084, column: 1, scope: !1256, inlinedAt: !1284)
!1453 = !DILocation(line: 1249, column: 5, scope: !1285)
!1454 = !DILocalVariable(name: "in", arg: 1, scope: !1455, file: !3, line: 971, type: !1245)
!1455 = distinct !DISubprogram(name: "do_encode", scope: !3, file: !3, line: 971, type: !1456, scopeLine: 972, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1458)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{null, !1245, !1245, !1252}
!1458 = !{!1454, !1459, !1460, !1461, !1462, !1463, !1464, !1465}
!1459 = !DILocalVariable(name: "out", arg: 2, scope: !1455, file: !3, line: 971, type: !1245)
!1460 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !1455, file: !3, line: 971, type: !1252)
!1461 = !DILocalVariable(name: "current_column", scope: !1455, file: !3, line: 973, type: !93)
!1462 = !DILocalVariable(name: "inbuf", scope: !1455, file: !3, line: 974, type: !34)
!1463 = !DILocalVariable(name: "outbuf", scope: !1455, file: !3, line: 974, type: !34)
!1464 = !DILocalVariable(name: "sum", scope: !1455, file: !3, line: 975, type: !93)
!1465 = !DILocalVariable(name: "n", scope: !1466, file: !3, line: 982, type: !93)
!1466 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 981, column: 5)
!1467 = !DILocation(line: 0, scope: !1455, inlinedAt: !1468)
!1468 = distinct !DILocation(line: 1251, column: 5, scope: !1285)
!1469 = !DILocation(line: 977, column: 11, scope: !1455, inlinedAt: !1468)
!1470 = !DILocation(line: 978, column: 12, scope: !1455, inlinedAt: !1468)
!1471 = !DILocation(line: 0, scope: !1413, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 990, column: 15, scope: !1466, inlinedAt: !1468)
!1473 = !DILocation(line: 0, scope: !1474, inlinedAt: !1503)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 941, column: 7)
!1475 = distinct !DISubprogram(name: "wrap_write", scope: !3, file: !3, line: 936, type: !1476, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1478)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{null, !36, !93, !1252, !527, !1245}
!1478 = !{!1479, !1480, !1481, !1482, !1483, !1484, !1485, !1489, !1490, !1491, !1495, !1496, !1501, !1502}
!1479 = !DILocalVariable(name: "buffer", arg: 1, scope: !1475, file: !3, line: 936, type: !36)
!1480 = !DILocalVariable(name: "len", arg: 2, scope: !1475, file: !3, line: 936, type: !93)
!1481 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !1475, file: !3, line: 937, type: !1252)
!1482 = !DILocalVariable(name: "current_column", arg: 4, scope: !1475, file: !3, line: 937, type: !527)
!1483 = !DILocalVariable(name: "out", arg: 5, scope: !1475, file: !3, line: 937, type: !1245)
!1484 = !DILocalVariable(name: "written", scope: !1475, file: !3, line: 939, type: !93)
!1485 = !DILocalVariable(name: "__ptr", scope: !1486, file: !3, line: 944, type: !36)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 944, column: 11)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 944, column: 11)
!1488 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 942, column: 5)
!1489 = !DILocalVariable(name: "__stream", scope: !1486, file: !3, line: 944, type: !1245)
!1490 = !DILocalVariable(name: "__cnt", scope: !1486, file: !3, line: 944, type: !93)
!1491 = !DILocalVariable(name: "cols_remaining", scope: !1492, file: !3, line: 950, type: !1252)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 949, column: 7)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 948, column: 5)
!1494 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 948, column: 5)
!1495 = !DILocalVariable(name: "to_write", scope: !1492, file: !3, line: 951, type: !93)
!1496 = !DILocalVariable(name: "__ptr", scope: !1497, file: !3, line: 962, type: !36)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 962, column: 17)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 962, column: 17)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 961, column: 11)
!1500 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 954, column: 13)
!1501 = !DILocalVariable(name: "__stream", scope: !1497, file: !3, line: 962, type: !1245)
!1502 = !DILocalVariable(name: "__cnt", scope: !1497, file: !3, line: 962, type: !93)
!1503 = distinct !DILocation(line: 998, column: 11, scope: !1504, inlinedAt: !1468)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 993, column: 9)
!1505 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 992, column: 11)
!1506 = !DILocation(line: 0, scope: !1507, inlinedAt: !1513)
!1507 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1353, file: !1353, line: 91, type: !1508, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1510)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!38, !38, !1245}
!1510 = !{!1511, !1512}
!1511 = !DILocalVariable(name: "__c", arg: 1, scope: !1507, file: !1353, line: 91, type: !38)
!1512 = !DILocalVariable(name: "__stream", arg: 2, scope: !1507, file: !1353, line: 91, type: !1245)
!1513 = distinct !DILocation(line: 956, column: 17, scope: !1514, inlinedAt: !1503)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 956, column: 17)
!1515 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 955, column: 11)
!1516 = !DILocation(line: 980, column: 3, scope: !1455, inlinedAt: !1468)
!1517 = !DILocation(line: 973, column: 10, scope: !1455, inlinedAt: !1468)
!1518 = !DILocation(line: 985, column: 7, scope: !1466, inlinedAt: !1468)
!1519 = !DILocation(line: 0, scope: !1466, inlinedAt: !1468)
!1520 = !DILocation(line: 987, column: 15, scope: !1521, inlinedAt: !1468)
!1521 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 986, column: 9)
!1522 = !DILocation(line: 988, column: 15, scope: !1521, inlinedAt: !1468)
!1523 = !DILocation(line: 130, column: 10, scope: !1413, inlinedAt: !1472)
!1524 = !DILocation(line: 990, column: 15, scope: !1466, inlinedAt: !1468)
!1525 = !DILocation(line: 990, column: 25, scope: !1466, inlinedAt: !1468)
!1526 = !DILocation(line: 0, scope: !1352, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 990, column: 29, scope: !1466, inlinedAt: !1468)
!1528 = !DILocation(line: 137, column: 10, scope: !1352, inlinedAt: !1527)
!1529 = !DILocation(line: 990, column: 29, scope: !1466, inlinedAt: !1468)
!1530 = !DILocation(line: 990, column: 48, scope: !1466, inlinedAt: !1468)
!1531 = !DILocation(line: 990, column: 41, scope: !1466, inlinedAt: !1468)
!1532 = distinct !{!1532, !1518, !1533}
!1533 = !DILocation(line: 990, column: 63, scope: !1466, inlinedAt: !1468)
!1534 = !DILocation(line: 992, column: 15, scope: !1505, inlinedAt: !1468)
!1535 = !DILocation(line: 992, column: 11, scope: !1466, inlinedAt: !1468)
!1536 = !DILocation(line: 996, column: 44, scope: !1504, inlinedAt: !1468)
!1537 = !DILocation(line: 996, column: 11, scope: !1504, inlinedAt: !1468)
!1538 = !DILocation(line: 0, scope: !1475, inlinedAt: !1503)
!1539 = !DILocation(line: 941, column: 7, scope: !1475, inlinedAt: !1503)
!1540 = !DILocation(line: 948, column: 31, scope: !1493, inlinedAt: !1503)
!1541 = !DILocation(line: 948, column: 5, scope: !1494, inlinedAt: !1503)
!1542 = !DILocation(line: 944, column: 11, scope: !1487, inlinedAt: !1503)
!1543 = !DILocation(line: 944, column: 43, scope: !1487, inlinedAt: !1503)
!1544 = !DILocation(line: 944, column: 11, scope: !1488, inlinedAt: !1503)
!1545 = !DILocation(line: 945, column: 9, scope: !1487, inlinedAt: !1503)
!1546 = !DILocation(line: 950, column: 48, scope: !1492, inlinedAt: !1503)
!1547 = !DILocation(line: 0, scope: !1492, inlinedAt: !1503)
!1548 = !DILocation(line: 952, column: 20, scope: !1492, inlinedAt: !1503)
!1549 = !DILocation(line: 954, column: 22, scope: !1500, inlinedAt: !1503)
!1550 = !DILocation(line: 954, column: 13, scope: !1492, inlinedAt: !1503)
!1551 = !DILocation(line: 93, column: 10, scope: !1507, inlinedAt: !1513)
!1552 = !{!1406, !1191, i64 40}
!1553 = !{!1406, !1191, i64 48}
!1554 = !{!"branch_weights", i32 2000, i32 1}
!1555 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1556 = !DILocation(line: 956, column: 17, scope: !1515, inlinedAt: !1503)
!1557 = !DILocation(line: 956, column: 35, scope: !1514, inlinedAt: !1503)
!1558 = !DILocation(line: 957, column: 15, scope: !1514, inlinedAt: !1503)
!1559 = !DILocation(line: 0, scope: !1498, inlinedAt: !1503)
!1560 = !DILocation(line: 962, column: 17, scope: !1498, inlinedAt: !1503)
!1561 = !DILocation(line: 962, column: 64, scope: !1498, inlinedAt: !1503)
!1562 = !DILocation(line: 962, column: 17, scope: !1499, inlinedAt: !1503)
!1563 = !DILocation(line: 963, column: 15, scope: !1498, inlinedAt: !1503)
!1564 = !DILocation(line: 964, column: 29, scope: !1499, inlinedAt: !1503)
!1565 = !DILocation(line: 965, column: 21, scope: !1499, inlinedAt: !1503)
!1566 = !DILocation(line: 0, scope: !1500, inlinedAt: !1503)
!1567 = !DILocation(line: 0, scope: !1494, inlinedAt: !1503)
!1568 = distinct !{!1568, !1541, !1569}
!1569 = !DILocation(line: 967, column: 7, scope: !1494, inlinedAt: !1503)
!1570 = !DILocation(line: 0, scope: !1413, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 1002, column: 11, scope: !1455, inlinedAt: !1468)
!1572 = !DILocation(line: 130, column: 10, scope: !1413, inlinedAt: !1571)
!1573 = !DILocation(line: 1002, column: 11, scope: !1455, inlinedAt: !1468)
!1574 = !DILocation(line: 1002, column: 21, scope: !1455, inlinedAt: !1468)
!1575 = !DILocation(line: 0, scope: !1352, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 1002, column: 25, scope: !1455, inlinedAt: !1468)
!1577 = !DILocation(line: 137, column: 10, scope: !1352, inlinedAt: !1576)
!1578 = !DILocation(line: 1002, column: 25, scope: !1455, inlinedAt: !1468)
!1579 = !DILocation(line: 1002, column: 44, scope: !1455, inlinedAt: !1468)
!1580 = !DILocation(line: 1002, column: 37, scope: !1455, inlinedAt: !1468)
!1581 = distinct !{!1581, !1516, !1582}
!1582 = !DILocation(line: 1002, column: 60, scope: !1455, inlinedAt: !1468)
!1583 = !DILocation(line: 1005, column: 7, scope: !1584, inlinedAt: !1468)
!1584 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 1005, column: 7)
!1585 = !DILocation(line: 1005, column: 37, scope: !1584, inlinedAt: !1468)
!1586 = !DILocation(line: 1005, column: 19, scope: !1584, inlinedAt: !1468)
!1587 = !DILocation(line: 0, scope: !1507, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 1005, column: 44, scope: !1584, inlinedAt: !1468)
!1589 = !DILocation(line: 93, column: 10, scope: !1507, inlinedAt: !1588)
!1590 = !DILocation(line: 1005, column: 7, scope: !1455, inlinedAt: !1468)
!1591 = !DILocation(line: 1005, column: 62, scope: !1584, inlinedAt: !1468)
!1592 = !DILocation(line: 1006, column: 5, scope: !1584, inlinedAt: !1468)
!1593 = !DILocation(line: 0, scope: !1352, inlinedAt: !1594)
!1594 = distinct !DILocation(line: 1008, column: 7, scope: !1595, inlinedAt: !1468)
!1595 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 1008, column: 7)
!1596 = !DILocation(line: 137, column: 10, scope: !1352, inlinedAt: !1594)
!1597 = !DILocation(line: 1008, column: 7, scope: !1595, inlinedAt: !1468)
!1598 = !DILocation(line: 1008, column: 7, scope: !1455, inlinedAt: !1468)
!1599 = !DILocation(line: 1009, column: 5, scope: !1595, inlinedAt: !1468)
!1600 = !DILocation(line: 1253, column: 7, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1253, column: 7)
!1602 = !DILocation(line: 1253, column: 25, scope: !1601)
!1603 = !DILocation(line: 1253, column: 7, scope: !1237)
!1604 = !DILocation(line: 1255, column: 11, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 1255, column: 11)
!1606 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 1254, column: 5)
!1607 = !DILocation(line: 0, scope: !1605)
!1608 = !DILocation(line: 1255, column: 11, scope: !1606)
!1609 = !DILocation(line: 1256, column: 9, scope: !1605)
!1610 = !DILocation(line: 1258, column: 9, scope: !1605)
!1611 = !DILocation(line: 1262, column: 1, scope: !1237)
!1612 = distinct !DISubprogram(name: "base64_encode", scope: !208, file: !208, line: 88, type: !1613, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1617)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{null, !1615, !93, !1616, !93}
!1615 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!1616 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!1617 = !{!1618, !1619, !1620, !1621}
!1618 = !DILocalVariable(name: "in", arg: 1, scope: !1612, file: !208, line: 88, type: !1615)
!1619 = !DILocalVariable(name: "inlen", arg: 2, scope: !1612, file: !208, line: 88, type: !93)
!1620 = !DILocalVariable(name: "out", arg: 3, scope: !1612, file: !208, line: 89, type: !1616)
!1621 = !DILocalVariable(name: "outlen", arg: 4, scope: !1612, file: !208, line: 89, type: !93)
!1622 = !DILocation(line: 0, scope: !1612)
!1623 = !DILocation(line: 98, column: 14, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1612, file: !208, line: 98, column: 7)
!1625 = !DILocation(line: 98, column: 18, scope: !1624)
!1626 = !DILocation(line: 98, column: 23, scope: !1624)
!1627 = !DILocation(line: 98, column: 42, scope: !1624)
!1628 = !DILocation(line: 98, column: 46, scope: !1624)
!1629 = !DILocation(line: 98, column: 32, scope: !1624)
!1630 = !DILocation(line: 98, column: 7, scope: !1612)
!1631 = !DILocalVariable(name: "in", arg: 1, scope: !1632, file: !208, line: 69, type: !1615)
!1632 = distinct !DISubprogram(name: "base64_encode_fast", scope: !208, file: !208, line: 69, type: !1633, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1635)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{null, !1615, !93, !1616}
!1635 = !{!1631, !1636, !1637}
!1636 = !DILocalVariable(name: "inlen", arg: 2, scope: !1632, file: !208, line: 69, type: !93)
!1637 = !DILocalVariable(name: "out", arg: 3, scope: !1632, file: !208, line: 69, type: !1616)
!1638 = !DILocation(line: 0, scope: !1632, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 100, column: 7, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1624, file: !208, line: 99, column: 5)
!1641 = !DILocation(line: 71, column: 3, scope: !1632, inlinedAt: !1639)
!1642 = !DILocation(line: 73, column: 32, scope: !1643, inlinedAt: !1639)
!1643 = distinct !DILexicalBlock(scope: !1632, file: !208, line: 72, column: 5)
!1644 = !{!1645}
!1645 = distinct !{!1645, !1646, !"base64_encode_fast: argument 0"}
!1646 = distinct !{!1646, !"base64_encode_fast"}
!1647 = !{!1648}
!1648 = distinct !{!1648, !1646, !"base64_encode_fast: argument 1"}
!1649 = !DILocation(line: 73, column: 39, scope: !1643, inlinedAt: !1639)
!1650 = !DILocation(line: 73, column: 16, scope: !1643, inlinedAt: !1639)
!1651 = !{!1645, !1648}
!1652 = !DILocation(line: 73, column: 11, scope: !1643, inlinedAt: !1639)
!1653 = !DILocation(line: 73, column: 14, scope: !1643, inlinedAt: !1639)
!1654 = !DILocation(line: 74, column: 23, scope: !1643, inlinedAt: !1639)
!1655 = !DILocation(line: 74, column: 40, scope: !1643, inlinedAt: !1639)
!1656 = !DILocation(line: 74, column: 59, scope: !1643, inlinedAt: !1639)
!1657 = !DILocation(line: 74, column: 66, scope: !1643, inlinedAt: !1639)
!1658 = !DILocation(line: 74, column: 73, scope: !1643, inlinedAt: !1639)
!1659 = !DILocation(line: 74, column: 16, scope: !1643, inlinedAt: !1639)
!1660 = !DILocation(line: 74, column: 11, scope: !1643, inlinedAt: !1639)
!1661 = !DILocation(line: 74, column: 14, scope: !1643, inlinedAt: !1639)
!1662 = !DILocation(line: 75, column: 23, scope: !1643, inlinedAt: !1639)
!1663 = !DILocation(line: 75, column: 40, scope: !1643, inlinedAt: !1639)
!1664 = !DILocation(line: 75, column: 59, scope: !1643, inlinedAt: !1639)
!1665 = !DILocation(line: 75, column: 66, scope: !1643, inlinedAt: !1639)
!1666 = !DILocation(line: 75, column: 73, scope: !1643, inlinedAt: !1639)
!1667 = !DILocation(line: 75, column: 16, scope: !1643, inlinedAt: !1639)
!1668 = !DILocation(line: 75, column: 11, scope: !1643, inlinedAt: !1639)
!1669 = !DILocation(line: 75, column: 14, scope: !1643, inlinedAt: !1639)
!1670 = !DILocation(line: 76, column: 38, scope: !1643, inlinedAt: !1639)
!1671 = !DILocation(line: 76, column: 16, scope: !1643, inlinedAt: !1639)
!1672 = !DILocation(line: 76, column: 11, scope: !1643, inlinedAt: !1639)
!1673 = !DILocation(line: 76, column: 14, scope: !1643, inlinedAt: !1639)
!1674 = !DILocation(line: 78, column: 13, scope: !1643, inlinedAt: !1639)
!1675 = !DILocation(line: 79, column: 10, scope: !1643, inlinedAt: !1639)
!1676 = distinct !{!1676, !1641, !1677}
!1677 = !DILocation(line: 80, column: 5, scope: !1632, inlinedAt: !1639)
!1678 = !DILocation(line: 104, column: 10, scope: !1612)
!1679 = !DILocation(line: 104, column: 16, scope: !1612)
!1680 = !DILocation(line: 104, column: 3, scope: !1612)
!1681 = !DILocation(line: 106, column: 32, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1612, file: !208, line: 105, column: 5)
!1683 = !DILocation(line: 106, column: 39, scope: !1682)
!1684 = !DILocation(line: 106, column: 16, scope: !1682)
!1685 = !DILocation(line: 106, column: 11, scope: !1682)
!1686 = !DILocation(line: 106, column: 14, scope: !1682)
!1687 = !DILocation(line: 107, column: 12, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1682, file: !208, line: 107, column: 11)
!1689 = !DILocation(line: 107, column: 11, scope: !1682)
!1690 = !DILocation(line: 109, column: 33, scope: !1682)
!1691 = !DILocation(line: 109, column: 23, scope: !1682)
!1692 = !DILocation(line: 109, column: 40, scope: !1682)
!1693 = !DILocation(line: 110, column: 27, scope: !1682)
!1694 = !DILocation(line: 110, column: 47, scope: !1682)
!1695 = !DILocation(line: 110, column: 54, scope: !1682)
!1696 = !DILocation(line: 110, column: 24, scope: !1682)
!1697 = !DILocation(line: 111, column: 23, scope: !1682)
!1698 = !DILocation(line: 109, column: 16, scope: !1682)
!1699 = !DILocation(line: 109, column: 11, scope: !1682)
!1700 = !DILocation(line: 109, column: 14, scope: !1682)
!1701 = !DILocation(line: 112, column: 12, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1682, file: !208, line: 112, column: 11)
!1703 = !DILocation(line: 112, column: 11, scope: !1682)
!1704 = !DILocation(line: 115, column: 10, scope: !1682)
!1705 = !DILocation(line: 116, column: 29, scope: !1682)
!1706 = !DILocation(line: 116, column: 19, scope: !1682)
!1707 = !DILocation(line: 116, column: 36, scope: !1682)
!1708 = !DILocation(line: 117, column: 23, scope: !1682)
!1709 = !DILocation(line: 117, column: 43, scope: !1682)
!1710 = !DILocation(line: 117, column: 50, scope: !1682)
!1711 = !DILocation(line: 117, column: 20, scope: !1682)
!1712 = !DILocation(line: 118, column: 19, scope: !1682)
!1713 = !DILocation(line: 116, column: 12, scope: !1682)
!1714 = !DILocation(line: 0, scope: !1682)
!1715 = !DILocation(line: 114, column: 11, scope: !1682)
!1716 = !DILocation(line: 114, column: 14, scope: !1682)
!1717 = !DILocation(line: 120, column: 12, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1682, file: !208, line: 120, column: 11)
!1719 = !DILocation(line: 120, column: 11, scope: !1682)
!1720 = !DILocation(line: 122, column: 16, scope: !1682)
!1721 = !DILocation(line: 122, column: 39, scope: !1682)
!1722 = !DILocation(line: 122, column: 46, scope: !1682)
!1723 = !DILocation(line: 122, column: 24, scope: !1682)
!1724 = !DILocation(line: 122, column: 14, scope: !1682)
!1725 = !DILocation(line: 123, column: 12, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1682, file: !208, line: 123, column: 11)
!1727 = !DILocation(line: 123, column: 11, scope: !1682)
!1728 = !DILocation(line: 122, column: 11, scope: !1682)
!1729 = !DILocation(line: 126, column: 14, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1682, file: !208, line: 125, column: 11)
!1731 = !DILocation(line: 127, column: 11, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1682, file: !208, line: 127, column: 11)
!1733 = !DILocation(line: 127, column: 11, scope: !1682)
!1734 = distinct !{!1734, !1680, !1735}
!1735 = !DILocation(line: 129, column: 5, scope: !1612)
!1736 = !DILocation(line: 131, column: 7, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1612, file: !208, line: 131, column: 7)
!1738 = !DILocation(line: 131, column: 7, scope: !1612)
!1739 = !DILocation(line: 132, column: 10, scope: !1737)
!1740 = !DILocation(line: 132, column: 5, scope: !1737)
!1741 = !DILocation(line: 133, column: 1, scope: !1612)
!1742 = distinct !DISubprogram(name: "base64_encode_alloc", scope: !208, file: !208, line: 145, type: !1743, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1745)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!93, !36, !93, !559}
!1745 = !{!1746, !1747, !1748, !1749}
!1746 = !DILocalVariable(name: "in", arg: 1, scope: !1742, file: !208, line: 145, type: !36)
!1747 = !DILocalVariable(name: "inlen", arg: 2, scope: !1742, file: !208, line: 145, type: !93)
!1748 = !DILocalVariable(name: "out", arg: 3, scope: !1742, file: !208, line: 145, type: !559)
!1749 = !DILocalVariable(name: "outlen", scope: !1742, file: !208, line: 147, type: !93)
!1750 = !DILocation(line: 0, scope: !1742)
!1751 = !DILocation(line: 147, column: 23, scope: !1742)
!1752 = !DILocation(line: 147, column: 21, scope: !1742)
!1753 = !DILocation(line: 161, column: 13, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1742, file: !208, line: 161, column: 7)
!1755 = !DILocation(line: 161, column: 7, scope: !1742)
!1756 = !DILocation(line: 163, column: 12, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1754, file: !208, line: 162, column: 5)
!1758 = !DILocation(line: 164, column: 7, scope: !1757)
!1759 = !DILocation(line: 167, column: 10, scope: !1742)
!1760 = !DILocation(line: 167, column: 8, scope: !1742)
!1761 = !DILocation(line: 168, column: 8, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1742, file: !208, line: 168, column: 7)
!1763 = !DILocation(line: 168, column: 7, scope: !1742)
!1764 = !DILocation(line: 171, column: 3, scope: !1742)
!1765 = !DILocation(line: 173, column: 3, scope: !1742)
!1766 = !DILocation(line: 174, column: 1, scope: !1742)
!1767 = distinct !DISubprogram(name: "isbase64", scope: !208, file: !208, line: 329, type: !180, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1768)
!1768 = !{!1769}
!1769 = !DILocalVariable(name: "ch", arg: 1, scope: !1767, file: !208, line: 329, type: !35)
!1770 = !DILocation(line: 0, scope: !1767)
!1771 = !DILocation(line: 331, column: 49, scope: !1767)
!1772 = !DILocation(line: 331, column: 46, scope: !1767)
!1773 = !DILocation(line: 331, column: 3, scope: !1767)
!1774 = distinct !DISubprogram(name: "base64_decode_ctx_init", scope: !208, file: !208, line: 336, type: !1775, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1782)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{null, !1777}
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base64_decode_context", file: !168, line: 35, size: 64, elements: !1779)
!1779 = !{!1780, !1781}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1778, file: !168, line: 37, baseType: !7, size: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1778, file: !168, line: 38, baseType: !176, size: 32, offset: 32)
!1782 = !{!1783}
!1783 = !DILocalVariable(name: "ctx", arg: 1, scope: !1774, file: !208, line: 336, type: !1777)
!1784 = !DILocation(line: 0, scope: !1774)
!1785 = !DILocation(line: 338, column: 8, scope: !1774)
!1786 = !DILocation(line: 338, column: 10, scope: !1774)
!1787 = !{!1788, !1309, i64 0}
!1788 = !{!"base64_decode_context", !1309, i64 0, !1192, i64 4}
!1789 = !DILocation(line: 339, column: 1, scope: !1774)
!1790 = distinct !DISubprogram(name: "base64_decode_ctx", scope: !208, file: !208, line: 488, type: !1791, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1793)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!182, !1777, !1615, !93, !1616, !527}
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1805, !1807}
!1794 = !DILocalVariable(name: "ctx", arg: 1, scope: !1790, file: !208, line: 488, type: !1777)
!1795 = !DILocalVariable(name: "in", arg: 2, scope: !1790, file: !208, line: 489, type: !1615)
!1796 = !DILocalVariable(name: "inlen", arg: 3, scope: !1790, file: !208, line: 489, type: !93)
!1797 = !DILocalVariable(name: "out", arg: 4, scope: !1790, file: !208, line: 490, type: !1616)
!1798 = !DILocalVariable(name: "outlen", arg: 5, scope: !1790, file: !208, line: 490, type: !527)
!1799 = !DILocalVariable(name: "outleft", scope: !1790, file: !208, line: 492, type: !93)
!1800 = !DILocalVariable(name: "ignore_newlines", scope: !1790, file: !208, line: 493, type: !182)
!1801 = !DILocalVariable(name: "flush_ctx", scope: !1790, file: !208, line: 494, type: !182)
!1802 = !DILocalVariable(name: "ctx_i", scope: !1790, file: !208, line: 495, type: !7)
!1803 = !DILocalVariable(name: "outleft_save", scope: !1804, file: !208, line: 506, type: !93)
!1804 = distinct !DILexicalBlock(scope: !1790, file: !208, line: 505, column: 5)
!1805 = !DILocalVariable(name: "in_end", scope: !1806, file: !208, line: 539, type: !36)
!1806 = distinct !DILexicalBlock(scope: !1804, file: !208, line: 538, column: 7)
!1807 = !DILocalVariable(name: "non_nl", scope: !1806, file: !208, line: 540, type: !36)
!1808 = !DILocation(line: 0, scope: !1790)
!1809 = !DILocation(line: 492, column: 20, scope: !1790)
!1810 = !DILocation(line: 493, column: 30, scope: !1790)
!1811 = !DILocation(line: 497, column: 7, scope: !1790)
!1812 = !DILocation(line: 499, column: 20, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !208, line: 498, column: 5)
!1814 = distinct !DILexicalBlock(scope: !1790, file: !208, line: 497, column: 7)
!1815 = !DILocation(line: 500, column: 25, scope: !1813)
!1816 = !DILocation(line: 501, column: 5, scope: !1813)
!1817 = !DILocation(line: 0, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1804, file: !208, line: 507, column: 11)
!1819 = !DILocation(line: 0, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1804, file: !208, line: 527, column: 11)
!1821 = !DILocation(line: 0, scope: !1822, inlinedAt: !1839)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !208, line: 353, column: 7)
!1823 = distinct !DISubprogram(name: "get_4", scope: !208, file: !208, line: 349, type: !1824, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1827)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!34, !1777, !1826, !1615, !527}
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1827 = !{!1828, !1829, !1830, !1831, !1832, !1835, !1837}
!1828 = !DILocalVariable(name: "ctx", arg: 1, scope: !1823, file: !208, line: 349, type: !1777)
!1829 = !DILocalVariable(name: "in", arg: 2, scope: !1823, file: !208, line: 350, type: !1826)
!1830 = !DILocalVariable(name: "in_end", arg: 3, scope: !1823, file: !208, line: 350, type: !1615)
!1831 = !DILocalVariable(name: "n_non_newline", arg: 4, scope: !1823, file: !208, line: 351, type: !527)
!1832 = !DILocalVariable(name: "t", scope: !1833, file: !208, line: 358, type: !36)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !208, line: 357, column: 5)
!1834 = distinct !DILexicalBlock(scope: !1823, file: !208, line: 356, column: 7)
!1835 = !DILocalVariable(name: "p", scope: !1836, file: !208, line: 370, type: !36)
!1836 = distinct !DILexicalBlock(scope: !1823, file: !208, line: 368, column: 3)
!1837 = !DILocalVariable(name: "c", scope: !1838, file: !208, line: 373, type: !35)
!1838 = distinct !DILexicalBlock(scope: !1836, file: !208, line: 372, column: 7)
!1839 = distinct !DILocation(line: 543, column: 20, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1806, file: !208, line: 542, column: 13)
!1841 = !DILocation(line: 0, scope: !1836, inlinedAt: !1839)
!1842 = !DILocation(line: 504, column: 3, scope: !1790)
!1843 = !DILocation(line: 0, scope: !1804)
!1844 = !DILocation(line: 407, column: 13, scope: !1845, inlinedAt: !1856)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !208, line: 407, column: 7)
!1846 = distinct !DISubprogram(name: "decode_4", scope: !208, file: !208, line: 403, type: !1847, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !1850)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!182, !1615, !93, !1849, !527}
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1850 = !{!1851, !1852, !1853, !1854, !1855}
!1851 = !DILocalVariable(name: "in", arg: 1, scope: !1846, file: !208, line: 403, type: !1615)
!1852 = !DILocalVariable(name: "inlen", arg: 2, scope: !1846, file: !208, line: 403, type: !93)
!1853 = !DILocalVariable(name: "outp", arg: 3, scope: !1846, file: !208, line: 404, type: !1849)
!1854 = !DILocalVariable(name: "outleft", arg: 4, scope: !1846, file: !208, line: 404, type: !527)
!1855 = !DILocalVariable(name: "out", scope: !1846, file: !208, line: 406, type: !34)
!1856 = distinct !DILocation(line: 514, column: 20, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !208, line: 514, column: 19)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !208, line: 510, column: 13)
!1859 = distinct !DILexicalBlock(scope: !1818, file: !208, line: 508, column: 9)
!1860 = !DILocation(line: 507, column: 22, scope: !1818)
!1861 = !DILocation(line: 0, scope: !1846, inlinedAt: !1856)
!1862 = !DILocation(line: 509, column: 11, scope: !1859)
!1863 = !DILocation(line: 410, column: 18, scope: !1864, inlinedAt: !1856)
!1864 = distinct !DILexicalBlock(scope: !1846, file: !208, line: 410, column: 7)
!1865 = !{!1866}
!1866 = distinct !{!1866, !1867, !"decode_4: argument 0"}
!1867 = distinct !{!1867, !"decode_4"}
!1868 = !DILocation(line: 0, scope: !1767, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 410, column: 8, scope: !1864, inlinedAt: !1856)
!1870 = !DILocation(line: 331, column: 49, scope: !1767, inlinedAt: !1869)
!1871 = !DILocation(line: 331, column: 46, scope: !1767, inlinedAt: !1869)
!1872 = !DILocation(line: 410, column: 25, scope: !1864, inlinedAt: !1856)
!1873 = !DILocation(line: 410, column: 39, scope: !1864, inlinedAt: !1856)
!1874 = !DILocation(line: 0, scope: !1767, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 410, column: 29, scope: !1864, inlinedAt: !1856)
!1876 = !DILocation(line: 331, column: 49, scope: !1767, inlinedAt: !1875)
!1877 = !DILocation(line: 331, column: 46, scope: !1767, inlinedAt: !1875)
!1878 = !DILocation(line: 410, column: 7, scope: !1846, inlinedAt: !1856)
!1879 = !DILocation(line: 413, column: 7, scope: !1880, inlinedAt: !1856)
!1880 = distinct !DILexicalBlock(scope: !1846, file: !208, line: 413, column: 7)
!1881 = !DILocation(line: 413, column: 7, scope: !1846, inlinedAt: !1856)
!1882 = !DILocation(line: 415, column: 40, scope: !1883, inlinedAt: !1856)
!1883 = distinct !DILexicalBlock(scope: !1880, file: !208, line: 414, column: 5)
!1884 = !DILocation(line: 416, column: 42, scope: !1883, inlinedAt: !1856)
!1885 = !DILocation(line: 416, column: 17, scope: !1883, inlinedAt: !1856)
!1886 = !DILocation(line: 415, column: 11, scope: !1883, inlinedAt: !1856)
!1887 = !DILocation(line: 415, column: 14, scope: !1883, inlinedAt: !1856)
!1888 = !DILocation(line: 417, column: 7, scope: !1883, inlinedAt: !1856)
!1889 = !DILocation(line: 418, column: 5, scope: !1883, inlinedAt: !1856)
!1890 = !DILocation(line: 420, column: 13, scope: !1891, inlinedAt: !1856)
!1891 = distinct !DILexicalBlock(scope: !1846, file: !208, line: 420, column: 7)
!1892 = !DILocation(line: 420, column: 7, scope: !1846, inlinedAt: !1856)
!1893 = !DILocation(line: 423, column: 7, scope: !1894, inlinedAt: !1856)
!1894 = distinct !DILexicalBlock(scope: !1846, file: !208, line: 423, column: 7)
!1895 = !DILocation(line: 423, column: 13, scope: !1894, inlinedAt: !1856)
!1896 = !DILocation(line: 423, column: 7, scope: !1846, inlinedAt: !1856)
!1897 = !DILocation(line: 425, column: 17, scope: !1898, inlinedAt: !1856)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !208, line: 425, column: 11)
!1899 = distinct !DILexicalBlock(scope: !1894, file: !208, line: 424, column: 5)
!1900 = !DILocation(line: 425, column: 11, scope: !1899, inlinedAt: !1856)
!1901 = !DILocation(line: 428, column: 11, scope: !1902, inlinedAt: !1856)
!1902 = distinct !DILexicalBlock(scope: !1899, file: !208, line: 428, column: 11)
!1903 = !DILocation(line: 428, column: 17, scope: !1902, inlinedAt: !1856)
!1904 = !DILocation(line: 428, column: 11, scope: !1899, inlinedAt: !1856)
!1905 = !DILocation(line: 0, scope: !1767, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 433, column: 12, scope: !1907, inlinedAt: !1856)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !208, line: 433, column: 11)
!1908 = distinct !DILexicalBlock(scope: !1894, file: !208, line: 432, column: 5)
!1909 = !DILocation(line: 331, column: 49, scope: !1767, inlinedAt: !1906)
!1910 = !DILocation(line: 331, column: 46, scope: !1767, inlinedAt: !1906)
!1911 = !DILocation(line: 433, column: 11, scope: !1908, inlinedAt: !1856)
!1912 = !DILocation(line: 436, column: 11, scope: !1913, inlinedAt: !1856)
!1913 = distinct !DILexicalBlock(scope: !1908, file: !208, line: 436, column: 11)
!1914 = !DILocation(line: 436, column: 11, scope: !1908, inlinedAt: !1856)
!1915 = !DILocation(line: 438, column: 45, scope: !1916, inlinedAt: !1856)
!1916 = distinct !DILexicalBlock(scope: !1913, file: !208, line: 437, column: 9)
!1917 = !DILocation(line: 439, column: 46, scope: !1916, inlinedAt: !1856)
!1918 = !DILocation(line: 439, column: 21, scope: !1916, inlinedAt: !1856)
!1919 = !DILocation(line: 438, column: 15, scope: !1916, inlinedAt: !1856)
!1920 = !DILocation(line: 438, column: 18, scope: !1916, inlinedAt: !1856)
!1921 = !DILocation(line: 440, column: 11, scope: !1916, inlinedAt: !1856)
!1922 = !DILocation(line: 441, column: 9, scope: !1916, inlinedAt: !1856)
!1923 = !DILocation(line: 443, column: 17, scope: !1924, inlinedAt: !1856)
!1924 = distinct !DILexicalBlock(scope: !1908, file: !208, line: 443, column: 11)
!1925 = !DILocation(line: 443, column: 11, scope: !1908, inlinedAt: !1856)
!1926 = !DILocation(line: 446, column: 11, scope: !1927, inlinedAt: !1856)
!1927 = distinct !DILexicalBlock(scope: !1908, file: !208, line: 446, column: 11)
!1928 = !DILocation(line: 446, column: 17, scope: !1927, inlinedAt: !1856)
!1929 = !DILocation(line: 446, column: 11, scope: !1908, inlinedAt: !1856)
!1930 = !DILocation(line: 448, column: 21, scope: !1931, inlinedAt: !1856)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !208, line: 448, column: 15)
!1932 = distinct !DILexicalBlock(scope: !1927, file: !208, line: 447, column: 9)
!1933 = !DILocation(line: 448, column: 15, scope: !1932, inlinedAt: !1856)
!1934 = !DILocation(line: 0, scope: !1767, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 453, column: 16, scope: !1936, inlinedAt: !1856)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !208, line: 453, column: 15)
!1937 = distinct !DILexicalBlock(scope: !1927, file: !208, line: 452, column: 9)
!1938 = !DILocation(line: 331, column: 49, scope: !1767, inlinedAt: !1935)
!1939 = !DILocation(line: 331, column: 46, scope: !1767, inlinedAt: !1935)
!1940 = !DILocation(line: 453, column: 15, scope: !1937, inlinedAt: !1856)
!1941 = !DILocation(line: 456, column: 15, scope: !1942, inlinedAt: !1856)
!1942 = distinct !DILexicalBlock(scope: !1937, file: !208, line: 456, column: 15)
!1943 = !DILocation(line: 456, column: 15, scope: !1937, inlinedAt: !1856)
!1944 = !DILocation(line: 458, column: 49, scope: !1945, inlinedAt: !1856)
!1945 = distinct !DILexicalBlock(scope: !1942, file: !208, line: 457, column: 13)
!1946 = !DILocation(line: 459, column: 25, scope: !1945, inlinedAt: !1856)
!1947 = !DILocation(line: 458, column: 19, scope: !1945, inlinedAt: !1856)
!1948 = !DILocation(line: 458, column: 22, scope: !1945, inlinedAt: !1856)
!1949 = !DILocation(line: 460, column: 15, scope: !1945, inlinedAt: !1856)
!1950 = !DILocation(line: 461, column: 13, scope: !1945, inlinedAt: !1856)
!1951 = !DILocation(line: 517, column: 18, scope: !1858)
!1952 = !DILocation(line: 407, column: 7, scope: !1846, inlinedAt: !1856)
!1953 = !DILocation(line: 518, column: 21, scope: !1858)
!1954 = distinct !{!1954, !1862, !1955}
!1955 = !DILocation(line: 519, column: 13, scope: !1859)
!1956 = !DILocation(line: 522, column: 17, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1804, file: !208, line: 522, column: 11)
!1958 = !DILocation(line: 492, column: 10, scope: !1790)
!1959 = !DILocation(line: 522, column: 22, scope: !1957)
!1960 = !DILocation(line: 527, column: 17, scope: !1820)
!1961 = !DILocation(line: 539, column: 30, scope: !1806)
!1962 = !DILocation(line: 527, column: 21, scope: !1820)
!1963 = !DILocation(line: 527, column: 20, scope: !1820)
!1964 = !DILocation(line: 527, column: 24, scope: !1820)
!1965 = !DILocation(line: 527, column: 32, scope: !1820)
!1966 = !DILocation(line: 529, column: 11, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1820, file: !208, line: 528, column: 9)
!1968 = !DILocation(line: 530, column: 11, scope: !1967)
!1969 = !DILocation(line: 531, column: 11, scope: !1967)
!1970 = !DILocation(line: 535, column: 11, scope: !1804)
!1971 = !DILocation(line: 539, column: 33, scope: !1806)
!1972 = !DILocation(line: 0, scope: !1806)
!1973 = !DILocation(line: 542, column: 13, scope: !1806)
!1974 = !DILocation(line: 0, scope: !1823, inlinedAt: !1839)
!1975 = !DILocation(line: 353, column: 12, scope: !1822, inlinedAt: !1839)
!1976 = !{!1977}
!1977 = distinct !{!1977, !1978, !"get_4: argument 0"}
!1978 = distinct !{!1978, !"get_4"}
!1979 = !DILocation(line: 353, column: 7, scope: !1823, inlinedAt: !1839)
!1980 = !DILocation(line: 354, column: 12, scope: !1822, inlinedAt: !1839)
!1981 = !DILocation(line: 356, column: 7, scope: !1823, inlinedAt: !1839)
!1982 = !DILocation(line: 0, scope: !1833, inlinedAt: !1839)
!1983 = !DILocation(line: 359, column: 23, scope: !1984, inlinedAt: !1839)
!1984 = distinct !DILexicalBlock(scope: !1833, file: !208, line: 359, column: 11)
!1985 = !DILocation(line: 359, column: 13, scope: !1984, inlinedAt: !1839)
!1986 = !DILocation(line: 359, column: 29, scope: !1984, inlinedAt: !1839)
!1987 = !DILocation(line: 359, column: 32, scope: !1984, inlinedAt: !1839)
!1988 = !DILocation(line: 359, column: 52, scope: !1984, inlinedAt: !1839)
!1989 = !DILocation(line: 359, column: 11, scope: !1833, inlinedAt: !1839)
!1990 = !DILocation(line: 362, column: 15, scope: !1991, inlinedAt: !1839)
!1991 = distinct !DILexicalBlock(scope: !1984, file: !208, line: 360, column: 9)
!1992 = !DILocation(line: 0, scope: !1846, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 555, column: 14, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1806, file: !208, line: 555, column: 13)
!1995 = !DILocation(line: 407, column: 7, scope: !1846, inlinedAt: !1993)
!1996 = !DILocation(line: 371, column: 14, scope: !1836, inlinedAt: !1839)
!1997 = !DILocation(line: 371, column: 5, scope: !1836, inlinedAt: !1839)
!1998 = !DILocation(line: 374, column: 13, scope: !1838, inlinedAt: !1839)
!1999 = !DILocation(line: 373, column: 20, scope: !1838, inlinedAt: !1839)
!2000 = !DILocation(line: 373, column: 18, scope: !1838, inlinedAt: !1839)
!2001 = !DILocation(line: 0, scope: !1838, inlinedAt: !1839)
!2002 = !DILocation(line: 374, column: 15, scope: !2003, inlinedAt: !1839)
!2003 = distinct !DILexicalBlock(scope: !1838, file: !208, line: 374, column: 13)
!2004 = !DILocation(line: 376, column: 28, scope: !2005, inlinedAt: !1839)
!2005 = distinct !DILexicalBlock(scope: !2003, file: !208, line: 375, column: 11)
!2006 = !DILocation(line: 376, column: 13, scope: !2005, inlinedAt: !1839)
!2007 = !DILocation(line: 376, column: 32, scope: !2005, inlinedAt: !1839)
!2008 = !DILocation(line: 377, column: 24, scope: !2009, inlinedAt: !1839)
!2009 = distinct !DILexicalBlock(scope: !2005, file: !208, line: 377, column: 17)
!2010 = !DILocation(line: 377, column: 17, scope: !2005, inlinedAt: !1839)
!2011 = !DILocation(line: 383, column: 27, scope: !1836, inlinedAt: !1839)
!2012 = !DILocation(line: 382, column: 9, scope: !1836, inlinedAt: !1839)
!2013 = !DILocation(line: 383, column: 22, scope: !1836, inlinedAt: !1839)
!2014 = !DILocation(line: 0, scope: !1840)
!2015 = !DILocation(line: 550, column: 19, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1806, file: !208, line: 550, column: 13)
!2017 = !DILocation(line: 550, column: 24, scope: !2016)
!2018 = !DILocation(line: 550, column: 34, scope: !2016)
!2019 = !DILocation(line: 550, column: 38, scope: !2016)
!2020 = !DILocation(line: 407, column: 13, scope: !1845, inlinedAt: !1993)
!2021 = !DILocation(line: 410, column: 18, scope: !1864, inlinedAt: !1993)
!2022 = !{!2023}
!2023 = distinct !{!2023, !2024, !"decode_4: argument 0"}
!2024 = distinct !{!2024, !"decode_4"}
!2025 = !DILocation(line: 0, scope: !1767, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 410, column: 8, scope: !1864, inlinedAt: !1993)
!2027 = !DILocation(line: 331, column: 49, scope: !1767, inlinedAt: !2026)
!2028 = !DILocation(line: 331, column: 46, scope: !1767, inlinedAt: !2026)
!2029 = !DILocation(line: 410, column: 25, scope: !1864, inlinedAt: !1993)
!2030 = !DILocation(line: 410, column: 39, scope: !1864, inlinedAt: !1993)
!2031 = !DILocation(line: 0, scope: !1767, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 410, column: 29, scope: !1864, inlinedAt: !1993)
!2033 = !DILocation(line: 331, column: 49, scope: !1767, inlinedAt: !2032)
!2034 = !DILocation(line: 331, column: 46, scope: !1767, inlinedAt: !2032)
!2035 = !DILocation(line: 410, column: 7, scope: !1846, inlinedAt: !1993)
!2036 = !DILocation(line: 413, column: 7, scope: !1880, inlinedAt: !1993)
!2037 = !DILocation(line: 413, column: 7, scope: !1846, inlinedAt: !1993)
!2038 = !DILocation(line: 415, column: 40, scope: !1883, inlinedAt: !1993)
!2039 = !DILocation(line: 416, column: 42, scope: !1883, inlinedAt: !1993)
!2040 = !DILocation(line: 416, column: 17, scope: !1883, inlinedAt: !1993)
!2041 = !DILocation(line: 415, column: 11, scope: !1883, inlinedAt: !1993)
!2042 = !DILocation(line: 415, column: 14, scope: !1883, inlinedAt: !1993)
!2043 = !DILocation(line: 417, column: 7, scope: !1883, inlinedAt: !1993)
!2044 = !DILocation(line: 418, column: 5, scope: !1883, inlinedAt: !1993)
!2045 = !DILocation(line: 420, column: 13, scope: !1891, inlinedAt: !1993)
!2046 = !DILocation(line: 420, column: 7, scope: !1846, inlinedAt: !1993)
!2047 = !DILocation(line: 423, column: 7, scope: !1894, inlinedAt: !1993)
!2048 = !DILocation(line: 423, column: 13, scope: !1894, inlinedAt: !1993)
!2049 = !DILocation(line: 423, column: 7, scope: !1846, inlinedAt: !1993)
!2050 = !DILocation(line: 425, column: 17, scope: !1898, inlinedAt: !1993)
!2051 = !DILocation(line: 425, column: 11, scope: !1899, inlinedAt: !1993)
!2052 = !DILocation(line: 428, column: 11, scope: !1902, inlinedAt: !1993)
!2053 = !DILocation(line: 428, column: 17, scope: !1902, inlinedAt: !1993)
!2054 = !DILocation(line: 428, column: 11, scope: !1899, inlinedAt: !1993)
!2055 = !DILocation(line: 0, scope: !1767, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 433, column: 12, scope: !1907, inlinedAt: !1993)
!2057 = !DILocation(line: 331, column: 49, scope: !1767, inlinedAt: !2056)
!2058 = !DILocation(line: 331, column: 46, scope: !1767, inlinedAt: !2056)
!2059 = !DILocation(line: 433, column: 11, scope: !1908, inlinedAt: !1993)
!2060 = !DILocation(line: 436, column: 11, scope: !1913, inlinedAt: !1993)
!2061 = !DILocation(line: 436, column: 11, scope: !1908, inlinedAt: !1993)
!2062 = !DILocation(line: 438, column: 45, scope: !1916, inlinedAt: !1993)
!2063 = !DILocation(line: 439, column: 46, scope: !1916, inlinedAt: !1993)
!2064 = !DILocation(line: 439, column: 21, scope: !1916, inlinedAt: !1993)
!2065 = !DILocation(line: 438, column: 15, scope: !1916, inlinedAt: !1993)
!2066 = !DILocation(line: 438, column: 18, scope: !1916, inlinedAt: !1993)
!2067 = !DILocation(line: 440, column: 11, scope: !1916, inlinedAt: !1993)
!2068 = !DILocation(line: 441, column: 9, scope: !1916, inlinedAt: !1993)
!2069 = !DILocation(line: 443, column: 17, scope: !1924, inlinedAt: !1993)
!2070 = !DILocation(line: 443, column: 11, scope: !1908, inlinedAt: !1993)
!2071 = !DILocation(line: 446, column: 11, scope: !1927, inlinedAt: !1993)
!2072 = !DILocation(line: 446, column: 17, scope: !1927, inlinedAt: !1993)
!2073 = !DILocation(line: 446, column: 11, scope: !1908, inlinedAt: !1993)
!2074 = !DILocation(line: 448, column: 21, scope: !1931, inlinedAt: !1993)
!2075 = !DILocation(line: 448, column: 15, scope: !1932, inlinedAt: !1993)
!2076 = !DILocation(line: 0, scope: !1767, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 453, column: 16, scope: !1936, inlinedAt: !1993)
!2078 = !DILocation(line: 331, column: 49, scope: !1767, inlinedAt: !2077)
!2079 = !DILocation(line: 331, column: 46, scope: !1767, inlinedAt: !2077)
!2080 = !DILocation(line: 453, column: 15, scope: !1937, inlinedAt: !1993)
!2081 = !DILocation(line: 456, column: 15, scope: !1942, inlinedAt: !1993)
!2082 = !DILocation(line: 456, column: 15, scope: !1937, inlinedAt: !1993)
!2083 = !DILocation(line: 458, column: 49, scope: !1945, inlinedAt: !1993)
!2084 = !DILocation(line: 459, column: 25, scope: !1945, inlinedAt: !1993)
!2085 = !DILocation(line: 458, column: 19, scope: !1945, inlinedAt: !1993)
!2086 = !DILocation(line: 458, column: 22, scope: !1945, inlinedAt: !1993)
!2087 = !DILocation(line: 460, column: 15, scope: !1945, inlinedAt: !1993)
!2088 = !DILocation(line: 461, column: 13, scope: !1945, inlinedAt: !1993)
!2089 = !DILocation(line: 558, column: 24, scope: !1806)
!2090 = !DILocation(line: 559, column: 7, scope: !1804)
!2091 = distinct !{!2091, !1842, !2092}
!2092 = !DILocation(line: 560, column: 5, scope: !1790)
!2093 = !DILocation(line: 562, column: 11, scope: !1790)
!2094 = !DILocation(line: 564, column: 16, scope: !1790)
!2095 = !DILocation(line: 564, column: 3, scope: !1790)
!2096 = distinct !DISubprogram(name: "base64_decode_alloc_ctx", scope: !208, file: !208, line: 579, type: !2097, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !2099)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!182, !1777, !36, !93, !559, !527}
!2099 = !{!2100, !2101, !2102, !2103, !2104, !2105}
!2100 = !DILocalVariable(name: "ctx", arg: 1, scope: !2096, file: !208, line: 579, type: !1777)
!2101 = !DILocalVariable(name: "in", arg: 2, scope: !2096, file: !208, line: 580, type: !36)
!2102 = !DILocalVariable(name: "inlen", arg: 3, scope: !2096, file: !208, line: 580, type: !93)
!2103 = !DILocalVariable(name: "out", arg: 4, scope: !2096, file: !208, line: 580, type: !559)
!2104 = !DILocalVariable(name: "outlen", arg: 5, scope: !2096, file: !208, line: 581, type: !527)
!2105 = !DILocalVariable(name: "needlen", scope: !2096, file: !208, line: 588, type: !93)
!2106 = !DILocation(line: 0, scope: !2096)
!2107 = !DILocation(line: 588, column: 3, scope: !2096)
!2108 = !DILocation(line: 588, column: 31, scope: !2096)
!2109 = !DILocation(line: 588, column: 22, scope: !2096)
!2110 = !DILocation(line: 588, column: 36, scope: !2096)
!2111 = !DILocation(line: 588, column: 10, scope: !2096)
!2112 = !DILocation(line: 590, column: 10, scope: !2096)
!2113 = !DILocation(line: 590, column: 8, scope: !2096)
!2114 = !DILocation(line: 591, column: 8, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2096, file: !208, line: 591, column: 7)
!2116 = !DILocation(line: 591, column: 7, scope: !2096)
!2117 = !DILocation(line: 594, column: 8, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2096, file: !208, line: 594, column: 7)
!2119 = !DILocation(line: 594, column: 7, scope: !2096)
!2120 = !DILocation(line: 596, column: 13, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2118, file: !208, line: 595, column: 5)
!2122 = !DILocation(line: 596, column: 7, scope: !2121)
!2123 = !DILocation(line: 597, column: 12, scope: !2121)
!2124 = !DILocation(line: 598, column: 7, scope: !2121)
!2125 = !DILocation(line: 601, column: 7, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2096, file: !208, line: 601, column: 7)
!2127 = !DILocation(line: 601, column: 7, scope: !2096)
!2128 = !DILocation(line: 602, column: 15, scope: !2126)
!2129 = !DILocation(line: 602, column: 13, scope: !2126)
!2130 = !DILocation(line: 602, column: 5, scope: !2126)
!2131 = !DILocation(line: 605, column: 1, scope: !2096)
!2132 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !226, file: !226, line: 51, type: !103, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !2133)
!2133 = !{!2134}
!2134 = !DILocalVariable(name: "file", arg: 1, scope: !2132, file: !226, line: 51, type: !36)
!2135 = !DILocation(line: 0, scope: !2132)
!2136 = !DILocation(line: 53, column: 13, scope: !2132)
!2137 = !DILocation(line: 54, column: 1, scope: !2132)
!2138 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !226, file: !226, line: 88, type: !2139, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !2141)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{null, !182}
!2141 = !{!2142}
!2142 = !DILocalVariable(name: "ignore", arg: 1, scope: !2138, file: !226, line: 88, type: !182)
!2143 = !DILocation(line: 0, scope: !2138)
!2144 = !DILocation(line: 90, column: 16, scope: !2138)
!2145 = !{!2146, !2146, i64 0}
!2146 = !{!"_Bool", !1192, i64 0}
!2147 = !DILocation(line: 91, column: 1, scope: !2138)
!2148 = distinct !DISubprogram(name: "close_stdout", scope: !226, file: !226, line: 117, type: !120, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !2149)
!2149 = !{!2150}
!2150 = !DILocalVariable(name: "write_error", scope: !2151, file: !226, line: 122, type: !36)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !226, line: 121, column: 5)
!2152 = distinct !DILexicalBlock(scope: !2148, file: !226, line: 119, column: 7)
!2153 = !DILocation(line: 119, column: 21, scope: !2152)
!2154 = !DILocation(line: 119, column: 7, scope: !2152)
!2155 = !DILocation(line: 119, column: 29, scope: !2152)
!2156 = !DILocation(line: 120, column: 7, scope: !2152)
!2157 = !DILocation(line: 120, column: 12, scope: !2152)
!2158 = !{i8 0, i8 2}
!2159 = !DILocation(line: 120, column: 25, scope: !2152)
!2160 = !DILocation(line: 120, column: 28, scope: !2152)
!2161 = !DILocation(line: 120, column: 34, scope: !2152)
!2162 = !DILocation(line: 119, column: 7, scope: !2148)
!2163 = !DILocation(line: 122, column: 33, scope: !2151)
!2164 = !DILocation(line: 0, scope: !2151)
!2165 = !DILocation(line: 123, column: 11, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2151, file: !226, line: 123, column: 11)
!2167 = !DILocation(line: 0, scope: !2166)
!2168 = !DILocation(line: 123, column: 11, scope: !2151)
!2169 = !DILocation(line: 124, column: 36, scope: !2166)
!2170 = !DILocation(line: 124, column: 9, scope: !2166)
!2171 = !DILocation(line: 127, column: 9, scope: !2166)
!2172 = !DILocation(line: 129, column: 14, scope: !2151)
!2173 = !DILocation(line: 129, column: 7, scope: !2151)
!2174 = !DILocation(line: 134, column: 42, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2148, file: !226, line: 134, column: 7)
!2176 = !DILocation(line: 134, column: 28, scope: !2175)
!2177 = !DILocation(line: 134, column: 50, scope: !2175)
!2178 = !DILocation(line: 134, column: 7, scope: !2148)
!2179 = !DILocation(line: 135, column: 12, scope: !2175)
!2180 = !DILocation(line: 135, column: 5, scope: !2175)
!2181 = !DILocation(line: 136, column: 1, scope: !2148)
!2182 = distinct !DISubprogram(name: "fdadvise", scope: !436, file: !436, line: 31, type: !2183, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !2187)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{null, !38, !2185, !2185, !2186}
!2185 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !41, line: 63, baseType: !67)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!2187 = !{!2188, !2189, !2190, !2191, !2192}
!2188 = !DILocalVariable(name: "fd", arg: 1, scope: !2182, file: !436, line: 31, type: !38)
!2189 = !DILocalVariable(name: "offset", arg: 2, scope: !2182, file: !436, line: 31, type: !2185)
!2190 = !DILocalVariable(name: "len", arg: 3, scope: !2182, file: !436, line: 31, type: !2185)
!2191 = !DILocalVariable(name: "advice", arg: 4, scope: !2182, file: !436, line: 31, type: !2186)
!2192 = !DILocalVariable(name: "__x", scope: !2193, file: !436, line: 34, type: !38)
!2193 = distinct !DILexicalBlock(scope: !2182, file: !436, line: 34, column: 3)
!2194 = !DILocation(line: 0, scope: !2182)
!2195 = !DILocation(line: 34, column: 3, scope: !2193)
!2196 = !DILocation(line: 0, scope: !2193)
!2197 = !DILocation(line: 36, column: 1, scope: !2182)
!2198 = distinct !DISubprogram(name: "fadvise", scope: !436, file: !436, line: 39, type: !2199, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !2203)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{null, !2201, !2186}
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1247, line: 7, baseType: !447)
!2203 = !{!2204, !2205}
!2204 = !DILocalVariable(name: "fp", arg: 1, scope: !2198, file: !436, line: 39, type: !2201)
!2205 = !DILocalVariable(name: "advice", arg: 2, scope: !2198, file: !436, line: 39, type: !2186)
!2206 = !DILocation(line: 0, scope: !2198)
!2207 = !DILocation(line: 41, column: 7, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2198, file: !436, line: 41, column: 7)
!2209 = !DILocation(line: 41, column: 7, scope: !2198)
!2210 = !DILocation(line: 42, column: 15, scope: !2208)
!2211 = !DILocation(line: 0, scope: !2182, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 42, column: 5, scope: !2208)
!2213 = !DILocation(line: 34, column: 3, scope: !2193, inlinedAt: !2212)
!2214 = !DILocation(line: 0, scope: !2193, inlinedAt: !2212)
!2215 = !DILocation(line: 42, column: 5, scope: !2208)
!2216 = !DILocation(line: 43, column: 1, scope: !2198)
!2217 = distinct !DISubprogram(name: "set_program_name", scope: !277, file: !277, line: 39, type: !103, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2218)
!2218 = !{!2219, !2220, !2221}
!2219 = !DILocalVariable(name: "argv0", arg: 1, scope: !2217, file: !277, line: 39, type: !36)
!2220 = !DILocalVariable(name: "slash", scope: !2217, file: !277, line: 46, type: !36)
!2221 = !DILocalVariable(name: "base", scope: !2217, file: !277, line: 47, type: !36)
!2222 = !DILocation(line: 0, scope: !2217)
!2223 = !DILocation(line: 51, column: 13, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2217, file: !277, line: 51, column: 7)
!2225 = !DILocation(line: 51, column: 7, scope: !2217)
!2226 = !DILocation(line: 55, column: 14, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2224, file: !277, line: 52, column: 5)
!2228 = !DILocation(line: 54, column: 7, scope: !2227)
!2229 = !DILocation(line: 56, column: 7, scope: !2227)
!2230 = !DILocation(line: 59, column: 11, scope: !2217)
!2231 = !DILocation(line: 60, column: 17, scope: !2217)
!2232 = !DILocation(line: 60, column: 11, scope: !2217)
!2233 = !DILocation(line: 61, column: 12, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2217, file: !277, line: 61, column: 7)
!2235 = !DILocation(line: 61, column: 20, scope: !2234)
!2236 = !DILocation(line: 61, column: 25, scope: !2234)
!2237 = !DILocation(line: 61, column: 42, scope: !2234)
!2238 = !DILocation(line: 61, column: 28, scope: !2234)
!2239 = !DILocation(line: 61, column: 61, scope: !2234)
!2240 = !DILocation(line: 61, column: 7, scope: !2217)
!2241 = !DILocation(line: 64, column: 11, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !277, line: 64, column: 11)
!2243 = distinct !DILexicalBlock(scope: !2234, file: !277, line: 62, column: 5)
!2244 = !DILocation(line: 64, column: 36, scope: !2242)
!2245 = !DILocation(line: 64, column: 11, scope: !2243)
!2246 = !DILocation(line: 66, column: 24, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2242, file: !277, line: 65, column: 9)
!2248 = !DILocation(line: 70, column: 41, scope: !2247)
!2249 = !DILocation(line: 72, column: 9, scope: !2247)
!2250 = !DILocation(line: 84, column: 16, scope: !2217)
!2251 = !DILocation(line: 90, column: 27, scope: !2217)
!2252 = !DILocation(line: 92, column: 1, scope: !2217)
!2253 = distinct !DISubprogram(name: "clone_quoting_options", scope: !318, file: !318, line: 122, type: !2254, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !2257)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!2256, !2256}
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!2257 = !{!2258, !2259, !2260}
!2258 = !DILocalVariable(name: "o", arg: 1, scope: !2253, file: !318, line: 122, type: !2256)
!2259 = !DILocalVariable(name: "e", scope: !2253, file: !318, line: 124, type: !38)
!2260 = !DILocalVariable(name: "p", scope: !2253, file: !318, line: 125, type: !2256)
!2261 = !DILocation(line: 0, scope: !2253)
!2262 = !DILocation(line: 124, column: 11, scope: !2253)
!2263 = !DILocation(line: 125, column: 40, scope: !2253)
!2264 = !DILocation(line: 125, column: 31, scope: !2253)
!2265 = !DILocation(line: 127, column: 9, scope: !2253)
!2266 = !DILocation(line: 128, column: 3, scope: !2253)
!2267 = distinct !DISubprogram(name: "get_quoting_style", scope: !318, file: !318, line: 133, type: !2268, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !2270)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!5, !347}
!2270 = !{!2271}
!2271 = !DILocalVariable(name: "o", arg: 1, scope: !2267, file: !318, line: 133, type: !347)
!2272 = !DILocation(line: 0, scope: !2267)
!2273 = !DILocation(line: 135, column: 11, scope: !2267)
!2274 = !DILocation(line: 135, column: 46, scope: !2267)
!2275 = !{!2276, !1192, i64 0}
!2276 = !{!"quoting_options", !1192, i64 0, !1309, i64 4, !1192, i64 8, !1191, i64 40, !1191, i64 48}
!2277 = !DILocation(line: 135, column: 3, scope: !2267)
!2278 = distinct !DISubprogram(name: "set_quoting_style", scope: !318, file: !318, line: 141, type: !2279, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !2281)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{null, !2256, !5}
!2281 = !{!2282, !2283}
!2282 = !DILocalVariable(name: "o", arg: 1, scope: !2278, file: !318, line: 141, type: !2256)
!2283 = !DILocalVariable(name: "s", arg: 2, scope: !2278, file: !318, line: 141, type: !5)
!2284 = !DILocation(line: 0, scope: !2278)
!2285 = !DILocation(line: 143, column: 4, scope: !2278)
!2286 = !DILocation(line: 143, column: 39, scope: !2278)
!2287 = !DILocation(line: 143, column: 45, scope: !2278)
!2288 = !DILocation(line: 144, column: 1, scope: !2278)
!2289 = distinct !DISubprogram(name: "set_char_quoting", scope: !318, file: !318, line: 152, type: !2290, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !2292)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!38, !2256, !35, !38}
!2292 = !{!2293, !2294, !2295, !2296, !2297, !2299, !2300}
!2293 = !DILocalVariable(name: "o", arg: 1, scope: !2289, file: !318, line: 152, type: !2256)
!2294 = !DILocalVariable(name: "c", arg: 2, scope: !2289, file: !318, line: 152, type: !35)
!2295 = !DILocalVariable(name: "i", arg: 3, scope: !2289, file: !318, line: 152, type: !38)
!2296 = !DILocalVariable(name: "uc", scope: !2289, file: !318, line: 154, type: !192)
!2297 = !DILocalVariable(name: "p", scope: !2289, file: !318, line: 155, type: !2298)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2299 = !DILocalVariable(name: "shift", scope: !2289, file: !318, line: 157, type: !38)
!2300 = !DILocalVariable(name: "r", scope: !2289, file: !318, line: 158, type: !38)
!2301 = !DILocation(line: 0, scope: !2289)
!2302 = !DILocation(line: 156, column: 6, scope: !2289)
!2303 = !DILocation(line: 156, column: 62, scope: !2289)
!2304 = !DILocation(line: 156, column: 57, scope: !2289)
!2305 = !DILocation(line: 157, column: 15, scope: !2289)
!2306 = !DILocation(line: 158, column: 12, scope: !2289)
!2307 = !DILocation(line: 158, column: 15, scope: !2289)
!2308 = !DILocation(line: 158, column: 25, scope: !2289)
!2309 = !DILocation(line: 159, column: 13, scope: !2289)
!2310 = !DILocation(line: 159, column: 18, scope: !2289)
!2311 = !DILocation(line: 159, column: 23, scope: !2289)
!2312 = !DILocation(line: 159, column: 6, scope: !2289)
!2313 = !DILocation(line: 160, column: 3, scope: !2289)
!2314 = distinct !DISubprogram(name: "set_quoting_flags", scope: !318, file: !318, line: 168, type: !2315, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!38, !2256, !38}
!2317 = !{!2318, !2319, !2320}
!2318 = !DILocalVariable(name: "o", arg: 1, scope: !2314, file: !318, line: 168, type: !2256)
!2319 = !DILocalVariable(name: "i", arg: 2, scope: !2314, file: !318, line: 168, type: !38)
!2320 = !DILocalVariable(name: "r", scope: !2314, file: !318, line: 170, type: !38)
!2321 = !DILocation(line: 0, scope: !2314)
!2322 = !DILocation(line: 171, column: 8, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2314, file: !318, line: 171, column: 7)
!2324 = !DILocation(line: 171, column: 7, scope: !2314)
!2325 = !DILocation(line: 173, column: 10, scope: !2314)
!2326 = !{!2276, !1309, i64 4}
!2327 = !DILocation(line: 174, column: 12, scope: !2314)
!2328 = !DILocation(line: 175, column: 3, scope: !2314)
!2329 = distinct !DISubprogram(name: "set_custom_quoting", scope: !318, file: !318, line: 179, type: !2330, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !2332)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{null, !2256, !36, !36}
!2332 = !{!2333, !2334, !2335}
!2333 = !DILocalVariable(name: "o", arg: 1, scope: !2329, file: !318, line: 179, type: !2256)
!2334 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2329, file: !318, line: 180, type: !36)
!2335 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2329, file: !318, line: 180, type: !36)
!2336 = !DILocation(line: 0, scope: !2329)
!2337 = !DILocation(line: 182, column: 8, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2329, file: !318, line: 182, column: 7)
!2339 = !DILocation(line: 182, column: 7, scope: !2329)
!2340 = !DILocation(line: 184, column: 6, scope: !2329)
!2341 = !DILocation(line: 184, column: 12, scope: !2329)
!2342 = !DILocation(line: 185, column: 8, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2329, file: !318, line: 185, column: 7)
!2344 = !DILocation(line: 185, column: 23, scope: !2343)
!2345 = !DILocation(line: 185, column: 19, scope: !2343)
!2346 = !DILocation(line: 186, column: 5, scope: !2343)
!2347 = !DILocation(line: 187, column: 6, scope: !2329)
!2348 = !DILocation(line: 187, column: 17, scope: !2329)
!2349 = !{!2276, !1191, i64 40}
!2350 = !DILocation(line: 188, column: 6, scope: !2329)
!2351 = !DILocation(line: 188, column: 18, scope: !2329)
!2352 = !{!2276, !1191, i64 48}
!2353 = !DILocation(line: 189, column: 1, scope: !2329)
!2354 = distinct !DISubprogram(name: "quotearg_buffer", scope: !318, file: !318, line: 784, type: !2355, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!93, !34, !93, !36, !93, !347}
!2357 = !{!2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365}
!2358 = !DILocalVariable(name: "buffer", arg: 1, scope: !2354, file: !318, line: 784, type: !34)
!2359 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2354, file: !318, line: 784, type: !93)
!2360 = !DILocalVariable(name: "arg", arg: 3, scope: !2354, file: !318, line: 785, type: !36)
!2361 = !DILocalVariable(name: "argsize", arg: 4, scope: !2354, file: !318, line: 785, type: !93)
!2362 = !DILocalVariable(name: "o", arg: 5, scope: !2354, file: !318, line: 786, type: !347)
!2363 = !DILocalVariable(name: "p", scope: !2354, file: !318, line: 788, type: !347)
!2364 = !DILocalVariable(name: "e", scope: !2354, file: !318, line: 789, type: !38)
!2365 = !DILocalVariable(name: "r", scope: !2354, file: !318, line: 790, type: !93)
!2366 = !DILocation(line: 0, scope: !2354)
!2367 = !DILocation(line: 788, column: 37, scope: !2354)
!2368 = !DILocation(line: 789, column: 11, scope: !2354)
!2369 = !DILocation(line: 791, column: 43, scope: !2354)
!2370 = !DILocation(line: 791, column: 53, scope: !2354)
!2371 = !DILocation(line: 791, column: 60, scope: !2354)
!2372 = !DILocation(line: 792, column: 43, scope: !2354)
!2373 = !DILocation(line: 792, column: 58, scope: !2354)
!2374 = !DILocation(line: 790, column: 14, scope: !2354)
!2375 = !DILocation(line: 793, column: 9, scope: !2354)
!2376 = !DILocation(line: 794, column: 3, scope: !2354)
!2377 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !318, file: !318, line: 256, type: !2378, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !2382)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!93, !34, !93, !36, !93, !5, !38, !2380, !36, !36}
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2382 = !{!2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2407, !2408, !2409, !2410, !2411, !2414, !2415, !2421, !2424, !2425, !2432, !2435, !2436, !2437, !2438, !2439, !2440}
!2383 = !DILocalVariable(name: "buffer", arg: 1, scope: !2377, file: !318, line: 256, type: !34)
!2384 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2377, file: !318, line: 256, type: !93)
!2385 = !DILocalVariable(name: "arg", arg: 3, scope: !2377, file: !318, line: 257, type: !36)
!2386 = !DILocalVariable(name: "argsize", arg: 4, scope: !2377, file: !318, line: 257, type: !93)
!2387 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2377, file: !318, line: 258, type: !5)
!2388 = !DILocalVariable(name: "flags", arg: 6, scope: !2377, file: !318, line: 258, type: !38)
!2389 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2377, file: !318, line: 259, type: !2380)
!2390 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2377, file: !318, line: 260, type: !36)
!2391 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2377, file: !318, line: 261, type: !36)
!2392 = !DILocalVariable(name: "i", scope: !2377, file: !318, line: 263, type: !93)
!2393 = !DILocalVariable(name: "len", scope: !2377, file: !318, line: 264, type: !93)
!2394 = !DILocalVariable(name: "orig_buffersize", scope: !2377, file: !318, line: 265, type: !93)
!2395 = !DILocalVariable(name: "quote_string", scope: !2377, file: !318, line: 266, type: !36)
!2396 = !DILocalVariable(name: "quote_string_len", scope: !2377, file: !318, line: 267, type: !93)
!2397 = !DILocalVariable(name: "backslash_escapes", scope: !2377, file: !318, line: 268, type: !182)
!2398 = !DILocalVariable(name: "unibyte_locale", scope: !2377, file: !318, line: 269, type: !182)
!2399 = !DILocalVariable(name: "elide_outer_quotes", scope: !2377, file: !318, line: 270, type: !182)
!2400 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2377, file: !318, line: 271, type: !182)
!2401 = !DILocalVariable(name: "encountered_single_quote", scope: !2377, file: !318, line: 272, type: !182)
!2402 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2377, file: !318, line: 273, type: !182)
!2403 = !DILocalVariable(name: "c", scope: !2404, file: !318, line: 402, type: !192)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !318, line: 401, column: 5)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !318, line: 400, column: 3)
!2406 = distinct !DILexicalBlock(scope: !2377, file: !318, line: 400, column: 3)
!2407 = !DILocalVariable(name: "esc", scope: !2404, file: !318, line: 403, type: !192)
!2408 = !DILocalVariable(name: "is_right_quote", scope: !2404, file: !318, line: 404, type: !182)
!2409 = !DILocalVariable(name: "escaping", scope: !2404, file: !318, line: 405, type: !182)
!2410 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2404, file: !318, line: 406, type: !182)
!2411 = !DILocalVariable(name: "m", scope: !2412, file: !318, line: 610, type: !93)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !318, line: 608, column: 11)
!2413 = distinct !DILexicalBlock(scope: !2404, file: !318, line: 426, column: 9)
!2414 = !DILocalVariable(name: "printable", scope: !2412, file: !318, line: 612, type: !182)
!2415 = !DILocalVariable(name: "mbstate", scope: !2416, file: !318, line: 621, type: !2418)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !318, line: 620, column: 15)
!2417 = distinct !DILexicalBlock(scope: !2412, file: !318, line: 614, column: 17)
!2418 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2419, line: 6, baseType: !2420)
!2419 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !368, line: 21, baseType: !367)
!2421 = !DILocalVariable(name: "w", scope: !2422, file: !318, line: 631, type: !2423)
!2422 = distinct !DILexicalBlock(scope: !2416, file: !318, line: 630, column: 19)
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !94, line: 74, baseType: !38)
!2424 = !DILocalVariable(name: "bytes", scope: !2422, file: !318, line: 632, type: !93)
!2425 = !DILocalVariable(name: "j", scope: !2426, file: !318, line: 657, type: !93)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !318, line: 656, column: 27)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !318, line: 654, column: 29)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !318, line: 649, column: 23)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !318, line: 641, column: 30)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !318, line: 636, column: 30)
!2431 = distinct !DILexicalBlock(scope: !2422, file: !318, line: 634, column: 25)
!2432 = !DILocalVariable(name: "ilim", scope: !2433, file: !318, line: 684, type: !93)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !318, line: 681, column: 15)
!2434 = distinct !DILexicalBlock(scope: !2412, file: !318, line: 680, column: 17)
!2435 = !DILabel(scope: !2377, name: "process_input", file: !318, line: 314)
!2436 = !DILabel(scope: !2413, name: "c_and_shell_escape", file: !318, line: 512)
!2437 = !DILabel(scope: !2413, name: "c_escape", file: !318, line: 517)
!2438 = !DILabel(scope: !2404, name: "store_escape", file: !318, line: 719)
!2439 = !DILabel(scope: !2404, name: "store_c", file: !318, line: 722)
!2440 = !DILabel(scope: !2377, name: "force_outer_quoting_style", file: !318, line: 763)
!2441 = !DILocation(line: 0, scope: !2377)
!2442 = !DILocation(line: 269, column: 25, scope: !2377)
!2443 = !DILocation(line: 269, column: 36, scope: !2377)
!2444 = !DILocation(line: 270, column: 8, scope: !2377)
!2445 = !DILocation(line: 0, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2413, file: !318, line: 526, column: 15)
!2447 = !DILocation(line: 0, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !318, line: 462, column: 19)
!2449 = distinct !DILexicalBlock(scope: !2413, file: !318, line: 455, column: 13)
!2450 = !DILocation(line: 0, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !318, line: 449, column: 20)
!2452 = distinct !DILexicalBlock(scope: !2413, file: !318, line: 428, column: 15)
!2453 = !DILocation(line: 0, scope: !2416)
!2454 = !DILocation(line: 0, scope: !2422)
!2455 = !DILocation(line: 0, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2404, file: !318, line: 712, column: 11)
!2457 = !DILocation(line: 273, column: 3, scope: !2377)
!2458 = !DILocation(line: 265, column: 10, scope: !2377)
!2459 = !DILocation(line: 266, column: 15, scope: !2377)
!2460 = !DILocation(line: 267, column: 10, scope: !2377)
!2461 = !DILocation(line: 268, column: 8, scope: !2377)
!2462 = !DILocation(line: 271, column: 8, scope: !2377)
!2463 = !DILocation(line: 272, column: 8, scope: !2377)
!2464 = !DILocation(line: 273, column: 8, scope: !2377)
!2465 = !DILocation(line: 314, column: 2, scope: !2377)
!2466 = !DILocation(line: 316, column: 3, scope: !2377)
!2467 = !DILocation(line: 323, column: 11, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2377, file: !318, line: 317, column: 5)
!2469 = !DILocation(line: 323, column: 12, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2468, file: !318, line: 323, column: 11)
!2471 = !DILocation(line: 324, column: 9, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !318, line: 324, column: 9)
!2473 = distinct !DILexicalBlock(scope: !2470, file: !318, line: 324, column: 9)
!2474 = !DILocation(line: 324, column: 9, scope: !2473)
!2475 = !DILocation(line: 362, column: 26, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !318, line: 340, column: 11)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !318, line: 339, column: 13)
!2478 = distinct !DILexicalBlock(scope: !2468, file: !318, line: 338, column: 7)
!2479 = !DILocation(line: 363, column: 27, scope: !2476)
!2480 = !DILocation(line: 364, column: 11, scope: !2476)
!2481 = !DILocation(line: 365, column: 14, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2478, file: !318, line: 365, column: 13)
!2483 = !DILocation(line: 365, column: 13, scope: !2478)
!2484 = !DILocation(line: 366, column: 43, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !318, line: 366, column: 11)
!2486 = distinct !DILexicalBlock(scope: !2482, file: !318, line: 366, column: 11)
!2487 = !DILocation(line: 366, column: 11, scope: !2486)
!2488 = !DILocation(line: 367, column: 13, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !318, line: 367, column: 13)
!2490 = distinct !DILexicalBlock(scope: !2485, file: !318, line: 367, column: 13)
!2491 = !DILocation(line: 367, column: 13, scope: !2490)
!2492 = !DILocation(line: 366, column: 70, scope: !2485)
!2493 = distinct !{!2493, !2487, !2494}
!2494 = !DILocation(line: 367, column: 13, scope: !2486)
!2495 = !DILocation(line: 264, column: 10, scope: !2377)
!2496 = !DILocation(line: 370, column: 28, scope: !2478)
!2497 = !DILocation(line: 372, column: 7, scope: !2468)
!2498 = !DILocation(line: 376, column: 7, scope: !2468)
!2499 = !DILocation(line: 379, column: 7, scope: !2468)
!2500 = !DILocation(line: 381, column: 12, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2468, file: !318, line: 381, column: 11)
!2502 = !DILocation(line: 381, column: 11, scope: !2468)
!2503 = !DILocation(line: 386, column: 12, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2468, file: !318, line: 386, column: 11)
!2505 = !DILocation(line: 386, column: 11, scope: !2468)
!2506 = !DILocation(line: 387, column: 9, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !318, line: 387, column: 9)
!2508 = distinct !DILexicalBlock(scope: !2504, file: !318, line: 387, column: 9)
!2509 = !DILocation(line: 387, column: 9, scope: !2508)
!2510 = !DILocation(line: 394, column: 7, scope: !2468)
!2511 = !DILocation(line: 397, column: 7, scope: !2468)
!2512 = !DILocation(line: 0, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2404, file: !318, line: 408, column: 11)
!2514 = !DILocation(line: 0, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !318, line: 419, column: 15)
!2516 = distinct !DILexicalBlock(scope: !2513, file: !318, line: 418, column: 9)
!2517 = !DILocation(line: 0, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2413, file: !318, line: 556, column: 15)
!2519 = !DILocation(line: 0, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2413, file: !318, line: 548, column: 15)
!2521 = !DILocation(line: 0, scope: !2427)
!2522 = !DILocation(line: 0, scope: !2434)
!2523 = !DILocation(line: 0, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2413, file: !318, line: 509, column: 15)
!2525 = !DILocation(line: 400, column: 8, scope: !2406)
!2526 = !DILocation(line: 0, scope: !2406)
!2527 = !DILocation(line: 400, column: 27, scope: !2405)
!2528 = !DILocation(line: 400, column: 19, scope: !2405)
!2529 = !DILocation(line: 400, column: 41, scope: !2405)
!2530 = !DILocation(line: 400, column: 48, scope: !2405)
!2531 = !DILocation(line: 400, column: 3, scope: !2406)
!2532 = !DILocation(line: 400, column: 60, scope: !2405)
!2533 = !DILocation(line: 0, scope: !2404)
!2534 = !DILocation(line: 409, column: 11, scope: !2513)
!2535 = !DILocation(line: 411, column: 17, scope: !2513)
!2536 = !DILocation(line: 412, column: 39, scope: !2513)
!2537 = !DILocation(line: 416, column: 32, scope: !2513)
!2538 = !DILocation(line: 412, column: 19, scope: !2513)
!2539 = !DILocation(line: 412, column: 15, scope: !2513)
!2540 = !DILocation(line: 417, column: 11, scope: !2513)
!2541 = !DILocation(line: 417, column: 26, scope: !2513)
!2542 = !DILocation(line: 417, column: 14, scope: !2513)
!2543 = !DILocation(line: 417, column: 63, scope: !2513)
!2544 = !DILocation(line: 408, column: 11, scope: !2404)
!2545 = !DILocation(line: 424, column: 11, scope: !2404)
!2546 = !DILocation(line: 425, column: 7, scope: !2404)
!2547 = !DILocation(line: 428, column: 15, scope: !2413)
!2548 = !DILocation(line: 430, column: 15, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !318, line: 430, column: 15)
!2550 = distinct !DILexicalBlock(scope: !2452, file: !318, line: 429, column: 13)
!2551 = !DILocation(line: 430, column: 15, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2549, file: !318, line: 430, column: 15)
!2553 = !DILocation(line: 430, column: 15, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !318, line: 430, column: 15)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !318, line: 430, column: 15)
!2556 = distinct !DILexicalBlock(scope: !2552, file: !318, line: 430, column: 15)
!2557 = !DILocation(line: 430, column: 15, scope: !2555)
!2558 = !DILocation(line: 430, column: 15, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !318, line: 430, column: 15)
!2560 = distinct !DILexicalBlock(scope: !2556, file: !318, line: 430, column: 15)
!2561 = !DILocation(line: 430, column: 15, scope: !2560)
!2562 = !DILocation(line: 430, column: 15, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !318, line: 430, column: 15)
!2564 = distinct !DILexicalBlock(scope: !2556, file: !318, line: 430, column: 15)
!2565 = !DILocation(line: 430, column: 15, scope: !2564)
!2566 = !DILocation(line: 430, column: 15, scope: !2556)
!2567 = !DILocation(line: 430, column: 15, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !318, line: 430, column: 15)
!2569 = distinct !DILexicalBlock(scope: !2549, file: !318, line: 430, column: 15)
!2570 = !DILocation(line: 430, column: 15, scope: !2569)
!2571 = !DILocation(line: 438, column: 19, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2550, file: !318, line: 437, column: 19)
!2573 = !DILocation(line: 438, column: 24, scope: !2572)
!2574 = !DILocation(line: 438, column: 28, scope: !2572)
!2575 = !DILocation(line: 438, column: 38, scope: !2572)
!2576 = !DILocation(line: 438, column: 48, scope: !2572)
!2577 = !DILocation(line: 438, column: 59, scope: !2572)
!2578 = !DILocation(line: 440, column: 19, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !318, line: 440, column: 19)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !318, line: 440, column: 19)
!2581 = distinct !DILexicalBlock(scope: !2572, file: !318, line: 439, column: 17)
!2582 = !DILocation(line: 440, column: 19, scope: !2580)
!2583 = !DILocation(line: 441, column: 19, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !318, line: 441, column: 19)
!2585 = distinct !DILexicalBlock(scope: !2581, file: !318, line: 441, column: 19)
!2586 = !DILocation(line: 441, column: 19, scope: !2585)
!2587 = !DILocation(line: 442, column: 17, scope: !2581)
!2588 = !DILocation(line: 449, column: 20, scope: !2452)
!2589 = !DILocation(line: 454, column: 11, scope: !2413)
!2590 = !DILocation(line: 457, column: 19, scope: !2449)
!2591 = !DILocation(line: 463, column: 19, scope: !2448)
!2592 = !DILocation(line: 463, column: 24, scope: !2448)
!2593 = !DILocation(line: 463, column: 28, scope: !2448)
!2594 = !DILocation(line: 463, column: 38, scope: !2448)
!2595 = !DILocation(line: 463, column: 47, scope: !2448)
!2596 = !DILocation(line: 463, column: 41, scope: !2448)
!2597 = !DILocation(line: 463, column: 52, scope: !2448)
!2598 = !DILocation(line: 462, column: 19, scope: !2449)
!2599 = !DILocation(line: 464, column: 25, scope: !2448)
!2600 = !DILocation(line: 464, column: 17, scope: !2448)
!2601 = !DILocation(line: 471, column: 25, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2448, file: !318, line: 465, column: 19)
!2603 = !DILocation(line: 475, column: 21, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !318, line: 475, column: 21)
!2605 = distinct !DILexicalBlock(scope: !2602, file: !318, line: 475, column: 21)
!2606 = !DILocation(line: 475, column: 21, scope: !2605)
!2607 = !DILocation(line: 476, column: 21, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !318, line: 476, column: 21)
!2609 = distinct !DILexicalBlock(scope: !2602, file: !318, line: 476, column: 21)
!2610 = !DILocation(line: 476, column: 21, scope: !2609)
!2611 = !DILocation(line: 477, column: 21, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !318, line: 477, column: 21)
!2613 = distinct !DILexicalBlock(scope: !2602, file: !318, line: 477, column: 21)
!2614 = !DILocation(line: 477, column: 21, scope: !2613)
!2615 = !DILocation(line: 478, column: 21, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !318, line: 478, column: 21)
!2617 = distinct !DILexicalBlock(scope: !2602, file: !318, line: 478, column: 21)
!2618 = !DILocation(line: 478, column: 21, scope: !2617)
!2619 = !DILocation(line: 479, column: 21, scope: !2602)
!2620 = !DILocation(line: 492, column: 31, scope: !2413)
!2621 = !DILocation(line: 493, column: 31, scope: !2413)
!2622 = !DILocation(line: 495, column: 31, scope: !2413)
!2623 = !DILocation(line: 496, column: 31, scope: !2413)
!2624 = !DILocation(line: 497, column: 31, scope: !2413)
!2625 = !DILocation(line: 500, column: 15, scope: !2413)
!2626 = !DILocation(line: 502, column: 19, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !318, line: 501, column: 13)
!2628 = distinct !DILexicalBlock(scope: !2413, file: !318, line: 500, column: 15)
!2629 = !DILocation(line: 509, column: 33, scope: !2524)
!2630 = !DILocation(line: 0, scope: !2413)
!2631 = !DILocation(line: 512, column: 9, scope: !2413)
!2632 = !DILocation(line: 514, column: 15, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2413, file: !318, line: 513, column: 15)
!2634 = !DILocation(line: 517, column: 9, scope: !2413)
!2635 = !DILocation(line: 518, column: 15, scope: !2413)
!2636 = !DILocation(line: 526, column: 15, scope: !2413)
!2637 = !DILocation(line: 526, column: 40, scope: !2446)
!2638 = !DILocation(line: 526, column: 47, scope: !2446)
!2639 = !DILocation(line: 526, column: 18, scope: !2446)
!2640 = !DILocation(line: 530, column: 17, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2413, file: !318, line: 530, column: 15)
!2642 = !DILocation(line: 530, column: 15, scope: !2413)
!2643 = !DILocation(line: 535, column: 11, scope: !2413)
!2644 = !DILocation(line: 549, column: 15, scope: !2520)
!2645 = !DILocation(line: 556, column: 15, scope: !2413)
!2646 = !DILocation(line: 558, column: 19, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2518, file: !318, line: 557, column: 13)
!2648 = !DILocation(line: 561, column: 19, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2647, file: !318, line: 561, column: 19)
!2650 = !DILocation(line: 561, column: 35, scope: !2649)
!2651 = !DILocation(line: 561, column: 30, scope: !2649)
!2652 = !DILocation(line: 570, column: 15, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !318, line: 570, column: 15)
!2654 = distinct !DILexicalBlock(scope: !2647, file: !318, line: 570, column: 15)
!2655 = !DILocation(line: 570, column: 15, scope: !2654)
!2656 = !DILocation(line: 571, column: 15, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !318, line: 571, column: 15)
!2658 = distinct !DILexicalBlock(scope: !2647, file: !318, line: 571, column: 15)
!2659 = !DILocation(line: 571, column: 15, scope: !2658)
!2660 = !DILocation(line: 572, column: 15, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !318, line: 572, column: 15)
!2662 = distinct !DILexicalBlock(scope: !2647, file: !318, line: 572, column: 15)
!2663 = !DILocation(line: 572, column: 15, scope: !2662)
!2664 = !DILocation(line: 574, column: 13, scope: !2647)
!2665 = !DILocation(line: 614, column: 17, scope: !2412)
!2666 = !DILocation(line: 0, scope: !2412)
!2667 = !DILocation(line: 617, column: 29, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2417, file: !318, line: 615, column: 15)
!2669 = !{!1407, !1407, i64 0}
!2670 = !DILocation(line: 617, column: 27, scope: !2668)
!2671 = !DILocation(line: 618, column: 15, scope: !2668)
!2672 = !DILocation(line: 621, column: 17, scope: !2416)
!2673 = !DILocation(line: 621, column: 27, scope: !2416)
!2674 = !DILocalVariable(name: "__dest", arg: 1, scope: !2675, file: !1390, line: 59, type: !91)
!2675 = distinct !DISubprogram(name: "memset", scope: !1390, file: !1390, line: 59, type: !2676, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!91, !91, !38, !93}
!2678 = !{!2674, !2679, !2680}
!2679 = !DILocalVariable(name: "__ch", arg: 2, scope: !2675, file: !1390, line: 59, type: !38)
!2680 = !DILocalVariable(name: "__len", arg: 3, scope: !2675, file: !1390, line: 59, type: !93)
!2681 = !DILocation(line: 0, scope: !2675, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 622, column: 17, scope: !2416)
!2683 = !DILocation(line: 71, column: 10, scope: !2675, inlinedAt: !2682)
!2684 = !DILocation(line: 626, column: 29, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2416, file: !318, line: 626, column: 21)
!2686 = !DILocation(line: 626, column: 21, scope: !2416)
!2687 = !DILocation(line: 627, column: 29, scope: !2685)
!2688 = !DILocation(line: 627, column: 19, scope: !2685)
!2689 = !DILocation(line: 629, column: 17, scope: !2416)
!2690 = !DILocation(line: 624, column: 19, scope: !2416)
!2691 = !DILocation(line: 625, column: 27, scope: !2416)
!2692 = !DILocation(line: 631, column: 21, scope: !2422)
!2693 = !DILocation(line: 632, column: 56, scope: !2422)
!2694 = !DILocation(line: 632, column: 50, scope: !2422)
!2695 = !DILocation(line: 633, column: 53, scope: !2422)
!2696 = !DILocation(line: 632, column: 36, scope: !2422)
!2697 = !DILocation(line: 634, column: 25, scope: !2422)
!2698 = !DILocation(line: 644, column: 38, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2429, file: !318, line: 642, column: 23)
!2700 = !DILocation(line: 644, column: 48, scope: !2699)
!2701 = !DILocation(line: 644, column: 25, scope: !2699)
!2702 = !DILocation(line: 644, column: 51, scope: !2699)
!2703 = !DILocation(line: 645, column: 28, scope: !2699)
!2704 = !DILocation(line: 644, column: 34, scope: !2699)
!2705 = distinct !{!2705, !2701, !2703}
!2706 = !DILocation(line: 658, column: 43, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !318, line: 658, column: 29)
!2708 = distinct !DILexicalBlock(scope: !2426, file: !318, line: 658, column: 29)
!2709 = !DILocation(line: 655, column: 29, scope: !2427)
!2710 = !DILocation(line: 0, scope: !2426)
!2711 = !DILocation(line: 659, column: 49, scope: !2707)
!2712 = !DILocation(line: 659, column: 39, scope: !2707)
!2713 = !DILocation(line: 659, column: 31, scope: !2707)
!2714 = !DILocation(line: 658, column: 53, scope: !2707)
!2715 = !DILocation(line: 658, column: 29, scope: !2708)
!2716 = distinct !{!2716, !2715, !2717}
!2717 = !DILocation(line: 667, column: 33, scope: !2708)
!2718 = !DILocation(line: 674, column: 19, scope: !2416)
!2719 = !DILocation(line: 670, column: 41, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2428, file: !318, line: 670, column: 29)
!2721 = !DILocation(line: 670, column: 31, scope: !2720)
!2722 = !DILocation(line: 670, column: 29, scope: !2428)
!2723 = !DILocation(line: 672, column: 27, scope: !2428)
!2724 = !DILocation(line: 675, column: 26, scope: !2416)
!2725 = !DILocation(line: 675, column: 24, scope: !2416)
!2726 = !DILocation(line: 674, column: 19, scope: !2422)
!2727 = distinct !{!2727, !2689, !2728}
!2728 = !DILocation(line: 675, column: 44, scope: !2416)
!2729 = !DILocation(line: 676, column: 15, scope: !2417)
!2730 = !DILocation(line: 0, scope: !2417)
!2731 = !DILocation(line: 678, column: 40, scope: !2412)
!2732 = !DILocation(line: 680, column: 19, scope: !2434)
!2733 = !DILocation(line: 680, column: 45, scope: !2434)
!2734 = !DILocation(line: 680, column: 23, scope: !2434)
!2735 = !DILocation(line: 684, column: 33, scope: !2433)
!2736 = !DILocation(line: 0, scope: !2433)
!2737 = !DILocation(line: 686, column: 17, scope: !2433)
!2738 = !DILocation(line: 405, column: 12, scope: !2404)
!2739 = !DILocation(line: 688, column: 43, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !318, line: 688, column: 25)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !318, line: 687, column: 19)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !318, line: 686, column: 17)
!2743 = distinct !DILexicalBlock(scope: !2433, file: !318, line: 686, column: 17)
!2744 = !DILocation(line: 690, column: 25, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !318, line: 690, column: 25)
!2746 = distinct !DILexicalBlock(scope: !2740, file: !318, line: 689, column: 23)
!2747 = !DILocation(line: 690, column: 25, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2745, file: !318, line: 690, column: 25)
!2749 = !DILocation(line: 690, column: 25, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !318, line: 690, column: 25)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !318, line: 690, column: 25)
!2752 = distinct !DILexicalBlock(scope: !2748, file: !318, line: 690, column: 25)
!2753 = !DILocation(line: 690, column: 25, scope: !2751)
!2754 = !DILocation(line: 690, column: 25, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !318, line: 690, column: 25)
!2756 = distinct !DILexicalBlock(scope: !2752, file: !318, line: 690, column: 25)
!2757 = !DILocation(line: 690, column: 25, scope: !2756)
!2758 = !DILocation(line: 690, column: 25, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !318, line: 690, column: 25)
!2760 = distinct !DILexicalBlock(scope: !2752, file: !318, line: 690, column: 25)
!2761 = !DILocation(line: 690, column: 25, scope: !2760)
!2762 = !DILocation(line: 690, column: 25, scope: !2752)
!2763 = !DILocation(line: 690, column: 25, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !318, line: 690, column: 25)
!2765 = distinct !DILexicalBlock(scope: !2745, file: !318, line: 690, column: 25)
!2766 = !DILocation(line: 690, column: 25, scope: !2765)
!2767 = !DILocation(line: 691, column: 25, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !318, line: 691, column: 25)
!2769 = distinct !DILexicalBlock(scope: !2746, file: !318, line: 691, column: 25)
!2770 = !DILocation(line: 691, column: 25, scope: !2769)
!2771 = !DILocation(line: 692, column: 25, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !318, line: 692, column: 25)
!2773 = distinct !DILexicalBlock(scope: !2746, file: !318, line: 692, column: 25)
!2774 = !DILocation(line: 692, column: 25, scope: !2773)
!2775 = !DILocation(line: 693, column: 38, scope: !2746)
!2776 = !DILocation(line: 693, column: 33, scope: !2746)
!2777 = !DILocation(line: 694, column: 23, scope: !2746)
!2778 = !DILocation(line: 695, column: 30, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2740, file: !318, line: 695, column: 30)
!2780 = !DILocation(line: 695, column: 30, scope: !2740)
!2781 = !DILocation(line: 697, column: 25, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !318, line: 697, column: 25)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !318, line: 697, column: 25)
!2784 = distinct !DILexicalBlock(scope: !2779, file: !318, line: 696, column: 23)
!2785 = !DILocation(line: 697, column: 25, scope: !2783)
!2786 = !DILocation(line: 699, column: 23, scope: !2784)
!2787 = !DILocation(line: 700, column: 35, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2741, file: !318, line: 700, column: 25)
!2789 = !DILocation(line: 700, column: 30, scope: !2788)
!2790 = !DILocation(line: 700, column: 25, scope: !2741)
!2791 = !DILocation(line: 702, column: 21, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !318, line: 702, column: 21)
!2793 = distinct !DILexicalBlock(scope: !2741, file: !318, line: 702, column: 21)
!2794 = !DILocation(line: 702, column: 21, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !318, line: 702, column: 21)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !318, line: 702, column: 21)
!2797 = distinct !DILexicalBlock(scope: !2792, file: !318, line: 702, column: 21)
!2798 = !DILocation(line: 702, column: 21, scope: !2796)
!2799 = !DILocation(line: 702, column: 21, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !318, line: 702, column: 21)
!2801 = distinct !DILexicalBlock(scope: !2797, file: !318, line: 702, column: 21)
!2802 = !DILocation(line: 702, column: 21, scope: !2801)
!2803 = !DILocation(line: 702, column: 21, scope: !2797)
!2804 = !DILocation(line: 0, scope: !2741)
!2805 = !DILocation(line: 703, column: 21, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !318, line: 703, column: 21)
!2807 = distinct !DILexicalBlock(scope: !2741, file: !318, line: 703, column: 21)
!2808 = !DILocation(line: 703, column: 21, scope: !2807)
!2809 = !DILocation(line: 704, column: 25, scope: !2741)
!2810 = !DILocation(line: 686, column: 17, scope: !2742)
!2811 = distinct !{!2811, !2812, !2813}
!2812 = !DILocation(line: 686, column: 17, scope: !2743)
!2813 = !DILocation(line: 705, column: 19, scope: !2743)
!2814 = !DILocation(line: 416, column: 30, scope: !2513)
!2815 = !DILocation(line: 712, column: 34, scope: !2456)
!2816 = !DILocation(line: 715, column: 35, scope: !2456)
!2817 = !DILocation(line: 715, column: 17, scope: !2456)
!2818 = !DILocation(line: 715, column: 47, scope: !2456)
!2819 = !DILocation(line: 715, column: 65, scope: !2456)
!2820 = !DILocation(line: 716, column: 15, scope: !2456)
!2821 = !DILocation(line: 716, column: 11, scope: !2456)
!2822 = !DILocation(line: 712, column: 11, scope: !2404)
!2823 = !DILocation(line: 400, column: 10, scope: !2406)
!2824 = !DILocation(line: 719, column: 5, scope: !2404)
!2825 = !DILocation(line: 720, column: 7, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2404, file: !318, line: 720, column: 7)
!2827 = !DILocation(line: 720, column: 7, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2826, file: !318, line: 720, column: 7)
!2829 = !DILocation(line: 720, column: 7, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !318, line: 720, column: 7)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !318, line: 720, column: 7)
!2832 = distinct !DILexicalBlock(scope: !2828, file: !318, line: 720, column: 7)
!2833 = !DILocation(line: 720, column: 7, scope: !2831)
!2834 = !DILocation(line: 720, column: 7, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !318, line: 720, column: 7)
!2836 = distinct !DILexicalBlock(scope: !2832, file: !318, line: 720, column: 7)
!2837 = !DILocation(line: 720, column: 7, scope: !2836)
!2838 = !DILocation(line: 720, column: 7, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !318, line: 720, column: 7)
!2840 = distinct !DILexicalBlock(scope: !2832, file: !318, line: 720, column: 7)
!2841 = !DILocation(line: 720, column: 7, scope: !2840)
!2842 = !DILocation(line: 720, column: 7, scope: !2832)
!2843 = !DILocation(line: 720, column: 7, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !318, line: 720, column: 7)
!2845 = distinct !DILexicalBlock(scope: !2826, file: !318, line: 720, column: 7)
!2846 = !DILocation(line: 720, column: 7, scope: !2845)
!2847 = !DILocation(line: 722, column: 5, scope: !2404)
!2848 = !DILocation(line: 723, column: 7, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !318, line: 723, column: 7)
!2850 = distinct !DILexicalBlock(scope: !2404, file: !318, line: 723, column: 7)
!2851 = !DILocation(line: 424, column: 9, scope: !2404)
!2852 = !DILocation(line: 723, column: 7, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !318, line: 723, column: 7)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !318, line: 723, column: 7)
!2855 = distinct !DILexicalBlock(scope: !2849, file: !318, line: 723, column: 7)
!2856 = !DILocation(line: 723, column: 7, scope: !2854)
!2857 = !DILocation(line: 723, column: 7, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !318, line: 723, column: 7)
!2859 = distinct !DILexicalBlock(scope: !2855, file: !318, line: 723, column: 7)
!2860 = !DILocation(line: 723, column: 7, scope: !2859)
!2861 = !DILocation(line: 723, column: 7, scope: !2855)
!2862 = !DILocation(line: 724, column: 7, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !318, line: 724, column: 7)
!2864 = distinct !DILexicalBlock(scope: !2404, file: !318, line: 724, column: 7)
!2865 = !DILocation(line: 724, column: 7, scope: !2864)
!2866 = !DILocation(line: 726, column: 13, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2404, file: !318, line: 726, column: 11)
!2868 = !DILocation(line: 726, column: 11, scope: !2404)
!2869 = !DILocation(line: 728, column: 5, scope: !2405)
!2870 = !DILocation(line: 400, column: 75, scope: !2405)
!2871 = !DILocation(line: 400, column: 3, scope: !2405)
!2872 = distinct !{!2872, !2531, !2873}
!2873 = !DILocation(line: 728, column: 5, scope: !2406)
!2874 = !DILocation(line: 730, column: 11, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2377, file: !318, line: 730, column: 7)
!2876 = !DILocation(line: 730, column: 16, scope: !2875)
!2877 = !DILocation(line: 738, column: 51, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2377, file: !318, line: 738, column: 7)
!2879 = !DILocation(line: 739, column: 10, scope: !2878)
!2880 = !DILocation(line: 741, column: 11, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !318, line: 741, column: 11)
!2882 = distinct !DILexicalBlock(scope: !2878, file: !318, line: 740, column: 5)
!2883 = !DILocation(line: 741, column: 11, scope: !2882)
!2884 = !DILocation(line: 742, column: 16, scope: !2881)
!2885 = !DILocation(line: 742, column: 9, scope: !2881)
!2886 = !DILocation(line: 746, column: 18, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2881, file: !318, line: 746, column: 16)
!2888 = !DILocation(line: 746, column: 32, scope: !2887)
!2889 = !DILocation(line: 746, column: 29, scope: !2887)
!2890 = !DILocation(line: 755, column: 7, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2377, file: !318, line: 755, column: 7)
!2892 = !DILocation(line: 755, column: 20, scope: !2891)
!2893 = !DILocation(line: 756, column: 12, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !318, line: 756, column: 5)
!2895 = distinct !DILexicalBlock(scope: !2891, file: !318, line: 756, column: 5)
!2896 = !DILocation(line: 756, column: 5, scope: !2895)
!2897 = !DILocation(line: 757, column: 7, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !318, line: 757, column: 7)
!2899 = distinct !DILexicalBlock(scope: !2894, file: !318, line: 757, column: 7)
!2900 = !DILocation(line: 757, column: 7, scope: !2899)
!2901 = !DILocation(line: 756, column: 39, scope: !2894)
!2902 = distinct !{!2902, !2896, !2903}
!2903 = !DILocation(line: 757, column: 7, scope: !2895)
!2904 = !DILocation(line: 759, column: 11, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2377, file: !318, line: 759, column: 7)
!2906 = !DILocation(line: 759, column: 7, scope: !2377)
!2907 = !DILocation(line: 760, column: 5, scope: !2905)
!2908 = !DILocation(line: 760, column: 17, scope: !2905)
!2909 = !DILocation(line: 763, column: 2, scope: !2377)
!2910 = !DILocation(line: 766, column: 51, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2377, file: !318, line: 766, column: 7)
!2912 = !DILocation(line: 766, column: 21, scope: !2911)
!2913 = !DILocation(line: 770, column: 42, scope: !2377)
!2914 = !DILocation(line: 768, column: 10, scope: !2377)
!2915 = !DILocation(line: 768, column: 3, scope: !2377)
!2916 = !DILocation(line: 772, column: 1, scope: !2377)
!2917 = distinct !DISubprogram(name: "gettext_quote", scope: !318, file: !318, line: 207, type: !2918, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !2920)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!36, !36, !5}
!2920 = !{!2921, !2922, !2923, !2924}
!2921 = !DILocalVariable(name: "msgid", arg: 1, scope: !2917, file: !318, line: 207, type: !36)
!2922 = !DILocalVariable(name: "s", arg: 2, scope: !2917, file: !318, line: 207, type: !5)
!2923 = !DILocalVariable(name: "translation", scope: !2917, file: !318, line: 209, type: !36)
!2924 = !DILocalVariable(name: "locale_code", scope: !2917, file: !318, line: 210, type: !36)
!2925 = !DILocation(line: 0, scope: !2917)
!2926 = !DILocation(line: 209, column: 29, scope: !2917)
!2927 = !DILocation(line: 212, column: 19, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2917, file: !318, line: 212, column: 7)
!2929 = !DILocation(line: 212, column: 7, scope: !2917)
!2930 = !DILocation(line: 233, column: 17, scope: !2917)
!2931 = !DILocalVariable(name: "s1", arg: 1, scope: !2932, file: !2933, line: 160, type: !36)
!2932 = distinct !DISubprogram(name: "strcaseeq0", scope: !2933, file: !2933, line: 160, type: !2934, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !2936)
!2933 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!38, !36, !36, !35, !35, !35, !35, !35, !35, !35, !35, !35}
!2936 = !{!2931, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946}
!2937 = !DILocalVariable(name: "s2", arg: 2, scope: !2932, file: !2933, line: 160, type: !36)
!2938 = !DILocalVariable(name: "s20", arg: 3, scope: !2932, file: !2933, line: 160, type: !35)
!2939 = !DILocalVariable(name: "s21", arg: 4, scope: !2932, file: !2933, line: 160, type: !35)
!2940 = !DILocalVariable(name: "s22", arg: 5, scope: !2932, file: !2933, line: 160, type: !35)
!2941 = !DILocalVariable(name: "s23", arg: 6, scope: !2932, file: !2933, line: 160, type: !35)
!2942 = !DILocalVariable(name: "s24", arg: 7, scope: !2932, file: !2933, line: 160, type: !35)
!2943 = !DILocalVariable(name: "s25", arg: 8, scope: !2932, file: !2933, line: 160, type: !35)
!2944 = !DILocalVariable(name: "s26", arg: 9, scope: !2932, file: !2933, line: 160, type: !35)
!2945 = !DILocalVariable(name: "s27", arg: 10, scope: !2932, file: !2933, line: 160, type: !35)
!2946 = !DILocalVariable(name: "s28", arg: 11, scope: !2932, file: !2933, line: 160, type: !35)
!2947 = !DILocation(line: 0, scope: !2932, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 234, column: 7, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2917, file: !318, line: 234, column: 7)
!2950 = !DILocation(line: 162, column: 7, scope: !2951, inlinedAt: !2948)
!2951 = distinct !DILexicalBlock(scope: !2932, file: !2933, line: 162, column: 7)
!2952 = !DILocalVariable(name: "s1", arg: 1, scope: !2953, file: !2933, line: 146, type: !36)
!2953 = distinct !DISubprogram(name: "strcaseeq1", scope: !2933, file: !2933, line: 146, type: !2954, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !2956)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!38, !36, !36, !35, !35, !35, !35, !35, !35, !35, !35}
!2956 = !{!2952, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965}
!2957 = !DILocalVariable(name: "s2", arg: 2, scope: !2953, file: !2933, line: 146, type: !36)
!2958 = !DILocalVariable(name: "s21", arg: 3, scope: !2953, file: !2933, line: 146, type: !35)
!2959 = !DILocalVariable(name: "s22", arg: 4, scope: !2953, file: !2933, line: 146, type: !35)
!2960 = !DILocalVariable(name: "s23", arg: 5, scope: !2953, file: !2933, line: 146, type: !35)
!2961 = !DILocalVariable(name: "s24", arg: 6, scope: !2953, file: !2933, line: 146, type: !35)
!2962 = !DILocalVariable(name: "s25", arg: 7, scope: !2953, file: !2933, line: 146, type: !35)
!2963 = !DILocalVariable(name: "s26", arg: 8, scope: !2953, file: !2933, line: 146, type: !35)
!2964 = !DILocalVariable(name: "s27", arg: 9, scope: !2953, file: !2933, line: 146, type: !35)
!2965 = !DILocalVariable(name: "s28", arg: 10, scope: !2953, file: !2933, line: 146, type: !35)
!2966 = !DILocation(line: 0, scope: !2953, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 167, column: 16, scope: !2968, inlinedAt: !2948)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !2933, line: 164, column: 11)
!2969 = distinct !DILexicalBlock(scope: !2951, file: !2933, line: 163, column: 5)
!2970 = !DILocation(line: 148, column: 7, scope: !2971, inlinedAt: !2967)
!2971 = distinct !DILexicalBlock(scope: !2953, file: !2933, line: 148, column: 7)
!2972 = !DILocalVariable(name: "s1", arg: 1, scope: !2973, file: !2933, line: 132, type: !36)
!2973 = distinct !DISubprogram(name: "strcaseeq2", scope: !2933, file: !2933, line: 132, type: !2974, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!38, !36, !36, !35, !35, !35, !35, !35, !35, !35}
!2976 = !{!2972, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984}
!2977 = !DILocalVariable(name: "s2", arg: 2, scope: !2973, file: !2933, line: 132, type: !36)
!2978 = !DILocalVariable(name: "s22", arg: 3, scope: !2973, file: !2933, line: 132, type: !35)
!2979 = !DILocalVariable(name: "s23", arg: 4, scope: !2973, file: !2933, line: 132, type: !35)
!2980 = !DILocalVariable(name: "s24", arg: 5, scope: !2973, file: !2933, line: 132, type: !35)
!2981 = !DILocalVariable(name: "s25", arg: 6, scope: !2973, file: !2933, line: 132, type: !35)
!2982 = !DILocalVariable(name: "s26", arg: 7, scope: !2973, file: !2933, line: 132, type: !35)
!2983 = !DILocalVariable(name: "s27", arg: 8, scope: !2973, file: !2933, line: 132, type: !35)
!2984 = !DILocalVariable(name: "s28", arg: 9, scope: !2973, file: !2933, line: 132, type: !35)
!2985 = !DILocation(line: 0, scope: !2973, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 153, column: 16, scope: !2987, inlinedAt: !2967)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !2933, line: 150, column: 11)
!2988 = distinct !DILexicalBlock(scope: !2971, file: !2933, line: 149, column: 5)
!2989 = !DILocation(line: 134, column: 7, scope: !2990, inlinedAt: !2986)
!2990 = distinct !DILexicalBlock(scope: !2973, file: !2933, line: 134, column: 7)
!2991 = !DILocalVariable(name: "s1", arg: 1, scope: !2992, file: !2933, line: 118, type: !36)
!2992 = distinct !DISubprogram(name: "strcaseeq3", scope: !2933, file: !2933, line: 118, type: !2993, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !2995)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!38, !36, !36, !35, !35, !35, !35, !35, !35}
!2995 = !{!2991, !2996, !2997, !2998, !2999, !3000, !3001, !3002}
!2996 = !DILocalVariable(name: "s2", arg: 2, scope: !2992, file: !2933, line: 118, type: !36)
!2997 = !DILocalVariable(name: "s23", arg: 3, scope: !2992, file: !2933, line: 118, type: !35)
!2998 = !DILocalVariable(name: "s24", arg: 4, scope: !2992, file: !2933, line: 118, type: !35)
!2999 = !DILocalVariable(name: "s25", arg: 5, scope: !2992, file: !2933, line: 118, type: !35)
!3000 = !DILocalVariable(name: "s26", arg: 6, scope: !2992, file: !2933, line: 118, type: !35)
!3001 = !DILocalVariable(name: "s27", arg: 7, scope: !2992, file: !2933, line: 118, type: !35)
!3002 = !DILocalVariable(name: "s28", arg: 8, scope: !2992, file: !2933, line: 118, type: !35)
!3003 = !DILocation(line: 0, scope: !2992, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 139, column: 16, scope: !3005, inlinedAt: !2986)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !2933, line: 136, column: 11)
!3006 = distinct !DILexicalBlock(scope: !2990, file: !2933, line: 135, column: 5)
!3007 = !DILocation(line: 120, column: 7, scope: !3008, inlinedAt: !3004)
!3008 = distinct !DILexicalBlock(scope: !2992, file: !2933, line: 120, column: 7)
!3009 = !DILocation(line: 120, column: 7, scope: !2992, inlinedAt: !3004)
!3010 = !DILocalVariable(name: "s1", arg: 1, scope: !3011, file: !2933, line: 104, type: !36)
!3011 = distinct !DISubprogram(name: "strcaseeq4", scope: !2933, file: !2933, line: 104, type: !3012, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3014)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!38, !36, !36, !35, !35, !35, !35, !35}
!3014 = !{!3010, !3015, !3016, !3017, !3018, !3019, !3020}
!3015 = !DILocalVariable(name: "s2", arg: 2, scope: !3011, file: !2933, line: 104, type: !36)
!3016 = !DILocalVariable(name: "s24", arg: 3, scope: !3011, file: !2933, line: 104, type: !35)
!3017 = !DILocalVariable(name: "s25", arg: 4, scope: !3011, file: !2933, line: 104, type: !35)
!3018 = !DILocalVariable(name: "s26", arg: 5, scope: !3011, file: !2933, line: 104, type: !35)
!3019 = !DILocalVariable(name: "s27", arg: 6, scope: !3011, file: !2933, line: 104, type: !35)
!3020 = !DILocalVariable(name: "s28", arg: 7, scope: !3011, file: !2933, line: 104, type: !35)
!3021 = !DILocation(line: 0, scope: !3011, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 125, column: 16, scope: !3023, inlinedAt: !3004)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !2933, line: 122, column: 11)
!3024 = distinct !DILexicalBlock(scope: !3008, file: !2933, line: 121, column: 5)
!3025 = !DILocation(line: 106, column: 7, scope: !3026, inlinedAt: !3022)
!3026 = distinct !DILexicalBlock(scope: !3011, file: !2933, line: 106, column: 7)
!3027 = !DILocation(line: 106, column: 7, scope: !3011, inlinedAt: !3022)
!3028 = !DILocalVariable(name: "s1", arg: 1, scope: !3029, file: !2933, line: 90, type: !36)
!3029 = distinct !DISubprogram(name: "strcaseeq5", scope: !2933, file: !2933, line: 90, type: !3030, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3032)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!38, !36, !36, !35, !35, !35, !35}
!3032 = !{!3028, !3033, !3034, !3035, !3036, !3037}
!3033 = !DILocalVariable(name: "s2", arg: 2, scope: !3029, file: !2933, line: 90, type: !36)
!3034 = !DILocalVariable(name: "s25", arg: 3, scope: !3029, file: !2933, line: 90, type: !35)
!3035 = !DILocalVariable(name: "s26", arg: 4, scope: !3029, file: !2933, line: 90, type: !35)
!3036 = !DILocalVariable(name: "s27", arg: 5, scope: !3029, file: !2933, line: 90, type: !35)
!3037 = !DILocalVariable(name: "s28", arg: 6, scope: !3029, file: !2933, line: 90, type: !35)
!3038 = !DILocation(line: 0, scope: !3029, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 111, column: 16, scope: !3040, inlinedAt: !3022)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !2933, line: 108, column: 11)
!3041 = distinct !DILexicalBlock(scope: !3026, file: !2933, line: 107, column: 5)
!3042 = !DILocation(line: 92, column: 7, scope: !3043, inlinedAt: !3039)
!3043 = distinct !DILexicalBlock(scope: !3029, file: !2933, line: 92, column: 7)
!3044 = !DILocation(line: 92, column: 7, scope: !3029, inlinedAt: !3039)
!3045 = !DILocation(line: 235, column: 12, scope: !2949)
!3046 = !DILocation(line: 235, column: 21, scope: !2949)
!3047 = !DILocation(line: 235, column: 5, scope: !2949)
!3048 = !DILocation(line: 0, scope: !2953, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 167, column: 16, scope: !2968, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 236, column: 7, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !2917, file: !318, line: 236, column: 7)
!3052 = !DILocation(line: 148, column: 7, scope: !2971, inlinedAt: !3049)
!3053 = !DILocation(line: 0, scope: !2973, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 153, column: 16, scope: !2987, inlinedAt: !3049)
!3055 = !DILocation(line: 134, column: 7, scope: !2990, inlinedAt: !3054)
!3056 = !DILocation(line: 134, column: 7, scope: !2973, inlinedAt: !3054)
!3057 = !DILocation(line: 0, scope: !2992, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 139, column: 16, scope: !3005, inlinedAt: !3054)
!3059 = !DILocation(line: 120, column: 7, scope: !3008, inlinedAt: !3058)
!3060 = !DILocation(line: 120, column: 7, scope: !2992, inlinedAt: !3058)
!3061 = !DILocation(line: 0, scope: !3011, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 125, column: 16, scope: !3023, inlinedAt: !3058)
!3063 = !DILocation(line: 106, column: 7, scope: !3026, inlinedAt: !3062)
!3064 = !DILocation(line: 106, column: 7, scope: !3011, inlinedAt: !3062)
!3065 = !DILocation(line: 0, scope: !3029, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 111, column: 16, scope: !3040, inlinedAt: !3062)
!3067 = !DILocation(line: 92, column: 7, scope: !3043, inlinedAt: !3066)
!3068 = !DILocation(line: 92, column: 7, scope: !3029, inlinedAt: !3066)
!3069 = !DILocalVariable(name: "s1", arg: 1, scope: !3070, file: !2933, line: 76, type: !36)
!3070 = distinct !DISubprogram(name: "strcaseeq6", scope: !2933, file: !2933, line: 76, type: !3071, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3073)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!38, !36, !36, !35, !35, !35}
!3073 = !{!3069, !3074, !3075, !3076, !3077}
!3074 = !DILocalVariable(name: "s2", arg: 2, scope: !3070, file: !2933, line: 76, type: !36)
!3075 = !DILocalVariable(name: "s26", arg: 3, scope: !3070, file: !2933, line: 76, type: !35)
!3076 = !DILocalVariable(name: "s27", arg: 4, scope: !3070, file: !2933, line: 76, type: !35)
!3077 = !DILocalVariable(name: "s28", arg: 5, scope: !3070, file: !2933, line: 76, type: !35)
!3078 = !DILocation(line: 0, scope: !3070, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 97, column: 16, scope: !3080, inlinedAt: !3066)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !2933, line: 94, column: 11)
!3081 = distinct !DILexicalBlock(scope: !3043, file: !2933, line: 93, column: 5)
!3082 = !DILocation(line: 78, column: 7, scope: !3083, inlinedAt: !3079)
!3083 = distinct !DILexicalBlock(scope: !3070, file: !2933, line: 78, column: 7)
!3084 = !DILocation(line: 78, column: 7, scope: !3070, inlinedAt: !3079)
!3085 = !DILocalVariable(name: "s1", arg: 1, scope: !3086, file: !2933, line: 62, type: !36)
!3086 = distinct !DISubprogram(name: "strcaseeq7", scope: !2933, file: !2933, line: 62, type: !3087, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3089)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!38, !36, !36, !35, !35}
!3089 = !{!3085, !3090, !3091, !3092}
!3090 = !DILocalVariable(name: "s2", arg: 2, scope: !3086, file: !2933, line: 62, type: !36)
!3091 = !DILocalVariable(name: "s27", arg: 3, scope: !3086, file: !2933, line: 62, type: !35)
!3092 = !DILocalVariable(name: "s28", arg: 4, scope: !3086, file: !2933, line: 62, type: !35)
!3093 = !DILocation(line: 0, scope: !3086, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 83, column: 16, scope: !3095, inlinedAt: !3079)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !2933, line: 80, column: 11)
!3096 = distinct !DILexicalBlock(scope: !3083, file: !2933, line: 79, column: 5)
!3097 = !DILocation(line: 64, column: 7, scope: !3098, inlinedAt: !3094)
!3098 = distinct !DILexicalBlock(scope: !3086, file: !2933, line: 64, column: 7)
!3099 = !DILocation(line: 236, column: 7, scope: !2917)
!3100 = !DILocation(line: 237, column: 12, scope: !3051)
!3101 = !DILocation(line: 237, column: 21, scope: !3051)
!3102 = !DILocation(line: 237, column: 5, scope: !3051)
!3103 = !DILocation(line: 239, column: 13, scope: !2917)
!3104 = !DILocation(line: 239, column: 11, scope: !2917)
!3105 = !DILocation(line: 239, column: 3, scope: !2917)
!3106 = !DILocation(line: 240, column: 1, scope: !2917)
!3107 = distinct !DISubprogram(name: "quotearg_alloc", scope: !318, file: !318, line: 799, type: !3108, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!34, !36, !93, !347}
!3110 = !{!3111, !3112, !3113}
!3111 = !DILocalVariable(name: "arg", arg: 1, scope: !3107, file: !318, line: 799, type: !36)
!3112 = !DILocalVariable(name: "argsize", arg: 2, scope: !3107, file: !318, line: 799, type: !93)
!3113 = !DILocalVariable(name: "o", arg: 3, scope: !3107, file: !318, line: 800, type: !347)
!3114 = !DILocation(line: 0, scope: !3107)
!3115 = !DILocalVariable(name: "arg", arg: 1, scope: !3116, file: !318, line: 812, type: !36)
!3116 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !318, file: !318, line: 812, type: !3117, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3119)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!34, !36, !93, !527, !347}
!3119 = !{!3115, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127}
!3120 = !DILocalVariable(name: "argsize", arg: 2, scope: !3116, file: !318, line: 812, type: !93)
!3121 = !DILocalVariable(name: "size", arg: 3, scope: !3116, file: !318, line: 812, type: !527)
!3122 = !DILocalVariable(name: "o", arg: 4, scope: !3116, file: !318, line: 813, type: !347)
!3123 = !DILocalVariable(name: "p", scope: !3116, file: !318, line: 815, type: !347)
!3124 = !DILocalVariable(name: "e", scope: !3116, file: !318, line: 816, type: !38)
!3125 = !DILocalVariable(name: "flags", scope: !3116, file: !318, line: 818, type: !38)
!3126 = !DILocalVariable(name: "bufsize", scope: !3116, file: !318, line: 819, type: !93)
!3127 = !DILocalVariable(name: "buf", scope: !3116, file: !318, line: 823, type: !34)
!3128 = !DILocation(line: 0, scope: !3116, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 802, column: 10, scope: !3107)
!3130 = !DILocation(line: 815, column: 37, scope: !3116, inlinedAt: !3129)
!3131 = !DILocation(line: 816, column: 11, scope: !3116, inlinedAt: !3129)
!3132 = !DILocation(line: 818, column: 18, scope: !3116, inlinedAt: !3129)
!3133 = !DILocation(line: 818, column: 24, scope: !3116, inlinedAt: !3129)
!3134 = !DILocation(line: 819, column: 69, scope: !3116, inlinedAt: !3129)
!3135 = !DILocation(line: 820, column: 53, scope: !3116, inlinedAt: !3129)
!3136 = !DILocation(line: 821, column: 49, scope: !3116, inlinedAt: !3129)
!3137 = !DILocation(line: 822, column: 49, scope: !3116, inlinedAt: !3129)
!3138 = !DILocation(line: 819, column: 20, scope: !3116, inlinedAt: !3129)
!3139 = !DILocation(line: 822, column: 62, scope: !3116, inlinedAt: !3129)
!3140 = !DILocalVariable(name: "n", arg: 1, scope: !3141, file: !164, line: 216, type: !93)
!3141 = distinct !DISubprogram(name: "xcharalloc", scope: !164, file: !164, line: 216, type: !3142, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!34, !93}
!3144 = !{!3140}
!3145 = !DILocation(line: 0, scope: !3141, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 823, column: 15, scope: !3116, inlinedAt: !3129)
!3147 = !DILocation(line: 218, column: 10, scope: !3141, inlinedAt: !3146)
!3148 = !DILocation(line: 824, column: 60, scope: !3116, inlinedAt: !3129)
!3149 = !DILocation(line: 826, column: 32, scope: !3116, inlinedAt: !3129)
!3150 = !DILocation(line: 826, column: 47, scope: !3116, inlinedAt: !3129)
!3151 = !DILocation(line: 824, column: 3, scope: !3116, inlinedAt: !3129)
!3152 = !DILocation(line: 827, column: 9, scope: !3116, inlinedAt: !3129)
!3153 = !DILocation(line: 802, column: 3, scope: !3107)
!3154 = !DILocation(line: 0, scope: !3116)
!3155 = !DILocation(line: 815, column: 37, scope: !3116)
!3156 = !DILocation(line: 816, column: 11, scope: !3116)
!3157 = !DILocation(line: 818, column: 18, scope: !3116)
!3158 = !DILocation(line: 818, column: 27, scope: !3116)
!3159 = !DILocation(line: 818, column: 24, scope: !3116)
!3160 = !DILocation(line: 819, column: 69, scope: !3116)
!3161 = !DILocation(line: 820, column: 53, scope: !3116)
!3162 = !DILocation(line: 821, column: 49, scope: !3116)
!3163 = !DILocation(line: 822, column: 49, scope: !3116)
!3164 = !DILocation(line: 819, column: 20, scope: !3116)
!3165 = !DILocation(line: 822, column: 62, scope: !3116)
!3166 = !DILocation(line: 0, scope: !3141, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 823, column: 15, scope: !3116)
!3168 = !DILocation(line: 218, column: 10, scope: !3141, inlinedAt: !3167)
!3169 = !DILocation(line: 824, column: 60, scope: !3116)
!3170 = !DILocation(line: 826, column: 32, scope: !3116)
!3171 = !DILocation(line: 826, column: 47, scope: !3116)
!3172 = !DILocation(line: 824, column: 3, scope: !3116)
!3173 = !DILocation(line: 827, column: 9, scope: !3116)
!3174 = !DILocation(line: 828, column: 7, scope: !3116)
!3175 = !DILocation(line: 829, column: 11, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3116, file: !318, line: 828, column: 7)
!3177 = !DILocation(line: 829, column: 5, scope: !3176)
!3178 = !DILocation(line: 830, column: 3, scope: !3116)
!3179 = distinct !DISubprogram(name: "quotearg_free", scope: !318, file: !318, line: 848, type: !120, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3180)
!3180 = !{!3181, !3182}
!3181 = !DILocalVariable(name: "sv", scope: !3179, file: !318, line: 850, type: !414)
!3182 = !DILocalVariable(name: "i", scope: !3179, file: !318, line: 851, type: !38)
!3183 = !DILocation(line: 850, column: 24, scope: !3179)
!3184 = !DILocation(line: 0, scope: !3179)
!3185 = !DILocation(line: 852, column: 19, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !318, line: 852, column: 3)
!3187 = distinct !DILexicalBlock(scope: !3179, file: !318, line: 852, column: 3)
!3188 = !DILocation(line: 852, column: 17, scope: !3186)
!3189 = !DILocation(line: 852, column: 3, scope: !3187)
!3190 = !DILocation(line: 853, column: 17, scope: !3186)
!3191 = !{!3192, !1191, i64 8}
!3192 = !{!"slotvec", !1368, i64 0, !1191, i64 8}
!3193 = !DILocation(line: 853, column: 5, scope: !3186)
!3194 = !DILocation(line: 852, column: 28, scope: !3186)
!3195 = distinct !{!3195, !3189, !3196}
!3196 = !DILocation(line: 853, column: 20, scope: !3187)
!3197 = !DILocation(line: 854, column: 13, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3179, file: !318, line: 854, column: 7)
!3199 = !DILocation(line: 854, column: 17, scope: !3198)
!3200 = !DILocation(line: 854, column: 7, scope: !3179)
!3201 = !DILocation(line: 856, column: 7, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3198, file: !318, line: 855, column: 5)
!3203 = !DILocation(line: 857, column: 21, scope: !3202)
!3204 = !{!3192, !1368, i64 0}
!3205 = !DILocation(line: 858, column: 20, scope: !3202)
!3206 = !DILocation(line: 859, column: 5, scope: !3202)
!3207 = !DILocation(line: 860, column: 10, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3179, file: !318, line: 860, column: 7)
!3209 = !DILocation(line: 860, column: 7, scope: !3179)
!3210 = !DILocation(line: 862, column: 13, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3208, file: !318, line: 861, column: 5)
!3212 = !DILocation(line: 862, column: 7, scope: !3211)
!3213 = !DILocation(line: 863, column: 15, scope: !3211)
!3214 = !DILocation(line: 864, column: 5, scope: !3211)
!3215 = !DILocation(line: 865, column: 10, scope: !3179)
!3216 = !DILocation(line: 866, column: 1, scope: !3179)
!3217 = distinct !DISubprogram(name: "quotearg_n", scope: !318, file: !318, line: 931, type: !107, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3218)
!3218 = !{!3219, !3220}
!3219 = !DILocalVariable(name: "n", arg: 1, scope: !3217, file: !318, line: 931, type: !38)
!3220 = !DILocalVariable(name: "arg", arg: 2, scope: !3217, file: !318, line: 931, type: !36)
!3221 = !DILocation(line: 0, scope: !3217)
!3222 = !DILocation(line: 933, column: 10, scope: !3217)
!3223 = !DILocation(line: 933, column: 3, scope: !3217)
!3224 = distinct !DISubprogram(name: "quotearg_n_options", scope: !318, file: !318, line: 877, type: !3225, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3227)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!34, !38, !36, !93, !347}
!3227 = !{!3228, !3229, !3230, !3231, !3232, !3233, !3234, !3237, !3238, !3240, !3241, !3242}
!3228 = !DILocalVariable(name: "n", arg: 1, scope: !3224, file: !318, line: 877, type: !38)
!3229 = !DILocalVariable(name: "arg", arg: 2, scope: !3224, file: !318, line: 877, type: !36)
!3230 = !DILocalVariable(name: "argsize", arg: 3, scope: !3224, file: !318, line: 877, type: !93)
!3231 = !DILocalVariable(name: "options", arg: 4, scope: !3224, file: !318, line: 878, type: !347)
!3232 = !DILocalVariable(name: "e", scope: !3224, file: !318, line: 880, type: !38)
!3233 = !DILocalVariable(name: "sv", scope: !3224, file: !318, line: 882, type: !414)
!3234 = !DILocalVariable(name: "preallocated", scope: !3235, file: !318, line: 889, type: !182)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !318, line: 888, column: 5)
!3236 = distinct !DILexicalBlock(scope: !3224, file: !318, line: 887, column: 7)
!3237 = !DILocalVariable(name: "nmax", scope: !3235, file: !318, line: 890, type: !38)
!3238 = !DILocalVariable(name: "size", scope: !3239, file: !318, line: 903, type: !93)
!3239 = distinct !DILexicalBlock(scope: !3224, file: !318, line: 902, column: 3)
!3240 = !DILocalVariable(name: "val", scope: !3239, file: !318, line: 904, type: !34)
!3241 = !DILocalVariable(name: "flags", scope: !3239, file: !318, line: 906, type: !38)
!3242 = !DILocalVariable(name: "qsize", scope: !3239, file: !318, line: 907, type: !93)
!3243 = !DILocation(line: 0, scope: !3224)
!3244 = !DILocation(line: 880, column: 11, scope: !3224)
!3245 = !DILocation(line: 882, column: 24, scope: !3224)
!3246 = !DILocation(line: 884, column: 9, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3224, file: !318, line: 884, column: 7)
!3248 = !DILocation(line: 884, column: 7, scope: !3224)
!3249 = !DILocation(line: 885, column: 5, scope: !3247)
!3250 = !DILocation(line: 887, column: 7, scope: !3236)
!3251 = !DILocation(line: 887, column: 14, scope: !3236)
!3252 = !DILocation(line: 887, column: 7, scope: !3224)
!3253 = !DILocation(line: 889, column: 31, scope: !3235)
!3254 = !DILocation(line: 0, scope: !3235)
!3255 = !DILocation(line: 892, column: 16, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3235, file: !318, line: 892, column: 11)
!3257 = !DILocation(line: 892, column: 11, scope: !3235)
!3258 = !DILocation(line: 893, column: 9, scope: !3256)
!3259 = !DILocation(line: 895, column: 32, scope: !3235)
!3260 = !DILocation(line: 895, column: 61, scope: !3235)
!3261 = !DILocation(line: 895, column: 58, scope: !3235)
!3262 = !DILocation(line: 895, column: 66, scope: !3235)
!3263 = !DILocation(line: 895, column: 22, scope: !3235)
!3264 = !DILocation(line: 895, column: 15, scope: !3235)
!3265 = !DILocation(line: 896, column: 11, scope: !3235)
!3266 = !DILocation(line: 897, column: 15, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3235, file: !318, line: 896, column: 11)
!3268 = !{i64 0, i64 8, !1367, i64 8, i64 8, !1190}
!3269 = !DILocation(line: 897, column: 9, scope: !3267)
!3270 = !DILocation(line: 898, column: 20, scope: !3235)
!3271 = !DILocation(line: 898, column: 18, scope: !3235)
!3272 = !DILocation(line: 898, column: 15, scope: !3235)
!3273 = !DILocation(line: 898, column: 38, scope: !3235)
!3274 = !DILocation(line: 898, column: 31, scope: !3235)
!3275 = !DILocation(line: 898, column: 48, scope: !3235)
!3276 = !DILocation(line: 0, scope: !2675, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 898, column: 7, scope: !3235)
!3278 = !DILocation(line: 71, column: 10, scope: !2675, inlinedAt: !3277)
!3279 = !DILocation(line: 899, column: 14, scope: !3235)
!3280 = !DILocation(line: 900, column: 5, scope: !3235)
!3281 = !DILocation(line: 903, column: 19, scope: !3239)
!3282 = !DILocation(line: 903, column: 25, scope: !3239)
!3283 = !DILocation(line: 0, scope: !3239)
!3284 = !DILocation(line: 904, column: 23, scope: !3239)
!3285 = !DILocation(line: 906, column: 26, scope: !3239)
!3286 = !DILocation(line: 906, column: 32, scope: !3239)
!3287 = !DILocation(line: 908, column: 55, scope: !3239)
!3288 = !DILocation(line: 909, column: 46, scope: !3239)
!3289 = !DILocation(line: 910, column: 55, scope: !3239)
!3290 = !DILocation(line: 911, column: 55, scope: !3239)
!3291 = !DILocation(line: 907, column: 20, scope: !3239)
!3292 = !DILocation(line: 913, column: 14, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3239, file: !318, line: 913, column: 9)
!3294 = !DILocation(line: 913, column: 9, scope: !3239)
!3295 = !DILocation(line: 915, column: 35, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3293, file: !318, line: 914, column: 7)
!3297 = !DILocation(line: 915, column: 20, scope: !3296)
!3298 = !DILocation(line: 916, column: 17, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3296, file: !318, line: 916, column: 13)
!3300 = !DILocation(line: 916, column: 13, scope: !3296)
!3301 = !DILocation(line: 917, column: 11, scope: !3299)
!3302 = !DILocation(line: 0, scope: !3141, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 918, column: 27, scope: !3296)
!3304 = !DILocation(line: 218, column: 10, scope: !3141, inlinedAt: !3303)
!3305 = !DILocation(line: 918, column: 19, scope: !3296)
!3306 = !DILocation(line: 919, column: 69, scope: !3296)
!3307 = !DILocation(line: 921, column: 44, scope: !3296)
!3308 = !DILocation(line: 922, column: 44, scope: !3296)
!3309 = !DILocation(line: 919, column: 9, scope: !3296)
!3310 = !DILocation(line: 923, column: 7, scope: !3296)
!3311 = !DILocation(line: 925, column: 11, scope: !3239)
!3312 = !DILocation(line: 926, column: 5, scope: !3239)
!3313 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !318, file: !318, line: 937, type: !3314, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3316)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!34, !38, !36, !93}
!3316 = !{!3317, !3318, !3319}
!3317 = !DILocalVariable(name: "n", arg: 1, scope: !3313, file: !318, line: 937, type: !38)
!3318 = !DILocalVariable(name: "arg", arg: 2, scope: !3313, file: !318, line: 937, type: !36)
!3319 = !DILocalVariable(name: "argsize", arg: 3, scope: !3313, file: !318, line: 937, type: !93)
!3320 = !DILocation(line: 0, scope: !3313)
!3321 = !DILocation(line: 939, column: 10, scope: !3313)
!3322 = !DILocation(line: 939, column: 3, scope: !3313)
!3323 = distinct !DISubprogram(name: "quotearg", scope: !318, file: !318, line: 943, type: !113, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3324)
!3324 = !{!3325}
!3325 = !DILocalVariable(name: "arg", arg: 1, scope: !3323, file: !318, line: 943, type: !36)
!3326 = !DILocation(line: 0, scope: !3323)
!3327 = !DILocation(line: 0, scope: !3217, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 945, column: 10, scope: !3323)
!3329 = !DILocation(line: 933, column: 10, scope: !3217, inlinedAt: !3328)
!3330 = !DILocation(line: 945, column: 3, scope: !3323)
!3331 = distinct !DISubprogram(name: "quotearg_mem", scope: !318, file: !318, line: 949, type: !3332, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!34, !36, !93}
!3334 = !{!3335, !3336}
!3335 = !DILocalVariable(name: "arg", arg: 1, scope: !3331, file: !318, line: 949, type: !36)
!3336 = !DILocalVariable(name: "argsize", arg: 2, scope: !3331, file: !318, line: 949, type: !93)
!3337 = !DILocation(line: 0, scope: !3331)
!3338 = !DILocation(line: 0, scope: !3313, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 951, column: 10, scope: !3331)
!3340 = !DILocation(line: 939, column: 10, scope: !3313, inlinedAt: !3339)
!3341 = !DILocation(line: 951, column: 3, scope: !3331)
!3342 = distinct !DISubprogram(name: "quotearg_n_style", scope: !318, file: !318, line: 955, type: !154, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3343)
!3343 = !{!3344, !3345, !3346, !3347}
!3344 = !DILocalVariable(name: "n", arg: 1, scope: !3342, file: !318, line: 955, type: !38)
!3345 = !DILocalVariable(name: "s", arg: 2, scope: !3342, file: !318, line: 955, type: !5)
!3346 = !DILocalVariable(name: "arg", arg: 3, scope: !3342, file: !318, line: 955, type: !36)
!3347 = !DILocalVariable(name: "o", scope: !3342, file: !318, line: 957, type: !348)
!3348 = !DILocation(line: 0, scope: !3342)
!3349 = !DILocation(line: 957, column: 3, scope: !3342)
!3350 = !DILocation(line: 957, column: 32, scope: !3342)
!3351 = !DILocalVariable(name: "style", arg: 1, scope: !3352, file: !318, line: 193, type: !5)
!3352 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !318, file: !318, line: 193, type: !3353, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3355)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!349, !5}
!3355 = !{!3351, !3356}
!3356 = !DILocalVariable(name: "o", scope: !3352, file: !318, line: 195, type: !349)
!3357 = !DILocation(line: 0, scope: !3352, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 957, column: 36, scope: !3342)
!3359 = !DILocation(line: 195, column: 26, scope: !3352, inlinedAt: !3358)
!3360 = !{!3361}
!3361 = distinct !{!3361, !3362, !"quoting_options_from_style: argument 0"}
!3362 = distinct !{!3362, !"quoting_options_from_style"}
!3363 = !DILocation(line: 196, column: 13, scope: !3364, inlinedAt: !3358)
!3364 = distinct !DILexicalBlock(scope: !3352, file: !318, line: 196, column: 7)
!3365 = !DILocation(line: 196, column: 7, scope: !3352, inlinedAt: !3358)
!3366 = !DILocation(line: 197, column: 5, scope: !3364, inlinedAt: !3358)
!3367 = !DILocation(line: 198, column: 5, scope: !3352, inlinedAt: !3358)
!3368 = !DILocation(line: 198, column: 11, scope: !3352, inlinedAt: !3358)
!3369 = !DILocation(line: 958, column: 10, scope: !3342)
!3370 = !DILocation(line: 959, column: 1, scope: !3342)
!3371 = !DILocation(line: 958, column: 3, scope: !3342)
!3372 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !318, file: !318, line: 962, type: !3373, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3375)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!34, !38, !5, !36, !93}
!3375 = !{!3376, !3377, !3378, !3379, !3380}
!3376 = !DILocalVariable(name: "n", arg: 1, scope: !3372, file: !318, line: 962, type: !38)
!3377 = !DILocalVariable(name: "s", arg: 2, scope: !3372, file: !318, line: 962, type: !5)
!3378 = !DILocalVariable(name: "arg", arg: 3, scope: !3372, file: !318, line: 963, type: !36)
!3379 = !DILocalVariable(name: "argsize", arg: 4, scope: !3372, file: !318, line: 963, type: !93)
!3380 = !DILocalVariable(name: "o", scope: !3372, file: !318, line: 965, type: !348)
!3381 = !DILocation(line: 0, scope: !3372)
!3382 = !DILocation(line: 965, column: 3, scope: !3372)
!3383 = !DILocation(line: 965, column: 32, scope: !3372)
!3384 = !DILocation(line: 0, scope: !3352, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 965, column: 36, scope: !3372)
!3386 = !DILocation(line: 195, column: 26, scope: !3352, inlinedAt: !3385)
!3387 = !{!3388}
!3388 = distinct !{!3388, !3389, !"quoting_options_from_style: argument 0"}
!3389 = distinct !{!3389, !"quoting_options_from_style"}
!3390 = !DILocation(line: 196, column: 13, scope: !3364, inlinedAt: !3385)
!3391 = !DILocation(line: 196, column: 7, scope: !3352, inlinedAt: !3385)
!3392 = !DILocation(line: 197, column: 5, scope: !3364, inlinedAt: !3385)
!3393 = !DILocation(line: 198, column: 5, scope: !3352, inlinedAt: !3385)
!3394 = !DILocation(line: 198, column: 11, scope: !3352, inlinedAt: !3385)
!3395 = !DILocation(line: 966, column: 10, scope: !3372)
!3396 = !DILocation(line: 967, column: 1, scope: !3372)
!3397 = !DILocation(line: 966, column: 3, scope: !3372)
!3398 = distinct !DISubprogram(name: "quotearg_style", scope: !318, file: !318, line: 970, type: !3399, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3401)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!34, !5, !36}
!3401 = !{!3402, !3403}
!3402 = !DILocalVariable(name: "s", arg: 1, scope: !3398, file: !318, line: 970, type: !5)
!3403 = !DILocalVariable(name: "arg", arg: 2, scope: !3398, file: !318, line: 970, type: !36)
!3404 = !DILocation(line: 195, column: 26, scope: !3352, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 957, column: 36, scope: !3342, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 972, column: 10, scope: !3398)
!3407 = !DILocation(line: 957, column: 32, scope: !3342, inlinedAt: !3406)
!3408 = !DILocation(line: 0, scope: !3398)
!3409 = !DILocation(line: 0, scope: !3342, inlinedAt: !3406)
!3410 = !DILocation(line: 957, column: 3, scope: !3342, inlinedAt: !3406)
!3411 = !DILocation(line: 0, scope: !3352, inlinedAt: !3405)
!3412 = !{!3413}
!3413 = distinct !{!3413, !3414, !"quoting_options_from_style: argument 0"}
!3414 = distinct !{!3414, !"quoting_options_from_style"}
!3415 = !DILocation(line: 196, column: 13, scope: !3364, inlinedAt: !3405)
!3416 = !DILocation(line: 196, column: 7, scope: !3352, inlinedAt: !3405)
!3417 = !DILocation(line: 197, column: 5, scope: !3364, inlinedAt: !3405)
!3418 = !DILocation(line: 198, column: 5, scope: !3352, inlinedAt: !3405)
!3419 = !DILocation(line: 198, column: 11, scope: !3352, inlinedAt: !3405)
!3420 = !DILocation(line: 958, column: 10, scope: !3342, inlinedAt: !3406)
!3421 = !DILocation(line: 959, column: 1, scope: !3342, inlinedAt: !3406)
!3422 = !DILocation(line: 972, column: 3, scope: !3398)
!3423 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !318, file: !318, line: 976, type: !3424, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3426)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!34, !5, !36, !93}
!3426 = !{!3427, !3428, !3429}
!3427 = !DILocalVariable(name: "s", arg: 1, scope: !3423, file: !318, line: 976, type: !5)
!3428 = !DILocalVariable(name: "arg", arg: 2, scope: !3423, file: !318, line: 976, type: !36)
!3429 = !DILocalVariable(name: "argsize", arg: 3, scope: !3423, file: !318, line: 976, type: !93)
!3430 = !DILocation(line: 195, column: 26, scope: !3352, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 965, column: 36, scope: !3372, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 978, column: 10, scope: !3423)
!3433 = !DILocation(line: 965, column: 32, scope: !3372, inlinedAt: !3432)
!3434 = !DILocation(line: 0, scope: !3423)
!3435 = !DILocation(line: 0, scope: !3372, inlinedAt: !3432)
!3436 = !DILocation(line: 965, column: 3, scope: !3372, inlinedAt: !3432)
!3437 = !DILocation(line: 0, scope: !3352, inlinedAt: !3431)
!3438 = !{!3439}
!3439 = distinct !{!3439, !3440, !"quoting_options_from_style: argument 0"}
!3440 = distinct !{!3440, !"quoting_options_from_style"}
!3441 = !DILocation(line: 196, column: 13, scope: !3364, inlinedAt: !3431)
!3442 = !DILocation(line: 196, column: 7, scope: !3352, inlinedAt: !3431)
!3443 = !DILocation(line: 197, column: 5, scope: !3364, inlinedAt: !3431)
!3444 = !DILocation(line: 198, column: 5, scope: !3352, inlinedAt: !3431)
!3445 = !DILocation(line: 198, column: 11, scope: !3352, inlinedAt: !3431)
!3446 = !DILocation(line: 966, column: 10, scope: !3372, inlinedAt: !3432)
!3447 = !DILocation(line: 967, column: 1, scope: !3372, inlinedAt: !3432)
!3448 = !DILocation(line: 978, column: 3, scope: !3423)
!3449 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !318, file: !318, line: 982, type: !3450, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3452)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!34, !36, !93, !35}
!3452 = !{!3453, !3454, !3455, !3456}
!3453 = !DILocalVariable(name: "arg", arg: 1, scope: !3449, file: !318, line: 982, type: !36)
!3454 = !DILocalVariable(name: "argsize", arg: 2, scope: !3449, file: !318, line: 982, type: !93)
!3455 = !DILocalVariable(name: "ch", arg: 3, scope: !3449, file: !318, line: 982, type: !35)
!3456 = !DILocalVariable(name: "options", scope: !3449, file: !318, line: 984, type: !349)
!3457 = !DILocation(line: 0, scope: !3449)
!3458 = !DILocation(line: 984, column: 3, scope: !3449)
!3459 = !DILocation(line: 984, column: 26, scope: !3449)
!3460 = !DILocation(line: 985, column: 13, scope: !3449)
!3461 = !{i64 0, i64 4, !1378, i64 4, i64 4, !1308, i64 8, i64 32, !1378, i64 40, i64 8, !1190, i64 48, i64 8, !1190}
!3462 = !DILocation(line: 0, scope: !2289, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 986, column: 3, scope: !3449)
!3464 = !DILocation(line: 156, column: 62, scope: !2289, inlinedAt: !3463)
!3465 = !DILocation(line: 156, column: 57, scope: !2289, inlinedAt: !3463)
!3466 = !DILocation(line: 157, column: 15, scope: !2289, inlinedAt: !3463)
!3467 = !DILocation(line: 158, column: 12, scope: !2289, inlinedAt: !3463)
!3468 = !DILocation(line: 158, column: 15, scope: !2289, inlinedAt: !3463)
!3469 = !DILocation(line: 158, column: 25, scope: !2289, inlinedAt: !3463)
!3470 = !DILocation(line: 159, column: 18, scope: !2289, inlinedAt: !3463)
!3471 = !DILocation(line: 159, column: 23, scope: !2289, inlinedAt: !3463)
!3472 = !DILocation(line: 159, column: 6, scope: !2289, inlinedAt: !3463)
!3473 = !DILocation(line: 987, column: 10, scope: !3449)
!3474 = !DILocation(line: 988, column: 1, scope: !3449)
!3475 = !DILocation(line: 987, column: 3, scope: !3449)
!3476 = distinct !DISubprogram(name: "quotearg_char", scope: !318, file: !318, line: 991, type: !3477, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3479)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!34, !36, !35}
!3479 = !{!3480, !3481}
!3480 = !DILocalVariable(name: "arg", arg: 1, scope: !3476, file: !318, line: 991, type: !36)
!3481 = !DILocalVariable(name: "ch", arg: 2, scope: !3476, file: !318, line: 991, type: !35)
!3482 = !DILocation(line: 984, column: 26, scope: !3449, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 993, column: 10, scope: !3476)
!3484 = !DILocation(line: 0, scope: !3476)
!3485 = !DILocation(line: 0, scope: !3449, inlinedAt: !3483)
!3486 = !DILocation(line: 984, column: 3, scope: !3449, inlinedAt: !3483)
!3487 = !DILocation(line: 985, column: 13, scope: !3449, inlinedAt: !3483)
!3488 = !DILocation(line: 0, scope: !2289, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 986, column: 3, scope: !3449, inlinedAt: !3483)
!3490 = !DILocation(line: 156, column: 62, scope: !2289, inlinedAt: !3489)
!3491 = !DILocation(line: 156, column: 57, scope: !2289, inlinedAt: !3489)
!3492 = !DILocation(line: 157, column: 15, scope: !2289, inlinedAt: !3489)
!3493 = !DILocation(line: 158, column: 12, scope: !2289, inlinedAt: !3489)
!3494 = !DILocation(line: 158, column: 15, scope: !2289, inlinedAt: !3489)
!3495 = !DILocation(line: 158, column: 25, scope: !2289, inlinedAt: !3489)
!3496 = !DILocation(line: 159, column: 18, scope: !2289, inlinedAt: !3489)
!3497 = !DILocation(line: 159, column: 23, scope: !2289, inlinedAt: !3489)
!3498 = !DILocation(line: 159, column: 6, scope: !2289, inlinedAt: !3489)
!3499 = !DILocation(line: 987, column: 10, scope: !3449, inlinedAt: !3483)
!3500 = !DILocation(line: 988, column: 1, scope: !3449, inlinedAt: !3483)
!3501 = !DILocation(line: 993, column: 3, scope: !3476)
!3502 = distinct !DISubprogram(name: "quotearg_colon", scope: !318, file: !318, line: 997, type: !113, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3503)
!3503 = !{!3504}
!3504 = !DILocalVariable(name: "arg", arg: 1, scope: !3502, file: !318, line: 997, type: !36)
!3505 = !DILocation(line: 984, column: 26, scope: !3449, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 993, column: 10, scope: !3476, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 999, column: 10, scope: !3502)
!3508 = !DILocation(line: 0, scope: !3502)
!3509 = !DILocation(line: 0, scope: !3476, inlinedAt: !3507)
!3510 = !DILocation(line: 0, scope: !3449, inlinedAt: !3506)
!3511 = !DILocation(line: 984, column: 3, scope: !3449, inlinedAt: !3506)
!3512 = !DILocation(line: 985, column: 13, scope: !3449, inlinedAt: !3506)
!3513 = !DILocation(line: 0, scope: !2289, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 986, column: 3, scope: !3449, inlinedAt: !3506)
!3515 = !DILocation(line: 156, column: 57, scope: !2289, inlinedAt: !3514)
!3516 = !DILocation(line: 158, column: 12, scope: !2289, inlinedAt: !3514)
!3517 = !DILocation(line: 159, column: 6, scope: !2289, inlinedAt: !3514)
!3518 = !DILocation(line: 987, column: 10, scope: !3449, inlinedAt: !3506)
!3519 = !DILocation(line: 988, column: 1, scope: !3449, inlinedAt: !3506)
!3520 = !DILocation(line: 999, column: 3, scope: !3502)
!3521 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !318, file: !318, line: 1003, type: !3332, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3522)
!3522 = !{!3523, !3524}
!3523 = !DILocalVariable(name: "arg", arg: 1, scope: !3521, file: !318, line: 1003, type: !36)
!3524 = !DILocalVariable(name: "argsize", arg: 2, scope: !3521, file: !318, line: 1003, type: !93)
!3525 = !DILocation(line: 984, column: 26, scope: !3449, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 1005, column: 10, scope: !3521)
!3527 = !DILocation(line: 0, scope: !3521)
!3528 = !DILocation(line: 0, scope: !3449, inlinedAt: !3526)
!3529 = !DILocation(line: 984, column: 3, scope: !3449, inlinedAt: !3526)
!3530 = !DILocation(line: 985, column: 13, scope: !3449, inlinedAt: !3526)
!3531 = !DILocation(line: 0, scope: !2289, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 986, column: 3, scope: !3449, inlinedAt: !3526)
!3533 = !DILocation(line: 156, column: 57, scope: !2289, inlinedAt: !3532)
!3534 = !DILocation(line: 158, column: 12, scope: !2289, inlinedAt: !3532)
!3535 = !DILocation(line: 159, column: 6, scope: !2289, inlinedAt: !3532)
!3536 = !DILocation(line: 987, column: 10, scope: !3449, inlinedAt: !3526)
!3537 = !DILocation(line: 988, column: 1, scope: !3449, inlinedAt: !3526)
!3538 = !DILocation(line: 1005, column: 3, scope: !3521)
!3539 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !318, file: !318, line: 1009, type: !154, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3540)
!3540 = !{!3541, !3542, !3543, !3544}
!3541 = !DILocalVariable(name: "n", arg: 1, scope: !3539, file: !318, line: 1009, type: !38)
!3542 = !DILocalVariable(name: "s", arg: 2, scope: !3539, file: !318, line: 1009, type: !5)
!3543 = !DILocalVariable(name: "arg", arg: 3, scope: !3539, file: !318, line: 1009, type: !36)
!3544 = !DILocalVariable(name: "options", scope: !3539, file: !318, line: 1011, type: !349)
!3545 = !DILocation(line: 195, column: 26, scope: !3352, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 1012, column: 13, scope: !3539)
!3547 = !DILocation(line: 0, scope: !3539)
!3548 = !DILocation(line: 1011, column: 3, scope: !3539)
!3549 = !DILocation(line: 1011, column: 26, scope: !3539)
!3550 = !DILocation(line: 1012, column: 13, scope: !3539)
!3551 = !DILocation(line: 0, scope: !3352, inlinedAt: !3546)
!3552 = !{!3553}
!3553 = distinct !{!3553, !3554, !"quoting_options_from_style: argument 0"}
!3554 = distinct !{!3554, !"quoting_options_from_style"}
!3555 = !DILocation(line: 196, column: 13, scope: !3364, inlinedAt: !3546)
!3556 = !DILocation(line: 196, column: 7, scope: !3352, inlinedAt: !3546)
!3557 = !DILocation(line: 197, column: 5, scope: !3364, inlinedAt: !3546)
!3558 = !DILocation(line: 0, scope: !2289, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 1013, column: 3, scope: !3539)
!3560 = !DILocation(line: 156, column: 57, scope: !2289, inlinedAt: !3559)
!3561 = !DILocation(line: 158, column: 12, scope: !2289, inlinedAt: !3559)
!3562 = !DILocation(line: 159, column: 6, scope: !2289, inlinedAt: !3559)
!3563 = !DILocation(line: 1014, column: 10, scope: !3539)
!3564 = !DILocation(line: 1015, column: 1, scope: !3539)
!3565 = !DILocation(line: 1014, column: 3, scope: !3539)
!3566 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !318, file: !318, line: 1018, type: !3567, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3569)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!34, !38, !36, !36, !36}
!3569 = !{!3570, !3571, !3572, !3573}
!3570 = !DILocalVariable(name: "n", arg: 1, scope: !3566, file: !318, line: 1018, type: !38)
!3571 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3566, file: !318, line: 1018, type: !36)
!3572 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3566, file: !318, line: 1019, type: !36)
!3573 = !DILocalVariable(name: "arg", arg: 4, scope: !3566, file: !318, line: 1019, type: !36)
!3574 = !DILocalVariable(name: "o", scope: !3575, file: !318, line: 1030, type: !349)
!3575 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !318, file: !318, line: 1026, type: !3576, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3578)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!34, !38, !36, !36, !36, !93}
!3578 = !{!3579, !3580, !3581, !3582, !3583, !3574}
!3579 = !DILocalVariable(name: "n", arg: 1, scope: !3575, file: !318, line: 1026, type: !38)
!3580 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3575, file: !318, line: 1026, type: !36)
!3581 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3575, file: !318, line: 1027, type: !36)
!3582 = !DILocalVariable(name: "arg", arg: 4, scope: !3575, file: !318, line: 1028, type: !36)
!3583 = !DILocalVariable(name: "argsize", arg: 5, scope: !3575, file: !318, line: 1028, type: !93)
!3584 = !DILocation(line: 1030, column: 26, scope: !3575, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 1021, column: 10, scope: !3566)
!3586 = !DILocation(line: 0, scope: !3566)
!3587 = !DILocation(line: 0, scope: !3575, inlinedAt: !3585)
!3588 = !DILocation(line: 1030, column: 3, scope: !3575, inlinedAt: !3585)
!3589 = !DILocation(line: 1030, column: 30, scope: !3575, inlinedAt: !3585)
!3590 = !DILocation(line: 0, scope: !2329, inlinedAt: !3591)
!3591 = distinct !DILocation(line: 1031, column: 3, scope: !3575, inlinedAt: !3585)
!3592 = !DILocation(line: 184, column: 6, scope: !2329, inlinedAt: !3591)
!3593 = !DILocation(line: 184, column: 12, scope: !2329, inlinedAt: !3591)
!3594 = !DILocation(line: 185, column: 8, scope: !2343, inlinedAt: !3591)
!3595 = !DILocation(line: 185, column: 23, scope: !2343, inlinedAt: !3591)
!3596 = !DILocation(line: 185, column: 19, scope: !2343, inlinedAt: !3591)
!3597 = !DILocation(line: 186, column: 5, scope: !2343, inlinedAt: !3591)
!3598 = !DILocation(line: 187, column: 6, scope: !2329, inlinedAt: !3591)
!3599 = !DILocation(line: 187, column: 17, scope: !2329, inlinedAt: !3591)
!3600 = !DILocation(line: 188, column: 6, scope: !2329, inlinedAt: !3591)
!3601 = !DILocation(line: 188, column: 18, scope: !2329, inlinedAt: !3591)
!3602 = !DILocation(line: 1032, column: 10, scope: !3575, inlinedAt: !3585)
!3603 = !DILocation(line: 1033, column: 1, scope: !3575, inlinedAt: !3585)
!3604 = !DILocation(line: 1021, column: 3, scope: !3566)
!3605 = !DILocation(line: 0, scope: !3575)
!3606 = !DILocation(line: 1030, column: 3, scope: !3575)
!3607 = !DILocation(line: 1030, column: 26, scope: !3575)
!3608 = !DILocation(line: 1030, column: 30, scope: !3575)
!3609 = !DILocation(line: 0, scope: !2329, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 1031, column: 3, scope: !3575)
!3611 = !DILocation(line: 184, column: 6, scope: !2329, inlinedAt: !3610)
!3612 = !DILocation(line: 184, column: 12, scope: !2329, inlinedAt: !3610)
!3613 = !DILocation(line: 185, column: 8, scope: !2343, inlinedAt: !3610)
!3614 = !DILocation(line: 185, column: 23, scope: !2343, inlinedAt: !3610)
!3615 = !DILocation(line: 185, column: 19, scope: !2343, inlinedAt: !3610)
!3616 = !DILocation(line: 186, column: 5, scope: !2343, inlinedAt: !3610)
!3617 = !DILocation(line: 187, column: 6, scope: !2329, inlinedAt: !3610)
!3618 = !DILocation(line: 187, column: 17, scope: !2329, inlinedAt: !3610)
!3619 = !DILocation(line: 188, column: 6, scope: !2329, inlinedAt: !3610)
!3620 = !DILocation(line: 188, column: 18, scope: !2329, inlinedAt: !3610)
!3621 = !DILocation(line: 1032, column: 10, scope: !3575)
!3622 = !DILocation(line: 1033, column: 1, scope: !3575)
!3623 = !DILocation(line: 1032, column: 3, scope: !3575)
!3624 = distinct !DISubprogram(name: "quotearg_custom", scope: !318, file: !318, line: 1036, type: !3625, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3627)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!34, !36, !36, !36}
!3627 = !{!3628, !3629, !3630}
!3628 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3624, file: !318, line: 1036, type: !36)
!3629 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3624, file: !318, line: 1036, type: !36)
!3630 = !DILocalVariable(name: "arg", arg: 3, scope: !3624, file: !318, line: 1037, type: !36)
!3631 = !DILocation(line: 1030, column: 26, scope: !3575, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 1021, column: 10, scope: !3566, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 1039, column: 10, scope: !3624)
!3634 = !DILocation(line: 0, scope: !3624)
!3635 = !DILocation(line: 0, scope: !3566, inlinedAt: !3633)
!3636 = !DILocation(line: 0, scope: !3575, inlinedAt: !3632)
!3637 = !DILocation(line: 1030, column: 3, scope: !3575, inlinedAt: !3632)
!3638 = !DILocation(line: 1030, column: 30, scope: !3575, inlinedAt: !3632)
!3639 = !DILocation(line: 0, scope: !2329, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 1031, column: 3, scope: !3575, inlinedAt: !3632)
!3641 = !DILocation(line: 184, column: 6, scope: !2329, inlinedAt: !3640)
!3642 = !DILocation(line: 184, column: 12, scope: !2329, inlinedAt: !3640)
!3643 = !DILocation(line: 185, column: 8, scope: !2343, inlinedAt: !3640)
!3644 = !DILocation(line: 185, column: 23, scope: !2343, inlinedAt: !3640)
!3645 = !DILocation(line: 185, column: 19, scope: !2343, inlinedAt: !3640)
!3646 = !DILocation(line: 186, column: 5, scope: !2343, inlinedAt: !3640)
!3647 = !DILocation(line: 187, column: 6, scope: !2329, inlinedAt: !3640)
!3648 = !DILocation(line: 187, column: 17, scope: !2329, inlinedAt: !3640)
!3649 = !DILocation(line: 188, column: 6, scope: !2329, inlinedAt: !3640)
!3650 = !DILocation(line: 188, column: 18, scope: !2329, inlinedAt: !3640)
!3651 = !DILocation(line: 1032, column: 10, scope: !3575, inlinedAt: !3632)
!3652 = !DILocation(line: 1033, column: 1, scope: !3575, inlinedAt: !3632)
!3653 = !DILocation(line: 1039, column: 3, scope: !3624)
!3654 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !318, file: !318, line: 1043, type: !3655, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3657)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!34, !36, !36, !36, !93}
!3657 = !{!3658, !3659, !3660, !3661}
!3658 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3654, file: !318, line: 1043, type: !36)
!3659 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3654, file: !318, line: 1043, type: !36)
!3660 = !DILocalVariable(name: "arg", arg: 3, scope: !3654, file: !318, line: 1044, type: !36)
!3661 = !DILocalVariable(name: "argsize", arg: 4, scope: !3654, file: !318, line: 1044, type: !93)
!3662 = !DILocation(line: 1030, column: 26, scope: !3575, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 1046, column: 10, scope: !3654)
!3664 = !DILocation(line: 0, scope: !3654)
!3665 = !DILocation(line: 0, scope: !3575, inlinedAt: !3663)
!3666 = !DILocation(line: 1030, column: 3, scope: !3575, inlinedAt: !3663)
!3667 = !DILocation(line: 1030, column: 30, scope: !3575, inlinedAt: !3663)
!3668 = !DILocation(line: 0, scope: !2329, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 1031, column: 3, scope: !3575, inlinedAt: !3663)
!3670 = !DILocation(line: 184, column: 6, scope: !2329, inlinedAt: !3669)
!3671 = !DILocation(line: 184, column: 12, scope: !2329, inlinedAt: !3669)
!3672 = !DILocation(line: 185, column: 8, scope: !2343, inlinedAt: !3669)
!3673 = !DILocation(line: 185, column: 23, scope: !2343, inlinedAt: !3669)
!3674 = !DILocation(line: 185, column: 19, scope: !2343, inlinedAt: !3669)
!3675 = !DILocation(line: 186, column: 5, scope: !2343, inlinedAt: !3669)
!3676 = !DILocation(line: 187, column: 6, scope: !2329, inlinedAt: !3669)
!3677 = !DILocation(line: 187, column: 17, scope: !2329, inlinedAt: !3669)
!3678 = !DILocation(line: 188, column: 6, scope: !2329, inlinedAt: !3669)
!3679 = !DILocation(line: 188, column: 18, scope: !2329, inlinedAt: !3669)
!3680 = !DILocation(line: 1032, column: 10, scope: !3575, inlinedAt: !3663)
!3681 = !DILocation(line: 1033, column: 1, scope: !3575, inlinedAt: !3663)
!3682 = !DILocation(line: 1046, column: 3, scope: !3654)
!3683 = distinct !DISubprogram(name: "quote_n_mem", scope: !318, file: !318, line: 1061, type: !3684, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3686)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!36, !38, !36, !93}
!3686 = !{!3687, !3688, !3689}
!3687 = !DILocalVariable(name: "n", arg: 1, scope: !3683, file: !318, line: 1061, type: !38)
!3688 = !DILocalVariable(name: "arg", arg: 2, scope: !3683, file: !318, line: 1061, type: !36)
!3689 = !DILocalVariable(name: "argsize", arg: 3, scope: !3683, file: !318, line: 1061, type: !93)
!3690 = !DILocation(line: 0, scope: !3683)
!3691 = !DILocation(line: 1063, column: 10, scope: !3683)
!3692 = !DILocation(line: 1063, column: 3, scope: !3683)
!3693 = distinct !DISubprogram(name: "quote_mem", scope: !318, file: !318, line: 1067, type: !3694, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3696)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!36, !36, !93}
!3696 = !{!3697, !3698}
!3697 = !DILocalVariable(name: "arg", arg: 1, scope: !3693, file: !318, line: 1067, type: !36)
!3698 = !DILocalVariable(name: "argsize", arg: 2, scope: !3693, file: !318, line: 1067, type: !93)
!3699 = !DILocation(line: 0, scope: !3693)
!3700 = !DILocation(line: 0, scope: !3683, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 1069, column: 10, scope: !3693)
!3702 = !DILocation(line: 1063, column: 10, scope: !3683, inlinedAt: !3701)
!3703 = !DILocation(line: 1069, column: 3, scope: !3693)
!3704 = distinct !DISubprogram(name: "quote_n", scope: !318, file: !318, line: 1073, type: !3705, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3707)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!36, !38, !36}
!3707 = !{!3708, !3709}
!3708 = !DILocalVariable(name: "n", arg: 1, scope: !3704, file: !318, line: 1073, type: !38)
!3709 = !DILocalVariable(name: "arg", arg: 2, scope: !3704, file: !318, line: 1073, type: !36)
!3710 = !DILocation(line: 0, scope: !3704)
!3711 = !DILocation(line: 0, scope: !3683, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 1075, column: 10, scope: !3704)
!3713 = !DILocation(line: 1063, column: 10, scope: !3683, inlinedAt: !3712)
!3714 = !DILocation(line: 1075, column: 3, scope: !3704)
!3715 = distinct !DISubprogram(name: "quote", scope: !318, file: !318, line: 1079, type: !147, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !317, retainedNodes: !3716)
!3716 = !{!3717}
!3717 = !DILocalVariable(name: "arg", arg: 1, scope: !3715, file: !318, line: 1079, type: !36)
!3718 = !DILocation(line: 0, scope: !3715)
!3719 = !DILocation(line: 0, scope: !3704, inlinedAt: !3720)
!3720 = distinct !DILocation(line: 1081, column: 10, scope: !3715)
!3721 = !DILocation(line: 0, scope: !3683, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 1075, column: 10, scope: !3704, inlinedAt: !3720)
!3723 = !DILocation(line: 1063, column: 10, scope: !3683, inlinedAt: !3722)
!3724 = !DILocation(line: 1081, column: 3, scope: !3715)
!3725 = distinct !DISubprogram(name: "version_etc_arn", scope: !479, file: !479, line: 61, type: !3726, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !3731)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{null, !3728, !36, !36, !36, !3730, !93}
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1247, line: 7, baseType: !489)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!3731 = !{!3732, !3733, !3734, !3735, !3736, !3737}
!3732 = !DILocalVariable(name: "stream", arg: 1, scope: !3725, file: !479, line: 61, type: !3728)
!3733 = !DILocalVariable(name: "command_name", arg: 2, scope: !3725, file: !479, line: 62, type: !36)
!3734 = !DILocalVariable(name: "package", arg: 3, scope: !3725, file: !479, line: 62, type: !36)
!3735 = !DILocalVariable(name: "version", arg: 4, scope: !3725, file: !479, line: 63, type: !36)
!3736 = !DILocalVariable(name: "authors", arg: 5, scope: !3725, file: !479, line: 64, type: !3730)
!3737 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3725, file: !479, line: 64, type: !93)
!3738 = !DILocation(line: 0, scope: !3725)
!3739 = !DILocation(line: 66, column: 7, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3725, file: !479, line: 66, column: 7)
!3741 = !DILocation(line: 66, column: 7, scope: !3725)
!3742 = !DILocation(line: 67, column: 5, scope: !3740)
!3743 = !DILocation(line: 69, column: 5, scope: !3740)
!3744 = !DILocation(line: 83, column: 3, scope: !3725)
!3745 = !DILocation(line: 85, column: 3, scope: !3725)
!3746 = !DILocation(line: 88, column: 3, scope: !3725)
!3747 = !DILocation(line: 95, column: 3, scope: !3725)
!3748 = !DILocation(line: 97, column: 3, scope: !3725)
!3749 = !DILocation(line: 105, column: 7, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3725, file: !479, line: 98, column: 5)
!3751 = !DILocation(line: 106, column: 7, scope: !3750)
!3752 = !DILocation(line: 109, column: 7, scope: !3750)
!3753 = !DILocation(line: 110, column: 7, scope: !3750)
!3754 = !DILocation(line: 113, column: 7, scope: !3750)
!3755 = !DILocation(line: 115, column: 7, scope: !3750)
!3756 = !DILocation(line: 120, column: 7, scope: !3750)
!3757 = !DILocation(line: 122, column: 7, scope: !3750)
!3758 = !DILocation(line: 127, column: 7, scope: !3750)
!3759 = !DILocation(line: 129, column: 7, scope: !3750)
!3760 = !DILocation(line: 134, column: 7, scope: !3750)
!3761 = !DILocation(line: 137, column: 7, scope: !3750)
!3762 = !DILocation(line: 142, column: 7, scope: !3750)
!3763 = !DILocation(line: 145, column: 7, scope: !3750)
!3764 = !DILocation(line: 150, column: 7, scope: !3750)
!3765 = !DILocation(line: 154, column: 7, scope: !3750)
!3766 = !DILocation(line: 159, column: 7, scope: !3750)
!3767 = !DILocation(line: 163, column: 7, scope: !3750)
!3768 = !DILocation(line: 170, column: 7, scope: !3750)
!3769 = !DILocation(line: 174, column: 7, scope: !3750)
!3770 = !DILocation(line: 176, column: 1, scope: !3725)
!3771 = distinct !DISubprogram(name: "version_etc_ar", scope: !479, file: !479, line: 183, type: !3772, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !3774)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{null, !3728, !36, !36, !36, !3730}
!3774 = !{!3775, !3776, !3777, !3778, !3779, !3780}
!3775 = !DILocalVariable(name: "stream", arg: 1, scope: !3771, file: !479, line: 183, type: !3728)
!3776 = !DILocalVariable(name: "command_name", arg: 2, scope: !3771, file: !479, line: 184, type: !36)
!3777 = !DILocalVariable(name: "package", arg: 3, scope: !3771, file: !479, line: 184, type: !36)
!3778 = !DILocalVariable(name: "version", arg: 4, scope: !3771, file: !479, line: 185, type: !36)
!3779 = !DILocalVariable(name: "authors", arg: 5, scope: !3771, file: !479, line: 185, type: !3730)
!3780 = !DILocalVariable(name: "n_authors", scope: !3771, file: !479, line: 187, type: !93)
!3781 = !DILocation(line: 0, scope: !3771)
!3782 = !DILocation(line: 189, column: 8, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3771, file: !479, line: 189, column: 3)
!3784 = !DILocation(line: 0, scope: !3783)
!3785 = !DILocation(line: 189, column: 23, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3783, file: !479, line: 189, column: 3)
!3787 = !DILocation(line: 189, column: 3, scope: !3783)
!3788 = !DILocation(line: 189, column: 52, scope: !3786)
!3789 = distinct !{!3789, !3787, !3790}
!3790 = !DILocation(line: 190, column: 5, scope: !3783)
!3791 = !DILocation(line: 191, column: 3, scope: !3771)
!3792 = !DILocation(line: 192, column: 1, scope: !3771)
!3793 = distinct !DISubprogram(name: "version_etc_va", scope: !479, file: !479, line: 199, type: !3794, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !3803)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{null, !3728, !36, !36, !36, !3796}
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !479, line: 192, size: 192, elements: !3798)
!3798 = !{!3799, !3800, !3801, !3802}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3797, file: !479, line: 192, baseType: !7, size: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3797, file: !479, line: 192, baseType: !7, size: 32, offset: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3797, file: !479, line: 192, baseType: !91, size: 64, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3797, file: !479, line: 192, baseType: !91, size: 64, offset: 128)
!3803 = !{!3804, !3805, !3806, !3807, !3808, !3809, !3810}
!3804 = !DILocalVariable(name: "stream", arg: 1, scope: !3793, file: !479, line: 199, type: !3728)
!3805 = !DILocalVariable(name: "command_name", arg: 2, scope: !3793, file: !479, line: 200, type: !36)
!3806 = !DILocalVariable(name: "package", arg: 3, scope: !3793, file: !479, line: 200, type: !36)
!3807 = !DILocalVariable(name: "version", arg: 4, scope: !3793, file: !479, line: 201, type: !36)
!3808 = !DILocalVariable(name: "authors", arg: 5, scope: !3793, file: !479, line: 201, type: !3796)
!3809 = !DILocalVariable(name: "n_authors", scope: !3793, file: !479, line: 203, type: !93)
!3810 = !DILocalVariable(name: "authtab", scope: !3793, file: !479, line: 204, type: !3811)
!3811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 640, elements: !403)
!3812 = !DILocation(line: 0, scope: !3793)
!3813 = !DILocation(line: 204, column: 3, scope: !3793)
!3814 = !DILocation(line: 204, column: 15, scope: !3793)
!3815 = !DILocation(line: 0, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3817, file: !479, line: 206, column: 3)
!3817 = distinct !DILexicalBlock(scope: !3793, file: !479, line: 206, column: 3)
!3818 = !DILocation(line: 208, column: 35, scope: !3816)
!3819 = !DILocation(line: 208, column: 14, scope: !3816)
!3820 = !DILocation(line: 208, column: 33, scope: !3816)
!3821 = !DILocation(line: 208, column: 67, scope: !3816)
!3822 = !DILocation(line: 206, column: 3, scope: !3817)
!3823 = !DILocation(line: 0, scope: !3817)
!3824 = !DILocation(line: 211, column: 3, scope: !3793)
!3825 = !DILocation(line: 213, column: 1, scope: !3793)
!3826 = distinct !DISubprogram(name: "version_etc", scope: !479, file: !479, line: 230, type: !3827, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !3829)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{null, !3728, !36, !36, !36, null}
!3829 = !{!3830, !3831, !3832, !3833, !3834}
!3830 = !DILocalVariable(name: "stream", arg: 1, scope: !3826, file: !479, line: 230, type: !3728)
!3831 = !DILocalVariable(name: "command_name", arg: 2, scope: !3826, file: !479, line: 231, type: !36)
!3832 = !DILocalVariable(name: "package", arg: 3, scope: !3826, file: !479, line: 231, type: !36)
!3833 = !DILocalVariable(name: "version", arg: 4, scope: !3826, file: !479, line: 232, type: !36)
!3834 = !DILocalVariable(name: "authors", scope: !3826, file: !479, line: 234, type: !3835)
!3835 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !41, line: 52, baseType: !3836)
!3836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3837, line: 32, baseType: !3838)
!3837 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !479, line: 234, baseType: !3839)
!3839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3797, size: 192, elements: !76)
!3840 = !DILocation(line: 0, scope: !3826)
!3841 = !DILocation(line: 234, column: 3, scope: !3826)
!3842 = !DILocation(line: 234, column: 11, scope: !3826)
!3843 = !DILocation(line: 236, column: 3, scope: !3826)
!3844 = !DILocation(line: 237, column: 3, scope: !3826)
!3845 = !DILocation(line: 238, column: 3, scope: !3826)
!3846 = !DILocation(line: 239, column: 1, scope: !3826)
!3847 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !479, file: !479, line: 242, type: !120, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !39)
!3848 = !DILocation(line: 244, column: 3, scope: !3847)
!3849 = !DILocation(line: 249, column: 3, scope: !3847)
!3850 = !DILocation(line: 255, column: 3, scope: !3847)
!3851 = !DILocation(line: 260, column: 3, scope: !3847)
!3852 = !DILocation(line: 262, column: 1, scope: !3847)
!3853 = distinct !DISubprogram(name: "xnmalloc", scope: !164, file: !164, line: 99, type: !3854, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3856)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!91, !93, !93}
!3856 = !{!3857, !3858}
!3857 = !DILocalVariable(name: "n", arg: 1, scope: !3853, file: !164, line: 99, type: !93)
!3858 = !DILocalVariable(name: "s", arg: 2, scope: !3853, file: !164, line: 99, type: !93)
!3859 = !DILocation(line: 0, scope: !3853)
!3860 = !DILocation(line: 101, column: 7, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3853, file: !164, line: 101, column: 7)
!3862 = !DILocation(line: 101, column: 7, scope: !3853)
!3863 = !DILocation(line: 102, column: 5, scope: !3861)
!3864 = !DILocation(line: 103, column: 21, scope: !3853)
!3865 = !DILocalVariable(name: "n", arg: 1, scope: !3866, file: !521, line: 39, type: !93)
!3866 = distinct !DISubprogram(name: "xmalloc", scope: !521, file: !521, line: 39, type: !3867, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3869)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!91, !93}
!3869 = !{!3865, !3870}
!3870 = !DILocalVariable(name: "p", scope: !3866, file: !521, line: 41, type: !91)
!3871 = !DILocation(line: 0, scope: !3866, inlinedAt: !3872)
!3872 = distinct !DILocation(line: 103, column: 10, scope: !3853)
!3873 = !DILocation(line: 41, column: 13, scope: !3866, inlinedAt: !3872)
!3874 = !DILocation(line: 42, column: 8, scope: !3875, inlinedAt: !3872)
!3875 = distinct !DILexicalBlock(scope: !3866, file: !521, line: 42, column: 7)
!3876 = !DILocation(line: 42, column: 15, scope: !3875, inlinedAt: !3872)
!3877 = !DILocation(line: 42, column: 10, scope: !3875, inlinedAt: !3872)
!3878 = !DILocation(line: 43, column: 5, scope: !3875, inlinedAt: !3872)
!3879 = !DILocation(line: 103, column: 3, scope: !3853)
!3880 = !DILocation(line: 0, scope: !3866)
!3881 = !DILocation(line: 41, column: 13, scope: !3866)
!3882 = !DILocation(line: 42, column: 8, scope: !3875)
!3883 = !DILocation(line: 42, column: 15, scope: !3875)
!3884 = !DILocation(line: 42, column: 10, scope: !3875)
!3885 = !DILocation(line: 43, column: 5, scope: !3875)
!3886 = !DILocation(line: 44, column: 3, scope: !3866)
!3887 = distinct !DISubprogram(name: "xnrealloc", scope: !164, file: !164, line: 112, type: !3888, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3890)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!91, !91, !93, !93}
!3890 = !{!3891, !3892, !3893}
!3891 = !DILocalVariable(name: "p", arg: 1, scope: !3887, file: !164, line: 112, type: !91)
!3892 = !DILocalVariable(name: "n", arg: 2, scope: !3887, file: !164, line: 112, type: !93)
!3893 = !DILocalVariable(name: "s", arg: 3, scope: !3887, file: !164, line: 112, type: !93)
!3894 = !DILocation(line: 0, scope: !3887)
!3895 = !DILocation(line: 114, column: 7, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3887, file: !164, line: 114, column: 7)
!3897 = !DILocation(line: 114, column: 7, scope: !3887)
!3898 = !DILocation(line: 115, column: 5, scope: !3896)
!3899 = !DILocation(line: 116, column: 25, scope: !3887)
!3900 = !DILocalVariable(name: "p", arg: 1, scope: !3901, file: !521, line: 51, type: !91)
!3901 = distinct !DISubprogram(name: "xrealloc", scope: !521, file: !521, line: 51, type: !3902, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3904)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!91, !91, !93}
!3904 = !{!3900, !3905}
!3905 = !DILocalVariable(name: "n", arg: 2, scope: !3901, file: !521, line: 51, type: !93)
!3906 = !DILocation(line: 0, scope: !3901, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 116, column: 10, scope: !3887)
!3908 = !DILocation(line: 53, column: 8, scope: !3909, inlinedAt: !3907)
!3909 = distinct !DILexicalBlock(scope: !3901, file: !521, line: 53, column: 7)
!3910 = !DILocation(line: 53, column: 13, scope: !3909, inlinedAt: !3907)
!3911 = !DILocation(line: 53, column: 10, scope: !3909, inlinedAt: !3907)
!3912 = !DILocation(line: 57, column: 7, scope: !3913, inlinedAt: !3907)
!3913 = distinct !DILexicalBlock(scope: !3909, file: !521, line: 54, column: 5)
!3914 = !DILocation(line: 58, column: 7, scope: !3913, inlinedAt: !3907)
!3915 = !DILocation(line: 61, column: 7, scope: !3901, inlinedAt: !3907)
!3916 = !DILocation(line: 62, column: 8, scope: !3917, inlinedAt: !3907)
!3917 = distinct !DILexicalBlock(scope: !3901, file: !521, line: 62, column: 7)
!3918 = !DILocation(line: 62, column: 13, scope: !3917, inlinedAt: !3907)
!3919 = !DILocation(line: 62, column: 10, scope: !3917, inlinedAt: !3907)
!3920 = !DILocation(line: 63, column: 5, scope: !3917, inlinedAt: !3907)
!3921 = !DILocation(line: 116, column: 3, scope: !3887)
!3922 = !DILocation(line: 0, scope: !3901)
!3923 = !DILocation(line: 53, column: 8, scope: !3909)
!3924 = !DILocation(line: 53, column: 13, scope: !3909)
!3925 = !DILocation(line: 53, column: 10, scope: !3909)
!3926 = !DILocation(line: 57, column: 7, scope: !3913)
!3927 = !DILocation(line: 58, column: 7, scope: !3913)
!3928 = !DILocation(line: 61, column: 7, scope: !3901)
!3929 = !DILocation(line: 62, column: 8, scope: !3917)
!3930 = !DILocation(line: 62, column: 13, scope: !3917)
!3931 = !DILocation(line: 62, column: 10, scope: !3917)
!3932 = !DILocation(line: 63, column: 5, scope: !3917)
!3933 = !DILocation(line: 65, column: 1, scope: !3901)
!3934 = !DILocation(line: 0, scope: !524)
!3935 = !DILocation(line: 176, column: 14, scope: !524)
!3936 = !DILocation(line: 178, column: 9, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !524, file: !164, line: 178, column: 7)
!3938 = !DILocation(line: 178, column: 7, scope: !524)
!3939 = !DILocation(line: 180, column: 13, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3941, file: !164, line: 180, column: 11)
!3941 = distinct !DILexicalBlock(scope: !3937, file: !164, line: 179, column: 5)
!3942 = !DILocation(line: 180, column: 11, scope: !3941)
!3943 = !DILocation(line: 188, column: 30, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3940, file: !164, line: 181, column: 9)
!3945 = !DILocation(line: 189, column: 16, scope: !3944)
!3946 = !DILocation(line: 189, column: 13, scope: !3944)
!3947 = !DILocation(line: 190, column: 9, scope: !3944)
!3948 = !DILocation(line: 191, column: 11, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3941, file: !164, line: 191, column: 11)
!3950 = !DILocation(line: 191, column: 11, scope: !3941)
!3951 = !DILocation(line: 206, column: 7, scope: !524)
!3952 = !DILocation(line: 207, column: 25, scope: !524)
!3953 = !DILocation(line: 0, scope: !3901, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 207, column: 10, scope: !524)
!3955 = !DILocation(line: 53, column: 10, scope: !3909, inlinedAt: !3954)
!3956 = !DILocation(line: 192, column: 9, scope: !3949)
!3957 = !DILocation(line: 200, column: 69, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3959, file: !164, line: 200, column: 11)
!3959 = distinct !DILexicalBlock(scope: !3937, file: !164, line: 195, column: 5)
!3960 = !DILocation(line: 201, column: 11, scope: !3958)
!3961 = !DILocation(line: 200, column: 11, scope: !3959)
!3962 = !DILocation(line: 202, column: 9, scope: !3958)
!3963 = !DILocation(line: 203, column: 14, scope: !3959)
!3964 = !DILocation(line: 203, column: 18, scope: !3959)
!3965 = !DILocation(line: 203, column: 9, scope: !3959)
!3966 = !DILocation(line: 53, column: 8, scope: !3909, inlinedAt: !3954)
!3967 = !DILocation(line: 57, column: 7, scope: !3913, inlinedAt: !3954)
!3968 = !DILocation(line: 58, column: 7, scope: !3913, inlinedAt: !3954)
!3969 = !DILocation(line: 61, column: 7, scope: !3901, inlinedAt: !3954)
!3970 = !DILocation(line: 62, column: 8, scope: !3917, inlinedAt: !3954)
!3971 = !DILocation(line: 62, column: 13, scope: !3917, inlinedAt: !3954)
!3972 = !DILocation(line: 62, column: 10, scope: !3917, inlinedAt: !3954)
!3973 = !DILocation(line: 63, column: 5, scope: !3917, inlinedAt: !3954)
!3974 = !DILocation(line: 207, column: 3, scope: !524)
!3975 = distinct !DISubprogram(name: "xcharalloc", scope: !164, file: !164, line: 216, type: !3142, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3976)
!3976 = !{!3977}
!3977 = !DILocalVariable(name: "n", arg: 1, scope: !3975, file: !164, line: 216, type: !93)
!3978 = !DILocation(line: 0, scope: !3975)
!3979 = !DILocation(line: 0, scope: !3866, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 218, column: 10, scope: !3975)
!3981 = !DILocation(line: 41, column: 13, scope: !3866, inlinedAt: !3980)
!3982 = !DILocation(line: 42, column: 8, scope: !3875, inlinedAt: !3980)
!3983 = !DILocation(line: 42, column: 15, scope: !3875, inlinedAt: !3980)
!3984 = !DILocation(line: 42, column: 10, scope: !3875, inlinedAt: !3980)
!3985 = !DILocation(line: 43, column: 5, scope: !3875, inlinedAt: !3980)
!3986 = !DILocation(line: 218, column: 3, scope: !3975)
!3987 = distinct !DISubprogram(name: "x2realloc", scope: !521, file: !521, line: 74, type: !3988, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3990)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!91, !91, !527}
!3990 = !{!3991, !3992}
!3991 = !DILocalVariable(name: "p", arg: 1, scope: !3987, file: !521, line: 74, type: !91)
!3992 = !DILocalVariable(name: "pn", arg: 2, scope: !3987, file: !521, line: 74, type: !527)
!3993 = !DILocation(line: 0, scope: !3987)
!3994 = !DILocation(line: 0, scope: !524, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 76, column: 10, scope: !3987)
!3996 = !DILocation(line: 176, column: 14, scope: !524, inlinedAt: !3995)
!3997 = !DILocation(line: 178, column: 9, scope: !3937, inlinedAt: !3995)
!3998 = !DILocation(line: 178, column: 7, scope: !524, inlinedAt: !3995)
!3999 = !DILocation(line: 180, column: 13, scope: !3940, inlinedAt: !3995)
!4000 = !DILocation(line: 180, column: 11, scope: !3941, inlinedAt: !3995)
!4001 = !DILocation(line: 191, column: 11, scope: !3949, inlinedAt: !3995)
!4002 = !DILocation(line: 191, column: 11, scope: !3941, inlinedAt: !3995)
!4003 = !DILocation(line: 206, column: 7, scope: !524, inlinedAt: !3995)
!4004 = !DILocation(line: 0, scope: !3901, inlinedAt: !4005)
!4005 = distinct !DILocation(line: 207, column: 10, scope: !524, inlinedAt: !3995)
!4006 = !DILocation(line: 53, column: 10, scope: !3909, inlinedAt: !4005)
!4007 = !DILocation(line: 192, column: 9, scope: !3949, inlinedAt: !3995)
!4008 = !DILocation(line: 201, column: 11, scope: !3958, inlinedAt: !3995)
!4009 = !DILocation(line: 200, column: 11, scope: !3959, inlinedAt: !3995)
!4010 = !DILocation(line: 202, column: 9, scope: !3958, inlinedAt: !3995)
!4011 = !DILocation(line: 203, column: 14, scope: !3959, inlinedAt: !3995)
!4012 = !DILocation(line: 203, column: 18, scope: !3959, inlinedAt: !3995)
!4013 = !DILocation(line: 203, column: 9, scope: !3959, inlinedAt: !3995)
!4014 = !DILocation(line: 53, column: 8, scope: !3909, inlinedAt: !4005)
!4015 = !DILocation(line: 57, column: 7, scope: !3913, inlinedAt: !4005)
!4016 = !DILocation(line: 58, column: 7, scope: !3913, inlinedAt: !4005)
!4017 = !DILocation(line: 61, column: 7, scope: !3901, inlinedAt: !4005)
!4018 = !DILocation(line: 62, column: 8, scope: !3917, inlinedAt: !4005)
!4019 = !DILocation(line: 62, column: 13, scope: !3917, inlinedAt: !4005)
!4020 = !DILocation(line: 62, column: 10, scope: !3917, inlinedAt: !4005)
!4021 = !DILocation(line: 63, column: 5, scope: !3917, inlinedAt: !4005)
!4022 = !DILocation(line: 76, column: 3, scope: !3987)
!4023 = distinct !DISubprogram(name: "xzalloc", scope: !521, file: !521, line: 84, type: !3867, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !4024)
!4024 = !{!4025}
!4025 = !DILocalVariable(name: "n", arg: 1, scope: !4023, file: !521, line: 84, type: !93)
!4026 = !DILocation(line: 0, scope: !4023)
!4027 = !DILocalVariable(name: "n", arg: 1, scope: !4028, file: !521, line: 93, type: !93)
!4028 = distinct !DISubprogram(name: "xcalloc", scope: !521, file: !521, line: 93, type: !3854, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !4029)
!4029 = !{!4027, !4030, !4031}
!4030 = !DILocalVariable(name: "s", arg: 2, scope: !4028, file: !521, line: 93, type: !93)
!4031 = !DILocalVariable(name: "p", scope: !4028, file: !521, line: 95, type: !91)
!4032 = !DILocation(line: 0, scope: !4028, inlinedAt: !4033)
!4033 = distinct !DILocation(line: 86, column: 10, scope: !4023)
!4034 = !DILocation(line: 100, column: 7, scope: !4035, inlinedAt: !4033)
!4035 = distinct !DILexicalBlock(scope: !4028, file: !521, line: 100, column: 7)
!4036 = !DILocation(line: 101, column: 7, scope: !4035, inlinedAt: !4033)
!4037 = !DILocation(line: 101, column: 18, scope: !4035, inlinedAt: !4033)
!4038 = !DILocation(line: 101, column: 16, scope: !4035, inlinedAt: !4033)
!4039 = !DILocation(line: 100, column: 7, scope: !4028, inlinedAt: !4033)
!4040 = !DILocation(line: 102, column: 5, scope: !4035, inlinedAt: !4033)
!4041 = !DILocation(line: 86, column: 3, scope: !4023)
!4042 = !DILocation(line: 0, scope: !4028)
!4043 = !DILocation(line: 100, column: 7, scope: !4035)
!4044 = !DILocation(line: 101, column: 7, scope: !4035)
!4045 = !DILocation(line: 101, column: 18, scope: !4035)
!4046 = !DILocation(line: 101, column: 16, scope: !4035)
!4047 = !DILocation(line: 100, column: 7, scope: !4028)
!4048 = !DILocation(line: 102, column: 5, scope: !4035)
!4049 = !DILocation(line: 103, column: 3, scope: !4028)
!4050 = distinct !DISubprogram(name: "xmemdup", scope: !521, file: !521, line: 111, type: !4051, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !4053)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!91, !190, !93}
!4053 = !{!4054, !4055}
!4054 = !DILocalVariable(name: "p", arg: 1, scope: !4050, file: !521, line: 111, type: !190)
!4055 = !DILocalVariable(name: "s", arg: 2, scope: !4050, file: !521, line: 111, type: !93)
!4056 = !DILocation(line: 0, scope: !4050)
!4057 = !DILocation(line: 0, scope: !3866, inlinedAt: !4058)
!4058 = distinct !DILocation(line: 113, column: 18, scope: !4050)
!4059 = !DILocation(line: 41, column: 13, scope: !3866, inlinedAt: !4058)
!4060 = !DILocation(line: 42, column: 8, scope: !3875, inlinedAt: !4058)
!4061 = !DILocation(line: 42, column: 15, scope: !3875, inlinedAt: !4058)
!4062 = !DILocation(line: 42, column: 10, scope: !3875, inlinedAt: !4058)
!4063 = !DILocation(line: 43, column: 5, scope: !3875, inlinedAt: !4058)
!4064 = !DILocalVariable(name: "__dest", arg: 1, scope: !4065, file: !1390, line: 31, type: !4068)
!4065 = distinct !DISubprogram(name: "memcpy", scope: !1390, file: !1390, line: 31, type: !4066, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !4070)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!91, !4068, !4069, !93}
!4068 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!4069 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !190)
!4070 = !{!4064, !4071, !4072}
!4071 = !DILocalVariable(name: "__src", arg: 2, scope: !4065, file: !1390, line: 31, type: !4069)
!4072 = !DILocalVariable(name: "__len", arg: 3, scope: !4065, file: !1390, line: 31, type: !93)
!4073 = !DILocation(line: 0, scope: !4065, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 113, column: 10, scope: !4050)
!4075 = !DILocation(line: 34, column: 10, scope: !4065, inlinedAt: !4074)
!4076 = !DILocation(line: 113, column: 3, scope: !4050)
!4077 = distinct !DISubprogram(name: "xstrdup", scope: !521, file: !521, line: 119, type: !113, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !4078)
!4078 = !{!4079}
!4079 = !DILocalVariable(name: "string", arg: 1, scope: !4077, file: !521, line: 119, type: !36)
!4080 = !DILocation(line: 0, scope: !4077)
!4081 = !DILocation(line: 121, column: 27, scope: !4077)
!4082 = !DILocation(line: 121, column: 43, scope: !4077)
!4083 = !DILocation(line: 0, scope: !4050, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 121, column: 10, scope: !4077)
!4085 = !DILocation(line: 0, scope: !3866, inlinedAt: !4086)
!4086 = distinct !DILocation(line: 113, column: 18, scope: !4050, inlinedAt: !4084)
!4087 = !DILocation(line: 41, column: 13, scope: !3866, inlinedAt: !4086)
!4088 = !DILocation(line: 42, column: 8, scope: !3875, inlinedAt: !4086)
!4089 = !DILocation(line: 42, column: 15, scope: !3875, inlinedAt: !4086)
!4090 = !DILocation(line: 42, column: 10, scope: !3875, inlinedAt: !4086)
!4091 = !DILocation(line: 43, column: 5, scope: !3875, inlinedAt: !4086)
!4092 = !DILocation(line: 0, scope: !4065, inlinedAt: !4093)
!4093 = distinct !DILocation(line: 113, column: 10, scope: !4050, inlinedAt: !4084)
!4094 = !DILocation(line: 34, column: 10, scope: !4065, inlinedAt: !4093)
!4095 = !DILocation(line: 121, column: 3, scope: !4077)
!4096 = distinct !DISubprogram(name: "xalloc_die", scope: !542, file: !542, line: 32, type: !120, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !39)
!4097 = !DILocation(line: 34, column: 10, scope: !4096)
!4098 = !DILocation(line: 34, column: 33, scope: !4096)
!4099 = !DILocation(line: 34, column: 3, scope: !4096)
!4100 = !DILocation(line: 40, column: 3, scope: !4096)
!4101 = distinct !DISubprogram(name: "xnumtoumax", scope: !4102, file: !4102, line: 36, type: !4103, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !4105)
!4102 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!1252, !36, !38, !1252, !1252, !36, !36, !38}
!4105 = !{!4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4115}
!4106 = !DILocalVariable(name: "n_str", arg: 1, scope: !4101, file: !4102, line: 36, type: !36)
!4107 = !DILocalVariable(name: "base", arg: 2, scope: !4101, file: !4102, line: 36, type: !38)
!4108 = !DILocalVariable(name: "min", arg: 3, scope: !4101, file: !4102, line: 36, type: !1252)
!4109 = !DILocalVariable(name: "max", arg: 4, scope: !4101, file: !4102, line: 36, type: !1252)
!4110 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4101, file: !4102, line: 37, type: !36)
!4111 = !DILocalVariable(name: "err", arg: 6, scope: !4101, file: !4102, line: 37, type: !36)
!4112 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4101, file: !4102, line: 37, type: !38)
!4113 = !DILocalVariable(name: "s_err", scope: !4101, file: !4102, line: 39, type: !4114)
!4114 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !548, line: 38, baseType: !547)
!4115 = !DILocalVariable(name: "tnum", scope: !4101, file: !4102, line: 41, type: !1252)
!4116 = !DILocation(line: 0, scope: !4101)
!4117 = !DILocation(line: 41, column: 3, scope: !4101)
!4118 = !DILocation(line: 42, column: 11, scope: !4101)
!4119 = !DILocation(line: 44, column: 7, scope: !4101)
!4120 = !DILocation(line: 69, column: 50, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4122, file: !4102, line: 67, column: 5)
!4122 = distinct !DILexicalBlock(scope: !4101, file: !4102, line: 66, column: 7)
!4123 = !DILocation(line: 46, column: 11, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4125, file: !4102, line: 46, column: 11)
!4125 = distinct !DILexicalBlock(scope: !4126, file: !4102, line: 45, column: 5)
!4126 = distinct !DILexicalBlock(scope: !4101, file: !4102, line: 44, column: 7)
!4127 = !DILocation(line: 46, column: 16, scope: !4124)
!4128 = !DILocation(line: 46, column: 29, scope: !4124)
!4129 = !DILocation(line: 46, column: 22, scope: !4124)
!4130 = !DILocation(line: 51, column: 20, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4132, file: !4102, line: 51, column: 15)
!4132 = distinct !DILexicalBlock(scope: !4124, file: !4102, line: 47, column: 9)
!4133 = !DILocation(line: 0, scope: !4131)
!4134 = !DILocation(line: 51, column: 15, scope: !4132)
!4135 = !DILocation(line: 52, column: 19, scope: !4131)
!4136 = !DILocation(line: 66, column: 7, scope: !4101)
!4137 = !DILocation(line: 58, column: 19, scope: !4131)
!4138 = !DILocation(line: 62, column: 5, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4126, file: !4102, line: 61, column: 12)
!4140 = !DILocation(line: 62, column: 11, scope: !4139)
!4141 = !DILocation(line: 64, column: 5, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4139, file: !4102, line: 63, column: 12)
!4143 = !DILocation(line: 64, column: 11, scope: !4142)
!4144 = !DILocation(line: 69, column: 14, scope: !4121)
!4145 = !DILocation(line: 69, column: 56, scope: !4121)
!4146 = !DILocation(line: 70, column: 29, scope: !4121)
!4147 = !DILocation(line: 69, column: 7, scope: !4121)
!4148 = !DILocation(line: 73, column: 10, scope: !4101)
!4149 = !DILocation(line: 71, column: 5, scope: !4121)
!4150 = !DILocation(line: 74, column: 1, scope: !4101)
!4151 = !DILocation(line: 73, column: 3, scope: !4101)
!4152 = distinct !DISubprogram(name: "xdectoumax", scope: !4102, file: !4102, line: 82, type: !4153, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !4155)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!1252, !36, !1252, !1252, !36, !36, !38}
!4155 = !{!4156, !4157, !4158, !4159, !4160, !4161}
!4156 = !DILocalVariable(name: "n_str", arg: 1, scope: !4152, file: !4102, line: 82, type: !36)
!4157 = !DILocalVariable(name: "min", arg: 2, scope: !4152, file: !4102, line: 82, type: !1252)
!4158 = !DILocalVariable(name: "max", arg: 3, scope: !4152, file: !4102, line: 82, type: !1252)
!4159 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4152, file: !4102, line: 83, type: !36)
!4160 = !DILocalVariable(name: "err", arg: 5, scope: !4152, file: !4102, line: 83, type: !36)
!4161 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4152, file: !4102, line: 83, type: !38)
!4162 = !DILocation(line: 0, scope: !4152)
!4163 = !DILocation(line: 85, column: 10, scope: !4152)
!4164 = !DILocation(line: 85, column: 3, scope: !4152)
!4165 = distinct !DISubprogram(name: "xstrtoumax", scope: !4166, file: !4166, line: 76, type: !4167, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !4170)
!4166 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!4114, !36, !559, !38, !4169, !36}
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!4170 = !{!4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4183, !4184, !4187, !4188}
!4171 = !DILocalVariable(name: "s", arg: 1, scope: !4165, file: !4166, line: 76, type: !36)
!4172 = !DILocalVariable(name: "ptr", arg: 2, scope: !4165, file: !4166, line: 76, type: !559)
!4173 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4165, file: !4166, line: 76, type: !38)
!4174 = !DILocalVariable(name: "val", arg: 4, scope: !4165, file: !4166, line: 77, type: !4169)
!4175 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4165, file: !4166, line: 77, type: !36)
!4176 = !DILocalVariable(name: "t_ptr", scope: !4165, file: !4166, line: 79, type: !34)
!4177 = !DILocalVariable(name: "p", scope: !4165, file: !4166, line: 80, type: !559)
!4178 = !DILocalVariable(name: "tmp", scope: !4165, file: !4166, line: 81, type: !1252)
!4179 = !DILocalVariable(name: "err", scope: !4165, file: !4166, line: 82, type: !4114)
!4180 = !DILocalVariable(name: "q", scope: !4181, file: !4166, line: 92, type: !36)
!4181 = distinct !DILexicalBlock(scope: !4182, file: !4166, line: 91, column: 5)
!4182 = distinct !DILexicalBlock(scope: !4165, file: !4166, line: 90, column: 7)
!4183 = !DILocalVariable(name: "ch", scope: !4181, file: !4166, line: 93, type: !192)
!4184 = !DILocalVariable(name: "base", scope: !4185, file: !4166, line: 129, type: !38)
!4185 = distinct !DILexicalBlock(scope: !4186, file: !4166, line: 128, column: 5)
!4186 = distinct !DILexicalBlock(scope: !4165, file: !4166, line: 127, column: 7)
!4187 = !DILocalVariable(name: "suffixes", scope: !4185, file: !4166, line: 130, type: !38)
!4188 = !DILocalVariable(name: "overflow", scope: !4185, file: !4166, line: 131, type: !4114)
!4189 = !DILocation(line: 0, scope: !4165)
!4190 = !DILocation(line: 79, column: 3, scope: !4165)
!4191 = !DILocation(line: 84, column: 3, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4193, file: !4166, line: 84, column: 3)
!4193 = distinct !DILexicalBlock(scope: !4165, file: !4166, line: 84, column: 3)
!4194 = !DILocation(line: 86, column: 8, scope: !4165)
!4195 = !DILocation(line: 88, column: 3, scope: !4165)
!4196 = !DILocation(line: 88, column: 9, scope: !4165)
!4197 = !DILocation(line: 0, scope: !4181)
!4198 = !DILocation(line: 94, column: 7, scope: !4181)
!4199 = !DILocation(line: 94, column: 14, scope: !4181)
!4200 = !DILocation(line: 95, column: 15, scope: !4181)
!4201 = distinct !{!4201, !4198, !4202}
!4202 = !DILocation(line: 95, column: 17, scope: !4181)
!4203 = !DILocation(line: 96, column: 14, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4181, file: !4166, line: 96, column: 11)
!4205 = !DILocalVariable(name: "nptr", arg: 1, scope: !4206, file: !4207, line: 336, type: !1615)
!4206 = distinct !DISubprogram(name: "strtoumax", scope: !4207, file: !4207, line: 336, type: !4208, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !4211)
!4207 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!1252, !1615, !4210, !38}
!4210 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !559)
!4211 = !{!4205, !4212, !4213}
!4212 = !DILocalVariable(name: "endptr", arg: 2, scope: !4206, file: !4207, line: 336, type: !4210)
!4213 = !DILocalVariable(name: "base", arg: 3, scope: !4206, file: !4207, line: 336, type: !38)
!4214 = !DILocation(line: 0, scope: !4206, inlinedAt: !4215)
!4215 = distinct !DILocation(line: 100, column: 9, scope: !4165)
!4216 = !DILocation(line: 339, column: 10, scope: !4206, inlinedAt: !4215)
!4217 = !DILocation(line: 102, column: 7, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4165, file: !4166, line: 102, column: 7)
!4219 = !DILocation(line: 102, column: 10, scope: !4218)
!4220 = !DILocation(line: 102, column: 7, scope: !4165)
!4221 = !DILocation(line: 106, column: 11, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4223, file: !4166, line: 106, column: 11)
!4223 = distinct !DILexicalBlock(scope: !4218, file: !4166, line: 103, column: 5)
!4224 = !DILocation(line: 106, column: 26, scope: !4222)
!4225 = !DILocation(line: 106, column: 29, scope: !4222)
!4226 = !DILocation(line: 106, column: 33, scope: !4222)
!4227 = !DILocation(line: 106, column: 36, scope: !4222)
!4228 = !DILocation(line: 106, column: 11, scope: !4223)
!4229 = !DILocation(line: 111, column: 12, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4218, file: !4166, line: 111, column: 12)
!4231 = !DILocation(line: 111, column: 12, scope: !4218)
!4232 = !DILocation(line: 116, column: 5, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4230, file: !4166, line: 112, column: 5)
!4234 = !DILocation(line: 121, column: 8, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4165, file: !4166, line: 121, column: 7)
!4236 = !DILocation(line: 121, column: 7, scope: !4165)
!4237 = !DILocation(line: 123, column: 12, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4235, file: !4166, line: 122, column: 5)
!4239 = !DILocation(line: 124, column: 7, scope: !4238)
!4240 = !DILocation(line: 127, column: 7, scope: !4186)
!4241 = !DILocation(line: 127, column: 11, scope: !4186)
!4242 = !DILocation(line: 127, column: 7, scope: !4165)
!4243 = !DILocation(line: 0, scope: !4185)
!4244 = !DILocation(line: 133, column: 12, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4185, file: !4166, line: 133, column: 11)
!4246 = !DILocation(line: 133, column: 11, scope: !4185)
!4247 = !DILocation(line: 135, column: 16, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4245, file: !4166, line: 134, column: 9)
!4249 = !DILocation(line: 136, column: 22, scope: !4248)
!4250 = !DILocation(line: 136, column: 11, scope: !4248)
!4251 = !DILocation(line: 139, column: 7, scope: !4185)
!4252 = !DILocation(line: 151, column: 15, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !4166, line: 151, column: 15)
!4254 = distinct !DILexicalBlock(scope: !4185, file: !4166, line: 140, column: 9)
!4255 = !DILocation(line: 151, column: 15, scope: !4254)
!4256 = !DILocation(line: 152, column: 21, scope: !4253)
!4257 = !DILocation(line: 152, column: 13, scope: !4253)
!4258 = !DILocation(line: 155, column: 21, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4260, file: !4166, line: 155, column: 21)
!4260 = distinct !DILexicalBlock(scope: !4253, file: !4166, line: 153, column: 15)
!4261 = !DILocation(line: 155, column: 29, scope: !4259)
!4262 = !DILocation(line: 155, column: 21, scope: !4260)
!4263 = !DILocation(line: 163, column: 17, scope: !4260)
!4264 = !DILocation(line: 167, column: 7, scope: !4185)
!4265 = !DILocalVariable(name: "err", scope: !4266, file: !4166, line: 67, type: !4114)
!4266 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4166, file: !4166, line: 65, type: !4267, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !4269)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!4114, !4169, !38, !38}
!4269 = !{!4270, !4271, !4272, !4265}
!4270 = !DILocalVariable(name: "x", arg: 1, scope: !4266, file: !4166, line: 65, type: !4169)
!4271 = !DILocalVariable(name: "base", arg: 2, scope: !4266, file: !4166, line: 65, type: !38)
!4272 = !DILocalVariable(name: "power", arg: 3, scope: !4266, file: !4166, line: 65, type: !38)
!4273 = !DILocation(line: 0, scope: !4266, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 221, column: 22, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4185, file: !4166, line: 168, column: 9)
!4276 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4277, file: !4166, line: 48, type: !38)
!4277 = distinct !DISubprogram(name: "bkm_scale", scope: !4166, file: !4166, line: 48, type: !4278, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !4280)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!4114, !4169, !38}
!4280 = !{!4281, !4276}
!4281 = !DILocalVariable(name: "x", arg: 1, scope: !4277, file: !4166, line: 48, type: !4169)
!4282 = !DILocation(line: 0, scope: !4277, inlinedAt: !4283)
!4283 = distinct !DILocation(line: 69, column: 12, scope: !4266, inlinedAt: !4274)
!4284 = !DILocation(line: 55, column: 39, scope: !4285, inlinedAt: !4283)
!4285 = distinct !DILexicalBlock(scope: !4277, file: !4166, line: 55, column: 7)
!4286 = !DILocation(line: 55, column: 7, scope: !4277, inlinedAt: !4283)
!4287 = !DILocation(line: 69, column: 9, scope: !4266, inlinedAt: !4274)
!4288 = !DILocation(line: 229, column: 11, scope: !4185)
!4289 = !DILocation(line: 0, scope: !4266, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 217, column: 22, scope: !4275)
!4291 = !DILocation(line: 0, scope: !4277, inlinedAt: !4292)
!4292 = distinct !DILocation(line: 69, column: 12, scope: !4266, inlinedAt: !4290)
!4293 = !DILocation(line: 55, column: 39, scope: !4285, inlinedAt: !4292)
!4294 = !DILocation(line: 55, column: 7, scope: !4277, inlinedAt: !4292)
!4295 = !DILocation(line: 69, column: 9, scope: !4266, inlinedAt: !4290)
!4296 = !DILocation(line: 0, scope: !4266, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 204, column: 22, scope: !4275)
!4298 = !DILocation(line: 0, scope: !4277, inlinedAt: !4299)
!4299 = distinct !DILocation(line: 69, column: 12, scope: !4266, inlinedAt: !4297)
!4300 = !DILocation(line: 55, column: 39, scope: !4285, inlinedAt: !4299)
!4301 = !DILocation(line: 55, column: 7, scope: !4277, inlinedAt: !4299)
!4302 = !DILocation(line: 69, column: 9, scope: !4266, inlinedAt: !4297)
!4303 = !DILocation(line: 0, scope: !4266, inlinedAt: !4304)
!4304 = distinct !DILocation(line: 185, column: 22, scope: !4275)
!4305 = !DILocation(line: 0, scope: !4277, inlinedAt: !4306)
!4306 = distinct !DILocation(line: 69, column: 12, scope: !4266, inlinedAt: !4304)
!4307 = !DILocation(line: 55, column: 39, scope: !4285, inlinedAt: !4306)
!4308 = !DILocation(line: 55, column: 7, scope: !4277, inlinedAt: !4306)
!4309 = !DILocation(line: 69, column: 9, scope: !4266, inlinedAt: !4304)
!4310 = !DILocation(line: 0, scope: !4277, inlinedAt: !4311)
!4311 = distinct !DILocation(line: 170, column: 22, scope: !4275)
!4312 = !DILocation(line: 55, column: 39, scope: !4285, inlinedAt: !4311)
!4313 = !DILocation(line: 55, column: 7, scope: !4277, inlinedAt: !4311)
!4314 = !DILocation(line: 171, column: 11, scope: !4275)
!4315 = !DILocation(line: 0, scope: !4277, inlinedAt: !4316)
!4316 = distinct !DILocation(line: 177, column: 22, scope: !4275)
!4317 = !DILocation(line: 55, column: 39, scope: !4285, inlinedAt: !4316)
!4318 = !DILocation(line: 55, column: 7, scope: !4277, inlinedAt: !4316)
!4319 = !DILocation(line: 178, column: 11, scope: !4275)
!4320 = !DILocation(line: 0, scope: !4266, inlinedAt: !4321)
!4321 = distinct !DILocation(line: 190, column: 22, scope: !4275)
!4322 = !DILocation(line: 0, scope: !4277, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 69, column: 12, scope: !4266, inlinedAt: !4321)
!4324 = !DILocation(line: 55, column: 39, scope: !4285, inlinedAt: !4323)
!4325 = !DILocation(line: 55, column: 7, scope: !4277, inlinedAt: !4323)
!4326 = !DILocation(line: 69, column: 9, scope: !4266, inlinedAt: !4321)
!4327 = !DILocation(line: 0, scope: !4266, inlinedAt: !4328)
!4328 = distinct !DILocation(line: 195, column: 22, scope: !4275)
!4329 = !DILocation(line: 0, scope: !4277, inlinedAt: !4330)
!4330 = distinct !DILocation(line: 69, column: 12, scope: !4266, inlinedAt: !4328)
!4331 = !DILocation(line: 55, column: 39, scope: !4285, inlinedAt: !4330)
!4332 = !DILocation(line: 55, column: 7, scope: !4277, inlinedAt: !4330)
!4333 = !DILocation(line: 0, scope: !4266, inlinedAt: !4334)
!4334 = distinct !DILocation(line: 200, column: 22, scope: !4275)
!4335 = !DILocation(line: 0, scope: !4277, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 69, column: 12, scope: !4266, inlinedAt: !4334)
!4337 = !DILocation(line: 55, column: 39, scope: !4285, inlinedAt: !4336)
!4338 = !DILocation(line: 55, column: 7, scope: !4277, inlinedAt: !4336)
!4339 = !DILocation(line: 69, column: 9, scope: !4266, inlinedAt: !4334)
!4340 = !DILocation(line: 0, scope: !4266, inlinedAt: !4341)
!4341 = distinct !DILocation(line: 209, column: 22, scope: !4275)
!4342 = !DILocation(line: 0, scope: !4277, inlinedAt: !4343)
!4343 = distinct !DILocation(line: 69, column: 12, scope: !4266, inlinedAt: !4341)
!4344 = !DILocation(line: 55, column: 39, scope: !4285, inlinedAt: !4343)
!4345 = !DILocation(line: 55, column: 7, scope: !4277, inlinedAt: !4343)
!4346 = !DILocation(line: 69, column: 9, scope: !4266, inlinedAt: !4341)
!4347 = !DILocation(line: 0, scope: !4277, inlinedAt: !4348)
!4348 = distinct !DILocation(line: 213, column: 22, scope: !4275)
!4349 = !DILocation(line: 55, column: 39, scope: !4285, inlinedAt: !4348)
!4350 = !DILocation(line: 55, column: 7, scope: !4277, inlinedAt: !4348)
!4351 = !DILocation(line: 214, column: 11, scope: !4275)
!4352 = !DILocation(line: 225, column: 16, scope: !4275)
!4353 = !DILocation(line: 226, column: 22, scope: !4275)
!4354 = !DILocation(line: 226, column: 11, scope: !4275)
!4355 = !DILocation(line: 0, scope: !4275)
!4356 = !DILocation(line: 230, column: 10, scope: !4185)
!4357 = !DILocation(line: 231, column: 11, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4185, file: !4166, line: 231, column: 11)
!4359 = !DILocation(line: 232, column: 13, scope: !4358)
!4360 = !DILocation(line: 231, column: 11, scope: !4185)
!4361 = !DILocation(line: 107, column: 13, scope: !4222)
!4362 = !DILocation(line: 82, column: 16, scope: !4165)
!4363 = !DILocation(line: 235, column: 8, scope: !4165)
!4364 = !DILocation(line: 236, column: 3, scope: !4165)
!4365 = !DILocation(line: 237, column: 1, scope: !4165)
!4366 = distinct !DISubprogram(name: "rpl_calloc", scope: !565, file: !565, line: 42, type: !3854, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !4367)
!4367 = !{!4368, !4369, !4370, !4371}
!4368 = !DILocalVariable(name: "n", arg: 1, scope: !4366, file: !565, line: 42, type: !93)
!4369 = !DILocalVariable(name: "s", arg: 2, scope: !4366, file: !565, line: 42, type: !93)
!4370 = !DILocalVariable(name: "result", scope: !4366, file: !565, line: 44, type: !91)
!4371 = !DILocalVariable(name: "bytes", scope: !4372, file: !565, line: 56, type: !93)
!4372 = distinct !DILexicalBlock(scope: !4373, file: !565, line: 53, column: 5)
!4373 = distinct !DILexicalBlock(scope: !4366, file: !565, line: 47, column: 7)
!4374 = !DILocation(line: 0, scope: !4366)
!4375 = !DILocation(line: 47, column: 9, scope: !4373)
!4376 = !DILocation(line: 47, column: 19, scope: !4373)
!4377 = !DILocation(line: 47, column: 14, scope: !4373)
!4378 = !DILocation(line: 0, scope: !4372)
!4379 = !DILocation(line: 57, column: 21, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4372, file: !565, line: 57, column: 11)
!4381 = !DILocation(line: 57, column: 11, scope: !4372)
!4382 = !DILocation(line: 59, column: 11, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4380, file: !565, line: 58, column: 9)
!4384 = !DILocation(line: 59, column: 17, scope: !4383)
!4385 = !DILocation(line: 65, column: 12, scope: !4366)
!4386 = !DILocation(line: 72, column: 3, scope: !4366)
!4387 = !DILocation(line: 73, column: 1, scope: !4366)
!4388 = distinct !DISubprogram(name: "rpl_fclose", scope: !568, file: !568, line: 58, type: !4389, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !4393)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!38, !4391}
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1247, line: 7, baseType: !574)
!4393 = !{!4394, !4395, !4396, !4397}
!4394 = !DILocalVariable(name: "fp", arg: 1, scope: !4388, file: !568, line: 58, type: !4391)
!4395 = !DILocalVariable(name: "saved_errno", scope: !4388, file: !568, line: 60, type: !38)
!4396 = !DILocalVariable(name: "fd", scope: !4388, file: !568, line: 61, type: !38)
!4397 = !DILocalVariable(name: "result", scope: !4388, file: !568, line: 62, type: !38)
!4398 = !DILocation(line: 0, scope: !4388)
!4399 = !DILocation(line: 65, column: 8, scope: !4388)
!4400 = !DILocation(line: 66, column: 10, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4388, file: !568, line: 66, column: 7)
!4402 = !DILocation(line: 66, column: 7, scope: !4388)
!4403 = !DILocation(line: 67, column: 12, scope: !4401)
!4404 = !DILocation(line: 67, column: 5, scope: !4401)
!4405 = !DILocation(line: 72, column: 9, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4388, file: !568, line: 72, column: 7)
!4407 = !DILocation(line: 72, column: 23, scope: !4406)
!4408 = !DILocation(line: 72, column: 33, scope: !4406)
!4409 = !DILocation(line: 72, column: 26, scope: !4406)
!4410 = !DILocation(line: 72, column: 59, scope: !4406)
!4411 = !DILocation(line: 73, column: 7, scope: !4406)
!4412 = !DILocation(line: 73, column: 10, scope: !4406)
!4413 = !DILocation(line: 72, column: 7, scope: !4388)
!4414 = !DILocation(line: 100, column: 12, scope: !4388)
!4415 = !DILocation(line: 105, column: 7, scope: !4388)
!4416 = !DILocation(line: 74, column: 19, scope: !4406)
!4417 = !DILocation(line: 105, column: 19, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4388, file: !568, line: 105, column: 7)
!4419 = !DILocation(line: 107, column: 13, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4418, file: !568, line: 106, column: 5)
!4421 = !DILocation(line: 109, column: 5, scope: !4420)
!4422 = !DILocation(line: 112, column: 1, scope: !4388)
!4423 = distinct !DISubprogram(name: "rpl_fflush", scope: !612, file: !612, line: 129, type: !4424, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !4428)
!4424 = !DISubroutineType(types: !4425)
!4425 = !{!38, !4426}
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1247, line: 7, baseType: !618)
!4428 = !{!4429}
!4429 = !DILocalVariable(name: "stream", arg: 1, scope: !4423, file: !612, line: 129, type: !4426)
!4430 = !DILocation(line: 0, scope: !4423)
!4431 = !DILocation(line: 150, column: 14, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4423, file: !612, line: 150, column: 7)
!4433 = !DILocation(line: 150, column: 22, scope: !4432)
!4434 = !DILocation(line: 150, column: 27, scope: !4432)
!4435 = !DILocation(line: 150, column: 7, scope: !4423)
!4436 = !DILocation(line: 151, column: 12, scope: !4432)
!4437 = !DILocation(line: 151, column: 5, scope: !4432)
!4438 = !DILocalVariable(name: "fp", arg: 1, scope: !4439, file: !612, line: 41, type: !4426)
!4439 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !612, file: !612, line: 41, type: !4440, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !611, retainedNodes: !4442)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{null, !4426}
!4442 = !{!4438}
!4443 = !DILocation(line: 0, scope: !4439, inlinedAt: !4444)
!4444 = distinct !DILocation(line: 156, column: 3, scope: !4423)
!4445 = !DILocation(line: 43, column: 11, scope: !4446, inlinedAt: !4444)
!4446 = distinct !DILexicalBlock(scope: !4439, file: !612, line: 43, column: 7)
!4447 = !DILocation(line: 43, column: 18, scope: !4446, inlinedAt: !4444)
!4448 = !DILocation(line: 43, column: 7, scope: !4439, inlinedAt: !4444)
!4449 = !DILocation(line: 45, column: 5, scope: !4446, inlinedAt: !4444)
!4450 = !DILocation(line: 158, column: 10, scope: !4423)
!4451 = !DILocation(line: 158, column: 3, scope: !4423)
!4452 = !DILocation(line: 235, column: 1, scope: !4423)
!4453 = distinct !DISubprogram(name: "rpl_fseeko", scope: !653, file: !653, line: 28, type: !4454, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !4458)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!38, !4456, !2185, !38}
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1247, line: 7, baseType: !659)
!4458 = !{!4459, !4460, !4461, !4462}
!4459 = !DILocalVariable(name: "fp", arg: 1, scope: !4453, file: !653, line: 28, type: !4456)
!4460 = !DILocalVariable(name: "offset", arg: 2, scope: !4453, file: !653, line: 28, type: !2185)
!4461 = !DILocalVariable(name: "whence", arg: 3, scope: !4453, file: !653, line: 28, type: !38)
!4462 = !DILocalVariable(name: "pos", scope: !4463, file: !653, line: 117, type: !2185)
!4463 = distinct !DILexicalBlock(scope: !4464, file: !653, line: 113, column: 5)
!4464 = distinct !DILexicalBlock(scope: !4453, file: !653, line: 52, column: 7)
!4465 = !DILocation(line: 0, scope: !4453)
!4466 = !DILocation(line: 52, column: 11, scope: !4464)
!4467 = !{!1406, !1191, i64 16}
!4468 = !DILocation(line: 52, column: 31, scope: !4464)
!4469 = !{!1406, !1191, i64 8}
!4470 = !DILocation(line: 52, column: 24, scope: !4464)
!4471 = !DILocation(line: 53, column: 7, scope: !4464)
!4472 = !DILocation(line: 53, column: 14, scope: !4464)
!4473 = !DILocation(line: 53, column: 35, scope: !4464)
!4474 = !{!1406, !1191, i64 32}
!4475 = !DILocation(line: 53, column: 28, scope: !4464)
!4476 = !DILocation(line: 54, column: 7, scope: !4464)
!4477 = !DILocation(line: 54, column: 14, scope: !4464)
!4478 = !{!1406, !1191, i64 72}
!4479 = !DILocation(line: 54, column: 28, scope: !4464)
!4480 = !DILocation(line: 52, column: 7, scope: !4453)
!4481 = !DILocation(line: 117, column: 26, scope: !4463)
!4482 = !DILocation(line: 117, column: 19, scope: !4463)
!4483 = !DILocation(line: 0, scope: !4463)
!4484 = !DILocation(line: 118, column: 15, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4463, file: !653, line: 118, column: 11)
!4486 = !DILocation(line: 118, column: 11, scope: !4463)
!4487 = !DILocation(line: 129, column: 11, scope: !4463)
!4488 = !DILocation(line: 129, column: 18, scope: !4463)
!4489 = !DILocation(line: 130, column: 11, scope: !4463)
!4490 = !DILocation(line: 130, column: 19, scope: !4463)
!4491 = !{!1406, !1368, i64 144}
!4492 = !DILocation(line: 161, column: 7, scope: !4463)
!4493 = !DILocation(line: 163, column: 10, scope: !4453)
!4494 = !DILocation(line: 163, column: 3, scope: !4453)
!4495 = !DILocation(line: 164, column: 1, scope: !4453)
!4496 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !694, file: !694, line: 86, type: !4497, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !693, retainedNodes: !4503)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!93, !4499, !36, !93, !4500}
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2419, line: 6, baseType: !4502)
!4502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !368, line: 21, baseType: !700)
!4503 = !{!4504, !4505, !4506, !4507, !4508, !4509, !4510}
!4504 = !DILocalVariable(name: "pwc", arg: 1, scope: !4496, file: !694, line: 86, type: !4499)
!4505 = !DILocalVariable(name: "s", arg: 2, scope: !4496, file: !694, line: 86, type: !36)
!4506 = !DILocalVariable(name: "n", arg: 3, scope: !4496, file: !694, line: 86, type: !93)
!4507 = !DILocalVariable(name: "ps", arg: 4, scope: !4496, file: !694, line: 86, type: !4500)
!4508 = !DILocalVariable(name: "ret", scope: !4496, file: !694, line: 88, type: !93)
!4509 = !DILocalVariable(name: "wc", scope: !4496, file: !694, line: 89, type: !2423)
!4510 = !DILocalVariable(name: "uc", scope: !4511, file: !694, line: 156, type: !192)
!4511 = distinct !DILexicalBlock(scope: !4512, file: !694, line: 155, column: 5)
!4512 = distinct !DILexicalBlock(scope: !4496, file: !694, line: 154, column: 7)
!4513 = !DILocation(line: 0, scope: !4496)
!4514 = !DILocation(line: 89, column: 3, scope: !4496)
!4515 = !DILocation(line: 105, column: 9, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4496, file: !694, line: 105, column: 7)
!4517 = !DILocation(line: 105, column: 7, scope: !4496)
!4518 = !DILocation(line: 145, column: 9, scope: !4496)
!4519 = !DILocation(line: 154, column: 19, scope: !4512)
!4520 = !DILocation(line: 154, column: 31, scope: !4512)
!4521 = !DILocation(line: 154, column: 26, scope: !4512)
!4522 = !DILocation(line: 154, column: 41, scope: !4512)
!4523 = !DILocation(line: 154, column: 7, scope: !4496)
!4524 = !DILocation(line: 156, column: 26, scope: !4511)
!4525 = !DILocation(line: 0, scope: !4511)
!4526 = !DILocation(line: 157, column: 14, scope: !4511)
!4527 = !DILocation(line: 157, column: 12, scope: !4511)
!4528 = !DILocation(line: 163, column: 1, scope: !4496)
!4529 = distinct !DISubprogram(name: "close_stream", scope: !713, file: !713, line: 56, type: !4530, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !4534)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!38, !4532}
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1247, line: 7, baseType: !719)
!4534 = !{!4535, !4536, !4538, !4539}
!4535 = !DILocalVariable(name: "stream", arg: 1, scope: !4529, file: !713, line: 56, type: !4532)
!4536 = !DILocalVariable(name: "some_pending", scope: !4529, file: !713, line: 58, type: !4537)
!4537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!4538 = !DILocalVariable(name: "prev_fail", scope: !4529, file: !713, line: 59, type: !4537)
!4539 = !DILocalVariable(name: "fclose_fail", scope: !4529, file: !713, line: 60, type: !4537)
!4540 = !DILocation(line: 0, scope: !4529)
!4541 = !DILocation(line: 58, column: 30, scope: !4529)
!4542 = !DILocalVariable(name: "__stream", arg: 1, scope: !4543, file: !1353, line: 135, type: !4532)
!4543 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1353, file: !1353, line: 135, type: !4530, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !4544)
!4544 = !{!4542}
!4545 = !DILocation(line: 0, scope: !4543, inlinedAt: !4546)
!4546 = distinct !DILocation(line: 59, column: 27, scope: !4529)
!4547 = !DILocation(line: 137, column: 10, scope: !4543, inlinedAt: !4546)
!4548 = !DILocation(line: 59, column: 43, scope: !4529)
!4549 = !DILocation(line: 60, column: 29, scope: !4529)
!4550 = !DILocation(line: 60, column: 45, scope: !4529)
!4551 = !DILocation(line: 70, column: 17, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4529, file: !713, line: 70, column: 7)
!4553 = !DILocation(line: 58, column: 50, scope: !4529)
!4554 = !DILocation(line: 70, column: 33, scope: !4552)
!4555 = !DILocation(line: 70, column: 53, scope: !4552)
!4556 = !DILocation(line: 70, column: 59, scope: !4552)
!4557 = !DILocation(line: 70, column: 7, scope: !4529)
!4558 = !DILocation(line: 72, column: 11, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4552, file: !713, line: 71, column: 5)
!4560 = !DILocation(line: 73, column: 9, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4559, file: !713, line: 72, column: 11)
!4562 = !DILocation(line: 73, column: 15, scope: !4561)
!4563 = !DILocation(line: 78, column: 1, scope: !4529)
!4564 = distinct !DISubprogram(name: "hard_locale", scope: !751, file: !751, line: 27, type: !710, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !750, retainedNodes: !4565)
!4565 = !{!4566, !4567}
!4566 = !DILocalVariable(name: "category", arg: 1, scope: !4564, file: !751, line: 27, type: !38)
!4567 = !DILocalVariable(name: "locale", scope: !4564, file: !751, line: 29, type: !4568)
!4568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2056, elements: !4569)
!4569 = !{!4570}
!4570 = !DISubrange(count: 257)
!4571 = !DILocation(line: 0, scope: !4564)
!4572 = !DILocation(line: 29, column: 3, scope: !4564)
!4573 = !DILocation(line: 29, column: 8, scope: !4564)
!4574 = !DILocation(line: 31, column: 7, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4564, file: !751, line: 31, column: 7)
!4576 = !DILocation(line: 31, column: 7, scope: !4564)
!4577 = !DILocation(line: 34, column: 12, scope: !4564)
!4578 = !DILocation(line: 34, column: 38, scope: !4564)
!4579 = !DILocation(line: 34, column: 41, scope: !4564)
!4580 = !DILocation(line: 34, column: 66, scope: !4564)
!4581 = !DILocation(line: 35, column: 1, scope: !4564)
!4582 = distinct !DISubprogram(name: "locale_charset", scope: !758, file: !758, line: 831, type: !388, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !4583)
!4583 = !{!4584}
!4584 = !DILocalVariable(name: "codeset", scope: !4582, file: !758, line: 833, type: !36)
!4585 = !DILocation(line: 847, column: 13, scope: !4582)
!4586 = !DILocation(line: 0, scope: !4582)
!4587 = !DILocation(line: 911, column: 15, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4582, file: !758, line: 911, column: 7)
!4589 = !DILocation(line: 911, column: 7, scope: !4582)
!4590 = !DILocation(line: 1070, column: 13, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4592, file: !758, line: 1070, column: 13)
!4592 = distinct !DILexicalBlock(scope: !4593, file: !758, line: 1060, column: 7)
!4593 = distinct !DILexicalBlock(scope: !4582, file: !758, line: 1019, column: 3)
!4594 = !DILocation(line: 1070, column: 24, scope: !4591)
!4595 = !DILocation(line: 1070, column: 13, scope: !4592)
!4596 = !DILocation(line: 1158, column: 3, scope: !4582)
!4597 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1151, file: !1151, line: 269, type: !4598, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1150, retainedNodes: !4600)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!38, !38, !34, !93}
!4600 = !{!4601, !4602, !4603}
!4601 = !DILocalVariable(name: "category", arg: 1, scope: !4597, file: !1151, line: 269, type: !38)
!4602 = !DILocalVariable(name: "buf", arg: 2, scope: !4597, file: !1151, line: 269, type: !34)
!4603 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4597, file: !1151, line: 269, type: !93)
!4604 = !DILocation(line: 0, scope: !4597)
!4605 = !DILocalVariable(name: "category", arg: 1, scope: !4606, file: !1151, line: 91, type: !38)
!4606 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1151, file: !1151, line: 91, type: !4598, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1150, retainedNodes: !4607)
!4607 = !{!4605, !4608, !4609, !4610, !4611}
!4608 = !DILocalVariable(name: "buf", arg: 2, scope: !4606, file: !1151, line: 91, type: !34)
!4609 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4606, file: !1151, line: 91, type: !93)
!4610 = !DILocalVariable(name: "result", scope: !4606, file: !1151, line: 140, type: !36)
!4611 = !DILocalVariable(name: "length", scope: !4612, file: !1151, line: 154, type: !93)
!4612 = distinct !DILexicalBlock(scope: !4613, file: !1151, line: 153, column: 5)
!4613 = distinct !DILexicalBlock(scope: !4606, file: !1151, line: 142, column: 7)
!4614 = !DILocation(line: 0, scope: !4606, inlinedAt: !4615)
!4615 = distinct !DILocation(line: 274, column: 10, scope: !4597)
!4616 = !DILocalVariable(name: "category", arg: 1, scope: !4617, file: !1151, line: 60, type: !38)
!4617 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1151, file: !1151, line: 60, type: !4618, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1150, retainedNodes: !4620)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!36, !38}
!4620 = !{!4616, !4621}
!4621 = !DILocalVariable(name: "result", scope: !4617, file: !1151, line: 62, type: !36)
!4622 = !DILocation(line: 0, scope: !4617, inlinedAt: !4623)
!4623 = distinct !DILocation(line: 140, column: 24, scope: !4606, inlinedAt: !4615)
!4624 = !DILocation(line: 62, column: 24, scope: !4617, inlinedAt: !4623)
!4625 = !DILocation(line: 142, column: 14, scope: !4613, inlinedAt: !4615)
!4626 = !DILocation(line: 142, column: 7, scope: !4606, inlinedAt: !4615)
!4627 = !DILocation(line: 145, column: 19, scope: !4628, inlinedAt: !4615)
!4628 = distinct !DILexicalBlock(scope: !4629, file: !1151, line: 145, column: 11)
!4629 = distinct !DILexicalBlock(scope: !4613, file: !1151, line: 143, column: 5)
!4630 = !DILocation(line: 145, column: 11, scope: !4629, inlinedAt: !4615)
!4631 = !DILocation(line: 149, column: 16, scope: !4628, inlinedAt: !4615)
!4632 = !DILocation(line: 149, column: 9, scope: !4628, inlinedAt: !4615)
!4633 = !DILocation(line: 154, column: 23, scope: !4612, inlinedAt: !4615)
!4634 = !DILocation(line: 0, scope: !4612, inlinedAt: !4615)
!4635 = !DILocation(line: 155, column: 18, scope: !4636, inlinedAt: !4615)
!4636 = distinct !DILexicalBlock(scope: !4612, file: !1151, line: 155, column: 11)
!4637 = !DILocation(line: 155, column: 11, scope: !4612, inlinedAt: !4615)
!4638 = !DILocation(line: 157, column: 39, scope: !4639, inlinedAt: !4615)
!4639 = distinct !DILexicalBlock(scope: !4636, file: !1151, line: 156, column: 9)
!4640 = !DILocalVariable(name: "__dest", arg: 1, scope: !4641, file: !1390, line: 31, type: !4068)
!4641 = distinct !DISubprogram(name: "memcpy", scope: !1390, file: !1390, line: 31, type: !4066, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1150, retainedNodes: !4642)
!4642 = !{!4640, !4643, !4644}
!4643 = !DILocalVariable(name: "__src", arg: 2, scope: !4641, file: !1390, line: 31, type: !4069)
!4644 = !DILocalVariable(name: "__len", arg: 3, scope: !4641, file: !1390, line: 31, type: !93)
!4645 = !DILocation(line: 0, scope: !4641, inlinedAt: !4646)
!4646 = distinct !DILocation(line: 157, column: 11, scope: !4639, inlinedAt: !4615)
!4647 = !DILocation(line: 34, column: 10, scope: !4641, inlinedAt: !4646)
!4648 = !DILocation(line: 158, column: 11, scope: !4639, inlinedAt: !4615)
!4649 = !DILocation(line: 162, column: 23, scope: !4650, inlinedAt: !4615)
!4650 = distinct !DILexicalBlock(scope: !4651, file: !1151, line: 162, column: 15)
!4651 = distinct !DILexicalBlock(scope: !4636, file: !1151, line: 161, column: 9)
!4652 = !DILocation(line: 162, column: 15, scope: !4651, inlinedAt: !4615)
!4653 = !DILocation(line: 167, column: 44, scope: !4654, inlinedAt: !4615)
!4654 = distinct !DILexicalBlock(scope: !4650, file: !1151, line: 163, column: 13)
!4655 = !DILocation(line: 0, scope: !4641, inlinedAt: !4656)
!4656 = distinct !DILocation(line: 167, column: 15, scope: !4654, inlinedAt: !4615)
!4657 = !DILocation(line: 34, column: 10, scope: !4641, inlinedAt: !4656)
!4658 = !DILocation(line: 168, column: 15, scope: !4654, inlinedAt: !4615)
!4659 = !DILocation(line: 168, column: 32, scope: !4654, inlinedAt: !4615)
!4660 = !DILocation(line: 169, column: 13, scope: !4654, inlinedAt: !4615)
!4661 = !DILocation(line: 0, scope: !4613, inlinedAt: !4615)
!4662 = !DILocation(line: 274, column: 3, scope: !4597)
!4663 = distinct !DISubprogram(name: "setlocale_null", scope: !1151, file: !1151, line: 301, type: !4618, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1150, retainedNodes: !4664)
!4664 = !{!4665}
!4665 = !DILocalVariable(name: "category", arg: 1, scope: !4663, file: !1151, line: 301, type: !38)
!4666 = !DILocation(line: 0, scope: !4663)
!4667 = !DILocation(line: 0, scope: !4617, inlinedAt: !4668)
!4668 = distinct !DILocation(line: 304, column: 10, scope: !4663)
!4669 = !DILocation(line: 62, column: 24, scope: !4617, inlinedAt: !4668)
!4670 = !DILocation(line: 304, column: 3, scope: !4663)
