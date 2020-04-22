; ModuleID = 'coreutils-8.32/src/paste.bc'
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [119 x i8] c"Write lines consisting of the sequentially corresponding lines from\0Aeach FILE, separated by TABs, to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.20 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [144 x i8] c"  -d, --delimiters=LIST   reuse characters from LIST instead of TABs\0A  -s, --serial            paste one file at a time instead of in parallel\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"  -z, --zero-terminated    line delimiter is NUL, not newline\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"paste\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.21 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.32 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !0
@serial_merge = internal unnamed_addr global i1 false, align 1, !dbg !191
@.str.12 = private unnamed_addr constant [5 x i8] c"d:sz\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !182
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [3 x i8] c"\\0\00", align 1
@line_delim = internal unnamed_addr global i1 false, align 1, !dbg !192
@.str.15 = private unnamed_addr constant [15 x i8] c"David M. Ihnat\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@delims = internal unnamed_addr global i8* null, align 8, !dbg !180
@delim_end = internal unnamed_addr global i8* null, align 8, !dbg !189
@.str.18 = private unnamed_addr constant [52 x i8] c"delimiter list ends with an unescaped backslash: %s\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.41 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"standard input is closed\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"delimiters\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), align 8, !dbg !193
@.str.45 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !198
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !241
@.str.48 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.49 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.50 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !243
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !249
@.str.59 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.60 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.61 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.63, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.65, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.66, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.71, i32 0, i32 0), i8* null], align 16, !dbg !290
@.str.62 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.63 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.64 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.65 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.66 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.67 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.68 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.69 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.70 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.71 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !377
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !383
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !385
@.str.11.72 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.73 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.75 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.76 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.77 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.78 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !392
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !399
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !387
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !401
@.str.83 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.84 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.85 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.86 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.87 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.88 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.89 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.90 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.91 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.92 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.93 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.94 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.95 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.96 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.97 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.98 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.101 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.102 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.103 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.104 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.105 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.106 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.107 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !407
@.str.1.120 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.136 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.139 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.140 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1119 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1124, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i32 %0, metadata !1123, metadata !DIExpression()), !dbg !1145
  %3 = icmp eq i32 %0, 0, !dbg !1146
  br i1 %3, label %9, label %4, !dbg !1147

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1148, !tbaa !1150
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #18, !dbg !1148
  %7 = load i8*, i8** @program_name, align 8, !dbg !1148, !tbaa !1150
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #18, !dbg !1148
  br label %70, !dbg !1148

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #18, !dbg !1154
  %11 = load i8*, i8** @program_name, align 8, !dbg !1154, !tbaa !1150
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #18, !dbg !1154
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.2, i64 0, i64 0), i32 5) #18, !dbg !1155
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1155, !tbaa !1150
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1155
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i32 5) #18, !dbg !1156
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1156, !tbaa !1150
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #18, !dbg !1156
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i64 0, i64 0), i32 5) #18, !dbg !1159
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1159, !tbaa !1150
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20) #18, !dbg !1159
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.3, i64 0, i64 0), i32 5) #18, !dbg !1162
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1162, !tbaa !1150
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1162
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 5) #18, !dbg !1163
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1163, !tbaa !1150
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1163
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #18, !dbg !1164
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1164, !tbaa !1150
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1164
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #18, !dbg !1165
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1165, !tbaa !1150
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !1165
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), metadata !1128, metadata !DIExpression()) #18, !dbg !1166
  %34 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1167
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %34) #18, !dbg !1167
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %34, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #18, !dbg !1141
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), metadata !1129, metadata !DIExpression()) #18, !dbg !1166
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1130, metadata !DIExpression()) #18, !dbg !1166
  %35 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1168
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1130, metadata !DIExpression()) #18, !dbg !1166
  br label %36, !dbg !1169

36:                                               ; preds = %41, %9
  %37 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), %9 ]
  %38 = phi %struct.infomap* [ %42, %41 ], [ %35, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !1130, metadata !DIExpression()) #18, !dbg !1166
  %39 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %37) #21, !dbg !1170
  %40 = icmp eq i32 %39, 0, !dbg !1170
  br i1 %40, label %46, label %41, !dbg !1169

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 1, !dbg !1171
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !1130, metadata !DIExpression()) #18, !dbg !1166
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 0, i32 0, !dbg !1172
  %44 = load i8*, i8** %43, align 8, !dbg !1172, !tbaa !1173
  %45 = icmp eq i8* %44, null, !dbg !1175
  br i1 %45, label %46, label %36, !dbg !1176, !llvm.loop !1177

46:                                               ; preds = %41, %36
  %47 = phi %struct.infomap* [ %42, %41 ], [ %38, %36 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !1130, metadata !DIExpression()) #18, !dbg !1166
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !1130, metadata !DIExpression()) #18, !dbg !1166
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 1, !dbg !1178
  %49 = load i8*, i8** %48, align 8, !dbg !1178, !tbaa !1180
  %50 = icmp eq i8* %49, null, !dbg !1181
  %51 = select i1 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %49, !dbg !1182
  call void @llvm.dbg.value(metadata i8* %51, metadata !1129, metadata !DIExpression()) #18, !dbg !1166
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #18, !dbg !1183
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0)) #18, !dbg !1183
  %54 = tail call i8* @setlocale(i32 5, i8* null) #18, !dbg !1184
  call void @llvm.dbg.value(metadata i8* %54, metadata !1137, metadata !DIExpression()) #18, !dbg !1166
  %55 = icmp eq i8* %54, null, !dbg !1185
  br i1 %55, label %63, label %56, !dbg !1187

56:                                               ; preds = %46
  %57 = tail call i32 @strncmp(i8* nonnull %54, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #21, !dbg !1188
  %58 = icmp eq i32 %57, 0, !dbg !1188
  br i1 %58, label %63, label %59, !dbg !1189

59:                                               ; preds = %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.32, i64 0, i64 0), i32 5) #18, !dbg !1190
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1190, !tbaa !1150
  %62 = tail call i32 @fputs_unlocked(i8* %60, %struct._IO_FILE* %61) #18, !dbg !1190
  br label %63, !dbg !1192

63:                                               ; preds = %46, %56, %59
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i64 0, i64 0), i32 5) #18, !dbg !1193
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !1193
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i32 5) #18, !dbg !1194
  %67 = icmp eq i8* %51, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), !dbg !1194
  %68 = select i1 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !1194
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %66, i8* %51, i8* %68) #18, !dbg !1194
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %34) #18, !dbg !1195
  br label %70

70:                                               ; preds = %63, %4
  tail call void @exit(i32 %0) #22, !dbg !1196
  unreachable, !dbg !1196
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
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1197 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1202, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8** %1, metadata !1203, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), metadata !1205, metadata !DIExpression()), !dbg !1208
  %3 = load i8*, i8** %1, align 8, !dbg !1209, !tbaa !1150
  tail call void @set_program_name(i8* %3) #18, !dbg !1210
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !1211
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !1212
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !1213
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #18, !dbg !1214
  store i1 false, i1* @have_read_stdin, align 1, !dbg !1215
  store i1 false, i1* @serial_merge, align 1, !dbg !1216
  br label %8, !dbg !1217

8:                                                ; preds = %12, %2
  %9 = phi i8* [ %16, %12 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), %2 ]
  br label %10, !dbg !1217

10:                                               ; preds = %19, %8
  call void @llvm.dbg.value(metadata i8* %9, metadata !1205, metadata !DIExpression()), !dbg !1208
  %11 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #18, !dbg !1218
  call void @llvm.dbg.value(metadata i32 %11, metadata !1204, metadata !DIExpression()), !dbg !1208
  switch i32 %11, label %24 [
    i32 -1, label %25
    i32 100, label %12
    i32 115, label %17
    i32 122, label %18
    i32 -130, label %20
    i32 -131, label %21
  ], !dbg !1217

12:                                               ; preds = %10
  %13 = load i8*, i8** @optarg, align 8, !dbg !1219, !tbaa !1150
  %14 = load i8, i8* %13, align 1, !dbg !1219, !tbaa !1222
  %15 = icmp eq i8 %14, 0, !dbg !1223
  %16 = select i1 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %13, !dbg !1219
  call void @llvm.dbg.value(metadata i8* %16, metadata !1205, metadata !DIExpression()), !dbg !1208
  br label %8, !dbg !1224, !llvm.loop !1225

17:                                               ; preds = %10
  store i1 true, i1* @serial_merge, align 1, !dbg !1227
  br label %19, !dbg !1228

18:                                               ; preds = %10
  store i1 true, i1* @line_delim, align 1, !dbg !1229
  br label %19, !dbg !1230

19:                                               ; preds = %18, %17
  br label %10, !dbg !1208, !llvm.loop !1225

20:                                               ; preds = %10
  tail call void @usage(i32 0) #23, !dbg !1231
  unreachable, !dbg !1231

21:                                               ; preds = %10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1232, !tbaa !1150
  %23 = load i8*, i8** @Version, align 8, !dbg !1232, !tbaa !1150
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* null) #18, !dbg !1232
  tail call void @exit(i32 0) #22, !dbg !1232
  unreachable, !dbg !1232

24:                                               ; preds = %10
  tail call void @usage(i32 1) #23, !dbg !1233
  unreachable, !dbg !1233

25:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %9, metadata !1205, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8* %9, metadata !1205, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8* %9, metadata !1205, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8* %9, metadata !1205, metadata !DIExpression()), !dbg !1208
  %26 = load i32, i32* @optind, align 4, !dbg !1234, !tbaa !1235
  %27 = sub nsw i32 %0, %26, !dbg !1237
  call void @llvm.dbg.value(metadata i32 %27, metadata !1206, metadata !DIExpression()), !dbg !1208
  %28 = icmp eq i32 %27, 0, !dbg !1238
  br i1 %28, label %29, label %32, !dbg !1240

29:                                               ; preds = %25
  %30 = sext i32 %26 to i64, !dbg !1241
  %31 = getelementptr inbounds i8*, i8** %1, i64 %30, !dbg !1241
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8** %31, align 8, !dbg !1243, !tbaa !1150
  call void @llvm.dbg.value(metadata i32 1, metadata !1206, metadata !DIExpression()), !dbg !1208
  br label %32, !dbg !1244

32:                                               ; preds = %29, %25
  %33 = phi i32 [ 1, %29 ], [ %27, %25 ], !dbg !1208
  call void @llvm.dbg.value(metadata i32 %33, metadata !1206, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i8* %9, metadata !1245, metadata !DIExpression()) #18, !dbg !1253
  %34 = tail call noalias i8* @xstrdup(i8* %9) #18, !dbg !1256
  call void @llvm.dbg.value(metadata i8* %34, metadata !1250, metadata !DIExpression()) #18, !dbg !1253
  call void @llvm.dbg.value(metadata i8 0, metadata !1251, metadata !DIExpression()) #18, !dbg !1253
  store i8* %34, i8** @delims, align 8, !dbg !1257, !tbaa !1150
  call void @llvm.dbg.value(metadata i8* %34, metadata !1250, metadata !DIExpression()) #18, !dbg !1253
  call void @llvm.dbg.value(metadata i8* %9, metadata !1245, metadata !DIExpression()) #18, !dbg !1253
  %35 = load i8, i8* %9, align 1, !dbg !1258, !tbaa !1222
  %36 = icmp eq i8 %35, 0, !dbg !1259
  br i1 %36, label %66, label %37, !dbg !1259

37:                                               ; preds = %32, %58
  %38 = phi i8 [ %61, %58 ], [ %35, %32 ]
  %39 = phi i8* [ %60, %58 ], [ %34, %32 ]
  %40 = phi i8* [ %59, %58 ], [ %9, %32 ]
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression()) #18, !dbg !1253
  call void @llvm.dbg.value(metadata i8* %40, metadata !1245, metadata !DIExpression()) #18, !dbg !1253
  %41 = icmp eq i8 %38, 92, !dbg !1260
  %42 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !1263
  call void @llvm.dbg.value(metadata i8* %42, metadata !1245, metadata !DIExpression()) #18, !dbg !1253
  br i1 %41, label %44, label %43, !dbg !1264

43:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #18, !dbg !1253
  store i8 %38, i8* %39, align 1, !dbg !1265, !tbaa !1222
  br label %58, !dbg !1266

44:                                               ; preds = %37
  %45 = load i8, i8* %42, align 1, !dbg !1267, !tbaa !1222
  %46 = sext i8 %45 to i32, !dbg !1267
  switch i32 %46, label %54 [
    i32 48, label %55
    i32 98, label %47
    i32 102, label %48
    i32 110, label %49
    i32 114, label %50
    i32 116, label %51
    i32 118, label %52
    i32 92, label %53
    i32 0, label %63
  ], !dbg !1269

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #18, !dbg !1253
  br label %55, !dbg !1270

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #18, !dbg !1253
  br label %55, !dbg !1272

49:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #18, !dbg !1253
  br label %55, !dbg !1273

50:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #18, !dbg !1253
  br label %55, !dbg !1274

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #18, !dbg !1253
  br label %55, !dbg !1275

52:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #18, !dbg !1253
  br label %55, !dbg !1276

53:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #18, !dbg !1253
  br label %55, !dbg !1277

54:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #18, !dbg !1253
  br label %55, !dbg !1278

55:                                               ; preds = %44, %54, %53, %52, %51, %50, %49, %48, %47
  %56 = phi i8 [ %45, %54 ], [ 92, %53 ], [ 11, %52 ], [ 9, %51 ], [ 13, %50 ], [ 10, %49 ], [ 12, %48 ], [ 8, %47 ], [ 0, %44 ]
  store i8 %56, i8* %39, align 1, !dbg !1279, !tbaa !1222
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #18, !dbg !1253
  %57 = getelementptr inbounds i8, i8* %40, i64 2, !dbg !1280
  call void @llvm.dbg.value(metadata i8* %57, metadata !1245, metadata !DIExpression()) #18, !dbg !1253
  br label %58

58:                                               ; preds = %55, %43
  %59 = phi i8* [ %42, %43 ], [ %57, %55 ], !dbg !1263
  %60 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !1263
  call void @llvm.dbg.value(metadata i8* %60, metadata !1250, metadata !DIExpression()) #18, !dbg !1253
  call void @llvm.dbg.value(metadata i8* %59, metadata !1245, metadata !DIExpression()) #18, !dbg !1253
  %61 = load i8, i8* %59, align 1, !dbg !1258, !tbaa !1222
  %62 = icmp eq i8 %61, 0, !dbg !1259
  br i1 %62, label %66, label %37, !dbg !1259, !llvm.loop !1281

63:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression()) #18, !dbg !1253
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression()) #18, !dbg !1253
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression()) #18, !dbg !1253
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression()) #18, !dbg !1253
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression()) #18, !dbg !1253
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression()) #18, !dbg !1253
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression()) #18, !dbg !1253
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression()) #18, !dbg !1253
  call void @llvm.dbg.value(metadata i8 undef, metadata !1251, metadata !DIExpression()) #18, !dbg !1253
  call void @llvm.dbg.label(metadata !1252) #18, !dbg !1283
  store i8* %39, i8** @delim_end, align 8, !dbg !1284, !tbaa !1150
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.18, i64 0, i64 0), i32 5) #18, !dbg !1285
  %65 = tail call i8* @quotearg_n_style_colon(i32 0, i32 6, i8* nonnull %9) #18, !dbg !1285
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %64, i8* %65) #18, !dbg !1285
  unreachable, !dbg !1285

66:                                               ; preds = %58, %32
  %67 = phi i8* [ %34, %32 ], [ %60, %58 ]
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression()) #18, !dbg !1253
  call void @llvm.dbg.value(metadata i8* %39, metadata !1250, metadata !DIExpression()) #18, !dbg !1253
  call void @llvm.dbg.value(metadata i8 undef, metadata !1251, metadata !DIExpression()) #18, !dbg !1253
  call void @llvm.dbg.label(metadata !1252) #18, !dbg !1283
  store i8* %67, i8** @delim_end, align 8, !dbg !1284, !tbaa !1150
  %68 = load i1, i1* @serial_merge, align 1, !dbg !1287
  %69 = select i1 %68, i1 (i64, i8**)* @paste_serial, i1 (i64, i8**)* @paste_parallel, !dbg !1287
  %70 = sext i32 %33 to i64, !dbg !1288
  %71 = load i32, i32* @optind, align 4, !dbg !1289, !tbaa !1235
  %72 = sext i32 %71 to i64, !dbg !1290
  %73 = getelementptr inbounds i8*, i8** %1, i64 %72, !dbg !1290
  %74 = tail call zeroext i1 %69(i64 %70, i8** nonnull %73) #18, !dbg !1291, !callees !1292
  call void @llvm.dbg.value(metadata i1 %74, metadata !1207, metadata !DIExpression()), !dbg !1208
  %75 = load i8*, i8** @delims, align 8, !dbg !1293, !tbaa !1150
  tail call void @free(i8* %75) #18, !dbg !1294
  %76 = load i1, i1* @have_read_stdin, align 1, !dbg !1295
  br i1 %76, label %77, label %84, !dbg !1297

77:                                               ; preds = %66
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1298, !tbaa !1150
  %79 = tail call i32 @rpl_fclose(%struct._IO_FILE* %78) #18, !dbg !1299
  %80 = icmp eq i32 %79, -1, !dbg !1300
  br i1 %80, label %81, label %84, !dbg !1301

81:                                               ; preds = %77
  %82 = tail call i32* @__errno_location() #24, !dbg !1302
  %83 = load i32, i32* %82, align 4, !dbg !1302, !tbaa !1235
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #18, !dbg !1302
  unreachable, !dbg !1302

84:                                               ; preds = %77, %66
  %85 = xor i1 %74, true, !dbg !1303
  %86 = zext i1 %85 to i32, !dbg !1303
  ret i32 %86, !dbg !1304
}

; Function Attrs: nounwind
declare !dbg !109 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !112 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !115 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !122 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare !dbg !144 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @paste_serial(i64 %0, i8** nocapture readonly %1) unnamed_addr #8 !dbg !1305 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1309, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i8** %1, metadata !1310, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i8 1, metadata !1311, metadata !DIExpression()), !dbg !1324
  %3 = icmp eq i64 %0, 0, !dbg !1325
  br i1 %3, label %169, label %4, !dbg !1325

4:                                                ; preds = %2, %164
  %5 = phi i64 [ %166, %164 ], [ %0, %2 ]
  %6 = phi i8** [ %167, %164 ], [ %1, %2 ]
  %7 = phi i8 [ %165, %164 ], [ 1, %2 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !1309, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i8** %6, metadata !1310, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i8 %7, metadata !1311, metadata !DIExpression()), !dbg !1324
  %8 = load i8*, i8** %6, align 8, !dbg !1326, !tbaa !1150
  %9 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %8, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #21, !dbg !1326
  %10 = icmp eq i32 %9, 0, !dbg !1326
  call void @llvm.dbg.value(metadata i1 %10, metadata !1323, metadata !DIExpression()), !dbg !1327
  br i1 %10, label %11, label %13, !dbg !1328

11:                                               ; preds = %4
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1329
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1332, !tbaa !1150
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %12, metadata !1315, metadata !DIExpression()), !dbg !1324
  br label %22, !dbg !1333

13:                                               ; preds = %4
  %14 = tail call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)), !dbg !1334
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1315, metadata !DIExpression()), !dbg !1324
  %15 = icmp eq %struct._IO_FILE* %14, null, !dbg !1336
  br i1 %15, label %16, label %21, !dbg !1338

16:                                               ; preds = %13
  %17 = tail call i32* @__errno_location() #24, !dbg !1339
  %18 = load i32, i32* %17, align 4, !dbg !1339, !tbaa !1235
  %19 = load i8*, i8** %6, align 8, !dbg !1341, !tbaa !1150
  %20 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %19) #18, !dbg !1341
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %20) #18, !dbg !1342
  call void @llvm.dbg.value(metadata i8 0, metadata !1311, metadata !DIExpression()), !dbg !1324
  br label %164, !dbg !1343

21:                                               ; preds = %13
  tail call void @fadvise(%struct._IO_FILE* nonnull %14, i32 2) #18, !dbg !1344
  br label %22

22:                                               ; preds = %21, %11
  %23 = phi %struct._IO_FILE* [ %12, %11 ], [ %14, %21 ], !dbg !1345
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !1315, metadata !DIExpression()), !dbg !1324
  %24 = load i8*, i8** @delims, align 8, !dbg !1346, !tbaa !1150
  call void @llvm.dbg.value(metadata i8* %24, metadata !1314, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !1347, metadata !DIExpression()) #18, !dbg !1353
  %25 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %23, i64 0, i32 1, !dbg !1355
  %26 = load i8*, i8** %25, align 8, !dbg !1355, !tbaa !1356
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %23, i64 0, i32 2, !dbg !1355
  %28 = load i8*, i8** %27, align 8, !dbg !1355, !tbaa !1360
  %29 = icmp ult i8* %26, %28, !dbg !1355
  br i1 %29, label %30, label %35, !dbg !1355, !prof !1361, !misexpect !1362

30:                                               ; preds = %22
  %31 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1355
  store i8* %31, i8** %25, align 8, !dbg !1355, !tbaa !1356
  %32 = load i8, i8* %26, align 1, !dbg !1355, !tbaa !1222
  %33 = zext i8 %32 to i32, !dbg !1355
  call void @llvm.dbg.value(metadata i32 %36, metadata !1313, metadata !DIExpression()), !dbg !1324
  %34 = tail call i32* @__errno_location() #24, !dbg !1363
  call void @llvm.dbg.value(metadata i32 undef, metadata !1319, metadata !DIExpression()), !dbg !1327
  br label %39, !dbg !1364

35:                                               ; preds = %22
  %36 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %23) #18, !dbg !1355
  call void @llvm.dbg.value(metadata i32 %36, metadata !1313, metadata !DIExpression()), !dbg !1324
  %37 = tail call i32* @__errno_location() #24, !dbg !1363
  call void @llvm.dbg.value(metadata i32 undef, metadata !1319, metadata !DIExpression()), !dbg !1327
  %38 = icmp eq i32 %36, -1, !dbg !1365
  br i1 %38, label %42, label %39, !dbg !1364

39:                                               ; preds = %30, %35
  %40 = phi i32* [ %34, %30 ], [ %37, %35 ]
  %41 = phi i32 [ %33, %30 ], [ %36, %35 ]
  br label %87, !dbg !1367

42:                                               ; preds = %35
  %43 = load i32, i32* %37, align 4, !dbg !1363, !tbaa !1235
  call void @llvm.dbg.value(metadata i32 %43, metadata !1319, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 %107, metadata !1319, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 %48, metadata !1313, metadata !DIExpression()), !dbg !1324
  %44 = load i1, i1* @line_delim, align 1, !dbg !1369
  %45 = select i1 %44, i8 0, i8 10, !dbg !1369
  %46 = zext i8 %45 to i32, !dbg !1369
  br label %127, !dbg !1371

47:                                               ; preds = %104, %87
  %48 = phi i32 [ %88, %87 ], [ %60, %104 ], !dbg !1327
  call void @llvm.dbg.value(metadata i8* %89, metadata !1314, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i32 %48, metadata !1313, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !1347, metadata !DIExpression()) #18, !dbg !1372
  %49 = load i8*, i8** %25, align 8, !dbg !1374, !tbaa !1356
  %50 = load i8*, i8** %27, align 8, !dbg !1374, !tbaa !1360
  %51 = icmp ult i8* %49, %50, !dbg !1374
  br i1 %51, label %52, label %56, !dbg !1374, !prof !1361, !misexpect !1362

52:                                               ; preds = %47
  %53 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !1374
  store i8* %53, i8** %25, align 8, !dbg !1374, !tbaa !1356
  %54 = load i8, i8* %49, align 1, !dbg !1374, !tbaa !1222
  %55 = zext i8 %54 to i32, !dbg !1374
  call void @llvm.dbg.value(metadata i32 %57, metadata !1312, metadata !DIExpression()), !dbg !1324
  br label %59, !dbg !1367

56:                                               ; preds = %47
  %57 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %23) #18, !dbg !1374
  call void @llvm.dbg.value(metadata i32 %57, metadata !1312, metadata !DIExpression()), !dbg !1324
  %58 = icmp eq i32 %57, -1, !dbg !1375
  br i1 %58, label %106, label %59, !dbg !1367

59:                                               ; preds = %52, %56
  %60 = phi i32 [ %55, %52 ], [ %57, %56 ]
  %61 = load i1, i1* @line_delim, align 1, !dbg !1376
  %62 = select i1 %61, i32 0, i32 10, !dbg !1376
  %63 = icmp eq i32 %48, %62, !dbg !1379
  br i1 %63, label %64, label %90, !dbg !1380

64:                                               ; preds = %59
  %65 = load i8, i8* %89, align 1, !dbg !1381, !tbaa !1222
  %66 = icmp eq i8 %65, 0, !dbg !1384
  br i1 %66, label %81, label %67, !dbg !1385

67:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i8 %65, metadata !1386, metadata !DIExpression()) #18, !dbg !1391
  call void @llvm.dbg.value(metadata i8 %65, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1398
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1401, !tbaa !1150
  %69 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %68, i64 0, i32 5, !dbg !1401
  %70 = load i8*, i8** %69, align 8, !dbg !1401, !tbaa !1402
  %71 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %68, i64 0, i32 6, !dbg !1401
  %72 = load i8*, i8** %71, align 8, !dbg !1401, !tbaa !1403
  %73 = icmp ult i8* %70, %72, !dbg !1401
  br i1 %73, label %74, label %76, !dbg !1401, !prof !1361, !misexpect !1362

74:                                               ; preds = %67
  %75 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !1401
  store i8* %75, i8** %69, align 8, !dbg !1401, !tbaa !1402
  store i8 %65, i8* %70, align 1, !dbg !1401, !tbaa !1222
  br label %81, !dbg !1404

76:                                               ; preds = %67
  %77 = zext i8 %65 to i32, !dbg !1405
  call void @llvm.dbg.value(metadata i8 %65, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1398
  %78 = tail call i32 @__overflow(%struct._IO_FILE* %68, i32 %77) #18, !dbg !1401
  %79 = icmp slt i32 %78, 0, !dbg !1406
  br i1 %79, label %80, label %81, !dbg !1404

80:                                               ; preds = %76
  tail call fastcc void @write_error() #22, !dbg !1407
  unreachable, !dbg !1407

81:                                               ; preds = %76, %74, %64
  %82 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !1408
  call void @llvm.dbg.value(metadata i8* %82, metadata !1314, metadata !DIExpression()), !dbg !1324
  %83 = load i8*, i8** @delim_end, align 8, !dbg !1410, !tbaa !1150
  %84 = icmp eq i8* %82, %83, !dbg !1411
  %85 = load i8*, i8** @delims, align 8, !dbg !1412
  %86 = select i1 %84, i8* %85, i8* %82, !dbg !1413
  br label %87, !dbg !1413, !llvm.loop !1414

87:                                               ; preds = %81, %39
  %88 = phi i32 [ %60, %81 ], [ %41, %39 ]
  %89 = phi i8* [ %86, %81 ], [ %24, %39 ]
  br label %47, !dbg !1367

90:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i32 %48, metadata !1386, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #18, !dbg !1416
  call void @llvm.dbg.value(metadata i32 %48, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1418
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1420, !tbaa !1150
  %92 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %91, i64 0, i32 5, !dbg !1420
  %93 = load i8*, i8** %92, align 8, !dbg !1420, !tbaa !1402
  %94 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %91, i64 0, i32 6, !dbg !1420
  %95 = load i8*, i8** %94, align 8, !dbg !1420, !tbaa !1403
  %96 = icmp ult i8* %93, %95, !dbg !1420
  br i1 %96, label %97, label %100, !dbg !1420, !prof !1361, !misexpect !1362

97:                                               ; preds = %90
  %98 = trunc i32 %48 to i8, !dbg !1421
  call void @llvm.dbg.value(metadata i8 %98, metadata !1386, metadata !DIExpression()) #18, !dbg !1416
  call void @llvm.dbg.value(metadata i8 %98, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1418
  %99 = getelementptr inbounds i8, i8* %93, i64 1, !dbg !1420
  store i8* %99, i8** %92, align 8, !dbg !1420, !tbaa !1402
  store i8 %98, i8* %93, align 1, !dbg !1420, !tbaa !1222
  br label %104, !dbg !1422

100:                                              ; preds = %90
  %101 = and i32 %48, 255, !dbg !1423
  call void @llvm.dbg.value(metadata i8 %98, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1418
  %102 = tail call i32 @__overflow(%struct._IO_FILE* %91, i32 %101) #18, !dbg !1420
  %103 = icmp slt i32 %102, 0, !dbg !1424
  br i1 %103, label %105, label %104, !dbg !1422

104:                                              ; preds = %100, %97
  br label %47, !dbg !1324, !llvm.loop !1414

105:                                              ; preds = %100
  tail call fastcc void @write_error() #22, !dbg !1425
  unreachable, !dbg !1425

106:                                              ; preds = %56
  call void @llvm.dbg.value(metadata i32 %48, metadata !1313, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i32 %48, metadata !1313, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i32 %48, metadata !1313, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i32 %48, metadata !1313, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i32 %48, metadata !1313, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i32 %48, metadata !1313, metadata !DIExpression()), !dbg !1324
  %107 = load i32, i32* %40, align 4, !dbg !1426, !tbaa !1235
  call void @llvm.dbg.value(metadata i32 %107, metadata !1319, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 %48, metadata !1386, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #18, !dbg !1427
  call void @llvm.dbg.value(metadata i32 %48, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1429
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1431, !tbaa !1150
  %109 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %108, i64 0, i32 5, !dbg !1431
  %110 = load i8*, i8** %109, align 8, !dbg !1431, !tbaa !1402
  %111 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %108, i64 0, i32 6, !dbg !1431
  %112 = load i8*, i8** %111, align 8, !dbg !1431, !tbaa !1403
  %113 = icmp ult i8* %110, %112, !dbg !1431
  br i1 %113, label %114, label %117, !dbg !1431, !prof !1361, !misexpect !1362

114:                                              ; preds = %106
  %115 = trunc i32 %48 to i8, !dbg !1432
  call void @llvm.dbg.value(metadata i8 %115, metadata !1386, metadata !DIExpression()) #18, !dbg !1427
  call void @llvm.dbg.value(metadata i8 %115, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1429
  %116 = getelementptr inbounds i8, i8* %110, i64 1, !dbg !1431
  store i8* %116, i8** %109, align 8, !dbg !1431, !tbaa !1402
  store i8 %115, i8* %110, align 1, !dbg !1431, !tbaa !1222
  br label %122, !dbg !1433

117:                                              ; preds = %106
  %118 = and i32 %48, 255, !dbg !1434
  call void @llvm.dbg.value(metadata i8 %115, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1429
  %119 = tail call i32 @__overflow(%struct._IO_FILE* %108, i32 %118) #18, !dbg !1431
  %120 = icmp slt i32 %119, 0, !dbg !1435
  br i1 %120, label %121, label %122, !dbg !1433

121:                                              ; preds = %117
  tail call fastcc void @write_error() #22, !dbg !1436
  unreachable, !dbg !1436

122:                                              ; preds = %117, %114
  call void @llvm.dbg.value(metadata i32 %107, metadata !1319, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 %48, metadata !1313, metadata !DIExpression()), !dbg !1324
  %123 = load i1, i1* @line_delim, align 1, !dbg !1369
  %124 = select i1 %123, i8 0, i8 10, !dbg !1369
  %125 = zext i8 %124 to i32, !dbg !1369
  %126 = icmp eq i32 %48, %125, !dbg !1437
  br i1 %126, label %144, label %127, !dbg !1371

127:                                              ; preds = %42, %122
  %128 = phi i32* [ %37, %42 ], [ %40, %122 ]
  %129 = phi i32 [ %46, %42 ], [ %125, %122 ]
  %130 = phi i8 [ %45, %42 ], [ %124, %122 ]
  %131 = phi i32 [ %43, %42 ], [ %107, %122 ]
  call void @llvm.dbg.value(metadata i8 %124, metadata !1386, metadata !DIExpression()) #18, !dbg !1438
  call void @llvm.dbg.value(metadata i8 %124, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1440
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1442, !tbaa !1150
  %133 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %132, i64 0, i32 5, !dbg !1442
  %134 = load i8*, i8** %133, align 8, !dbg !1442, !tbaa !1402
  %135 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %132, i64 0, i32 6, !dbg !1442
  %136 = load i8*, i8** %135, align 8, !dbg !1442, !tbaa !1403
  %137 = icmp ult i8* %134, %136, !dbg !1442
  br i1 %137, label %138, label %140, !dbg !1442, !prof !1361, !misexpect !1362

138:                                              ; preds = %127
  %139 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !1442
  store i8* %139, i8** %133, align 8, !dbg !1442, !tbaa !1402
  store i8 %130, i8* %134, align 1, !dbg !1442, !tbaa !1222
  br label %144, !dbg !1443

140:                                              ; preds = %127
  call void @llvm.dbg.value(metadata i8 %124, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1440
  %141 = tail call i32 @__overflow(%struct._IO_FILE* %132, i32 %129) #18, !dbg !1442
  %142 = icmp slt i32 %141, 0, !dbg !1444
  br i1 %142, label %143, label %144, !dbg !1443

143:                                              ; preds = %140
  tail call fastcc void @write_error() #22, !dbg !1445
  unreachable, !dbg !1445

144:                                              ; preds = %140, %138, %122
  %145 = phi i32* [ %40, %122 ], [ %128, %138 ], [ %128, %140 ]
  %146 = phi i32 [ %107, %122 ], [ %131, %138 ], [ %131, %140 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !1446, metadata !DIExpression()), !dbg !1449
  %147 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %23, i64 0, i32 0, !dbg !1452
  %148 = load i32, i32* %147, align 8, !dbg !1452, !tbaa !1453
  %149 = and i32 %148, 32, !dbg !1452
  %150 = icmp eq i32 %149, 0, !dbg !1454
  br i1 %150, label %154, label %151, !dbg !1455

151:                                              ; preds = %144
  %152 = load i8*, i8** %6, align 8, !dbg !1456, !tbaa !1150
  %153 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %152) #18, !dbg !1456
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %153) #18, !dbg !1458
  call void @llvm.dbg.value(metadata i8 0, metadata !1311, metadata !DIExpression()), !dbg !1324
  br label %154, !dbg !1459

154:                                              ; preds = %144, %151
  %155 = phi i8 [ 0, %151 ], [ %7, %144 ], !dbg !1324
  call void @llvm.dbg.value(metadata i8 %155, metadata !1311, metadata !DIExpression()), !dbg !1324
  br i1 %10, label %156, label %157, !dbg !1460

156:                                              ; preds = %154
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %23) #18, !dbg !1461
  br label %164, !dbg !1461

157:                                              ; preds = %154
  %158 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %23) #18, !dbg !1463
  %159 = icmp eq i32 %158, -1, !dbg !1465
  br i1 %159, label %160, label %164, !dbg !1466

160:                                              ; preds = %157
  %161 = load i32, i32* %145, align 4, !dbg !1467, !tbaa !1235
  %162 = load i8*, i8** %6, align 8, !dbg !1469, !tbaa !1150
  %163 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %162) #18, !dbg !1469
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %163) #18, !dbg !1470
  call void @llvm.dbg.value(metadata i8 0, metadata !1311, metadata !DIExpression()), !dbg !1324
  br label %164, !dbg !1471

164:                                              ; preds = %156, %160, %157, %16
  %165 = phi i8 [ 0, %16 ], [ %155, %156 ], [ 0, %160 ], [ %155, %157 ], !dbg !1327
  call void @llvm.dbg.value(metadata i8 %165, metadata !1311, metadata !DIExpression()), !dbg !1324
  %166 = add i64 %5, -1, !dbg !1472
  call void @llvm.dbg.value(metadata i64 %166, metadata !1309, metadata !DIExpression()), !dbg !1324
  %167 = getelementptr inbounds i8*, i8** %6, i64 1, !dbg !1473
  call void @llvm.dbg.value(metadata i8** %167, metadata !1310, metadata !DIExpression()), !dbg !1324
  %168 = icmp eq i64 %166, 0, !dbg !1325
  br i1 %168, label %169, label %4, !dbg !1325, !llvm.loop !1474

169:                                              ; preds = %164, %2
  %170 = phi i8 [ 1, %2 ], [ %165, %164 ], !dbg !1324
  call void @llvm.dbg.value(metadata i8 %170, metadata !1311, metadata !DIExpression()), !dbg !1324
  %171 = and i8 %170, 1, !dbg !1476
  %172 = icmp ne i8 %171, 0, !dbg !1476
  ret i1 %172, !dbg !1477
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @paste_parallel(i64 %0, i8** nocapture readonly %1) unnamed_addr #8 !dbg !1478 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1480, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8** %1, metadata !1481, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8 1, metadata !1482, metadata !DIExpression()), !dbg !1525
  %3 = add i64 %0, 2, !dbg !1526
  %4 = tail call noalias i8* @xmalloc(i64 %3) #18, !dbg !1527
  call void @llvm.dbg.value(metadata i8* %4, metadata !1483, metadata !DIExpression()), !dbg !1525
  %5 = add i64 %0, 1, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %5, metadata !1529, metadata !DIExpression()) #18, !dbg !1535
  call void @llvm.dbg.value(metadata i64 8, metadata !1534, metadata !DIExpression()) #18, !dbg !1535
  %6 = icmp ugt i64 %5, 1152921504606846975, !dbg !1537
  br i1 %6, label %7, label %8, !dbg !1539

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !1540
  unreachable, !dbg !1540

8:                                                ; preds = %2
  %9 = shl nuw nsw i64 %5, 3, !dbg !1541
  %10 = tail call noalias i8* @xmalloc(i64 %9) #18, !dbg !1542
  %11 = bitcast i8* %10 to %struct._IO_FILE**, !dbg !1543
  call void @llvm.dbg.value(metadata %struct._IO_FILE** %11, metadata !1484, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8 0, metadata !1487, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 0, metadata !1486, metadata !DIExpression()), !dbg !1525
  %12 = icmp eq i64 %0, 0, !dbg !1544
  br i1 %12, label %277, label %13, !dbg !1547

13:                                               ; preds = %8, %38
  %14 = phi i64 [ %40, %38 ], [ 0, %8 ]
  %15 = phi i8 [ %39, %38 ], [ 0, %8 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !1486, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %15, metadata !1487, metadata !DIExpression()), !dbg !1525
  %16 = getelementptr inbounds i8*, i8** %1, i64 %14, !dbg !1548
  %17 = load i8*, i8** %16, align 8, !dbg !1548, !tbaa !1150
  %18 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %17, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #21, !dbg !1548
  %19 = icmp eq i32 %18, 0, !dbg !1548
  br i1 %19, label %20, label %24, !dbg !1551

20:                                               ; preds = %13
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1552
  %21 = load i64, i64* bitcast (%struct._IO_FILE** @stdin to i64*), align 8, !dbg !1554, !tbaa !1150
  %22 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %11, i64 %14, !dbg !1555
  %23 = bitcast %struct._IO_FILE** %22 to i64*, !dbg !1556
  store i64 %21, i64* %23, align 8, !dbg !1556, !tbaa !1150
  br label %38, !dbg !1557

24:                                               ; preds = %13
  %25 = tail call %struct._IO_FILE* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)), !dbg !1558
  %26 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %11, i64 %14, !dbg !1560
  store %struct._IO_FILE* %25, %struct._IO_FILE** %26, align 8, !dbg !1561, !tbaa !1150
  %27 = icmp eq %struct._IO_FILE* %25, null, !dbg !1562
  br i1 %27, label %28, label %34, !dbg !1564

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 %14, metadata !1486, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 %14, metadata !1486, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 %14, metadata !1486, metadata !DIExpression()), !dbg !1525
  %29 = getelementptr inbounds i8*, i8** %1, i64 %14, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %14, metadata !1486, metadata !DIExpression()), !dbg !1525
  %30 = tail call i32* @__errno_location() #24, !dbg !1565
  %31 = load i32, i32* %30, align 4, !dbg !1565, !tbaa !1235
  %32 = load i8*, i8** %29, align 8, !dbg !1565, !tbaa !1150
  %33 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %32) #18, !dbg !1565
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %33) #18, !dbg !1565
  unreachable, !dbg !1565

34:                                               ; preds = %24
  %35 = tail call i32 @fileno(%struct._IO_FILE* nonnull %25) #18, !dbg !1566
  %36 = icmp eq i32 %35, 0, !dbg !1568
  %37 = select i1 %36, i8 1, i8 %15, !dbg !1569
  call void @llvm.dbg.value(metadata i8 %37, metadata !1487, metadata !DIExpression()), !dbg !1525
  tail call void @fadvise(%struct._IO_FILE* nonnull %25, i32 2) #18, !dbg !1570
  br label %38

38:                                               ; preds = %20, %34
  %39 = phi i8 [ %15, %20 ], [ %37, %34 ], !dbg !1525
  call void @llvm.dbg.value(metadata i8 %39, metadata !1487, metadata !DIExpression()), !dbg !1525
  %40 = add nuw i64 %14, 1, !dbg !1571
  call void @llvm.dbg.value(metadata i64 %40, metadata !1486, metadata !DIExpression()), !dbg !1525
  %41 = icmp eq i64 %40, %0, !dbg !1544
  br i1 %41, label %42, label %13, !dbg !1547, !llvm.loop !1572

42:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i8 %39, metadata !1487, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %39, metadata !1487, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %39, metadata !1487, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %39, metadata !1487, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %39, metadata !1487, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 %0, metadata !1486, metadata !DIExpression()), !dbg !1525
  %43 = and i8 %39, 1, !dbg !1574
  %44 = icmp eq i8 %43, 0, !dbg !1574
  br i1 %44, label %47, label %45, !dbg !1576

45:                                               ; preds = %42
  %46 = load i1, i1* @have_read_stdin, align 1, !dbg !1577
  br i1 %46, label %48, label %47, !dbg !1578

47:                                               ; preds = %42, %45
  br label %54, !dbg !1579

48:                                               ; preds = %45
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0), i32 5) #18, !dbg !1580
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %49) #18, !dbg !1580
  unreachable, !dbg !1580

50:                                               ; preds = %267, %54, %161, %180, %182
  %51 = phi i64 [ %56, %54 ], [ %157, %182 ], [ %157, %180 ], [ %157, %161 ], [ %272, %267 ], !dbg !1581
  %52 = phi i8 [ %55, %54 ], [ %158, %182 ], [ %158, %180 ], [ %158, %161 ], [ %273, %267 ], !dbg !1582
  call void @llvm.dbg.value(metadata i8 %52, metadata !1482, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 %51, metadata !1486, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 undef, metadata !1497, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 undef, metadata !1494, metadata !DIExpression()), !dbg !1583
  %53 = icmp eq i64 %51, 0, !dbg !1584
  br i1 %53, label %277, label %54, !dbg !1584

54:                                               ; preds = %47, %50
  %55 = phi i8 [ %52, %50 ], [ 1, %47 ]
  %56 = phi i64 [ %51, %50 ], [ %0, %47 ]
  call void @llvm.dbg.value(metadata i8 %55, metadata !1482, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 %56, metadata !1486, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 undef, metadata !1497, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 undef, metadata !1494, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i8 0, metadata !1488, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8* undef, metadata !1490, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i64 0, metadata !1491, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i64 0, metadata !1492, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i8 %55, metadata !1482, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 %56, metadata !1486, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8 0, metadata !1488, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i32 undef, metadata !1497, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 undef, metadata !1494, metadata !DIExpression()), !dbg !1583
  %57 = icmp eq i64 %56, 0, !dbg !1587
  br i1 %57, label %50, label %58, !dbg !1579, !llvm.loop !1588

58:                                               ; preds = %54
  %59 = load i8*, i8** @delims, align 8, !dbg !1590, !tbaa !1150
  call void @llvm.dbg.value(metadata i8* %59, metadata !1490, metadata !DIExpression()), !dbg !1585
  br label %60, !dbg !1579

60:                                               ; preds = %58, %267
  %61 = phi i8 [ %273, %267 ], [ %55, %58 ]
  %62 = phi i64 [ %272, %267 ], [ %56, %58 ]
  %63 = phi i8 [ %271, %267 ], [ 0, %58 ]
  %64 = phi i8* [ %270, %267 ], [ %59, %58 ]
  %65 = phi i64 [ %268, %267 ], [ 0, %58 ]
  %66 = phi i64 [ %269, %267 ], [ 0, %58 ]
  call void @llvm.dbg.value(metadata i8 %61, metadata !1482, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 %62, metadata !1486, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %63, metadata !1488, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8* %64, metadata !1490, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i32 undef, metadata !1497, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 undef, metadata !1494, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i64 %65, metadata !1492, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i64 %66, metadata !1491, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 0, metadata !1498, metadata !DIExpression()), !dbg !1583
  %67 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %11, i64 %65, !dbg !1591
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %67, align 8, !dbg !1591, !tbaa !1150
  %69 = icmp eq %struct._IO_FILE* %68, null, !dbg !1591
  br i1 %69, label %155, label %70, !dbg !1592

70:                                               ; preds = %60
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %68, metadata !1347, metadata !DIExpression()) #18, !dbg !1593
  %71 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %68, i64 0, i32 1, !dbg !1595
  %72 = load i8*, i8** %71, align 8, !dbg !1595, !tbaa !1356
  %73 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %68, i64 0, i32 2, !dbg !1595
  %74 = load i8*, i8** %73, align 8, !dbg !1595, !tbaa !1360
  %75 = icmp ult i8* %72, %74, !dbg !1595
  br i1 %75, label %78, label %76, !dbg !1595, !prof !1361, !misexpect !1362

76:                                               ; preds = %70
  %77 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %68) #18, !dbg !1595
  br label %82, !dbg !1595

78:                                               ; preds = %70
  %79 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !1595
  store i8* %79, i8** %71, align 8, !dbg !1595, !tbaa !1356
  %80 = load i8, i8* %72, align 1, !dbg !1595, !tbaa !1222
  %81 = zext i8 %80 to i32, !dbg !1595
  br label %82, !dbg !1595

82:                                               ; preds = %76, %78
  %83 = phi i32 [ %77, %76 ], [ %81, %78 ], !dbg !1595
  call void @llvm.dbg.value(metadata i32 %83, metadata !1494, metadata !DIExpression()), !dbg !1583
  %84 = tail call i32* @__errno_location() #24, !dbg !1596
  %85 = load i32, i32* %84, align 4, !dbg !1596, !tbaa !1235
  call void @llvm.dbg.value(metadata i32 %85, metadata !1497, metadata !DIExpression()), !dbg !1583
  %86 = icmp ne i32 %83, -1, !dbg !1597
  %87 = icmp ne i64 %66, 0, !dbg !1598
  %88 = and i1 %87, %86, !dbg !1599
  br i1 %88, label %89, label %94, !dbg !1599

89:                                               ; preds = %82
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1600, !tbaa !1150
  %91 = tail call i64 @fwrite_unlocked(i8* %4, i64 1, i64 %66, %struct._IO_FILE* %90), !dbg !1601
  %92 = icmp eq i64 %91, %66, !dbg !1602
  br i1 %92, label %94, label %93, !dbg !1603

93:                                               ; preds = %89
  tail call fastcc void @write_error() #23, !dbg !1604
  unreachable, !dbg !1604

94:                                               ; preds = %89, %82
  %95 = phi i64 [ %66, %82 ], [ 0, %89 ], !dbg !1585
  call void @llvm.dbg.value(metadata i64 %95, metadata !1491, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 undef, metadata !1498, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %85, metadata !1497, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %83, metadata !1494, metadata !DIExpression()), !dbg !1583
  %96 = icmp eq i32 %83, -1, !dbg !1605
  br i1 %96, label %130, label %97, !dbg !1606

97:                                               ; preds = %94, %127
  %98 = phi i32 [ %128, %127 ], [ %83, %94 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1497, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %98, metadata !1494, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i8 1, metadata !1498, metadata !DIExpression()), !dbg !1583
  %99 = load i1, i1* @line_delim, align 1, !dbg !1607
  %100 = select i1 %99, i32 0, i32 10, !dbg !1607
  %101 = icmp eq i32 %98, %100, !dbg !1610
  br i1 %101, label %200, label %102, !dbg !1611

102:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i32 %98, metadata !1386, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #18, !dbg !1612
  call void @llvm.dbg.value(metadata i32 %98, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1614
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1616, !tbaa !1150
  %104 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %103, i64 0, i32 5, !dbg !1616
  %105 = load i8*, i8** %104, align 8, !dbg !1616, !tbaa !1402
  %106 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %103, i64 0, i32 6, !dbg !1616
  %107 = load i8*, i8** %106, align 8, !dbg !1616, !tbaa !1403
  %108 = icmp ult i8* %105, %107, !dbg !1616
  br i1 %108, label %109, label %112, !dbg !1616, !prof !1361, !misexpect !1362

109:                                              ; preds = %102
  %110 = trunc i32 %98 to i8, !dbg !1617
  call void @llvm.dbg.value(metadata i8 %110, metadata !1386, metadata !DIExpression()) #18, !dbg !1612
  call void @llvm.dbg.value(metadata i8 %110, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1614
  %111 = getelementptr inbounds i8, i8* %105, i64 1, !dbg !1616
  store i8* %111, i8** %104, align 8, !dbg !1616, !tbaa !1402
  store i8 %110, i8* %105, align 1, !dbg !1616, !tbaa !1222
  br label %117, !dbg !1618

112:                                              ; preds = %102
  %113 = and i32 %98, 255, !dbg !1619
  call void @llvm.dbg.value(metadata i8 %110, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1614
  %114 = tail call i32 @__overflow(%struct._IO_FILE* %103, i32 %113) #18, !dbg !1616
  %115 = icmp slt i32 %114, 0, !dbg !1620
  br i1 %115, label %116, label %117, !dbg !1618

116:                                              ; preds = %112
  tail call fastcc void @write_error() #22, !dbg !1621
  unreachable, !dbg !1621

117:                                              ; preds = %109, %112
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %68, metadata !1347, metadata !DIExpression()) #18, !dbg !1622
  %118 = load i8*, i8** %71, align 8, !dbg !1624, !tbaa !1356
  %119 = load i8*, i8** %73, align 8, !dbg !1624, !tbaa !1360
  %120 = icmp ult i8* %118, %119, !dbg !1624
  br i1 %120, label %123, label %121, !dbg !1624, !prof !1361, !misexpect !1362

121:                                              ; preds = %117
  %122 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %68) #18, !dbg !1624
  br label %127, !dbg !1624

123:                                              ; preds = %117
  %124 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !1624
  store i8* %124, i8** %71, align 8, !dbg !1624, !tbaa !1356
  %125 = load i8, i8* %118, align 1, !dbg !1624, !tbaa !1222
  %126 = zext i8 %125 to i32, !dbg !1624
  br label %127, !dbg !1624

127:                                              ; preds = %121, %123
  %128 = phi i32 [ %122, %121 ], [ %126, %123 ], !dbg !1624
  call void @llvm.dbg.value(metadata i32 %128, metadata !1494, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i8 undef, metadata !1498, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 undef, metadata !1497, metadata !DIExpression()), !dbg !1583
  %129 = icmp eq i32 %128, -1, !dbg !1605
  br i1 %129, label %200, label %97, !dbg !1606, !llvm.loop !1625

130:                                              ; preds = %94
  call void @llvm.dbg.value(metadata i32 -1, metadata !1494, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %85, metadata !1497, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i8 undef, metadata !1498, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %85, metadata !1497, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 -1, metadata !1494, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i64 %95, metadata !1491, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %68, metadata !1446, metadata !DIExpression()), !dbg !1627
  %131 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %68, i64 0, i32 0, !dbg !1632
  %132 = load i32, i32* %131, align 8, !dbg !1632, !tbaa !1453
  %133 = and i32 %132, 32, !dbg !1632
  %134 = icmp eq i32 %133, 0, !dbg !1633
  br i1 %134, label %139, label %135, !dbg !1634

135:                                              ; preds = %130
  %136 = getelementptr inbounds i8*, i8** %1, i64 %65, !dbg !1635
  %137 = load i8*, i8** %136, align 8, !dbg !1635, !tbaa !1150
  %138 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %137) #18, !dbg !1635
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %138) #18, !dbg !1637
  call void @llvm.dbg.value(metadata i8 0, metadata !1482, metadata !DIExpression()), !dbg !1525
  br label %139, !dbg !1638

139:                                              ; preds = %130, %135
  %140 = phi i8 [ 0, %135 ], [ %61, %130 ], !dbg !1525
  call void @llvm.dbg.value(metadata i8 %140, metadata !1482, metadata !DIExpression()), !dbg !1525
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1639, !tbaa !1150
  %142 = icmp eq %struct._IO_FILE* %68, %141, !dbg !1641
  br i1 %142, label %143, label %144, !dbg !1642

143:                                              ; preds = %139
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %68) #18, !dbg !1643
  br label %152, !dbg !1643

144:                                              ; preds = %139
  %145 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %68) #18, !dbg !1644
  %146 = icmp eq i32 %145, -1, !dbg !1646
  br i1 %146, label %147, label %152, !dbg !1647

147:                                              ; preds = %144
  %148 = load i32, i32* %84, align 4, !dbg !1648, !tbaa !1235
  %149 = getelementptr inbounds i8*, i8** %1, i64 %65, !dbg !1650
  %150 = load i8*, i8** %149, align 8, !dbg !1650, !tbaa !1150
  %151 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %150) #18, !dbg !1650
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %151) #18, !dbg !1651
  call void @llvm.dbg.value(metadata i8 0, metadata !1482, metadata !DIExpression()), !dbg !1525
  br label %152, !dbg !1652

152:                                              ; preds = %144, %147, %143
  %153 = phi i8 [ %140, %143 ], [ 0, %147 ], [ %140, %144 ], !dbg !1653
  call void @llvm.dbg.value(metadata i8 %153, metadata !1482, metadata !DIExpression()), !dbg !1525
  store %struct._IO_FILE* null, %struct._IO_FILE** %67, align 8, !dbg !1654, !tbaa !1150
  %154 = add i64 %62, -1, !dbg !1655
  call void @llvm.dbg.value(metadata i64 %154, metadata !1486, metadata !DIExpression()), !dbg !1525
  br label %155, !dbg !1656

155:                                              ; preds = %60, %152
  %156 = phi i64 [ %95, %152 ], [ %66, %60 ]
  %157 = phi i64 [ %154, %152 ], [ %62, %60 ], !dbg !1525
  %158 = phi i8 [ %153, %152 ], [ %61, %60 ], !dbg !1525
  call void @llvm.dbg.value(metadata i8 %158, metadata !1482, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 %157, metadata !1486, metadata !DIExpression()), !dbg !1525
  %159 = add nuw i64 %65, 1, !dbg !1657
  %160 = icmp eq i64 %159, %0, !dbg !1658
  br i1 %160, label %161, label %187, !dbg !1659

161:                                              ; preds = %155
  call void @llvm.dbg.value(metadata i8 %63, metadata !1488, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %157, metadata !1486, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %158, metadata !1482, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %63, metadata !1488, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %157, metadata !1486, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %158, metadata !1482, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %63, metadata !1488, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %157, metadata !1486, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %158, metadata !1482, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %63, metadata !1488, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %157, metadata !1486, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %158, metadata !1482, metadata !DIExpression()), !dbg !1525
  %162 = and i8 %63, 1, !dbg !1660
  %163 = icmp eq i8 %162, 0, !dbg !1660
  br i1 %163, label %50, label %164, !dbg !1661

164:                                              ; preds = %161
  %165 = icmp eq i64 %156, 0, !dbg !1662
  br i1 %165, label %171, label %166, !dbg !1663

166:                                              ; preds = %164
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1664, !tbaa !1150
  %168 = tail call i64 @fwrite_unlocked(i8* %4, i64 1, i64 %156, %struct._IO_FILE* %167), !dbg !1665
  %169 = icmp eq i64 %168, %156, !dbg !1666
  br i1 %169, label %171, label %170, !dbg !1667

170:                                              ; preds = %166
  tail call fastcc void @write_error() #23, !dbg !1668
  unreachable, !dbg !1668

171:                                              ; preds = %166, %164
  call void @llvm.dbg.value(metadata i64 0, metadata !1491, metadata !DIExpression()), !dbg !1585
  %172 = load i1, i1* @line_delim, align 1, !dbg !1669
  %173 = select i1 %172, i8 0, i8 10, !dbg !1669
  call void @llvm.dbg.value(metadata i8 %173, metadata !1386, metadata !DIExpression()) #18, !dbg !1670
  call void @llvm.dbg.value(metadata i8 %173, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1672
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1674, !tbaa !1150
  %175 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %174, i64 0, i32 5, !dbg !1674
  %176 = load i8*, i8** %175, align 8, !dbg !1674, !tbaa !1402
  %177 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %174, i64 0, i32 6, !dbg !1674
  %178 = load i8*, i8** %177, align 8, !dbg !1674, !tbaa !1403
  %179 = icmp ult i8* %176, %178, !dbg !1674
  br i1 %179, label %180, label %182, !dbg !1674, !prof !1361, !misexpect !1362

180:                                              ; preds = %171
  %181 = getelementptr inbounds i8, i8* %176, i64 1, !dbg !1674
  store i8* %181, i8** %175, align 8, !dbg !1674, !tbaa !1402
  store i8 %173, i8* %176, align 1, !dbg !1674, !tbaa !1222
  br label %50, !dbg !1675

182:                                              ; preds = %171
  %183 = zext i8 %173 to i32, !dbg !1676
  call void @llvm.dbg.value(metadata i8 %173, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1672
  %184 = tail call i32 @__overflow(%struct._IO_FILE* %174, i32 %183) #18, !dbg !1674
  %185 = icmp slt i32 %184, 0, !dbg !1677
  br i1 %185, label %186, label %50, !dbg !1675

186:                                              ; preds = %182
  tail call fastcc void @write_error() #22, !dbg !1678
  unreachable, !dbg !1678

187:                                              ; preds = %155
  %188 = load i8, i8* %64, align 1, !dbg !1679, !tbaa !1222
  %189 = icmp eq i8 %188, 0, !dbg !1682
  br i1 %189, label %193, label %190, !dbg !1683

190:                                              ; preds = %187
  %191 = add i64 %156, 1, !dbg !1684
  call void @llvm.dbg.value(metadata i64 %191, metadata !1491, metadata !DIExpression()), !dbg !1585
  %192 = getelementptr inbounds i8, i8* %4, i64 %156, !dbg !1685
  store i8 %188, i8* %192, align 1, !dbg !1686, !tbaa !1222
  br label %193, !dbg !1685

193:                                              ; preds = %187, %190
  %194 = phi i64 [ %191, %190 ], [ %156, %187 ], !dbg !1583
  call void @llvm.dbg.value(metadata i64 %194, metadata !1491, metadata !DIExpression()), !dbg !1585
  %195 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !1687
  call void @llvm.dbg.value(metadata i8* %195, metadata !1490, metadata !DIExpression()), !dbg !1585
  %196 = load i8*, i8** @delim_end, align 8, !dbg !1689, !tbaa !1150
  %197 = icmp eq i8* %195, %196, !dbg !1690
  %198 = load i8*, i8** @delims, align 8, !dbg !1691
  %199 = select i1 %197, i8* %198, i8* %195, !dbg !1692
  br label %267, !dbg !1692

200:                                              ; preds = %127, %97
  %201 = phi i32 [ %98, %97 ], [ -1, %127 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !1488, metadata !DIExpression()), !dbg !1585
  %202 = add nuw i64 %65, 1, !dbg !1693
  %203 = icmp eq i64 %202, %0, !dbg !1694
  br i1 %203, label %248, label %204, !dbg !1695

204:                                              ; preds = %200
  %205 = load i1, i1* @line_delim, align 1, !dbg !1696
  %206 = select i1 %205, i32 0, i32 10, !dbg !1696
  %207 = icmp ne i32 %201, %206, !dbg !1699
  %208 = icmp ne i32 %201, -1, !dbg !1700
  %209 = and i1 %208, %207, !dbg !1701
  br i1 %209, label %210, label %225, !dbg !1701

210:                                              ; preds = %204
  call void @llvm.dbg.value(metadata i32 %201, metadata !1386, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #18, !dbg !1702
  call void @llvm.dbg.value(metadata i32 %201, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1704
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1706, !tbaa !1150
  %212 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %211, i64 0, i32 5, !dbg !1706
  %213 = load i8*, i8** %212, align 8, !dbg !1706, !tbaa !1402
  %214 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %211, i64 0, i32 6, !dbg !1706
  %215 = load i8*, i8** %214, align 8, !dbg !1706, !tbaa !1403
  %216 = icmp ult i8* %213, %215, !dbg !1706
  br i1 %216, label %217, label %220, !dbg !1706, !prof !1361, !misexpect !1362

217:                                              ; preds = %210
  %218 = trunc i32 %201 to i8, !dbg !1707
  call void @llvm.dbg.value(metadata i8 %218, metadata !1386, metadata !DIExpression()) #18, !dbg !1702
  call void @llvm.dbg.value(metadata i8 %218, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1704
  %219 = getelementptr inbounds i8, i8* %213, i64 1, !dbg !1706
  store i8* %219, i8** %212, align 8, !dbg !1706, !tbaa !1402
  store i8 %218, i8* %213, align 1, !dbg !1706, !tbaa !1222
  br label %225, !dbg !1708

220:                                              ; preds = %210
  %221 = and i32 %201, 255, !dbg !1709
  call void @llvm.dbg.value(metadata i8 %218, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1704
  %222 = tail call i32 @__overflow(%struct._IO_FILE* %211, i32 %221) #18, !dbg !1706
  %223 = icmp slt i32 %222, 0, !dbg !1710
  br i1 %223, label %224, label %225, !dbg !1708

224:                                              ; preds = %220
  tail call fastcc void @write_error() #22, !dbg !1711
  unreachable, !dbg !1711

225:                                              ; preds = %220, %217, %204
  %226 = load i8, i8* %64, align 1, !dbg !1712, !tbaa !1222
  %227 = icmp eq i8 %226, 0, !dbg !1714
  br i1 %227, label %242, label %228, !dbg !1715

228:                                              ; preds = %225
  call void @llvm.dbg.value(metadata i8 %226, metadata !1386, metadata !DIExpression()) #18, !dbg !1716
  call void @llvm.dbg.value(metadata i8 %226, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1718
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1720, !tbaa !1150
  %230 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %229, i64 0, i32 5, !dbg !1720
  %231 = load i8*, i8** %230, align 8, !dbg !1720, !tbaa !1402
  %232 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %229, i64 0, i32 6, !dbg !1720
  %233 = load i8*, i8** %232, align 8, !dbg !1720, !tbaa !1403
  %234 = icmp ult i8* %231, %233, !dbg !1720
  br i1 %234, label %235, label %237, !dbg !1720, !prof !1361, !misexpect !1362

235:                                              ; preds = %228
  %236 = getelementptr inbounds i8, i8* %231, i64 1, !dbg !1720
  store i8* %236, i8** %230, align 8, !dbg !1720, !tbaa !1402
  store i8 %226, i8* %231, align 1, !dbg !1720, !tbaa !1222
  br label %242, !dbg !1721

237:                                              ; preds = %228
  %238 = zext i8 %226 to i32, !dbg !1722
  call void @llvm.dbg.value(metadata i8 %226, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1718
  %239 = tail call i32 @__overflow(%struct._IO_FILE* %229, i32 %238) #18, !dbg !1720
  %240 = icmp slt i32 %239, 0, !dbg !1723
  br i1 %240, label %241, label %242, !dbg !1721

241:                                              ; preds = %237
  tail call fastcc void @write_error() #22, !dbg !1724
  unreachable, !dbg !1724

242:                                              ; preds = %237, %235, %225
  %243 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !1725
  call void @llvm.dbg.value(metadata i8* %243, metadata !1490, metadata !DIExpression()), !dbg !1585
  %244 = load i8*, i8** @delim_end, align 8, !dbg !1727, !tbaa !1150
  %245 = icmp eq i8* %243, %244, !dbg !1728
  %246 = load i8*, i8** @delims, align 8, !dbg !1729
  %247 = select i1 %245, i8* %246, i8* %243, !dbg !1730
  br label %267, !dbg !1730

248:                                              ; preds = %200
  %249 = icmp eq i32 %201, -1, !dbg !1731
  %250 = load i1, i1* @line_delim, align 1, !dbg !1732
  %251 = select i1 %250, i32 0, i32 10, !dbg !1732
  %252 = select i1 %249, i32 %251, i32 %201, !dbg !1732
  call void @llvm.dbg.value(metadata i32 %252, metadata !1521, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1733
  call void @llvm.dbg.value(metadata i32 %252, metadata !1386, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #18, !dbg !1734
  call void @llvm.dbg.value(metadata i32 %252, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1736
  %253 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1738, !tbaa !1150
  %254 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %253, i64 0, i32 5, !dbg !1738
  %255 = load i8*, i8** %254, align 8, !dbg !1738, !tbaa !1402
  %256 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %253, i64 0, i32 6, !dbg !1738
  %257 = load i8*, i8** %256, align 8, !dbg !1738, !tbaa !1403
  %258 = icmp ult i8* %255, %257, !dbg !1738
  br i1 %258, label %259, label %262, !dbg !1738, !prof !1361, !misexpect !1362

259:                                              ; preds = %248
  %260 = trunc i32 %252 to i8, !dbg !1739
  call void @llvm.dbg.value(metadata i8 %260, metadata !1521, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i8 %260, metadata !1386, metadata !DIExpression()) #18, !dbg !1734
  call void @llvm.dbg.value(metadata i8 %260, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1736
  %261 = getelementptr inbounds i8, i8* %255, i64 1, !dbg !1738
  store i8* %261, i8** %254, align 8, !dbg !1738, !tbaa !1402
  store i8 %260, i8* %255, align 1, !dbg !1738, !tbaa !1222
  br label %267, !dbg !1740

262:                                              ; preds = %248
  %263 = and i32 %252, 255, !dbg !1741
  call void @llvm.dbg.value(metadata i8 %260, metadata !1393, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1736
  %264 = tail call i32 @__overflow(%struct._IO_FILE* %253, i32 %263) #18, !dbg !1738
  %265 = icmp slt i32 %264, 0, !dbg !1742
  br i1 %265, label %266, label %267, !dbg !1740

266:                                              ; preds = %262
  tail call fastcc void @write_error() #22, !dbg !1743
  unreachable, !dbg !1743

267:                                              ; preds = %262, %259, %242, %193
  %268 = phi i64 [ %202, %262 ], [ %202, %259 ], [ %202, %242 ], [ %159, %193 ], !dbg !1744
  %269 = phi i64 [ %95, %262 ], [ %95, %259 ], [ %95, %242 ], [ %194, %193 ], !dbg !1583
  %270 = phi i8* [ %64, %262 ], [ %64, %259 ], [ %247, %242 ], [ %199, %193 ], !dbg !1585
  %271 = phi i8 [ 1, %262 ], [ 1, %259 ], [ 1, %242 ], [ %63, %193 ], !dbg !1585
  %272 = phi i64 [ %62, %262 ], [ %62, %259 ], [ %62, %242 ], [ %157, %193 ], !dbg !1525
  %273 = phi i8 [ %61, %262 ], [ %61, %259 ], [ %61, %242 ], [ %158, %193 ], !dbg !1525
  call void @llvm.dbg.value(metadata i8 %273, metadata !1482, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 %272, metadata !1486, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8 %271, metadata !1488, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8* %270, metadata !1490, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %269, metadata !1491, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i32 undef, metadata !1497, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 undef, metadata !1494, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i64 %268, metadata !1492, metadata !DIExpression()), !dbg !1586
  %274 = icmp ult i64 %268, %0, !dbg !1745
  %275 = icmp ne i64 %272, 0, !dbg !1587
  %276 = and i1 %274, %275, !dbg !1587
  br i1 %276, label %60, label %50, !dbg !1579, !llvm.loop !1746

277:                                              ; preds = %50, %8
  %278 = phi i8 [ 1, %8 ], [ %52, %50 ], !dbg !1582
  call void @llvm.dbg.value(metadata i8 %278, metadata !1482, metadata !DIExpression()), !dbg !1525
  tail call void @free(i8* %10) #18, !dbg !1748
  tail call void @free(i8* %4) #18, !dbg !1749
  %279 = and i8 %278, 1, !dbg !1750
  %280 = icmp ne i8 %279, 0, !dbg !1750
  ret i1 %280, !dbg !1751
}

; Function Attrs: nounwind
declare !dbg !148 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !168 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !169 i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @write_error() unnamed_addr #0 !dbg !1752 {
  %1 = tail call i32* @__errno_location() #24, !dbg !1753
  %2 = load i32, i32* %1, align 4, !dbg !1753, !tbaa !1235
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #18, !dbg !1753
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %2, i8* %3) #18, !dbg !1753
  unreachable, !dbg !1753
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !160 void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1754 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1756, metadata !DIExpression()), !dbg !1757
  store i8* %0, i8** @file_name, align 8, !dbg !1758, !tbaa !1150
  ret void, !dbg !1759
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1760 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1764, metadata !DIExpression()), !dbg !1765
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1766, !tbaa !1767
  ret void, !dbg !1769
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1770 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1775, !tbaa !1150
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #18, !dbg !1776
  %3 = icmp eq i32 %2, 0, !dbg !1777
  br i1 %3, label %22, label %4, !dbg !1778

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1779, !tbaa !1767, !range !1780
  %6 = icmp eq i8 %5, 0, !dbg !1779
  br i1 %6, label %11, label %7, !dbg !1781

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1782
  %9 = load i32, i32* %8, align 4, !dbg !1782, !tbaa !1235
  %10 = icmp eq i32 %9, 32, !dbg !1783
  br i1 %10, label %22, label %11, !dbg !1784

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i32 5) #18, !dbg !1785
  call void @llvm.dbg.value(metadata i8* %12, metadata !1772, metadata !DIExpression()), !dbg !1786
  %13 = load i8*, i8** @file_name, align 8, !dbg !1787, !tbaa !1150
  %14 = icmp eq i8* %13, null, !dbg !1787
  %15 = tail call i32* @__errno_location() #24, !dbg !1789
  %16 = load i32, i32* %15, align 4, !dbg !1789, !tbaa !1235
  br i1 %14, label %19, label %17, !dbg !1790

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #18, !dbg !1791
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.49, i64 0, i64 0), i8* %18, i8* %12) #18, !dbg !1792
  br label %20, !dbg !1792

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.50, i64 0, i64 0), i8* %12) #18, !dbg !1793
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1794, !tbaa !1235
  tail call void @_exit(i32 %21) #22, !dbg !1795
  unreachable, !dbg !1795

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1796, !tbaa !1150
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #18, !dbg !1798
  %25 = icmp eq i32 %24, 0, !dbg !1799
  br i1 %25, label %28, label %26, !dbg !1800

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1801, !tbaa !1235
  tail call void @_exit(i32 %27) #22, !dbg !1802
  unreachable, !dbg !1802

28:                                               ; preds = %22
  ret void, !dbg !1803
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1804 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1810, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i64 %1, metadata !1811, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i64 %2, metadata !1812, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 %3, metadata !1813, metadata !DIExpression()), !dbg !1816
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #18, !dbg !1817
  call void @llvm.dbg.value(metadata i32 %5, metadata !1814, metadata !DIExpression()), !dbg !1818
  ret void, !dbg !1819
}

; Function Attrs: nounwind
declare !dbg !419 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1820 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1826, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i32 %1, metadata !1827, metadata !DIExpression()), !dbg !1828
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1829
  br i1 %3, label %7, label %4, !dbg !1831

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !1832
  call void @llvm.dbg.value(metadata i32 %5, metadata !1810, metadata !DIExpression()) #18, !dbg !1833
  call void @llvm.dbg.value(metadata i64 0, metadata !1811, metadata !DIExpression()) #18, !dbg !1833
  call void @llvm.dbg.value(metadata i64 0, metadata !1812, metadata !DIExpression()) #18, !dbg !1833
  call void @llvm.dbg.value(metadata i32 %1, metadata !1813, metadata !DIExpression()) #18, !dbg !1833
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #18, !dbg !1835
  call void @llvm.dbg.value(metadata i32 %6, metadata !1814, metadata !DIExpression()) #18, !dbg !1836
  br label %7, !dbg !1837

7:                                                ; preds = %2, %4
  ret void, !dbg !1838
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1839 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1841, metadata !DIExpression()), !dbg !1844
  %2 = icmp eq i8* %0, null, !dbg !1845
  br i1 %2, label %3, label %6, !dbg !1847

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1848, !tbaa !1150
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.59, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !1850
  tail call void @abort() #22, !dbg !1851
  unreachable, !dbg !1851

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !1852
  call void @llvm.dbg.value(metadata i8* %7, metadata !1842, metadata !DIExpression()), !dbg !1844
  %8 = icmp eq i8* %7, null, !dbg !1853
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1854
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1854
  call void @llvm.dbg.value(metadata i8* %10, metadata !1843, metadata !DIExpression()), !dbg !1844
  %11 = ptrtoint i8* %10 to i64, !dbg !1855
  %12 = ptrtoint i8* %0 to i64, !dbg !1855
  %13 = sub i64 %11, %12, !dbg !1855
  %14 = icmp sgt i64 %13, 6, !dbg !1857
  br i1 %14, label %15, label %24, !dbg !1858

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1859
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.60, i64 0, i64 0), i64 7) #21, !dbg !1860
  %18 = icmp eq i32 %17, 0, !dbg !1861
  br i1 %18, label %19, label %24, !dbg !1862

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1841, metadata !DIExpression()), !dbg !1844
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.61, i64 0, i64 0), i64 3) #21, !dbg !1863
  %21 = icmp eq i32 %20, 0, !dbg !1866
  br i1 %21, label %22, label %24, !dbg !1867

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1868
  call void @llvm.dbg.value(metadata i8* %23, metadata !1841, metadata !DIExpression()), !dbg !1844
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1870, !tbaa !1150
  br label %24, !dbg !1871

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1841, metadata !DIExpression()), !dbg !1844
  store i8* %25, i8** @program_name, align 8, !dbg !1872, !tbaa !1150
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1873, !tbaa !1150
  ret void, !dbg !1874
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1875 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1880, metadata !DIExpression()), !dbg !1883
  %2 = tail call i32* @__errno_location() #24, !dbg !1884
  %3 = load i32, i32* %2, align 4, !dbg !1884, !tbaa !1235
  call void @llvm.dbg.value(metadata i32 %3, metadata !1881, metadata !DIExpression()), !dbg !1883
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1885
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1885
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1885
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #18, !dbg !1886
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1886
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1882, metadata !DIExpression()), !dbg !1883
  store i32 %3, i32* %2, align 4, !dbg !1887, !tbaa !1235
  ret %struct.quoting_options* %8, !dbg !1888
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !1889 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1893, metadata !DIExpression()), !dbg !1894
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1895
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1895
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1896
  %5 = load i32, i32* %4, align 8, !dbg !1896, !tbaa !1897
  ret i32 %5, !dbg !1899
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1900 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1904, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i32 %1, metadata !1905, metadata !DIExpression()), !dbg !1906
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1907
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1907
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1908
  store i32 %1, i32* %5, align 8, !dbg !1909, !tbaa !1897
  ret void, !dbg !1910
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #14 !dbg !1911 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1915, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 %1, metadata !1916, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 %2, metadata !1917, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 %1, metadata !1918, metadata !DIExpression()), !dbg !1923
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1924
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1924
  %6 = lshr i8 %1, 5, !dbg !1925
  %7 = zext i8 %6 to i64, !dbg !1925
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1926
  call void @llvm.dbg.value(metadata i32* %8, metadata !1919, metadata !DIExpression()), !dbg !1923
  %9 = and i8 %1, 31, !dbg !1927
  %10 = zext i8 %9 to i32, !dbg !1927
  call void @llvm.dbg.value(metadata i32 %10, metadata !1921, metadata !DIExpression()), !dbg !1923
  %11 = load i32, i32* %8, align 4, !dbg !1928, !tbaa !1235
  %12 = lshr i32 %11, %10, !dbg !1929
  %13 = and i32 %12, 1, !dbg !1930
  call void @llvm.dbg.value(metadata i32 %13, metadata !1922, metadata !DIExpression()), !dbg !1923
  %14 = and i32 %2, 1, !dbg !1931
  %15 = xor i32 %13, %14, !dbg !1932
  %16 = shl i32 %15, %10, !dbg !1933
  %17 = xor i32 %16, %11, !dbg !1934
  store i32 %17, i32* %8, align 4, !dbg !1934, !tbaa !1235
  ret i32 %13, !dbg !1935
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !1936 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1940, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i32 %1, metadata !1941, metadata !DIExpression()), !dbg !1943
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1944
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1946
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1940, metadata !DIExpression()), !dbg !1943
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1947
  %6 = load i32, i32* %5, align 4, !dbg !1947, !tbaa !1948
  call void @llvm.dbg.value(metadata i32 %6, metadata !1942, metadata !DIExpression()), !dbg !1943
  store i32 %1, i32* %5, align 4, !dbg !1949, !tbaa !1948
  ret i32 %6, !dbg !1950
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1951 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1955, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %1, metadata !1956, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %2, metadata !1957, metadata !DIExpression()), !dbg !1958
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1959
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1961
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1955, metadata !DIExpression()), !dbg !1958
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1962
  store i32 10, i32* %6, align 8, !dbg !1963, !tbaa !1897
  %7 = icmp ne i8* %1, null, !dbg !1964
  %8 = icmp ne i8* %2, null, !dbg !1966
  %9 = and i1 %7, %8, !dbg !1967
  br i1 %9, label %11, label %10, !dbg !1967

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !1968
  unreachable, !dbg !1968

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1969
  store i8* %1, i8** %12, align 8, !dbg !1970, !tbaa !1971
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1972
  store i8* %2, i8** %13, align 8, !dbg !1973, !tbaa !1974
  ret void, !dbg !1975
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1976 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1980, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i64 %1, metadata !1981, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8* %2, metadata !1982, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i64 %3, metadata !1983, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1984, metadata !DIExpression()), !dbg !1988
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1989
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1989
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1985, metadata !DIExpression()), !dbg !1988
  %8 = tail call i32* @__errno_location() #24, !dbg !1990
  %9 = load i32, i32* %8, align 4, !dbg !1990, !tbaa !1235
  call void @llvm.dbg.value(metadata i32 %9, metadata !1986, metadata !DIExpression()), !dbg !1988
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1991
  %11 = load i32, i32* %10, align 8, !dbg !1991, !tbaa !1897
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1992
  %13 = load i32, i32* %12, align 4, !dbg !1992, !tbaa !1948
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1993
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1994
  %16 = load i8*, i8** %15, align 8, !dbg !1994, !tbaa !1971
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1995
  %18 = load i8*, i8** %17, align 8, !dbg !1995, !tbaa !1974
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1996
  call void @llvm.dbg.value(metadata i64 %19, metadata !1987, metadata !DIExpression()), !dbg !1988
  store i32 %9, i32* %8, align 4, !dbg !1997, !tbaa !1235
  ret i64 %19, !dbg !1998
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1999 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2005, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %1, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %2, metadata !2007, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %3, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 %4, metadata !2009, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 %5, metadata !2010, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32* %6, metadata !2011, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %7, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %8, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 0, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 0, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* null, metadata !2017, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 0, metadata !2018, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 0, metadata !2019, metadata !DIExpression()), !dbg !2063
  %13 = tail call i64 @__ctype_get_mb_cur_max() #18, !dbg !2064
  %14 = icmp eq i64 %13, 1, !dbg !2065
  call void @llvm.dbg.value(metadata i1 %14, metadata !2020, metadata !DIExpression()), !dbg !2063
  %15 = lshr i32 %5, 1, !dbg !2066
  %16 = trunc i32 %15 to i8, !dbg !2066
  %17 = and i8 %16, 1, !dbg !2066
  call void @llvm.dbg.value(metadata i8 %17, metadata !2021, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 0, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 0, metadata !2023, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 1, metadata !2024, metadata !DIExpression()), !dbg !2063
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2067
  %19 = and i32 %5, 4, !dbg !2069
  %20 = icmp eq i32 %19, 0, !dbg !2069
  %21 = and i32 %5, 1, !dbg !2072
  %22 = icmp eq i32 %21, 0, !dbg !2072
  %23 = bitcast i64* %10 to i8*, !dbg !2075
  %24 = bitcast i32* %12 to i8*, !dbg !2076
  %25 = icmp eq i32* %6, null, !dbg !2077
  br label %26, !dbg !2079

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2080
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2081
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2082
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2083
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2063
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2084
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2085
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2086
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %38, metadata !2024, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %37, metadata !2023, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %36, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %35, metadata !2021, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %34, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %33, metadata !2019, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %32, metadata !2018, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %31, metadata !2017, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %30, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 0, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %29, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %28, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 %27, metadata !2009, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.label(metadata !2057), !dbg !2087
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
  ], !dbg !2088

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2009, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 1, metadata !2021, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %35, metadata !2021, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 5, metadata !2009, metadata !DIExpression()), !dbg !2063
  br label %92, !dbg !2089

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2021, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 5, metadata !2009, metadata !DIExpression()), !dbg !2063
  %42 = and i8 %35, 1, !dbg !2091
  %43 = icmp eq i8 %42, 0, !dbg !2091
  br i1 %43, label %44, label %92, !dbg !2089

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2093
  br i1 %45, label %92, label %46, !dbg !2096

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2093, !tbaa !1222
  br label %92, !dbg !2093

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.72, i64 0, i64 0), i32 %27), !dbg !2097
  call void @llvm.dbg.value(metadata i8* %48, metadata !2012, metadata !DIExpression()), !dbg !2063
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), i32 %27), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %49, metadata !2013, metadata !DIExpression()), !dbg !2063
  br label %50, !dbg !2102

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %51, metadata !2012, metadata !DIExpression()), !dbg !2063
  %53 = and i8 %35, 1, !dbg !2103
  %54 = icmp eq i8 %53, 0, !dbg !2103
  br i1 %54, label %55, label %70, !dbg !2105

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2017, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 0, metadata !2015, metadata !DIExpression()), !dbg !2063
  %56 = load i8, i8* %51, align 1, !dbg !2106, !tbaa !1222
  %57 = icmp eq i8 %56, 0, !dbg !2109
  br i1 %57, label %70, label %58, !dbg !2109

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2017, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %61, metadata !2015, metadata !DIExpression()), !dbg !2063
  %62 = icmp ult i64 %61, %39, !dbg !2110
  br i1 %62, label %63, label %65, !dbg !2113

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2110
  store i8 %59, i8* %64, align 1, !dbg !2110, !tbaa !1222
  br label %65, !dbg !2110

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2113
  call void @llvm.dbg.value(metadata i64 %66, metadata !2015, metadata !DIExpression()), !dbg !2063
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2114
  call void @llvm.dbg.value(metadata i8* %67, metadata !2017, metadata !DIExpression()), !dbg !2063
  %68 = load i8, i8* %67, align 1, !dbg !2106, !tbaa !1222
  %69 = icmp eq i8 %68, 0, !dbg !2109
  br i1 %69, label %70, label %58, !dbg !2109, !llvm.loop !2115

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2117
  call void @llvm.dbg.value(metadata i64 %71, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 1, metadata !2019, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %52, metadata !2017, metadata !DIExpression()), !dbg !2063
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %72, metadata !2018, metadata !DIExpression()), !dbg !2063
  br label %92, !dbg !2119

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2019, metadata !DIExpression()), !dbg !2063
  br label %74, !dbg !2120

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2063
  call void @llvm.dbg.value(metadata i8 %75, metadata !2019, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 1, metadata !2021, metadata !DIExpression()), !dbg !2063
  br label %76, !dbg !2121

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2083
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2063
  call void @llvm.dbg.value(metadata i8 %78, metadata !2021, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %77, metadata !2019, metadata !DIExpression()), !dbg !2063
  %79 = and i8 %78, 1, !dbg !2122
  %80 = icmp eq i8 %79, 0, !dbg !2122
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2124
  br label %82, !dbg !2124

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2063
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2066
  call void @llvm.dbg.value(metadata i8 %84, metadata !2021, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %83, metadata !2019, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 2, metadata !2009, metadata !DIExpression()), !dbg !2063
  %85 = and i8 %84, 1, !dbg !2125
  %86 = icmp eq i8 %85, 0, !dbg !2125
  br i1 %86, label %87, label %92, !dbg !2127

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2128
  br i1 %88, label %92, label %89, !dbg !2131

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2128, !tbaa !1222
  br label %92, !dbg !2128

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2021, metadata !DIExpression()), !dbg !2063
  br label %92, !dbg !2132

91:                                               ; preds = %26
  call void @abort() #22, !dbg !2133
  unreachable, !dbg !2133

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2117
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %40 ], !dbg !2063
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2063
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2063
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2063
  call void @llvm.dbg.value(metadata i8 %100, metadata !2021, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %99, metadata !2019, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %98, metadata !2018, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %97, metadata !2017, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %96, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 %93, metadata !2009, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 0, metadata !2014, metadata !DIExpression()), !dbg !2063
  %101 = and i8 %99, 1, !dbg !2134
  %102 = icmp ne i8 %101, 0, !dbg !2134
  %103 = icmp ne i32 %93, 2, !dbg !2134
  %104 = and i1 %103, %102, !dbg !2134
  %105 = icmp ne i64 %98, 0, !dbg !2134
  %106 = and i1 %105, %104, !dbg !2134
  %107 = icmp ugt i64 %98, 1, !dbg !2134
  %108 = and i8 %100, 1, !dbg !2136
  %109 = icmp eq i8 %108, 0, !dbg !2136
  %110 = icmp eq i32 %93, 2, !dbg !2139
  %111 = or i1 %103, %109, !dbg !2141
  %112 = icmp ne i8 %108, 0, !dbg !2143
  %113 = and i1 %110, %112, !dbg !2143
  %114 = xor i1 %102, true, !dbg !2144
  %115 = xor i1 %104, true, !dbg !2077
  %116 = and i1 %109, %115, !dbg !2077
  %117 = or i1 %25, %116, !dbg !2077
  %118 = and i8 %99, %100, !dbg !2145
  %119 = and i8 %118, 1, !dbg !2145
  %120 = icmp ne i8 %119, 0, !dbg !2145
  %121 = and i1 %120, %105, !dbg !2145
  br label %122, !dbg !2147

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2148
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2117
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2080
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2084
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2085
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2086
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %129, metadata !2024, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %128, metadata !2023, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %127, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %126, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %125, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %123, metadata !2014, metadata !DIExpression()), !dbg !2063
  %131 = icmp eq i64 %126, -1, !dbg !2149
  br i1 %131, label %132, label %136, !dbg !2150

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2151
  %134 = load i8, i8* %133, align 1, !dbg !2151, !tbaa !1222
  %135 = icmp eq i8 %134, 0, !dbg !2152
  br i1 %135, label %581, label %138, !dbg !2153

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2154
  br i1 %137, label %581, label %138, !dbg !2153

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2030, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 0, metadata !2031, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 0, metadata !2032, metadata !DIExpression()), !dbg !2155
  br i1 %106, label %139, label %154, !dbg !2156

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2157
  %141 = and i1 %107, %131, !dbg !2158
  br i1 %141, label %142, label %144, !dbg !2158

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !2159
  call void @llvm.dbg.value(metadata i64 %143, metadata !2008, metadata !DIExpression()), !dbg !2063
  br label %144, !dbg !2160

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2008, metadata !DIExpression()), !dbg !2063
  %146 = icmp ugt i64 %140, %145, !dbg !2161
  br i1 %146, label %154, label %147, !dbg !2162

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2163
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2164
  %150 = icmp ne i32 %149, 0, !dbg !2165
  %151 = or i1 %150, %109, !dbg !2166
  %152 = xor i1 %150, true, !dbg !2166
  %153 = zext i1 %152 to i8, !dbg !2166
  br i1 %151, label %154, label %639, !dbg !2166

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2155
  call void @llvm.dbg.value(metadata i8 %156, metadata !2030, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i64 %155, metadata !2008, metadata !DIExpression()), !dbg !2063
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2167
  %158 = load i8, i8* %157, align 1, !dbg !2167, !tbaa !1222
  call void @llvm.dbg.value(metadata i8 %158, metadata !2025, metadata !DIExpression()), !dbg !2155
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
  ], !dbg !2168

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2169

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2170

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2031, metadata !DIExpression()), !dbg !2155
  %162 = and i8 %127, 1, !dbg !2173
  %163 = icmp eq i8 %162, 0, !dbg !2173
  %164 = and i1 %110, %163, !dbg !2173
  br i1 %164, label %165, label %181, !dbg !2173

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2175
  br i1 %166, label %167, label %169, !dbg !2179

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2175
  store i8 39, i8* %168, align 1, !dbg !2175, !tbaa !1222
  br label %169, !dbg !2175

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2179
  call void @llvm.dbg.value(metadata i64 %170, metadata !2015, metadata !DIExpression()), !dbg !2063
  %171 = icmp ult i64 %170, %130, !dbg !2180
  br i1 %171, label %172, label %174, !dbg !2183

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2180
  store i8 36, i8* %173, align 1, !dbg !2180, !tbaa !1222
  br label %174, !dbg !2180

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %175, metadata !2015, metadata !DIExpression()), !dbg !2063
  %176 = icmp ult i64 %175, %130, !dbg !2184
  br i1 %176, label %177, label %179, !dbg !2187

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2184
  store i8 39, i8* %178, align 1, !dbg !2184, !tbaa !1222
  br label %179, !dbg !2184

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %180, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 1, metadata !2022, metadata !DIExpression()), !dbg !2063
  br label %181, !dbg !2188

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2063
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2063
  call void @llvm.dbg.value(metadata i8 %183, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %182, metadata !2015, metadata !DIExpression()), !dbg !2063
  %184 = icmp ult i64 %182, %130, !dbg !2189
  br i1 %184, label %185, label %187, !dbg !2192

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2189
  store i8 92, i8* %186, align 1, !dbg !2189, !tbaa !1222
  br label %187, !dbg !2189

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2192
  call void @llvm.dbg.value(metadata i64 %188, metadata !2015, metadata !DIExpression()), !dbg !2063
  br i1 %103, label %189, label %463, !dbg !2193

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2195
  %191 = icmp ult i64 %190, %155, !dbg !2196
  br i1 %191, label %192, label %463, !dbg !2197

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2198
  %194 = load i8, i8* %193, align 1, !dbg !2198, !tbaa !1222
  %195 = add i8 %194, -48, !dbg !2199
  %196 = icmp ult i8 %195, 10, !dbg !2199
  br i1 %196, label %197, label %463, !dbg !2199

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2200
  br i1 %198, label %199, label %201, !dbg !2204

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2200
  store i8 48, i8* %200, align 1, !dbg !2200, !tbaa !1222
  br label %201, !dbg !2200

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %202, metadata !2015, metadata !DIExpression()), !dbg !2063
  %203 = icmp ult i64 %202, %130, !dbg !2205
  br i1 %203, label %204, label %206, !dbg !2208

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2205
  store i8 48, i8* %205, align 1, !dbg !2205, !tbaa !1222
  br label %206, !dbg !2205

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %207, metadata !2015, metadata !DIExpression()), !dbg !2063
  br label %463, !dbg !2209

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2210

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2211

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2212

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2213

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2214
  %214 = icmp ult i64 %213, %155, !dbg !2215
  br i1 %214, label %215, label %463, !dbg !2216

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2217
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2218
  %218 = load i8, i8* %217, align 1, !dbg !2218, !tbaa !1222
  %219 = icmp eq i8 %218, 63, !dbg !2219
  br i1 %219, label %220, label %463, !dbg !2220

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2221
  %222 = load i8, i8* %221, align 1, !dbg !2221, !tbaa !1222
  %223 = sext i8 %222 to i32, !dbg !2221
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
  ], !dbg !2222

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2223

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2025, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i64 %213, metadata !2014, metadata !DIExpression()), !dbg !2063
  %226 = icmp ult i64 %124, %130, !dbg !2225
  br i1 %226, label %227, label %229, !dbg !2228

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2225
  store i8 63, i8* %228, align 1, !dbg !2225, !tbaa !1222
  br label %229, !dbg !2225

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2228
  call void @llvm.dbg.value(metadata i64 %230, metadata !2015, metadata !DIExpression()), !dbg !2063
  %231 = icmp ult i64 %230, %130, !dbg !2229
  br i1 %231, label %232, label %234, !dbg !2232

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2229
  store i8 34, i8* %233, align 1, !dbg !2229, !tbaa !1222
  br label %234, !dbg !2229

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %235, metadata !2015, metadata !DIExpression()), !dbg !2063
  %236 = icmp ult i64 %235, %130, !dbg !2233
  br i1 %236, label %237, label %239, !dbg !2236

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2233
  store i8 34, i8* %238, align 1, !dbg !2233, !tbaa !1222
  br label %239, !dbg !2233

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2236
  call void @llvm.dbg.value(metadata i64 %240, metadata !2015, metadata !DIExpression()), !dbg !2063
  %241 = icmp ult i64 %240, %130, !dbg !2237
  br i1 %241, label %242, label %244, !dbg !2240

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2237
  store i8 63, i8* %243, align 1, !dbg !2237, !tbaa !1222
  br label %244, !dbg !2237

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %245, metadata !2015, metadata !DIExpression()), !dbg !2063
  br label %463, !dbg !2241

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2029, metadata !DIExpression()), !dbg !2155
  br label %256, !dbg !2242

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2029, metadata !DIExpression()), !dbg !2155
  br label %256, !dbg !2243

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2029, metadata !DIExpression()), !dbg !2155
  br label %254, !dbg !2244

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2029, metadata !DIExpression()), !dbg !2155
  br label %254, !dbg !2245

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2029, metadata !DIExpression()), !dbg !2155
  br label %256, !dbg !2246

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2029, metadata !DIExpression()), !dbg !2155
  br i1 %110, label %252, label %253, !dbg !2247

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2248

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2251

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2252
  call void @llvm.dbg.value(metadata i8 %255, metadata !2029, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.label(metadata !2058), !dbg !2253
  br i1 %111, label %256, label %625, !dbg !2254

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2252
  call void @llvm.dbg.value(metadata i8 %257, metadata !2029, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.label(metadata !2059), !dbg !2256
  br i1 %102, label %488, label %463, !dbg !2257

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2258

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2259, !tbaa !1222
  %261 = icmp eq i8 %260, 0, !dbg !2260
  br i1 %261, label %262, label %463, !dbg !2261

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2262
  br i1 %263, label %264, label %463, !dbg !2264

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2032, metadata !DIExpression()), !dbg !2155
  br label %265, !dbg !2265

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2155
  call void @llvm.dbg.value(metadata i8 %266, metadata !2032, metadata !DIExpression()), !dbg !2155
  br i1 %111, label %463, label %625, !dbg !2266

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2023, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 1, metadata !2032, metadata !DIExpression()), !dbg !2155
  br i1 %110, label %268, label %463, !dbg !2267

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2268

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2270
  %271 = icmp ne i64 %125, 0, !dbg !2272
  %272 = or i1 %271, %270, !dbg !2273
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2273
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2273
  call void @llvm.dbg.value(metadata i64 %274, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %273, metadata !2016, metadata !DIExpression()), !dbg !2063
  %275 = icmp ult i64 %124, %274, !dbg !2274
  br i1 %275, label %276, label %278, !dbg !2277

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2274
  store i8 39, i8* %277, align 1, !dbg !2274, !tbaa !1222
  br label %278, !dbg !2274

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %279, metadata !2015, metadata !DIExpression()), !dbg !2063
  %280 = icmp ult i64 %279, %274, !dbg !2278
  br i1 %280, label %281, label %283, !dbg !2281

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2278
  store i8 92, i8* %282, align 1, !dbg !2278, !tbaa !1222
  br label %283, !dbg !2278

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2281
  call void @llvm.dbg.value(metadata i64 %284, metadata !2015, metadata !DIExpression()), !dbg !2063
  %285 = icmp ult i64 %284, %274, !dbg !2282
  br i1 %285, label %286, label %288, !dbg !2285

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2282
  store i8 39, i8* %287, align 1, !dbg !2282, !tbaa !1222
  br label %288, !dbg !2282

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2285
  call void @llvm.dbg.value(metadata i64 %289, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 0, metadata !2022, metadata !DIExpression()), !dbg !2063
  br label %463, !dbg !2286

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2287

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2033, metadata !DIExpression()), !dbg !2288
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !2289
  %293 = load i16*, i16** %292, align 8, !dbg !2289, !tbaa !1150
  %294 = zext i8 %158 to i64, !dbg !2289
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2289
  %296 = load i16, i16* %295, align 2, !dbg !2289, !tbaa !2291
  %297 = lshr i16 %296, 14, !dbg !2292
  %298 = trunc i16 %297 to i8, !dbg !2292
  %299 = and i8 %298, 1, !dbg !2292
  call void @llvm.dbg.value(metadata i8 %299, metadata !2036, metadata !DIExpression()), !dbg !2288
  br label %355, !dbg !2293

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2294
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2037, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %23, metadata !2296, metadata !DIExpression()) #18, !dbg !2304
  call void @llvm.dbg.value(metadata i32 0, metadata !2302, metadata !DIExpression()) #18, !dbg !2304
  call void @llvm.dbg.value(metadata i64 8, metadata !2303, metadata !DIExpression()) #18, !dbg !2304
  store i64 0, i64* %10, align 8, !dbg !2306
  call void @llvm.dbg.value(metadata i64 0, metadata !2033, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i8 1, metadata !2036, metadata !DIExpression()), !dbg !2288
  %301 = icmp eq i64 %155, -1, !dbg !2307
  br i1 %301, label %302, label %304, !dbg !2309

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !2310
  call void @llvm.dbg.value(metadata i64 %303, metadata !2008, metadata !DIExpression()), !dbg !2063
  br label %304, !dbg !2311

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2155
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  br label %306, !dbg !2312

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2313
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2314
  call void @llvm.dbg.value(metadata i8 %308, metadata !2036, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i64 %307, metadata !2033, metadata !DIExpression()), !dbg !2288
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2315
  %309 = add i64 %307, %123, !dbg !2316
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2317
  %311 = sub i64 %305, %309, !dbg !2318
  call void @llvm.dbg.value(metadata i32* %12, metadata !2043, metadata !DIExpression(DW_OP_deref)), !dbg !2076
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #18, !dbg !2319
  call void @llvm.dbg.value(metadata i64 %312, metadata !2046, metadata !DIExpression()), !dbg !2076
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2320

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2033, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i64 %307, metadata !2033, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i64 %307, metadata !2033, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i64 %307, metadata !2033, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i64 %307, metadata !2033, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i64 %307, metadata !2033, metadata !DIExpression()), !dbg !2288
  %314 = icmp ugt i64 %305, %309, !dbg !2321
  br i1 %314, label %315, label %340, !dbg !2323

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2324
  br label %317, !dbg !2324

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2033, metadata !DIExpression()), !dbg !2288
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2325
  %321 = load i8, i8* %320, align 1, !dbg !2325, !tbaa !1222
  %322 = icmp eq i8 %321, 0, !dbg !2323
  br i1 %322, label %340, label %323, !dbg !2324

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %324, metadata !2033, metadata !DIExpression()), !dbg !2288
  %325 = add i64 %324, %123, !dbg !2327
  %326 = icmp ult i64 %325, %305, !dbg !2321
  br i1 %326, label %317, label %340, !dbg !2323, !llvm.loop !2328

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2329
  %329 = and i1 %113, %328, !dbg !2332
  call void @llvm.dbg.value(metadata i64 1, metadata !2047, metadata !DIExpression()), !dbg !2333
  br i1 %329, label %330, label %343, !dbg !2332

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2047, metadata !DIExpression()), !dbg !2333
  %332 = add i64 %331, %309, !dbg !2334
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2335
  %334 = load i8, i8* %333, align 1, !dbg !2335, !tbaa !1222
  %335 = sext i8 %334 to i32, !dbg !2335
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2336

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %337, metadata !2047, metadata !DIExpression()), !dbg !2333
  %338 = icmp eq i64 %337, %312, !dbg !2329
  br i1 %338, label %343, label %330, !dbg !2338, !llvm.loop !2339

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2033, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i8 %308, metadata !2036, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i64 %307, metadata !2033, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i8 %308, metadata !2036, metadata !DIExpression()), !dbg !2288
  br label %340, !dbg !2341

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2341
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2342, !tbaa !1235
  call void @llvm.dbg.value(metadata i32 %344, metadata !2043, metadata !DIExpression()), !dbg !2076
  %345 = call i32 @iswprint(i32 %344) #18, !dbg !2344
  %346 = icmp eq i32 %345, 0, !dbg !2344
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2345
  call void @llvm.dbg.value(metadata i8 %347, metadata !2036, metadata !DIExpression()), !dbg !2288
  %348 = add i64 %312, %307, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %348, metadata !2033, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i8 %347, metadata !2036, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i64 %348, metadata !2033, metadata !DIExpression()), !dbg !2288
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2341
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !2347
  %350 = icmp eq i32 %349, 0, !dbg !2348
  br i1 %350, label %306, label %351, !dbg !2349, !llvm.loop !2350

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2352
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 2, metadata !2009, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 2, metadata !2009, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 2, metadata !2009, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 2, metadata !2009, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 2, metadata !2009, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %99, metadata !2019, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %99, metadata !2019, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %99, metadata !2019, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %99, metadata !2019, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %99, metadata !2019, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 2, metadata !2009, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 2, metadata !2009, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 2, metadata !2009, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 2, metadata !2009, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 2, metadata !2009, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %99, metadata !2019, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %99, metadata !2019, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %99, metadata !2019, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %99, metadata !2019, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %99, metadata !2019, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %305, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2341
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2352
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2155
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2353
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2353
  call void @llvm.dbg.value(metadata i8 %358, metadata !2036, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i64 %357, metadata !2033, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i64 %356, metadata !2008, metadata !DIExpression()), !dbg !2063
  %359 = and i8 %358, 1, !dbg !2354
  %360 = icmp ne i8 %359, 0, !dbg !2354
  call void @llvm.dbg.value(metadata i8 %359, metadata !2032, metadata !DIExpression()), !dbg !2155
  %361 = icmp ult i64 %357, 2, !dbg !2355
  %362 = or i1 %360, %114, !dbg !2356
  %363 = and i1 %361, %362, !dbg !2357
  br i1 %363, label %463, label %364, !dbg !2357

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2358
  call void @llvm.dbg.value(metadata i64 %365, metadata !2054, metadata !DIExpression()), !dbg !2359
  br label %366, !dbg !2360

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2148
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2063
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2084
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2155
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2155
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2361
  call void @llvm.dbg.value(metadata i8 %372, metadata !2031, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %371, metadata !2030, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %370, metadata !2025, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %369, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %368, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %367, metadata !2014, metadata !DIExpression()), !dbg !2063
  br i1 %362, label %419, label %373, !dbg !2362

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2367

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2031, metadata !DIExpression()), !dbg !2155
  %375 = and i8 %369, 1, !dbg !2370
  %376 = icmp eq i8 %375, 0, !dbg !2370
  %377 = and i1 %110, %376, !dbg !2370
  br i1 %377, label %378, label %394, !dbg !2370

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2372
  br i1 %379, label %380, label %382, !dbg !2376

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2372
  store i8 39, i8* %381, align 1, !dbg !2372, !tbaa !1222
  br label %382, !dbg !2372

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %383, metadata !2015, metadata !DIExpression()), !dbg !2063
  %384 = icmp ult i64 %383, %130, !dbg !2377
  br i1 %384, label %385, label %387, !dbg !2380

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2377
  store i8 36, i8* %386, align 1, !dbg !2377, !tbaa !1222
  br label %387, !dbg !2377

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2380
  call void @llvm.dbg.value(metadata i64 %388, metadata !2015, metadata !DIExpression()), !dbg !2063
  %389 = icmp ult i64 %388, %130, !dbg !2381
  br i1 %389, label %390, label %392, !dbg !2384

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2381
  store i8 39, i8* %391, align 1, !dbg !2381, !tbaa !1222
  br label %392, !dbg !2381

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2384
  call void @llvm.dbg.value(metadata i64 %393, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 1, metadata !2022, metadata !DIExpression()), !dbg !2063
  br label %394, !dbg !2385

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2063
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2063
  call void @llvm.dbg.value(metadata i8 %396, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %395, metadata !2015, metadata !DIExpression()), !dbg !2063
  %397 = icmp ult i64 %395, %130, !dbg !2386
  br i1 %397, label %398, label %400, !dbg !2389

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2386
  store i8 92, i8* %399, align 1, !dbg !2386, !tbaa !1222
  br label %400, !dbg !2386

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2389
  call void @llvm.dbg.value(metadata i64 %401, metadata !2015, metadata !DIExpression()), !dbg !2063
  %402 = icmp ult i64 %401, %130, !dbg !2390
  br i1 %402, label %403, label %407, !dbg !2393

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2390
  %405 = or i8 %404, 48, !dbg !2390
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2390
  store i8 %405, i8* %406, align 1, !dbg !2390, !tbaa !1222
  br label %407, !dbg !2390

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2393
  call void @llvm.dbg.value(metadata i64 %408, metadata !2015, metadata !DIExpression()), !dbg !2063
  %409 = icmp ult i64 %408, %130, !dbg !2394
  br i1 %409, label %410, label %415, !dbg !2397

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2394
  %412 = and i8 %411, 7, !dbg !2394
  %413 = or i8 %412, 48, !dbg !2394
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2394
  store i8 %413, i8* %414, align 1, !dbg !2394, !tbaa !1222
  br label %415, !dbg !2394

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2397
  call void @llvm.dbg.value(metadata i64 %416, metadata !2015, metadata !DIExpression()), !dbg !2063
  %417 = and i8 %370, 7, !dbg !2398
  %418 = or i8 %417, 48, !dbg !2399
  call void @llvm.dbg.value(metadata i8 %418, metadata !2025, metadata !DIExpression()), !dbg !2155
  br label %428, !dbg !2400

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2401
  %421 = icmp eq i8 %420, 0, !dbg !2401
  br i1 %421, label %428, label %422, !dbg !2403

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2404
  br i1 %423, label %424, label %426, !dbg !2408

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2404
  store i8 92, i8* %425, align 1, !dbg !2404, !tbaa !1222
  br label %426, !dbg !2404

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2408
  call void @llvm.dbg.value(metadata i64 %427, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 0, metadata !2030, metadata !DIExpression()), !dbg !2155
  br label %428, !dbg !2409

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2063
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2084
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2155
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2155
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2155
  call void @llvm.dbg.value(metadata i8 %433, metadata !2031, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %432, metadata !2030, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %431, metadata !2025, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %430, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %429, metadata !2015, metadata !DIExpression()), !dbg !2063
  %434 = add i64 %367, 1, !dbg !2410
  %435 = icmp ugt i64 %365, %434, !dbg !2412
  br i1 %435, label %436, label %526, !dbg !2413

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2414
  %438 = icmp ne i8 %437, 0, !dbg !2414
  %439 = and i8 %433, 1, !dbg !2414
  %440 = icmp eq i8 %439, 0, !dbg !2414
  %441 = and i1 %438, %440, !dbg !2414
  br i1 %441, label %442, label %453, !dbg !2414

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2417
  br i1 %443, label %444, label %446, !dbg !2421

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2417
  store i8 39, i8* %445, align 1, !dbg !2417, !tbaa !1222
  br label %446, !dbg !2417

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2421
  call void @llvm.dbg.value(metadata i64 %447, metadata !2015, metadata !DIExpression()), !dbg !2063
  %448 = icmp ult i64 %447, %130, !dbg !2422
  br i1 %448, label %449, label %451, !dbg !2425

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2422
  store i8 39, i8* %450, align 1, !dbg !2422, !tbaa !1222
  br label %451, !dbg !2422

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2425
  call void @llvm.dbg.value(metadata i64 %452, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 0, metadata !2022, metadata !DIExpression()), !dbg !2063
  br label %453, !dbg !2426

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2427
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2063
  call void @llvm.dbg.value(metadata i8 %455, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %454, metadata !2015, metadata !DIExpression()), !dbg !2063
  %456 = icmp ult i64 %454, %130, !dbg !2428
  br i1 %456, label %457, label %459, !dbg !2431

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2428
  store i8 %431, i8* %458, align 1, !dbg !2428, !tbaa !1222
  br label %459, !dbg !2428

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2431
  call void @llvm.dbg.value(metadata i64 %460, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %434, metadata !2014, metadata !DIExpression()), !dbg !2063
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2432
  %462 = load i8, i8* %461, align 1, !dbg !2432, !tbaa !1222
  call void @llvm.dbg.value(metadata i8 %462, metadata !2025, metadata !DIExpression()), !dbg !2155
  br label %366, !dbg !2433, !llvm.loop !2434

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2148
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2063
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2080
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2437
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2063
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2063
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2155
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2155
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2155
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %472, metadata !2032, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %471, metadata !2031, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %156, metadata !2030, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %470, metadata !2025, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %469, metadata !2023, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %468, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %467, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %466, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %465, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %464, metadata !2014, metadata !DIExpression()), !dbg !2063
  br i1 %117, label %486, label %474, !dbg !2438

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2439
  %476 = zext i8 %475 to i64, !dbg !2439
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2440
  %478 = load i32, i32* %477, align 4, !dbg !2440, !tbaa !1235
  %479 = and i8 %470, 31, !dbg !2441
  %480 = zext i8 %479 to i32, !dbg !2441
  %481 = shl nuw i32 1, %480, !dbg !2442
  %482 = and i32 %478, %481, !dbg !2442
  %483 = icmp eq i32 %482, 0, !dbg !2442
  %484 = icmp eq i8 %156, 0, !dbg !2443
  %485 = and i1 %484, %483, !dbg !2444
  br i1 %485, label %526, label %488, !dbg !2444

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2443
  br i1 %487, label %526, label %488, !dbg !2445

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2446
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2063
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2080
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2437
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2084
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2085
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2155
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2155
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %496, metadata !2032, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %495, metadata !2025, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %494, metadata !2023, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %493, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %492, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %491, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %490, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %489, metadata !2014, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.label(metadata !2060), !dbg !2447
  br i1 %109, label %498, label %629, !dbg !2448

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2031, metadata !DIExpression()), !dbg !2155
  %499 = and i8 %493, 1, !dbg !2450
  %500 = icmp eq i8 %499, 0, !dbg !2450
  %501 = and i1 %110, %500, !dbg !2450
  br i1 %501, label %502, label %518, !dbg !2450

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2452
  br i1 %503, label %504, label %506, !dbg !2456

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2452
  store i8 39, i8* %505, align 1, !dbg !2452, !tbaa !1222
  br label %506, !dbg !2452

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2456
  call void @llvm.dbg.value(metadata i64 %507, metadata !2015, metadata !DIExpression()), !dbg !2063
  %508 = icmp ult i64 %507, %497, !dbg !2457
  br i1 %508, label %509, label %511, !dbg !2460

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2457
  store i8 36, i8* %510, align 1, !dbg !2457, !tbaa !1222
  br label %511, !dbg !2457

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2460
  call void @llvm.dbg.value(metadata i64 %512, metadata !2015, metadata !DIExpression()), !dbg !2063
  %513 = icmp ult i64 %512, %497, !dbg !2461
  br i1 %513, label %514, label %516, !dbg !2464

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2461
  store i8 39, i8* %515, align 1, !dbg !2461, !tbaa !1222
  br label %516, !dbg !2461

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %517, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 1, metadata !2022, metadata !DIExpression()), !dbg !2063
  br label %518, !dbg !2465

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2155
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2063
  call void @llvm.dbg.value(metadata i8 %520, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %519, metadata !2015, metadata !DIExpression()), !dbg !2063
  %521 = icmp ult i64 %519, %497, !dbg !2466
  br i1 %521, label %522, label %524, !dbg !2469

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2466
  store i8 92, i8* %523, align 1, !dbg !2466, !tbaa !1222
  br label %524, !dbg !2466

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2469
  call void @llvm.dbg.value(metadata i64 %525, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %536, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %535, metadata !2032, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %534, metadata !2031, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %533, metadata !2025, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %532, metadata !2023, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %531, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %530, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %529, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %528, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %527, metadata !2014, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.label(metadata !2061), !dbg !2470
  br label %553, !dbg !2471

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2446
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2063
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2080
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2437
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2084
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2085
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2474
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2155
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2155
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %535, metadata !2032, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %534, metadata !2031, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %533, metadata !2025, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %532, metadata !2023, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %531, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %530, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %529, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %528, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %527, metadata !2014, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.label(metadata !2061), !dbg !2470
  %537 = and i8 %531, 1, !dbg !2471
  %538 = icmp ne i8 %537, 0, !dbg !2471
  %539 = and i8 %534, 1, !dbg !2471
  %540 = icmp eq i8 %539, 0, !dbg !2471
  %541 = and i1 %538, %540, !dbg !2471
  br i1 %541, label %542, label %553, !dbg !2471

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2475
  br i1 %543, label %544, label %546, !dbg !2479

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2475
  store i8 39, i8* %545, align 1, !dbg !2475, !tbaa !1222
  br label %546, !dbg !2475

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2479
  call void @llvm.dbg.value(metadata i64 %547, metadata !2015, metadata !DIExpression()), !dbg !2063
  %548 = icmp ult i64 %547, %536, !dbg !2480
  br i1 %548, label %549, label %551, !dbg !2483

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2480
  store i8 39, i8* %550, align 1, !dbg !2480, !tbaa !1222
  br label %551, !dbg !2480

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2483
  call void @llvm.dbg.value(metadata i64 %552, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 0, metadata !2022, metadata !DIExpression()), !dbg !2063
  br label %553, !dbg !2484

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2155
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2063
  call void @llvm.dbg.value(metadata i8 %562, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %561, metadata !2015, metadata !DIExpression()), !dbg !2063
  %563 = icmp ult i64 %561, %554, !dbg !2485
  br i1 %563, label %564, label %566, !dbg !2488

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2485
  store i8 %556, i8* %565, align 1, !dbg !2485, !tbaa !1222
  br label %566, !dbg !2485

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2488
  call void @llvm.dbg.value(metadata i64 %567, metadata !2015, metadata !DIExpression()), !dbg !2063
  %568 = and i8 %555, 1, !dbg !2489
  %569 = icmp eq i8 %568, 0, !dbg !2489
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2491
  call void @llvm.dbg.value(metadata i8 %570, metadata !2024, metadata !DIExpression()), !dbg !2063
  br label %571, !dbg !2492

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2446
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2063
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2080
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2437
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2084
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2063
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2086
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %578, metadata !2024, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %577, metadata !2023, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %576, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %575, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %574, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %573, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %572, metadata !2014, metadata !DIExpression()), !dbg !2063
  %580 = add i64 %572, 1, !dbg !2493
  call void @llvm.dbg.value(metadata i64 %580, metadata !2014, metadata !DIExpression()), !dbg !2063
  br label %122, !dbg !2494, !llvm.loop !2495

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %125, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %125, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %127, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %127, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %128, metadata !2023, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %128, metadata !2023, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %129, metadata !2024, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %129, metadata !2024, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %125, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %125, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %127, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %127, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %128, metadata !2023, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %128, metadata !2023, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %129, metadata !2024, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %129, metadata !2024, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %125, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %125, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %127, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %127, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %128, metadata !2023, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %128, metadata !2023, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %129, metadata !2024, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %129, metadata !2024, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %125, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %125, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %127, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %127, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %128, metadata !2023, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %128, metadata !2023, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %129, metadata !2024, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %129, metadata !2024, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %125, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %125, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %582, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %582, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %127, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %127, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %128, metadata !2023, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %128, metadata !2023, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %129, metadata !2024, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %129, metadata !2024, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %125, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %125, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %582, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %582, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %127, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %127, metadata !2022, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %128, metadata !2023, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %128, metadata !2023, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %129, metadata !2024, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %129, metadata !2024, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  %583 = icmp eq i64 %124, 0, !dbg !2497
  %584 = and i1 %110, %583, !dbg !2499
  %585 = xor i1 %584, true, !dbg !2499
  %586 = or i1 %109, %585, !dbg !2499
  br i1 %586, label %587, label %629, !dbg !2499

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2500
  %589 = xor i1 %588, true, !dbg !2500
  %590 = and i8 %128, 1, !dbg !2502
  %591 = icmp eq i8 %590, 0, !dbg !2502
  %592 = or i1 %591, %589, !dbg !2500
  br i1 %592, label %602, label %593, !dbg !2500

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2503
  %595 = icmp eq i8 %594, 0, !dbg !2503
  br i1 %595, label %598, label %596, !dbg !2506

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %125, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %582, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %125, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %582, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %125, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %582, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %125, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %125, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %582, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %94, metadata !2012, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %95, metadata !2013, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %125, metadata !2016, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %582, metadata !2008, metadata !DIExpression()), !dbg !2063
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2507
  br label %645, !dbg !2508

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2509
  %600 = icmp ne i64 %125, 0, !dbg !2511
  %601 = and i1 %600, %599, !dbg !2512
  br i1 %601, label %26, label %602, !dbg !2512

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2017, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %97, metadata !2017, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %97, metadata !2017, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %97, metadata !2017, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %97, metadata !2017, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %97, metadata !2017, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %97, metadata !2017, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %97, metadata !2017, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %97, metadata !2017, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %97, metadata !2017, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %130, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %97, metadata !2017, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %97, metadata !2017, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  %603 = icmp ne i8* %97, null, !dbg !2513
  %604 = and i1 %603, %109, !dbg !2515
  br i1 %604, label %605, label %620, !dbg !2515

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2017, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %124, metadata !2015, metadata !DIExpression()), !dbg !2063
  %606 = load i8, i8* %97, align 1, !dbg !2516, !tbaa !1222
  %607 = icmp eq i8 %606, 0, !dbg !2519
  br i1 %607, label %620, label %608, !dbg !2519

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2017, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %611, metadata !2015, metadata !DIExpression()), !dbg !2063
  %612 = icmp ult i64 %611, %130, !dbg !2520
  br i1 %612, label %613, label %615, !dbg !2523

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2520
  store i8 %609, i8* %614, align 1, !dbg !2520, !tbaa !1222
  br label %615, !dbg !2520

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2523
  call void @llvm.dbg.value(metadata i64 %616, metadata !2015, metadata !DIExpression()), !dbg !2063
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2524
  call void @llvm.dbg.value(metadata i8* %617, metadata !2017, metadata !DIExpression()), !dbg !2063
  %618 = load i8, i8* %617, align 1, !dbg !2516, !tbaa !1222
  %619 = icmp eq i8 %618, 0, !dbg !2519
  br i1 %619, label %620, label %608, !dbg !2519, !llvm.loop !2525

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2117
  call void @llvm.dbg.value(metadata i64 %621, metadata !2015, metadata !DIExpression()), !dbg !2063
  %622 = icmp ult i64 %621, %130, !dbg !2527
  br i1 %622, label %623, label %645, !dbg !2529

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2530
  store i8 0, i8* %624, align 1, !dbg !2531, !tbaa !1222
  br label %645, !dbg !2530

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %630, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.label(metadata !2062), !dbg !2532
  %627 = icmp eq i8 %101, 0, !dbg !2533
  %628 = select i1 %627, i32 2, i32 4, !dbg !2533
  br label %635, !dbg !2533

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2006, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %630, metadata !2008, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.label(metadata !2062), !dbg !2532
  %632 = icmp eq i32 %93, 2, !dbg !2535
  %633 = icmp eq i8 %101, 0, !dbg !2533
  %634 = select i1 %633, i32 2, i32 4, !dbg !2533
  br i1 %632, label %635, label %639, !dbg !2533

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2533

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2009, metadata !DIExpression()), !dbg !2063
  %643 = and i32 %5, -3, !dbg !2536
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2537
  br label %645, !dbg !2538

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2539
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2540 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2544, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i32 %1, metadata !2545, metadata !DIExpression()), !dbg !2548
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #18, !dbg !2549
  call void @llvm.dbg.value(metadata i8* %3, metadata !2546, metadata !DIExpression()), !dbg !2548
  %4 = icmp eq i8* %3, %0, !dbg !2550
  br i1 %4, label %5, label %71, !dbg !2552

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #18, !dbg !2553
  call void @llvm.dbg.value(metadata i8* %6, metadata !2547, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i8* %6, metadata !2554, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8* undef, metadata !2560, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 85, metadata !2561, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 84, metadata !2562, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 70, metadata !2563, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 45, metadata !2564, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 56, metadata !2565, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 0, metadata !2566, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 0, metadata !2567, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 0, metadata !2568, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 0, metadata !2569, metadata !DIExpression()), !dbg !2570
  %7 = load i8, i8* %6, align 1, !dbg !2573, !tbaa !1222
  %8 = and i8 %7, -33, !dbg !2573
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2573

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2575, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8* undef, metadata !2580, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 84, metadata !2581, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 70, metadata !2582, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 45, metadata !2583, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 56, metadata !2584, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 0, metadata !2585, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 0, metadata !2586, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 0, metadata !2587, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 0, metadata !2588, metadata !DIExpression()), !dbg !2589
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2593
  %11 = load i8, i8* %10, align 1, !dbg !2593, !tbaa !1222
  %12 = and i8 %11, -33, !dbg !2593
  %13 = icmp eq i8 %12, 84, !dbg !2593
  br i1 %13, label %14, label %68, !dbg !2593

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2595, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8* undef, metadata !2600, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 70, metadata !2601, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 45, metadata !2602, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 56, metadata !2603, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 0, metadata !2604, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 0, metadata !2605, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 0, metadata !2606, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 0, metadata !2607, metadata !DIExpression()), !dbg !2608
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2612
  %16 = load i8, i8* %15, align 1, !dbg !2612, !tbaa !1222
  %17 = and i8 %16, -33, !dbg !2612
  %18 = icmp eq i8 %17, 70, !dbg !2612
  br i1 %18, label %19, label %68, !dbg !2612

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2614, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8* undef, metadata !2619, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8 45, metadata !2620, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8 56, metadata !2621, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8 0, metadata !2622, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8 0, metadata !2623, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8 0, metadata !2624, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8 0, metadata !2625, metadata !DIExpression()), !dbg !2626
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2630
  %21 = load i8, i8* %20, align 1, !dbg !2630, !tbaa !1222
  %22 = icmp eq i8 %21, 45, !dbg !2630
  br i1 %22, label %23, label %68, !dbg !2632

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2633, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8* undef, metadata !2638, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 56, metadata !2639, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 0, metadata !2640, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 0, metadata !2641, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 0, metadata !2642, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 0, metadata !2643, metadata !DIExpression()), !dbg !2644
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2648
  %25 = load i8, i8* %24, align 1, !dbg !2648, !tbaa !1222
  %26 = icmp eq i8 %25, 56, !dbg !2648
  br i1 %26, label %27, label %68, !dbg !2650

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2651, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8* undef, metadata !2656, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 0, metadata !2657, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 0, metadata !2658, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 0, metadata !2659, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 0, metadata !2660, metadata !DIExpression()), !dbg !2661
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2665
  %29 = load i8, i8* %28, align 1, !dbg !2665, !tbaa !1222
  %30 = icmp eq i8 %29, 0, !dbg !2665
  br i1 %30, label %31, label %68, !dbg !2667

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2668, !tbaa !1222
  %33 = icmp eq i8 %32, 96, !dbg !2669
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.75, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.76, i64 0, i64 0), !dbg !2668
  br label %71, !dbg !2670

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2575, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8* undef, metadata !2580, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 66, metadata !2581, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 49, metadata !2582, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 56, metadata !2583, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 48, metadata !2584, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 51, metadata !2585, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 48, metadata !2586, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 0, metadata !2587, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 0, metadata !2588, metadata !DIExpression()), !dbg !2671
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2675
  %37 = load i8, i8* %36, align 1, !dbg !2675, !tbaa !1222
  %38 = and i8 %37, -33, !dbg !2675
  %39 = icmp eq i8 %38, 66, !dbg !2675
  br i1 %39, label %40, label %68, !dbg !2675

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2595, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8* undef, metadata !2600, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8 49, metadata !2601, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8 56, metadata !2602, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8 48, metadata !2603, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8 51, metadata !2604, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8 48, metadata !2605, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8 0, metadata !2606, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8 0, metadata !2607, metadata !DIExpression()), !dbg !2676
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2678
  %42 = load i8, i8* %41, align 1, !dbg !2678, !tbaa !1222
  %43 = icmp eq i8 %42, 49, !dbg !2678
  br i1 %43, label %44, label %68, !dbg !2679

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2614, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8* undef, metadata !2619, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 56, metadata !2620, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 48, metadata !2621, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 51, metadata !2622, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 48, metadata !2623, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 0, metadata !2624, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8 0, metadata !2625, metadata !DIExpression()), !dbg !2680
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2682
  %46 = load i8, i8* %45, align 1, !dbg !2682, !tbaa !1222
  %47 = icmp eq i8 %46, 56, !dbg !2682
  br i1 %47, label %48, label %68, !dbg !2683

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2633, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i8* undef, metadata !2638, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i8 48, metadata !2639, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i8 51, metadata !2640, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i8 48, metadata !2641, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i8 0, metadata !2642, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i8 0, metadata !2643, metadata !DIExpression()), !dbg !2684
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2686
  %50 = load i8, i8* %49, align 1, !dbg !2686, !tbaa !1222
  %51 = icmp eq i8 %50, 48, !dbg !2686
  br i1 %51, label %52, label %68, !dbg !2687

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2651, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8* undef, metadata !2656, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 51, metadata !2657, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 48, metadata !2658, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 0, metadata !2659, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 0, metadata !2660, metadata !DIExpression()), !dbg !2688
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2690
  %54 = load i8, i8* %53, align 1, !dbg !2690, !tbaa !1222
  %55 = icmp eq i8 %54, 51, !dbg !2690
  br i1 %55, label %56, label %68, !dbg !2691

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2692, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* undef, metadata !2697, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 48, metadata !2698, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 0, metadata !2699, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 0, metadata !2700, metadata !DIExpression()), !dbg !2701
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2705
  %58 = load i8, i8* %57, align 1, !dbg !2705, !tbaa !1222
  %59 = icmp eq i8 %58, 48, !dbg !2705
  br i1 %59, label %60, label %68, !dbg !2707

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2708, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8* undef, metadata !2713, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 0, metadata !2714, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 0, metadata !2715, metadata !DIExpression()), !dbg !2716
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2720
  %62 = load i8, i8* %61, align 1, !dbg !2720, !tbaa !1222
  %63 = icmp eq i8 %62, 0, !dbg !2720
  br i1 %63, label %64, label %68, !dbg !2722

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2723, !tbaa !1222
  %66 = icmp eq i8 %65, 96, !dbg !2724
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.77, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.78, i64 0, i64 0), !dbg !2723
  br label %71, !dbg !2725

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2726
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), !dbg !2727
  br label %71, !dbg !2728

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2548
  ret i8* %72, !dbg !2729
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #15

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !355 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !359 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2730 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2734, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i64 %1, metadata !2735, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2736, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8* %0, metadata !2738, metadata !DIExpression()) #18, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %1, metadata !2743, metadata !DIExpression()) #18, !dbg !2751
  call void @llvm.dbg.value(metadata i64* null, metadata !2744, metadata !DIExpression()) #18, !dbg !2751
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2745, metadata !DIExpression()) #18, !dbg !2751
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2753
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2753
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2746, metadata !DIExpression()) #18, !dbg !2751
  %6 = tail call i32* @__errno_location() #24, !dbg !2754
  %7 = load i32, i32* %6, align 4, !dbg !2754, !tbaa !1235
  call void @llvm.dbg.value(metadata i32 %7, metadata !2747, metadata !DIExpression()) #18, !dbg !2751
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2755
  %9 = load i32, i32* %8, align 4, !dbg !2755, !tbaa !1948
  %10 = or i32 %9, 1, !dbg !2756
  call void @llvm.dbg.value(metadata i32 %10, metadata !2748, metadata !DIExpression()) #18, !dbg !2751
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2757
  %12 = load i32, i32* %11, align 8, !dbg !2757, !tbaa !1897
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2758
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2759
  %15 = load i8*, i8** %14, align 8, !dbg !2759, !tbaa !1971
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2760
  %17 = load i8*, i8** %16, align 8, !dbg !2760, !tbaa !1974
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #18, !dbg !2761
  %19 = add i64 %18, 1, !dbg !2762
  call void @llvm.dbg.value(metadata i64 %19, metadata !2749, metadata !DIExpression()) #18, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %19, metadata !2763, metadata !DIExpression()) #18, !dbg !2768
  %20 = tail call noalias i8* @xmalloc(i64 %19) #18, !dbg !2770
  call void @llvm.dbg.value(metadata i8* %20, metadata !2750, metadata !DIExpression()) #18, !dbg !2751
  %21 = load i32, i32* %11, align 8, !dbg !2771, !tbaa !1897
  %22 = load i8*, i8** %14, align 8, !dbg !2772, !tbaa !1971
  %23 = load i8*, i8** %16, align 8, !dbg !2773, !tbaa !1974
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #18, !dbg !2774
  store i32 %7, i32* %6, align 4, !dbg !2775, !tbaa !1235
  ret i8* %20, !dbg !2776
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2739 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2738, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64 %1, metadata !2743, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64* %2, metadata !2744, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2745, metadata !DIExpression()), !dbg !2777
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2778
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2778
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2746, metadata !DIExpression()), !dbg !2777
  %7 = tail call i32* @__errno_location() #24, !dbg !2779
  %8 = load i32, i32* %7, align 4, !dbg !2779, !tbaa !1235
  call void @llvm.dbg.value(metadata i32 %8, metadata !2747, metadata !DIExpression()), !dbg !2777
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2780
  %10 = load i32, i32* %9, align 4, !dbg !2780, !tbaa !1948
  %11 = icmp ne i64* %2, null, !dbg !2781
  %12 = xor i1 %11, true, !dbg !2781
  %13 = zext i1 %12 to i32, !dbg !2781
  %14 = or i32 %10, %13, !dbg !2782
  call void @llvm.dbg.value(metadata i32 %14, metadata !2748, metadata !DIExpression()), !dbg !2777
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2783
  %16 = load i32, i32* %15, align 8, !dbg !2783, !tbaa !1897
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2784
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2785
  %19 = load i8*, i8** %18, align 8, !dbg !2785, !tbaa !1971
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2786
  %21 = load i8*, i8** %20, align 8, !dbg !2786, !tbaa !1974
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2787
  %23 = add i64 %22, 1, !dbg !2788
  call void @llvm.dbg.value(metadata i64 %23, metadata !2749, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64 %23, metadata !2763, metadata !DIExpression()) #18, !dbg !2789
  %24 = tail call noalias i8* @xmalloc(i64 %23) #18, !dbg !2791
  call void @llvm.dbg.value(metadata i8* %24, metadata !2750, metadata !DIExpression()), !dbg !2777
  %25 = load i32, i32* %15, align 8, !dbg !2792, !tbaa !1897
  %26 = load i8*, i8** %18, align 8, !dbg !2793, !tbaa !1971
  %27 = load i8*, i8** %20, align 8, !dbg !2794, !tbaa !1974
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2795
  store i32 %8, i32* %7, align 4, !dbg !2796, !tbaa !1235
  br i1 %11, label %29, label %30, !dbg !2797

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2798, !tbaa !2800
  br label %30, !dbg !2801

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2802
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2803 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2807, !tbaa !1150
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2805, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i32 1, metadata !2806, metadata !DIExpression()), !dbg !2808
  %2 = load i32, i32* @nslots, align 4, !dbg !2809, !tbaa !1235
  %3 = icmp sgt i32 %2, 1, !dbg !2812
  br i1 %3, label %4, label %12, !dbg !2813

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2806, metadata !DIExpression()), !dbg !2808
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2814
  %7 = load i8*, i8** %6, align 8, !dbg !2814, !tbaa !2815
  tail call void @free(i8* %7) #18, !dbg !2817
  %8 = add nuw nsw i64 %5, 1, !dbg !2818
  call void @llvm.dbg.value(metadata i64 %8, metadata !2806, metadata !DIExpression()), !dbg !2808
  %9 = load i32, i32* @nslots, align 4, !dbg !2809, !tbaa !1235
  %10 = sext i32 %9 to i64, !dbg !2812
  %11 = icmp slt i64 %8, %10, !dbg !2812
  br i1 %11, label %4, label %12, !dbg !2813, !llvm.loop !2819

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2821
  %14 = load i8*, i8** %13, align 8, !dbg !2821, !tbaa !2815
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2823
  br i1 %15, label %17, label %16, !dbg !2824

16:                                               ; preds = %12
  tail call void @free(i8* %14) #18, !dbg !2825
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2827, !tbaa !2828
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2829, !tbaa !2815
  br label %17, !dbg !2830

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2831
  br i1 %18, label %21, label %19, !dbg !2833

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2834
  tail call void @free(i8* %20) #18, !dbg !2836
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2837, !tbaa !1150
  br label %21, !dbg !2838

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2839, !tbaa !1235
  ret void, !dbg !2840
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2841 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2843, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8* %1, metadata !2844, metadata !DIExpression()), !dbg !2845
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2846
  ret i8* %3, !dbg !2847
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2848 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2852, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i8* %1, metadata !2853, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 %2, metadata !2854, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2855, metadata !DIExpression()), !dbg !2867
  %5 = tail call i32* @__errno_location() #24, !dbg !2868
  %6 = load i32, i32* %5, align 4, !dbg !2868, !tbaa !1235
  call void @llvm.dbg.value(metadata i32 %6, metadata !2856, metadata !DIExpression()), !dbg !2867
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2869, !tbaa !1150
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2857, metadata !DIExpression()), !dbg !2867
  %8 = icmp slt i32 %0, 0, !dbg !2870
  br i1 %8, label %9, label %10, !dbg !2872

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2873
  unreachable, !dbg !2873

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2874, !tbaa !1235
  %12 = icmp sgt i32 %11, %0, !dbg !2875
  br i1 %12, label %34, label %13, !dbg !2876

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2877
  call void @llvm.dbg.value(metadata i1 %14, metadata !2858, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2861, metadata !DIExpression()), !dbg !2878
  %15 = icmp eq i32 %0, 2147483647, !dbg !2879
  br i1 %15, label %16, label %17, !dbg !2881

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2882
  unreachable, !dbg !2882

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2883
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2883
  %20 = add nuw nsw i32 %0, 1, !dbg !2884
  %21 = sext i32 %20 to i64, !dbg !2885
  %22 = shl nuw nsw i64 %21, 4, !dbg !2886
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #18, !dbg !2887
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2887
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2857, metadata !DIExpression()), !dbg !2867
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2888, !tbaa !1150
  br i1 %14, label %25, label %26, !dbg !2889

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2890, !tbaa.struct !2892
  br label %26, !dbg !2893

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2894, !tbaa !1235
  %28 = sext i32 %27 to i64, !dbg !2895
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2895
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2896
  %31 = sub nsw i32 %20, %27, !dbg !2897
  %32 = sext i32 %31 to i64, !dbg !2898
  %33 = shl nsw i64 %32, 4, !dbg !2899
  call void @llvm.dbg.value(metadata i8* %30, metadata !2296, metadata !DIExpression()) #18, !dbg !2900
  call void @llvm.dbg.value(metadata i32 0, metadata !2302, metadata !DIExpression()) #18, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %33, metadata !2303, metadata !DIExpression()) #18, !dbg !2900
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #18, !dbg !2902
  store i32 %20, i32* @nslots, align 4, !dbg !2903, !tbaa !1235
  br label %34, !dbg !2904

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2867
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2857, metadata !DIExpression()), !dbg !2867
  %36 = zext i32 %0 to i64, !dbg !2905
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2906
  %38 = load i64, i64* %37, align 8, !dbg !2906, !tbaa !2828
  call void @llvm.dbg.value(metadata i64 %38, metadata !2862, metadata !DIExpression()), !dbg !2907
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2908
  %40 = load i8*, i8** %39, align 8, !dbg !2908, !tbaa !2815
  call void @llvm.dbg.value(metadata i8* %40, metadata !2864, metadata !DIExpression()), !dbg !2907
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2909
  %42 = load i32, i32* %41, align 4, !dbg !2909, !tbaa !1948
  %43 = or i32 %42, 1, !dbg !2910
  call void @llvm.dbg.value(metadata i32 %43, metadata !2865, metadata !DIExpression()), !dbg !2907
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2911
  %45 = load i32, i32* %44, align 8, !dbg !2911, !tbaa !1897
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2912
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2913
  %48 = load i8*, i8** %47, align 8, !dbg !2913, !tbaa !1971
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2914
  %50 = load i8*, i8** %49, align 8, !dbg !2914, !tbaa !1974
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2915
  call void @llvm.dbg.value(metadata i64 %51, metadata !2866, metadata !DIExpression()), !dbg !2907
  %52 = icmp ugt i64 %38, %51, !dbg !2916
  br i1 %52, label %63, label %53, !dbg !2918

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2919
  call void @llvm.dbg.value(metadata i64 %54, metadata !2862, metadata !DIExpression()), !dbg !2907
  store i64 %54, i64* %37, align 8, !dbg !2921, !tbaa !2828
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2922
  br i1 %55, label %57, label %56, !dbg !2924

56:                                               ; preds = %53
  tail call void @free(i8* %40) #18, !dbg !2925
  br label %57, !dbg !2925

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2763, metadata !DIExpression()) #18, !dbg !2926
  %58 = tail call noalias i8* @xmalloc(i64 %54) #18, !dbg !2928
  call void @llvm.dbg.value(metadata i8* %58, metadata !2864, metadata !DIExpression()), !dbg !2907
  store i8* %58, i8** %39, align 8, !dbg !2929, !tbaa !2815
  %59 = load i32, i32* %44, align 8, !dbg !2930, !tbaa !1897
  %60 = load i8*, i8** %47, align 8, !dbg !2931, !tbaa !1971
  %61 = load i8*, i8** %49, align 8, !dbg !2932, !tbaa !1974
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2933
  br label %63, !dbg !2934

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2907
  call void @llvm.dbg.value(metadata i8* %64, metadata !2864, metadata !DIExpression()), !dbg !2907
  store i32 %6, i32* %5, align 4, !dbg !2935, !tbaa !1235
  ret i8* %64, !dbg !2936
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2937 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2941, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i8* %1, metadata !2942, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64 %2, metadata !2943, metadata !DIExpression()), !dbg !2944
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2945
  ret i8* %4, !dbg !2946
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2947 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2949, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i32 0, metadata !2843, metadata !DIExpression()) #18, !dbg !2951
  call void @llvm.dbg.value(metadata i8* %0, metadata !2844, metadata !DIExpression()) #18, !dbg !2951
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2953
  ret i8* %2, !dbg !2954
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2955 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2959, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i64 %1, metadata !2960, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i32 0, metadata !2941, metadata !DIExpression()) #18, !dbg !2962
  call void @llvm.dbg.value(metadata i8* %0, metadata !2942, metadata !DIExpression()) #18, !dbg !2962
  call void @llvm.dbg.value(metadata i64 %1, metadata !2943, metadata !DIExpression()) #18, !dbg !2962
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2964
  ret i8* %3, !dbg !2965
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2966 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2968, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i32 %1, metadata !2969, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8* %2, metadata !2970, metadata !DIExpression()), !dbg !2972
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2973
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2973
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2971, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i32 %1, metadata !2975, metadata !DIExpression()) #18, !dbg !2981
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2980, metadata !DIExpression()) #18, !dbg !2983
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2983, !alias.scope !2984
  %6 = icmp eq i32 %1, 10, !dbg !2987
  br i1 %6, label %7, label %8, !dbg !2989

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2990, !noalias !2984
  unreachable, !dbg !2990

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2991
  store i32 %1, i32* %9, align 8, !dbg !2992, !tbaa !1897, !alias.scope !2984
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2993
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2994
  ret i8* %10, !dbg !2995
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2996 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3000, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i32 %1, metadata !3001, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i8* %2, metadata !3002, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i64 %3, metadata !3003, metadata !DIExpression()), !dbg !3005
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3006
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3006
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3004, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i32 %1, metadata !2975, metadata !DIExpression()) #18, !dbg !3008
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2980, metadata !DIExpression()) #18, !dbg !3010
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #18, !dbg !3010, !alias.scope !3011
  %7 = icmp eq i32 %1, 10, !dbg !3014
  br i1 %7, label %8, label %9, !dbg !3015

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !3016, !noalias !3011
  unreachable, !dbg !3016

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3017
  store i32 %1, i32* %10, align 8, !dbg !3018, !tbaa !1897, !alias.scope !3011
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3019
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3020
  ret i8* %11, !dbg !3021
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3022 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2980, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2971, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i32 %0, metadata !3026, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8* %1, metadata !3027, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i32 0, metadata !2968, metadata !DIExpression()) #18, !dbg !3033
  call void @llvm.dbg.value(metadata i32 %0, metadata !2969, metadata !DIExpression()) #18, !dbg !3033
  call void @llvm.dbg.value(metadata i8* %1, metadata !2970, metadata !DIExpression()) #18, !dbg !3033
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3034
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3034
  call void @llvm.dbg.value(metadata i32 %0, metadata !2975, metadata !DIExpression()) #18, !dbg !3035
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #18, !dbg !3028, !alias.scope !3036
  %5 = icmp eq i32 %0, 10, !dbg !3039
  br i1 %5, label %6, label %7, !dbg !3040

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !3041, !noalias !3036
  unreachable, !dbg !3041

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3042
  store i32 %0, i32* %8, align 8, !dbg !3043, !tbaa !1897, !alias.scope !3036
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !3044
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3045
  ret i8* %9, !dbg !3046
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3047 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2980, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3004, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i32 %0, metadata !3051, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i8* %1, metadata !3052, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i64 %2, metadata !3053, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i32 0, metadata !3000, metadata !DIExpression()) #18, !dbg !3059
  call void @llvm.dbg.value(metadata i32 %0, metadata !3001, metadata !DIExpression()) #18, !dbg !3059
  call void @llvm.dbg.value(metadata i8* %1, metadata !3002, metadata !DIExpression()) #18, !dbg !3059
  call void @llvm.dbg.value(metadata i64 %2, metadata !3003, metadata !DIExpression()) #18, !dbg !3059
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3060
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3060
  call void @llvm.dbg.value(metadata i32 %0, metadata !2975, metadata !DIExpression()) #18, !dbg !3061
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !3054, !alias.scope !3062
  %6 = icmp eq i32 %0, 10, !dbg !3065
  br i1 %6, label %7, label %8, !dbg !3066

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3067, !noalias !3062
  unreachable, !dbg !3067

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3068
  store i32 %0, i32* %9, align 8, !dbg !3069, !tbaa !1897, !alias.scope !3062
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #18, !dbg !3070
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3071
  ret i8* %10, !dbg !3072
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3073 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3077, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 %1, metadata !3078, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i8 %2, metadata !3079, metadata !DIExpression()), !dbg !3081
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3082
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3082
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3080, metadata !DIExpression()), !dbg !3083
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3084, !tbaa.struct !3085
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1915, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i8 %2, metadata !1916, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i32 1, metadata !1917, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i8 %2, metadata !1918, metadata !DIExpression()), !dbg !3086
  %6 = lshr i8 %2, 5, !dbg !3088
  %7 = zext i8 %6 to i64, !dbg !3088
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3089
  call void @llvm.dbg.value(metadata i32* %8, metadata !1919, metadata !DIExpression()), !dbg !3086
  %9 = and i8 %2, 31, !dbg !3090
  %10 = zext i8 %9 to i32, !dbg !3090
  call void @llvm.dbg.value(metadata i32 %10, metadata !1921, metadata !DIExpression()), !dbg !3086
  %11 = load i32, i32* %8, align 4, !dbg !3091, !tbaa !1235
  %12 = lshr i32 %11, %10, !dbg !3092
  %13 = and i32 %12, 1, !dbg !3093
  call void @llvm.dbg.value(metadata i32 %13, metadata !1922, metadata !DIExpression()), !dbg !3086
  %14 = xor i32 %13, 1, !dbg !3094
  %15 = shl i32 %14, %10, !dbg !3095
  %16 = xor i32 %15, %11, !dbg !3096
  store i32 %16, i32* %8, align 4, !dbg !3096, !tbaa !1235
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3097
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3098
  ret i8* %17, !dbg !3099
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3100 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3080, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i8* %0, metadata !3104, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i8 %1, metadata !3105, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i8* %0, metadata !3077, metadata !DIExpression()) #18, !dbg !3109
  call void @llvm.dbg.value(metadata i64 -1, metadata !3078, metadata !DIExpression()) #18, !dbg !3109
  call void @llvm.dbg.value(metadata i8 %1, metadata !3079, metadata !DIExpression()) #18, !dbg !3109
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3110
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3110
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3111, !tbaa.struct !3085
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1915, metadata !DIExpression()) #18, !dbg !3112
  call void @llvm.dbg.value(metadata i8 %1, metadata !1916, metadata !DIExpression()) #18, !dbg !3112
  call void @llvm.dbg.value(metadata i32 1, metadata !1917, metadata !DIExpression()) #18, !dbg !3112
  call void @llvm.dbg.value(metadata i8 %1, metadata !1918, metadata !DIExpression()) #18, !dbg !3112
  %5 = lshr i8 %1, 5, !dbg !3114
  %6 = zext i8 %5 to i64, !dbg !3114
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3115
  call void @llvm.dbg.value(metadata i32* %7, metadata !1919, metadata !DIExpression()) #18, !dbg !3112
  %8 = and i8 %1, 31, !dbg !3116
  %9 = zext i8 %8 to i32, !dbg !3116
  call void @llvm.dbg.value(metadata i32 %9, metadata !1921, metadata !DIExpression()) #18, !dbg !3112
  %10 = load i32, i32* %7, align 4, !dbg !3117, !tbaa !1235
  %11 = lshr i32 %10, %9, !dbg !3118
  %12 = and i32 %11, 1, !dbg !3119
  call void @llvm.dbg.value(metadata i32 %12, metadata !1922, metadata !DIExpression()) #18, !dbg !3112
  %13 = xor i32 %12, 1, !dbg !3120
  %14 = shl i32 %13, %9, !dbg !3121
  %15 = xor i32 %14, %10, !dbg !3122
  store i32 %15, i32* %7, align 4, !dbg !3122, !tbaa !1235
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !3123
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3124
  ret i8* %16, !dbg !3125
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3126 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3080, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i8* %0, metadata !3128, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8* %0, metadata !3104, metadata !DIExpression()) #18, !dbg !3133
  call void @llvm.dbg.value(metadata i8 58, metadata !3105, metadata !DIExpression()) #18, !dbg !3133
  call void @llvm.dbg.value(metadata i8* %0, metadata !3077, metadata !DIExpression()) #18, !dbg !3134
  call void @llvm.dbg.value(metadata i64 -1, metadata !3078, metadata !DIExpression()) #18, !dbg !3134
  call void @llvm.dbg.value(metadata i8 58, metadata !3079, metadata !DIExpression()) #18, !dbg !3134
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3135
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #18, !dbg !3135
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3136, !tbaa.struct !3085
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1915, metadata !DIExpression()) #18, !dbg !3137
  call void @llvm.dbg.value(metadata i8 58, metadata !1916, metadata !DIExpression()) #18, !dbg !3137
  call void @llvm.dbg.value(metadata i32 1, metadata !1917, metadata !DIExpression()) #18, !dbg !3137
  call void @llvm.dbg.value(metadata i8 58, metadata !1918, metadata !DIExpression()) #18, !dbg !3137
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3139
  call void @llvm.dbg.value(metadata i32* %4, metadata !1919, metadata !DIExpression()) #18, !dbg !3137
  call void @llvm.dbg.value(metadata i32 26, metadata !1921, metadata !DIExpression()) #18, !dbg !3137
  %5 = load i32, i32* %4, align 4, !dbg !3140, !tbaa !1235
  call void @llvm.dbg.value(metadata i32 %5, metadata !1922, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !3137
  %6 = or i32 %5, 67108864, !dbg !3141
  store i32 %6, i32* %4, align 4, !dbg !3141, !tbaa !1235
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #18, !dbg !3142
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #18, !dbg !3143
  ret i8* %7, !dbg !3144
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3145 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3080, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i8* %0, metadata !3147, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %1, metadata !3148, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i8* %0, metadata !3077, metadata !DIExpression()) #18, !dbg !3152
  call void @llvm.dbg.value(metadata i64 %1, metadata !3078, metadata !DIExpression()) #18, !dbg !3152
  call void @llvm.dbg.value(metadata i8 58, metadata !3079, metadata !DIExpression()) #18, !dbg !3152
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3153
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3153
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3154, !tbaa.struct !3085
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1915, metadata !DIExpression()) #18, !dbg !3155
  call void @llvm.dbg.value(metadata i8 58, metadata !1916, metadata !DIExpression()) #18, !dbg !3155
  call void @llvm.dbg.value(metadata i32 1, metadata !1917, metadata !DIExpression()) #18, !dbg !3155
  call void @llvm.dbg.value(metadata i8 58, metadata !1918, metadata !DIExpression()) #18, !dbg !3155
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3157
  call void @llvm.dbg.value(metadata i32* %5, metadata !1919, metadata !DIExpression()) #18, !dbg !3155
  call void @llvm.dbg.value(metadata i32 26, metadata !1921, metadata !DIExpression()) #18, !dbg !3155
  %6 = load i32, i32* %5, align 4, !dbg !3158, !tbaa !1235
  call void @llvm.dbg.value(metadata i32 %6, metadata !1922, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !3155
  %7 = or i32 %6, 67108864, !dbg !3159
  store i32 %7, i32* %5, align 4, !dbg !3159, !tbaa !1235
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #18, !dbg !3160
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3161
  ret i8* %8, !dbg !3162
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3163 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2980, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3169
  call void @llvm.dbg.value(metadata i32 %0, metadata !3165, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i32 %1, metadata !3166, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i8* %2, metadata !3167, metadata !DIExpression()), !dbg !3171
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3172
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3172
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3168, metadata !DIExpression()), !dbg !3173
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3174
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3174
  call void @llvm.dbg.value(metadata i32 %1, metadata !2975, metadata !DIExpression()) #18, !dbg !3175
  call void @llvm.dbg.value(metadata i32 0, metadata !2980, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3175
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3169, !alias.scope !3176
  %8 = icmp eq i32 %1, 10, !dbg !3179
  br i1 %8, label %9, label %10, !dbg !3180

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3181, !noalias !3176
  unreachable, !dbg !3181

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2980, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3175
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3174
  store i32 %1, i32* %11, align 8, !dbg !3174, !tbaa.struct !3085
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3174
  %13 = bitcast i32* %12 to i8*, !dbg !3174
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3174, !tbaa.struct !3085
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3174
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1915, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i8 58, metadata !1916, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 1, metadata !1917, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i8 58, metadata !1918, metadata !DIExpression()), !dbg !3182
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3184
  call void @llvm.dbg.value(metadata i32* %14, metadata !1919, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 26, metadata !1921, metadata !DIExpression()), !dbg !3182
  %15 = load i32, i32* %14, align 4, !dbg !3185, !tbaa !1235
  call void @llvm.dbg.value(metadata i32 %15, metadata !1922, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3182
  %16 = or i32 %15, 67108864, !dbg !3186
  store i32 %16, i32* %14, align 4, !dbg !3186, !tbaa !1235
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3187
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3188
  ret i8* %17, !dbg !3189
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3190 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3198, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 %0, metadata !3194, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata i8* %1, metadata !3195, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata i8* %2, metadata !3196, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata i8* %3, metadata !3197, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata i32 %0, metadata !3203, metadata !DIExpression()) #18, !dbg !3211
  call void @llvm.dbg.value(metadata i8* %1, metadata !3204, metadata !DIExpression()) #18, !dbg !3211
  call void @llvm.dbg.value(metadata i8* %2, metadata !3205, metadata !DIExpression()) #18, !dbg !3211
  call void @llvm.dbg.value(metadata i8* %3, metadata !3206, metadata !DIExpression()) #18, !dbg !3211
  call void @llvm.dbg.value(metadata i64 -1, metadata !3207, metadata !DIExpression()) #18, !dbg !3211
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3212
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3212
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3213, !tbaa.struct !3085
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1955, metadata !DIExpression()) #18, !dbg !3214
  call void @llvm.dbg.value(metadata i8* %1, metadata !1956, metadata !DIExpression()) #18, !dbg !3214
  call void @llvm.dbg.value(metadata i8* %2, metadata !1957, metadata !DIExpression()) #18, !dbg !3214
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1955, metadata !DIExpression()) #18, !dbg !3214
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3216
  store i32 10, i32* %7, align 8, !dbg !3217, !tbaa !1897
  %8 = icmp ne i8* %1, null, !dbg !3218
  %9 = icmp ne i8* %2, null, !dbg !3219
  %10 = and i1 %8, %9, !dbg !3220
  br i1 %10, label %12, label %11, !dbg !3220

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3221
  unreachable, !dbg !3221

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3222
  store i8* %1, i8** %13, align 8, !dbg !3223, !tbaa !1971
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3224
  store i8* %2, i8** %14, align 8, !dbg !3225, !tbaa !1974
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #18, !dbg !3226
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3227
  ret i8* %15, !dbg !3228
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3199 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3203, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8* %1, metadata !3204, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8* %2, metadata !3205, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8* %3, metadata !3206, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %4, metadata !3207, metadata !DIExpression()), !dbg !3229
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3230
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3230
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3198, metadata !DIExpression()), !dbg !3231
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3232, !tbaa.struct !3085
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1955, metadata !DIExpression()) #18, !dbg !3233
  call void @llvm.dbg.value(metadata i8* %1, metadata !1956, metadata !DIExpression()) #18, !dbg !3233
  call void @llvm.dbg.value(metadata i8* %2, metadata !1957, metadata !DIExpression()) #18, !dbg !3233
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1955, metadata !DIExpression()) #18, !dbg !3233
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3235
  store i32 10, i32* %8, align 8, !dbg !3236, !tbaa !1897
  %9 = icmp ne i8* %1, null, !dbg !3237
  %10 = icmp ne i8* %2, null, !dbg !3238
  %11 = and i1 %9, %10, !dbg !3239
  br i1 %11, label %13, label %12, !dbg !3239

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !3240
  unreachable, !dbg !3240

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3241
  store i8* %1, i8** %14, align 8, !dbg !3242, !tbaa !1971
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3243
  store i8* %2, i8** %15, align 8, !dbg !3244, !tbaa !1974
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3245
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3246
  ret i8* %16, !dbg !3247
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3248 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3198, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8* %0, metadata !3252, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i8* %1, metadata !3253, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i8* %2, metadata !3254, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 0, metadata !3194, metadata !DIExpression()) #18, !dbg !3259
  call void @llvm.dbg.value(metadata i8* %0, metadata !3195, metadata !DIExpression()) #18, !dbg !3259
  call void @llvm.dbg.value(metadata i8* %1, metadata !3196, metadata !DIExpression()) #18, !dbg !3259
  call void @llvm.dbg.value(metadata i8* %2, metadata !3197, metadata !DIExpression()) #18, !dbg !3259
  call void @llvm.dbg.value(metadata i32 0, metadata !3203, metadata !DIExpression()) #18, !dbg !3260
  call void @llvm.dbg.value(metadata i8* %0, metadata !3204, metadata !DIExpression()) #18, !dbg !3260
  call void @llvm.dbg.value(metadata i8* %1, metadata !3205, metadata !DIExpression()) #18, !dbg !3260
  call void @llvm.dbg.value(metadata i8* %2, metadata !3206, metadata !DIExpression()) #18, !dbg !3260
  call void @llvm.dbg.value(metadata i64 -1, metadata !3207, metadata !DIExpression()) #18, !dbg !3260
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3261
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3261
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3262, !tbaa.struct !3085
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1955, metadata !DIExpression()) #18, !dbg !3263
  call void @llvm.dbg.value(metadata i8* %0, metadata !1956, metadata !DIExpression()) #18, !dbg !3263
  call void @llvm.dbg.value(metadata i8* %1, metadata !1957, metadata !DIExpression()) #18, !dbg !3263
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1955, metadata !DIExpression()) #18, !dbg !3263
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3265
  store i32 10, i32* %6, align 8, !dbg !3266, !tbaa !1897
  %7 = icmp ne i8* %0, null, !dbg !3267
  %8 = icmp ne i8* %1, null, !dbg !3268
  %9 = and i1 %7, %8, !dbg !3269
  br i1 %9, label %11, label %10, !dbg !3269

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !3270
  unreachable, !dbg !3270

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3271
  store i8* %0, i8** %12, align 8, !dbg !3272, !tbaa !1971
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3273
  store i8* %1, i8** %13, align 8, !dbg !3274, !tbaa !1974
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #18, !dbg !3275
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3276
  ret i8* %14, !dbg !3277
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3278 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3198, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8* %0, metadata !3282, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8* %1, metadata !3283, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8* %2, metadata !3284, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %3, metadata !3285, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i32 0, metadata !3203, metadata !DIExpression()) #18, !dbg !3289
  call void @llvm.dbg.value(metadata i8* %0, metadata !3204, metadata !DIExpression()) #18, !dbg !3289
  call void @llvm.dbg.value(metadata i8* %1, metadata !3205, metadata !DIExpression()) #18, !dbg !3289
  call void @llvm.dbg.value(metadata i8* %2, metadata !3206, metadata !DIExpression()) #18, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %3, metadata !3207, metadata !DIExpression()) #18, !dbg !3289
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3290
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3290
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3291, !tbaa.struct !3085
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1955, metadata !DIExpression()) #18, !dbg !3292
  call void @llvm.dbg.value(metadata i8* %0, metadata !1956, metadata !DIExpression()) #18, !dbg !3292
  call void @llvm.dbg.value(metadata i8* %1, metadata !1957, metadata !DIExpression()) #18, !dbg !3292
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1955, metadata !DIExpression()) #18, !dbg !3292
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3294
  store i32 10, i32* %7, align 8, !dbg !3295, !tbaa !1897
  %8 = icmp ne i8* %0, null, !dbg !3296
  %9 = icmp ne i8* %1, null, !dbg !3297
  %10 = and i1 %8, %9, !dbg !3298
  br i1 %10, label %12, label %11, !dbg !3298

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3299
  unreachable, !dbg !3299

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3300
  store i8* %0, i8** %13, align 8, !dbg !3301, !tbaa !1971
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3302
  store i8* %1, i8** %14, align 8, !dbg !3303, !tbaa !1974
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #18, !dbg !3304
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3305
  ret i8* %15, !dbg !3306
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3307 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3311, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i8* %1, metadata !3312, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %2, metadata !3313, metadata !DIExpression()), !dbg !3314
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3315
  ret i8* %4, !dbg !3316
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3317 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3321, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 %1, metadata !3322, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()) #18, !dbg !3324
  call void @llvm.dbg.value(metadata i8* %0, metadata !3312, metadata !DIExpression()) #18, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %1, metadata !3313, metadata !DIExpression()) #18, !dbg !3324
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3326
  ret i8* %3, !dbg !3327
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3328 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3332, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i8* %1, metadata !3333, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i32 %0, metadata !3311, metadata !DIExpression()) #18, !dbg !3335
  call void @llvm.dbg.value(metadata i8* %1, metadata !3312, metadata !DIExpression()) #18, !dbg !3335
  call void @llvm.dbg.value(metadata i64 -1, metadata !3313, metadata !DIExpression()) #18, !dbg !3335
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3337
  ret i8* %3, !dbg !3338
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3339 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3343, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i32 0, metadata !3332, metadata !DIExpression()) #18, !dbg !3345
  call void @llvm.dbg.value(metadata i8* %0, metadata !3333, metadata !DIExpression()) #18, !dbg !3345
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()) #18, !dbg !3347
  call void @llvm.dbg.value(metadata i8* %0, metadata !3312, metadata !DIExpression()) #18, !dbg !3347
  call void @llvm.dbg.value(metadata i64 -1, metadata !3313, metadata !DIExpression()) #18, !dbg !3347
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3349
  ret i8* %2, !dbg !3350
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3351 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3358, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i8* %1, metadata !3359, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i8* %2, metadata !3360, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i8* %3, metadata !3361, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i8** %4, metadata !3362, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 %5, metadata !3363, metadata !DIExpression()), !dbg !3364
  %7 = icmp eq i8* %1, null, !dbg !3365
  br i1 %7, label %10, label %8, !dbg !3367

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #18, !dbg !3368
  br label %12, !dbg !3368

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.84, i64 0, i64 0), i8* %2, i8* %3) #18, !dbg !3369
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.85, i64 0, i64 0), i32 5) #18, !dbg !3370
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #18, !dbg !3370
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.86, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3371
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.87, i64 0, i64 0), i32 5) #18, !dbg !3372
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.88, i64 0, i64 0)) #18, !dbg !3372
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.86, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3373
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
  ], !dbg !3374

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.89, i64 0, i64 0), i32 5) #18, !dbg !3375
  %21 = load i8*, i8** %4, align 8, !dbg !3375, !tbaa !1150
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #18, !dbg !3375
  br label %147, !dbg !3377

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.90, i64 0, i64 0), i32 5) #18, !dbg !3378
  %25 = load i8*, i8** %4, align 8, !dbg !3378, !tbaa !1150
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3378
  %27 = load i8*, i8** %26, align 8, !dbg !3378, !tbaa !1150
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #18, !dbg !3378
  br label %147, !dbg !3379

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.91, i64 0, i64 0), i32 5) #18, !dbg !3380
  %31 = load i8*, i8** %4, align 8, !dbg !3380, !tbaa !1150
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3380
  %33 = load i8*, i8** %32, align 8, !dbg !3380, !tbaa !1150
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3380
  %35 = load i8*, i8** %34, align 8, !dbg !3380, !tbaa !1150
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #18, !dbg !3380
  br label %147, !dbg !3381

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.92, i64 0, i64 0), i32 5) #18, !dbg !3382
  %39 = load i8*, i8** %4, align 8, !dbg !3382, !tbaa !1150
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3382
  %41 = load i8*, i8** %40, align 8, !dbg !3382, !tbaa !1150
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3382
  %43 = load i8*, i8** %42, align 8, !dbg !3382, !tbaa !1150
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3382
  %45 = load i8*, i8** %44, align 8, !dbg !3382, !tbaa !1150
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #18, !dbg !3382
  br label %147, !dbg !3383

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.93, i64 0, i64 0), i32 5) #18, !dbg !3384
  %49 = load i8*, i8** %4, align 8, !dbg !3384, !tbaa !1150
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3384
  %51 = load i8*, i8** %50, align 8, !dbg !3384, !tbaa !1150
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3384
  %53 = load i8*, i8** %52, align 8, !dbg !3384, !tbaa !1150
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3384
  %55 = load i8*, i8** %54, align 8, !dbg !3384, !tbaa !1150
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3384
  %57 = load i8*, i8** %56, align 8, !dbg !3384, !tbaa !1150
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #18, !dbg !3384
  br label %147, !dbg !3385

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.94, i64 0, i64 0), i32 5) #18, !dbg !3386
  %61 = load i8*, i8** %4, align 8, !dbg !3386, !tbaa !1150
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3386
  %63 = load i8*, i8** %62, align 8, !dbg !3386, !tbaa !1150
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3386
  %65 = load i8*, i8** %64, align 8, !dbg !3386, !tbaa !1150
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3386
  %67 = load i8*, i8** %66, align 8, !dbg !3386, !tbaa !1150
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3386
  %69 = load i8*, i8** %68, align 8, !dbg !3386, !tbaa !1150
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3386
  %71 = load i8*, i8** %70, align 8, !dbg !3386, !tbaa !1150
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #18, !dbg !3386
  br label %147, !dbg !3387

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.95, i64 0, i64 0), i32 5) #18, !dbg !3388
  %75 = load i8*, i8** %4, align 8, !dbg !3388, !tbaa !1150
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3388
  %77 = load i8*, i8** %76, align 8, !dbg !3388, !tbaa !1150
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3388
  %79 = load i8*, i8** %78, align 8, !dbg !3388, !tbaa !1150
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3388
  %81 = load i8*, i8** %80, align 8, !dbg !3388, !tbaa !1150
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3388
  %83 = load i8*, i8** %82, align 8, !dbg !3388, !tbaa !1150
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3388
  %85 = load i8*, i8** %84, align 8, !dbg !3388, !tbaa !1150
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3388
  %87 = load i8*, i8** %86, align 8, !dbg !3388, !tbaa !1150
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #18, !dbg !3388
  br label %147, !dbg !3389

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.96, i64 0, i64 0), i32 5) #18, !dbg !3390
  %91 = load i8*, i8** %4, align 8, !dbg !3390, !tbaa !1150
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3390
  %93 = load i8*, i8** %92, align 8, !dbg !3390, !tbaa !1150
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3390
  %95 = load i8*, i8** %94, align 8, !dbg !3390, !tbaa !1150
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3390
  %97 = load i8*, i8** %96, align 8, !dbg !3390, !tbaa !1150
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3390
  %99 = load i8*, i8** %98, align 8, !dbg !3390, !tbaa !1150
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3390
  %101 = load i8*, i8** %100, align 8, !dbg !3390, !tbaa !1150
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3390
  %103 = load i8*, i8** %102, align 8, !dbg !3390, !tbaa !1150
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3390
  %105 = load i8*, i8** %104, align 8, !dbg !3390, !tbaa !1150
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #18, !dbg !3390
  br label %147, !dbg !3391

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.97, i64 0, i64 0), i32 5) #18, !dbg !3392
  %109 = load i8*, i8** %4, align 8, !dbg !3392, !tbaa !1150
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3392
  %111 = load i8*, i8** %110, align 8, !dbg !3392, !tbaa !1150
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3392
  %113 = load i8*, i8** %112, align 8, !dbg !3392, !tbaa !1150
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3392
  %115 = load i8*, i8** %114, align 8, !dbg !3392, !tbaa !1150
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3392
  %117 = load i8*, i8** %116, align 8, !dbg !3392, !tbaa !1150
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3392
  %119 = load i8*, i8** %118, align 8, !dbg !3392, !tbaa !1150
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3392
  %121 = load i8*, i8** %120, align 8, !dbg !3392, !tbaa !1150
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3392
  %123 = load i8*, i8** %122, align 8, !dbg !3392, !tbaa !1150
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3392
  %125 = load i8*, i8** %124, align 8, !dbg !3392, !tbaa !1150
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #18, !dbg !3392
  br label %147, !dbg !3393

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.98, i64 0, i64 0), i32 5) #18, !dbg !3394
  %129 = load i8*, i8** %4, align 8, !dbg !3394, !tbaa !1150
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3394
  %131 = load i8*, i8** %130, align 8, !dbg !3394, !tbaa !1150
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3394
  %133 = load i8*, i8** %132, align 8, !dbg !3394, !tbaa !1150
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3394
  %135 = load i8*, i8** %134, align 8, !dbg !3394, !tbaa !1150
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3394
  %137 = load i8*, i8** %136, align 8, !dbg !3394, !tbaa !1150
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3394
  %139 = load i8*, i8** %138, align 8, !dbg !3394, !tbaa !1150
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3394
  %141 = load i8*, i8** %140, align 8, !dbg !3394, !tbaa !1150
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3394
  %143 = load i8*, i8** %142, align 8, !dbg !3394, !tbaa !1150
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3394
  %145 = load i8*, i8** %144, align 8, !dbg !3394, !tbaa !1150
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #18, !dbg !3394
  br label %147, !dbg !3395

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3396
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3397 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3401, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i8* %1, metadata !3402, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i8* %2, metadata !3403, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i8* %3, metadata !3404, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i8** %4, metadata !3405, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 0, metadata !3406, metadata !DIExpression()), !dbg !3407
  br label %6, !dbg !3408

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3410
  call void @llvm.dbg.value(metadata i64 %7, metadata !3406, metadata !DIExpression()), !dbg !3407
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3411
  %9 = load i8*, i8** %8, align 8, !dbg !3411, !tbaa !1150
  %10 = icmp eq i8* %9, null, !dbg !3413
  %11 = add i64 %7, 1, !dbg !3414
  call void @llvm.dbg.value(metadata i64 %11, metadata !3406, metadata !DIExpression()), !dbg !3407
  br i1 %10, label %12, label %6, !dbg !3413, !llvm.loop !3415

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3406, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 %7, metadata !3406, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 %7, metadata !3406, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 %7, metadata !3406, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 %7, metadata !3406, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 %7, metadata !3406, metadata !DIExpression()), !dbg !3407
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3417
  ret void, !dbg !3418
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3419 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3430, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i8* %1, metadata !3431, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i8* %2, metadata !3432, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i8* %3, metadata !3433, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3434, metadata !DIExpression()), !dbg !3438
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3439
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3439
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3436, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 0, metadata !3435, metadata !DIExpression()), !dbg !3438
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3441
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3441
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3441
  %11 = load i32, i32* %8, align 8, !dbg !3444
  %12 = icmp ult i32 %11, 41, !dbg !3444
  br i1 %12, label %13, label %18, !dbg !3444

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3444
  %15 = zext i32 %11 to i64, !dbg !3444
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3444
  %17 = add nuw nsw i32 %11, 8, !dbg !3444
  store i32 %17, i32* %8, align 8, !dbg !3444
  br label %21, !dbg !3444

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3444
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3444
  store i8* %20, i8** %9, align 8, !dbg !3444
  br label %21, !dbg !3444

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3444
  %25 = load i8*, i8** %24, align 8, !dbg !3444
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3445
  store i8* %25, i8** %26, align 16, !dbg !3446, !tbaa !1150
  %27 = icmp eq i8* %25, null, !dbg !3447
  br i1 %27, label %30, label %28, !dbg !3448

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3435, metadata !DIExpression()), !dbg !3438
  %29 = icmp ult i32 %22, 41, !dbg !3444
  br i1 %29, label %35, label %32, !dbg !3444

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3449
  call void @llvm.dbg.value(metadata i64 %31, metadata !3435, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i64 %31, metadata !3435, metadata !DIExpression()), !dbg !3438
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3450
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3451
  ret void, !dbg !3451

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3444
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3444
  store i8* %34, i8** %9, align 8, !dbg !3444
  br label %40, !dbg !3444

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3444
  %37 = zext i32 %22 to i64, !dbg !3444
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3444
  %39 = add nuw nsw i32 %22, 8, !dbg !3444
  store i32 %39, i32* %8, align 8, !dbg !3444
  br label %40, !dbg !3444

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3444
  %44 = load i8*, i8** %43, align 8, !dbg !3444
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3445
  store i8* %44, i8** %45, align 8, !dbg !3446, !tbaa !1150
  %46 = icmp eq i8* %44, null, !dbg !3447
  br i1 %46, label %30, label %47, !dbg !3448

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3435, metadata !DIExpression()), !dbg !3438
  %48 = icmp ult i32 %41, 41, !dbg !3444
  br i1 %48, label %52, label %49, !dbg !3444

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3444
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3444
  store i8* %51, i8** %9, align 8, !dbg !3444
  br label %57, !dbg !3444

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3444
  %54 = zext i32 %41 to i64, !dbg !3444
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3444
  %56 = add nuw nsw i32 %41, 8, !dbg !3444
  store i32 %56, i32* %8, align 8, !dbg !3444
  br label %57, !dbg !3444

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3444
  %61 = load i8*, i8** %60, align 8, !dbg !3444
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3445
  store i8* %61, i8** %62, align 16, !dbg !3446, !tbaa !1150
  %63 = icmp eq i8* %61, null, !dbg !3447
  br i1 %63, label %30, label %64, !dbg !3448

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3435, metadata !DIExpression()), !dbg !3438
  %65 = icmp ult i32 %58, 41, !dbg !3444
  br i1 %65, label %69, label %66, !dbg !3444

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3444
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3444
  store i8* %68, i8** %9, align 8, !dbg !3444
  br label %74, !dbg !3444

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3444
  %71 = zext i32 %58 to i64, !dbg !3444
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3444
  %73 = add nuw nsw i32 %58, 8, !dbg !3444
  store i32 %73, i32* %8, align 8, !dbg !3444
  br label %74, !dbg !3444

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3444
  %78 = load i8*, i8** %77, align 8, !dbg !3444
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3445
  store i8* %78, i8** %79, align 8, !dbg !3446, !tbaa !1150
  %80 = icmp eq i8* %78, null, !dbg !3447
  br i1 %80, label %30, label %81, !dbg !3448

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3435, metadata !DIExpression()), !dbg !3438
  %82 = icmp ult i32 %75, 41, !dbg !3444
  br i1 %82, label %86, label %83, !dbg !3444

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3444
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3444
  store i8* %85, i8** %9, align 8, !dbg !3444
  br label %91, !dbg !3444

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3444
  %88 = zext i32 %75 to i64, !dbg !3444
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3444
  %90 = add nuw nsw i32 %75, 8, !dbg !3444
  store i32 %90, i32* %8, align 8, !dbg !3444
  br label %91, !dbg !3444

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3444
  %95 = load i8*, i8** %94, align 8, !dbg !3444
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3445
  store i8* %95, i8** %96, align 16, !dbg !3446, !tbaa !1150
  %97 = icmp eq i8* %95, null, !dbg !3447
  br i1 %97, label %30, label %98, !dbg !3448

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3435, metadata !DIExpression()), !dbg !3438
  %99 = icmp ult i32 %92, 41, !dbg !3444
  br i1 %99, label %103, label %100, !dbg !3444

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3444
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3444
  store i8* %102, i8** %9, align 8, !dbg !3444
  br label %108, !dbg !3444

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3444
  %105 = zext i32 %92 to i64, !dbg !3444
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3444
  %107 = add nuw nsw i32 %92, 8, !dbg !3444
  store i32 %107, i32* %8, align 8, !dbg !3444
  br label %108, !dbg !3444

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3444
  %111 = load i8*, i8** %110, align 8, !dbg !3444
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3445
  store i8* %111, i8** %112, align 8, !dbg !3446, !tbaa !1150
  %113 = icmp eq i8* %111, null, !dbg !3447
  br i1 %113, label %30, label %114, !dbg !3448

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3435, metadata !DIExpression()), !dbg !3438
  %115 = load i8*, i8** %9, align 8, !dbg !3444
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3444
  store i8* %116, i8** %9, align 8, !dbg !3444
  %117 = bitcast i8* %115 to i8**, !dbg !3444
  %118 = load i8*, i8** %117, align 8, !dbg !3444
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3445
  store i8* %118, i8** %119, align 16, !dbg !3446, !tbaa !1150
  %120 = icmp eq i8* %118, null, !dbg !3447
  br i1 %120, label %30, label %121, !dbg !3448

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3435, metadata !DIExpression()), !dbg !3438
  %122 = load i8*, i8** %9, align 8, !dbg !3444
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3444
  store i8* %123, i8** %9, align 8, !dbg !3444
  %124 = bitcast i8* %122 to i8**, !dbg !3444
  %125 = load i8*, i8** %124, align 8, !dbg !3444
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3445
  store i8* %125, i8** %126, align 8, !dbg !3446, !tbaa !1150
  %127 = icmp eq i8* %125, null, !dbg !3447
  br i1 %127, label %30, label %128, !dbg !3448

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3435, metadata !DIExpression()), !dbg !3438
  %129 = load i8*, i8** %9, align 8, !dbg !3444
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3444
  store i8* %130, i8** %9, align 8, !dbg !3444
  %131 = bitcast i8* %129 to i8**, !dbg !3444
  %132 = load i8*, i8** %131, align 8, !dbg !3444
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3445
  store i8* %132, i8** %133, align 16, !dbg !3446, !tbaa !1150
  %134 = icmp eq i8* %132, null, !dbg !3447
  br i1 %134, label %30, label %135, !dbg !3448

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3435, metadata !DIExpression()), !dbg !3438
  %136 = load i8*, i8** %9, align 8, !dbg !3444
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3444
  store i8* %137, i8** %9, align 8, !dbg !3444
  %138 = bitcast i8* %136 to i8**, !dbg !3444
  %139 = load i8*, i8** %138, align 8, !dbg !3444
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3445
  store i8* %139, i8** %140, align 8, !dbg !3446, !tbaa !1150
  %141 = icmp eq i8* %139, null, !dbg !3447
  %142 = select i1 %141, i64 9, i64 10, !dbg !3448
  br label %30, !dbg !3448
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3452 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3456, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i8* %1, metadata !3457, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i8* %2, metadata !3458, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i8* %3, metadata !3459, metadata !DIExpression()), !dbg !3466
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3467
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3467
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3460, metadata !DIExpression()), !dbg !3468
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3469
  call void @llvm.va_start(i8* nonnull %6), !dbg !3469
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3470
  call void @llvm.va_end(i8* nonnull %6), !dbg !3471
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3472
  ret void, !dbg !3472
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #18

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3473 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3474, !tbaa !1150
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.86, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3474
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.101, i64 0, i64 0), i32 5) #18, !dbg !3475
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.102, i64 0, i64 0)) #18, !dbg !3475
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.103, i64 0, i64 0), i32 5) #18, !dbg !3476
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.104, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.105, i64 0, i64 0)) #18, !dbg !3476
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.106, i64 0, i64 0), i32 5) #18, !dbg !3477
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.107, i64 0, i64 0)) #18, !dbg !3477
  ret void, !dbg !3478
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !3479 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3481, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i64 %1, metadata !3482, metadata !DIExpression()), !dbg !3483
  %3 = udiv i64 9223372036854775807, %1, !dbg !3484
  %4 = icmp ult i64 %3, %0, !dbg !3484
  br i1 %4, label %5, label %6, !dbg !3486

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3487
  unreachable, !dbg !3487

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3488
  call void @llvm.dbg.value(metadata i64 %7, metadata !3489, metadata !DIExpression()) #18, !dbg !3495
  %8 = tail call noalias i8* @malloc(i64 %7) #18, !dbg !3497
  call void @llvm.dbg.value(metadata i8* %8, metadata !3494, metadata !DIExpression()) #18, !dbg !3495
  %9 = icmp eq i8* %8, null, !dbg !3498
  %10 = icmp ne i64 %7, 0, !dbg !3500
  %11 = and i1 %10, %9, !dbg !3501
  br i1 %11, label %12, label %13, !dbg !3501

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !3502
  unreachable, !dbg !3502

13:                                               ; preds = %6
  ret i8* %8, !dbg !3503
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3490 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3489, metadata !DIExpression()), !dbg !3504
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3505
  call void @llvm.dbg.value(metadata i8* %2, metadata !3494, metadata !DIExpression()), !dbg !3504
  %3 = icmp eq i8* %2, null, !dbg !3506
  %4 = icmp ne i64 %0, 0, !dbg !3507
  %5 = and i1 %4, %3, !dbg !3508
  br i1 %5, label %6, label %7, !dbg !3508

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3509
  unreachable, !dbg !3509

7:                                                ; preds = %1
  ret i8* %2, !dbg !3510
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !3511 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3515, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i64 %1, metadata !3516, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i64 %2, metadata !3517, metadata !DIExpression()), !dbg !3518
  %4 = udiv i64 9223372036854775807, %2, !dbg !3519
  %5 = icmp ult i64 %4, %1, !dbg !3519
  br i1 %5, label %6, label %7, !dbg !3521

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !3522
  unreachable, !dbg !3522

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3523
  call void @llvm.dbg.value(metadata i8* %0, metadata !3524, metadata !DIExpression()) #18, !dbg !3530
  call void @llvm.dbg.value(metadata i64 %8, metadata !3529, metadata !DIExpression()) #18, !dbg !3530
  %9 = icmp eq i64 %8, 0, !dbg !3532
  %10 = icmp ne i8* %0, null, !dbg !3534
  %11 = and i1 %10, %9, !dbg !3535
  br i1 %11, label %12, label %13, !dbg !3535

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #18, !dbg !3536
  br label %19, !dbg !3538

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #18, !dbg !3539
  call void @llvm.dbg.value(metadata i8* %14, metadata !3524, metadata !DIExpression()) #18, !dbg !3530
  %15 = icmp eq i8* %14, null, !dbg !3540
  %16 = icmp ne i64 %8, 0, !dbg !3542
  %17 = and i1 %16, %15, !dbg !3543
  br i1 %17, label %18, label %19, !dbg !3543

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3544
  unreachable, !dbg !3544

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3530
  ret i8* %20, !dbg !3545
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3525 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3524, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 %1, metadata !3529, metadata !DIExpression()), !dbg !3546
  %3 = icmp eq i64 %1, 0, !dbg !3547
  %4 = icmp ne i8* %0, null, !dbg !3548
  %5 = and i1 %4, %3, !dbg !3549
  br i1 %5, label %6, label %7, !dbg !3549

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #18, !dbg !3550
  br label %13, !dbg !3551

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #18, !dbg !3552
  call void @llvm.dbg.value(metadata i8* %8, metadata !3524, metadata !DIExpression()), !dbg !3546
  %9 = icmp eq i8* %8, null, !dbg !3553
  %10 = icmp ne i64 %1, 0, !dbg !3554
  %11 = and i1 %10, %9, !dbg !3555
  br i1 %11, label %12, label %13, !dbg !3555

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3556
  unreachable, !dbg !3556

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3546
  ret i8* %14, !dbg !3557
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !504 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !509, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i64* %1, metadata !510, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i64 %2, metadata !511, metadata !DIExpression()), !dbg !3558
  %4 = load i64, i64* %1, align 8, !dbg !3559, !tbaa !2800
  call void @llvm.dbg.value(metadata i64 %4, metadata !512, metadata !DIExpression()), !dbg !3558
  %5 = icmp eq i8* %0, null, !dbg !3560
  br i1 %5, label %6, label %20, !dbg !3562

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3563
  br i1 %7, label %8, label %13, !dbg !3566

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3567
  call void @llvm.dbg.value(metadata i64 %9, metadata !512, metadata !DIExpression()), !dbg !3558
  %10 = icmp ugt i64 %2, 128, !dbg !3569
  %11 = zext i1 %10 to i64, !dbg !3569
  %12 = add nuw nsw i64 %9, %11, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %12, metadata !512, metadata !DIExpression()), !dbg !3558
  br label %13, !dbg !3571

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3558
  call void @llvm.dbg.value(metadata i64 %14, metadata !512, metadata !DIExpression()), !dbg !3558
  %15 = udiv i64 9223372036854775807, %2, !dbg !3572
  %16 = icmp ult i64 %15, %14, !dbg !3572
  br i1 %16, label %19, label %17, !dbg !3574

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !512, metadata !DIExpression()), !dbg !3558
  store i64 %14, i64* %1, align 8, !dbg !3575, !tbaa !2800
  %18 = mul i64 %14, %2, !dbg !3576
  call void @llvm.dbg.value(metadata i8* %0, metadata !3524, metadata !DIExpression()) #18, !dbg !3577
  call void @llvm.dbg.value(metadata i64 %28, metadata !3529, metadata !DIExpression()) #18, !dbg !3577
  br label %31, !dbg !3579

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3580
  unreachable, !dbg !3580

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3581
  %22 = icmp ugt i64 %21, %4, !dbg !3584
  br i1 %22, label %24, label %23, !dbg !3585

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !3586
  unreachable, !dbg !3586

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3587
  %26 = add nuw i64 %4, 1, !dbg !3588
  %27 = add i64 %26, %25, !dbg !3589
  call void @llvm.dbg.value(metadata i64 %27, metadata !512, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i64 %27, metadata !512, metadata !DIExpression()), !dbg !3558
  store i64 %27, i64* %1, align 8, !dbg !3575, !tbaa !2800
  %28 = mul i64 %27, %2, !dbg !3576
  call void @llvm.dbg.value(metadata i8* %0, metadata !3524, metadata !DIExpression()) #18, !dbg !3577
  call void @llvm.dbg.value(metadata i64 %28, metadata !3529, metadata !DIExpression()) #18, !dbg !3577
  %29 = icmp eq i64 %28, 0, !dbg !3590
  br i1 %29, label %30, label %31, !dbg !3579

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #18, !dbg !3591
  br label %38, !dbg !3592

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #18, !dbg !3593
  call void @llvm.dbg.value(metadata i8* %33, metadata !3524, metadata !DIExpression()) #18, !dbg !3577
  %34 = icmp eq i8* %33, null, !dbg !3594
  %35 = icmp ne i64 %32, 0, !dbg !3595
  %36 = and i1 %35, %34, !dbg !3596
  br i1 %36, label %37, label %38, !dbg !3596

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !3597
  unreachable, !dbg !3597

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3577
  ret i8* %39, !dbg !3598
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3599 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3601, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i64 %0, metadata !3489, metadata !DIExpression()) #18, !dbg !3603
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3605
  call void @llvm.dbg.value(metadata i8* %2, metadata !3494, metadata !DIExpression()) #18, !dbg !3603
  %3 = icmp eq i8* %2, null, !dbg !3606
  %4 = icmp ne i64 %0, 0, !dbg !3607
  %5 = and i1 %4, %3, !dbg !3608
  br i1 %5, label %6, label %7, !dbg !3608

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3609
  unreachable, !dbg !3609

7:                                                ; preds = %1
  ret i8* %2, !dbg !3610
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3611 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3615, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64* %1, metadata !3616, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i8* %0, metadata !509, metadata !DIExpression()) #18, !dbg !3618
  call void @llvm.dbg.value(metadata i64* %1, metadata !510, metadata !DIExpression()) #18, !dbg !3618
  call void @llvm.dbg.value(metadata i64 1, metadata !511, metadata !DIExpression()) #18, !dbg !3618
  %3 = load i64, i64* %1, align 8, !dbg !3620, !tbaa !2800
  call void @llvm.dbg.value(metadata i64 %3, metadata !512, metadata !DIExpression()) #18, !dbg !3618
  %4 = icmp eq i8* %0, null, !dbg !3621
  br i1 %4, label %5, label %12, !dbg !3622

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3623
  br i1 %6, label %9, label %7, !dbg !3624

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !512, metadata !DIExpression()) #18, !dbg !3618
  %8 = icmp slt i64 %3, 0, !dbg !3625
  br i1 %8, label %11, label %9, !dbg !3626

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !512, metadata !DIExpression()) #18, !dbg !3618
  store i64 %10, i64* %1, align 8, !dbg !3627, !tbaa !2800
  call void @llvm.dbg.value(metadata i8* %0, metadata !3524, metadata !DIExpression()) #18, !dbg !3628
  call void @llvm.dbg.value(metadata i64 %18, metadata !3529, metadata !DIExpression()) #18, !dbg !3628
  br label %21, !dbg !3630

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3631
  unreachable, !dbg !3631

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3632
  br i1 %13, label %15, label %14, !dbg !3633

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !3634
  unreachable, !dbg !3634

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3635
  %17 = add nuw nsw i64 %3, 1, !dbg !3636
  %18 = add nuw nsw i64 %17, %16, !dbg !3637
  call void @llvm.dbg.value(metadata i64 %18, metadata !512, metadata !DIExpression()) #18, !dbg !3618
  call void @llvm.dbg.value(metadata i64 %18, metadata !512, metadata !DIExpression()) #18, !dbg !3618
  store i64 %18, i64* %1, align 8, !dbg !3627, !tbaa !2800
  call void @llvm.dbg.value(metadata i8* %0, metadata !3524, metadata !DIExpression()) #18, !dbg !3628
  call void @llvm.dbg.value(metadata i64 %18, metadata !3529, metadata !DIExpression()) #18, !dbg !3628
  %19 = icmp eq i64 %18, 0, !dbg !3638
  br i1 %19, label %20, label %21, !dbg !3630

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #18, !dbg !3639
  br label %28, !dbg !3640

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #18, !dbg !3641
  call void @llvm.dbg.value(metadata i8* %23, metadata !3524, metadata !DIExpression()) #18, !dbg !3628
  %24 = icmp eq i8* %23, null, !dbg !3642
  %25 = icmp ne i64 %22, 0, !dbg !3643
  %26 = and i1 %25, %24, !dbg !3644
  br i1 %26, label %27, label %28, !dbg !3644

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !3645
  unreachable, !dbg !3645

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3628
  ret i8* %29, !dbg !3646
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3647 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3649, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i64 %0, metadata !3651, metadata !DIExpression()) #18, !dbg !3656
  call void @llvm.dbg.value(metadata i64 1, metadata !3654, metadata !DIExpression()) #18, !dbg !3656
  %2 = icmp slt i64 %0, 0, !dbg !3658
  br i1 %2, label %6, label %3, !dbg !3660

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #18, !dbg !3661
  call void @llvm.dbg.value(metadata i8* %4, metadata !3655, metadata !DIExpression()) #18, !dbg !3656
  %5 = icmp eq i8* %4, null, !dbg !3662
  br i1 %5, label %6, label %7, !dbg !3663

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !3664
  unreachable, !dbg !3664

7:                                                ; preds = %3
  ret i8* %4, !dbg !3665
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3652 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3651, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i64 %1, metadata !3654, metadata !DIExpression()), !dbg !3666
  %3 = udiv i64 9223372036854775807, %1, !dbg !3667
  %4 = icmp ult i64 %3, %0, !dbg !3667
  br i1 %4, label %8, label %5, !dbg !3668

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #18, !dbg !3669
  call void @llvm.dbg.value(metadata i8* %6, metadata !3655, metadata !DIExpression()), !dbg !3666
  %7 = icmp eq i8* %6, null, !dbg !3670
  br i1 %7, label %8, label %9, !dbg !3671

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !3672
  unreachable, !dbg !3672

9:                                                ; preds = %5
  ret i8* %6, !dbg !3673
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3674 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3678, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i64 %1, metadata !3679, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i64 %1, metadata !3489, metadata !DIExpression()) #18, !dbg !3681
  %3 = tail call noalias i8* @malloc(i64 %1) #18, !dbg !3683
  call void @llvm.dbg.value(metadata i8* %3, metadata !3494, metadata !DIExpression()) #18, !dbg !3681
  %4 = icmp eq i8* %3, null, !dbg !3684
  %5 = icmp ne i64 %1, 0, !dbg !3685
  %6 = and i1 %5, %4, !dbg !3686
  br i1 %6, label %7, label %8, !dbg !3686

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3687
  unreachable, !dbg !3687

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3688, metadata !DIExpression()) #18, !dbg !3697
  call void @llvm.dbg.value(metadata i8* %0, metadata !3695, metadata !DIExpression()) #18, !dbg !3697
  call void @llvm.dbg.value(metadata i64 %1, metadata !3696, metadata !DIExpression()) #18, !dbg !3697
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #18, !dbg !3699
  ret i8* %3, !dbg !3700
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3701 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3703, metadata !DIExpression()), !dbg !3704
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !3705
  %3 = add i64 %2, 1, !dbg !3706
  call void @llvm.dbg.value(metadata i8* %0, metadata !3678, metadata !DIExpression()) #18, !dbg !3707
  call void @llvm.dbg.value(metadata i64 %3, metadata !3679, metadata !DIExpression()) #18, !dbg !3707
  call void @llvm.dbg.value(metadata i64 %3, metadata !3489, metadata !DIExpression()) #18, !dbg !3709
  %4 = tail call noalias i8* @malloc(i64 %3) #18, !dbg !3711
  call void @llvm.dbg.value(metadata i8* %4, metadata !3494, metadata !DIExpression()) #18, !dbg !3709
  %5 = icmp eq i8* %4, null, !dbg !3712
  %6 = icmp ne i64 %3, 0, !dbg !3713
  %7 = and i1 %6, %5, !dbg !3714
  br i1 %7, label %8, label %9, !dbg !3714

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3715
  unreachable, !dbg !3715

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3688, metadata !DIExpression()) #18, !dbg !3716
  call void @llvm.dbg.value(metadata i8* %0, metadata !3695, metadata !DIExpression()) #18, !dbg !3716
  call void @llvm.dbg.value(metadata i64 %3, metadata !3696, metadata !DIExpression()) #18, !dbg !3716
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #18, !dbg !3718
  ret i8* %4, !dbg !3719
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3720 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3721, !tbaa !1235
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.120, i64 0, i64 0), i32 5) #18, !dbg !3722
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i64 0, i64 0), i8* %2) #18, !dbg !3723
  tail call void @abort() #22, !dbg !3724
  unreachable, !dbg !3724
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3725 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3727, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i64 %1, metadata !3728, metadata !DIExpression()), !dbg !3733
  %3 = icmp eq i64 %0, 0, !dbg !3734
  %4 = icmp eq i64 %1, 0, !dbg !3735
  %5 = or i1 %3, %4, !dbg !3736
  br i1 %5, label %11, label %6, !dbg !3736

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3730, metadata !DIExpression()), !dbg !3737
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3738
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3738
  br i1 %8, label %9, label %11, !dbg !3740

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3741
  store i32 12, i32* %10, align 4, !dbg !3743, !tbaa !1235
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3727, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i64 %12, metadata !3728, metadata !DIExpression()), !dbg !3733
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #18, !dbg !3744
  call void @llvm.dbg.value(metadata i8* %14, metadata !3729, metadata !DIExpression()), !dbg !3733
  br label %15, !dbg !3745

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3733
  ret i8* %16, !dbg !3746
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3747 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3753, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i32 0, metadata !3754, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i32 0, metadata !3756, metadata !DIExpression()), !dbg !3757
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3758
  call void @llvm.dbg.value(metadata i32 %2, metadata !3755, metadata !DIExpression()), !dbg !3757
  %3 = icmp slt i32 %2, 0, !dbg !3759
  br i1 %3, label %4, label %6, !dbg !3761

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3762
  br label %24, !dbg !3763

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3764
  %8 = icmp eq i32 %7, 0, !dbg !3764
  br i1 %8, label %13, label %9, !dbg !3766

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3767
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #18, !dbg !3768
  %12 = icmp eq i64 %11, -1, !dbg !3769
  br i1 %12, label %16, label %13, !dbg !3770

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #18, !dbg !3771
  %15 = icmp eq i32 %14, 0, !dbg !3771
  br i1 %15, label %16, label %18, !dbg !3772

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3754, metadata !DIExpression()), !dbg !3757
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3773
  call void @llvm.dbg.value(metadata i32 %21, metadata !3756, metadata !DIExpression()), !dbg !3757
  br label %24, !dbg !3774

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !3775
  %20 = load i32, i32* %19, align 4, !dbg !3775, !tbaa !1235
  call void @llvm.dbg.value(metadata i32 %20, metadata !3754, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i32 %20, metadata !3754, metadata !DIExpression()), !dbg !3757
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3773
  call void @llvm.dbg.value(metadata i32 %21, metadata !3756, metadata !DIExpression()), !dbg !3757
  %22 = icmp eq i32 %20, 0, !dbg !3776
  br i1 %22, label %24, label %23, !dbg !3774

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3778, !tbaa !1235
  call void @llvm.dbg.value(metadata i32 -1, metadata !3756, metadata !DIExpression()), !dbg !3757
  br label %24, !dbg !3780

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3757
  ret i32 %25, !dbg !3781
}

; Function Attrs: nofree nounwind
declare !dbg !565 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !566 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3782 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3788, metadata !DIExpression()), !dbg !3789
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3790
  br i1 %2, label %6, label %3, !dbg !3792

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3793
  %5 = icmp eq i32 %4, 0, !dbg !3793
  br i1 %5, label %6, label %8, !dbg !3794

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3795
  br label %17, !dbg !3796

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3797, metadata !DIExpression()) #18, !dbg !3802
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3804
  %10 = load i32, i32* %9, align 8, !dbg !3804, !tbaa !1453
  %11 = and i32 %10, 256, !dbg !3806
  %12 = icmp eq i32 %11, 0, !dbg !3806
  br i1 %12, label %15, label %13, !dbg !3807

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #18, !dbg !3808
  br label %15, !dbg !3808

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3809
  br label %17, !dbg !3810

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3789
  ret i32 %18, !dbg !3811
}

; Function Attrs: nofree nounwind
declare !dbg !574 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3812 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3818, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i64 %1, metadata !3819, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i32 %2, metadata !3820, metadata !DIExpression()), !dbg !3824
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3825
  %5 = load i8*, i8** %4, align 8, !dbg !3825, !tbaa !1360
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3826
  %7 = load i8*, i8** %6, align 8, !dbg !3826, !tbaa !1356
  %8 = icmp eq i8* %5, %7, !dbg !3827
  br i1 %8, label %9, label %28, !dbg !3828

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3829
  %11 = load i8*, i8** %10, align 8, !dbg !3829, !tbaa !1402
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3830
  %13 = load i8*, i8** %12, align 8, !dbg !3830, !tbaa !3831
  %14 = icmp eq i8* %11, %13, !dbg !3832
  br i1 %14, label %15, label %28, !dbg !3833

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3834
  %17 = load i8*, i8** %16, align 8, !dbg !3834, !tbaa !3835
  %18 = icmp eq i8* %17, null, !dbg !3836
  br i1 %18, label %19, label %28, !dbg !3837

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3838
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #18, !dbg !3839
  call void @llvm.dbg.value(metadata i64 %21, metadata !3821, metadata !DIExpression()), !dbg !3840
  %22 = icmp eq i64 %21, -1, !dbg !3841
  br i1 %22, label %30, label %23, !dbg !3843

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3844
  %25 = load i32, i32* %24, align 8, !dbg !3845, !tbaa !1453
  %26 = and i32 %25, -17, !dbg !3845
  store i32 %26, i32* %24, align 8, !dbg !3845, !tbaa !1453
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3846
  store i64 %21, i64* %27, align 8, !dbg !3847, !tbaa !3848
  br label %30, !dbg !3849

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3850
  br label %30, !dbg !3851

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3824
  ret i32 %31, !dbg !3852
}

; Function Attrs: nofree nounwind
declare !dbg !650 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3853 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3861, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i8* %1, metadata !3862, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i64 %2, metadata !3863, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3864, metadata !DIExpression()), !dbg !3870
  %6 = bitcast i32* %5 to i8*, !dbg !3871
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3871
  %7 = icmp eq i32* %0, null, !dbg !3872
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3874
  call void @llvm.dbg.value(metadata i32* %8, metadata !3861, metadata !DIExpression()), !dbg !3870
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #18, !dbg !3875
  call void @llvm.dbg.value(metadata i64 %9, metadata !3865, metadata !DIExpression()), !dbg !3870
  %10 = icmp ugt i64 %9, -3, !dbg !3876
  %11 = icmp ne i64 %2, 0, !dbg !3877
  %12 = and i1 %11, %10, !dbg !3878
  br i1 %12, label %13, label %18, !dbg !3878

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #18, !dbg !3879
  br i1 %14, label %18, label %15, !dbg !3880

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3881, !tbaa !1222
  call void @llvm.dbg.value(metadata i8 %16, metadata !3867, metadata !DIExpression()), !dbg !3882
  %17 = zext i8 %16 to i32, !dbg !3883
  store i32 %17, i32* %8, align 4, !dbg !3884, !tbaa !1235
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3870
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3885
  ret i64 %19, !dbg !3885
}

; Function Attrs: nounwind
declare !dbg !656 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3886 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3892, metadata !DIExpression()), !dbg !3897
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #18, !dbg !3898
  call void @llvm.dbg.value(metadata i1 undef, metadata !3893, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3899, metadata !DIExpression()), !dbg !3902
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3904
  %4 = load i32, i32* %3, align 8, !dbg !3904, !tbaa !1453
  %5 = and i32 %4, 32, !dbg !3904
  %6 = icmp eq i32 %5, 0, !dbg !3905
  call void @llvm.dbg.value(metadata i1 %6, metadata !3895, metadata !DIExpression()), !dbg !3897
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #18, !dbg !3906
  %8 = icmp ne i32 %7, 0, !dbg !3907
  call void @llvm.dbg.value(metadata i1 %8, metadata !3896, metadata !DIExpression()), !dbg !3897
  br i1 %6, label %9, label %19, !dbg !3908

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3910
  call void @llvm.dbg.value(metadata i1 %10, metadata !3893, metadata !DIExpression()), !dbg !3897
  %11 = xor i1 %8, true, !dbg !3911
  %12 = or i1 %10, %11, !dbg !3911
  %13 = sext i1 %8 to i32, !dbg !3911
  br i1 %12, label %22, label %14, !dbg !3911

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !3912
  %16 = load i32, i32* %15, align 4, !dbg !3912, !tbaa !1235
  %17 = icmp ne i32 %16, 9, !dbg !3913
  %18 = sext i1 %17 to i32, !dbg !3914
  br label %22, !dbg !3914

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3915

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !3917
  store i32 0, i32* %21, align 4, !dbg !3919, !tbaa !1235
  br label %22, !dbg !3917

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3897
  ret i32 %23, !dbg !3920
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3921 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3923, metadata !DIExpression()), !dbg !3928
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3929
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3929
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3924, metadata !DIExpression()), !dbg !3930
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #18, !dbg !3931
  %5 = icmp eq i32 %4, 0, !dbg !3931
  br i1 %5, label %6, label %13, !dbg !3933

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3934
  %8 = load i16, i16* %7, align 16, !dbg !3934
  %9 = icmp eq i16 %8, 67, !dbg !3934
  br i1 %9, label %13, label %10, !dbg !3935

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.136, i64 0, i64 0), i64 6), !dbg !3936
  %12 = icmp ne i32 %11, 0, !dbg !3937
  br label %13, !dbg !3935

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3928
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3938
  ret i1 %14, !dbg !3938
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3939 {
  %1 = tail call i8* @nl_langinfo(i32 14) #18, !dbg !3942
  call void @llvm.dbg.value(metadata i8* %1, metadata !3941, metadata !DIExpression()), !dbg !3943
  %2 = icmp eq i8* %1, null, !dbg !3944
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), i8* %1, !dbg !3946
  call void @llvm.dbg.value(metadata i8* %3, metadata !3941, metadata !DIExpression()), !dbg !3943
  %4 = load i8, i8* %3, align 1, !dbg !3947, !tbaa !1222
  %5 = icmp eq i8 %4, 0, !dbg !3951
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.140, i64 0, i64 0), i8* %3, !dbg !3952
  call void @llvm.dbg.value(metadata i8* %6, metadata !3941, metadata !DIExpression()), !dbg !3943
  ret i8* %6, !dbg !3953
}

; Function Attrs: nounwind
declare !dbg !1107 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3954 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3958, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata i8* %1, metadata !3959, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata i64 %2, metadata !3960, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata i32 %0, metadata !3962, metadata !DIExpression()) #18, !dbg !3971
  call void @llvm.dbg.value(metadata i8* %1, metadata !3965, metadata !DIExpression()) #18, !dbg !3971
  call void @llvm.dbg.value(metadata i64 %2, metadata !3966, metadata !DIExpression()) #18, !dbg !3971
  call void @llvm.dbg.value(metadata i32 %0, metadata !3973, metadata !DIExpression()) #18, !dbg !3979
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3981
  call void @llvm.dbg.value(metadata i8* %4, metadata !3978, metadata !DIExpression()) #18, !dbg !3979
  call void @llvm.dbg.value(metadata i8* %4, metadata !3967, metadata !DIExpression()) #18, !dbg !3971
  %5 = icmp eq i8* %4, null, !dbg !3982
  br i1 %5, label %6, label %9, !dbg !3983

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3984
  br i1 %7, label %19, label %8, !dbg !3987

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3988, !tbaa !1222
  br label %19, !dbg !3989

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !3990
  call void @llvm.dbg.value(metadata i64 %10, metadata !3968, metadata !DIExpression()) #18, !dbg !3991
  %11 = icmp ult i64 %10, %2, !dbg !3992
  br i1 %11, label %12, label %14, !dbg !3994

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3995
  call void @llvm.dbg.value(metadata i8* %1, metadata !3997, metadata !DIExpression()) #18, !dbg !4002
  call void @llvm.dbg.value(metadata i8* %4, metadata !4000, metadata !DIExpression()) #18, !dbg !4002
  call void @llvm.dbg.value(metadata i64 %13, metadata !4001, metadata !DIExpression()) #18, !dbg !4002
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #18, !dbg !4004
  br label %19, !dbg !4005

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4006
  br i1 %15, label %19, label %16, !dbg !4009

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4010
  call void @llvm.dbg.value(metadata i8* %1, metadata !3997, metadata !DIExpression()) #18, !dbg !4012
  call void @llvm.dbg.value(metadata i8* %4, metadata !4000, metadata !DIExpression()) #18, !dbg !4012
  call void @llvm.dbg.value(metadata i64 %17, metadata !4001, metadata !DIExpression()) #18, !dbg !4012
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #18, !dbg !4014
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4015
  store i8 0, i8* %18, align 1, !dbg !4016, !tbaa !1222
  br label %19, !dbg !4017

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4018
  ret i32 %20, !dbg !4019
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4020 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4022, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i32 %0, metadata !3973, metadata !DIExpression()) #18, !dbg !4024
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !4026
  call void @llvm.dbg.value(metadata i8* %2, metadata !3978, metadata !DIExpression()) #18, !dbg !4024
  ret i8* %2, !dbg !4027
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
attributes #10 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree nounwind }
attributes #13 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree nounwind readonly }
attributes #17 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nounwind }
attributes #19 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nounwind readonly }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { nounwind readnone }
attributes #25 = { cold }

!llvm.dbg.cu = !{!2, !195, !200, !245, !415, !251, !292, !458, !409, !500, !521, !524, !527, !571, !612, !653, !672, !710, !717, !1110}
!llvm.ident = !{!1113, !1113, !1113, !1113, !1113, !1113, !1113, !1113, !1113, !1113, !1113, !1113, !1113, !1113, !1113, !1113, !1113, !1113, !1113, !1113}
!llvm.module.flags = !{!1114, !1115, !1116, !1117, !1118}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 59, type: !179, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !175, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/paste.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!29 = !{!30, !40, !101, !105, !109, !112, !115, !122, !34, !91, !137, !141, !144, !148, !151, !155, !157, !160, !163, !164, !165, !168, !93, !36, !169, !174}
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
!137 = !DISubprogram(name: "version_etc", scope: !138, file: !138, line: 69, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!138 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!139 = !DISubroutineType(types: !140)
!140 = !{null, !44, !36, !36, !36, null}
!141 = !DISubprogram(name: "quotearg_n_style_colon", scope: !6, file: !6, line: 397, type: !142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!142 = !DISubroutineType(types: !143)
!143 = !{!34, !38, !5, !36}
!144 = !DISubprogram(name: "error", scope: !145, file: !145, line: 52, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!145 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!146 = !DISubroutineType(types: !147)
!147 = !{null, !38, !38, !36, null}
!148 = !DISubprogram(name: "free", scope: !116, file: !116, line: 565, type: !149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !91}
!151 = !DISubprogram(name: "rpl_fclose", scope: !152, file: !152, line: 672, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!152 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!153 = !DISubroutineType(types: !154)
!154 = !{!38, !44}
!155 = !DISubprogram(name: "xstrdup", scope: !156, file: !156, line: 64, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!156 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!157 = !DISubprogram(name: "fadvise", scope: !21, file: !21, line: 72, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !44, !20}
!160 = !DISubprogram(name: "clearerr_unlocked", scope: !41, file: !41, line: 765, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !44}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!165 = !DISubprogram(name: "xmalloc", scope: !156, file: !156, line: 53, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!166 = !DISubroutineType(types: !167)
!167 = !{!91, !95}
!168 = !DISubprogram(name: "fileno", scope: !41, file: !41, line: 786, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!169 = !DISubprogram(name: "fwrite_unlocked", scope: !41, file: !41, line: 675, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!170 = !DISubroutineType(types: !171)
!171 = !{!95, !172, !95, !95, !44}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!174 = !DISubprogram(name: "xalloc_die", scope: !156, file: !156, line: 51, type: !120, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !39)
!175 = !{!176, !177, !180, !182, !187, !189}
!176 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "serial_merge", scope: !2, file: !3, line: 63, type: !179, isLocal: true, isDefinition: true)
!179 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "delims", scope: !2, file: !3, line: 66, type: !34, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 73, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 1536, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 6)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "line_delim", scope: !2, file: !3, line: 71, type: !164, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "delim_end", scope: !2, file: !3, line: 69, type: !36, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!192 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "Version", scope: !195, file: !196, line: 2, type: !36, isLocal: false, isDefinition: true)
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !197, splitDebugInlining: false, nameTableKind: None)
!196 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!197 = !{!193}
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "file_name", scope: !200, file: !201, line: 46, type: !36, isLocal: true, isDefinition: true)
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !202, globals: !240, splitDebugInlining: false, nameTableKind: None)
!201 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!202 = !{!203, !30, !239, !144}
!203 = !DISubprogram(name: "close_stream", scope: !204, file: !204, line: 2, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!204 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!205 = !DISubroutineType(types: !206)
!206 = !{!38, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !208, file: !46, line: 51, baseType: !38, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !208, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !208, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !208, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !208, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !208, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !208, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !208, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !208, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !208, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !208, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !208, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !208, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !208, file: !46, line: 70, baseType: !207, size: 64, offset: 832)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !208, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !208, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !208, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !208, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !208, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !208, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !208, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !208, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !208, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !208, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !208, file: !46, line: 93, baseType: !207, size: 64, offset: 1344)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !208, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !208, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !208, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !208, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!239 = !DISubprogram(name: "quotearg_colon", scope: !6, file: !6, line: 391, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!240 = !{!198, !241}
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !200, file: !201, line: 56, type: !179, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "exit_failure", scope: !245, file: !246, line: 24, type: !248, isLocal: false, isDefinition: true)
!245 = distinct !DICompileUnit(language: DW_LANG_C99, file: !246, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !247, splitDebugInlining: false, nameTableKind: None)
!246 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!247 = !{!243}
!248 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(name: "program_name", scope: !251, file: !252, line: 33, type: !36, isLocal: false, isDefinition: true)
!251 = distinct !DICompileUnit(language: DW_LANG_C99, file: !252, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !253, globals: !289, splitDebugInlining: false, nameTableKind: None)
!252 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!253 = !{!91, !254, !34}
!254 = !DISubprogram(name: "fputs", scope: !41, file: !41, line: 626, type: !255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!255 = !DISubroutineType(types: !256)
!256 = !{!38, !36, !257}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !259)
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !258, file: !46, line: 51, baseType: !38, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !258, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !258, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !258, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !258, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !258, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !258, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !258, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !258, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !258, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !258, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !258, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !258, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !258, file: !46, line: 70, baseType: !257, size: 64, offset: 832)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !258, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !258, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !258, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !258, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !258, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !258, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !258, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !258, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !258, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !258, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !258, file: !46, line: 93, baseType: !257, size: 64, offset: 1344)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !258, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !258, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !258, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !258, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!289 = !{!249}
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !292, file: !293, line: 85, type: !403, isLocal: false, isDefinition: true)
!292 = distinct !DICompileUnit(language: DW_LANG_C99, file: !293, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !294, retainedTypes: !315, globals: !376, splitDebugInlining: false, nameTableKind: None)
!293 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!294 = !{!5, !295, !300}
!295 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !296)
!296 = !{!297, !298, !299}
!297 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!298 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!299 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !301, line: 46, baseType: !7, size: 32, elements: !302)
!301 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!302 = !{!303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314}
!303 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!304 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!305 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!306 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!307 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!308 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!309 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!310 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!311 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!312 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!313 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!314 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!315 = !{!316, !319, !148, !335, !38, !71, !338, !93, !355, !359, !30, !365, !369, !34, !165, !174, !373}
!316 = !DISubprogram(name: "xmemdup", scope: !156, file: !156, line: 62, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!317 = !DISubroutineType(types: !318)
!318 = !{!91, !172, !95}
!319 = !DISubprogram(name: "quotearg_alloc_mem", scope: !6, file: !6, line: 342, type: !320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!320 = !DISubroutineType(types: !321)
!321 = !{!34, !36, !95, !322, !323}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !293, line: 65, size: 448, elements: !326)
!326 = !{!327, !328, !329, !333, !334}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !325, file: !293, line: 68, baseType: !5, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !325, file: !293, line: 71, baseType: !38, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !325, file: !293, line: 75, baseType: !330, size: 256, offset: 64)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 8)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !325, file: !293, line: 78, baseType: !36, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !325, file: !293, line: 81, baseType: !36, size: 64, offset: 384)
!335 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !6, file: !6, line: 408, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!336 = !DISubroutineType(types: !337)
!337 = !{!34, !38, !36, !36, !36, !95}
!338 = !DISubprogram(name: "rpl_mbrtowc", scope: !339, file: !339, line: 717, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!339 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!340 = !DISubroutineType(types: !341)
!341 = !{!95, !135, !36, !95, !342}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 13, size: 64, elements: !345)
!344 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !343, file: !344, line: 15, baseType: !38, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !343, file: !344, line: 20, baseType: !348, size: 32, offset: 32)
!348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !344, line: 16, size: 32, elements: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !348, file: !344, line: 18, baseType: !7, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !348, file: !344, line: 19, baseType: !352, size: 32)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 4)
!355 = !DISubprogram(name: "iswprint", scope: !356, file: !356, line: 120, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!356 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!357 = !DISubroutineType(types: !358)
!358 = !{!38, !7}
!359 = !DISubprogram(name: "mbsinit", scope: !360, file: !360, line: 292, type: !361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!360 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!361 = !DISubroutineType(types: !362)
!362 = !{!38, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!365 = !DISubprogram(name: "locale_charset", scope: !366, file: !366, line: 35, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!366 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!367 = !DISubroutineType(types: !368)
!368 = !{!36}
!369 = !DISubprogram(name: "c_strcasecmp", scope: !370, file: !370, line: 42, type: !371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!370 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!371 = !DISubroutineType(types: !372)
!372 = !{!38, !36, !36}
!373 = !DISubprogram(name: "xrealloc", scope: !156, file: !156, line: 59, type: !374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!374 = !DISubroutineType(types: !375)
!375 = !{!91, !91, !95}
!376 = !{!290, !377, !383, !385, !387, !392, !399, !401}
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !292, file: !293, line: 101, type: !379, isLocal: false, isDefinition: true)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 320, elements: !381)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!381 = !{!382}
!382 = !DISubrange(count: 10)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !292, file: !293, line: 1052, type: !325, isLocal: false, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !292, file: !293, line: 116, type: !325, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "slot0", scope: !292, file: !293, line: 842, type: !389, isLocal: true, isDefinition: true)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2048, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 256)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "slotvec", scope: !292, file: !293, line: 845, type: !394, isLocal: true, isDefinition: true)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !293, line: 834, size: 128, elements: !396)
!396 = !{!397, !398}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !395, file: !293, line: 836, baseType: !93, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !395, file: !293, line: 837, baseType: !34, size: 64, offset: 64)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "nslots", scope: !292, file: !293, line: 843, type: !38, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "slotvec0", scope: !292, file: !293, line: 844, type: !395, isLocal: true, isDefinition: true)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 704, elements: !405)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!405 = !{!406}
!406 = !DISubrange(count: 11)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !409, file: !410, line: 26, type: !412, isLocal: false, isDefinition: true)
!409 = distinct !DICompileUnit(language: DW_LANG_C99, file: !410, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !411, splitDebugInlining: false, nameTableKind: None)
!410 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!411 = !{!407}
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 376, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 47)
!415 = distinct !DICompileUnit(language: DW_LANG_C99, file: !416, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !417, retainedTypes: !418, splitDebugInlining: false, nameTableKind: None)
!416 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!417 = !{!20}
!418 = !{!419, !423}
!419 = !DISubprogram(name: "posix_fadvise", scope: !420, file: !420, line: 288, type: !421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!420 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!421 = !DISubroutineType(types: !422)
!422 = !{!38, !38, !69, !69, !38}
!423 = !DISubprogram(name: "fileno", scope: !41, file: !41, line: 786, type: !424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!424 = !DISubroutineType(types: !425)
!425 = !{!38, !426}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !428)
!428 = !{!429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !427, file: !46, line: 51, baseType: !38, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !427, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !427, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !427, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !427, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !427, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !427, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !427, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !427, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !427, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !427, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !427, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !427, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !427, file: !46, line: 70, baseType: !426, size: 64, offset: 832)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !427, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !427, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !427, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !427, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !427, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !427, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !427, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !427, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !427, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !427, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !427, file: !46, line: 93, baseType: !426, size: 64, offset: 1344)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !427, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !427, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !427, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !427, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!458 = distinct !DICompileUnit(language: DW_LANG_C99, file: !459, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !460, retainedTypes: !464, splitDebugInlining: false, nameTableKind: None)
!459 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!460 = !{!461}
!461 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !459, line: 40, baseType: !7, size: 32, elements: !462)
!462 = !{!463}
!463 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!464 = !{!30, !465, !91}
!465 = !DISubprogram(name: "fputs_unlocked", scope: !41, file: !41, line: 662, type: !466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!466 = !DISubroutineType(types: !467)
!467 = !{!38, !36, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !469, file: !46, line: 51, baseType: !38, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !469, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !469, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !469, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !469, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !469, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !469, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !469, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !469, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !469, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !469, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !469, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !469, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !469, file: !46, line: 70, baseType: !468, size: 64, offset: 832)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !469, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !469, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !469, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !469, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !469, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !469, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !469, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !469, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !469, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !469, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !469, file: !46, line: 93, baseType: !468, size: 64, offset: 1344)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !469, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !469, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !469, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !469, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!500 = distinct !DICompileUnit(language: DW_LANG_C99, file: !501, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !502, retainedTypes: !515, splitDebugInlining: false, nameTableKind: None)
!501 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!502 = !{!503}
!503 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !504, file: !156, line: 186, baseType: !7, size: 32, elements: !513)
!504 = distinct !DISubprogram(name: "x2nrealloc", scope: !156, file: !156, line: 174, type: !505, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !508)
!505 = !DISubroutineType(types: !506)
!506 = !{!91, !91, !507, !93}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!508 = !{!509, !510, !511, !512}
!509 = !DILocalVariable(name: "p", arg: 1, scope: !504, file: !156, line: 174, type: !91)
!510 = !DILocalVariable(name: "pn", arg: 2, scope: !504, file: !156, line: 174, type: !507)
!511 = !DILocalVariable(name: "s", arg: 3, scope: !504, file: !156, line: 174, type: !93)
!512 = !DILocalVariable(name: "n", scope: !504, file: !156, line: 176, type: !93)
!513 = !{!514}
!514 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!515 = !{!93, !174, !165, !373, !34, !148, !91, !516, !519}
!516 = !DISubprogram(name: "xcalloc", scope: !156, file: !156, line: 57, type: !517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!517 = !DISubroutineType(types: !518)
!518 = !{!91, !95, !95}
!519 = !DISubprogram(name: "rpl_calloc", scope: !520, file: !520, line: 688, type: !517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!520 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!521 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !523, splitDebugInlining: false, nameTableKind: None)
!522 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!523 = !{!30, !144}
!524 = distinct !DICompileUnit(language: DW_LANG_C99, file: !525, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !526, splitDebugInlining: false, nameTableKind: None)
!525 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!526 = !{!91}
!527 = distinct !DICompileUnit(language: DW_LANG_C99, file: !528, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !529, splitDebugInlining: false, nameTableKind: None)
!528 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!529 = !{!530, !565, !566, !570}
!530 = !DISubprogram(name: "fileno", scope: !41, file: !41, line: 786, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!531 = !DISubroutineType(types: !532)
!532 = !{!38, !533}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !535)
!535 = !{!536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !534, file: !46, line: 51, baseType: !38, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !534, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !534, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !534, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !534, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !534, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !534, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !534, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !534, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !534, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !534, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !534, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !534, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !534, file: !46, line: 70, baseType: !533, size: 64, offset: 832)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !534, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !534, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !534, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !534, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !534, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !534, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !534, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !534, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !534, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !534, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !534, file: !46, line: 93, baseType: !533, size: 64, offset: 1344)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !534, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !534, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !534, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !534, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!565 = !DISubprogram(name: "fclose", scope: !41, file: !41, line: 213, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!566 = !DISubprogram(name: "lseek", scope: !567, file: !567, line: 334, type: !568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!567 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!568 = !DISubroutineType(types: !569)
!569 = !{!69, !38, !69, !38}
!570 = !DISubprogram(name: "rpl_fflush", scope: !152, file: !152, line: 718, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !573, splitDebugInlining: false, nameTableKind: None)
!572 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!573 = !{!91, !574, !609}
!574 = !DISubprogram(name: "fflush", scope: !41, file: !41, line: 218, type: !575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!575 = !DISubroutineType(types: !576)
!576 = !{!38, !577}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !579)
!579 = !{!580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !578, file: !46, line: 51, baseType: !38, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !578, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !578, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !578, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !578, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !578, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !578, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !578, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !578, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !578, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !578, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !578, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !578, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !578, file: !46, line: 70, baseType: !577, size: 64, offset: 832)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !578, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !578, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !578, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !578, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !578, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !578, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !578, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !578, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !578, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !578, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !578, file: !46, line: 93, baseType: !577, size: 64, offset: 1344)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !578, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !578, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !578, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !578, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!609 = !DISubprogram(name: "rpl_fseeko", scope: !152, file: !152, line: 1034, type: !610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!610 = !DISubroutineType(types: !611)
!611 = !{!38, !577, !69, !38}
!612 = distinct !DICompileUnit(language: DW_LANG_C99, file: !613, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !614, splitDebugInlining: false, nameTableKind: None)
!613 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!614 = !{!91, !615, !566, !650}
!615 = !DISubprogram(name: "fileno", scope: !41, file: !41, line: 786, type: !616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!616 = !DISubroutineType(types: !617)
!617 = !{!38, !618}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !619, file: !46, line: 51, baseType: !38, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !619, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !619, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !619, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !619, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !619, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !619, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !619, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !619, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !619, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !619, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !619, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !619, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !619, file: !46, line: 70, baseType: !618, size: 64, offset: 832)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !619, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !619, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !619, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !619, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !619, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !619, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !619, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !619, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !619, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !619, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !619, file: !46, line: 93, baseType: !618, size: 64, offset: 1344)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !619, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !619, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !619, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !619, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!650 = !DISubprogram(name: "fseeko", scope: !41, file: !41, line: 707, type: !651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!651 = !DISubroutineType(types: !652)
!652 = !{!38, !618, !69, !38}
!653 = distinct !DICompileUnit(language: DW_LANG_C99, file: !654, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !655, splitDebugInlining: false, nameTableKind: None)
!654 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!655 = !{!656, !93, !668}
!656 = !DISubprogram(name: "mbrtowc", scope: !360, file: !360, line: 296, type: !657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!657 = !DISubroutineType(types: !658)
!658 = !{!95, !135, !36, !95, !659}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 13, size: 64, elements: !661)
!661 = !{!662, !663}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !660, file: !344, line: 15, baseType: !38, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !660, file: !344, line: 20, baseType: !664, size: 32, offset: 32)
!664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !660, file: !344, line: 16, size: 32, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !664, file: !344, line: 18, baseType: !7, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !664, file: !344, line: 19, baseType: !352, size: 32)
!668 = !DISubprogram(name: "hard_locale", scope: !669, file: !669, line: 26, type: !670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!669 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!670 = !DISubroutineType(types: !671)
!671 = !{!179, !38}
!672 = distinct !DICompileUnit(language: DW_LANG_C99, file: !673, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !674, splitDebugInlining: false, nameTableKind: None)
!673 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!674 = !{!675}
!675 = !DISubprogram(name: "rpl_fclose", scope: !152, file: !152, line: 672, type: !676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!676 = !DISubroutineType(types: !677)
!677 = !{!38, !678}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !680)
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !679, file: !46, line: 51, baseType: !38, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !679, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !679, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !679, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !679, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !679, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !679, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !679, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !679, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !679, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !679, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !679, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !679, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !679, file: !46, line: 70, baseType: !678, size: 64, offset: 832)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !679, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !679, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !679, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !679, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !679, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !679, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !679, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !679, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !679, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !679, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !679, file: !46, line: 93, baseType: !678, size: 64, offset: 1344)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !679, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !679, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !679, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !679, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!710 = distinct !DICompileUnit(language: DW_LANG_C99, file: !711, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !712, splitDebugInlining: false, nameTableKind: None)
!711 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!712 = !{!713}
!713 = !DISubprogram(name: "setlocale_null_r", scope: !714, file: !714, line: 64, type: !715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!714 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!715 = !DISubroutineType(types: !716)
!716 = !{!38, !38, !34, !95}
!717 = distinct !DICompileUnit(language: DW_LANG_C99, file: !718, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !719, retainedTypes: !1106, splitDebugInlining: false, nameTableKind: None)
!718 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!719 = !{!720}
!720 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !721, line: 41, baseType: !7, size: 32, elements: !722)
!721 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!722 = !{!723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105}
!723 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!724 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!725 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!726 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!727 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!728 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!729 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!730 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!731 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!732 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!733 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!734 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!735 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!736 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!737 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!738 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!739 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!740 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!741 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!742 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!743 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!744 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!745 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!746 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!747 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!748 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!749 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!750 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!751 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!752 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!753 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!754 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!755 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!756 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!757 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!758 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!759 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!760 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!761 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!762 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!763 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!764 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!765 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!766 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!767 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!768 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!769 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!770 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!771 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!772 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!831 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!834 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!835 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!836 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!837 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!838 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!839 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!840 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!841 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!842 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!843 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!844 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!845 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!918 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!991 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!992 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!993 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!994 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!995 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!996 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!997 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!998 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!999 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1000 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1001 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1002 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1003 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1004 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1005 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1007 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1008 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1009 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1010 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1011 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1012 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1038 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1039 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1040 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1041 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1042 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1047 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1048 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1049 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1050 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1106 = !{!1107, !91}
!1107 = !DISubprogram(name: "nl_langinfo", scope: !721, file: !721, line: 661, type: !1108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!34, !38}
!1110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1111, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !1112, splitDebugInlining: false, nameTableKind: None)
!1111 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1112 = !{!91, !105}
!1113 = !{!"clang version 10.0.0 "}
!1114 = !{i32 7, !"Dwarf Version", i32 4}
!1115 = !{i32 2, !"Debug Info Version", i32 3}
!1116 = !{i32 1, !"wchar_size", i32 4}
!1117 = !{i32 7, !"PIC Level", i32 2}
!1118 = !{i32 7, !"PIE Level", i32 2}
!1119 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 430, type: !1120, scopeLine: 431, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1122)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null, !38}
!1122 = !{!1123}
!1123 = !DILocalVariable(name: "status", arg: 1, scope: !1119, file: !3, line: 430, type: !38)
!1124 = !DILocalVariable(name: "infomap", scope: !1125, file: !1126, line: 636, type: !1138)
!1125 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1126, file: !1126, line: 634, type: !103, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1127)
!1126 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1127 = !{!1128, !1124, !1129, !1130, !1137}
!1128 = !DILocalVariable(name: "program", arg: 1, scope: !1125, file: !1126, line: 634, type: !36)
!1129 = !DILocalVariable(name: "node", scope: !1125, file: !1126, line: 646, type: !36)
!1130 = !DILocalVariable(name: "map_prog", scope: !1125, file: !1126, line: 647, type: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1133)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1125, file: !1126, line: 636, size: 128, elements: !1134)
!1134 = !{!1135, !1136}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1133, file: !1126, line: 636, baseType: !36, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1133, file: !1126, line: 636, baseType: !36, size: 64, offset: 64)
!1137 = !DILocalVariable(name: "lc_messages", scope: !1125, file: !1126, line: 659, type: !36)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1132, size: 896, elements: !1139)
!1139 = !{!1140}
!1140 = !DISubrange(count: 7)
!1141 = !DILocation(line: 636, column: 67, scope: !1125, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 458, column: 7, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 435, column: 5)
!1144 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 432, column: 7)
!1145 = !DILocation(line: 0, scope: !1119)
!1146 = !DILocation(line: 432, column: 14, scope: !1144)
!1147 = !DILocation(line: 432, column: 7, scope: !1119)
!1148 = !DILocation(line: 433, column: 5, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 433, column: 5)
!1150 = !{!1151, !1151, i64 0}
!1151 = !{!"any pointer", !1152, i64 0}
!1152 = !{!"omnipotent char", !1153, i64 0}
!1153 = !{!"Simple C/C++ TBAA"}
!1154 = !DILocation(line: 436, column: 7, scope: !1143)
!1155 = !DILocation(line: 440, column: 7, scope: !1143)
!1156 = !DILocation(line: 583, column: 3, scope: !1157, inlinedAt: !1158)
!1157 = distinct !DISubprogram(name: "emit_stdin_note", scope: !1126, file: !1126, line: 581, type: !120, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!1158 = distinct !DILocation(line: 445, column: 7, scope: !1143)
!1159 = !DILocation(line: 590, column: 3, scope: !1160, inlinedAt: !1161)
!1160 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !1126, file: !1126, line: 588, type: !120, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!1161 = distinct !DILocation(line: 446, column: 7, scope: !1143)
!1162 = !DILocation(line: 448, column: 7, scope: !1143)
!1163 = !DILocation(line: 452, column: 7, scope: !1143)
!1164 = !DILocation(line: 455, column: 7, scope: !1143)
!1165 = !DILocation(line: 456, column: 7, scope: !1143)
!1166 = !DILocation(line: 0, scope: !1125, inlinedAt: !1142)
!1167 = !DILocation(line: 636, column: 3, scope: !1125, inlinedAt: !1142)
!1168 = !DILocation(line: 647, column: 36, scope: !1125, inlinedAt: !1142)
!1169 = !DILocation(line: 649, column: 3, scope: !1125, inlinedAt: !1142)
!1170 = !DILocation(line: 649, column: 33, scope: !1125, inlinedAt: !1142)
!1171 = !DILocation(line: 650, column: 13, scope: !1125, inlinedAt: !1142)
!1172 = !DILocation(line: 649, column: 20, scope: !1125, inlinedAt: !1142)
!1173 = !{!1174, !1151, i64 0}
!1174 = !{!"infomap", !1151, i64 0, !1151, i64 8}
!1175 = !DILocation(line: 649, column: 10, scope: !1125, inlinedAt: !1142)
!1176 = !DILocation(line: 649, column: 28, scope: !1125, inlinedAt: !1142)
!1177 = distinct !{!1177, !1169, !1171}
!1178 = !DILocation(line: 652, column: 17, scope: !1179, inlinedAt: !1142)
!1179 = distinct !DILexicalBlock(scope: !1125, file: !1126, line: 652, column: 7)
!1180 = !{!1174, !1151, i64 8}
!1181 = !DILocation(line: 652, column: 7, scope: !1179, inlinedAt: !1142)
!1182 = !DILocation(line: 652, column: 7, scope: !1125, inlinedAt: !1142)
!1183 = !DILocation(line: 655, column: 3, scope: !1125, inlinedAt: !1142)
!1184 = !DILocation(line: 659, column: 29, scope: !1125, inlinedAt: !1142)
!1185 = !DILocation(line: 660, column: 7, scope: !1186, inlinedAt: !1142)
!1186 = distinct !DILexicalBlock(scope: !1125, file: !1126, line: 660, column: 7)
!1187 = !DILocation(line: 660, column: 19, scope: !1186, inlinedAt: !1142)
!1188 = !DILocation(line: 660, column: 22, scope: !1186, inlinedAt: !1142)
!1189 = !DILocation(line: 660, column: 7, scope: !1125, inlinedAt: !1142)
!1190 = !DILocation(line: 666, column: 7, scope: !1191, inlinedAt: !1142)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !1126, line: 661, column: 5)
!1192 = !DILocation(line: 668, column: 5, scope: !1191, inlinedAt: !1142)
!1193 = !DILocation(line: 669, column: 3, scope: !1125, inlinedAt: !1142)
!1194 = !DILocation(line: 671, column: 3, scope: !1125, inlinedAt: !1142)
!1195 = !DILocation(line: 673, column: 1, scope: !1125, inlinedAt: !1142)
!1196 = !DILocation(line: 460, column: 3, scope: !1119)
!1197 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 464, type: !1198, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1201)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!38, !38, !1200}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!1201 = !{!1202, !1203, !1204, !1205, !1206, !1207}
!1202 = !DILocalVariable(name: "argc", arg: 1, scope: !1197, file: !3, line: 464, type: !38)
!1203 = !DILocalVariable(name: "argv", arg: 2, scope: !1197, file: !3, line: 464, type: !1200)
!1204 = !DILocalVariable(name: "optc", scope: !1197, file: !3, line: 466, type: !38)
!1205 = !DILocalVariable(name: "delim_arg", scope: !1197, file: !3, line: 467, type: !36)
!1206 = !DILocalVariable(name: "nfiles", scope: !1197, file: !3, line: 506, type: !38)
!1207 = !DILocalVariable(name: "ok", scope: !1197, file: !3, line: 522, type: !179)
!1208 = !DILocation(line: 0, scope: !1197)
!1209 = !DILocation(line: 470, column: 21, scope: !1197)
!1210 = !DILocation(line: 470, column: 3, scope: !1197)
!1211 = !DILocation(line: 471, column: 3, scope: !1197)
!1212 = !DILocation(line: 472, column: 3, scope: !1197)
!1213 = !DILocation(line: 473, column: 3, scope: !1197)
!1214 = !DILocation(line: 475, column: 3, scope: !1197)
!1215 = !DILocation(line: 477, column: 19, scope: !1197)
!1216 = !DILocation(line: 478, column: 16, scope: !1197)
!1217 = !DILocation(line: 480, column: 3, scope: !1197)
!1218 = !DILocation(line: 480, column: 18, scope: !1197)
!1219 = !DILocation(line: 486, column: 24, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 483, column: 9)
!1221 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 481, column: 5)
!1222 = !{!1152, !1152, i64 0}
!1223 = !DILocation(line: 486, column: 34, scope: !1220)
!1224 = !DILocation(line: 487, column: 11, scope: !1220)
!1225 = distinct !{!1225, !1217, !1226}
!1226 = !DILocation(line: 504, column: 5, scope: !1197)
!1227 = !DILocation(line: 490, column: 24, scope: !1220)
!1228 = !DILocation(line: 491, column: 11, scope: !1220)
!1229 = !DILocation(line: 494, column: 22, scope: !1220)
!1230 = !DILocation(line: 495, column: 11, scope: !1220)
!1231 = !DILocation(line: 497, column: 9, scope: !1220)
!1232 = !DILocation(line: 499, column: 9, scope: !1220)
!1233 = !DILocation(line: 502, column: 11, scope: !1220)
!1234 = !DILocation(line: 506, column: 23, scope: !1197)
!1235 = !{!1236, !1236, i64 0}
!1236 = !{!"int", !1152, i64 0}
!1237 = !DILocation(line: 506, column: 21, scope: !1197)
!1238 = !DILocation(line: 507, column: 14, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 507, column: 7)
!1240 = !DILocation(line: 507, column: 7, scope: !1197)
!1241 = !DILocation(line: 509, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 508, column: 5)
!1243 = !DILocation(line: 509, column: 20, scope: !1242)
!1244 = !DILocation(line: 511, column: 5, scope: !1242)
!1245 = !DILocalVariable(name: "strptr", arg: 1, scope: !1246, file: !3, line: 92, type: !36)
!1246 = distinct !DISubprogram(name: "collapse_escapes", scope: !3, file: !3, line: 92, type: !1247, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1249)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!38, !36}
!1249 = !{!1245, !1250, !1251, !1252}
!1250 = !DILocalVariable(name: "strout", scope: !1246, file: !3, line: 94, type: !34)
!1251 = !DILocalVariable(name: "backslash_at_end", scope: !1246, file: !3, line: 95, type: !179)
!1252 = !DILabel(scope: !1246, name: "done", file: !3, line: 151)
!1253 = !DILocation(line: 0, scope: !1246, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 513, column: 7, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 513, column: 7)
!1256 = !DILocation(line: 94, column: 18, scope: !1246, inlinedAt: !1254)
!1257 = !DILocation(line: 97, column: 10, scope: !1246, inlinedAt: !1254)
!1258 = !DILocation(line: 99, column: 10, scope: !1246, inlinedAt: !1254)
!1259 = !DILocation(line: 99, column: 3, scope: !1246, inlinedAt: !1254)
!1260 = !DILocation(line: 101, column: 19, scope: !1261, inlinedAt: !1254)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 101, column: 11)
!1262 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 100, column: 5)
!1263 = !DILocation(line: 0, scope: !1261, inlinedAt: !1254)
!1264 = !DILocation(line: 101, column: 11, scope: !1262, inlinedAt: !1254)
!1265 = !DILocation(line: 102, column: 19, scope: !1261, inlinedAt: !1254)
!1266 = !DILocation(line: 102, column: 9, scope: !1261, inlinedAt: !1254)
!1267 = !DILocation(line: 105, column: 19, scope: !1268, inlinedAt: !1254)
!1268 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 104, column: 9)
!1269 = !DILocation(line: 105, column: 11, scope: !1268, inlinedAt: !1254)
!1270 = !DILocation(line: 113, column: 15, scope: !1271, inlinedAt: !1254)
!1271 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 106, column: 13)
!1272 = !DILocation(line: 117, column: 15, scope: !1271, inlinedAt: !1254)
!1273 = !DILocation(line: 121, column: 15, scope: !1271, inlinedAt: !1254)
!1274 = !DILocation(line: 125, column: 15, scope: !1271, inlinedAt: !1254)
!1275 = !DILocation(line: 129, column: 15, scope: !1271, inlinedAt: !1254)
!1276 = !DILocation(line: 133, column: 15, scope: !1271, inlinedAt: !1254)
!1277 = !DILocation(line: 137, column: 15, scope: !1271, inlinedAt: !1254)
!1278 = !DILocation(line: 145, column: 15, scope: !1271, inlinedAt: !1254)
!1279 = !DILocation(line: 0, scope: !1271, inlinedAt: !1254)
!1280 = !DILocation(line: 147, column: 17, scope: !1268, inlinedAt: !1254)
!1281 = distinct !{!1281, !1259, !1282}
!1282 = !DILocation(line: 149, column: 5, scope: !1246, inlinedAt: !1254)
!1283 = !DILocation(line: 151, column: 2, scope: !1246, inlinedAt: !1254)
!1284 = !DILocation(line: 153, column: 13, scope: !1246, inlinedAt: !1254)
!1285 = !DILocation(line: 517, column: 7, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 514, column: 5)
!1287 = !DILocation(line: 522, column: 15, scope: !1197)
!1288 = !DILocation(line: 523, column: 15, scope: !1197)
!1289 = !DILocation(line: 523, column: 29, scope: !1197)
!1290 = !DILocation(line: 523, column: 24, scope: !1197)
!1291 = !DILocation(line: 522, column: 14, scope: !1197)
!1292 = !{i1 (i64, i8**)* @paste_parallel, i1 (i64, i8**)* @paste_serial}
!1293 = !DILocation(line: 525, column: 9, scope: !1197)
!1294 = !DILocation(line: 525, column: 3, scope: !1197)
!1295 = !DILocation(line: 527, column: 7, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 527, column: 7)
!1297 = !DILocation(line: 527, column: 23, scope: !1296)
!1298 = !DILocation(line: 527, column: 34, scope: !1296)
!1299 = !DILocation(line: 527, column: 26, scope: !1296)
!1300 = !DILocation(line: 527, column: 41, scope: !1296)
!1301 = !DILocation(line: 527, column: 7, scope: !1197)
!1302 = !DILocation(line: 528, column: 5, scope: !1296)
!1303 = !DILocation(line: 529, column: 10, scope: !1197)
!1304 = !DILocation(line: 529, column: 3, scope: !1197)
!1305 = distinct !DISubprogram(name: "paste_serial", scope: !3, file: !3, line: 348, type: !1306, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1308)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!179, !93, !1200}
!1308 = !{!1309, !1310, !1311, !1312, !1313, !1314, !1315, !1319, !1323}
!1309 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1305, file: !3, line: 348, type: !93)
!1310 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !1305, file: !3, line: 348, type: !1200)
!1311 = !DILocalVariable(name: "ok", scope: !1305, file: !3, line: 350, type: !179)
!1312 = !DILocalVariable(name: "charnew", scope: !1305, file: !3, line: 351, type: !38)
!1313 = !DILocalVariable(name: "charold", scope: !1305, file: !3, line: 351, type: !38)
!1314 = !DILocalVariable(name: "delimptr", scope: !1305, file: !3, line: 352, type: !36)
!1315 = !DILocalVariable(name: "fileptr", scope: !1305, file: !3, line: 353, type: !1316)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1318, line: 7, baseType: !45)
!1318 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1319 = !DILocalVariable(name: "saved_errno", scope: !1320, file: !3, line: 357, type: !38)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 356, column: 5)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 355, column: 3)
!1322 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 355, column: 3)
!1323 = !DILocalVariable(name: "is_stdin", scope: !1320, file: !3, line: 358, type: !179)
!1324 = !DILocation(line: 0, scope: !1305)
!1325 = !DILocation(line: 355, column: 3, scope: !1322)
!1326 = !DILocation(line: 358, column: 23, scope: !1320)
!1327 = !DILocation(line: 0, scope: !1320)
!1328 = !DILocation(line: 359, column: 11, scope: !1320)
!1329 = !DILocation(line: 361, column: 27, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 360, column: 9)
!1331 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 359, column: 11)
!1332 = !DILocation(line: 362, column: 21, scope: !1330)
!1333 = !DILocation(line: 363, column: 9, scope: !1330)
!1334 = !DILocation(line: 366, column: 21, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 365, column: 9)
!1336 = !DILocation(line: 367, column: 23, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 367, column: 15)
!1338 = !DILocation(line: 367, column: 15, scope: !1335)
!1339 = !DILocation(line: 369, column: 25, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 368, column: 13)
!1341 = !DILocation(line: 369, column: 38, scope: !1340)
!1342 = !DILocation(line: 369, column: 15, scope: !1340)
!1343 = !DILocation(line: 371, column: 15, scope: !1340)
!1344 = !DILocation(line: 373, column: 11, scope: !1335)
!1345 = !DILocation(line: 0, scope: !1331)
!1346 = !DILocation(line: 376, column: 18, scope: !1320)
!1347 = !DILocalVariable(name: "__fp", arg: 1, scope: !1348, file: !1349, line: 66, type: !1316)
!1348 = distinct !DISubprogram(name: "getc_unlocked", scope: !1349, file: !1349, line: 66, type: !1350, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1352)
!1349 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!38, !1316}
!1352 = !{!1347}
!1353 = !DILocation(line: 0, scope: !1348, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 378, column: 17, scope: !1320)
!1355 = !DILocation(line: 68, column: 10, scope: !1348, inlinedAt: !1354)
!1356 = !{!1357, !1151, i64 8}
!1357 = !{!"_IO_FILE", !1236, i64 0, !1151, i64 8, !1151, i64 16, !1151, i64 24, !1151, i64 32, !1151, i64 40, !1151, i64 48, !1151, i64 56, !1151, i64 64, !1151, i64 72, !1151, i64 80, !1151, i64 88, !1151, i64 96, !1151, i64 104, !1236, i64 112, !1236, i64 116, !1358, i64 120, !1359, i64 128, !1152, i64 130, !1152, i64 131, !1151, i64 136, !1358, i64 144, !1151, i64 152, !1151, i64 160, !1151, i64 168, !1151, i64 176, !1358, i64 184, !1236, i64 192, !1152, i64 196}
!1358 = !{!"long", !1152, i64 0}
!1359 = !{!"short", !1152, i64 0}
!1360 = !{!1357, !1151, i64 16}
!1361 = !{!"branch_weights", i32 2000, i32 1}
!1362 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1363 = !DILocation(line: 379, column: 21, scope: !1320)
!1364 = !DILocation(line: 380, column: 11, scope: !1320)
!1365 = !DILocation(line: 380, column: 19, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 380, column: 11)
!1367 = !DILocation(line: 388, column: 11, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 381, column: 9)
!1369 = !DILocation(line: 410, column: 22, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 410, column: 11)
!1371 = !DILocation(line: 410, column: 11, scope: !1320)
!1372 = !DILocation(line: 0, scope: !1348, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 388, column: 29, scope: !1368)
!1374 = !DILocation(line: 68, column: 10, scope: !1348, inlinedAt: !1373)
!1375 = !DILocation(line: 388, column: 45, scope: !1368)
!1376 = !DILocation(line: 391, column: 30, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 391, column: 19)
!1378 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 389, column: 13)
!1379 = !DILocation(line: 391, column: 27, scope: !1377)
!1380 = !DILocation(line: 391, column: 19, scope: !1378)
!1381 = !DILocation(line: 393, column: 23, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 393, column: 23)
!1383 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 392, column: 17)
!1384 = !DILocation(line: 393, column: 33, scope: !1382)
!1385 = !DILocation(line: 393, column: 23, scope: !1383)
!1386 = !DILocalVariable(name: "c", arg: 1, scope: !1387, file: !3, line: 169, type: !35)
!1387 = distinct !DISubprogram(name: "xputchar", scope: !3, file: !3, line: 169, type: !1388, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1390)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{null, !35}
!1390 = !{!1386}
!1391 = !DILocation(line: 0, scope: !1387, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 394, column: 21, scope: !1382)
!1393 = !DILocalVariable(name: "__c", arg: 1, scope: !1394, file: !1349, line: 108, type: !38)
!1394 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1349, file: !1349, line: 108, type: !1395, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1397)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!38, !38}
!1397 = !{!1393}
!1398 = !DILocation(line: 0, scope: !1394, inlinedAt: !1399)
!1399 = distinct !DILocation(line: 171, column: 7, scope: !1400, inlinedAt: !1392)
!1400 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 171, column: 7)
!1401 = !DILocation(line: 110, column: 10, scope: !1394, inlinedAt: !1399)
!1402 = !{!1357, !1151, i64 40}
!1403 = !{!1357, !1151, i64 48}
!1404 = !DILocation(line: 171, column: 7, scope: !1387, inlinedAt: !1392)
!1405 = !DILocation(line: 171, column: 7, scope: !1400, inlinedAt: !1392)
!1406 = !DILocation(line: 171, column: 19, scope: !1400, inlinedAt: !1392)
!1407 = !DILocation(line: 172, column: 5, scope: !1400, inlinedAt: !1392)
!1408 = !DILocation(line: 396, column: 23, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 396, column: 23)
!1410 = !DILocation(line: 396, column: 37, scope: !1409)
!1411 = !DILocation(line: 396, column: 34, scope: !1409)
!1412 = !DILocation(line: 397, column: 32, scope: !1409)
!1413 = !DILocation(line: 396, column: 23, scope: !1383)
!1414 = distinct !{!1414, !1367, !1415}
!1415 = !DILocation(line: 403, column: 13, scope: !1368)
!1416 = !DILocation(line: 0, scope: !1387, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 400, column: 17, scope: !1377)
!1418 = !DILocation(line: 0, scope: !1394, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 171, column: 7, scope: !1400, inlinedAt: !1417)
!1420 = !DILocation(line: 110, column: 10, scope: !1394, inlinedAt: !1419)
!1421 = !DILocation(line: 400, column: 27, scope: !1377)
!1422 = !DILocation(line: 171, column: 7, scope: !1387, inlinedAt: !1417)
!1423 = !DILocation(line: 171, column: 7, scope: !1400, inlinedAt: !1417)
!1424 = !DILocation(line: 171, column: 19, scope: !1400, inlinedAt: !1417)
!1425 = !DILocation(line: 172, column: 5, scope: !1400, inlinedAt: !1417)
!1426 = !DILocation(line: 404, column: 25, scope: !1368)
!1427 = !DILocation(line: 0, scope: !1387, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 407, column: 11, scope: !1368)
!1429 = !DILocation(line: 0, scope: !1394, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 171, column: 7, scope: !1400, inlinedAt: !1428)
!1431 = !DILocation(line: 110, column: 10, scope: !1394, inlinedAt: !1430)
!1432 = !DILocation(line: 407, column: 21, scope: !1368)
!1433 = !DILocation(line: 171, column: 7, scope: !1387, inlinedAt: !1428)
!1434 = !DILocation(line: 171, column: 7, scope: !1400, inlinedAt: !1428)
!1435 = !DILocation(line: 171, column: 19, scope: !1400, inlinedAt: !1428)
!1436 = !DILocation(line: 172, column: 5, scope: !1400, inlinedAt: !1428)
!1437 = !DILocation(line: 410, column: 19, scope: !1370)
!1438 = !DILocation(line: 0, scope: !1387, inlinedAt: !1439)
!1439 = distinct !DILocation(line: 411, column: 9, scope: !1370)
!1440 = !DILocation(line: 0, scope: !1394, inlinedAt: !1441)
!1441 = distinct !DILocation(line: 171, column: 7, scope: !1400, inlinedAt: !1439)
!1442 = !DILocation(line: 110, column: 10, scope: !1394, inlinedAt: !1441)
!1443 = !DILocation(line: 171, column: 7, scope: !1387, inlinedAt: !1439)
!1444 = !DILocation(line: 171, column: 19, scope: !1400, inlinedAt: !1439)
!1445 = !DILocation(line: 172, column: 5, scope: !1400, inlinedAt: !1439)
!1446 = !DILocalVariable(name: "__stream", arg: 1, scope: !1447, file: !1349, line: 135, type: !1316)
!1447 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1349, file: !1349, line: 135, type: !1350, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1448)
!1448 = !{!1446}
!1449 = !DILocation(line: 0, scope: !1447, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 413, column: 11, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 413, column: 11)
!1452 = !DILocation(line: 137, column: 10, scope: !1447, inlinedAt: !1450)
!1453 = !{!1357, !1236, i64 0}
!1454 = !DILocation(line: 413, column: 11, scope: !1451)
!1455 = !DILocation(line: 413, column: 11, scope: !1320)
!1456 = !DILocation(line: 415, column: 40, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 414, column: 9)
!1458 = !DILocation(line: 415, column: 11, scope: !1457)
!1459 = !DILocation(line: 417, column: 9, scope: !1457)
!1460 = !DILocation(line: 418, column: 11, scope: !1320)
!1461 = !DILocation(line: 419, column: 9, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 418, column: 11)
!1463 = !DILocation(line: 420, column: 16, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 420, column: 16)
!1465 = !DILocation(line: 420, column: 33, scope: !1464)
!1466 = !DILocation(line: 420, column: 16, scope: !1462)
!1467 = !DILocation(line: 422, column: 21, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 421, column: 9)
!1469 = !DILocation(line: 422, column: 34, scope: !1468)
!1470 = !DILocation(line: 422, column: 11, scope: !1468)
!1471 = !DILocation(line: 424, column: 9, scope: !1468)
!1472 = !DILocation(line: 355, column: 24, scope: !1321)
!1473 = !DILocation(line: 355, column: 35, scope: !1321)
!1474 = distinct !{!1474, !1325, !1475}
!1475 = !DILocation(line: 425, column: 5, scope: !1322)
!1476 = !DILocation(line: 426, column: 10, scope: !1305)
!1477 = !DILocation(line: 426, column: 3, scope: !1305)
!1478 = distinct !DISubprogram(name: "paste_parallel", scope: !3, file: !3, line: 180, type: !1306, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1479)
!1479 = !{!1480, !1481, !1482, !1483, !1484, !1486, !1487, !1488, !1490, !1491, !1492, !1494, !1497, !1498, !1499, !1506, !1507, !1508, !1519, !1520, !1521}
!1480 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1478, file: !3, line: 180, type: !93)
!1481 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !1478, file: !3, line: 180, type: !1200)
!1482 = !DILocalVariable(name: "ok", scope: !1478, file: !3, line: 182, type: !179)
!1483 = !DILocalVariable(name: "delbuf", scope: !1478, file: !3, line: 187, type: !34)
!1484 = !DILocalVariable(name: "fileptr", scope: !1478, file: !3, line: 191, type: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1486 = !DILocalVariable(name: "files_open", scope: !1478, file: !3, line: 194, type: !93)
!1487 = !DILocalVariable(name: "opened_stdin", scope: !1478, file: !3, line: 197, type: !179)
!1488 = !DILocalVariable(name: "somedone", scope: !1489, file: !3, line: 231, type: !179)
!1489 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 229, column: 5)
!1490 = !DILocalVariable(name: "delimptr", scope: !1489, file: !3, line: 232, type: !36)
!1491 = !DILocalVariable(name: "delims_saved", scope: !1489, file: !3, line: 233, type: !93)
!1492 = !DILocalVariable(name: "i", scope: !1493, file: !3, line: 235, type: !93)
!1493 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 235, column: 7)
!1494 = !DILocalVariable(name: "chr", scope: !1495, file: !3, line: 237, type: !38)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 236, column: 9)
!1496 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 235, column: 7)
!1497 = !DILocalVariable(name: "err", scope: !1495, file: !3, line: 238, type: !38)
!1498 = !DILocalVariable(name: "sometodo", scope: !1495, file: !3, line: 239, type: !179)
!1499 = !DILocalVariable(name: "__ptr", scope: !1500, file: !3, line: 247, type: !36)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 247, column: 23)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 247, column: 23)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 246, column: 17)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 245, column: 19)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 242, column: 13)
!1505 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 241, column: 15)
!1506 = !DILocalVariable(name: "__stream", scope: !1500, file: !3, line: 247, type: !1316)
!1507 = !DILocalVariable(name: "__cnt", scope: !1500, file: !3, line: 247, type: !93)
!1508 = !DILocalVariable(name: "__ptr", scope: !1509, file: !3, line: 295, type: !36)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 295, column: 31)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 295, column: 31)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 294, column: 25)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 293, column: 27)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 291, column: 21)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 290, column: 23)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 287, column: 17)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 286, column: 19)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 264, column: 13)
!1518 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 263, column: 15)
!1519 = !DILocalVariable(name: "__stream", scope: !1509, file: !3, line: 295, type: !1316)
!1520 = !DILocalVariable(name: "__cnt", scope: !1509, file: !3, line: 295, type: !93)
!1521 = !DILocalVariable(name: "c", scope: !1522, file: !3, line: 332, type: !35)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 329, column: 17)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 319, column: 19)
!1524 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 314, column: 13)
!1525 = !DILocation(line: 0, scope: !1478)
!1526 = !DILocation(line: 187, column: 34, scope: !1478)
!1527 = !DILocation(line: 187, column: 18, scope: !1478)
!1528 = !DILocation(line: 191, column: 37, scope: !1478)
!1529 = !DILocalVariable(name: "n", arg: 1, scope: !1530, file: !156, line: 99, type: !93)
!1530 = distinct !DISubprogram(name: "xnmalloc", scope: !156, file: !156, line: 99, type: !1531, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1533)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!91, !93, !93}
!1533 = !{!1529, !1534}
!1534 = !DILocalVariable(name: "s", arg: 2, scope: !1530, file: !156, line: 99, type: !93)
!1535 = !DILocation(line: 0, scope: !1530, inlinedAt: !1536)
!1536 = distinct !DILocation(line: 191, column: 20, scope: !1478)
!1537 = !DILocation(line: 101, column: 7, scope: !1538, inlinedAt: !1536)
!1538 = distinct !DILexicalBlock(scope: !1530, file: !156, line: 101, column: 7)
!1539 = !DILocation(line: 101, column: 7, scope: !1530, inlinedAt: !1536)
!1540 = !DILocation(line: 102, column: 5, scope: !1538, inlinedAt: !1536)
!1541 = !DILocation(line: 103, column: 21, scope: !1530, inlinedAt: !1536)
!1542 = !DILocation(line: 103, column: 10, scope: !1530, inlinedAt: !1536)
!1543 = !DILocation(line: 191, column: 20, scope: !1478)
!1544 = !DILocation(line: 203, column: 35, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 203, column: 3)
!1546 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 203, column: 3)
!1547 = !DILocation(line: 203, column: 3, scope: !1546)
!1548 = !DILocation(line: 205, column: 11, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 205, column: 11)
!1550 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 204, column: 5)
!1551 = !DILocation(line: 205, column: 11, scope: !1550)
!1552 = !DILocation(line: 207, column: 27, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 206, column: 9)
!1554 = !DILocation(line: 208, column: 33, scope: !1553)
!1555 = !DILocation(line: 208, column: 11, scope: !1553)
!1556 = !DILocation(line: 208, column: 31, scope: !1553)
!1557 = !DILocation(line: 209, column: 9, scope: !1553)
!1558 = !DILocation(line: 212, column: 33, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 211, column: 9)
!1560 = !DILocation(line: 212, column: 11, scope: !1559)
!1561 = !DILocation(line: 212, column: 31, scope: !1559)
!1562 = !DILocation(line: 213, column: 35, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 213, column: 15)
!1564 = !DILocation(line: 213, column: 15, scope: !1559)
!1565 = !DILocation(line: 214, column: 13, scope: !1563)
!1566 = !DILocation(line: 215, column: 20, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 215, column: 20)
!1568 = !DILocation(line: 215, column: 49, scope: !1567)
!1569 = !DILocation(line: 215, column: 20, scope: !1563)
!1570 = !DILocation(line: 217, column: 11, scope: !1559)
!1571 = !DILocation(line: 203, column: 45, scope: !1545)
!1572 = distinct !{!1572, !1547, !1573}
!1573 = !DILocation(line: 219, column: 5, scope: !1546)
!1574 = !DILocation(line: 221, column: 7, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 221, column: 7)
!1576 = !DILocation(line: 221, column: 20, scope: !1575)
!1577 = !DILocation(line: 221, column: 23, scope: !1575)
!1578 = !DILocation(line: 221, column: 7, scope: !1478)
!1579 = !DILocation(line: 235, column: 7, scope: !1493)
!1580 = !DILocation(line: 222, column: 5, scope: !1575)
!1581 = !DILocation(line: 203, column: 19, scope: !1546)
!1582 = !DILocation(line: 182, column: 8, scope: !1478)
!1583 = !DILocation(line: 0, scope: !1495)
!1584 = !DILocation(line: 228, column: 3, scope: !1478)
!1585 = !DILocation(line: 0, scope: !1489)
!1586 = !DILocation(line: 0, scope: !1493)
!1587 = !DILocation(line: 235, column: 37, scope: !1496)
!1588 = distinct !{!1588, !1584, !1589}
!1589 = !DILocation(line: 337, column: 5, scope: !1478)
!1590 = !DILocation(line: 232, column: 30, scope: !1489)
!1591 = !DILocation(line: 241, column: 15, scope: !1505)
!1592 = !DILocation(line: 241, column: 15, scope: !1495)
!1593 = !DILocation(line: 0, scope: !1348, inlinedAt: !1594)
!1594 = distinct !DILocation(line: 243, column: 21, scope: !1504)
!1595 = !DILocation(line: 68, column: 10, scope: !1348, inlinedAt: !1594)
!1596 = !DILocation(line: 244, column: 21, scope: !1504)
!1597 = !DILocation(line: 245, column: 23, scope: !1503)
!1598 = !DILocation(line: 245, column: 33, scope: !1503)
!1599 = !DILocation(line: 245, column: 30, scope: !1503)
!1600 = !DILocation(line: 0, scope: !1501)
!1601 = !DILocation(line: 247, column: 23, scope: !1501)
!1602 = !DILocation(line: 247, column: 64, scope: !1501)
!1603 = !DILocation(line: 247, column: 23, scope: !1502)
!1604 = !DILocation(line: 248, column: 21, scope: !1501)
!1605 = !DILocation(line: 252, column: 26, scope: !1504)
!1606 = !DILocation(line: 252, column: 15, scope: !1504)
!1607 = !DILocation(line: 255, column: 30, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 255, column: 23)
!1609 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 253, column: 17)
!1610 = !DILocation(line: 255, column: 27, scope: !1608)
!1611 = !DILocation(line: 255, column: 23, scope: !1609)
!1612 = !DILocation(line: 0, scope: !1387, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 257, column: 19, scope: !1609)
!1614 = !DILocation(line: 0, scope: !1394, inlinedAt: !1615)
!1615 = distinct !DILocation(line: 171, column: 7, scope: !1400, inlinedAt: !1613)
!1616 = !DILocation(line: 110, column: 10, scope: !1394, inlinedAt: !1615)
!1617 = !DILocation(line: 257, column: 29, scope: !1609)
!1618 = !DILocation(line: 171, column: 7, scope: !1387, inlinedAt: !1613)
!1619 = !DILocation(line: 171, column: 7, scope: !1400, inlinedAt: !1613)
!1620 = !DILocation(line: 171, column: 19, scope: !1400, inlinedAt: !1613)
!1621 = !DILocation(line: 172, column: 5, scope: !1400, inlinedAt: !1613)
!1622 = !DILocation(line: 0, scope: !1348, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 258, column: 25, scope: !1609)
!1624 = !DILocation(line: 68, column: 10, scope: !1348, inlinedAt: !1623)
!1625 = distinct !{!1625, !1606, !1626}
!1626 = !DILocation(line: 260, column: 17, scope: !1504)
!1627 = !DILocation(line: 0, scope: !1447, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 269, column: 23, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 269, column: 23)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 268, column: 17)
!1631 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 267, column: 19)
!1632 = !DILocation(line: 137, column: 10, scope: !1447, inlinedAt: !1628)
!1633 = !DILocation(line: 269, column: 23, scope: !1629)
!1634 = !DILocation(line: 269, column: 23, scope: !1630)
!1635 = !DILocation(line: 271, column: 44, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 270, column: 21)
!1637 = !DILocation(line: 271, column: 23, scope: !1636)
!1638 = !DILocation(line: 273, column: 21, scope: !1636)
!1639 = !DILocation(line: 274, column: 37, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 274, column: 23)
!1641 = !DILocation(line: 274, column: 34, scope: !1640)
!1642 = !DILocation(line: 274, column: 23, scope: !1630)
!1643 = !DILocation(line: 275, column: 21, scope: !1640)
!1644 = !DILocation(line: 276, column: 28, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 276, column: 28)
!1646 = !DILocation(line: 276, column: 48, scope: !1645)
!1647 = !DILocation(line: 276, column: 28, scope: !1640)
!1648 = !DILocation(line: 278, column: 33, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 277, column: 21)
!1650 = !DILocation(line: 278, column: 46, scope: !1649)
!1651 = !DILocation(line: 278, column: 23, scope: !1649)
!1652 = !DILocation(line: 280, column: 21, scope: !1649)
!1653 = !DILocation(line: 0, scope: !1630)
!1654 = !DILocation(line: 282, column: 30, scope: !1630)
!1655 = !DILocation(line: 283, column: 29, scope: !1630)
!1656 = !DILocation(line: 284, column: 17, scope: !1630)
!1657 = !DILocation(line: 286, column: 21, scope: !1516)
!1658 = !DILocation(line: 286, column: 25, scope: !1516)
!1659 = !DILocation(line: 286, column: 19, scope: !1517)
!1660 = !DILocation(line: 290, column: 23, scope: !1514)
!1661 = !DILocation(line: 290, column: 23, scope: !1515)
!1662 = !DILocation(line: 293, column: 27, scope: !1512)
!1663 = !DILocation(line: 293, column: 27, scope: !1513)
!1664 = !DILocation(line: 0, scope: !1510)
!1665 = !DILocation(line: 295, column: 31, scope: !1510)
!1666 = !DILocation(line: 296, column: 31, scope: !1510)
!1667 = !DILocation(line: 295, column: 31, scope: !1511)
!1668 = !DILocation(line: 297, column: 29, scope: !1510)
!1669 = !DILocation(line: 300, column: 33, scope: !1513)
!1670 = !DILocation(line: 0, scope: !1387, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 300, column: 23, scope: !1513)
!1672 = !DILocation(line: 0, scope: !1394, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 171, column: 7, scope: !1400, inlinedAt: !1671)
!1674 = !DILocation(line: 110, column: 10, scope: !1394, inlinedAt: !1673)
!1675 = !DILocation(line: 171, column: 7, scope: !1387, inlinedAt: !1671)
!1676 = !DILocation(line: 171, column: 7, scope: !1400, inlinedAt: !1671)
!1677 = !DILocation(line: 171, column: 19, scope: !1400, inlinedAt: !1671)
!1678 = !DILocation(line: 172, column: 5, scope: !1400, inlinedAt: !1671)
!1679 = !DILocation(line: 307, column: 23, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 307, column: 23)
!1681 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 305, column: 17)
!1682 = !DILocation(line: 307, column: 33, scope: !1680)
!1683 = !DILocation(line: 307, column: 23, scope: !1681)
!1684 = !DILocation(line: 308, column: 40, scope: !1680)
!1685 = !DILocation(line: 308, column: 21, scope: !1680)
!1686 = !DILocation(line: 308, column: 44, scope: !1680)
!1687 = !DILocation(line: 309, column: 23, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 309, column: 23)
!1689 = !DILocation(line: 309, column: 37, scope: !1688)
!1690 = !DILocation(line: 309, column: 34, scope: !1688)
!1691 = !DILocation(line: 310, column: 32, scope: !1688)
!1692 = !DILocation(line: 309, column: 23, scope: !1681)
!1693 = !DILocation(line: 319, column: 21, scope: !1523)
!1694 = !DILocation(line: 319, column: 25, scope: !1523)
!1695 = !DILocation(line: 319, column: 19, scope: !1524)
!1696 = !DILocation(line: 321, column: 30, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 321, column: 23)
!1698 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 320, column: 17)
!1699 = !DILocation(line: 321, column: 27, scope: !1697)
!1700 = !DILocation(line: 321, column: 48, scope: !1697)
!1701 = !DILocation(line: 321, column: 41, scope: !1697)
!1702 = !DILocation(line: 0, scope: !1387, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 322, column: 21, scope: !1697)
!1704 = !DILocation(line: 0, scope: !1394, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 171, column: 7, scope: !1400, inlinedAt: !1703)
!1706 = !DILocation(line: 110, column: 10, scope: !1394, inlinedAt: !1705)
!1707 = !DILocation(line: 322, column: 31, scope: !1697)
!1708 = !DILocation(line: 171, column: 7, scope: !1387, inlinedAt: !1703)
!1709 = !DILocation(line: 171, column: 7, scope: !1400, inlinedAt: !1703)
!1710 = !DILocation(line: 171, column: 19, scope: !1400, inlinedAt: !1703)
!1711 = !DILocation(line: 172, column: 5, scope: !1400, inlinedAt: !1703)
!1712 = !DILocation(line: 323, column: 23, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 323, column: 23)
!1714 = !DILocation(line: 323, column: 33, scope: !1713)
!1715 = !DILocation(line: 323, column: 23, scope: !1698)
!1716 = !DILocation(line: 0, scope: !1387, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 324, column: 21, scope: !1713)
!1718 = !DILocation(line: 0, scope: !1394, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 171, column: 7, scope: !1400, inlinedAt: !1717)
!1720 = !DILocation(line: 110, column: 10, scope: !1394, inlinedAt: !1719)
!1721 = !DILocation(line: 171, column: 7, scope: !1387, inlinedAt: !1717)
!1722 = !DILocation(line: 171, column: 7, scope: !1400, inlinedAt: !1717)
!1723 = !DILocation(line: 171, column: 19, scope: !1400, inlinedAt: !1717)
!1724 = !DILocation(line: 172, column: 5, scope: !1400, inlinedAt: !1717)
!1725 = !DILocation(line: 325, column: 23, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 325, column: 23)
!1727 = !DILocation(line: 325, column: 37, scope: !1726)
!1728 = !DILocation(line: 325, column: 34, scope: !1726)
!1729 = !DILocation(line: 326, column: 32, scope: !1726)
!1730 = !DILocation(line: 325, column: 23, scope: !1698)
!1731 = !DILocation(line: 332, column: 33, scope: !1522)
!1732 = !DILocation(line: 332, column: 29, scope: !1522)
!1733 = !DILocation(line: 0, scope: !1522)
!1734 = !DILocation(line: 0, scope: !1387, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 333, column: 19, scope: !1522)
!1736 = !DILocation(line: 0, scope: !1394, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 171, column: 7, scope: !1400, inlinedAt: !1735)
!1738 = !DILocation(line: 110, column: 10, scope: !1394, inlinedAt: !1737)
!1739 = !DILocation(line: 332, column: 28, scope: !1522)
!1740 = !DILocation(line: 171, column: 7, scope: !1387, inlinedAt: !1735)
!1741 = !DILocation(line: 171, column: 7, scope: !1400, inlinedAt: !1735)
!1742 = !DILocation(line: 171, column: 19, scope: !1400, inlinedAt: !1735)
!1743 = !DILocation(line: 172, column: 5, scope: !1400, inlinedAt: !1735)
!1744 = !DILocation(line: 235, column: 53, scope: !1496)
!1745 = !DILocation(line: 235, column: 28, scope: !1496)
!1746 = distinct !{!1746, !1579, !1747}
!1747 = !DILocation(line: 336, column: 9, scope: !1493)
!1748 = !DILocation(line: 338, column: 3, scope: !1478)
!1749 = !DILocation(line: 339, column: 3, scope: !1478)
!1750 = !DILocation(line: 340, column: 10, scope: !1478)
!1751 = !DILocation(line: 340, column: 3, scope: !1478)
!1752 = distinct !DISubprogram(name: "write_error", scope: !3, file: !3, line: 161, type: !120, scopeLine: 162, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!1753 = !DILocation(line: 163, column: 3, scope: !1752)
!1754 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !201, file: !201, line: 51, type: !103, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1755)
!1755 = !{!1756}
!1756 = !DILocalVariable(name: "file", arg: 1, scope: !1754, file: !201, line: 51, type: !36)
!1757 = !DILocation(line: 0, scope: !1754)
!1758 = !DILocation(line: 53, column: 13, scope: !1754)
!1759 = !DILocation(line: 54, column: 1, scope: !1754)
!1760 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !201, file: !201, line: 88, type: !1761, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1763)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{null, !179}
!1763 = !{!1764}
!1764 = !DILocalVariable(name: "ignore", arg: 1, scope: !1760, file: !201, line: 88, type: !179)
!1765 = !DILocation(line: 0, scope: !1760)
!1766 = !DILocation(line: 90, column: 16, scope: !1760)
!1767 = !{!1768, !1768, i64 0}
!1768 = !{!"_Bool", !1152, i64 0}
!1769 = !DILocation(line: 91, column: 1, scope: !1760)
!1770 = distinct !DISubprogram(name: "close_stdout", scope: !201, file: !201, line: 117, type: !120, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1771)
!1771 = !{!1772}
!1772 = !DILocalVariable(name: "write_error", scope: !1773, file: !201, line: 122, type: !36)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !201, line: 121, column: 5)
!1774 = distinct !DILexicalBlock(scope: !1770, file: !201, line: 119, column: 7)
!1775 = !DILocation(line: 119, column: 21, scope: !1774)
!1776 = !DILocation(line: 119, column: 7, scope: !1774)
!1777 = !DILocation(line: 119, column: 29, scope: !1774)
!1778 = !DILocation(line: 120, column: 7, scope: !1774)
!1779 = !DILocation(line: 120, column: 12, scope: !1774)
!1780 = !{i8 0, i8 2}
!1781 = !DILocation(line: 120, column: 25, scope: !1774)
!1782 = !DILocation(line: 120, column: 28, scope: !1774)
!1783 = !DILocation(line: 120, column: 34, scope: !1774)
!1784 = !DILocation(line: 119, column: 7, scope: !1770)
!1785 = !DILocation(line: 122, column: 33, scope: !1773)
!1786 = !DILocation(line: 0, scope: !1773)
!1787 = !DILocation(line: 123, column: 11, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1773, file: !201, line: 123, column: 11)
!1789 = !DILocation(line: 0, scope: !1788)
!1790 = !DILocation(line: 123, column: 11, scope: !1773)
!1791 = !DILocation(line: 124, column: 36, scope: !1788)
!1792 = !DILocation(line: 124, column: 9, scope: !1788)
!1793 = !DILocation(line: 127, column: 9, scope: !1788)
!1794 = !DILocation(line: 129, column: 14, scope: !1773)
!1795 = !DILocation(line: 129, column: 7, scope: !1773)
!1796 = !DILocation(line: 134, column: 42, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1770, file: !201, line: 134, column: 7)
!1798 = !DILocation(line: 134, column: 28, scope: !1797)
!1799 = !DILocation(line: 134, column: 50, scope: !1797)
!1800 = !DILocation(line: 134, column: 7, scope: !1770)
!1801 = !DILocation(line: 135, column: 12, scope: !1797)
!1802 = !DILocation(line: 135, column: 5, scope: !1797)
!1803 = !DILocation(line: 136, column: 1, scope: !1770)
!1804 = distinct !DISubprogram(name: "fdadvise", scope: !416, file: !416, line: 31, type: !1805, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1809)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{null, !38, !1807, !1807, !1808}
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !41, line: 63, baseType: !67)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!1809 = !{!1810, !1811, !1812, !1813, !1814}
!1810 = !DILocalVariable(name: "fd", arg: 1, scope: !1804, file: !416, line: 31, type: !38)
!1811 = !DILocalVariable(name: "offset", arg: 2, scope: !1804, file: !416, line: 31, type: !1807)
!1812 = !DILocalVariable(name: "len", arg: 3, scope: !1804, file: !416, line: 31, type: !1807)
!1813 = !DILocalVariable(name: "advice", arg: 4, scope: !1804, file: !416, line: 31, type: !1808)
!1814 = !DILocalVariable(name: "__x", scope: !1815, file: !416, line: 34, type: !38)
!1815 = distinct !DILexicalBlock(scope: !1804, file: !416, line: 34, column: 3)
!1816 = !DILocation(line: 0, scope: !1804)
!1817 = !DILocation(line: 34, column: 3, scope: !1815)
!1818 = !DILocation(line: 0, scope: !1815)
!1819 = !DILocation(line: 36, column: 1, scope: !1804)
!1820 = distinct !DISubprogram(name: "fadvise", scope: !416, file: !416, line: 39, type: !1821, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1825)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{null, !1823, !1808}
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1318, line: 7, baseType: !427)
!1825 = !{!1826, !1827}
!1826 = !DILocalVariable(name: "fp", arg: 1, scope: !1820, file: !416, line: 39, type: !1823)
!1827 = !DILocalVariable(name: "advice", arg: 2, scope: !1820, file: !416, line: 39, type: !1808)
!1828 = !DILocation(line: 0, scope: !1820)
!1829 = !DILocation(line: 41, column: 7, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1820, file: !416, line: 41, column: 7)
!1831 = !DILocation(line: 41, column: 7, scope: !1820)
!1832 = !DILocation(line: 42, column: 15, scope: !1830)
!1833 = !DILocation(line: 0, scope: !1804, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 42, column: 5, scope: !1830)
!1835 = !DILocation(line: 34, column: 3, scope: !1815, inlinedAt: !1834)
!1836 = !DILocation(line: 0, scope: !1815, inlinedAt: !1834)
!1837 = !DILocation(line: 42, column: 5, scope: !1830)
!1838 = !DILocation(line: 43, column: 1, scope: !1820)
!1839 = distinct !DISubprogram(name: "set_program_name", scope: !252, file: !252, line: 39, type: !103, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !251, retainedNodes: !1840)
!1840 = !{!1841, !1842, !1843}
!1841 = !DILocalVariable(name: "argv0", arg: 1, scope: !1839, file: !252, line: 39, type: !36)
!1842 = !DILocalVariable(name: "slash", scope: !1839, file: !252, line: 46, type: !36)
!1843 = !DILocalVariable(name: "base", scope: !1839, file: !252, line: 47, type: !36)
!1844 = !DILocation(line: 0, scope: !1839)
!1845 = !DILocation(line: 51, column: 13, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1839, file: !252, line: 51, column: 7)
!1847 = !DILocation(line: 51, column: 7, scope: !1839)
!1848 = !DILocation(line: 55, column: 14, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1846, file: !252, line: 52, column: 5)
!1850 = !DILocation(line: 54, column: 7, scope: !1849)
!1851 = !DILocation(line: 56, column: 7, scope: !1849)
!1852 = !DILocation(line: 59, column: 11, scope: !1839)
!1853 = !DILocation(line: 60, column: 17, scope: !1839)
!1854 = !DILocation(line: 60, column: 11, scope: !1839)
!1855 = !DILocation(line: 61, column: 12, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1839, file: !252, line: 61, column: 7)
!1857 = !DILocation(line: 61, column: 20, scope: !1856)
!1858 = !DILocation(line: 61, column: 25, scope: !1856)
!1859 = !DILocation(line: 61, column: 42, scope: !1856)
!1860 = !DILocation(line: 61, column: 28, scope: !1856)
!1861 = !DILocation(line: 61, column: 61, scope: !1856)
!1862 = !DILocation(line: 61, column: 7, scope: !1839)
!1863 = !DILocation(line: 64, column: 11, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !252, line: 64, column: 11)
!1865 = distinct !DILexicalBlock(scope: !1856, file: !252, line: 62, column: 5)
!1866 = !DILocation(line: 64, column: 36, scope: !1864)
!1867 = !DILocation(line: 64, column: 11, scope: !1865)
!1868 = !DILocation(line: 66, column: 24, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1864, file: !252, line: 65, column: 9)
!1870 = !DILocation(line: 70, column: 41, scope: !1869)
!1871 = !DILocation(line: 72, column: 9, scope: !1869)
!1872 = !DILocation(line: 84, column: 16, scope: !1839)
!1873 = !DILocation(line: 90, column: 27, scope: !1839)
!1874 = !DILocation(line: 92, column: 1, scope: !1839)
!1875 = distinct !DISubprogram(name: "clone_quoting_options", scope: !293, file: !293, line: 122, type: !1876, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !1879)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!1878, !1878}
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!1879 = !{!1880, !1881, !1882}
!1880 = !DILocalVariable(name: "o", arg: 1, scope: !1875, file: !293, line: 122, type: !1878)
!1881 = !DILocalVariable(name: "e", scope: !1875, file: !293, line: 124, type: !38)
!1882 = !DILocalVariable(name: "p", scope: !1875, file: !293, line: 125, type: !1878)
!1883 = !DILocation(line: 0, scope: !1875)
!1884 = !DILocation(line: 124, column: 11, scope: !1875)
!1885 = !DILocation(line: 125, column: 40, scope: !1875)
!1886 = !DILocation(line: 125, column: 31, scope: !1875)
!1887 = !DILocation(line: 127, column: 9, scope: !1875)
!1888 = !DILocation(line: 128, column: 3, scope: !1875)
!1889 = distinct !DISubprogram(name: "get_quoting_style", scope: !293, file: !293, line: 133, type: !1890, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !1892)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!5, !323}
!1892 = !{!1893}
!1893 = !DILocalVariable(name: "o", arg: 1, scope: !1889, file: !293, line: 133, type: !323)
!1894 = !DILocation(line: 0, scope: !1889)
!1895 = !DILocation(line: 135, column: 11, scope: !1889)
!1896 = !DILocation(line: 135, column: 46, scope: !1889)
!1897 = !{!1898, !1152, i64 0}
!1898 = !{!"quoting_options", !1152, i64 0, !1236, i64 4, !1152, i64 8, !1151, i64 40, !1151, i64 48}
!1899 = !DILocation(line: 135, column: 3, scope: !1889)
!1900 = distinct !DISubprogram(name: "set_quoting_style", scope: !293, file: !293, line: 141, type: !1901, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !1903)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{null, !1878, !5}
!1903 = !{!1904, !1905}
!1904 = !DILocalVariable(name: "o", arg: 1, scope: !1900, file: !293, line: 141, type: !1878)
!1905 = !DILocalVariable(name: "s", arg: 2, scope: !1900, file: !293, line: 141, type: !5)
!1906 = !DILocation(line: 0, scope: !1900)
!1907 = !DILocation(line: 143, column: 4, scope: !1900)
!1908 = !DILocation(line: 143, column: 39, scope: !1900)
!1909 = !DILocation(line: 143, column: 45, scope: !1900)
!1910 = !DILocation(line: 144, column: 1, scope: !1900)
!1911 = distinct !DISubprogram(name: "set_char_quoting", scope: !293, file: !293, line: 152, type: !1912, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !1914)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!38, !1878, !35, !38}
!1914 = !{!1915, !1916, !1917, !1918, !1919, !1921, !1922}
!1915 = !DILocalVariable(name: "o", arg: 1, scope: !1911, file: !293, line: 152, type: !1878)
!1916 = !DILocalVariable(name: "c", arg: 2, scope: !1911, file: !293, line: 152, type: !35)
!1917 = !DILocalVariable(name: "i", arg: 3, scope: !1911, file: !293, line: 152, type: !38)
!1918 = !DILocalVariable(name: "uc", scope: !1911, file: !293, line: 154, type: !164)
!1919 = !DILocalVariable(name: "p", scope: !1911, file: !293, line: 155, type: !1920)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1921 = !DILocalVariable(name: "shift", scope: !1911, file: !293, line: 157, type: !38)
!1922 = !DILocalVariable(name: "r", scope: !1911, file: !293, line: 158, type: !38)
!1923 = !DILocation(line: 0, scope: !1911)
!1924 = !DILocation(line: 156, column: 6, scope: !1911)
!1925 = !DILocation(line: 156, column: 62, scope: !1911)
!1926 = !DILocation(line: 156, column: 57, scope: !1911)
!1927 = !DILocation(line: 157, column: 15, scope: !1911)
!1928 = !DILocation(line: 158, column: 12, scope: !1911)
!1929 = !DILocation(line: 158, column: 15, scope: !1911)
!1930 = !DILocation(line: 158, column: 25, scope: !1911)
!1931 = !DILocation(line: 159, column: 13, scope: !1911)
!1932 = !DILocation(line: 159, column: 18, scope: !1911)
!1933 = !DILocation(line: 159, column: 23, scope: !1911)
!1934 = !DILocation(line: 159, column: 6, scope: !1911)
!1935 = !DILocation(line: 160, column: 3, scope: !1911)
!1936 = distinct !DISubprogram(name: "set_quoting_flags", scope: !293, file: !293, line: 168, type: !1937, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !1939)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!38, !1878, !38}
!1939 = !{!1940, !1941, !1942}
!1940 = !DILocalVariable(name: "o", arg: 1, scope: !1936, file: !293, line: 168, type: !1878)
!1941 = !DILocalVariable(name: "i", arg: 2, scope: !1936, file: !293, line: 168, type: !38)
!1942 = !DILocalVariable(name: "r", scope: !1936, file: !293, line: 170, type: !38)
!1943 = !DILocation(line: 0, scope: !1936)
!1944 = !DILocation(line: 171, column: 8, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1936, file: !293, line: 171, column: 7)
!1946 = !DILocation(line: 171, column: 7, scope: !1936)
!1947 = !DILocation(line: 173, column: 10, scope: !1936)
!1948 = !{!1898, !1236, i64 4}
!1949 = !DILocation(line: 174, column: 12, scope: !1936)
!1950 = !DILocation(line: 175, column: 3, scope: !1936)
!1951 = distinct !DISubprogram(name: "set_custom_quoting", scope: !293, file: !293, line: 179, type: !1952, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !1954)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{null, !1878, !36, !36}
!1954 = !{!1955, !1956, !1957}
!1955 = !DILocalVariable(name: "o", arg: 1, scope: !1951, file: !293, line: 179, type: !1878)
!1956 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1951, file: !293, line: 180, type: !36)
!1957 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1951, file: !293, line: 180, type: !36)
!1958 = !DILocation(line: 0, scope: !1951)
!1959 = !DILocation(line: 182, column: 8, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1951, file: !293, line: 182, column: 7)
!1961 = !DILocation(line: 182, column: 7, scope: !1951)
!1962 = !DILocation(line: 184, column: 6, scope: !1951)
!1963 = !DILocation(line: 184, column: 12, scope: !1951)
!1964 = !DILocation(line: 185, column: 8, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1951, file: !293, line: 185, column: 7)
!1966 = !DILocation(line: 185, column: 23, scope: !1965)
!1967 = !DILocation(line: 185, column: 19, scope: !1965)
!1968 = !DILocation(line: 186, column: 5, scope: !1965)
!1969 = !DILocation(line: 187, column: 6, scope: !1951)
!1970 = !DILocation(line: 187, column: 17, scope: !1951)
!1971 = !{!1898, !1151, i64 40}
!1972 = !DILocation(line: 188, column: 6, scope: !1951)
!1973 = !DILocation(line: 188, column: 18, scope: !1951)
!1974 = !{!1898, !1151, i64 48}
!1975 = !DILocation(line: 189, column: 1, scope: !1951)
!1976 = distinct !DISubprogram(name: "quotearg_buffer", scope: !293, file: !293, line: 784, type: !1977, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !1979)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!93, !34, !93, !36, !93, !323}
!1979 = !{!1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987}
!1980 = !DILocalVariable(name: "buffer", arg: 1, scope: !1976, file: !293, line: 784, type: !34)
!1981 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1976, file: !293, line: 784, type: !93)
!1982 = !DILocalVariable(name: "arg", arg: 3, scope: !1976, file: !293, line: 785, type: !36)
!1983 = !DILocalVariable(name: "argsize", arg: 4, scope: !1976, file: !293, line: 785, type: !93)
!1984 = !DILocalVariable(name: "o", arg: 5, scope: !1976, file: !293, line: 786, type: !323)
!1985 = !DILocalVariable(name: "p", scope: !1976, file: !293, line: 788, type: !323)
!1986 = !DILocalVariable(name: "e", scope: !1976, file: !293, line: 789, type: !38)
!1987 = !DILocalVariable(name: "r", scope: !1976, file: !293, line: 790, type: !93)
!1988 = !DILocation(line: 0, scope: !1976)
!1989 = !DILocation(line: 788, column: 37, scope: !1976)
!1990 = !DILocation(line: 789, column: 11, scope: !1976)
!1991 = !DILocation(line: 791, column: 43, scope: !1976)
!1992 = !DILocation(line: 791, column: 53, scope: !1976)
!1993 = !DILocation(line: 791, column: 60, scope: !1976)
!1994 = !DILocation(line: 792, column: 43, scope: !1976)
!1995 = !DILocation(line: 792, column: 58, scope: !1976)
!1996 = !DILocation(line: 790, column: 14, scope: !1976)
!1997 = !DILocation(line: 793, column: 9, scope: !1976)
!1998 = !DILocation(line: 794, column: 3, scope: !1976)
!1999 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !293, file: !293, line: 256, type: !2000, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2004)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!93, !34, !93, !36, !93, !5, !38, !2002, !36, !36}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2004 = !{!2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2029, !2030, !2031, !2032, !2033, !2036, !2037, !2043, !2046, !2047, !2054, !2057, !2058, !2059, !2060, !2061, !2062}
!2005 = !DILocalVariable(name: "buffer", arg: 1, scope: !1999, file: !293, line: 256, type: !34)
!2006 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1999, file: !293, line: 256, type: !93)
!2007 = !DILocalVariable(name: "arg", arg: 3, scope: !1999, file: !293, line: 257, type: !36)
!2008 = !DILocalVariable(name: "argsize", arg: 4, scope: !1999, file: !293, line: 257, type: !93)
!2009 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1999, file: !293, line: 258, type: !5)
!2010 = !DILocalVariable(name: "flags", arg: 6, scope: !1999, file: !293, line: 258, type: !38)
!2011 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1999, file: !293, line: 259, type: !2002)
!2012 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1999, file: !293, line: 260, type: !36)
!2013 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1999, file: !293, line: 261, type: !36)
!2014 = !DILocalVariable(name: "i", scope: !1999, file: !293, line: 263, type: !93)
!2015 = !DILocalVariable(name: "len", scope: !1999, file: !293, line: 264, type: !93)
!2016 = !DILocalVariable(name: "orig_buffersize", scope: !1999, file: !293, line: 265, type: !93)
!2017 = !DILocalVariable(name: "quote_string", scope: !1999, file: !293, line: 266, type: !36)
!2018 = !DILocalVariable(name: "quote_string_len", scope: !1999, file: !293, line: 267, type: !93)
!2019 = !DILocalVariable(name: "backslash_escapes", scope: !1999, file: !293, line: 268, type: !179)
!2020 = !DILocalVariable(name: "unibyte_locale", scope: !1999, file: !293, line: 269, type: !179)
!2021 = !DILocalVariable(name: "elide_outer_quotes", scope: !1999, file: !293, line: 270, type: !179)
!2022 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1999, file: !293, line: 271, type: !179)
!2023 = !DILocalVariable(name: "encountered_single_quote", scope: !1999, file: !293, line: 272, type: !179)
!2024 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1999, file: !293, line: 273, type: !179)
!2025 = !DILocalVariable(name: "c", scope: !2026, file: !293, line: 402, type: !164)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !293, line: 401, column: 5)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !293, line: 400, column: 3)
!2028 = distinct !DILexicalBlock(scope: !1999, file: !293, line: 400, column: 3)
!2029 = !DILocalVariable(name: "esc", scope: !2026, file: !293, line: 403, type: !164)
!2030 = !DILocalVariable(name: "is_right_quote", scope: !2026, file: !293, line: 404, type: !179)
!2031 = !DILocalVariable(name: "escaping", scope: !2026, file: !293, line: 405, type: !179)
!2032 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2026, file: !293, line: 406, type: !179)
!2033 = !DILocalVariable(name: "m", scope: !2034, file: !293, line: 610, type: !93)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !293, line: 608, column: 11)
!2035 = distinct !DILexicalBlock(scope: !2026, file: !293, line: 426, column: 9)
!2036 = !DILocalVariable(name: "printable", scope: !2034, file: !293, line: 612, type: !179)
!2037 = !DILocalVariable(name: "mbstate", scope: !2038, file: !293, line: 621, type: !2040)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !293, line: 620, column: 15)
!2039 = distinct !DILexicalBlock(scope: !2034, file: !293, line: 614, column: 17)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2041, line: 6, baseType: !2042)
!2041 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !344, line: 21, baseType: !343)
!2043 = !DILocalVariable(name: "w", scope: !2044, file: !293, line: 631, type: !2045)
!2044 = distinct !DILexicalBlock(scope: !2038, file: !293, line: 630, column: 19)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !94, line: 74, baseType: !38)
!2046 = !DILocalVariable(name: "bytes", scope: !2044, file: !293, line: 632, type: !93)
!2047 = !DILocalVariable(name: "j", scope: !2048, file: !293, line: 657, type: !93)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !293, line: 656, column: 27)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !293, line: 654, column: 29)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !293, line: 649, column: 23)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !293, line: 641, column: 30)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !293, line: 636, column: 30)
!2053 = distinct !DILexicalBlock(scope: !2044, file: !293, line: 634, column: 25)
!2054 = !DILocalVariable(name: "ilim", scope: !2055, file: !293, line: 684, type: !93)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !293, line: 681, column: 15)
!2056 = distinct !DILexicalBlock(scope: !2034, file: !293, line: 680, column: 17)
!2057 = !DILabel(scope: !1999, name: "process_input", file: !293, line: 314)
!2058 = !DILabel(scope: !2035, name: "c_and_shell_escape", file: !293, line: 512)
!2059 = !DILabel(scope: !2035, name: "c_escape", file: !293, line: 517)
!2060 = !DILabel(scope: !2026, name: "store_escape", file: !293, line: 719)
!2061 = !DILabel(scope: !2026, name: "store_c", file: !293, line: 722)
!2062 = !DILabel(scope: !1999, name: "force_outer_quoting_style", file: !293, line: 763)
!2063 = !DILocation(line: 0, scope: !1999)
!2064 = !DILocation(line: 269, column: 25, scope: !1999)
!2065 = !DILocation(line: 269, column: 36, scope: !1999)
!2066 = !DILocation(line: 270, column: 8, scope: !1999)
!2067 = !DILocation(line: 0, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2035, file: !293, line: 526, column: 15)
!2069 = !DILocation(line: 0, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !293, line: 462, column: 19)
!2071 = distinct !DILexicalBlock(scope: !2035, file: !293, line: 455, column: 13)
!2072 = !DILocation(line: 0, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !293, line: 449, column: 20)
!2074 = distinct !DILexicalBlock(scope: !2035, file: !293, line: 428, column: 15)
!2075 = !DILocation(line: 0, scope: !2038)
!2076 = !DILocation(line: 0, scope: !2044)
!2077 = !DILocation(line: 0, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2026, file: !293, line: 712, column: 11)
!2079 = !DILocation(line: 273, column: 3, scope: !1999)
!2080 = !DILocation(line: 265, column: 10, scope: !1999)
!2081 = !DILocation(line: 266, column: 15, scope: !1999)
!2082 = !DILocation(line: 267, column: 10, scope: !1999)
!2083 = !DILocation(line: 268, column: 8, scope: !1999)
!2084 = !DILocation(line: 271, column: 8, scope: !1999)
!2085 = !DILocation(line: 272, column: 8, scope: !1999)
!2086 = !DILocation(line: 273, column: 8, scope: !1999)
!2087 = !DILocation(line: 314, column: 2, scope: !1999)
!2088 = !DILocation(line: 316, column: 3, scope: !1999)
!2089 = !DILocation(line: 323, column: 11, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1999, file: !293, line: 317, column: 5)
!2091 = !DILocation(line: 323, column: 12, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2090, file: !293, line: 323, column: 11)
!2093 = !DILocation(line: 324, column: 9, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !293, line: 324, column: 9)
!2095 = distinct !DILexicalBlock(scope: !2092, file: !293, line: 324, column: 9)
!2096 = !DILocation(line: 324, column: 9, scope: !2095)
!2097 = !DILocation(line: 362, column: 26, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !293, line: 340, column: 11)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !293, line: 339, column: 13)
!2100 = distinct !DILexicalBlock(scope: !2090, file: !293, line: 338, column: 7)
!2101 = !DILocation(line: 363, column: 27, scope: !2098)
!2102 = !DILocation(line: 364, column: 11, scope: !2098)
!2103 = !DILocation(line: 365, column: 14, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2100, file: !293, line: 365, column: 13)
!2105 = !DILocation(line: 365, column: 13, scope: !2100)
!2106 = !DILocation(line: 366, column: 43, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !293, line: 366, column: 11)
!2108 = distinct !DILexicalBlock(scope: !2104, file: !293, line: 366, column: 11)
!2109 = !DILocation(line: 366, column: 11, scope: !2108)
!2110 = !DILocation(line: 367, column: 13, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !293, line: 367, column: 13)
!2112 = distinct !DILexicalBlock(scope: !2107, file: !293, line: 367, column: 13)
!2113 = !DILocation(line: 367, column: 13, scope: !2112)
!2114 = !DILocation(line: 366, column: 70, scope: !2107)
!2115 = distinct !{!2115, !2109, !2116}
!2116 = !DILocation(line: 367, column: 13, scope: !2108)
!2117 = !DILocation(line: 264, column: 10, scope: !1999)
!2118 = !DILocation(line: 370, column: 28, scope: !2100)
!2119 = !DILocation(line: 372, column: 7, scope: !2090)
!2120 = !DILocation(line: 376, column: 7, scope: !2090)
!2121 = !DILocation(line: 379, column: 7, scope: !2090)
!2122 = !DILocation(line: 381, column: 12, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2090, file: !293, line: 381, column: 11)
!2124 = !DILocation(line: 381, column: 11, scope: !2090)
!2125 = !DILocation(line: 386, column: 12, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2090, file: !293, line: 386, column: 11)
!2127 = !DILocation(line: 386, column: 11, scope: !2090)
!2128 = !DILocation(line: 387, column: 9, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !293, line: 387, column: 9)
!2130 = distinct !DILexicalBlock(scope: !2126, file: !293, line: 387, column: 9)
!2131 = !DILocation(line: 387, column: 9, scope: !2130)
!2132 = !DILocation(line: 394, column: 7, scope: !2090)
!2133 = !DILocation(line: 397, column: 7, scope: !2090)
!2134 = !DILocation(line: 0, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2026, file: !293, line: 408, column: 11)
!2136 = !DILocation(line: 0, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !293, line: 419, column: 15)
!2138 = distinct !DILexicalBlock(scope: !2135, file: !293, line: 418, column: 9)
!2139 = !DILocation(line: 0, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2035, file: !293, line: 556, column: 15)
!2141 = !DILocation(line: 0, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2035, file: !293, line: 548, column: 15)
!2143 = !DILocation(line: 0, scope: !2049)
!2144 = !DILocation(line: 0, scope: !2056)
!2145 = !DILocation(line: 0, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2035, file: !293, line: 509, column: 15)
!2147 = !DILocation(line: 400, column: 8, scope: !2028)
!2148 = !DILocation(line: 0, scope: !2028)
!2149 = !DILocation(line: 400, column: 27, scope: !2027)
!2150 = !DILocation(line: 400, column: 19, scope: !2027)
!2151 = !DILocation(line: 400, column: 41, scope: !2027)
!2152 = !DILocation(line: 400, column: 48, scope: !2027)
!2153 = !DILocation(line: 400, column: 3, scope: !2028)
!2154 = !DILocation(line: 400, column: 60, scope: !2027)
!2155 = !DILocation(line: 0, scope: !2026)
!2156 = !DILocation(line: 409, column: 11, scope: !2135)
!2157 = !DILocation(line: 411, column: 17, scope: !2135)
!2158 = !DILocation(line: 412, column: 39, scope: !2135)
!2159 = !DILocation(line: 416, column: 32, scope: !2135)
!2160 = !DILocation(line: 412, column: 19, scope: !2135)
!2161 = !DILocation(line: 412, column: 15, scope: !2135)
!2162 = !DILocation(line: 417, column: 11, scope: !2135)
!2163 = !DILocation(line: 417, column: 26, scope: !2135)
!2164 = !DILocation(line: 417, column: 14, scope: !2135)
!2165 = !DILocation(line: 417, column: 63, scope: !2135)
!2166 = !DILocation(line: 408, column: 11, scope: !2026)
!2167 = !DILocation(line: 424, column: 11, scope: !2026)
!2168 = !DILocation(line: 425, column: 7, scope: !2026)
!2169 = !DILocation(line: 428, column: 15, scope: !2035)
!2170 = !DILocation(line: 430, column: 15, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !293, line: 430, column: 15)
!2172 = distinct !DILexicalBlock(scope: !2074, file: !293, line: 429, column: 13)
!2173 = !DILocation(line: 430, column: 15, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2171, file: !293, line: 430, column: 15)
!2175 = !DILocation(line: 430, column: 15, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !293, line: 430, column: 15)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !293, line: 430, column: 15)
!2178 = distinct !DILexicalBlock(scope: !2174, file: !293, line: 430, column: 15)
!2179 = !DILocation(line: 430, column: 15, scope: !2177)
!2180 = !DILocation(line: 430, column: 15, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !293, line: 430, column: 15)
!2182 = distinct !DILexicalBlock(scope: !2178, file: !293, line: 430, column: 15)
!2183 = !DILocation(line: 430, column: 15, scope: !2182)
!2184 = !DILocation(line: 430, column: 15, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !293, line: 430, column: 15)
!2186 = distinct !DILexicalBlock(scope: !2178, file: !293, line: 430, column: 15)
!2187 = !DILocation(line: 430, column: 15, scope: !2186)
!2188 = !DILocation(line: 430, column: 15, scope: !2178)
!2189 = !DILocation(line: 430, column: 15, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !293, line: 430, column: 15)
!2191 = distinct !DILexicalBlock(scope: !2171, file: !293, line: 430, column: 15)
!2192 = !DILocation(line: 430, column: 15, scope: !2191)
!2193 = !DILocation(line: 438, column: 19, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2172, file: !293, line: 437, column: 19)
!2195 = !DILocation(line: 438, column: 24, scope: !2194)
!2196 = !DILocation(line: 438, column: 28, scope: !2194)
!2197 = !DILocation(line: 438, column: 38, scope: !2194)
!2198 = !DILocation(line: 438, column: 48, scope: !2194)
!2199 = !DILocation(line: 438, column: 59, scope: !2194)
!2200 = !DILocation(line: 440, column: 19, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !293, line: 440, column: 19)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !293, line: 440, column: 19)
!2203 = distinct !DILexicalBlock(scope: !2194, file: !293, line: 439, column: 17)
!2204 = !DILocation(line: 440, column: 19, scope: !2202)
!2205 = !DILocation(line: 441, column: 19, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !293, line: 441, column: 19)
!2207 = distinct !DILexicalBlock(scope: !2203, file: !293, line: 441, column: 19)
!2208 = !DILocation(line: 441, column: 19, scope: !2207)
!2209 = !DILocation(line: 442, column: 17, scope: !2203)
!2210 = !DILocation(line: 449, column: 20, scope: !2074)
!2211 = !DILocation(line: 454, column: 11, scope: !2035)
!2212 = !DILocation(line: 457, column: 19, scope: !2071)
!2213 = !DILocation(line: 463, column: 19, scope: !2070)
!2214 = !DILocation(line: 463, column: 24, scope: !2070)
!2215 = !DILocation(line: 463, column: 28, scope: !2070)
!2216 = !DILocation(line: 463, column: 38, scope: !2070)
!2217 = !DILocation(line: 463, column: 47, scope: !2070)
!2218 = !DILocation(line: 463, column: 41, scope: !2070)
!2219 = !DILocation(line: 463, column: 52, scope: !2070)
!2220 = !DILocation(line: 462, column: 19, scope: !2071)
!2221 = !DILocation(line: 464, column: 25, scope: !2070)
!2222 = !DILocation(line: 464, column: 17, scope: !2070)
!2223 = !DILocation(line: 471, column: 25, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2070, file: !293, line: 465, column: 19)
!2225 = !DILocation(line: 475, column: 21, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !293, line: 475, column: 21)
!2227 = distinct !DILexicalBlock(scope: !2224, file: !293, line: 475, column: 21)
!2228 = !DILocation(line: 475, column: 21, scope: !2227)
!2229 = !DILocation(line: 476, column: 21, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !293, line: 476, column: 21)
!2231 = distinct !DILexicalBlock(scope: !2224, file: !293, line: 476, column: 21)
!2232 = !DILocation(line: 476, column: 21, scope: !2231)
!2233 = !DILocation(line: 477, column: 21, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !293, line: 477, column: 21)
!2235 = distinct !DILexicalBlock(scope: !2224, file: !293, line: 477, column: 21)
!2236 = !DILocation(line: 477, column: 21, scope: !2235)
!2237 = !DILocation(line: 478, column: 21, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !293, line: 478, column: 21)
!2239 = distinct !DILexicalBlock(scope: !2224, file: !293, line: 478, column: 21)
!2240 = !DILocation(line: 478, column: 21, scope: !2239)
!2241 = !DILocation(line: 479, column: 21, scope: !2224)
!2242 = !DILocation(line: 492, column: 31, scope: !2035)
!2243 = !DILocation(line: 493, column: 31, scope: !2035)
!2244 = !DILocation(line: 495, column: 31, scope: !2035)
!2245 = !DILocation(line: 496, column: 31, scope: !2035)
!2246 = !DILocation(line: 497, column: 31, scope: !2035)
!2247 = !DILocation(line: 500, column: 15, scope: !2035)
!2248 = !DILocation(line: 502, column: 19, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !293, line: 501, column: 13)
!2250 = distinct !DILexicalBlock(scope: !2035, file: !293, line: 500, column: 15)
!2251 = !DILocation(line: 509, column: 33, scope: !2146)
!2252 = !DILocation(line: 0, scope: !2035)
!2253 = !DILocation(line: 512, column: 9, scope: !2035)
!2254 = !DILocation(line: 514, column: 15, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2035, file: !293, line: 513, column: 15)
!2256 = !DILocation(line: 517, column: 9, scope: !2035)
!2257 = !DILocation(line: 518, column: 15, scope: !2035)
!2258 = !DILocation(line: 526, column: 15, scope: !2035)
!2259 = !DILocation(line: 526, column: 40, scope: !2068)
!2260 = !DILocation(line: 526, column: 47, scope: !2068)
!2261 = !DILocation(line: 526, column: 18, scope: !2068)
!2262 = !DILocation(line: 530, column: 17, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2035, file: !293, line: 530, column: 15)
!2264 = !DILocation(line: 530, column: 15, scope: !2035)
!2265 = !DILocation(line: 535, column: 11, scope: !2035)
!2266 = !DILocation(line: 549, column: 15, scope: !2142)
!2267 = !DILocation(line: 556, column: 15, scope: !2035)
!2268 = !DILocation(line: 558, column: 19, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2140, file: !293, line: 557, column: 13)
!2270 = !DILocation(line: 561, column: 19, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2269, file: !293, line: 561, column: 19)
!2272 = !DILocation(line: 561, column: 35, scope: !2271)
!2273 = !DILocation(line: 561, column: 30, scope: !2271)
!2274 = !DILocation(line: 570, column: 15, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !293, line: 570, column: 15)
!2276 = distinct !DILexicalBlock(scope: !2269, file: !293, line: 570, column: 15)
!2277 = !DILocation(line: 570, column: 15, scope: !2276)
!2278 = !DILocation(line: 571, column: 15, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !293, line: 571, column: 15)
!2280 = distinct !DILexicalBlock(scope: !2269, file: !293, line: 571, column: 15)
!2281 = !DILocation(line: 571, column: 15, scope: !2280)
!2282 = !DILocation(line: 572, column: 15, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !293, line: 572, column: 15)
!2284 = distinct !DILexicalBlock(scope: !2269, file: !293, line: 572, column: 15)
!2285 = !DILocation(line: 572, column: 15, scope: !2284)
!2286 = !DILocation(line: 574, column: 13, scope: !2269)
!2287 = !DILocation(line: 614, column: 17, scope: !2034)
!2288 = !DILocation(line: 0, scope: !2034)
!2289 = !DILocation(line: 617, column: 29, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2039, file: !293, line: 615, column: 15)
!2291 = !{!1359, !1359, i64 0}
!2292 = !DILocation(line: 617, column: 27, scope: !2290)
!2293 = !DILocation(line: 618, column: 15, scope: !2290)
!2294 = !DILocation(line: 621, column: 17, scope: !2038)
!2295 = !DILocation(line: 621, column: 27, scope: !2038)
!2296 = !DILocalVariable(name: "__dest", arg: 1, scope: !2297, file: !2298, line: 59, type: !91)
!2297 = distinct !DISubprogram(name: "memset", scope: !2298, file: !2298, line: 59, type: !2299, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2301)
!2298 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!91, !91, !38, !93}
!2301 = !{!2296, !2302, !2303}
!2302 = !DILocalVariable(name: "__ch", arg: 2, scope: !2297, file: !2298, line: 59, type: !38)
!2303 = !DILocalVariable(name: "__len", arg: 3, scope: !2297, file: !2298, line: 59, type: !93)
!2304 = !DILocation(line: 0, scope: !2297, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 622, column: 17, scope: !2038)
!2306 = !DILocation(line: 71, column: 10, scope: !2297, inlinedAt: !2305)
!2307 = !DILocation(line: 626, column: 29, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2038, file: !293, line: 626, column: 21)
!2309 = !DILocation(line: 626, column: 21, scope: !2038)
!2310 = !DILocation(line: 627, column: 29, scope: !2308)
!2311 = !DILocation(line: 627, column: 19, scope: !2308)
!2312 = !DILocation(line: 629, column: 17, scope: !2038)
!2313 = !DILocation(line: 624, column: 19, scope: !2038)
!2314 = !DILocation(line: 625, column: 27, scope: !2038)
!2315 = !DILocation(line: 631, column: 21, scope: !2044)
!2316 = !DILocation(line: 632, column: 56, scope: !2044)
!2317 = !DILocation(line: 632, column: 50, scope: !2044)
!2318 = !DILocation(line: 633, column: 53, scope: !2044)
!2319 = !DILocation(line: 632, column: 36, scope: !2044)
!2320 = !DILocation(line: 634, column: 25, scope: !2044)
!2321 = !DILocation(line: 644, column: 38, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2051, file: !293, line: 642, column: 23)
!2323 = !DILocation(line: 644, column: 48, scope: !2322)
!2324 = !DILocation(line: 644, column: 25, scope: !2322)
!2325 = !DILocation(line: 644, column: 51, scope: !2322)
!2326 = !DILocation(line: 645, column: 28, scope: !2322)
!2327 = !DILocation(line: 644, column: 34, scope: !2322)
!2328 = distinct !{!2328, !2324, !2326}
!2329 = !DILocation(line: 658, column: 43, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !293, line: 658, column: 29)
!2331 = distinct !DILexicalBlock(scope: !2048, file: !293, line: 658, column: 29)
!2332 = !DILocation(line: 655, column: 29, scope: !2049)
!2333 = !DILocation(line: 0, scope: !2048)
!2334 = !DILocation(line: 659, column: 49, scope: !2330)
!2335 = !DILocation(line: 659, column: 39, scope: !2330)
!2336 = !DILocation(line: 659, column: 31, scope: !2330)
!2337 = !DILocation(line: 658, column: 53, scope: !2330)
!2338 = !DILocation(line: 658, column: 29, scope: !2331)
!2339 = distinct !{!2339, !2338, !2340}
!2340 = !DILocation(line: 667, column: 33, scope: !2331)
!2341 = !DILocation(line: 674, column: 19, scope: !2038)
!2342 = !DILocation(line: 670, column: 41, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2050, file: !293, line: 670, column: 29)
!2344 = !DILocation(line: 670, column: 31, scope: !2343)
!2345 = !DILocation(line: 670, column: 29, scope: !2050)
!2346 = !DILocation(line: 672, column: 27, scope: !2050)
!2347 = !DILocation(line: 675, column: 26, scope: !2038)
!2348 = !DILocation(line: 675, column: 24, scope: !2038)
!2349 = !DILocation(line: 674, column: 19, scope: !2044)
!2350 = distinct !{!2350, !2312, !2351}
!2351 = !DILocation(line: 675, column: 44, scope: !2038)
!2352 = !DILocation(line: 676, column: 15, scope: !2039)
!2353 = !DILocation(line: 0, scope: !2039)
!2354 = !DILocation(line: 678, column: 40, scope: !2034)
!2355 = !DILocation(line: 680, column: 19, scope: !2056)
!2356 = !DILocation(line: 680, column: 45, scope: !2056)
!2357 = !DILocation(line: 680, column: 23, scope: !2056)
!2358 = !DILocation(line: 684, column: 33, scope: !2055)
!2359 = !DILocation(line: 0, scope: !2055)
!2360 = !DILocation(line: 686, column: 17, scope: !2055)
!2361 = !DILocation(line: 405, column: 12, scope: !2026)
!2362 = !DILocation(line: 688, column: 43, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !293, line: 688, column: 25)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !293, line: 687, column: 19)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !293, line: 686, column: 17)
!2366 = distinct !DILexicalBlock(scope: !2055, file: !293, line: 686, column: 17)
!2367 = !DILocation(line: 690, column: 25, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !293, line: 690, column: 25)
!2369 = distinct !DILexicalBlock(scope: !2363, file: !293, line: 689, column: 23)
!2370 = !DILocation(line: 690, column: 25, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2368, file: !293, line: 690, column: 25)
!2372 = !DILocation(line: 690, column: 25, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !293, line: 690, column: 25)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !293, line: 690, column: 25)
!2375 = distinct !DILexicalBlock(scope: !2371, file: !293, line: 690, column: 25)
!2376 = !DILocation(line: 690, column: 25, scope: !2374)
!2377 = !DILocation(line: 690, column: 25, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !293, line: 690, column: 25)
!2379 = distinct !DILexicalBlock(scope: !2375, file: !293, line: 690, column: 25)
!2380 = !DILocation(line: 690, column: 25, scope: !2379)
!2381 = !DILocation(line: 690, column: 25, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !293, line: 690, column: 25)
!2383 = distinct !DILexicalBlock(scope: !2375, file: !293, line: 690, column: 25)
!2384 = !DILocation(line: 690, column: 25, scope: !2383)
!2385 = !DILocation(line: 690, column: 25, scope: !2375)
!2386 = !DILocation(line: 690, column: 25, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !293, line: 690, column: 25)
!2388 = distinct !DILexicalBlock(scope: !2368, file: !293, line: 690, column: 25)
!2389 = !DILocation(line: 690, column: 25, scope: !2388)
!2390 = !DILocation(line: 691, column: 25, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !293, line: 691, column: 25)
!2392 = distinct !DILexicalBlock(scope: !2369, file: !293, line: 691, column: 25)
!2393 = !DILocation(line: 691, column: 25, scope: !2392)
!2394 = !DILocation(line: 692, column: 25, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !293, line: 692, column: 25)
!2396 = distinct !DILexicalBlock(scope: !2369, file: !293, line: 692, column: 25)
!2397 = !DILocation(line: 692, column: 25, scope: !2396)
!2398 = !DILocation(line: 693, column: 38, scope: !2369)
!2399 = !DILocation(line: 693, column: 33, scope: !2369)
!2400 = !DILocation(line: 694, column: 23, scope: !2369)
!2401 = !DILocation(line: 695, column: 30, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2363, file: !293, line: 695, column: 30)
!2403 = !DILocation(line: 695, column: 30, scope: !2363)
!2404 = !DILocation(line: 697, column: 25, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !293, line: 697, column: 25)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !293, line: 697, column: 25)
!2407 = distinct !DILexicalBlock(scope: !2402, file: !293, line: 696, column: 23)
!2408 = !DILocation(line: 697, column: 25, scope: !2406)
!2409 = !DILocation(line: 699, column: 23, scope: !2407)
!2410 = !DILocation(line: 700, column: 35, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2364, file: !293, line: 700, column: 25)
!2412 = !DILocation(line: 700, column: 30, scope: !2411)
!2413 = !DILocation(line: 700, column: 25, scope: !2364)
!2414 = !DILocation(line: 702, column: 21, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !293, line: 702, column: 21)
!2416 = distinct !DILexicalBlock(scope: !2364, file: !293, line: 702, column: 21)
!2417 = !DILocation(line: 702, column: 21, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !293, line: 702, column: 21)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !293, line: 702, column: 21)
!2420 = distinct !DILexicalBlock(scope: !2415, file: !293, line: 702, column: 21)
!2421 = !DILocation(line: 702, column: 21, scope: !2419)
!2422 = !DILocation(line: 702, column: 21, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !293, line: 702, column: 21)
!2424 = distinct !DILexicalBlock(scope: !2420, file: !293, line: 702, column: 21)
!2425 = !DILocation(line: 702, column: 21, scope: !2424)
!2426 = !DILocation(line: 702, column: 21, scope: !2420)
!2427 = !DILocation(line: 0, scope: !2364)
!2428 = !DILocation(line: 703, column: 21, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !293, line: 703, column: 21)
!2430 = distinct !DILexicalBlock(scope: !2364, file: !293, line: 703, column: 21)
!2431 = !DILocation(line: 703, column: 21, scope: !2430)
!2432 = !DILocation(line: 704, column: 25, scope: !2364)
!2433 = !DILocation(line: 686, column: 17, scope: !2365)
!2434 = distinct !{!2434, !2435, !2436}
!2435 = !DILocation(line: 686, column: 17, scope: !2366)
!2436 = !DILocation(line: 705, column: 19, scope: !2366)
!2437 = !DILocation(line: 416, column: 30, scope: !2135)
!2438 = !DILocation(line: 712, column: 34, scope: !2078)
!2439 = !DILocation(line: 715, column: 35, scope: !2078)
!2440 = !DILocation(line: 715, column: 17, scope: !2078)
!2441 = !DILocation(line: 715, column: 47, scope: !2078)
!2442 = !DILocation(line: 715, column: 65, scope: !2078)
!2443 = !DILocation(line: 716, column: 15, scope: !2078)
!2444 = !DILocation(line: 716, column: 11, scope: !2078)
!2445 = !DILocation(line: 712, column: 11, scope: !2026)
!2446 = !DILocation(line: 400, column: 10, scope: !2028)
!2447 = !DILocation(line: 719, column: 5, scope: !2026)
!2448 = !DILocation(line: 720, column: 7, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2026, file: !293, line: 720, column: 7)
!2450 = !DILocation(line: 720, column: 7, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2449, file: !293, line: 720, column: 7)
!2452 = !DILocation(line: 720, column: 7, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !293, line: 720, column: 7)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !293, line: 720, column: 7)
!2455 = distinct !DILexicalBlock(scope: !2451, file: !293, line: 720, column: 7)
!2456 = !DILocation(line: 720, column: 7, scope: !2454)
!2457 = !DILocation(line: 720, column: 7, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !293, line: 720, column: 7)
!2459 = distinct !DILexicalBlock(scope: !2455, file: !293, line: 720, column: 7)
!2460 = !DILocation(line: 720, column: 7, scope: !2459)
!2461 = !DILocation(line: 720, column: 7, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !293, line: 720, column: 7)
!2463 = distinct !DILexicalBlock(scope: !2455, file: !293, line: 720, column: 7)
!2464 = !DILocation(line: 720, column: 7, scope: !2463)
!2465 = !DILocation(line: 720, column: 7, scope: !2455)
!2466 = !DILocation(line: 720, column: 7, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !293, line: 720, column: 7)
!2468 = distinct !DILexicalBlock(scope: !2449, file: !293, line: 720, column: 7)
!2469 = !DILocation(line: 720, column: 7, scope: !2468)
!2470 = !DILocation(line: 722, column: 5, scope: !2026)
!2471 = !DILocation(line: 723, column: 7, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !293, line: 723, column: 7)
!2473 = distinct !DILexicalBlock(scope: !2026, file: !293, line: 723, column: 7)
!2474 = !DILocation(line: 424, column: 9, scope: !2026)
!2475 = !DILocation(line: 723, column: 7, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !293, line: 723, column: 7)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !293, line: 723, column: 7)
!2478 = distinct !DILexicalBlock(scope: !2472, file: !293, line: 723, column: 7)
!2479 = !DILocation(line: 723, column: 7, scope: !2477)
!2480 = !DILocation(line: 723, column: 7, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !293, line: 723, column: 7)
!2482 = distinct !DILexicalBlock(scope: !2478, file: !293, line: 723, column: 7)
!2483 = !DILocation(line: 723, column: 7, scope: !2482)
!2484 = !DILocation(line: 723, column: 7, scope: !2478)
!2485 = !DILocation(line: 724, column: 7, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !293, line: 724, column: 7)
!2487 = distinct !DILexicalBlock(scope: !2026, file: !293, line: 724, column: 7)
!2488 = !DILocation(line: 724, column: 7, scope: !2487)
!2489 = !DILocation(line: 726, column: 13, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2026, file: !293, line: 726, column: 11)
!2491 = !DILocation(line: 726, column: 11, scope: !2026)
!2492 = !DILocation(line: 728, column: 5, scope: !2027)
!2493 = !DILocation(line: 400, column: 75, scope: !2027)
!2494 = !DILocation(line: 400, column: 3, scope: !2027)
!2495 = distinct !{!2495, !2153, !2496}
!2496 = !DILocation(line: 728, column: 5, scope: !2028)
!2497 = !DILocation(line: 730, column: 11, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !1999, file: !293, line: 730, column: 7)
!2499 = !DILocation(line: 730, column: 16, scope: !2498)
!2500 = !DILocation(line: 738, column: 51, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !1999, file: !293, line: 738, column: 7)
!2502 = !DILocation(line: 739, column: 10, scope: !2501)
!2503 = !DILocation(line: 741, column: 11, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !293, line: 741, column: 11)
!2505 = distinct !DILexicalBlock(scope: !2501, file: !293, line: 740, column: 5)
!2506 = !DILocation(line: 741, column: 11, scope: !2505)
!2507 = !DILocation(line: 742, column: 16, scope: !2504)
!2508 = !DILocation(line: 742, column: 9, scope: !2504)
!2509 = !DILocation(line: 746, column: 18, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2504, file: !293, line: 746, column: 16)
!2511 = !DILocation(line: 746, column: 32, scope: !2510)
!2512 = !DILocation(line: 746, column: 29, scope: !2510)
!2513 = !DILocation(line: 755, column: 7, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !1999, file: !293, line: 755, column: 7)
!2515 = !DILocation(line: 755, column: 20, scope: !2514)
!2516 = !DILocation(line: 756, column: 12, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !293, line: 756, column: 5)
!2518 = distinct !DILexicalBlock(scope: !2514, file: !293, line: 756, column: 5)
!2519 = !DILocation(line: 756, column: 5, scope: !2518)
!2520 = !DILocation(line: 757, column: 7, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !293, line: 757, column: 7)
!2522 = distinct !DILexicalBlock(scope: !2517, file: !293, line: 757, column: 7)
!2523 = !DILocation(line: 757, column: 7, scope: !2522)
!2524 = !DILocation(line: 756, column: 39, scope: !2517)
!2525 = distinct !{!2525, !2519, !2526}
!2526 = !DILocation(line: 757, column: 7, scope: !2518)
!2527 = !DILocation(line: 759, column: 11, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !1999, file: !293, line: 759, column: 7)
!2529 = !DILocation(line: 759, column: 7, scope: !1999)
!2530 = !DILocation(line: 760, column: 5, scope: !2528)
!2531 = !DILocation(line: 760, column: 17, scope: !2528)
!2532 = !DILocation(line: 763, column: 2, scope: !1999)
!2533 = !DILocation(line: 766, column: 51, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !1999, file: !293, line: 766, column: 7)
!2535 = !DILocation(line: 766, column: 21, scope: !2534)
!2536 = !DILocation(line: 770, column: 42, scope: !1999)
!2537 = !DILocation(line: 768, column: 10, scope: !1999)
!2538 = !DILocation(line: 768, column: 3, scope: !1999)
!2539 = !DILocation(line: 772, column: 1, scope: !1999)
!2540 = distinct !DISubprogram(name: "gettext_quote", scope: !293, file: !293, line: 207, type: !2541, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2543)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!36, !36, !5}
!2543 = !{!2544, !2545, !2546, !2547}
!2544 = !DILocalVariable(name: "msgid", arg: 1, scope: !2540, file: !293, line: 207, type: !36)
!2545 = !DILocalVariable(name: "s", arg: 2, scope: !2540, file: !293, line: 207, type: !5)
!2546 = !DILocalVariable(name: "translation", scope: !2540, file: !293, line: 209, type: !36)
!2547 = !DILocalVariable(name: "locale_code", scope: !2540, file: !293, line: 210, type: !36)
!2548 = !DILocation(line: 0, scope: !2540)
!2549 = !DILocation(line: 209, column: 29, scope: !2540)
!2550 = !DILocation(line: 212, column: 19, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2540, file: !293, line: 212, column: 7)
!2552 = !DILocation(line: 212, column: 7, scope: !2540)
!2553 = !DILocation(line: 233, column: 17, scope: !2540)
!2554 = !DILocalVariable(name: "s1", arg: 1, scope: !2555, file: !2556, line: 160, type: !36)
!2555 = distinct !DISubprogram(name: "strcaseeq0", scope: !2556, file: !2556, line: 160, type: !2557, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2559)
!2556 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!38, !36, !36, !35, !35, !35, !35, !35, !35, !35, !35, !35}
!2559 = !{!2554, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569}
!2560 = !DILocalVariable(name: "s2", arg: 2, scope: !2555, file: !2556, line: 160, type: !36)
!2561 = !DILocalVariable(name: "s20", arg: 3, scope: !2555, file: !2556, line: 160, type: !35)
!2562 = !DILocalVariable(name: "s21", arg: 4, scope: !2555, file: !2556, line: 160, type: !35)
!2563 = !DILocalVariable(name: "s22", arg: 5, scope: !2555, file: !2556, line: 160, type: !35)
!2564 = !DILocalVariable(name: "s23", arg: 6, scope: !2555, file: !2556, line: 160, type: !35)
!2565 = !DILocalVariable(name: "s24", arg: 7, scope: !2555, file: !2556, line: 160, type: !35)
!2566 = !DILocalVariable(name: "s25", arg: 8, scope: !2555, file: !2556, line: 160, type: !35)
!2567 = !DILocalVariable(name: "s26", arg: 9, scope: !2555, file: !2556, line: 160, type: !35)
!2568 = !DILocalVariable(name: "s27", arg: 10, scope: !2555, file: !2556, line: 160, type: !35)
!2569 = !DILocalVariable(name: "s28", arg: 11, scope: !2555, file: !2556, line: 160, type: !35)
!2570 = !DILocation(line: 0, scope: !2555, inlinedAt: !2571)
!2571 = distinct !DILocation(line: 234, column: 7, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2540, file: !293, line: 234, column: 7)
!2573 = !DILocation(line: 162, column: 7, scope: !2574, inlinedAt: !2571)
!2574 = distinct !DILexicalBlock(scope: !2555, file: !2556, line: 162, column: 7)
!2575 = !DILocalVariable(name: "s1", arg: 1, scope: !2576, file: !2556, line: 146, type: !36)
!2576 = distinct !DISubprogram(name: "strcaseeq1", scope: !2556, file: !2556, line: 146, type: !2577, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2579)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!38, !36, !36, !35, !35, !35, !35, !35, !35, !35, !35}
!2579 = !{!2575, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588}
!2580 = !DILocalVariable(name: "s2", arg: 2, scope: !2576, file: !2556, line: 146, type: !36)
!2581 = !DILocalVariable(name: "s21", arg: 3, scope: !2576, file: !2556, line: 146, type: !35)
!2582 = !DILocalVariable(name: "s22", arg: 4, scope: !2576, file: !2556, line: 146, type: !35)
!2583 = !DILocalVariable(name: "s23", arg: 5, scope: !2576, file: !2556, line: 146, type: !35)
!2584 = !DILocalVariable(name: "s24", arg: 6, scope: !2576, file: !2556, line: 146, type: !35)
!2585 = !DILocalVariable(name: "s25", arg: 7, scope: !2576, file: !2556, line: 146, type: !35)
!2586 = !DILocalVariable(name: "s26", arg: 8, scope: !2576, file: !2556, line: 146, type: !35)
!2587 = !DILocalVariable(name: "s27", arg: 9, scope: !2576, file: !2556, line: 146, type: !35)
!2588 = !DILocalVariable(name: "s28", arg: 10, scope: !2576, file: !2556, line: 146, type: !35)
!2589 = !DILocation(line: 0, scope: !2576, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 167, column: 16, scope: !2591, inlinedAt: !2571)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !2556, line: 164, column: 11)
!2592 = distinct !DILexicalBlock(scope: !2574, file: !2556, line: 163, column: 5)
!2593 = !DILocation(line: 148, column: 7, scope: !2594, inlinedAt: !2590)
!2594 = distinct !DILexicalBlock(scope: !2576, file: !2556, line: 148, column: 7)
!2595 = !DILocalVariable(name: "s1", arg: 1, scope: !2596, file: !2556, line: 132, type: !36)
!2596 = distinct !DISubprogram(name: "strcaseeq2", scope: !2556, file: !2556, line: 132, type: !2597, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2599)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!38, !36, !36, !35, !35, !35, !35, !35, !35, !35}
!2599 = !{!2595, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607}
!2600 = !DILocalVariable(name: "s2", arg: 2, scope: !2596, file: !2556, line: 132, type: !36)
!2601 = !DILocalVariable(name: "s22", arg: 3, scope: !2596, file: !2556, line: 132, type: !35)
!2602 = !DILocalVariable(name: "s23", arg: 4, scope: !2596, file: !2556, line: 132, type: !35)
!2603 = !DILocalVariable(name: "s24", arg: 5, scope: !2596, file: !2556, line: 132, type: !35)
!2604 = !DILocalVariable(name: "s25", arg: 6, scope: !2596, file: !2556, line: 132, type: !35)
!2605 = !DILocalVariable(name: "s26", arg: 7, scope: !2596, file: !2556, line: 132, type: !35)
!2606 = !DILocalVariable(name: "s27", arg: 8, scope: !2596, file: !2556, line: 132, type: !35)
!2607 = !DILocalVariable(name: "s28", arg: 9, scope: !2596, file: !2556, line: 132, type: !35)
!2608 = !DILocation(line: 0, scope: !2596, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 153, column: 16, scope: !2610, inlinedAt: !2590)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !2556, line: 150, column: 11)
!2611 = distinct !DILexicalBlock(scope: !2594, file: !2556, line: 149, column: 5)
!2612 = !DILocation(line: 134, column: 7, scope: !2613, inlinedAt: !2609)
!2613 = distinct !DILexicalBlock(scope: !2596, file: !2556, line: 134, column: 7)
!2614 = !DILocalVariable(name: "s1", arg: 1, scope: !2615, file: !2556, line: 118, type: !36)
!2615 = distinct !DISubprogram(name: "strcaseeq3", scope: !2556, file: !2556, line: 118, type: !2616, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2618)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!38, !36, !36, !35, !35, !35, !35, !35, !35}
!2618 = !{!2614, !2619, !2620, !2621, !2622, !2623, !2624, !2625}
!2619 = !DILocalVariable(name: "s2", arg: 2, scope: !2615, file: !2556, line: 118, type: !36)
!2620 = !DILocalVariable(name: "s23", arg: 3, scope: !2615, file: !2556, line: 118, type: !35)
!2621 = !DILocalVariable(name: "s24", arg: 4, scope: !2615, file: !2556, line: 118, type: !35)
!2622 = !DILocalVariable(name: "s25", arg: 5, scope: !2615, file: !2556, line: 118, type: !35)
!2623 = !DILocalVariable(name: "s26", arg: 6, scope: !2615, file: !2556, line: 118, type: !35)
!2624 = !DILocalVariable(name: "s27", arg: 7, scope: !2615, file: !2556, line: 118, type: !35)
!2625 = !DILocalVariable(name: "s28", arg: 8, scope: !2615, file: !2556, line: 118, type: !35)
!2626 = !DILocation(line: 0, scope: !2615, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 139, column: 16, scope: !2628, inlinedAt: !2609)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !2556, line: 136, column: 11)
!2629 = distinct !DILexicalBlock(scope: !2613, file: !2556, line: 135, column: 5)
!2630 = !DILocation(line: 120, column: 7, scope: !2631, inlinedAt: !2627)
!2631 = distinct !DILexicalBlock(scope: !2615, file: !2556, line: 120, column: 7)
!2632 = !DILocation(line: 120, column: 7, scope: !2615, inlinedAt: !2627)
!2633 = !DILocalVariable(name: "s1", arg: 1, scope: !2634, file: !2556, line: 104, type: !36)
!2634 = distinct !DISubprogram(name: "strcaseeq4", scope: !2556, file: !2556, line: 104, type: !2635, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2637)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!38, !36, !36, !35, !35, !35, !35, !35}
!2637 = !{!2633, !2638, !2639, !2640, !2641, !2642, !2643}
!2638 = !DILocalVariable(name: "s2", arg: 2, scope: !2634, file: !2556, line: 104, type: !36)
!2639 = !DILocalVariable(name: "s24", arg: 3, scope: !2634, file: !2556, line: 104, type: !35)
!2640 = !DILocalVariable(name: "s25", arg: 4, scope: !2634, file: !2556, line: 104, type: !35)
!2641 = !DILocalVariable(name: "s26", arg: 5, scope: !2634, file: !2556, line: 104, type: !35)
!2642 = !DILocalVariable(name: "s27", arg: 6, scope: !2634, file: !2556, line: 104, type: !35)
!2643 = !DILocalVariable(name: "s28", arg: 7, scope: !2634, file: !2556, line: 104, type: !35)
!2644 = !DILocation(line: 0, scope: !2634, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 125, column: 16, scope: !2646, inlinedAt: !2627)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !2556, line: 122, column: 11)
!2647 = distinct !DILexicalBlock(scope: !2631, file: !2556, line: 121, column: 5)
!2648 = !DILocation(line: 106, column: 7, scope: !2649, inlinedAt: !2645)
!2649 = distinct !DILexicalBlock(scope: !2634, file: !2556, line: 106, column: 7)
!2650 = !DILocation(line: 106, column: 7, scope: !2634, inlinedAt: !2645)
!2651 = !DILocalVariable(name: "s1", arg: 1, scope: !2652, file: !2556, line: 90, type: !36)
!2652 = distinct !DISubprogram(name: "strcaseeq5", scope: !2556, file: !2556, line: 90, type: !2653, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2655)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!38, !36, !36, !35, !35, !35, !35}
!2655 = !{!2651, !2656, !2657, !2658, !2659, !2660}
!2656 = !DILocalVariable(name: "s2", arg: 2, scope: !2652, file: !2556, line: 90, type: !36)
!2657 = !DILocalVariable(name: "s25", arg: 3, scope: !2652, file: !2556, line: 90, type: !35)
!2658 = !DILocalVariable(name: "s26", arg: 4, scope: !2652, file: !2556, line: 90, type: !35)
!2659 = !DILocalVariable(name: "s27", arg: 5, scope: !2652, file: !2556, line: 90, type: !35)
!2660 = !DILocalVariable(name: "s28", arg: 6, scope: !2652, file: !2556, line: 90, type: !35)
!2661 = !DILocation(line: 0, scope: !2652, inlinedAt: !2662)
!2662 = distinct !DILocation(line: 111, column: 16, scope: !2663, inlinedAt: !2645)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !2556, line: 108, column: 11)
!2664 = distinct !DILexicalBlock(scope: !2649, file: !2556, line: 107, column: 5)
!2665 = !DILocation(line: 92, column: 7, scope: !2666, inlinedAt: !2662)
!2666 = distinct !DILexicalBlock(scope: !2652, file: !2556, line: 92, column: 7)
!2667 = !DILocation(line: 92, column: 7, scope: !2652, inlinedAt: !2662)
!2668 = !DILocation(line: 235, column: 12, scope: !2572)
!2669 = !DILocation(line: 235, column: 21, scope: !2572)
!2670 = !DILocation(line: 235, column: 5, scope: !2572)
!2671 = !DILocation(line: 0, scope: !2576, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 167, column: 16, scope: !2591, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 236, column: 7, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2540, file: !293, line: 236, column: 7)
!2675 = !DILocation(line: 148, column: 7, scope: !2594, inlinedAt: !2672)
!2676 = !DILocation(line: 0, scope: !2596, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 153, column: 16, scope: !2610, inlinedAt: !2672)
!2678 = !DILocation(line: 134, column: 7, scope: !2613, inlinedAt: !2677)
!2679 = !DILocation(line: 134, column: 7, scope: !2596, inlinedAt: !2677)
!2680 = !DILocation(line: 0, scope: !2615, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 139, column: 16, scope: !2628, inlinedAt: !2677)
!2682 = !DILocation(line: 120, column: 7, scope: !2631, inlinedAt: !2681)
!2683 = !DILocation(line: 120, column: 7, scope: !2615, inlinedAt: !2681)
!2684 = !DILocation(line: 0, scope: !2634, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 125, column: 16, scope: !2646, inlinedAt: !2681)
!2686 = !DILocation(line: 106, column: 7, scope: !2649, inlinedAt: !2685)
!2687 = !DILocation(line: 106, column: 7, scope: !2634, inlinedAt: !2685)
!2688 = !DILocation(line: 0, scope: !2652, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 111, column: 16, scope: !2663, inlinedAt: !2685)
!2690 = !DILocation(line: 92, column: 7, scope: !2666, inlinedAt: !2689)
!2691 = !DILocation(line: 92, column: 7, scope: !2652, inlinedAt: !2689)
!2692 = !DILocalVariable(name: "s1", arg: 1, scope: !2693, file: !2556, line: 76, type: !36)
!2693 = distinct !DISubprogram(name: "strcaseeq6", scope: !2556, file: !2556, line: 76, type: !2694, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2696)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!38, !36, !36, !35, !35, !35}
!2696 = !{!2692, !2697, !2698, !2699, !2700}
!2697 = !DILocalVariable(name: "s2", arg: 2, scope: !2693, file: !2556, line: 76, type: !36)
!2698 = !DILocalVariable(name: "s26", arg: 3, scope: !2693, file: !2556, line: 76, type: !35)
!2699 = !DILocalVariable(name: "s27", arg: 4, scope: !2693, file: !2556, line: 76, type: !35)
!2700 = !DILocalVariable(name: "s28", arg: 5, scope: !2693, file: !2556, line: 76, type: !35)
!2701 = !DILocation(line: 0, scope: !2693, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 97, column: 16, scope: !2703, inlinedAt: !2689)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !2556, line: 94, column: 11)
!2704 = distinct !DILexicalBlock(scope: !2666, file: !2556, line: 93, column: 5)
!2705 = !DILocation(line: 78, column: 7, scope: !2706, inlinedAt: !2702)
!2706 = distinct !DILexicalBlock(scope: !2693, file: !2556, line: 78, column: 7)
!2707 = !DILocation(line: 78, column: 7, scope: !2693, inlinedAt: !2702)
!2708 = !DILocalVariable(name: "s1", arg: 1, scope: !2709, file: !2556, line: 62, type: !36)
!2709 = distinct !DISubprogram(name: "strcaseeq7", scope: !2556, file: !2556, line: 62, type: !2710, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2712)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!38, !36, !36, !35, !35}
!2712 = !{!2708, !2713, !2714, !2715}
!2713 = !DILocalVariable(name: "s2", arg: 2, scope: !2709, file: !2556, line: 62, type: !36)
!2714 = !DILocalVariable(name: "s27", arg: 3, scope: !2709, file: !2556, line: 62, type: !35)
!2715 = !DILocalVariable(name: "s28", arg: 4, scope: !2709, file: !2556, line: 62, type: !35)
!2716 = !DILocation(line: 0, scope: !2709, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 83, column: 16, scope: !2718, inlinedAt: !2702)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !2556, line: 80, column: 11)
!2719 = distinct !DILexicalBlock(scope: !2706, file: !2556, line: 79, column: 5)
!2720 = !DILocation(line: 64, column: 7, scope: !2721, inlinedAt: !2717)
!2721 = distinct !DILexicalBlock(scope: !2709, file: !2556, line: 64, column: 7)
!2722 = !DILocation(line: 236, column: 7, scope: !2540)
!2723 = !DILocation(line: 237, column: 12, scope: !2674)
!2724 = !DILocation(line: 237, column: 21, scope: !2674)
!2725 = !DILocation(line: 237, column: 5, scope: !2674)
!2726 = !DILocation(line: 239, column: 13, scope: !2540)
!2727 = !DILocation(line: 239, column: 11, scope: !2540)
!2728 = !DILocation(line: 239, column: 3, scope: !2540)
!2729 = !DILocation(line: 240, column: 1, scope: !2540)
!2730 = distinct !DISubprogram(name: "quotearg_alloc", scope: !293, file: !293, line: 799, type: !2731, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2733)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!34, !36, !93, !323}
!2733 = !{!2734, !2735, !2736}
!2734 = !DILocalVariable(name: "arg", arg: 1, scope: !2730, file: !293, line: 799, type: !36)
!2735 = !DILocalVariable(name: "argsize", arg: 2, scope: !2730, file: !293, line: 799, type: !93)
!2736 = !DILocalVariable(name: "o", arg: 3, scope: !2730, file: !293, line: 800, type: !323)
!2737 = !DILocation(line: 0, scope: !2730)
!2738 = !DILocalVariable(name: "arg", arg: 1, scope: !2739, file: !293, line: 812, type: !36)
!2739 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !293, file: !293, line: 812, type: !2740, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2742)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!34, !36, !93, !507, !323}
!2742 = !{!2738, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750}
!2743 = !DILocalVariable(name: "argsize", arg: 2, scope: !2739, file: !293, line: 812, type: !93)
!2744 = !DILocalVariable(name: "size", arg: 3, scope: !2739, file: !293, line: 812, type: !507)
!2745 = !DILocalVariable(name: "o", arg: 4, scope: !2739, file: !293, line: 813, type: !323)
!2746 = !DILocalVariable(name: "p", scope: !2739, file: !293, line: 815, type: !323)
!2747 = !DILocalVariable(name: "e", scope: !2739, file: !293, line: 816, type: !38)
!2748 = !DILocalVariable(name: "flags", scope: !2739, file: !293, line: 818, type: !38)
!2749 = !DILocalVariable(name: "bufsize", scope: !2739, file: !293, line: 819, type: !93)
!2750 = !DILocalVariable(name: "buf", scope: !2739, file: !293, line: 823, type: !34)
!2751 = !DILocation(line: 0, scope: !2739, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 802, column: 10, scope: !2730)
!2753 = !DILocation(line: 815, column: 37, scope: !2739, inlinedAt: !2752)
!2754 = !DILocation(line: 816, column: 11, scope: !2739, inlinedAt: !2752)
!2755 = !DILocation(line: 818, column: 18, scope: !2739, inlinedAt: !2752)
!2756 = !DILocation(line: 818, column: 24, scope: !2739, inlinedAt: !2752)
!2757 = !DILocation(line: 819, column: 69, scope: !2739, inlinedAt: !2752)
!2758 = !DILocation(line: 820, column: 53, scope: !2739, inlinedAt: !2752)
!2759 = !DILocation(line: 821, column: 49, scope: !2739, inlinedAt: !2752)
!2760 = !DILocation(line: 822, column: 49, scope: !2739, inlinedAt: !2752)
!2761 = !DILocation(line: 819, column: 20, scope: !2739, inlinedAt: !2752)
!2762 = !DILocation(line: 822, column: 62, scope: !2739, inlinedAt: !2752)
!2763 = !DILocalVariable(name: "n", arg: 1, scope: !2764, file: !156, line: 216, type: !93)
!2764 = distinct !DISubprogram(name: "xcharalloc", scope: !156, file: !156, line: 216, type: !2765, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!34, !93}
!2767 = !{!2763}
!2768 = !DILocation(line: 0, scope: !2764, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 823, column: 15, scope: !2739, inlinedAt: !2752)
!2770 = !DILocation(line: 218, column: 10, scope: !2764, inlinedAt: !2769)
!2771 = !DILocation(line: 824, column: 60, scope: !2739, inlinedAt: !2752)
!2772 = !DILocation(line: 826, column: 32, scope: !2739, inlinedAt: !2752)
!2773 = !DILocation(line: 826, column: 47, scope: !2739, inlinedAt: !2752)
!2774 = !DILocation(line: 824, column: 3, scope: !2739, inlinedAt: !2752)
!2775 = !DILocation(line: 827, column: 9, scope: !2739, inlinedAt: !2752)
!2776 = !DILocation(line: 802, column: 3, scope: !2730)
!2777 = !DILocation(line: 0, scope: !2739)
!2778 = !DILocation(line: 815, column: 37, scope: !2739)
!2779 = !DILocation(line: 816, column: 11, scope: !2739)
!2780 = !DILocation(line: 818, column: 18, scope: !2739)
!2781 = !DILocation(line: 818, column: 27, scope: !2739)
!2782 = !DILocation(line: 818, column: 24, scope: !2739)
!2783 = !DILocation(line: 819, column: 69, scope: !2739)
!2784 = !DILocation(line: 820, column: 53, scope: !2739)
!2785 = !DILocation(line: 821, column: 49, scope: !2739)
!2786 = !DILocation(line: 822, column: 49, scope: !2739)
!2787 = !DILocation(line: 819, column: 20, scope: !2739)
!2788 = !DILocation(line: 822, column: 62, scope: !2739)
!2789 = !DILocation(line: 0, scope: !2764, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 823, column: 15, scope: !2739)
!2791 = !DILocation(line: 218, column: 10, scope: !2764, inlinedAt: !2790)
!2792 = !DILocation(line: 824, column: 60, scope: !2739)
!2793 = !DILocation(line: 826, column: 32, scope: !2739)
!2794 = !DILocation(line: 826, column: 47, scope: !2739)
!2795 = !DILocation(line: 824, column: 3, scope: !2739)
!2796 = !DILocation(line: 827, column: 9, scope: !2739)
!2797 = !DILocation(line: 828, column: 7, scope: !2739)
!2798 = !DILocation(line: 829, column: 11, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2739, file: !293, line: 828, column: 7)
!2800 = !{!1358, !1358, i64 0}
!2801 = !DILocation(line: 829, column: 5, scope: !2799)
!2802 = !DILocation(line: 830, column: 3, scope: !2739)
!2803 = distinct !DISubprogram(name: "quotearg_free", scope: !293, file: !293, line: 848, type: !120, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2804)
!2804 = !{!2805, !2806}
!2805 = !DILocalVariable(name: "sv", scope: !2803, file: !293, line: 850, type: !394)
!2806 = !DILocalVariable(name: "i", scope: !2803, file: !293, line: 851, type: !38)
!2807 = !DILocation(line: 850, column: 24, scope: !2803)
!2808 = !DILocation(line: 0, scope: !2803)
!2809 = !DILocation(line: 852, column: 19, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !293, line: 852, column: 3)
!2811 = distinct !DILexicalBlock(scope: !2803, file: !293, line: 852, column: 3)
!2812 = !DILocation(line: 852, column: 17, scope: !2810)
!2813 = !DILocation(line: 852, column: 3, scope: !2811)
!2814 = !DILocation(line: 853, column: 17, scope: !2810)
!2815 = !{!2816, !1151, i64 8}
!2816 = !{!"slotvec", !1358, i64 0, !1151, i64 8}
!2817 = !DILocation(line: 853, column: 5, scope: !2810)
!2818 = !DILocation(line: 852, column: 28, scope: !2810)
!2819 = distinct !{!2819, !2813, !2820}
!2820 = !DILocation(line: 853, column: 20, scope: !2811)
!2821 = !DILocation(line: 854, column: 13, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2803, file: !293, line: 854, column: 7)
!2823 = !DILocation(line: 854, column: 17, scope: !2822)
!2824 = !DILocation(line: 854, column: 7, scope: !2803)
!2825 = !DILocation(line: 856, column: 7, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2822, file: !293, line: 855, column: 5)
!2827 = !DILocation(line: 857, column: 21, scope: !2826)
!2828 = !{!2816, !1358, i64 0}
!2829 = !DILocation(line: 858, column: 20, scope: !2826)
!2830 = !DILocation(line: 859, column: 5, scope: !2826)
!2831 = !DILocation(line: 860, column: 10, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2803, file: !293, line: 860, column: 7)
!2833 = !DILocation(line: 860, column: 7, scope: !2803)
!2834 = !DILocation(line: 862, column: 13, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2832, file: !293, line: 861, column: 5)
!2836 = !DILocation(line: 862, column: 7, scope: !2835)
!2837 = !DILocation(line: 863, column: 15, scope: !2835)
!2838 = !DILocation(line: 864, column: 5, scope: !2835)
!2839 = !DILocation(line: 865, column: 10, scope: !2803)
!2840 = !DILocation(line: 866, column: 1, scope: !2803)
!2841 = distinct !DISubprogram(name: "quotearg_n", scope: !293, file: !293, line: 931, type: !107, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2842)
!2842 = !{!2843, !2844}
!2843 = !DILocalVariable(name: "n", arg: 1, scope: !2841, file: !293, line: 931, type: !38)
!2844 = !DILocalVariable(name: "arg", arg: 2, scope: !2841, file: !293, line: 931, type: !36)
!2845 = !DILocation(line: 0, scope: !2841)
!2846 = !DILocation(line: 933, column: 10, scope: !2841)
!2847 = !DILocation(line: 933, column: 3, scope: !2841)
!2848 = distinct !DISubprogram(name: "quotearg_n_options", scope: !293, file: !293, line: 877, type: !2849, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2851)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!34, !38, !36, !93, !323}
!2851 = !{!2852, !2853, !2854, !2855, !2856, !2857, !2858, !2861, !2862, !2864, !2865, !2866}
!2852 = !DILocalVariable(name: "n", arg: 1, scope: !2848, file: !293, line: 877, type: !38)
!2853 = !DILocalVariable(name: "arg", arg: 2, scope: !2848, file: !293, line: 877, type: !36)
!2854 = !DILocalVariable(name: "argsize", arg: 3, scope: !2848, file: !293, line: 877, type: !93)
!2855 = !DILocalVariable(name: "options", arg: 4, scope: !2848, file: !293, line: 878, type: !323)
!2856 = !DILocalVariable(name: "e", scope: !2848, file: !293, line: 880, type: !38)
!2857 = !DILocalVariable(name: "sv", scope: !2848, file: !293, line: 882, type: !394)
!2858 = !DILocalVariable(name: "preallocated", scope: !2859, file: !293, line: 889, type: !179)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !293, line: 888, column: 5)
!2860 = distinct !DILexicalBlock(scope: !2848, file: !293, line: 887, column: 7)
!2861 = !DILocalVariable(name: "nmax", scope: !2859, file: !293, line: 890, type: !38)
!2862 = !DILocalVariable(name: "size", scope: !2863, file: !293, line: 903, type: !93)
!2863 = distinct !DILexicalBlock(scope: !2848, file: !293, line: 902, column: 3)
!2864 = !DILocalVariable(name: "val", scope: !2863, file: !293, line: 904, type: !34)
!2865 = !DILocalVariable(name: "flags", scope: !2863, file: !293, line: 906, type: !38)
!2866 = !DILocalVariable(name: "qsize", scope: !2863, file: !293, line: 907, type: !93)
!2867 = !DILocation(line: 0, scope: !2848)
!2868 = !DILocation(line: 880, column: 11, scope: !2848)
!2869 = !DILocation(line: 882, column: 24, scope: !2848)
!2870 = !DILocation(line: 884, column: 9, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2848, file: !293, line: 884, column: 7)
!2872 = !DILocation(line: 884, column: 7, scope: !2848)
!2873 = !DILocation(line: 885, column: 5, scope: !2871)
!2874 = !DILocation(line: 887, column: 7, scope: !2860)
!2875 = !DILocation(line: 887, column: 14, scope: !2860)
!2876 = !DILocation(line: 887, column: 7, scope: !2848)
!2877 = !DILocation(line: 889, column: 31, scope: !2859)
!2878 = !DILocation(line: 0, scope: !2859)
!2879 = !DILocation(line: 892, column: 16, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2859, file: !293, line: 892, column: 11)
!2881 = !DILocation(line: 892, column: 11, scope: !2859)
!2882 = !DILocation(line: 893, column: 9, scope: !2880)
!2883 = !DILocation(line: 895, column: 32, scope: !2859)
!2884 = !DILocation(line: 895, column: 61, scope: !2859)
!2885 = !DILocation(line: 895, column: 58, scope: !2859)
!2886 = !DILocation(line: 895, column: 66, scope: !2859)
!2887 = !DILocation(line: 895, column: 22, scope: !2859)
!2888 = !DILocation(line: 895, column: 15, scope: !2859)
!2889 = !DILocation(line: 896, column: 11, scope: !2859)
!2890 = !DILocation(line: 897, column: 15, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2859, file: !293, line: 896, column: 11)
!2892 = !{i64 0, i64 8, !2800, i64 8, i64 8, !1150}
!2893 = !DILocation(line: 897, column: 9, scope: !2891)
!2894 = !DILocation(line: 898, column: 20, scope: !2859)
!2895 = !DILocation(line: 898, column: 18, scope: !2859)
!2896 = !DILocation(line: 898, column: 15, scope: !2859)
!2897 = !DILocation(line: 898, column: 38, scope: !2859)
!2898 = !DILocation(line: 898, column: 31, scope: !2859)
!2899 = !DILocation(line: 898, column: 48, scope: !2859)
!2900 = !DILocation(line: 0, scope: !2297, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 898, column: 7, scope: !2859)
!2902 = !DILocation(line: 71, column: 10, scope: !2297, inlinedAt: !2901)
!2903 = !DILocation(line: 899, column: 14, scope: !2859)
!2904 = !DILocation(line: 900, column: 5, scope: !2859)
!2905 = !DILocation(line: 903, column: 19, scope: !2863)
!2906 = !DILocation(line: 903, column: 25, scope: !2863)
!2907 = !DILocation(line: 0, scope: !2863)
!2908 = !DILocation(line: 904, column: 23, scope: !2863)
!2909 = !DILocation(line: 906, column: 26, scope: !2863)
!2910 = !DILocation(line: 906, column: 32, scope: !2863)
!2911 = !DILocation(line: 908, column: 55, scope: !2863)
!2912 = !DILocation(line: 909, column: 46, scope: !2863)
!2913 = !DILocation(line: 910, column: 55, scope: !2863)
!2914 = !DILocation(line: 911, column: 55, scope: !2863)
!2915 = !DILocation(line: 907, column: 20, scope: !2863)
!2916 = !DILocation(line: 913, column: 14, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2863, file: !293, line: 913, column: 9)
!2918 = !DILocation(line: 913, column: 9, scope: !2863)
!2919 = !DILocation(line: 915, column: 35, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2917, file: !293, line: 914, column: 7)
!2921 = !DILocation(line: 915, column: 20, scope: !2920)
!2922 = !DILocation(line: 916, column: 17, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2920, file: !293, line: 916, column: 13)
!2924 = !DILocation(line: 916, column: 13, scope: !2920)
!2925 = !DILocation(line: 917, column: 11, scope: !2923)
!2926 = !DILocation(line: 0, scope: !2764, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 918, column: 27, scope: !2920)
!2928 = !DILocation(line: 218, column: 10, scope: !2764, inlinedAt: !2927)
!2929 = !DILocation(line: 918, column: 19, scope: !2920)
!2930 = !DILocation(line: 919, column: 69, scope: !2920)
!2931 = !DILocation(line: 921, column: 44, scope: !2920)
!2932 = !DILocation(line: 922, column: 44, scope: !2920)
!2933 = !DILocation(line: 919, column: 9, scope: !2920)
!2934 = !DILocation(line: 923, column: 7, scope: !2920)
!2935 = !DILocation(line: 925, column: 11, scope: !2863)
!2936 = !DILocation(line: 926, column: 5, scope: !2863)
!2937 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !293, file: !293, line: 937, type: !2938, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2940)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!34, !38, !36, !93}
!2940 = !{!2941, !2942, !2943}
!2941 = !DILocalVariable(name: "n", arg: 1, scope: !2937, file: !293, line: 937, type: !38)
!2942 = !DILocalVariable(name: "arg", arg: 2, scope: !2937, file: !293, line: 937, type: !36)
!2943 = !DILocalVariable(name: "argsize", arg: 3, scope: !2937, file: !293, line: 937, type: !93)
!2944 = !DILocation(line: 0, scope: !2937)
!2945 = !DILocation(line: 939, column: 10, scope: !2937)
!2946 = !DILocation(line: 939, column: 3, scope: !2937)
!2947 = distinct !DISubprogram(name: "quotearg", scope: !293, file: !293, line: 943, type: !113, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2948)
!2948 = !{!2949}
!2949 = !DILocalVariable(name: "arg", arg: 1, scope: !2947, file: !293, line: 943, type: !36)
!2950 = !DILocation(line: 0, scope: !2947)
!2951 = !DILocation(line: 0, scope: !2841, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 945, column: 10, scope: !2947)
!2953 = !DILocation(line: 933, column: 10, scope: !2841, inlinedAt: !2952)
!2954 = !DILocation(line: 945, column: 3, scope: !2947)
!2955 = distinct !DISubprogram(name: "quotearg_mem", scope: !293, file: !293, line: 949, type: !2956, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2958)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!34, !36, !93}
!2958 = !{!2959, !2960}
!2959 = !DILocalVariable(name: "arg", arg: 1, scope: !2955, file: !293, line: 949, type: !36)
!2960 = !DILocalVariable(name: "argsize", arg: 2, scope: !2955, file: !293, line: 949, type: !93)
!2961 = !DILocation(line: 0, scope: !2955)
!2962 = !DILocation(line: 0, scope: !2937, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 951, column: 10, scope: !2955)
!2964 = !DILocation(line: 939, column: 10, scope: !2937, inlinedAt: !2963)
!2965 = !DILocation(line: 951, column: 3, scope: !2955)
!2966 = distinct !DISubprogram(name: "quotearg_n_style", scope: !293, file: !293, line: 955, type: !142, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2967)
!2967 = !{!2968, !2969, !2970, !2971}
!2968 = !DILocalVariable(name: "n", arg: 1, scope: !2966, file: !293, line: 955, type: !38)
!2969 = !DILocalVariable(name: "s", arg: 2, scope: !2966, file: !293, line: 955, type: !5)
!2970 = !DILocalVariable(name: "arg", arg: 3, scope: !2966, file: !293, line: 955, type: !36)
!2971 = !DILocalVariable(name: "o", scope: !2966, file: !293, line: 957, type: !324)
!2972 = !DILocation(line: 0, scope: !2966)
!2973 = !DILocation(line: 957, column: 3, scope: !2966)
!2974 = !DILocation(line: 957, column: 32, scope: !2966)
!2975 = !DILocalVariable(name: "style", arg: 1, scope: !2976, file: !293, line: 193, type: !5)
!2976 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !293, file: !293, line: 193, type: !2977, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2979)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!325, !5}
!2979 = !{!2975, !2980}
!2980 = !DILocalVariable(name: "o", scope: !2976, file: !293, line: 195, type: !325)
!2981 = !DILocation(line: 0, scope: !2976, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 957, column: 36, scope: !2966)
!2983 = !DILocation(line: 195, column: 26, scope: !2976, inlinedAt: !2982)
!2984 = !{!2985}
!2985 = distinct !{!2985, !2986, !"quoting_options_from_style: argument 0"}
!2986 = distinct !{!2986, !"quoting_options_from_style"}
!2987 = !DILocation(line: 196, column: 13, scope: !2988, inlinedAt: !2982)
!2988 = distinct !DILexicalBlock(scope: !2976, file: !293, line: 196, column: 7)
!2989 = !DILocation(line: 196, column: 7, scope: !2976, inlinedAt: !2982)
!2990 = !DILocation(line: 197, column: 5, scope: !2988, inlinedAt: !2982)
!2991 = !DILocation(line: 198, column: 5, scope: !2976, inlinedAt: !2982)
!2992 = !DILocation(line: 198, column: 11, scope: !2976, inlinedAt: !2982)
!2993 = !DILocation(line: 958, column: 10, scope: !2966)
!2994 = !DILocation(line: 959, column: 1, scope: !2966)
!2995 = !DILocation(line: 958, column: 3, scope: !2966)
!2996 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !293, file: !293, line: 962, type: !2997, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !2999)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!34, !38, !5, !36, !93}
!2999 = !{!3000, !3001, !3002, !3003, !3004}
!3000 = !DILocalVariable(name: "n", arg: 1, scope: !2996, file: !293, line: 962, type: !38)
!3001 = !DILocalVariable(name: "s", arg: 2, scope: !2996, file: !293, line: 962, type: !5)
!3002 = !DILocalVariable(name: "arg", arg: 3, scope: !2996, file: !293, line: 963, type: !36)
!3003 = !DILocalVariable(name: "argsize", arg: 4, scope: !2996, file: !293, line: 963, type: !93)
!3004 = !DILocalVariable(name: "o", scope: !2996, file: !293, line: 965, type: !324)
!3005 = !DILocation(line: 0, scope: !2996)
!3006 = !DILocation(line: 965, column: 3, scope: !2996)
!3007 = !DILocation(line: 965, column: 32, scope: !2996)
!3008 = !DILocation(line: 0, scope: !2976, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 965, column: 36, scope: !2996)
!3010 = !DILocation(line: 195, column: 26, scope: !2976, inlinedAt: !3009)
!3011 = !{!3012}
!3012 = distinct !{!3012, !3013, !"quoting_options_from_style: argument 0"}
!3013 = distinct !{!3013, !"quoting_options_from_style"}
!3014 = !DILocation(line: 196, column: 13, scope: !2988, inlinedAt: !3009)
!3015 = !DILocation(line: 196, column: 7, scope: !2976, inlinedAt: !3009)
!3016 = !DILocation(line: 197, column: 5, scope: !2988, inlinedAt: !3009)
!3017 = !DILocation(line: 198, column: 5, scope: !2976, inlinedAt: !3009)
!3018 = !DILocation(line: 198, column: 11, scope: !2976, inlinedAt: !3009)
!3019 = !DILocation(line: 966, column: 10, scope: !2996)
!3020 = !DILocation(line: 967, column: 1, scope: !2996)
!3021 = !DILocation(line: 966, column: 3, scope: !2996)
!3022 = distinct !DISubprogram(name: "quotearg_style", scope: !293, file: !293, line: 970, type: !3023, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!34, !5, !36}
!3025 = !{!3026, !3027}
!3026 = !DILocalVariable(name: "s", arg: 1, scope: !3022, file: !293, line: 970, type: !5)
!3027 = !DILocalVariable(name: "arg", arg: 2, scope: !3022, file: !293, line: 970, type: !36)
!3028 = !DILocation(line: 195, column: 26, scope: !2976, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 957, column: 36, scope: !2966, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 972, column: 10, scope: !3022)
!3031 = !DILocation(line: 957, column: 32, scope: !2966, inlinedAt: !3030)
!3032 = !DILocation(line: 0, scope: !3022)
!3033 = !DILocation(line: 0, scope: !2966, inlinedAt: !3030)
!3034 = !DILocation(line: 957, column: 3, scope: !2966, inlinedAt: !3030)
!3035 = !DILocation(line: 0, scope: !2976, inlinedAt: !3029)
!3036 = !{!3037}
!3037 = distinct !{!3037, !3038, !"quoting_options_from_style: argument 0"}
!3038 = distinct !{!3038, !"quoting_options_from_style"}
!3039 = !DILocation(line: 196, column: 13, scope: !2988, inlinedAt: !3029)
!3040 = !DILocation(line: 196, column: 7, scope: !2976, inlinedAt: !3029)
!3041 = !DILocation(line: 197, column: 5, scope: !2988, inlinedAt: !3029)
!3042 = !DILocation(line: 198, column: 5, scope: !2976, inlinedAt: !3029)
!3043 = !DILocation(line: 198, column: 11, scope: !2976, inlinedAt: !3029)
!3044 = !DILocation(line: 958, column: 10, scope: !2966, inlinedAt: !3030)
!3045 = !DILocation(line: 959, column: 1, scope: !2966, inlinedAt: !3030)
!3046 = !DILocation(line: 972, column: 3, scope: !3022)
!3047 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !293, file: !293, line: 976, type: !3048, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3050)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!34, !5, !36, !93}
!3050 = !{!3051, !3052, !3053}
!3051 = !DILocalVariable(name: "s", arg: 1, scope: !3047, file: !293, line: 976, type: !5)
!3052 = !DILocalVariable(name: "arg", arg: 2, scope: !3047, file: !293, line: 976, type: !36)
!3053 = !DILocalVariable(name: "argsize", arg: 3, scope: !3047, file: !293, line: 976, type: !93)
!3054 = !DILocation(line: 195, column: 26, scope: !2976, inlinedAt: !3055)
!3055 = distinct !DILocation(line: 965, column: 36, scope: !2996, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 978, column: 10, scope: !3047)
!3057 = !DILocation(line: 965, column: 32, scope: !2996, inlinedAt: !3056)
!3058 = !DILocation(line: 0, scope: !3047)
!3059 = !DILocation(line: 0, scope: !2996, inlinedAt: !3056)
!3060 = !DILocation(line: 965, column: 3, scope: !2996, inlinedAt: !3056)
!3061 = !DILocation(line: 0, scope: !2976, inlinedAt: !3055)
!3062 = !{!3063}
!3063 = distinct !{!3063, !3064, !"quoting_options_from_style: argument 0"}
!3064 = distinct !{!3064, !"quoting_options_from_style"}
!3065 = !DILocation(line: 196, column: 13, scope: !2988, inlinedAt: !3055)
!3066 = !DILocation(line: 196, column: 7, scope: !2976, inlinedAt: !3055)
!3067 = !DILocation(line: 197, column: 5, scope: !2988, inlinedAt: !3055)
!3068 = !DILocation(line: 198, column: 5, scope: !2976, inlinedAt: !3055)
!3069 = !DILocation(line: 198, column: 11, scope: !2976, inlinedAt: !3055)
!3070 = !DILocation(line: 966, column: 10, scope: !2996, inlinedAt: !3056)
!3071 = !DILocation(line: 967, column: 1, scope: !2996, inlinedAt: !3056)
!3072 = !DILocation(line: 978, column: 3, scope: !3047)
!3073 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !293, file: !293, line: 982, type: !3074, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3076)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!34, !36, !93, !35}
!3076 = !{!3077, !3078, !3079, !3080}
!3077 = !DILocalVariable(name: "arg", arg: 1, scope: !3073, file: !293, line: 982, type: !36)
!3078 = !DILocalVariable(name: "argsize", arg: 2, scope: !3073, file: !293, line: 982, type: !93)
!3079 = !DILocalVariable(name: "ch", arg: 3, scope: !3073, file: !293, line: 982, type: !35)
!3080 = !DILocalVariable(name: "options", scope: !3073, file: !293, line: 984, type: !325)
!3081 = !DILocation(line: 0, scope: !3073)
!3082 = !DILocation(line: 984, column: 3, scope: !3073)
!3083 = !DILocation(line: 984, column: 26, scope: !3073)
!3084 = !DILocation(line: 985, column: 13, scope: !3073)
!3085 = !{i64 0, i64 4, !1222, i64 4, i64 4, !1235, i64 8, i64 32, !1222, i64 40, i64 8, !1150, i64 48, i64 8, !1150}
!3086 = !DILocation(line: 0, scope: !1911, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 986, column: 3, scope: !3073)
!3088 = !DILocation(line: 156, column: 62, scope: !1911, inlinedAt: !3087)
!3089 = !DILocation(line: 156, column: 57, scope: !1911, inlinedAt: !3087)
!3090 = !DILocation(line: 157, column: 15, scope: !1911, inlinedAt: !3087)
!3091 = !DILocation(line: 158, column: 12, scope: !1911, inlinedAt: !3087)
!3092 = !DILocation(line: 158, column: 15, scope: !1911, inlinedAt: !3087)
!3093 = !DILocation(line: 158, column: 25, scope: !1911, inlinedAt: !3087)
!3094 = !DILocation(line: 159, column: 18, scope: !1911, inlinedAt: !3087)
!3095 = !DILocation(line: 159, column: 23, scope: !1911, inlinedAt: !3087)
!3096 = !DILocation(line: 159, column: 6, scope: !1911, inlinedAt: !3087)
!3097 = !DILocation(line: 987, column: 10, scope: !3073)
!3098 = !DILocation(line: 988, column: 1, scope: !3073)
!3099 = !DILocation(line: 987, column: 3, scope: !3073)
!3100 = distinct !DISubprogram(name: "quotearg_char", scope: !293, file: !293, line: 991, type: !3101, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!34, !36, !35}
!3103 = !{!3104, !3105}
!3104 = !DILocalVariable(name: "arg", arg: 1, scope: !3100, file: !293, line: 991, type: !36)
!3105 = !DILocalVariable(name: "ch", arg: 2, scope: !3100, file: !293, line: 991, type: !35)
!3106 = !DILocation(line: 984, column: 26, scope: !3073, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 993, column: 10, scope: !3100)
!3108 = !DILocation(line: 0, scope: !3100)
!3109 = !DILocation(line: 0, scope: !3073, inlinedAt: !3107)
!3110 = !DILocation(line: 984, column: 3, scope: !3073, inlinedAt: !3107)
!3111 = !DILocation(line: 985, column: 13, scope: !3073, inlinedAt: !3107)
!3112 = !DILocation(line: 0, scope: !1911, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 986, column: 3, scope: !3073, inlinedAt: !3107)
!3114 = !DILocation(line: 156, column: 62, scope: !1911, inlinedAt: !3113)
!3115 = !DILocation(line: 156, column: 57, scope: !1911, inlinedAt: !3113)
!3116 = !DILocation(line: 157, column: 15, scope: !1911, inlinedAt: !3113)
!3117 = !DILocation(line: 158, column: 12, scope: !1911, inlinedAt: !3113)
!3118 = !DILocation(line: 158, column: 15, scope: !1911, inlinedAt: !3113)
!3119 = !DILocation(line: 158, column: 25, scope: !1911, inlinedAt: !3113)
!3120 = !DILocation(line: 159, column: 18, scope: !1911, inlinedAt: !3113)
!3121 = !DILocation(line: 159, column: 23, scope: !1911, inlinedAt: !3113)
!3122 = !DILocation(line: 159, column: 6, scope: !1911, inlinedAt: !3113)
!3123 = !DILocation(line: 987, column: 10, scope: !3073, inlinedAt: !3107)
!3124 = !DILocation(line: 988, column: 1, scope: !3073, inlinedAt: !3107)
!3125 = !DILocation(line: 993, column: 3, scope: !3100)
!3126 = distinct !DISubprogram(name: "quotearg_colon", scope: !293, file: !293, line: 997, type: !113, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3127)
!3127 = !{!3128}
!3128 = !DILocalVariable(name: "arg", arg: 1, scope: !3126, file: !293, line: 997, type: !36)
!3129 = !DILocation(line: 984, column: 26, scope: !3073, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 993, column: 10, scope: !3100, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 999, column: 10, scope: !3126)
!3132 = !DILocation(line: 0, scope: !3126)
!3133 = !DILocation(line: 0, scope: !3100, inlinedAt: !3131)
!3134 = !DILocation(line: 0, scope: !3073, inlinedAt: !3130)
!3135 = !DILocation(line: 984, column: 3, scope: !3073, inlinedAt: !3130)
!3136 = !DILocation(line: 985, column: 13, scope: !3073, inlinedAt: !3130)
!3137 = !DILocation(line: 0, scope: !1911, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 986, column: 3, scope: !3073, inlinedAt: !3130)
!3139 = !DILocation(line: 156, column: 57, scope: !1911, inlinedAt: !3138)
!3140 = !DILocation(line: 158, column: 12, scope: !1911, inlinedAt: !3138)
!3141 = !DILocation(line: 159, column: 6, scope: !1911, inlinedAt: !3138)
!3142 = !DILocation(line: 987, column: 10, scope: !3073, inlinedAt: !3130)
!3143 = !DILocation(line: 988, column: 1, scope: !3073, inlinedAt: !3130)
!3144 = !DILocation(line: 999, column: 3, scope: !3126)
!3145 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !293, file: !293, line: 1003, type: !2956, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3146)
!3146 = !{!3147, !3148}
!3147 = !DILocalVariable(name: "arg", arg: 1, scope: !3145, file: !293, line: 1003, type: !36)
!3148 = !DILocalVariable(name: "argsize", arg: 2, scope: !3145, file: !293, line: 1003, type: !93)
!3149 = !DILocation(line: 984, column: 26, scope: !3073, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 1005, column: 10, scope: !3145)
!3151 = !DILocation(line: 0, scope: !3145)
!3152 = !DILocation(line: 0, scope: !3073, inlinedAt: !3150)
!3153 = !DILocation(line: 984, column: 3, scope: !3073, inlinedAt: !3150)
!3154 = !DILocation(line: 985, column: 13, scope: !3073, inlinedAt: !3150)
!3155 = !DILocation(line: 0, scope: !1911, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 986, column: 3, scope: !3073, inlinedAt: !3150)
!3157 = !DILocation(line: 156, column: 57, scope: !1911, inlinedAt: !3156)
!3158 = !DILocation(line: 158, column: 12, scope: !1911, inlinedAt: !3156)
!3159 = !DILocation(line: 159, column: 6, scope: !1911, inlinedAt: !3156)
!3160 = !DILocation(line: 987, column: 10, scope: !3073, inlinedAt: !3150)
!3161 = !DILocation(line: 988, column: 1, scope: !3073, inlinedAt: !3150)
!3162 = !DILocation(line: 1005, column: 3, scope: !3145)
!3163 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !293, file: !293, line: 1009, type: !142, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3164)
!3164 = !{!3165, !3166, !3167, !3168}
!3165 = !DILocalVariable(name: "n", arg: 1, scope: !3163, file: !293, line: 1009, type: !38)
!3166 = !DILocalVariable(name: "s", arg: 2, scope: !3163, file: !293, line: 1009, type: !5)
!3167 = !DILocalVariable(name: "arg", arg: 3, scope: !3163, file: !293, line: 1009, type: !36)
!3168 = !DILocalVariable(name: "options", scope: !3163, file: !293, line: 1011, type: !325)
!3169 = !DILocation(line: 195, column: 26, scope: !2976, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 1012, column: 13, scope: !3163)
!3171 = !DILocation(line: 0, scope: !3163)
!3172 = !DILocation(line: 1011, column: 3, scope: !3163)
!3173 = !DILocation(line: 1011, column: 26, scope: !3163)
!3174 = !DILocation(line: 1012, column: 13, scope: !3163)
!3175 = !DILocation(line: 0, scope: !2976, inlinedAt: !3170)
!3176 = !{!3177}
!3177 = distinct !{!3177, !3178, !"quoting_options_from_style: argument 0"}
!3178 = distinct !{!3178, !"quoting_options_from_style"}
!3179 = !DILocation(line: 196, column: 13, scope: !2988, inlinedAt: !3170)
!3180 = !DILocation(line: 196, column: 7, scope: !2976, inlinedAt: !3170)
!3181 = !DILocation(line: 197, column: 5, scope: !2988, inlinedAt: !3170)
!3182 = !DILocation(line: 0, scope: !1911, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 1013, column: 3, scope: !3163)
!3184 = !DILocation(line: 156, column: 57, scope: !1911, inlinedAt: !3183)
!3185 = !DILocation(line: 158, column: 12, scope: !1911, inlinedAt: !3183)
!3186 = !DILocation(line: 159, column: 6, scope: !1911, inlinedAt: !3183)
!3187 = !DILocation(line: 1014, column: 10, scope: !3163)
!3188 = !DILocation(line: 1015, column: 1, scope: !3163)
!3189 = !DILocation(line: 1014, column: 3, scope: !3163)
!3190 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !293, file: !293, line: 1018, type: !3191, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!34, !38, !36, !36, !36}
!3193 = !{!3194, !3195, !3196, !3197}
!3194 = !DILocalVariable(name: "n", arg: 1, scope: !3190, file: !293, line: 1018, type: !38)
!3195 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3190, file: !293, line: 1018, type: !36)
!3196 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3190, file: !293, line: 1019, type: !36)
!3197 = !DILocalVariable(name: "arg", arg: 4, scope: !3190, file: !293, line: 1019, type: !36)
!3198 = !DILocalVariable(name: "o", scope: !3199, file: !293, line: 1030, type: !325)
!3199 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !293, file: !293, line: 1026, type: !3200, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3202)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!34, !38, !36, !36, !36, !93}
!3202 = !{!3203, !3204, !3205, !3206, !3207, !3198}
!3203 = !DILocalVariable(name: "n", arg: 1, scope: !3199, file: !293, line: 1026, type: !38)
!3204 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3199, file: !293, line: 1026, type: !36)
!3205 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3199, file: !293, line: 1027, type: !36)
!3206 = !DILocalVariable(name: "arg", arg: 4, scope: !3199, file: !293, line: 1028, type: !36)
!3207 = !DILocalVariable(name: "argsize", arg: 5, scope: !3199, file: !293, line: 1028, type: !93)
!3208 = !DILocation(line: 1030, column: 26, scope: !3199, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 1021, column: 10, scope: !3190)
!3210 = !DILocation(line: 0, scope: !3190)
!3211 = !DILocation(line: 0, scope: !3199, inlinedAt: !3209)
!3212 = !DILocation(line: 1030, column: 3, scope: !3199, inlinedAt: !3209)
!3213 = !DILocation(line: 1030, column: 30, scope: !3199, inlinedAt: !3209)
!3214 = !DILocation(line: 0, scope: !1951, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 1031, column: 3, scope: !3199, inlinedAt: !3209)
!3216 = !DILocation(line: 184, column: 6, scope: !1951, inlinedAt: !3215)
!3217 = !DILocation(line: 184, column: 12, scope: !1951, inlinedAt: !3215)
!3218 = !DILocation(line: 185, column: 8, scope: !1965, inlinedAt: !3215)
!3219 = !DILocation(line: 185, column: 23, scope: !1965, inlinedAt: !3215)
!3220 = !DILocation(line: 185, column: 19, scope: !1965, inlinedAt: !3215)
!3221 = !DILocation(line: 186, column: 5, scope: !1965, inlinedAt: !3215)
!3222 = !DILocation(line: 187, column: 6, scope: !1951, inlinedAt: !3215)
!3223 = !DILocation(line: 187, column: 17, scope: !1951, inlinedAt: !3215)
!3224 = !DILocation(line: 188, column: 6, scope: !1951, inlinedAt: !3215)
!3225 = !DILocation(line: 188, column: 18, scope: !1951, inlinedAt: !3215)
!3226 = !DILocation(line: 1032, column: 10, scope: !3199, inlinedAt: !3209)
!3227 = !DILocation(line: 1033, column: 1, scope: !3199, inlinedAt: !3209)
!3228 = !DILocation(line: 1021, column: 3, scope: !3190)
!3229 = !DILocation(line: 0, scope: !3199)
!3230 = !DILocation(line: 1030, column: 3, scope: !3199)
!3231 = !DILocation(line: 1030, column: 26, scope: !3199)
!3232 = !DILocation(line: 1030, column: 30, scope: !3199)
!3233 = !DILocation(line: 0, scope: !1951, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 1031, column: 3, scope: !3199)
!3235 = !DILocation(line: 184, column: 6, scope: !1951, inlinedAt: !3234)
!3236 = !DILocation(line: 184, column: 12, scope: !1951, inlinedAt: !3234)
!3237 = !DILocation(line: 185, column: 8, scope: !1965, inlinedAt: !3234)
!3238 = !DILocation(line: 185, column: 23, scope: !1965, inlinedAt: !3234)
!3239 = !DILocation(line: 185, column: 19, scope: !1965, inlinedAt: !3234)
!3240 = !DILocation(line: 186, column: 5, scope: !1965, inlinedAt: !3234)
!3241 = !DILocation(line: 187, column: 6, scope: !1951, inlinedAt: !3234)
!3242 = !DILocation(line: 187, column: 17, scope: !1951, inlinedAt: !3234)
!3243 = !DILocation(line: 188, column: 6, scope: !1951, inlinedAt: !3234)
!3244 = !DILocation(line: 188, column: 18, scope: !1951, inlinedAt: !3234)
!3245 = !DILocation(line: 1032, column: 10, scope: !3199)
!3246 = !DILocation(line: 1033, column: 1, scope: !3199)
!3247 = !DILocation(line: 1032, column: 3, scope: !3199)
!3248 = distinct !DISubprogram(name: "quotearg_custom", scope: !293, file: !293, line: 1036, type: !3249, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3251)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!34, !36, !36, !36}
!3251 = !{!3252, !3253, !3254}
!3252 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3248, file: !293, line: 1036, type: !36)
!3253 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3248, file: !293, line: 1036, type: !36)
!3254 = !DILocalVariable(name: "arg", arg: 3, scope: !3248, file: !293, line: 1037, type: !36)
!3255 = !DILocation(line: 1030, column: 26, scope: !3199, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 1021, column: 10, scope: !3190, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 1039, column: 10, scope: !3248)
!3258 = !DILocation(line: 0, scope: !3248)
!3259 = !DILocation(line: 0, scope: !3190, inlinedAt: !3257)
!3260 = !DILocation(line: 0, scope: !3199, inlinedAt: !3256)
!3261 = !DILocation(line: 1030, column: 3, scope: !3199, inlinedAt: !3256)
!3262 = !DILocation(line: 1030, column: 30, scope: !3199, inlinedAt: !3256)
!3263 = !DILocation(line: 0, scope: !1951, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 1031, column: 3, scope: !3199, inlinedAt: !3256)
!3265 = !DILocation(line: 184, column: 6, scope: !1951, inlinedAt: !3264)
!3266 = !DILocation(line: 184, column: 12, scope: !1951, inlinedAt: !3264)
!3267 = !DILocation(line: 185, column: 8, scope: !1965, inlinedAt: !3264)
!3268 = !DILocation(line: 185, column: 23, scope: !1965, inlinedAt: !3264)
!3269 = !DILocation(line: 185, column: 19, scope: !1965, inlinedAt: !3264)
!3270 = !DILocation(line: 186, column: 5, scope: !1965, inlinedAt: !3264)
!3271 = !DILocation(line: 187, column: 6, scope: !1951, inlinedAt: !3264)
!3272 = !DILocation(line: 187, column: 17, scope: !1951, inlinedAt: !3264)
!3273 = !DILocation(line: 188, column: 6, scope: !1951, inlinedAt: !3264)
!3274 = !DILocation(line: 188, column: 18, scope: !1951, inlinedAt: !3264)
!3275 = !DILocation(line: 1032, column: 10, scope: !3199, inlinedAt: !3256)
!3276 = !DILocation(line: 1033, column: 1, scope: !3199, inlinedAt: !3256)
!3277 = !DILocation(line: 1039, column: 3, scope: !3248)
!3278 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !293, file: !293, line: 1043, type: !3279, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3281)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!34, !36, !36, !36, !93}
!3281 = !{!3282, !3283, !3284, !3285}
!3282 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3278, file: !293, line: 1043, type: !36)
!3283 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3278, file: !293, line: 1043, type: !36)
!3284 = !DILocalVariable(name: "arg", arg: 3, scope: !3278, file: !293, line: 1044, type: !36)
!3285 = !DILocalVariable(name: "argsize", arg: 4, scope: !3278, file: !293, line: 1044, type: !93)
!3286 = !DILocation(line: 1030, column: 26, scope: !3199, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 1046, column: 10, scope: !3278)
!3288 = !DILocation(line: 0, scope: !3278)
!3289 = !DILocation(line: 0, scope: !3199, inlinedAt: !3287)
!3290 = !DILocation(line: 1030, column: 3, scope: !3199, inlinedAt: !3287)
!3291 = !DILocation(line: 1030, column: 30, scope: !3199, inlinedAt: !3287)
!3292 = !DILocation(line: 0, scope: !1951, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 1031, column: 3, scope: !3199, inlinedAt: !3287)
!3294 = !DILocation(line: 184, column: 6, scope: !1951, inlinedAt: !3293)
!3295 = !DILocation(line: 184, column: 12, scope: !1951, inlinedAt: !3293)
!3296 = !DILocation(line: 185, column: 8, scope: !1965, inlinedAt: !3293)
!3297 = !DILocation(line: 185, column: 23, scope: !1965, inlinedAt: !3293)
!3298 = !DILocation(line: 185, column: 19, scope: !1965, inlinedAt: !3293)
!3299 = !DILocation(line: 186, column: 5, scope: !1965, inlinedAt: !3293)
!3300 = !DILocation(line: 187, column: 6, scope: !1951, inlinedAt: !3293)
!3301 = !DILocation(line: 187, column: 17, scope: !1951, inlinedAt: !3293)
!3302 = !DILocation(line: 188, column: 6, scope: !1951, inlinedAt: !3293)
!3303 = !DILocation(line: 188, column: 18, scope: !1951, inlinedAt: !3293)
!3304 = !DILocation(line: 1032, column: 10, scope: !3199, inlinedAt: !3287)
!3305 = !DILocation(line: 1033, column: 1, scope: !3199, inlinedAt: !3287)
!3306 = !DILocation(line: 1046, column: 3, scope: !3278)
!3307 = distinct !DISubprogram(name: "quote_n_mem", scope: !293, file: !293, line: 1061, type: !3308, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!36, !38, !36, !93}
!3310 = !{!3311, !3312, !3313}
!3311 = !DILocalVariable(name: "n", arg: 1, scope: !3307, file: !293, line: 1061, type: !38)
!3312 = !DILocalVariable(name: "arg", arg: 2, scope: !3307, file: !293, line: 1061, type: !36)
!3313 = !DILocalVariable(name: "argsize", arg: 3, scope: !3307, file: !293, line: 1061, type: !93)
!3314 = !DILocation(line: 0, scope: !3307)
!3315 = !DILocation(line: 1063, column: 10, scope: !3307)
!3316 = !DILocation(line: 1063, column: 3, scope: !3307)
!3317 = distinct !DISubprogram(name: "quote_mem", scope: !293, file: !293, line: 1067, type: !3318, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3320)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!36, !36, !93}
!3320 = !{!3321, !3322}
!3321 = !DILocalVariable(name: "arg", arg: 1, scope: !3317, file: !293, line: 1067, type: !36)
!3322 = !DILocalVariable(name: "argsize", arg: 2, scope: !3317, file: !293, line: 1067, type: !93)
!3323 = !DILocation(line: 0, scope: !3317)
!3324 = !DILocation(line: 0, scope: !3307, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 1069, column: 10, scope: !3317)
!3326 = !DILocation(line: 1063, column: 10, scope: !3307, inlinedAt: !3325)
!3327 = !DILocation(line: 1069, column: 3, scope: !3317)
!3328 = distinct !DISubprogram(name: "quote_n", scope: !293, file: !293, line: 1073, type: !3329, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3331)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!36, !38, !36}
!3331 = !{!3332, !3333}
!3332 = !DILocalVariable(name: "n", arg: 1, scope: !3328, file: !293, line: 1073, type: !38)
!3333 = !DILocalVariable(name: "arg", arg: 2, scope: !3328, file: !293, line: 1073, type: !36)
!3334 = !DILocation(line: 0, scope: !3328)
!3335 = !DILocation(line: 0, scope: !3307, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 1075, column: 10, scope: !3328)
!3337 = !DILocation(line: 1063, column: 10, scope: !3307, inlinedAt: !3336)
!3338 = !DILocation(line: 1075, column: 3, scope: !3328)
!3339 = distinct !DISubprogram(name: "quote", scope: !293, file: !293, line: 1079, type: !3340, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3342)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!36, !36}
!3342 = !{!3343}
!3343 = !DILocalVariable(name: "arg", arg: 1, scope: !3339, file: !293, line: 1079, type: !36)
!3344 = !DILocation(line: 0, scope: !3339)
!3345 = !DILocation(line: 0, scope: !3328, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 1081, column: 10, scope: !3339)
!3347 = !DILocation(line: 0, scope: !3307, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 1075, column: 10, scope: !3328, inlinedAt: !3346)
!3349 = !DILocation(line: 1063, column: 10, scope: !3307, inlinedAt: !3348)
!3350 = !DILocation(line: 1081, column: 3, scope: !3339)
!3351 = distinct !DISubprogram(name: "version_etc_arn", scope: !459, file: !459, line: 61, type: !3352, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !3357)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{null, !3354, !36, !36, !36, !3356, !93}
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1318, line: 7, baseType: !469)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!3357 = !{!3358, !3359, !3360, !3361, !3362, !3363}
!3358 = !DILocalVariable(name: "stream", arg: 1, scope: !3351, file: !459, line: 61, type: !3354)
!3359 = !DILocalVariable(name: "command_name", arg: 2, scope: !3351, file: !459, line: 62, type: !36)
!3360 = !DILocalVariable(name: "package", arg: 3, scope: !3351, file: !459, line: 62, type: !36)
!3361 = !DILocalVariable(name: "version", arg: 4, scope: !3351, file: !459, line: 63, type: !36)
!3362 = !DILocalVariable(name: "authors", arg: 5, scope: !3351, file: !459, line: 64, type: !3356)
!3363 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3351, file: !459, line: 64, type: !93)
!3364 = !DILocation(line: 0, scope: !3351)
!3365 = !DILocation(line: 66, column: 7, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3351, file: !459, line: 66, column: 7)
!3367 = !DILocation(line: 66, column: 7, scope: !3351)
!3368 = !DILocation(line: 67, column: 5, scope: !3366)
!3369 = !DILocation(line: 69, column: 5, scope: !3366)
!3370 = !DILocation(line: 83, column: 3, scope: !3351)
!3371 = !DILocation(line: 85, column: 3, scope: !3351)
!3372 = !DILocation(line: 88, column: 3, scope: !3351)
!3373 = !DILocation(line: 95, column: 3, scope: !3351)
!3374 = !DILocation(line: 97, column: 3, scope: !3351)
!3375 = !DILocation(line: 105, column: 7, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3351, file: !459, line: 98, column: 5)
!3377 = !DILocation(line: 106, column: 7, scope: !3376)
!3378 = !DILocation(line: 109, column: 7, scope: !3376)
!3379 = !DILocation(line: 110, column: 7, scope: !3376)
!3380 = !DILocation(line: 113, column: 7, scope: !3376)
!3381 = !DILocation(line: 115, column: 7, scope: !3376)
!3382 = !DILocation(line: 120, column: 7, scope: !3376)
!3383 = !DILocation(line: 122, column: 7, scope: !3376)
!3384 = !DILocation(line: 127, column: 7, scope: !3376)
!3385 = !DILocation(line: 129, column: 7, scope: !3376)
!3386 = !DILocation(line: 134, column: 7, scope: !3376)
!3387 = !DILocation(line: 137, column: 7, scope: !3376)
!3388 = !DILocation(line: 142, column: 7, scope: !3376)
!3389 = !DILocation(line: 145, column: 7, scope: !3376)
!3390 = !DILocation(line: 150, column: 7, scope: !3376)
!3391 = !DILocation(line: 154, column: 7, scope: !3376)
!3392 = !DILocation(line: 159, column: 7, scope: !3376)
!3393 = !DILocation(line: 163, column: 7, scope: !3376)
!3394 = !DILocation(line: 170, column: 7, scope: !3376)
!3395 = !DILocation(line: 174, column: 7, scope: !3376)
!3396 = !DILocation(line: 176, column: 1, scope: !3351)
!3397 = distinct !DISubprogram(name: "version_etc_ar", scope: !459, file: !459, line: 183, type: !3398, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !3400)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{null, !3354, !36, !36, !36, !3356}
!3400 = !{!3401, !3402, !3403, !3404, !3405, !3406}
!3401 = !DILocalVariable(name: "stream", arg: 1, scope: !3397, file: !459, line: 183, type: !3354)
!3402 = !DILocalVariable(name: "command_name", arg: 2, scope: !3397, file: !459, line: 184, type: !36)
!3403 = !DILocalVariable(name: "package", arg: 3, scope: !3397, file: !459, line: 184, type: !36)
!3404 = !DILocalVariable(name: "version", arg: 4, scope: !3397, file: !459, line: 185, type: !36)
!3405 = !DILocalVariable(name: "authors", arg: 5, scope: !3397, file: !459, line: 185, type: !3356)
!3406 = !DILocalVariable(name: "n_authors", scope: !3397, file: !459, line: 187, type: !93)
!3407 = !DILocation(line: 0, scope: !3397)
!3408 = !DILocation(line: 189, column: 8, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3397, file: !459, line: 189, column: 3)
!3410 = !DILocation(line: 0, scope: !3409)
!3411 = !DILocation(line: 189, column: 23, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3409, file: !459, line: 189, column: 3)
!3413 = !DILocation(line: 189, column: 3, scope: !3409)
!3414 = !DILocation(line: 189, column: 52, scope: !3412)
!3415 = distinct !{!3415, !3413, !3416}
!3416 = !DILocation(line: 190, column: 5, scope: !3409)
!3417 = !DILocation(line: 191, column: 3, scope: !3397)
!3418 = !DILocation(line: 192, column: 1, scope: !3397)
!3419 = distinct !DISubprogram(name: "version_etc_va", scope: !459, file: !459, line: 199, type: !3420, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !3429)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{null, !3354, !36, !36, !36, !3422}
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !459, line: 192, size: 192, elements: !3424)
!3424 = !{!3425, !3426, !3427, !3428}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3423, file: !459, line: 192, baseType: !7, size: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3423, file: !459, line: 192, baseType: !7, size: 32, offset: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3423, file: !459, line: 192, baseType: !91, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3423, file: !459, line: 192, baseType: !91, size: 64, offset: 128)
!3429 = !{!3430, !3431, !3432, !3433, !3434, !3435, !3436}
!3430 = !DILocalVariable(name: "stream", arg: 1, scope: !3419, file: !459, line: 199, type: !3354)
!3431 = !DILocalVariable(name: "command_name", arg: 2, scope: !3419, file: !459, line: 200, type: !36)
!3432 = !DILocalVariable(name: "package", arg: 3, scope: !3419, file: !459, line: 200, type: !36)
!3433 = !DILocalVariable(name: "version", arg: 4, scope: !3419, file: !459, line: 201, type: !36)
!3434 = !DILocalVariable(name: "authors", arg: 5, scope: !3419, file: !459, line: 201, type: !3422)
!3435 = !DILocalVariable(name: "n_authors", scope: !3419, file: !459, line: 203, type: !93)
!3436 = !DILocalVariable(name: "authtab", scope: !3419, file: !459, line: 204, type: !3437)
!3437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 640, elements: !381)
!3438 = !DILocation(line: 0, scope: !3419)
!3439 = !DILocation(line: 204, column: 3, scope: !3419)
!3440 = !DILocation(line: 204, column: 15, scope: !3419)
!3441 = !DILocation(line: 0, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !459, line: 206, column: 3)
!3443 = distinct !DILexicalBlock(scope: !3419, file: !459, line: 206, column: 3)
!3444 = !DILocation(line: 208, column: 35, scope: !3442)
!3445 = !DILocation(line: 208, column: 14, scope: !3442)
!3446 = !DILocation(line: 208, column: 33, scope: !3442)
!3447 = !DILocation(line: 208, column: 67, scope: !3442)
!3448 = !DILocation(line: 206, column: 3, scope: !3443)
!3449 = !DILocation(line: 0, scope: !3443)
!3450 = !DILocation(line: 211, column: 3, scope: !3419)
!3451 = !DILocation(line: 213, column: 1, scope: !3419)
!3452 = distinct !DISubprogram(name: "version_etc", scope: !459, file: !459, line: 230, type: !3453, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !3455)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{null, !3354, !36, !36, !36, null}
!3455 = !{!3456, !3457, !3458, !3459, !3460}
!3456 = !DILocalVariable(name: "stream", arg: 1, scope: !3452, file: !459, line: 230, type: !3354)
!3457 = !DILocalVariable(name: "command_name", arg: 2, scope: !3452, file: !459, line: 231, type: !36)
!3458 = !DILocalVariable(name: "package", arg: 3, scope: !3452, file: !459, line: 231, type: !36)
!3459 = !DILocalVariable(name: "version", arg: 4, scope: !3452, file: !459, line: 232, type: !36)
!3460 = !DILocalVariable(name: "authors", scope: !3452, file: !459, line: 234, type: !3461)
!3461 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !41, line: 52, baseType: !3462)
!3462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3463, line: 32, baseType: !3464)
!3463 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !459, line: 234, baseType: !3465)
!3465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3423, size: 192, elements: !76)
!3466 = !DILocation(line: 0, scope: !3452)
!3467 = !DILocation(line: 234, column: 3, scope: !3452)
!3468 = !DILocation(line: 234, column: 11, scope: !3452)
!3469 = !DILocation(line: 236, column: 3, scope: !3452)
!3470 = !DILocation(line: 237, column: 3, scope: !3452)
!3471 = !DILocation(line: 238, column: 3, scope: !3452)
!3472 = !DILocation(line: 239, column: 1, scope: !3452)
!3473 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !459, file: !459, line: 242, type: !120, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !39)
!3474 = !DILocation(line: 244, column: 3, scope: !3473)
!3475 = !DILocation(line: 249, column: 3, scope: !3473)
!3476 = !DILocation(line: 255, column: 3, scope: !3473)
!3477 = !DILocation(line: 260, column: 3, scope: !3473)
!3478 = !DILocation(line: 262, column: 1, scope: !3473)
!3479 = distinct !DISubprogram(name: "xnmalloc", scope: !156, file: !156, line: 99, type: !1531, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !3480)
!3480 = !{!3481, !3482}
!3481 = !DILocalVariable(name: "n", arg: 1, scope: !3479, file: !156, line: 99, type: !93)
!3482 = !DILocalVariable(name: "s", arg: 2, scope: !3479, file: !156, line: 99, type: !93)
!3483 = !DILocation(line: 0, scope: !3479)
!3484 = !DILocation(line: 101, column: 7, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3479, file: !156, line: 101, column: 7)
!3486 = !DILocation(line: 101, column: 7, scope: !3479)
!3487 = !DILocation(line: 102, column: 5, scope: !3485)
!3488 = !DILocation(line: 103, column: 21, scope: !3479)
!3489 = !DILocalVariable(name: "n", arg: 1, scope: !3490, file: !501, line: 39, type: !93)
!3490 = distinct !DISubprogram(name: "xmalloc", scope: !501, file: !501, line: 39, type: !3491, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !3493)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!91, !93}
!3493 = !{!3489, !3494}
!3494 = !DILocalVariable(name: "p", scope: !3490, file: !501, line: 41, type: !91)
!3495 = !DILocation(line: 0, scope: !3490, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 103, column: 10, scope: !3479)
!3497 = !DILocation(line: 41, column: 13, scope: !3490, inlinedAt: !3496)
!3498 = !DILocation(line: 42, column: 8, scope: !3499, inlinedAt: !3496)
!3499 = distinct !DILexicalBlock(scope: !3490, file: !501, line: 42, column: 7)
!3500 = !DILocation(line: 42, column: 15, scope: !3499, inlinedAt: !3496)
!3501 = !DILocation(line: 42, column: 10, scope: !3499, inlinedAt: !3496)
!3502 = !DILocation(line: 43, column: 5, scope: !3499, inlinedAt: !3496)
!3503 = !DILocation(line: 103, column: 3, scope: !3479)
!3504 = !DILocation(line: 0, scope: !3490)
!3505 = !DILocation(line: 41, column: 13, scope: !3490)
!3506 = !DILocation(line: 42, column: 8, scope: !3499)
!3507 = !DILocation(line: 42, column: 15, scope: !3499)
!3508 = !DILocation(line: 42, column: 10, scope: !3499)
!3509 = !DILocation(line: 43, column: 5, scope: !3499)
!3510 = !DILocation(line: 44, column: 3, scope: !3490)
!3511 = distinct !DISubprogram(name: "xnrealloc", scope: !156, file: !156, line: 112, type: !3512, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !3514)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!91, !91, !93, !93}
!3514 = !{!3515, !3516, !3517}
!3515 = !DILocalVariable(name: "p", arg: 1, scope: !3511, file: !156, line: 112, type: !91)
!3516 = !DILocalVariable(name: "n", arg: 2, scope: !3511, file: !156, line: 112, type: !93)
!3517 = !DILocalVariable(name: "s", arg: 3, scope: !3511, file: !156, line: 112, type: !93)
!3518 = !DILocation(line: 0, scope: !3511)
!3519 = !DILocation(line: 114, column: 7, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3511, file: !156, line: 114, column: 7)
!3521 = !DILocation(line: 114, column: 7, scope: !3511)
!3522 = !DILocation(line: 115, column: 5, scope: !3520)
!3523 = !DILocation(line: 116, column: 25, scope: !3511)
!3524 = !DILocalVariable(name: "p", arg: 1, scope: !3525, file: !501, line: 51, type: !91)
!3525 = distinct !DISubprogram(name: "xrealloc", scope: !501, file: !501, line: 51, type: !3526, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !3528)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!91, !91, !93}
!3528 = !{!3524, !3529}
!3529 = !DILocalVariable(name: "n", arg: 2, scope: !3525, file: !501, line: 51, type: !93)
!3530 = !DILocation(line: 0, scope: !3525, inlinedAt: !3531)
!3531 = distinct !DILocation(line: 116, column: 10, scope: !3511)
!3532 = !DILocation(line: 53, column: 8, scope: !3533, inlinedAt: !3531)
!3533 = distinct !DILexicalBlock(scope: !3525, file: !501, line: 53, column: 7)
!3534 = !DILocation(line: 53, column: 13, scope: !3533, inlinedAt: !3531)
!3535 = !DILocation(line: 53, column: 10, scope: !3533, inlinedAt: !3531)
!3536 = !DILocation(line: 57, column: 7, scope: !3537, inlinedAt: !3531)
!3537 = distinct !DILexicalBlock(scope: !3533, file: !501, line: 54, column: 5)
!3538 = !DILocation(line: 58, column: 7, scope: !3537, inlinedAt: !3531)
!3539 = !DILocation(line: 61, column: 7, scope: !3525, inlinedAt: !3531)
!3540 = !DILocation(line: 62, column: 8, scope: !3541, inlinedAt: !3531)
!3541 = distinct !DILexicalBlock(scope: !3525, file: !501, line: 62, column: 7)
!3542 = !DILocation(line: 62, column: 13, scope: !3541, inlinedAt: !3531)
!3543 = !DILocation(line: 62, column: 10, scope: !3541, inlinedAt: !3531)
!3544 = !DILocation(line: 63, column: 5, scope: !3541, inlinedAt: !3531)
!3545 = !DILocation(line: 116, column: 3, scope: !3511)
!3546 = !DILocation(line: 0, scope: !3525)
!3547 = !DILocation(line: 53, column: 8, scope: !3533)
!3548 = !DILocation(line: 53, column: 13, scope: !3533)
!3549 = !DILocation(line: 53, column: 10, scope: !3533)
!3550 = !DILocation(line: 57, column: 7, scope: !3537)
!3551 = !DILocation(line: 58, column: 7, scope: !3537)
!3552 = !DILocation(line: 61, column: 7, scope: !3525)
!3553 = !DILocation(line: 62, column: 8, scope: !3541)
!3554 = !DILocation(line: 62, column: 13, scope: !3541)
!3555 = !DILocation(line: 62, column: 10, scope: !3541)
!3556 = !DILocation(line: 63, column: 5, scope: !3541)
!3557 = !DILocation(line: 65, column: 1, scope: !3525)
!3558 = !DILocation(line: 0, scope: !504)
!3559 = !DILocation(line: 176, column: 14, scope: !504)
!3560 = !DILocation(line: 178, column: 9, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !504, file: !156, line: 178, column: 7)
!3562 = !DILocation(line: 178, column: 7, scope: !504)
!3563 = !DILocation(line: 180, column: 13, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !156, line: 180, column: 11)
!3565 = distinct !DILexicalBlock(scope: !3561, file: !156, line: 179, column: 5)
!3566 = !DILocation(line: 180, column: 11, scope: !3565)
!3567 = !DILocation(line: 188, column: 30, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3564, file: !156, line: 181, column: 9)
!3569 = !DILocation(line: 189, column: 16, scope: !3568)
!3570 = !DILocation(line: 189, column: 13, scope: !3568)
!3571 = !DILocation(line: 190, column: 9, scope: !3568)
!3572 = !DILocation(line: 191, column: 11, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3565, file: !156, line: 191, column: 11)
!3574 = !DILocation(line: 191, column: 11, scope: !3565)
!3575 = !DILocation(line: 206, column: 7, scope: !504)
!3576 = !DILocation(line: 207, column: 25, scope: !504)
!3577 = !DILocation(line: 0, scope: !3525, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 207, column: 10, scope: !504)
!3579 = !DILocation(line: 53, column: 10, scope: !3533, inlinedAt: !3578)
!3580 = !DILocation(line: 192, column: 9, scope: !3573)
!3581 = !DILocation(line: 200, column: 69, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3583, file: !156, line: 200, column: 11)
!3583 = distinct !DILexicalBlock(scope: !3561, file: !156, line: 195, column: 5)
!3584 = !DILocation(line: 201, column: 11, scope: !3582)
!3585 = !DILocation(line: 200, column: 11, scope: !3583)
!3586 = !DILocation(line: 202, column: 9, scope: !3582)
!3587 = !DILocation(line: 203, column: 14, scope: !3583)
!3588 = !DILocation(line: 203, column: 18, scope: !3583)
!3589 = !DILocation(line: 203, column: 9, scope: !3583)
!3590 = !DILocation(line: 53, column: 8, scope: !3533, inlinedAt: !3578)
!3591 = !DILocation(line: 57, column: 7, scope: !3537, inlinedAt: !3578)
!3592 = !DILocation(line: 58, column: 7, scope: !3537, inlinedAt: !3578)
!3593 = !DILocation(line: 61, column: 7, scope: !3525, inlinedAt: !3578)
!3594 = !DILocation(line: 62, column: 8, scope: !3541, inlinedAt: !3578)
!3595 = !DILocation(line: 62, column: 13, scope: !3541, inlinedAt: !3578)
!3596 = !DILocation(line: 62, column: 10, scope: !3541, inlinedAt: !3578)
!3597 = !DILocation(line: 63, column: 5, scope: !3541, inlinedAt: !3578)
!3598 = !DILocation(line: 207, column: 3, scope: !504)
!3599 = distinct !DISubprogram(name: "xcharalloc", scope: !156, file: !156, line: 216, type: !2765, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !3600)
!3600 = !{!3601}
!3601 = !DILocalVariable(name: "n", arg: 1, scope: !3599, file: !156, line: 216, type: !93)
!3602 = !DILocation(line: 0, scope: !3599)
!3603 = !DILocation(line: 0, scope: !3490, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 218, column: 10, scope: !3599)
!3605 = !DILocation(line: 41, column: 13, scope: !3490, inlinedAt: !3604)
!3606 = !DILocation(line: 42, column: 8, scope: !3499, inlinedAt: !3604)
!3607 = !DILocation(line: 42, column: 15, scope: !3499, inlinedAt: !3604)
!3608 = !DILocation(line: 42, column: 10, scope: !3499, inlinedAt: !3604)
!3609 = !DILocation(line: 43, column: 5, scope: !3499, inlinedAt: !3604)
!3610 = !DILocation(line: 218, column: 3, scope: !3599)
!3611 = distinct !DISubprogram(name: "x2realloc", scope: !501, file: !501, line: 74, type: !3612, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !3614)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!91, !91, !507}
!3614 = !{!3615, !3616}
!3615 = !DILocalVariable(name: "p", arg: 1, scope: !3611, file: !501, line: 74, type: !91)
!3616 = !DILocalVariable(name: "pn", arg: 2, scope: !3611, file: !501, line: 74, type: !507)
!3617 = !DILocation(line: 0, scope: !3611)
!3618 = !DILocation(line: 0, scope: !504, inlinedAt: !3619)
!3619 = distinct !DILocation(line: 76, column: 10, scope: !3611)
!3620 = !DILocation(line: 176, column: 14, scope: !504, inlinedAt: !3619)
!3621 = !DILocation(line: 178, column: 9, scope: !3561, inlinedAt: !3619)
!3622 = !DILocation(line: 178, column: 7, scope: !504, inlinedAt: !3619)
!3623 = !DILocation(line: 180, column: 13, scope: !3564, inlinedAt: !3619)
!3624 = !DILocation(line: 180, column: 11, scope: !3565, inlinedAt: !3619)
!3625 = !DILocation(line: 191, column: 11, scope: !3573, inlinedAt: !3619)
!3626 = !DILocation(line: 191, column: 11, scope: !3565, inlinedAt: !3619)
!3627 = !DILocation(line: 206, column: 7, scope: !504, inlinedAt: !3619)
!3628 = !DILocation(line: 0, scope: !3525, inlinedAt: !3629)
!3629 = distinct !DILocation(line: 207, column: 10, scope: !504, inlinedAt: !3619)
!3630 = !DILocation(line: 53, column: 10, scope: !3533, inlinedAt: !3629)
!3631 = !DILocation(line: 192, column: 9, scope: !3573, inlinedAt: !3619)
!3632 = !DILocation(line: 201, column: 11, scope: !3582, inlinedAt: !3619)
!3633 = !DILocation(line: 200, column: 11, scope: !3583, inlinedAt: !3619)
!3634 = !DILocation(line: 202, column: 9, scope: !3582, inlinedAt: !3619)
!3635 = !DILocation(line: 203, column: 14, scope: !3583, inlinedAt: !3619)
!3636 = !DILocation(line: 203, column: 18, scope: !3583, inlinedAt: !3619)
!3637 = !DILocation(line: 203, column: 9, scope: !3583, inlinedAt: !3619)
!3638 = !DILocation(line: 53, column: 8, scope: !3533, inlinedAt: !3629)
!3639 = !DILocation(line: 57, column: 7, scope: !3537, inlinedAt: !3629)
!3640 = !DILocation(line: 58, column: 7, scope: !3537, inlinedAt: !3629)
!3641 = !DILocation(line: 61, column: 7, scope: !3525, inlinedAt: !3629)
!3642 = !DILocation(line: 62, column: 8, scope: !3541, inlinedAt: !3629)
!3643 = !DILocation(line: 62, column: 13, scope: !3541, inlinedAt: !3629)
!3644 = !DILocation(line: 62, column: 10, scope: !3541, inlinedAt: !3629)
!3645 = !DILocation(line: 63, column: 5, scope: !3541, inlinedAt: !3629)
!3646 = !DILocation(line: 76, column: 3, scope: !3611)
!3647 = distinct !DISubprogram(name: "xzalloc", scope: !501, file: !501, line: 84, type: !3491, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !3648)
!3648 = !{!3649}
!3649 = !DILocalVariable(name: "n", arg: 1, scope: !3647, file: !501, line: 84, type: !93)
!3650 = !DILocation(line: 0, scope: !3647)
!3651 = !DILocalVariable(name: "n", arg: 1, scope: !3652, file: !501, line: 93, type: !93)
!3652 = distinct !DISubprogram(name: "xcalloc", scope: !501, file: !501, line: 93, type: !1531, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !3653)
!3653 = !{!3651, !3654, !3655}
!3654 = !DILocalVariable(name: "s", arg: 2, scope: !3652, file: !501, line: 93, type: !93)
!3655 = !DILocalVariable(name: "p", scope: !3652, file: !501, line: 95, type: !91)
!3656 = !DILocation(line: 0, scope: !3652, inlinedAt: !3657)
!3657 = distinct !DILocation(line: 86, column: 10, scope: !3647)
!3658 = !DILocation(line: 100, column: 7, scope: !3659, inlinedAt: !3657)
!3659 = distinct !DILexicalBlock(scope: !3652, file: !501, line: 100, column: 7)
!3660 = !DILocation(line: 101, column: 7, scope: !3659, inlinedAt: !3657)
!3661 = !DILocation(line: 101, column: 18, scope: !3659, inlinedAt: !3657)
!3662 = !DILocation(line: 101, column: 16, scope: !3659, inlinedAt: !3657)
!3663 = !DILocation(line: 100, column: 7, scope: !3652, inlinedAt: !3657)
!3664 = !DILocation(line: 102, column: 5, scope: !3659, inlinedAt: !3657)
!3665 = !DILocation(line: 86, column: 3, scope: !3647)
!3666 = !DILocation(line: 0, scope: !3652)
!3667 = !DILocation(line: 100, column: 7, scope: !3659)
!3668 = !DILocation(line: 101, column: 7, scope: !3659)
!3669 = !DILocation(line: 101, column: 18, scope: !3659)
!3670 = !DILocation(line: 101, column: 16, scope: !3659)
!3671 = !DILocation(line: 100, column: 7, scope: !3652)
!3672 = !DILocation(line: 102, column: 5, scope: !3659)
!3673 = !DILocation(line: 103, column: 3, scope: !3652)
!3674 = distinct !DISubprogram(name: "xmemdup", scope: !501, file: !501, line: 111, type: !3675, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !3677)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!91, !172, !93}
!3677 = !{!3678, !3679}
!3678 = !DILocalVariable(name: "p", arg: 1, scope: !3674, file: !501, line: 111, type: !172)
!3679 = !DILocalVariable(name: "s", arg: 2, scope: !3674, file: !501, line: 111, type: !93)
!3680 = !DILocation(line: 0, scope: !3674)
!3681 = !DILocation(line: 0, scope: !3490, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 113, column: 18, scope: !3674)
!3683 = !DILocation(line: 41, column: 13, scope: !3490, inlinedAt: !3682)
!3684 = !DILocation(line: 42, column: 8, scope: !3499, inlinedAt: !3682)
!3685 = !DILocation(line: 42, column: 15, scope: !3499, inlinedAt: !3682)
!3686 = !DILocation(line: 42, column: 10, scope: !3499, inlinedAt: !3682)
!3687 = !DILocation(line: 43, column: 5, scope: !3499, inlinedAt: !3682)
!3688 = !DILocalVariable(name: "__dest", arg: 1, scope: !3689, file: !2298, line: 31, type: !3692)
!3689 = distinct !DISubprogram(name: "memcpy", scope: !2298, file: !2298, line: 31, type: !3690, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !3694)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!91, !3692, !3693, !93}
!3692 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!3693 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !172)
!3694 = !{!3688, !3695, !3696}
!3695 = !DILocalVariable(name: "__src", arg: 2, scope: !3689, file: !2298, line: 31, type: !3693)
!3696 = !DILocalVariable(name: "__len", arg: 3, scope: !3689, file: !2298, line: 31, type: !93)
!3697 = !DILocation(line: 0, scope: !3689, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 113, column: 10, scope: !3674)
!3699 = !DILocation(line: 34, column: 10, scope: !3689, inlinedAt: !3698)
!3700 = !DILocation(line: 113, column: 3, scope: !3674)
!3701 = distinct !DISubprogram(name: "xstrdup", scope: !501, file: !501, line: 119, type: !113, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !3702)
!3702 = !{!3703}
!3703 = !DILocalVariable(name: "string", arg: 1, scope: !3701, file: !501, line: 119, type: !36)
!3704 = !DILocation(line: 0, scope: !3701)
!3705 = !DILocation(line: 121, column: 27, scope: !3701)
!3706 = !DILocation(line: 121, column: 43, scope: !3701)
!3707 = !DILocation(line: 0, scope: !3674, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 121, column: 10, scope: !3701)
!3709 = !DILocation(line: 0, scope: !3490, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 113, column: 18, scope: !3674, inlinedAt: !3708)
!3711 = !DILocation(line: 41, column: 13, scope: !3490, inlinedAt: !3710)
!3712 = !DILocation(line: 42, column: 8, scope: !3499, inlinedAt: !3710)
!3713 = !DILocation(line: 42, column: 15, scope: !3499, inlinedAt: !3710)
!3714 = !DILocation(line: 42, column: 10, scope: !3499, inlinedAt: !3710)
!3715 = !DILocation(line: 43, column: 5, scope: !3499, inlinedAt: !3710)
!3716 = !DILocation(line: 0, scope: !3689, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 113, column: 10, scope: !3674, inlinedAt: !3708)
!3718 = !DILocation(line: 34, column: 10, scope: !3689, inlinedAt: !3717)
!3719 = !DILocation(line: 121, column: 3, scope: !3701)
!3720 = distinct !DISubprogram(name: "xalloc_die", scope: !522, file: !522, line: 32, type: !120, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !39)
!3721 = !DILocation(line: 34, column: 10, scope: !3720)
!3722 = !DILocation(line: 34, column: 33, scope: !3720)
!3723 = !DILocation(line: 34, column: 3, scope: !3720)
!3724 = !DILocation(line: 40, column: 3, scope: !3720)
!3725 = distinct !DISubprogram(name: "rpl_calloc", scope: !525, file: !525, line: 42, type: !1531, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !524, retainedNodes: !3726)
!3726 = !{!3727, !3728, !3729, !3730}
!3727 = !DILocalVariable(name: "n", arg: 1, scope: !3725, file: !525, line: 42, type: !93)
!3728 = !DILocalVariable(name: "s", arg: 2, scope: !3725, file: !525, line: 42, type: !93)
!3729 = !DILocalVariable(name: "result", scope: !3725, file: !525, line: 44, type: !91)
!3730 = !DILocalVariable(name: "bytes", scope: !3731, file: !525, line: 56, type: !93)
!3731 = distinct !DILexicalBlock(scope: !3732, file: !525, line: 53, column: 5)
!3732 = distinct !DILexicalBlock(scope: !3725, file: !525, line: 47, column: 7)
!3733 = !DILocation(line: 0, scope: !3725)
!3734 = !DILocation(line: 47, column: 9, scope: !3732)
!3735 = !DILocation(line: 47, column: 19, scope: !3732)
!3736 = !DILocation(line: 47, column: 14, scope: !3732)
!3737 = !DILocation(line: 0, scope: !3731)
!3738 = !DILocation(line: 57, column: 21, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3731, file: !525, line: 57, column: 11)
!3740 = !DILocation(line: 57, column: 11, scope: !3731)
!3741 = !DILocation(line: 59, column: 11, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3739, file: !525, line: 58, column: 9)
!3743 = !DILocation(line: 59, column: 17, scope: !3742)
!3744 = !DILocation(line: 65, column: 12, scope: !3725)
!3745 = !DILocation(line: 72, column: 3, scope: !3725)
!3746 = !DILocation(line: 73, column: 1, scope: !3725)
!3747 = distinct !DISubprogram(name: "rpl_fclose", scope: !528, file: !528, line: 58, type: !3748, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !3752)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!38, !3750}
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1318, line: 7, baseType: !534)
!3752 = !{!3753, !3754, !3755, !3756}
!3753 = !DILocalVariable(name: "fp", arg: 1, scope: !3747, file: !528, line: 58, type: !3750)
!3754 = !DILocalVariable(name: "saved_errno", scope: !3747, file: !528, line: 60, type: !38)
!3755 = !DILocalVariable(name: "fd", scope: !3747, file: !528, line: 61, type: !38)
!3756 = !DILocalVariable(name: "result", scope: !3747, file: !528, line: 62, type: !38)
!3757 = !DILocation(line: 0, scope: !3747)
!3758 = !DILocation(line: 65, column: 8, scope: !3747)
!3759 = !DILocation(line: 66, column: 10, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3747, file: !528, line: 66, column: 7)
!3761 = !DILocation(line: 66, column: 7, scope: !3747)
!3762 = !DILocation(line: 67, column: 12, scope: !3760)
!3763 = !DILocation(line: 67, column: 5, scope: !3760)
!3764 = !DILocation(line: 72, column: 9, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3747, file: !528, line: 72, column: 7)
!3766 = !DILocation(line: 72, column: 23, scope: !3765)
!3767 = !DILocation(line: 72, column: 33, scope: !3765)
!3768 = !DILocation(line: 72, column: 26, scope: !3765)
!3769 = !DILocation(line: 72, column: 59, scope: !3765)
!3770 = !DILocation(line: 73, column: 7, scope: !3765)
!3771 = !DILocation(line: 73, column: 10, scope: !3765)
!3772 = !DILocation(line: 72, column: 7, scope: !3747)
!3773 = !DILocation(line: 100, column: 12, scope: !3747)
!3774 = !DILocation(line: 105, column: 7, scope: !3747)
!3775 = !DILocation(line: 74, column: 19, scope: !3765)
!3776 = !DILocation(line: 105, column: 19, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3747, file: !528, line: 105, column: 7)
!3778 = !DILocation(line: 107, column: 13, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3777, file: !528, line: 106, column: 5)
!3780 = !DILocation(line: 109, column: 5, scope: !3779)
!3781 = !DILocation(line: 112, column: 1, scope: !3747)
!3782 = distinct !DISubprogram(name: "rpl_fflush", scope: !572, file: !572, line: 129, type: !3783, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !3787)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!38, !3785}
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1318, line: 7, baseType: !578)
!3787 = !{!3788}
!3788 = !DILocalVariable(name: "stream", arg: 1, scope: !3782, file: !572, line: 129, type: !3785)
!3789 = !DILocation(line: 0, scope: !3782)
!3790 = !DILocation(line: 150, column: 14, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3782, file: !572, line: 150, column: 7)
!3792 = !DILocation(line: 150, column: 22, scope: !3791)
!3793 = !DILocation(line: 150, column: 27, scope: !3791)
!3794 = !DILocation(line: 150, column: 7, scope: !3782)
!3795 = !DILocation(line: 151, column: 12, scope: !3791)
!3796 = !DILocation(line: 151, column: 5, scope: !3791)
!3797 = !DILocalVariable(name: "fp", arg: 1, scope: !3798, file: !572, line: 41, type: !3785)
!3798 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !572, file: !572, line: 41, type: !3799, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !3801)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{null, !3785}
!3801 = !{!3797}
!3802 = !DILocation(line: 0, scope: !3798, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 156, column: 3, scope: !3782)
!3804 = !DILocation(line: 43, column: 11, scope: !3805, inlinedAt: !3803)
!3805 = distinct !DILexicalBlock(scope: !3798, file: !572, line: 43, column: 7)
!3806 = !DILocation(line: 43, column: 18, scope: !3805, inlinedAt: !3803)
!3807 = !DILocation(line: 43, column: 7, scope: !3798, inlinedAt: !3803)
!3808 = !DILocation(line: 45, column: 5, scope: !3805, inlinedAt: !3803)
!3809 = !DILocation(line: 158, column: 10, scope: !3782)
!3810 = !DILocation(line: 158, column: 3, scope: !3782)
!3811 = !DILocation(line: 235, column: 1, scope: !3782)
!3812 = distinct !DISubprogram(name: "rpl_fseeko", scope: !613, file: !613, line: 28, type: !3813, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !612, retainedNodes: !3817)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!38, !3815, !1807, !38}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1318, line: 7, baseType: !619)
!3817 = !{!3818, !3819, !3820, !3821}
!3818 = !DILocalVariable(name: "fp", arg: 1, scope: !3812, file: !613, line: 28, type: !3815)
!3819 = !DILocalVariable(name: "offset", arg: 2, scope: !3812, file: !613, line: 28, type: !1807)
!3820 = !DILocalVariable(name: "whence", arg: 3, scope: !3812, file: !613, line: 28, type: !38)
!3821 = !DILocalVariable(name: "pos", scope: !3822, file: !613, line: 117, type: !1807)
!3822 = distinct !DILexicalBlock(scope: !3823, file: !613, line: 113, column: 5)
!3823 = distinct !DILexicalBlock(scope: !3812, file: !613, line: 52, column: 7)
!3824 = !DILocation(line: 0, scope: !3812)
!3825 = !DILocation(line: 52, column: 11, scope: !3823)
!3826 = !DILocation(line: 52, column: 31, scope: !3823)
!3827 = !DILocation(line: 52, column: 24, scope: !3823)
!3828 = !DILocation(line: 53, column: 7, scope: !3823)
!3829 = !DILocation(line: 53, column: 14, scope: !3823)
!3830 = !DILocation(line: 53, column: 35, scope: !3823)
!3831 = !{!1357, !1151, i64 32}
!3832 = !DILocation(line: 53, column: 28, scope: !3823)
!3833 = !DILocation(line: 54, column: 7, scope: !3823)
!3834 = !DILocation(line: 54, column: 14, scope: !3823)
!3835 = !{!1357, !1151, i64 72}
!3836 = !DILocation(line: 54, column: 28, scope: !3823)
!3837 = !DILocation(line: 52, column: 7, scope: !3812)
!3838 = !DILocation(line: 117, column: 26, scope: !3822)
!3839 = !DILocation(line: 117, column: 19, scope: !3822)
!3840 = !DILocation(line: 0, scope: !3822)
!3841 = !DILocation(line: 118, column: 15, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3822, file: !613, line: 118, column: 11)
!3843 = !DILocation(line: 118, column: 11, scope: !3822)
!3844 = !DILocation(line: 129, column: 11, scope: !3822)
!3845 = !DILocation(line: 129, column: 18, scope: !3822)
!3846 = !DILocation(line: 130, column: 11, scope: !3822)
!3847 = !DILocation(line: 130, column: 19, scope: !3822)
!3848 = !{!1357, !1358, i64 144}
!3849 = !DILocation(line: 161, column: 7, scope: !3822)
!3850 = !DILocation(line: 163, column: 10, scope: !3812)
!3851 = !DILocation(line: 163, column: 3, scope: !3812)
!3852 = !DILocation(line: 164, column: 1, scope: !3812)
!3853 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !654, file: !654, line: 86, type: !3854, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !653, retainedNodes: !3860)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!93, !3856, !36, !93, !3857}
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2041, line: 6, baseType: !3859)
!3859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !344, line: 21, baseType: !660)
!3860 = !{!3861, !3862, !3863, !3864, !3865, !3866, !3867}
!3861 = !DILocalVariable(name: "pwc", arg: 1, scope: !3853, file: !654, line: 86, type: !3856)
!3862 = !DILocalVariable(name: "s", arg: 2, scope: !3853, file: !654, line: 86, type: !36)
!3863 = !DILocalVariable(name: "n", arg: 3, scope: !3853, file: !654, line: 86, type: !93)
!3864 = !DILocalVariable(name: "ps", arg: 4, scope: !3853, file: !654, line: 86, type: !3857)
!3865 = !DILocalVariable(name: "ret", scope: !3853, file: !654, line: 88, type: !93)
!3866 = !DILocalVariable(name: "wc", scope: !3853, file: !654, line: 89, type: !2045)
!3867 = !DILocalVariable(name: "uc", scope: !3868, file: !654, line: 156, type: !164)
!3868 = distinct !DILexicalBlock(scope: !3869, file: !654, line: 155, column: 5)
!3869 = distinct !DILexicalBlock(scope: !3853, file: !654, line: 154, column: 7)
!3870 = !DILocation(line: 0, scope: !3853)
!3871 = !DILocation(line: 89, column: 3, scope: !3853)
!3872 = !DILocation(line: 105, column: 9, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3853, file: !654, line: 105, column: 7)
!3874 = !DILocation(line: 105, column: 7, scope: !3853)
!3875 = !DILocation(line: 145, column: 9, scope: !3853)
!3876 = !DILocation(line: 154, column: 19, scope: !3869)
!3877 = !DILocation(line: 154, column: 31, scope: !3869)
!3878 = !DILocation(line: 154, column: 26, scope: !3869)
!3879 = !DILocation(line: 154, column: 41, scope: !3869)
!3880 = !DILocation(line: 154, column: 7, scope: !3853)
!3881 = !DILocation(line: 156, column: 26, scope: !3868)
!3882 = !DILocation(line: 0, scope: !3868)
!3883 = !DILocation(line: 157, column: 14, scope: !3868)
!3884 = !DILocation(line: 157, column: 12, scope: !3868)
!3885 = !DILocation(line: 163, column: 1, scope: !3853)
!3886 = distinct !DISubprogram(name: "close_stream", scope: !673, file: !673, line: 56, type: !3887, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3891)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!38, !3889}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1318, line: 7, baseType: !679)
!3891 = !{!3892, !3893, !3895, !3896}
!3892 = !DILocalVariable(name: "stream", arg: 1, scope: !3886, file: !673, line: 56, type: !3889)
!3893 = !DILocalVariable(name: "some_pending", scope: !3886, file: !673, line: 58, type: !3894)
!3894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!3895 = !DILocalVariable(name: "prev_fail", scope: !3886, file: !673, line: 59, type: !3894)
!3896 = !DILocalVariable(name: "fclose_fail", scope: !3886, file: !673, line: 60, type: !3894)
!3897 = !DILocation(line: 0, scope: !3886)
!3898 = !DILocation(line: 58, column: 30, scope: !3886)
!3899 = !DILocalVariable(name: "__stream", arg: 1, scope: !3900, file: !1349, line: 135, type: !3889)
!3900 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1349, file: !1349, line: 135, type: !3887, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !3901)
!3901 = !{!3899}
!3902 = !DILocation(line: 0, scope: !3900, inlinedAt: !3903)
!3903 = distinct !DILocation(line: 59, column: 27, scope: !3886)
!3904 = !DILocation(line: 137, column: 10, scope: !3900, inlinedAt: !3903)
!3905 = !DILocation(line: 59, column: 43, scope: !3886)
!3906 = !DILocation(line: 60, column: 29, scope: !3886)
!3907 = !DILocation(line: 60, column: 45, scope: !3886)
!3908 = !DILocation(line: 70, column: 17, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3886, file: !673, line: 70, column: 7)
!3910 = !DILocation(line: 58, column: 50, scope: !3886)
!3911 = !DILocation(line: 70, column: 33, scope: !3909)
!3912 = !DILocation(line: 70, column: 53, scope: !3909)
!3913 = !DILocation(line: 70, column: 59, scope: !3909)
!3914 = !DILocation(line: 70, column: 7, scope: !3886)
!3915 = !DILocation(line: 72, column: 11, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3909, file: !673, line: 71, column: 5)
!3917 = !DILocation(line: 73, column: 9, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3916, file: !673, line: 72, column: 11)
!3919 = !DILocation(line: 73, column: 15, scope: !3918)
!3920 = !DILocation(line: 78, column: 1, scope: !3886)
!3921 = distinct !DISubprogram(name: "hard_locale", scope: !711, file: !711, line: 27, type: !670, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3922)
!3922 = !{!3923, !3924}
!3923 = !DILocalVariable(name: "category", arg: 1, scope: !3921, file: !711, line: 27, type: !38)
!3924 = !DILocalVariable(name: "locale", scope: !3921, file: !711, line: 29, type: !3925)
!3925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2056, elements: !3926)
!3926 = !{!3927}
!3927 = !DISubrange(count: 257)
!3928 = !DILocation(line: 0, scope: !3921)
!3929 = !DILocation(line: 29, column: 3, scope: !3921)
!3930 = !DILocation(line: 29, column: 8, scope: !3921)
!3931 = !DILocation(line: 31, column: 7, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3921, file: !711, line: 31, column: 7)
!3933 = !DILocation(line: 31, column: 7, scope: !3921)
!3934 = !DILocation(line: 34, column: 12, scope: !3921)
!3935 = !DILocation(line: 34, column: 38, scope: !3921)
!3936 = !DILocation(line: 34, column: 41, scope: !3921)
!3937 = !DILocation(line: 34, column: 66, scope: !3921)
!3938 = !DILocation(line: 35, column: 1, scope: !3921)
!3939 = distinct !DISubprogram(name: "locale_charset", scope: !718, file: !718, line: 831, type: !367, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3940)
!3940 = !{!3941}
!3941 = !DILocalVariable(name: "codeset", scope: !3939, file: !718, line: 833, type: !36)
!3942 = !DILocation(line: 847, column: 13, scope: !3939)
!3943 = !DILocation(line: 0, scope: !3939)
!3944 = !DILocation(line: 911, column: 15, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3939, file: !718, line: 911, column: 7)
!3946 = !DILocation(line: 911, column: 7, scope: !3939)
!3947 = !DILocation(line: 1070, column: 13, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3949, file: !718, line: 1070, column: 13)
!3949 = distinct !DILexicalBlock(scope: !3950, file: !718, line: 1060, column: 7)
!3950 = distinct !DILexicalBlock(scope: !3939, file: !718, line: 1019, column: 3)
!3951 = !DILocation(line: 1070, column: 24, scope: !3948)
!3952 = !DILocation(line: 1070, column: 13, scope: !3949)
!3953 = !DILocation(line: 1158, column: 3, scope: !3939)
!3954 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1111, file: !1111, line: 269, type: !3955, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1110, retainedNodes: !3957)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!38, !38, !34, !93}
!3957 = !{!3958, !3959, !3960}
!3958 = !DILocalVariable(name: "category", arg: 1, scope: !3954, file: !1111, line: 269, type: !38)
!3959 = !DILocalVariable(name: "buf", arg: 2, scope: !3954, file: !1111, line: 269, type: !34)
!3960 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3954, file: !1111, line: 269, type: !93)
!3961 = !DILocation(line: 0, scope: !3954)
!3962 = !DILocalVariable(name: "category", arg: 1, scope: !3963, file: !1111, line: 91, type: !38)
!3963 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1111, file: !1111, line: 91, type: !3955, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1110, retainedNodes: !3964)
!3964 = !{!3962, !3965, !3966, !3967, !3968}
!3965 = !DILocalVariable(name: "buf", arg: 2, scope: !3963, file: !1111, line: 91, type: !34)
!3966 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3963, file: !1111, line: 91, type: !93)
!3967 = !DILocalVariable(name: "result", scope: !3963, file: !1111, line: 140, type: !36)
!3968 = !DILocalVariable(name: "length", scope: !3969, file: !1111, line: 154, type: !93)
!3969 = distinct !DILexicalBlock(scope: !3970, file: !1111, line: 153, column: 5)
!3970 = distinct !DILexicalBlock(scope: !3963, file: !1111, line: 142, column: 7)
!3971 = !DILocation(line: 0, scope: !3963, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 274, column: 10, scope: !3954)
!3973 = !DILocalVariable(name: "category", arg: 1, scope: !3974, file: !1111, line: 60, type: !38)
!3974 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1111, file: !1111, line: 60, type: !3975, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1110, retainedNodes: !3977)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!36, !38}
!3977 = !{!3973, !3978}
!3978 = !DILocalVariable(name: "result", scope: !3974, file: !1111, line: 62, type: !36)
!3979 = !DILocation(line: 0, scope: !3974, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 140, column: 24, scope: !3963, inlinedAt: !3972)
!3981 = !DILocation(line: 62, column: 24, scope: !3974, inlinedAt: !3980)
!3982 = !DILocation(line: 142, column: 14, scope: !3970, inlinedAt: !3972)
!3983 = !DILocation(line: 142, column: 7, scope: !3963, inlinedAt: !3972)
!3984 = !DILocation(line: 145, column: 19, scope: !3985, inlinedAt: !3972)
!3985 = distinct !DILexicalBlock(scope: !3986, file: !1111, line: 145, column: 11)
!3986 = distinct !DILexicalBlock(scope: !3970, file: !1111, line: 143, column: 5)
!3987 = !DILocation(line: 145, column: 11, scope: !3986, inlinedAt: !3972)
!3988 = !DILocation(line: 149, column: 16, scope: !3985, inlinedAt: !3972)
!3989 = !DILocation(line: 149, column: 9, scope: !3985, inlinedAt: !3972)
!3990 = !DILocation(line: 154, column: 23, scope: !3969, inlinedAt: !3972)
!3991 = !DILocation(line: 0, scope: !3969, inlinedAt: !3972)
!3992 = !DILocation(line: 155, column: 18, scope: !3993, inlinedAt: !3972)
!3993 = distinct !DILexicalBlock(scope: !3969, file: !1111, line: 155, column: 11)
!3994 = !DILocation(line: 155, column: 11, scope: !3969, inlinedAt: !3972)
!3995 = !DILocation(line: 157, column: 39, scope: !3996, inlinedAt: !3972)
!3996 = distinct !DILexicalBlock(scope: !3993, file: !1111, line: 156, column: 9)
!3997 = !DILocalVariable(name: "__dest", arg: 1, scope: !3998, file: !2298, line: 31, type: !3692)
!3998 = distinct !DISubprogram(name: "memcpy", scope: !2298, file: !2298, line: 31, type: !3690, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1110, retainedNodes: !3999)
!3999 = !{!3997, !4000, !4001}
!4000 = !DILocalVariable(name: "__src", arg: 2, scope: !3998, file: !2298, line: 31, type: !3693)
!4001 = !DILocalVariable(name: "__len", arg: 3, scope: !3998, file: !2298, line: 31, type: !93)
!4002 = !DILocation(line: 0, scope: !3998, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 157, column: 11, scope: !3996, inlinedAt: !3972)
!4004 = !DILocation(line: 34, column: 10, scope: !3998, inlinedAt: !4003)
!4005 = !DILocation(line: 158, column: 11, scope: !3996, inlinedAt: !3972)
!4006 = !DILocation(line: 162, column: 23, scope: !4007, inlinedAt: !3972)
!4007 = distinct !DILexicalBlock(scope: !4008, file: !1111, line: 162, column: 15)
!4008 = distinct !DILexicalBlock(scope: !3993, file: !1111, line: 161, column: 9)
!4009 = !DILocation(line: 162, column: 15, scope: !4008, inlinedAt: !3972)
!4010 = !DILocation(line: 167, column: 44, scope: !4011, inlinedAt: !3972)
!4011 = distinct !DILexicalBlock(scope: !4007, file: !1111, line: 163, column: 13)
!4012 = !DILocation(line: 0, scope: !3998, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 167, column: 15, scope: !4011, inlinedAt: !3972)
!4014 = !DILocation(line: 34, column: 10, scope: !3998, inlinedAt: !4013)
!4015 = !DILocation(line: 168, column: 15, scope: !4011, inlinedAt: !3972)
!4016 = !DILocation(line: 168, column: 32, scope: !4011, inlinedAt: !3972)
!4017 = !DILocation(line: 169, column: 13, scope: !4011, inlinedAt: !3972)
!4018 = !DILocation(line: 0, scope: !3970, inlinedAt: !3972)
!4019 = !DILocation(line: 274, column: 3, scope: !3954)
!4020 = distinct !DISubprogram(name: "setlocale_null", scope: !1111, file: !1111, line: 301, type: !3975, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1110, retainedNodes: !4021)
!4021 = !{!4022}
!4022 = !DILocalVariable(name: "category", arg: 1, scope: !4020, file: !1111, line: 301, type: !38)
!4023 = !DILocation(line: 0, scope: !4020)
!4024 = !DILocation(line: 0, scope: !3974, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 304, column: 10, scope: !4020)
!4026 = !DILocation(line: 62, column: 24, scope: !3974, inlinedAt: !4025)
!4027 = !DILocation(line: 304, column: 3, scope: !4020)
