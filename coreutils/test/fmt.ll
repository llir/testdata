; ModuleID = 'coreutils-8.32/src/fmt.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.Word = type { i8*, i32, i32, i8, i32, i64, %struct.Word* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Usage: %s [-WIDTH] [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [129 x i8] c"Reformat each paragraph in the FILE(s), writing to standard output.\0AThe option -WIDTH is an abbreviated form of --width=DIGITS.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [278 x i8] c"  -c, --crown-margin        preserve indentation of first two lines\0A  -p, --prefix=STRING       reformat only lines beginning with STRING,\0A                              reattaching the prefix to reformatted lines\0A  -s, --split-only          split long lines, but do not refill\0A\00", align 1
@.str.4 = private unnamed_addr constant [286 x i8] c"  -t, --tagged-paragraph    indentation of first line different from second\0A  -u, --uniform-spacing     one space between words, two after sentences\0A  -w, --width=WIDTH         maximum line width (default of 75 columns)\0A  -g, --goal=WIDTH          goal width (default of 93% of width)\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"fmt\00", align 1
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
@uniform = internal unnamed_addr global i1 false, align 1, !dbg !0
@split = internal unnamed_addr global i1 false, align 1, !dbg !257
@tagged = internal unnamed_addr global i1 false, align 1, !dbg !258
@crown = internal unnamed_addr global i1 false, align 1, !dbg !259
@max_width = internal unnamed_addr global i32 0, align 4, !dbg !196
@prefix = internal unnamed_addr global i8* null, align 8, !dbg !194
@prefix_full_length = internal unnamed_addr global i32 0, align 4, !dbg !198
@prefix_lead_space = internal unnamed_addr global i32 0, align 4, !dbg !200
@prefix_length = internal unnamed_addr global i32 0, align 4, !dbg !202
@.str.11 = private unnamed_addr constant [21 x i8] c"0123456789cstuw:p:g:\00", align 1
@long_options = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 1, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 1, i32* null, i32 103 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !206
@.str.12 = private unnamed_addr constant [94 x i8] c"invalid option -- %c; -WIDTH is recognized only when it is the first\0Aoption; use -w N instead\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"Ross Paterson\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"invalid width\00", align 1
@goal_width = internal unnamed_addr global i32 0, align 4, !dbg !204
@optind = external local_unnamed_addr global i32, align 4
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@tabs = internal unnamed_addr global i1 false, align 1, !dbg !260
@other_indent = internal unnamed_addr global i32 0, align 4, !dbg !213
@next_char = internal unnamed_addr global i32 0, align 4, !dbg !219
@last_line_length = internal unnamed_addr global i32 0, align 4, !dbg !221
@next_prefix_indent = internal unnamed_addr global i32 0, align 4, !dbg !217
@in_column = internal unnamed_addr global i32 0, align 4, !dbg !215
@out_column = internal unnamed_addr global i32 0, align 4, !dbg !223
@prefix_indent = internal unnamed_addr global i32 0, align 4, !dbg !225
@first_indent = internal unnamed_addr global i32 0, align 4, !dbg !227
@parabuf = internal global [5000 x i8] zeroinitializer, align 16, !dbg !229
@wptr = internal unnamed_addr global i8* null, align 8, !dbg !234
@unused_word_type = internal global [1000 x %struct.Word] zeroinitializer, align 16, !dbg !236
@word_limit = internal unnamed_addr global %struct.Word* null, align 8, !dbg !255
@.str.46 = private unnamed_addr constant [18 x i8] c"word < word_limit\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"src/fmt.c\00", align 1
@__PRETTY_FUNCTION__.get_paragraph = private unnamed_addr constant [28 x i8] c"_Bool get_paragraph(FILE *)\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"(['`\22\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c")]'\22\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"crown-margin\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"split-only\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"tagged-paragraph\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"uniform-spacing\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"goal\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), align 8, !dbg !261
@.str.50 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !266
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !309
@.str.53 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.54 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !311
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !317
@.str.64 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.65 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.66 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.69, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.70, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.71, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.76, i32 0, i32 0), i8* null], align 16, !dbg !358
@.str.67 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.68 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.69 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.70 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.71 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.72 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.73 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.74 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.75 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.76 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !438
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !442
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !444
@.str.11.77 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.78 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.79 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.80 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.81 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.82 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.83 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !451
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !458
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !446
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !460
@.str.90 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.91 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.92 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.93 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.94 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.95 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.96 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.97 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.98 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.99 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.100 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.101 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.102 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.103 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.104 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.105 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.108 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.109 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.110 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.111 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.112 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.113 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.114 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !466
@.str.1.125 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.132 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.133 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.148 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.151 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.152 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1202 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1207, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i32 %0, metadata !1206, metadata !DIExpression()), !dbg !1228
  %3 = icmp eq i32 %0, 0, !dbg !1229
  br i1 %3, label %9, label %4, !dbg !1230

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1231, !tbaa !1233
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #18, !dbg !1231
  %7 = load i8*, i8** @program_name, align 8, !dbg !1231, !tbaa !1233
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #18, !dbg !1231
  br label %70, !dbg !1231

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 5) #18, !dbg !1237
  %11 = load i8*, i8** @program_name, align 8, !dbg !1237, !tbaa !1233
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #18, !dbg !1237
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.2, i64 0, i64 0), i32 5) #18, !dbg !1238
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1238, !tbaa !1233
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1238
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i64 0, i64 0), i32 5) #18, !dbg !1239
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1239, !tbaa !1233
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #18, !dbg !1239
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #18, !dbg !1242
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1242, !tbaa !1233
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20) #18, !dbg !1242
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([278 x i8], [278 x i8]* @.str.3, i64 0, i64 0), i32 5) #18, !dbg !1245
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1245, !tbaa !1233
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1245
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([286 x i8], [286 x i8]* @.str.4, i64 0, i64 0), i32 5) #18, !dbg !1246
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1246, !tbaa !1233
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1246
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #18, !dbg !1247
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1247, !tbaa !1233
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1247
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #18, !dbg !1248
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1248, !tbaa !1233
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !1248
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), metadata !1211, metadata !DIExpression()) #18, !dbg !1249
  %34 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1250
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %34) #18, !dbg !1250
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %34, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #18, !dbg !1224
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), metadata !1212, metadata !DIExpression()) #18, !dbg !1249
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1213, metadata !DIExpression()) #18, !dbg !1249
  %35 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1251
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1213, metadata !DIExpression()) #18, !dbg !1249
  br label %36, !dbg !1252

36:                                               ; preds = %41, %9
  %37 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %38 = phi %struct.infomap* [ %42, %41 ], [ %35, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !1213, metadata !DIExpression()) #18, !dbg !1249
  %39 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %37) #21, !dbg !1253
  %40 = icmp eq i32 %39, 0, !dbg !1253
  br i1 %40, label %46, label %41, !dbg !1252

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 1, !dbg !1254
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !1213, metadata !DIExpression()) #18, !dbg !1249
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 0, i32 0, !dbg !1255
  %44 = load i8*, i8** %43, align 8, !dbg !1255, !tbaa !1256
  %45 = icmp eq i8* %44, null, !dbg !1258
  br i1 %45, label %46, label %36, !dbg !1259, !llvm.loop !1260

46:                                               ; preds = %41, %36
  %47 = phi %struct.infomap* [ %42, %41 ], [ %38, %36 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !1213, metadata !DIExpression()) #18, !dbg !1249
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !1213, metadata !DIExpression()) #18, !dbg !1249
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 1, !dbg !1261
  %49 = load i8*, i8** %48, align 8, !dbg !1261, !tbaa !1263
  %50 = icmp eq i8* %49, null, !dbg !1264
  %51 = select i1 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %49, !dbg !1265
  call void @llvm.dbg.value(metadata i8* %51, metadata !1212, metadata !DIExpression()) #18, !dbg !1249
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #18, !dbg !1266
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #18, !dbg !1266
  %54 = tail call i8* @setlocale(i32 5, i8* null) #18, !dbg !1267
  call void @llvm.dbg.value(metadata i8* %54, metadata !1220, metadata !DIExpression()) #18, !dbg !1249
  %55 = icmp eq i8* %54, null, !dbg !1268
  br i1 %55, label %63, label %56, !dbg !1270

56:                                               ; preds = %46
  %57 = tail call i32 @strncmp(i8* nonnull %54, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #21, !dbg !1271
  %58 = icmp eq i32 %57, 0, !dbg !1271
  br i1 %58, label %63, label %59, !dbg !1272

59:                                               ; preds = %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.33, i64 0, i64 0), i32 5) #18, !dbg !1273
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1273, !tbaa !1233
  %62 = tail call i32 @fputs_unlocked(i8* %60, %struct._IO_FILE* %61) #18, !dbg !1273
  br label %63, !dbg !1275

63:                                               ; preds = %46, %56, %59
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 5) #18, !dbg !1276
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !1276
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #18, !dbg !1277
  %67 = icmp eq i8* %51, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), !dbg !1277
  %68 = select i1 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !1277
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %66, i8* %51, i8* %68) #18, !dbg !1277
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %34) #18, !dbg !1278
  br label %70

70:                                               ; preds = %63, %4
  tail call void @exit(i32 %0) #22, !dbg !1279
  unreachable, !dbg !1279
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !45 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !55 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !120 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1280 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1284, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8** %1, metadata !1285, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8 1, metadata !1287, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8* null, metadata !1288, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8* null, metadata !1289, metadata !DIExpression()), !dbg !1302
  %3 = load i8*, i8** %1, align 8, !dbg !1303, !tbaa !1233
  tail call void @set_program_name(i8* %3) #18, !dbg !1304
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !1305
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !1306
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !1307
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #18, !dbg !1308
  store i1 false, i1* @uniform, align 1, !dbg !1309
  store i1 false, i1* @split, align 1, !dbg !1310
  store i1 false, i1* @tagged, align 1, !dbg !1311
  store i1 false, i1* @crown, align 1, !dbg !1312
  store i32 75, i32* @max_width, align 4, !dbg !1313, !tbaa !1314
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** @prefix, align 8, !dbg !1316, !tbaa !1233
  store i32 0, i32* @prefix_full_length, align 4, !dbg !1317, !tbaa !1314
  store i32 0, i32* @prefix_lead_space, align 4, !dbg !1318, !tbaa !1314
  store i32 0, i32* @prefix_length, align 4, !dbg !1319, !tbaa !1314
  %8 = icmp sgt i32 %0, 1, !dbg !1320
  br i1 %8, label %9, label %25, !dbg !1322

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !1323
  %11 = load i8*, i8** %10, align 8, !dbg !1323, !tbaa !1233
  %12 = load i8, i8* %11, align 1, !dbg !1323, !tbaa !1324
  %13 = icmp eq i8 %12, 45, !dbg !1325
  br i1 %13, label %14, label %25, !dbg !1326

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1327
  %16 = load i8, i8* %15, align 1, !dbg !1327, !tbaa !1324
  %17 = sext i8 %16 to i32, !dbg !1327
  %18 = add nsw i32 %17, -48, !dbg !1327
  %19 = icmp ult i32 %18, 10, !dbg !1327
  br i1 %19, label %20, label %25, !dbg !1328

20:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %15, metadata !1288, metadata !DIExpression()), !dbg !1302
  %21 = bitcast i8** %1 to i64*, !dbg !1329
  %22 = load i64, i64* %21, align 8, !dbg !1329, !tbaa !1233
  %23 = bitcast i8** %10 to i64*, !dbg !1331
  store i64 %22, i64* %23, align 8, !dbg !1331, !tbaa !1233
  call void @llvm.dbg.value(metadata i8** %10, metadata !1285, metadata !DIExpression()), !dbg !1302
  %24 = add nsw i32 %0, -1, !dbg !1332
  call void @llvm.dbg.value(metadata i32 %24, metadata !1284, metadata !DIExpression()), !dbg !1302
  br label %25, !dbg !1333

25:                                               ; preds = %20, %14, %9, %2
  %26 = phi i8** [ %10, %20 ], [ %1, %14 ], [ %1, %9 ], [ %1, %2 ]
  %27 = phi i8* [ %15, %20 ], [ null, %14 ], [ null, %9 ], [ null, %2 ], !dbg !1302
  %28 = phi i32 [ %24, %20 ], [ %0, %14 ], [ %0, %9 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i32 %28, metadata !1284, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8* %27, metadata !1288, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8** %26, metadata !1285, metadata !DIExpression()), !dbg !1302
  br label %29, !dbg !1334

29:                                               ; preds = %46, %25
  %30 = phi i8* [ %47, %46 ], [ %27, %25 ]
  %31 = phi i8* [ %33, %46 ], [ null, %25 ]
  br label %32, !dbg !1334

32:                                               ; preds = %29, %48
  %33 = phi i8* [ %31, %29 ], [ %49, %48 ]
  br label %34, !dbg !1334

34:                                               ; preds = %81, %32
  call void @llvm.dbg.value(metadata i8* %33, metadata !1289, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8* %30, metadata !1288, metadata !DIExpression()), !dbg !1302
  %35 = tail call i32 @getopt_long(i32 %28, i8** %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #18, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %35, metadata !1286, metadata !DIExpression()), !dbg !1302
  switch i32 %35, label %36 [
    i32 -1, label %86
    i32 99, label %42
    i32 115, label %43
    i32 116, label %44
    i32 117, label %45
    i32 119, label %46
    i32 103, label %48
    i32 112, label %50
    i32 -130, label %82
    i32 -131, label %83
  ], !dbg !1334

36:                                               ; preds = %34
  %37 = add i32 %35, -48, !dbg !1336
  %38 = icmp ult i32 %37, 10, !dbg !1336
  br i1 %38, label %39, label %41, !dbg !1339

39:                                               ; preds = %36
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.12, i64 0, i64 0), i32 5) #18, !dbg !1340
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %40, i32 %35) #18, !dbg !1341
  br label %41, !dbg !1341

41:                                               ; preds = %39, %36
  tail call void @usage(i32 1) #23, !dbg !1342
  unreachable, !dbg !1342

42:                                               ; preds = %34
  store i1 true, i1* @crown, align 1, !dbg !1343
  br label %81, !dbg !1344

43:                                               ; preds = %34
  store i1 true, i1* @split, align 1, !dbg !1345
  br label %81, !dbg !1346

44:                                               ; preds = %34
  store i1 true, i1* @tagged, align 1, !dbg !1347
  br label %81, !dbg !1348

45:                                               ; preds = %34
  store i1 true, i1* @uniform, align 1, !dbg !1349
  br label %81, !dbg !1350

46:                                               ; preds = %34
  %47 = load i8*, i8** @optarg, align 8, !dbg !1351, !tbaa !1233
  call void @llvm.dbg.value(metadata i8* %47, metadata !1288, metadata !DIExpression()), !dbg !1302
  br label %29, !dbg !1352, !llvm.loop !1353

48:                                               ; preds = %34
  %49 = load i8*, i8** @optarg, align 8, !dbg !1355, !tbaa !1233
  call void @llvm.dbg.value(metadata i8* %49, metadata !1289, metadata !DIExpression()), !dbg !1302
  br label %32, !dbg !1356, !llvm.loop !1353

50:                                               ; preds = %34
  %51 = load i8*, i8** @optarg, align 8, !dbg !1357, !tbaa !1233
  call void @llvm.dbg.value(metadata i8* %51, metadata !1358, metadata !DIExpression()) #18, !dbg !1364
  store i32 0, i32* @prefix_lead_space, align 4, !dbg !1366, !tbaa !1314
  call void @llvm.dbg.value(metadata i8* %51, metadata !1358, metadata !DIExpression()) #18, !dbg !1364
  %52 = load i8, i8* %51, align 1, !dbg !1367, !tbaa !1324
  %53 = icmp eq i8 %52, 32, !dbg !1368
  br i1 %53, label %54, label %62, !dbg !1369

54:                                               ; preds = %50, %54
  %55 = phi i32 [ %57, %54 ], [ 0, %50 ], !dbg !1364
  %56 = phi i8* [ %58, %54 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8* %56, metadata !1358, metadata !DIExpression()) #18, !dbg !1364
  %57 = add nuw nsw i32 %55, 1, !dbg !1370
  %58 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !1372
  call void @llvm.dbg.value(metadata i8* %58, metadata !1358, metadata !DIExpression()) #18, !dbg !1364
  %59 = load i8, i8* %58, align 1, !dbg !1367, !tbaa !1324
  %60 = icmp eq i8 %59, 32, !dbg !1368
  br i1 %60, label %54, label %61, !dbg !1369, !llvm.loop !1373

61:                                               ; preds = %54
  store i32 %57, i32* @prefix_lead_space, align 4, !dbg !1370, !tbaa !1314
  br label %62, !dbg !1369

62:                                               ; preds = %61, %50
  %63 = phi i8* [ %58, %61 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8* %63, metadata !1358, metadata !DIExpression()) #18, !dbg !1364
  store i8* %63, i8** @prefix, align 8, !dbg !1375, !tbaa !1233
  %64 = tail call i64 @strlen(i8* nonnull %63) #21, !dbg !1376
  %65 = trunc i64 %64 to i32, !dbg !1376
  store i32 %65, i32* @prefix_full_length, align 4, !dbg !1377, !tbaa !1314
  %66 = shl i64 %64, 32, !dbg !1378
  %67 = ashr exact i64 %66, 32, !dbg !1378
  %68 = getelementptr inbounds i8, i8* %63, i64 %67, !dbg !1378
  call void @llvm.dbg.value(metadata i8* %68, metadata !1363, metadata !DIExpression()) #18, !dbg !1364
  br label %69, !dbg !1379

69:                                               ; preds = %72, %62
  %70 = phi i8* [ %68, %62 ], [ %73, %72 ], !dbg !1364
  call void @llvm.dbg.value(metadata i8* %70, metadata !1363, metadata !DIExpression()) #18, !dbg !1364
  %71 = icmp ugt i8* %70, %63, !dbg !1380
  br i1 %71, label %72, label %76, !dbg !1381

72:                                               ; preds = %69
  %73 = getelementptr inbounds i8, i8* %70, i64 -1, !dbg !1382
  %74 = load i8, i8* %73, align 1, !dbg !1382, !tbaa !1324
  %75 = icmp eq i8 %74, 32, !dbg !1383
  br i1 %75, label %69, label %76, !dbg !1379, !llvm.loop !1384

76:                                               ; preds = %69, %72
  call void @llvm.dbg.value(metadata i8* %70, metadata !1363, metadata !DIExpression()) #18, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %70, metadata !1363, metadata !DIExpression()) #18, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %70, metadata !1363, metadata !DIExpression()) #18, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %70, metadata !1363, metadata !DIExpression()) #18, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %70, metadata !1363, metadata !DIExpression()) #18, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %70, metadata !1363, metadata !DIExpression()) #18, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %70, metadata !1363, metadata !DIExpression()) #18, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %70, metadata !1363, metadata !DIExpression()) #18, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %70, metadata !1363, metadata !DIExpression()) #18, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %70, metadata !1363, metadata !DIExpression()) #18, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %70, metadata !1363, metadata !DIExpression()) #18, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %70, metadata !1363, metadata !DIExpression()) #18, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %70, metadata !1363, metadata !DIExpression()) #18, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %70, metadata !1363, metadata !DIExpression()) #18, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %70, metadata !1363, metadata !DIExpression()) #18, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %70, metadata !1363, metadata !DIExpression()) #18, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %70, metadata !1363, metadata !DIExpression()) #18, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %70, metadata !1363, metadata !DIExpression()) #18, !dbg !1364
  store i8 0, i8* %70, align 1, !dbg !1386, !tbaa !1324
  %77 = ptrtoint i8* %70 to i64, !dbg !1387
  %78 = ptrtoint i8* %63 to i64, !dbg !1387
  %79 = sub i64 %77, %78, !dbg !1387
  %80 = trunc i64 %79 to i32, !dbg !1388
  store i32 %80, i32* @prefix_length, align 4, !dbg !1389, !tbaa !1314
  br label %81, !dbg !1390

81:                                               ; preds = %76, %45, %44, %43, %42
  br label %34, !dbg !1302, !llvm.loop !1353

82:                                               ; preds = %34
  tail call void @usage(i32 0) #23, !dbg !1391
  unreachable, !dbg !1391

83:                                               ; preds = %34
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1392, !tbaa !1233
  %85 = load i8*, i8** @Version, align 8, !dbg !1392, !tbaa !1233
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* null) #18, !dbg !1392
  tail call void @exit(i32 0) #22, !dbg !1392
  unreachable, !dbg !1392

86:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i8* %30, metadata !1288, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8* %33, metadata !1289, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8* %30, metadata !1288, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8* %33, metadata !1289, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8* %30, metadata !1288, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8* %33, metadata !1289, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8* %30, metadata !1288, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8* %33, metadata !1289, metadata !DIExpression()), !dbg !1302
  %87 = icmp eq i8* %30, null, !dbg !1393
  br i1 %87, label %88, label %90, !dbg !1395

88:                                               ; preds = %86
  %89 = load i32, i32* @max_width, align 4, !dbg !1396, !tbaa !1314
  br label %94, !dbg !1395

90:                                               ; preds = %86
  %91 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 5) #18, !dbg !1398
  %92 = tail call i64 @xdectoumax(i8* nonnull %30, i64 0, i64 2500, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* %91, i32 0) #18, !dbg !1400
  %93 = trunc i64 %92 to i32, !dbg !1400
  store i32 %93, i32* @max_width, align 4, !dbg !1401, !tbaa !1314
  br label %94, !dbg !1402

94:                                               ; preds = %88, %90
  %95 = phi i32 [ %89, %88 ], [ %93, %90 ], !dbg !1396
  %96 = icmp eq i8* %33, null, !dbg !1403
  br i1 %96, label %104, label %97, !dbg !1404

97:                                               ; preds = %94
  %98 = sext i32 %95 to i64, !dbg !1405
  %99 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 5) #18, !dbg !1407
  %100 = tail call i64 @xdectoumax(i8* nonnull %33, i64 0, i64 %98, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* %99, i32 0) #18, !dbg !1408
  %101 = trunc i64 %100 to i32, !dbg !1408
  store i32 %101, i32* @goal_width, align 4, !dbg !1409, !tbaa !1314
  br i1 %87, label %102, label %107, !dbg !1410

102:                                              ; preds = %97
  %103 = add nsw i32 %101, 10, !dbg !1411
  store i32 %103, i32* @max_width, align 4, !dbg !1413, !tbaa !1314
  br label %107, !dbg !1414

104:                                              ; preds = %94
  %105 = mul nsw i32 %95, 187, !dbg !1415
  %106 = sdiv i32 %105, 200, !dbg !1417
  store i32 %106, i32* @goal_width, align 4, !dbg !1418, !tbaa !1314
  br label %107

107:                                              ; preds = %97, %102, %104
  %108 = load i32, i32* @optind, align 4, !dbg !1419, !tbaa !1314
  %109 = icmp eq i32 %108, %28, !dbg !1420
  br i1 %109, label %112, label %110, !dbg !1421

110:                                              ; preds = %107
  call void @llvm.dbg.value(metadata i8 1, metadata !1287, metadata !DIExpression()), !dbg !1302
  %111 = icmp slt i32 %108, %28, !dbg !1422
  br i1 %111, label %114, label %144, !dbg !1423

112:                                              ; preds = %107
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1424, !tbaa !1233
  tail call fastcc void @fmt(%struct._IO_FILE* %113), !dbg !1425
  br label %144, !dbg !1425

114:                                              ; preds = %110, %139
  %115 = phi i32 [ %142, %139 ], [ %108, %110 ]
  %116 = phi i8 [ %140, %139 ], [ 1, %110 ]
  call void @llvm.dbg.value(metadata i8 %116, metadata !1287, metadata !DIExpression()), !dbg !1302
  %117 = sext i32 %115 to i64, !dbg !1426
  %118 = getelementptr inbounds i8*, i8** %26, i64 %117, !dbg !1426
  %119 = load i8*, i8** %118, align 8, !dbg !1426, !tbaa !1233
  call void @llvm.dbg.value(metadata i8* %119, metadata !1290, metadata !DIExpression()), !dbg !1427
  %120 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %119, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #21, !dbg !1428
  %121 = icmp eq i32 %120, 0, !dbg !1428
  br i1 %121, label %122, label %124, !dbg !1429

122:                                              ; preds = %114
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1430, !tbaa !1233
  tail call fastcc void @fmt(%struct._IO_FILE* %123), !dbg !1431
  br label %139, !dbg !1431

124:                                              ; preds = %114
  %125 = tail call %struct._IO_FILE* @fopen(i8* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)), !dbg !1432
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %125, metadata !1296, metadata !DIExpression()), !dbg !1433
  %126 = icmp eq %struct._IO_FILE* %125, null, !dbg !1434
  br i1 %126, label %134, label %127, !dbg !1436

127:                                              ; preds = %124
  tail call fastcc void @fmt(%struct._IO_FILE* nonnull %125), !dbg !1437
  %128 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %125) #18, !dbg !1439
  %129 = icmp eq i32 %128, -1, !dbg !1441
  br i1 %129, label %130, label %139, !dbg !1442

130:                                              ; preds = %127
  %131 = tail call i32* @__errno_location() #24, !dbg !1443
  %132 = load i32, i32* %131, align 4, !dbg !1443, !tbaa !1314
  %133 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %119) #18, !dbg !1445
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %133) #18, !dbg !1446
  call void @llvm.dbg.value(metadata i8 0, metadata !1287, metadata !DIExpression()), !dbg !1302
  br label %139, !dbg !1447

134:                                              ; preds = %124
  %135 = tail call i32* @__errno_location() #24, !dbg !1448
  %136 = load i32, i32* %135, align 4, !dbg !1448, !tbaa !1314
  %137 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i32 5) #18, !dbg !1450
  %138 = tail call i8* @quotearg_style(i32 4, i8* %119) #18, !dbg !1451
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %136, i8* %137, i8* %138) #18, !dbg !1452
  call void @llvm.dbg.value(metadata i8 0, metadata !1287, metadata !DIExpression()), !dbg !1302
  br label %139

139:                                              ; preds = %134, %130, %127, %122
  %140 = phi i8 [ %116, %122 ], [ 0, %130 ], [ %116, %127 ], [ 0, %134 ], !dbg !1302
  call void @llvm.dbg.value(metadata i8 %140, metadata !1287, metadata !DIExpression()), !dbg !1302
  %141 = load i32, i32* @optind, align 4, !dbg !1453, !tbaa !1314
  %142 = add nsw i32 %141, 1, !dbg !1453
  store i32 %142, i32* @optind, align 4, !dbg !1453, !tbaa !1314
  %143 = icmp slt i32 %142, %28, !dbg !1422
  br i1 %143, label %114, label %144, !dbg !1423, !llvm.loop !1454

144:                                              ; preds = %139, %110, %112
  %145 = phi i8 [ 1, %112 ], [ 1, %110 ], [ %140, %139 ], !dbg !1456
  call void @llvm.dbg.value(metadata i8 %145, metadata !1287, metadata !DIExpression()), !dbg !1302
  %146 = and i8 %145, 1, !dbg !1457
  %147 = xor i8 %146, 1, !dbg !1457
  %148 = zext i8 %147 to i32, !dbg !1457
  ret i32 %148, !dbg !1458
}

; Function Attrs: nounwind
declare !dbg !124 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !127 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !130 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !137 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !152 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @fmt(%struct._IO_FILE* %0) unnamed_addr #8 !dbg !1459 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1463, metadata !DIExpression()), !dbg !1464
  tail call void @fadvise(%struct._IO_FILE* %0, i32 2) #18, !dbg !1465
  store i1 false, i1* @tabs, align 1, !dbg !1466
  store i32 0, i32* @other_indent, align 4, !dbg !1467, !tbaa !1314
  %2 = tail call fastcc i32 @get_prefix(%struct._IO_FILE* %0), !dbg !1468
  store i32 %2, i32* @next_char, align 4, !dbg !1469, !tbaa !1314
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1470
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1470
  br label %5, !dbg !1495

5:                                                ; preds = %354, %1
  %6 = phi i32 [ %355, %354 ], [ %2, %1 ], !dbg !1496
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1492, metadata !DIExpression()) #18, !dbg !1497
  store i32 0, i32* @last_line_length, align 4, !dbg !1498, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 %6, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  br label %7, !dbg !1499

7:                                                ; preds = %208, %5
  %8 = phi i32 [ %6, %5 ], [ %209, %208 ], !dbg !1497
  call void @llvm.dbg.value(metadata i32 %8, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  switch i32 %8, label %9 [
    i32 -1, label %18
    i32 10, label %18
  ], !dbg !1500

9:                                                ; preds = %7
  %10 = load i32, i32* @next_prefix_indent, align 4, !dbg !1501, !tbaa !1314
  %11 = load i32, i32* @prefix_lead_space, align 4, !dbg !1502, !tbaa !1314
  %12 = icmp slt i32 %10, %11, !dbg !1503
  br i1 %12, label %20, label %13, !dbg !1504

13:                                               ; preds = %9
  %14 = load i32, i32* @in_column, align 4, !dbg !1505, !tbaa !1314
  %15 = load i32, i32* @prefix_full_length, align 4, !dbg !1506, !tbaa !1314
  %16 = add nsw i32 %15, %10, !dbg !1507
  %17 = icmp slt i32 %14, %16, !dbg !1508
  br i1 %17, label %18, label %210, !dbg !1499

18:                                               ; preds = %13, %7, %7
  %19 = load i32, i32* @next_prefix_indent, align 4, !dbg !1509, !tbaa !1314
  br label %20, !dbg !1511

20:                                               ; preds = %18, %9
  %21 = phi i32 [ %19, %18 ], [ %10, %9 ], !dbg !1509
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1483, metadata !DIExpression()) #18, !dbg !1512
  call void @llvm.dbg.value(metadata i32 %8, metadata !1484, metadata !DIExpression()) #18, !dbg !1512
  store i32 0, i32* @out_column, align 4, !dbg !1511, !tbaa !1314
  %22 = load i32, i32* @in_column, align 4, !dbg !1513, !tbaa !1314
  %23 = icmp sgt i32 %22, %21, !dbg !1514
  br i1 %23, label %25, label %24, !dbg !1515

24:                                               ; preds = %20
  switch i32 %8, label %25 [
    i32 -1, label %169
    i32 10, label %169
  ], !dbg !1516

25:                                               ; preds = %24, %20
  call void @llvm.dbg.value(metadata i32 %21, metadata !1517, metadata !DIExpression()) #18, !dbg !1522
  call void @llvm.dbg.value(metadata i32 %21, metadata !1520, metadata !DIExpression()) #18, !dbg !1522
  %26 = load i1, i1* @tabs, align 1, !dbg !1525
  br i1 %26, label %27, label %50, !dbg !1527

27:                                               ; preds = %25
  %28 = sdiv i32 %21, 8, !dbg !1528
  %29 = shl nsw i32 %28, 3, !dbg !1530
  call void @llvm.dbg.value(metadata i32 %29, metadata !1521, metadata !DIExpression()) #18, !dbg !1522
  %30 = icmp sgt i32 %21, 7, !dbg !1531
  br i1 %30, label %31, label %50, !dbg !1533

31:                                               ; preds = %27, %44
  %32 = phi i32 [ %48, %44 ], [ 0, %27 ]
  call void @llvm.dbg.value(metadata i32 9, metadata !1534, metadata !DIExpression()) #18, !dbg !1539
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1542, !tbaa !1233
  %34 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %33, i64 0, i32 5, !dbg !1542
  %35 = load i8*, i8** %34, align 8, !dbg !1542, !tbaa !1543
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %33, i64 0, i32 6, !dbg !1542
  %37 = load i8*, i8** %36, align 8, !dbg !1542, !tbaa !1547
  %38 = icmp ult i8* %35, %37, !dbg !1542
  br i1 %38, label %42, label %39, !dbg !1542, !prof !1548, !misexpect !1549

39:                                               ; preds = %31
  %40 = tail call i32 @__overflow(%struct._IO_FILE* %33, i32 9) #18, !dbg !1542
  %41 = load i32, i32* @out_column, align 4, !dbg !1550, !tbaa !1314
  br label %44, !dbg !1542

42:                                               ; preds = %31
  %43 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1542
  store i8* %43, i8** %34, align 8, !dbg !1542, !tbaa !1543
  store i8 9, i8* %35, align 1, !dbg !1542, !tbaa !1324
  br label %44, !dbg !1542

44:                                               ; preds = %42, %39
  %45 = phi i32 [ %41, %39 ], [ %32, %42 ], !dbg !1550
  %46 = sdiv i32 %45, 8, !dbg !1551
  %47 = shl nsw i32 %46, 3, !dbg !1552
  %48 = add i32 %47, 8, !dbg !1552
  store i32 %48, i32* @out_column, align 4, !dbg !1553, !tbaa !1314
  %49 = icmp slt i32 %48, %29, !dbg !1554
  br i1 %49, label %31, label %50, !dbg !1555, !llvm.loop !1556

50:                                               ; preds = %44, %27, %25
  %51 = phi i32 [ 0, %27 ], [ 0, %25 ], [ %48, %44 ], !dbg !1558
  %52 = icmp slt i32 %51, %21, !dbg !1559
  br i1 %52, label %53, label %70, !dbg !1560

53:                                               ; preds = %50, %66
  %54 = phi i32 [ %68, %66 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1534, metadata !DIExpression()) #18, !dbg !1561
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1564, !tbaa !1233
  %56 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %55, i64 0, i32 5, !dbg !1564
  %57 = load i8*, i8** %56, align 8, !dbg !1564, !tbaa !1543
  %58 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %55, i64 0, i32 6, !dbg !1564
  %59 = load i8*, i8** %58, align 8, !dbg !1564, !tbaa !1547
  %60 = icmp ult i8* %57, %59, !dbg !1564
  br i1 %60, label %64, label %61, !dbg !1564, !prof !1548, !misexpect !1549

61:                                               ; preds = %53
  %62 = tail call i32 @__overflow(%struct._IO_FILE* %55, i32 32) #18, !dbg !1564
  %63 = load i32, i32* @out_column, align 4, !dbg !1565, !tbaa !1314
  br label %66, !dbg !1564

64:                                               ; preds = %53
  %65 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !1564
  store i8* %65, i8** %56, align 8, !dbg !1564, !tbaa !1543
  store i8 32, i8* %57, align 1, !dbg !1564, !tbaa !1324
  br label %66, !dbg !1564

66:                                               ; preds = %64, %61
  %67 = phi i32 [ %63, %61 ], [ %54, %64 ], !dbg !1565
  %68 = add nsw i32 %67, 1, !dbg !1565
  store i32 %68, i32* @out_column, align 4, !dbg !1565, !tbaa !1314
  %69 = icmp slt i32 %68, %21, !dbg !1559
  br i1 %69, label %53, label %70, !dbg !1560, !llvm.loop !1566

70:                                               ; preds = %66, %50
  %71 = phi i32 [ %51, %50 ], [ %68, %66 ], !dbg !1568
  call void @llvm.dbg.value(metadata i8* undef, metadata !1485, metadata !DIExpression()) #18, !dbg !1512
  %72 = load i32, i32* @in_column, align 4, !dbg !1571, !tbaa !1314
  %73 = icmp eq i32 %71, %72, !dbg !1572
  br i1 %73, label %102, label %74, !dbg !1573

74:                                               ; preds = %70
  %75 = load i8*, i8** @prefix, align 8, !dbg !1574, !tbaa !1233
  call void @llvm.dbg.value(metadata i8* %75, metadata !1485, metadata !DIExpression()) #18, !dbg !1512
  br label %76, !dbg !1575

76:                                               ; preds = %97, %74
  %77 = phi i32 [ %98, %97 ], [ %72, %74 ]
  %78 = phi i32 [ %100, %97 ], [ %71, %74 ]
  %79 = phi i8* [ %83, %97 ], [ %75, %74 ]
  call void @llvm.dbg.value(metadata i8* %79, metadata !1485, metadata !DIExpression()) #18, !dbg !1512
  %80 = load i8, i8* %79, align 1, !dbg !1576, !tbaa !1324
  %81 = icmp eq i8 %80, 0, !dbg !1573
  br i1 %81, label %102, label %82, !dbg !1575

82:                                               ; preds = %76
  %83 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !1577
  call void @llvm.dbg.value(metadata i8* %83, metadata !1485, metadata !DIExpression()) #18, !dbg !1512
  call void @llvm.dbg.value(metadata i8 %80, metadata !1534, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1578
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1580, !tbaa !1233
  %85 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %84, i64 0, i32 5, !dbg !1580
  %86 = load i8*, i8** %85, align 8, !dbg !1580, !tbaa !1543
  %87 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %84, i64 0, i32 6, !dbg !1580
  %88 = load i8*, i8** %87, align 8, !dbg !1580, !tbaa !1547
  %89 = icmp ult i8* %86, %88, !dbg !1580
  br i1 %89, label %95, label %90, !dbg !1580, !prof !1548, !misexpect !1549

90:                                               ; preds = %82
  %91 = zext i8 %80 to i32, !dbg !1576
  call void @llvm.dbg.value(metadata i8 %80, metadata !1534, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1578
  %92 = tail call i32 @__overflow(%struct._IO_FILE* %84, i32 %91) #18, !dbg !1580
  %93 = load i32, i32* @out_column, align 4, !dbg !1581, !tbaa !1314
  %94 = load i32, i32* @in_column, align 4, !dbg !1571, !tbaa !1314
  br label %97, !dbg !1580

95:                                               ; preds = %82
  %96 = getelementptr inbounds i8, i8* %86, i64 1, !dbg !1580
  store i8* %96, i8** %85, align 8, !dbg !1580, !tbaa !1543
  store i8 %80, i8* %86, align 1, !dbg !1580, !tbaa !1324
  br label %97, !dbg !1580

97:                                               ; preds = %95, %90
  %98 = phi i32 [ %94, %90 ], [ %77, %95 ], !dbg !1571
  %99 = phi i32 [ %93, %90 ], [ %78, %95 ], !dbg !1581
  %100 = add nsw i32 %99, 1, !dbg !1581
  store i32 %100, i32* @out_column, align 4, !dbg !1581, !tbaa !1314
  call void @llvm.dbg.value(metadata i8* %83, metadata !1485, metadata !DIExpression()) #18, !dbg !1512
  %101 = icmp eq i32 %100, %98, !dbg !1572
  br i1 %101, label %102, label %76, !dbg !1573, !llvm.loop !1582

102:                                              ; preds = %97, %76, %70
  %103 = phi i32 [ %71, %70 ], [ %78, %76 ], [ %98, %97 ]
  %104 = phi i32 [ %71, %70 ], [ %77, %76 ], [ %98, %97 ], !dbg !1571
  switch i32 %8, label %105 [
    i32 -1, label %153
    i32 10, label %169
  ], !dbg !1584

105:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i32 undef, metadata !1517, metadata !DIExpression()) #18, !dbg !1586
  call void @llvm.dbg.value(metadata i32 %104, metadata !1520, metadata !DIExpression()) #18, !dbg !1586
  %106 = load i1, i1* @tabs, align 1, !dbg !1588
  br i1 %106, label %107, label %133, !dbg !1589

107:                                              ; preds = %105
  %108 = sdiv i32 %104, 8, !dbg !1590
  %109 = shl nsw i32 %108, 3, !dbg !1591
  call void @llvm.dbg.value(metadata i32 %109, metadata !1521, metadata !DIExpression()) #18, !dbg !1586
  %110 = add nsw i32 %103, 1, !dbg !1592
  %111 = icmp slt i32 %110, %109, !dbg !1593
  %112 = icmp slt i32 %103, %109, !dbg !1594
  %113 = and i1 %111, %112, !dbg !1595
  br i1 %113, label %114, label %133, !dbg !1595

114:                                              ; preds = %107, %127
  %115 = phi i32 [ %131, %127 ], [ %103, %107 ]
  call void @llvm.dbg.value(metadata i32 9, metadata !1534, metadata !DIExpression()) #18, !dbg !1596
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1598, !tbaa !1233
  %117 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 5, !dbg !1598
  %118 = load i8*, i8** %117, align 8, !dbg !1598, !tbaa !1543
  %119 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 6, !dbg !1598
  %120 = load i8*, i8** %119, align 8, !dbg !1598, !tbaa !1547
  %121 = icmp ult i8* %118, %120, !dbg !1598
  br i1 %121, label %125, label %122, !dbg !1598, !prof !1548, !misexpect !1549

122:                                              ; preds = %114
  %123 = tail call i32 @__overflow(%struct._IO_FILE* %116, i32 9) #18, !dbg !1598
  %124 = load i32, i32* @out_column, align 4, !dbg !1599, !tbaa !1314
  br label %127, !dbg !1598

125:                                              ; preds = %114
  %126 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !1598
  store i8* %126, i8** %117, align 8, !dbg !1598, !tbaa !1543
  store i8 9, i8* %118, align 1, !dbg !1598, !tbaa !1324
  br label %127, !dbg !1598

127:                                              ; preds = %125, %122
  %128 = phi i32 [ %124, %122 ], [ %115, %125 ], !dbg !1599
  %129 = sdiv i32 %128, 8, !dbg !1600
  %130 = shl nsw i32 %129, 3, !dbg !1601
  %131 = add i32 %130, 8, !dbg !1601
  store i32 %131, i32* @out_column, align 4, !dbg !1602, !tbaa !1314
  %132 = icmp slt i32 %131, %109, !dbg !1594
  br i1 %132, label %114, label %133, !dbg !1603, !llvm.loop !1604

133:                                              ; preds = %127, %107, %105
  %134 = phi i32 [ %103, %107 ], [ %103, %105 ], [ %131, %127 ]
  %135 = icmp slt i32 %134, %104, !dbg !1606
  br i1 %135, label %136, label %169, !dbg !1607

136:                                              ; preds = %133, %149
  %137 = phi i32 [ %151, %149 ], [ %134, %133 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1534, metadata !DIExpression()) #18, !dbg !1608
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1610, !tbaa !1233
  %139 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %138, i64 0, i32 5, !dbg !1610
  %140 = load i8*, i8** %139, align 8, !dbg !1610, !tbaa !1543
  %141 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %138, i64 0, i32 6, !dbg !1610
  %142 = load i8*, i8** %141, align 8, !dbg !1610, !tbaa !1547
  %143 = icmp ult i8* %140, %142, !dbg !1610
  br i1 %143, label %147, label %144, !dbg !1610, !prof !1548, !misexpect !1549

144:                                              ; preds = %136
  %145 = tail call i32 @__overflow(%struct._IO_FILE* %138, i32 32) #18, !dbg !1610
  %146 = load i32, i32* @out_column, align 4, !dbg !1611, !tbaa !1314
  br label %149, !dbg !1610

147:                                              ; preds = %136
  %148 = getelementptr inbounds i8, i8* %140, i64 1, !dbg !1610
  store i8* %148, i8** %139, align 8, !dbg !1610, !tbaa !1543
  store i8 32, i8* %140, align 1, !dbg !1610, !tbaa !1324
  br label %149, !dbg !1610

149:                                              ; preds = %147, %144
  %150 = phi i32 [ %146, %144 ], [ %137, %147 ], !dbg !1611
  %151 = add nsw i32 %150, 1, !dbg !1611
  store i32 %151, i32* @out_column, align 4, !dbg !1611, !tbaa !1314
  %152 = icmp slt i32 %151, %104, !dbg !1606
  br i1 %152, label %136, label %169, !dbg !1607, !llvm.loop !1612

153:                                              ; preds = %102
  %154 = load i32, i32* @next_prefix_indent, align 4, !dbg !1614, !tbaa !1314
  %155 = load i32, i32* @prefix_length, align 4, !dbg !1616, !tbaa !1314
  %156 = add nsw i32 %155, %154, !dbg !1617
  %157 = icmp slt i32 %104, %156, !dbg !1618
  br i1 %157, label %169, label %158, !dbg !1619

158:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i32 10, metadata !1534, metadata !DIExpression()) #18, !dbg !1620
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1622, !tbaa !1233
  %160 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %159, i64 0, i32 5, !dbg !1622
  %161 = load i8*, i8** %160, align 8, !dbg !1622, !tbaa !1543
  %162 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %159, i64 0, i32 6, !dbg !1622
  %163 = load i8*, i8** %162, align 8, !dbg !1622, !tbaa !1547
  %164 = icmp ult i8* %161, %163, !dbg !1622
  br i1 %164, label %167, label %165, !dbg !1622, !prof !1548, !misexpect !1549

165:                                              ; preds = %158
  %166 = tail call i32 @__overflow(%struct._IO_FILE* %159, i32 10) #18, !dbg !1622
  br label %169, !dbg !1622

167:                                              ; preds = %158
  %168 = getelementptr inbounds i8, i8* %161, i64 1, !dbg !1622
  store i8* %168, i8** %160, align 8, !dbg !1622, !tbaa !1543
  store i8 10, i8* %161, align 1, !dbg !1622, !tbaa !1324
  br label %169, !dbg !1622

169:                                              ; preds = %149, %167, %165, %153, %133, %102, %24, %24
  br label %170, !dbg !1623

170:                                              ; preds = %195, %169
  %171 = phi i32 [ %8, %169 ], [ %196, %195 ]
  call void @llvm.dbg.value(metadata i32 %171, metadata !1484, metadata !DIExpression()) #18, !dbg !1512
  switch i32 %171, label %172 [
    i32 -1, label %356
    i32 10, label %197
  ], !dbg !1623

172:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i32 %171, metadata !1534, metadata !DIExpression()) #18, !dbg !1624
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1626, !tbaa !1233
  %174 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %173, i64 0, i32 5, !dbg !1626
  %175 = load i8*, i8** %174, align 8, !dbg !1626, !tbaa !1543
  %176 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %173, i64 0, i32 6, !dbg !1626
  %177 = load i8*, i8** %176, align 8, !dbg !1626, !tbaa !1547
  %178 = icmp ult i8* %175, %177, !dbg !1626
  br i1 %178, label %182, label %179, !dbg !1626, !prof !1548, !misexpect !1549

179:                                              ; preds = %172
  %180 = and i32 %171, 255, !dbg !1626
  %181 = tail call i32 @__overflow(%struct._IO_FILE* %173, i32 %180) #18, !dbg !1626
  br label %185, !dbg !1626

182:                                              ; preds = %172
  %183 = trunc i32 %171 to i8, !dbg !1626
  %184 = getelementptr inbounds i8, i8* %175, i64 1, !dbg !1626
  store i8* %184, i8** %174, align 8, !dbg !1626, !tbaa !1543
  store i8 %183, i8* %175, align 1, !dbg !1626, !tbaa !1324
  br label %185, !dbg !1626

185:                                              ; preds = %182, %179
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1476, metadata !DIExpression()) #18, !dbg !1470
  %186 = load i8*, i8** %3, align 8, !dbg !1627, !tbaa !1628
  %187 = load i8*, i8** %4, align 8, !dbg !1627, !tbaa !1629
  %188 = icmp ult i8* %186, %187, !dbg !1627
  br i1 %188, label %191, label %189, !dbg !1627, !prof !1548, !misexpect !1549

189:                                              ; preds = %185
  %190 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #18, !dbg !1627
  br label %195, !dbg !1627

191:                                              ; preds = %185
  %192 = getelementptr inbounds i8, i8* %186, i64 1, !dbg !1627
  store i8* %192, i8** %3, align 8, !dbg !1627, !tbaa !1628
  %193 = load i8, i8* %186, align 1, !dbg !1627, !tbaa !1324
  %194 = zext i8 %193 to i32, !dbg !1627
  br label %195, !dbg !1627

195:                                              ; preds = %191, %189
  %196 = phi i32 [ %190, %189 ], [ %194, %191 ]
  br label %170, !dbg !1512, !llvm.loop !1630

197:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i32 10, metadata !1534, metadata !DIExpression()) #18, !dbg !1632
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1634, !tbaa !1233
  %199 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %198, i64 0, i32 5, !dbg !1634
  %200 = load i8*, i8** %199, align 8, !dbg !1634, !tbaa !1543
  %201 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %198, i64 0, i32 6, !dbg !1634
  %202 = load i8*, i8** %201, align 8, !dbg !1634, !tbaa !1547
  %203 = icmp ult i8* %200, %202, !dbg !1634
  br i1 %203, label %206, label %204, !dbg !1634, !prof !1548, !misexpect !1549

204:                                              ; preds = %197
  %205 = tail call i32 @__overflow(%struct._IO_FILE* %198, i32 10) #18, !dbg !1634
  br label %208, !dbg !1634

206:                                              ; preds = %197
  %207 = getelementptr inbounds i8, i8* %200, i64 1, !dbg !1634
  store i8* %207, i8** %199, align 8, !dbg !1634, !tbaa !1543
  store i8 10, i8* %200, align 1, !dbg !1634, !tbaa !1324
  br label %208, !dbg !1634

208:                                              ; preds = %206, %204
  %209 = tail call fastcc i32 @get_prefix(%struct._IO_FILE* %0) #18, !dbg !1635
  call void @llvm.dbg.value(metadata i32 %209, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  br label %7, !dbg !1499, !llvm.loop !1636

210:                                              ; preds = %13
  call void @llvm.dbg.value(metadata i32 %8, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  call void @llvm.dbg.value(metadata i32 %8, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  call void @llvm.dbg.value(metadata i32 %8, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  call void @llvm.dbg.value(metadata i32 %8, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  call void @llvm.dbg.value(metadata i32 %8, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  call void @llvm.dbg.value(metadata i32 %8, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  call void @llvm.dbg.value(metadata i32 %8, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  call void @llvm.dbg.value(metadata i32 %8, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  call void @llvm.dbg.value(metadata i32 %8, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  store i32 %10, i32* @prefix_indent, align 4, !dbg !1638, !tbaa !1314
  store i32 %14, i32* @first_indent, align 4, !dbg !1639, !tbaa !1314
  store i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i8** @wptr, align 8, !dbg !1640, !tbaa !1233
  store %struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), %struct.Word** @word_limit, align 8, !dbg !1641, !tbaa !1233
  %211 = tail call fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %8) #18, !dbg !1642
  call void @llvm.dbg.value(metadata i32 %211, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  call void @llvm.dbg.value(metadata i32 %211, metadata !1643, metadata !DIExpression()) #18, !dbg !1646
  %212 = load i32, i32* @next_prefix_indent, align 4, !dbg !1648, !tbaa !1314
  %213 = load i32, i32* @prefix_indent, align 4, !dbg !1649, !tbaa !1314
  %214 = icmp eq i32 %212, %213, !dbg !1650
  br i1 %214, label %215, label %224, !dbg !1651

215:                                              ; preds = %210
  %216 = load i32, i32* @in_column, align 4, !dbg !1652, !tbaa !1314
  %217 = load i32, i32* @prefix_full_length, align 4, !dbg !1653, !tbaa !1314
  %218 = add nsw i32 %217, %212, !dbg !1654
  %219 = icmp sge i32 %216, %218, !dbg !1655
  %220 = icmp ne i32 %211, 10, !dbg !1656
  %221 = and i1 %220, %219, !dbg !1657
  %222 = icmp ne i32 %211, -1, !dbg !1658
  %223 = and i1 %222, %221, !dbg !1657
  br label %224, !dbg !1657

224:                                              ; preds = %215, %210
  %225 = phi i1 [ %223, %215 ], [ false, %210 ]
  call void @llvm.dbg.value(metadata i1 %225, metadata !1659, metadata !DIExpression()) #18, !dbg !1664
  %226 = load i1, i1* @split, align 1, !dbg !1666
  br i1 %226, label %245, label %227, !dbg !1668

227:                                              ; preds = %224
  %228 = load i1, i1* @crown, align 1, !dbg !1669
  br i1 %228, label %247, label %229, !dbg !1671

229:                                              ; preds = %227
  %230 = load i1, i1* @tagged, align 1, !dbg !1672
  br i1 %230, label %231, label %274, !dbg !1674

231:                                              ; preds = %229
  br i1 %225, label %234, label %232, !dbg !1675

232:                                              ; preds = %231
  %233 = load i32, i32* @first_indent, align 4, !dbg !1678, !tbaa !1314
  br label %238, !dbg !1675

234:                                              ; preds = %231
  %235 = load i32, i32* @in_column, align 4, !dbg !1680, !tbaa !1314
  %236 = load i32, i32* @first_indent, align 4, !dbg !1681, !tbaa !1314
  %237 = icmp eq i32 %235, %236, !dbg !1682
  br i1 %237, label %238, label %287, !dbg !1683

238:                                              ; preds = %234, %232
  %239 = phi i32 [ %233, %232 ], [ %235, %234 ]
  %240 = load i32, i32* @other_indent, align 4, !dbg !1684, !tbaa !1314
  %241 = icmp eq i32 %240, %239, !dbg !1685
  br i1 %241, label %242, label %290, !dbg !1686

242:                                              ; preds = %238
  %243 = icmp eq i32 %239, 0, !dbg !1687
  %244 = select i1 %243, i32 3, i32 0, !dbg !1688
  br label %287, !dbg !1689

245:                                              ; preds = %224
  %246 = load i32, i32* @first_indent, align 4, !dbg !1690, !tbaa !1314
  store i32 %246, i32* @other_indent, align 4, !dbg !1691, !tbaa !1314
  br label %336

247:                                              ; preds = %227
  %248 = load i32, i32* @in_column, align 4, !dbg !1692
  %249 = load i32, i32* @first_indent, align 4, !dbg !1692
  %250 = select i1 %225, i32 %248, i32 %249, !dbg !1692
  store i32 %250, i32* @other_indent, align 4, !dbg !1694, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 %211, metadata !1643, metadata !DIExpression()) #18, !dbg !1695
  br i1 %214, label %251, label %336, !dbg !1701

251:                                              ; preds = %247
  %252 = load i32, i32* @prefix_full_length, align 4, !dbg !1702, !tbaa !1314
  %253 = add nsw i32 %252, %212, !dbg !1703
  %254 = icmp slt i32 %248, %253, !dbg !1704
  br i1 %254, label %336, label %255, !dbg !1705

255:                                              ; preds = %251
  switch i32 %211, label %256 [
    i32 -1, label %336
    i32 10, label %336
  ], !dbg !1705

256:                                              ; preds = %255, %262
  %257 = phi i32 [ %258, %262 ], [ %211, %255 ], !dbg !1497
  call void @llvm.dbg.value(metadata i32 %257, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  %258 = tail call fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %257) #18, !dbg !1706
  call void @llvm.dbg.value(metadata i32 %258, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  call void @llvm.dbg.value(metadata i32 %258, metadata !1643, metadata !DIExpression()) #18, !dbg !1709
  %259 = load i32, i32* @next_prefix_indent, align 4, !dbg !1711, !tbaa !1314
  %260 = load i32, i32* @prefix_indent, align 4, !dbg !1712, !tbaa !1314
  %261 = icmp eq i32 %259, %260, !dbg !1713
  br i1 %261, label %262, label %336, !dbg !1714

262:                                              ; preds = %256
  %263 = load i32, i32* @in_column, align 4, !dbg !1715
  %264 = load i32, i32* @prefix_full_length, align 4, !dbg !1716, !tbaa !1314
  %265 = add nsw i32 %264, %259, !dbg !1717
  %266 = icmp sge i32 %263, %265, !dbg !1718
  %267 = icmp ne i32 %258, 10, !dbg !1719
  %268 = and i1 %267, %266, !dbg !1720
  %269 = icmp ne i32 %258, -1, !dbg !1721
  %270 = and i1 %269, %268, !dbg !1720
  %271 = load i32, i32* @other_indent, align 4, !dbg !1722
  %272 = icmp eq i32 %263, %271, !dbg !1722
  %273 = and i1 %272, %270, !dbg !1722
  br i1 %273, label %256, label %336, !dbg !1723, !llvm.loop !1724

274:                                              ; preds = %229
  %275 = load i32, i32* @first_indent, align 4, !dbg !1727, !tbaa !1314
  store i32 %275, i32* @other_indent, align 4, !dbg !1729, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 %211, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  call void @llvm.dbg.value(metadata i32 %211, metadata !1643, metadata !DIExpression()) #18, !dbg !1730
  br i1 %214, label %276, label %336, !dbg !1734

276:                                              ; preds = %274
  call void @llvm.dbg.value(metadata i32 %211, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  %277 = load i32, i32* @in_column, align 4, !dbg !1735
  %278 = load i32, i32* @prefix_full_length, align 4, !dbg !1736, !tbaa !1314
  %279 = add nsw i32 %278, %212, !dbg !1737
  %280 = icmp sge i32 %277, %279, !dbg !1738
  %281 = icmp ne i32 %211, 10, !dbg !1739
  %282 = and i1 %281, %280, !dbg !1740
  %283 = icmp ne i32 %211, -1, !dbg !1741
  %284 = and i1 %283, %282, !dbg !1740
  %285 = icmp eq i32 %277, %275, !dbg !1742
  %286 = and i1 %285, %284, !dbg !1742
  br i1 %286, label %318, label %336, !dbg !1743

287:                                              ; preds = %234, %242
  %288 = phi i32 [ %244, %242 ], [ %235, %234 ]
  %289 = phi i32 [ %239, %242 ], [ %236, %234 ]
  store i32 %288, i32* @other_indent, align 4, !dbg !1744, !tbaa !1314
  br label %290, !dbg !1745

290:                                              ; preds = %287, %238
  %291 = phi i32 [ %239, %238 ], [ %289, %287 ]
  call void @llvm.dbg.value(metadata i32 %211, metadata !1643, metadata !DIExpression()) #18, !dbg !1749
  br i1 %214, label %292, label %336, !dbg !1745

292:                                              ; preds = %290
  %293 = load i32, i32* @in_column, align 4, !dbg !1750, !tbaa !1314
  %294 = load i32, i32* @prefix_full_length, align 4, !dbg !1751, !tbaa !1314
  %295 = add nsw i32 %294, %212, !dbg !1752
  %296 = icmp slt i32 %293, %295, !dbg !1753
  br i1 %296, label %336, label %297, !dbg !1754

297:                                              ; preds = %292
  switch i32 %211, label %298 [
    i32 -1, label %336
    i32 10, label %336
  ], !dbg !1754

298:                                              ; preds = %297
  %299 = icmp eq i32 %293, %291, !dbg !1755
  br i1 %299, label %336, label %300, !dbg !1756

300:                                              ; preds = %298, %306
  %301 = phi i32 [ %302, %306 ], [ %211, %298 ], !dbg !1497
  call void @llvm.dbg.value(metadata i32 %301, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  %302 = tail call fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %301) #18, !dbg !1757
  call void @llvm.dbg.value(metadata i32 %302, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  call void @llvm.dbg.value(metadata i32 %302, metadata !1643, metadata !DIExpression()) #18, !dbg !1760
  %303 = load i32, i32* @next_prefix_indent, align 4, !dbg !1762, !tbaa !1314
  %304 = load i32, i32* @prefix_indent, align 4, !dbg !1763, !tbaa !1314
  %305 = icmp eq i32 %303, %304, !dbg !1764
  br i1 %305, label %306, label %336, !dbg !1765

306:                                              ; preds = %300
  %307 = load i32, i32* @in_column, align 4, !dbg !1766
  %308 = load i32, i32* @prefix_full_length, align 4, !dbg !1767, !tbaa !1314
  %309 = add nsw i32 %308, %303, !dbg !1768
  %310 = icmp sge i32 %307, %309, !dbg !1769
  %311 = icmp ne i32 %302, 10, !dbg !1770
  %312 = and i1 %311, %310, !dbg !1771
  %313 = icmp ne i32 %302, -1, !dbg !1772
  %314 = and i1 %313, %312, !dbg !1771
  %315 = load i32, i32* @other_indent, align 4, !dbg !1773
  %316 = icmp eq i32 %307, %315, !dbg !1773
  %317 = and i1 %316, %314, !dbg !1773
  br i1 %317, label %300, label %336, !dbg !1774, !llvm.loop !1775

318:                                              ; preds = %276, %324
  %319 = phi i32 [ %320, %324 ], [ %211, %276 ]
  call void @llvm.dbg.value(metadata i32 %319, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  %320 = tail call fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %319) #18, !dbg !1778
  call void @llvm.dbg.value(metadata i32 %320, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  call void @llvm.dbg.value(metadata i32 %320, metadata !1643, metadata !DIExpression()) #18, !dbg !1730
  %321 = load i32, i32* @next_prefix_indent, align 4, !dbg !1779, !tbaa !1314
  %322 = load i32, i32* @prefix_indent, align 4, !dbg !1780, !tbaa !1314
  %323 = icmp eq i32 %321, %322, !dbg !1781
  br i1 %323, label %324, label %336, !dbg !1734, !llvm.loop !1782

324:                                              ; preds = %318
  %325 = load i32, i32* @other_indent, align 4, !dbg !1742
  call void @llvm.dbg.value(metadata i32 %320, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  %326 = load i32, i32* @in_column, align 4, !dbg !1735
  %327 = load i32, i32* @prefix_full_length, align 4, !dbg !1736, !tbaa !1314
  %328 = add nsw i32 %327, %321, !dbg !1737
  %329 = icmp sge i32 %326, %328, !dbg !1738
  %330 = icmp ne i32 %320, 10, !dbg !1739
  %331 = and i1 %330, %329, !dbg !1740
  %332 = icmp ne i32 %320, -1, !dbg !1741
  %333 = and i1 %332, %331, !dbg !1740
  %334 = icmp eq i32 %326, %325, !dbg !1742
  %335 = and i1 %334, %333, !dbg !1742
  br i1 %335, label %318, label %336, !dbg !1743

336:                                              ; preds = %324, %318, %306, %300, %262, %256, %276, %298, %297, %297, %292, %290, %274, %255, %255, %251, %247, %245
  %337 = phi i32 [ %211, %245 ], [ %211, %255 ], [ %211, %298 ], [ %211, %297 ], [ %211, %247 ], [ %211, %290 ], [ %211, %251 ], [ %211, %255 ], [ %211, %292 ], [ %211, %297 ], [ %211, %274 ], [ %211, %276 ], [ %258, %256 ], [ %258, %262 ], [ %302, %300 ], [ %302, %306 ], [ %320, %318 ], [ %320, %324 ], !dbg !1497
  call void @llvm.dbg.value(metadata i32 %337, metadata !1493, metadata !DIExpression()) #18, !dbg !1497
  %338 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1784, !tbaa !1233
  %339 = icmp ugt %struct.Word* %338, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1784
  br i1 %339, label %341, label %340, !dbg !1787

340:                                              ; preds = %336
  tail call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0), i32 606, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.get_paragraph, i64 0, i64 0)) #22, !dbg !1784
  unreachable, !dbg !1784

341:                                              ; preds = %336
  %342 = getelementptr inbounds %struct.Word, %struct.Word* %338, i64 -1, i32 3, !dbg !1788
  %343 = load i8, i8* %342, align 8, !dbg !1789
  %344 = or i8 %343, 10, !dbg !1790
  store i8 %344, i8* %342, align 8, !dbg !1790
  store i32 %337, i32* @next_char, align 4, !dbg !1497, !tbaa !1314
  tail call fastcc void @fmt_paragraph(), !dbg !1791
  call void @llvm.dbg.value(metadata %struct.Word* %338, metadata !1793, metadata !DIExpression()) #18, !dbg !1799
  %345 = load i32, i32* @first_indent, align 4, !dbg !1801, !tbaa !1314
  tail call fastcc void @put_line(%struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), i32 %345) #18, !dbg !1802
  call void @llvm.dbg.value(metadata %struct.Word* undef, metadata !1798, metadata !DIExpression()) #18, !dbg !1799
  %346 = load %struct.Word*, %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), align 16, !dbg !1803, !tbaa !1805
  call void @llvm.dbg.value(metadata %struct.Word* %346, metadata !1798, metadata !DIExpression()) #18, !dbg !1799
  %347 = icmp eq %struct.Word* %346, %338, !dbg !1807
  br i1 %347, label %354, label %348, !dbg !1809

348:                                              ; preds = %341, %348
  %349 = phi %struct.Word* [ %352, %348 ], [ %346, %341 ]
  %350 = load i32, i32* @other_indent, align 4, !dbg !1810, !tbaa !1314
  tail call fastcc void @put_line(%struct.Word* %349, i32 %350) #18, !dbg !1811
  %351 = getelementptr inbounds %struct.Word, %struct.Word* %349, i64 0, i32 6, !dbg !1812
  call void @llvm.dbg.value(metadata %struct.Word* undef, metadata !1798, metadata !DIExpression()) #18, !dbg !1799
  %352 = load %struct.Word*, %struct.Word** %351, align 8, !dbg !1803, !tbaa !1805
  call void @llvm.dbg.value(metadata %struct.Word* %352, metadata !1798, metadata !DIExpression()) #18, !dbg !1799
  %353 = icmp eq %struct.Word* %352, %338, !dbg !1807
  br i1 %353, label %354, label %348, !dbg !1809, !llvm.loop !1813

354:                                              ; preds = %348, %341
  %355 = load i32, i32* @next_char, align 4, !dbg !1496, !tbaa !1314
  br label %5, !dbg !1495, !llvm.loop !1815

356:                                              ; preds = %170
  store i32 -1, i32* @next_char, align 4, !dbg !1497, !tbaa !1314
  ret void, !dbg !1817
}

; Function Attrs: nofree nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @get_prefix(%struct._IO_FILE* %0) unnamed_addr #8 !dbg !1818 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1820, metadata !DIExpression()), !dbg !1829
  store i32 0, i32* @in_column, align 4, !dbg !1830, !tbaa !1314
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1476, metadata !DIExpression()) #18, !dbg !1831
  %2 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1833
  %3 = load i8*, i8** %2, align 8, !dbg !1833, !tbaa !1628
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1833
  %5 = load i8*, i8** %4, align 8, !dbg !1833, !tbaa !1629
  %6 = icmp ult i8* %3, %5, !dbg !1833
  br i1 %6, label %9, label %7, !dbg !1833, !prof !1548, !misexpect !1549

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #18, !dbg !1833
  br label %13, !dbg !1833

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1833
  store i8* %10, i8** %2, align 8, !dbg !1833, !tbaa !1628
  %11 = load i8, i8* %3, align 1, !dbg !1833, !tbaa !1324
  %12 = zext i8 %11 to i32, !dbg !1833
  br label %13, !dbg !1833

13:                                               ; preds = %7, %9
  %14 = phi i32 [ %12, %9 ], [ %8, %7 ]
  br label %15, !dbg !1834

15:                                               ; preds = %36, %13
  %16 = phi i32 [ %14, %13 ], [ %37, %36 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !1838, metadata !DIExpression()) #18, !dbg !1840
  switch i32 %16, label %38 [
    i32 32, label %17
    i32 9, label %20
  ], !dbg !1841

17:                                               ; preds = %15
  %18 = load i32, i32* @in_column, align 4, !dbg !1843, !tbaa !1314
  %19 = add nsw i32 %18, 1, !dbg !1843
  br label %25, !dbg !1845

20:                                               ; preds = %15
  store i1 true, i1* @tabs, align 1, !dbg !1846
  %21 = load i32, i32* @in_column, align 4, !dbg !1849, !tbaa !1314
  %22 = sdiv i32 %21, 8, !dbg !1850
  %23 = shl nsw i32 %22, 3, !dbg !1851
  %24 = add i32 %23, 8, !dbg !1851
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i32 [ %24, %20 ], [ %19, %17 ], !dbg !1852
  store i32 %26, i32* @in_column, align 4, !dbg !1852, !tbaa !1314
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1476, metadata !DIExpression()) #18, !dbg !1853
  %27 = load i8*, i8** %2, align 8, !dbg !1855, !tbaa !1628
  %28 = load i8*, i8** %4, align 8, !dbg !1855, !tbaa !1629
  %29 = icmp ult i8* %27, %28, !dbg !1855
  br i1 %29, label %32, label %30, !dbg !1855, !prof !1548, !misexpect !1549

30:                                               ; preds = %25
  %31 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #18, !dbg !1855
  br label %36, !dbg !1855

32:                                               ; preds = %25
  %33 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1855
  store i8* %33, i8** %2, align 8, !dbg !1855, !tbaa !1628
  %34 = load i8, i8* %27, align 1, !dbg !1855, !tbaa !1324
  %35 = zext i8 %34 to i32, !dbg !1855
  br label %36, !dbg !1855

36:                                               ; preds = %32, %30
  %37 = phi i32 [ %31, %30 ], [ %35, %32 ]
  br label %15, !dbg !1840, !llvm.loop !1856

38:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 %16, metadata !1838, metadata !DIExpression()) #18, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %16, metadata !1838, metadata !DIExpression()) #18, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %16, metadata !1838, metadata !DIExpression()) #18, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %16, metadata !1838, metadata !DIExpression()) #18, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %16, metadata !1838, metadata !DIExpression()) #18, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %16, metadata !1838, metadata !DIExpression()) #18, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %16, metadata !1838, metadata !DIExpression()) #18, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %16, metadata !1838, metadata !DIExpression()) #18, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %16, metadata !1838, metadata !DIExpression()) #18, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %16, metadata !1821, metadata !DIExpression()), !dbg !1829
  %39 = load i32, i32* @prefix_length, align 4, !dbg !1858, !tbaa !1314
  %40 = icmp eq i32 %39, 0, !dbg !1859
  br i1 %40, label %41, label %46, !dbg !1860

41:                                               ; preds = %38
  %42 = load i32, i32* @prefix_lead_space, align 4, !dbg !1861, !tbaa !1314
  %43 = load i32, i32* @in_column, align 4, !dbg !1862, !tbaa !1314
  %44 = icmp slt i32 %42, %43, !dbg !1863
  %45 = select i1 %44, i32 %42, i32 %43, !dbg !1861
  store i32 %45, i32* @next_prefix_indent, align 4, !dbg !1864, !tbaa !1314
  br label %99, !dbg !1865

46:                                               ; preds = %38
  %47 = load i32, i32* @in_column, align 4, !dbg !1866, !tbaa !1314
  store i32 %47, i32* @next_prefix_indent, align 4, !dbg !1867, !tbaa !1314
  %48 = load i8*, i8** @prefix, align 8, !dbg !1868, !tbaa !1233
  call void @llvm.dbg.value(metadata i8* %48, metadata !1822, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i32 %16, metadata !1821, metadata !DIExpression()), !dbg !1829
  %49 = load i8, i8* %48, align 1, !dbg !1870, !tbaa !1324
  %50 = icmp eq i8 %49, 0, !dbg !1871
  br i1 %50, label %74, label %51, !dbg !1872

51:                                               ; preds = %46, %69
  %52 = phi i8 [ %72, %69 ], [ %49, %46 ]
  %53 = phi i8* [ %71, %69 ], [ %48, %46 ]
  %54 = phi i32 [ %70, %69 ], [ %16, %46 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1822, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i32 %54, metadata !1821, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 %52, metadata !1825, metadata !DIExpression()), !dbg !1873
  %55 = zext i8 %52 to i32, !dbg !1874
  %56 = icmp eq i32 %54, %55, !dbg !1876
  br i1 %56, label %57, label %99, !dbg !1877

57:                                               ; preds = %51
  %58 = load i32, i32* @in_column, align 4, !dbg !1878, !tbaa !1314
  %59 = add nsw i32 %58, 1, !dbg !1878
  store i32 %59, i32* @in_column, align 4, !dbg !1878, !tbaa !1314
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1476, metadata !DIExpression()) #18, !dbg !1879
  %60 = load i8*, i8** %2, align 8, !dbg !1881, !tbaa !1628
  %61 = load i8*, i8** %4, align 8, !dbg !1881, !tbaa !1629
  %62 = icmp ult i8* %60, %61, !dbg !1881
  br i1 %62, label %65, label %63, !dbg !1881, !prof !1548, !misexpect !1549

63:                                               ; preds = %57
  %64 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #18, !dbg !1881
  br label %69, !dbg !1881

65:                                               ; preds = %57
  %66 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1881
  store i8* %66, i8** %2, align 8, !dbg !1881, !tbaa !1628
  %67 = load i8, i8* %60, align 1, !dbg !1881, !tbaa !1324
  %68 = zext i8 %67 to i32, !dbg !1881
  br label %69, !dbg !1881

69:                                               ; preds = %63, %65
  %70 = phi i32 [ %68, %65 ], [ %64, %63 ]
  %71 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !1882
  call void @llvm.dbg.value(metadata i8* %71, metadata !1822, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i32 %70, metadata !1821, metadata !DIExpression()), !dbg !1829
  %72 = load i8, i8* %71, align 1, !dbg !1870, !tbaa !1324
  %73 = icmp eq i8 %72, 0, !dbg !1871
  br i1 %73, label %74, label %51, !dbg !1872, !llvm.loop !1883

74:                                               ; preds = %69, %46
  %75 = phi i32 [ %16, %46 ], [ %70, %69 ]
  br label %76, !dbg !1885

76:                                               ; preds = %97, %74
  %77 = phi i32 [ %75, %74 ], [ %98, %97 ]
  call void @llvm.dbg.value(metadata i32 %77, metadata !1838, metadata !DIExpression()) #18, !dbg !1887
  switch i32 %77, label %99 [
    i32 32, label %78
    i32 9, label %81
  ], !dbg !1888

78:                                               ; preds = %76
  %79 = load i32, i32* @in_column, align 4, !dbg !1889, !tbaa !1314
  %80 = add nsw i32 %79, 1, !dbg !1889
  br label %86, !dbg !1890

81:                                               ; preds = %76
  store i1 true, i1* @tabs, align 1, !dbg !1891
  %82 = load i32, i32* @in_column, align 4, !dbg !1892, !tbaa !1314
  %83 = sdiv i32 %82, 8, !dbg !1893
  %84 = shl nsw i32 %83, 3, !dbg !1894
  %85 = add i32 %84, 8, !dbg !1894
  br label %86

86:                                               ; preds = %81, %78
  %87 = phi i32 [ %85, %81 ], [ %80, %78 ], !dbg !1895
  store i32 %87, i32* @in_column, align 4, !dbg !1895, !tbaa !1314
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1476, metadata !DIExpression()) #18, !dbg !1896
  %88 = load i8*, i8** %2, align 8, !dbg !1898, !tbaa !1628
  %89 = load i8*, i8** %4, align 8, !dbg !1898, !tbaa !1629
  %90 = icmp ult i8* %88, %89, !dbg !1898
  br i1 %90, label %93, label %91, !dbg !1898, !prof !1548, !misexpect !1549

91:                                               ; preds = %86
  %92 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #18, !dbg !1898
  br label %97, !dbg !1898

93:                                               ; preds = %86
  %94 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !1898
  store i8* %94, i8** %2, align 8, !dbg !1898, !tbaa !1628
  %95 = load i8, i8* %88, align 1, !dbg !1898, !tbaa !1324
  %96 = zext i8 %95 to i32, !dbg !1898
  br label %97, !dbg !1898

97:                                               ; preds = %93, %91
  %98 = phi i32 [ %92, %91 ], [ %96, %93 ]
  br label %76, !dbg !1887, !llvm.loop !1899

99:                                               ; preds = %51, %76, %41
  %100 = phi i32 [ %16, %41 ], [ %77, %76 ], [ %54, %51 ], !dbg !1829
  ret i32 %100, !dbg !1901
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %1) unnamed_addr #8 !dbg !1902 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1904, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i32 %1, metadata !1905, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 1, i64 0), metadata !1907, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata %struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 998), metadata !1908, metadata !DIExpression()), !dbg !1909
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1910
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1910
  %5 = load i64*, i64** bitcast (%struct.Word** @word_limit to i64**), align 8, !dbg !1914, !tbaa !1233
  br label %6, !dbg !1915

6:                                                ; preds = %200, %2
  %7 = phi i64* [ %5, %2 ], [ %203, %200 ], !dbg !1914
  %8 = phi i32 [ %1, %2 ], [ %126, %200 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !1905, metadata !DIExpression()), !dbg !1909
  %9 = load i64, i64* bitcast (i8** @wptr to i64*), align 8, !dbg !1916, !tbaa !1233
  store i64 %9, i64* %7, align 8, !dbg !1917, !tbaa !1918
  %10 = inttoptr i64 %9 to i8*
  br label %13, !dbg !1919

11:                                               ; preds = %59
  %12 = load i8*, i8** @wptr, align 8, !dbg !1920, !tbaa !1233
  br label %13, !dbg !1920

13:                                               ; preds = %11, %6
  %14 = phi i8* [ %12, %11 ], [ %10, %6 ]
  %15 = phi i32 [ %60, %11 ], [ %8, %6 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !1905, metadata !DIExpression()), !dbg !1909
  %16 = icmp eq i8* %14, getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 1, i64 0), !dbg !1922
  br i1 %16, label %17, label %43, !dbg !1923

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i1 true, metadata !1659, metadata !DIExpression()), !dbg !1924
  %18 = load i1, i1* @split, align 1, !dbg !1927
  br i1 %18, label %19, label %21, !dbg !1928

19:                                               ; preds = %17
  %20 = load i32, i32* @first_indent, align 4, !dbg !1929, !tbaa !1314
  br label %39, !dbg !1930

21:                                               ; preds = %17
  %22 = load i1, i1* @crown, align 1, !dbg !1931
  br i1 %22, label %23, label %25, !dbg !1932

23:                                               ; preds = %21
  %24 = load i32, i32* @in_column, align 4, !dbg !1933
  br label %39, !dbg !1934

25:                                               ; preds = %21
  %26 = load i1, i1* @tagged, align 1, !dbg !1935
  br i1 %26, label %27, label %37, !dbg !1936

27:                                               ; preds = %25
  %28 = load i32, i32* @in_column, align 4, !dbg !1937, !tbaa !1314
  %29 = load i32, i32* @first_indent, align 4, !dbg !1938, !tbaa !1314
  %30 = icmp eq i32 %28, %29, !dbg !1939
  br i1 %30, label %31, label %39, !dbg !1940

31:                                               ; preds = %27
  %32 = load i32, i32* @other_indent, align 4, !dbg !1941, !tbaa !1314
  %33 = icmp eq i32 %32, %28, !dbg !1942
  br i1 %33, label %34, label %41, !dbg !1943

34:                                               ; preds = %31
  %35 = icmp eq i32 %28, 0, !dbg !1944
  %36 = select i1 %35, i32 3, i32 0, !dbg !1945
  br label %39, !dbg !1946

37:                                               ; preds = %25
  %38 = load i32, i32* @first_indent, align 4, !dbg !1947, !tbaa !1314
  br label %39

39:                                               ; preds = %27, %37, %34, %23, %19
  %40 = phi i32 [ %20, %19 ], [ %24, %23 ], [ %36, %34 ], [ %38, %37 ], [ %28, %27 ]
  store i32 %40, i32* @other_indent, align 4, !dbg !1948, !tbaa !1314
  br label %41, !dbg !1949

41:                                               ; preds = %39, %31
  tail call fastcc void @flush_paragraph(), !dbg !1949
  %42 = load i8*, i8** @wptr, align 8, !dbg !1950, !tbaa !1233
  br label %43, !dbg !1951

43:                                               ; preds = %41, %13
  %44 = phi i8* [ %42, %41 ], [ %14, %13 ], !dbg !1950
  %45 = trunc i32 %15 to i8, !dbg !1952
  %46 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !1950
  store i8* %46, i8** @wptr, align 8, !dbg !1950, !tbaa !1233
  store i8 %45, i8* %44, align 1, !dbg !1953, !tbaa !1324
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1476, metadata !DIExpression()) #18, !dbg !1910
  %47 = load i8*, i8** %3, align 8, !dbg !1954, !tbaa !1628
  %48 = load i8*, i8** %4, align 8, !dbg !1954, !tbaa !1629
  %49 = icmp ult i8* %47, %48, !dbg !1954
  br i1 %49, label %50, label %54, !dbg !1954, !prof !1548, !misexpect !1549

50:                                               ; preds = %43
  %51 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1954
  store i8* %51, i8** %3, align 8, !dbg !1954, !tbaa !1628
  %52 = load i8, i8* %47, align 1, !dbg !1954, !tbaa !1324
  %53 = zext i8 %52 to i32, !dbg !1954
  call void @llvm.dbg.value(metadata i32 %55, metadata !1905, metadata !DIExpression()), !dbg !1909
  br label %59, !dbg !1955

54:                                               ; preds = %43
  %55 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #18, !dbg !1954
  call void @llvm.dbg.value(metadata i32 %55, metadata !1905, metadata !DIExpression()), !dbg !1909
  %56 = icmp eq i32 %55, -1, !dbg !1956
  br i1 %56, label %57, label %59, !dbg !1955

57:                                               ; preds = %54
  %58 = tail call i16** @__ctype_b_loc() #24, !dbg !1957
  br label %68, !dbg !1955

59:                                               ; preds = %50, %54
  %60 = phi i32 [ %53, %50 ], [ %55, %54 ]
  %61 = tail call i16** @__ctype_b_loc() #24, !dbg !1965
  %62 = load i16*, i16** %61, align 8, !dbg !1965, !tbaa !1233
  %63 = sext i32 %60 to i64, !dbg !1965
  %64 = getelementptr inbounds i16, i16* %62, i64 %63, !dbg !1965
  %65 = load i16, i16* %64, align 2, !dbg !1965, !tbaa !1966
  %66 = and i16 %65, 8192, !dbg !1965
  %67 = icmp eq i16 %66, 0, !dbg !1967
  br i1 %67, label %11, label %68, !dbg !1968, !llvm.loop !1969

68:                                               ; preds = %59, %57
  %69 = phi i16** [ %58, %57 ], [ %61, %59 ], !dbg !1957
  %70 = phi i32 [ -1, %57 ], [ %60, %59 ]
  %71 = load i64, i64* bitcast (i8** @wptr to i64*), align 8, !dbg !1971, !tbaa !1233
  %72 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1972, !tbaa !1233
  %73 = bitcast %struct.Word* %72 to i64*, !dbg !1973
  %74 = load i64, i64* %73, align 8, !dbg !1973, !tbaa !1918
  %75 = sub i64 %71, %74, !dbg !1974
  %76 = trunc i64 %75 to i32, !dbg !1971
  %77 = getelementptr inbounds %struct.Word, %struct.Word* %72, i64 0, i32 1, !dbg !1975
  store i32 %76, i32* %77, align 8, !dbg !1976, !tbaa !1977
  %78 = load i32, i32* @in_column, align 4, !dbg !1978, !tbaa !1314
  %79 = add nsw i32 %78, %76, !dbg !1978
  store i32 %79, i32* @in_column, align 4, !dbg !1978, !tbaa !1314
  call void @llvm.dbg.value(metadata %struct.Word* %72, metadata !1960, metadata !DIExpression()) #18, !dbg !1979
  %80 = inttoptr i64 %74 to i8*, !dbg !1980
  call void @llvm.dbg.value(metadata i8* %80, metadata !1961, metadata !DIExpression()) #18, !dbg !1979
  %81 = shl i64 %75, 32, !dbg !1981
  %82 = add i64 %81, -4294967296, !dbg !1981
  %83 = ashr exact i64 %82, 32, !dbg !1981
  %84 = getelementptr inbounds i8, i8* %80, i64 %83, !dbg !1981
  call void @llvm.dbg.value(metadata i8* %84, metadata !1962, metadata !DIExpression()) #18, !dbg !1979
  %85 = load i8, i8* %84, align 1, !dbg !1982, !tbaa !1324
  call void @llvm.dbg.value(metadata i8 %85, metadata !1963, metadata !DIExpression()) #18, !dbg !1979
  %86 = load i8, i8* %80, align 1, !dbg !1983, !tbaa !1324
  %87 = sext i8 %86 to i32, !dbg !1983
  %88 = tail call i8* @memchr(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i32 %87, i64 6) #18, !dbg !1983
  %89 = icmp ne i8* %88, null, !dbg !1983
  %90 = getelementptr inbounds %struct.Word, %struct.Word* %72, i64 0, i32 3, !dbg !1984
  %91 = zext i1 %89 to i8, !dbg !1985
  %92 = load i8, i8* %90, align 8, !dbg !1985
  %93 = and i8 %92, -2, !dbg !1985
  %94 = or i8 %93, %91, !dbg !1985
  store i8 %94, i8* %90, align 8, !dbg !1985
  %95 = load i16*, i16** %69, align 8, !dbg !1957, !tbaa !1233
  %96 = zext i8 %85 to i64, !dbg !1957
  %97 = getelementptr inbounds i16, i16* %95, i64 %96, !dbg !1957
  %98 = load i16, i16* %97, align 2, !dbg !1957, !tbaa !1966
  %99 = trunc i16 %98 to i8, !dbg !1986
  %100 = and i8 %99, 4, !dbg !1986
  %101 = and i8 %94, -5, !dbg !1986
  %102 = or i8 %100, %101, !dbg !1986
  store i8 %102, i8* %90, align 8, !dbg !1986
  call void @llvm.dbg.value(metadata i8* %84, metadata !1962, metadata !DIExpression()) #18, !dbg !1979
  %103 = icmp sgt i32 %76, 1, !dbg !1987
  br i1 %103, label %104, label %113, !dbg !1988

104:                                              ; preds = %68, %110
  %105 = phi i8* [ %111, %110 ], [ %84, %68 ]
  call void @llvm.dbg.value(metadata i8* %105, metadata !1962, metadata !DIExpression()) #18, !dbg !1979
  %106 = load i8, i8* %105, align 1, !dbg !1989, !tbaa !1324
  %107 = sext i8 %106 to i32, !dbg !1989
  %108 = tail call i8* @memchr(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i32 %107, i64 5) #18, !dbg !1989
  %109 = icmp eq i8* %108, null, !dbg !1989
  br i1 %109, label %113, label %110, !dbg !1990

110:                                              ; preds = %104
  %111 = getelementptr inbounds i8, i8* %105, i64 -1, !dbg !1991
  call void @llvm.dbg.value(metadata i8* %111, metadata !1962, metadata !DIExpression()) #18, !dbg !1979
  %112 = icmp ugt i8* %111, %80, !dbg !1987
  br i1 %112, label %104, label %113, !dbg !1988, !llvm.loop !1992

113:                                              ; preds = %104, %110, %68
  %114 = phi i8* [ %84, %68 ], [ %111, %110 ], [ %105, %104 ], !dbg !1979
  call void @llvm.dbg.value(metadata i8* %114, metadata !1962, metadata !DIExpression()) #18, !dbg !1979
  call void @llvm.dbg.value(metadata i8* %114, metadata !1962, metadata !DIExpression()) #18, !dbg !1979
  %115 = load i8, i8* %114, align 1, !dbg !1993, !tbaa !1324
  %116 = zext i8 %115 to i64, !dbg !1993
  %117 = icmp ugt i8 %115, 63, !dbg !1993
  %118 = shl nuw i64 1, %116, !dbg !1993
  %119 = and i64 %118, -9223301659520663551, !dbg !1993
  %120 = icmp eq i64 %119, 0, !dbg !1993
  %121 = or i1 %117, %120, !dbg !1993
  %122 = select i1 %121, i8 0, i8 2, !dbg !1994
  %123 = and i8 %102, -3, !dbg !1994
  %124 = or i8 %122, %123, !dbg !1994
  store i8 %124, i8* %90, align 8, !dbg !1994
  call void @llvm.dbg.value(metadata i32 %79, metadata !1906, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1837, metadata !DIExpression()) #18, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %55, metadata !1838, metadata !DIExpression()) #18, !dbg !1995
  br label %125, !dbg !1997

125:                                              ; preds = %146, %113
  %126 = phi i32 [ %70, %113 ], [ %147, %146 ]
  call void @llvm.dbg.value(metadata i32 %126, metadata !1838, metadata !DIExpression()) #18, !dbg !1995
  switch i32 %126, label %148 [
    i32 32, label %127
    i32 9, label %130
  ], !dbg !1998

127:                                              ; preds = %125
  %128 = load i32, i32* @in_column, align 4, !dbg !1999, !tbaa !1314
  %129 = add nsw i32 %128, 1, !dbg !1999
  br label %135, !dbg !2000

130:                                              ; preds = %125
  store i1 true, i1* @tabs, align 1, !dbg !2001
  %131 = load i32, i32* @in_column, align 4, !dbg !2002, !tbaa !1314
  %132 = sdiv i32 %131, 8, !dbg !2003
  %133 = shl nsw i32 %132, 3, !dbg !2004
  %134 = add i32 %133, 8, !dbg !2004
  br label %135

135:                                              ; preds = %130, %127
  %136 = phi i32 [ %134, %130 ], [ %129, %127 ], !dbg !2005
  store i32 %136, i32* @in_column, align 4, !dbg !2005, !tbaa !1314
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1476, metadata !DIExpression()) #18, !dbg !2006
  %137 = load i8*, i8** %3, align 8, !dbg !2008, !tbaa !1628
  %138 = load i8*, i8** %4, align 8, !dbg !2008, !tbaa !1629
  %139 = icmp ult i8* %137, %138, !dbg !2008
  br i1 %139, label %142, label %140, !dbg !2008, !prof !1548, !misexpect !1549

140:                                              ; preds = %135
  %141 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #18, !dbg !2008
  br label %146, !dbg !2008

142:                                              ; preds = %135
  %143 = getelementptr inbounds i8, i8* %137, i64 1, !dbg !2008
  store i8* %143, i8** %3, align 8, !dbg !2008, !tbaa !1628
  %144 = load i8, i8* %137, align 1, !dbg !2008, !tbaa !1324
  %145 = zext i8 %144 to i32, !dbg !2008
  br label %146, !dbg !2008

146:                                              ; preds = %142, %140
  %147 = phi i32 [ %141, %140 ], [ %145, %142 ]
  br label %125, !dbg !1995, !llvm.loop !2009

148:                                              ; preds = %125
  call void @llvm.dbg.value(metadata i32 %126, metadata !1838, metadata !DIExpression()) #18, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %126, metadata !1838, metadata !DIExpression()) #18, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %126, metadata !1838, metadata !DIExpression()) #18, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %126, metadata !1838, metadata !DIExpression()) #18, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %126, metadata !1838, metadata !DIExpression()) #18, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %126, metadata !1838, metadata !DIExpression()) #18, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %126, metadata !1838, metadata !DIExpression()) #18, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %126, metadata !1838, metadata !DIExpression()) #18, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %126, metadata !1838, metadata !DIExpression()) #18, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %126, metadata !1905, metadata !DIExpression()), !dbg !1909
  %149 = load i32, i32* @in_column, align 4, !dbg !2011, !tbaa !1314
  %150 = sub nsw i32 %149, %79, !dbg !2012
  %151 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !2013, !tbaa !1233
  %152 = getelementptr inbounds %struct.Word, %struct.Word* %151, i64 0, i32 2, !dbg !2014
  store i32 %150, i32* %152, align 4, !dbg !2015, !tbaa !2016
  %153 = icmp eq i32 %126, -1, !dbg !2017
  %154 = getelementptr inbounds %struct.Word, %struct.Word* %151, i64 0, i32 3, !dbg !2018
  %155 = load i8, i8* %154, align 8, !dbg !2018
  br i1 %153, label %161, label %156, !dbg !2019

156:                                              ; preds = %148
  %157 = and i8 %155, 2, !dbg !2020
  %158 = icmp eq i8 %157, 0, !dbg !2021
  br i1 %158, label %167, label %159, !dbg !2022

159:                                              ; preds = %156
  %160 = icmp eq i32 %126, 10, !dbg !2023
  br i1 %160, label %161, label %163, !dbg !2024

161:                                              ; preds = %148, %159
  %162 = getelementptr inbounds %struct.Word, %struct.Word* %151, i64 0, i32 3, !dbg !2025
  br label %165, !dbg !2026

163:                                              ; preds = %159
  %164 = icmp sgt i32 %150, 1, !dbg !2027
  br i1 %164, label %165, label %167, !dbg !2026

165:                                              ; preds = %161, %163
  %166 = phi i8* [ %162, %161 ], [ %154, %163 ]
  br label %167, !dbg !2026

167:                                              ; preds = %156, %163, %165
  %168 = phi i8* [ %166, %165 ], [ %154, %163 ], [ %154, %156 ]
  %169 = phi i8 [ 8, %165 ], [ 0, %163 ], [ 0, %156 ]
  %170 = and i8 %155, -9, !dbg !2026
  %171 = or i8 %169, %170, !dbg !2026
  store i8 %171, i8* %168, align 8, !dbg !2026
  switch i32 %126, label %172 [
    i32 -1, label %174
    i32 10, label %174
  ], !dbg !2028

172:                                              ; preds = %167
  %173 = load i1, i1* @uniform, align 1, !dbg !2030
  br i1 %173, label %174, label %177, !dbg !2031

174:                                              ; preds = %167, %167, %172
  %175 = icmp eq i8 %169, 0, !dbg !2032
  %176 = select i1 %175, i32 1, i32 2, !dbg !2032
  store i32 %176, i32* %152, align 4, !dbg !2033, !tbaa !2016
  br label %177, !dbg !2034

177:                                              ; preds = %174, %172
  %178 = icmp eq %struct.Word* %151, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 998), !dbg !2035
  br i1 %178, label %179, label %200, !dbg !2037

179:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i1 true, metadata !1659, metadata !DIExpression()), !dbg !2038
  %180 = load i1, i1* @split, align 1, !dbg !2041
  br i1 %180, label %181, label %183, !dbg !2042

181:                                              ; preds = %179
  %182 = load i32, i32* @first_indent, align 4, !dbg !2043, !tbaa !1314
  br label %196, !dbg !2044

183:                                              ; preds = %179
  %184 = load i1, i1* @crown, align 1, !dbg !2045
  br i1 %184, label %196, label %185, !dbg !2046

185:                                              ; preds = %183
  %186 = load i1, i1* @tagged, align 1, !dbg !2047
  %187 = load i32, i32* @first_indent, align 4, !dbg !2048, !tbaa !1314
  br i1 %186, label %188, label %196, !dbg !2049

188:                                              ; preds = %185
  %189 = icmp eq i32 %149, %187, !dbg !2050
  br i1 %189, label %190, label %196, !dbg !2051

190:                                              ; preds = %188
  %191 = load i32, i32* @other_indent, align 4, !dbg !2052, !tbaa !1314
  %192 = icmp eq i32 %191, %149, !dbg !2053
  br i1 %192, label %193, label %198, !dbg !2054

193:                                              ; preds = %190
  %194 = icmp eq i32 %149, 0, !dbg !2055
  %195 = select i1 %194, i32 3, i32 0, !dbg !2056
  br label %196, !dbg !2057

196:                                              ; preds = %185, %188, %183, %193, %181
  %197 = phi i32 [ %182, %181 ], [ %195, %193 ], [ %149, %183 ], [ %149, %188 ], [ %187, %185 ]
  store i32 %197, i32* @other_indent, align 4, !dbg !2058, !tbaa !1314
  br label %198, !dbg !2059

198:                                              ; preds = %196, %190
  tail call fastcc void @flush_paragraph(), !dbg !2059
  %199 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !2060, !tbaa !1233
  br label %200, !dbg !2061

200:                                              ; preds = %198, %177
  %201 = phi %struct.Word* [ %199, %198 ], [ %151, %177 ], !dbg !2060
  %202 = getelementptr inbounds %struct.Word, %struct.Word* %201, i64 1, !dbg !2060
  store %struct.Word* %202, %struct.Word** @word_limit, align 8, !dbg !2060, !tbaa !1233
  %203 = bitcast %struct.Word* %202 to i64*, !dbg !2062
  switch i32 %126, label %6 [
    i32 -1, label %204
    i32 10, label %204
  ], !dbg !2062

204:                                              ; preds = %200, %200
  %205 = tail call fastcc i32 @get_prefix(%struct._IO_FILE* %0), !dbg !2063
  ret i32 %205, !dbg !2064
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define internal fastcc void @fmt_paragraph() unnamed_addr #11 !dbg !2065 {
  %1 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !2073, !tbaa !1233
  %2 = getelementptr inbounds %struct.Word, %struct.Word* %1, i64 0, i32 5, !dbg !2074
  store i64 0, i64* %2, align 8, !dbg !2075, !tbaa !2076
  %3 = getelementptr inbounds %struct.Word, %struct.Word* %1, i64 0, i32 1, !dbg !2077
  %4 = load i32, i32* %3, align 8, !dbg !2077, !tbaa !1977
  call void @llvm.dbg.value(metadata i32 %4, metadata !2072, metadata !DIExpression()), !dbg !2078
  %5 = load i32, i32* @max_width, align 4, !dbg !2079, !tbaa !1314
  store i32 %5, i32* %3, align 8, !dbg !2080, !tbaa !1977
  call void @llvm.dbg.value(metadata %struct.Word* %1, metadata !2067, metadata !DIExpression(DW_OP_constu, 40, DW_OP_minus, DW_OP_stack_value)), !dbg !2078
  %6 = getelementptr inbounds %struct.Word, %struct.Word* %1, i64 -1, !dbg !2081
  call void @llvm.dbg.value(metadata %struct.Word* %6, metadata !2067, metadata !DIExpression()), !dbg !2078
  %7 = icmp ult %struct.Word* %6, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !2083
  br i1 %7, label %124, label %8, !dbg !2085

8:                                                ; preds = %0
  %9 = load i32, i32* @first_indent, align 4, !dbg !2086
  %10 = load i32, i32* @other_indent, align 4, !dbg !2086
  %11 = load i32, i32* @goal_width, align 4, !dbg !2088
  %12 = load i32, i32* @last_line_length, align 4, !dbg !2099
  %13 = icmp sgt i32 %12, 0, !dbg !2099
  br label %14, !dbg !2085

14:                                               ; preds = %8, %118
  %15 = phi %struct.Word* [ %6, %8 ], [ %122, %118 ]
  %16 = phi %struct.Word* [ %1, %8 ], [ %15, %118 ]
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !2071, metadata !DIExpression()), !dbg !2078
  %17 = icmp eq %struct.Word* %15, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !2101
  %18 = select i1 %17, i32 %9, i32 %10, !dbg !2102
  call void @llvm.dbg.value(metadata i32 %18, metadata !2069, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata %struct.Word* %15, metadata !2068, metadata !DIExpression()), !dbg !2078
  %19 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 1, !dbg !2103
  %20 = load i32, i32* %19, align 8, !dbg !2103, !tbaa !1977
  %21 = add nsw i32 %18, %20, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %21, metadata !2069, metadata !DIExpression()), !dbg !2078
  %22 = and i1 %17, %13, !dbg !2099
  %23 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 6, !dbg !2105
  %24 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 4, !dbg !2105
  br label %25, !dbg !2108

25:                                               ; preds = %66, %14
  %26 = phi %struct.Word* [ %15, %14 ], [ %29, %66 ], !dbg !2086
  %27 = phi i32 [ %21, %14 ], [ %72, %66 ], !dbg !2086
  %28 = phi i64 [ 9223372036854775807, %14 ], [ %65, %66 ], !dbg !2086
  call void @llvm.dbg.value(metadata i64 %28, metadata !2071, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 %27, metadata !2069, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata %struct.Word* %26, metadata !2068, metadata !DIExpression()), !dbg !2078
  %29 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, !dbg !2109
  call void @llvm.dbg.value(metadata %struct.Word* %29, metadata !2068, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata %struct.Word* %29, metadata !2093, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %27, metadata !2094, metadata !DIExpression()), !dbg !2088
  %30 = icmp eq %struct.Word* %1, %29, !dbg !2110
  br i1 %30, label %48, label %31, !dbg !2112

31:                                               ; preds = %25
  %32 = sub nsw i32 %11, %27, !dbg !2113
  call void @llvm.dbg.value(metadata i32 %32, metadata !2095, metadata !DIExpression()), !dbg !2088
  %33 = mul nsw i32 %32, 10, !dbg !2114
  %34 = sext i32 %33 to i64, !dbg !2114
  %35 = mul nsw i64 %34, %34, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %35, metadata !2096, metadata !DIExpression()), !dbg !2088
  %36 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, i32 6, !dbg !2115
  %37 = load %struct.Word*, %struct.Word** %36, align 8, !dbg !2115, !tbaa !1805
  %38 = icmp eq %struct.Word* %37, %1, !dbg !2117
  br i1 %38, label %48, label %39, !dbg !2118

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, i32 4, !dbg !2119
  %41 = load i32, i32* %40, align 4, !dbg !2119, !tbaa !2121
  %42 = sub nsw i32 %27, %41, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %42, metadata !2095, metadata !DIExpression()), !dbg !2088
  %43 = mul nsw i32 %42, 10, !dbg !2123
  %44 = sext i32 %43 to i64, !dbg !2123
  %45 = mul nsw i64 %44, %44, !dbg !2123
  %46 = lshr exact i64 %45, 1, !dbg !2123
  %47 = add nuw nsw i64 %46, %35, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %47, metadata !2096, metadata !DIExpression()), !dbg !2088
  br label %48, !dbg !2125

48:                                               ; preds = %25, %31, %39
  %49 = phi i64 [ 0, %25 ], [ %47, %39 ], [ %35, %31 ], !dbg !2088
  %50 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, i32 5, !dbg !2126
  %51 = load i64, i64* %50, align 8, !dbg !2126, !tbaa !2076
  %52 = add nsw i64 %51, %49, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %52, metadata !2070, metadata !DIExpression()), !dbg !2078
  br i1 %22, label %53, label %60, !dbg !2128

53:                                               ; preds = %48
  %54 = sub nsw i32 %27, %12, !dbg !2129
  %55 = mul nsw i32 %54, 10, !dbg !2129
  %56 = sext i32 %55 to i64, !dbg !2129
  %57 = mul nsw i64 %56, %56, !dbg !2129
  %58 = lshr exact i64 %57, 1, !dbg !2129
  %59 = add nsw i64 %58, %52, !dbg !2130
  call void @llvm.dbg.value(metadata i64 %59, metadata !2070, metadata !DIExpression()), !dbg !2078
  br label %60, !dbg !2131

60:                                               ; preds = %53, %48
  %61 = phi i64 [ %59, %53 ], [ %52, %48 ], !dbg !2132
  call void @llvm.dbg.value(metadata i64 %61, metadata !2070, metadata !DIExpression()), !dbg !2078
  %62 = icmp slt i64 %61, %28, !dbg !2133
  br i1 %62, label %63, label %64, !dbg !2134

63:                                               ; preds = %60
  call void @llvm.dbg.value(metadata i64 %61, metadata !2071, metadata !DIExpression()), !dbg !2078
  store %struct.Word* %29, %struct.Word** %23, align 8, !dbg !2135, !tbaa !1805
  store i32 %27, i32* %24, align 4, !dbg !2136, !tbaa !2121
  br label %64, !dbg !2137

64:                                               ; preds = %63, %60
  %65 = phi i64 [ %61, %63 ], [ %28, %60 ], !dbg !2086
  call void @llvm.dbg.value(metadata i64 %65, metadata !2071, metadata !DIExpression()), !dbg !2078
  br i1 %30, label %74, label %66, !dbg !2138

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 0, i32 2, !dbg !2139
  %68 = load i32, i32* %67, align 4, !dbg !2139, !tbaa !2016
  %69 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, i32 1, !dbg !2140
  %70 = load i32, i32* %69, align 8, !dbg !2140, !tbaa !1977
  %71 = add i32 %68, %27, !dbg !2141
  %72 = add i32 %71, %70, !dbg !2142
  call void @llvm.dbg.value(metadata i32 %72, metadata !2069, metadata !DIExpression()), !dbg !2078
  %73 = icmp slt i32 %72, %5, !dbg !2143
  br i1 %73, label %25, label %74, !dbg !2144, !llvm.loop !2145

74:                                               ; preds = %64, %66
  call void @llvm.dbg.value(metadata i64 %65, metadata !2071, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %65, metadata !2071, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %65, metadata !2071, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %65, metadata !2071, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %65, metadata !2071, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %65, metadata !2071, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %65, metadata !2071, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %65, metadata !2071, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %65, metadata !2071, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %65, metadata !2071, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %65, metadata !2071, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %65, metadata !2071, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata %struct.Word* %15, metadata !2147, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i64 4900, metadata !2152, metadata !DIExpression()), !dbg !2153
  %75 = icmp ugt %struct.Word* %15, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !2155
  br i1 %75, label %76, label %102, !dbg !2157

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -2, i32 3, !dbg !2158
  %78 = load i8, i8* %77, align 8, !dbg !2158
  %79 = and i8 %78, 2, !dbg !2158
  %80 = icmp eq i8 %79, 0, !dbg !2161
  br i1 %80, label %85, label %81, !dbg !2162

81:                                               ; preds = %76
  %82 = and i8 %78, 8, !dbg !2163
  %83 = icmp eq i8 %82, 0, !dbg !2166
  %84 = select i1 %83, i64 364900, i64 2400
  br label %102

85:                                               ; preds = %76
  %86 = and i8 %78, 4, !dbg !2167
  %87 = icmp eq i8 %86, 0, !dbg !2169
  br i1 %87, label %88, label %102, !dbg !2170

88:                                               ; preds = %85
  %89 = icmp ugt %struct.Word* %15, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 1), !dbg !2171
  br i1 %89, label %90, label %102, !dbg !2173

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -3, i32 3, !dbg !2174
  %92 = load i8, i8* %91, align 8, !dbg !2174
  %93 = and i8 %92, 8, !dbg !2174
  %94 = icmp eq i8 %93, 0, !dbg !2175
  br i1 %94, label %102, label %95, !dbg !2176

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -2, i32 1, !dbg !2177
  %97 = load i32, i32* %96, align 8, !dbg !2177, !tbaa !1977
  %98 = add nsw i32 %97, 2, !dbg !2177
  %99 = sext i32 %98 to i64, !dbg !2177
  %100 = sdiv i64 40000, %99, !dbg !2177
  %101 = add nsw i64 %100, 4900, !dbg !2178
  call void @llvm.dbg.value(metadata i64 %101, metadata !2152, metadata !DIExpression()), !dbg !2153
  br label %102, !dbg !2179

102:                                              ; preds = %95, %90, %88, %85, %81, %74
  %103 = phi i64 [ %101, %95 ], [ 4900, %90 ], [ 4900, %88 ], [ 4900, %74 ], [ %84, %81 ], [ 3300, %85 ], !dbg !2153
  call void @llvm.dbg.value(metadata i64 %103, metadata !2152, metadata !DIExpression()), !dbg !2153
  %104 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 3, !dbg !2180
  %105 = load i8, i8* %104, align 8, !dbg !2180
  %106 = and i8 %105, 1, !dbg !2180
  %107 = icmp eq i8 %106, 0, !dbg !2182
  br i1 %107, label %110, label %108, !dbg !2183

108:                                              ; preds = %102
  %109 = add nsw i64 %103, -1600, !dbg !2184
  call void @llvm.dbg.value(metadata i64 %109, metadata !2152, metadata !DIExpression()), !dbg !2153
  br label %118, !dbg !2185

110:                                              ; preds = %102
  %111 = and i8 %105, 8, !dbg !2186
  %112 = icmp eq i8 %111, 0, !dbg !2188
  br i1 %112, label %118, label %113, !dbg !2189

113:                                              ; preds = %110
  %114 = add nsw i32 %20, 2, !dbg !2190
  %115 = sext i32 %114 to i64, !dbg !2190
  %116 = sdiv i64 22500, %115, !dbg !2190
  %117 = add nsw i64 %116, %103, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %117, metadata !2152, metadata !DIExpression()), !dbg !2153
  br label %118, !dbg !2192

118:                                              ; preds = %108, %110, %113
  %119 = phi i64 [ %109, %108 ], [ %117, %113 ], [ %103, %110 ], !dbg !2153
  call void @llvm.dbg.value(metadata i64 %119, metadata !2152, metadata !DIExpression()), !dbg !2153
  %120 = add nsw i64 %119, %65, !dbg !2193
  %121 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 5, !dbg !2194
  store i64 %120, i64* %121, align 8, !dbg !2195, !tbaa !2076
  call void @llvm.dbg.value(metadata %struct.Word* %15, metadata !2067, metadata !DIExpression(DW_OP_constu, 40, DW_OP_minus, DW_OP_stack_value)), !dbg !2078
  %122 = getelementptr inbounds %struct.Word, %struct.Word* %15, i64 -1, !dbg !2081
  call void @llvm.dbg.value(metadata %struct.Word* %122, metadata !2067, metadata !DIExpression()), !dbg !2078
  %123 = icmp ult %struct.Word* %122, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !2083
  br i1 %123, label %124, label %14, !dbg !2085, !llvm.loop !2196

124:                                              ; preds = %118, %0
  store i32 %4, i32* %3, align 8, !dbg !2198, !tbaa !1977
  ret void, !dbg !2199
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @put_line(%struct.Word* readonly %0, i32 %1) unnamed_addr #8 !dbg !2200 {
  call void @llvm.dbg.value(metadata %struct.Word* %0, metadata !2204, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i32 %1, metadata !2205, metadata !DIExpression()), !dbg !2207
  store i32 0, i32* @out_column, align 4, !dbg !2208, !tbaa !1314
  %3 = load i32, i32* @prefix_indent, align 4, !dbg !2209, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 %3, metadata !1517, metadata !DIExpression()) #18, !dbg !2210
  call void @llvm.dbg.value(metadata i32 %3, metadata !1520, metadata !DIExpression()) #18, !dbg !2210
  %4 = load i1, i1* @tabs, align 1, !dbg !2212
  br i1 %4, label %5, label %28, !dbg !2213

5:                                                ; preds = %2
  %6 = sdiv i32 %3, 8, !dbg !2214
  %7 = shl nsw i32 %6, 3, !dbg !2215
  call void @llvm.dbg.value(metadata i32 %7, metadata !1521, metadata !DIExpression()) #18, !dbg !2210
  %8 = icmp sgt i32 %3, 7, !dbg !2216
  br i1 %8, label %9, label %28, !dbg !2217

9:                                                ; preds = %5, %22
  %10 = phi i32 [ %26, %22 ], [ 0, %5 ]
  call void @llvm.dbg.value(metadata i32 9, metadata !1534, metadata !DIExpression()) #18, !dbg !2218
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2220, !tbaa !1233
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %11, i64 0, i32 5, !dbg !2220
  %13 = load i8*, i8** %12, align 8, !dbg !2220, !tbaa !1543
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %11, i64 0, i32 6, !dbg !2220
  %15 = load i8*, i8** %14, align 8, !dbg !2220, !tbaa !1547
  %16 = icmp ult i8* %13, %15, !dbg !2220
  br i1 %16, label %20, label %17, !dbg !2220, !prof !1548, !misexpect !1549

17:                                               ; preds = %9
  %18 = tail call i32 @__overflow(%struct._IO_FILE* %11, i32 9) #18, !dbg !2220
  %19 = load i32, i32* @out_column, align 4, !dbg !2221, !tbaa !1314
  br label %22, !dbg !2220

20:                                               ; preds = %9
  %21 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !2220
  store i8* %21, i8** %12, align 8, !dbg !2220, !tbaa !1543
  store i8 9, i8* %13, align 1, !dbg !2220, !tbaa !1324
  br label %22, !dbg !2220

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %19, %17 ], [ %10, %20 ], !dbg !2221
  %24 = sdiv i32 %23, 8, !dbg !2222
  %25 = shl nsw i32 %24, 3, !dbg !2223
  %26 = add i32 %25, 8, !dbg !2223
  store i32 %26, i32* @out_column, align 4, !dbg !2224, !tbaa !1314
  %27 = icmp slt i32 %26, %7, !dbg !2225
  br i1 %27, label %9, label %28, !dbg !2226, !llvm.loop !2227

28:                                               ; preds = %22, %5, %2
  %29 = phi i32 [ 0, %5 ], [ 0, %2 ], [ %26, %22 ], !dbg !2229
  %30 = icmp slt i32 %29, %3, !dbg !2230
  br i1 %30, label %31, label %48, !dbg !2231

31:                                               ; preds = %28, %44
  %32 = phi i32 [ %46, %44 ], [ %29, %28 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1534, metadata !DIExpression()) #18, !dbg !2232
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2234, !tbaa !1233
  %34 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %33, i64 0, i32 5, !dbg !2234
  %35 = load i8*, i8** %34, align 8, !dbg !2234, !tbaa !1543
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %33, i64 0, i32 6, !dbg !2234
  %37 = load i8*, i8** %36, align 8, !dbg !2234, !tbaa !1547
  %38 = icmp ult i8* %35, %37, !dbg !2234
  br i1 %38, label %42, label %39, !dbg !2234, !prof !1548, !misexpect !1549

39:                                               ; preds = %31
  %40 = tail call i32 @__overflow(%struct._IO_FILE* %33, i32 32) #18, !dbg !2234
  %41 = load i32, i32* @out_column, align 4, !dbg !2235, !tbaa !1314
  br label %44, !dbg !2234

42:                                               ; preds = %31
  %43 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !2234
  store i8* %43, i8** %34, align 8, !dbg !2234, !tbaa !1543
  store i8 32, i8* %35, align 1, !dbg !2234, !tbaa !1324
  br label %44, !dbg !2234

44:                                               ; preds = %39, %42
  %45 = phi i32 [ %41, %39 ], [ %32, %42 ], !dbg !2235
  %46 = add nsw i32 %45, 1, !dbg !2235
  store i32 %46, i32* @out_column, align 4, !dbg !2235, !tbaa !1314
  %47 = icmp slt i32 %46, %3, !dbg !2230
  br i1 %47, label %31, label %48, !dbg !2231, !llvm.loop !2236

48:                                               ; preds = %44, %28
  %49 = load i8*, i8** @prefix, align 8, !dbg !2238, !tbaa !1233
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2238, !tbaa !1233
  %51 = tail call i32 @fputs_unlocked(i8* %49, %struct._IO_FILE* %50), !dbg !2238
  %52 = load i32, i32* @prefix_length, align 4, !dbg !2239, !tbaa !1314
  %53 = load i32, i32* @out_column, align 4, !dbg !2240, !tbaa !1314
  %54 = add nsw i32 %53, %52, !dbg !2240
  store i32 %54, i32* @out_column, align 4, !dbg !2240, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 undef, metadata !1517, metadata !DIExpression()) #18, !dbg !2241
  call void @llvm.dbg.value(metadata i32 %1, metadata !1520, metadata !DIExpression()) #18, !dbg !2241
  %55 = load i1, i1* @tabs, align 1, !dbg !2243
  br i1 %55, label %56, label %82, !dbg !2244

56:                                               ; preds = %48
  %57 = sdiv i32 %1, 8, !dbg !2245
  %58 = shl nsw i32 %57, 3, !dbg !2246
  call void @llvm.dbg.value(metadata i32 %58, metadata !1521, metadata !DIExpression()) #18, !dbg !2241
  %59 = add nsw i32 %54, 1, !dbg !2247
  %60 = icmp slt i32 %59, %58, !dbg !2248
  %61 = icmp slt i32 %54, %58, !dbg !2249
  %62 = and i1 %61, %60, !dbg !2250
  br i1 %62, label %63, label %82, !dbg !2250

63:                                               ; preds = %56, %76
  %64 = phi i32 [ %80, %76 ], [ %54, %56 ]
  call void @llvm.dbg.value(metadata i32 9, metadata !1534, metadata !DIExpression()) #18, !dbg !2251
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2253, !tbaa !1233
  %66 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %65, i64 0, i32 5, !dbg !2253
  %67 = load i8*, i8** %66, align 8, !dbg !2253, !tbaa !1543
  %68 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %65, i64 0, i32 6, !dbg !2253
  %69 = load i8*, i8** %68, align 8, !dbg !2253, !tbaa !1547
  %70 = icmp ult i8* %67, %69, !dbg !2253
  br i1 %70, label %74, label %71, !dbg !2253, !prof !1548, !misexpect !1549

71:                                               ; preds = %63
  %72 = tail call i32 @__overflow(%struct._IO_FILE* %65, i32 9) #18, !dbg !2253
  %73 = load i32, i32* @out_column, align 4, !dbg !2254, !tbaa !1314
  br label %76, !dbg !2253

74:                                               ; preds = %63
  %75 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !2253
  store i8* %75, i8** %66, align 8, !dbg !2253, !tbaa !1543
  store i8 9, i8* %67, align 1, !dbg !2253, !tbaa !1324
  br label %76, !dbg !2253

76:                                               ; preds = %74, %71
  %77 = phi i32 [ %73, %71 ], [ %64, %74 ], !dbg !2254
  %78 = sdiv i32 %77, 8, !dbg !2255
  %79 = shl nsw i32 %78, 3, !dbg !2256
  %80 = add i32 %79, 8, !dbg !2256
  store i32 %80, i32* @out_column, align 4, !dbg !2257, !tbaa !1314
  %81 = icmp slt i32 %80, %58, !dbg !2249
  br i1 %81, label %63, label %82, !dbg !2258, !llvm.loop !2259

82:                                               ; preds = %76, %56, %48
  %83 = phi i32 [ %54, %56 ], [ %54, %48 ], [ %80, %76 ], !dbg !2261
  %84 = icmp slt i32 %83, %1, !dbg !2262
  br i1 %84, label %85, label %102, !dbg !2263

85:                                               ; preds = %82, %98
  %86 = phi i32 [ %100, %98 ], [ %83, %82 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1534, metadata !DIExpression()) #18, !dbg !2264
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2266, !tbaa !1233
  %88 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %87, i64 0, i32 5, !dbg !2266
  %89 = load i8*, i8** %88, align 8, !dbg !2266, !tbaa !1543
  %90 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %87, i64 0, i32 6, !dbg !2266
  %91 = load i8*, i8** %90, align 8, !dbg !2266, !tbaa !1547
  %92 = icmp ult i8* %89, %91, !dbg !2266
  br i1 %92, label %96, label %93, !dbg !2266, !prof !1548, !misexpect !1549

93:                                               ; preds = %85
  %94 = tail call i32 @__overflow(%struct._IO_FILE* %87, i32 32) #18, !dbg !2266
  %95 = load i32, i32* @out_column, align 4, !dbg !2267, !tbaa !1314
  br label %98, !dbg !2266

96:                                               ; preds = %85
  %97 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !2266
  store i8* %97, i8** %88, align 8, !dbg !2266, !tbaa !1543
  store i8 32, i8* %89, align 1, !dbg !2266, !tbaa !1324
  br label %98, !dbg !2266

98:                                               ; preds = %93, %96
  %99 = phi i32 [ %95, %93 ], [ %86, %96 ], !dbg !2267
  %100 = add nsw i32 %99, 1, !dbg !2267
  store i32 %100, i32* @out_column, align 4, !dbg !2267, !tbaa !1314
  %101 = icmp slt i32 %100, %1, !dbg !2262
  br i1 %101, label %85, label %102, !dbg !2263, !llvm.loop !2268

102:                                              ; preds = %98, %82
  %103 = phi i32 [ %83, %82 ], [ %100, %98 ]
  %104 = getelementptr inbounds %struct.Word, %struct.Word* %0, i64 0, i32 6, !dbg !2270
  %105 = load %struct.Word*, %struct.Word** %104, align 8, !dbg !2270, !tbaa !1805
  %106 = getelementptr inbounds %struct.Word, %struct.Word* %105, i64 -1, !dbg !2271
  call void @llvm.dbg.value(metadata %struct.Word* %106, metadata !2206, metadata !DIExpression()), !dbg !2207
  br label %107, !dbg !2272

107:                                              ; preds = %194, %102
  %108 = phi i32 [ %103, %102 ], [ %195, %194 ]
  %109 = phi %struct.Word* [ %0, %102 ], [ %196, %194 ]
  call void @llvm.dbg.value(metadata %struct.Word* %109, metadata !2204, metadata !DIExpression()), !dbg !2207
  %110 = icmp eq %struct.Word* %109, %106, !dbg !2273
  call void @llvm.dbg.value(metadata %struct.Word* %109, metadata !2276, metadata !DIExpression()) #18, !dbg !2281
  call void @llvm.dbg.value(metadata i8* undef, metadata !2279, metadata !DIExpression()) #18, !dbg !2281
  %111 = getelementptr inbounds %struct.Word, %struct.Word* %109, i64 0, i32 1, !dbg !2283
  %112 = load i32, i32* %111, align 8, !dbg !2283, !tbaa !1977
  call void @llvm.dbg.value(metadata i32 %112, metadata !2280, metadata !DIExpression()) #18, !dbg !2281
  call void @llvm.dbg.value(metadata i8* undef, metadata !2279, metadata !DIExpression()) #18, !dbg !2281
  %113 = icmp eq i32 %112, 0, !dbg !2285
  br i1 %113, label %139, label %114, !dbg !2287

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.Word, %struct.Word* %109, i64 0, i32 0, !dbg !2288
  %116 = load i8*, i8** %115, align 8, !dbg !2288, !tbaa !1918
  call void @llvm.dbg.value(metadata i8* %116, metadata !2279, metadata !DIExpression()) #18, !dbg !2281
  call void @llvm.dbg.value(metadata i8* %116, metadata !2279, metadata !DIExpression()) #18, !dbg !2281
  br label %117, !dbg !2287

117:                                              ; preds = %133, %114
  %118 = phi i32 [ %134, %133 ], [ %112, %114 ]
  %119 = phi i8* [ %120, %133 ], [ %116, %114 ]
  call void @llvm.dbg.value(metadata i32 %118, metadata !2280, metadata !DIExpression()) #18, !dbg !2281
  call void @llvm.dbg.value(metadata i8* %119, metadata !2279, metadata !DIExpression()) #18, !dbg !2281
  %120 = getelementptr inbounds i8, i8* %119, i64 1, !dbg !2289
  call void @llvm.dbg.value(metadata i8* %120, metadata !2279, metadata !DIExpression()) #18, !dbg !2281
  %121 = load i8, i8* %119, align 1, !dbg !2289, !tbaa !1324
  call void @llvm.dbg.value(metadata i8 %121, metadata !1534, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !2290
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2292, !tbaa !1233
  %123 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %122, i64 0, i32 5, !dbg !2292
  %124 = load i8*, i8** %123, align 8, !dbg !2292, !tbaa !1543
  %125 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %122, i64 0, i32 6, !dbg !2292
  %126 = load i8*, i8** %125, align 8, !dbg !2292, !tbaa !1547
  %127 = icmp ult i8* %124, %126, !dbg !2292
  br i1 %127, label %131, label %128, !dbg !2292, !prof !1548, !misexpect !1549

128:                                              ; preds = %117
  %129 = zext i8 %121 to i32, !dbg !2289
  call void @llvm.dbg.value(metadata i8 %121, metadata !1534, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !2290
  %130 = tail call i32 @__overflow(%struct._IO_FILE* %122, i32 %129) #18, !dbg !2292
  br label %133, !dbg !2292

131:                                              ; preds = %117
  %132 = getelementptr inbounds i8, i8* %124, i64 1, !dbg !2292
  store i8* %132, i8** %123, align 8, !dbg !2292, !tbaa !1543
  store i8 %121, i8* %124, align 1, !dbg !2292, !tbaa !1324
  br label %133, !dbg !2292

133:                                              ; preds = %131, %128
  %134 = add nsw i32 %118, -1, !dbg !2293
  call void @llvm.dbg.value(metadata i32 %134, metadata !2280, metadata !DIExpression()) #18, !dbg !2281
  call void @llvm.dbg.value(metadata i8* %120, metadata !2279, metadata !DIExpression()) #18, !dbg !2281
  %135 = icmp eq i32 %134, 0, !dbg !2285
  br i1 %135, label %136, label %117, !dbg !2287, !llvm.loop !2294

136:                                              ; preds = %133
  %137 = load i32, i32* %111, align 8, !dbg !2296, !tbaa !1977
  %138 = load i32, i32* @out_column, align 4, !dbg !2297, !tbaa !1314
  br label %139, !dbg !2296

139:                                              ; preds = %107, %136
  %140 = phi i32 [ %138, %136 ], [ %108, %107 ], !dbg !2297
  %141 = phi i32 [ %137, %136 ], [ 0, %107 ], !dbg !2296
  %142 = add nsw i32 %140, %141, !dbg !2297
  store i32 %142, i32* @out_column, align 4, !dbg !2297, !tbaa !1314
  br i1 %110, label %197, label %143, !dbg !2298

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.Word, %struct.Word* %109, i64 0, i32 2, !dbg !2299
  %145 = load i32, i32* %144, align 4, !dbg !2299, !tbaa !2016
  call void @llvm.dbg.value(metadata i32 %145, metadata !1517, metadata !DIExpression()) #18, !dbg !2301
  %146 = add nsw i32 %145, %142, !dbg !2303
  call void @llvm.dbg.value(metadata i32 %146, metadata !1520, metadata !DIExpression()) #18, !dbg !2301
  %147 = load i1, i1* @tabs, align 1, !dbg !2304
  br i1 %147, label %148, label %174, !dbg !2305

148:                                              ; preds = %143
  %149 = sdiv i32 %146, 8, !dbg !2306
  %150 = shl nsw i32 %149, 3, !dbg !2307
  call void @llvm.dbg.value(metadata i32 %150, metadata !1521, metadata !DIExpression()) #18, !dbg !2301
  %151 = add nsw i32 %142, 1, !dbg !2308
  %152 = icmp slt i32 %151, %150, !dbg !2309
  %153 = icmp slt i32 %142, %150, !dbg !2310
  %154 = and i1 %152, %153, !dbg !2311
  br i1 %154, label %155, label %174, !dbg !2311

155:                                              ; preds = %148, %168
  %156 = phi i32 [ %172, %168 ], [ %142, %148 ]
  call void @llvm.dbg.value(metadata i32 9, metadata !1534, metadata !DIExpression()) #18, !dbg !2312
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2314, !tbaa !1233
  %158 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %157, i64 0, i32 5, !dbg !2314
  %159 = load i8*, i8** %158, align 8, !dbg !2314, !tbaa !1543
  %160 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %157, i64 0, i32 6, !dbg !2314
  %161 = load i8*, i8** %160, align 8, !dbg !2314, !tbaa !1547
  %162 = icmp ult i8* %159, %161, !dbg !2314
  br i1 %162, label %166, label %163, !dbg !2314, !prof !1548, !misexpect !1549

163:                                              ; preds = %155
  %164 = tail call i32 @__overflow(%struct._IO_FILE* %157, i32 9) #18, !dbg !2314
  %165 = load i32, i32* @out_column, align 4, !dbg !2315, !tbaa !1314
  br label %168, !dbg !2314

166:                                              ; preds = %155
  %167 = getelementptr inbounds i8, i8* %159, i64 1, !dbg !2314
  store i8* %167, i8** %158, align 8, !dbg !2314, !tbaa !1543
  store i8 9, i8* %159, align 1, !dbg !2314, !tbaa !1324
  br label %168, !dbg !2314

168:                                              ; preds = %166, %163
  %169 = phi i32 [ %165, %163 ], [ %156, %166 ], !dbg !2315
  %170 = sdiv i32 %169, 8, !dbg !2316
  %171 = shl nsw i32 %170, 3, !dbg !2317
  %172 = add i32 %171, 8, !dbg !2317
  store i32 %172, i32* @out_column, align 4, !dbg !2318, !tbaa !1314
  %173 = icmp slt i32 %172, %150, !dbg !2310
  br i1 %173, label %155, label %174, !dbg !2319, !llvm.loop !2320

174:                                              ; preds = %168, %148, %143
  %175 = phi i32 [ %142, %148 ], [ %142, %143 ], [ %172, %168 ]
  %176 = icmp slt i32 %175, %146, !dbg !2322
  br i1 %176, label %177, label %194, !dbg !2323

177:                                              ; preds = %174, %190
  %178 = phi i32 [ %192, %190 ], [ %175, %174 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1534, metadata !DIExpression()) #18, !dbg !2324
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2326, !tbaa !1233
  %180 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %179, i64 0, i32 5, !dbg !2326
  %181 = load i8*, i8** %180, align 8, !dbg !2326, !tbaa !1543
  %182 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %179, i64 0, i32 6, !dbg !2326
  %183 = load i8*, i8** %182, align 8, !dbg !2326, !tbaa !1547
  %184 = icmp ult i8* %181, %183, !dbg !2326
  br i1 %184, label %188, label %185, !dbg !2326, !prof !1548, !misexpect !1549

185:                                              ; preds = %177
  %186 = tail call i32 @__overflow(%struct._IO_FILE* %179, i32 32) #18, !dbg !2326
  %187 = load i32, i32* @out_column, align 4, !dbg !2327, !tbaa !1314
  br label %190, !dbg !2326

188:                                              ; preds = %177
  %189 = getelementptr inbounds i8, i8* %181, i64 1, !dbg !2326
  store i8* %189, i8** %180, align 8, !dbg !2326, !tbaa !1543
  store i8 32, i8* %181, align 1, !dbg !2326, !tbaa !1324
  br label %190, !dbg !2326

190:                                              ; preds = %185, %188
  %191 = phi i32 [ %187, %185 ], [ %178, %188 ], !dbg !2327
  %192 = add nsw i32 %191, 1, !dbg !2327
  store i32 %192, i32* @out_column, align 4, !dbg !2327, !tbaa !1314
  %193 = icmp slt i32 %192, %146, !dbg !2322
  br i1 %193, label %177, label %194, !dbg !2323, !llvm.loop !2328

194:                                              ; preds = %190, %174
  %195 = phi i32 [ %175, %174 ], [ %192, %190 ]
  %196 = getelementptr inbounds %struct.Word, %struct.Word* %109, i64 1, !dbg !2330
  call void @llvm.dbg.value(metadata %struct.Word* %196, metadata !2204, metadata !DIExpression()), !dbg !2207
  br label %107, !dbg !2331, !llvm.loop !2332

197:                                              ; preds = %139
  store i32 %142, i32* @last_line_length, align 4, !dbg !2334, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 10, metadata !1534, metadata !DIExpression()) #18, !dbg !2335
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2337, !tbaa !1233
  %199 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %198, i64 0, i32 5, !dbg !2337
  %200 = load i8*, i8** %199, align 8, !dbg !2337, !tbaa !1543
  %201 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %198, i64 0, i32 6, !dbg !2337
  %202 = load i8*, i8** %201, align 8, !dbg !2337, !tbaa !1547
  %203 = icmp ult i8* %200, %202, !dbg !2337
  br i1 %203, label %206, label %204, !dbg !2337, !prof !1548, !misexpect !1549

204:                                              ; preds = %197
  %205 = tail call i32 @__overflow(%struct._IO_FILE* %198, i32 10) #18, !dbg !2337
  br label %208, !dbg !2337

206:                                              ; preds = %197
  %207 = getelementptr inbounds i8, i8* %200, i64 1, !dbg !2337
  store i8* %207, i8** %199, align 8, !dbg !2337, !tbaa !1543
  store i8 10, i8* %200, align 1, !dbg !2337, !tbaa !1324
  br label %208, !dbg !2337

208:                                              ; preds = %204, %206
  ret void, !dbg !2338
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @flush_paragraph() unnamed_addr #8 !dbg !2339 {
  %1 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !2351, !tbaa !1233
  %2 = icmp eq %struct.Word* %1, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !2352
  br i1 %2, label %3, label %8, !dbg !2353

3:                                                ; preds = %0
  %4 = load i64, i64* bitcast (i8** @wptr to i64*), align 8, !dbg !2354, !tbaa !1233
  %5 = sub i64 %4, ptrtoint ([5000 x i8]* @parabuf to i64), !dbg !2354
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2354, !tbaa !1233
  %7 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i64 1, i64 %5, %struct._IO_FILE* %6), !dbg !2354
  store i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i8** @wptr, align 8, !dbg !2355, !tbaa !1233
  br label %79, !dbg !2356

8:                                                ; preds = %0
  tail call fastcc void @fmt_paragraph(), !dbg !2357
  call void @llvm.dbg.value(metadata %struct.Word* %1, metadata !2341, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !2344, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata %struct.Word* undef, metadata !2342, metadata !DIExpression()), !dbg !2358
  %9 = load %struct.Word*, %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), align 16, !dbg !2359, !tbaa !1805
  call void @llvm.dbg.value(metadata %struct.Word* %9, metadata !2342, metadata !DIExpression()), !dbg !2358
  %10 = icmp eq %struct.Word* %9, %1, !dbg !2361
  br i1 %10, label %31, label %11, !dbg !2363

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Word, %struct.Word* %9, i64 0, i32 5, !dbg !2364
  %13 = load i64, i64* %12, align 8, !dbg !2367, !tbaa !2076
  br label %14, !dbg !2363

14:                                               ; preds = %11, %14
  %15 = phi i64 [ %22, %14 ], [ %13, %11 ], !dbg !2367
  %16 = phi %struct.Word* [ %20, %14 ], [ %9, %11 ]
  %17 = phi %struct.Word* [ %26, %14 ], [ %1, %11 ]
  %18 = phi i64 [ %29, %14 ], [ 9223372036854775807, %11 ]
  call void @llvm.dbg.value(metadata %struct.Word* %17, metadata !2341, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i64 %18, metadata !2344, metadata !DIExpression()), !dbg !2358
  %19 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 0, i32 6, !dbg !2368
  %20 = load %struct.Word*, %struct.Word** %19, align 8, !dbg !2368, !tbaa !1805
  %21 = getelementptr inbounds %struct.Word, %struct.Word* %20, i64 0, i32 5, !dbg !2369
  %22 = load i64, i64* %21, align 8, !dbg !2369, !tbaa !2076
  %23 = sub nsw i64 %15, %22, !dbg !2370
  %24 = icmp slt i64 %23, %18, !dbg !2371
  %25 = select i1 %24, i64 %23, i64 %18, !dbg !2372
  %26 = select i1 %24, %struct.Word* %16, %struct.Word* %17, !dbg !2372
  call void @llvm.dbg.value(metadata %struct.Word* %26, metadata !2341, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i64 %25, metadata !2344, metadata !DIExpression()), !dbg !2358
  %27 = icmp slt i64 %25, 9223372036854775799, !dbg !2373
  %28 = add nsw i64 %25, 9, !dbg !2375
  %29 = select i1 %27, i64 %28, i64 %25, !dbg !2375
  call void @llvm.dbg.value(metadata i64 %29, metadata !2344, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata %struct.Word* undef, metadata !2342, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata %struct.Word* %20, metadata !2342, metadata !DIExpression()), !dbg !2358
  %30 = icmp eq %struct.Word* %20, %1, !dbg !2361
  br i1 %30, label %31, label %14, !dbg !2363, !llvm.loop !2376

31:                                               ; preds = %14, %8
  %32 = phi %struct.Word* [ %1, %8 ], [ %26, %14 ], !dbg !2358
  call void @llvm.dbg.value(metadata %struct.Word* %32, metadata !2341, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata %struct.Word* %32, metadata !1793, metadata !DIExpression()) #18, !dbg !2378
  %33 = load i32, i32* @first_indent, align 4, !dbg !2380, !tbaa !1314
  tail call fastcc void @put_line(%struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), i32 %33) #18, !dbg !2381
  call void @llvm.dbg.value(metadata %struct.Word* undef, metadata !1798, metadata !DIExpression()) #18, !dbg !2378
  %34 = load %struct.Word*, %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), align 16, !dbg !2382, !tbaa !1805
  call void @llvm.dbg.value(metadata %struct.Word* %34, metadata !1798, metadata !DIExpression()) #18, !dbg !2378
  %35 = icmp eq %struct.Word* %34, %32, !dbg !2383
  br i1 %35, label %42, label %36, !dbg !2384

36:                                               ; preds = %31, %36
  %37 = phi %struct.Word* [ %40, %36 ], [ %34, %31 ]
  %38 = load i32, i32* @other_indent, align 4, !dbg !2385, !tbaa !1314
  tail call fastcc void @put_line(%struct.Word* %37, i32 %38) #18, !dbg !2386
  %39 = getelementptr inbounds %struct.Word, %struct.Word* %37, i64 0, i32 6, !dbg !2387
  call void @llvm.dbg.value(metadata %struct.Word* undef, metadata !1798, metadata !DIExpression()) #18, !dbg !2378
  %40 = load %struct.Word*, %struct.Word** %39, align 8, !dbg !2382, !tbaa !1805
  call void @llvm.dbg.value(metadata %struct.Word* %40, metadata !1798, metadata !DIExpression()) #18, !dbg !2378
  %41 = icmp eq %struct.Word* %40, %32, !dbg !2383
  br i1 %41, label %42, label %36, !dbg !2384, !llvm.loop !2388

42:                                               ; preds = %36, %31
  %43 = getelementptr inbounds %struct.Word, %struct.Word* %32, i64 0, i32 0, !dbg !2390
  %44 = load i8*, i8** %43, align 8, !dbg !2390, !tbaa !1918
  %45 = load i64, i64* bitcast (i8** @wptr to i64*), align 8, !dbg !2391, !tbaa !1233
  %46 = ptrtoint i8* %44 to i64, !dbg !2392
  %47 = sub i64 %45, %46, !dbg !2392
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), metadata !2393, metadata !DIExpression()) #18, !dbg !2401
  call void @llvm.dbg.value(metadata i8* %44, metadata !2399, metadata !DIExpression()) #18, !dbg !2401
  call void @llvm.dbg.value(metadata i64 %47, metadata !2400, metadata !DIExpression()) #18, !dbg !2401
  %48 = tail call i8* @__memmove_chk(i8* nonnull getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i8* nonnull %44, i64 %47, i64 5000) #18, !dbg !2403
  %49 = bitcast %struct.Word* %32 to i64*, !dbg !2404
  %50 = load i64, i64* %49, align 8, !dbg !2404, !tbaa !1918
  %51 = sub i64 %50, sext (i32 ptrtoint ([5000 x i8]* @parabuf to i32) to i64), !dbg !2405
  call void @llvm.dbg.value(metadata i32 undef, metadata !2343, metadata !DIExpression()), !dbg !2358
  %52 = load i8*, i8** @wptr, align 8, !dbg !2406, !tbaa !1233
  %53 = shl i64 %51, 32, !dbg !2406
  %54 = ashr exact i64 %53, 32, !dbg !2406
  %55 = sub nsw i64 0, %54, !dbg !2406
  %56 = getelementptr inbounds i8, i8* %52, i64 %55, !dbg !2406
  store i8* %56, i8** @wptr, align 8, !dbg !2406, !tbaa !1233
  call void @llvm.dbg.value(metadata %struct.Word* %32, metadata !2342, metadata !DIExpression()), !dbg !2358
  %57 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !2407, !tbaa !1233
  %58 = icmp ugt %struct.Word* %32, %57, !dbg !2410
  br i1 %58, label %67, label %59, !dbg !2411

59:                                               ; preds = %42, %59
  %60 = phi %struct.Word* [ %64, %59 ], [ %32, %42 ]
  call void @llvm.dbg.value(metadata %struct.Word* %60, metadata !2342, metadata !DIExpression()), !dbg !2358
  %61 = getelementptr inbounds %struct.Word, %struct.Word* %60, i64 0, i32 0, !dbg !2412
  %62 = load i8*, i8** %61, align 8, !dbg !2413, !tbaa !1918
  %63 = getelementptr inbounds i8, i8* %62, i64 %55, !dbg !2413
  store i8* %63, i8** %61, align 8, !dbg !2413, !tbaa !1918
  %64 = getelementptr inbounds %struct.Word, %struct.Word* %60, i64 1, !dbg !2414
  call void @llvm.dbg.value(metadata %struct.Word* %64, metadata !2342, metadata !DIExpression()), !dbg !2358
  %65 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !2407, !tbaa !1233
  %66 = icmp ugt %struct.Word* %64, %65, !dbg !2410
  br i1 %66, label %67, label %59, !dbg !2411, !llvm.loop !2415

67:                                               ; preds = %59, %42
  %68 = phi %struct.Word* [ %57, %42 ], [ %65, %59 ], !dbg !2407
  %69 = bitcast %struct.Word* %32 to i8*, !dbg !2417
  %70 = ptrtoint %struct.Word* %68 to i64, !dbg !2418
  %71 = ptrtoint %struct.Word* %32 to i64, !dbg !2418
  %72 = sub i64 40, %71, !dbg !2418
  %73 = add i64 %72, %70, !dbg !2419
  call void @llvm.dbg.value(metadata i8* bitcast ([1000 x %struct.Word]* @unused_word_type to i8*), metadata !2393, metadata !DIExpression()) #18, !dbg !2420
  call void @llvm.dbg.value(metadata i8* %69, metadata !2399, metadata !DIExpression()) #18, !dbg !2420
  call void @llvm.dbg.value(metadata i64 %73, metadata !2400, metadata !DIExpression()) #18, !dbg !2420
  %74 = tail call i8* @__memmove_chk(i8* nonnull bitcast ([1000 x %struct.Word]* @unused_word_type to i8*), i8* nonnull %69, i64 %73, i64 40000) #18, !dbg !2422
  %75 = sub i64 %71, ptrtoint ([1000 x %struct.Word]* @unused_word_type to i64), !dbg !2423
  %76 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !2424, !tbaa !1233
  %77 = sdiv exact i64 %75, -40, !dbg !2424
  %78 = getelementptr inbounds %struct.Word, %struct.Word* %76, i64 %77, !dbg !2424
  store %struct.Word* %78, %struct.Word** @word_limit, align 8, !dbg !2424, !tbaa !1233
  br label %79, !dbg !2425

79:                                               ; preds = %67, %3
  ret void, !dbg !2425
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nofree nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare !dbg !179 i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i8* @__memmove_chk(i8*, i8*, i64, i64) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #13 !dbg !2426 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2428, metadata !DIExpression()), !dbg !2429
  store i8* %0, i8** @file_name, align 8, !dbg !2430, !tbaa !1233
  ret void, !dbg !2431
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #13 !dbg !2432 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2434, metadata !DIExpression()), !dbg !2435
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2436, !tbaa !2437
  ret void, !dbg !2439
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !2440 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2445, !tbaa !1233
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #18, !dbg !2446
  %3 = icmp eq i32 %2, 0, !dbg !2447
  br i1 %3, label %22, label %4, !dbg !2448

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2449, !tbaa !2437, !range !2450
  %6 = icmp eq i8 %5, 0, !dbg !2449
  br i1 %6, label %11, label %7, !dbg !2451

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !2452
  %9 = load i32, i32* %8, align 4, !dbg !2452, !tbaa !1314
  %10 = icmp eq i32 %9, 32, !dbg !2453
  br i1 %10, label %22, label %11, !dbg !2454

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i32 5) #18, !dbg !2455
  call void @llvm.dbg.value(metadata i8* %12, metadata !2442, metadata !DIExpression()), !dbg !2456
  %13 = load i8*, i8** @file_name, align 8, !dbg !2457, !tbaa !1233
  %14 = icmp eq i8* %13, null, !dbg !2457
  %15 = tail call i32* @__errno_location() #24, !dbg !2459
  %16 = load i32, i32* %15, align 4, !dbg !2459, !tbaa !1314
  br i1 %14, label %19, label %17, !dbg !2460

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #18, !dbg !2461
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.54, i64 0, i64 0), i8* %18, i8* %12) #18, !dbg !2462
  br label %20, !dbg !2462

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.55, i64 0, i64 0), i8* %12) #18, !dbg !2463
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2464, !tbaa !1314
  tail call void @_exit(i32 %21) #22, !dbg !2465
  unreachable, !dbg !2465

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2466, !tbaa !1233
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #18, !dbg !2468
  %25 = icmp eq i32 %24, 0, !dbg !2469
  br i1 %25, label %28, label %26, !dbg !2470

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2471, !tbaa !1314
  tail call void @_exit(i32 %27) #22, !dbg !2472
  unreachable, !dbg !2472

28:                                               ; preds = %22
  ret void, !dbg !2473
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !2474 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2480, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i64 %1, metadata !2481, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i64 %2, metadata !2482, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i32 %3, metadata !2483, metadata !DIExpression()), !dbg !2486
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #18, !dbg !2487
  call void @llvm.dbg.value(metadata i32 %5, metadata !2484, metadata !DIExpression()), !dbg !2488
  ret void, !dbg !2489
}

; Function Attrs: nounwind
declare !dbg !478 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !2490 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2496, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i32 %1, metadata !2497, metadata !DIExpression()), !dbg !2498
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2499
  br i1 %3, label %7, label %4, !dbg !2501

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !2502
  call void @llvm.dbg.value(metadata i32 %5, metadata !2480, metadata !DIExpression()) #18, !dbg !2503
  call void @llvm.dbg.value(metadata i64 0, metadata !2481, metadata !DIExpression()) #18, !dbg !2503
  call void @llvm.dbg.value(metadata i64 0, metadata !2482, metadata !DIExpression()) #18, !dbg !2503
  call void @llvm.dbg.value(metadata i32 %1, metadata !2483, metadata !DIExpression()) #18, !dbg !2503
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #18, !dbg !2505
  call void @llvm.dbg.value(metadata i32 %6, metadata !2484, metadata !DIExpression()) #18, !dbg !2506
  br label %7, !dbg !2507

7:                                                ; preds = %2, %4
  ret void, !dbg !2508
}

; Function Attrs: nofree nounwind
declare !dbg !482 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2509 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2511, metadata !DIExpression()), !dbg !2514
  %2 = icmp eq i8* %0, null, !dbg !2515
  br i1 %2, label %3, label %6, !dbg !2517

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2518, !tbaa !1233
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.64, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !2520
  tail call void @abort() #22, !dbg !2521
  unreachable, !dbg !2521

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !2522
  call void @llvm.dbg.value(metadata i8* %7, metadata !2512, metadata !DIExpression()), !dbg !2514
  %8 = icmp eq i8* %7, null, !dbg !2523
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2524
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2524
  call void @llvm.dbg.value(metadata i8* %10, metadata !2513, metadata !DIExpression()), !dbg !2514
  %11 = ptrtoint i8* %10 to i64, !dbg !2525
  %12 = ptrtoint i8* %0 to i64, !dbg !2525
  %13 = sub i64 %11, %12, !dbg !2525
  %14 = icmp sgt i64 %13, 6, !dbg !2527
  br i1 %14, label %15, label %24, !dbg !2528

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2529
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.65, i64 0, i64 0), i64 7) #21, !dbg !2530
  %18 = icmp eq i32 %17, 0, !dbg !2531
  br i1 %18, label %19, label %24, !dbg !2532

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2511, metadata !DIExpression()), !dbg !2514
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.66, i64 0, i64 0), i64 3) #21, !dbg !2533
  %21 = icmp eq i32 %20, 0, !dbg !2536
  br i1 %21, label %22, label %24, !dbg !2537

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2538
  call void @llvm.dbg.value(metadata i8* %23, metadata !2511, metadata !DIExpression()), !dbg !2514
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2540, !tbaa !1233
  br label %24, !dbg !2541

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2511, metadata !DIExpression()), !dbg !2514
  store i8* %25, i8** @program_name, align 8, !dbg !2542, !tbaa !1233
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2543, !tbaa !1233
  ret void, !dbg !2544
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #15

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2545 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2550, metadata !DIExpression()), !dbg !2553
  %2 = tail call i32* @__errno_location() #24, !dbg !2554
  %3 = load i32, i32* %2, align 4, !dbg !2554, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 %3, metadata !2551, metadata !DIExpression()), !dbg !2553
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2555
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2555
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2555
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #18, !dbg !2556
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2556
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2552, metadata !DIExpression()), !dbg !2553
  store i32 %3, i32* %2, align 4, !dbg !2557, !tbaa !1314
  ret %struct.quoting_options* %8, !dbg !2558
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #16 !dbg !2559 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2563, metadata !DIExpression()), !dbg !2564
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2565
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2565
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2566
  %5 = load i32, i32* %4, align 8, !dbg !2566, !tbaa !2567
  ret i32 %5, !dbg !2569
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #13 !dbg !2570 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2574, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i32 %1, metadata !2575, metadata !DIExpression()), !dbg !2576
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2577
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2577
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2578
  store i32 %1, i32* %5, align 8, !dbg !2579, !tbaa !2567
  ret void, !dbg !2580
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #11 !dbg !2581 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2585, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %1, metadata !2586, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i32 %2, metadata !2587, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %1, metadata !2588, metadata !DIExpression()), !dbg !2593
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2594
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2594
  %6 = lshr i8 %1, 5, !dbg !2595
  %7 = zext i8 %6 to i64, !dbg !2595
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2596
  call void @llvm.dbg.value(metadata i32* %8, metadata !2589, metadata !DIExpression()), !dbg !2593
  %9 = and i8 %1, 31, !dbg !2597
  %10 = zext i8 %9 to i32, !dbg !2597
  call void @llvm.dbg.value(metadata i32 %10, metadata !2591, metadata !DIExpression()), !dbg !2593
  %11 = load i32, i32* %8, align 4, !dbg !2598, !tbaa !1314
  %12 = lshr i32 %11, %10, !dbg !2599
  %13 = and i32 %12, 1, !dbg !2600
  call void @llvm.dbg.value(metadata i32 %13, metadata !2592, metadata !DIExpression()), !dbg !2593
  %14 = and i32 %2, 1, !dbg !2601
  %15 = xor i32 %13, %14, !dbg !2602
  %16 = shl i32 %15, %10, !dbg !2603
  %17 = xor i32 %16, %11, !dbg !2604
  store i32 %17, i32* %8, align 4, !dbg !2604, !tbaa !1314
  ret i32 %13, !dbg !2605
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !2606 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2610, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i32 %1, metadata !2611, metadata !DIExpression()), !dbg !2613
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2614
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2616
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2610, metadata !DIExpression()), !dbg !2613
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2617
  %6 = load i32, i32* %5, align 4, !dbg !2617, !tbaa !2618
  call void @llvm.dbg.value(metadata i32 %6, metadata !2612, metadata !DIExpression()), !dbg !2613
  store i32 %1, i32* %5, align 4, !dbg !2619, !tbaa !2618
  ret i32 %6, !dbg !2620
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2621 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2625, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8* %1, metadata !2626, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8* %2, metadata !2627, metadata !DIExpression()), !dbg !2628
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2629
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2631
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2625, metadata !DIExpression()), !dbg !2628
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2632
  store i32 10, i32* %6, align 8, !dbg !2633, !tbaa !2567
  %7 = icmp ne i8* %1, null, !dbg !2634
  %8 = icmp ne i8* %2, null, !dbg !2636
  %9 = and i1 %7, %8, !dbg !2637
  br i1 %9, label %11, label %10, !dbg !2637

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !2638
  unreachable, !dbg !2638

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2639
  store i8* %1, i8** %12, align 8, !dbg !2640, !tbaa !2641
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2642
  store i8* %2, i8** %13, align 8, !dbg !2643, !tbaa !2644
  ret void, !dbg !2645
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2646 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2650, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i64 %1, metadata !2651, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i8* %2, metadata !2652, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i64 %3, metadata !2653, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2654, metadata !DIExpression()), !dbg !2658
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2659
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2659
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2655, metadata !DIExpression()), !dbg !2658
  %8 = tail call i32* @__errno_location() #24, !dbg !2660
  %9 = load i32, i32* %8, align 4, !dbg !2660, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 %9, metadata !2656, metadata !DIExpression()), !dbg !2658
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2661
  %11 = load i32, i32* %10, align 8, !dbg !2661, !tbaa !2567
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2662
  %13 = load i32, i32* %12, align 4, !dbg !2662, !tbaa !2618
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2663
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2664
  %16 = load i8*, i8** %15, align 8, !dbg !2664, !tbaa !2641
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2665
  %18 = load i8*, i8** %17, align 8, !dbg !2665, !tbaa !2644
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2666
  call void @llvm.dbg.value(metadata i64 %19, metadata !2657, metadata !DIExpression()), !dbg !2658
  store i32 %9, i32* %8, align 4, !dbg !2667, !tbaa !1314
  ret i64 %19, !dbg !2668
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2669 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2675, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %1, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %2, metadata !2677, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %3, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 %4, metadata !2679, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 %5, metadata !2680, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32* %6, metadata !2681, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %7, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %8, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 0, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 0, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* null, metadata !2687, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 0, metadata !2688, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 0, metadata !2689, metadata !DIExpression()), !dbg !2733
  %13 = tail call i64 @__ctype_get_mb_cur_max() #18, !dbg !2734
  %14 = icmp eq i64 %13, 1, !dbg !2735
  call void @llvm.dbg.value(metadata i1 %14, metadata !2690, metadata !DIExpression()), !dbg !2733
  %15 = lshr i32 %5, 1, !dbg !2736
  %16 = trunc i32 %15 to i8, !dbg !2736
  %17 = and i8 %16, 1, !dbg !2736
  call void @llvm.dbg.value(metadata i8 %17, metadata !2691, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 0, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 0, metadata !2693, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 1, metadata !2694, metadata !DIExpression()), !dbg !2733
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2737
  %19 = and i32 %5, 4, !dbg !2739
  %20 = icmp eq i32 %19, 0, !dbg !2739
  %21 = and i32 %5, 1, !dbg !2742
  %22 = icmp eq i32 %21, 0, !dbg !2742
  %23 = bitcast i64* %10 to i8*, !dbg !2745
  %24 = bitcast i32* %12 to i8*, !dbg !2746
  %25 = icmp eq i32* %6, null, !dbg !2747
  br label %26, !dbg !2749

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2750
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2751
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2752
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2753
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2733
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2754
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2755
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2756
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %38, metadata !2694, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %37, metadata !2693, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %36, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %35, metadata !2691, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %34, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %33, metadata !2689, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %32, metadata !2688, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %31, metadata !2687, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %30, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 0, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %29, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %28, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 %27, metadata !2679, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.label(metadata !2727), !dbg !2757
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
  ], !dbg !2758

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2679, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 1, metadata !2691, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %35, metadata !2691, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 5, metadata !2679, metadata !DIExpression()), !dbg !2733
  br label %92, !dbg !2759

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2691, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 5, metadata !2679, metadata !DIExpression()), !dbg !2733
  %42 = and i8 %35, 1, !dbg !2761
  %43 = icmp eq i8 %42, 0, !dbg !2761
  br i1 %43, label %44, label %92, !dbg !2759

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2763
  br i1 %45, label %92, label %46, !dbg !2766

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2763, !tbaa !1324
  br label %92, !dbg !2763

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.77, i64 0, i64 0), i32 %27), !dbg !2767
  call void @llvm.dbg.value(metadata i8* %48, metadata !2682, metadata !DIExpression()), !dbg !2733
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), i32 %27), !dbg !2771
  call void @llvm.dbg.value(metadata i8* %49, metadata !2683, metadata !DIExpression()), !dbg !2733
  br label %50, !dbg !2772

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %51, metadata !2682, metadata !DIExpression()), !dbg !2733
  %53 = and i8 %35, 1, !dbg !2773
  %54 = icmp eq i8 %53, 0, !dbg !2773
  br i1 %54, label %55, label %70, !dbg !2775

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2687, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 0, metadata !2685, metadata !DIExpression()), !dbg !2733
  %56 = load i8, i8* %51, align 1, !dbg !2776, !tbaa !1324
  %57 = icmp eq i8 %56, 0, !dbg !2779
  br i1 %57, label %70, label %58, !dbg !2779

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2687, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %61, metadata !2685, metadata !DIExpression()), !dbg !2733
  %62 = icmp ult i64 %61, %39, !dbg !2780
  br i1 %62, label %63, label %65, !dbg !2783

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2780
  store i8 %59, i8* %64, align 1, !dbg !2780, !tbaa !1324
  br label %65, !dbg !2780

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2783
  call void @llvm.dbg.value(metadata i64 %66, metadata !2685, metadata !DIExpression()), !dbg !2733
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2784
  call void @llvm.dbg.value(metadata i8* %67, metadata !2687, metadata !DIExpression()), !dbg !2733
  %68 = load i8, i8* %67, align 1, !dbg !2776, !tbaa !1324
  %69 = icmp eq i8 %68, 0, !dbg !2779
  br i1 %69, label %70, label %58, !dbg !2779, !llvm.loop !2785

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2787
  call void @llvm.dbg.value(metadata i64 %71, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 1, metadata !2689, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %52, metadata !2687, metadata !DIExpression()), !dbg !2733
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !2788
  call void @llvm.dbg.value(metadata i64 %72, metadata !2688, metadata !DIExpression()), !dbg !2733
  br label %92, !dbg !2789

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2689, metadata !DIExpression()), !dbg !2733
  br label %74, !dbg !2790

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2733
  call void @llvm.dbg.value(metadata i8 %75, metadata !2689, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 1, metadata !2691, metadata !DIExpression()), !dbg !2733
  br label %76, !dbg !2791

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2753
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2733
  call void @llvm.dbg.value(metadata i8 %78, metadata !2691, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %77, metadata !2689, metadata !DIExpression()), !dbg !2733
  %79 = and i8 %78, 1, !dbg !2792
  %80 = icmp eq i8 %79, 0, !dbg !2792
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2794
  br label %82, !dbg !2794

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2733
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2736
  call void @llvm.dbg.value(metadata i8 %84, metadata !2691, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %83, metadata !2689, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 2, metadata !2679, metadata !DIExpression()), !dbg !2733
  %85 = and i8 %84, 1, !dbg !2795
  %86 = icmp eq i8 %85, 0, !dbg !2795
  br i1 %86, label %87, label %92, !dbg !2797

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2798
  br i1 %88, label %92, label %89, !dbg !2801

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2798, !tbaa !1324
  br label %92, !dbg !2798

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2691, metadata !DIExpression()), !dbg !2733
  br label %92, !dbg !2802

91:                                               ; preds = %26
  call void @abort() #22, !dbg !2803
  unreachable, !dbg !2803

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2787
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %40 ], !dbg !2733
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2733
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2733
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2733
  call void @llvm.dbg.value(metadata i8 %100, metadata !2691, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %99, metadata !2689, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %98, metadata !2688, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %97, metadata !2687, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %96, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 %93, metadata !2679, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 0, metadata !2684, metadata !DIExpression()), !dbg !2733
  %101 = and i8 %99, 1, !dbg !2804
  %102 = icmp ne i8 %101, 0, !dbg !2804
  %103 = icmp ne i32 %93, 2, !dbg !2804
  %104 = and i1 %103, %102, !dbg !2804
  %105 = icmp ne i64 %98, 0, !dbg !2804
  %106 = and i1 %105, %104, !dbg !2804
  %107 = icmp ugt i64 %98, 1, !dbg !2804
  %108 = and i8 %100, 1, !dbg !2806
  %109 = icmp eq i8 %108, 0, !dbg !2806
  %110 = icmp eq i32 %93, 2, !dbg !2809
  %111 = or i1 %103, %109, !dbg !2811
  %112 = icmp ne i8 %108, 0, !dbg !2813
  %113 = and i1 %110, %112, !dbg !2813
  %114 = xor i1 %102, true, !dbg !2814
  %115 = xor i1 %104, true, !dbg !2747
  %116 = and i1 %109, %115, !dbg !2747
  %117 = or i1 %25, %116, !dbg !2747
  %118 = and i8 %99, %100, !dbg !2815
  %119 = and i8 %118, 1, !dbg !2815
  %120 = icmp ne i8 %119, 0, !dbg !2815
  %121 = and i1 %120, %105, !dbg !2815
  br label %122, !dbg !2817

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2818
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2787
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2750
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2754
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2755
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2756
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %129, metadata !2694, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %128, metadata !2693, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %127, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %126, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %125, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %123, metadata !2684, metadata !DIExpression()), !dbg !2733
  %131 = icmp eq i64 %126, -1, !dbg !2819
  br i1 %131, label %132, label %136, !dbg !2820

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2821
  %134 = load i8, i8* %133, align 1, !dbg !2821, !tbaa !1324
  %135 = icmp eq i8 %134, 0, !dbg !2822
  br i1 %135, label %581, label %138, !dbg !2823

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2824
  br i1 %137, label %581, label %138, !dbg !2823

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2700, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 0, metadata !2701, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 0, metadata !2702, metadata !DIExpression()), !dbg !2825
  br i1 %106, label %139, label %154, !dbg !2826

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2827
  %141 = and i1 %107, %131, !dbg !2828
  br i1 %141, label %142, label %144, !dbg !2828

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !2829
  call void @llvm.dbg.value(metadata i64 %143, metadata !2678, metadata !DIExpression()), !dbg !2733
  br label %144, !dbg !2830

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2678, metadata !DIExpression()), !dbg !2733
  %146 = icmp ugt i64 %140, %145, !dbg !2831
  br i1 %146, label %154, label %147, !dbg !2832

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2833
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2834
  %150 = icmp ne i32 %149, 0, !dbg !2835
  %151 = or i1 %150, %109, !dbg !2836
  %152 = xor i1 %150, true, !dbg !2836
  %153 = zext i1 %152 to i8, !dbg !2836
  br i1 %151, label %154, label %639, !dbg !2836

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2825
  call void @llvm.dbg.value(metadata i8 %156, metadata !2700, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i64 %155, metadata !2678, metadata !DIExpression()), !dbg !2733
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2837
  %158 = load i8, i8* %157, align 1, !dbg !2837, !tbaa !1324
  call void @llvm.dbg.value(metadata i8 %158, metadata !2695, metadata !DIExpression()), !dbg !2825
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
  ], !dbg !2838

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2839

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2840

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2701, metadata !DIExpression()), !dbg !2825
  %162 = and i8 %127, 1, !dbg !2843
  %163 = icmp eq i8 %162, 0, !dbg !2843
  %164 = and i1 %110, %163, !dbg !2843
  br i1 %164, label %165, label %181, !dbg !2843

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2845
  br i1 %166, label %167, label %169, !dbg !2849

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2845
  store i8 39, i8* %168, align 1, !dbg !2845, !tbaa !1324
  br label %169, !dbg !2845

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %170, metadata !2685, metadata !DIExpression()), !dbg !2733
  %171 = icmp ult i64 %170, %130, !dbg !2850
  br i1 %171, label %172, label %174, !dbg !2853

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2850
  store i8 36, i8* %173, align 1, !dbg !2850, !tbaa !1324
  br label %174, !dbg !2850

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2853
  call void @llvm.dbg.value(metadata i64 %175, metadata !2685, metadata !DIExpression()), !dbg !2733
  %176 = icmp ult i64 %175, %130, !dbg !2854
  br i1 %176, label %177, label %179, !dbg !2857

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2854
  store i8 39, i8* %178, align 1, !dbg !2854, !tbaa !1324
  br label %179, !dbg !2854

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2857
  call void @llvm.dbg.value(metadata i64 %180, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 1, metadata !2692, metadata !DIExpression()), !dbg !2733
  br label %181, !dbg !2858

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2733
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2733
  call void @llvm.dbg.value(metadata i8 %183, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %182, metadata !2685, metadata !DIExpression()), !dbg !2733
  %184 = icmp ult i64 %182, %130, !dbg !2859
  br i1 %184, label %185, label %187, !dbg !2862

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2859
  store i8 92, i8* %186, align 1, !dbg !2859, !tbaa !1324
  br label %187, !dbg !2859

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2862
  call void @llvm.dbg.value(metadata i64 %188, metadata !2685, metadata !DIExpression()), !dbg !2733
  br i1 %103, label %189, label %463, !dbg !2863

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2865
  %191 = icmp ult i64 %190, %155, !dbg !2866
  br i1 %191, label %192, label %463, !dbg !2867

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2868
  %194 = load i8, i8* %193, align 1, !dbg !2868, !tbaa !1324
  %195 = add i8 %194, -48, !dbg !2869
  %196 = icmp ult i8 %195, 10, !dbg !2869
  br i1 %196, label %197, label %463, !dbg !2869

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2870
  br i1 %198, label %199, label %201, !dbg !2874

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2870
  store i8 48, i8* %200, align 1, !dbg !2870, !tbaa !1324
  br label %201, !dbg !2870

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2874
  call void @llvm.dbg.value(metadata i64 %202, metadata !2685, metadata !DIExpression()), !dbg !2733
  %203 = icmp ult i64 %202, %130, !dbg !2875
  br i1 %203, label %204, label %206, !dbg !2878

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2875
  store i8 48, i8* %205, align 1, !dbg !2875, !tbaa !1324
  br label %206, !dbg !2875

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2878
  call void @llvm.dbg.value(metadata i64 %207, metadata !2685, metadata !DIExpression()), !dbg !2733
  br label %463, !dbg !2879

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2880

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2881

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2882

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2883

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2884
  %214 = icmp ult i64 %213, %155, !dbg !2885
  br i1 %214, label %215, label %463, !dbg !2886

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2887
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2888
  %218 = load i8, i8* %217, align 1, !dbg !2888, !tbaa !1324
  %219 = icmp eq i8 %218, 63, !dbg !2889
  br i1 %219, label %220, label %463, !dbg !2890

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2891
  %222 = load i8, i8* %221, align 1, !dbg !2891, !tbaa !1324
  %223 = sext i8 %222 to i32, !dbg !2891
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
  ], !dbg !2892

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2893

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2695, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i64 %213, metadata !2684, metadata !DIExpression()), !dbg !2733
  %226 = icmp ult i64 %124, %130, !dbg !2895
  br i1 %226, label %227, label %229, !dbg !2898

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2895
  store i8 63, i8* %228, align 1, !dbg !2895, !tbaa !1324
  br label %229, !dbg !2895

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2898
  call void @llvm.dbg.value(metadata i64 %230, metadata !2685, metadata !DIExpression()), !dbg !2733
  %231 = icmp ult i64 %230, %130, !dbg !2899
  br i1 %231, label %232, label %234, !dbg !2902

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2899
  store i8 34, i8* %233, align 1, !dbg !2899, !tbaa !1324
  br label %234, !dbg !2899

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2902
  call void @llvm.dbg.value(metadata i64 %235, metadata !2685, metadata !DIExpression()), !dbg !2733
  %236 = icmp ult i64 %235, %130, !dbg !2903
  br i1 %236, label %237, label %239, !dbg !2906

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2903
  store i8 34, i8* %238, align 1, !dbg !2903, !tbaa !1324
  br label %239, !dbg !2903

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2906
  call void @llvm.dbg.value(metadata i64 %240, metadata !2685, metadata !DIExpression()), !dbg !2733
  %241 = icmp ult i64 %240, %130, !dbg !2907
  br i1 %241, label %242, label %244, !dbg !2910

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2907
  store i8 63, i8* %243, align 1, !dbg !2907, !tbaa !1324
  br label %244, !dbg !2907

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2910
  call void @llvm.dbg.value(metadata i64 %245, metadata !2685, metadata !DIExpression()), !dbg !2733
  br label %463, !dbg !2911

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2699, metadata !DIExpression()), !dbg !2825
  br label %256, !dbg !2912

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2699, metadata !DIExpression()), !dbg !2825
  br label %256, !dbg !2913

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2699, metadata !DIExpression()), !dbg !2825
  br label %254, !dbg !2914

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2699, metadata !DIExpression()), !dbg !2825
  br label %254, !dbg !2915

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2699, metadata !DIExpression()), !dbg !2825
  br label %256, !dbg !2916

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2699, metadata !DIExpression()), !dbg !2825
  br i1 %110, label %252, label %253, !dbg !2917

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2918

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2921

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2922
  call void @llvm.dbg.value(metadata i8 %255, metadata !2699, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.label(metadata !2728), !dbg !2923
  br i1 %111, label %256, label %625, !dbg !2924

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2922
  call void @llvm.dbg.value(metadata i8 %257, metadata !2699, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.label(metadata !2729), !dbg !2926
  br i1 %102, label %488, label %463, !dbg !2927

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2928

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2929, !tbaa !1324
  %261 = icmp eq i8 %260, 0, !dbg !2930
  br i1 %261, label %262, label %463, !dbg !2931

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2932
  br i1 %263, label %264, label %463, !dbg !2934

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2702, metadata !DIExpression()), !dbg !2825
  br label %265, !dbg !2935

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2825
  call void @llvm.dbg.value(metadata i8 %266, metadata !2702, metadata !DIExpression()), !dbg !2825
  br i1 %111, label %463, label %625, !dbg !2936

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2693, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 1, metadata !2702, metadata !DIExpression()), !dbg !2825
  br i1 %110, label %268, label %463, !dbg !2937

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2938

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2940
  %271 = icmp ne i64 %125, 0, !dbg !2942
  %272 = or i1 %271, %270, !dbg !2943
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2943
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2943
  call void @llvm.dbg.value(metadata i64 %274, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %273, metadata !2686, metadata !DIExpression()), !dbg !2733
  %275 = icmp ult i64 %124, %274, !dbg !2944
  br i1 %275, label %276, label %278, !dbg !2947

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2944
  store i8 39, i8* %277, align 1, !dbg !2944, !tbaa !1324
  br label %278, !dbg !2944

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2947
  call void @llvm.dbg.value(metadata i64 %279, metadata !2685, metadata !DIExpression()), !dbg !2733
  %280 = icmp ult i64 %279, %274, !dbg !2948
  br i1 %280, label %281, label %283, !dbg !2951

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2948
  store i8 92, i8* %282, align 1, !dbg !2948, !tbaa !1324
  br label %283, !dbg !2948

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2951
  call void @llvm.dbg.value(metadata i64 %284, metadata !2685, metadata !DIExpression()), !dbg !2733
  %285 = icmp ult i64 %284, %274, !dbg !2952
  br i1 %285, label %286, label %288, !dbg !2955

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2952
  store i8 39, i8* %287, align 1, !dbg !2952, !tbaa !1324
  br label %288, !dbg !2952

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2955
  call void @llvm.dbg.value(metadata i64 %289, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 0, metadata !2692, metadata !DIExpression()), !dbg !2733
  br label %463, !dbg !2956

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2957

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2703, metadata !DIExpression()), !dbg !2958
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !2959
  %293 = load i16*, i16** %292, align 8, !dbg !2959, !tbaa !1233
  %294 = zext i8 %158 to i64, !dbg !2959
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2959
  %296 = load i16, i16* %295, align 2, !dbg !2959, !tbaa !1966
  %297 = lshr i16 %296, 14, !dbg !2961
  %298 = trunc i16 %297 to i8, !dbg !2961
  %299 = and i8 %298, 1, !dbg !2961
  call void @llvm.dbg.value(metadata i8 %299, metadata !2706, metadata !DIExpression()), !dbg !2958
  br label %355, !dbg !2962

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2963
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2707, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i8* %23, metadata !2965, metadata !DIExpression()) #18, !dbg !2972
  call void @llvm.dbg.value(metadata i32 0, metadata !2970, metadata !DIExpression()) #18, !dbg !2972
  call void @llvm.dbg.value(metadata i64 8, metadata !2971, metadata !DIExpression()) #18, !dbg !2972
  store i64 0, i64* %10, align 8, !dbg !2974
  call void @llvm.dbg.value(metadata i64 0, metadata !2703, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i8 1, metadata !2706, metadata !DIExpression()), !dbg !2958
  %301 = icmp eq i64 %155, -1, !dbg !2975
  br i1 %301, label %302, label %304, !dbg !2977

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !2978
  call void @llvm.dbg.value(metadata i64 %303, metadata !2678, metadata !DIExpression()), !dbg !2733
  br label %304, !dbg !2979

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2825
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  br label %306, !dbg !2980

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2981
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2982
  call void @llvm.dbg.value(metadata i8 %308, metadata !2706, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 %307, metadata !2703, metadata !DIExpression()), !dbg !2958
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2983
  %309 = add i64 %307, %123, !dbg !2984
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2985
  %311 = sub i64 %305, %309, !dbg !2986
  call void @llvm.dbg.value(metadata i32* %12, metadata !2713, metadata !DIExpression(DW_OP_deref)), !dbg !2746
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #18, !dbg !2987
  call void @llvm.dbg.value(metadata i64 %312, metadata !2716, metadata !DIExpression()), !dbg !2746
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2988

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2703, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 %307, metadata !2703, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 %307, metadata !2703, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 %307, metadata !2703, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 %307, metadata !2703, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 %307, metadata !2703, metadata !DIExpression()), !dbg !2958
  %314 = icmp ugt i64 %305, %309, !dbg !2989
  br i1 %314, label %315, label %340, !dbg !2991

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2992
  br label %317, !dbg !2992

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2703, metadata !DIExpression()), !dbg !2958
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2993
  %321 = load i8, i8* %320, align 1, !dbg !2993, !tbaa !1324
  %322 = icmp eq i8 %321, 0, !dbg !2991
  br i1 %322, label %340, label %323, !dbg !2992

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2994
  call void @llvm.dbg.value(metadata i64 %324, metadata !2703, metadata !DIExpression()), !dbg !2958
  %325 = add i64 %324, %123, !dbg !2995
  %326 = icmp ult i64 %325, %305, !dbg !2989
  br i1 %326, label %317, label %340, !dbg !2991, !llvm.loop !2996

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2997
  %329 = and i1 %113, %328, !dbg !3000
  call void @llvm.dbg.value(metadata i64 1, metadata !2717, metadata !DIExpression()), !dbg !3001
  br i1 %329, label %330, label %343, !dbg !3000

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2717, metadata !DIExpression()), !dbg !3001
  %332 = add i64 %331, %309, !dbg !3002
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !3003
  %334 = load i8, i8* %333, align 1, !dbg !3003, !tbaa !1324
  %335 = sext i8 %334 to i32, !dbg !3003
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !3004

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !3005
  call void @llvm.dbg.value(metadata i64 %337, metadata !2717, metadata !DIExpression()), !dbg !3001
  %338 = icmp eq i64 %337, %312, !dbg !2997
  br i1 %338, label %343, label %330, !dbg !3006, !llvm.loop !3007

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2703, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i8 %308, metadata !2706, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 %307, metadata !2703, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i8 %308, metadata !2706, metadata !DIExpression()), !dbg !2958
  br label %340, !dbg !3009

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !3009
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !3010, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 %344, metadata !2713, metadata !DIExpression()), !dbg !2746
  %345 = call i32 @iswprint(i32 %344) #18, !dbg !3012
  %346 = icmp eq i32 %345, 0, !dbg !3012
  %347 = select i1 %346, i8 0, i8 %308, !dbg !3013
  call void @llvm.dbg.value(metadata i8 %347, metadata !2706, metadata !DIExpression()), !dbg !2958
  %348 = add i64 %312, %307, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %348, metadata !2703, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i8 %347, metadata !2706, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 %348, metadata !2703, metadata !DIExpression()), !dbg !2958
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !3009
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !3015
  %350 = icmp eq i32 %349, 0, !dbg !3016
  br i1 %350, label %306, label %351, !dbg !3017, !llvm.loop !3018

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !3020
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 2, metadata !2679, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 2, metadata !2679, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 2, metadata !2679, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 2, metadata !2679, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 2, metadata !2679, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %99, metadata !2689, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %99, metadata !2689, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %99, metadata !2689, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %99, metadata !2689, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %99, metadata !2689, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 2, metadata !2679, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 2, metadata !2679, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 2, metadata !2679, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 2, metadata !2679, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 2, metadata !2679, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %99, metadata !2689, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %99, metadata !2689, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %99, metadata !2689, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %99, metadata !2689, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %99, metadata !2689, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %305, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !3009
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !3020
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2825
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !3021
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !3021
  call void @llvm.dbg.value(metadata i8 %358, metadata !2706, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 %357, metadata !2703, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 %356, metadata !2678, metadata !DIExpression()), !dbg !2733
  %359 = and i8 %358, 1, !dbg !3022
  %360 = icmp ne i8 %359, 0, !dbg !3022
  call void @llvm.dbg.value(metadata i8 %359, metadata !2702, metadata !DIExpression()), !dbg !2825
  %361 = icmp ult i64 %357, 2, !dbg !3023
  %362 = or i1 %360, %114, !dbg !3024
  %363 = and i1 %361, %362, !dbg !3025
  br i1 %363, label %463, label %364, !dbg !3025

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !3026
  call void @llvm.dbg.value(metadata i64 %365, metadata !2724, metadata !DIExpression()), !dbg !3027
  br label %366, !dbg !3028

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2818
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2733
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2754
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2825
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2825
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !3029
  call void @llvm.dbg.value(metadata i8 %372, metadata !2701, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 %371, metadata !2700, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 %370, metadata !2695, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 %369, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %368, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %367, metadata !2684, metadata !DIExpression()), !dbg !2733
  br i1 %362, label %419, label %373, !dbg !3030

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !3035

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2701, metadata !DIExpression()), !dbg !2825
  %375 = and i8 %369, 1, !dbg !3038
  %376 = icmp eq i8 %375, 0, !dbg !3038
  %377 = and i1 %110, %376, !dbg !3038
  br i1 %377, label %378, label %394, !dbg !3038

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !3040
  br i1 %379, label %380, label %382, !dbg !3044

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !3040
  store i8 39, i8* %381, align 1, !dbg !3040, !tbaa !1324
  br label %382, !dbg !3040

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !3044
  call void @llvm.dbg.value(metadata i64 %383, metadata !2685, metadata !DIExpression()), !dbg !2733
  %384 = icmp ult i64 %383, %130, !dbg !3045
  br i1 %384, label %385, label %387, !dbg !3048

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !3045
  store i8 36, i8* %386, align 1, !dbg !3045, !tbaa !1324
  br label %387, !dbg !3045

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %388, metadata !2685, metadata !DIExpression()), !dbg !2733
  %389 = icmp ult i64 %388, %130, !dbg !3049
  br i1 %389, label %390, label %392, !dbg !3052

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !3049
  store i8 39, i8* %391, align 1, !dbg !3049, !tbaa !1324
  br label %392, !dbg !3049

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !3052
  call void @llvm.dbg.value(metadata i64 %393, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 1, metadata !2692, metadata !DIExpression()), !dbg !2733
  br label %394, !dbg !3053

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2733
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2733
  call void @llvm.dbg.value(metadata i8 %396, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %395, metadata !2685, metadata !DIExpression()), !dbg !2733
  %397 = icmp ult i64 %395, %130, !dbg !3054
  br i1 %397, label %398, label %400, !dbg !3057

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !3054
  store i8 92, i8* %399, align 1, !dbg !3054, !tbaa !1324
  br label %400, !dbg !3054

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !3057
  call void @llvm.dbg.value(metadata i64 %401, metadata !2685, metadata !DIExpression()), !dbg !2733
  %402 = icmp ult i64 %401, %130, !dbg !3058
  br i1 %402, label %403, label %407, !dbg !3061

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !3058
  %405 = or i8 %404, 48, !dbg !3058
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3058
  store i8 %405, i8* %406, align 1, !dbg !3058, !tbaa !1324
  br label %407, !dbg !3058

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !3061
  call void @llvm.dbg.value(metadata i64 %408, metadata !2685, metadata !DIExpression()), !dbg !2733
  %409 = icmp ult i64 %408, %130, !dbg !3062
  br i1 %409, label %410, label %415, !dbg !3065

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !3062
  %412 = and i8 %411, 7, !dbg !3062
  %413 = or i8 %412, 48, !dbg !3062
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3062
  store i8 %413, i8* %414, align 1, !dbg !3062, !tbaa !1324
  br label %415, !dbg !3062

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !3065
  call void @llvm.dbg.value(metadata i64 %416, metadata !2685, metadata !DIExpression()), !dbg !2733
  %417 = and i8 %370, 7, !dbg !3066
  %418 = or i8 %417, 48, !dbg !3067
  call void @llvm.dbg.value(metadata i8 %418, metadata !2695, metadata !DIExpression()), !dbg !2825
  br label %428, !dbg !3068

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !3069
  %421 = icmp eq i8 %420, 0, !dbg !3069
  br i1 %421, label %428, label %422, !dbg !3071

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !3072
  br i1 %423, label %424, label %426, !dbg !3076

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !3072
  store i8 92, i8* %425, align 1, !dbg !3072, !tbaa !1324
  br label %426, !dbg !3072

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !3076
  call void @llvm.dbg.value(metadata i64 %427, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 0, metadata !2700, metadata !DIExpression()), !dbg !2825
  br label %428, !dbg !3077

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2733
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2754
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2825
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2825
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2825
  call void @llvm.dbg.value(metadata i8 %433, metadata !2701, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 %432, metadata !2700, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 %431, metadata !2695, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 %430, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %429, metadata !2685, metadata !DIExpression()), !dbg !2733
  %434 = add i64 %367, 1, !dbg !3078
  %435 = icmp ugt i64 %365, %434, !dbg !3080
  br i1 %435, label %436, label %526, !dbg !3081

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !3082
  %438 = icmp ne i8 %437, 0, !dbg !3082
  %439 = and i8 %433, 1, !dbg !3082
  %440 = icmp eq i8 %439, 0, !dbg !3082
  %441 = and i1 %438, %440, !dbg !3082
  br i1 %441, label %442, label %453, !dbg !3082

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !3085
  br i1 %443, label %444, label %446, !dbg !3089

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !3085
  store i8 39, i8* %445, align 1, !dbg !3085, !tbaa !1324
  br label %446, !dbg !3085

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !3089
  call void @llvm.dbg.value(metadata i64 %447, metadata !2685, metadata !DIExpression()), !dbg !2733
  %448 = icmp ult i64 %447, %130, !dbg !3090
  br i1 %448, label %449, label %451, !dbg !3093

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !3090
  store i8 39, i8* %450, align 1, !dbg !3090, !tbaa !1324
  br label %451, !dbg !3090

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !3093
  call void @llvm.dbg.value(metadata i64 %452, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 0, metadata !2692, metadata !DIExpression()), !dbg !2733
  br label %453, !dbg !3094

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !3095
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2733
  call void @llvm.dbg.value(metadata i8 %455, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %454, metadata !2685, metadata !DIExpression()), !dbg !2733
  %456 = icmp ult i64 %454, %130, !dbg !3096
  br i1 %456, label %457, label %459, !dbg !3099

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !3096
  store i8 %431, i8* %458, align 1, !dbg !3096, !tbaa !1324
  br label %459, !dbg !3096

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !3099
  call void @llvm.dbg.value(metadata i64 %460, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %434, metadata !2684, metadata !DIExpression()), !dbg !2733
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !3100
  %462 = load i8, i8* %461, align 1, !dbg !3100, !tbaa !1324
  call void @llvm.dbg.value(metadata i8 %462, metadata !2695, metadata !DIExpression()), !dbg !2825
  br label %366, !dbg !3101, !llvm.loop !3102

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2818
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2733
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2750
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !3105
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2733
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2733
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2825
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2825
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2825
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %472, metadata !2702, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 %471, metadata !2701, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 %156, metadata !2700, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 %470, metadata !2695, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 %469, metadata !2693, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %468, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %467, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %466, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %465, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %464, metadata !2684, metadata !DIExpression()), !dbg !2733
  br i1 %117, label %486, label %474, !dbg !3106

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !3107
  %476 = zext i8 %475 to i64, !dbg !3107
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !3108
  %478 = load i32, i32* %477, align 4, !dbg !3108, !tbaa !1314
  %479 = and i8 %470, 31, !dbg !3109
  %480 = zext i8 %479 to i32, !dbg !3109
  %481 = shl nuw i32 1, %480, !dbg !3110
  %482 = and i32 %478, %481, !dbg !3110
  %483 = icmp eq i32 %482, 0, !dbg !3110
  %484 = icmp eq i8 %156, 0, !dbg !3111
  %485 = and i1 %484, %483, !dbg !3112
  br i1 %485, label %526, label %488, !dbg !3112

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !3111
  br i1 %487, label %526, label %488, !dbg !3113

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !3114
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2733
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2750
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !3105
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2754
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2755
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2825
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2825
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %496, metadata !2702, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 %495, metadata !2695, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 %494, metadata !2693, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %493, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %492, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %491, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %490, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %489, metadata !2684, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.label(metadata !2730), !dbg !3115
  br i1 %109, label %498, label %629, !dbg !3116

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2701, metadata !DIExpression()), !dbg !2825
  %499 = and i8 %493, 1, !dbg !3118
  %500 = icmp eq i8 %499, 0, !dbg !3118
  %501 = and i1 %110, %500, !dbg !3118
  br i1 %501, label %502, label %518, !dbg !3118

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !3120
  br i1 %503, label %504, label %506, !dbg !3124

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !3120
  store i8 39, i8* %505, align 1, !dbg !3120, !tbaa !1324
  br label %506, !dbg !3120

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !3124
  call void @llvm.dbg.value(metadata i64 %507, metadata !2685, metadata !DIExpression()), !dbg !2733
  %508 = icmp ult i64 %507, %497, !dbg !3125
  br i1 %508, label %509, label %511, !dbg !3128

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !3125
  store i8 36, i8* %510, align 1, !dbg !3125, !tbaa !1324
  br label %511, !dbg !3125

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !3128
  call void @llvm.dbg.value(metadata i64 %512, metadata !2685, metadata !DIExpression()), !dbg !2733
  %513 = icmp ult i64 %512, %497, !dbg !3129
  br i1 %513, label %514, label %516, !dbg !3132

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !3129
  store i8 39, i8* %515, align 1, !dbg !3129, !tbaa !1324
  br label %516, !dbg !3129

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !3132
  call void @llvm.dbg.value(metadata i64 %517, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 1, metadata !2692, metadata !DIExpression()), !dbg !2733
  br label %518, !dbg !3133

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2825
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2733
  call void @llvm.dbg.value(metadata i8 %520, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %519, metadata !2685, metadata !DIExpression()), !dbg !2733
  %521 = icmp ult i64 %519, %497, !dbg !3134
  br i1 %521, label %522, label %524, !dbg !3137

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !3134
  store i8 92, i8* %523, align 1, !dbg !3134, !tbaa !1324
  br label %524, !dbg !3134

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !3137
  call void @llvm.dbg.value(metadata i64 %525, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %536, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %535, metadata !2702, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 %534, metadata !2701, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 %533, metadata !2695, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 %532, metadata !2693, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %531, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %530, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %529, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %528, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %527, metadata !2684, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.label(metadata !2731), !dbg !3138
  br label %553, !dbg !3139

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !3114
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2733
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2750
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !3105
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2754
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2755
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !3142
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2825
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2825
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %535, metadata !2702, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 %534, metadata !2701, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 %533, metadata !2695, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i8 %532, metadata !2693, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %531, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %530, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %529, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %528, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %527, metadata !2684, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.label(metadata !2731), !dbg !3138
  %537 = and i8 %531, 1, !dbg !3139
  %538 = icmp ne i8 %537, 0, !dbg !3139
  %539 = and i8 %534, 1, !dbg !3139
  %540 = icmp eq i8 %539, 0, !dbg !3139
  %541 = and i1 %538, %540, !dbg !3139
  br i1 %541, label %542, label %553, !dbg !3139

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !3143
  br i1 %543, label %544, label %546, !dbg !3147

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !3143
  store i8 39, i8* %545, align 1, !dbg !3143, !tbaa !1324
  br label %546, !dbg !3143

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !3147
  call void @llvm.dbg.value(metadata i64 %547, metadata !2685, metadata !DIExpression()), !dbg !2733
  %548 = icmp ult i64 %547, %536, !dbg !3148
  br i1 %548, label %549, label %551, !dbg !3151

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !3148
  store i8 39, i8* %550, align 1, !dbg !3148, !tbaa !1324
  br label %551, !dbg !3148

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !3151
  call void @llvm.dbg.value(metadata i64 %552, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 0, metadata !2692, metadata !DIExpression()), !dbg !2733
  br label %553, !dbg !3152

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2825
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2733
  call void @llvm.dbg.value(metadata i8 %562, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %561, metadata !2685, metadata !DIExpression()), !dbg !2733
  %563 = icmp ult i64 %561, %554, !dbg !3153
  br i1 %563, label %564, label %566, !dbg !3156

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !3153
  store i8 %556, i8* %565, align 1, !dbg !3153, !tbaa !1324
  br label %566, !dbg !3153

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3156
  call void @llvm.dbg.value(metadata i64 %567, metadata !2685, metadata !DIExpression()), !dbg !2733
  %568 = and i8 %555, 1, !dbg !3157
  %569 = icmp eq i8 %568, 0, !dbg !3157
  %570 = select i1 %569, i8 0, i8 %129, !dbg !3159
  call void @llvm.dbg.value(metadata i8 %570, metadata !2694, metadata !DIExpression()), !dbg !2733
  br label %571, !dbg !3160

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !3114
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2733
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2750
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !3105
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2754
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2733
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2756
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %578, metadata !2694, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %577, metadata !2693, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %576, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %575, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %574, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %573, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %572, metadata !2684, metadata !DIExpression()), !dbg !2733
  %580 = add i64 %572, 1, !dbg !3161
  call void @llvm.dbg.value(metadata i64 %580, metadata !2684, metadata !DIExpression()), !dbg !2733
  br label %122, !dbg !3162, !llvm.loop !3163

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %125, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %125, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %127, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %127, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %128, metadata !2693, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %128, metadata !2693, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %129, metadata !2694, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %129, metadata !2694, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %125, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %125, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %127, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %127, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %128, metadata !2693, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %128, metadata !2693, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %129, metadata !2694, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %129, metadata !2694, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %125, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %125, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %127, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %127, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %128, metadata !2693, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %128, metadata !2693, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %129, metadata !2694, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %129, metadata !2694, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %125, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %125, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %127, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %127, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %128, metadata !2693, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %128, metadata !2693, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %129, metadata !2694, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %129, metadata !2694, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %125, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %125, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %582, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %582, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %127, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %127, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %128, metadata !2693, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %128, metadata !2693, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %129, metadata !2694, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %129, metadata !2694, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %125, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %125, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %582, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %582, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %127, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %127, metadata !2692, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %128, metadata !2693, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %128, metadata !2693, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %129, metadata !2694, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %129, metadata !2694, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  %583 = icmp eq i64 %124, 0, !dbg !3165
  %584 = and i1 %110, %583, !dbg !3167
  %585 = xor i1 %584, true, !dbg !3167
  %586 = or i1 %109, %585, !dbg !3167
  br i1 %586, label %587, label %629, !dbg !3167

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !3168
  %589 = xor i1 %588, true, !dbg !3168
  %590 = and i8 %128, 1, !dbg !3170
  %591 = icmp eq i8 %590, 0, !dbg !3170
  %592 = or i1 %591, %589, !dbg !3168
  br i1 %592, label %602, label %593, !dbg !3168

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !3171
  %595 = icmp eq i8 %594, 0, !dbg !3171
  br i1 %595, label %598, label %596, !dbg !3174

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %125, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %582, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %125, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %582, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %125, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %582, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %125, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %125, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %582, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %94, metadata !2682, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %95, metadata !2683, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %125, metadata !2686, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %582, metadata !2678, metadata !DIExpression()), !dbg !2733
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !3175
  br label %645, !dbg !3176

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !3177
  %600 = icmp ne i64 %125, 0, !dbg !3179
  %601 = and i1 %600, %599, !dbg !3180
  br i1 %601, label %26, label %602, !dbg !3180

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2687, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %97, metadata !2687, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %97, metadata !2687, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %97, metadata !2687, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %97, metadata !2687, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %97, metadata !2687, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %97, metadata !2687, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %97, metadata !2687, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %97, metadata !2687, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %97, metadata !2687, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %130, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %97, metadata !2687, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %97, metadata !2687, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  %603 = icmp ne i8* %97, null, !dbg !3181
  %604 = and i1 %603, %109, !dbg !3183
  br i1 %604, label %605, label %620, !dbg !3183

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2687, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %124, metadata !2685, metadata !DIExpression()), !dbg !2733
  %606 = load i8, i8* %97, align 1, !dbg !3184, !tbaa !1324
  %607 = icmp eq i8 %606, 0, !dbg !3187
  br i1 %607, label %620, label %608, !dbg !3187

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2687, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %611, metadata !2685, metadata !DIExpression()), !dbg !2733
  %612 = icmp ult i64 %611, %130, !dbg !3188
  br i1 %612, label %613, label %615, !dbg !3191

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !3188
  store i8 %609, i8* %614, align 1, !dbg !3188, !tbaa !1324
  br label %615, !dbg !3188

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !3191
  call void @llvm.dbg.value(metadata i64 %616, metadata !2685, metadata !DIExpression()), !dbg !2733
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !3192
  call void @llvm.dbg.value(metadata i8* %617, metadata !2687, metadata !DIExpression()), !dbg !2733
  %618 = load i8, i8* %617, align 1, !dbg !3184, !tbaa !1324
  %619 = icmp eq i8 %618, 0, !dbg !3187
  br i1 %619, label %620, label %608, !dbg !3187, !llvm.loop !3193

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2787
  call void @llvm.dbg.value(metadata i64 %621, metadata !2685, metadata !DIExpression()), !dbg !2733
  %622 = icmp ult i64 %621, %130, !dbg !3195
  br i1 %622, label %623, label %645, !dbg !3197

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !3198
  store i8 0, i8* %624, align 1, !dbg !3199, !tbaa !1324
  br label %645, !dbg !3198

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %630, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.label(metadata !2732), !dbg !3200
  %627 = icmp eq i8 %101, 0, !dbg !3201
  %628 = select i1 %627, i32 2, i32 4, !dbg !3201
  br label %635, !dbg !3201

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2676, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %630, metadata !2678, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.label(metadata !2732), !dbg !3200
  %632 = icmp eq i32 %93, 2, !dbg !3203
  %633 = icmp eq i8 %101, 0, !dbg !3201
  %634 = select i1 %633, i32 2, i32 4, !dbg !3201
  br i1 %632, label %635, label %639, !dbg !3201

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !3201

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2679, metadata !DIExpression()), !dbg !2733
  %643 = and i32 %5, -3, !dbg !3204
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !3205
  br label %645, !dbg !3206

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !3207
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !3208 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3212, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 %1, metadata !3213, metadata !DIExpression()), !dbg !3216
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #18, !dbg !3217
  call void @llvm.dbg.value(metadata i8* %3, metadata !3214, metadata !DIExpression()), !dbg !3216
  %4 = icmp eq i8* %3, %0, !dbg !3218
  br i1 %4, label %5, label %71, !dbg !3220

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #18, !dbg !3221
  call void @llvm.dbg.value(metadata i8* %6, metadata !3215, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i8* %6, metadata !3222, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8* undef, metadata !3228, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 85, metadata !3229, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 84, metadata !3230, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 70, metadata !3231, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 45, metadata !3232, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 56, metadata !3233, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 0, metadata !3234, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 0, metadata !3235, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 0, metadata !3236, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 0, metadata !3237, metadata !DIExpression()), !dbg !3238
  %7 = load i8, i8* %6, align 1, !dbg !3241, !tbaa !1324
  %8 = and i8 %7, -33, !dbg !3241
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !3241

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3243, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8* undef, metadata !3248, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 84, metadata !3249, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 70, metadata !3250, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 45, metadata !3251, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 56, metadata !3252, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 0, metadata !3253, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 0, metadata !3254, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 0, metadata !3255, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 0, metadata !3256, metadata !DIExpression()), !dbg !3257
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3261
  %11 = load i8, i8* %10, align 1, !dbg !3261, !tbaa !1324
  %12 = and i8 %11, -33, !dbg !3261
  %13 = icmp eq i8 %12, 84, !dbg !3261
  br i1 %13, label %14, label %68, !dbg !3261

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3263, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i8* undef, metadata !3268, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i8 70, metadata !3269, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i8 45, metadata !3270, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i8 56, metadata !3271, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i8 0, metadata !3272, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i8 0, metadata !3273, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i8 0, metadata !3274, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i8 0, metadata !3275, metadata !DIExpression()), !dbg !3276
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3280
  %16 = load i8, i8* %15, align 1, !dbg !3280, !tbaa !1324
  %17 = and i8 %16, -33, !dbg !3280
  %18 = icmp eq i8 %17, 70, !dbg !3280
  br i1 %18, label %19, label %68, !dbg !3280

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3282, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8* undef, metadata !3287, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8 45, metadata !3288, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8 56, metadata !3289, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8 0, metadata !3290, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8 0, metadata !3291, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8 0, metadata !3292, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8 0, metadata !3293, metadata !DIExpression()), !dbg !3294
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3298
  %21 = load i8, i8* %20, align 1, !dbg !3298, !tbaa !1324
  %22 = icmp eq i8 %21, 45, !dbg !3298
  br i1 %22, label %23, label %68, !dbg !3300

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3301, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i8* undef, metadata !3306, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i8 56, metadata !3307, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i8 0, metadata !3308, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i8 0, metadata !3309, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i8 0, metadata !3310, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i8 0, metadata !3311, metadata !DIExpression()), !dbg !3312
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3316
  %25 = load i8, i8* %24, align 1, !dbg !3316, !tbaa !1324
  %26 = icmp eq i8 %25, 56, !dbg !3316
  br i1 %26, label %27, label %68, !dbg !3318

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3319, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8* undef, metadata !3324, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8 0, metadata !3325, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8 0, metadata !3326, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8 0, metadata !3327, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8 0, metadata !3328, metadata !DIExpression()), !dbg !3329
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3333
  %29 = load i8, i8* %28, align 1, !dbg !3333, !tbaa !1324
  %30 = icmp eq i8 %29, 0, !dbg !3333
  br i1 %30, label %31, label %68, !dbg !3335

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3336, !tbaa !1324
  %33 = icmp eq i8 %32, 96, !dbg !3337
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.80, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.81, i64 0, i64 0), !dbg !3336
  br label %71, !dbg !3338

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3243, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8* undef, metadata !3248, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 66, metadata !3249, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 49, metadata !3250, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 56, metadata !3251, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 48, metadata !3252, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 51, metadata !3253, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 48, metadata !3254, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 0, metadata !3255, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 0, metadata !3256, metadata !DIExpression()), !dbg !3339
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3343
  %37 = load i8, i8* %36, align 1, !dbg !3343, !tbaa !1324
  %38 = and i8 %37, -33, !dbg !3343
  %39 = icmp eq i8 %38, 66, !dbg !3343
  br i1 %39, label %40, label %68, !dbg !3343

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3263, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8* undef, metadata !3268, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8 49, metadata !3269, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8 56, metadata !3270, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8 48, metadata !3271, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8 51, metadata !3272, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8 48, metadata !3273, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8 0, metadata !3274, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8 0, metadata !3275, metadata !DIExpression()), !dbg !3344
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3346
  %42 = load i8, i8* %41, align 1, !dbg !3346, !tbaa !1324
  %43 = icmp eq i8 %42, 49, !dbg !3346
  br i1 %43, label %44, label %68, !dbg !3347

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3282, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8* undef, metadata !3287, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8 56, metadata !3288, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8 48, metadata !3289, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8 51, metadata !3290, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8 48, metadata !3291, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8 0, metadata !3292, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8 0, metadata !3293, metadata !DIExpression()), !dbg !3348
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3350
  %46 = load i8, i8* %45, align 1, !dbg !3350, !tbaa !1324
  %47 = icmp eq i8 %46, 56, !dbg !3350
  br i1 %47, label %48, label %68, !dbg !3351

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3301, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i8* undef, metadata !3306, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i8 48, metadata !3307, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i8 51, metadata !3308, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i8 48, metadata !3309, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i8 0, metadata !3310, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i8 0, metadata !3311, metadata !DIExpression()), !dbg !3352
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3354
  %50 = load i8, i8* %49, align 1, !dbg !3354, !tbaa !1324
  %51 = icmp eq i8 %50, 48, !dbg !3354
  br i1 %51, label %52, label %68, !dbg !3355

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3319, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8* undef, metadata !3324, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8 51, metadata !3325, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8 48, metadata !3326, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8 0, metadata !3327, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8 0, metadata !3328, metadata !DIExpression()), !dbg !3356
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3358
  %54 = load i8, i8* %53, align 1, !dbg !3358, !tbaa !1324
  %55 = icmp eq i8 %54, 51, !dbg !3358
  br i1 %55, label %56, label %68, !dbg !3359

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3360, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8* undef, metadata !3365, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8 48, metadata !3366, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8 0, metadata !3367, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8 0, metadata !3368, metadata !DIExpression()), !dbg !3369
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3373
  %58 = load i8, i8* %57, align 1, !dbg !3373, !tbaa !1324
  %59 = icmp eq i8 %58, 48, !dbg !3373
  br i1 %59, label %60, label %68, !dbg !3375

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3376, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8* undef, metadata !3381, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8 0, metadata !3382, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8 0, metadata !3383, metadata !DIExpression()), !dbg !3384
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3388
  %62 = load i8, i8* %61, align 1, !dbg !3388, !tbaa !1324
  %63 = icmp eq i8 %62, 0, !dbg !3388
  br i1 %63, label %64, label %68, !dbg !3390

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3391, !tbaa !1324
  %66 = icmp eq i8 %65, 96, !dbg !3392
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.82, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.83, i64 0, i64 0), !dbg !3391
  br label %71, !dbg !3393

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3394
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), !dbg !3395
  br label %71, !dbg !3396

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3216
  ret i8* %72, !dbg !3397
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !412 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !416 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3398 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3402, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %1, metadata !3403, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3404, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i8* %0, metadata !3406, metadata !DIExpression()) #18, !dbg !3419
  call void @llvm.dbg.value(metadata i64 %1, metadata !3411, metadata !DIExpression()) #18, !dbg !3419
  call void @llvm.dbg.value(metadata i64* null, metadata !3412, metadata !DIExpression()) #18, !dbg !3419
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3413, metadata !DIExpression()) #18, !dbg !3419
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3421
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3421
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3414, metadata !DIExpression()) #18, !dbg !3419
  %6 = tail call i32* @__errno_location() #24, !dbg !3422
  %7 = load i32, i32* %6, align 4, !dbg !3422, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 %7, metadata !3415, metadata !DIExpression()) #18, !dbg !3419
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3423
  %9 = load i32, i32* %8, align 4, !dbg !3423, !tbaa !2618
  %10 = or i32 %9, 1, !dbg !3424
  call void @llvm.dbg.value(metadata i32 %10, metadata !3416, metadata !DIExpression()) #18, !dbg !3419
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3425
  %12 = load i32, i32* %11, align 8, !dbg !3425, !tbaa !2567
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3426
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3427
  %15 = load i8*, i8** %14, align 8, !dbg !3427, !tbaa !2641
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3428
  %17 = load i8*, i8** %16, align 8, !dbg !3428, !tbaa !2644
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #18, !dbg !3429
  %19 = add i64 %18, 1, !dbg !3430
  call void @llvm.dbg.value(metadata i64 %19, metadata !3417, metadata !DIExpression()) #18, !dbg !3419
  call void @llvm.dbg.value(metadata i64 %19, metadata !3431, metadata !DIExpression()) #18, !dbg !3436
  %20 = tail call noalias i8* @xmalloc(i64 %19) #18, !dbg !3438
  call void @llvm.dbg.value(metadata i8* %20, metadata !3418, metadata !DIExpression()) #18, !dbg !3419
  %21 = load i32, i32* %11, align 8, !dbg !3439, !tbaa !2567
  %22 = load i8*, i8** %14, align 8, !dbg !3440, !tbaa !2641
  %23 = load i8*, i8** %16, align 8, !dbg !3441, !tbaa !2644
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #18, !dbg !3442
  store i32 %7, i32* %6, align 4, !dbg !3443, !tbaa !1314
  ret i8* %20, !dbg !3444
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3407 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3406, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %1, metadata !3411, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64* %2, metadata !3412, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3413, metadata !DIExpression()), !dbg !3445
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3446
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3446
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3414, metadata !DIExpression()), !dbg !3445
  %7 = tail call i32* @__errno_location() #24, !dbg !3447
  %8 = load i32, i32* %7, align 4, !dbg !3447, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 %8, metadata !3415, metadata !DIExpression()), !dbg !3445
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3448
  %10 = load i32, i32* %9, align 4, !dbg !3448, !tbaa !2618
  %11 = icmp ne i64* %2, null, !dbg !3449
  %12 = xor i1 %11, true, !dbg !3449
  %13 = zext i1 %12 to i32, !dbg !3449
  %14 = or i32 %10, %13, !dbg !3450
  call void @llvm.dbg.value(metadata i32 %14, metadata !3416, metadata !DIExpression()), !dbg !3445
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3451
  %16 = load i32, i32* %15, align 8, !dbg !3451, !tbaa !2567
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3452
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3453
  %19 = load i8*, i8** %18, align 8, !dbg !3453, !tbaa !2641
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3454
  %21 = load i8*, i8** %20, align 8, !dbg !3454, !tbaa !2644
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3455
  %23 = add i64 %22, 1, !dbg !3456
  call void @llvm.dbg.value(metadata i64 %23, metadata !3417, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %23, metadata !3431, metadata !DIExpression()) #18, !dbg !3457
  %24 = tail call noalias i8* @xmalloc(i64 %23) #18, !dbg !3459
  call void @llvm.dbg.value(metadata i8* %24, metadata !3418, metadata !DIExpression()), !dbg !3445
  %25 = load i32, i32* %15, align 8, !dbg !3460, !tbaa !2567
  %26 = load i8*, i8** %18, align 8, !dbg !3461, !tbaa !2641
  %27 = load i8*, i8** %20, align 8, !dbg !3462, !tbaa !2644
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3463
  store i32 %8, i32* %7, align 4, !dbg !3464, !tbaa !1314
  br i1 %11, label %29, label %30, !dbg !3465

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3466, !tbaa !3468
  br label %30, !dbg !3469

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3470
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3471 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3475, !tbaa !1233
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3473, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 1, metadata !3474, metadata !DIExpression()), !dbg !3476
  %2 = load i32, i32* @nslots, align 4, !dbg !3477, !tbaa !1314
  %3 = icmp sgt i32 %2, 1, !dbg !3480
  br i1 %3, label %4, label %12, !dbg !3481

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3474, metadata !DIExpression()), !dbg !3476
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3482
  %7 = load i8*, i8** %6, align 8, !dbg !3482, !tbaa !3483
  tail call void @free(i8* %7) #18, !dbg !3485
  %8 = add nuw nsw i64 %5, 1, !dbg !3486
  call void @llvm.dbg.value(metadata i64 %8, metadata !3474, metadata !DIExpression()), !dbg !3476
  %9 = load i32, i32* @nslots, align 4, !dbg !3477, !tbaa !1314
  %10 = sext i32 %9 to i64, !dbg !3480
  %11 = icmp slt i64 %8, %10, !dbg !3480
  br i1 %11, label %4, label %12, !dbg !3481, !llvm.loop !3487

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3489
  %14 = load i8*, i8** %13, align 8, !dbg !3489, !tbaa !3483
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3491
  br i1 %15, label %17, label %16, !dbg !3492

16:                                               ; preds = %12
  tail call void @free(i8* %14) #18, !dbg !3493
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3495, !tbaa !3496
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3497, !tbaa !3483
  br label %17, !dbg !3498

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3499
  br i1 %18, label %21, label %19, !dbg !3501

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3502
  tail call void @free(i8* %20) #18, !dbg !3504
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3505, !tbaa !1233
  br label %21, !dbg !3506

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3507, !tbaa !1314
  ret void, !dbg !3508
}

; Function Attrs: nounwind
declare !dbg !389 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3509 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3511, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i8* %1, metadata !3512, metadata !DIExpression()), !dbg !3513
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3514
  ret i8* %3, !dbg !3515
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3516 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3520, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i8* %1, metadata !3521, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i64 %2, metadata !3522, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3523, metadata !DIExpression()), !dbg !3535
  %5 = tail call i32* @__errno_location() #24, !dbg !3536
  %6 = load i32, i32* %5, align 4, !dbg !3536, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 %6, metadata !3524, metadata !DIExpression()), !dbg !3535
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3537, !tbaa !1233
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3525, metadata !DIExpression()), !dbg !3535
  %8 = icmp slt i32 %0, 0, !dbg !3538
  br i1 %8, label %9, label %10, !dbg !3540

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !3541
  unreachable, !dbg !3541

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3542, !tbaa !1314
  %12 = icmp sgt i32 %11, %0, !dbg !3543
  br i1 %12, label %34, label %13, !dbg !3544

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3545
  call void @llvm.dbg.value(metadata i1 %14, metadata !3526, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3529, metadata !DIExpression()), !dbg !3546
  %15 = icmp eq i32 %0, 2147483647, !dbg !3547
  br i1 %15, label %16, label %17, !dbg !3549

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3550
  unreachable, !dbg !3550

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3551
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3551
  %20 = add nuw nsw i32 %0, 1, !dbg !3552
  %21 = sext i32 %20 to i64, !dbg !3553
  %22 = shl nuw nsw i64 %21, 4, !dbg !3554
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #18, !dbg !3555
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3555
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3525, metadata !DIExpression()), !dbg !3535
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3556, !tbaa !1233
  br i1 %14, label %25, label %26, !dbg !3557

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3558, !tbaa.struct !3560
  br label %26, !dbg !3561

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3562, !tbaa !1314
  %28 = sext i32 %27 to i64, !dbg !3563
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3563
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3564
  %31 = sub nsw i32 %20, %27, !dbg !3565
  %32 = sext i32 %31 to i64, !dbg !3566
  %33 = shl nsw i64 %32, 4, !dbg !3567
  call void @llvm.dbg.value(metadata i8* %30, metadata !2965, metadata !DIExpression()) #18, !dbg !3568
  call void @llvm.dbg.value(metadata i32 0, metadata !2970, metadata !DIExpression()) #18, !dbg !3568
  call void @llvm.dbg.value(metadata i64 %33, metadata !2971, metadata !DIExpression()) #18, !dbg !3568
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #18, !dbg !3570
  store i32 %20, i32* @nslots, align 4, !dbg !3571, !tbaa !1314
  br label %34, !dbg !3572

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3535
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3525, metadata !DIExpression()), !dbg !3535
  %36 = zext i32 %0 to i64, !dbg !3573
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3574
  %38 = load i64, i64* %37, align 8, !dbg !3574, !tbaa !3496
  call void @llvm.dbg.value(metadata i64 %38, metadata !3530, metadata !DIExpression()), !dbg !3575
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3576
  %40 = load i8*, i8** %39, align 8, !dbg !3576, !tbaa !3483
  call void @llvm.dbg.value(metadata i8* %40, metadata !3532, metadata !DIExpression()), !dbg !3575
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3577
  %42 = load i32, i32* %41, align 4, !dbg !3577, !tbaa !2618
  %43 = or i32 %42, 1, !dbg !3578
  call void @llvm.dbg.value(metadata i32 %43, metadata !3533, metadata !DIExpression()), !dbg !3575
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3579
  %45 = load i32, i32* %44, align 8, !dbg !3579, !tbaa !2567
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3580
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3581
  %48 = load i8*, i8** %47, align 8, !dbg !3581, !tbaa !2641
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3582
  %50 = load i8*, i8** %49, align 8, !dbg !3582, !tbaa !2644
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3583
  call void @llvm.dbg.value(metadata i64 %51, metadata !3534, metadata !DIExpression()), !dbg !3575
  %52 = icmp ugt i64 %38, %51, !dbg !3584
  br i1 %52, label %63, label %53, !dbg !3586

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3587
  call void @llvm.dbg.value(metadata i64 %54, metadata !3530, metadata !DIExpression()), !dbg !3575
  store i64 %54, i64* %37, align 8, !dbg !3589, !tbaa !3496
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3590
  br i1 %55, label %57, label %56, !dbg !3592

56:                                               ; preds = %53
  tail call void @free(i8* %40) #18, !dbg !3593
  br label %57, !dbg !3593

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3431, metadata !DIExpression()) #18, !dbg !3594
  %58 = tail call noalias i8* @xmalloc(i64 %54) #18, !dbg !3596
  call void @llvm.dbg.value(metadata i8* %58, metadata !3532, metadata !DIExpression()), !dbg !3575
  store i8* %58, i8** %39, align 8, !dbg !3597, !tbaa !3483
  %59 = load i32, i32* %44, align 8, !dbg !3598, !tbaa !2567
  %60 = load i8*, i8** %47, align 8, !dbg !3599, !tbaa !2641
  %61 = load i8*, i8** %49, align 8, !dbg !3600, !tbaa !2644
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3601
  br label %63, !dbg !3602

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3575
  call void @llvm.dbg.value(metadata i8* %64, metadata !3532, metadata !DIExpression()), !dbg !3575
  store i32 %6, i32* %5, align 4, !dbg !3603, !tbaa !1314
  ret i8* %64, !dbg !3604
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3605 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3609, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i8* %1, metadata !3610, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i64 %2, metadata !3611, metadata !DIExpression()), !dbg !3612
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3613
  ret i8* %4, !dbg !3614
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3615 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3617, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i32 0, metadata !3511, metadata !DIExpression()) #18, !dbg !3619
  call void @llvm.dbg.value(metadata i8* %0, metadata !3512, metadata !DIExpression()) #18, !dbg !3619
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !3621
  ret i8* %2, !dbg !3622
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3623 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3627, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i64 %1, metadata !3628, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata i32 0, metadata !3609, metadata !DIExpression()) #18, !dbg !3630
  call void @llvm.dbg.value(metadata i8* %0, metadata !3610, metadata !DIExpression()) #18, !dbg !3630
  call void @llvm.dbg.value(metadata i64 %1, metadata !3611, metadata !DIExpression()) #18, !dbg !3630
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !3632
  ret i8* %3, !dbg !3633
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3634 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3636, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i32 %1, metadata !3637, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i8* %2, metadata !3638, metadata !DIExpression()), !dbg !3640
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3641
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3641
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3639, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata i32 %1, metadata !3643, metadata !DIExpression()) #18, !dbg !3649
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3648, metadata !DIExpression()) #18, !dbg !3651
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !3651, !alias.scope !3652
  %6 = icmp eq i32 %1, 10, !dbg !3655
  br i1 %6, label %7, label %8, !dbg !3657

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3658, !noalias !3652
  unreachable, !dbg !3658

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3659
  store i32 %1, i32* %9, align 8, !dbg !3660, !tbaa !2567, !alias.scope !3652
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3661
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3662
  ret i8* %10, !dbg !3663
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3664 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3668, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 %1, metadata !3669, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i8* %2, metadata !3670, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i64 %3, metadata !3671, metadata !DIExpression()), !dbg !3673
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3674
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3674
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3672, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i32 %1, metadata !3643, metadata !DIExpression()) #18, !dbg !3676
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3648, metadata !DIExpression()) #18, !dbg !3678
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #18, !dbg !3678, !alias.scope !3679
  %7 = icmp eq i32 %1, 10, !dbg !3682
  br i1 %7, label %8, label %9, !dbg !3683

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !3684, !noalias !3679
  unreachable, !dbg !3684

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3685
  store i32 %1, i32* %10, align 8, !dbg !3686, !tbaa !2567, !alias.scope !3679
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3687
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3688
  ret i8* %11, !dbg !3689
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3690 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3648, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3639, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i32 %0, metadata !3692, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i8* %1, metadata !3693, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i32 0, metadata !3636, metadata !DIExpression()) #18, !dbg !3699
  call void @llvm.dbg.value(metadata i32 %0, metadata !3637, metadata !DIExpression()) #18, !dbg !3699
  call void @llvm.dbg.value(metadata i8* %1, metadata !3638, metadata !DIExpression()) #18, !dbg !3699
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3700
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3700
  call void @llvm.dbg.value(metadata i32 %0, metadata !3643, metadata !DIExpression()) #18, !dbg !3701
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #18, !dbg !3694, !alias.scope !3702
  %5 = icmp eq i32 %0, 10, !dbg !3705
  br i1 %5, label %6, label %7, !dbg !3706

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !3707, !noalias !3702
  unreachable, !dbg !3707

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3708
  store i32 %0, i32* %8, align 8, !dbg !3709, !tbaa !2567, !alias.scope !3702
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !3710
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3711
  ret i8* %9, !dbg !3712
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3713 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3648, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3672, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i32 %0, metadata !3717, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i8* %1, metadata !3718, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i64 %2, metadata !3719, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i32 0, metadata !3668, metadata !DIExpression()) #18, !dbg !3725
  call void @llvm.dbg.value(metadata i32 %0, metadata !3669, metadata !DIExpression()) #18, !dbg !3725
  call void @llvm.dbg.value(metadata i8* %1, metadata !3670, metadata !DIExpression()) #18, !dbg !3725
  call void @llvm.dbg.value(metadata i64 %2, metadata !3671, metadata !DIExpression()) #18, !dbg !3725
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3726
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3726
  call void @llvm.dbg.value(metadata i32 %0, metadata !3643, metadata !DIExpression()) #18, !dbg !3727
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !3720, !alias.scope !3728
  %6 = icmp eq i32 %0, 10, !dbg !3731
  br i1 %6, label %7, label %8, !dbg !3732

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3733, !noalias !3728
  unreachable, !dbg !3733

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3734
  store i32 %0, i32* %9, align 8, !dbg !3735, !tbaa !2567, !alias.scope !3728
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #18, !dbg !3736
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3737
  ret i8* %10, !dbg !3738
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3739 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3743, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %1, metadata !3744, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i8 %2, metadata !3745, metadata !DIExpression()), !dbg !3747
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3748
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3748
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3746, metadata !DIExpression()), !dbg !3749
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3750, !tbaa.struct !3751
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2585, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i8 %2, metadata !2586, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i32 1, metadata !2587, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i8 %2, metadata !2588, metadata !DIExpression()), !dbg !3752
  %6 = lshr i8 %2, 5, !dbg !3754
  %7 = zext i8 %6 to i64, !dbg !3754
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3755
  call void @llvm.dbg.value(metadata i32* %8, metadata !2589, metadata !DIExpression()), !dbg !3752
  %9 = and i8 %2, 31, !dbg !3756
  %10 = zext i8 %9 to i32, !dbg !3756
  call void @llvm.dbg.value(metadata i32 %10, metadata !2591, metadata !DIExpression()), !dbg !3752
  %11 = load i32, i32* %8, align 4, !dbg !3757, !tbaa !1314
  %12 = lshr i32 %11, %10, !dbg !3758
  %13 = and i32 %12, 1, !dbg !3759
  call void @llvm.dbg.value(metadata i32 %13, metadata !2592, metadata !DIExpression()), !dbg !3752
  %14 = xor i32 %13, 1, !dbg !3760
  %15 = shl i32 %14, %10, !dbg !3761
  %16 = xor i32 %15, %11, !dbg !3762
  store i32 %16, i32* %8, align 4, !dbg !3762, !tbaa !1314
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3763
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3764
  ret i8* %17, !dbg !3765
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3766 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3746, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata i8* %0, metadata !3770, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i8 %1, metadata !3771, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i8* %0, metadata !3743, metadata !DIExpression()) #18, !dbg !3775
  call void @llvm.dbg.value(metadata i64 -1, metadata !3744, metadata !DIExpression()) #18, !dbg !3775
  call void @llvm.dbg.value(metadata i8 %1, metadata !3745, metadata !DIExpression()) #18, !dbg !3775
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3776
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3776
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3777, !tbaa.struct !3751
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2585, metadata !DIExpression()) #18, !dbg !3778
  call void @llvm.dbg.value(metadata i8 %1, metadata !2586, metadata !DIExpression()) #18, !dbg !3778
  call void @llvm.dbg.value(metadata i32 1, metadata !2587, metadata !DIExpression()) #18, !dbg !3778
  call void @llvm.dbg.value(metadata i8 %1, metadata !2588, metadata !DIExpression()) #18, !dbg !3778
  %5 = lshr i8 %1, 5, !dbg !3780
  %6 = zext i8 %5 to i64, !dbg !3780
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3781
  call void @llvm.dbg.value(metadata i32* %7, metadata !2589, metadata !DIExpression()) #18, !dbg !3778
  %8 = and i8 %1, 31, !dbg !3782
  %9 = zext i8 %8 to i32, !dbg !3782
  call void @llvm.dbg.value(metadata i32 %9, metadata !2591, metadata !DIExpression()) #18, !dbg !3778
  %10 = load i32, i32* %7, align 4, !dbg !3783, !tbaa !1314
  %11 = lshr i32 %10, %9, !dbg !3784
  %12 = and i32 %11, 1, !dbg !3785
  call void @llvm.dbg.value(metadata i32 %12, metadata !2592, metadata !DIExpression()) #18, !dbg !3778
  %13 = xor i32 %12, 1, !dbg !3786
  %14 = shl i32 %13, %9, !dbg !3787
  %15 = xor i32 %14, %10, !dbg !3788
  store i32 %15, i32* %7, align 4, !dbg !3788, !tbaa !1314
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !3789
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3790
  ret i8* %16, !dbg !3791
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3792 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3746, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i8* %0, metadata !3794, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i8* %0, metadata !3770, metadata !DIExpression()) #18, !dbg !3799
  call void @llvm.dbg.value(metadata i8 58, metadata !3771, metadata !DIExpression()) #18, !dbg !3799
  call void @llvm.dbg.value(metadata i8* %0, metadata !3743, metadata !DIExpression()) #18, !dbg !3800
  call void @llvm.dbg.value(metadata i64 -1, metadata !3744, metadata !DIExpression()) #18, !dbg !3800
  call void @llvm.dbg.value(metadata i8 58, metadata !3745, metadata !DIExpression()) #18, !dbg !3800
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3801
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #18, !dbg !3801
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3802, !tbaa.struct !3751
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2585, metadata !DIExpression()) #18, !dbg !3803
  call void @llvm.dbg.value(metadata i8 58, metadata !2586, metadata !DIExpression()) #18, !dbg !3803
  call void @llvm.dbg.value(metadata i32 1, metadata !2587, metadata !DIExpression()) #18, !dbg !3803
  call void @llvm.dbg.value(metadata i8 58, metadata !2588, metadata !DIExpression()) #18, !dbg !3803
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3805
  call void @llvm.dbg.value(metadata i32* %4, metadata !2589, metadata !DIExpression()) #18, !dbg !3803
  call void @llvm.dbg.value(metadata i32 26, metadata !2591, metadata !DIExpression()) #18, !dbg !3803
  %5 = load i32, i32* %4, align 4, !dbg !3806, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 %5, metadata !2592, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !3803
  %6 = or i32 %5, 67108864, !dbg !3807
  store i32 %6, i32* %4, align 4, !dbg !3807, !tbaa !1314
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #18, !dbg !3808
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #18, !dbg !3809
  ret i8* %7, !dbg !3810
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3811 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3746, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.value(metadata i8* %0, metadata !3813, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i64 %1, metadata !3814, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i8* %0, metadata !3743, metadata !DIExpression()) #18, !dbg !3818
  call void @llvm.dbg.value(metadata i64 %1, metadata !3744, metadata !DIExpression()) #18, !dbg !3818
  call void @llvm.dbg.value(metadata i8 58, metadata !3745, metadata !DIExpression()) #18, !dbg !3818
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3819
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3819
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3820, !tbaa.struct !3751
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2585, metadata !DIExpression()) #18, !dbg !3821
  call void @llvm.dbg.value(metadata i8 58, metadata !2586, metadata !DIExpression()) #18, !dbg !3821
  call void @llvm.dbg.value(metadata i32 1, metadata !2587, metadata !DIExpression()) #18, !dbg !3821
  call void @llvm.dbg.value(metadata i8 58, metadata !2588, metadata !DIExpression()) #18, !dbg !3821
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3823
  call void @llvm.dbg.value(metadata i32* %5, metadata !2589, metadata !DIExpression()) #18, !dbg !3821
  call void @llvm.dbg.value(metadata i32 26, metadata !2591, metadata !DIExpression()) #18, !dbg !3821
  %6 = load i32, i32* %5, align 4, !dbg !3824, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 %6, metadata !2592, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !3821
  %7 = or i32 %6, 67108864, !dbg !3825
  store i32 %7, i32* %5, align 4, !dbg !3825, !tbaa !1314
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #18, !dbg !3826
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !3827
  ret i8* %8, !dbg !3828
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3829 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3648, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3835
  call void @llvm.dbg.value(metadata i32 %0, metadata !3831, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i32 %1, metadata !3832, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i8* %2, metadata !3833, metadata !DIExpression()), !dbg !3837
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3838
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3838
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3834, metadata !DIExpression()), !dbg !3839
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3840
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3840
  call void @llvm.dbg.value(metadata i32 %1, metadata !3643, metadata !DIExpression()) #18, !dbg !3841
  call void @llvm.dbg.value(metadata i32 0, metadata !3648, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3841
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3835, !alias.scope !3842
  %8 = icmp eq i32 %1, 10, !dbg !3845
  br i1 %8, label %9, label %10, !dbg !3846

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !3847, !noalias !3842
  unreachable, !dbg !3847

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3648, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3841
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3840
  store i32 %1, i32* %11, align 8, !dbg !3840, !tbaa.struct !3751
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3840
  %13 = bitcast i32* %12 to i8*, !dbg !3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3840, !tbaa.struct !3751
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3840
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2585, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i8 58, metadata !2586, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i32 1, metadata !2587, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i8 58, metadata !2588, metadata !DIExpression()), !dbg !3848
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3850
  call void @llvm.dbg.value(metadata i32* %14, metadata !2589, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i32 26, metadata !2591, metadata !DIExpression()), !dbg !3848
  %15 = load i32, i32* %14, align 4, !dbg !3851, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 %15, metadata !2592, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3848
  %16 = or i32 %15, 67108864, !dbg !3852
  store i32 %16, i32* %14, align 4, !dbg !3852, !tbaa !1314
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3853
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3854
  ret i8* %17, !dbg !3855
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3856 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3864, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i32 %0, metadata !3860, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i8* %1, metadata !3861, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i8* %2, metadata !3862, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i8* %3, metadata !3863, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i32 %0, metadata !3869, metadata !DIExpression()) #18, !dbg !3877
  call void @llvm.dbg.value(metadata i8* %1, metadata !3870, metadata !DIExpression()) #18, !dbg !3877
  call void @llvm.dbg.value(metadata i8* %2, metadata !3871, metadata !DIExpression()) #18, !dbg !3877
  call void @llvm.dbg.value(metadata i8* %3, metadata !3872, metadata !DIExpression()) #18, !dbg !3877
  call void @llvm.dbg.value(metadata i64 -1, metadata !3873, metadata !DIExpression()) #18, !dbg !3877
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3878
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3878
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3879, !tbaa.struct !3751
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2625, metadata !DIExpression()) #18, !dbg !3880
  call void @llvm.dbg.value(metadata i8* %1, metadata !2626, metadata !DIExpression()) #18, !dbg !3880
  call void @llvm.dbg.value(metadata i8* %2, metadata !2627, metadata !DIExpression()) #18, !dbg !3880
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2625, metadata !DIExpression()) #18, !dbg !3880
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3882
  store i32 10, i32* %7, align 8, !dbg !3883, !tbaa !2567
  %8 = icmp ne i8* %1, null, !dbg !3884
  %9 = icmp ne i8* %2, null, !dbg !3885
  %10 = and i1 %8, %9, !dbg !3886
  br i1 %10, label %12, label %11, !dbg !3886

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3887
  unreachable, !dbg !3887

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3888
  store i8* %1, i8** %13, align 8, !dbg !3889, !tbaa !2641
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3890
  store i8* %2, i8** %14, align 8, !dbg !3891, !tbaa !2644
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #18, !dbg !3892
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3893
  ret i8* %15, !dbg !3894
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3865 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3869, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata i8* %1, metadata !3870, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata i8* %2, metadata !3871, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata i8* %3, metadata !3872, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata i64 %4, metadata !3873, metadata !DIExpression()), !dbg !3895
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3896
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3896
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3864, metadata !DIExpression()), !dbg !3897
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3898, !tbaa.struct !3751
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2625, metadata !DIExpression()) #18, !dbg !3899
  call void @llvm.dbg.value(metadata i8* %1, metadata !2626, metadata !DIExpression()) #18, !dbg !3899
  call void @llvm.dbg.value(metadata i8* %2, metadata !2627, metadata !DIExpression()) #18, !dbg !3899
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2625, metadata !DIExpression()) #18, !dbg !3899
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3901
  store i32 10, i32* %8, align 8, !dbg !3902, !tbaa !2567
  %9 = icmp ne i8* %1, null, !dbg !3903
  %10 = icmp ne i8* %2, null, !dbg !3904
  %11 = and i1 %9, %10, !dbg !3905
  br i1 %11, label %13, label %12, !dbg !3905

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !3906
  unreachable, !dbg !3906

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3907
  store i8* %1, i8** %14, align 8, !dbg !3908, !tbaa !2641
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3909
  store i8* %2, i8** %15, align 8, !dbg !3910, !tbaa !2644
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3911
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3912
  ret i8* %16, !dbg !3913
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3914 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3864, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata i8* %0, metadata !3918, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i8* %1, metadata !3919, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i8* %2, metadata !3920, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i32 0, metadata !3860, metadata !DIExpression()) #18, !dbg !3925
  call void @llvm.dbg.value(metadata i8* %0, metadata !3861, metadata !DIExpression()) #18, !dbg !3925
  call void @llvm.dbg.value(metadata i8* %1, metadata !3862, metadata !DIExpression()) #18, !dbg !3925
  call void @llvm.dbg.value(metadata i8* %2, metadata !3863, metadata !DIExpression()) #18, !dbg !3925
  call void @llvm.dbg.value(metadata i32 0, metadata !3869, metadata !DIExpression()) #18, !dbg !3926
  call void @llvm.dbg.value(metadata i8* %0, metadata !3870, metadata !DIExpression()) #18, !dbg !3926
  call void @llvm.dbg.value(metadata i8* %1, metadata !3871, metadata !DIExpression()) #18, !dbg !3926
  call void @llvm.dbg.value(metadata i8* %2, metadata !3872, metadata !DIExpression()) #18, !dbg !3926
  call void @llvm.dbg.value(metadata i64 -1, metadata !3873, metadata !DIExpression()) #18, !dbg !3926
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3927
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3927
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3928, !tbaa.struct !3751
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2625, metadata !DIExpression()) #18, !dbg !3929
  call void @llvm.dbg.value(metadata i8* %0, metadata !2626, metadata !DIExpression()) #18, !dbg !3929
  call void @llvm.dbg.value(metadata i8* %1, metadata !2627, metadata !DIExpression()) #18, !dbg !3929
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2625, metadata !DIExpression()) #18, !dbg !3929
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3931
  store i32 10, i32* %6, align 8, !dbg !3932, !tbaa !2567
  %7 = icmp ne i8* %0, null, !dbg !3933
  %8 = icmp ne i8* %1, null, !dbg !3934
  %9 = and i1 %7, %8, !dbg !3935
  br i1 %9, label %11, label %10, !dbg !3935

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !3936
  unreachable, !dbg !3936

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3937
  store i8* %0, i8** %12, align 8, !dbg !3938, !tbaa !2641
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3939
  store i8* %1, i8** %13, align 8, !dbg !3940, !tbaa !2644
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #18, !dbg !3941
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3942
  ret i8* %14, !dbg !3943
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3944 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3864, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i8* %0, metadata !3948, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i8* %1, metadata !3949, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i8* %2, metadata !3950, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i64 %3, metadata !3951, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i32 0, metadata !3869, metadata !DIExpression()) #18, !dbg !3955
  call void @llvm.dbg.value(metadata i8* %0, metadata !3870, metadata !DIExpression()) #18, !dbg !3955
  call void @llvm.dbg.value(metadata i8* %1, metadata !3871, metadata !DIExpression()) #18, !dbg !3955
  call void @llvm.dbg.value(metadata i8* %2, metadata !3872, metadata !DIExpression()) #18, !dbg !3955
  call void @llvm.dbg.value(metadata i64 %3, metadata !3873, metadata !DIExpression()) #18, !dbg !3955
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3956
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3956
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3957, !tbaa.struct !3751
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2625, metadata !DIExpression()) #18, !dbg !3958
  call void @llvm.dbg.value(metadata i8* %0, metadata !2626, metadata !DIExpression()) #18, !dbg !3958
  call void @llvm.dbg.value(metadata i8* %1, metadata !2627, metadata !DIExpression()) #18, !dbg !3958
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2625, metadata !DIExpression()) #18, !dbg !3958
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3960
  store i32 10, i32* %7, align 8, !dbg !3961, !tbaa !2567
  %8 = icmp ne i8* %0, null, !dbg !3962
  %9 = icmp ne i8* %1, null, !dbg !3963
  %10 = and i1 %8, %9, !dbg !3964
  br i1 %10, label %12, label %11, !dbg !3964

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3965
  unreachable, !dbg !3965

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3966
  store i8* %0, i8** %13, align 8, !dbg !3967, !tbaa !2641
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3968
  store i8* %1, i8** %14, align 8, !dbg !3969, !tbaa !2644
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #18, !dbg !3970
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3971
  ret i8* %15, !dbg !3972
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3973 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3977, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i8* %1, metadata !3978, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i64 %2, metadata !3979, metadata !DIExpression()), !dbg !3980
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3981
  ret i8* %4, !dbg !3982
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3983 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3987, metadata !DIExpression()), !dbg !3989
  call void @llvm.dbg.value(metadata i64 %1, metadata !3988, metadata !DIExpression()), !dbg !3989
  call void @llvm.dbg.value(metadata i32 0, metadata !3977, metadata !DIExpression()) #18, !dbg !3990
  call void @llvm.dbg.value(metadata i8* %0, metadata !3978, metadata !DIExpression()) #18, !dbg !3990
  call void @llvm.dbg.value(metadata i64 %1, metadata !3979, metadata !DIExpression()) #18, !dbg !3990
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3992
  ret i8* %3, !dbg !3993
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3994 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3998, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i8* %1, metadata !3999, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i32 %0, metadata !3977, metadata !DIExpression()) #18, !dbg !4001
  call void @llvm.dbg.value(metadata i8* %1, metadata !3978, metadata !DIExpression()) #18, !dbg !4001
  call void @llvm.dbg.value(metadata i64 -1, metadata !3979, metadata !DIExpression()) #18, !dbg !4001
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !4003
  ret i8* %3, !dbg !4004
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !4005 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4007, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i32 0, metadata !3998, metadata !DIExpression()) #18, !dbg !4009
  call void @llvm.dbg.value(metadata i8* %0, metadata !3999, metadata !DIExpression()) #18, !dbg !4009
  call void @llvm.dbg.value(metadata i32 0, metadata !3977, metadata !DIExpression()) #18, !dbg !4011
  call void @llvm.dbg.value(metadata i8* %0, metadata !3978, metadata !DIExpression()) #18, !dbg !4011
  call void @llvm.dbg.value(metadata i64 -1, metadata !3979, metadata !DIExpression()) #18, !dbg !4011
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !4013
  ret i8* %2, !dbg !4014
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !4015 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4022, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i8* %1, metadata !4023, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i8* %2, metadata !4024, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i8* %3, metadata !4025, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i8** %4, metadata !4026, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i64 %5, metadata !4027, metadata !DIExpression()), !dbg !4028
  %7 = icmp eq i8* %1, null, !dbg !4029
  br i1 %7, label %10, label %8, !dbg !4031

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #18, !dbg !4032
  br label %12, !dbg !4032

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.91, i64 0, i64 0), i8* %2, i8* %3) #18, !dbg !4033
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.92, i64 0, i64 0), i32 5) #18, !dbg !4034
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #18, !dbg !4034
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.93, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4035
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.94, i64 0, i64 0), i32 5) #18, !dbg !4036
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.95, i64 0, i64 0)) #18, !dbg !4036
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.93, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4037
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
  ], !dbg !4038

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.96, i64 0, i64 0), i32 5) #18, !dbg !4039
  %21 = load i8*, i8** %4, align 8, !dbg !4039, !tbaa !1233
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #18, !dbg !4039
  br label %147, !dbg !4041

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.97, i64 0, i64 0), i32 5) #18, !dbg !4042
  %25 = load i8*, i8** %4, align 8, !dbg !4042, !tbaa !1233
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4042
  %27 = load i8*, i8** %26, align 8, !dbg !4042, !tbaa !1233
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #18, !dbg !4042
  br label %147, !dbg !4043

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.98, i64 0, i64 0), i32 5) #18, !dbg !4044
  %31 = load i8*, i8** %4, align 8, !dbg !4044, !tbaa !1233
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4044
  %33 = load i8*, i8** %32, align 8, !dbg !4044, !tbaa !1233
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4044
  %35 = load i8*, i8** %34, align 8, !dbg !4044, !tbaa !1233
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #18, !dbg !4044
  br label %147, !dbg !4045

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.99, i64 0, i64 0), i32 5) #18, !dbg !4046
  %39 = load i8*, i8** %4, align 8, !dbg !4046, !tbaa !1233
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4046
  %41 = load i8*, i8** %40, align 8, !dbg !4046, !tbaa !1233
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4046
  %43 = load i8*, i8** %42, align 8, !dbg !4046, !tbaa !1233
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4046
  %45 = load i8*, i8** %44, align 8, !dbg !4046, !tbaa !1233
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #18, !dbg !4046
  br label %147, !dbg !4047

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.100, i64 0, i64 0), i32 5) #18, !dbg !4048
  %49 = load i8*, i8** %4, align 8, !dbg !4048, !tbaa !1233
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4048
  %51 = load i8*, i8** %50, align 8, !dbg !4048, !tbaa !1233
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4048
  %53 = load i8*, i8** %52, align 8, !dbg !4048, !tbaa !1233
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4048
  %55 = load i8*, i8** %54, align 8, !dbg !4048, !tbaa !1233
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4048
  %57 = load i8*, i8** %56, align 8, !dbg !4048, !tbaa !1233
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #18, !dbg !4048
  br label %147, !dbg !4049

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.101, i64 0, i64 0), i32 5) #18, !dbg !4050
  %61 = load i8*, i8** %4, align 8, !dbg !4050, !tbaa !1233
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4050
  %63 = load i8*, i8** %62, align 8, !dbg !4050, !tbaa !1233
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4050
  %65 = load i8*, i8** %64, align 8, !dbg !4050, !tbaa !1233
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4050
  %67 = load i8*, i8** %66, align 8, !dbg !4050, !tbaa !1233
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4050
  %69 = load i8*, i8** %68, align 8, !dbg !4050, !tbaa !1233
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4050
  %71 = load i8*, i8** %70, align 8, !dbg !4050, !tbaa !1233
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #18, !dbg !4050
  br label %147, !dbg !4051

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.102, i64 0, i64 0), i32 5) #18, !dbg !4052
  %75 = load i8*, i8** %4, align 8, !dbg !4052, !tbaa !1233
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4052
  %77 = load i8*, i8** %76, align 8, !dbg !4052, !tbaa !1233
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4052
  %79 = load i8*, i8** %78, align 8, !dbg !4052, !tbaa !1233
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4052
  %81 = load i8*, i8** %80, align 8, !dbg !4052, !tbaa !1233
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4052
  %83 = load i8*, i8** %82, align 8, !dbg !4052, !tbaa !1233
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4052
  %85 = load i8*, i8** %84, align 8, !dbg !4052, !tbaa !1233
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4052
  %87 = load i8*, i8** %86, align 8, !dbg !4052, !tbaa !1233
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #18, !dbg !4052
  br label %147, !dbg !4053

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.103, i64 0, i64 0), i32 5) #18, !dbg !4054
  %91 = load i8*, i8** %4, align 8, !dbg !4054, !tbaa !1233
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4054
  %93 = load i8*, i8** %92, align 8, !dbg !4054, !tbaa !1233
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4054
  %95 = load i8*, i8** %94, align 8, !dbg !4054, !tbaa !1233
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4054
  %97 = load i8*, i8** %96, align 8, !dbg !4054, !tbaa !1233
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4054
  %99 = load i8*, i8** %98, align 8, !dbg !4054, !tbaa !1233
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4054
  %101 = load i8*, i8** %100, align 8, !dbg !4054, !tbaa !1233
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4054
  %103 = load i8*, i8** %102, align 8, !dbg !4054, !tbaa !1233
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4054
  %105 = load i8*, i8** %104, align 8, !dbg !4054, !tbaa !1233
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #18, !dbg !4054
  br label %147, !dbg !4055

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.104, i64 0, i64 0), i32 5) #18, !dbg !4056
  %109 = load i8*, i8** %4, align 8, !dbg !4056, !tbaa !1233
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4056
  %111 = load i8*, i8** %110, align 8, !dbg !4056, !tbaa !1233
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4056
  %113 = load i8*, i8** %112, align 8, !dbg !4056, !tbaa !1233
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4056
  %115 = load i8*, i8** %114, align 8, !dbg !4056, !tbaa !1233
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4056
  %117 = load i8*, i8** %116, align 8, !dbg !4056, !tbaa !1233
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4056
  %119 = load i8*, i8** %118, align 8, !dbg !4056, !tbaa !1233
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4056
  %121 = load i8*, i8** %120, align 8, !dbg !4056, !tbaa !1233
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4056
  %123 = load i8*, i8** %122, align 8, !dbg !4056, !tbaa !1233
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4056
  %125 = load i8*, i8** %124, align 8, !dbg !4056, !tbaa !1233
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #18, !dbg !4056
  br label %147, !dbg !4057

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.105, i64 0, i64 0), i32 5) #18, !dbg !4058
  %129 = load i8*, i8** %4, align 8, !dbg !4058, !tbaa !1233
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4058
  %131 = load i8*, i8** %130, align 8, !dbg !4058, !tbaa !1233
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4058
  %133 = load i8*, i8** %132, align 8, !dbg !4058, !tbaa !1233
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4058
  %135 = load i8*, i8** %134, align 8, !dbg !4058, !tbaa !1233
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4058
  %137 = load i8*, i8** %136, align 8, !dbg !4058, !tbaa !1233
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4058
  %139 = load i8*, i8** %138, align 8, !dbg !4058, !tbaa !1233
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4058
  %141 = load i8*, i8** %140, align 8, !dbg !4058, !tbaa !1233
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4058
  %143 = load i8*, i8** %142, align 8, !dbg !4058, !tbaa !1233
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4058
  %145 = load i8*, i8** %144, align 8, !dbg !4058, !tbaa !1233
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #18, !dbg !4058
  br label %147, !dbg !4059

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4060
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !4061 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4065, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i8* %1, metadata !4066, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i8* %2, metadata !4067, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i8* %3, metadata !4068, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i8** %4, metadata !4069, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 0, metadata !4070, metadata !DIExpression()), !dbg !4071
  br label %6, !dbg !4072

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4074
  call void @llvm.dbg.value(metadata i64 %7, metadata !4070, metadata !DIExpression()), !dbg !4071
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4075
  %9 = load i8*, i8** %8, align 8, !dbg !4075, !tbaa !1233
  %10 = icmp eq i8* %9, null, !dbg !4077
  %11 = add i64 %7, 1, !dbg !4078
  call void @llvm.dbg.value(metadata i64 %11, metadata !4070, metadata !DIExpression()), !dbg !4071
  br i1 %10, label %12, label %6, !dbg !4077, !llvm.loop !4079

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4070, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %7, metadata !4070, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %7, metadata !4070, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %7, metadata !4070, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %7, metadata !4070, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %7, metadata !4070, metadata !DIExpression()), !dbg !4071
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4081
  ret void, !dbg !4082
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !4083 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4094, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i8* %1, metadata !4095, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i8* %2, metadata !4096, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i8* %3, metadata !4097, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4098, metadata !DIExpression()), !dbg !4102
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4103
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #18, !dbg !4103
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4100, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i64 0, metadata !4099, metadata !DIExpression()), !dbg !4102
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !4105
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !4105
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !4105
  %11 = load i32, i32* %8, align 8, !dbg !4108
  %12 = icmp ult i32 %11, 41, !dbg !4108
  br i1 %12, label %13, label %18, !dbg !4108

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !4108
  %15 = zext i32 %11 to i64, !dbg !4108
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4108
  %17 = add nuw nsw i32 %11, 8, !dbg !4108
  store i32 %17, i32* %8, align 8, !dbg !4108
  br label %21, !dbg !4108

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !4108
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4108
  store i8* %20, i8** %9, align 8, !dbg !4108
  br label %21, !dbg !4108

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4108
  %25 = load i8*, i8** %24, align 8, !dbg !4108
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4109
  store i8* %25, i8** %26, align 16, !dbg !4110, !tbaa !1233
  %27 = icmp eq i8* %25, null, !dbg !4111
  br i1 %27, label %30, label %28, !dbg !4112

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4099, metadata !DIExpression()), !dbg !4102
  %29 = icmp ult i32 %22, 41, !dbg !4108
  br i1 %29, label %35, label %32, !dbg !4108

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4113
  call void @llvm.dbg.value(metadata i64 %31, metadata !4099, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i64 %31, metadata !4099, metadata !DIExpression()), !dbg !4102
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4114
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #18, !dbg !4115
  ret void, !dbg !4115

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !4108
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4108
  store i8* %34, i8** %9, align 8, !dbg !4108
  br label %40, !dbg !4108

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !4108
  %37 = zext i32 %22 to i64, !dbg !4108
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4108
  %39 = add nuw nsw i32 %22, 8, !dbg !4108
  store i32 %39, i32* %8, align 8, !dbg !4108
  br label %40, !dbg !4108

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4108
  %44 = load i8*, i8** %43, align 8, !dbg !4108
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4109
  store i8* %44, i8** %45, align 8, !dbg !4110, !tbaa !1233
  %46 = icmp eq i8* %44, null, !dbg !4111
  br i1 %46, label %30, label %47, !dbg !4112

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4099, metadata !DIExpression()), !dbg !4102
  %48 = icmp ult i32 %41, 41, !dbg !4108
  br i1 %48, label %52, label %49, !dbg !4108

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !4108
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4108
  store i8* %51, i8** %9, align 8, !dbg !4108
  br label %57, !dbg !4108

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !4108
  %54 = zext i32 %41 to i64, !dbg !4108
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4108
  %56 = add nuw nsw i32 %41, 8, !dbg !4108
  store i32 %56, i32* %8, align 8, !dbg !4108
  br label %57, !dbg !4108

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4108
  %61 = load i8*, i8** %60, align 8, !dbg !4108
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4109
  store i8* %61, i8** %62, align 16, !dbg !4110, !tbaa !1233
  %63 = icmp eq i8* %61, null, !dbg !4111
  br i1 %63, label %30, label %64, !dbg !4112

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4099, metadata !DIExpression()), !dbg !4102
  %65 = icmp ult i32 %58, 41, !dbg !4108
  br i1 %65, label %69, label %66, !dbg !4108

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !4108
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4108
  store i8* %68, i8** %9, align 8, !dbg !4108
  br label %74, !dbg !4108

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !4108
  %71 = zext i32 %58 to i64, !dbg !4108
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4108
  %73 = add nuw nsw i32 %58, 8, !dbg !4108
  store i32 %73, i32* %8, align 8, !dbg !4108
  br label %74, !dbg !4108

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4108
  %78 = load i8*, i8** %77, align 8, !dbg !4108
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4109
  store i8* %78, i8** %79, align 8, !dbg !4110, !tbaa !1233
  %80 = icmp eq i8* %78, null, !dbg !4111
  br i1 %80, label %30, label %81, !dbg !4112

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4099, metadata !DIExpression()), !dbg !4102
  %82 = icmp ult i32 %75, 41, !dbg !4108
  br i1 %82, label %86, label %83, !dbg !4108

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !4108
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4108
  store i8* %85, i8** %9, align 8, !dbg !4108
  br label %91, !dbg !4108

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !4108
  %88 = zext i32 %75 to i64, !dbg !4108
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4108
  %90 = add nuw nsw i32 %75, 8, !dbg !4108
  store i32 %90, i32* %8, align 8, !dbg !4108
  br label %91, !dbg !4108

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4108
  %95 = load i8*, i8** %94, align 8, !dbg !4108
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4109
  store i8* %95, i8** %96, align 16, !dbg !4110, !tbaa !1233
  %97 = icmp eq i8* %95, null, !dbg !4111
  br i1 %97, label %30, label %98, !dbg !4112

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4099, metadata !DIExpression()), !dbg !4102
  %99 = icmp ult i32 %92, 41, !dbg !4108
  br i1 %99, label %103, label %100, !dbg !4108

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !4108
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4108
  store i8* %102, i8** %9, align 8, !dbg !4108
  br label %108, !dbg !4108

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !4108
  %105 = zext i32 %92 to i64, !dbg !4108
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4108
  %107 = add nuw nsw i32 %92, 8, !dbg !4108
  store i32 %107, i32* %8, align 8, !dbg !4108
  br label %108, !dbg !4108

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4108
  %111 = load i8*, i8** %110, align 8, !dbg !4108
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4109
  store i8* %111, i8** %112, align 8, !dbg !4110, !tbaa !1233
  %113 = icmp eq i8* %111, null, !dbg !4111
  br i1 %113, label %30, label %114, !dbg !4112

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4099, metadata !DIExpression()), !dbg !4102
  %115 = load i8*, i8** %9, align 8, !dbg !4108
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4108
  store i8* %116, i8** %9, align 8, !dbg !4108
  %117 = bitcast i8* %115 to i8**, !dbg !4108
  %118 = load i8*, i8** %117, align 8, !dbg !4108
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4109
  store i8* %118, i8** %119, align 16, !dbg !4110, !tbaa !1233
  %120 = icmp eq i8* %118, null, !dbg !4111
  br i1 %120, label %30, label %121, !dbg !4112

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4099, metadata !DIExpression()), !dbg !4102
  %122 = load i8*, i8** %9, align 8, !dbg !4108
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4108
  store i8* %123, i8** %9, align 8, !dbg !4108
  %124 = bitcast i8* %122 to i8**, !dbg !4108
  %125 = load i8*, i8** %124, align 8, !dbg !4108
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4109
  store i8* %125, i8** %126, align 8, !dbg !4110, !tbaa !1233
  %127 = icmp eq i8* %125, null, !dbg !4111
  br i1 %127, label %30, label %128, !dbg !4112

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4099, metadata !DIExpression()), !dbg !4102
  %129 = load i8*, i8** %9, align 8, !dbg !4108
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4108
  store i8* %130, i8** %9, align 8, !dbg !4108
  %131 = bitcast i8* %129 to i8**, !dbg !4108
  %132 = load i8*, i8** %131, align 8, !dbg !4108
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4109
  store i8* %132, i8** %133, align 16, !dbg !4110, !tbaa !1233
  %134 = icmp eq i8* %132, null, !dbg !4111
  br i1 %134, label %30, label %135, !dbg !4112

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4099, metadata !DIExpression()), !dbg !4102
  %136 = load i8*, i8** %9, align 8, !dbg !4108
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4108
  store i8* %137, i8** %9, align 8, !dbg !4108
  %138 = bitcast i8* %136 to i8**, !dbg !4108
  %139 = load i8*, i8** %138, align 8, !dbg !4108
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4109
  store i8* %139, i8** %140, align 8, !dbg !4110, !tbaa !1233
  %141 = icmp eq i8* %139, null, !dbg !4111
  %142 = select i1 %141, i64 9, i64 10, !dbg !4112
  br label %30, !dbg !4112
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !4116 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4120, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i8* %1, metadata !4121, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i8* %2, metadata !4122, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i8* %3, metadata !4123, metadata !DIExpression()), !dbg !4130
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4131
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #18, !dbg !4131
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4124, metadata !DIExpression()), !dbg !4132
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4133
  call void @llvm.va_start(i8* nonnull %6), !dbg !4133
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4134
  call void @llvm.va_end(i8* nonnull %6), !dbg !4135
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #18, !dbg !4136
  ret void, !dbg !4136
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #18

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !4137 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4138, !tbaa !1233
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.93, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !4138
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.108, i64 0, i64 0), i32 5) #18, !dbg !4139
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.109, i64 0, i64 0)) #18, !dbg !4139
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.110, i64 0, i64 0), i32 5) #18, !dbg !4140
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.111, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.112, i64 0, i64 0)) #18, !dbg !4140
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.113, i64 0, i64 0), i32 5) #18, !dbg !4141
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.114, i64 0, i64 0)) #18, !dbg !4141
  ret void, !dbg !4142
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !4143 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4147, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i64 %1, metadata !4148, metadata !DIExpression()), !dbg !4149
  %3 = udiv i64 9223372036854775807, %1, !dbg !4150
  %4 = icmp ult i64 %3, %0, !dbg !4150
  br i1 %4, label %5, label %6, !dbg !4152

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !4153
  unreachable, !dbg !4153

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4154
  call void @llvm.dbg.value(metadata i64 %7, metadata !4155, metadata !DIExpression()) #18, !dbg !4161
  %8 = tail call noalias i8* @malloc(i64 %7) #18, !dbg !4163
  call void @llvm.dbg.value(metadata i8* %8, metadata !4160, metadata !DIExpression()) #18, !dbg !4161
  %9 = icmp eq i8* %8, null, !dbg !4164
  %10 = icmp ne i64 %7, 0, !dbg !4166
  %11 = and i1 %10, %9, !dbg !4167
  br i1 %11, label %12, label %13, !dbg !4167

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !4168
  unreachable, !dbg !4168

13:                                               ; preds = %6
  ret i8* %8, !dbg !4169
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !4156 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4155, metadata !DIExpression()), !dbg !4170
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !4171
  call void @llvm.dbg.value(metadata i8* %2, metadata !4160, metadata !DIExpression()), !dbg !4170
  %3 = icmp eq i8* %2, null, !dbg !4172
  %4 = icmp ne i64 %0, 0, !dbg !4173
  %5 = and i1 %4, %3, !dbg !4174
  br i1 %5, label %6, label %7, !dbg !4174

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !4175
  unreachable, !dbg !4175

7:                                                ; preds = %1
  ret i8* %2, !dbg !4176
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !4177 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4181, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata i64 %1, metadata !4182, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata i64 %2, metadata !4183, metadata !DIExpression()), !dbg !4184
  %4 = udiv i64 9223372036854775807, %2, !dbg !4185
  %5 = icmp ult i64 %4, %1, !dbg !4185
  br i1 %5, label %6, label %7, !dbg !4187

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !4188
  unreachable, !dbg !4188

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4189
  call void @llvm.dbg.value(metadata i8* %0, metadata !4190, metadata !DIExpression()) #18, !dbg !4196
  call void @llvm.dbg.value(metadata i64 %8, metadata !4195, metadata !DIExpression()) #18, !dbg !4196
  %9 = icmp eq i64 %8, 0, !dbg !4198
  %10 = icmp ne i8* %0, null, !dbg !4200
  %11 = and i1 %10, %9, !dbg !4201
  br i1 %11, label %12, label %13, !dbg !4201

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #18, !dbg !4202
  br label %19, !dbg !4204

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #18, !dbg !4205
  call void @llvm.dbg.value(metadata i8* %14, metadata !4190, metadata !DIExpression()) #18, !dbg !4196
  %15 = icmp eq i8* %14, null, !dbg !4206
  %16 = icmp ne i64 %8, 0, !dbg !4208
  %17 = and i1 %16, %15, !dbg !4209
  br i1 %17, label %18, label %19, !dbg !4209

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !4210
  unreachable, !dbg !4210

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4196
  ret i8* %20, !dbg !4211
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4191 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4190, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 %1, metadata !4195, metadata !DIExpression()), !dbg !4212
  %3 = icmp eq i64 %1, 0, !dbg !4213
  %4 = icmp ne i8* %0, null, !dbg !4214
  %5 = and i1 %4, %3, !dbg !4215
  br i1 %5, label %6, label %7, !dbg !4215

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #18, !dbg !4216
  br label %13, !dbg !4217

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #18, !dbg !4218
  call void @llvm.dbg.value(metadata i8* %8, metadata !4190, metadata !DIExpression()), !dbg !4212
  %9 = icmp eq i8* %8, null, !dbg !4219
  %10 = icmp ne i64 %1, 0, !dbg !4220
  %11 = and i1 %10, %9, !dbg !4221
  br i1 %11, label %12, label %13, !dbg !4221

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !4222
  unreachable, !dbg !4222

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4212
  ret i8* %14, !dbg !4223
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !563 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !568, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i64* %1, metadata !569, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i64 %2, metadata !570, metadata !DIExpression()), !dbg !4224
  %4 = load i64, i64* %1, align 8, !dbg !4225, !tbaa !3468
  call void @llvm.dbg.value(metadata i64 %4, metadata !571, metadata !DIExpression()), !dbg !4224
  %5 = icmp eq i8* %0, null, !dbg !4226
  br i1 %5, label %6, label %20, !dbg !4228

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4229
  br i1 %7, label %8, label %13, !dbg !4232

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4233
  call void @llvm.dbg.value(metadata i64 %9, metadata !571, metadata !DIExpression()), !dbg !4224
  %10 = icmp ugt i64 %2, 128, !dbg !4235
  %11 = zext i1 %10 to i64, !dbg !4235
  %12 = add nuw nsw i64 %9, %11, !dbg !4236
  call void @llvm.dbg.value(metadata i64 %12, metadata !571, metadata !DIExpression()), !dbg !4224
  br label %13, !dbg !4237

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4224
  call void @llvm.dbg.value(metadata i64 %14, metadata !571, metadata !DIExpression()), !dbg !4224
  %15 = udiv i64 9223372036854775807, %2, !dbg !4238
  %16 = icmp ult i64 %15, %14, !dbg !4238
  br i1 %16, label %19, label %17, !dbg !4240

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !571, metadata !DIExpression()), !dbg !4224
  store i64 %14, i64* %1, align 8, !dbg !4241, !tbaa !3468
  %18 = mul i64 %14, %2, !dbg !4242
  call void @llvm.dbg.value(metadata i8* %0, metadata !4190, metadata !DIExpression()) #18, !dbg !4243
  call void @llvm.dbg.value(metadata i64 %28, metadata !4195, metadata !DIExpression()) #18, !dbg !4243
  br label %31, !dbg !4245

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !4246
  unreachable, !dbg !4246

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4247
  %22 = icmp ugt i64 %21, %4, !dbg !4250
  br i1 %22, label %24, label %23, !dbg !4251

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !4252
  unreachable, !dbg !4252

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4253
  %26 = add nuw i64 %4, 1, !dbg !4254
  %27 = add i64 %26, %25, !dbg !4255
  call void @llvm.dbg.value(metadata i64 %27, metadata !571, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i64 %27, metadata !571, metadata !DIExpression()), !dbg !4224
  store i64 %27, i64* %1, align 8, !dbg !4241, !tbaa !3468
  %28 = mul i64 %27, %2, !dbg !4242
  call void @llvm.dbg.value(metadata i8* %0, metadata !4190, metadata !DIExpression()) #18, !dbg !4243
  call void @llvm.dbg.value(metadata i64 %28, metadata !4195, metadata !DIExpression()) #18, !dbg !4243
  %29 = icmp eq i64 %28, 0, !dbg !4256
  br i1 %29, label %30, label %31, !dbg !4245

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #18, !dbg !4257
  br label %38, !dbg !4258

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #18, !dbg !4259
  call void @llvm.dbg.value(metadata i8* %33, metadata !4190, metadata !DIExpression()) #18, !dbg !4243
  %34 = icmp eq i8* %33, null, !dbg !4260
  %35 = icmp ne i64 %32, 0, !dbg !4261
  %36 = and i1 %35, %34, !dbg !4262
  br i1 %36, label %37, label %38, !dbg !4262

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !4263
  unreachable, !dbg !4263

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4243
  ret i8* %39, !dbg !4264
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !4265 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4267, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %0, metadata !4155, metadata !DIExpression()) #18, !dbg !4269
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !4271
  call void @llvm.dbg.value(metadata i8* %2, metadata !4160, metadata !DIExpression()) #18, !dbg !4269
  %3 = icmp eq i8* %2, null, !dbg !4272
  %4 = icmp ne i64 %0, 0, !dbg !4273
  %5 = and i1 %4, %3, !dbg !4274
  br i1 %5, label %6, label %7, !dbg !4274

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !4275
  unreachable, !dbg !4275

7:                                                ; preds = %1
  ret i8* %2, !dbg !4276
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4277 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4281, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata i64* %1, metadata !4282, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata i8* %0, metadata !568, metadata !DIExpression()) #18, !dbg !4284
  call void @llvm.dbg.value(metadata i64* %1, metadata !569, metadata !DIExpression()) #18, !dbg !4284
  call void @llvm.dbg.value(metadata i64 1, metadata !570, metadata !DIExpression()) #18, !dbg !4284
  %3 = load i64, i64* %1, align 8, !dbg !4286, !tbaa !3468
  call void @llvm.dbg.value(metadata i64 %3, metadata !571, metadata !DIExpression()) #18, !dbg !4284
  %4 = icmp eq i8* %0, null, !dbg !4287
  br i1 %4, label %5, label %12, !dbg !4288

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4289
  br i1 %6, label %9, label %7, !dbg !4290

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !571, metadata !DIExpression()) #18, !dbg !4284
  %8 = icmp slt i64 %3, 0, !dbg !4291
  br i1 %8, label %11, label %9, !dbg !4292

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !571, metadata !DIExpression()) #18, !dbg !4284
  store i64 %10, i64* %1, align 8, !dbg !4293, !tbaa !3468
  call void @llvm.dbg.value(metadata i8* %0, metadata !4190, metadata !DIExpression()) #18, !dbg !4294
  call void @llvm.dbg.value(metadata i64 %18, metadata !4195, metadata !DIExpression()) #18, !dbg !4294
  br label %21, !dbg !4296

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !4297
  unreachable, !dbg !4297

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4298
  br i1 %13, label %15, label %14, !dbg !4299

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !4300
  unreachable, !dbg !4300

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4301
  %17 = add nuw nsw i64 %3, 1, !dbg !4302
  %18 = add nuw nsw i64 %17, %16, !dbg !4303
  call void @llvm.dbg.value(metadata i64 %18, metadata !571, metadata !DIExpression()) #18, !dbg !4284
  call void @llvm.dbg.value(metadata i64 %18, metadata !571, metadata !DIExpression()) #18, !dbg !4284
  store i64 %18, i64* %1, align 8, !dbg !4293, !tbaa !3468
  call void @llvm.dbg.value(metadata i8* %0, metadata !4190, metadata !DIExpression()) #18, !dbg !4294
  call void @llvm.dbg.value(metadata i64 %18, metadata !4195, metadata !DIExpression()) #18, !dbg !4294
  %19 = icmp eq i64 %18, 0, !dbg !4304
  br i1 %19, label %20, label %21, !dbg !4296

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #18, !dbg !4305
  br label %28, !dbg !4306

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #18, !dbg !4307
  call void @llvm.dbg.value(metadata i8* %23, metadata !4190, metadata !DIExpression()) #18, !dbg !4294
  %24 = icmp eq i8* %23, null, !dbg !4308
  %25 = icmp ne i64 %22, 0, !dbg !4309
  %26 = and i1 %25, %24, !dbg !4310
  br i1 %26, label %27, label %28, !dbg !4310

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !4311
  unreachable, !dbg !4311

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4294
  ret i8* %29, !dbg !4312
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4313 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4315, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i64 %0, metadata !4317, metadata !DIExpression()) #18, !dbg !4322
  call void @llvm.dbg.value(metadata i64 1, metadata !4320, metadata !DIExpression()) #18, !dbg !4322
  %2 = icmp slt i64 %0, 0, !dbg !4324
  br i1 %2, label %6, label %3, !dbg !4326

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #18, !dbg !4327
  call void @llvm.dbg.value(metadata i8* %4, metadata !4321, metadata !DIExpression()) #18, !dbg !4322
  %5 = icmp eq i8* %4, null, !dbg !4328
  br i1 %5, label %6, label %7, !dbg !4329

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !4330
  unreachable, !dbg !4330

7:                                                ; preds = %3
  ret i8* %4, !dbg !4331
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4318 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4317, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %1, metadata !4320, metadata !DIExpression()), !dbg !4332
  %3 = udiv i64 9223372036854775807, %1, !dbg !4333
  %4 = icmp ult i64 %3, %0, !dbg !4333
  br i1 %4, label %8, label %5, !dbg !4334

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #18, !dbg !4335
  call void @llvm.dbg.value(metadata i8* %6, metadata !4321, metadata !DIExpression()), !dbg !4332
  %7 = icmp eq i8* %6, null, !dbg !4336
  br i1 %7, label %8, label %9, !dbg !4337

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !4338
  unreachable, !dbg !4338

9:                                                ; preds = %5
  ret i8* %6, !dbg !4339
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4340 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4344, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i64 %1, metadata !4345, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i64 %1, metadata !4155, metadata !DIExpression()) #18, !dbg !4347
  %3 = tail call noalias i8* @malloc(i64 %1) #18, !dbg !4349
  call void @llvm.dbg.value(metadata i8* %3, metadata !4160, metadata !DIExpression()) #18, !dbg !4347
  %4 = icmp eq i8* %3, null, !dbg !4350
  %5 = icmp ne i64 %1, 0, !dbg !4351
  %6 = and i1 %5, %4, !dbg !4352
  br i1 %6, label %7, label %8, !dbg !4352

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !4353
  unreachable, !dbg !4353

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4354, metadata !DIExpression()) #18, !dbg !4363
  call void @llvm.dbg.value(metadata i8* %0, metadata !4361, metadata !DIExpression()) #18, !dbg !4363
  call void @llvm.dbg.value(metadata i64 %1, metadata !4362, metadata !DIExpression()) #18, !dbg !4363
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #18, !dbg !4365
  ret i8* %3, !dbg !4366
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4367 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4369, metadata !DIExpression()), !dbg !4370
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !4371
  %3 = add i64 %2, 1, !dbg !4372
  call void @llvm.dbg.value(metadata i8* %0, metadata !4344, metadata !DIExpression()) #18, !dbg !4373
  call void @llvm.dbg.value(metadata i64 %3, metadata !4345, metadata !DIExpression()) #18, !dbg !4373
  call void @llvm.dbg.value(metadata i64 %3, metadata !4155, metadata !DIExpression()) #18, !dbg !4375
  %4 = tail call noalias i8* @malloc(i64 %3) #18, !dbg !4377
  call void @llvm.dbg.value(metadata i8* %4, metadata !4160, metadata !DIExpression()) #18, !dbg !4375
  %5 = icmp eq i8* %4, null, !dbg !4378
  %6 = icmp ne i64 %3, 0, !dbg !4379
  %7 = and i1 %6, %5, !dbg !4380
  br i1 %7, label %8, label %9, !dbg !4380

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !4381
  unreachable, !dbg !4381

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4354, metadata !DIExpression()) #18, !dbg !4382
  call void @llvm.dbg.value(metadata i8* %0, metadata !4361, metadata !DIExpression()) #18, !dbg !4382
  call void @llvm.dbg.value(metadata i64 %3, metadata !4362, metadata !DIExpression()) #18, !dbg !4382
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #18, !dbg !4384
  ret i8* %4, !dbg !4385
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4386 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4387, !tbaa !1314
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.125, i64 0, i64 0), i32 5) #18, !dbg !4388
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i64 0, i64 0), i8* %2) #18, !dbg !4389
  tail call void @abort() #22, !dbg !4390
  unreachable, !dbg !4390
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoumax(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i8* %5, i32 %6) local_unnamed_addr #8 !dbg !4391 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4399, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata i32 %1, metadata !4400, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata i64 %2, metadata !4401, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata i64 %3, metadata !4402, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata i8* %4, metadata !4403, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata i8* %5, metadata !4404, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata i32 %6, metadata !4405, metadata !DIExpression()), !dbg !4409
  %9 = bitcast i64* %8 to i8*, !dbg !4410
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #18, !dbg !4410
  call void @llvm.dbg.value(metadata i64* %8, metadata !4408, metadata !DIExpression(DW_OP_deref)), !dbg !4409
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #18, !dbg !4411
  call void @llvm.dbg.value(metadata i32 %10, metadata !4406, metadata !DIExpression()), !dbg !4409
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %23
    i32 3, label %25
  ], !dbg !4412

11:                                               ; preds = %7
  %12 = tail call i32* @__errno_location() #24, !dbg !4413
  br label %27, !dbg !4412

13:                                               ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !4416, !tbaa !3468
  call void @llvm.dbg.value(metadata i64 %14, metadata !4408, metadata !DIExpression()), !dbg !4409
  %15 = icmp ult i64 %14, %2, !dbg !4420
  %16 = icmp ugt i64 %14, %3, !dbg !4421
  %17 = or i1 %15, %16, !dbg !4422
  br i1 %17, label %18, label %36, !dbg !4422

18:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !4406, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata i64 %14, metadata !4408, metadata !DIExpression()), !dbg !4409
  %19 = icmp ugt i64 %14, 1073741823, !dbg !4423
  %20 = tail call i32* @__errno_location() #24, !dbg !4426
  br i1 %19, label %21, label %22, !dbg !4427

21:                                               ; preds = %18
  store i32 75, i32* %20, align 4, !dbg !4428, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 undef, metadata !4406, metadata !DIExpression()), !dbg !4409
  br label %27, !dbg !4429

22:                                               ; preds = %18
  store i32 34, i32* %20, align 4, !dbg !4430, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 undef, metadata !4406, metadata !DIExpression()), !dbg !4409
  br label %27, !dbg !4429

23:                                               ; preds = %7
  %24 = tail call i32* @__errno_location() #24, !dbg !4431
  store i32 75, i32* %24, align 4, !dbg !4433, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 undef, metadata !4406, metadata !DIExpression()), !dbg !4409
  br label %27, !dbg !4429

25:                                               ; preds = %7
  %26 = tail call i32* @__errno_location() #24, !dbg !4434
  store i32 0, i32* %26, align 4, !dbg !4436, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 undef, metadata !4406, metadata !DIExpression()), !dbg !4409
  br label %27, !dbg !4429

27:                                               ; preds = %11, %25, %23, %22, %21
  %28 = phi i32* [ %12, %11 ], [ %26, %25 ], [ %24, %23 ], [ %20, %22 ], [ %20, %21 ], !dbg !4413
  %29 = icmp eq i32 %6, 0, !dbg !4437
  %30 = select i1 %29, i32 1, i32 %6, !dbg !4437
  %31 = load i32, i32* %28, align 4, !dbg !4413, !tbaa !1314
  %32 = icmp eq i32 %31, 22, !dbg !4438
  %33 = select i1 %32, i32 0, i32 %31, !dbg !4413
  %34 = call i8* @quote(i8* %0) #18, !dbg !4439
  call void (i32, i32, i8*, ...) @error(i32 %30, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i64 0, i64 0), i8* %5, i8* %34) #18, !dbg !4440
  %35 = load i64, i64* %8, align 8, !dbg !4441, !tbaa !3468
  br label %36, !dbg !4442

36:                                               ; preds = %13, %27
  %37 = phi i64 [ %14, %13 ], [ %35, %27 ], !dbg !4441
  call void @llvm.dbg.value(metadata i64 %37, metadata !4408, metadata !DIExpression()), !dbg !4409
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #18, !dbg !4443
  ret i64 %37, !dbg !4444
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoumax(i8* %0, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5) local_unnamed_addr #8 !dbg !4445 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4449, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata i64 %1, metadata !4450, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata i64 %2, metadata !4451, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata i8* %3, metadata !4452, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata i8* %4, metadata !4453, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata i32 %5, metadata !4454, metadata !DIExpression()), !dbg !4455
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !4456
  ret i64 %7, !dbg !4457
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !4458 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4464, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i8** %1, metadata !4465, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 %2, metadata !4466, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i64* %3, metadata !4467, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i8* %4, metadata !4468, metadata !DIExpression()), !dbg !4482
  %7 = bitcast i8** %6 to i8*, !dbg !4483
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #18, !dbg !4483
  call void @llvm.dbg.value(metadata i32 0, metadata !4472, metadata !DIExpression()), !dbg !4482
  %8 = icmp ult i32 %2, 37, !dbg !4484
  br i1 %8, label %10, label %9, !dbg !4484

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.132, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.133, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #22, !dbg !4484
  unreachable, !dbg !4484

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4487
  call void @llvm.dbg.value(metadata i8** %25, metadata !4470, metadata !DIExpression()), !dbg !4482
  %12 = tail call i32* @__errno_location() #24, !dbg !4488
  store i32 0, i32* %12, align 4, !dbg !4489, !tbaa !1314
  call void @llvm.dbg.value(metadata i8* %0, metadata !4473, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i8 undef, metadata !4476, metadata !DIExpression()), !dbg !4490
  %13 = tail call i16** @__ctype_b_loc() #24, !dbg !4490
  %14 = load i16*, i16** %13, align 8, !dbg !4490, !tbaa !1233
  br label %15, !dbg !4491

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !4490
  %17 = load i8, i8* %16, align 1, !dbg !4490, !tbaa !1324
  call void @llvm.dbg.value(metadata i8 %17, metadata !4476, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i8* %16, metadata !4473, metadata !DIExpression()), !dbg !4490
  %18 = zext i8 %17 to i64, !dbg !4492
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4492
  %20 = load i16, i16* %19, align 2, !dbg !4492, !tbaa !1966
  %21 = and i16 %20, 8192, !dbg !4492
  %22 = icmp eq i16 %21, 0, !dbg !4491
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4493
  call void @llvm.dbg.value(metadata i8* %23, metadata !4473, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i8 undef, metadata !4476, metadata !DIExpression()), !dbg !4490
  br i1 %22, label %24, label %15, !dbg !4491, !llvm.loop !4494

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4487
  %26 = icmp eq i8 %17, 45, !dbg !4496
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %0, metadata !4498, metadata !DIExpression()) #18, !dbg !4508
  call void @llvm.dbg.value(metadata i8** %25, metadata !4506, metadata !DIExpression()) #18, !dbg !4508
  call void @llvm.dbg.value(metadata i32 %2, metadata !4507, metadata !DIExpression()) #18, !dbg !4508
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #18, !dbg !4510
  call void @llvm.dbg.value(metadata i64 %28, metadata !4471, metadata !DIExpression()), !dbg !4482
  %29 = load i8*, i8** %25, align 8, !dbg !4511, !tbaa !1233
  %30 = icmp eq i8* %29, %0, !dbg !4513
  br i1 %30, label %31, label %40, !dbg !4514

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4515
  br i1 %32, label %285, label %33, !dbg !4518

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4519, !tbaa !1324
  %35 = icmp eq i8 %34, 0, !dbg !4519
  br i1 %35, label %285, label %36, !dbg !4520

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4519
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #21, !dbg !4521
  %39 = icmp eq i8* %38, null, !dbg !4521
  br i1 %39, label %285, label %47, !dbg !4522

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4523, !tbaa !1314
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4525

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !4472, metadata !DIExpression()), !dbg !4482
  br label %43, !dbg !4526

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !4482
  call void @llvm.dbg.value(metadata i32 %44, metadata !4472, metadata !DIExpression()), !dbg !4482
  %45 = icmp eq i8* %4, null, !dbg !4528
  br i1 %45, label %46, label %47, !dbg !4530

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !4471, metadata !DIExpression()), !dbg !4482
  store i64 %28, i64* %3, align 8, !dbg !4531, !tbaa !3468
  br label %285, !dbg !4533

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4534, !tbaa !1324
  %51 = sext i8 %50 to i32, !dbg !4534
  %52 = icmp eq i8 %50, 0, !dbg !4535
  br i1 %52, label %282, label %53, !dbg !4536

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !4477, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i32 1, metadata !4480, metadata !DIExpression()), !dbg !4537
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #21, !dbg !4538
  %55 = icmp eq i8* %54, null, !dbg !4538
  br i1 %55, label %56, label %58, !dbg !4540

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !4471, metadata !DIExpression()), !dbg !4482
  store i64 %49, i64* %3, align 8, !dbg !4541, !tbaa !3468
  %57 = or i32 %48, 2, !dbg !4543
  br label %285, !dbg !4544

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
  ], !dbg !4545

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #21, !dbg !4546
  %61 = icmp eq i8* %60, null, !dbg !4546
  br i1 %61, label %72, label %62, !dbg !4549

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4550
  %64 = load i8, i8* %63, align 1, !dbg !4550, !tbaa !1324
  %65 = sext i8 %64 to i32, !dbg !4550
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4551

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4552
  %68 = load i8, i8* %67, align 1, !dbg !4552, !tbaa !1324
  %69 = icmp eq i8 %68, 66, !dbg !4555
  %70 = select i1 %69, i64 3, i64 1, !dbg !4556
  br label %72, !dbg !4556

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !4477, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i32 2, metadata !4480, metadata !DIExpression()), !dbg !4537
  br label %72, !dbg !4557

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !4480, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i32 undef, metadata !4477, metadata !DIExpression()), !dbg !4537
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
  ], !dbg !4558

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4559, metadata !DIExpression()) #18, !dbg !4567
  call void @llvm.dbg.value(metadata i32 6, metadata !4566, metadata !DIExpression()) #18, !dbg !4567
  call void @llvm.dbg.value(metadata i32 undef, metadata !4570, metadata !DIExpression()) #18, !dbg !4576
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4578
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4578
  %78 = mul i64 %49, %73, !dbg !4580
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4580
  call void @llvm.dbg.value(metadata i1 %77, metadata !4559, metadata !DIExpression()) #18, !dbg !4567
  call void @llvm.dbg.value(metadata i32 5, metadata !4566, metadata !DIExpression()) #18, !dbg !4567
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #18, !dbg !4578
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !4578
  %82 = mul i64 %79, %73, !dbg !4580
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4580
  %84 = or i1 %77, %81, !dbg !4581
  call void @llvm.dbg.value(metadata i1 %84, metadata !4559, metadata !DIExpression()) #18, !dbg !4567
  call void @llvm.dbg.value(metadata i32 4, metadata !4566, metadata !DIExpression()) #18, !dbg !4567
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #18, !dbg !4578
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !4578
  %87 = mul i64 %83, %73, !dbg !4580
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !4580
  %89 = or i1 %84, %86, !dbg !4581
  call void @llvm.dbg.value(metadata i1 %89, metadata !4559, metadata !DIExpression()) #18, !dbg !4567
  call void @llvm.dbg.value(metadata i32 3, metadata !4566, metadata !DIExpression()) #18, !dbg !4567
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #18, !dbg !4578
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !4578
  %92 = mul i64 %88, %73, !dbg !4580
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !4580
  %94 = or i1 %89, %91, !dbg !4581
  call void @llvm.dbg.value(metadata i1 %94, metadata !4559, metadata !DIExpression()) #18, !dbg !4567
  call void @llvm.dbg.value(metadata i32 2, metadata !4566, metadata !DIExpression()) #18, !dbg !4567
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #18, !dbg !4578
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !4578
  %97 = mul i64 %93, %73, !dbg !4580
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !4580
  %99 = or i1 %94, %96, !dbg !4581
  call void @llvm.dbg.value(metadata i1 %99, metadata !4559, metadata !DIExpression()) #18, !dbg !4567
  call void @llvm.dbg.value(metadata i32 1, metadata !4566, metadata !DIExpression()) #18, !dbg !4567
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #18, !dbg !4578
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !4578
  %102 = mul i64 %98, %73, !dbg !4580
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !4580
  %104 = or i1 %99, %101, !dbg !4581
  call void @llvm.dbg.value(metadata i1 %104, metadata !4559, metadata !DIExpression()) #18, !dbg !4567
  call void @llvm.dbg.value(metadata i32 0, metadata !4566, metadata !DIExpression()) #18, !dbg !4567
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #18, !dbg !4578
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !4578
  %107 = mul i64 %103, %73, !dbg !4580
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4580
  %109 = or i1 %104, %106, !dbg !4581
  call void @llvm.dbg.value(metadata i1 %109, metadata !4559, metadata !DIExpression()) #18, !dbg !4567
  call void @llvm.dbg.value(metadata i32 0, metadata !4566, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4567
  br label %272, !dbg !4582

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4559, metadata !DIExpression()) #18, !dbg !4583
  call void @llvm.dbg.value(metadata i32 7, metadata !4566, metadata !DIExpression()) #18, !dbg !4583
  call void @llvm.dbg.value(metadata i32 undef, metadata !4570, metadata !DIExpression()) #18, !dbg !4585
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4587
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !4587
  %113 = mul i64 %49, %73, !dbg !4588
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !4588
  call void @llvm.dbg.value(metadata i1 %112, metadata !4559, metadata !DIExpression()) #18, !dbg !4583
  call void @llvm.dbg.value(metadata i32 6, metadata !4566, metadata !DIExpression()) #18, !dbg !4583
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #18, !dbg !4587
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !4587
  %117 = mul i64 %114, %73, !dbg !4588
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4588
  %119 = or i1 %112, %116, !dbg !4589
  call void @llvm.dbg.value(metadata i1 %119, metadata !4559, metadata !DIExpression()) #18, !dbg !4583
  call void @llvm.dbg.value(metadata i32 5, metadata !4566, metadata !DIExpression()) #18, !dbg !4583
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #18, !dbg !4587
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !4587
  %122 = mul i64 %118, %73, !dbg !4588
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !4588
  %124 = or i1 %119, %121, !dbg !4589
  call void @llvm.dbg.value(metadata i1 %124, metadata !4559, metadata !DIExpression()) #18, !dbg !4583
  call void @llvm.dbg.value(metadata i32 4, metadata !4566, metadata !DIExpression()) #18, !dbg !4583
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #18, !dbg !4587
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !4587
  %127 = mul i64 %123, %73, !dbg !4588
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !4588
  %129 = or i1 %124, %126, !dbg !4589
  call void @llvm.dbg.value(metadata i1 %129, metadata !4559, metadata !DIExpression()) #18, !dbg !4583
  call void @llvm.dbg.value(metadata i32 3, metadata !4566, metadata !DIExpression()) #18, !dbg !4583
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #18, !dbg !4587
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !4587
  %132 = mul i64 %128, %73, !dbg !4588
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !4588
  %134 = or i1 %129, %131, !dbg !4589
  call void @llvm.dbg.value(metadata i1 %134, metadata !4559, metadata !DIExpression()) #18, !dbg !4583
  call void @llvm.dbg.value(metadata i32 2, metadata !4566, metadata !DIExpression()) #18, !dbg !4583
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #18, !dbg !4587
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !4587
  %137 = mul i64 %133, %73, !dbg !4588
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4588
  %139 = or i1 %134, %136, !dbg !4589
  call void @llvm.dbg.value(metadata i1 %139, metadata !4559, metadata !DIExpression()) #18, !dbg !4583
  call void @llvm.dbg.value(metadata i32 1, metadata !4566, metadata !DIExpression()) #18, !dbg !4583
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #18, !dbg !4587
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !4587
  %142 = mul i64 %138, %73, !dbg !4588
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !4588
  %144 = or i1 %139, %141, !dbg !4589
  call void @llvm.dbg.value(metadata i1 %144, metadata !4559, metadata !DIExpression()) #18, !dbg !4583
  call void @llvm.dbg.value(metadata i32 0, metadata !4566, metadata !DIExpression()) #18, !dbg !4583
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #18, !dbg !4587
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !4587
  %147 = mul i64 %143, %73, !dbg !4588
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4588
  %149 = or i1 %144, %146, !dbg !4589
  call void @llvm.dbg.value(metadata i1 %149, metadata !4559, metadata !DIExpression()) #18, !dbg !4583
  call void @llvm.dbg.value(metadata i32 0, metadata !4566, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4583
  br label %272, !dbg !4582

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4559, metadata !DIExpression()) #18, !dbg !4590
  call void @llvm.dbg.value(metadata i32 4, metadata !4566, metadata !DIExpression()) #18, !dbg !4590
  call void @llvm.dbg.value(metadata i32 undef, metadata !4570, metadata !DIExpression()) #18, !dbg !4592
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4594
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !4594
  %153 = mul i64 %49, %73, !dbg !4595
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !4595
  call void @llvm.dbg.value(metadata i1 %152, metadata !4559, metadata !DIExpression()) #18, !dbg !4590
  call void @llvm.dbg.value(metadata i32 3, metadata !4566, metadata !DIExpression()) #18, !dbg !4590
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #18, !dbg !4594
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !4594
  %157 = mul i64 %154, %73, !dbg !4595
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !4595
  %159 = or i1 %152, %156, !dbg !4596
  call void @llvm.dbg.value(metadata i1 %159, metadata !4559, metadata !DIExpression()) #18, !dbg !4590
  call void @llvm.dbg.value(metadata i32 2, metadata !4566, metadata !DIExpression()) #18, !dbg !4590
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #18, !dbg !4594
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !4594
  %162 = mul i64 %158, %73, !dbg !4595
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !4595
  %164 = or i1 %159, %161, !dbg !4596
  call void @llvm.dbg.value(metadata i1 %164, metadata !4559, metadata !DIExpression()) #18, !dbg !4590
  call void @llvm.dbg.value(metadata i32 1, metadata !4566, metadata !DIExpression()) #18, !dbg !4590
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #18, !dbg !4594
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !4594
  %167 = mul i64 %163, %73, !dbg !4595
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !4595
  %169 = or i1 %164, %166, !dbg !4596
  call void @llvm.dbg.value(metadata i1 %169, metadata !4559, metadata !DIExpression()) #18, !dbg !4590
  call void @llvm.dbg.value(metadata i32 0, metadata !4566, metadata !DIExpression()) #18, !dbg !4590
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #18, !dbg !4594
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !4594
  %172 = mul i64 %168, %73, !dbg !4595
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !4595
  %174 = or i1 %169, %171, !dbg !4596
  call void @llvm.dbg.value(metadata i1 %174, metadata !4559, metadata !DIExpression()) #18, !dbg !4590
  call void @llvm.dbg.value(metadata i32 0, metadata !4566, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4590
  br label %272, !dbg !4582

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4559, metadata !DIExpression()) #18, !dbg !4597
  call void @llvm.dbg.value(metadata i32 5, metadata !4566, metadata !DIExpression()) #18, !dbg !4597
  call void @llvm.dbg.value(metadata i32 undef, metadata !4570, metadata !DIExpression()) #18, !dbg !4599
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4601
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !4601
  %178 = mul i64 %49, %73, !dbg !4602
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !4602
  call void @llvm.dbg.value(metadata i1 %177, metadata !4559, metadata !DIExpression()) #18, !dbg !4597
  call void @llvm.dbg.value(metadata i32 4, metadata !4566, metadata !DIExpression()) #18, !dbg !4597
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #18, !dbg !4601
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !4601
  %182 = mul i64 %179, %73, !dbg !4602
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !4602
  %184 = or i1 %177, %181, !dbg !4603
  call void @llvm.dbg.value(metadata i1 %184, metadata !4559, metadata !DIExpression()) #18, !dbg !4597
  call void @llvm.dbg.value(metadata i32 3, metadata !4566, metadata !DIExpression()) #18, !dbg !4597
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #18, !dbg !4601
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !4601
  %187 = mul i64 %183, %73, !dbg !4602
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !4602
  %189 = or i1 %184, %186, !dbg !4603
  call void @llvm.dbg.value(metadata i1 %189, metadata !4559, metadata !DIExpression()) #18, !dbg !4597
  call void @llvm.dbg.value(metadata i32 2, metadata !4566, metadata !DIExpression()) #18, !dbg !4597
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #18, !dbg !4601
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !4601
  %192 = mul i64 %188, %73, !dbg !4602
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !4602
  %194 = or i1 %189, %191, !dbg !4603
  call void @llvm.dbg.value(metadata i1 %194, metadata !4559, metadata !DIExpression()) #18, !dbg !4597
  call void @llvm.dbg.value(metadata i32 1, metadata !4566, metadata !DIExpression()) #18, !dbg !4597
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #18, !dbg !4601
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4601
  %197 = mul i64 %193, %73, !dbg !4602
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4602
  %199 = or i1 %194, %196, !dbg !4603
  call void @llvm.dbg.value(metadata i1 %199, metadata !4559, metadata !DIExpression()) #18, !dbg !4597
  call void @llvm.dbg.value(metadata i32 0, metadata !4566, metadata !DIExpression()) #18, !dbg !4597
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #18, !dbg !4601
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !4601
  %202 = mul i64 %198, %73, !dbg !4602
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !4602
  %204 = or i1 %199, %201, !dbg !4603
  call void @llvm.dbg.value(metadata i1 %204, metadata !4559, metadata !DIExpression()) #18, !dbg !4597
  call void @llvm.dbg.value(metadata i32 0, metadata !4566, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4597
  br label %272, !dbg !4582

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !4570, metadata !DIExpression()) #18, !dbg !4604
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #18, !dbg !4606
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !4606
  %208 = shl i64 %49, 9, !dbg !4607
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !4607
  call void @llvm.dbg.value(metadata i1 %207, metadata !4481, metadata !DIExpression()), !dbg !4537
  br label %272, !dbg !4608

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !4570, metadata !DIExpression()) #18, !dbg !4609
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #18, !dbg !4611
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !4611
  %213 = shl i64 %49, 10, !dbg !4612
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4612
  call void @llvm.dbg.value(metadata i1 %212, metadata !4481, metadata !DIExpression()), !dbg !4537
  br label %272, !dbg !4613

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4565, metadata !DIExpression()) #18, !dbg !4614
  call void @llvm.dbg.value(metadata i32 0, metadata !4559, metadata !DIExpression()) #18, !dbg !4614
  call void @llvm.dbg.value(metadata i32 2, metadata !4566, metadata !DIExpression()) #18, !dbg !4614
  call void @llvm.dbg.value(metadata i32 undef, metadata !4570, metadata !DIExpression()) #18, !dbg !4616
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4618
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !4618
  %218 = mul i64 %49, %73, !dbg !4619
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !4619
  call void @llvm.dbg.value(metadata i1 %217, metadata !4559, metadata !DIExpression()) #18, !dbg !4614
  call void @llvm.dbg.value(metadata i32 1, metadata !4566, metadata !DIExpression()) #18, !dbg !4614
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #18, !dbg !4618
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !4618
  %222 = mul i64 %219, %73, !dbg !4619
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !4619
  %224 = or i1 %217, %221, !dbg !4620
  call void @llvm.dbg.value(metadata i1 %224, metadata !4559, metadata !DIExpression()) #18, !dbg !4614
  call void @llvm.dbg.value(metadata i32 0, metadata !4566, metadata !DIExpression()) #18, !dbg !4614
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #18, !dbg !4618
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !4618
  %227 = mul i64 %223, %73, !dbg !4619
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4619
  %229 = or i1 %224, %226, !dbg !4620
  call void @llvm.dbg.value(metadata i1 %229, metadata !4559, metadata !DIExpression()) #18, !dbg !4614
  call void @llvm.dbg.value(metadata i32 0, metadata !4566, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4614
  br label %272, !dbg !4582

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4565, metadata !DIExpression()) #18, !dbg !4621
  call void @llvm.dbg.value(metadata i32 0, metadata !4559, metadata !DIExpression()) #18, !dbg !4621
  call void @llvm.dbg.value(metadata i32 undef, metadata !4566, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4621
  call void @llvm.dbg.value(metadata i32 undef, metadata !4570, metadata !DIExpression()) #18, !dbg !4623
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4625
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !4625
  %233 = mul i64 %49, %73, !dbg !4626
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !4626
  call void @llvm.dbg.value(metadata i1 %232, metadata !4559, metadata !DIExpression()) #18, !dbg !4621
  call void @llvm.dbg.value(metadata i32 undef, metadata !4566, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4621
  br label %272, !dbg !4582

235:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4565, metadata !DIExpression()) #18, !dbg !4627
  call void @llvm.dbg.value(metadata i32 0, metadata !4559, metadata !DIExpression()) #18, !dbg !4627
  call void @llvm.dbg.value(metadata i32 1, metadata !4566, metadata !DIExpression()) #18, !dbg !4627
  call void @llvm.dbg.value(metadata i32 undef, metadata !4570, metadata !DIExpression()) #18, !dbg !4629
  %236 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4631
  %237 = extractvalue { i64, i1 } %236, 1, !dbg !4631
  %238 = mul i64 %49, %73, !dbg !4632
  %239 = select i1 %237, i64 -1, i64 %238, !dbg !4632
  call void @llvm.dbg.value(metadata i1 %237, metadata !4559, metadata !DIExpression()) #18, !dbg !4627
  call void @llvm.dbg.value(metadata i32 0, metadata !4566, metadata !DIExpression()) #18, !dbg !4627
  %240 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %239) #18, !dbg !4631
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !4631
  %242 = mul i64 %239, %73, !dbg !4632
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !4632
  %244 = or i1 %237, %241, !dbg !4633
  call void @llvm.dbg.value(metadata i1 %244, metadata !4559, metadata !DIExpression()) #18, !dbg !4627
  call void @llvm.dbg.value(metadata i32 0, metadata !4566, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4627
  br label %272, !dbg !4582

245:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !4565, metadata !DIExpression()) #18, !dbg !4634
  call void @llvm.dbg.value(metadata i32 0, metadata !4559, metadata !DIExpression()) #18, !dbg !4634
  call void @llvm.dbg.value(metadata i32 3, metadata !4566, metadata !DIExpression()) #18, !dbg !4634
  call void @llvm.dbg.value(metadata i32 undef, metadata !4570, metadata !DIExpression()) #18, !dbg !4636
  %246 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !4638
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !4638
  %248 = mul i64 %49, %73, !dbg !4639
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !4639
  call void @llvm.dbg.value(metadata i1 %247, metadata !4559, metadata !DIExpression()) #18, !dbg !4634
  call void @llvm.dbg.value(metadata i32 2, metadata !4566, metadata !DIExpression()) #18, !dbg !4634
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %249) #18, !dbg !4638
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4638
  %252 = mul i64 %249, %73, !dbg !4639
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4639
  %254 = or i1 %247, %251, !dbg !4640
  call void @llvm.dbg.value(metadata i1 %254, metadata !4559, metadata !DIExpression()) #18, !dbg !4634
  call void @llvm.dbg.value(metadata i32 1, metadata !4566, metadata !DIExpression()) #18, !dbg !4634
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #18, !dbg !4638
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4638
  %257 = mul i64 %253, %73, !dbg !4639
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4639
  %259 = or i1 %254, %256, !dbg !4640
  call void @llvm.dbg.value(metadata i1 %259, metadata !4559, metadata !DIExpression()) #18, !dbg !4634
  call void @llvm.dbg.value(metadata i32 0, metadata !4566, metadata !DIExpression()) #18, !dbg !4634
  %260 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %258) #18, !dbg !4638
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !4638
  %262 = mul i64 %258, %73, !dbg !4639
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !4639
  %264 = or i1 %259, %261, !dbg !4640
  call void @llvm.dbg.value(metadata i1 %264, metadata !4559, metadata !DIExpression()) #18, !dbg !4634
  call void @llvm.dbg.value(metadata i32 0, metadata !4566, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !4634
  br label %272, !dbg !4582

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4570, metadata !DIExpression()) #18, !dbg !4641
  %266 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #18, !dbg !4643
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !4643
  %268 = shl i64 %49, 1, !dbg !4644
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !4644
  call void @llvm.dbg.value(metadata i1 %267, metadata !4481, metadata !DIExpression()), !dbg !4537
  br label %272, !dbg !4645

270:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !4471, metadata !DIExpression()), !dbg !4482
  store i64 %49, i64* %3, align 8, !dbg !4646, !tbaa !3468
  %271 = or i32 %48, 2, !dbg !4647
  br label %285, !dbg !4648

272:                                              ; preds = %75, %110, %245, %150, %235, %230, %215, %175, %205, %210, %265, %72
  %273 = phi i64 [ %269, %265 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %234, %230 ], [ %243, %235 ], [ %173, %150 ], [ %263, %245 ], [ %148, %110 ], [ %108, %75 ], !dbg !4482
  %274 = phi i1 [ %267, %265 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %232, %230 ], [ %244, %235 ], [ %174, %150 ], [ %264, %245 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !4649
  call void @llvm.dbg.value(metadata i32 %275, metadata !4481, metadata !DIExpression()), !dbg !4537
  %276 = or i32 %48, %275, !dbg !4582
  call void @llvm.dbg.value(metadata i32 %276, metadata !4472, metadata !DIExpression()), !dbg !4482
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4650
  store i8* %277, i8** %25, align 8, !dbg !4650, !tbaa !1233
  %278 = load i8, i8* %277, align 1, !dbg !4651, !tbaa !1324
  %279 = icmp eq i8 %278, 0, !dbg !4651
  %280 = or i32 %276, 2, !dbg !4653
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !4654
  call void @llvm.dbg.value(metadata i32 %281, metadata !4472, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 %281, metadata !4472, metadata !DIExpression()), !dbg !4482
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !4655
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !4656
  call void @llvm.dbg.value(metadata i32 %284, metadata !4472, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i64 %283, metadata !4471, metadata !DIExpression()), !dbg !4482
  store i64 %283, i64* %3, align 8, !dbg !4657, !tbaa !3468
  br label %285, !dbg !4658

285:                                              ; preds = %24, %56, %270, %40, %31, %33, %36, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %271, %270 ], !dbg !4482
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #18, !dbg !4659
  ret i32 %286, !dbg !4659
}

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !4660 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4662, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i64 %1, metadata !4663, metadata !DIExpression()), !dbg !4668
  %3 = icmp eq i64 %0, 0, !dbg !4669
  %4 = icmp eq i64 %1, 0, !dbg !4670
  %5 = or i1 %3, %4, !dbg !4671
  br i1 %5, label %11, label %6, !dbg !4671

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4665, metadata !DIExpression()), !dbg !4672
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4673
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4673
  br i1 %8, label %9, label %11, !dbg !4675

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !4676
  store i32 12, i32* %10, align 4, !dbg !4678, !tbaa !1314
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4662, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i64 %12, metadata !4663, metadata !DIExpression()), !dbg !4668
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #18, !dbg !4679
  call void @llvm.dbg.value(metadata i8* %14, metadata !4664, metadata !DIExpression()), !dbg !4668
  br label %15, !dbg !4680

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4668
  ret i8* %16, !dbg !4681
}

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4682 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4688, metadata !DIExpression()), !dbg !4692
  call void @llvm.dbg.value(metadata i32 0, metadata !4689, metadata !DIExpression()), !dbg !4692
  call void @llvm.dbg.value(metadata i32 0, metadata !4691, metadata !DIExpression()), !dbg !4692
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !4693
  call void @llvm.dbg.value(metadata i32 %2, metadata !4690, metadata !DIExpression()), !dbg !4692
  %3 = icmp slt i32 %2, 0, !dbg !4694
  br i1 %3, label %4, label %6, !dbg !4696

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4697
  br label %24, !dbg !4698

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !4699
  %8 = icmp eq i32 %7, 0, !dbg !4699
  br i1 %8, label %13, label %9, !dbg !4701

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !4702
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #18, !dbg !4703
  %12 = icmp eq i64 %11, -1, !dbg !4704
  br i1 %12, label %16, label %13, !dbg !4705

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #18, !dbg !4706
  %15 = icmp eq i32 %14, 0, !dbg !4706
  br i1 %15, label %16, label %18, !dbg !4707

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4689, metadata !DIExpression()), !dbg !4692
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4708
  call void @llvm.dbg.value(metadata i32 %21, metadata !4691, metadata !DIExpression()), !dbg !4692
  br label %24, !dbg !4709

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !4710
  %20 = load i32, i32* %19, align 4, !dbg !4710, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 %20, metadata !4689, metadata !DIExpression()), !dbg !4692
  call void @llvm.dbg.value(metadata i32 %20, metadata !4689, metadata !DIExpression()), !dbg !4692
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4708
  call void @llvm.dbg.value(metadata i32 %21, metadata !4691, metadata !DIExpression()), !dbg !4692
  %22 = icmp eq i32 %20, 0, !dbg !4711
  br i1 %22, label %24, label %23, !dbg !4709

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4713, !tbaa !1314
  call void @llvm.dbg.value(metadata i32 -1, metadata !4691, metadata !DIExpression()), !dbg !4692
  br label %24, !dbg !4715

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4692
  ret i32 %25, !dbg !4716
}

; Function Attrs: nofree nounwind
declare !dbg !648 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !649 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4717 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4723, metadata !DIExpression()), !dbg !4724
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4725
  br i1 %2, label %6, label %3, !dbg !4727

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !4728
  %5 = icmp eq i32 %4, 0, !dbg !4728
  br i1 %5, label %6, label %8, !dbg !4729

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4730
  br label %17, !dbg !4731

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4732, metadata !DIExpression()) #18, !dbg !4737
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4739
  %10 = load i32, i32* %9, align 8, !dbg !4739, !tbaa !4741
  %11 = and i32 %10, 256, !dbg !4742
  %12 = icmp eq i32 %11, 0, !dbg !4742
  br i1 %12, label %15, label %13, !dbg !4743

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #18, !dbg !4744
  br label %15, !dbg !4744

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4745
  br label %17, !dbg !4746

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4724
  ret i32 %18, !dbg !4747
}

; Function Attrs: nofree nounwind
declare !dbg !657 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4748 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4754, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata i64 %1, metadata !4755, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata i32 %2, metadata !4756, metadata !DIExpression()), !dbg !4760
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4761
  %5 = load i8*, i8** %4, align 8, !dbg !4761, !tbaa !1629
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4762
  %7 = load i8*, i8** %6, align 8, !dbg !4762, !tbaa !1628
  %8 = icmp eq i8* %5, %7, !dbg !4763
  br i1 %8, label %9, label %28, !dbg !4764

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4765
  %11 = load i8*, i8** %10, align 8, !dbg !4765, !tbaa !1543
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4766
  %13 = load i8*, i8** %12, align 8, !dbg !4766, !tbaa !4767
  %14 = icmp eq i8* %11, %13, !dbg !4768
  br i1 %14, label %15, label %28, !dbg !4769

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4770
  %17 = load i8*, i8** %16, align 8, !dbg !4770, !tbaa !4771
  %18 = icmp eq i8* %17, null, !dbg !4772
  br i1 %18, label %19, label %28, !dbg !4773

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !4774
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #18, !dbg !4775
  call void @llvm.dbg.value(metadata i64 %21, metadata !4757, metadata !DIExpression()), !dbg !4776
  %22 = icmp eq i64 %21, -1, !dbg !4777
  br i1 %22, label %30, label %23, !dbg !4779

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4780
  %25 = load i32, i32* %24, align 8, !dbg !4781, !tbaa !4741
  %26 = and i32 %25, -17, !dbg !4781
  store i32 %26, i32* %24, align 8, !dbg !4781, !tbaa !4741
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4782
  store i64 %21, i64* %27, align 8, !dbg !4783, !tbaa !4784
  br label %30, !dbg !4785

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4786
  br label %30, !dbg !4787

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4760
  ret i32 %31, !dbg !4788
}

; Function Attrs: nofree nounwind
declare !dbg !733 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4789 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4797, metadata !DIExpression()), !dbg !4806
  call void @llvm.dbg.value(metadata i8* %1, metadata !4798, metadata !DIExpression()), !dbg !4806
  call void @llvm.dbg.value(metadata i64 %2, metadata !4799, metadata !DIExpression()), !dbg !4806
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4800, metadata !DIExpression()), !dbg !4806
  %6 = bitcast i32* %5 to i8*, !dbg !4807
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !4807
  %7 = icmp eq i32* %0, null, !dbg !4808
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4810
  call void @llvm.dbg.value(metadata i32* %8, metadata !4797, metadata !DIExpression()), !dbg !4806
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #18, !dbg !4811
  call void @llvm.dbg.value(metadata i64 %9, metadata !4801, metadata !DIExpression()), !dbg !4806
  %10 = icmp ugt i64 %9, -3, !dbg !4812
  %11 = icmp ne i64 %2, 0, !dbg !4813
  %12 = and i1 %11, %10, !dbg !4814
  br i1 %12, label %13, label %18, !dbg !4814

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #18, !dbg !4815
  br i1 %14, label %18, label %15, !dbg !4816

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4817, !tbaa !1324
  call void @llvm.dbg.value(metadata i8 %16, metadata !4803, metadata !DIExpression()), !dbg !4818
  %17 = zext i8 %16 to i32, !dbg !4819
  store i32 %17, i32* %8, align 4, !dbg !4820, !tbaa !1314
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4806
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !4821
  ret i64 %19, !dbg !4821
}

; Function Attrs: nounwind
declare !dbg !739 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4822 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4828, metadata !DIExpression()), !dbg !4833
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #18, !dbg !4834
  call void @llvm.dbg.value(metadata i1 undef, metadata !4829, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4835, metadata !DIExpression()), !dbg !4838
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4840
  %4 = load i32, i32* %3, align 8, !dbg !4840, !tbaa !4741
  %5 = and i32 %4, 32, !dbg !4840
  %6 = icmp eq i32 %5, 0, !dbg !4841
  call void @llvm.dbg.value(metadata i1 %6, metadata !4831, metadata !DIExpression()), !dbg !4833
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #18, !dbg !4842
  %8 = icmp ne i32 %7, 0, !dbg !4843
  call void @llvm.dbg.value(metadata i1 %8, metadata !4832, metadata !DIExpression()), !dbg !4833
  br i1 %6, label %9, label %19, !dbg !4844

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4846
  call void @llvm.dbg.value(metadata i1 %10, metadata !4829, metadata !DIExpression()), !dbg !4833
  %11 = xor i1 %8, true, !dbg !4847
  %12 = or i1 %10, %11, !dbg !4847
  %13 = sext i1 %8 to i32, !dbg !4847
  br i1 %12, label %22, label %14, !dbg !4847

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !4848
  %16 = load i32, i32* %15, align 4, !dbg !4848, !tbaa !1314
  %17 = icmp ne i32 %16, 9, !dbg !4849
  %18 = sext i1 %17 to i32, !dbg !4850
  br label %22, !dbg !4850

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4851

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !4853
  store i32 0, i32* %21, align 4, !dbg !4855, !tbaa !1314
  br label %22, !dbg !4853

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4833
  ret i32 %23, !dbg !4856
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4857 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4859, metadata !DIExpression()), !dbg !4864
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4865
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #18, !dbg !4865
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4860, metadata !DIExpression()), !dbg !4866
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #18, !dbg !4867
  %5 = icmp eq i32 %4, 0, !dbg !4867
  br i1 %5, label %6, label %13, !dbg !4869

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4870
  %8 = load i16, i16* %7, align 16, !dbg !4870
  %9 = icmp eq i16 %8, 67, !dbg !4870
  br i1 %9, label %13, label %10, !dbg !4871

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.148, i64 0, i64 0), i64 6), !dbg !4872
  %12 = icmp ne i32 %11, 0, !dbg !4873
  br label %13, !dbg !4871

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4864
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #18, !dbg !4874
  ret i1 %14, !dbg !4874
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4875 {
  %1 = tail call i8* @nl_langinfo(i32 14) #18, !dbg !4878
  call void @llvm.dbg.value(metadata i8* %1, metadata !4877, metadata !DIExpression()), !dbg !4879
  %2 = icmp eq i8* %1, null, !dbg !4880
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.151, i64 0, i64 0), i8* %1, !dbg !4882
  call void @llvm.dbg.value(metadata i8* %3, metadata !4877, metadata !DIExpression()), !dbg !4879
  %4 = load i8, i8* %3, align 1, !dbg !4883, !tbaa !1324
  %5 = icmp eq i8 %4, 0, !dbg !4887
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.152, i64 0, i64 0), i8* %3, !dbg !4888
  call void @llvm.dbg.value(metadata i8* %6, metadata !4877, metadata !DIExpression()), !dbg !4879
  ret i8* %6, !dbg !4889
}

; Function Attrs: nounwind
declare !dbg !1190 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4890 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4894, metadata !DIExpression()), !dbg !4897
  call void @llvm.dbg.value(metadata i8* %1, metadata !4895, metadata !DIExpression()), !dbg !4897
  call void @llvm.dbg.value(metadata i64 %2, metadata !4896, metadata !DIExpression()), !dbg !4897
  call void @llvm.dbg.value(metadata i32 %0, metadata !4898, metadata !DIExpression()) #18, !dbg !4907
  call void @llvm.dbg.value(metadata i8* %1, metadata !4901, metadata !DIExpression()) #18, !dbg !4907
  call void @llvm.dbg.value(metadata i64 %2, metadata !4902, metadata !DIExpression()) #18, !dbg !4907
  call void @llvm.dbg.value(metadata i32 %0, metadata !4909, metadata !DIExpression()) #18, !dbg !4915
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !4917
  call void @llvm.dbg.value(metadata i8* %4, metadata !4914, metadata !DIExpression()) #18, !dbg !4915
  call void @llvm.dbg.value(metadata i8* %4, metadata !4903, metadata !DIExpression()) #18, !dbg !4907
  %5 = icmp eq i8* %4, null, !dbg !4918
  br i1 %5, label %6, label %9, !dbg !4919

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4920
  br i1 %7, label %19, label %8, !dbg !4923

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4924, !tbaa !1324
  br label %19, !dbg !4925

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !4926
  call void @llvm.dbg.value(metadata i64 %10, metadata !4904, metadata !DIExpression()) #18, !dbg !4927
  %11 = icmp ult i64 %10, %2, !dbg !4928
  br i1 %11, label %12, label %14, !dbg !4930

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4931
  call void @llvm.dbg.value(metadata i8* %1, metadata !4933, metadata !DIExpression()) #18, !dbg !4938
  call void @llvm.dbg.value(metadata i8* %4, metadata !4936, metadata !DIExpression()) #18, !dbg !4938
  call void @llvm.dbg.value(metadata i64 %13, metadata !4937, metadata !DIExpression()) #18, !dbg !4938
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #18, !dbg !4940
  br label %19, !dbg !4941

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4942
  br i1 %15, label %19, label %16, !dbg !4945

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4946
  call void @llvm.dbg.value(metadata i8* %1, metadata !4933, metadata !DIExpression()) #18, !dbg !4948
  call void @llvm.dbg.value(metadata i8* %4, metadata !4936, metadata !DIExpression()) #18, !dbg !4948
  call void @llvm.dbg.value(metadata i64 %17, metadata !4937, metadata !DIExpression()) #18, !dbg !4948
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #18, !dbg !4950
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4951
  store i8 0, i8* %18, align 1, !dbg !4952, !tbaa !1324
  br label %19, !dbg !4953

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4954
  ret i32 %20, !dbg !4955
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4956 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4958, metadata !DIExpression()), !dbg !4959
  call void @llvm.dbg.value(metadata i32 %0, metadata !4909, metadata !DIExpression()) #18, !dbg !4960
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !4962
  call void @llvm.dbg.value(metadata i8* %2, metadata !4914, metadata !DIExpression()) #18, !dbg !4960
  ret i8* %2, !dbg !4963
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
attributes #9 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree nounwind readonly }
attributes #13 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree nounwind }
attributes #16 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nounwind }
attributes #19 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nounwind readonly }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { nounwind readnone }
attributes #25 = { cold }

!llvm.dbg.cu = !{!2, !263, !268, !313, !474, !319, !360, !517, !468, !559, !580, !583, !603, !607, !610, !654, !695, !736, !755, !793, !800, !1193}
!llvm.ident = !{!1196, !1196, !1196, !1196, !1196, !1196, !1196, !1196, !1196, !1196, !1196, !1196, !1196, !1196, !1196, !1196, !1196, !1196, !1196, !1196, !1196, !1196}
!llvm.module.flags = !{!1197, !1198, !1199, !1200, !1201}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "uniform", scope: !2, file: !3, line: 183, type: !188, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !44, globals: !185, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/fmt.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20, !29}
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
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 46, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!32 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!33 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!34 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!35 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!36 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!37 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!38 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!39 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!40 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!42 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!43 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!44 = !{!45, !55, !116, !120, !124, !127, !130, !7, !137, !152, !49, !106, !156, !160, !164, !168, !171, !174, !177, !178, !53, !86, !108, !51, !179, !184}
!45 = !DISubprogram(name: "dcgettext", scope: !46, file: !46, line: 51, type: !47, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!46 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !51, !51, !53}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !{}
!55 = !DISubprogram(name: "fputs_unlocked", scope: !56, file: !56, line: 662, type: !57, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!56 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!57 = !DISubroutineType(types: !58)
!58 = !{!53, !51, !59}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !62)
!61 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !78, !79, !80, !81, !85, !87, !89, !93, !96, !98, !101, !104, !105, !107, !111, !112}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !60, file: !61, line: 51, baseType: !53, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !60, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !60, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !60, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !60, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !60, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !60, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !60, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !60, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !60, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !60, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !60, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !60, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !61, line: 36, flags: DIFlagFwdDecl)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !60, file: !61, line: 70, baseType: !59, size: 64, offset: 832)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !60, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !60, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !60, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !83, line: 152, baseType: !84)
!83 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!84 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !60, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!86 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !60, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!88 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !60, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !60, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !61, line: 43, baseType: null)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !60, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !83, line: 153, baseType: !84)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !60, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !61, line: 37, flags: DIFlagFwdDecl)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !60, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !61, line: 38, flags: DIFlagFwdDecl)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !60, file: !61, line: 93, baseType: !59, size: 64, offset: 1344)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !60, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !60, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 46, baseType: !110)
!109 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!110 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !60, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !60, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 160, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 20)
!116 = !DISubprogram(name: "set_program_name", scope: !117, file: !117, line: 37, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!117 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!118 = !DISubroutineType(types: !119)
!119 = !{null, !51}
!120 = !DISubprogram(name: "setlocale", scope: !121, file: !121, line: 122, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!121 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!122 = !DISubroutineType(types: !123)
!123 = !{!49, !53, !51}
!124 = !DISubprogram(name: "bindtextdomain", scope: !46, file: !46, line: 86, type: !125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!125 = !DISubroutineType(types: !126)
!126 = !{!49, !51, !51}
!127 = !DISubprogram(name: "textdomain", scope: !46, file: !46, line: 82, type: !128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!128 = !DISubroutineType(types: !129)
!129 = !{!49, !51}
!130 = !DISubprogram(name: "atexit", scope: !131, file: !131, line: 595, type: !132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!131 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!132 = !DISubroutineType(types: !133)
!133 = !{!53, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{null}
!137 = !DISubprogram(name: "getopt_long", scope: !138, file: !138, line: 66, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!138 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!139 = !DISubroutineType(types: !140)
!140 = !{!53, !53, !141, !51, !143, !150}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !138, line: 50, size: 256, elements: !146)
!146 = !{!147, !148, !149, !151}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !145, file: !138, line: 52, baseType: !51, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !145, file: !138, line: 55, baseType: !53, size: 32, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !145, file: !138, line: 56, baseType: !150, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !145, file: !138, line: 57, baseType: !53, size: 32, offset: 192)
!152 = !DISubprogram(name: "error", scope: !153, file: !153, line: 52, type: !154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!153 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!154 = !DISubroutineType(types: !155)
!155 = !{null, !53, !53, !51, null}
!156 = !DISubprogram(name: "version_etc", scope: !157, file: !157, line: 69, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!157 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!158 = !DISubroutineType(types: !159)
!159 = !{null, !59, !51, !51, !51, null}
!160 = !DISubprogram(name: "xdectoumax", scope: !161, file: !161, line: 31, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!161 = !DIFile(filename: "./lib/xdectoint.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!162 = !DISubroutineType(types: !163)
!163 = !{!110, !51, !110, !110, !51, !51, !53}
!164 = !DISubprogram(name: "rpl_fclose", scope: !165, file: !165, line: 672, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!165 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!166 = !DISubroutineType(types: !167)
!167 = !{!53, !59}
!168 = !DISubprogram(name: "quotearg_n_style_colon", scope: !6, file: !6, line: 397, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!169 = !DISubroutineType(types: !170)
!170 = !{!49, !53, !5, !51}
!171 = !DISubprogram(name: "quotearg_style", scope: !6, file: !6, line: 377, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!172 = !DISubroutineType(types: !173)
!173 = !{!49, !5, !51}
!174 = !DISubprogram(name: "fadvise", scope: !21, file: !21, line: 72, type: !175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !59, !20}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!179 = !DISubprogram(name: "fwrite_unlocked", scope: !56, file: !56, line: 675, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!180 = !DISubroutineType(types: !181)
!181 = !{!110, !182, !110, !110, !59}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "COST", file: !3, line: 64, baseType: !84)
!185 = !{!186, !189, !191, !193, !194, !196, !198, !200, !202, !204, !206, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !234, !236, !255}
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "crown", scope: !2, file: !3, line: 174, type: !188, isLocal: true, isDefinition: true)
!188 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "tagged", scope: !2, file: !3, line: 177, type: !188, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "split", scope: !2, file: !3, line: 180, type: !188, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "prefix", scope: !2, file: !3, line: 186, type: !51, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "max_width", scope: !2, file: !3, line: 190, type: !53, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "prefix_full_length", scope: !2, file: !3, line: 195, type: !53, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "prefix_lead_space", scope: !2, file: !3, line: 198, type: !53, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "prefix_length", scope: !2, file: !3, line: 201, type: !53, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "goal_width", scope: !2, file: !3, line: 204, type: !53, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 302, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 2560, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 10)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "tabs", scope: !2, file: !3, line: 232, type: !188, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "other_indent", scope: !2, file: !3, line: 241, type: !53, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "in_column", scope: !2, file: !3, line: 209, type: !53, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "next_prefix_indent", scope: !2, file: !3, line: 255, type: !53, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "next_char", scope: !2, file: !3, line: 251, type: !53, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "last_line_length", scope: !2, file: !3, line: 260, type: !53, isLocal: true, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "out_column", scope: !2, file: !3, line: 212, type: !53, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "prefix_indent", scope: !2, file: !3, line: 235, type: !53, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "first_indent", scope: !2, file: !3, line: 238, type: !53, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "parabuf", scope: !2, file: !3, line: 216, type: !231, isLocal: true, isDefinition: true)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 40000, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 5000)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "wptr", scope: !2, file: !3, line: 219, type: !49, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "unused_word_type", scope: !2, file: !3, line: 223, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 320000, elements: !253)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "WORD", file: !3, line: 129, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Word", file: !3, line: 131, size: 320, elements: !241)
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250, !251}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !240, file: !3, line: 136, baseType: !51, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !240, file: !3, line: 137, baseType: !53, size: 32, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !240, file: !3, line: 138, baseType: !53, size: 32, offset: 96)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "paren", scope: !240, file: !3, line: 139, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !240, file: !3, line: 140, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "punct", scope: !240, file: !3, line: 141, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !240, file: !3, line: 142, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !240, file: !3, line: 146, baseType: !53, size: 32, offset: 160)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "best_cost", scope: !240, file: !3, line: 147, baseType: !184, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "next_break", scope: !240, file: !3, line: 148, baseType: !252, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!253 = !{!254}
!254 = !DISubrange(count: 1000)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "word_limit", scope: !2, file: !3, line: 228, type: !252, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!258 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!259 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!260 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(name: "Version", scope: !263, file: !264, line: 2, type: !51, isLocal: false, isDefinition: true)
!263 = distinct !DICompileUnit(language: DW_LANG_C99, file: !264, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !265, splitDebugInlining: false, nameTableKind: None)
!264 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!265 = !{!261}
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "file_name", scope: !268, file: !269, line: 46, type: !51, isLocal: true, isDefinition: true)
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !270, globals: !308, splitDebugInlining: false, nameTableKind: None)
!269 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!270 = !{!271, !45, !307, !152}
!271 = !DISubprogram(name: "close_stream", scope: !272, file: !272, line: 2, type: !273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!272 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!273 = !DISubroutineType(types: !274)
!274 = !{!53, !275}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !277)
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !276, file: !61, line: 51, baseType: !53, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !276, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !276, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !276, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !276, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !276, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !276, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !276, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !276, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !276, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !276, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !276, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !276, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !276, file: !61, line: 70, baseType: !275, size: 64, offset: 832)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !276, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !276, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !276, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !276, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !276, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !276, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !276, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !276, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !276, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !276, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !276, file: !61, line: 93, baseType: !275, size: 64, offset: 1344)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !276, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !276, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !276, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !276, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!307 = !DISubprogram(name: "quotearg_colon", scope: !6, file: !6, line: 391, type: !128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!308 = !{!266, !309}
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !268, file: !269, line: 56, type: !188, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "exit_failure", scope: !313, file: !314, line: 24, type: !316, isLocal: false, isDefinition: true)
!313 = distinct !DICompileUnit(language: DW_LANG_C99, file: !314, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !315, splitDebugInlining: false, nameTableKind: None)
!314 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!315 = !{!311}
!316 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "program_name", scope: !319, file: !320, line: 33, type: !51, isLocal: false, isDefinition: true)
!319 = distinct !DICompileUnit(language: DW_LANG_C99, file: !320, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !321, globals: !357, splitDebugInlining: false, nameTableKind: None)
!320 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!321 = !{!106, !322, !49}
!322 = !DISubprogram(name: "fputs", scope: !56, file: !56, line: 626, type: !323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!323 = !DISubroutineType(types: !324)
!324 = !{!53, !51, !325}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !326, file: !61, line: 51, baseType: !53, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !326, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !326, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !326, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !326, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !326, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !326, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !326, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !326, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !326, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !326, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !326, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !326, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !326, file: !61, line: 70, baseType: !325, size: 64, offset: 832)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !326, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !326, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !326, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !326, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !326, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !326, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !326, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !326, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !326, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !326, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !326, file: !61, line: 93, baseType: !325, size: 64, offset: 1344)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !326, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !326, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !326, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !326, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!357 = !{!317}
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !360, file: !361, line: 85, type: !462, isLocal: false, isDefinition: true)
!360 = distinct !DICompileUnit(language: DW_LANG_C99, file: !361, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !362, retainedTypes: !368, globals: !437, splitDebugInlining: false, nameTableKind: None)
!361 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!362 = !{!5, !363, !29}
!363 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !364)
!364 = !{!365, !366, !367}
!365 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!366 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!367 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!368 = !{!369, !373, !389, !392, !53, !86, !395, !108, !412, !416, !45, !422, !426, !49, !430, !433, !434}
!369 = !DISubprogram(name: "xmemdup", scope: !370, file: !370, line: 62, type: !371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!370 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!371 = !DISubroutineType(types: !372)
!372 = !{!106, !182, !110}
!373 = !DISubprogram(name: "quotearg_alloc_mem", scope: !6, file: !6, line: 342, type: !374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!374 = !DISubroutineType(types: !375)
!375 = !{!49, !51, !110, !376, !377}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !361, line: 65, size: 448, elements: !380)
!380 = !{!381, !382, !383, !387, !388}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !379, file: !361, line: 68, baseType: !5, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !379, file: !361, line: 71, baseType: !53, size: 32, offset: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !379, file: !361, line: 75, baseType: !384, size: 256, offset: 64)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 8)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !379, file: !361, line: 78, baseType: !51, size: 64, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !379, file: !361, line: 81, baseType: !51, size: 64, offset: 384)
!389 = !DISubprogram(name: "free", scope: !131, file: !131, line: 565, type: !390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !106}
!392 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !6, file: !6, line: 408, type: !393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!393 = !DISubroutineType(types: !394)
!394 = !{!49, !53, !51, !51, !51, !110}
!395 = !DISubprogram(name: "rpl_mbrtowc", scope: !396, file: !396, line: 717, type: !397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!396 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!397 = !DISubroutineType(types: !398)
!398 = !{!110, !150, !51, !110, !399}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !401, line: 13, size: 64, elements: !402)
!401 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!402 = !{!403, !404}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !400, file: !401, line: 15, baseType: !53, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !400, file: !401, line: 20, baseType: !405, size: 32, offset: 32)
!405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !401, line: 16, size: 32, elements: !406)
!406 = !{!407, !408}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !405, file: !401, line: 18, baseType: !7, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !405, file: !401, line: 19, baseType: !409, size: 32)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 32, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 4)
!412 = !DISubprogram(name: "iswprint", scope: !413, file: !413, line: 120, type: !414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!413 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!414 = !DISubroutineType(types: !415)
!415 = !{!53, !7}
!416 = !DISubprogram(name: "mbsinit", scope: !417, file: !417, line: 292, type: !418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!417 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!418 = !DISubroutineType(types: !419)
!419 = !{!53, !420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!422 = !DISubprogram(name: "locale_charset", scope: !423, file: !423, line: 35, type: !424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!423 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!424 = !DISubroutineType(types: !425)
!425 = !{!51}
!426 = !DISubprogram(name: "c_strcasecmp", scope: !427, file: !427, line: 42, type: !428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!427 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!428 = !DISubroutineType(types: !429)
!429 = !{!53, !51, !51}
!430 = !DISubprogram(name: "xmalloc", scope: !370, file: !370, line: 53, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!431 = !DISubroutineType(types: !432)
!432 = !{!106, !110}
!433 = !DISubprogram(name: "xalloc_die", scope: !370, file: !370, line: 51, type: !135, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !54)
!434 = !DISubprogram(name: "xrealloc", scope: !370, file: !370, line: 59, type: !435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!435 = !DISubroutineType(types: !436)
!436 = !{!106, !106, !110}
!437 = !{!358, !438, !442, !444, !446, !451, !458, !460}
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !360, file: !361, line: 101, type: !440, isLocal: false, isDefinition: true)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 320, elements: !209)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !360, file: !361, line: 1052, type: !379, isLocal: false, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !360, file: !361, line: 116, type: !379, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(name: "slot0", scope: !360, file: !361, line: 842, type: !448, isLocal: true, isDefinition: true)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 2048, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 256)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(name: "slotvec", scope: !360, file: !361, line: 845, type: !453, isLocal: true, isDefinition: true)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !361, line: 834, size: 128, elements: !455)
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !454, file: !361, line: 836, baseType: !108, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !454, file: !361, line: 837, baseType: !49, size: 64, offset: 64)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "nslots", scope: !360, file: !361, line: 843, type: !53, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(name: "slotvec0", scope: !360, file: !361, line: 844, type: !454, isLocal: true, isDefinition: true)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 704, elements: !464)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!464 = !{!465}
!465 = !DISubrange(count: 11)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !468, file: !469, line: 26, type: !471, isLocal: false, isDefinition: true)
!468 = distinct !DICompileUnit(language: DW_LANG_C99, file: !469, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !470, splitDebugInlining: false, nameTableKind: None)
!469 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!470 = !{!466}
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 376, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 47)
!474 = distinct !DICompileUnit(language: DW_LANG_C99, file: !475, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !476, retainedTypes: !477, splitDebugInlining: false, nameTableKind: None)
!475 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!476 = !{!20}
!477 = !{!478, !482}
!478 = !DISubprogram(name: "posix_fadvise", scope: !479, file: !479, line: 288, type: !480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!479 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!480 = !DISubroutineType(types: !481)
!481 = !{!53, !53, !84, !84, !53}
!482 = !DISubprogram(name: "fileno", scope: !56, file: !56, line: 786, type: !483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!483 = !DISubroutineType(types: !484)
!484 = !{!53, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !486, file: !61, line: 51, baseType: !53, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !486, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !486, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !486, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !486, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !486, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !486, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !486, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !486, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !486, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !486, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !486, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !486, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !486, file: !61, line: 70, baseType: !485, size: 64, offset: 832)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !486, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !486, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !486, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !486, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !486, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !486, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !486, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !486, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !486, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !486, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !486, file: !61, line: 93, baseType: !485, size: 64, offset: 1344)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !486, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !486, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !486, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !486, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!517 = distinct !DICompileUnit(language: DW_LANG_C99, file: !518, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !519, retainedTypes: !523, splitDebugInlining: false, nameTableKind: None)
!518 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!519 = !{!520}
!520 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !518, line: 40, baseType: !7, size: 32, elements: !521)
!521 = !{!522}
!522 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!523 = !{!45, !524, !106}
!524 = !DISubprogram(name: "fputs_unlocked", scope: !56, file: !56, line: 662, type: !525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!525 = !DISubroutineType(types: !526)
!526 = !{!53, !51, !527}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !529)
!529 = !{!530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !528, file: !61, line: 51, baseType: !53, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !528, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !528, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !528, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !528, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !528, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !528, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !528, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !528, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !528, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !528, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !528, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !528, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !528, file: !61, line: 70, baseType: !527, size: 64, offset: 832)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !528, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !528, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !528, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !528, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !528, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !528, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !528, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !528, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !528, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !528, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !528, file: !61, line: 93, baseType: !527, size: 64, offset: 1344)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !528, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !528, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !528, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !528, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!559 = distinct !DICompileUnit(language: DW_LANG_C99, file: !560, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !561, retainedTypes: !574, splitDebugInlining: false, nameTableKind: None)
!560 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!561 = !{!562}
!562 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !563, file: !370, line: 186, baseType: !7, size: 32, elements: !572)
!563 = distinct !DISubprogram(name: "x2nrealloc", scope: !370, file: !370, line: 174, type: !564, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !559, retainedNodes: !567)
!564 = !DISubroutineType(types: !565)
!565 = !{!106, !106, !566, !108}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!567 = !{!568, !569, !570, !571}
!568 = !DILocalVariable(name: "p", arg: 1, scope: !563, file: !370, line: 174, type: !106)
!569 = !DILocalVariable(name: "pn", arg: 2, scope: !563, file: !370, line: 174, type: !566)
!570 = !DILocalVariable(name: "s", arg: 3, scope: !563, file: !370, line: 174, type: !108)
!571 = !DILocalVariable(name: "n", scope: !563, file: !370, line: 176, type: !108)
!572 = !{!573}
!573 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!574 = !{!108, !433, !430, !434, !49, !389, !106, !575, !578}
!575 = !DISubprogram(name: "xcalloc", scope: !370, file: !370, line: 57, type: !576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!576 = !DISubroutineType(types: !577)
!577 = !{!106, !110, !110}
!578 = !DISubprogram(name: "rpl_calloc", scope: !579, file: !579, line: 688, type: !576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!579 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!580 = distinct !DICompileUnit(language: DW_LANG_C99, file: !581, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !582, splitDebugInlining: false, nameTableKind: None)
!581 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!582 = !{!45, !152}
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !585, retainedTypes: !594, splitDebugInlining: false, nameTableKind: None)
!584 = !DIFile(filename: "lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!585 = !{!586}
!586 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !587, line: 25, baseType: !7, size: 32, elements: !588)
!587 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!588 = !{!589, !590, !591, !592, !593}
!589 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!590 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!591 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!592 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!593 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!594 = !{!595, !599, !152}
!595 = !DISubprogram(name: "xstrtoumax", scope: !587, file: !587, line: 48, type: !596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!596 = !DISubroutineType(types: !597)
!597 = !{!586, !51, !598, !53, !376, !51}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!599 = !DISubprogram(name: "quote", scope: !600, file: !600, line: 44, type: !601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!600 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!601 = !DISubroutineType(types: !602)
!602 = !{!51, !51}
!603 = distinct !DICompileUnit(language: DW_LANG_C99, file: !604, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !605, retainedTypes: !606, splitDebugInlining: false, nameTableKind: None)
!604 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!605 = !{!586, !29}
!606 = !{!53, !86}
!607 = distinct !DICompileUnit(language: DW_LANG_C99, file: !608, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !609, splitDebugInlining: false, nameTableKind: None)
!608 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!609 = !{!106}
!610 = distinct !DICompileUnit(language: DW_LANG_C99, file: !611, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !612, splitDebugInlining: false, nameTableKind: None)
!611 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!612 = !{!613, !648, !649, !653}
!613 = !DISubprogram(name: "fileno", scope: !56, file: !56, line: 786, type: !614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!614 = !DISubroutineType(types: !615)
!615 = !{!53, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !617, file: !61, line: 51, baseType: !53, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !617, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !617, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !617, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !617, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !617, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !617, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !617, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !617, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !617, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !617, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !617, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !617, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !617, file: !61, line: 70, baseType: !616, size: 64, offset: 832)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !617, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !617, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !617, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !617, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !617, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !617, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !617, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !617, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !617, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !617, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !617, file: !61, line: 93, baseType: !616, size: 64, offset: 1344)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !617, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !617, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !617, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !617, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!648 = !DISubprogram(name: "fclose", scope: !56, file: !56, line: 213, type: !614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!649 = !DISubprogram(name: "lseek", scope: !650, file: !650, line: 334, type: !651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!650 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!651 = !DISubroutineType(types: !652)
!652 = !{!84, !53, !84, !53}
!653 = !DISubprogram(name: "rpl_fflush", scope: !165, file: !165, line: 718, type: !614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!654 = distinct !DICompileUnit(language: DW_LANG_C99, file: !655, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !656, splitDebugInlining: false, nameTableKind: None)
!655 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!656 = !{!106, !657, !692}
!657 = !DISubprogram(name: "fflush", scope: !56, file: !56, line: 218, type: !658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!658 = !DISubroutineType(types: !659)
!659 = !{!53, !660}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !661, file: !61, line: 51, baseType: !53, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !661, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !661, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !661, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !661, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !661, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !661, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !661, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !661, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !661, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !661, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !661, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !661, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !661, file: !61, line: 70, baseType: !660, size: 64, offset: 832)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !661, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !661, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !661, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !661, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !661, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !661, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !661, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !661, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !661, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !661, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !661, file: !61, line: 93, baseType: !660, size: 64, offset: 1344)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !661, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !661, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !661, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !661, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!692 = !DISubprogram(name: "rpl_fseeko", scope: !165, file: !165, line: 1034, type: !693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!693 = !DISubroutineType(types: !694)
!694 = !{!53, !660, !84, !53}
!695 = distinct !DICompileUnit(language: DW_LANG_C99, file: !696, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !697, splitDebugInlining: false, nameTableKind: None)
!696 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!697 = !{!106, !698, !649, !733}
!698 = !DISubprogram(name: "fileno", scope: !56, file: !56, line: 786, type: !699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!699 = !DISubroutineType(types: !700)
!700 = !{!53, !701}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !702, file: !61, line: 51, baseType: !53, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !702, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !702, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !702, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !702, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !702, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !702, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !702, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !702, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !702, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !702, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !702, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !702, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !702, file: !61, line: 70, baseType: !701, size: 64, offset: 832)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !702, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !702, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !702, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !702, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !702, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !702, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !702, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !702, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !702, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !702, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !702, file: !61, line: 93, baseType: !701, size: 64, offset: 1344)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !702, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !702, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !702, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !702, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!733 = !DISubprogram(name: "fseeko", scope: !56, file: !56, line: 707, type: !734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!734 = !DISubroutineType(types: !735)
!735 = !{!53, !701, !84, !53}
!736 = distinct !DICompileUnit(language: DW_LANG_C99, file: !737, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !738, splitDebugInlining: false, nameTableKind: None)
!737 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!738 = !{!739, !108, !751}
!739 = !DISubprogram(name: "mbrtowc", scope: !417, file: !417, line: 296, type: !740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!740 = !DISubroutineType(types: !741)
!741 = !{!110, !150, !51, !110, !742}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !401, line: 13, size: 64, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !743, file: !401, line: 15, baseType: !53, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !743, file: !401, line: 20, baseType: !747, size: 32, offset: 32)
!747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !743, file: !401, line: 16, size: 32, elements: !748)
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !747, file: !401, line: 18, baseType: !7, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !747, file: !401, line: 19, baseType: !409, size: 32)
!751 = !DISubprogram(name: "hard_locale", scope: !752, file: !752, line: 26, type: !753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!752 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!753 = !DISubroutineType(types: !754)
!754 = !{!188, !53}
!755 = distinct !DICompileUnit(language: DW_LANG_C99, file: !756, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !757, splitDebugInlining: false, nameTableKind: None)
!756 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!757 = !{!758}
!758 = !DISubprogram(name: "rpl_fclose", scope: !165, file: !165, line: 672, type: !759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!759 = !DISubroutineType(types: !760)
!760 = !{!53, !761}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !763)
!763 = !{!764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !762, file: !61, line: 51, baseType: !53, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !762, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !762, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !762, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !762, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !762, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !762, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !762, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !762, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !762, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !762, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !762, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !762, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !762, file: !61, line: 70, baseType: !761, size: 64, offset: 832)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !762, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !762, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !762, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !762, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !762, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !762, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !762, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !762, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !762, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !762, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !762, file: !61, line: 93, baseType: !761, size: 64, offset: 1344)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !762, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !762, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !762, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !762, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!793 = distinct !DICompileUnit(language: DW_LANG_C99, file: !794, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !795, splitDebugInlining: false, nameTableKind: None)
!794 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!795 = !{!796}
!796 = !DISubprogram(name: "setlocale_null_r", scope: !797, file: !797, line: 64, type: !798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!797 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!798 = !DISubroutineType(types: !799)
!799 = !{!53, !53, !49, !110}
!800 = distinct !DICompileUnit(language: DW_LANG_C99, file: !801, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !802, retainedTypes: !1189, splitDebugInlining: false, nameTableKind: None)
!801 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!802 = !{!803}
!803 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !804, line: 41, baseType: !7, size: 32, elements: !805)
!804 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!805 = !{!806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188}
!806 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!807 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!808 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!809 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!810 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!811 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!812 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!813 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!814 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!815 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!816 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!817 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!818 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!819 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!820 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!821 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!822 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!823 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!824 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!825 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!826 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!827 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!828 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!829 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!830 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!831 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!832 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!833 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!834 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!835 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!836 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!837 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!838 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!839 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!840 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!841 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!842 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!843 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!844 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!845 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!846 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!847 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!848 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!849 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!850 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!851 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!852 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!853 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!854 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!855 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!914 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!917 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!918 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!919 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!920 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!921 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!922 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!923 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!924 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!925 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!926 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!927 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!928 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!1001 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1074 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1075 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1076 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1077 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1078 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1079 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1080 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1081 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1082 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1083 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1084 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1085 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1086 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1087 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1088 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1090 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1091 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1092 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1093 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1094 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1095 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1107 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1108 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1109 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1110 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1111 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1112 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1113 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1114 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1115 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1116 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1117 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1118 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1119 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1120 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1121 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1122 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1123 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1124 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1125 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1126 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1127 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1128 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1129 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1130 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1131 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1132 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1133 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1134 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1135 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1136 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1137 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1138 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1139 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1140 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1141 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1142 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1143 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1144 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1145 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1146 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1147 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1148 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1149 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1150 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1151 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1152 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1153 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1154 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1155 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1156 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1157 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1158 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1159 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1160 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1161 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1162 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1163 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1164 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1165 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1166 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1167 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1168 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1169 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1170 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1171 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1172 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1173 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1174 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1175 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1176 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1177 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1178 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1179 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1180 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1181 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1182 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1183 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1184 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1185 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1186 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1187 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1188 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1189 = !{!1190, !106}
!1190 = !DISubprogram(name: "nl_langinfo", scope: !804, file: !804, line: 661, type: !1191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!49, !53}
!1193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1194, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !1195, splitDebugInlining: false, nameTableKind: None)
!1194 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1195 = !{!106, !120}
!1196 = !{!"clang version 10.0.0 "}
!1197 = !{i32 7, !"Dwarf Version", i32 4}
!1198 = !{i32 2, !"Debug Info Version", i32 3}
!1199 = !{i32 1, !"wchar_size", i32 4}
!1200 = !{i32 7, !"PIC Level", i32 2}
!1201 = !{i32 7, !"PIE Level", i32 2}
!1202 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 263, type: !1203, scopeLine: 264, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1205)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !53}
!1205 = !{!1206}
!1206 = !DILocalVariable(name: "status", arg: 1, scope: !1202, file: !3, line: 263, type: !53)
!1207 = !DILocalVariable(name: "infomap", scope: !1208, file: !1209, line: 636, type: !1221)
!1208 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1209, file: !1209, line: 634, type: !118, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1210)
!1209 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1210 = !{!1211, !1207, !1212, !1213, !1220}
!1211 = !DILocalVariable(name: "program", arg: 1, scope: !1208, file: !1209, line: 634, type: !51)
!1212 = !DILocalVariable(name: "node", scope: !1208, file: !1209, line: 646, type: !51)
!1213 = !DILocalVariable(name: "map_prog", scope: !1208, file: !1209, line: 647, type: !1214)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1216)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1208, file: !1209, line: 636, size: 128, elements: !1217)
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1216, file: !1209, line: 636, baseType: !51, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1216, file: !1209, line: 636, baseType: !51, size: 64, offset: 64)
!1220 = !DILocalVariable(name: "lc_messages", scope: !1208, file: !1209, line: 659, type: !51)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1215, size: 896, elements: !1222)
!1222 = !{!1223}
!1223 = !DISubrange(count: 7)
!1224 = !DILocation(line: 636, column: 67, scope: !1208, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 295, column: 7, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 268, column: 5)
!1227 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 265, column: 7)
!1228 = !DILocation(line: 0, scope: !1202)
!1229 = !DILocation(line: 265, column: 14, scope: !1227)
!1230 = !DILocation(line: 265, column: 7, scope: !1202)
!1231 = !DILocation(line: 266, column: 5, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 266, column: 5)
!1233 = !{!1234, !1234, i64 0}
!1234 = !{!"any pointer", !1235, i64 0}
!1235 = !{!"omnipotent char", !1236, i64 0}
!1236 = !{!"Simple C/C++ TBAA"}
!1237 = !DILocation(line: 269, column: 7, scope: !1226)
!1238 = !DILocation(line: 270, column: 7, scope: !1226)
!1239 = !DILocation(line: 583, column: 3, scope: !1240, inlinedAt: !1241)
!1240 = distinct !DISubprogram(name: "emit_stdin_note", scope: !1209, file: !1209, line: 581, type: !135, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !54)
!1241 = distinct !DILocation(line: 275, column: 7, scope: !1226)
!1242 = !DILocation(line: 590, column: 3, scope: !1243, inlinedAt: !1244)
!1243 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !1209, file: !1209, line: 588, type: !135, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !54)
!1244 = distinct !DILocation(line: 276, column: 7, scope: !1226)
!1245 = !DILocation(line: 278, column: 7, scope: !1226)
!1246 = !DILocation(line: 287, column: 7, scope: !1226)
!1247 = !DILocation(line: 293, column: 7, scope: !1226)
!1248 = !DILocation(line: 294, column: 7, scope: !1226)
!1249 = !DILocation(line: 0, scope: !1208, inlinedAt: !1225)
!1250 = !DILocation(line: 636, column: 3, scope: !1208, inlinedAt: !1225)
!1251 = !DILocation(line: 647, column: 36, scope: !1208, inlinedAt: !1225)
!1252 = !DILocation(line: 649, column: 3, scope: !1208, inlinedAt: !1225)
!1253 = !DILocation(line: 649, column: 33, scope: !1208, inlinedAt: !1225)
!1254 = !DILocation(line: 650, column: 13, scope: !1208, inlinedAt: !1225)
!1255 = !DILocation(line: 649, column: 20, scope: !1208, inlinedAt: !1225)
!1256 = !{!1257, !1234, i64 0}
!1257 = !{!"infomap", !1234, i64 0, !1234, i64 8}
!1258 = !DILocation(line: 649, column: 10, scope: !1208, inlinedAt: !1225)
!1259 = !DILocation(line: 649, column: 28, scope: !1208, inlinedAt: !1225)
!1260 = distinct !{!1260, !1252, !1254}
!1261 = !DILocation(line: 652, column: 17, scope: !1262, inlinedAt: !1225)
!1262 = distinct !DILexicalBlock(scope: !1208, file: !1209, line: 652, column: 7)
!1263 = !{!1257, !1234, i64 8}
!1264 = !DILocation(line: 652, column: 7, scope: !1262, inlinedAt: !1225)
!1265 = !DILocation(line: 652, column: 7, scope: !1208, inlinedAt: !1225)
!1266 = !DILocation(line: 655, column: 3, scope: !1208, inlinedAt: !1225)
!1267 = !DILocation(line: 659, column: 29, scope: !1208, inlinedAt: !1225)
!1268 = !DILocation(line: 660, column: 7, scope: !1269, inlinedAt: !1225)
!1269 = distinct !DILexicalBlock(scope: !1208, file: !1209, line: 660, column: 7)
!1270 = !DILocation(line: 660, column: 19, scope: !1269, inlinedAt: !1225)
!1271 = !DILocation(line: 660, column: 22, scope: !1269, inlinedAt: !1225)
!1272 = !DILocation(line: 660, column: 7, scope: !1208, inlinedAt: !1225)
!1273 = !DILocation(line: 666, column: 7, scope: !1274, inlinedAt: !1225)
!1274 = distinct !DILexicalBlock(scope: !1269, file: !1209, line: 661, column: 5)
!1275 = !DILocation(line: 668, column: 5, scope: !1274, inlinedAt: !1225)
!1276 = !DILocation(line: 669, column: 3, scope: !1208, inlinedAt: !1225)
!1277 = !DILocation(line: 671, column: 3, scope: !1208, inlinedAt: !1225)
!1278 = !DILocation(line: 673, column: 1, scope: !1208, inlinedAt: !1225)
!1279 = !DILocation(line: 297, column: 3, scope: !1202)
!1280 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 317, type: !1281, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1283)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!53, !53, !598}
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1289, !1290, !1296}
!1284 = !DILocalVariable(name: "argc", arg: 1, scope: !1280, file: !3, line: 317, type: !53)
!1285 = !DILocalVariable(name: "argv", arg: 2, scope: !1280, file: !3, line: 317, type: !598)
!1286 = !DILocalVariable(name: "optchar", scope: !1280, file: !3, line: 319, type: !53)
!1287 = !DILocalVariable(name: "ok", scope: !1280, file: !3, line: 320, type: !188)
!1288 = !DILocalVariable(name: "max_width_option", scope: !1280, file: !3, line: 321, type: !51)
!1289 = !DILocalVariable(name: "goal_width_option", scope: !1280, file: !3, line: 322, type: !51)
!1290 = !DILocalVariable(name: "file", scope: !1291, file: !3, line: 421, type: !49)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 420, column: 9)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 419, column: 7)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 419, column: 7)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 418, column: 5)
!1295 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 415, column: 7)
!1296 = !DILocalVariable(name: "in_stream", scope: !1297, file: !3, line: 426, type: !1299)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 425, column: 13)
!1298 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 422, column: 15)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1301, line: 7, baseType: !60)
!1301 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1302 = !DILocation(line: 0, scope: !1280)
!1303 = !DILocation(line: 325, column: 21, scope: !1280)
!1304 = !DILocation(line: 325, column: 3, scope: !1280)
!1305 = !DILocation(line: 326, column: 3, scope: !1280)
!1306 = !DILocation(line: 327, column: 3, scope: !1280)
!1307 = !DILocation(line: 328, column: 3, scope: !1280)
!1308 = !DILocation(line: 330, column: 3, scope: !1280)
!1309 = !DILocation(line: 332, column: 36, scope: !1280)
!1310 = !DILocation(line: 332, column: 26, scope: !1280)
!1311 = !DILocation(line: 332, column: 18, scope: !1280)
!1312 = !DILocation(line: 332, column: 9, scope: !1280)
!1313 = !DILocation(line: 333, column: 13, scope: !1280)
!1314 = !{!1315, !1315, i64 0}
!1315 = !{!"int", !1235, i64 0}
!1316 = !DILocation(line: 334, column: 10, scope: !1280)
!1317 = !DILocation(line: 335, column: 58, scope: !1280)
!1318 = !DILocation(line: 335, column: 37, scope: !1280)
!1319 = !DILocation(line: 335, column: 17, scope: !1280)
!1320 = !DILocation(line: 337, column: 12, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 337, column: 7)
!1322 = !DILocation(line: 337, column: 16, scope: !1321)
!1323 = !DILocation(line: 337, column: 19, scope: !1321)
!1324 = !{!1235, !1235, i64 0}
!1325 = !DILocation(line: 337, column: 30, scope: !1321)
!1326 = !DILocation(line: 337, column: 37, scope: !1321)
!1327 = !DILocation(line: 337, column: 40, scope: !1321)
!1328 = !DILocation(line: 337, column: 7, scope: !1280)
!1329 = !DILocation(line: 343, column: 17, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 338, column: 5)
!1331 = !DILocation(line: 343, column: 15, scope: !1330)
!1332 = !DILocation(line: 345, column: 11, scope: !1330)
!1333 = !DILocation(line: 346, column: 5, scope: !1330)
!1334 = !DILocation(line: 348, column: 3, scope: !1280)
!1335 = !DILocation(line: 348, column: 21, scope: !1280)
!1336 = !DILocation(line: 354, column: 13, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 354, column: 13)
!1338 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 352, column: 7)
!1339 = !DILocation(line: 354, column: 13, scope: !1338)
!1340 = !DILocation(line: 355, column: 24, scope: !1337)
!1341 = !DILocation(line: 355, column: 11, scope: !1337)
!1342 = !DILocation(line: 358, column: 9, scope: !1338)
!1343 = !DILocation(line: 361, column: 15, scope: !1338)
!1344 = !DILocation(line: 362, column: 9, scope: !1338)
!1345 = !DILocation(line: 365, column: 15, scope: !1338)
!1346 = !DILocation(line: 366, column: 9, scope: !1338)
!1347 = !DILocation(line: 369, column: 16, scope: !1338)
!1348 = !DILocation(line: 370, column: 9, scope: !1338)
!1349 = !DILocation(line: 373, column: 17, scope: !1338)
!1350 = !DILocation(line: 374, column: 9, scope: !1338)
!1351 = !DILocation(line: 377, column: 28, scope: !1338)
!1352 = !DILocation(line: 378, column: 9, scope: !1338)
!1353 = distinct !{!1353, !1334, !1354}
!1354 = !DILocation(line: 392, column: 7, scope: !1280)
!1355 = !DILocation(line: 381, column: 29, scope: !1338)
!1356 = !DILocation(line: 382, column: 9, scope: !1338)
!1357 = !DILocation(line: 385, column: 21, scope: !1338)
!1358 = !DILocalVariable(name: "p", arg: 1, scope: !1359, file: !3, line: 454, type: !49)
!1359 = distinct !DISubprogram(name: "set_prefix", scope: !3, file: !3, line: 454, type: !1360, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1362)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !49}
!1362 = !{!1358, !1363}
!1363 = !DILocalVariable(name: "s", scope: !1359, file: !3, line: 456, type: !49)
!1364 = !DILocation(line: 0, scope: !1359, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 385, column: 9, scope: !1338)
!1366 = !DILocation(line: 458, column: 21, scope: !1359, inlinedAt: !1365)
!1367 = !DILocation(line: 459, column: 10, scope: !1359, inlinedAt: !1365)
!1368 = !DILocation(line: 459, column: 13, scope: !1359, inlinedAt: !1365)
!1369 = !DILocation(line: 459, column: 3, scope: !1359, inlinedAt: !1365)
!1370 = !DILocation(line: 461, column: 24, scope: !1371, inlinedAt: !1365)
!1371 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 460, column: 5)
!1372 = !DILocation(line: 462, column: 8, scope: !1371, inlinedAt: !1365)
!1373 = distinct !{!1373, !1369, !1374}
!1374 = !DILocation(line: 463, column: 5, scope: !1359, inlinedAt: !1365)
!1375 = !DILocation(line: 464, column: 10, scope: !1359, inlinedAt: !1365)
!1376 = !DILocation(line: 465, column: 24, scope: !1359, inlinedAt: !1365)
!1377 = !DILocation(line: 465, column: 22, scope: !1359, inlinedAt: !1365)
!1378 = !DILocation(line: 466, column: 9, scope: !1359, inlinedAt: !1365)
!1379 = !DILocation(line: 467, column: 3, scope: !1359, inlinedAt: !1365)
!1380 = !DILocation(line: 467, column: 12, scope: !1359, inlinedAt: !1365)
!1381 = !DILocation(line: 467, column: 16, scope: !1359, inlinedAt: !1365)
!1382 = !DILocation(line: 467, column: 19, scope: !1359, inlinedAt: !1365)
!1383 = !DILocation(line: 467, column: 25, scope: !1359, inlinedAt: !1365)
!1384 = distinct !{!1384, !1379, !1385}
!1385 = !DILocation(line: 468, column: 6, scope: !1359, inlinedAt: !1365)
!1386 = !DILocation(line: 469, column: 6, scope: !1359, inlinedAt: !1365)
!1387 = !DILocation(line: 470, column: 21, scope: !1359, inlinedAt: !1365)
!1388 = !DILocation(line: 470, column: 19, scope: !1359, inlinedAt: !1365)
!1389 = !DILocation(line: 470, column: 17, scope: !1359, inlinedAt: !1365)
!1390 = !DILocation(line: 386, column: 9, scope: !1338)
!1391 = !DILocation(line: 388, column: 7, scope: !1338)
!1392 = !DILocation(line: 390, column: 7, scope: !1338)
!1393 = !DILocation(line: 394, column: 7, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 394, column: 7)
!1395 = !DILocation(line: 394, column: 7, scope: !1280)
!1396 = !DILocation(line: 0, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 402, column: 7)
!1398 = !DILocation(line: 399, column: 31, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 395, column: 5)
!1400 = !DILocation(line: 398, column: 19, scope: !1399)
!1401 = !DILocation(line: 398, column: 17, scope: !1399)
!1402 = !DILocation(line: 400, column: 5, scope: !1399)
!1403 = !DILocation(line: 402, column: 7, scope: !1397)
!1404 = !DILocation(line: 402, column: 7, scope: !1280)
!1405 = !DILocation(line: 405, column: 54, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 403, column: 5)
!1407 = !DILocation(line: 406, column: 32, scope: !1406)
!1408 = !DILocation(line: 405, column: 20, scope: !1406)
!1409 = !DILocation(line: 405, column: 18, scope: !1406)
!1410 = !DILocation(line: 407, column: 11, scope: !1406)
!1411 = !DILocation(line: 408, column: 32, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 407, column: 11)
!1413 = !DILocation(line: 408, column: 19, scope: !1412)
!1414 = !DILocation(line: 408, column: 9, scope: !1412)
!1415 = !DILocation(line: 412, column: 30, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 411, column: 5)
!1417 = !DILocation(line: 412, column: 57, scope: !1416)
!1418 = !DILocation(line: 412, column: 18, scope: !1416)
!1419 = !DILocation(line: 415, column: 7, scope: !1295)
!1420 = !DILocation(line: 415, column: 14, scope: !1295)
!1421 = !DILocation(line: 415, column: 7, scope: !1280)
!1422 = !DILocation(line: 419, column: 21, scope: !1292)
!1423 = !DILocation(line: 419, column: 7, scope: !1293)
!1424 = !DILocation(line: 416, column: 10, scope: !1295)
!1425 = !DILocation(line: 416, column: 5, scope: !1295)
!1426 = !DILocation(line: 421, column: 24, scope: !1291)
!1427 = !DILocation(line: 0, scope: !1291)
!1428 = !DILocation(line: 422, column: 15, scope: !1298)
!1429 = !DILocation(line: 422, column: 15, scope: !1291)
!1430 = !DILocation(line: 423, column: 18, scope: !1298)
!1431 = !DILocation(line: 423, column: 13, scope: !1298)
!1432 = !DILocation(line: 427, column: 27, scope: !1297)
!1433 = !DILocation(line: 0, scope: !1297)
!1434 = !DILocation(line: 428, column: 29, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 428, column: 19)
!1436 = !DILocation(line: 428, column: 19, scope: !1297)
!1437 = !DILocation(line: 430, column: 19, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 429, column: 17)
!1439 = !DILocation(line: 431, column: 23, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 431, column: 23)
!1441 = !DILocation(line: 431, column: 42, scope: !1440)
!1442 = !DILocation(line: 431, column: 23, scope: !1438)
!1443 = !DILocation(line: 433, column: 33, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 432, column: 21)
!1445 = !DILocation(line: 433, column: 46, scope: !1444)
!1446 = !DILocation(line: 433, column: 23, scope: !1444)
!1447 = !DILocation(line: 435, column: 21, scope: !1444)
!1448 = !DILocation(line: 439, column: 29, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 438, column: 17)
!1450 = !DILocation(line: 439, column: 36, scope: !1449)
!1451 = !DILocation(line: 440, column: 26, scope: !1449)
!1452 = !DILocation(line: 439, column: 19, scope: !1449)
!1453 = !DILocation(line: 419, column: 35, scope: !1292)
!1454 = distinct !{!1454, !1423, !1455}
!1455 = !DILocation(line: 444, column: 9, scope: !1293)
!1456 = !DILocation(line: 320, column: 8, scope: !1280)
!1457 = !DILocation(line: 447, column: 10, scope: !1280)
!1458 = !DILocation(line: 448, column: 1, scope: !1280)
!1459 = distinct !DISubprogram(name: "fmt", scope: !3, file: !3, line: 476, type: !1460, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1462)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{null, !1299}
!1462 = !{!1463}
!1463 = !DILocalVariable(name: "f", arg: 1, scope: !1459, file: !3, line: 476, type: !1299)
!1464 = !DILocation(line: 0, scope: !1459)
!1465 = !DILocation(line: 478, column: 3, scope: !1459)
!1466 = !DILocation(line: 479, column: 8, scope: !1459)
!1467 = !DILocation(line: 480, column: 16, scope: !1459)
!1468 = !DILocation(line: 481, column: 15, scope: !1459)
!1469 = !DILocation(line: 481, column: 13, scope: !1459)
!1470 = !DILocation(line: 0, scope: !1471, inlinedAt: !1477)
!1471 = distinct !DISubprogram(name: "getc_unlocked", scope: !1472, file: !1472, line: 66, type: !1473, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1475)
!1472 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!53, !1299}
!1475 = !{!1476}
!1476 = !DILocalVariable(name: "__fp", arg: 1, scope: !1471, file: !1472, line: 66, type: !1299)
!1477 = distinct !DILocation(line: 637, column: 11, scope: !1478, inlinedAt: !1486)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 635, column: 5)
!1479 = distinct !DISubprogram(name: "copy_rest", scope: !3, file: !3, line: 619, type: !1480, scopeLine: 620, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1482)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!53, !1299, !53}
!1482 = !{!1483, !1484, !1485}
!1483 = !DILocalVariable(name: "f", arg: 1, scope: !1479, file: !3, line: 619, type: !1299)
!1484 = !DILocalVariable(name: "c", arg: 2, scope: !1479, file: !3, line: 619, type: !53)
!1485 = !DILocalVariable(name: "s", scope: !1479, file: !3, line: 621, type: !51)
!1486 = distinct !DILocation(line: 551, column: 11, scope: !1487, inlinedAt: !1494)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 550, column: 5)
!1488 = distinct !DISubprogram(name: "get_paragraph", scope: !3, file: !3, line: 538, type: !1489, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1491)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!188, !1299}
!1491 = !{!1492, !1493}
!1492 = !DILocalVariable(name: "f", arg: 1, scope: !1488, file: !3, line: 538, type: !1299)
!1493 = !DILocalVariable(name: "c", scope: !1488, file: !3, line: 540, type: !53)
!1494 = distinct !DILocation(line: 482, column: 10, scope: !1459)
!1495 = !DILocation(line: 482, column: 3, scope: !1459)
!1496 = !DILocation(line: 543, column: 7, scope: !1488, inlinedAt: !1494)
!1497 = !DILocation(line: 0, scope: !1488, inlinedAt: !1494)
!1498 = !DILocation(line: 542, column: 20, scope: !1488, inlinedAt: !1494)
!1499 = !DILocation(line: 547, column: 3, scope: !1488, inlinedAt: !1494)
!1500 = !DILocation(line: 547, column: 20, scope: !1488, inlinedAt: !1494)
!1501 = !DILocation(line: 548, column: 13, scope: !1488, inlinedAt: !1494)
!1502 = !DILocation(line: 548, column: 34, scope: !1488, inlinedAt: !1494)
!1503 = !DILocation(line: 548, column: 32, scope: !1488, inlinedAt: !1494)
!1504 = !DILocation(line: 549, column: 10, scope: !1488, inlinedAt: !1494)
!1505 = !DILocation(line: 549, column: 13, scope: !1488, inlinedAt: !1494)
!1506 = !DILocation(line: 549, column: 46, scope: !1488, inlinedAt: !1494)
!1507 = !DILocation(line: 549, column: 44, scope: !1488, inlinedAt: !1494)
!1508 = !DILocation(line: 549, column: 23, scope: !1488, inlinedAt: !1494)
!1509 = !DILocation(line: 624, column: 19, scope: !1510, inlinedAt: !1486)
!1510 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 624, column: 7)
!1511 = !DILocation(line: 623, column: 14, scope: !1479, inlinedAt: !1486)
!1512 = !DILocation(line: 0, scope: !1479, inlinedAt: !1486)
!1513 = !DILocation(line: 624, column: 7, scope: !1510, inlinedAt: !1486)
!1514 = !DILocation(line: 624, column: 17, scope: !1510, inlinedAt: !1486)
!1515 = !DILocation(line: 624, column: 38, scope: !1510, inlinedAt: !1486)
!1516 = !DILocation(line: 624, column: 52, scope: !1510, inlinedAt: !1486)
!1517 = !DILocalVariable(name: "space", arg: 1, scope: !1518, file: !3, line: 1009, type: !53)
!1518 = distinct !DISubprogram(name: "put_space", scope: !3, file: !3, line: 1009, type: !1203, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1519)
!1519 = !{!1517, !1520, !1521}
!1520 = !DILocalVariable(name: "space_target", scope: !1518, file: !3, line: 1011, type: !53)
!1521 = !DILocalVariable(name: "tab_target", scope: !1518, file: !3, line: 1011, type: !53)
!1522 = !DILocation(line: 0, scope: !1518, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 626, column: 7, scope: !1524, inlinedAt: !1486)
!1524 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 625, column: 5)
!1525 = !DILocation(line: 1014, column: 7, scope: !1526, inlinedAt: !1523)
!1526 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 1014, column: 7)
!1527 = !DILocation(line: 1014, column: 7, scope: !1518, inlinedAt: !1523)
!1528 = !DILocation(line: 1016, column: 33, scope: !1529, inlinedAt: !1523)
!1529 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 1015, column: 5)
!1530 = !DILocation(line: 1016, column: 44, scope: !1529, inlinedAt: !1523)
!1531 = !DILocation(line: 1017, column: 26, scope: !1532, inlinedAt: !1523)
!1532 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 1017, column: 11)
!1533 = !DILocation(line: 1017, column: 11, scope: !1529, inlinedAt: !1523)
!1534 = !DILocalVariable(name: "__c", arg: 1, scope: !1535, file: !1472, line: 108, type: !53)
!1535 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1472, file: !1472, line: 108, type: !1536, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1538)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!53, !53}
!1538 = !{!1534}
!1539 = !DILocation(line: 0, scope: !1535, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 1020, column: 13, scope: !1541, inlinedAt: !1523)
!1541 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 1019, column: 11)
!1542 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !1540)
!1543 = !{!1544, !1234, i64 40}
!1544 = !{!"_IO_FILE", !1315, i64 0, !1234, i64 8, !1234, i64 16, !1234, i64 24, !1234, i64 32, !1234, i64 40, !1234, i64 48, !1234, i64 56, !1234, i64 64, !1234, i64 72, !1234, i64 80, !1234, i64 88, !1234, i64 96, !1234, i64 104, !1315, i64 112, !1315, i64 116, !1545, i64 120, !1546, i64 128, !1235, i64 130, !1235, i64 131, !1234, i64 136, !1545, i64 144, !1234, i64 152, !1234, i64 160, !1234, i64 168, !1234, i64 176, !1545, i64 184, !1315, i64 192, !1235, i64 196}
!1545 = !{!"long", !1235, i64 0}
!1546 = !{!"short", !1235, i64 0}
!1547 = !{!1544, !1234, i64 48}
!1548 = !{!"branch_weights", i32 2000, i32 1}
!1549 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1550 = !DILocation(line: 1021, column: 27, scope: !1541, inlinedAt: !1523)
!1551 = !DILocation(line: 1021, column: 38, scope: !1541, inlinedAt: !1523)
!1552 = !DILocation(line: 1021, column: 54, scope: !1541, inlinedAt: !1523)
!1553 = !DILocation(line: 1021, column: 24, scope: !1541, inlinedAt: !1523)
!1554 = !DILocation(line: 1018, column: 27, scope: !1532, inlinedAt: !1523)
!1555 = !DILocation(line: 1018, column: 9, scope: !1532, inlinedAt: !1523)
!1556 = distinct !{!1556, !1555, !1557}
!1557 = !DILocation(line: 1022, column: 11, scope: !1532, inlinedAt: !1523)
!1558 = !DILocation(line: 1024, column: 10, scope: !1518, inlinedAt: !1523)
!1559 = !DILocation(line: 1024, column: 21, scope: !1518, inlinedAt: !1523)
!1560 = !DILocation(line: 1024, column: 3, scope: !1518, inlinedAt: !1523)
!1561 = !DILocation(line: 0, scope: !1535, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 1026, column: 7, scope: !1563, inlinedAt: !1523)
!1563 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 1025, column: 5)
!1564 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !1562)
!1565 = !DILocation(line: 1027, column: 17, scope: !1563, inlinedAt: !1523)
!1566 = distinct !{!1566, !1560, !1567}
!1567 = !DILocation(line: 1028, column: 5, scope: !1518, inlinedAt: !1523)
!1568 = !DILocation(line: 627, column: 24, scope: !1569, inlinedAt: !1486)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 627, column: 7)
!1570 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 627, column: 7)
!1571 = !DILocation(line: 627, column: 38, scope: !1569, inlinedAt: !1486)
!1572 = !DILocation(line: 627, column: 35, scope: !1569, inlinedAt: !1486)
!1573 = !DILocation(line: 627, column: 48, scope: !1569, inlinedAt: !1486)
!1574 = !DILocation(line: 627, column: 16, scope: !1570, inlinedAt: !1486)
!1575 = !DILocation(line: 627, column: 7, scope: !1570, inlinedAt: !1486)
!1576 = !DILocation(line: 627, column: 51, scope: !1569, inlinedAt: !1486)
!1577 = !DILocation(line: 628, column: 9, scope: !1569, inlinedAt: !1486)
!1578 = !DILocation(line: 0, scope: !1535, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 628, column: 9, scope: !1569, inlinedAt: !1486)
!1580 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !1579)
!1581 = !DILocation(line: 627, column: 65, scope: !1569, inlinedAt: !1486)
!1582 = distinct !{!1582, !1575, !1583}
!1583 = !DILocation(line: 628, column: 9, scope: !1570, inlinedAt: !1486)
!1584 = !DILocation(line: 629, column: 20, scope: !1585, inlinedAt: !1486)
!1585 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 629, column: 11)
!1586 = !DILocation(line: 0, scope: !1518, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 630, column: 9, scope: !1585, inlinedAt: !1486)
!1588 = !DILocation(line: 1014, column: 7, scope: !1526, inlinedAt: !1587)
!1589 = !DILocation(line: 1014, column: 7, scope: !1518, inlinedAt: !1587)
!1590 = !DILocation(line: 1016, column: 33, scope: !1529, inlinedAt: !1587)
!1591 = !DILocation(line: 1016, column: 44, scope: !1529, inlinedAt: !1587)
!1592 = !DILocation(line: 1017, column: 22, scope: !1532, inlinedAt: !1587)
!1593 = !DILocation(line: 1017, column: 26, scope: !1532, inlinedAt: !1587)
!1594 = !DILocation(line: 1018, column: 27, scope: !1532, inlinedAt: !1587)
!1595 = !DILocation(line: 1017, column: 11, scope: !1529, inlinedAt: !1587)
!1596 = !DILocation(line: 0, scope: !1535, inlinedAt: !1597)
!1597 = distinct !DILocation(line: 1020, column: 13, scope: !1541, inlinedAt: !1587)
!1598 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !1597)
!1599 = !DILocation(line: 1021, column: 27, scope: !1541, inlinedAt: !1587)
!1600 = !DILocation(line: 1021, column: 38, scope: !1541, inlinedAt: !1587)
!1601 = !DILocation(line: 1021, column: 54, scope: !1541, inlinedAt: !1587)
!1602 = !DILocation(line: 1021, column: 24, scope: !1541, inlinedAt: !1587)
!1603 = !DILocation(line: 1018, column: 9, scope: !1532, inlinedAt: !1587)
!1604 = distinct !{!1604, !1603, !1605}
!1605 = !DILocation(line: 1022, column: 11, scope: !1532, inlinedAt: !1587)
!1606 = !DILocation(line: 1024, column: 21, scope: !1518, inlinedAt: !1587)
!1607 = !DILocation(line: 1024, column: 3, scope: !1518, inlinedAt: !1587)
!1608 = !DILocation(line: 0, scope: !1535, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 1026, column: 7, scope: !1563, inlinedAt: !1587)
!1610 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !1609)
!1611 = !DILocation(line: 1027, column: 17, scope: !1563, inlinedAt: !1587)
!1612 = distinct !{!1612, !1607, !1613}
!1613 = !DILocation(line: 1028, column: 5, scope: !1518, inlinedAt: !1587)
!1614 = !DILocation(line: 631, column: 36, scope: !1615, inlinedAt: !1486)
!1615 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 631, column: 11)
!1616 = !DILocation(line: 631, column: 57, scope: !1615, inlinedAt: !1486)
!1617 = !DILocation(line: 631, column: 55, scope: !1615, inlinedAt: !1486)
!1618 = !DILocation(line: 631, column: 33, scope: !1615, inlinedAt: !1486)
!1619 = !DILocation(line: 631, column: 11, scope: !1524, inlinedAt: !1486)
!1620 = !DILocation(line: 0, scope: !1535, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 632, column: 9, scope: !1615, inlinedAt: !1486)
!1622 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !1621)
!1623 = !DILocation(line: 634, column: 3, scope: !1479, inlinedAt: !1486)
!1624 = !DILocation(line: 0, scope: !1535, inlinedAt: !1625)
!1625 = distinct !DILocation(line: 636, column: 7, scope: !1478, inlinedAt: !1486)
!1626 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !1625)
!1627 = !DILocation(line: 68, column: 10, scope: !1471, inlinedAt: !1477)
!1628 = !{!1544, !1234, i64 8}
!1629 = !{!1544, !1234, i64 16}
!1630 = distinct !{!1630, !1623, !1631}
!1631 = !DILocation(line: 638, column: 5, scope: !1479, inlinedAt: !1486)
!1632 = !DILocation(line: 0, scope: !1535, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 557, column: 7, scope: !1487, inlinedAt: !1494)
!1634 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !1633)
!1635 = !DILocation(line: 558, column: 11, scope: !1487, inlinedAt: !1494)
!1636 = distinct !{!1636, !1499, !1637}
!1637 = !DILocation(line: 559, column: 5, scope: !1488, inlinedAt: !1494)
!1638 = !DILocation(line: 563, column: 17, scope: !1488, inlinedAt: !1494)
!1639 = !DILocation(line: 564, column: 16, scope: !1488, inlinedAt: !1494)
!1640 = !DILocation(line: 565, column: 8, scope: !1488, inlinedAt: !1494)
!1641 = !DILocation(line: 566, column: 14, scope: !1488, inlinedAt: !1494)
!1642 = !DILocation(line: 567, column: 7, scope: !1488, inlinedAt: !1494)
!1643 = !DILocalVariable(name: "c", arg: 1, scope: !1644, file: !3, line: 647, type: !53)
!1644 = distinct !DISubprogram(name: "same_para", scope: !3, file: !3, line: 647, type: !753, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1645)
!1645 = !{!1643}
!1646 = !DILocation(line: 0, scope: !1644, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 568, column: 21, scope: !1488, inlinedAt: !1494)
!1648 = !DILocation(line: 649, column: 11, scope: !1644, inlinedAt: !1647)
!1649 = !DILocation(line: 649, column: 33, scope: !1644, inlinedAt: !1647)
!1650 = !DILocation(line: 649, column: 30, scope: !1644, inlinedAt: !1647)
!1651 = !DILocation(line: 650, column: 11, scope: !1644, inlinedAt: !1647)
!1652 = !DILocation(line: 650, column: 14, scope: !1644, inlinedAt: !1647)
!1653 = !DILocation(line: 650, column: 48, scope: !1644, inlinedAt: !1647)
!1654 = !DILocation(line: 650, column: 46, scope: !1644, inlinedAt: !1647)
!1655 = !DILocation(line: 650, column: 24, scope: !1644, inlinedAt: !1647)
!1656 = !DILocation(line: 651, column: 16, scope: !1644, inlinedAt: !1647)
!1657 = !DILocation(line: 651, column: 11, scope: !1644, inlinedAt: !1647)
!1658 = !DILocation(line: 651, column: 29, scope: !1644, inlinedAt: !1647)
!1659 = !DILocalVariable(name: "same_paragraph", arg: 1, scope: !1660, file: !3, line: 493, type: !188)
!1660 = distinct !DISubprogram(name: "set_other_indent", scope: !3, file: !3, line: 493, type: !1661, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1663)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{null, !188}
!1663 = !{!1659}
!1664 = !DILocation(line: 0, scope: !1660, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 568, column: 3, scope: !1488, inlinedAt: !1494)
!1666 = !DILocation(line: 495, column: 7, scope: !1667, inlinedAt: !1665)
!1667 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 495, column: 7)
!1668 = !DILocation(line: 495, column: 7, scope: !1660, inlinedAt: !1665)
!1669 = !DILocation(line: 497, column: 12, scope: !1670, inlinedAt: !1665)
!1670 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 497, column: 12)
!1671 = !DILocation(line: 497, column: 12, scope: !1667, inlinedAt: !1665)
!1672 = !DILocation(line: 501, column: 12, scope: !1673, inlinedAt: !1665)
!1673 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 501, column: 12)
!1674 = !DILocation(line: 501, column: 12, scope: !1670, inlinedAt: !1665)
!1675 = !DILocation(line: 503, column: 26, scope: !1676, inlinedAt: !1665)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 503, column: 11)
!1677 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 502, column: 5)
!1678 = !DILocation(line: 513, column: 32, scope: !1679, inlinedAt: !1665)
!1679 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 513, column: 16)
!1680 = !DILocation(line: 503, column: 29, scope: !1676, inlinedAt: !1665)
!1681 = !DILocation(line: 503, column: 42, scope: !1676, inlinedAt: !1665)
!1682 = !DILocation(line: 503, column: 39, scope: !1676, inlinedAt: !1665)
!1683 = !DILocation(line: 503, column: 11, scope: !1677, inlinedAt: !1665)
!1684 = !DILocation(line: 513, column: 16, scope: !1679, inlinedAt: !1665)
!1685 = !DILocation(line: 513, column: 29, scope: !1679, inlinedAt: !1665)
!1686 = !DILocation(line: 513, column: 16, scope: !1676, inlinedAt: !1665)
!1687 = !DILocation(line: 514, column: 37, scope: !1679, inlinedAt: !1665)
!1688 = !DILocation(line: 514, column: 24, scope: !1679, inlinedAt: !1665)
!1689 = !DILocation(line: 514, column: 9, scope: !1679, inlinedAt: !1665)
!1690 = !DILocation(line: 496, column: 20, scope: !1667, inlinedAt: !1665)
!1691 = !DILocation(line: 496, column: 18, scope: !1667, inlinedAt: !1665)
!1692 = !DILocation(line: 499, column: 23, scope: !1693, inlinedAt: !1665)
!1693 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 498, column: 5)
!1694 = !DILocation(line: 499, column: 20, scope: !1693, inlinedAt: !1665)
!1695 = !DILocation(line: 0, scope: !1644, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 578, column: 11, scope: !1697, inlinedAt: !1494)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 578, column: 11)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 577, column: 5)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 576, column: 12)
!1700 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 572, column: 7)
!1701 = !DILocation(line: 650, column: 11, scope: !1644, inlinedAt: !1696)
!1702 = !DILocation(line: 650, column: 48, scope: !1644, inlinedAt: !1696)
!1703 = !DILocation(line: 650, column: 46, scope: !1644, inlinedAt: !1696)
!1704 = !DILocation(line: 650, column: 24, scope: !1644, inlinedAt: !1696)
!1705 = !DILocation(line: 578, column: 11, scope: !1698, inlinedAt: !1494)
!1706 = !DILocation(line: 582, column: 19, scope: !1707, inlinedAt: !1494)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 581, column: 13)
!1708 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 579, column: 9)
!1709 = !DILocation(line: 0, scope: !1644, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 584, column: 18, scope: !1708, inlinedAt: !1494)
!1711 = !DILocation(line: 649, column: 11, scope: !1644, inlinedAt: !1710)
!1712 = !DILocation(line: 649, column: 33, scope: !1644, inlinedAt: !1710)
!1713 = !DILocation(line: 649, column: 30, scope: !1644, inlinedAt: !1710)
!1714 = !DILocation(line: 650, column: 11, scope: !1644, inlinedAt: !1710)
!1715 = !DILocation(line: 650, column: 14, scope: !1644, inlinedAt: !1710)
!1716 = !DILocation(line: 650, column: 48, scope: !1644, inlinedAt: !1710)
!1717 = !DILocation(line: 650, column: 46, scope: !1644, inlinedAt: !1710)
!1718 = !DILocation(line: 650, column: 24, scope: !1644, inlinedAt: !1710)
!1719 = !DILocation(line: 651, column: 16, scope: !1644, inlinedAt: !1710)
!1720 = !DILocation(line: 651, column: 11, scope: !1644, inlinedAt: !1710)
!1721 = !DILocation(line: 651, column: 29, scope: !1644, inlinedAt: !1710)
!1722 = !DILocation(line: 584, column: 32, scope: !1708, inlinedAt: !1494)
!1723 = !DILocation(line: 583, column: 13, scope: !1707, inlinedAt: !1494)
!1724 = distinct !{!1724, !1725, !1726}
!1725 = !DILocation(line: 580, column: 11, scope: !1708, inlinedAt: !1494)
!1726 = !DILocation(line: 584, column: 60, scope: !1708, inlinedAt: !1494)
!1727 = !DILocation(line: 518, column: 22, scope: !1728, inlinedAt: !1665)
!1728 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 517, column: 5)
!1729 = !DILocation(line: 518, column: 20, scope: !1728, inlinedAt: !1665)
!1730 = !DILocation(line: 0, scope: !1644, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 600, column: 14, scope: !1732, inlinedAt: !1494)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 599, column: 5)
!1733 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 587, column: 12)
!1734 = !DILocation(line: 650, column: 11, scope: !1644, inlinedAt: !1731)
!1735 = !DILocation(line: 650, column: 14, scope: !1644, inlinedAt: !1731)
!1736 = !DILocation(line: 650, column: 48, scope: !1644, inlinedAt: !1731)
!1737 = !DILocation(line: 650, column: 46, scope: !1644, inlinedAt: !1731)
!1738 = !DILocation(line: 650, column: 24, scope: !1644, inlinedAt: !1731)
!1739 = !DILocation(line: 651, column: 16, scope: !1644, inlinedAt: !1731)
!1740 = !DILocation(line: 651, column: 11, scope: !1644, inlinedAt: !1731)
!1741 = !DILocation(line: 651, column: 29, scope: !1644, inlinedAt: !1731)
!1742 = !DILocation(line: 600, column: 28, scope: !1732, inlinedAt: !1494)
!1743 = !DILocation(line: 600, column: 7, scope: !1732, inlinedAt: !1494)
!1744 = !DILocation(line: 0, scope: !1676, inlinedAt: !1665)
!1745 = !DILocation(line: 650, column: 11, scope: !1644, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 589, column: 11, scope: !1747, inlinedAt: !1494)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 589, column: 11)
!1748 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 588, column: 5)
!1749 = !DILocation(line: 0, scope: !1644, inlinedAt: !1746)
!1750 = !DILocation(line: 650, column: 14, scope: !1644, inlinedAt: !1746)
!1751 = !DILocation(line: 650, column: 48, scope: !1644, inlinedAt: !1746)
!1752 = !DILocation(line: 650, column: 46, scope: !1644, inlinedAt: !1746)
!1753 = !DILocation(line: 650, column: 24, scope: !1644, inlinedAt: !1746)
!1754 = !DILocation(line: 589, column: 25, scope: !1747, inlinedAt: !1494)
!1755 = !DILocation(line: 589, column: 38, scope: !1747, inlinedAt: !1494)
!1756 = !DILocation(line: 589, column: 11, scope: !1748, inlinedAt: !1494)
!1757 = !DILocation(line: 593, column: 19, scope: !1758, inlinedAt: !1494)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 592, column: 13)
!1759 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 590, column: 9)
!1760 = !DILocation(line: 0, scope: !1644, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 595, column: 18, scope: !1759, inlinedAt: !1494)
!1762 = !DILocation(line: 649, column: 11, scope: !1644, inlinedAt: !1761)
!1763 = !DILocation(line: 649, column: 33, scope: !1644, inlinedAt: !1761)
!1764 = !DILocation(line: 649, column: 30, scope: !1644, inlinedAt: !1761)
!1765 = !DILocation(line: 650, column: 11, scope: !1644, inlinedAt: !1761)
!1766 = !DILocation(line: 650, column: 14, scope: !1644, inlinedAt: !1761)
!1767 = !DILocation(line: 650, column: 48, scope: !1644, inlinedAt: !1761)
!1768 = !DILocation(line: 650, column: 46, scope: !1644, inlinedAt: !1761)
!1769 = !DILocation(line: 650, column: 24, scope: !1644, inlinedAt: !1761)
!1770 = !DILocation(line: 651, column: 16, scope: !1644, inlinedAt: !1761)
!1771 = !DILocation(line: 651, column: 11, scope: !1644, inlinedAt: !1761)
!1772 = !DILocation(line: 651, column: 29, scope: !1644, inlinedAt: !1761)
!1773 = !DILocation(line: 595, column: 32, scope: !1759, inlinedAt: !1494)
!1774 = !DILocation(line: 594, column: 13, scope: !1758, inlinedAt: !1494)
!1775 = distinct !{!1775, !1776, !1777}
!1776 = !DILocation(line: 591, column: 11, scope: !1759, inlinedAt: !1494)
!1777 = !DILocation(line: 595, column: 60, scope: !1759, inlinedAt: !1494)
!1778 = !DILocation(line: 601, column: 13, scope: !1732, inlinedAt: !1494)
!1779 = !DILocation(line: 649, column: 11, scope: !1644, inlinedAt: !1731)
!1780 = !DILocation(line: 649, column: 33, scope: !1644, inlinedAt: !1731)
!1781 = !DILocation(line: 649, column: 30, scope: !1644, inlinedAt: !1731)
!1782 = distinct !{!1782, !1743, !1783}
!1783 = !DILocation(line: 601, column: 27, scope: !1732, inlinedAt: !1494)
!1784 = !DILocation(line: 606, column: 3, scope: !1785, inlinedAt: !1494)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 606, column: 3)
!1786 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 606, column: 3)
!1787 = !DILocation(line: 606, column: 3, scope: !1786, inlinedAt: !1494)
!1788 = !DILocation(line: 608, column: 48, scope: !1488, inlinedAt: !1494)
!1789 = !DILocation(line: 608, column: 54, scope: !1488, inlinedAt: !1494)
!1790 = !DILocation(line: 608, column: 28, scope: !1488, inlinedAt: !1494)
!1791 = !DILocation(line: 484, column: 7, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 483, column: 5)
!1793 = !DILocalVariable(name: "finish", arg: 1, scope: !1794, file: !3, line: 958, type: !252)
!1794 = distinct !DISubprogram(name: "put_paragraph", scope: !3, file: !3, line: 958, type: !1795, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1797)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{null, !252}
!1797 = !{!1793, !1798}
!1798 = !DILocalVariable(name: "w", scope: !1794, file: !3, line: 960, type: !252)
!1799 = !DILocation(line: 0, scope: !1794, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 485, column: 7, scope: !1792)
!1801 = !DILocation(line: 962, column: 19, scope: !1794, inlinedAt: !1800)
!1802 = !DILocation(line: 962, column: 3, scope: !1794, inlinedAt: !1800)
!1803 = !DILocation(line: 0, scope: !1804, inlinedAt: !1800)
!1804 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 963, column: 3)
!1805 = !{!1806, !1234, i64 32}
!1806 = !{!"Word", !1234, i64 0, !1315, i64 8, !1315, i64 12, !1315, i64 16, !1315, i64 16, !1315, i64 16, !1315, i64 16, !1315, i64 20, !1545, i64 24, !1234, i64 32}
!1807 = !DILocation(line: 963, column: 32, scope: !1808, inlinedAt: !1800)
!1808 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 963, column: 3)
!1809 = !DILocation(line: 963, column: 3, scope: !1804, inlinedAt: !1800)
!1810 = !DILocation(line: 964, column: 18, scope: !1808, inlinedAt: !1800)
!1811 = !DILocation(line: 964, column: 5, scope: !1808, inlinedAt: !1800)
!1812 = !DILocation(line: 963, column: 50, scope: !1808, inlinedAt: !1800)
!1813 = distinct !{!1813, !1809, !1814}
!1814 = !DILocation(line: 964, column: 30, scope: !1804, inlinedAt: !1800)
!1815 = distinct !{!1815, !1495, !1816}
!1816 = !DILocation(line: 486, column: 5, scope: !1459)
!1817 = !DILocation(line: 487, column: 1, scope: !1459)
!1818 = distinct !DISubprogram(name: "get_prefix", scope: !3, file: !3, line: 717, type: !1473, scopeLine: 718, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1819)
!1819 = !{!1820, !1821, !1822, !1825}
!1820 = !DILocalVariable(name: "f", arg: 1, scope: !1818, file: !3, line: 717, type: !1299)
!1821 = !DILocalVariable(name: "c", scope: !1818, file: !3, line: 719, type: !53)
!1822 = !DILocalVariable(name: "p", scope: !1823, file: !3, line: 728, type: !51)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 727, column: 5)
!1824 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 723, column: 7)
!1825 = !DILocalVariable(name: "pc", scope: !1826, file: !3, line: 732, type: !178)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 731, column: 9)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 730, column: 7)
!1828 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 730, column: 7)
!1829 = !DILocation(line: 0, scope: !1818)
!1830 = !DILocation(line: 721, column: 13, scope: !1818)
!1831 = !DILocation(line: 0, scope: !1471, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 722, column: 21, scope: !1818)
!1833 = !DILocation(line: 68, column: 10, scope: !1471, inlinedAt: !1832)
!1834 = !DILocation(line: 749, column: 3, scope: !1835, inlinedAt: !1839)
!1835 = distinct !DISubprogram(name: "get_space", scope: !3, file: !3, line: 747, type: !1480, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1836)
!1836 = !{!1837, !1838}
!1837 = !DILocalVariable(name: "f", arg: 1, scope: !1835, file: !3, line: 747, type: !1299)
!1838 = !DILocalVariable(name: "c", arg: 2, scope: !1835, file: !3, line: 747, type: !53)
!1839 = distinct !DILocation(line: 722, column: 7, scope: !1818)
!1840 = !DILocation(line: 0, scope: !1835, inlinedAt: !1839)
!1841 = !DILocation(line: 751, column: 11, scope: !1842, inlinedAt: !1839)
!1842 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 750, column: 5)
!1843 = !DILocation(line: 752, column: 18, scope: !1844, inlinedAt: !1839)
!1844 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 751, column: 11)
!1845 = !DILocation(line: 752, column: 9, scope: !1844, inlinedAt: !1839)
!1846 = !DILocation(line: 755, column: 16, scope: !1847, inlinedAt: !1839)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 754, column: 9)
!1848 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 753, column: 16)
!1849 = !DILocation(line: 756, column: 24, scope: !1847, inlinedAt: !1839)
!1850 = !DILocation(line: 756, column: 34, scope: !1847, inlinedAt: !1839)
!1851 = !DILocation(line: 756, column: 50, scope: !1847, inlinedAt: !1839)
!1852 = !DILocation(line: 0, scope: !1844, inlinedAt: !1839)
!1853 = !DILocation(line: 0, scope: !1471, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 760, column: 11, scope: !1842, inlinedAt: !1839)
!1855 = !DILocation(line: 68, column: 10, scope: !1471, inlinedAt: !1854)
!1856 = distinct !{!1856, !1834, !1857}
!1857 = !DILocation(line: 761, column: 5, scope: !1835, inlinedAt: !1839)
!1858 = !DILocation(line: 723, column: 7, scope: !1824)
!1859 = !DILocation(line: 723, column: 21, scope: !1824)
!1860 = !DILocation(line: 723, column: 7, scope: !1818)
!1861 = !DILocation(line: 724, column: 26, scope: !1824)
!1862 = !DILocation(line: 724, column: 46, scope: !1824)
!1863 = !DILocation(line: 724, column: 44, scope: !1824)
!1864 = !DILocation(line: 724, column: 24, scope: !1824)
!1865 = !DILocation(line: 724, column: 5, scope: !1824)
!1866 = !DILocation(line: 729, column: 28, scope: !1823)
!1867 = !DILocation(line: 729, column: 26, scope: !1823)
!1868 = !DILocation(line: 730, column: 16, scope: !1828)
!1869 = !DILocation(line: 0, scope: !1823)
!1870 = !DILocation(line: 730, column: 24, scope: !1827)
!1871 = !DILocation(line: 730, column: 27, scope: !1827)
!1872 = !DILocation(line: 730, column: 7, scope: !1828)
!1873 = !DILocation(line: 0, scope: !1826)
!1874 = !DILocation(line: 733, column: 20, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 733, column: 15)
!1876 = !DILocation(line: 733, column: 17, scope: !1875)
!1877 = !DILocation(line: 733, column: 15, scope: !1826)
!1878 = !DILocation(line: 735, column: 20, scope: !1826)
!1879 = !DILocation(line: 0, scope: !1471, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 736, column: 15, scope: !1826)
!1881 = !DILocation(line: 68, column: 10, scope: !1471, inlinedAt: !1880)
!1882 = !DILocation(line: 730, column: 37, scope: !1827)
!1883 = distinct !{!1883, !1872, !1884}
!1884 = !DILocation(line: 737, column: 9, scope: !1828)
!1885 = !DILocation(line: 749, column: 3, scope: !1835, inlinedAt: !1886)
!1886 = distinct !DILocation(line: 738, column: 11, scope: !1823)
!1887 = !DILocation(line: 0, scope: !1835, inlinedAt: !1886)
!1888 = !DILocation(line: 751, column: 11, scope: !1842, inlinedAt: !1886)
!1889 = !DILocation(line: 752, column: 18, scope: !1844, inlinedAt: !1886)
!1890 = !DILocation(line: 752, column: 9, scope: !1844, inlinedAt: !1886)
!1891 = !DILocation(line: 755, column: 16, scope: !1847, inlinedAt: !1886)
!1892 = !DILocation(line: 756, column: 24, scope: !1847, inlinedAt: !1886)
!1893 = !DILocation(line: 756, column: 34, scope: !1847, inlinedAt: !1886)
!1894 = !DILocation(line: 756, column: 50, scope: !1847, inlinedAt: !1886)
!1895 = !DILocation(line: 0, scope: !1844, inlinedAt: !1886)
!1896 = !DILocation(line: 0, scope: !1471, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 760, column: 11, scope: !1842, inlinedAt: !1886)
!1898 = !DILocation(line: 68, column: 10, scope: !1471, inlinedAt: !1897)
!1899 = distinct !{!1899, !1885, !1900}
!1900 = !DILocation(line: 761, column: 5, scope: !1835, inlinedAt: !1886)
!1901 = !DILocation(line: 741, column: 1, scope: !1818)
!1902 = distinct !DISubprogram(name: "get_line", scope: !3, file: !3, line: 663, type: !1480, scopeLine: 664, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1903)
!1903 = !{!1904, !1905, !1906, !1907, !1908}
!1904 = !DILocalVariable(name: "f", arg: 1, scope: !1902, file: !3, line: 663, type: !1299)
!1905 = !DILocalVariable(name: "c", arg: 2, scope: !1902, file: !3, line: 663, type: !53)
!1906 = !DILocalVariable(name: "start", scope: !1902, file: !3, line: 665, type: !53)
!1907 = !DILocalVariable(name: "end_of_parabuf", scope: !1902, file: !3, line: 666, type: !49)
!1908 = !DILocalVariable(name: "end_of_word", scope: !1902, file: !3, line: 667, type: !252)
!1909 = !DILocation(line: 0, scope: !1902)
!1910 = !DILocation(line: 0, scope: !1471, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 686, column: 15, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 679, column: 9)
!1913 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 673, column: 5)
!1914 = !DILocation(line: 677, column: 7, scope: !1913)
!1915 = !DILocation(line: 672, column: 3, scope: !1902)
!1916 = !DILocation(line: 677, column: 26, scope: !1913)
!1917 = !DILocation(line: 677, column: 24, scope: !1913)
!1918 = !{!1806, !1234, i64 0}
!1919 = !DILocation(line: 678, column: 7, scope: !1913)
!1920 = !DILocation(line: 680, column: 15, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 680, column: 15)
!1922 = !DILocation(line: 680, column: 20, scope: !1921)
!1923 = !DILocation(line: 680, column: 15, scope: !1912)
!1924 = !DILocation(line: 0, scope: !1660, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 682, column: 15, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 681, column: 13)
!1927 = !DILocation(line: 495, column: 7, scope: !1667, inlinedAt: !1925)
!1928 = !DILocation(line: 495, column: 7, scope: !1660, inlinedAt: !1925)
!1929 = !DILocation(line: 496, column: 20, scope: !1667, inlinedAt: !1925)
!1930 = !DILocation(line: 496, column: 5, scope: !1667, inlinedAt: !1925)
!1931 = !DILocation(line: 497, column: 12, scope: !1670, inlinedAt: !1925)
!1932 = !DILocation(line: 497, column: 12, scope: !1667, inlinedAt: !1925)
!1933 = !DILocation(line: 499, column: 23, scope: !1693, inlinedAt: !1925)
!1934 = !DILocation(line: 500, column: 5, scope: !1693, inlinedAt: !1925)
!1935 = !DILocation(line: 501, column: 12, scope: !1673, inlinedAt: !1925)
!1936 = !DILocation(line: 501, column: 12, scope: !1670, inlinedAt: !1925)
!1937 = !DILocation(line: 503, column: 29, scope: !1676, inlinedAt: !1925)
!1938 = !DILocation(line: 503, column: 42, scope: !1676, inlinedAt: !1925)
!1939 = !DILocation(line: 503, column: 39, scope: !1676, inlinedAt: !1925)
!1940 = !DILocation(line: 503, column: 11, scope: !1677, inlinedAt: !1925)
!1941 = !DILocation(line: 513, column: 16, scope: !1679, inlinedAt: !1925)
!1942 = !DILocation(line: 513, column: 29, scope: !1679, inlinedAt: !1925)
!1943 = !DILocation(line: 513, column: 16, scope: !1676, inlinedAt: !1925)
!1944 = !DILocation(line: 514, column: 37, scope: !1679, inlinedAt: !1925)
!1945 = !DILocation(line: 514, column: 24, scope: !1679, inlinedAt: !1925)
!1946 = !DILocation(line: 514, column: 9, scope: !1679, inlinedAt: !1925)
!1947 = !DILocation(line: 518, column: 22, scope: !1728, inlinedAt: !1925)
!1948 = !DILocation(line: 0, scope: !1667, inlinedAt: !1925)
!1949 = !DILocation(line: 683, column: 15, scope: !1926)
!1950 = !DILocation(line: 685, column: 16, scope: !1912)
!1951 = !DILocation(line: 684, column: 13, scope: !1926)
!1952 = !DILocation(line: 685, column: 21, scope: !1912)
!1953 = !DILocation(line: 685, column: 19, scope: !1912)
!1954 = !DILocation(line: 68, column: 10, scope: !1471, inlinedAt: !1911)
!1955 = !DILocation(line: 688, column: 23, scope: !1913)
!1956 = !DILocation(line: 688, column: 16, scope: !1913)
!1957 = !DILocation(line: 774, column: 17, scope: !1958, inlinedAt: !1964)
!1958 = distinct !DISubprogram(name: "check_punctuation", scope: !3, file: !3, line: 767, type: !1795, scopeLine: 768, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1959)
!1959 = !{!1960, !1961, !1962, !1963}
!1960 = !DILocalVariable(name: "w", arg: 1, scope: !1958, file: !3, line: 767, type: !252)
!1961 = !DILocalVariable(name: "start", scope: !1958, file: !3, line: 769, type: !51)
!1962 = !DILocalVariable(name: "finish", scope: !1958, file: !3, line: 770, type: !51)
!1963 = !DILocalVariable(name: "fin", scope: !1958, file: !3, line: 771, type: !178)
!1964 = distinct !DILocation(line: 690, column: 7, scope: !1913)
!1965 = !DILocation(line: 688, column: 27, scope: !1913)
!1966 = !{!1546, !1546, i64 0}
!1967 = !DILocation(line: 688, column: 26, scope: !1913)
!1968 = !DILocation(line: 687, column: 9, scope: !1912)
!1969 = distinct !{!1969, !1919, !1970}
!1970 = !DILocation(line: 688, column: 38, scope: !1913)
!1971 = !DILocation(line: 689, column: 41, scope: !1913)
!1972 = !DILocation(line: 689, column: 48, scope: !1913)
!1973 = !DILocation(line: 689, column: 60, scope: !1913)
!1974 = !DILocation(line: 689, column: 46, scope: !1913)
!1975 = !DILocation(line: 689, column: 32, scope: !1913)
!1976 = !DILocation(line: 689, column: 39, scope: !1913)
!1977 = !{!1806, !1315, i64 8}
!1978 = !DILocation(line: 689, column: 17, scope: !1913)
!1979 = !DILocation(line: 0, scope: !1958, inlinedAt: !1964)
!1980 = !DILocation(line: 769, column: 26, scope: !1958, inlinedAt: !1964)
!1981 = !DILocation(line: 770, column: 30, scope: !1958, inlinedAt: !1964)
!1982 = !DILocation(line: 771, column: 23, scope: !1958, inlinedAt: !1964)
!1983 = !DILocation(line: 773, column: 14, scope: !1958, inlinedAt: !1964)
!1984 = !DILocation(line: 773, column: 6, scope: !1958, inlinedAt: !1964)
!1985 = !DILocation(line: 773, column: 12, scope: !1958, inlinedAt: !1964)
!1986 = !DILocation(line: 774, column: 12, scope: !1958, inlinedAt: !1964)
!1987 = !DILocation(line: 775, column: 16, scope: !1958, inlinedAt: !1964)
!1988 = !DILocation(line: 775, column: 25, scope: !1958, inlinedAt: !1964)
!1989 = !DILocation(line: 775, column: 28, scope: !1958, inlinedAt: !1964)
!1990 = !DILocation(line: 775, column: 3, scope: !1958, inlinedAt: !1964)
!1991 = !DILocation(line: 776, column: 11, scope: !1958, inlinedAt: !1964)
!1992 = distinct !{!1992, !1990, !1991}
!1993 = !DILocation(line: 777, column: 15, scope: !1958, inlinedAt: !1964)
!1994 = !DILocation(line: 777, column: 13, scope: !1958, inlinedAt: !1964)
!1995 = !DILocation(line: 0, scope: !1835, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 695, column: 11, scope: !1913)
!1997 = !DILocation(line: 749, column: 3, scope: !1835, inlinedAt: !1996)
!1998 = !DILocation(line: 751, column: 11, scope: !1842, inlinedAt: !1996)
!1999 = !DILocation(line: 752, column: 18, scope: !1844, inlinedAt: !1996)
!2000 = !DILocation(line: 752, column: 9, scope: !1844, inlinedAt: !1996)
!2001 = !DILocation(line: 755, column: 16, scope: !1847, inlinedAt: !1996)
!2002 = !DILocation(line: 756, column: 24, scope: !1847, inlinedAt: !1996)
!2003 = !DILocation(line: 756, column: 34, scope: !1847, inlinedAt: !1996)
!2004 = !DILocation(line: 756, column: 50, scope: !1847, inlinedAt: !1996)
!2005 = !DILocation(line: 0, scope: !1844, inlinedAt: !1996)
!2006 = !DILocation(line: 0, scope: !1471, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 760, column: 11, scope: !1842, inlinedAt: !1996)
!2008 = !DILocation(line: 68, column: 10, scope: !1471, inlinedAt: !2007)
!2009 = distinct !{!2009, !1997, !2010}
!2010 = !DILocation(line: 761, column: 5, scope: !1835, inlinedAt: !1996)
!2011 = !DILocation(line: 696, column: 27, scope: !1913)
!2012 = !DILocation(line: 696, column: 37, scope: !1913)
!2013 = !DILocation(line: 696, column: 7, scope: !1913)
!2014 = !DILocation(line: 696, column: 19, scope: !1913)
!2015 = !DILocation(line: 696, column: 25, scope: !1913)
!2016 = !{!1806, !1315, i64 12}
!2017 = !DILocation(line: 697, column: 30, scope: !1913)
!2018 = !DILocation(line: 0, scope: !1913)
!2019 = !DILocation(line: 698, column: 28, scope: !1913)
!2020 = !DILocation(line: 698, column: 44, scope: !1913)
!2021 = !DILocation(line: 698, column: 32, scope: !1913)
!2022 = !DILocation(line: 699, column: 32, scope: !1913)
!2023 = !DILocation(line: 699, column: 38, scope: !1913)
!2024 = !DILocation(line: 699, column: 46, scope: !1913)
!2025 = !DILocation(line: 697, column: 19, scope: !1913)
!2026 = !DILocation(line: 697, column: 25, scope: !1913)
!2027 = !DILocation(line: 699, column: 67, scope: !1913)
!2028 = !DILocation(line: 700, column: 21, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 700, column: 11)
!2030 = !DILocation(line: 700, column: 36, scope: !2029)
!2031 = !DILocation(line: 700, column: 11, scope: !1913)
!2032 = !DILocation(line: 701, column: 29, scope: !2029)
!2033 = !DILocation(line: 701, column: 27, scope: !2029)
!2034 = !DILocation(line: 701, column: 9, scope: !2029)
!2035 = !DILocation(line: 702, column: 22, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 702, column: 11)
!2037 = !DILocation(line: 702, column: 11, scope: !1913)
!2038 = !DILocation(line: 0, scope: !1660, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 704, column: 11, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 703, column: 9)
!2041 = !DILocation(line: 495, column: 7, scope: !1667, inlinedAt: !2039)
!2042 = !DILocation(line: 495, column: 7, scope: !1660, inlinedAt: !2039)
!2043 = !DILocation(line: 496, column: 20, scope: !1667, inlinedAt: !2039)
!2044 = !DILocation(line: 496, column: 5, scope: !1667, inlinedAt: !2039)
!2045 = !DILocation(line: 497, column: 12, scope: !1670, inlinedAt: !2039)
!2046 = !DILocation(line: 497, column: 12, scope: !1667, inlinedAt: !2039)
!2047 = !DILocation(line: 501, column: 12, scope: !1673, inlinedAt: !2039)
!2048 = !DILocation(line: 0, scope: !1673, inlinedAt: !2039)
!2049 = !DILocation(line: 501, column: 12, scope: !1670, inlinedAt: !2039)
!2050 = !DILocation(line: 503, column: 39, scope: !1676, inlinedAt: !2039)
!2051 = !DILocation(line: 503, column: 11, scope: !1677, inlinedAt: !2039)
!2052 = !DILocation(line: 513, column: 16, scope: !1679, inlinedAt: !2039)
!2053 = !DILocation(line: 513, column: 29, scope: !1679, inlinedAt: !2039)
!2054 = !DILocation(line: 513, column: 16, scope: !1676, inlinedAt: !2039)
!2055 = !DILocation(line: 514, column: 37, scope: !1679, inlinedAt: !2039)
!2056 = !DILocation(line: 514, column: 24, scope: !1679, inlinedAt: !2039)
!2057 = !DILocation(line: 514, column: 9, scope: !1679, inlinedAt: !2039)
!2058 = !DILocation(line: 0, scope: !1667, inlinedAt: !2039)
!2059 = !DILocation(line: 705, column: 11, scope: !2040)
!2060 = !DILocation(line: 707, column: 17, scope: !1913)
!2061 = !DILocation(line: 706, column: 9, scope: !2040)
!2062 = !DILocation(line: 708, column: 5, scope: !1913)
!2063 = !DILocation(line: 710, column: 10, scope: !1902)
!2064 = !DILocation(line: 710, column: 3, scope: !1902)
!2065 = distinct !DISubprogram(name: "fmt_paragraph", scope: !3, file: !3, line: 848, type: !135, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2066)
!2066 = !{!2067, !2068, !2069, !2070, !2071, !2072}
!2067 = !DILocalVariable(name: "start", scope: !2065, file: !3, line: 850, type: !252)
!2068 = !DILocalVariable(name: "w", scope: !2065, file: !3, line: 850, type: !252)
!2069 = !DILocalVariable(name: "len", scope: !2065, file: !3, line: 851, type: !53)
!2070 = !DILocalVariable(name: "wcost", scope: !2065, file: !3, line: 852, type: !184)
!2071 = !DILocalVariable(name: "best", scope: !2065, file: !3, line: 852, type: !184)
!2072 = !DILocalVariable(name: "saved_length", scope: !2065, file: !3, line: 853, type: !53)
!2073 = !DILocation(line: 855, column: 3, scope: !2065)
!2074 = !DILocation(line: 855, column: 15, scope: !2065)
!2075 = !DILocation(line: 855, column: 25, scope: !2065)
!2076 = !{!1806, !1545, i64 24}
!2077 = !DILocation(line: 856, column: 30, scope: !2065)
!2078 = !DILocation(line: 0, scope: !2065)
!2079 = !DILocation(line: 857, column: 24, scope: !2065)
!2080 = !DILocation(line: 857, column: 22, scope: !2065)
!2081 = !DILocation(line: 0, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 859, column: 3)
!2083 = !DILocation(line: 859, column: 38, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2082, file: !3, line: 859, column: 3)
!2085 = !DILocation(line: 859, column: 3, scope: !2082)
!2086 = !DILocation(line: 0, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 860, column: 5)
!2088 = !DILocation(line: 0, scope: !2089, inlinedAt: !2097)
!2089 = distinct !DISubprogram(name: "line_cost", scope: !3, file: !3, line: 937, type: !2090, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2092)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!184, !252, !53}
!2092 = !{!2093, !2094, !2095, !2096}
!2093 = !DILocalVariable(name: "next", arg: 1, scope: !2089, file: !3, line: 937, type: !252)
!2094 = !DILocalVariable(name: "len", arg: 2, scope: !2089, file: !3, line: 937, type: !53)
!2095 = !DILocalVariable(name: "n", scope: !2089, file: !3, line: 939, type: !53)
!2096 = !DILocalVariable(name: "cost", scope: !2089, file: !3, line: 940, type: !184)
!2097 = distinct !DILocation(line: 874, column: 19, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 869, column: 9)
!2099 = !DILocation(line: 0, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 875, column: 15)
!2101 = !DILocation(line: 862, column: 19, scope: !2087)
!2102 = !DILocation(line: 862, column: 13, scope: !2087)
!2103 = !DILocation(line: 867, column: 17, scope: !2087)
!2104 = !DILocation(line: 867, column: 11, scope: !2087)
!2105 = !DILocation(line: 0, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 878, column: 13)
!2107 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 877, column: 15)
!2108 = !DILocation(line: 868, column: 7, scope: !2087)
!2109 = !DILocation(line: 870, column: 12, scope: !2098)
!2110 = !DILocation(line: 942, column: 12, scope: !2111, inlinedAt: !2097)
!2111 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 942, column: 7)
!2112 = !DILocation(line: 942, column: 7, scope: !2089, inlinedAt: !2097)
!2113 = !DILocation(line: 944, column: 18, scope: !2089, inlinedAt: !2097)
!2114 = !DILocation(line: 945, column: 10, scope: !2089, inlinedAt: !2097)
!2115 = !DILocation(line: 946, column: 13, scope: !2116, inlinedAt: !2097)
!2116 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 946, column: 7)
!2117 = !DILocation(line: 946, column: 24, scope: !2116, inlinedAt: !2097)
!2118 = !DILocation(line: 946, column: 7, scope: !2089, inlinedAt: !2097)
!2119 = !DILocation(line: 948, column: 23, scope: !2120, inlinedAt: !2097)
!2120 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 947, column: 5)
!2121 = !{!1806, !1315, i64 20}
!2122 = !DILocation(line: 948, column: 15, scope: !2120, inlinedAt: !2097)
!2123 = !DILocation(line: 949, column: 15, scope: !2120, inlinedAt: !2097)
!2124 = !DILocation(line: 949, column: 12, scope: !2120, inlinedAt: !2097)
!2125 = !DILocation(line: 950, column: 5, scope: !2120, inlinedAt: !2097)
!2126 = !DILocation(line: 874, column: 43, scope: !2098)
!2127 = !DILocation(line: 874, column: 38, scope: !2098)
!2128 = !DILocation(line: 875, column: 29, scope: !2100)
!2129 = !DILocation(line: 876, column: 22, scope: !2100)
!2130 = !DILocation(line: 876, column: 19, scope: !2100)
!2131 = !DILocation(line: 876, column: 13, scope: !2100)
!2132 = !DILocation(line: 0, scope: !2098)
!2133 = !DILocation(line: 877, column: 21, scope: !2107)
!2134 = !DILocation(line: 877, column: 15, scope: !2098)
!2135 = !DILocation(line: 880, column: 33, scope: !2106)
!2136 = !DILocation(line: 881, column: 34, scope: !2106)
!2137 = !DILocation(line: 882, column: 13, scope: !2106)
!2138 = !DILocation(line: 888, column: 15, scope: !2098)
!2139 = !DILocation(line: 891, column: 27, scope: !2098)
!2140 = !DILocation(line: 891, column: 38, scope: !2098)
!2141 = !DILocation(line: 891, column: 33, scope: !2098)
!2142 = !DILocation(line: 891, column: 15, scope: !2098)
!2143 = !DILocation(line: 893, column: 18, scope: !2087)
!2144 = !DILocation(line: 892, column: 9, scope: !2098)
!2145 = distinct !{!2145, !2108, !2146}
!2146 = !DILocation(line: 893, column: 29, scope: !2087)
!2147 = !DILocalVariable(name: "this", arg: 1, scope: !2148, file: !3, line: 904, type: !252)
!2148 = distinct !DISubprogram(name: "base_cost", scope: !3, file: !3, line: 904, type: !2149, scopeLine: 905, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2151)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!184, !252}
!2151 = !{!2147, !2152}
!2152 = !DILocalVariable(name: "cost", scope: !2148, file: !3, line: 906, type: !184)
!2153 = !DILocation(line: 0, scope: !2148, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 894, column: 33, scope: !2087)
!2155 = !DILocation(line: 910, column: 12, scope: !2156, inlinedAt: !2154)
!2156 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 910, column: 7)
!2157 = !DILocation(line: 910, column: 7, scope: !2148, inlinedAt: !2154)
!2158 = !DILocation(line: 912, column: 23, scope: !2159, inlinedAt: !2154)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 912, column: 11)
!2160 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 911, column: 5)
!2161 = !DILocation(line: 912, column: 11, scope: !2159, inlinedAt: !2154)
!2162 = !DILocation(line: 912, column: 11, scope: !2160, inlinedAt: !2154)
!2163 = !DILocation(line: 914, column: 27, scope: !2164, inlinedAt: !2154)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 914, column: 15)
!2165 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 913, column: 9)
!2166 = !DILocation(line: 914, column: 15, scope: !2164, inlinedAt: !2154)
!2167 = !DILocation(line: 919, column: 28, scope: !2168, inlinedAt: !2154)
!2168 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 919, column: 16)
!2169 = !DILocation(line: 919, column: 16, scope: !2168, inlinedAt: !2154)
!2170 = !DILocation(line: 919, column: 16, scope: !2159, inlinedAt: !2154)
!2171 = !DILocation(line: 921, column: 21, scope: !2172, inlinedAt: !2154)
!2172 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 921, column: 16)
!2173 = !DILocation(line: 921, column: 32, scope: !2172, inlinedAt: !2154)
!2174 = !DILocation(line: 921, column: 47, scope: !2172, inlinedAt: !2154)
!2175 = !DILocation(line: 921, column: 35, scope: !2172, inlinedAt: !2154)
!2176 = !DILocation(line: 921, column: 16, scope: !2168, inlinedAt: !2154)
!2177 = !DILocation(line: 922, column: 17, scope: !2172, inlinedAt: !2154)
!2178 = !DILocation(line: 922, column: 14, scope: !2172, inlinedAt: !2154)
!2179 = !DILocation(line: 922, column: 9, scope: !2172, inlinedAt: !2154)
!2180 = !DILocation(line: 925, column: 13, scope: !2181, inlinedAt: !2154)
!2181 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 925, column: 7)
!2182 = !DILocation(line: 925, column: 7, scope: !2181, inlinedAt: !2154)
!2183 = !DILocation(line: 925, column: 7, scope: !2148, inlinedAt: !2154)
!2184 = !DILocation(line: 926, column: 10, scope: !2181, inlinedAt: !2154)
!2185 = !DILocation(line: 926, column: 5, scope: !2181, inlinedAt: !2154)
!2186 = !DILocation(line: 927, column: 18, scope: !2187, inlinedAt: !2154)
!2187 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 927, column: 12)
!2188 = !DILocation(line: 927, column: 12, scope: !2187, inlinedAt: !2154)
!2189 = !DILocation(line: 927, column: 12, scope: !2181, inlinedAt: !2154)
!2190 = !DILocation(line: 928, column: 13, scope: !2187, inlinedAt: !2154)
!2191 = !DILocation(line: 928, column: 10, scope: !2187, inlinedAt: !2154)
!2192 = !DILocation(line: 928, column: 5, scope: !2187, inlinedAt: !2154)
!2193 = !DILocation(line: 894, column: 31, scope: !2087)
!2194 = !DILocation(line: 894, column: 14, scope: !2087)
!2195 = !DILocation(line: 894, column: 24, scope: !2087)
!2196 = distinct !{!2196, !2085, !2197}
!2197 = !DILocation(line: 895, column: 5, scope: !2082)
!2198 = !DILocation(line: 897, column: 22, scope: !2065)
!2199 = !DILocation(line: 898, column: 1, scope: !2065)
!2200 = distinct !DISubprogram(name: "put_line", scope: !3, file: !3, line: 971, type: !2201, scopeLine: 972, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !252, !53}
!2203 = !{!2204, !2205, !2206}
!2204 = !DILocalVariable(name: "w", arg: 1, scope: !2200, file: !3, line: 971, type: !252)
!2205 = !DILocalVariable(name: "indent", arg: 2, scope: !2200, file: !3, line: 971, type: !53)
!2206 = !DILocalVariable(name: "endline", scope: !2200, file: !3, line: 973, type: !252)
!2207 = !DILocation(line: 0, scope: !2200)
!2208 = !DILocation(line: 975, column: 14, scope: !2200)
!2209 = !DILocation(line: 976, column: 14, scope: !2200)
!2210 = !DILocation(line: 0, scope: !1518, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 976, column: 3, scope: !2200)
!2212 = !DILocation(line: 1014, column: 7, scope: !1526, inlinedAt: !2211)
!2213 = !DILocation(line: 1014, column: 7, scope: !1518, inlinedAt: !2211)
!2214 = !DILocation(line: 1016, column: 33, scope: !1529, inlinedAt: !2211)
!2215 = !DILocation(line: 1016, column: 44, scope: !1529, inlinedAt: !2211)
!2216 = !DILocation(line: 1017, column: 26, scope: !1532, inlinedAt: !2211)
!2217 = !DILocation(line: 1017, column: 11, scope: !1529, inlinedAt: !2211)
!2218 = !DILocation(line: 0, scope: !1535, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 1020, column: 13, scope: !1541, inlinedAt: !2211)
!2220 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !2219)
!2221 = !DILocation(line: 1021, column: 27, scope: !1541, inlinedAt: !2211)
!2222 = !DILocation(line: 1021, column: 38, scope: !1541, inlinedAt: !2211)
!2223 = !DILocation(line: 1021, column: 54, scope: !1541, inlinedAt: !2211)
!2224 = !DILocation(line: 1021, column: 24, scope: !1541, inlinedAt: !2211)
!2225 = !DILocation(line: 1018, column: 27, scope: !1532, inlinedAt: !2211)
!2226 = !DILocation(line: 1018, column: 9, scope: !1532, inlinedAt: !2211)
!2227 = distinct !{!2227, !2226, !2228}
!2228 = !DILocation(line: 1022, column: 11, scope: !1532, inlinedAt: !2211)
!2229 = !DILocation(line: 1024, column: 10, scope: !1518, inlinedAt: !2211)
!2230 = !DILocation(line: 1024, column: 21, scope: !1518, inlinedAt: !2211)
!2231 = !DILocation(line: 1024, column: 3, scope: !1518, inlinedAt: !2211)
!2232 = !DILocation(line: 0, scope: !1535, inlinedAt: !2233)
!2233 = distinct !DILocation(line: 1026, column: 7, scope: !1563, inlinedAt: !2211)
!2234 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !2233)
!2235 = !DILocation(line: 1027, column: 17, scope: !1563, inlinedAt: !2211)
!2236 = distinct !{!2236, !2231, !2237}
!2237 = !DILocation(line: 1028, column: 5, scope: !1518, inlinedAt: !2211)
!2238 = !DILocation(line: 977, column: 3, scope: !2200)
!2239 = !DILocation(line: 978, column: 17, scope: !2200)
!2240 = !DILocation(line: 978, column: 14, scope: !2200)
!2241 = !DILocation(line: 0, scope: !1518, inlinedAt: !2242)
!2242 = distinct !DILocation(line: 979, column: 3, scope: !2200)
!2243 = !DILocation(line: 1014, column: 7, scope: !1526, inlinedAt: !2242)
!2244 = !DILocation(line: 1014, column: 7, scope: !1518, inlinedAt: !2242)
!2245 = !DILocation(line: 1016, column: 33, scope: !1529, inlinedAt: !2242)
!2246 = !DILocation(line: 1016, column: 44, scope: !1529, inlinedAt: !2242)
!2247 = !DILocation(line: 1017, column: 22, scope: !1532, inlinedAt: !2242)
!2248 = !DILocation(line: 1017, column: 26, scope: !1532, inlinedAt: !2242)
!2249 = !DILocation(line: 1018, column: 27, scope: !1532, inlinedAt: !2242)
!2250 = !DILocation(line: 1017, column: 11, scope: !1529, inlinedAt: !2242)
!2251 = !DILocation(line: 0, scope: !1535, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 1020, column: 13, scope: !1541, inlinedAt: !2242)
!2253 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !2252)
!2254 = !DILocation(line: 1021, column: 27, scope: !1541, inlinedAt: !2242)
!2255 = !DILocation(line: 1021, column: 38, scope: !1541, inlinedAt: !2242)
!2256 = !DILocation(line: 1021, column: 54, scope: !1541, inlinedAt: !2242)
!2257 = !DILocation(line: 1021, column: 24, scope: !1541, inlinedAt: !2242)
!2258 = !DILocation(line: 1018, column: 9, scope: !1532, inlinedAt: !2242)
!2259 = distinct !{!2259, !2258, !2260}
!2260 = !DILocation(line: 1022, column: 11, scope: !1532, inlinedAt: !2242)
!2261 = !DILocation(line: 1024, column: 10, scope: !1518, inlinedAt: !2242)
!2262 = !DILocation(line: 1024, column: 21, scope: !1518, inlinedAt: !2242)
!2263 = !DILocation(line: 1024, column: 3, scope: !1518, inlinedAt: !2242)
!2264 = !DILocation(line: 0, scope: !1535, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 1026, column: 7, scope: !1563, inlinedAt: !2242)
!2266 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !2265)
!2267 = !DILocation(line: 1027, column: 17, scope: !1563, inlinedAt: !2242)
!2268 = distinct !{!2268, !2263, !2269}
!2269 = !DILocation(line: 1028, column: 5, scope: !1518, inlinedAt: !2242)
!2270 = !DILocation(line: 981, column: 16, scope: !2200)
!2271 = !DILocation(line: 981, column: 27, scope: !2200)
!2272 = !DILocation(line: 982, column: 3, scope: !2200)
!2273 = !DILocation(line: 982, column: 12, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 982, column: 3)
!2275 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 982, column: 3)
!2276 = !DILocalVariable(name: "w", arg: 1, scope: !2277, file: !3, line: 995, type: !252)
!2277 = distinct !DISubprogram(name: "put_word", scope: !3, file: !3, line: 995, type: !1795, scopeLine: 996, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2278)
!2278 = !{!2276, !2279, !2280}
!2279 = !DILocalVariable(name: "s", scope: !2277, file: !3, line: 997, type: !51)
!2280 = !DILocalVariable(name: "n", scope: !2277, file: !3, line: 998, type: !53)
!2281 = !DILocation(line: 0, scope: !2277, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 0, scope: !2200)
!2283 = !DILocation(line: 1001, column: 15, scope: !2284, inlinedAt: !2282)
!2284 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 1001, column: 3)
!2285 = !DILocation(line: 1001, column: 25, scope: !2286, inlinedAt: !2282)
!2286 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 1001, column: 3)
!2287 = !DILocation(line: 1001, column: 3, scope: !2284, inlinedAt: !2282)
!2288 = !DILocation(line: 1000, column: 10, scope: !2277, inlinedAt: !2282)
!2289 = !DILocation(line: 1002, column: 5, scope: !2286, inlinedAt: !2282)
!2290 = !DILocation(line: 0, scope: !1535, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 1002, column: 5, scope: !2286, inlinedAt: !2282)
!2292 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !2291)
!2293 = !DILocation(line: 1001, column: 32, scope: !2286, inlinedAt: !2282)
!2294 = distinct !{!2294, !2287, !2295}
!2295 = !DILocation(line: 1002, column: 5, scope: !2284, inlinedAt: !2282)
!2296 = !DILocation(line: 1003, column: 20, scope: !2277, inlinedAt: !2282)
!2297 = !DILocation(line: 1003, column: 14, scope: !2277, inlinedAt: !2282)
!2298 = !DILocation(line: 982, column: 3, scope: !2275)
!2299 = !DILocation(line: 985, column: 21, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 983, column: 5)
!2301 = !DILocation(line: 0, scope: !1518, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 985, column: 7, scope: !2300)
!2303 = !DILocation(line: 1013, column: 29, scope: !1518, inlinedAt: !2302)
!2304 = !DILocation(line: 1014, column: 7, scope: !1526, inlinedAt: !2302)
!2305 = !DILocation(line: 1014, column: 7, scope: !1518, inlinedAt: !2302)
!2306 = !DILocation(line: 1016, column: 33, scope: !1529, inlinedAt: !2302)
!2307 = !DILocation(line: 1016, column: 44, scope: !1529, inlinedAt: !2302)
!2308 = !DILocation(line: 1017, column: 22, scope: !1532, inlinedAt: !2302)
!2309 = !DILocation(line: 1017, column: 26, scope: !1532, inlinedAt: !2302)
!2310 = !DILocation(line: 1018, column: 27, scope: !1532, inlinedAt: !2302)
!2311 = !DILocation(line: 1017, column: 11, scope: !1529, inlinedAt: !2302)
!2312 = !DILocation(line: 0, scope: !1535, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 1020, column: 13, scope: !1541, inlinedAt: !2302)
!2314 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !2313)
!2315 = !DILocation(line: 1021, column: 27, scope: !1541, inlinedAt: !2302)
!2316 = !DILocation(line: 1021, column: 38, scope: !1541, inlinedAt: !2302)
!2317 = !DILocation(line: 1021, column: 54, scope: !1541, inlinedAt: !2302)
!2318 = !DILocation(line: 1021, column: 24, scope: !1541, inlinedAt: !2302)
!2319 = !DILocation(line: 1018, column: 9, scope: !1532, inlinedAt: !2302)
!2320 = distinct !{!2320, !2319, !2321}
!2321 = !DILocation(line: 1022, column: 11, scope: !1532, inlinedAt: !2302)
!2322 = !DILocation(line: 1024, column: 21, scope: !1518, inlinedAt: !2302)
!2323 = !DILocation(line: 1024, column: 3, scope: !1518, inlinedAt: !2302)
!2324 = !DILocation(line: 0, scope: !1535, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 1026, column: 7, scope: !1563, inlinedAt: !2302)
!2326 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !2325)
!2327 = !DILocation(line: 1027, column: 17, scope: !1563, inlinedAt: !2302)
!2328 = distinct !{!2328, !2323, !2329}
!2329 = !DILocation(line: 1028, column: 5, scope: !1518, inlinedAt: !2302)
!2330 = !DILocation(line: 982, column: 25, scope: !2274)
!2331 = !DILocation(line: 982, column: 3, scope: !2274)
!2332 = distinct !{!2332, !2298, !2333}
!2333 = !DILocation(line: 986, column: 5, scope: !2275)
!2334 = !DILocation(line: 988, column: 20, scope: !2200)
!2335 = !DILocation(line: 0, scope: !1535, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 989, column: 3, scope: !2200)
!2337 = !DILocation(line: 110, column: 10, scope: !1535, inlinedAt: !2336)
!2338 = !DILocation(line: 990, column: 1, scope: !2200)
!2339 = distinct !DISubprogram(name: "flush_paragraph", scope: !3, file: !3, line: 784, type: !135, scopeLine: 785, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2340)
!2340 = !{!2341, !2342, !2343, !2344, !2345, !2349, !2350}
!2341 = !DILocalVariable(name: "split_point", scope: !2339, file: !3, line: 786, type: !252)
!2342 = !DILocalVariable(name: "w", scope: !2339, file: !3, line: 787, type: !252)
!2343 = !DILocalVariable(name: "shift", scope: !2339, file: !3, line: 788, type: !53)
!2344 = !DILocalVariable(name: "best_break", scope: !2339, file: !3, line: 789, type: !184)
!2345 = !DILocalVariable(name: "__ptr", scope: !2346, file: !3, line: 795, type: !51)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !3, line: 795, column: 7)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 794, column: 5)
!2348 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 793, column: 7)
!2349 = !DILocalVariable(name: "__stream", scope: !2346, file: !3, line: 795, type: !1299)
!2350 = !DILocalVariable(name: "__cnt", scope: !2346, file: !3, line: 795, type: !108)
!2351 = !DILocation(line: 793, column: 7, scope: !2348)
!2352 = !DILocation(line: 793, column: 18, scope: !2348)
!2353 = !DILocation(line: 793, column: 7, scope: !2339)
!2354 = !DILocation(line: 795, column: 7, scope: !2347)
!2355 = !DILocation(line: 796, column: 12, scope: !2347)
!2356 = !DILocation(line: 797, column: 7, scope: !2347)
!2357 = !DILocation(line: 806, column: 3, scope: !2339)
!2358 = !DILocation(line: 0, scope: !2339)
!2359 = !DILocation(line: 0, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 812, column: 3)
!2361 = !DILocation(line: 812, column: 32, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 812, column: 3)
!2363 = !DILocation(line: 812, column: 3, scope: !2360)
!2364 = !DILocation(line: 0, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 814, column: 11)
!2366 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 813, column: 5)
!2367 = !DILocation(line: 814, column: 14, scope: !2365)
!2368 = !DILocation(line: 814, column: 29, scope: !2365)
!2369 = !DILocation(line: 814, column: 41, scope: !2365)
!2370 = !DILocation(line: 814, column: 24, scope: !2365)
!2371 = !DILocation(line: 814, column: 51, scope: !2365)
!2372 = !DILocation(line: 814, column: 11, scope: !2366)
!2373 = !DILocation(line: 819, column: 22, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 819, column: 11)
!2375 = !DILocation(line: 819, column: 11, scope: !2366)
!2376 = distinct !{!2376, !2363, !2377}
!2377 = !DILocation(line: 821, column: 5, scope: !2360)
!2378 = !DILocation(line: 0, scope: !1794, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 822, column: 3, scope: !2339)
!2380 = !DILocation(line: 962, column: 19, scope: !1794, inlinedAt: !2379)
!2381 = !DILocation(line: 962, column: 3, scope: !1794, inlinedAt: !2379)
!2382 = !DILocation(line: 0, scope: !1804, inlinedAt: !2379)
!2383 = !DILocation(line: 963, column: 32, scope: !1808, inlinedAt: !2379)
!2384 = !DILocation(line: 963, column: 3, scope: !1804, inlinedAt: !2379)
!2385 = !DILocation(line: 964, column: 18, scope: !1808, inlinedAt: !2379)
!2386 = !DILocation(line: 964, column: 5, scope: !1808, inlinedAt: !2379)
!2387 = !DILocation(line: 963, column: 50, scope: !1808, inlinedAt: !2379)
!2388 = distinct !{!2388, !2384, !2389}
!2389 = !DILocation(line: 964, column: 30, scope: !1804, inlinedAt: !2379)
!2390 = !DILocation(line: 827, column: 34, scope: !2339)
!2391 = !DILocation(line: 827, column: 40, scope: !2339)
!2392 = !DILocation(line: 827, column: 45, scope: !2339)
!2393 = !DILocalVariable(name: "__dest", arg: 1, scope: !2394, file: !2395, line: 38, type: !106)
!2394 = distinct !DISubprogram(name: "memmove", scope: !2395, file: !2395, line: 38, type: !2396, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2398)
!2395 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!106, !106, !182, !108}
!2398 = !{!2393, !2399, !2400}
!2399 = !DILocalVariable(name: "__src", arg: 2, scope: !2394, file: !2395, line: 38, type: !182)
!2400 = !DILocalVariable(name: "__len", arg: 3, scope: !2394, file: !2395, line: 38, type: !108)
!2401 = !DILocation(line: 0, scope: !2394, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 827, column: 3, scope: !2339)
!2403 = !DILocation(line: 40, column: 10, scope: !2394, inlinedAt: !2402)
!2404 = !DILocation(line: 828, column: 24, scope: !2339)
!2405 = !DILocation(line: 828, column: 11, scope: !2339)
!2406 = !DILocation(line: 829, column: 8, scope: !2339)
!2407 = !DILocation(line: 833, column: 30, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !3, line: 833, column: 3)
!2409 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 833, column: 3)
!2410 = !DILocation(line: 833, column: 27, scope: !2408)
!2411 = !DILocation(line: 833, column: 3, scope: !2409)
!2412 = !DILocation(line: 834, column: 8, scope: !2408)
!2413 = !DILocation(line: 834, column: 13, scope: !2408)
!2414 = !DILocation(line: 833, column: 43, scope: !2408)
!2415 = distinct !{!2415, !2411, !2416}
!2416 = !DILocation(line: 834, column: 16, scope: !2409)
!2417 = !DILocation(line: 839, column: 18, scope: !2339)
!2418 = !DILocation(line: 839, column: 43, scope: !2339)
!2419 = !DILocation(line: 839, column: 62, scope: !2339)
!2420 = !DILocation(line: 0, scope: !2394, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 839, column: 3, scope: !2339)
!2422 = !DILocation(line: 40, column: 10, scope: !2394, inlinedAt: !2421)
!2423 = !DILocation(line: 840, column: 29, scope: !2339)
!2424 = !DILocation(line: 840, column: 14, scope: !2339)
!2425 = !DILocation(line: 841, column: 1, scope: !2339)
!2426 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !269, file: !269, line: 51, type: !118, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2427)
!2427 = !{!2428}
!2428 = !DILocalVariable(name: "file", arg: 1, scope: !2426, file: !269, line: 51, type: !51)
!2429 = !DILocation(line: 0, scope: !2426)
!2430 = !DILocation(line: 53, column: 13, scope: !2426)
!2431 = !DILocation(line: 54, column: 1, scope: !2426)
!2432 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !269, file: !269, line: 88, type: !1661, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2433)
!2433 = !{!2434}
!2434 = !DILocalVariable(name: "ignore", arg: 1, scope: !2432, file: !269, line: 88, type: !188)
!2435 = !DILocation(line: 0, scope: !2432)
!2436 = !DILocation(line: 90, column: 16, scope: !2432)
!2437 = !{!2438, !2438, i64 0}
!2438 = !{!"_Bool", !1235, i64 0}
!2439 = !DILocation(line: 91, column: 1, scope: !2432)
!2440 = distinct !DISubprogram(name: "close_stdout", scope: !269, file: !269, line: 117, type: !135, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2441)
!2441 = !{!2442}
!2442 = !DILocalVariable(name: "write_error", scope: !2443, file: !269, line: 122, type: !51)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !269, line: 121, column: 5)
!2444 = distinct !DILexicalBlock(scope: !2440, file: !269, line: 119, column: 7)
!2445 = !DILocation(line: 119, column: 21, scope: !2444)
!2446 = !DILocation(line: 119, column: 7, scope: !2444)
!2447 = !DILocation(line: 119, column: 29, scope: !2444)
!2448 = !DILocation(line: 120, column: 7, scope: !2444)
!2449 = !DILocation(line: 120, column: 12, scope: !2444)
!2450 = !{i8 0, i8 2}
!2451 = !DILocation(line: 120, column: 25, scope: !2444)
!2452 = !DILocation(line: 120, column: 28, scope: !2444)
!2453 = !DILocation(line: 120, column: 34, scope: !2444)
!2454 = !DILocation(line: 119, column: 7, scope: !2440)
!2455 = !DILocation(line: 122, column: 33, scope: !2443)
!2456 = !DILocation(line: 0, scope: !2443)
!2457 = !DILocation(line: 123, column: 11, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2443, file: !269, line: 123, column: 11)
!2459 = !DILocation(line: 0, scope: !2458)
!2460 = !DILocation(line: 123, column: 11, scope: !2443)
!2461 = !DILocation(line: 124, column: 36, scope: !2458)
!2462 = !DILocation(line: 124, column: 9, scope: !2458)
!2463 = !DILocation(line: 127, column: 9, scope: !2458)
!2464 = !DILocation(line: 129, column: 14, scope: !2443)
!2465 = !DILocation(line: 129, column: 7, scope: !2443)
!2466 = !DILocation(line: 134, column: 42, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2440, file: !269, line: 134, column: 7)
!2468 = !DILocation(line: 134, column: 28, scope: !2467)
!2469 = !DILocation(line: 134, column: 50, scope: !2467)
!2470 = !DILocation(line: 134, column: 7, scope: !2440)
!2471 = !DILocation(line: 135, column: 12, scope: !2467)
!2472 = !DILocation(line: 135, column: 5, scope: !2467)
!2473 = !DILocation(line: 136, column: 1, scope: !2440)
!2474 = distinct !DISubprogram(name: "fdadvise", scope: !475, file: !475, line: 31, type: !2475, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !2479)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{null, !53, !2477, !2477, !2478}
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !56, line: 63, baseType: !82)
!2478 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!2479 = !{!2480, !2481, !2482, !2483, !2484}
!2480 = !DILocalVariable(name: "fd", arg: 1, scope: !2474, file: !475, line: 31, type: !53)
!2481 = !DILocalVariable(name: "offset", arg: 2, scope: !2474, file: !475, line: 31, type: !2477)
!2482 = !DILocalVariable(name: "len", arg: 3, scope: !2474, file: !475, line: 31, type: !2477)
!2483 = !DILocalVariable(name: "advice", arg: 4, scope: !2474, file: !475, line: 31, type: !2478)
!2484 = !DILocalVariable(name: "__x", scope: !2485, file: !475, line: 34, type: !53)
!2485 = distinct !DILexicalBlock(scope: !2474, file: !475, line: 34, column: 3)
!2486 = !DILocation(line: 0, scope: !2474)
!2487 = !DILocation(line: 34, column: 3, scope: !2485)
!2488 = !DILocation(line: 0, scope: !2485)
!2489 = !DILocation(line: 36, column: 1, scope: !2474)
!2490 = distinct !DISubprogram(name: "fadvise", scope: !475, file: !475, line: 39, type: !2491, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !2495)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{null, !2493, !2478}
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1301, line: 7, baseType: !486)
!2495 = !{!2496, !2497}
!2496 = !DILocalVariable(name: "fp", arg: 1, scope: !2490, file: !475, line: 39, type: !2493)
!2497 = !DILocalVariable(name: "advice", arg: 2, scope: !2490, file: !475, line: 39, type: !2478)
!2498 = !DILocation(line: 0, scope: !2490)
!2499 = !DILocation(line: 41, column: 7, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2490, file: !475, line: 41, column: 7)
!2501 = !DILocation(line: 41, column: 7, scope: !2490)
!2502 = !DILocation(line: 42, column: 15, scope: !2500)
!2503 = !DILocation(line: 0, scope: !2474, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 42, column: 5, scope: !2500)
!2505 = !DILocation(line: 34, column: 3, scope: !2485, inlinedAt: !2504)
!2506 = !DILocation(line: 0, scope: !2485, inlinedAt: !2504)
!2507 = !DILocation(line: 42, column: 5, scope: !2500)
!2508 = !DILocation(line: 43, column: 1, scope: !2490)
!2509 = distinct !DISubprogram(name: "set_program_name", scope: !320, file: !320, line: 39, type: !118, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !2510)
!2510 = !{!2511, !2512, !2513}
!2511 = !DILocalVariable(name: "argv0", arg: 1, scope: !2509, file: !320, line: 39, type: !51)
!2512 = !DILocalVariable(name: "slash", scope: !2509, file: !320, line: 46, type: !51)
!2513 = !DILocalVariable(name: "base", scope: !2509, file: !320, line: 47, type: !51)
!2514 = !DILocation(line: 0, scope: !2509)
!2515 = !DILocation(line: 51, column: 13, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2509, file: !320, line: 51, column: 7)
!2517 = !DILocation(line: 51, column: 7, scope: !2509)
!2518 = !DILocation(line: 55, column: 14, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2516, file: !320, line: 52, column: 5)
!2520 = !DILocation(line: 54, column: 7, scope: !2519)
!2521 = !DILocation(line: 56, column: 7, scope: !2519)
!2522 = !DILocation(line: 59, column: 11, scope: !2509)
!2523 = !DILocation(line: 60, column: 17, scope: !2509)
!2524 = !DILocation(line: 60, column: 11, scope: !2509)
!2525 = !DILocation(line: 61, column: 12, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2509, file: !320, line: 61, column: 7)
!2527 = !DILocation(line: 61, column: 20, scope: !2526)
!2528 = !DILocation(line: 61, column: 25, scope: !2526)
!2529 = !DILocation(line: 61, column: 42, scope: !2526)
!2530 = !DILocation(line: 61, column: 28, scope: !2526)
!2531 = !DILocation(line: 61, column: 61, scope: !2526)
!2532 = !DILocation(line: 61, column: 7, scope: !2509)
!2533 = !DILocation(line: 64, column: 11, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !320, line: 64, column: 11)
!2535 = distinct !DILexicalBlock(scope: !2526, file: !320, line: 62, column: 5)
!2536 = !DILocation(line: 64, column: 36, scope: !2534)
!2537 = !DILocation(line: 64, column: 11, scope: !2535)
!2538 = !DILocation(line: 66, column: 24, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2534, file: !320, line: 65, column: 9)
!2540 = !DILocation(line: 70, column: 41, scope: !2539)
!2541 = !DILocation(line: 72, column: 9, scope: !2539)
!2542 = !DILocation(line: 84, column: 16, scope: !2509)
!2543 = !DILocation(line: 90, column: 27, scope: !2509)
!2544 = !DILocation(line: 92, column: 1, scope: !2509)
!2545 = distinct !DISubprogram(name: "clone_quoting_options", scope: !361, file: !361, line: 122, type: !2546, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2549)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!2548, !2548}
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!2549 = !{!2550, !2551, !2552}
!2550 = !DILocalVariable(name: "o", arg: 1, scope: !2545, file: !361, line: 122, type: !2548)
!2551 = !DILocalVariable(name: "e", scope: !2545, file: !361, line: 124, type: !53)
!2552 = !DILocalVariable(name: "p", scope: !2545, file: !361, line: 125, type: !2548)
!2553 = !DILocation(line: 0, scope: !2545)
!2554 = !DILocation(line: 124, column: 11, scope: !2545)
!2555 = !DILocation(line: 125, column: 40, scope: !2545)
!2556 = !DILocation(line: 125, column: 31, scope: !2545)
!2557 = !DILocation(line: 127, column: 9, scope: !2545)
!2558 = !DILocation(line: 128, column: 3, scope: !2545)
!2559 = distinct !DISubprogram(name: "get_quoting_style", scope: !361, file: !361, line: 133, type: !2560, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2562)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!5, !377}
!2562 = !{!2563}
!2563 = !DILocalVariable(name: "o", arg: 1, scope: !2559, file: !361, line: 133, type: !377)
!2564 = !DILocation(line: 0, scope: !2559)
!2565 = !DILocation(line: 135, column: 11, scope: !2559)
!2566 = !DILocation(line: 135, column: 46, scope: !2559)
!2567 = !{!2568, !1235, i64 0}
!2568 = !{!"quoting_options", !1235, i64 0, !1315, i64 4, !1235, i64 8, !1234, i64 40, !1234, i64 48}
!2569 = !DILocation(line: 135, column: 3, scope: !2559)
!2570 = distinct !DISubprogram(name: "set_quoting_style", scope: !361, file: !361, line: 141, type: !2571, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2573)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{null, !2548, !5}
!2573 = !{!2574, !2575}
!2574 = !DILocalVariable(name: "o", arg: 1, scope: !2570, file: !361, line: 141, type: !2548)
!2575 = !DILocalVariable(name: "s", arg: 2, scope: !2570, file: !361, line: 141, type: !5)
!2576 = !DILocation(line: 0, scope: !2570)
!2577 = !DILocation(line: 143, column: 4, scope: !2570)
!2578 = !DILocation(line: 143, column: 39, scope: !2570)
!2579 = !DILocation(line: 143, column: 45, scope: !2570)
!2580 = !DILocation(line: 144, column: 1, scope: !2570)
!2581 = distinct !DISubprogram(name: "set_char_quoting", scope: !361, file: !361, line: 152, type: !2582, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2584)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!53, !2548, !50, !53}
!2584 = !{!2585, !2586, !2587, !2588, !2589, !2591, !2592}
!2585 = !DILocalVariable(name: "o", arg: 1, scope: !2581, file: !361, line: 152, type: !2548)
!2586 = !DILocalVariable(name: "c", arg: 2, scope: !2581, file: !361, line: 152, type: !50)
!2587 = !DILocalVariable(name: "i", arg: 3, scope: !2581, file: !361, line: 152, type: !53)
!2588 = !DILocalVariable(name: "uc", scope: !2581, file: !361, line: 154, type: !178)
!2589 = !DILocalVariable(name: "p", scope: !2581, file: !361, line: 155, type: !2590)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2591 = !DILocalVariable(name: "shift", scope: !2581, file: !361, line: 157, type: !53)
!2592 = !DILocalVariable(name: "r", scope: !2581, file: !361, line: 158, type: !53)
!2593 = !DILocation(line: 0, scope: !2581)
!2594 = !DILocation(line: 156, column: 6, scope: !2581)
!2595 = !DILocation(line: 156, column: 62, scope: !2581)
!2596 = !DILocation(line: 156, column: 57, scope: !2581)
!2597 = !DILocation(line: 157, column: 15, scope: !2581)
!2598 = !DILocation(line: 158, column: 12, scope: !2581)
!2599 = !DILocation(line: 158, column: 15, scope: !2581)
!2600 = !DILocation(line: 158, column: 25, scope: !2581)
!2601 = !DILocation(line: 159, column: 13, scope: !2581)
!2602 = !DILocation(line: 159, column: 18, scope: !2581)
!2603 = !DILocation(line: 159, column: 23, scope: !2581)
!2604 = !DILocation(line: 159, column: 6, scope: !2581)
!2605 = !DILocation(line: 160, column: 3, scope: !2581)
!2606 = distinct !DISubprogram(name: "set_quoting_flags", scope: !361, file: !361, line: 168, type: !2607, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2609)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!53, !2548, !53}
!2609 = !{!2610, !2611, !2612}
!2610 = !DILocalVariable(name: "o", arg: 1, scope: !2606, file: !361, line: 168, type: !2548)
!2611 = !DILocalVariable(name: "i", arg: 2, scope: !2606, file: !361, line: 168, type: !53)
!2612 = !DILocalVariable(name: "r", scope: !2606, file: !361, line: 170, type: !53)
!2613 = !DILocation(line: 0, scope: !2606)
!2614 = !DILocation(line: 171, column: 8, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2606, file: !361, line: 171, column: 7)
!2616 = !DILocation(line: 171, column: 7, scope: !2606)
!2617 = !DILocation(line: 173, column: 10, scope: !2606)
!2618 = !{!2568, !1315, i64 4}
!2619 = !DILocation(line: 174, column: 12, scope: !2606)
!2620 = !DILocation(line: 175, column: 3, scope: !2606)
!2621 = distinct !DISubprogram(name: "set_custom_quoting", scope: !361, file: !361, line: 179, type: !2622, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2624)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{null, !2548, !51, !51}
!2624 = !{!2625, !2626, !2627}
!2625 = !DILocalVariable(name: "o", arg: 1, scope: !2621, file: !361, line: 179, type: !2548)
!2626 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2621, file: !361, line: 180, type: !51)
!2627 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2621, file: !361, line: 180, type: !51)
!2628 = !DILocation(line: 0, scope: !2621)
!2629 = !DILocation(line: 182, column: 8, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2621, file: !361, line: 182, column: 7)
!2631 = !DILocation(line: 182, column: 7, scope: !2621)
!2632 = !DILocation(line: 184, column: 6, scope: !2621)
!2633 = !DILocation(line: 184, column: 12, scope: !2621)
!2634 = !DILocation(line: 185, column: 8, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2621, file: !361, line: 185, column: 7)
!2636 = !DILocation(line: 185, column: 23, scope: !2635)
!2637 = !DILocation(line: 185, column: 19, scope: !2635)
!2638 = !DILocation(line: 186, column: 5, scope: !2635)
!2639 = !DILocation(line: 187, column: 6, scope: !2621)
!2640 = !DILocation(line: 187, column: 17, scope: !2621)
!2641 = !{!2568, !1234, i64 40}
!2642 = !DILocation(line: 188, column: 6, scope: !2621)
!2643 = !DILocation(line: 188, column: 18, scope: !2621)
!2644 = !{!2568, !1234, i64 48}
!2645 = !DILocation(line: 189, column: 1, scope: !2621)
!2646 = distinct !DISubprogram(name: "quotearg_buffer", scope: !361, file: !361, line: 784, type: !2647, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2649)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!108, !49, !108, !51, !108, !377}
!2649 = !{!2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657}
!2650 = !DILocalVariable(name: "buffer", arg: 1, scope: !2646, file: !361, line: 784, type: !49)
!2651 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2646, file: !361, line: 784, type: !108)
!2652 = !DILocalVariable(name: "arg", arg: 3, scope: !2646, file: !361, line: 785, type: !51)
!2653 = !DILocalVariable(name: "argsize", arg: 4, scope: !2646, file: !361, line: 785, type: !108)
!2654 = !DILocalVariable(name: "o", arg: 5, scope: !2646, file: !361, line: 786, type: !377)
!2655 = !DILocalVariable(name: "p", scope: !2646, file: !361, line: 788, type: !377)
!2656 = !DILocalVariable(name: "e", scope: !2646, file: !361, line: 789, type: !53)
!2657 = !DILocalVariable(name: "r", scope: !2646, file: !361, line: 790, type: !108)
!2658 = !DILocation(line: 0, scope: !2646)
!2659 = !DILocation(line: 788, column: 37, scope: !2646)
!2660 = !DILocation(line: 789, column: 11, scope: !2646)
!2661 = !DILocation(line: 791, column: 43, scope: !2646)
!2662 = !DILocation(line: 791, column: 53, scope: !2646)
!2663 = !DILocation(line: 791, column: 60, scope: !2646)
!2664 = !DILocation(line: 792, column: 43, scope: !2646)
!2665 = !DILocation(line: 792, column: 58, scope: !2646)
!2666 = !DILocation(line: 790, column: 14, scope: !2646)
!2667 = !DILocation(line: 793, column: 9, scope: !2646)
!2668 = !DILocation(line: 794, column: 3, scope: !2646)
!2669 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !361, file: !361, line: 256, type: !2670, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2674)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!108, !49, !108, !51, !108, !5, !53, !2672, !51, !51}
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2674 = !{!2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2699, !2700, !2701, !2702, !2703, !2706, !2707, !2713, !2716, !2717, !2724, !2727, !2728, !2729, !2730, !2731, !2732}
!2675 = !DILocalVariable(name: "buffer", arg: 1, scope: !2669, file: !361, line: 256, type: !49)
!2676 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2669, file: !361, line: 256, type: !108)
!2677 = !DILocalVariable(name: "arg", arg: 3, scope: !2669, file: !361, line: 257, type: !51)
!2678 = !DILocalVariable(name: "argsize", arg: 4, scope: !2669, file: !361, line: 257, type: !108)
!2679 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2669, file: !361, line: 258, type: !5)
!2680 = !DILocalVariable(name: "flags", arg: 6, scope: !2669, file: !361, line: 258, type: !53)
!2681 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2669, file: !361, line: 259, type: !2672)
!2682 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2669, file: !361, line: 260, type: !51)
!2683 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2669, file: !361, line: 261, type: !51)
!2684 = !DILocalVariable(name: "i", scope: !2669, file: !361, line: 263, type: !108)
!2685 = !DILocalVariable(name: "len", scope: !2669, file: !361, line: 264, type: !108)
!2686 = !DILocalVariable(name: "orig_buffersize", scope: !2669, file: !361, line: 265, type: !108)
!2687 = !DILocalVariable(name: "quote_string", scope: !2669, file: !361, line: 266, type: !51)
!2688 = !DILocalVariable(name: "quote_string_len", scope: !2669, file: !361, line: 267, type: !108)
!2689 = !DILocalVariable(name: "backslash_escapes", scope: !2669, file: !361, line: 268, type: !188)
!2690 = !DILocalVariable(name: "unibyte_locale", scope: !2669, file: !361, line: 269, type: !188)
!2691 = !DILocalVariable(name: "elide_outer_quotes", scope: !2669, file: !361, line: 270, type: !188)
!2692 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2669, file: !361, line: 271, type: !188)
!2693 = !DILocalVariable(name: "encountered_single_quote", scope: !2669, file: !361, line: 272, type: !188)
!2694 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2669, file: !361, line: 273, type: !188)
!2695 = !DILocalVariable(name: "c", scope: !2696, file: !361, line: 402, type: !178)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !361, line: 401, column: 5)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !361, line: 400, column: 3)
!2698 = distinct !DILexicalBlock(scope: !2669, file: !361, line: 400, column: 3)
!2699 = !DILocalVariable(name: "esc", scope: !2696, file: !361, line: 403, type: !178)
!2700 = !DILocalVariable(name: "is_right_quote", scope: !2696, file: !361, line: 404, type: !188)
!2701 = !DILocalVariable(name: "escaping", scope: !2696, file: !361, line: 405, type: !188)
!2702 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2696, file: !361, line: 406, type: !188)
!2703 = !DILocalVariable(name: "m", scope: !2704, file: !361, line: 610, type: !108)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !361, line: 608, column: 11)
!2705 = distinct !DILexicalBlock(scope: !2696, file: !361, line: 426, column: 9)
!2706 = !DILocalVariable(name: "printable", scope: !2704, file: !361, line: 612, type: !188)
!2707 = !DILocalVariable(name: "mbstate", scope: !2708, file: !361, line: 621, type: !2710)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !361, line: 620, column: 15)
!2709 = distinct !DILexicalBlock(scope: !2704, file: !361, line: 614, column: 17)
!2710 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2711, line: 6, baseType: !2712)
!2711 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !401, line: 21, baseType: !400)
!2713 = !DILocalVariable(name: "w", scope: !2714, file: !361, line: 631, type: !2715)
!2714 = distinct !DILexicalBlock(scope: !2708, file: !361, line: 630, column: 19)
!2715 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !109, line: 74, baseType: !53)
!2716 = !DILocalVariable(name: "bytes", scope: !2714, file: !361, line: 632, type: !108)
!2717 = !DILocalVariable(name: "j", scope: !2718, file: !361, line: 657, type: !108)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !361, line: 656, column: 27)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !361, line: 654, column: 29)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !361, line: 649, column: 23)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !361, line: 641, column: 30)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !361, line: 636, column: 30)
!2723 = distinct !DILexicalBlock(scope: !2714, file: !361, line: 634, column: 25)
!2724 = !DILocalVariable(name: "ilim", scope: !2725, file: !361, line: 684, type: !108)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !361, line: 681, column: 15)
!2726 = distinct !DILexicalBlock(scope: !2704, file: !361, line: 680, column: 17)
!2727 = !DILabel(scope: !2669, name: "process_input", file: !361, line: 314)
!2728 = !DILabel(scope: !2705, name: "c_and_shell_escape", file: !361, line: 512)
!2729 = !DILabel(scope: !2705, name: "c_escape", file: !361, line: 517)
!2730 = !DILabel(scope: !2696, name: "store_escape", file: !361, line: 719)
!2731 = !DILabel(scope: !2696, name: "store_c", file: !361, line: 722)
!2732 = !DILabel(scope: !2669, name: "force_outer_quoting_style", file: !361, line: 763)
!2733 = !DILocation(line: 0, scope: !2669)
!2734 = !DILocation(line: 269, column: 25, scope: !2669)
!2735 = !DILocation(line: 269, column: 36, scope: !2669)
!2736 = !DILocation(line: 270, column: 8, scope: !2669)
!2737 = !DILocation(line: 0, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2705, file: !361, line: 526, column: 15)
!2739 = !DILocation(line: 0, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !361, line: 462, column: 19)
!2741 = distinct !DILexicalBlock(scope: !2705, file: !361, line: 455, column: 13)
!2742 = !DILocation(line: 0, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !361, line: 449, column: 20)
!2744 = distinct !DILexicalBlock(scope: !2705, file: !361, line: 428, column: 15)
!2745 = !DILocation(line: 0, scope: !2708)
!2746 = !DILocation(line: 0, scope: !2714)
!2747 = !DILocation(line: 0, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2696, file: !361, line: 712, column: 11)
!2749 = !DILocation(line: 273, column: 3, scope: !2669)
!2750 = !DILocation(line: 265, column: 10, scope: !2669)
!2751 = !DILocation(line: 266, column: 15, scope: !2669)
!2752 = !DILocation(line: 267, column: 10, scope: !2669)
!2753 = !DILocation(line: 268, column: 8, scope: !2669)
!2754 = !DILocation(line: 271, column: 8, scope: !2669)
!2755 = !DILocation(line: 272, column: 8, scope: !2669)
!2756 = !DILocation(line: 273, column: 8, scope: !2669)
!2757 = !DILocation(line: 314, column: 2, scope: !2669)
!2758 = !DILocation(line: 316, column: 3, scope: !2669)
!2759 = !DILocation(line: 323, column: 11, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2669, file: !361, line: 317, column: 5)
!2761 = !DILocation(line: 323, column: 12, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2760, file: !361, line: 323, column: 11)
!2763 = !DILocation(line: 324, column: 9, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !361, line: 324, column: 9)
!2765 = distinct !DILexicalBlock(scope: !2762, file: !361, line: 324, column: 9)
!2766 = !DILocation(line: 324, column: 9, scope: !2765)
!2767 = !DILocation(line: 362, column: 26, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !361, line: 340, column: 11)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !361, line: 339, column: 13)
!2770 = distinct !DILexicalBlock(scope: !2760, file: !361, line: 338, column: 7)
!2771 = !DILocation(line: 363, column: 27, scope: !2768)
!2772 = !DILocation(line: 364, column: 11, scope: !2768)
!2773 = !DILocation(line: 365, column: 14, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2770, file: !361, line: 365, column: 13)
!2775 = !DILocation(line: 365, column: 13, scope: !2770)
!2776 = !DILocation(line: 366, column: 43, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !361, line: 366, column: 11)
!2778 = distinct !DILexicalBlock(scope: !2774, file: !361, line: 366, column: 11)
!2779 = !DILocation(line: 366, column: 11, scope: !2778)
!2780 = !DILocation(line: 367, column: 13, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !361, line: 367, column: 13)
!2782 = distinct !DILexicalBlock(scope: !2777, file: !361, line: 367, column: 13)
!2783 = !DILocation(line: 367, column: 13, scope: !2782)
!2784 = !DILocation(line: 366, column: 70, scope: !2777)
!2785 = distinct !{!2785, !2779, !2786}
!2786 = !DILocation(line: 367, column: 13, scope: !2778)
!2787 = !DILocation(line: 264, column: 10, scope: !2669)
!2788 = !DILocation(line: 370, column: 28, scope: !2770)
!2789 = !DILocation(line: 372, column: 7, scope: !2760)
!2790 = !DILocation(line: 376, column: 7, scope: !2760)
!2791 = !DILocation(line: 379, column: 7, scope: !2760)
!2792 = !DILocation(line: 381, column: 12, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2760, file: !361, line: 381, column: 11)
!2794 = !DILocation(line: 381, column: 11, scope: !2760)
!2795 = !DILocation(line: 386, column: 12, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2760, file: !361, line: 386, column: 11)
!2797 = !DILocation(line: 386, column: 11, scope: !2760)
!2798 = !DILocation(line: 387, column: 9, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !361, line: 387, column: 9)
!2800 = distinct !DILexicalBlock(scope: !2796, file: !361, line: 387, column: 9)
!2801 = !DILocation(line: 387, column: 9, scope: !2800)
!2802 = !DILocation(line: 394, column: 7, scope: !2760)
!2803 = !DILocation(line: 397, column: 7, scope: !2760)
!2804 = !DILocation(line: 0, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2696, file: !361, line: 408, column: 11)
!2806 = !DILocation(line: 0, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !361, line: 419, column: 15)
!2808 = distinct !DILexicalBlock(scope: !2805, file: !361, line: 418, column: 9)
!2809 = !DILocation(line: 0, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2705, file: !361, line: 556, column: 15)
!2811 = !DILocation(line: 0, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2705, file: !361, line: 548, column: 15)
!2813 = !DILocation(line: 0, scope: !2719)
!2814 = !DILocation(line: 0, scope: !2726)
!2815 = !DILocation(line: 0, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2705, file: !361, line: 509, column: 15)
!2817 = !DILocation(line: 400, column: 8, scope: !2698)
!2818 = !DILocation(line: 0, scope: !2698)
!2819 = !DILocation(line: 400, column: 27, scope: !2697)
!2820 = !DILocation(line: 400, column: 19, scope: !2697)
!2821 = !DILocation(line: 400, column: 41, scope: !2697)
!2822 = !DILocation(line: 400, column: 48, scope: !2697)
!2823 = !DILocation(line: 400, column: 3, scope: !2698)
!2824 = !DILocation(line: 400, column: 60, scope: !2697)
!2825 = !DILocation(line: 0, scope: !2696)
!2826 = !DILocation(line: 409, column: 11, scope: !2805)
!2827 = !DILocation(line: 411, column: 17, scope: !2805)
!2828 = !DILocation(line: 412, column: 39, scope: !2805)
!2829 = !DILocation(line: 416, column: 32, scope: !2805)
!2830 = !DILocation(line: 412, column: 19, scope: !2805)
!2831 = !DILocation(line: 412, column: 15, scope: !2805)
!2832 = !DILocation(line: 417, column: 11, scope: !2805)
!2833 = !DILocation(line: 417, column: 26, scope: !2805)
!2834 = !DILocation(line: 417, column: 14, scope: !2805)
!2835 = !DILocation(line: 417, column: 63, scope: !2805)
!2836 = !DILocation(line: 408, column: 11, scope: !2696)
!2837 = !DILocation(line: 424, column: 11, scope: !2696)
!2838 = !DILocation(line: 425, column: 7, scope: !2696)
!2839 = !DILocation(line: 428, column: 15, scope: !2705)
!2840 = !DILocation(line: 430, column: 15, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !361, line: 430, column: 15)
!2842 = distinct !DILexicalBlock(scope: !2744, file: !361, line: 429, column: 13)
!2843 = !DILocation(line: 430, column: 15, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2841, file: !361, line: 430, column: 15)
!2845 = !DILocation(line: 430, column: 15, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !361, line: 430, column: 15)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !361, line: 430, column: 15)
!2848 = distinct !DILexicalBlock(scope: !2844, file: !361, line: 430, column: 15)
!2849 = !DILocation(line: 430, column: 15, scope: !2847)
!2850 = !DILocation(line: 430, column: 15, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !361, line: 430, column: 15)
!2852 = distinct !DILexicalBlock(scope: !2848, file: !361, line: 430, column: 15)
!2853 = !DILocation(line: 430, column: 15, scope: !2852)
!2854 = !DILocation(line: 430, column: 15, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !361, line: 430, column: 15)
!2856 = distinct !DILexicalBlock(scope: !2848, file: !361, line: 430, column: 15)
!2857 = !DILocation(line: 430, column: 15, scope: !2856)
!2858 = !DILocation(line: 430, column: 15, scope: !2848)
!2859 = !DILocation(line: 430, column: 15, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !361, line: 430, column: 15)
!2861 = distinct !DILexicalBlock(scope: !2841, file: !361, line: 430, column: 15)
!2862 = !DILocation(line: 430, column: 15, scope: !2861)
!2863 = !DILocation(line: 438, column: 19, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2842, file: !361, line: 437, column: 19)
!2865 = !DILocation(line: 438, column: 24, scope: !2864)
!2866 = !DILocation(line: 438, column: 28, scope: !2864)
!2867 = !DILocation(line: 438, column: 38, scope: !2864)
!2868 = !DILocation(line: 438, column: 48, scope: !2864)
!2869 = !DILocation(line: 438, column: 59, scope: !2864)
!2870 = !DILocation(line: 440, column: 19, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !361, line: 440, column: 19)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !361, line: 440, column: 19)
!2873 = distinct !DILexicalBlock(scope: !2864, file: !361, line: 439, column: 17)
!2874 = !DILocation(line: 440, column: 19, scope: !2872)
!2875 = !DILocation(line: 441, column: 19, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !361, line: 441, column: 19)
!2877 = distinct !DILexicalBlock(scope: !2873, file: !361, line: 441, column: 19)
!2878 = !DILocation(line: 441, column: 19, scope: !2877)
!2879 = !DILocation(line: 442, column: 17, scope: !2873)
!2880 = !DILocation(line: 449, column: 20, scope: !2744)
!2881 = !DILocation(line: 454, column: 11, scope: !2705)
!2882 = !DILocation(line: 457, column: 19, scope: !2741)
!2883 = !DILocation(line: 463, column: 19, scope: !2740)
!2884 = !DILocation(line: 463, column: 24, scope: !2740)
!2885 = !DILocation(line: 463, column: 28, scope: !2740)
!2886 = !DILocation(line: 463, column: 38, scope: !2740)
!2887 = !DILocation(line: 463, column: 47, scope: !2740)
!2888 = !DILocation(line: 463, column: 41, scope: !2740)
!2889 = !DILocation(line: 463, column: 52, scope: !2740)
!2890 = !DILocation(line: 462, column: 19, scope: !2741)
!2891 = !DILocation(line: 464, column: 25, scope: !2740)
!2892 = !DILocation(line: 464, column: 17, scope: !2740)
!2893 = !DILocation(line: 471, column: 25, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2740, file: !361, line: 465, column: 19)
!2895 = !DILocation(line: 475, column: 21, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !361, line: 475, column: 21)
!2897 = distinct !DILexicalBlock(scope: !2894, file: !361, line: 475, column: 21)
!2898 = !DILocation(line: 475, column: 21, scope: !2897)
!2899 = !DILocation(line: 476, column: 21, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !361, line: 476, column: 21)
!2901 = distinct !DILexicalBlock(scope: !2894, file: !361, line: 476, column: 21)
!2902 = !DILocation(line: 476, column: 21, scope: !2901)
!2903 = !DILocation(line: 477, column: 21, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !361, line: 477, column: 21)
!2905 = distinct !DILexicalBlock(scope: !2894, file: !361, line: 477, column: 21)
!2906 = !DILocation(line: 477, column: 21, scope: !2905)
!2907 = !DILocation(line: 478, column: 21, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !361, line: 478, column: 21)
!2909 = distinct !DILexicalBlock(scope: !2894, file: !361, line: 478, column: 21)
!2910 = !DILocation(line: 478, column: 21, scope: !2909)
!2911 = !DILocation(line: 479, column: 21, scope: !2894)
!2912 = !DILocation(line: 492, column: 31, scope: !2705)
!2913 = !DILocation(line: 493, column: 31, scope: !2705)
!2914 = !DILocation(line: 495, column: 31, scope: !2705)
!2915 = !DILocation(line: 496, column: 31, scope: !2705)
!2916 = !DILocation(line: 497, column: 31, scope: !2705)
!2917 = !DILocation(line: 500, column: 15, scope: !2705)
!2918 = !DILocation(line: 502, column: 19, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !361, line: 501, column: 13)
!2920 = distinct !DILexicalBlock(scope: !2705, file: !361, line: 500, column: 15)
!2921 = !DILocation(line: 509, column: 33, scope: !2816)
!2922 = !DILocation(line: 0, scope: !2705)
!2923 = !DILocation(line: 512, column: 9, scope: !2705)
!2924 = !DILocation(line: 514, column: 15, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2705, file: !361, line: 513, column: 15)
!2926 = !DILocation(line: 517, column: 9, scope: !2705)
!2927 = !DILocation(line: 518, column: 15, scope: !2705)
!2928 = !DILocation(line: 526, column: 15, scope: !2705)
!2929 = !DILocation(line: 526, column: 40, scope: !2738)
!2930 = !DILocation(line: 526, column: 47, scope: !2738)
!2931 = !DILocation(line: 526, column: 18, scope: !2738)
!2932 = !DILocation(line: 530, column: 17, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2705, file: !361, line: 530, column: 15)
!2934 = !DILocation(line: 530, column: 15, scope: !2705)
!2935 = !DILocation(line: 535, column: 11, scope: !2705)
!2936 = !DILocation(line: 549, column: 15, scope: !2812)
!2937 = !DILocation(line: 556, column: 15, scope: !2705)
!2938 = !DILocation(line: 558, column: 19, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2810, file: !361, line: 557, column: 13)
!2940 = !DILocation(line: 561, column: 19, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2939, file: !361, line: 561, column: 19)
!2942 = !DILocation(line: 561, column: 35, scope: !2941)
!2943 = !DILocation(line: 561, column: 30, scope: !2941)
!2944 = !DILocation(line: 570, column: 15, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !361, line: 570, column: 15)
!2946 = distinct !DILexicalBlock(scope: !2939, file: !361, line: 570, column: 15)
!2947 = !DILocation(line: 570, column: 15, scope: !2946)
!2948 = !DILocation(line: 571, column: 15, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !361, line: 571, column: 15)
!2950 = distinct !DILexicalBlock(scope: !2939, file: !361, line: 571, column: 15)
!2951 = !DILocation(line: 571, column: 15, scope: !2950)
!2952 = !DILocation(line: 572, column: 15, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !361, line: 572, column: 15)
!2954 = distinct !DILexicalBlock(scope: !2939, file: !361, line: 572, column: 15)
!2955 = !DILocation(line: 572, column: 15, scope: !2954)
!2956 = !DILocation(line: 574, column: 13, scope: !2939)
!2957 = !DILocation(line: 614, column: 17, scope: !2704)
!2958 = !DILocation(line: 0, scope: !2704)
!2959 = !DILocation(line: 617, column: 29, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2709, file: !361, line: 615, column: 15)
!2961 = !DILocation(line: 617, column: 27, scope: !2960)
!2962 = !DILocation(line: 618, column: 15, scope: !2960)
!2963 = !DILocation(line: 621, column: 17, scope: !2708)
!2964 = !DILocation(line: 621, column: 27, scope: !2708)
!2965 = !DILocalVariable(name: "__dest", arg: 1, scope: !2966, file: !2395, line: 59, type: !106)
!2966 = distinct !DISubprogram(name: "memset", scope: !2395, file: !2395, line: 59, type: !2967, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!106, !106, !53, !108}
!2969 = !{!2965, !2970, !2971}
!2970 = !DILocalVariable(name: "__ch", arg: 2, scope: !2966, file: !2395, line: 59, type: !53)
!2971 = !DILocalVariable(name: "__len", arg: 3, scope: !2966, file: !2395, line: 59, type: !108)
!2972 = !DILocation(line: 0, scope: !2966, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 622, column: 17, scope: !2708)
!2974 = !DILocation(line: 71, column: 10, scope: !2966, inlinedAt: !2973)
!2975 = !DILocation(line: 626, column: 29, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2708, file: !361, line: 626, column: 21)
!2977 = !DILocation(line: 626, column: 21, scope: !2708)
!2978 = !DILocation(line: 627, column: 29, scope: !2976)
!2979 = !DILocation(line: 627, column: 19, scope: !2976)
!2980 = !DILocation(line: 629, column: 17, scope: !2708)
!2981 = !DILocation(line: 624, column: 19, scope: !2708)
!2982 = !DILocation(line: 625, column: 27, scope: !2708)
!2983 = !DILocation(line: 631, column: 21, scope: !2714)
!2984 = !DILocation(line: 632, column: 56, scope: !2714)
!2985 = !DILocation(line: 632, column: 50, scope: !2714)
!2986 = !DILocation(line: 633, column: 53, scope: !2714)
!2987 = !DILocation(line: 632, column: 36, scope: !2714)
!2988 = !DILocation(line: 634, column: 25, scope: !2714)
!2989 = !DILocation(line: 644, column: 38, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2721, file: !361, line: 642, column: 23)
!2991 = !DILocation(line: 644, column: 48, scope: !2990)
!2992 = !DILocation(line: 644, column: 25, scope: !2990)
!2993 = !DILocation(line: 644, column: 51, scope: !2990)
!2994 = !DILocation(line: 645, column: 28, scope: !2990)
!2995 = !DILocation(line: 644, column: 34, scope: !2990)
!2996 = distinct !{!2996, !2992, !2994}
!2997 = !DILocation(line: 658, column: 43, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !361, line: 658, column: 29)
!2999 = distinct !DILexicalBlock(scope: !2718, file: !361, line: 658, column: 29)
!3000 = !DILocation(line: 655, column: 29, scope: !2719)
!3001 = !DILocation(line: 0, scope: !2718)
!3002 = !DILocation(line: 659, column: 49, scope: !2998)
!3003 = !DILocation(line: 659, column: 39, scope: !2998)
!3004 = !DILocation(line: 659, column: 31, scope: !2998)
!3005 = !DILocation(line: 658, column: 53, scope: !2998)
!3006 = !DILocation(line: 658, column: 29, scope: !2999)
!3007 = distinct !{!3007, !3006, !3008}
!3008 = !DILocation(line: 667, column: 33, scope: !2999)
!3009 = !DILocation(line: 674, column: 19, scope: !2708)
!3010 = !DILocation(line: 670, column: 41, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2720, file: !361, line: 670, column: 29)
!3012 = !DILocation(line: 670, column: 31, scope: !3011)
!3013 = !DILocation(line: 670, column: 29, scope: !2720)
!3014 = !DILocation(line: 672, column: 27, scope: !2720)
!3015 = !DILocation(line: 675, column: 26, scope: !2708)
!3016 = !DILocation(line: 675, column: 24, scope: !2708)
!3017 = !DILocation(line: 674, column: 19, scope: !2714)
!3018 = distinct !{!3018, !2980, !3019}
!3019 = !DILocation(line: 675, column: 44, scope: !2708)
!3020 = !DILocation(line: 676, column: 15, scope: !2709)
!3021 = !DILocation(line: 0, scope: !2709)
!3022 = !DILocation(line: 678, column: 40, scope: !2704)
!3023 = !DILocation(line: 680, column: 19, scope: !2726)
!3024 = !DILocation(line: 680, column: 45, scope: !2726)
!3025 = !DILocation(line: 680, column: 23, scope: !2726)
!3026 = !DILocation(line: 684, column: 33, scope: !2725)
!3027 = !DILocation(line: 0, scope: !2725)
!3028 = !DILocation(line: 686, column: 17, scope: !2725)
!3029 = !DILocation(line: 405, column: 12, scope: !2696)
!3030 = !DILocation(line: 688, column: 43, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3032, file: !361, line: 688, column: 25)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !361, line: 687, column: 19)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !361, line: 686, column: 17)
!3034 = distinct !DILexicalBlock(scope: !2725, file: !361, line: 686, column: 17)
!3035 = !DILocation(line: 690, column: 25, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !361, line: 690, column: 25)
!3037 = distinct !DILexicalBlock(scope: !3031, file: !361, line: 689, column: 23)
!3038 = !DILocation(line: 690, column: 25, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3036, file: !361, line: 690, column: 25)
!3040 = !DILocation(line: 690, column: 25, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !361, line: 690, column: 25)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !361, line: 690, column: 25)
!3043 = distinct !DILexicalBlock(scope: !3039, file: !361, line: 690, column: 25)
!3044 = !DILocation(line: 690, column: 25, scope: !3042)
!3045 = !DILocation(line: 690, column: 25, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !361, line: 690, column: 25)
!3047 = distinct !DILexicalBlock(scope: !3043, file: !361, line: 690, column: 25)
!3048 = !DILocation(line: 690, column: 25, scope: !3047)
!3049 = !DILocation(line: 690, column: 25, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !361, line: 690, column: 25)
!3051 = distinct !DILexicalBlock(scope: !3043, file: !361, line: 690, column: 25)
!3052 = !DILocation(line: 690, column: 25, scope: !3051)
!3053 = !DILocation(line: 690, column: 25, scope: !3043)
!3054 = !DILocation(line: 690, column: 25, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !361, line: 690, column: 25)
!3056 = distinct !DILexicalBlock(scope: !3036, file: !361, line: 690, column: 25)
!3057 = !DILocation(line: 690, column: 25, scope: !3056)
!3058 = !DILocation(line: 691, column: 25, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3060, file: !361, line: 691, column: 25)
!3060 = distinct !DILexicalBlock(scope: !3037, file: !361, line: 691, column: 25)
!3061 = !DILocation(line: 691, column: 25, scope: !3060)
!3062 = !DILocation(line: 692, column: 25, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !361, line: 692, column: 25)
!3064 = distinct !DILexicalBlock(scope: !3037, file: !361, line: 692, column: 25)
!3065 = !DILocation(line: 692, column: 25, scope: !3064)
!3066 = !DILocation(line: 693, column: 38, scope: !3037)
!3067 = !DILocation(line: 693, column: 33, scope: !3037)
!3068 = !DILocation(line: 694, column: 23, scope: !3037)
!3069 = !DILocation(line: 695, column: 30, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3031, file: !361, line: 695, column: 30)
!3071 = !DILocation(line: 695, column: 30, scope: !3031)
!3072 = !DILocation(line: 697, column: 25, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !361, line: 697, column: 25)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !361, line: 697, column: 25)
!3075 = distinct !DILexicalBlock(scope: !3070, file: !361, line: 696, column: 23)
!3076 = !DILocation(line: 697, column: 25, scope: !3074)
!3077 = !DILocation(line: 699, column: 23, scope: !3075)
!3078 = !DILocation(line: 700, column: 35, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3032, file: !361, line: 700, column: 25)
!3080 = !DILocation(line: 700, column: 30, scope: !3079)
!3081 = !DILocation(line: 700, column: 25, scope: !3032)
!3082 = !DILocation(line: 702, column: 21, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !361, line: 702, column: 21)
!3084 = distinct !DILexicalBlock(scope: !3032, file: !361, line: 702, column: 21)
!3085 = !DILocation(line: 702, column: 21, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3087, file: !361, line: 702, column: 21)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !361, line: 702, column: 21)
!3088 = distinct !DILexicalBlock(scope: !3083, file: !361, line: 702, column: 21)
!3089 = !DILocation(line: 702, column: 21, scope: !3087)
!3090 = !DILocation(line: 702, column: 21, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !361, line: 702, column: 21)
!3092 = distinct !DILexicalBlock(scope: !3088, file: !361, line: 702, column: 21)
!3093 = !DILocation(line: 702, column: 21, scope: !3092)
!3094 = !DILocation(line: 702, column: 21, scope: !3088)
!3095 = !DILocation(line: 0, scope: !3032)
!3096 = !DILocation(line: 703, column: 21, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !361, line: 703, column: 21)
!3098 = distinct !DILexicalBlock(scope: !3032, file: !361, line: 703, column: 21)
!3099 = !DILocation(line: 703, column: 21, scope: !3098)
!3100 = !DILocation(line: 704, column: 25, scope: !3032)
!3101 = !DILocation(line: 686, column: 17, scope: !3033)
!3102 = distinct !{!3102, !3103, !3104}
!3103 = !DILocation(line: 686, column: 17, scope: !3034)
!3104 = !DILocation(line: 705, column: 19, scope: !3034)
!3105 = !DILocation(line: 416, column: 30, scope: !2805)
!3106 = !DILocation(line: 712, column: 34, scope: !2748)
!3107 = !DILocation(line: 715, column: 35, scope: !2748)
!3108 = !DILocation(line: 715, column: 17, scope: !2748)
!3109 = !DILocation(line: 715, column: 47, scope: !2748)
!3110 = !DILocation(line: 715, column: 65, scope: !2748)
!3111 = !DILocation(line: 716, column: 15, scope: !2748)
!3112 = !DILocation(line: 716, column: 11, scope: !2748)
!3113 = !DILocation(line: 712, column: 11, scope: !2696)
!3114 = !DILocation(line: 400, column: 10, scope: !2698)
!3115 = !DILocation(line: 719, column: 5, scope: !2696)
!3116 = !DILocation(line: 720, column: 7, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !2696, file: !361, line: 720, column: 7)
!3118 = !DILocation(line: 720, column: 7, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3117, file: !361, line: 720, column: 7)
!3120 = !DILocation(line: 720, column: 7, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !361, line: 720, column: 7)
!3122 = distinct !DILexicalBlock(scope: !3123, file: !361, line: 720, column: 7)
!3123 = distinct !DILexicalBlock(scope: !3119, file: !361, line: 720, column: 7)
!3124 = !DILocation(line: 720, column: 7, scope: !3122)
!3125 = !DILocation(line: 720, column: 7, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !361, line: 720, column: 7)
!3127 = distinct !DILexicalBlock(scope: !3123, file: !361, line: 720, column: 7)
!3128 = !DILocation(line: 720, column: 7, scope: !3127)
!3129 = !DILocation(line: 720, column: 7, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !361, line: 720, column: 7)
!3131 = distinct !DILexicalBlock(scope: !3123, file: !361, line: 720, column: 7)
!3132 = !DILocation(line: 720, column: 7, scope: !3131)
!3133 = !DILocation(line: 720, column: 7, scope: !3123)
!3134 = !DILocation(line: 720, column: 7, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !361, line: 720, column: 7)
!3136 = distinct !DILexicalBlock(scope: !3117, file: !361, line: 720, column: 7)
!3137 = !DILocation(line: 720, column: 7, scope: !3136)
!3138 = !DILocation(line: 722, column: 5, scope: !2696)
!3139 = !DILocation(line: 723, column: 7, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !361, line: 723, column: 7)
!3141 = distinct !DILexicalBlock(scope: !2696, file: !361, line: 723, column: 7)
!3142 = !DILocation(line: 424, column: 9, scope: !2696)
!3143 = !DILocation(line: 723, column: 7, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !361, line: 723, column: 7)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !361, line: 723, column: 7)
!3146 = distinct !DILexicalBlock(scope: !3140, file: !361, line: 723, column: 7)
!3147 = !DILocation(line: 723, column: 7, scope: !3145)
!3148 = !DILocation(line: 723, column: 7, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !361, line: 723, column: 7)
!3150 = distinct !DILexicalBlock(scope: !3146, file: !361, line: 723, column: 7)
!3151 = !DILocation(line: 723, column: 7, scope: !3150)
!3152 = !DILocation(line: 723, column: 7, scope: !3146)
!3153 = !DILocation(line: 724, column: 7, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !361, line: 724, column: 7)
!3155 = distinct !DILexicalBlock(scope: !2696, file: !361, line: 724, column: 7)
!3156 = !DILocation(line: 724, column: 7, scope: !3155)
!3157 = !DILocation(line: 726, column: 13, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !2696, file: !361, line: 726, column: 11)
!3159 = !DILocation(line: 726, column: 11, scope: !2696)
!3160 = !DILocation(line: 728, column: 5, scope: !2697)
!3161 = !DILocation(line: 400, column: 75, scope: !2697)
!3162 = !DILocation(line: 400, column: 3, scope: !2697)
!3163 = distinct !{!3163, !2823, !3164}
!3164 = !DILocation(line: 728, column: 5, scope: !2698)
!3165 = !DILocation(line: 730, column: 11, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !2669, file: !361, line: 730, column: 7)
!3167 = !DILocation(line: 730, column: 16, scope: !3166)
!3168 = !DILocation(line: 738, column: 51, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !2669, file: !361, line: 738, column: 7)
!3170 = !DILocation(line: 739, column: 10, scope: !3169)
!3171 = !DILocation(line: 741, column: 11, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3173, file: !361, line: 741, column: 11)
!3173 = distinct !DILexicalBlock(scope: !3169, file: !361, line: 740, column: 5)
!3174 = !DILocation(line: 741, column: 11, scope: !3173)
!3175 = !DILocation(line: 742, column: 16, scope: !3172)
!3176 = !DILocation(line: 742, column: 9, scope: !3172)
!3177 = !DILocation(line: 746, column: 18, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3172, file: !361, line: 746, column: 16)
!3179 = !DILocation(line: 746, column: 32, scope: !3178)
!3180 = !DILocation(line: 746, column: 29, scope: !3178)
!3181 = !DILocation(line: 755, column: 7, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !2669, file: !361, line: 755, column: 7)
!3183 = !DILocation(line: 755, column: 20, scope: !3182)
!3184 = !DILocation(line: 756, column: 12, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !361, line: 756, column: 5)
!3186 = distinct !DILexicalBlock(scope: !3182, file: !361, line: 756, column: 5)
!3187 = !DILocation(line: 756, column: 5, scope: !3186)
!3188 = !DILocation(line: 757, column: 7, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !361, line: 757, column: 7)
!3190 = distinct !DILexicalBlock(scope: !3185, file: !361, line: 757, column: 7)
!3191 = !DILocation(line: 757, column: 7, scope: !3190)
!3192 = !DILocation(line: 756, column: 39, scope: !3185)
!3193 = distinct !{!3193, !3187, !3194}
!3194 = !DILocation(line: 757, column: 7, scope: !3186)
!3195 = !DILocation(line: 759, column: 11, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !2669, file: !361, line: 759, column: 7)
!3197 = !DILocation(line: 759, column: 7, scope: !2669)
!3198 = !DILocation(line: 760, column: 5, scope: !3196)
!3199 = !DILocation(line: 760, column: 17, scope: !3196)
!3200 = !DILocation(line: 763, column: 2, scope: !2669)
!3201 = !DILocation(line: 766, column: 51, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !2669, file: !361, line: 766, column: 7)
!3203 = !DILocation(line: 766, column: 21, scope: !3202)
!3204 = !DILocation(line: 770, column: 42, scope: !2669)
!3205 = !DILocation(line: 768, column: 10, scope: !2669)
!3206 = !DILocation(line: 768, column: 3, scope: !2669)
!3207 = !DILocation(line: 772, column: 1, scope: !2669)
!3208 = distinct !DISubprogram(name: "gettext_quote", scope: !361, file: !361, line: 207, type: !3209, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3211)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!51, !51, !5}
!3211 = !{!3212, !3213, !3214, !3215}
!3212 = !DILocalVariable(name: "msgid", arg: 1, scope: !3208, file: !361, line: 207, type: !51)
!3213 = !DILocalVariable(name: "s", arg: 2, scope: !3208, file: !361, line: 207, type: !5)
!3214 = !DILocalVariable(name: "translation", scope: !3208, file: !361, line: 209, type: !51)
!3215 = !DILocalVariable(name: "locale_code", scope: !3208, file: !361, line: 210, type: !51)
!3216 = !DILocation(line: 0, scope: !3208)
!3217 = !DILocation(line: 209, column: 29, scope: !3208)
!3218 = !DILocation(line: 212, column: 19, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3208, file: !361, line: 212, column: 7)
!3220 = !DILocation(line: 212, column: 7, scope: !3208)
!3221 = !DILocation(line: 233, column: 17, scope: !3208)
!3222 = !DILocalVariable(name: "s1", arg: 1, scope: !3223, file: !3224, line: 160, type: !51)
!3223 = distinct !DISubprogram(name: "strcaseeq0", scope: !3224, file: !3224, line: 160, type: !3225, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3227)
!3224 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!53, !51, !51, !50, !50, !50, !50, !50, !50, !50, !50, !50}
!3227 = !{!3222, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237}
!3228 = !DILocalVariable(name: "s2", arg: 2, scope: !3223, file: !3224, line: 160, type: !51)
!3229 = !DILocalVariable(name: "s20", arg: 3, scope: !3223, file: !3224, line: 160, type: !50)
!3230 = !DILocalVariable(name: "s21", arg: 4, scope: !3223, file: !3224, line: 160, type: !50)
!3231 = !DILocalVariable(name: "s22", arg: 5, scope: !3223, file: !3224, line: 160, type: !50)
!3232 = !DILocalVariable(name: "s23", arg: 6, scope: !3223, file: !3224, line: 160, type: !50)
!3233 = !DILocalVariable(name: "s24", arg: 7, scope: !3223, file: !3224, line: 160, type: !50)
!3234 = !DILocalVariable(name: "s25", arg: 8, scope: !3223, file: !3224, line: 160, type: !50)
!3235 = !DILocalVariable(name: "s26", arg: 9, scope: !3223, file: !3224, line: 160, type: !50)
!3236 = !DILocalVariable(name: "s27", arg: 10, scope: !3223, file: !3224, line: 160, type: !50)
!3237 = !DILocalVariable(name: "s28", arg: 11, scope: !3223, file: !3224, line: 160, type: !50)
!3238 = !DILocation(line: 0, scope: !3223, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 234, column: 7, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3208, file: !361, line: 234, column: 7)
!3241 = !DILocation(line: 162, column: 7, scope: !3242, inlinedAt: !3239)
!3242 = distinct !DILexicalBlock(scope: !3223, file: !3224, line: 162, column: 7)
!3243 = !DILocalVariable(name: "s1", arg: 1, scope: !3244, file: !3224, line: 146, type: !51)
!3244 = distinct !DISubprogram(name: "strcaseeq1", scope: !3224, file: !3224, line: 146, type: !3245, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3247)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!53, !51, !51, !50, !50, !50, !50, !50, !50, !50, !50}
!3247 = !{!3243, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256}
!3248 = !DILocalVariable(name: "s2", arg: 2, scope: !3244, file: !3224, line: 146, type: !51)
!3249 = !DILocalVariable(name: "s21", arg: 3, scope: !3244, file: !3224, line: 146, type: !50)
!3250 = !DILocalVariable(name: "s22", arg: 4, scope: !3244, file: !3224, line: 146, type: !50)
!3251 = !DILocalVariable(name: "s23", arg: 5, scope: !3244, file: !3224, line: 146, type: !50)
!3252 = !DILocalVariable(name: "s24", arg: 6, scope: !3244, file: !3224, line: 146, type: !50)
!3253 = !DILocalVariable(name: "s25", arg: 7, scope: !3244, file: !3224, line: 146, type: !50)
!3254 = !DILocalVariable(name: "s26", arg: 8, scope: !3244, file: !3224, line: 146, type: !50)
!3255 = !DILocalVariable(name: "s27", arg: 9, scope: !3244, file: !3224, line: 146, type: !50)
!3256 = !DILocalVariable(name: "s28", arg: 10, scope: !3244, file: !3224, line: 146, type: !50)
!3257 = !DILocation(line: 0, scope: !3244, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 167, column: 16, scope: !3259, inlinedAt: !3239)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !3224, line: 164, column: 11)
!3260 = distinct !DILexicalBlock(scope: !3242, file: !3224, line: 163, column: 5)
!3261 = !DILocation(line: 148, column: 7, scope: !3262, inlinedAt: !3258)
!3262 = distinct !DILexicalBlock(scope: !3244, file: !3224, line: 148, column: 7)
!3263 = !DILocalVariable(name: "s1", arg: 1, scope: !3264, file: !3224, line: 132, type: !51)
!3264 = distinct !DISubprogram(name: "strcaseeq2", scope: !3224, file: !3224, line: 132, type: !3265, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3267)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!53, !51, !51, !50, !50, !50, !50, !50, !50, !50}
!3267 = !{!3263, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275}
!3268 = !DILocalVariable(name: "s2", arg: 2, scope: !3264, file: !3224, line: 132, type: !51)
!3269 = !DILocalVariable(name: "s22", arg: 3, scope: !3264, file: !3224, line: 132, type: !50)
!3270 = !DILocalVariable(name: "s23", arg: 4, scope: !3264, file: !3224, line: 132, type: !50)
!3271 = !DILocalVariable(name: "s24", arg: 5, scope: !3264, file: !3224, line: 132, type: !50)
!3272 = !DILocalVariable(name: "s25", arg: 6, scope: !3264, file: !3224, line: 132, type: !50)
!3273 = !DILocalVariable(name: "s26", arg: 7, scope: !3264, file: !3224, line: 132, type: !50)
!3274 = !DILocalVariable(name: "s27", arg: 8, scope: !3264, file: !3224, line: 132, type: !50)
!3275 = !DILocalVariable(name: "s28", arg: 9, scope: !3264, file: !3224, line: 132, type: !50)
!3276 = !DILocation(line: 0, scope: !3264, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 153, column: 16, scope: !3278, inlinedAt: !3258)
!3278 = distinct !DILexicalBlock(scope: !3279, file: !3224, line: 150, column: 11)
!3279 = distinct !DILexicalBlock(scope: !3262, file: !3224, line: 149, column: 5)
!3280 = !DILocation(line: 134, column: 7, scope: !3281, inlinedAt: !3277)
!3281 = distinct !DILexicalBlock(scope: !3264, file: !3224, line: 134, column: 7)
!3282 = !DILocalVariable(name: "s1", arg: 1, scope: !3283, file: !3224, line: 118, type: !51)
!3283 = distinct !DISubprogram(name: "strcaseeq3", scope: !3224, file: !3224, line: 118, type: !3284, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!53, !51, !51, !50, !50, !50, !50, !50, !50}
!3286 = !{!3282, !3287, !3288, !3289, !3290, !3291, !3292, !3293}
!3287 = !DILocalVariable(name: "s2", arg: 2, scope: !3283, file: !3224, line: 118, type: !51)
!3288 = !DILocalVariable(name: "s23", arg: 3, scope: !3283, file: !3224, line: 118, type: !50)
!3289 = !DILocalVariable(name: "s24", arg: 4, scope: !3283, file: !3224, line: 118, type: !50)
!3290 = !DILocalVariable(name: "s25", arg: 5, scope: !3283, file: !3224, line: 118, type: !50)
!3291 = !DILocalVariable(name: "s26", arg: 6, scope: !3283, file: !3224, line: 118, type: !50)
!3292 = !DILocalVariable(name: "s27", arg: 7, scope: !3283, file: !3224, line: 118, type: !50)
!3293 = !DILocalVariable(name: "s28", arg: 8, scope: !3283, file: !3224, line: 118, type: !50)
!3294 = !DILocation(line: 0, scope: !3283, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 139, column: 16, scope: !3296, inlinedAt: !3277)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !3224, line: 136, column: 11)
!3297 = distinct !DILexicalBlock(scope: !3281, file: !3224, line: 135, column: 5)
!3298 = !DILocation(line: 120, column: 7, scope: !3299, inlinedAt: !3295)
!3299 = distinct !DILexicalBlock(scope: !3283, file: !3224, line: 120, column: 7)
!3300 = !DILocation(line: 120, column: 7, scope: !3283, inlinedAt: !3295)
!3301 = !DILocalVariable(name: "s1", arg: 1, scope: !3302, file: !3224, line: 104, type: !51)
!3302 = distinct !DISubprogram(name: "strcaseeq4", scope: !3224, file: !3224, line: 104, type: !3303, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!53, !51, !51, !50, !50, !50, !50, !50}
!3305 = !{!3301, !3306, !3307, !3308, !3309, !3310, !3311}
!3306 = !DILocalVariable(name: "s2", arg: 2, scope: !3302, file: !3224, line: 104, type: !51)
!3307 = !DILocalVariable(name: "s24", arg: 3, scope: !3302, file: !3224, line: 104, type: !50)
!3308 = !DILocalVariable(name: "s25", arg: 4, scope: !3302, file: !3224, line: 104, type: !50)
!3309 = !DILocalVariable(name: "s26", arg: 5, scope: !3302, file: !3224, line: 104, type: !50)
!3310 = !DILocalVariable(name: "s27", arg: 6, scope: !3302, file: !3224, line: 104, type: !50)
!3311 = !DILocalVariable(name: "s28", arg: 7, scope: !3302, file: !3224, line: 104, type: !50)
!3312 = !DILocation(line: 0, scope: !3302, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 125, column: 16, scope: !3314, inlinedAt: !3295)
!3314 = distinct !DILexicalBlock(scope: !3315, file: !3224, line: 122, column: 11)
!3315 = distinct !DILexicalBlock(scope: !3299, file: !3224, line: 121, column: 5)
!3316 = !DILocation(line: 106, column: 7, scope: !3317, inlinedAt: !3313)
!3317 = distinct !DILexicalBlock(scope: !3302, file: !3224, line: 106, column: 7)
!3318 = !DILocation(line: 106, column: 7, scope: !3302, inlinedAt: !3313)
!3319 = !DILocalVariable(name: "s1", arg: 1, scope: !3320, file: !3224, line: 90, type: !51)
!3320 = distinct !DISubprogram(name: "strcaseeq5", scope: !3224, file: !3224, line: 90, type: !3321, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3323)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!53, !51, !51, !50, !50, !50, !50}
!3323 = !{!3319, !3324, !3325, !3326, !3327, !3328}
!3324 = !DILocalVariable(name: "s2", arg: 2, scope: !3320, file: !3224, line: 90, type: !51)
!3325 = !DILocalVariable(name: "s25", arg: 3, scope: !3320, file: !3224, line: 90, type: !50)
!3326 = !DILocalVariable(name: "s26", arg: 4, scope: !3320, file: !3224, line: 90, type: !50)
!3327 = !DILocalVariable(name: "s27", arg: 5, scope: !3320, file: !3224, line: 90, type: !50)
!3328 = !DILocalVariable(name: "s28", arg: 6, scope: !3320, file: !3224, line: 90, type: !50)
!3329 = !DILocation(line: 0, scope: !3320, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 111, column: 16, scope: !3331, inlinedAt: !3313)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !3224, line: 108, column: 11)
!3332 = distinct !DILexicalBlock(scope: !3317, file: !3224, line: 107, column: 5)
!3333 = !DILocation(line: 92, column: 7, scope: !3334, inlinedAt: !3330)
!3334 = distinct !DILexicalBlock(scope: !3320, file: !3224, line: 92, column: 7)
!3335 = !DILocation(line: 92, column: 7, scope: !3320, inlinedAt: !3330)
!3336 = !DILocation(line: 235, column: 12, scope: !3240)
!3337 = !DILocation(line: 235, column: 21, scope: !3240)
!3338 = !DILocation(line: 235, column: 5, scope: !3240)
!3339 = !DILocation(line: 0, scope: !3244, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 167, column: 16, scope: !3259, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 236, column: 7, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3208, file: !361, line: 236, column: 7)
!3343 = !DILocation(line: 148, column: 7, scope: !3262, inlinedAt: !3340)
!3344 = !DILocation(line: 0, scope: !3264, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 153, column: 16, scope: !3278, inlinedAt: !3340)
!3346 = !DILocation(line: 134, column: 7, scope: !3281, inlinedAt: !3345)
!3347 = !DILocation(line: 134, column: 7, scope: !3264, inlinedAt: !3345)
!3348 = !DILocation(line: 0, scope: !3283, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 139, column: 16, scope: !3296, inlinedAt: !3345)
!3350 = !DILocation(line: 120, column: 7, scope: !3299, inlinedAt: !3349)
!3351 = !DILocation(line: 120, column: 7, scope: !3283, inlinedAt: !3349)
!3352 = !DILocation(line: 0, scope: !3302, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 125, column: 16, scope: !3314, inlinedAt: !3349)
!3354 = !DILocation(line: 106, column: 7, scope: !3317, inlinedAt: !3353)
!3355 = !DILocation(line: 106, column: 7, scope: !3302, inlinedAt: !3353)
!3356 = !DILocation(line: 0, scope: !3320, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 111, column: 16, scope: !3331, inlinedAt: !3353)
!3358 = !DILocation(line: 92, column: 7, scope: !3334, inlinedAt: !3357)
!3359 = !DILocation(line: 92, column: 7, scope: !3320, inlinedAt: !3357)
!3360 = !DILocalVariable(name: "s1", arg: 1, scope: !3361, file: !3224, line: 76, type: !51)
!3361 = distinct !DISubprogram(name: "strcaseeq6", scope: !3224, file: !3224, line: 76, type: !3362, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3364)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!53, !51, !51, !50, !50, !50}
!3364 = !{!3360, !3365, !3366, !3367, !3368}
!3365 = !DILocalVariable(name: "s2", arg: 2, scope: !3361, file: !3224, line: 76, type: !51)
!3366 = !DILocalVariable(name: "s26", arg: 3, scope: !3361, file: !3224, line: 76, type: !50)
!3367 = !DILocalVariable(name: "s27", arg: 4, scope: !3361, file: !3224, line: 76, type: !50)
!3368 = !DILocalVariable(name: "s28", arg: 5, scope: !3361, file: !3224, line: 76, type: !50)
!3369 = !DILocation(line: 0, scope: !3361, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 97, column: 16, scope: !3371, inlinedAt: !3357)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !3224, line: 94, column: 11)
!3372 = distinct !DILexicalBlock(scope: !3334, file: !3224, line: 93, column: 5)
!3373 = !DILocation(line: 78, column: 7, scope: !3374, inlinedAt: !3370)
!3374 = distinct !DILexicalBlock(scope: !3361, file: !3224, line: 78, column: 7)
!3375 = !DILocation(line: 78, column: 7, scope: !3361, inlinedAt: !3370)
!3376 = !DILocalVariable(name: "s1", arg: 1, scope: !3377, file: !3224, line: 62, type: !51)
!3377 = distinct !DISubprogram(name: "strcaseeq7", scope: !3224, file: !3224, line: 62, type: !3378, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3380)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!53, !51, !51, !50, !50}
!3380 = !{!3376, !3381, !3382, !3383}
!3381 = !DILocalVariable(name: "s2", arg: 2, scope: !3377, file: !3224, line: 62, type: !51)
!3382 = !DILocalVariable(name: "s27", arg: 3, scope: !3377, file: !3224, line: 62, type: !50)
!3383 = !DILocalVariable(name: "s28", arg: 4, scope: !3377, file: !3224, line: 62, type: !50)
!3384 = !DILocation(line: 0, scope: !3377, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 83, column: 16, scope: !3386, inlinedAt: !3370)
!3386 = distinct !DILexicalBlock(scope: !3387, file: !3224, line: 80, column: 11)
!3387 = distinct !DILexicalBlock(scope: !3374, file: !3224, line: 79, column: 5)
!3388 = !DILocation(line: 64, column: 7, scope: !3389, inlinedAt: !3385)
!3389 = distinct !DILexicalBlock(scope: !3377, file: !3224, line: 64, column: 7)
!3390 = !DILocation(line: 236, column: 7, scope: !3208)
!3391 = !DILocation(line: 237, column: 12, scope: !3342)
!3392 = !DILocation(line: 237, column: 21, scope: !3342)
!3393 = !DILocation(line: 237, column: 5, scope: !3342)
!3394 = !DILocation(line: 239, column: 13, scope: !3208)
!3395 = !DILocation(line: 239, column: 11, scope: !3208)
!3396 = !DILocation(line: 239, column: 3, scope: !3208)
!3397 = !DILocation(line: 240, column: 1, scope: !3208)
!3398 = distinct !DISubprogram(name: "quotearg_alloc", scope: !361, file: !361, line: 799, type: !3399, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3401)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!49, !51, !108, !377}
!3401 = !{!3402, !3403, !3404}
!3402 = !DILocalVariable(name: "arg", arg: 1, scope: !3398, file: !361, line: 799, type: !51)
!3403 = !DILocalVariable(name: "argsize", arg: 2, scope: !3398, file: !361, line: 799, type: !108)
!3404 = !DILocalVariable(name: "o", arg: 3, scope: !3398, file: !361, line: 800, type: !377)
!3405 = !DILocation(line: 0, scope: !3398)
!3406 = !DILocalVariable(name: "arg", arg: 1, scope: !3407, file: !361, line: 812, type: !51)
!3407 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !361, file: !361, line: 812, type: !3408, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3410)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!49, !51, !108, !566, !377}
!3410 = !{!3406, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418}
!3411 = !DILocalVariable(name: "argsize", arg: 2, scope: !3407, file: !361, line: 812, type: !108)
!3412 = !DILocalVariable(name: "size", arg: 3, scope: !3407, file: !361, line: 812, type: !566)
!3413 = !DILocalVariable(name: "o", arg: 4, scope: !3407, file: !361, line: 813, type: !377)
!3414 = !DILocalVariable(name: "p", scope: !3407, file: !361, line: 815, type: !377)
!3415 = !DILocalVariable(name: "e", scope: !3407, file: !361, line: 816, type: !53)
!3416 = !DILocalVariable(name: "flags", scope: !3407, file: !361, line: 818, type: !53)
!3417 = !DILocalVariable(name: "bufsize", scope: !3407, file: !361, line: 819, type: !108)
!3418 = !DILocalVariable(name: "buf", scope: !3407, file: !361, line: 823, type: !49)
!3419 = !DILocation(line: 0, scope: !3407, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 802, column: 10, scope: !3398)
!3421 = !DILocation(line: 815, column: 37, scope: !3407, inlinedAt: !3420)
!3422 = !DILocation(line: 816, column: 11, scope: !3407, inlinedAt: !3420)
!3423 = !DILocation(line: 818, column: 18, scope: !3407, inlinedAt: !3420)
!3424 = !DILocation(line: 818, column: 24, scope: !3407, inlinedAt: !3420)
!3425 = !DILocation(line: 819, column: 69, scope: !3407, inlinedAt: !3420)
!3426 = !DILocation(line: 820, column: 53, scope: !3407, inlinedAt: !3420)
!3427 = !DILocation(line: 821, column: 49, scope: !3407, inlinedAt: !3420)
!3428 = !DILocation(line: 822, column: 49, scope: !3407, inlinedAt: !3420)
!3429 = !DILocation(line: 819, column: 20, scope: !3407, inlinedAt: !3420)
!3430 = !DILocation(line: 822, column: 62, scope: !3407, inlinedAt: !3420)
!3431 = !DILocalVariable(name: "n", arg: 1, scope: !3432, file: !370, line: 216, type: !108)
!3432 = distinct !DISubprogram(name: "xcharalloc", scope: !370, file: !370, line: 216, type: !3433, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3435)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!49, !108}
!3435 = !{!3431}
!3436 = !DILocation(line: 0, scope: !3432, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 823, column: 15, scope: !3407, inlinedAt: !3420)
!3438 = !DILocation(line: 218, column: 10, scope: !3432, inlinedAt: !3437)
!3439 = !DILocation(line: 824, column: 60, scope: !3407, inlinedAt: !3420)
!3440 = !DILocation(line: 826, column: 32, scope: !3407, inlinedAt: !3420)
!3441 = !DILocation(line: 826, column: 47, scope: !3407, inlinedAt: !3420)
!3442 = !DILocation(line: 824, column: 3, scope: !3407, inlinedAt: !3420)
!3443 = !DILocation(line: 827, column: 9, scope: !3407, inlinedAt: !3420)
!3444 = !DILocation(line: 802, column: 3, scope: !3398)
!3445 = !DILocation(line: 0, scope: !3407)
!3446 = !DILocation(line: 815, column: 37, scope: !3407)
!3447 = !DILocation(line: 816, column: 11, scope: !3407)
!3448 = !DILocation(line: 818, column: 18, scope: !3407)
!3449 = !DILocation(line: 818, column: 27, scope: !3407)
!3450 = !DILocation(line: 818, column: 24, scope: !3407)
!3451 = !DILocation(line: 819, column: 69, scope: !3407)
!3452 = !DILocation(line: 820, column: 53, scope: !3407)
!3453 = !DILocation(line: 821, column: 49, scope: !3407)
!3454 = !DILocation(line: 822, column: 49, scope: !3407)
!3455 = !DILocation(line: 819, column: 20, scope: !3407)
!3456 = !DILocation(line: 822, column: 62, scope: !3407)
!3457 = !DILocation(line: 0, scope: !3432, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 823, column: 15, scope: !3407)
!3459 = !DILocation(line: 218, column: 10, scope: !3432, inlinedAt: !3458)
!3460 = !DILocation(line: 824, column: 60, scope: !3407)
!3461 = !DILocation(line: 826, column: 32, scope: !3407)
!3462 = !DILocation(line: 826, column: 47, scope: !3407)
!3463 = !DILocation(line: 824, column: 3, scope: !3407)
!3464 = !DILocation(line: 827, column: 9, scope: !3407)
!3465 = !DILocation(line: 828, column: 7, scope: !3407)
!3466 = !DILocation(line: 829, column: 11, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3407, file: !361, line: 828, column: 7)
!3468 = !{!1545, !1545, i64 0}
!3469 = !DILocation(line: 829, column: 5, scope: !3467)
!3470 = !DILocation(line: 830, column: 3, scope: !3407)
!3471 = distinct !DISubprogram(name: "quotearg_free", scope: !361, file: !361, line: 848, type: !135, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3472)
!3472 = !{!3473, !3474}
!3473 = !DILocalVariable(name: "sv", scope: !3471, file: !361, line: 850, type: !453)
!3474 = !DILocalVariable(name: "i", scope: !3471, file: !361, line: 851, type: !53)
!3475 = !DILocation(line: 850, column: 24, scope: !3471)
!3476 = !DILocation(line: 0, scope: !3471)
!3477 = !DILocation(line: 852, column: 19, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !361, line: 852, column: 3)
!3479 = distinct !DILexicalBlock(scope: !3471, file: !361, line: 852, column: 3)
!3480 = !DILocation(line: 852, column: 17, scope: !3478)
!3481 = !DILocation(line: 852, column: 3, scope: !3479)
!3482 = !DILocation(line: 853, column: 17, scope: !3478)
!3483 = !{!3484, !1234, i64 8}
!3484 = !{!"slotvec", !1545, i64 0, !1234, i64 8}
!3485 = !DILocation(line: 853, column: 5, scope: !3478)
!3486 = !DILocation(line: 852, column: 28, scope: !3478)
!3487 = distinct !{!3487, !3481, !3488}
!3488 = !DILocation(line: 853, column: 20, scope: !3479)
!3489 = !DILocation(line: 854, column: 13, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3471, file: !361, line: 854, column: 7)
!3491 = !DILocation(line: 854, column: 17, scope: !3490)
!3492 = !DILocation(line: 854, column: 7, scope: !3471)
!3493 = !DILocation(line: 856, column: 7, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3490, file: !361, line: 855, column: 5)
!3495 = !DILocation(line: 857, column: 21, scope: !3494)
!3496 = !{!3484, !1545, i64 0}
!3497 = !DILocation(line: 858, column: 20, scope: !3494)
!3498 = !DILocation(line: 859, column: 5, scope: !3494)
!3499 = !DILocation(line: 860, column: 10, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3471, file: !361, line: 860, column: 7)
!3501 = !DILocation(line: 860, column: 7, scope: !3471)
!3502 = !DILocation(line: 862, column: 13, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3500, file: !361, line: 861, column: 5)
!3504 = !DILocation(line: 862, column: 7, scope: !3503)
!3505 = !DILocation(line: 863, column: 15, scope: !3503)
!3506 = !DILocation(line: 864, column: 5, scope: !3503)
!3507 = !DILocation(line: 865, column: 10, scope: !3471)
!3508 = !DILocation(line: 866, column: 1, scope: !3471)
!3509 = distinct !DISubprogram(name: "quotearg_n", scope: !361, file: !361, line: 931, type: !122, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3510)
!3510 = !{!3511, !3512}
!3511 = !DILocalVariable(name: "n", arg: 1, scope: !3509, file: !361, line: 931, type: !53)
!3512 = !DILocalVariable(name: "arg", arg: 2, scope: !3509, file: !361, line: 931, type: !51)
!3513 = !DILocation(line: 0, scope: !3509)
!3514 = !DILocation(line: 933, column: 10, scope: !3509)
!3515 = !DILocation(line: 933, column: 3, scope: !3509)
!3516 = distinct !DISubprogram(name: "quotearg_n_options", scope: !361, file: !361, line: 877, type: !3517, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3519)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!49, !53, !51, !108, !377}
!3519 = !{!3520, !3521, !3522, !3523, !3524, !3525, !3526, !3529, !3530, !3532, !3533, !3534}
!3520 = !DILocalVariable(name: "n", arg: 1, scope: !3516, file: !361, line: 877, type: !53)
!3521 = !DILocalVariable(name: "arg", arg: 2, scope: !3516, file: !361, line: 877, type: !51)
!3522 = !DILocalVariable(name: "argsize", arg: 3, scope: !3516, file: !361, line: 877, type: !108)
!3523 = !DILocalVariable(name: "options", arg: 4, scope: !3516, file: !361, line: 878, type: !377)
!3524 = !DILocalVariable(name: "e", scope: !3516, file: !361, line: 880, type: !53)
!3525 = !DILocalVariable(name: "sv", scope: !3516, file: !361, line: 882, type: !453)
!3526 = !DILocalVariable(name: "preallocated", scope: !3527, file: !361, line: 889, type: !188)
!3527 = distinct !DILexicalBlock(scope: !3528, file: !361, line: 888, column: 5)
!3528 = distinct !DILexicalBlock(scope: !3516, file: !361, line: 887, column: 7)
!3529 = !DILocalVariable(name: "nmax", scope: !3527, file: !361, line: 890, type: !53)
!3530 = !DILocalVariable(name: "size", scope: !3531, file: !361, line: 903, type: !108)
!3531 = distinct !DILexicalBlock(scope: !3516, file: !361, line: 902, column: 3)
!3532 = !DILocalVariable(name: "val", scope: !3531, file: !361, line: 904, type: !49)
!3533 = !DILocalVariable(name: "flags", scope: !3531, file: !361, line: 906, type: !53)
!3534 = !DILocalVariable(name: "qsize", scope: !3531, file: !361, line: 907, type: !108)
!3535 = !DILocation(line: 0, scope: !3516)
!3536 = !DILocation(line: 880, column: 11, scope: !3516)
!3537 = !DILocation(line: 882, column: 24, scope: !3516)
!3538 = !DILocation(line: 884, column: 9, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3516, file: !361, line: 884, column: 7)
!3540 = !DILocation(line: 884, column: 7, scope: !3516)
!3541 = !DILocation(line: 885, column: 5, scope: !3539)
!3542 = !DILocation(line: 887, column: 7, scope: !3528)
!3543 = !DILocation(line: 887, column: 14, scope: !3528)
!3544 = !DILocation(line: 887, column: 7, scope: !3516)
!3545 = !DILocation(line: 889, column: 31, scope: !3527)
!3546 = !DILocation(line: 0, scope: !3527)
!3547 = !DILocation(line: 892, column: 16, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3527, file: !361, line: 892, column: 11)
!3549 = !DILocation(line: 892, column: 11, scope: !3527)
!3550 = !DILocation(line: 893, column: 9, scope: !3548)
!3551 = !DILocation(line: 895, column: 32, scope: !3527)
!3552 = !DILocation(line: 895, column: 61, scope: !3527)
!3553 = !DILocation(line: 895, column: 58, scope: !3527)
!3554 = !DILocation(line: 895, column: 66, scope: !3527)
!3555 = !DILocation(line: 895, column: 22, scope: !3527)
!3556 = !DILocation(line: 895, column: 15, scope: !3527)
!3557 = !DILocation(line: 896, column: 11, scope: !3527)
!3558 = !DILocation(line: 897, column: 15, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3527, file: !361, line: 896, column: 11)
!3560 = !{i64 0, i64 8, !3468, i64 8, i64 8, !1233}
!3561 = !DILocation(line: 897, column: 9, scope: !3559)
!3562 = !DILocation(line: 898, column: 20, scope: !3527)
!3563 = !DILocation(line: 898, column: 18, scope: !3527)
!3564 = !DILocation(line: 898, column: 15, scope: !3527)
!3565 = !DILocation(line: 898, column: 38, scope: !3527)
!3566 = !DILocation(line: 898, column: 31, scope: !3527)
!3567 = !DILocation(line: 898, column: 48, scope: !3527)
!3568 = !DILocation(line: 0, scope: !2966, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 898, column: 7, scope: !3527)
!3570 = !DILocation(line: 71, column: 10, scope: !2966, inlinedAt: !3569)
!3571 = !DILocation(line: 899, column: 14, scope: !3527)
!3572 = !DILocation(line: 900, column: 5, scope: !3527)
!3573 = !DILocation(line: 903, column: 19, scope: !3531)
!3574 = !DILocation(line: 903, column: 25, scope: !3531)
!3575 = !DILocation(line: 0, scope: !3531)
!3576 = !DILocation(line: 904, column: 23, scope: !3531)
!3577 = !DILocation(line: 906, column: 26, scope: !3531)
!3578 = !DILocation(line: 906, column: 32, scope: !3531)
!3579 = !DILocation(line: 908, column: 55, scope: !3531)
!3580 = !DILocation(line: 909, column: 46, scope: !3531)
!3581 = !DILocation(line: 910, column: 55, scope: !3531)
!3582 = !DILocation(line: 911, column: 55, scope: !3531)
!3583 = !DILocation(line: 907, column: 20, scope: !3531)
!3584 = !DILocation(line: 913, column: 14, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3531, file: !361, line: 913, column: 9)
!3586 = !DILocation(line: 913, column: 9, scope: !3531)
!3587 = !DILocation(line: 915, column: 35, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3585, file: !361, line: 914, column: 7)
!3589 = !DILocation(line: 915, column: 20, scope: !3588)
!3590 = !DILocation(line: 916, column: 17, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3588, file: !361, line: 916, column: 13)
!3592 = !DILocation(line: 916, column: 13, scope: !3588)
!3593 = !DILocation(line: 917, column: 11, scope: !3591)
!3594 = !DILocation(line: 0, scope: !3432, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 918, column: 27, scope: !3588)
!3596 = !DILocation(line: 218, column: 10, scope: !3432, inlinedAt: !3595)
!3597 = !DILocation(line: 918, column: 19, scope: !3588)
!3598 = !DILocation(line: 919, column: 69, scope: !3588)
!3599 = !DILocation(line: 921, column: 44, scope: !3588)
!3600 = !DILocation(line: 922, column: 44, scope: !3588)
!3601 = !DILocation(line: 919, column: 9, scope: !3588)
!3602 = !DILocation(line: 923, column: 7, scope: !3588)
!3603 = !DILocation(line: 925, column: 11, scope: !3531)
!3604 = !DILocation(line: 926, column: 5, scope: !3531)
!3605 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !361, file: !361, line: 937, type: !3606, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3608)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!49, !53, !51, !108}
!3608 = !{!3609, !3610, !3611}
!3609 = !DILocalVariable(name: "n", arg: 1, scope: !3605, file: !361, line: 937, type: !53)
!3610 = !DILocalVariable(name: "arg", arg: 2, scope: !3605, file: !361, line: 937, type: !51)
!3611 = !DILocalVariable(name: "argsize", arg: 3, scope: !3605, file: !361, line: 937, type: !108)
!3612 = !DILocation(line: 0, scope: !3605)
!3613 = !DILocation(line: 939, column: 10, scope: !3605)
!3614 = !DILocation(line: 939, column: 3, scope: !3605)
!3615 = distinct !DISubprogram(name: "quotearg", scope: !361, file: !361, line: 943, type: !128, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3616)
!3616 = !{!3617}
!3617 = !DILocalVariable(name: "arg", arg: 1, scope: !3615, file: !361, line: 943, type: !51)
!3618 = !DILocation(line: 0, scope: !3615)
!3619 = !DILocation(line: 0, scope: !3509, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 945, column: 10, scope: !3615)
!3621 = !DILocation(line: 933, column: 10, scope: !3509, inlinedAt: !3620)
!3622 = !DILocation(line: 945, column: 3, scope: !3615)
!3623 = distinct !DISubprogram(name: "quotearg_mem", scope: !361, file: !361, line: 949, type: !3624, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3626)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!49, !51, !108}
!3626 = !{!3627, !3628}
!3627 = !DILocalVariable(name: "arg", arg: 1, scope: !3623, file: !361, line: 949, type: !51)
!3628 = !DILocalVariable(name: "argsize", arg: 2, scope: !3623, file: !361, line: 949, type: !108)
!3629 = !DILocation(line: 0, scope: !3623)
!3630 = !DILocation(line: 0, scope: !3605, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 951, column: 10, scope: !3623)
!3632 = !DILocation(line: 939, column: 10, scope: !3605, inlinedAt: !3631)
!3633 = !DILocation(line: 951, column: 3, scope: !3623)
!3634 = distinct !DISubprogram(name: "quotearg_n_style", scope: !361, file: !361, line: 955, type: !169, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3635)
!3635 = !{!3636, !3637, !3638, !3639}
!3636 = !DILocalVariable(name: "n", arg: 1, scope: !3634, file: !361, line: 955, type: !53)
!3637 = !DILocalVariable(name: "s", arg: 2, scope: !3634, file: !361, line: 955, type: !5)
!3638 = !DILocalVariable(name: "arg", arg: 3, scope: !3634, file: !361, line: 955, type: !51)
!3639 = !DILocalVariable(name: "o", scope: !3634, file: !361, line: 957, type: !378)
!3640 = !DILocation(line: 0, scope: !3634)
!3641 = !DILocation(line: 957, column: 3, scope: !3634)
!3642 = !DILocation(line: 957, column: 32, scope: !3634)
!3643 = !DILocalVariable(name: "style", arg: 1, scope: !3644, file: !361, line: 193, type: !5)
!3644 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !361, file: !361, line: 193, type: !3645, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3647)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!379, !5}
!3647 = !{!3643, !3648}
!3648 = !DILocalVariable(name: "o", scope: !3644, file: !361, line: 195, type: !379)
!3649 = !DILocation(line: 0, scope: !3644, inlinedAt: !3650)
!3650 = distinct !DILocation(line: 957, column: 36, scope: !3634)
!3651 = !DILocation(line: 195, column: 26, scope: !3644, inlinedAt: !3650)
!3652 = !{!3653}
!3653 = distinct !{!3653, !3654, !"quoting_options_from_style: argument 0"}
!3654 = distinct !{!3654, !"quoting_options_from_style"}
!3655 = !DILocation(line: 196, column: 13, scope: !3656, inlinedAt: !3650)
!3656 = distinct !DILexicalBlock(scope: !3644, file: !361, line: 196, column: 7)
!3657 = !DILocation(line: 196, column: 7, scope: !3644, inlinedAt: !3650)
!3658 = !DILocation(line: 197, column: 5, scope: !3656, inlinedAt: !3650)
!3659 = !DILocation(line: 198, column: 5, scope: !3644, inlinedAt: !3650)
!3660 = !DILocation(line: 198, column: 11, scope: !3644, inlinedAt: !3650)
!3661 = !DILocation(line: 958, column: 10, scope: !3634)
!3662 = !DILocation(line: 959, column: 1, scope: !3634)
!3663 = !DILocation(line: 958, column: 3, scope: !3634)
!3664 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !361, file: !361, line: 962, type: !3665, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3667)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!49, !53, !5, !51, !108}
!3667 = !{!3668, !3669, !3670, !3671, !3672}
!3668 = !DILocalVariable(name: "n", arg: 1, scope: !3664, file: !361, line: 962, type: !53)
!3669 = !DILocalVariable(name: "s", arg: 2, scope: !3664, file: !361, line: 962, type: !5)
!3670 = !DILocalVariable(name: "arg", arg: 3, scope: !3664, file: !361, line: 963, type: !51)
!3671 = !DILocalVariable(name: "argsize", arg: 4, scope: !3664, file: !361, line: 963, type: !108)
!3672 = !DILocalVariable(name: "o", scope: !3664, file: !361, line: 965, type: !378)
!3673 = !DILocation(line: 0, scope: !3664)
!3674 = !DILocation(line: 965, column: 3, scope: !3664)
!3675 = !DILocation(line: 965, column: 32, scope: !3664)
!3676 = !DILocation(line: 0, scope: !3644, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 965, column: 36, scope: !3664)
!3678 = !DILocation(line: 195, column: 26, scope: !3644, inlinedAt: !3677)
!3679 = !{!3680}
!3680 = distinct !{!3680, !3681, !"quoting_options_from_style: argument 0"}
!3681 = distinct !{!3681, !"quoting_options_from_style"}
!3682 = !DILocation(line: 196, column: 13, scope: !3656, inlinedAt: !3677)
!3683 = !DILocation(line: 196, column: 7, scope: !3644, inlinedAt: !3677)
!3684 = !DILocation(line: 197, column: 5, scope: !3656, inlinedAt: !3677)
!3685 = !DILocation(line: 198, column: 5, scope: !3644, inlinedAt: !3677)
!3686 = !DILocation(line: 198, column: 11, scope: !3644, inlinedAt: !3677)
!3687 = !DILocation(line: 966, column: 10, scope: !3664)
!3688 = !DILocation(line: 967, column: 1, scope: !3664)
!3689 = !DILocation(line: 966, column: 3, scope: !3664)
!3690 = distinct !DISubprogram(name: "quotearg_style", scope: !361, file: !361, line: 970, type: !172, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3691)
!3691 = !{!3692, !3693}
!3692 = !DILocalVariable(name: "s", arg: 1, scope: !3690, file: !361, line: 970, type: !5)
!3693 = !DILocalVariable(name: "arg", arg: 2, scope: !3690, file: !361, line: 970, type: !51)
!3694 = !DILocation(line: 195, column: 26, scope: !3644, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 957, column: 36, scope: !3634, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 972, column: 10, scope: !3690)
!3697 = !DILocation(line: 957, column: 32, scope: !3634, inlinedAt: !3696)
!3698 = !DILocation(line: 0, scope: !3690)
!3699 = !DILocation(line: 0, scope: !3634, inlinedAt: !3696)
!3700 = !DILocation(line: 957, column: 3, scope: !3634, inlinedAt: !3696)
!3701 = !DILocation(line: 0, scope: !3644, inlinedAt: !3695)
!3702 = !{!3703}
!3703 = distinct !{!3703, !3704, !"quoting_options_from_style: argument 0"}
!3704 = distinct !{!3704, !"quoting_options_from_style"}
!3705 = !DILocation(line: 196, column: 13, scope: !3656, inlinedAt: !3695)
!3706 = !DILocation(line: 196, column: 7, scope: !3644, inlinedAt: !3695)
!3707 = !DILocation(line: 197, column: 5, scope: !3656, inlinedAt: !3695)
!3708 = !DILocation(line: 198, column: 5, scope: !3644, inlinedAt: !3695)
!3709 = !DILocation(line: 198, column: 11, scope: !3644, inlinedAt: !3695)
!3710 = !DILocation(line: 958, column: 10, scope: !3634, inlinedAt: !3696)
!3711 = !DILocation(line: 959, column: 1, scope: !3634, inlinedAt: !3696)
!3712 = !DILocation(line: 972, column: 3, scope: !3690)
!3713 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !361, file: !361, line: 976, type: !3714, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3716)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!49, !5, !51, !108}
!3716 = !{!3717, !3718, !3719}
!3717 = !DILocalVariable(name: "s", arg: 1, scope: !3713, file: !361, line: 976, type: !5)
!3718 = !DILocalVariable(name: "arg", arg: 2, scope: !3713, file: !361, line: 976, type: !51)
!3719 = !DILocalVariable(name: "argsize", arg: 3, scope: !3713, file: !361, line: 976, type: !108)
!3720 = !DILocation(line: 195, column: 26, scope: !3644, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 965, column: 36, scope: !3664, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 978, column: 10, scope: !3713)
!3723 = !DILocation(line: 965, column: 32, scope: !3664, inlinedAt: !3722)
!3724 = !DILocation(line: 0, scope: !3713)
!3725 = !DILocation(line: 0, scope: !3664, inlinedAt: !3722)
!3726 = !DILocation(line: 965, column: 3, scope: !3664, inlinedAt: !3722)
!3727 = !DILocation(line: 0, scope: !3644, inlinedAt: !3721)
!3728 = !{!3729}
!3729 = distinct !{!3729, !3730, !"quoting_options_from_style: argument 0"}
!3730 = distinct !{!3730, !"quoting_options_from_style"}
!3731 = !DILocation(line: 196, column: 13, scope: !3656, inlinedAt: !3721)
!3732 = !DILocation(line: 196, column: 7, scope: !3644, inlinedAt: !3721)
!3733 = !DILocation(line: 197, column: 5, scope: !3656, inlinedAt: !3721)
!3734 = !DILocation(line: 198, column: 5, scope: !3644, inlinedAt: !3721)
!3735 = !DILocation(line: 198, column: 11, scope: !3644, inlinedAt: !3721)
!3736 = !DILocation(line: 966, column: 10, scope: !3664, inlinedAt: !3722)
!3737 = !DILocation(line: 967, column: 1, scope: !3664, inlinedAt: !3722)
!3738 = !DILocation(line: 978, column: 3, scope: !3713)
!3739 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !361, file: !361, line: 982, type: !3740, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3742)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!49, !51, !108, !50}
!3742 = !{!3743, !3744, !3745, !3746}
!3743 = !DILocalVariable(name: "arg", arg: 1, scope: !3739, file: !361, line: 982, type: !51)
!3744 = !DILocalVariable(name: "argsize", arg: 2, scope: !3739, file: !361, line: 982, type: !108)
!3745 = !DILocalVariable(name: "ch", arg: 3, scope: !3739, file: !361, line: 982, type: !50)
!3746 = !DILocalVariable(name: "options", scope: !3739, file: !361, line: 984, type: !379)
!3747 = !DILocation(line: 0, scope: !3739)
!3748 = !DILocation(line: 984, column: 3, scope: !3739)
!3749 = !DILocation(line: 984, column: 26, scope: !3739)
!3750 = !DILocation(line: 985, column: 13, scope: !3739)
!3751 = !{i64 0, i64 4, !1324, i64 4, i64 4, !1314, i64 8, i64 32, !1324, i64 40, i64 8, !1233, i64 48, i64 8, !1233}
!3752 = !DILocation(line: 0, scope: !2581, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 986, column: 3, scope: !3739)
!3754 = !DILocation(line: 156, column: 62, scope: !2581, inlinedAt: !3753)
!3755 = !DILocation(line: 156, column: 57, scope: !2581, inlinedAt: !3753)
!3756 = !DILocation(line: 157, column: 15, scope: !2581, inlinedAt: !3753)
!3757 = !DILocation(line: 158, column: 12, scope: !2581, inlinedAt: !3753)
!3758 = !DILocation(line: 158, column: 15, scope: !2581, inlinedAt: !3753)
!3759 = !DILocation(line: 158, column: 25, scope: !2581, inlinedAt: !3753)
!3760 = !DILocation(line: 159, column: 18, scope: !2581, inlinedAt: !3753)
!3761 = !DILocation(line: 159, column: 23, scope: !2581, inlinedAt: !3753)
!3762 = !DILocation(line: 159, column: 6, scope: !2581, inlinedAt: !3753)
!3763 = !DILocation(line: 987, column: 10, scope: !3739)
!3764 = !DILocation(line: 988, column: 1, scope: !3739)
!3765 = !DILocation(line: 987, column: 3, scope: !3739)
!3766 = distinct !DISubprogram(name: "quotearg_char", scope: !361, file: !361, line: 991, type: !3767, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3769)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!49, !51, !50}
!3769 = !{!3770, !3771}
!3770 = !DILocalVariable(name: "arg", arg: 1, scope: !3766, file: !361, line: 991, type: !51)
!3771 = !DILocalVariable(name: "ch", arg: 2, scope: !3766, file: !361, line: 991, type: !50)
!3772 = !DILocation(line: 984, column: 26, scope: !3739, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 993, column: 10, scope: !3766)
!3774 = !DILocation(line: 0, scope: !3766)
!3775 = !DILocation(line: 0, scope: !3739, inlinedAt: !3773)
!3776 = !DILocation(line: 984, column: 3, scope: !3739, inlinedAt: !3773)
!3777 = !DILocation(line: 985, column: 13, scope: !3739, inlinedAt: !3773)
!3778 = !DILocation(line: 0, scope: !2581, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 986, column: 3, scope: !3739, inlinedAt: !3773)
!3780 = !DILocation(line: 156, column: 62, scope: !2581, inlinedAt: !3779)
!3781 = !DILocation(line: 156, column: 57, scope: !2581, inlinedAt: !3779)
!3782 = !DILocation(line: 157, column: 15, scope: !2581, inlinedAt: !3779)
!3783 = !DILocation(line: 158, column: 12, scope: !2581, inlinedAt: !3779)
!3784 = !DILocation(line: 158, column: 15, scope: !2581, inlinedAt: !3779)
!3785 = !DILocation(line: 158, column: 25, scope: !2581, inlinedAt: !3779)
!3786 = !DILocation(line: 159, column: 18, scope: !2581, inlinedAt: !3779)
!3787 = !DILocation(line: 159, column: 23, scope: !2581, inlinedAt: !3779)
!3788 = !DILocation(line: 159, column: 6, scope: !2581, inlinedAt: !3779)
!3789 = !DILocation(line: 987, column: 10, scope: !3739, inlinedAt: !3773)
!3790 = !DILocation(line: 988, column: 1, scope: !3739, inlinedAt: !3773)
!3791 = !DILocation(line: 993, column: 3, scope: !3766)
!3792 = distinct !DISubprogram(name: "quotearg_colon", scope: !361, file: !361, line: 997, type: !128, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3793)
!3793 = !{!3794}
!3794 = !DILocalVariable(name: "arg", arg: 1, scope: !3792, file: !361, line: 997, type: !51)
!3795 = !DILocation(line: 984, column: 26, scope: !3739, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 993, column: 10, scope: !3766, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 999, column: 10, scope: !3792)
!3798 = !DILocation(line: 0, scope: !3792)
!3799 = !DILocation(line: 0, scope: !3766, inlinedAt: !3797)
!3800 = !DILocation(line: 0, scope: !3739, inlinedAt: !3796)
!3801 = !DILocation(line: 984, column: 3, scope: !3739, inlinedAt: !3796)
!3802 = !DILocation(line: 985, column: 13, scope: !3739, inlinedAt: !3796)
!3803 = !DILocation(line: 0, scope: !2581, inlinedAt: !3804)
!3804 = distinct !DILocation(line: 986, column: 3, scope: !3739, inlinedAt: !3796)
!3805 = !DILocation(line: 156, column: 57, scope: !2581, inlinedAt: !3804)
!3806 = !DILocation(line: 158, column: 12, scope: !2581, inlinedAt: !3804)
!3807 = !DILocation(line: 159, column: 6, scope: !2581, inlinedAt: !3804)
!3808 = !DILocation(line: 987, column: 10, scope: !3739, inlinedAt: !3796)
!3809 = !DILocation(line: 988, column: 1, scope: !3739, inlinedAt: !3796)
!3810 = !DILocation(line: 999, column: 3, scope: !3792)
!3811 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !361, file: !361, line: 1003, type: !3624, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3812)
!3812 = !{!3813, !3814}
!3813 = !DILocalVariable(name: "arg", arg: 1, scope: !3811, file: !361, line: 1003, type: !51)
!3814 = !DILocalVariable(name: "argsize", arg: 2, scope: !3811, file: !361, line: 1003, type: !108)
!3815 = !DILocation(line: 984, column: 26, scope: !3739, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 1005, column: 10, scope: !3811)
!3817 = !DILocation(line: 0, scope: !3811)
!3818 = !DILocation(line: 0, scope: !3739, inlinedAt: !3816)
!3819 = !DILocation(line: 984, column: 3, scope: !3739, inlinedAt: !3816)
!3820 = !DILocation(line: 985, column: 13, scope: !3739, inlinedAt: !3816)
!3821 = !DILocation(line: 0, scope: !2581, inlinedAt: !3822)
!3822 = distinct !DILocation(line: 986, column: 3, scope: !3739, inlinedAt: !3816)
!3823 = !DILocation(line: 156, column: 57, scope: !2581, inlinedAt: !3822)
!3824 = !DILocation(line: 158, column: 12, scope: !2581, inlinedAt: !3822)
!3825 = !DILocation(line: 159, column: 6, scope: !2581, inlinedAt: !3822)
!3826 = !DILocation(line: 987, column: 10, scope: !3739, inlinedAt: !3816)
!3827 = !DILocation(line: 988, column: 1, scope: !3739, inlinedAt: !3816)
!3828 = !DILocation(line: 1005, column: 3, scope: !3811)
!3829 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !361, file: !361, line: 1009, type: !169, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3830)
!3830 = !{!3831, !3832, !3833, !3834}
!3831 = !DILocalVariable(name: "n", arg: 1, scope: !3829, file: !361, line: 1009, type: !53)
!3832 = !DILocalVariable(name: "s", arg: 2, scope: !3829, file: !361, line: 1009, type: !5)
!3833 = !DILocalVariable(name: "arg", arg: 3, scope: !3829, file: !361, line: 1009, type: !51)
!3834 = !DILocalVariable(name: "options", scope: !3829, file: !361, line: 1011, type: !379)
!3835 = !DILocation(line: 195, column: 26, scope: !3644, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 1012, column: 13, scope: !3829)
!3837 = !DILocation(line: 0, scope: !3829)
!3838 = !DILocation(line: 1011, column: 3, scope: !3829)
!3839 = !DILocation(line: 1011, column: 26, scope: !3829)
!3840 = !DILocation(line: 1012, column: 13, scope: !3829)
!3841 = !DILocation(line: 0, scope: !3644, inlinedAt: !3836)
!3842 = !{!3843}
!3843 = distinct !{!3843, !3844, !"quoting_options_from_style: argument 0"}
!3844 = distinct !{!3844, !"quoting_options_from_style"}
!3845 = !DILocation(line: 196, column: 13, scope: !3656, inlinedAt: !3836)
!3846 = !DILocation(line: 196, column: 7, scope: !3644, inlinedAt: !3836)
!3847 = !DILocation(line: 197, column: 5, scope: !3656, inlinedAt: !3836)
!3848 = !DILocation(line: 0, scope: !2581, inlinedAt: !3849)
!3849 = distinct !DILocation(line: 1013, column: 3, scope: !3829)
!3850 = !DILocation(line: 156, column: 57, scope: !2581, inlinedAt: !3849)
!3851 = !DILocation(line: 158, column: 12, scope: !2581, inlinedAt: !3849)
!3852 = !DILocation(line: 159, column: 6, scope: !2581, inlinedAt: !3849)
!3853 = !DILocation(line: 1014, column: 10, scope: !3829)
!3854 = !DILocation(line: 1015, column: 1, scope: !3829)
!3855 = !DILocation(line: 1014, column: 3, scope: !3829)
!3856 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !361, file: !361, line: 1018, type: !3857, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3859)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!49, !53, !51, !51, !51}
!3859 = !{!3860, !3861, !3862, !3863}
!3860 = !DILocalVariable(name: "n", arg: 1, scope: !3856, file: !361, line: 1018, type: !53)
!3861 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3856, file: !361, line: 1018, type: !51)
!3862 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3856, file: !361, line: 1019, type: !51)
!3863 = !DILocalVariable(name: "arg", arg: 4, scope: !3856, file: !361, line: 1019, type: !51)
!3864 = !DILocalVariable(name: "o", scope: !3865, file: !361, line: 1030, type: !379)
!3865 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !361, file: !361, line: 1026, type: !3866, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3868)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!49, !53, !51, !51, !51, !108}
!3868 = !{!3869, !3870, !3871, !3872, !3873, !3864}
!3869 = !DILocalVariable(name: "n", arg: 1, scope: !3865, file: !361, line: 1026, type: !53)
!3870 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3865, file: !361, line: 1026, type: !51)
!3871 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3865, file: !361, line: 1027, type: !51)
!3872 = !DILocalVariable(name: "arg", arg: 4, scope: !3865, file: !361, line: 1028, type: !51)
!3873 = !DILocalVariable(name: "argsize", arg: 5, scope: !3865, file: !361, line: 1028, type: !108)
!3874 = !DILocation(line: 1030, column: 26, scope: !3865, inlinedAt: !3875)
!3875 = distinct !DILocation(line: 1021, column: 10, scope: !3856)
!3876 = !DILocation(line: 0, scope: !3856)
!3877 = !DILocation(line: 0, scope: !3865, inlinedAt: !3875)
!3878 = !DILocation(line: 1030, column: 3, scope: !3865, inlinedAt: !3875)
!3879 = !DILocation(line: 1030, column: 30, scope: !3865, inlinedAt: !3875)
!3880 = !DILocation(line: 0, scope: !2621, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 1031, column: 3, scope: !3865, inlinedAt: !3875)
!3882 = !DILocation(line: 184, column: 6, scope: !2621, inlinedAt: !3881)
!3883 = !DILocation(line: 184, column: 12, scope: !2621, inlinedAt: !3881)
!3884 = !DILocation(line: 185, column: 8, scope: !2635, inlinedAt: !3881)
!3885 = !DILocation(line: 185, column: 23, scope: !2635, inlinedAt: !3881)
!3886 = !DILocation(line: 185, column: 19, scope: !2635, inlinedAt: !3881)
!3887 = !DILocation(line: 186, column: 5, scope: !2635, inlinedAt: !3881)
!3888 = !DILocation(line: 187, column: 6, scope: !2621, inlinedAt: !3881)
!3889 = !DILocation(line: 187, column: 17, scope: !2621, inlinedAt: !3881)
!3890 = !DILocation(line: 188, column: 6, scope: !2621, inlinedAt: !3881)
!3891 = !DILocation(line: 188, column: 18, scope: !2621, inlinedAt: !3881)
!3892 = !DILocation(line: 1032, column: 10, scope: !3865, inlinedAt: !3875)
!3893 = !DILocation(line: 1033, column: 1, scope: !3865, inlinedAt: !3875)
!3894 = !DILocation(line: 1021, column: 3, scope: !3856)
!3895 = !DILocation(line: 0, scope: !3865)
!3896 = !DILocation(line: 1030, column: 3, scope: !3865)
!3897 = !DILocation(line: 1030, column: 26, scope: !3865)
!3898 = !DILocation(line: 1030, column: 30, scope: !3865)
!3899 = !DILocation(line: 0, scope: !2621, inlinedAt: !3900)
!3900 = distinct !DILocation(line: 1031, column: 3, scope: !3865)
!3901 = !DILocation(line: 184, column: 6, scope: !2621, inlinedAt: !3900)
!3902 = !DILocation(line: 184, column: 12, scope: !2621, inlinedAt: !3900)
!3903 = !DILocation(line: 185, column: 8, scope: !2635, inlinedAt: !3900)
!3904 = !DILocation(line: 185, column: 23, scope: !2635, inlinedAt: !3900)
!3905 = !DILocation(line: 185, column: 19, scope: !2635, inlinedAt: !3900)
!3906 = !DILocation(line: 186, column: 5, scope: !2635, inlinedAt: !3900)
!3907 = !DILocation(line: 187, column: 6, scope: !2621, inlinedAt: !3900)
!3908 = !DILocation(line: 187, column: 17, scope: !2621, inlinedAt: !3900)
!3909 = !DILocation(line: 188, column: 6, scope: !2621, inlinedAt: !3900)
!3910 = !DILocation(line: 188, column: 18, scope: !2621, inlinedAt: !3900)
!3911 = !DILocation(line: 1032, column: 10, scope: !3865)
!3912 = !DILocation(line: 1033, column: 1, scope: !3865)
!3913 = !DILocation(line: 1032, column: 3, scope: !3865)
!3914 = distinct !DISubprogram(name: "quotearg_custom", scope: !361, file: !361, line: 1036, type: !3915, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3917)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!49, !51, !51, !51}
!3917 = !{!3918, !3919, !3920}
!3918 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3914, file: !361, line: 1036, type: !51)
!3919 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3914, file: !361, line: 1036, type: !51)
!3920 = !DILocalVariable(name: "arg", arg: 3, scope: !3914, file: !361, line: 1037, type: !51)
!3921 = !DILocation(line: 1030, column: 26, scope: !3865, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 1021, column: 10, scope: !3856, inlinedAt: !3923)
!3923 = distinct !DILocation(line: 1039, column: 10, scope: !3914)
!3924 = !DILocation(line: 0, scope: !3914)
!3925 = !DILocation(line: 0, scope: !3856, inlinedAt: !3923)
!3926 = !DILocation(line: 0, scope: !3865, inlinedAt: !3922)
!3927 = !DILocation(line: 1030, column: 3, scope: !3865, inlinedAt: !3922)
!3928 = !DILocation(line: 1030, column: 30, scope: !3865, inlinedAt: !3922)
!3929 = !DILocation(line: 0, scope: !2621, inlinedAt: !3930)
!3930 = distinct !DILocation(line: 1031, column: 3, scope: !3865, inlinedAt: !3922)
!3931 = !DILocation(line: 184, column: 6, scope: !2621, inlinedAt: !3930)
!3932 = !DILocation(line: 184, column: 12, scope: !2621, inlinedAt: !3930)
!3933 = !DILocation(line: 185, column: 8, scope: !2635, inlinedAt: !3930)
!3934 = !DILocation(line: 185, column: 23, scope: !2635, inlinedAt: !3930)
!3935 = !DILocation(line: 185, column: 19, scope: !2635, inlinedAt: !3930)
!3936 = !DILocation(line: 186, column: 5, scope: !2635, inlinedAt: !3930)
!3937 = !DILocation(line: 187, column: 6, scope: !2621, inlinedAt: !3930)
!3938 = !DILocation(line: 187, column: 17, scope: !2621, inlinedAt: !3930)
!3939 = !DILocation(line: 188, column: 6, scope: !2621, inlinedAt: !3930)
!3940 = !DILocation(line: 188, column: 18, scope: !2621, inlinedAt: !3930)
!3941 = !DILocation(line: 1032, column: 10, scope: !3865, inlinedAt: !3922)
!3942 = !DILocation(line: 1033, column: 1, scope: !3865, inlinedAt: !3922)
!3943 = !DILocation(line: 1039, column: 3, scope: !3914)
!3944 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !361, file: !361, line: 1043, type: !3945, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3947)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!49, !51, !51, !51, !108}
!3947 = !{!3948, !3949, !3950, !3951}
!3948 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3944, file: !361, line: 1043, type: !51)
!3949 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3944, file: !361, line: 1043, type: !51)
!3950 = !DILocalVariable(name: "arg", arg: 3, scope: !3944, file: !361, line: 1044, type: !51)
!3951 = !DILocalVariable(name: "argsize", arg: 4, scope: !3944, file: !361, line: 1044, type: !108)
!3952 = !DILocation(line: 1030, column: 26, scope: !3865, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 1046, column: 10, scope: !3944)
!3954 = !DILocation(line: 0, scope: !3944)
!3955 = !DILocation(line: 0, scope: !3865, inlinedAt: !3953)
!3956 = !DILocation(line: 1030, column: 3, scope: !3865, inlinedAt: !3953)
!3957 = !DILocation(line: 1030, column: 30, scope: !3865, inlinedAt: !3953)
!3958 = !DILocation(line: 0, scope: !2621, inlinedAt: !3959)
!3959 = distinct !DILocation(line: 1031, column: 3, scope: !3865, inlinedAt: !3953)
!3960 = !DILocation(line: 184, column: 6, scope: !2621, inlinedAt: !3959)
!3961 = !DILocation(line: 184, column: 12, scope: !2621, inlinedAt: !3959)
!3962 = !DILocation(line: 185, column: 8, scope: !2635, inlinedAt: !3959)
!3963 = !DILocation(line: 185, column: 23, scope: !2635, inlinedAt: !3959)
!3964 = !DILocation(line: 185, column: 19, scope: !2635, inlinedAt: !3959)
!3965 = !DILocation(line: 186, column: 5, scope: !2635, inlinedAt: !3959)
!3966 = !DILocation(line: 187, column: 6, scope: !2621, inlinedAt: !3959)
!3967 = !DILocation(line: 187, column: 17, scope: !2621, inlinedAt: !3959)
!3968 = !DILocation(line: 188, column: 6, scope: !2621, inlinedAt: !3959)
!3969 = !DILocation(line: 188, column: 18, scope: !2621, inlinedAt: !3959)
!3970 = !DILocation(line: 1032, column: 10, scope: !3865, inlinedAt: !3953)
!3971 = !DILocation(line: 1033, column: 1, scope: !3865, inlinedAt: !3953)
!3972 = !DILocation(line: 1046, column: 3, scope: !3944)
!3973 = distinct !DISubprogram(name: "quote_n_mem", scope: !361, file: !361, line: 1061, type: !3974, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3976)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!51, !53, !51, !108}
!3976 = !{!3977, !3978, !3979}
!3977 = !DILocalVariable(name: "n", arg: 1, scope: !3973, file: !361, line: 1061, type: !53)
!3978 = !DILocalVariable(name: "arg", arg: 2, scope: !3973, file: !361, line: 1061, type: !51)
!3979 = !DILocalVariable(name: "argsize", arg: 3, scope: !3973, file: !361, line: 1061, type: !108)
!3980 = !DILocation(line: 0, scope: !3973)
!3981 = !DILocation(line: 1063, column: 10, scope: !3973)
!3982 = !DILocation(line: 1063, column: 3, scope: !3973)
!3983 = distinct !DISubprogram(name: "quote_mem", scope: !361, file: !361, line: 1067, type: !3984, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3986)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!51, !51, !108}
!3986 = !{!3987, !3988}
!3987 = !DILocalVariable(name: "arg", arg: 1, scope: !3983, file: !361, line: 1067, type: !51)
!3988 = !DILocalVariable(name: "argsize", arg: 2, scope: !3983, file: !361, line: 1067, type: !108)
!3989 = !DILocation(line: 0, scope: !3983)
!3990 = !DILocation(line: 0, scope: !3973, inlinedAt: !3991)
!3991 = distinct !DILocation(line: 1069, column: 10, scope: !3983)
!3992 = !DILocation(line: 1063, column: 10, scope: !3973, inlinedAt: !3991)
!3993 = !DILocation(line: 1069, column: 3, scope: !3983)
!3994 = distinct !DISubprogram(name: "quote_n", scope: !361, file: !361, line: 1073, type: !3995, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3997)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!51, !53, !51}
!3997 = !{!3998, !3999}
!3998 = !DILocalVariable(name: "n", arg: 1, scope: !3994, file: !361, line: 1073, type: !53)
!3999 = !DILocalVariable(name: "arg", arg: 2, scope: !3994, file: !361, line: 1073, type: !51)
!4000 = !DILocation(line: 0, scope: !3994)
!4001 = !DILocation(line: 0, scope: !3973, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 1075, column: 10, scope: !3994)
!4003 = !DILocation(line: 1063, column: 10, scope: !3973, inlinedAt: !4002)
!4004 = !DILocation(line: 1075, column: 3, scope: !3994)
!4005 = distinct !DISubprogram(name: "quote", scope: !361, file: !361, line: 1079, type: !601, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !4006)
!4006 = !{!4007}
!4007 = !DILocalVariable(name: "arg", arg: 1, scope: !4005, file: !361, line: 1079, type: !51)
!4008 = !DILocation(line: 0, scope: !4005)
!4009 = !DILocation(line: 0, scope: !3994, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 1081, column: 10, scope: !4005)
!4011 = !DILocation(line: 0, scope: !3973, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 1075, column: 10, scope: !3994, inlinedAt: !4010)
!4013 = !DILocation(line: 1063, column: 10, scope: !3973, inlinedAt: !4012)
!4014 = !DILocation(line: 1081, column: 3, scope: !4005)
!4015 = distinct !DISubprogram(name: "version_etc_arn", scope: !518, file: !518, line: 61, type: !4016, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !4021)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{null, !4018, !51, !51, !51, !4020, !108}
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1301, line: 7, baseType: !528)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!4021 = !{!4022, !4023, !4024, !4025, !4026, !4027}
!4022 = !DILocalVariable(name: "stream", arg: 1, scope: !4015, file: !518, line: 61, type: !4018)
!4023 = !DILocalVariable(name: "command_name", arg: 2, scope: !4015, file: !518, line: 62, type: !51)
!4024 = !DILocalVariable(name: "package", arg: 3, scope: !4015, file: !518, line: 62, type: !51)
!4025 = !DILocalVariable(name: "version", arg: 4, scope: !4015, file: !518, line: 63, type: !51)
!4026 = !DILocalVariable(name: "authors", arg: 5, scope: !4015, file: !518, line: 64, type: !4020)
!4027 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4015, file: !518, line: 64, type: !108)
!4028 = !DILocation(line: 0, scope: !4015)
!4029 = !DILocation(line: 66, column: 7, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4015, file: !518, line: 66, column: 7)
!4031 = !DILocation(line: 66, column: 7, scope: !4015)
!4032 = !DILocation(line: 67, column: 5, scope: !4030)
!4033 = !DILocation(line: 69, column: 5, scope: !4030)
!4034 = !DILocation(line: 83, column: 3, scope: !4015)
!4035 = !DILocation(line: 85, column: 3, scope: !4015)
!4036 = !DILocation(line: 88, column: 3, scope: !4015)
!4037 = !DILocation(line: 95, column: 3, scope: !4015)
!4038 = !DILocation(line: 97, column: 3, scope: !4015)
!4039 = !DILocation(line: 105, column: 7, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4015, file: !518, line: 98, column: 5)
!4041 = !DILocation(line: 106, column: 7, scope: !4040)
!4042 = !DILocation(line: 109, column: 7, scope: !4040)
!4043 = !DILocation(line: 110, column: 7, scope: !4040)
!4044 = !DILocation(line: 113, column: 7, scope: !4040)
!4045 = !DILocation(line: 115, column: 7, scope: !4040)
!4046 = !DILocation(line: 120, column: 7, scope: !4040)
!4047 = !DILocation(line: 122, column: 7, scope: !4040)
!4048 = !DILocation(line: 127, column: 7, scope: !4040)
!4049 = !DILocation(line: 129, column: 7, scope: !4040)
!4050 = !DILocation(line: 134, column: 7, scope: !4040)
!4051 = !DILocation(line: 137, column: 7, scope: !4040)
!4052 = !DILocation(line: 142, column: 7, scope: !4040)
!4053 = !DILocation(line: 145, column: 7, scope: !4040)
!4054 = !DILocation(line: 150, column: 7, scope: !4040)
!4055 = !DILocation(line: 154, column: 7, scope: !4040)
!4056 = !DILocation(line: 159, column: 7, scope: !4040)
!4057 = !DILocation(line: 163, column: 7, scope: !4040)
!4058 = !DILocation(line: 170, column: 7, scope: !4040)
!4059 = !DILocation(line: 174, column: 7, scope: !4040)
!4060 = !DILocation(line: 176, column: 1, scope: !4015)
!4061 = distinct !DISubprogram(name: "version_etc_ar", scope: !518, file: !518, line: 183, type: !4062, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !4064)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{null, !4018, !51, !51, !51, !4020}
!4064 = !{!4065, !4066, !4067, !4068, !4069, !4070}
!4065 = !DILocalVariable(name: "stream", arg: 1, scope: !4061, file: !518, line: 183, type: !4018)
!4066 = !DILocalVariable(name: "command_name", arg: 2, scope: !4061, file: !518, line: 184, type: !51)
!4067 = !DILocalVariable(name: "package", arg: 3, scope: !4061, file: !518, line: 184, type: !51)
!4068 = !DILocalVariable(name: "version", arg: 4, scope: !4061, file: !518, line: 185, type: !51)
!4069 = !DILocalVariable(name: "authors", arg: 5, scope: !4061, file: !518, line: 185, type: !4020)
!4070 = !DILocalVariable(name: "n_authors", scope: !4061, file: !518, line: 187, type: !108)
!4071 = !DILocation(line: 0, scope: !4061)
!4072 = !DILocation(line: 189, column: 8, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4061, file: !518, line: 189, column: 3)
!4074 = !DILocation(line: 0, scope: !4073)
!4075 = !DILocation(line: 189, column: 23, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4073, file: !518, line: 189, column: 3)
!4077 = !DILocation(line: 189, column: 3, scope: !4073)
!4078 = !DILocation(line: 189, column: 52, scope: !4076)
!4079 = distinct !{!4079, !4077, !4080}
!4080 = !DILocation(line: 190, column: 5, scope: !4073)
!4081 = !DILocation(line: 191, column: 3, scope: !4061)
!4082 = !DILocation(line: 192, column: 1, scope: !4061)
!4083 = distinct !DISubprogram(name: "version_etc_va", scope: !518, file: !518, line: 199, type: !4084, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !4093)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{null, !4018, !51, !51, !51, !4086}
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !518, line: 192, size: 192, elements: !4088)
!4088 = !{!4089, !4090, !4091, !4092}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4087, file: !518, line: 192, baseType: !7, size: 32)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4087, file: !518, line: 192, baseType: !7, size: 32, offset: 32)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4087, file: !518, line: 192, baseType: !106, size: 64, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4087, file: !518, line: 192, baseType: !106, size: 64, offset: 128)
!4093 = !{!4094, !4095, !4096, !4097, !4098, !4099, !4100}
!4094 = !DILocalVariable(name: "stream", arg: 1, scope: !4083, file: !518, line: 199, type: !4018)
!4095 = !DILocalVariable(name: "command_name", arg: 2, scope: !4083, file: !518, line: 200, type: !51)
!4096 = !DILocalVariable(name: "package", arg: 3, scope: !4083, file: !518, line: 200, type: !51)
!4097 = !DILocalVariable(name: "version", arg: 4, scope: !4083, file: !518, line: 201, type: !51)
!4098 = !DILocalVariable(name: "authors", arg: 5, scope: !4083, file: !518, line: 201, type: !4086)
!4099 = !DILocalVariable(name: "n_authors", scope: !4083, file: !518, line: 203, type: !108)
!4100 = !DILocalVariable(name: "authtab", scope: !4083, file: !518, line: 204, type: !4101)
!4101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 640, elements: !209)
!4102 = !DILocation(line: 0, scope: !4083)
!4103 = !DILocation(line: 204, column: 3, scope: !4083)
!4104 = !DILocation(line: 204, column: 15, scope: !4083)
!4105 = !DILocation(line: 0, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4107, file: !518, line: 206, column: 3)
!4107 = distinct !DILexicalBlock(scope: !4083, file: !518, line: 206, column: 3)
!4108 = !DILocation(line: 208, column: 35, scope: !4106)
!4109 = !DILocation(line: 208, column: 14, scope: !4106)
!4110 = !DILocation(line: 208, column: 33, scope: !4106)
!4111 = !DILocation(line: 208, column: 67, scope: !4106)
!4112 = !DILocation(line: 206, column: 3, scope: !4107)
!4113 = !DILocation(line: 0, scope: !4107)
!4114 = !DILocation(line: 211, column: 3, scope: !4083)
!4115 = !DILocation(line: 213, column: 1, scope: !4083)
!4116 = distinct !DISubprogram(name: "version_etc", scope: !518, file: !518, line: 230, type: !4117, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !4119)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{null, !4018, !51, !51, !51, null}
!4119 = !{!4120, !4121, !4122, !4123, !4124}
!4120 = !DILocalVariable(name: "stream", arg: 1, scope: !4116, file: !518, line: 230, type: !4018)
!4121 = !DILocalVariable(name: "command_name", arg: 2, scope: !4116, file: !518, line: 231, type: !51)
!4122 = !DILocalVariable(name: "package", arg: 3, scope: !4116, file: !518, line: 231, type: !51)
!4123 = !DILocalVariable(name: "version", arg: 4, scope: !4116, file: !518, line: 232, type: !51)
!4124 = !DILocalVariable(name: "authors", scope: !4116, file: !518, line: 234, type: !4125)
!4125 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !56, line: 52, baseType: !4126)
!4126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4127, line: 32, baseType: !4128)
!4127 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!4128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !518, line: 234, baseType: !4129)
!4129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4087, size: 192, elements: !91)
!4130 = !DILocation(line: 0, scope: !4116)
!4131 = !DILocation(line: 234, column: 3, scope: !4116)
!4132 = !DILocation(line: 234, column: 11, scope: !4116)
!4133 = !DILocation(line: 236, column: 3, scope: !4116)
!4134 = !DILocation(line: 237, column: 3, scope: !4116)
!4135 = !DILocation(line: 238, column: 3, scope: !4116)
!4136 = !DILocation(line: 239, column: 1, scope: !4116)
!4137 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !518, file: !518, line: 242, type: !135, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !54)
!4138 = !DILocation(line: 244, column: 3, scope: !4137)
!4139 = !DILocation(line: 249, column: 3, scope: !4137)
!4140 = !DILocation(line: 255, column: 3, scope: !4137)
!4141 = !DILocation(line: 260, column: 3, scope: !4137)
!4142 = !DILocation(line: 262, column: 1, scope: !4137)
!4143 = distinct !DISubprogram(name: "xnmalloc", scope: !370, file: !370, line: 99, type: !4144, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !559, retainedNodes: !4146)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!106, !108, !108}
!4146 = !{!4147, !4148}
!4147 = !DILocalVariable(name: "n", arg: 1, scope: !4143, file: !370, line: 99, type: !108)
!4148 = !DILocalVariable(name: "s", arg: 2, scope: !4143, file: !370, line: 99, type: !108)
!4149 = !DILocation(line: 0, scope: !4143)
!4150 = !DILocation(line: 101, column: 7, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4143, file: !370, line: 101, column: 7)
!4152 = !DILocation(line: 101, column: 7, scope: !4143)
!4153 = !DILocation(line: 102, column: 5, scope: !4151)
!4154 = !DILocation(line: 103, column: 21, scope: !4143)
!4155 = !DILocalVariable(name: "n", arg: 1, scope: !4156, file: !560, line: 39, type: !108)
!4156 = distinct !DISubprogram(name: "xmalloc", scope: !560, file: !560, line: 39, type: !4157, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !559, retainedNodes: !4159)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!106, !108}
!4159 = !{!4155, !4160}
!4160 = !DILocalVariable(name: "p", scope: !4156, file: !560, line: 41, type: !106)
!4161 = !DILocation(line: 0, scope: !4156, inlinedAt: !4162)
!4162 = distinct !DILocation(line: 103, column: 10, scope: !4143)
!4163 = !DILocation(line: 41, column: 13, scope: !4156, inlinedAt: !4162)
!4164 = !DILocation(line: 42, column: 8, scope: !4165, inlinedAt: !4162)
!4165 = distinct !DILexicalBlock(scope: !4156, file: !560, line: 42, column: 7)
!4166 = !DILocation(line: 42, column: 15, scope: !4165, inlinedAt: !4162)
!4167 = !DILocation(line: 42, column: 10, scope: !4165, inlinedAt: !4162)
!4168 = !DILocation(line: 43, column: 5, scope: !4165, inlinedAt: !4162)
!4169 = !DILocation(line: 103, column: 3, scope: !4143)
!4170 = !DILocation(line: 0, scope: !4156)
!4171 = !DILocation(line: 41, column: 13, scope: !4156)
!4172 = !DILocation(line: 42, column: 8, scope: !4165)
!4173 = !DILocation(line: 42, column: 15, scope: !4165)
!4174 = !DILocation(line: 42, column: 10, scope: !4165)
!4175 = !DILocation(line: 43, column: 5, scope: !4165)
!4176 = !DILocation(line: 44, column: 3, scope: !4156)
!4177 = distinct !DISubprogram(name: "xnrealloc", scope: !370, file: !370, line: 112, type: !4178, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !559, retainedNodes: !4180)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!106, !106, !108, !108}
!4180 = !{!4181, !4182, !4183}
!4181 = !DILocalVariable(name: "p", arg: 1, scope: !4177, file: !370, line: 112, type: !106)
!4182 = !DILocalVariable(name: "n", arg: 2, scope: !4177, file: !370, line: 112, type: !108)
!4183 = !DILocalVariable(name: "s", arg: 3, scope: !4177, file: !370, line: 112, type: !108)
!4184 = !DILocation(line: 0, scope: !4177)
!4185 = !DILocation(line: 114, column: 7, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4177, file: !370, line: 114, column: 7)
!4187 = !DILocation(line: 114, column: 7, scope: !4177)
!4188 = !DILocation(line: 115, column: 5, scope: !4186)
!4189 = !DILocation(line: 116, column: 25, scope: !4177)
!4190 = !DILocalVariable(name: "p", arg: 1, scope: !4191, file: !560, line: 51, type: !106)
!4191 = distinct !DISubprogram(name: "xrealloc", scope: !560, file: !560, line: 51, type: !4192, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !559, retainedNodes: !4194)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!106, !106, !108}
!4194 = !{!4190, !4195}
!4195 = !DILocalVariable(name: "n", arg: 2, scope: !4191, file: !560, line: 51, type: !108)
!4196 = !DILocation(line: 0, scope: !4191, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 116, column: 10, scope: !4177)
!4198 = !DILocation(line: 53, column: 8, scope: !4199, inlinedAt: !4197)
!4199 = distinct !DILexicalBlock(scope: !4191, file: !560, line: 53, column: 7)
!4200 = !DILocation(line: 53, column: 13, scope: !4199, inlinedAt: !4197)
!4201 = !DILocation(line: 53, column: 10, scope: !4199, inlinedAt: !4197)
!4202 = !DILocation(line: 57, column: 7, scope: !4203, inlinedAt: !4197)
!4203 = distinct !DILexicalBlock(scope: !4199, file: !560, line: 54, column: 5)
!4204 = !DILocation(line: 58, column: 7, scope: !4203, inlinedAt: !4197)
!4205 = !DILocation(line: 61, column: 7, scope: !4191, inlinedAt: !4197)
!4206 = !DILocation(line: 62, column: 8, scope: !4207, inlinedAt: !4197)
!4207 = distinct !DILexicalBlock(scope: !4191, file: !560, line: 62, column: 7)
!4208 = !DILocation(line: 62, column: 13, scope: !4207, inlinedAt: !4197)
!4209 = !DILocation(line: 62, column: 10, scope: !4207, inlinedAt: !4197)
!4210 = !DILocation(line: 63, column: 5, scope: !4207, inlinedAt: !4197)
!4211 = !DILocation(line: 116, column: 3, scope: !4177)
!4212 = !DILocation(line: 0, scope: !4191)
!4213 = !DILocation(line: 53, column: 8, scope: !4199)
!4214 = !DILocation(line: 53, column: 13, scope: !4199)
!4215 = !DILocation(line: 53, column: 10, scope: !4199)
!4216 = !DILocation(line: 57, column: 7, scope: !4203)
!4217 = !DILocation(line: 58, column: 7, scope: !4203)
!4218 = !DILocation(line: 61, column: 7, scope: !4191)
!4219 = !DILocation(line: 62, column: 8, scope: !4207)
!4220 = !DILocation(line: 62, column: 13, scope: !4207)
!4221 = !DILocation(line: 62, column: 10, scope: !4207)
!4222 = !DILocation(line: 63, column: 5, scope: !4207)
!4223 = !DILocation(line: 65, column: 1, scope: !4191)
!4224 = !DILocation(line: 0, scope: !563)
!4225 = !DILocation(line: 176, column: 14, scope: !563)
!4226 = !DILocation(line: 178, column: 9, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !563, file: !370, line: 178, column: 7)
!4228 = !DILocation(line: 178, column: 7, scope: !563)
!4229 = !DILocation(line: 180, column: 13, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4231, file: !370, line: 180, column: 11)
!4231 = distinct !DILexicalBlock(scope: !4227, file: !370, line: 179, column: 5)
!4232 = !DILocation(line: 180, column: 11, scope: !4231)
!4233 = !DILocation(line: 188, column: 30, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4230, file: !370, line: 181, column: 9)
!4235 = !DILocation(line: 189, column: 16, scope: !4234)
!4236 = !DILocation(line: 189, column: 13, scope: !4234)
!4237 = !DILocation(line: 190, column: 9, scope: !4234)
!4238 = !DILocation(line: 191, column: 11, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4231, file: !370, line: 191, column: 11)
!4240 = !DILocation(line: 191, column: 11, scope: !4231)
!4241 = !DILocation(line: 206, column: 7, scope: !563)
!4242 = !DILocation(line: 207, column: 25, scope: !563)
!4243 = !DILocation(line: 0, scope: !4191, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 207, column: 10, scope: !563)
!4245 = !DILocation(line: 53, column: 10, scope: !4199, inlinedAt: !4244)
!4246 = !DILocation(line: 192, column: 9, scope: !4239)
!4247 = !DILocation(line: 200, column: 69, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4249, file: !370, line: 200, column: 11)
!4249 = distinct !DILexicalBlock(scope: !4227, file: !370, line: 195, column: 5)
!4250 = !DILocation(line: 201, column: 11, scope: !4248)
!4251 = !DILocation(line: 200, column: 11, scope: !4249)
!4252 = !DILocation(line: 202, column: 9, scope: !4248)
!4253 = !DILocation(line: 203, column: 14, scope: !4249)
!4254 = !DILocation(line: 203, column: 18, scope: !4249)
!4255 = !DILocation(line: 203, column: 9, scope: !4249)
!4256 = !DILocation(line: 53, column: 8, scope: !4199, inlinedAt: !4244)
!4257 = !DILocation(line: 57, column: 7, scope: !4203, inlinedAt: !4244)
!4258 = !DILocation(line: 58, column: 7, scope: !4203, inlinedAt: !4244)
!4259 = !DILocation(line: 61, column: 7, scope: !4191, inlinedAt: !4244)
!4260 = !DILocation(line: 62, column: 8, scope: !4207, inlinedAt: !4244)
!4261 = !DILocation(line: 62, column: 13, scope: !4207, inlinedAt: !4244)
!4262 = !DILocation(line: 62, column: 10, scope: !4207, inlinedAt: !4244)
!4263 = !DILocation(line: 63, column: 5, scope: !4207, inlinedAt: !4244)
!4264 = !DILocation(line: 207, column: 3, scope: !563)
!4265 = distinct !DISubprogram(name: "xcharalloc", scope: !370, file: !370, line: 216, type: !3433, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !559, retainedNodes: !4266)
!4266 = !{!4267}
!4267 = !DILocalVariable(name: "n", arg: 1, scope: !4265, file: !370, line: 216, type: !108)
!4268 = !DILocation(line: 0, scope: !4265)
!4269 = !DILocation(line: 0, scope: !4156, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 218, column: 10, scope: !4265)
!4271 = !DILocation(line: 41, column: 13, scope: !4156, inlinedAt: !4270)
!4272 = !DILocation(line: 42, column: 8, scope: !4165, inlinedAt: !4270)
!4273 = !DILocation(line: 42, column: 15, scope: !4165, inlinedAt: !4270)
!4274 = !DILocation(line: 42, column: 10, scope: !4165, inlinedAt: !4270)
!4275 = !DILocation(line: 43, column: 5, scope: !4165, inlinedAt: !4270)
!4276 = !DILocation(line: 218, column: 3, scope: !4265)
!4277 = distinct !DISubprogram(name: "x2realloc", scope: !560, file: !560, line: 74, type: !4278, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !559, retainedNodes: !4280)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!106, !106, !566}
!4280 = !{!4281, !4282}
!4281 = !DILocalVariable(name: "p", arg: 1, scope: !4277, file: !560, line: 74, type: !106)
!4282 = !DILocalVariable(name: "pn", arg: 2, scope: !4277, file: !560, line: 74, type: !566)
!4283 = !DILocation(line: 0, scope: !4277)
!4284 = !DILocation(line: 0, scope: !563, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 76, column: 10, scope: !4277)
!4286 = !DILocation(line: 176, column: 14, scope: !563, inlinedAt: !4285)
!4287 = !DILocation(line: 178, column: 9, scope: !4227, inlinedAt: !4285)
!4288 = !DILocation(line: 178, column: 7, scope: !563, inlinedAt: !4285)
!4289 = !DILocation(line: 180, column: 13, scope: !4230, inlinedAt: !4285)
!4290 = !DILocation(line: 180, column: 11, scope: !4231, inlinedAt: !4285)
!4291 = !DILocation(line: 191, column: 11, scope: !4239, inlinedAt: !4285)
!4292 = !DILocation(line: 191, column: 11, scope: !4231, inlinedAt: !4285)
!4293 = !DILocation(line: 206, column: 7, scope: !563, inlinedAt: !4285)
!4294 = !DILocation(line: 0, scope: !4191, inlinedAt: !4295)
!4295 = distinct !DILocation(line: 207, column: 10, scope: !563, inlinedAt: !4285)
!4296 = !DILocation(line: 53, column: 10, scope: !4199, inlinedAt: !4295)
!4297 = !DILocation(line: 192, column: 9, scope: !4239, inlinedAt: !4285)
!4298 = !DILocation(line: 201, column: 11, scope: !4248, inlinedAt: !4285)
!4299 = !DILocation(line: 200, column: 11, scope: !4249, inlinedAt: !4285)
!4300 = !DILocation(line: 202, column: 9, scope: !4248, inlinedAt: !4285)
!4301 = !DILocation(line: 203, column: 14, scope: !4249, inlinedAt: !4285)
!4302 = !DILocation(line: 203, column: 18, scope: !4249, inlinedAt: !4285)
!4303 = !DILocation(line: 203, column: 9, scope: !4249, inlinedAt: !4285)
!4304 = !DILocation(line: 53, column: 8, scope: !4199, inlinedAt: !4295)
!4305 = !DILocation(line: 57, column: 7, scope: !4203, inlinedAt: !4295)
!4306 = !DILocation(line: 58, column: 7, scope: !4203, inlinedAt: !4295)
!4307 = !DILocation(line: 61, column: 7, scope: !4191, inlinedAt: !4295)
!4308 = !DILocation(line: 62, column: 8, scope: !4207, inlinedAt: !4295)
!4309 = !DILocation(line: 62, column: 13, scope: !4207, inlinedAt: !4295)
!4310 = !DILocation(line: 62, column: 10, scope: !4207, inlinedAt: !4295)
!4311 = !DILocation(line: 63, column: 5, scope: !4207, inlinedAt: !4295)
!4312 = !DILocation(line: 76, column: 3, scope: !4277)
!4313 = distinct !DISubprogram(name: "xzalloc", scope: !560, file: !560, line: 84, type: !4157, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !559, retainedNodes: !4314)
!4314 = !{!4315}
!4315 = !DILocalVariable(name: "n", arg: 1, scope: !4313, file: !560, line: 84, type: !108)
!4316 = !DILocation(line: 0, scope: !4313)
!4317 = !DILocalVariable(name: "n", arg: 1, scope: !4318, file: !560, line: 93, type: !108)
!4318 = distinct !DISubprogram(name: "xcalloc", scope: !560, file: !560, line: 93, type: !4144, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !559, retainedNodes: !4319)
!4319 = !{!4317, !4320, !4321}
!4320 = !DILocalVariable(name: "s", arg: 2, scope: !4318, file: !560, line: 93, type: !108)
!4321 = !DILocalVariable(name: "p", scope: !4318, file: !560, line: 95, type: !106)
!4322 = !DILocation(line: 0, scope: !4318, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 86, column: 10, scope: !4313)
!4324 = !DILocation(line: 100, column: 7, scope: !4325, inlinedAt: !4323)
!4325 = distinct !DILexicalBlock(scope: !4318, file: !560, line: 100, column: 7)
!4326 = !DILocation(line: 101, column: 7, scope: !4325, inlinedAt: !4323)
!4327 = !DILocation(line: 101, column: 18, scope: !4325, inlinedAt: !4323)
!4328 = !DILocation(line: 101, column: 16, scope: !4325, inlinedAt: !4323)
!4329 = !DILocation(line: 100, column: 7, scope: !4318, inlinedAt: !4323)
!4330 = !DILocation(line: 102, column: 5, scope: !4325, inlinedAt: !4323)
!4331 = !DILocation(line: 86, column: 3, scope: !4313)
!4332 = !DILocation(line: 0, scope: !4318)
!4333 = !DILocation(line: 100, column: 7, scope: !4325)
!4334 = !DILocation(line: 101, column: 7, scope: !4325)
!4335 = !DILocation(line: 101, column: 18, scope: !4325)
!4336 = !DILocation(line: 101, column: 16, scope: !4325)
!4337 = !DILocation(line: 100, column: 7, scope: !4318)
!4338 = !DILocation(line: 102, column: 5, scope: !4325)
!4339 = !DILocation(line: 103, column: 3, scope: !4318)
!4340 = distinct !DISubprogram(name: "xmemdup", scope: !560, file: !560, line: 111, type: !4341, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !559, retainedNodes: !4343)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!106, !182, !108}
!4343 = !{!4344, !4345}
!4344 = !DILocalVariable(name: "p", arg: 1, scope: !4340, file: !560, line: 111, type: !182)
!4345 = !DILocalVariable(name: "s", arg: 2, scope: !4340, file: !560, line: 111, type: !108)
!4346 = !DILocation(line: 0, scope: !4340)
!4347 = !DILocation(line: 0, scope: !4156, inlinedAt: !4348)
!4348 = distinct !DILocation(line: 113, column: 18, scope: !4340)
!4349 = !DILocation(line: 41, column: 13, scope: !4156, inlinedAt: !4348)
!4350 = !DILocation(line: 42, column: 8, scope: !4165, inlinedAt: !4348)
!4351 = !DILocation(line: 42, column: 15, scope: !4165, inlinedAt: !4348)
!4352 = !DILocation(line: 42, column: 10, scope: !4165, inlinedAt: !4348)
!4353 = !DILocation(line: 43, column: 5, scope: !4165, inlinedAt: !4348)
!4354 = !DILocalVariable(name: "__dest", arg: 1, scope: !4355, file: !2395, line: 31, type: !4358)
!4355 = distinct !DISubprogram(name: "memcpy", scope: !2395, file: !2395, line: 31, type: !4356, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !559, retainedNodes: !4360)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!106, !4358, !4359, !108}
!4358 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!4359 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !182)
!4360 = !{!4354, !4361, !4362}
!4361 = !DILocalVariable(name: "__src", arg: 2, scope: !4355, file: !2395, line: 31, type: !4359)
!4362 = !DILocalVariable(name: "__len", arg: 3, scope: !4355, file: !2395, line: 31, type: !108)
!4363 = !DILocation(line: 0, scope: !4355, inlinedAt: !4364)
!4364 = distinct !DILocation(line: 113, column: 10, scope: !4340)
!4365 = !DILocation(line: 34, column: 10, scope: !4355, inlinedAt: !4364)
!4366 = !DILocation(line: 113, column: 3, scope: !4340)
!4367 = distinct !DISubprogram(name: "xstrdup", scope: !560, file: !560, line: 119, type: !128, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !559, retainedNodes: !4368)
!4368 = !{!4369}
!4369 = !DILocalVariable(name: "string", arg: 1, scope: !4367, file: !560, line: 119, type: !51)
!4370 = !DILocation(line: 0, scope: !4367)
!4371 = !DILocation(line: 121, column: 27, scope: !4367)
!4372 = !DILocation(line: 121, column: 43, scope: !4367)
!4373 = !DILocation(line: 0, scope: !4340, inlinedAt: !4374)
!4374 = distinct !DILocation(line: 121, column: 10, scope: !4367)
!4375 = !DILocation(line: 0, scope: !4156, inlinedAt: !4376)
!4376 = distinct !DILocation(line: 113, column: 18, scope: !4340, inlinedAt: !4374)
!4377 = !DILocation(line: 41, column: 13, scope: !4156, inlinedAt: !4376)
!4378 = !DILocation(line: 42, column: 8, scope: !4165, inlinedAt: !4376)
!4379 = !DILocation(line: 42, column: 15, scope: !4165, inlinedAt: !4376)
!4380 = !DILocation(line: 42, column: 10, scope: !4165, inlinedAt: !4376)
!4381 = !DILocation(line: 43, column: 5, scope: !4165, inlinedAt: !4376)
!4382 = !DILocation(line: 0, scope: !4355, inlinedAt: !4383)
!4383 = distinct !DILocation(line: 113, column: 10, scope: !4340, inlinedAt: !4374)
!4384 = !DILocation(line: 34, column: 10, scope: !4355, inlinedAt: !4383)
!4385 = !DILocation(line: 121, column: 3, scope: !4367)
!4386 = distinct !DISubprogram(name: "xalloc_die", scope: !581, file: !581, line: 32, type: !135, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !580, retainedNodes: !54)
!4387 = !DILocation(line: 34, column: 10, scope: !4386)
!4388 = !DILocation(line: 34, column: 33, scope: !4386)
!4389 = !DILocation(line: 34, column: 3, scope: !4386)
!4390 = !DILocation(line: 40, column: 3, scope: !4386)
!4391 = distinct !DISubprogram(name: "xnumtoumax", scope: !4392, file: !4392, line: 36, type: !4393, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !4398)
!4392 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4393 = !DISubroutineType(types: !4394)
!4394 = !{!4395, !51, !53, !4395, !4395, !51, !51, !53}
!4395 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !4396, line: 102, baseType: !4397)
!4396 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!4397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !83, line: 73, baseType: !110)
!4398 = !{!4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4408}
!4399 = !DILocalVariable(name: "n_str", arg: 1, scope: !4391, file: !4392, line: 36, type: !51)
!4400 = !DILocalVariable(name: "base", arg: 2, scope: !4391, file: !4392, line: 36, type: !53)
!4401 = !DILocalVariable(name: "min", arg: 3, scope: !4391, file: !4392, line: 36, type: !4395)
!4402 = !DILocalVariable(name: "max", arg: 4, scope: !4391, file: !4392, line: 36, type: !4395)
!4403 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4391, file: !4392, line: 37, type: !51)
!4404 = !DILocalVariable(name: "err", arg: 6, scope: !4391, file: !4392, line: 37, type: !51)
!4405 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4391, file: !4392, line: 37, type: !53)
!4406 = !DILocalVariable(name: "s_err", scope: !4391, file: !4392, line: 39, type: !4407)
!4407 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !587, line: 38, baseType: !586)
!4408 = !DILocalVariable(name: "tnum", scope: !4391, file: !4392, line: 41, type: !4395)
!4409 = !DILocation(line: 0, scope: !4391)
!4410 = !DILocation(line: 41, column: 3, scope: !4391)
!4411 = !DILocation(line: 42, column: 11, scope: !4391)
!4412 = !DILocation(line: 44, column: 7, scope: !4391)
!4413 = !DILocation(line: 69, column: 50, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4415, file: !4392, line: 67, column: 5)
!4415 = distinct !DILexicalBlock(scope: !4391, file: !4392, line: 66, column: 7)
!4416 = !DILocation(line: 46, column: 11, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4418, file: !4392, line: 46, column: 11)
!4418 = distinct !DILexicalBlock(scope: !4419, file: !4392, line: 45, column: 5)
!4419 = distinct !DILexicalBlock(scope: !4391, file: !4392, line: 44, column: 7)
!4420 = !DILocation(line: 46, column: 16, scope: !4417)
!4421 = !DILocation(line: 46, column: 29, scope: !4417)
!4422 = !DILocation(line: 46, column: 22, scope: !4417)
!4423 = !DILocation(line: 51, column: 20, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4425, file: !4392, line: 51, column: 15)
!4425 = distinct !DILexicalBlock(scope: !4417, file: !4392, line: 47, column: 9)
!4426 = !DILocation(line: 0, scope: !4424)
!4427 = !DILocation(line: 51, column: 15, scope: !4425)
!4428 = !DILocation(line: 52, column: 19, scope: !4424)
!4429 = !DILocation(line: 66, column: 7, scope: !4391)
!4430 = !DILocation(line: 58, column: 19, scope: !4424)
!4431 = !DILocation(line: 62, column: 5, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4419, file: !4392, line: 61, column: 12)
!4433 = !DILocation(line: 62, column: 11, scope: !4432)
!4434 = !DILocation(line: 64, column: 5, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4432, file: !4392, line: 63, column: 12)
!4436 = !DILocation(line: 64, column: 11, scope: !4435)
!4437 = !DILocation(line: 69, column: 14, scope: !4414)
!4438 = !DILocation(line: 69, column: 56, scope: !4414)
!4439 = !DILocation(line: 70, column: 29, scope: !4414)
!4440 = !DILocation(line: 69, column: 7, scope: !4414)
!4441 = !DILocation(line: 73, column: 10, scope: !4391)
!4442 = !DILocation(line: 71, column: 5, scope: !4414)
!4443 = !DILocation(line: 74, column: 1, scope: !4391)
!4444 = !DILocation(line: 73, column: 3, scope: !4391)
!4445 = distinct !DISubprogram(name: "xdectoumax", scope: !4392, file: !4392, line: 82, type: !4446, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !4448)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!4395, !51, !4395, !4395, !51, !51, !53}
!4448 = !{!4449, !4450, !4451, !4452, !4453, !4454}
!4449 = !DILocalVariable(name: "n_str", arg: 1, scope: !4445, file: !4392, line: 82, type: !51)
!4450 = !DILocalVariable(name: "min", arg: 2, scope: !4445, file: !4392, line: 82, type: !4395)
!4451 = !DILocalVariable(name: "max", arg: 3, scope: !4445, file: !4392, line: 82, type: !4395)
!4452 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4445, file: !4392, line: 83, type: !51)
!4453 = !DILocalVariable(name: "err", arg: 5, scope: !4445, file: !4392, line: 83, type: !51)
!4454 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4445, file: !4392, line: 83, type: !53)
!4455 = !DILocation(line: 0, scope: !4445)
!4456 = !DILocation(line: 85, column: 10, scope: !4445)
!4457 = !DILocation(line: 85, column: 3, scope: !4445)
!4458 = distinct !DISubprogram(name: "xstrtoumax", scope: !4459, file: !4459, line: 76, type: !4460, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !603, retainedNodes: !4463)
!4459 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!4407, !51, !598, !53, !4462, !51}
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4463 = !{!4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4476, !4477, !4480, !4481}
!4464 = !DILocalVariable(name: "s", arg: 1, scope: !4458, file: !4459, line: 76, type: !51)
!4465 = !DILocalVariable(name: "ptr", arg: 2, scope: !4458, file: !4459, line: 76, type: !598)
!4466 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4458, file: !4459, line: 76, type: !53)
!4467 = !DILocalVariable(name: "val", arg: 4, scope: !4458, file: !4459, line: 77, type: !4462)
!4468 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4458, file: !4459, line: 77, type: !51)
!4469 = !DILocalVariable(name: "t_ptr", scope: !4458, file: !4459, line: 79, type: !49)
!4470 = !DILocalVariable(name: "p", scope: !4458, file: !4459, line: 80, type: !598)
!4471 = !DILocalVariable(name: "tmp", scope: !4458, file: !4459, line: 81, type: !4395)
!4472 = !DILocalVariable(name: "err", scope: !4458, file: !4459, line: 82, type: !4407)
!4473 = !DILocalVariable(name: "q", scope: !4474, file: !4459, line: 92, type: !51)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !4459, line: 91, column: 5)
!4475 = distinct !DILexicalBlock(scope: !4458, file: !4459, line: 90, column: 7)
!4476 = !DILocalVariable(name: "ch", scope: !4474, file: !4459, line: 93, type: !178)
!4477 = !DILocalVariable(name: "base", scope: !4478, file: !4459, line: 129, type: !53)
!4478 = distinct !DILexicalBlock(scope: !4479, file: !4459, line: 128, column: 5)
!4479 = distinct !DILexicalBlock(scope: !4458, file: !4459, line: 127, column: 7)
!4480 = !DILocalVariable(name: "suffixes", scope: !4478, file: !4459, line: 130, type: !53)
!4481 = !DILocalVariable(name: "overflow", scope: !4478, file: !4459, line: 131, type: !4407)
!4482 = !DILocation(line: 0, scope: !4458)
!4483 = !DILocation(line: 79, column: 3, scope: !4458)
!4484 = !DILocation(line: 84, column: 3, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4486, file: !4459, line: 84, column: 3)
!4486 = distinct !DILexicalBlock(scope: !4458, file: !4459, line: 84, column: 3)
!4487 = !DILocation(line: 86, column: 8, scope: !4458)
!4488 = !DILocation(line: 88, column: 3, scope: !4458)
!4489 = !DILocation(line: 88, column: 9, scope: !4458)
!4490 = !DILocation(line: 0, scope: !4474)
!4491 = !DILocation(line: 94, column: 7, scope: !4474)
!4492 = !DILocation(line: 94, column: 14, scope: !4474)
!4493 = !DILocation(line: 95, column: 15, scope: !4474)
!4494 = distinct !{!4494, !4491, !4495}
!4495 = !DILocation(line: 95, column: 17, scope: !4474)
!4496 = !DILocation(line: 96, column: 14, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4474, file: !4459, line: 96, column: 11)
!4498 = !DILocalVariable(name: "nptr", arg: 1, scope: !4499, file: !4500, line: 336, type: !4503)
!4499 = distinct !DISubprogram(name: "strtoumax", scope: !4500, file: !4500, line: 336, type: !4501, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !603, retainedNodes: !4505)
!4500 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!4501 = !DISubroutineType(types: !4502)
!4502 = !{!4395, !4503, !4504, !53}
!4503 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!4504 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !598)
!4505 = !{!4498, !4506, !4507}
!4506 = !DILocalVariable(name: "endptr", arg: 2, scope: !4499, file: !4500, line: 336, type: !4504)
!4507 = !DILocalVariable(name: "base", arg: 3, scope: !4499, file: !4500, line: 336, type: !53)
!4508 = !DILocation(line: 0, scope: !4499, inlinedAt: !4509)
!4509 = distinct !DILocation(line: 100, column: 9, scope: !4458)
!4510 = !DILocation(line: 339, column: 10, scope: !4499, inlinedAt: !4509)
!4511 = !DILocation(line: 102, column: 7, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4458, file: !4459, line: 102, column: 7)
!4513 = !DILocation(line: 102, column: 10, scope: !4512)
!4514 = !DILocation(line: 102, column: 7, scope: !4458)
!4515 = !DILocation(line: 106, column: 11, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4517, file: !4459, line: 106, column: 11)
!4517 = distinct !DILexicalBlock(scope: !4512, file: !4459, line: 103, column: 5)
!4518 = !DILocation(line: 106, column: 26, scope: !4516)
!4519 = !DILocation(line: 106, column: 29, scope: !4516)
!4520 = !DILocation(line: 106, column: 33, scope: !4516)
!4521 = !DILocation(line: 106, column: 36, scope: !4516)
!4522 = !DILocation(line: 106, column: 11, scope: !4517)
!4523 = !DILocation(line: 111, column: 12, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4512, file: !4459, line: 111, column: 12)
!4525 = !DILocation(line: 111, column: 12, scope: !4512)
!4526 = !DILocation(line: 116, column: 5, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4524, file: !4459, line: 112, column: 5)
!4528 = !DILocation(line: 121, column: 8, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4458, file: !4459, line: 121, column: 7)
!4530 = !DILocation(line: 121, column: 7, scope: !4458)
!4531 = !DILocation(line: 123, column: 12, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4529, file: !4459, line: 122, column: 5)
!4533 = !DILocation(line: 124, column: 7, scope: !4532)
!4534 = !DILocation(line: 127, column: 7, scope: !4479)
!4535 = !DILocation(line: 127, column: 11, scope: !4479)
!4536 = !DILocation(line: 127, column: 7, scope: !4458)
!4537 = !DILocation(line: 0, scope: !4478)
!4538 = !DILocation(line: 133, column: 12, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4478, file: !4459, line: 133, column: 11)
!4540 = !DILocation(line: 133, column: 11, scope: !4478)
!4541 = !DILocation(line: 135, column: 16, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4539, file: !4459, line: 134, column: 9)
!4543 = !DILocation(line: 136, column: 22, scope: !4542)
!4544 = !DILocation(line: 136, column: 11, scope: !4542)
!4545 = !DILocation(line: 139, column: 7, scope: !4478)
!4546 = !DILocation(line: 151, column: 15, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4548, file: !4459, line: 151, column: 15)
!4548 = distinct !DILexicalBlock(scope: !4478, file: !4459, line: 140, column: 9)
!4549 = !DILocation(line: 151, column: 15, scope: !4548)
!4550 = !DILocation(line: 152, column: 21, scope: !4547)
!4551 = !DILocation(line: 152, column: 13, scope: !4547)
!4552 = !DILocation(line: 155, column: 21, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4554, file: !4459, line: 155, column: 21)
!4554 = distinct !DILexicalBlock(scope: !4547, file: !4459, line: 153, column: 15)
!4555 = !DILocation(line: 155, column: 29, scope: !4553)
!4556 = !DILocation(line: 155, column: 21, scope: !4554)
!4557 = !DILocation(line: 163, column: 17, scope: !4554)
!4558 = !DILocation(line: 167, column: 7, scope: !4478)
!4559 = !DILocalVariable(name: "err", scope: !4560, file: !4459, line: 67, type: !4407)
!4560 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4459, file: !4459, line: 65, type: !4561, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !603, retainedNodes: !4563)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!4407, !4462, !53, !53}
!4563 = !{!4564, !4565, !4566, !4559}
!4564 = !DILocalVariable(name: "x", arg: 1, scope: !4560, file: !4459, line: 65, type: !4462)
!4565 = !DILocalVariable(name: "base", arg: 2, scope: !4560, file: !4459, line: 65, type: !53)
!4566 = !DILocalVariable(name: "power", arg: 3, scope: !4560, file: !4459, line: 65, type: !53)
!4567 = !DILocation(line: 0, scope: !4560, inlinedAt: !4568)
!4568 = distinct !DILocation(line: 221, column: 22, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4478, file: !4459, line: 168, column: 9)
!4570 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4571, file: !4459, line: 48, type: !53)
!4571 = distinct !DISubprogram(name: "bkm_scale", scope: !4459, file: !4459, line: 48, type: !4572, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !603, retainedNodes: !4574)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{!4407, !4462, !53}
!4574 = !{!4575, !4570}
!4575 = !DILocalVariable(name: "x", arg: 1, scope: !4571, file: !4459, line: 48, type: !4462)
!4576 = !DILocation(line: 0, scope: !4571, inlinedAt: !4577)
!4577 = distinct !DILocation(line: 69, column: 12, scope: !4560, inlinedAt: !4568)
!4578 = !DILocation(line: 55, column: 39, scope: !4579, inlinedAt: !4577)
!4579 = distinct !DILexicalBlock(scope: !4571, file: !4459, line: 55, column: 7)
!4580 = !DILocation(line: 55, column: 7, scope: !4571, inlinedAt: !4577)
!4581 = !DILocation(line: 69, column: 9, scope: !4560, inlinedAt: !4568)
!4582 = !DILocation(line: 229, column: 11, scope: !4478)
!4583 = !DILocation(line: 0, scope: !4560, inlinedAt: !4584)
!4584 = distinct !DILocation(line: 217, column: 22, scope: !4569)
!4585 = !DILocation(line: 0, scope: !4571, inlinedAt: !4586)
!4586 = distinct !DILocation(line: 69, column: 12, scope: !4560, inlinedAt: !4584)
!4587 = !DILocation(line: 55, column: 39, scope: !4579, inlinedAt: !4586)
!4588 = !DILocation(line: 55, column: 7, scope: !4571, inlinedAt: !4586)
!4589 = !DILocation(line: 69, column: 9, scope: !4560, inlinedAt: !4584)
!4590 = !DILocation(line: 0, scope: !4560, inlinedAt: !4591)
!4591 = distinct !DILocation(line: 204, column: 22, scope: !4569)
!4592 = !DILocation(line: 0, scope: !4571, inlinedAt: !4593)
!4593 = distinct !DILocation(line: 69, column: 12, scope: !4560, inlinedAt: !4591)
!4594 = !DILocation(line: 55, column: 39, scope: !4579, inlinedAt: !4593)
!4595 = !DILocation(line: 55, column: 7, scope: !4571, inlinedAt: !4593)
!4596 = !DILocation(line: 69, column: 9, scope: !4560, inlinedAt: !4591)
!4597 = !DILocation(line: 0, scope: !4560, inlinedAt: !4598)
!4598 = distinct !DILocation(line: 185, column: 22, scope: !4569)
!4599 = !DILocation(line: 0, scope: !4571, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 69, column: 12, scope: !4560, inlinedAt: !4598)
!4601 = !DILocation(line: 55, column: 39, scope: !4579, inlinedAt: !4600)
!4602 = !DILocation(line: 55, column: 7, scope: !4571, inlinedAt: !4600)
!4603 = !DILocation(line: 69, column: 9, scope: !4560, inlinedAt: !4598)
!4604 = !DILocation(line: 0, scope: !4571, inlinedAt: !4605)
!4605 = distinct !DILocation(line: 170, column: 22, scope: !4569)
!4606 = !DILocation(line: 55, column: 39, scope: !4579, inlinedAt: !4605)
!4607 = !DILocation(line: 55, column: 7, scope: !4571, inlinedAt: !4605)
!4608 = !DILocation(line: 171, column: 11, scope: !4569)
!4609 = !DILocation(line: 0, scope: !4571, inlinedAt: !4610)
!4610 = distinct !DILocation(line: 177, column: 22, scope: !4569)
!4611 = !DILocation(line: 55, column: 39, scope: !4579, inlinedAt: !4610)
!4612 = !DILocation(line: 55, column: 7, scope: !4571, inlinedAt: !4610)
!4613 = !DILocation(line: 178, column: 11, scope: !4569)
!4614 = !DILocation(line: 0, scope: !4560, inlinedAt: !4615)
!4615 = distinct !DILocation(line: 190, column: 22, scope: !4569)
!4616 = !DILocation(line: 0, scope: !4571, inlinedAt: !4617)
!4617 = distinct !DILocation(line: 69, column: 12, scope: !4560, inlinedAt: !4615)
!4618 = !DILocation(line: 55, column: 39, scope: !4579, inlinedAt: !4617)
!4619 = !DILocation(line: 55, column: 7, scope: !4571, inlinedAt: !4617)
!4620 = !DILocation(line: 69, column: 9, scope: !4560, inlinedAt: !4615)
!4621 = !DILocation(line: 0, scope: !4560, inlinedAt: !4622)
!4622 = distinct !DILocation(line: 195, column: 22, scope: !4569)
!4623 = !DILocation(line: 0, scope: !4571, inlinedAt: !4624)
!4624 = distinct !DILocation(line: 69, column: 12, scope: !4560, inlinedAt: !4622)
!4625 = !DILocation(line: 55, column: 39, scope: !4579, inlinedAt: !4624)
!4626 = !DILocation(line: 55, column: 7, scope: !4571, inlinedAt: !4624)
!4627 = !DILocation(line: 0, scope: !4560, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 200, column: 22, scope: !4569)
!4629 = !DILocation(line: 0, scope: !4571, inlinedAt: !4630)
!4630 = distinct !DILocation(line: 69, column: 12, scope: !4560, inlinedAt: !4628)
!4631 = !DILocation(line: 55, column: 39, scope: !4579, inlinedAt: !4630)
!4632 = !DILocation(line: 55, column: 7, scope: !4571, inlinedAt: !4630)
!4633 = !DILocation(line: 69, column: 9, scope: !4560, inlinedAt: !4628)
!4634 = !DILocation(line: 0, scope: !4560, inlinedAt: !4635)
!4635 = distinct !DILocation(line: 209, column: 22, scope: !4569)
!4636 = !DILocation(line: 0, scope: !4571, inlinedAt: !4637)
!4637 = distinct !DILocation(line: 69, column: 12, scope: !4560, inlinedAt: !4635)
!4638 = !DILocation(line: 55, column: 39, scope: !4579, inlinedAt: !4637)
!4639 = !DILocation(line: 55, column: 7, scope: !4571, inlinedAt: !4637)
!4640 = !DILocation(line: 69, column: 9, scope: !4560, inlinedAt: !4635)
!4641 = !DILocation(line: 0, scope: !4571, inlinedAt: !4642)
!4642 = distinct !DILocation(line: 213, column: 22, scope: !4569)
!4643 = !DILocation(line: 55, column: 39, scope: !4579, inlinedAt: !4642)
!4644 = !DILocation(line: 55, column: 7, scope: !4571, inlinedAt: !4642)
!4645 = !DILocation(line: 214, column: 11, scope: !4569)
!4646 = !DILocation(line: 225, column: 16, scope: !4569)
!4647 = !DILocation(line: 226, column: 22, scope: !4569)
!4648 = !DILocation(line: 226, column: 11, scope: !4569)
!4649 = !DILocation(line: 0, scope: !4569)
!4650 = !DILocation(line: 230, column: 10, scope: !4478)
!4651 = !DILocation(line: 231, column: 11, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4478, file: !4459, line: 231, column: 11)
!4653 = !DILocation(line: 232, column: 13, scope: !4652)
!4654 = !DILocation(line: 231, column: 11, scope: !4478)
!4655 = !DILocation(line: 107, column: 13, scope: !4516)
!4656 = !DILocation(line: 82, column: 16, scope: !4458)
!4657 = !DILocation(line: 235, column: 8, scope: !4458)
!4658 = !DILocation(line: 236, column: 3, scope: !4458)
!4659 = !DILocation(line: 237, column: 1, scope: !4458)
!4660 = distinct !DISubprogram(name: "rpl_calloc", scope: !608, file: !608, line: 42, type: !4144, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !607, retainedNodes: !4661)
!4661 = !{!4662, !4663, !4664, !4665}
!4662 = !DILocalVariable(name: "n", arg: 1, scope: !4660, file: !608, line: 42, type: !108)
!4663 = !DILocalVariable(name: "s", arg: 2, scope: !4660, file: !608, line: 42, type: !108)
!4664 = !DILocalVariable(name: "result", scope: !4660, file: !608, line: 44, type: !106)
!4665 = !DILocalVariable(name: "bytes", scope: !4666, file: !608, line: 56, type: !108)
!4666 = distinct !DILexicalBlock(scope: !4667, file: !608, line: 53, column: 5)
!4667 = distinct !DILexicalBlock(scope: !4660, file: !608, line: 47, column: 7)
!4668 = !DILocation(line: 0, scope: !4660)
!4669 = !DILocation(line: 47, column: 9, scope: !4667)
!4670 = !DILocation(line: 47, column: 19, scope: !4667)
!4671 = !DILocation(line: 47, column: 14, scope: !4667)
!4672 = !DILocation(line: 0, scope: !4666)
!4673 = !DILocation(line: 57, column: 21, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4666, file: !608, line: 57, column: 11)
!4675 = !DILocation(line: 57, column: 11, scope: !4666)
!4676 = !DILocation(line: 59, column: 11, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4674, file: !608, line: 58, column: 9)
!4678 = !DILocation(line: 59, column: 17, scope: !4677)
!4679 = !DILocation(line: 65, column: 12, scope: !4660)
!4680 = !DILocation(line: 72, column: 3, scope: !4660)
!4681 = !DILocation(line: 73, column: 1, scope: !4660)
!4682 = distinct !DISubprogram(name: "rpl_fclose", scope: !611, file: !611, line: 58, type: !4683, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !610, retainedNodes: !4687)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!53, !4685}
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1301, line: 7, baseType: !617)
!4687 = !{!4688, !4689, !4690, !4691}
!4688 = !DILocalVariable(name: "fp", arg: 1, scope: !4682, file: !611, line: 58, type: !4685)
!4689 = !DILocalVariable(name: "saved_errno", scope: !4682, file: !611, line: 60, type: !53)
!4690 = !DILocalVariable(name: "fd", scope: !4682, file: !611, line: 61, type: !53)
!4691 = !DILocalVariable(name: "result", scope: !4682, file: !611, line: 62, type: !53)
!4692 = !DILocation(line: 0, scope: !4682)
!4693 = !DILocation(line: 65, column: 8, scope: !4682)
!4694 = !DILocation(line: 66, column: 10, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4682, file: !611, line: 66, column: 7)
!4696 = !DILocation(line: 66, column: 7, scope: !4682)
!4697 = !DILocation(line: 67, column: 12, scope: !4695)
!4698 = !DILocation(line: 67, column: 5, scope: !4695)
!4699 = !DILocation(line: 72, column: 9, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4682, file: !611, line: 72, column: 7)
!4701 = !DILocation(line: 72, column: 23, scope: !4700)
!4702 = !DILocation(line: 72, column: 33, scope: !4700)
!4703 = !DILocation(line: 72, column: 26, scope: !4700)
!4704 = !DILocation(line: 72, column: 59, scope: !4700)
!4705 = !DILocation(line: 73, column: 7, scope: !4700)
!4706 = !DILocation(line: 73, column: 10, scope: !4700)
!4707 = !DILocation(line: 72, column: 7, scope: !4682)
!4708 = !DILocation(line: 100, column: 12, scope: !4682)
!4709 = !DILocation(line: 105, column: 7, scope: !4682)
!4710 = !DILocation(line: 74, column: 19, scope: !4700)
!4711 = !DILocation(line: 105, column: 19, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4682, file: !611, line: 105, column: 7)
!4713 = !DILocation(line: 107, column: 13, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4712, file: !611, line: 106, column: 5)
!4715 = !DILocation(line: 109, column: 5, scope: !4714)
!4716 = !DILocation(line: 112, column: 1, scope: !4682)
!4717 = distinct !DISubprogram(name: "rpl_fflush", scope: !655, file: !655, line: 129, type: !4718, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !4722)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!53, !4720}
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1301, line: 7, baseType: !661)
!4722 = !{!4723}
!4723 = !DILocalVariable(name: "stream", arg: 1, scope: !4717, file: !655, line: 129, type: !4720)
!4724 = !DILocation(line: 0, scope: !4717)
!4725 = !DILocation(line: 150, column: 14, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4717, file: !655, line: 150, column: 7)
!4727 = !DILocation(line: 150, column: 22, scope: !4726)
!4728 = !DILocation(line: 150, column: 27, scope: !4726)
!4729 = !DILocation(line: 150, column: 7, scope: !4717)
!4730 = !DILocation(line: 151, column: 12, scope: !4726)
!4731 = !DILocation(line: 151, column: 5, scope: !4726)
!4732 = !DILocalVariable(name: "fp", arg: 1, scope: !4733, file: !655, line: 41, type: !4720)
!4733 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !655, file: !655, line: 41, type: !4734, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !4736)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{null, !4720}
!4736 = !{!4732}
!4737 = !DILocation(line: 0, scope: !4733, inlinedAt: !4738)
!4738 = distinct !DILocation(line: 156, column: 3, scope: !4717)
!4739 = !DILocation(line: 43, column: 11, scope: !4740, inlinedAt: !4738)
!4740 = distinct !DILexicalBlock(scope: !4733, file: !655, line: 43, column: 7)
!4741 = !{!1544, !1315, i64 0}
!4742 = !DILocation(line: 43, column: 18, scope: !4740, inlinedAt: !4738)
!4743 = !DILocation(line: 43, column: 7, scope: !4733, inlinedAt: !4738)
!4744 = !DILocation(line: 45, column: 5, scope: !4740, inlinedAt: !4738)
!4745 = !DILocation(line: 158, column: 10, scope: !4717)
!4746 = !DILocation(line: 158, column: 3, scope: !4717)
!4747 = !DILocation(line: 235, column: 1, scope: !4717)
!4748 = distinct !DISubprogram(name: "rpl_fseeko", scope: !696, file: !696, line: 28, type: !4749, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !4753)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!53, !4751, !2477, !53}
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1301, line: 7, baseType: !702)
!4753 = !{!4754, !4755, !4756, !4757}
!4754 = !DILocalVariable(name: "fp", arg: 1, scope: !4748, file: !696, line: 28, type: !4751)
!4755 = !DILocalVariable(name: "offset", arg: 2, scope: !4748, file: !696, line: 28, type: !2477)
!4756 = !DILocalVariable(name: "whence", arg: 3, scope: !4748, file: !696, line: 28, type: !53)
!4757 = !DILocalVariable(name: "pos", scope: !4758, file: !696, line: 117, type: !2477)
!4758 = distinct !DILexicalBlock(scope: !4759, file: !696, line: 113, column: 5)
!4759 = distinct !DILexicalBlock(scope: !4748, file: !696, line: 52, column: 7)
!4760 = !DILocation(line: 0, scope: !4748)
!4761 = !DILocation(line: 52, column: 11, scope: !4759)
!4762 = !DILocation(line: 52, column: 31, scope: !4759)
!4763 = !DILocation(line: 52, column: 24, scope: !4759)
!4764 = !DILocation(line: 53, column: 7, scope: !4759)
!4765 = !DILocation(line: 53, column: 14, scope: !4759)
!4766 = !DILocation(line: 53, column: 35, scope: !4759)
!4767 = !{!1544, !1234, i64 32}
!4768 = !DILocation(line: 53, column: 28, scope: !4759)
!4769 = !DILocation(line: 54, column: 7, scope: !4759)
!4770 = !DILocation(line: 54, column: 14, scope: !4759)
!4771 = !{!1544, !1234, i64 72}
!4772 = !DILocation(line: 54, column: 28, scope: !4759)
!4773 = !DILocation(line: 52, column: 7, scope: !4748)
!4774 = !DILocation(line: 117, column: 26, scope: !4758)
!4775 = !DILocation(line: 117, column: 19, scope: !4758)
!4776 = !DILocation(line: 0, scope: !4758)
!4777 = !DILocation(line: 118, column: 15, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4758, file: !696, line: 118, column: 11)
!4779 = !DILocation(line: 118, column: 11, scope: !4758)
!4780 = !DILocation(line: 129, column: 11, scope: !4758)
!4781 = !DILocation(line: 129, column: 18, scope: !4758)
!4782 = !DILocation(line: 130, column: 11, scope: !4758)
!4783 = !DILocation(line: 130, column: 19, scope: !4758)
!4784 = !{!1544, !1545, i64 144}
!4785 = !DILocation(line: 161, column: 7, scope: !4758)
!4786 = !DILocation(line: 163, column: 10, scope: !4748)
!4787 = !DILocation(line: 163, column: 3, scope: !4748)
!4788 = !DILocation(line: 164, column: 1, scope: !4748)
!4789 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !737, file: !737, line: 86, type: !4790, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !4796)
!4790 = !DISubroutineType(types: !4791)
!4791 = !{!108, !4792, !51, !108, !4793}
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2711, line: 6, baseType: !4795)
!4795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !401, line: 21, baseType: !743)
!4796 = !{!4797, !4798, !4799, !4800, !4801, !4802, !4803}
!4797 = !DILocalVariable(name: "pwc", arg: 1, scope: !4789, file: !737, line: 86, type: !4792)
!4798 = !DILocalVariable(name: "s", arg: 2, scope: !4789, file: !737, line: 86, type: !51)
!4799 = !DILocalVariable(name: "n", arg: 3, scope: !4789, file: !737, line: 86, type: !108)
!4800 = !DILocalVariable(name: "ps", arg: 4, scope: !4789, file: !737, line: 86, type: !4793)
!4801 = !DILocalVariable(name: "ret", scope: !4789, file: !737, line: 88, type: !108)
!4802 = !DILocalVariable(name: "wc", scope: !4789, file: !737, line: 89, type: !2715)
!4803 = !DILocalVariable(name: "uc", scope: !4804, file: !737, line: 156, type: !178)
!4804 = distinct !DILexicalBlock(scope: !4805, file: !737, line: 155, column: 5)
!4805 = distinct !DILexicalBlock(scope: !4789, file: !737, line: 154, column: 7)
!4806 = !DILocation(line: 0, scope: !4789)
!4807 = !DILocation(line: 89, column: 3, scope: !4789)
!4808 = !DILocation(line: 105, column: 9, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4789, file: !737, line: 105, column: 7)
!4810 = !DILocation(line: 105, column: 7, scope: !4789)
!4811 = !DILocation(line: 145, column: 9, scope: !4789)
!4812 = !DILocation(line: 154, column: 19, scope: !4805)
!4813 = !DILocation(line: 154, column: 31, scope: !4805)
!4814 = !DILocation(line: 154, column: 26, scope: !4805)
!4815 = !DILocation(line: 154, column: 41, scope: !4805)
!4816 = !DILocation(line: 154, column: 7, scope: !4789)
!4817 = !DILocation(line: 156, column: 26, scope: !4804)
!4818 = !DILocation(line: 0, scope: !4804)
!4819 = !DILocation(line: 157, column: 14, scope: !4804)
!4820 = !DILocation(line: 157, column: 12, scope: !4804)
!4821 = !DILocation(line: 163, column: 1, scope: !4789)
!4822 = distinct !DISubprogram(name: "close_stream", scope: !756, file: !756, line: 56, type: !4823, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !4827)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!53, !4825}
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1301, line: 7, baseType: !762)
!4827 = !{!4828, !4829, !4831, !4832}
!4828 = !DILocalVariable(name: "stream", arg: 1, scope: !4822, file: !756, line: 56, type: !4825)
!4829 = !DILocalVariable(name: "some_pending", scope: !4822, file: !756, line: 58, type: !4830)
!4830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!4831 = !DILocalVariable(name: "prev_fail", scope: !4822, file: !756, line: 59, type: !4830)
!4832 = !DILocalVariable(name: "fclose_fail", scope: !4822, file: !756, line: 60, type: !4830)
!4833 = !DILocation(line: 0, scope: !4822)
!4834 = !DILocation(line: 58, column: 30, scope: !4822)
!4835 = !DILocalVariable(name: "__stream", arg: 1, scope: !4836, file: !1472, line: 135, type: !4825)
!4836 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1472, file: !1472, line: 135, type: !4823, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !4837)
!4837 = !{!4835}
!4838 = !DILocation(line: 0, scope: !4836, inlinedAt: !4839)
!4839 = distinct !DILocation(line: 59, column: 27, scope: !4822)
!4840 = !DILocation(line: 137, column: 10, scope: !4836, inlinedAt: !4839)
!4841 = !DILocation(line: 59, column: 43, scope: !4822)
!4842 = !DILocation(line: 60, column: 29, scope: !4822)
!4843 = !DILocation(line: 60, column: 45, scope: !4822)
!4844 = !DILocation(line: 70, column: 17, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4822, file: !756, line: 70, column: 7)
!4846 = !DILocation(line: 58, column: 50, scope: !4822)
!4847 = !DILocation(line: 70, column: 33, scope: !4845)
!4848 = !DILocation(line: 70, column: 53, scope: !4845)
!4849 = !DILocation(line: 70, column: 59, scope: !4845)
!4850 = !DILocation(line: 70, column: 7, scope: !4822)
!4851 = !DILocation(line: 72, column: 11, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4845, file: !756, line: 71, column: 5)
!4853 = !DILocation(line: 73, column: 9, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4852, file: !756, line: 72, column: 11)
!4855 = !DILocation(line: 73, column: 15, scope: !4854)
!4856 = !DILocation(line: 78, column: 1, scope: !4822)
!4857 = distinct !DISubprogram(name: "hard_locale", scope: !794, file: !794, line: 27, type: !753, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4858)
!4858 = !{!4859, !4860}
!4859 = !DILocalVariable(name: "category", arg: 1, scope: !4857, file: !794, line: 27, type: !53)
!4860 = !DILocalVariable(name: "locale", scope: !4857, file: !794, line: 29, type: !4861)
!4861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 2056, elements: !4862)
!4862 = !{!4863}
!4863 = !DISubrange(count: 257)
!4864 = !DILocation(line: 0, scope: !4857)
!4865 = !DILocation(line: 29, column: 3, scope: !4857)
!4866 = !DILocation(line: 29, column: 8, scope: !4857)
!4867 = !DILocation(line: 31, column: 7, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4857, file: !794, line: 31, column: 7)
!4869 = !DILocation(line: 31, column: 7, scope: !4857)
!4870 = !DILocation(line: 34, column: 12, scope: !4857)
!4871 = !DILocation(line: 34, column: 38, scope: !4857)
!4872 = !DILocation(line: 34, column: 41, scope: !4857)
!4873 = !DILocation(line: 34, column: 66, scope: !4857)
!4874 = !DILocation(line: 35, column: 1, scope: !4857)
!4875 = distinct !DISubprogram(name: "locale_charset", scope: !801, file: !801, line: 831, type: !424, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !4876)
!4876 = !{!4877}
!4877 = !DILocalVariable(name: "codeset", scope: !4875, file: !801, line: 833, type: !51)
!4878 = !DILocation(line: 847, column: 13, scope: !4875)
!4879 = !DILocation(line: 0, scope: !4875)
!4880 = !DILocation(line: 911, column: 15, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4875, file: !801, line: 911, column: 7)
!4882 = !DILocation(line: 911, column: 7, scope: !4875)
!4883 = !DILocation(line: 1070, column: 13, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4885, file: !801, line: 1070, column: 13)
!4885 = distinct !DILexicalBlock(scope: !4886, file: !801, line: 1060, column: 7)
!4886 = distinct !DILexicalBlock(scope: !4875, file: !801, line: 1019, column: 3)
!4887 = !DILocation(line: 1070, column: 24, scope: !4884)
!4888 = !DILocation(line: 1070, column: 13, scope: !4885)
!4889 = !DILocation(line: 1158, column: 3, scope: !4875)
!4890 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1194, file: !1194, line: 269, type: !4891, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1193, retainedNodes: !4893)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{!53, !53, !49, !108}
!4893 = !{!4894, !4895, !4896}
!4894 = !DILocalVariable(name: "category", arg: 1, scope: !4890, file: !1194, line: 269, type: !53)
!4895 = !DILocalVariable(name: "buf", arg: 2, scope: !4890, file: !1194, line: 269, type: !49)
!4896 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4890, file: !1194, line: 269, type: !108)
!4897 = !DILocation(line: 0, scope: !4890)
!4898 = !DILocalVariable(name: "category", arg: 1, scope: !4899, file: !1194, line: 91, type: !53)
!4899 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1194, file: !1194, line: 91, type: !4891, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1193, retainedNodes: !4900)
!4900 = !{!4898, !4901, !4902, !4903, !4904}
!4901 = !DILocalVariable(name: "buf", arg: 2, scope: !4899, file: !1194, line: 91, type: !49)
!4902 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4899, file: !1194, line: 91, type: !108)
!4903 = !DILocalVariable(name: "result", scope: !4899, file: !1194, line: 140, type: !51)
!4904 = !DILocalVariable(name: "length", scope: !4905, file: !1194, line: 154, type: !108)
!4905 = distinct !DILexicalBlock(scope: !4906, file: !1194, line: 153, column: 5)
!4906 = distinct !DILexicalBlock(scope: !4899, file: !1194, line: 142, column: 7)
!4907 = !DILocation(line: 0, scope: !4899, inlinedAt: !4908)
!4908 = distinct !DILocation(line: 274, column: 10, scope: !4890)
!4909 = !DILocalVariable(name: "category", arg: 1, scope: !4910, file: !1194, line: 60, type: !53)
!4910 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1194, file: !1194, line: 60, type: !4911, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1193, retainedNodes: !4913)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!51, !53}
!4913 = !{!4909, !4914}
!4914 = !DILocalVariable(name: "result", scope: !4910, file: !1194, line: 62, type: !51)
!4915 = !DILocation(line: 0, scope: !4910, inlinedAt: !4916)
!4916 = distinct !DILocation(line: 140, column: 24, scope: !4899, inlinedAt: !4908)
!4917 = !DILocation(line: 62, column: 24, scope: !4910, inlinedAt: !4916)
!4918 = !DILocation(line: 142, column: 14, scope: !4906, inlinedAt: !4908)
!4919 = !DILocation(line: 142, column: 7, scope: !4899, inlinedAt: !4908)
!4920 = !DILocation(line: 145, column: 19, scope: !4921, inlinedAt: !4908)
!4921 = distinct !DILexicalBlock(scope: !4922, file: !1194, line: 145, column: 11)
!4922 = distinct !DILexicalBlock(scope: !4906, file: !1194, line: 143, column: 5)
!4923 = !DILocation(line: 145, column: 11, scope: !4922, inlinedAt: !4908)
!4924 = !DILocation(line: 149, column: 16, scope: !4921, inlinedAt: !4908)
!4925 = !DILocation(line: 149, column: 9, scope: !4921, inlinedAt: !4908)
!4926 = !DILocation(line: 154, column: 23, scope: !4905, inlinedAt: !4908)
!4927 = !DILocation(line: 0, scope: !4905, inlinedAt: !4908)
!4928 = !DILocation(line: 155, column: 18, scope: !4929, inlinedAt: !4908)
!4929 = distinct !DILexicalBlock(scope: !4905, file: !1194, line: 155, column: 11)
!4930 = !DILocation(line: 155, column: 11, scope: !4905, inlinedAt: !4908)
!4931 = !DILocation(line: 157, column: 39, scope: !4932, inlinedAt: !4908)
!4932 = distinct !DILexicalBlock(scope: !4929, file: !1194, line: 156, column: 9)
!4933 = !DILocalVariable(name: "__dest", arg: 1, scope: !4934, file: !2395, line: 31, type: !4358)
!4934 = distinct !DISubprogram(name: "memcpy", scope: !2395, file: !2395, line: 31, type: !4356, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1193, retainedNodes: !4935)
!4935 = !{!4933, !4936, !4937}
!4936 = !DILocalVariable(name: "__src", arg: 2, scope: !4934, file: !2395, line: 31, type: !4359)
!4937 = !DILocalVariable(name: "__len", arg: 3, scope: !4934, file: !2395, line: 31, type: !108)
!4938 = !DILocation(line: 0, scope: !4934, inlinedAt: !4939)
!4939 = distinct !DILocation(line: 157, column: 11, scope: !4932, inlinedAt: !4908)
!4940 = !DILocation(line: 34, column: 10, scope: !4934, inlinedAt: !4939)
!4941 = !DILocation(line: 158, column: 11, scope: !4932, inlinedAt: !4908)
!4942 = !DILocation(line: 162, column: 23, scope: !4943, inlinedAt: !4908)
!4943 = distinct !DILexicalBlock(scope: !4944, file: !1194, line: 162, column: 15)
!4944 = distinct !DILexicalBlock(scope: !4929, file: !1194, line: 161, column: 9)
!4945 = !DILocation(line: 162, column: 15, scope: !4944, inlinedAt: !4908)
!4946 = !DILocation(line: 167, column: 44, scope: !4947, inlinedAt: !4908)
!4947 = distinct !DILexicalBlock(scope: !4943, file: !1194, line: 163, column: 13)
!4948 = !DILocation(line: 0, scope: !4934, inlinedAt: !4949)
!4949 = distinct !DILocation(line: 167, column: 15, scope: !4947, inlinedAt: !4908)
!4950 = !DILocation(line: 34, column: 10, scope: !4934, inlinedAt: !4949)
!4951 = !DILocation(line: 168, column: 15, scope: !4947, inlinedAt: !4908)
!4952 = !DILocation(line: 168, column: 32, scope: !4947, inlinedAt: !4908)
!4953 = !DILocation(line: 169, column: 13, scope: !4947, inlinedAt: !4908)
!4954 = !DILocation(line: 0, scope: !4906, inlinedAt: !4908)
!4955 = !DILocation(line: 274, column: 3, scope: !4890)
!4956 = distinct !DISubprogram(name: "setlocale_null", scope: !1194, file: !1194, line: 301, type: !4911, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1193, retainedNodes: !4957)
!4957 = !{!4958}
!4958 = !DILocalVariable(name: "category", arg: 1, scope: !4956, file: !1194, line: 301, type: !53)
!4959 = !DILocation(line: 0, scope: !4956)
!4960 = !DILocation(line: 0, scope: !4910, inlinedAt: !4961)
!4961 = distinct !DILocation(line: 304, column: 10, scope: !4956)
!4962 = !DILocation(line: 62, column: 24, scope: !4910, inlinedAt: !4961)
!4963 = !DILocation(line: 304, column: 3, scope: !4956)
