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
@split = internal unnamed_addr global i1 false, align 1, !dbg !140
@tagged = internal unnamed_addr global i1 false, align 1, !dbg !141
@crown = internal unnamed_addr global i1 false, align 1, !dbg !142
@max_width = internal unnamed_addr global i32 0, align 4, !dbg !70
@prefix = internal unnamed_addr global i8* null, align 8, !dbg !68
@prefix_full_length = internal unnamed_addr global i32 0, align 4, !dbg !72
@prefix_lead_space = internal unnamed_addr global i32 0, align 4, !dbg !74
@prefix_length = internal unnamed_addr global i32 0, align 4, !dbg !76
@.str.11 = private unnamed_addr constant [21 x i8] c"0123456789cstuw:p:g:\00", align 1
@long_options = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 1, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 1, i32* null, i32 103 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !80
@.str.12 = private unnamed_addr constant [94 x i8] c"invalid option -- %c; -WIDTH is recognized only when it is the first\0Aoption; use -w N instead\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.14 = private unnamed_addr constant [14 x i8] c"Ross Paterson\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"invalid width\00", align 1
@goal_width = internal unnamed_addr global i32 0, align 4, !dbg !78
@optind = external local_unnamed_addr global i32, align 4
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@tabs = internal unnamed_addr global i1 false, align 1, !dbg !143
@other_indent = internal unnamed_addr global i32 0, align 4, !dbg !96
@next_char = internal unnamed_addr global i32 0, align 4, !dbg !102
@last_line_length = internal unnamed_addr global i32 0, align 4, !dbg !104
@next_prefix_indent = internal unnamed_addr global i32 0, align 4, !dbg !100
@in_column = internal unnamed_addr global i32 0, align 4, !dbg !98
@out_column = internal unnamed_addr global i32 0, align 4, !dbg !106
@prefix_indent = internal unnamed_addr global i32 0, align 4, !dbg !108
@first_indent = internal unnamed_addr global i32 0, align 4, !dbg !110
@parabuf = internal global [5000 x i8] zeroinitializer, align 16, !dbg !112
@wptr = internal unnamed_addr global i8* null, align 8, !dbg !117
@unused_word_type = internal global [1000 x %struct.Word] zeroinitializer, align 16, !dbg !119
@word_limit = internal unnamed_addr global %struct.Word* null, align 8, !dbg !138
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), align 8, !dbg !144
@.str.50 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !150
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !155
@.str.53 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.54 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !157
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !163
@.str.64 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.65 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.66 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.69, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.70, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.71, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.76, i32 0, i32 0), i8* null], align 16, !dbg !169
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !181
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !185
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !197
@.str.11.77 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.78 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.79 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.80 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.81 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.82 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.83 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !204
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !211
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !199
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !213
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !219
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
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !683 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !687, metadata !DIExpression()), !dbg !688
  %3 = icmp eq i32 %0, 0, !dbg !689
  br i1 %3, label %9, label %4, !dbg !691

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !692, !tbaa !694
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #25, !dbg !692
  %7 = load i8*, i8** @program_name, align 8, !dbg !692, !tbaa !694
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #25, !dbg !692
  br label %70, !dbg !692

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 5) #25, !dbg !698
  %11 = load i8*, i8** @program_name, align 8, !dbg !698, !tbaa !694
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #25, !dbg !698
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.2, i64 0, i64 0), i32 5) #25, !dbg !700
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !700, !tbaa !694
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !700
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i64 0, i64 0), i32 5) #25, !dbg !701
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !701, !tbaa !694
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #25, !dbg !701
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #25, !dbg !707
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !707, !tbaa !694
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20) #25, !dbg !707
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([278 x i8], [278 x i8]* @.str.3, i64 0, i64 0), i32 5) #25, !dbg !710
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710, !tbaa !694
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !710
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([286 x i8], [286 x i8]* @.str.4, i64 0, i64 0), i32 5) #25, !dbg !711
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !711, !tbaa !694
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !711
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #25, !dbg !712
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !712, !tbaa !694
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !712
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #25, !dbg !713
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !713, !tbaa !694
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !713
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), metadata !714, metadata !DIExpression()) #25, !dbg !732
  %34 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !734
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %34) #25, !dbg !734
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !719, metadata !DIExpression()) #25, !dbg !735
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %34, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #25, !dbg !735
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), metadata !728, metadata !DIExpression()) #25, !dbg !732
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !729, metadata !DIExpression()) #25, !dbg !732
  %35 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !736
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !729, metadata !DIExpression()) #25, !dbg !732
  br label %36, !dbg !737

36:                                               ; preds = %41, %9
  %37 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %38 = phi %struct.infomap* [ %42, %41 ], [ %35, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !729, metadata !DIExpression()) #25, !dbg !732
  %39 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %37) #26, !dbg !738
  %40 = icmp eq i32 %39, 0, !dbg !738
  br i1 %40, label %46, label %41, !dbg !737

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 1, !dbg !739
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !729, metadata !DIExpression()) #25, !dbg !732
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 0, i32 0, !dbg !740
  %44 = load i8*, i8** %43, align 8, !dbg !740, !tbaa !741
  %45 = icmp eq i8* %44, null, !dbg !743
  br i1 %45, label %46, label %36, !dbg !744, !llvm.loop !745

46:                                               ; preds = %41, %36
  %47 = phi %struct.infomap* [ %38, %36 ], [ %42, %41 ]
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 1, !dbg !747
  %49 = load i8*, i8** %48, align 8, !dbg !747, !tbaa !749
  %50 = icmp eq i8* %49, null, !dbg !750
  %51 = select i1 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %49, !dbg !751
  call void @llvm.dbg.value(metadata i8* %51, metadata !728, metadata !DIExpression()) #25, !dbg !732
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #25, !dbg !752
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #25, !dbg !752
  %54 = tail call i8* @setlocale(i32 5, i8* null) #25, !dbg !753
  call void @llvm.dbg.value(metadata i8* %54, metadata !731, metadata !DIExpression()) #25, !dbg !732
  %55 = icmp eq i8* %54, null, !dbg !754
  br i1 %55, label %63, label %56, !dbg !756

56:                                               ; preds = %46
  %57 = tail call i32 @strncmp(i8* nonnull %54, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #26, !dbg !757
  %58 = icmp eq i32 %57, 0, !dbg !757
  br i1 %58, label %63, label %59, !dbg !758

59:                                               ; preds = %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.33, i64 0, i64 0), i32 5) #25, !dbg !759
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !759, !tbaa !694
  %62 = tail call i32 @fputs_unlocked(i8* %60, %struct._IO_FILE* %61) #25, !dbg !759
  br label %63, !dbg !761

63:                                               ; preds = %46, %56, %59
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 5) #25, !dbg !762
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #25, !dbg !762
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #25, !dbg !763
  %67 = icmp eq i8* %51, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), !dbg !763
  %68 = select i1 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !763
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %66, i8* %51, i8* %68) #25, !dbg !763
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %34) #25, !dbg !764
  br label %70

70:                                               ; preds = %63, %4
  tail call void @exit(i32 %0) #27, !dbg !765
  unreachable, !dbg !765
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !766 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !770 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

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
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !829 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !834, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.value(metadata i8** %1, metadata !835, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.value(metadata i8 1, metadata !837, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.value(metadata i8* null, metadata !838, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.value(metadata i8* null, metadata !839, metadata !DIExpression()), !dbg !852
  %3 = load i8*, i8** %1, align 8, !dbg !853, !tbaa !694
  tail call void @set_program_name(i8* %3) #25, !dbg !854
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #25, !dbg !855
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #25, !dbg !856
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #25, !dbg !857
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #25, !dbg !858
  store i1 false, i1* @uniform, align 1, !dbg !859
  store i1 false, i1* @split, align 1, !dbg !860
  store i1 false, i1* @tagged, align 1, !dbg !861
  store i1 false, i1* @crown, align 1, !dbg !862
  store i32 75, i32* @max_width, align 4, !dbg !863, !tbaa !864
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** @prefix, align 8, !dbg !866, !tbaa !694
  store i32 0, i32* @prefix_full_length, align 4, !dbg !867, !tbaa !864
  store i32 0, i32* @prefix_lead_space, align 4, !dbg !868, !tbaa !864
  store i32 0, i32* @prefix_length, align 4, !dbg !869, !tbaa !864
  %8 = icmp sgt i32 %0, 1, !dbg !870
  br i1 %8, label %9, label %23, !dbg !872

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !873
  %11 = load i8*, i8** %10, align 8, !dbg !873, !tbaa !694
  %12 = load i8, i8* %11, align 1, !dbg !873, !tbaa !874
  %13 = icmp eq i8 %12, 45, !dbg !875
  br i1 %13, label %14, label %23, !dbg !876

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !877
  %16 = load i8, i8* %15, align 1, !dbg !877, !tbaa !874
  %17 = sext i8 %16 to i32, !dbg !877
  %18 = add nsw i32 %17, -48, !dbg !877
  %19 = icmp ult i32 %18, 10, !dbg !877
  br i1 %19, label %20, label %23, !dbg !878

20:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %15, metadata !838, metadata !DIExpression()), !dbg !852
  %21 = load i8*, i8** %1, align 8, !dbg !879, !tbaa !694
  store i8* %21, i8** %10, align 8, !dbg !881, !tbaa !694
  call void @llvm.dbg.value(metadata i8** %10, metadata !835, metadata !DIExpression()), !dbg !852
  %22 = add nsw i32 %0, -1, !dbg !882
  call void @llvm.dbg.value(metadata i32 %22, metadata !834, metadata !DIExpression()), !dbg !852
  br label %23, !dbg !883

23:                                               ; preds = %20, %14, %9, %2
  %24 = phi i8** [ %10, %20 ], [ %1, %14 ], [ %1, %9 ], [ %1, %2 ]
  %25 = phi i8* [ %15, %20 ], [ null, %14 ], [ null, %9 ], [ null, %2 ], !dbg !852
  %26 = phi i32 [ %22, %20 ], [ %0, %14 ], [ %0, %9 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i32 %26, metadata !834, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.value(metadata i8* %25, metadata !838, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.value(metadata i8** %24, metadata !835, metadata !DIExpression()), !dbg !852
  br label %27, !dbg !884

27:                                               ; preds = %44, %23
  %28 = phi i8* [ %45, %44 ], [ %25, %23 ]
  %29 = phi i8* [ %31, %44 ], [ null, %23 ]
  br label %30, !dbg !884

30:                                               ; preds = %27, %46
  %31 = phi i8* [ %29, %27 ], [ %47, %46 ]
  br label %32, !dbg !884

32:                                               ; preds = %82, %30
  call void @llvm.dbg.value(metadata i8* %31, metadata !839, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.value(metadata i8* %28, metadata !838, metadata !DIExpression()), !dbg !852
  %33 = tail call i32 @getopt_long(i32 %26, i8** nonnull %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #25, !dbg !885
  call void @llvm.dbg.value(metadata i32 %33, metadata !836, metadata !DIExpression()), !dbg !852
  switch i32 %33, label %34 [
    i32 -1, label %87
    i32 99, label %40
    i32 115, label %41
    i32 116, label %42
    i32 117, label %43
    i32 119, label %44
    i32 103, label %46
    i32 112, label %48
    i32 -130, label %83
    i32 -131, label %84
  ], !dbg !884

34:                                               ; preds = %32
  %35 = add i32 %33, -48, !dbg !886
  %36 = icmp ult i32 %35, 10, !dbg !886
  br i1 %36, label %37, label %39, !dbg !889

37:                                               ; preds = %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.12, i64 0, i64 0), i32 5) #25, !dbg !890
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %38, i32 %33) #25, !dbg !891
  br label %39, !dbg !891

39:                                               ; preds = %37, %34
  tail call void @usage(i32 1) #28, !dbg !892
  unreachable, !dbg !892

40:                                               ; preds = %32
  store i1 true, i1* @crown, align 1, !dbg !893
  br label %82, !dbg !894

41:                                               ; preds = %32
  store i1 true, i1* @split, align 1, !dbg !895
  br label %82, !dbg !896

42:                                               ; preds = %32
  store i1 true, i1* @tagged, align 1, !dbg !897
  br label %82, !dbg !898

43:                                               ; preds = %32
  store i1 true, i1* @uniform, align 1, !dbg !899
  br label %82, !dbg !900

44:                                               ; preds = %32
  %45 = load i8*, i8** @optarg, align 8, !dbg !901, !tbaa !694
  call void @llvm.dbg.value(metadata i8* %45, metadata !838, metadata !DIExpression()), !dbg !852
  br label %27, !dbg !902, !llvm.loop !903

46:                                               ; preds = %32
  %47 = load i8*, i8** @optarg, align 8, !dbg !905, !tbaa !694
  call void @llvm.dbg.value(metadata i8* %47, metadata !839, metadata !DIExpression()), !dbg !852
  br label %30, !dbg !906, !llvm.loop !903

48:                                               ; preds = %32
  %49 = load i8*, i8** @optarg, align 8, !dbg !907, !tbaa !694
  call void @llvm.dbg.value(metadata i8* %49, metadata !908, metadata !DIExpression()) #25, !dbg !914
  store i32 0, i32* @prefix_lead_space, align 4, !dbg !916, !tbaa !864
  call void @llvm.dbg.value(metadata i8* %49, metadata !908, metadata !DIExpression()) #25, !dbg !914
  %50 = load i8, i8* %49, align 1, !dbg !917, !tbaa !874
  %51 = icmp eq i8 %50, 32, !dbg !918
  br i1 %51, label %52, label %60, !dbg !919

52:                                               ; preds = %48, %52
  %53 = phi i32 [ %55, %52 ], [ 0, %48 ], !dbg !914
  %54 = phi i8* [ %56, %52 ], [ %49, %48 ]
  call void @llvm.dbg.value(metadata i8* %54, metadata !908, metadata !DIExpression()) #25, !dbg !914
  %55 = add nuw nsw i32 %53, 1, !dbg !920
  %56 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !922
  call void @llvm.dbg.value(metadata i8* %56, metadata !908, metadata !DIExpression()) #25, !dbg !914
  %57 = load i8, i8* %56, align 1, !dbg !917, !tbaa !874
  %58 = icmp eq i8 %57, 32, !dbg !918
  br i1 %58, label %52, label %59, !dbg !919, !llvm.loop !923

59:                                               ; preds = %52
  store i32 %55, i32* @prefix_lead_space, align 4, !dbg !920, !tbaa !864
  br label %60, !dbg !919

60:                                               ; preds = %59, %48
  %61 = phi i8* [ %56, %59 ], [ %49, %48 ]
  store i8* %61, i8** @prefix, align 8, !dbg !925, !tbaa !694
  %62 = tail call i64 @strlen(i8* nonnull %61) #26, !dbg !926
  %63 = trunc i64 %62 to i32, !dbg !926
  store i32 %63, i32* @prefix_full_length, align 4, !dbg !927, !tbaa !864
  %64 = shl i64 %62, 32, !dbg !928
  %65 = ashr exact i64 %64, 32, !dbg !928
  %66 = getelementptr inbounds i8, i8* %61, i64 %65, !dbg !928
  call void @llvm.dbg.value(metadata i8* %66, metadata !913, metadata !DIExpression()) #25, !dbg !914
  %67 = icmp ult i8* %61, %66, !dbg !929
  %68 = select i1 %67, i8* %61, i8* %66, !dbg !929
  br label %69, !dbg !929

69:                                               ; preds = %72, %60
  %70 = phi i8* [ %66, %60 ], [ %73, %72 ], !dbg !914
  call void @llvm.dbg.value(metadata i8* %70, metadata !913, metadata !DIExpression()) #25, !dbg !914
  %71 = icmp ugt i8* %70, %61, !dbg !930
  br i1 %71, label %72, label %76, !dbg !931

72:                                               ; preds = %69
  %73 = getelementptr inbounds i8, i8* %70, i64 -1, !dbg !932
  %74 = load i8, i8* %73, align 1, !dbg !932, !tbaa !874
  %75 = icmp eq i8 %74, 32, !dbg !933
  br i1 %75, label %69, label %76, !dbg !929, !llvm.loop !934

76:                                               ; preds = %69, %72
  %77 = phi i8* [ %68, %69 ], [ %70, %72 ], !dbg !914
  store i8 0, i8* %77, align 1, !dbg !936, !tbaa !874
  %78 = ptrtoint i8* %77 to i64, !dbg !937
  %79 = ptrtoint i8* %61 to i64, !dbg !937
  %80 = sub i64 %78, %79, !dbg !937
  %81 = trunc i64 %80 to i32, !dbg !938
  store i32 %81, i32* @prefix_length, align 4, !dbg !939, !tbaa !864
  br label %82, !dbg !940

82:                                               ; preds = %76, %43, %42, %41, %40
  br label %32, !dbg !852, !llvm.loop !903

83:                                               ; preds = %32
  tail call void @usage(i32 0) #28, !dbg !941
  unreachable, !dbg !941

84:                                               ; preds = %32
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !942, !tbaa !694
  %86 = load i8*, i8** @Version, align 8, !dbg !942, !tbaa !694
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* null) #25, !dbg !942
  tail call void @exit(i32 0) #27, !dbg !942
  unreachable, !dbg !942

87:                                               ; preds = %32
  %88 = icmp eq i8* %28, null, !dbg !943
  br i1 %88, label %93, label %89, !dbg !945

89:                                               ; preds = %87
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 5) #25, !dbg !946
  %91 = tail call i64 @xdectoumax(i8* nonnull %28, i64 0, i64 2500, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* %90, i32 0) #25, !dbg !948
  %92 = trunc i64 %91 to i32, !dbg !948
  store i32 %92, i32* @max_width, align 4, !dbg !949, !tbaa !864
  br label %93, !dbg !950

93:                                               ; preds = %89, %87
  %94 = icmp eq i8* %31, null, !dbg !951
  %95 = load i32, i32* @max_width, align 4, !dbg !953, !tbaa !864
  br i1 %94, label %103, label %96, !dbg !954

96:                                               ; preds = %93
  %97 = sext i32 %95 to i64, !dbg !955
  %98 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 5) #25, !dbg !957
  %99 = tail call i64 @xdectoumax(i8* nonnull %31, i64 0, i64 %97, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* %98, i32 0) #25, !dbg !958
  %100 = trunc i64 %99 to i32, !dbg !958
  store i32 %100, i32* @goal_width, align 4, !dbg !959, !tbaa !864
  br i1 %88, label %101, label %106, !dbg !960

101:                                              ; preds = %96
  %102 = add nsw i32 %100, 10, !dbg !961
  store i32 %102, i32* @max_width, align 4, !dbg !963, !tbaa !864
  br label %106, !dbg !964

103:                                              ; preds = %93
  %104 = mul nsw i32 %95, 187, !dbg !965
  %105 = sdiv i32 %104, 200, !dbg !967
  store i32 %105, i32* @goal_width, align 4, !dbg !968, !tbaa !864
  br label %106

106:                                              ; preds = %96, %101, %103
  %107 = load i32, i32* @optind, align 4, !dbg !969, !tbaa !864
  %108 = icmp eq i32 %107, %26, !dbg !970
  br i1 %108, label %111, label %109, !dbg !971

109:                                              ; preds = %106
  call void @llvm.dbg.value(metadata i8 1, metadata !837, metadata !DIExpression()), !dbg !852
  %110 = icmp slt i32 %107, %26, !dbg !972
  br i1 %110, label %113, label %143, !dbg !973

111:                                              ; preds = %106
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !974, !tbaa !694
  tail call fastcc void @fmt(%struct._IO_FILE* %112), !dbg !975
  br label %143, !dbg !975

113:                                              ; preds = %109, %138
  %114 = phi i32 [ %141, %138 ], [ %107, %109 ]
  %115 = phi i8 [ %139, %138 ], [ 1, %109 ]
  call void @llvm.dbg.value(metadata i8 %115, metadata !837, metadata !DIExpression()), !dbg !852
  %116 = sext i32 %114 to i64, !dbg !976
  %117 = getelementptr inbounds i8*, i8** %24, i64 %116, !dbg !976
  %118 = load i8*, i8** %117, align 8, !dbg !976, !tbaa !694
  call void @llvm.dbg.value(metadata i8* %118, metadata !840, metadata !DIExpression()), !dbg !977
  %119 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %118, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #26, !dbg !978
  %120 = icmp eq i32 %119, 0, !dbg !978
  br i1 %120, label %121, label %123, !dbg !979

121:                                              ; preds = %113
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !980, !tbaa !694
  tail call fastcc void @fmt(%struct._IO_FILE* %122), !dbg !981
  br label %138, !dbg !981

123:                                              ; preds = %113
  %124 = tail call %struct._IO_FILE* @fopen(i8* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)), !dbg !982
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %124, metadata !846, metadata !DIExpression()), !dbg !983
  %125 = icmp eq %struct._IO_FILE* %124, null, !dbg !984
  br i1 %125, label %133, label %126, !dbg !986

126:                                              ; preds = %123
  tail call fastcc void @fmt(%struct._IO_FILE* nonnull %124), !dbg !987
  %127 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %124) #25, !dbg !989
  %128 = icmp eq i32 %127, -1, !dbg !991
  br i1 %128, label %129, label %138, !dbg !992

129:                                              ; preds = %126
  %130 = tail call i32* @__errno_location() #29, !dbg !993
  %131 = load i32, i32* %130, align 4, !dbg !993, !tbaa !864
  %132 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %118) #25, !dbg !995
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %132) #25, !dbg !996
  call void @llvm.dbg.value(metadata i8 0, metadata !837, metadata !DIExpression()), !dbg !852
  br label %138, !dbg !997

133:                                              ; preds = %123
  %134 = tail call i32* @__errno_location() #29, !dbg !998
  %135 = load i32, i32* %134, align 4, !dbg !998, !tbaa !864
  %136 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i32 5) #25, !dbg !1000
  %137 = tail call i8* @quotearg_style(i32 4, i8* %118) #25, !dbg !1001
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %135, i8* %136, i8* %137) #25, !dbg !1002
  call void @llvm.dbg.value(metadata i8 0, metadata !837, metadata !DIExpression()), !dbg !852
  br label %138

138:                                              ; preds = %133, %129, %126, %121
  %139 = phi i8 [ %115, %121 ], [ 0, %129 ], [ %115, %126 ], [ 0, %133 ], !dbg !852
  call void @llvm.dbg.value(metadata i8 %139, metadata !837, metadata !DIExpression()), !dbg !852
  %140 = load i32, i32* @optind, align 4, !dbg !1003, !tbaa !864
  %141 = add nsw i32 %140, 1, !dbg !1003
  store i32 %141, i32* @optind, align 4, !dbg !1003, !tbaa !864
  %142 = icmp slt i32 %141, %26, !dbg !972
  br i1 %142, label %113, label %143, !dbg !973, !llvm.loop !1004

143:                                              ; preds = %138, %109, %111
  %144 = phi i8 [ 1, %111 ], [ 1, %109 ], [ %139, %138 ], !dbg !1006
  call void @llvm.dbg.value(metadata i8 %144, metadata !837, metadata !DIExpression()), !dbg !852
  %145 = and i8 %144, 1, !dbg !1007
  %146 = xor i8 %145, 1, !dbg !1007
  %147 = zext i8 %146 to i32, !dbg !1007
  ret i32 %147, !dbg !1008
}

; Function Attrs: nounwind
declare !dbg !1009 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1012 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1015 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1020 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !1026 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @fmt(%struct._IO_FILE* %0) unnamed_addr #8 !dbg !1030 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1034, metadata !DIExpression()), !dbg !1035
  tail call void @fadvise(%struct._IO_FILE* %0, i32 2) #25, !dbg !1036
  store i1 false, i1* @tabs, align 1, !dbg !1037
  store i32 0, i32* @other_indent, align 4, !dbg !1038, !tbaa !864
  %2 = tail call fastcc i32 @get_prefix(%struct._IO_FILE* %0), !dbg !1039
  store i32 %2, i32* @next_char, align 4, !dbg !1040, !tbaa !864
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  br label %5, !dbg !1041

5:                                                ; preds = %354, %1
  %6 = phi i32 [ %355, %354 ], [ %2, %1 ], !dbg !1042
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1047, metadata !DIExpression()) #25, !dbg !1050
  store i32 0, i32* @last_line_length, align 4, !dbg !1051, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %6, metadata !1048, metadata !DIExpression()) #25, !dbg !1050
  br label %7, !dbg !1052

7:                                                ; preds = %208, %5
  %8 = phi i32 [ %6, %5 ], [ %209, %208 ], !dbg !1050
  call void @llvm.dbg.value(metadata i32 %8, metadata !1048, metadata !DIExpression()) #25, !dbg !1050
  switch i32 %8, label %9 [
    i32 -1, label %18
    i32 10, label %18
  ], !dbg !1053

9:                                                ; preds = %7
  %10 = load i32, i32* @next_prefix_indent, align 4, !dbg !1054, !tbaa !864
  %11 = load i32, i32* @prefix_lead_space, align 4, !dbg !1055, !tbaa !864
  %12 = icmp slt i32 %10, %11, !dbg !1056
  br i1 %12, label %20, label %13, !dbg !1057

13:                                               ; preds = %9
  %14 = load i32, i32* @in_column, align 4, !dbg !1058, !tbaa !864
  %15 = load i32, i32* @prefix_full_length, align 4, !dbg !1059, !tbaa !864
  %16 = add nsw i32 %15, %10, !dbg !1060
  %17 = icmp slt i32 %14, %16, !dbg !1061
  br i1 %17, label %18, label %210, !dbg !1052

18:                                               ; preds = %13, %7, %7
  %19 = load i32, i32* @next_prefix_indent, align 4, !dbg !1062, !tbaa !864
  br label %20, !dbg !1073

20:                                               ; preds = %18, %9
  %21 = phi i32 [ %19, %18 ], [ %10, %9 ], !dbg !1062
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1068, metadata !DIExpression()) #25, !dbg !1074
  call void @llvm.dbg.value(metadata i32 %8, metadata !1069, metadata !DIExpression()) #25, !dbg !1074
  store i32 0, i32* @out_column, align 4, !dbg !1073, !tbaa !864
  %22 = load i32, i32* @in_column, align 4, !dbg !1075, !tbaa !864
  %23 = icmp sgt i32 %22, %21, !dbg !1076
  br i1 %23, label %25, label %24, !dbg !1077

24:                                               ; preds = %20
  switch i32 %8, label %25 [
    i32 -1, label %169
    i32 10, label %169
  ], !dbg !1078

25:                                               ; preds = %24, %20
  call void @llvm.dbg.value(metadata i32 %21, metadata !1079, metadata !DIExpression()) #25, !dbg !1084
  call void @llvm.dbg.value(metadata i32 %21, metadata !1082, metadata !DIExpression()) #25, !dbg !1084
  %26 = load i1, i1* @tabs, align 1, !dbg !1087
  br i1 %26, label %27, label %50, !dbg !1089

27:                                               ; preds = %25
  %28 = sdiv i32 %21, 8, !dbg !1090
  %29 = shl nsw i32 %28, 3, !dbg !1092
  call void @llvm.dbg.value(metadata i32 %29, metadata !1083, metadata !DIExpression()) #25, !dbg !1084
  %30 = icmp sgt i32 %21, 7, !dbg !1093
  br i1 %30, label %31, label %50, !dbg !1095

31:                                               ; preds = %27, %44
  %32 = phi i32 [ %48, %44 ], [ 0, %27 ]
  call void @llvm.dbg.value(metadata i32 9, metadata !1096, metadata !DIExpression()) #25, !dbg !1102
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1105, !tbaa !694
  %34 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %33, i64 0, i32 5, !dbg !1105
  %35 = load i8*, i8** %34, align 8, !dbg !1105, !tbaa !1106
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %33, i64 0, i32 6, !dbg !1105
  %37 = load i8*, i8** %36, align 8, !dbg !1105, !tbaa !1110
  %38 = icmp ult i8* %35, %37, !dbg !1105
  br i1 %38, label %42, label %39, !dbg !1105, !prof !1111

39:                                               ; preds = %31
  %40 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %33, i32 9) #25, !dbg !1105
  %41 = load i32, i32* @out_column, align 4, !dbg !1112, !tbaa !864
  br label %44, !dbg !1105

42:                                               ; preds = %31
  %43 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1105
  store i8* %43, i8** %34, align 8, !dbg !1105, !tbaa !1106
  store i8 9, i8* %35, align 1, !dbg !1105, !tbaa !874
  br label %44, !dbg !1105

44:                                               ; preds = %42, %39
  %45 = phi i32 [ %41, %39 ], [ %32, %42 ], !dbg !1112
  %46 = sdiv i32 %45, 8, !dbg !1113
  %47 = shl nsw i32 %46, 3, !dbg !1114
  %48 = add i32 %47, 8, !dbg !1114
  store i32 %48, i32* @out_column, align 4, !dbg !1115, !tbaa !864
  %49 = icmp slt i32 %48, %29, !dbg !1116
  br i1 %49, label %31, label %50, !dbg !1117, !llvm.loop !1118

50:                                               ; preds = %44, %27, %25
  %51 = phi i32 [ 0, %27 ], [ 0, %25 ], [ %48, %44 ], !dbg !1120
  %52 = icmp slt i32 %51, %21, !dbg !1121
  br i1 %52, label %53, label %70, !dbg !1122

53:                                               ; preds = %50, %66
  %54 = phi i32 [ %68, %66 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1096, metadata !DIExpression()) #25, !dbg !1123
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1126, !tbaa !694
  %56 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %55, i64 0, i32 5, !dbg !1126
  %57 = load i8*, i8** %56, align 8, !dbg !1126, !tbaa !1106
  %58 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %55, i64 0, i32 6, !dbg !1126
  %59 = load i8*, i8** %58, align 8, !dbg !1126, !tbaa !1110
  %60 = icmp ult i8* %57, %59, !dbg !1126
  br i1 %60, label %64, label %61, !dbg !1126, !prof !1111

61:                                               ; preds = %53
  %62 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %55, i32 32) #25, !dbg !1126
  %63 = load i32, i32* @out_column, align 4, !dbg !1127, !tbaa !864
  br label %66, !dbg !1126

64:                                               ; preds = %53
  %65 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !1126
  store i8* %65, i8** %56, align 8, !dbg !1126, !tbaa !1106
  store i8 32, i8* %57, align 1, !dbg !1126, !tbaa !874
  br label %66, !dbg !1126

66:                                               ; preds = %64, %61
  %67 = phi i32 [ %63, %61 ], [ %54, %64 ], !dbg !1127
  %68 = add nsw i32 %67, 1, !dbg !1127
  store i32 %68, i32* @out_column, align 4, !dbg !1127, !tbaa !864
  %69 = icmp slt i32 %68, %21, !dbg !1121
  br i1 %69, label %53, label %70, !dbg !1122, !llvm.loop !1128

70:                                               ; preds = %66, %50
  %71 = phi i32 [ %51, %50 ], [ %68, %66 ], !dbg !1130
  call void @llvm.dbg.value(metadata i8* undef, metadata !1070, metadata !DIExpression()) #25, !dbg !1074
  %72 = load i32, i32* @in_column, align 4, !dbg !1133, !tbaa !864
  %73 = icmp eq i32 %71, %72, !dbg !1134
  br i1 %73, label %102, label %74, !dbg !1135

74:                                               ; preds = %70
  %75 = load i8*, i8** @prefix, align 8, !dbg !1136, !tbaa !694
  call void @llvm.dbg.value(metadata i8* %75, metadata !1070, metadata !DIExpression()) #25, !dbg !1074
  br label %76, !dbg !1137

76:                                               ; preds = %97, %74
  %77 = phi i32 [ %98, %97 ], [ %72, %74 ]
  %78 = phi i32 [ %100, %97 ], [ %71, %74 ]
  %79 = phi i8* [ %83, %97 ], [ %75, %74 ]
  call void @llvm.dbg.value(metadata i8* %79, metadata !1070, metadata !DIExpression()) #25, !dbg !1074
  %80 = load i8, i8* %79, align 1, !dbg !1138, !tbaa !874
  %81 = icmp eq i8 %80, 0, !dbg !1135
  br i1 %81, label %102, label %82, !dbg !1137

82:                                               ; preds = %76
  %83 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !1139
  call void @llvm.dbg.value(metadata i8* %83, metadata !1070, metadata !DIExpression()) #25, !dbg !1074
  call void @llvm.dbg.value(metadata i8 %80, metadata !1096, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #25, !dbg !1140
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1142, !tbaa !694
  %85 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %84, i64 0, i32 5, !dbg !1142
  %86 = load i8*, i8** %85, align 8, !dbg !1142, !tbaa !1106
  %87 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %84, i64 0, i32 6, !dbg !1142
  %88 = load i8*, i8** %87, align 8, !dbg !1142, !tbaa !1110
  %89 = icmp ult i8* %86, %88, !dbg !1142
  br i1 %89, label %95, label %90, !dbg !1142, !prof !1111

90:                                               ; preds = %82
  %91 = zext i8 %80 to i32, !dbg !1138
  call void @llvm.dbg.value(metadata i8 %80, metadata !1096, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #25, !dbg !1140
  %92 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %84, i32 %91) #25, !dbg !1142
  %93 = load i32, i32* @out_column, align 4, !dbg !1143, !tbaa !864
  %94 = load i32, i32* @in_column, align 4, !dbg !1133, !tbaa !864
  br label %97, !dbg !1142

95:                                               ; preds = %82
  %96 = getelementptr inbounds i8, i8* %86, i64 1, !dbg !1142
  store i8* %96, i8** %85, align 8, !dbg !1142, !tbaa !1106
  store i8 %80, i8* %86, align 1, !dbg !1142, !tbaa !874
  br label %97, !dbg !1142

97:                                               ; preds = %95, %90
  %98 = phi i32 [ %94, %90 ], [ %77, %95 ], !dbg !1133
  %99 = phi i32 [ %93, %90 ], [ %78, %95 ], !dbg !1143
  %100 = add nsw i32 %99, 1, !dbg !1143
  store i32 %100, i32* @out_column, align 4, !dbg !1143, !tbaa !864
  call void @llvm.dbg.value(metadata i8* %83, metadata !1070, metadata !DIExpression()) #25, !dbg !1074
  %101 = icmp eq i32 %100, %98, !dbg !1134
  br i1 %101, label %102, label %76, !dbg !1135, !llvm.loop !1144

102:                                              ; preds = %97, %76, %70
  %103 = phi i32 [ %71, %70 ], [ %98, %97 ], [ %78, %76 ], !dbg !1130
  %104 = phi i32 [ %71, %70 ], [ %98, %97 ], [ %77, %76 ], !dbg !1133
  switch i32 %8, label %105 [
    i32 -1, label %153
    i32 10, label %169
  ], !dbg !1146

105:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i32 undef, metadata !1079, metadata !DIExpression()) #25, !dbg !1148
  call void @llvm.dbg.value(metadata i32 %104, metadata !1082, metadata !DIExpression()) #25, !dbg !1148
  %106 = load i1, i1* @tabs, align 1, !dbg !1150
  br i1 %106, label %107, label %133, !dbg !1151

107:                                              ; preds = %105
  %108 = sdiv i32 %104, 8, !dbg !1152
  %109 = shl nsw i32 %108, 3, !dbg !1153
  call void @llvm.dbg.value(metadata i32 %109, metadata !1083, metadata !DIExpression()) #25, !dbg !1148
  %110 = add nsw i32 %103, 1, !dbg !1154
  %111 = icmp slt i32 %110, %109, !dbg !1155
  %112 = icmp slt i32 %103, %109
  %113 = and i1 %111, %112, !dbg !1156
  br i1 %113, label %114, label %133, !dbg !1156

114:                                              ; preds = %107, %127
  %115 = phi i32 [ %131, %127 ], [ %103, %107 ]
  call void @llvm.dbg.value(metadata i32 9, metadata !1096, metadata !DIExpression()) #25, !dbg !1157
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1159, !tbaa !694
  %117 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 5, !dbg !1159
  %118 = load i8*, i8** %117, align 8, !dbg !1159, !tbaa !1106
  %119 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 6, !dbg !1159
  %120 = load i8*, i8** %119, align 8, !dbg !1159, !tbaa !1110
  %121 = icmp ult i8* %118, %120, !dbg !1159
  br i1 %121, label %125, label %122, !dbg !1159, !prof !1111

122:                                              ; preds = %114
  %123 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %116, i32 9) #25, !dbg !1159
  %124 = load i32, i32* @out_column, align 4, !dbg !1160, !tbaa !864
  br label %127, !dbg !1159

125:                                              ; preds = %114
  %126 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !1159
  store i8* %126, i8** %117, align 8, !dbg !1159, !tbaa !1106
  store i8 9, i8* %118, align 1, !dbg !1159, !tbaa !874
  br label %127, !dbg !1159

127:                                              ; preds = %125, %122
  %128 = phi i32 [ %124, %122 ], [ %115, %125 ], !dbg !1160
  %129 = sdiv i32 %128, 8, !dbg !1161
  %130 = shl nsw i32 %129, 3, !dbg !1162
  %131 = add i32 %130, 8, !dbg !1162
  store i32 %131, i32* @out_column, align 4, !dbg !1163, !tbaa !864
  %132 = icmp slt i32 %131, %109, !dbg !1164
  br i1 %132, label %114, label %133, !dbg !1165, !llvm.loop !1166

133:                                              ; preds = %127, %107, %105
  %134 = phi i32 [ %103, %107 ], [ %103, %105 ], [ %131, %127 ], !dbg !1168
  %135 = icmp slt i32 %134, %104, !dbg !1169
  br i1 %135, label %136, label %169, !dbg !1170

136:                                              ; preds = %133, %149
  %137 = phi i32 [ %151, %149 ], [ %134, %133 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1096, metadata !DIExpression()) #25, !dbg !1171
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1173, !tbaa !694
  %139 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %138, i64 0, i32 5, !dbg !1173
  %140 = load i8*, i8** %139, align 8, !dbg !1173, !tbaa !1106
  %141 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %138, i64 0, i32 6, !dbg !1173
  %142 = load i8*, i8** %141, align 8, !dbg !1173, !tbaa !1110
  %143 = icmp ult i8* %140, %142, !dbg !1173
  br i1 %143, label %147, label %144, !dbg !1173, !prof !1111

144:                                              ; preds = %136
  %145 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %138, i32 32) #25, !dbg !1173
  %146 = load i32, i32* @out_column, align 4, !dbg !1174, !tbaa !864
  br label %149, !dbg !1173

147:                                              ; preds = %136
  %148 = getelementptr inbounds i8, i8* %140, i64 1, !dbg !1173
  store i8* %148, i8** %139, align 8, !dbg !1173, !tbaa !1106
  store i8 32, i8* %140, align 1, !dbg !1173, !tbaa !874
  br label %149, !dbg !1173

149:                                              ; preds = %147, %144
  %150 = phi i32 [ %146, %144 ], [ %137, %147 ], !dbg !1174
  %151 = add nsw i32 %150, 1, !dbg !1174
  store i32 %151, i32* @out_column, align 4, !dbg !1174, !tbaa !864
  %152 = icmp slt i32 %151, %104, !dbg !1169
  br i1 %152, label %136, label %169, !dbg !1170, !llvm.loop !1175

153:                                              ; preds = %102
  %154 = load i32, i32* @next_prefix_indent, align 4, !dbg !1177, !tbaa !864
  %155 = load i32, i32* @prefix_length, align 4, !dbg !1179, !tbaa !864
  %156 = add nsw i32 %155, %154, !dbg !1180
  %157 = icmp slt i32 %104, %156, !dbg !1181
  br i1 %157, label %169, label %158, !dbg !1182

158:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i32 10, metadata !1096, metadata !DIExpression()) #25, !dbg !1183
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1185, !tbaa !694
  %160 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %159, i64 0, i32 5, !dbg !1185
  %161 = load i8*, i8** %160, align 8, !dbg !1185, !tbaa !1106
  %162 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %159, i64 0, i32 6, !dbg !1185
  %163 = load i8*, i8** %162, align 8, !dbg !1185, !tbaa !1110
  %164 = icmp ult i8* %161, %163, !dbg !1185
  br i1 %164, label %167, label %165, !dbg !1185, !prof !1111

165:                                              ; preds = %158
  %166 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %159, i32 10) #25, !dbg !1185
  br label %169, !dbg !1185

167:                                              ; preds = %158
  %168 = getelementptr inbounds i8, i8* %161, i64 1, !dbg !1185
  store i8* %168, i8** %160, align 8, !dbg !1185, !tbaa !1106
  store i8 10, i8* %161, align 1, !dbg !1185, !tbaa !874
  br label %169, !dbg !1185

169:                                              ; preds = %149, %167, %165, %153, %133, %102, %24, %24
  br label %170, !dbg !1186

170:                                              ; preds = %195, %169
  %171 = phi i32 [ %8, %169 ], [ %196, %195 ]
  call void @llvm.dbg.value(metadata i32 %171, metadata !1069, metadata !DIExpression()) #25, !dbg !1074
  switch i32 %171, label %172 [
    i32 -1, label %356
    i32 10, label %197
  ], !dbg !1186

172:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i32 %171, metadata !1096, metadata !DIExpression()) #25, !dbg !1187
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1190, !tbaa !694
  %174 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %173, i64 0, i32 5, !dbg !1190
  %175 = load i8*, i8** %174, align 8, !dbg !1190, !tbaa !1106
  %176 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %173, i64 0, i32 6, !dbg !1190
  %177 = load i8*, i8** %176, align 8, !dbg !1190, !tbaa !1110
  %178 = icmp ult i8* %175, %177, !dbg !1190
  br i1 %178, label %182, label %179, !dbg !1190, !prof !1111

179:                                              ; preds = %172
  %180 = and i32 %171, 255, !dbg !1190
  %181 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %173, i32 %180) #25, !dbg !1190
  br label %185, !dbg !1190

182:                                              ; preds = %172
  %183 = trunc i32 %171 to i8, !dbg !1190
  %184 = getelementptr inbounds i8, i8* %175, i64 1, !dbg !1190
  store i8* %184, i8** %174, align 8, !dbg !1190, !tbaa !1106
  store i8 %183, i8* %175, align 1, !dbg !1190, !tbaa !874
  br label %185, !dbg !1190

185:                                              ; preds = %182, %179
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1191, metadata !DIExpression()) #25, !dbg !1196
  %186 = load i8*, i8** %3, align 8, !dbg !1198, !tbaa !1199
  %187 = load i8*, i8** %4, align 8, !dbg !1198, !tbaa !1200
  %188 = icmp ult i8* %186, %187, !dbg !1198
  br i1 %188, label %191, label %189, !dbg !1198, !prof !1111

189:                                              ; preds = %185
  %190 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #25, !dbg !1198
  br label %195, !dbg !1198

191:                                              ; preds = %185
  %192 = getelementptr inbounds i8, i8* %186, i64 1, !dbg !1198
  store i8* %192, i8** %3, align 8, !dbg !1198, !tbaa !1199
  %193 = load i8, i8* %186, align 1, !dbg !1198, !tbaa !874
  %194 = zext i8 %193 to i32, !dbg !1198
  br label %195, !dbg !1198

195:                                              ; preds = %191, %189
  %196 = phi i32 [ %190, %189 ], [ %194, %191 ]
  br label %170, !dbg !1074, !llvm.loop !1201

197:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i32 10, metadata !1096, metadata !DIExpression()) #25, !dbg !1203
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1205, !tbaa !694
  %199 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %198, i64 0, i32 5, !dbg !1205
  %200 = load i8*, i8** %199, align 8, !dbg !1205, !tbaa !1106
  %201 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %198, i64 0, i32 6, !dbg !1205
  %202 = load i8*, i8** %201, align 8, !dbg !1205, !tbaa !1110
  %203 = icmp ult i8* %200, %202, !dbg !1205
  br i1 %203, label %206, label %204, !dbg !1205, !prof !1111

204:                                              ; preds = %197
  %205 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %198, i32 10) #25, !dbg !1205
  br label %208, !dbg !1205

206:                                              ; preds = %197
  %207 = getelementptr inbounds i8, i8* %200, i64 1, !dbg !1205
  store i8* %207, i8** %199, align 8, !dbg !1205, !tbaa !1106
  store i8 10, i8* %200, align 1, !dbg !1205, !tbaa !874
  br label %208, !dbg !1205

208:                                              ; preds = %206, %204
  %209 = tail call fastcc i32 @get_prefix(%struct._IO_FILE* %0) #25, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %209, metadata !1048, metadata !DIExpression()) #25, !dbg !1050
  br label %7, !dbg !1052, !llvm.loop !1207

210:                                              ; preds = %13
  store i32 %10, i32* @prefix_indent, align 4, !dbg !1209, !tbaa !864
  store i32 %14, i32* @first_indent, align 4, !dbg !1210, !tbaa !864
  store i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i8** @wptr, align 8, !dbg !1211, !tbaa !694
  store %struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), %struct.Word** @word_limit, align 8, !dbg !1212, !tbaa !694
  %211 = tail call fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %8) #25, !dbg !1213
  call void @llvm.dbg.value(metadata i32 %211, metadata !1048, metadata !DIExpression()) #25, !dbg !1050
  call void @llvm.dbg.value(metadata i32 %211, metadata !1214, metadata !DIExpression()) #25, !dbg !1219
  %212 = load i32, i32* @next_prefix_indent, align 4, !dbg !1221, !tbaa !864
  %213 = load i32, i32* @prefix_indent, align 4, !dbg !1222, !tbaa !864
  %214 = icmp eq i32 %212, %213, !dbg !1223
  br i1 %214, label %215, label %224, !dbg !1224

215:                                              ; preds = %210
  %216 = load i32, i32* @in_column, align 4, !dbg !1225, !tbaa !864
  %217 = load i32, i32* @prefix_full_length, align 4, !dbg !1226, !tbaa !864
  %218 = add nsw i32 %217, %212, !dbg !1227
  %219 = icmp sge i32 %216, %218, !dbg !1228
  %220 = icmp ne i32 %211, 10
  %221 = and i1 %220, %219, !dbg !1229
  %222 = icmp ne i32 %211, -1
  %223 = and i1 %222, %221, !dbg !1229
  br label %224, !dbg !1229

224:                                              ; preds = %215, %210
  %225 = phi i1 [ %223, %215 ], [ false, %210 ]
  call void @llvm.dbg.value(metadata i1 %225, metadata !1230, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !1235
  %226 = load i1, i1* @split, align 1, !dbg !1237
  br i1 %226, label %245, label %227, !dbg !1239

227:                                              ; preds = %224
  %228 = load i1, i1* @crown, align 1, !dbg !1240
  br i1 %228, label %247, label %229, !dbg !1242

229:                                              ; preds = %227
  %230 = load i1, i1* @tagged, align 1, !dbg !1243
  br i1 %230, label %231, label %274, !dbg !1245

231:                                              ; preds = %229
  br i1 %225, label %234, label %232, !dbg !1246

232:                                              ; preds = %231
  %233 = load i32, i32* @first_indent, align 4, !dbg !1249, !tbaa !864
  br label %238, !dbg !1246

234:                                              ; preds = %231
  %235 = load i32, i32* @in_column, align 4, !dbg !1251, !tbaa !864
  %236 = load i32, i32* @first_indent, align 4, !dbg !1252, !tbaa !864
  %237 = icmp eq i32 %235, %236, !dbg !1253
  br i1 %237, label %238, label %287, !dbg !1254

238:                                              ; preds = %234, %232
  %239 = phi i32 [ %233, %232 ], [ %235, %234 ], !dbg !1249
  %240 = load i32, i32* @other_indent, align 4, !dbg !1255, !tbaa !864
  %241 = icmp eq i32 %240, %239, !dbg !1256
  br i1 %241, label %242, label %290, !dbg !1257

242:                                              ; preds = %238
  %243 = icmp eq i32 %239, 0, !dbg !1258
  %244 = select i1 %243, i32 3, i32 0, !dbg !1259
  br label %287, !dbg !1260

245:                                              ; preds = %224
  %246 = load i32, i32* @first_indent, align 4, !dbg !1261, !tbaa !864
  store i32 %246, i32* @other_indent, align 4, !dbg !1262, !tbaa !864
  br label %336

247:                                              ; preds = %227
  %248 = load i32, i32* @in_column, align 4, !dbg !1263
  %249 = load i32, i32* @first_indent, align 4, !dbg !1263
  %250 = select i1 %225, i32 %248, i32 %249, !dbg !1263
  store i32 %250, i32* @other_indent, align 4, !dbg !1265, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %211, metadata !1214, metadata !DIExpression()) #25, !dbg !1266
  br i1 %214, label %251, label %336, !dbg !1272

251:                                              ; preds = %247
  %252 = load i32, i32* @prefix_full_length, align 4, !dbg !1273, !tbaa !864
  %253 = add nsw i32 %252, %212, !dbg !1274
  %254 = icmp slt i32 %248, %253, !dbg !1275
  br i1 %254, label %336, label %255, !dbg !1276

255:                                              ; preds = %251
  switch i32 %211, label %256 [
    i32 -1, label %336
    i32 10, label %336
  ], !dbg !1276

256:                                              ; preds = %255, %262
  %257 = phi i32 [ %258, %262 ], [ %211, %255 ], !dbg !1050
  call void @llvm.dbg.value(metadata i32 %257, metadata !1048, metadata !DIExpression()) #25, !dbg !1050
  %258 = tail call fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %257) #25, !dbg !1277
  call void @llvm.dbg.value(metadata i32 %258, metadata !1048, metadata !DIExpression()) #25, !dbg !1050
  call void @llvm.dbg.value(metadata i32 %258, metadata !1214, metadata !DIExpression()) #25, !dbg !1280
  %259 = load i32, i32* @next_prefix_indent, align 4, !dbg !1282, !tbaa !864
  %260 = load i32, i32* @prefix_indent, align 4, !dbg !1283, !tbaa !864
  %261 = icmp eq i32 %259, %260, !dbg !1284
  br i1 %261, label %262, label %336, !dbg !1285

262:                                              ; preds = %256
  %263 = load i32, i32* @in_column, align 4, !dbg !1286
  %264 = load i32, i32* @prefix_full_length, align 4, !dbg !1287, !tbaa !864
  %265 = add nsw i32 %264, %259, !dbg !1288
  %266 = icmp sge i32 %263, %265, !dbg !1289
  %267 = icmp ne i32 %258, 10
  %268 = and i1 %267, %266, !dbg !1290
  %269 = icmp ne i32 %258, -1
  %270 = and i1 %269, %268, !dbg !1290
  %271 = load i32, i32* @other_indent, align 4, !dbg !1291
  %272 = icmp eq i32 %263, %271, !dbg !1291
  %273 = and i1 %272, %270, !dbg !1291
  br i1 %273, label %256, label %336, !dbg !1292, !llvm.loop !1293

274:                                              ; preds = %229
  %275 = load i32, i32* @first_indent, align 4, !dbg !1296, !tbaa !864
  store i32 %275, i32* @other_indent, align 4, !dbg !1298, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %211, metadata !1048, metadata !DIExpression()) #25, !dbg !1050
  call void @llvm.dbg.value(metadata i32 %211, metadata !1214, metadata !DIExpression()) #25, !dbg !1299
  br i1 %214, label %276, label %336, !dbg !1303

276:                                              ; preds = %274
  call void @llvm.dbg.value(metadata i32 %211, metadata !1048, metadata !DIExpression()) #25, !dbg !1050
  %277 = load i32, i32* @in_column, align 4, !dbg !1304
  %278 = load i32, i32* @prefix_full_length, align 4, !dbg !1305, !tbaa !864
  %279 = add nsw i32 %278, %212, !dbg !1306
  %280 = icmp sge i32 %277, %279, !dbg !1307
  %281 = icmp ne i32 %211, 10
  %282 = and i1 %281, %280, !dbg !1308
  %283 = icmp ne i32 %211, -1
  %284 = and i1 %283, %282, !dbg !1308
  %285 = icmp eq i32 %277, %275, !dbg !1309
  %286 = and i1 %285, %284, !dbg !1309
  br i1 %286, label %318, label %336, !dbg !1310

287:                                              ; preds = %234, %242
  %288 = phi i32 [ %244, %242 ], [ %235, %234 ]
  %289 = phi i32 [ %239, %242 ], [ %236, %234 ]
  store i32 %288, i32* @other_indent, align 4, !dbg !1311, !tbaa !864
  br label %290, !dbg !1312

290:                                              ; preds = %287, %238
  %291 = phi i32 [ %239, %238 ], [ %289, %287 ]
  call void @llvm.dbg.value(metadata i32 %211, metadata !1214, metadata !DIExpression()) #25, !dbg !1316
  br i1 %214, label %292, label %336, !dbg !1312

292:                                              ; preds = %290
  %293 = load i32, i32* @in_column, align 4, !dbg !1317, !tbaa !864
  %294 = load i32, i32* @prefix_full_length, align 4, !dbg !1318, !tbaa !864
  %295 = add nsw i32 %294, %212, !dbg !1319
  %296 = icmp slt i32 %293, %295, !dbg !1320
  br i1 %296, label %336, label %297, !dbg !1321

297:                                              ; preds = %292
  switch i32 %211, label %298 [
    i32 -1, label %336
    i32 10, label %336
  ], !dbg !1321

298:                                              ; preds = %297
  %299 = icmp eq i32 %293, %291, !dbg !1322
  br i1 %299, label %336, label %300, !dbg !1323

300:                                              ; preds = %298, %306
  %301 = phi i32 [ %302, %306 ], [ %211, %298 ], !dbg !1050
  call void @llvm.dbg.value(metadata i32 %301, metadata !1048, metadata !DIExpression()) #25, !dbg !1050
  %302 = tail call fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %301) #25, !dbg !1324
  call void @llvm.dbg.value(metadata i32 %302, metadata !1048, metadata !DIExpression()) #25, !dbg !1050
  call void @llvm.dbg.value(metadata i32 %302, metadata !1214, metadata !DIExpression()) #25, !dbg !1327
  %303 = load i32, i32* @next_prefix_indent, align 4, !dbg !1329, !tbaa !864
  %304 = load i32, i32* @prefix_indent, align 4, !dbg !1330, !tbaa !864
  %305 = icmp eq i32 %303, %304, !dbg !1331
  br i1 %305, label %306, label %336, !dbg !1332

306:                                              ; preds = %300
  %307 = load i32, i32* @in_column, align 4, !dbg !1333
  %308 = load i32, i32* @prefix_full_length, align 4, !dbg !1334, !tbaa !864
  %309 = add nsw i32 %308, %303, !dbg !1335
  %310 = icmp sge i32 %307, %309, !dbg !1336
  %311 = icmp ne i32 %302, 10
  %312 = and i1 %311, %310, !dbg !1337
  %313 = icmp ne i32 %302, -1
  %314 = and i1 %313, %312, !dbg !1337
  %315 = load i32, i32* @other_indent, align 4, !dbg !1338
  %316 = icmp eq i32 %307, %315, !dbg !1338
  %317 = and i1 %316, %314, !dbg !1338
  br i1 %317, label %300, label %336, !dbg !1339, !llvm.loop !1340

318:                                              ; preds = %276, %324
  %319 = phi i32 [ %320, %324 ], [ %211, %276 ]
  call void @llvm.dbg.value(metadata i32 %319, metadata !1048, metadata !DIExpression()) #25, !dbg !1050
  %320 = tail call fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %319) #25, !dbg !1343
  call void @llvm.dbg.value(metadata i32 %320, metadata !1048, metadata !DIExpression()) #25, !dbg !1050
  call void @llvm.dbg.value(metadata i32 %320, metadata !1214, metadata !DIExpression()) #25, !dbg !1299
  %321 = load i32, i32* @next_prefix_indent, align 4, !dbg !1344, !tbaa !864
  %322 = load i32, i32* @prefix_indent, align 4, !dbg !1345, !tbaa !864
  %323 = icmp eq i32 %321, %322, !dbg !1346
  br i1 %323, label %324, label %336, !dbg !1303, !llvm.loop !1347

324:                                              ; preds = %318
  %325 = load i32, i32* @other_indent, align 4, !dbg !1309
  call void @llvm.dbg.value(metadata i32 %320, metadata !1048, metadata !DIExpression()) #25, !dbg !1050
  %326 = load i32, i32* @in_column, align 4, !dbg !1304
  %327 = load i32, i32* @prefix_full_length, align 4, !dbg !1305, !tbaa !864
  %328 = add nsw i32 %327, %321, !dbg !1306
  %329 = icmp sge i32 %326, %328, !dbg !1307
  %330 = icmp ne i32 %320, 10
  %331 = and i1 %330, %329, !dbg !1308
  %332 = icmp ne i32 %320, -1
  %333 = and i1 %332, %331, !dbg !1308
  %334 = icmp eq i32 %326, %325, !dbg !1309
  %335 = and i1 %334, %333, !dbg !1309
  br i1 %335, label %318, label %336, !dbg !1310

336:                                              ; preds = %324, %318, %306, %300, %262, %256, %276, %298, %297, %297, %292, %290, %274, %255, %255, %251, %247, %245
  %337 = phi i32 [ %211, %245 ], [ %211, %255 ], [ %211, %298 ], [ %211, %297 ], [ %211, %247 ], [ %211, %290 ], [ %211, %251 ], [ %211, %255 ], [ %211, %292 ], [ %211, %297 ], [ %211, %274 ], [ %211, %276 ], [ %258, %256 ], [ %258, %262 ], [ %302, %300 ], [ %302, %306 ], [ %320, %318 ], [ %320, %324 ], !dbg !1050
  call void @llvm.dbg.value(metadata i32 %337, metadata !1048, metadata !DIExpression()) #25, !dbg !1050
  %338 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1349, !tbaa !694
  %339 = icmp ugt %struct.Word* %338, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1349
  br i1 %339, label %341, label %340, !dbg !1352

340:                                              ; preds = %336
  tail call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0), i32 606, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.get_paragraph, i64 0, i64 0)) #27, !dbg !1349
  unreachable, !dbg !1349

341:                                              ; preds = %336
  %342 = getelementptr inbounds %struct.Word, %struct.Word* %338, i64 -1, i32 3, !dbg !1353
  %343 = load i8, i8* %342, align 8, !dbg !1354
  %344 = or i8 %343, 10, !dbg !1355
  store i8 %344, i8* %342, align 8, !dbg !1355
  store i32 %337, i32* @next_char, align 4, !dbg !1050, !tbaa !864
  tail call fastcc void @fmt_paragraph(), !dbg !1356
  call void @llvm.dbg.value(metadata %struct.Word* %338, metadata !1358, metadata !DIExpression()) #25, !dbg !1364
  %345 = load i32, i32* @first_indent, align 4, !dbg !1366, !tbaa !864
  tail call fastcc void @put_line(%struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), i32 %345) #25, !dbg !1367
  call void @llvm.dbg.value(metadata %struct.Word* undef, metadata !1363, metadata !DIExpression()) #25, !dbg !1364
  %346 = load %struct.Word*, %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), align 16, !dbg !1368, !tbaa !1370
  call void @llvm.dbg.value(metadata %struct.Word* %346, metadata !1363, metadata !DIExpression()) #25, !dbg !1364
  %347 = icmp eq %struct.Word* %346, %338, !dbg !1372
  br i1 %347, label %354, label %348, !dbg !1374

348:                                              ; preds = %341, %348
  %349 = phi %struct.Word* [ %352, %348 ], [ %346, %341 ]
  %350 = load i32, i32* @other_indent, align 4, !dbg !1375, !tbaa !864
  tail call fastcc void @put_line(%struct.Word* %349, i32 %350) #25, !dbg !1376
  %351 = getelementptr inbounds %struct.Word, %struct.Word* %349, i64 0, i32 6, !dbg !1377
  call void @llvm.dbg.value(metadata %struct.Word* undef, metadata !1363, metadata !DIExpression()) #25, !dbg !1364
  %352 = load %struct.Word*, %struct.Word** %351, align 8, !dbg !1368, !tbaa !1370
  call void @llvm.dbg.value(metadata %struct.Word* %352, metadata !1363, metadata !DIExpression()) #25, !dbg !1364
  %353 = icmp eq %struct.Word* %352, %338, !dbg !1372
  br i1 %353, label %354, label %348, !dbg !1374, !llvm.loop !1378

354:                                              ; preds = %348, %341
  %355 = load i32, i32* @next_char, align 4, !dbg !1042, !tbaa !864
  br label %5, !dbg !1041, !llvm.loop !1380

356:                                              ; preds = %170
  store i32 -1, i32* @next_char, align 4, !dbg !1050, !tbaa !864
  ret void, !dbg !1382
}

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @get_prefix(%struct._IO_FILE* %0) unnamed_addr #8 !dbg !1383 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1385, metadata !DIExpression()), !dbg !1394
  store i32 0, i32* @in_column, align 4, !dbg !1395, !tbaa !864
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1191, metadata !DIExpression()) #25, !dbg !1396
  %2 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1398
  %3 = load i8*, i8** %2, align 8, !dbg !1398, !tbaa !1199
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1398
  %5 = load i8*, i8** %4, align 8, !dbg !1398, !tbaa !1200
  %6 = icmp ult i8* %3, %5, !dbg !1398
  br i1 %6, label %9, label %7, !dbg !1398, !prof !1111

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #25, !dbg !1398
  br label %13, !dbg !1398

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1398
  store i8* %10, i8** %2, align 8, !dbg !1398, !tbaa !1199
  %11 = load i8, i8* %3, align 1, !dbg !1398, !tbaa !874
  %12 = zext i8 %11 to i32, !dbg !1398
  br label %13, !dbg !1398

13:                                               ; preds = %7, %9
  %14 = phi i32 [ %12, %9 ], [ %8, %7 ]
  br label %15, !dbg !1399

15:                                               ; preds = %36, %13
  %16 = phi i32 [ %14, %13 ], [ %37, %36 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !1403, metadata !DIExpression()) #25, !dbg !1405
  switch i32 %16, label %38 [
    i32 32, label %17
    i32 9, label %20
  ], !dbg !1406

17:                                               ; preds = %15
  %18 = load i32, i32* @in_column, align 4, !dbg !1408, !tbaa !864
  %19 = add nsw i32 %18, 1, !dbg !1408
  br label %25, !dbg !1410

20:                                               ; preds = %15
  store i1 true, i1* @tabs, align 1, !dbg !1411
  %21 = load i32, i32* @in_column, align 4, !dbg !1414, !tbaa !864
  %22 = sdiv i32 %21, 8, !dbg !1415
  %23 = shl nsw i32 %22, 3, !dbg !1416
  %24 = add i32 %23, 8, !dbg !1416
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i32 [ %24, %20 ], [ %19, %17 ], !dbg !1417
  store i32 %26, i32* @in_column, align 4, !dbg !1417, !tbaa !864
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1191, metadata !DIExpression()) #25, !dbg !1418
  %27 = load i8*, i8** %2, align 8, !dbg !1420, !tbaa !1199
  %28 = load i8*, i8** %4, align 8, !dbg !1420, !tbaa !1200
  %29 = icmp ult i8* %27, %28, !dbg !1420
  br i1 %29, label %32, label %30, !dbg !1420, !prof !1111

30:                                               ; preds = %25
  %31 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #25, !dbg !1420
  br label %36, !dbg !1420

32:                                               ; preds = %25
  %33 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1420
  store i8* %33, i8** %2, align 8, !dbg !1420, !tbaa !1199
  %34 = load i8, i8* %27, align 1, !dbg !1420, !tbaa !874
  %35 = zext i8 %34 to i32, !dbg !1420
  br label %36, !dbg !1420

36:                                               ; preds = %32, %30
  %37 = phi i32 [ %31, %30 ], [ %35, %32 ]
  br label %15, !dbg !1405, !llvm.loop !1421

38:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 %16, metadata !1386, metadata !DIExpression()), !dbg !1394
  %39 = load i32, i32* @prefix_length, align 4, !dbg !1423, !tbaa !864
  %40 = icmp eq i32 %39, 0, !dbg !1424
  br i1 %40, label %41, label %46, !dbg !1425

41:                                               ; preds = %38
  %42 = load i32, i32* @prefix_lead_space, align 4, !dbg !1426, !tbaa !864
  %43 = load i32, i32* @in_column, align 4, !dbg !1427, !tbaa !864
  %44 = icmp slt i32 %42, %43, !dbg !1428
  %45 = select i1 %44, i32 %42, i32 %43, !dbg !1426
  store i32 %45, i32* @next_prefix_indent, align 4, !dbg !1429, !tbaa !864
  br label %99, !dbg !1430

46:                                               ; preds = %38
  %47 = load i32, i32* @in_column, align 4, !dbg !1431, !tbaa !864
  store i32 %47, i32* @next_prefix_indent, align 4, !dbg !1432, !tbaa !864
  %48 = load i8*, i8** @prefix, align 8, !dbg !1433, !tbaa !694
  call void @llvm.dbg.value(metadata i8* %48, metadata !1387, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 %16, metadata !1386, metadata !DIExpression()), !dbg !1394
  %49 = load i8, i8* %48, align 1, !dbg !1435, !tbaa !874
  %50 = icmp eq i8 %49, 0, !dbg !1436
  br i1 %50, label %74, label %51, !dbg !1437

51:                                               ; preds = %46, %69
  %52 = phi i8 [ %72, %69 ], [ %49, %46 ]
  %53 = phi i8* [ %71, %69 ], [ %48, %46 ]
  %54 = phi i32 [ %70, %69 ], [ %16, %46 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1387, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 %54, metadata !1386, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8 %52, metadata !1390, metadata !DIExpression()), !dbg !1438
  %55 = zext i8 %52 to i32, !dbg !1439
  %56 = icmp eq i32 %54, %55, !dbg !1441
  br i1 %56, label %57, label %99, !dbg !1442

57:                                               ; preds = %51
  %58 = load i32, i32* @in_column, align 4, !dbg !1443, !tbaa !864
  %59 = add nsw i32 %58, 1, !dbg !1443
  store i32 %59, i32* @in_column, align 4, !dbg !1443, !tbaa !864
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1191, metadata !DIExpression()) #25, !dbg !1444
  %60 = load i8*, i8** %2, align 8, !dbg !1446, !tbaa !1199
  %61 = load i8*, i8** %4, align 8, !dbg !1446, !tbaa !1200
  %62 = icmp ult i8* %60, %61, !dbg !1446
  br i1 %62, label %65, label %63, !dbg !1446, !prof !1111

63:                                               ; preds = %57
  %64 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #25, !dbg !1446
  br label %69, !dbg !1446

65:                                               ; preds = %57
  %66 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1446
  store i8* %66, i8** %2, align 8, !dbg !1446, !tbaa !1199
  %67 = load i8, i8* %60, align 1, !dbg !1446, !tbaa !874
  %68 = zext i8 %67 to i32, !dbg !1446
  br label %69, !dbg !1446

69:                                               ; preds = %65, %63
  %70 = phi i32 [ %68, %65 ], [ %64, %63 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1386, metadata !DIExpression()), !dbg !1394
  %71 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !1447
  call void @llvm.dbg.value(metadata i8* %71, metadata !1387, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 %70, metadata !1386, metadata !DIExpression()), !dbg !1394
  %72 = load i8, i8* %71, align 1, !dbg !1435, !tbaa !874
  %73 = icmp eq i8 %72, 0, !dbg !1436
  br i1 %73, label %74, label %51, !dbg !1437, !llvm.loop !1448

74:                                               ; preds = %69, %46
  %75 = phi i32 [ %16, %46 ], [ %70, %69 ]
  br label %76, !dbg !1450

76:                                               ; preds = %97, %74
  %77 = phi i32 [ %75, %74 ], [ %98, %97 ]
  call void @llvm.dbg.value(metadata i32 %77, metadata !1403, metadata !DIExpression()) #25, !dbg !1452
  switch i32 %77, label %99 [
    i32 32, label %78
    i32 9, label %81
  ], !dbg !1453

78:                                               ; preds = %76
  %79 = load i32, i32* @in_column, align 4, !dbg !1454, !tbaa !864
  %80 = add nsw i32 %79, 1, !dbg !1454
  br label %86, !dbg !1455

81:                                               ; preds = %76
  store i1 true, i1* @tabs, align 1, !dbg !1456
  %82 = load i32, i32* @in_column, align 4, !dbg !1457, !tbaa !864
  %83 = sdiv i32 %82, 8, !dbg !1458
  %84 = shl nsw i32 %83, 3, !dbg !1459
  %85 = add i32 %84, 8, !dbg !1459
  br label %86

86:                                               ; preds = %81, %78
  %87 = phi i32 [ %85, %81 ], [ %80, %78 ], !dbg !1460
  store i32 %87, i32* @in_column, align 4, !dbg !1460, !tbaa !864
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1191, metadata !DIExpression()) #25, !dbg !1461
  %88 = load i8*, i8** %2, align 8, !dbg !1463, !tbaa !1199
  %89 = load i8*, i8** %4, align 8, !dbg !1463, !tbaa !1200
  %90 = icmp ult i8* %88, %89, !dbg !1463
  br i1 %90, label %93, label %91, !dbg !1463, !prof !1111

91:                                               ; preds = %86
  %92 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #25, !dbg !1463
  br label %97, !dbg !1463

93:                                               ; preds = %86
  %94 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !1463
  store i8* %94, i8** %2, align 8, !dbg !1463, !tbaa !1199
  %95 = load i8, i8* %88, align 1, !dbg !1463, !tbaa !874
  %96 = zext i8 %95 to i32, !dbg !1463
  br label %97, !dbg !1463

97:                                               ; preds = %93, %91
  %98 = phi i32 [ %92, %91 ], [ %96, %93 ]
  br label %76, !dbg !1452, !llvm.loop !1464

99:                                               ; preds = %51, %76, %41
  %100 = phi i32 [ %16, %41 ], [ %77, %76 ], [ %54, %51 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1386, metadata !DIExpression()), !dbg !1394
  ret i32 %100
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @get_line(%struct._IO_FILE* %0, i32 %1) unnamed_addr #8 !dbg !1466 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1468, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i32 %1, metadata !1469, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 1, i64 0), metadata !1471, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata %struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 998), metadata !1472, metadata !DIExpression()), !dbg !1473
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  %5 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1474, !tbaa !694
  br label %6, !dbg !1476

6:                                                ; preds = %200, %2
  %7 = phi %struct.Word* [ %5, %2 ], [ %202, %200 ], !dbg !1474
  %8 = phi i32 [ %1, %2 ], [ %127, %200 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !1469, metadata !DIExpression()), !dbg !1473
  %9 = load i8*, i8** @wptr, align 8, !dbg !1477, !tbaa !694
  %10 = getelementptr inbounds %struct.Word, %struct.Word* %7, i64 0, i32 0, !dbg !1478
  store i8* %9, i8** %10, align 8, !dbg !1479, !tbaa !1480
  br label %13, !dbg !1481

11:                                               ; preds = %59
  %12 = load i8*, i8** @wptr, align 8, !dbg !1482, !tbaa !694
  br label %13, !dbg !1482

13:                                               ; preds = %11, %6
  %14 = phi i8* [ %12, %11 ], [ %9, %6 ], !dbg !1482
  %15 = phi i32 [ %60, %11 ], [ %8, %6 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !1469, metadata !DIExpression()), !dbg !1473
  %16 = icmp eq i8* %14, getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 1, i64 0), !dbg !1485
  br i1 %16, label %17, label %43, !dbg !1486

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i1 true, metadata !1230, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1487
  %18 = load i1, i1* @split, align 1, !dbg !1490
  br i1 %18, label %19, label %21, !dbg !1491

19:                                               ; preds = %17
  %20 = load i32, i32* @first_indent, align 4, !dbg !1492, !tbaa !864
  br label %39, !dbg !1493

21:                                               ; preds = %17
  %22 = load i1, i1* @crown, align 1, !dbg !1494
  br i1 %22, label %23, label %25, !dbg !1495

23:                                               ; preds = %21
  %24 = load i32, i32* @in_column, align 4, !dbg !1496
  br label %39, !dbg !1497

25:                                               ; preds = %21
  %26 = load i1, i1* @tagged, align 1, !dbg !1498
  br i1 %26, label %27, label %37, !dbg !1499

27:                                               ; preds = %25
  %28 = load i32, i32* @in_column, align 4, !dbg !1500, !tbaa !864
  %29 = load i32, i32* @first_indent, align 4, !dbg !1501, !tbaa !864
  %30 = icmp eq i32 %28, %29, !dbg !1502
  br i1 %30, label %31, label %39, !dbg !1503

31:                                               ; preds = %27
  %32 = load i32, i32* @other_indent, align 4, !dbg !1504, !tbaa !864
  %33 = icmp eq i32 %32, %28, !dbg !1505
  br i1 %33, label %34, label %41, !dbg !1506

34:                                               ; preds = %31
  %35 = icmp eq i32 %28, 0, !dbg !1507
  %36 = select i1 %35, i32 3, i32 0, !dbg !1508
  br label %39, !dbg !1509

37:                                               ; preds = %25
  %38 = load i32, i32* @first_indent, align 4, !dbg !1510, !tbaa !864
  br label %39

39:                                               ; preds = %27, %37, %34, %23, %19
  %40 = phi i32 [ %20, %19 ], [ %24, %23 ], [ %36, %34 ], [ %38, %37 ], [ %28, %27 ]
  store i32 %40, i32* @other_indent, align 4, !dbg !1511, !tbaa !864
  br label %41, !dbg !1512

41:                                               ; preds = %39, %31
  tail call fastcc void @flush_paragraph(), !dbg !1512
  %42 = load i8*, i8** @wptr, align 8, !dbg !1513, !tbaa !694
  br label %43, !dbg !1514

43:                                               ; preds = %41, %13
  %44 = phi i8* [ %42, %41 ], [ %14, %13 ], !dbg !1513
  %45 = trunc i32 %15 to i8, !dbg !1515
  %46 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !1513
  store i8* %46, i8** @wptr, align 8, !dbg !1513, !tbaa !694
  store i8 %45, i8* %44, align 1, !dbg !1516, !tbaa !874
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1191, metadata !DIExpression()) #25, !dbg !1517
  %47 = load i8*, i8** %3, align 8, !dbg !1519, !tbaa !1199
  %48 = load i8*, i8** %4, align 8, !dbg !1519, !tbaa !1200
  %49 = icmp ult i8* %47, %48, !dbg !1519
  br i1 %49, label %50, label %54, !dbg !1519, !prof !1111

50:                                               ; preds = %43
  %51 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1519
  store i8* %51, i8** %3, align 8, !dbg !1519, !tbaa !1199
  %52 = load i8, i8* %47, align 1, !dbg !1519, !tbaa !874
  %53 = zext i8 %52 to i32, !dbg !1519
  call void @llvm.dbg.value(metadata i32 %55, metadata !1469, metadata !DIExpression()), !dbg !1473
  br label %59, !dbg !1520

54:                                               ; preds = %43
  %55 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #25, !dbg !1519
  call void @llvm.dbg.value(metadata i32 %55, metadata !1469, metadata !DIExpression()), !dbg !1473
  %56 = icmp eq i32 %55, -1, !dbg !1521
  br i1 %56, label %57, label %59, !dbg !1520

57:                                               ; preds = %54
  %58 = tail call i16** @__ctype_b_loc() #29, !dbg !1522
  br label %68, !dbg !1520

59:                                               ; preds = %50, %54
  %60 = phi i32 [ %53, %50 ], [ %55, %54 ]
  %61 = tail call i16** @__ctype_b_loc() #29, !dbg !1530
  %62 = load i16*, i16** %61, align 8, !dbg !1530, !tbaa !694
  %63 = sext i32 %60 to i64, !dbg !1530
  %64 = getelementptr inbounds i16, i16* %62, i64 %63, !dbg !1530
  %65 = load i16, i16* %64, align 2, !dbg !1530, !tbaa !1531
  %66 = and i16 %65, 8192, !dbg !1530
  %67 = icmp eq i16 %66, 0, !dbg !1532
  br i1 %67, label %11, label %68, !dbg !1533, !llvm.loop !1534

68:                                               ; preds = %59, %57
  %69 = phi i16** [ %58, %57 ], [ %61, %59 ], !dbg !1522
  %70 = phi i32 [ -1, %57 ], [ %60, %59 ]
  %71 = load i8*, i8** @wptr, align 8, !dbg !1536, !tbaa !694
  %72 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1537, !tbaa !694
  %73 = getelementptr inbounds %struct.Word, %struct.Word* %72, i64 0, i32 0, !dbg !1538
  %74 = load i8*, i8** %73, align 8, !dbg !1538, !tbaa !1480
  %75 = ptrtoint i8* %71 to i64, !dbg !1539
  %76 = ptrtoint i8* %74 to i64, !dbg !1539
  %77 = sub i64 %75, %76, !dbg !1539
  %78 = trunc i64 %77 to i32, !dbg !1536
  %79 = getelementptr inbounds %struct.Word, %struct.Word* %72, i64 0, i32 1, !dbg !1540
  store i32 %78, i32* %79, align 8, !dbg !1541, !tbaa !1542
  %80 = load i32, i32* @in_column, align 4, !dbg !1543, !tbaa !864
  %81 = add nsw i32 %80, %78, !dbg !1543
  store i32 %81, i32* @in_column, align 4, !dbg !1543, !tbaa !864
  call void @llvm.dbg.value(metadata %struct.Word* %72, metadata !1525, metadata !DIExpression()) #25, !dbg !1544
  call void @llvm.dbg.value(metadata i8* %74, metadata !1526, metadata !DIExpression()) #25, !dbg !1544
  %82 = shl i64 %77, 32, !dbg !1545
  %83 = add i64 %82, -4294967296, !dbg !1545
  %84 = ashr exact i64 %83, 32, !dbg !1545
  %85 = getelementptr inbounds i8, i8* %74, i64 %84, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %85, metadata !1527, metadata !DIExpression()) #25, !dbg !1544
  %86 = load i8, i8* %85, align 1, !dbg !1546, !tbaa !874
  call void @llvm.dbg.value(metadata i8 %86, metadata !1528, metadata !DIExpression()) #25, !dbg !1544
  %87 = load i8, i8* %74, align 1, !dbg !1547, !tbaa !874
  %88 = sext i8 %87 to i32, !dbg !1547
  %89 = tail call i8* @memchr(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i32 %88, i64 6) #25, !dbg !1547
  %90 = icmp ne i8* %89, null, !dbg !1547
  %91 = getelementptr inbounds %struct.Word, %struct.Word* %72, i64 0, i32 3, !dbg !1548
  %92 = zext i1 %90 to i8, !dbg !1549
  %93 = load i8, i8* %91, align 8, !dbg !1549
  %94 = and i8 %93, -2, !dbg !1549
  %95 = or i8 %94, %92, !dbg !1549
  store i8 %95, i8* %91, align 8, !dbg !1549
  %96 = load i16*, i16** %69, align 8, !dbg !1522, !tbaa !694
  %97 = zext i8 %86 to i64, !dbg !1522
  %98 = getelementptr inbounds i16, i16* %96, i64 %97, !dbg !1522
  %99 = load i16, i16* %98, align 2, !dbg !1522, !tbaa !1531
  %100 = trunc i16 %99 to i8, !dbg !1550
  %101 = and i8 %100, 4, !dbg !1550
  %102 = and i8 %95, -5, !dbg !1550
  %103 = or i8 %101, %102, !dbg !1550
  store i8 %103, i8* %91, align 8, !dbg !1550
  %104 = icmp sgt i32 %78, 1, !dbg !1551
  br i1 %104, label %105, label %114, !dbg !1552

105:                                              ; preds = %68, %111
  %106 = phi i8* [ %112, %111 ], [ %85, %68 ]
  call void @llvm.dbg.value(metadata i8* %106, metadata !1527, metadata !DIExpression()) #25, !dbg !1544
  %107 = load i8, i8* %106, align 1, !dbg !1553, !tbaa !874
  %108 = sext i8 %107 to i32, !dbg !1553
  %109 = tail call i8* @memchr(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i32 %108, i64 5) #25, !dbg !1553
  %110 = icmp eq i8* %109, null, !dbg !1553
  br i1 %110, label %114, label %111, !dbg !1554

111:                                              ; preds = %105
  %112 = getelementptr inbounds i8, i8* %106, i64 -1, !dbg !1555
  call void @llvm.dbg.value(metadata i8* %112, metadata !1527, metadata !DIExpression()) #25, !dbg !1544
  %113 = icmp ult i8* %74, %112, !dbg !1551
  br i1 %113, label %105, label %114, !dbg !1552, !llvm.loop !1556

114:                                              ; preds = %105, %111, %68
  %115 = phi i8* [ %85, %68 ], [ %106, %105 ], [ %112, %111 ], !dbg !1544
  %116 = load i8, i8* %115, align 1, !dbg !1557, !tbaa !874
  %117 = zext i8 %116 to i64, !dbg !1557
  %118 = icmp ult i8 %116, 64, !dbg !1557
  %119 = shl nuw i64 1, %117, !dbg !1557
  %120 = and i64 %119, -9223301659520663551, !dbg !1557
  %121 = icmp ne i64 %120, 0, !dbg !1557
  %122 = and i1 %118, %121, !dbg !1557
  %123 = select i1 %122, i8 2, i8 0, !dbg !1558
  %124 = and i8 %103, -3, !dbg !1558
  %125 = or i8 %123, %124, !dbg !1558
  store i8 %125, i8* %91, align 8, !dbg !1558
  call void @llvm.dbg.value(metadata i32 %81, metadata !1470, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1402, metadata !DIExpression()) #25, !dbg !1559
  call void @llvm.dbg.value(metadata i32 %55, metadata !1403, metadata !DIExpression()) #25, !dbg !1559
  br label %126, !dbg !1561

126:                                              ; preds = %147, %114
  %127 = phi i32 [ %70, %114 ], [ %148, %147 ]
  call void @llvm.dbg.value(metadata i32 %127, metadata !1403, metadata !DIExpression()) #25, !dbg !1559
  switch i32 %127, label %149 [
    i32 32, label %128
    i32 9, label %131
  ], !dbg !1562

128:                                              ; preds = %126
  %129 = load i32, i32* @in_column, align 4, !dbg !1563, !tbaa !864
  %130 = add nsw i32 %129, 1, !dbg !1563
  br label %136, !dbg !1564

131:                                              ; preds = %126
  store i1 true, i1* @tabs, align 1, !dbg !1565
  %132 = load i32, i32* @in_column, align 4, !dbg !1566, !tbaa !864
  %133 = sdiv i32 %132, 8, !dbg !1567
  %134 = shl nsw i32 %133, 3, !dbg !1568
  %135 = add i32 %134, 8, !dbg !1568
  br label %136

136:                                              ; preds = %131, %128
  %137 = phi i32 [ %135, %131 ], [ %130, %128 ], !dbg !1569
  store i32 %137, i32* @in_column, align 4, !dbg !1569, !tbaa !864
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1191, metadata !DIExpression()) #25, !dbg !1570
  %138 = load i8*, i8** %3, align 8, !dbg !1572, !tbaa !1199
  %139 = load i8*, i8** %4, align 8, !dbg !1572, !tbaa !1200
  %140 = icmp ult i8* %138, %139, !dbg !1572
  br i1 %140, label %143, label %141, !dbg !1572, !prof !1111

141:                                              ; preds = %136
  %142 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #25, !dbg !1572
  br label %147, !dbg !1572

143:                                              ; preds = %136
  %144 = getelementptr inbounds i8, i8* %138, i64 1, !dbg !1572
  store i8* %144, i8** %3, align 8, !dbg !1572, !tbaa !1199
  %145 = load i8, i8* %138, align 1, !dbg !1572, !tbaa !874
  %146 = zext i8 %145 to i32, !dbg !1572
  br label %147, !dbg !1572

147:                                              ; preds = %143, %141
  %148 = phi i32 [ %142, %141 ], [ %146, %143 ]
  br label %126, !dbg !1559, !llvm.loop !1573

149:                                              ; preds = %126
  call void @llvm.dbg.value(metadata i32 %127, metadata !1469, metadata !DIExpression()), !dbg !1473
  %150 = load i32, i32* @in_column, align 4, !dbg !1575, !tbaa !864
  %151 = sub nsw i32 %150, %81, !dbg !1576
  %152 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1577, !tbaa !694
  %153 = getelementptr inbounds %struct.Word, %struct.Word* %152, i64 0, i32 2, !dbg !1578
  store i32 %151, i32* %153, align 4, !dbg !1579, !tbaa !1580
  %154 = icmp eq i32 %127, -1, !dbg !1581
  %155 = getelementptr inbounds %struct.Word, %struct.Word* %152, i64 0, i32 3
  %156 = load i8, i8* %155, align 8, !dbg !1582
  br i1 %154, label %162, label %157, !dbg !1583

157:                                              ; preds = %149
  %158 = and i8 %156, 2, !dbg !1584
  %159 = icmp eq i8 %158, 0, !dbg !1584
  br i1 %159, label %168, label %160, !dbg !1585

160:                                              ; preds = %157
  %161 = icmp eq i32 %127, 10, !dbg !1586
  br i1 %161, label %162, label %164, !dbg !1587

162:                                              ; preds = %149, %160
  %163 = getelementptr inbounds %struct.Word, %struct.Word* %152, i64 0, i32 3, !dbg !1588
  br label %166, !dbg !1589

164:                                              ; preds = %160
  %165 = icmp sgt i32 %151, 1, !dbg !1590
  br i1 %165, label %166, label %168, !dbg !1589

166:                                              ; preds = %162, %164
  %167 = phi i8* [ %163, %162 ], [ %155, %164 ]
  br label %168, !dbg !1589

168:                                              ; preds = %157, %164, %166
  %169 = phi i8* [ %167, %166 ], [ %155, %164 ], [ %155, %157 ]
  %170 = phi i32 [ 2, %166 ], [ 1, %164 ], [ 1, %157 ]
  %171 = phi i8 [ 8, %166 ], [ 0, %164 ], [ 0, %157 ]
  %172 = and i8 %156, -9, !dbg !1589
  %173 = or i8 %171, %172, !dbg !1589
  store i8 %173, i8* %169, align 8, !dbg !1589
  switch i32 %127, label %174 [
    i32 -1, label %176
    i32 10, label %176
  ], !dbg !1591

174:                                              ; preds = %168
  %175 = load i1, i1* @uniform, align 1, !dbg !1593
  br i1 %175, label %176, label %177, !dbg !1594

176:                                              ; preds = %168, %168, %174
  store i32 %170, i32* %153, align 4, !dbg !1595, !tbaa !1580
  br label %177, !dbg !1596

177:                                              ; preds = %176, %174
  %178 = icmp eq %struct.Word* %152, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 998), !dbg !1597
  br i1 %178, label %179, label %200, !dbg !1599

179:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i1 true, metadata !1230, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1600
  %180 = load i1, i1* @split, align 1, !dbg !1603
  br i1 %180, label %181, label %183, !dbg !1604

181:                                              ; preds = %179
  %182 = load i32, i32* @first_indent, align 4, !dbg !1605, !tbaa !864
  br label %196, !dbg !1606

183:                                              ; preds = %179
  %184 = load i1, i1* @crown, align 1, !dbg !1607
  br i1 %184, label %196, label %185, !dbg !1608

185:                                              ; preds = %183
  %186 = load i1, i1* @tagged, align 1, !dbg !1609
  %187 = load i32, i32* @first_indent, align 4, !dbg !1610, !tbaa !864
  br i1 %186, label %188, label %196, !dbg !1611

188:                                              ; preds = %185
  %189 = icmp eq i32 %150, %187, !dbg !1612
  br i1 %189, label %190, label %196, !dbg !1613

190:                                              ; preds = %188
  %191 = load i32, i32* @other_indent, align 4, !dbg !1614, !tbaa !864
  %192 = icmp eq i32 %191, %150, !dbg !1615
  br i1 %192, label %193, label %198, !dbg !1616

193:                                              ; preds = %190
  %194 = icmp eq i32 %150, 0, !dbg !1617
  %195 = select i1 %194, i32 3, i32 0, !dbg !1618
  br label %196, !dbg !1619

196:                                              ; preds = %185, %188, %183, %193, %181
  %197 = phi i32 [ %182, %181 ], [ %195, %193 ], [ %150, %183 ], [ %150, %188 ], [ %187, %185 ]
  store i32 %197, i32* @other_indent, align 4, !dbg !1620, !tbaa !864
  br label %198, !dbg !1621

198:                                              ; preds = %196, %190
  tail call fastcc void @flush_paragraph(), !dbg !1621
  %199 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1622, !tbaa !694
  br label %200, !dbg !1623

200:                                              ; preds = %198, %177
  %201 = phi %struct.Word* [ %199, %198 ], [ %152, %177 ], !dbg !1622
  %202 = getelementptr inbounds %struct.Word, %struct.Word* %201, i64 1, !dbg !1622
  store %struct.Word* %202, %struct.Word** @word_limit, align 8, !dbg !1622, !tbaa !694
  switch i32 %127, label %6 [
    i32 -1, label %203
    i32 10, label %203
  ], !dbg !1624

203:                                              ; preds = %200, %200
  %204 = tail call fastcc i32 @get_prefix(%struct._IO_FILE* %0), !dbg !1625
  ret i32 %204, !dbg !1626
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define internal fastcc void @fmt_paragraph() unnamed_addr #10 !dbg !1627 {
  %1 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1635, !tbaa !694
  %2 = getelementptr inbounds %struct.Word, %struct.Word* %1, i64 0, i32 5, !dbg !1636
  store i64 0, i64* %2, align 8, !dbg !1637, !tbaa !1638
  %3 = getelementptr inbounds %struct.Word, %struct.Word* %1, i64 0, i32 1, !dbg !1639
  %4 = load i32, i32* %3, align 8, !dbg !1639, !tbaa !1542
  call void @llvm.dbg.value(metadata i32 %4, metadata !1634, metadata !DIExpression()), !dbg !1640
  %5 = load i32, i32* @max_width, align 4, !dbg !1641, !tbaa !864
  store i32 %5, i32* %3, align 8, !dbg !1642, !tbaa !1542
  call void @llvm.dbg.value(metadata %struct.Word* %1, metadata !1629, metadata !DIExpression(DW_OP_constu, 40, DW_OP_minus, DW_OP_stack_value)), !dbg !1640
  %6 = getelementptr inbounds %struct.Word, %struct.Word* %1, i64 -1, !dbg !1643
  call void @llvm.dbg.value(metadata %struct.Word* %6, metadata !1629, metadata !DIExpression()), !dbg !1640
  %7 = icmp ult %struct.Word* %6, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1645
  br i1 %7, label %124, label %8, !dbg !1647

8:                                                ; preds = %0
  %9 = load i32, i32* @first_indent, align 4
  %10 = load i32, i32* @other_indent, align 4
  %11 = load i32, i32* @goal_width, align 4
  %12 = load i32, i32* @last_line_length, align 4
  %13 = icmp sgt i32 %12, 0
  br label %14, !dbg !1647

14:                                               ; preds = %8, %118
  %15 = phi %struct.Word* [ %6, %8 ], [ %122, %118 ]
  %16 = phi %struct.Word* [ %1, %8 ], [ %15, %118 ]
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !1633, metadata !DIExpression()), !dbg !1640
  %17 = icmp eq %struct.Word* %15, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1648
  %18 = select i1 %17, i32 %9, i32 %10, !dbg !1650
  call void @llvm.dbg.value(metadata i32 %18, metadata !1631, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata %struct.Word* %15, metadata !1630, metadata !DIExpression()), !dbg !1640
  %19 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 1, !dbg !1651
  %20 = load i32, i32* %19, align 8, !dbg !1651, !tbaa !1542
  %21 = add nsw i32 %18, %20, !dbg !1652
  call void @llvm.dbg.value(metadata i32 %21, metadata !1631, metadata !DIExpression()), !dbg !1640
  %22 = and i1 %17, %13
  %23 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 6
  %24 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 4
  br label %25, !dbg !1653

25:                                               ; preds = %66, %14
  %26 = phi %struct.Word* [ %15, %14 ], [ %29, %66 ], !dbg !1654
  %27 = phi i32 [ %21, %14 ], [ %72, %66 ], !dbg !1654
  %28 = phi i64 [ 9223372036854775807, %14 ], [ %65, %66 ], !dbg !1654
  call void @llvm.dbg.value(metadata i64 %28, metadata !1633, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i32 %27, metadata !1631, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata %struct.Word* %26, metadata !1630, metadata !DIExpression()), !dbg !1640
  %29 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, !dbg !1655
  call void @llvm.dbg.value(metadata %struct.Word* %29, metadata !1630, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata %struct.Word* %29, metadata !1657, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i32 %27, metadata !1662, metadata !DIExpression()), !dbg !1665
  %30 = icmp eq %struct.Word* %1, %29, !dbg !1667
  br i1 %30, label %48, label %31, !dbg !1669

31:                                               ; preds = %25
  %32 = sub nsw i32 %11, %27, !dbg !1670
  call void @llvm.dbg.value(metadata i32 %32, metadata !1663, metadata !DIExpression()), !dbg !1665
  %33 = mul nsw i32 %32, 10, !dbg !1671
  %34 = sext i32 %33 to i64, !dbg !1671
  %35 = mul nsw i64 %34, %34, !dbg !1671
  call void @llvm.dbg.value(metadata i64 %35, metadata !1664, metadata !DIExpression()), !dbg !1665
  %36 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, i32 6, !dbg !1672
  %37 = load %struct.Word*, %struct.Word** %36, align 8, !dbg !1672, !tbaa !1370
  %38 = icmp eq %struct.Word* %37, %1, !dbg !1674
  br i1 %38, label %48, label %39, !dbg !1675

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, i32 4, !dbg !1676
  %41 = load i32, i32* %40, align 4, !dbg !1676, !tbaa !1678
  %42 = sub nsw i32 %27, %41, !dbg !1679
  call void @llvm.dbg.value(metadata i32 %42, metadata !1663, metadata !DIExpression()), !dbg !1665
  %43 = mul nsw i32 %42, 10, !dbg !1680
  %44 = sext i32 %43 to i64, !dbg !1680
  %45 = mul nsw i64 %44, %44, !dbg !1680
  %46 = lshr exact i64 %45, 1, !dbg !1680
  %47 = add nuw nsw i64 %46, %35, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %47, metadata !1664, metadata !DIExpression()), !dbg !1665
  br label %48, !dbg !1682

48:                                               ; preds = %25, %31, %39
  %49 = phi i64 [ 0, %25 ], [ %47, %39 ], [ %35, %31 ], !dbg !1665
  %50 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, i32 5, !dbg !1683
  %51 = load i64, i64* %50, align 8, !dbg !1683, !tbaa !1638
  %52 = add nsw i64 %51, %49, !dbg !1684
  call void @llvm.dbg.value(metadata i64 %52, metadata !1632, metadata !DIExpression()), !dbg !1640
  br i1 %22, label %53, label %60, !dbg !1685

53:                                               ; preds = %48
  %54 = sub nsw i32 %27, %12, !dbg !1687
  %55 = mul nsw i32 %54, 10, !dbg !1687
  %56 = sext i32 %55 to i64, !dbg !1687
  %57 = mul nsw i64 %56, %56, !dbg !1687
  %58 = lshr exact i64 %57, 1, !dbg !1687
  %59 = add nsw i64 %58, %52, !dbg !1688
  call void @llvm.dbg.value(metadata i64 %59, metadata !1632, metadata !DIExpression()), !dbg !1640
  br label %60, !dbg !1689

60:                                               ; preds = %53, %48
  %61 = phi i64 [ %59, %53 ], [ %52, %48 ], !dbg !1690
  call void @llvm.dbg.value(metadata i64 %61, metadata !1632, metadata !DIExpression()), !dbg !1640
  %62 = icmp slt i64 %61, %28, !dbg !1691
  br i1 %62, label %63, label %64, !dbg !1693

63:                                               ; preds = %60
  call void @llvm.dbg.value(metadata i64 %61, metadata !1633, metadata !DIExpression()), !dbg !1640
  store %struct.Word* %29, %struct.Word** %23, align 8, !dbg !1694, !tbaa !1370
  store i32 %27, i32* %24, align 4, !dbg !1696, !tbaa !1678
  br label %64, !dbg !1697

64:                                               ; preds = %63, %60
  %65 = phi i64 [ %61, %63 ], [ %28, %60 ], !dbg !1654
  call void @llvm.dbg.value(metadata i64 %65, metadata !1633, metadata !DIExpression()), !dbg !1640
  br i1 %30, label %74, label %66, !dbg !1698

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 0, i32 2, !dbg !1699
  %68 = load i32, i32* %67, align 4, !dbg !1699, !tbaa !1580
  %69 = getelementptr inbounds %struct.Word, %struct.Word* %26, i64 1, i32 1, !dbg !1700
  %70 = load i32, i32* %69, align 8, !dbg !1700, !tbaa !1542
  %71 = add i32 %68, %27, !dbg !1701
  %72 = add i32 %71, %70, !dbg !1702
  call void @llvm.dbg.value(metadata i32 %72, metadata !1631, metadata !DIExpression()), !dbg !1640
  %73 = icmp slt i32 %72, %5, !dbg !1703
  br i1 %73, label %25, label %74, !dbg !1704, !llvm.loop !1705

74:                                               ; preds = %64, %66
  call void @llvm.dbg.value(metadata %struct.Word* %15, metadata !1707, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i64 4900, metadata !1712, metadata !DIExpression()), !dbg !1713
  %75 = icmp ugt %struct.Word* %15, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1715
  br i1 %75, label %76, label %102, !dbg !1717

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -2, i32 3, !dbg !1718
  %78 = load i8, i8* %77, align 8, !dbg !1718
  %79 = and i8 %78, 2, !dbg !1721
  %80 = icmp eq i8 %79, 0, !dbg !1721
  br i1 %80, label %85, label %81, !dbg !1722

81:                                               ; preds = %76
  %82 = and i8 %78, 8, !dbg !1723
  %83 = icmp eq i8 %82, 0, !dbg !1723
  %84 = select i1 %83, i64 364900, i64 2400, !dbg !1726
  br label %102, !dbg !1726

85:                                               ; preds = %76
  %86 = and i8 %78, 4, !dbg !1727
  %87 = icmp eq i8 %86, 0, !dbg !1727
  br i1 %87, label %88, label %102, !dbg !1729

88:                                               ; preds = %85
  %89 = icmp ugt %struct.Word* %15, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 1), !dbg !1730
  br i1 %89, label %90, label %102, !dbg !1732

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -3, i32 3, !dbg !1733
  %92 = load i8, i8* %91, align 8, !dbg !1733
  %93 = and i8 %92, 8, !dbg !1734
  %94 = icmp eq i8 %93, 0, !dbg !1734
  br i1 %94, label %102, label %95, !dbg !1735

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -2, i32 1, !dbg !1736
  %97 = load i32, i32* %96, align 8, !dbg !1736, !tbaa !1542
  %98 = add nsw i32 %97, 2, !dbg !1736
  %99 = sdiv i32 40000, %98, !dbg !1736
  %100 = add nsw i32 %99, 4900, !dbg !1737
  %101 = sext i32 %100 to i64, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %101, metadata !1712, metadata !DIExpression()), !dbg !1713
  br label %102, !dbg !1738

102:                                              ; preds = %95, %90, %88, %85, %81, %74
  %103 = phi i64 [ %101, %95 ], [ 4900, %90 ], [ 4900, %88 ], [ 4900, %74 ], [ 3300, %85 ], [ %84, %81 ], !dbg !1713
  call void @llvm.dbg.value(metadata i64 %103, metadata !1712, metadata !DIExpression()), !dbg !1713
  %104 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 3, !dbg !1739
  %105 = load i8, i8* %104, align 8, !dbg !1739
  %106 = and i8 %105, 1, !dbg !1739
  %107 = icmp eq i8 %106, 0, !dbg !1741
  br i1 %107, label %110, label %108, !dbg !1742

108:                                              ; preds = %102
  %109 = add nsw i64 %103, -1600, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %109, metadata !1712, metadata !DIExpression()), !dbg !1713
  br label %118, !dbg !1744

110:                                              ; preds = %102
  %111 = and i8 %105, 8, !dbg !1745
  %112 = icmp eq i8 %111, 0, !dbg !1745
  br i1 %112, label %118, label %113, !dbg !1747

113:                                              ; preds = %110
  %114 = add nsw i32 %20, 2, !dbg !1748
  %115 = sdiv i32 22500, %114, !dbg !1748
  %116 = sext i32 %115 to i64, !dbg !1748
  %117 = add nsw i64 %103, %116, !dbg !1749
  call void @llvm.dbg.value(metadata i64 %117, metadata !1712, metadata !DIExpression()), !dbg !1713
  br label %118, !dbg !1750

118:                                              ; preds = %108, %110, %113
  %119 = phi i64 [ %109, %108 ], [ %117, %113 ], [ %103, %110 ], !dbg !1713
  call void @llvm.dbg.value(metadata i64 %119, metadata !1712, metadata !DIExpression()), !dbg !1713
  %120 = add nsw i64 %119, %65, !dbg !1751
  %121 = getelementptr inbounds %struct.Word, %struct.Word* %16, i64 -1, i32 5, !dbg !1752
  store i64 %120, i64* %121, align 8, !dbg !1753, !tbaa !1638
  call void @llvm.dbg.value(metadata %struct.Word* %15, metadata !1629, metadata !DIExpression(DW_OP_constu, 40, DW_OP_minus, DW_OP_stack_value)), !dbg !1640
  %122 = getelementptr inbounds %struct.Word, %struct.Word* %15, i64 -1, !dbg !1643
  call void @llvm.dbg.value(metadata %struct.Word* %122, metadata !1629, metadata !DIExpression()), !dbg !1640
  %123 = icmp ult %struct.Word* %122, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1645
  br i1 %123, label %124, label %14, !dbg !1647, !llvm.loop !1754

124:                                              ; preds = %118, %0
  store i32 %4, i32* %3, align 8, !dbg !1756, !tbaa !1542
  ret void, !dbg !1757
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @put_line(%struct.Word* readonly %0, i32 %1) unnamed_addr #8 !dbg !1758 {
  call void @llvm.dbg.value(metadata %struct.Word* %0, metadata !1762, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i32 %1, metadata !1763, metadata !DIExpression()), !dbg !1765
  store i32 0, i32* @out_column, align 4, !dbg !1766, !tbaa !864
  %3 = load i32, i32* @prefix_indent, align 4, !dbg !1767, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %3, metadata !1079, metadata !DIExpression()) #25, !dbg !1768
  call void @llvm.dbg.value(metadata i32 %3, metadata !1082, metadata !DIExpression()) #25, !dbg !1768
  %4 = load i1, i1* @tabs, align 1, !dbg !1770
  br i1 %4, label %5, label %28, !dbg !1771

5:                                                ; preds = %2
  %6 = sdiv i32 %3, 8, !dbg !1772
  %7 = shl nsw i32 %6, 3, !dbg !1773
  call void @llvm.dbg.value(metadata i32 %7, metadata !1083, metadata !DIExpression()) #25, !dbg !1768
  %8 = icmp sgt i32 %3, 7, !dbg !1774
  br i1 %8, label %9, label %28, !dbg !1775

9:                                                ; preds = %5, %22
  %10 = phi i32 [ %26, %22 ], [ 0, %5 ]
  call void @llvm.dbg.value(metadata i32 9, metadata !1096, metadata !DIExpression()) #25, !dbg !1776
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1778, !tbaa !694
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %11, i64 0, i32 5, !dbg !1778
  %13 = load i8*, i8** %12, align 8, !dbg !1778, !tbaa !1106
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %11, i64 0, i32 6, !dbg !1778
  %15 = load i8*, i8** %14, align 8, !dbg !1778, !tbaa !1110
  %16 = icmp ult i8* %13, %15, !dbg !1778
  br i1 %16, label %20, label %17, !dbg !1778, !prof !1111

17:                                               ; preds = %9
  %18 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %11, i32 9) #25, !dbg !1778
  %19 = load i32, i32* @out_column, align 4, !dbg !1779, !tbaa !864
  br label %22, !dbg !1778

20:                                               ; preds = %9
  %21 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !1778
  store i8* %21, i8** %12, align 8, !dbg !1778, !tbaa !1106
  store i8 9, i8* %13, align 1, !dbg !1778, !tbaa !874
  br label %22, !dbg !1778

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %19, %17 ], [ %10, %20 ], !dbg !1779
  %24 = sdiv i32 %23, 8, !dbg !1780
  %25 = shl nsw i32 %24, 3, !dbg !1781
  %26 = add i32 %25, 8, !dbg !1781
  store i32 %26, i32* @out_column, align 4, !dbg !1782, !tbaa !864
  %27 = icmp slt i32 %26, %7, !dbg !1783
  br i1 %27, label %9, label %28, !dbg !1784, !llvm.loop !1785

28:                                               ; preds = %22, %5, %2
  %29 = phi i32 [ 0, %5 ], [ 0, %2 ], [ %26, %22 ], !dbg !1787
  %30 = icmp slt i32 %29, %3, !dbg !1788
  br i1 %30, label %31, label %48, !dbg !1789

31:                                               ; preds = %28, %44
  %32 = phi i32 [ %46, %44 ], [ %29, %28 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1096, metadata !DIExpression()) #25, !dbg !1790
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1792, !tbaa !694
  %34 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %33, i64 0, i32 5, !dbg !1792
  %35 = load i8*, i8** %34, align 8, !dbg !1792, !tbaa !1106
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %33, i64 0, i32 6, !dbg !1792
  %37 = load i8*, i8** %36, align 8, !dbg !1792, !tbaa !1110
  %38 = icmp ult i8* %35, %37, !dbg !1792
  br i1 %38, label %42, label %39, !dbg !1792, !prof !1111

39:                                               ; preds = %31
  %40 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %33, i32 32) #25, !dbg !1792
  %41 = load i32, i32* @out_column, align 4, !dbg !1793, !tbaa !864
  br label %44, !dbg !1792

42:                                               ; preds = %31
  %43 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1792
  store i8* %43, i8** %34, align 8, !dbg !1792, !tbaa !1106
  store i8 32, i8* %35, align 1, !dbg !1792, !tbaa !874
  br label %44, !dbg !1792

44:                                               ; preds = %39, %42
  %45 = phi i32 [ %41, %39 ], [ %32, %42 ], !dbg !1793
  %46 = add nsw i32 %45, 1, !dbg !1793
  store i32 %46, i32* @out_column, align 4, !dbg !1793, !tbaa !864
  %47 = icmp slt i32 %46, %3, !dbg !1788
  br i1 %47, label %31, label %48, !dbg !1789, !llvm.loop !1794

48:                                               ; preds = %44, %28
  %49 = load i8*, i8** @prefix, align 8, !dbg !1796, !tbaa !694
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1796, !tbaa !694
  %51 = tail call i32 @fputs_unlocked(i8* %49, %struct._IO_FILE* %50), !dbg !1796
  %52 = load i32, i32* @prefix_length, align 4, !dbg !1797, !tbaa !864
  %53 = load i32, i32* @out_column, align 4, !dbg !1798, !tbaa !864
  %54 = add nsw i32 %53, %52, !dbg !1798
  store i32 %54, i32* @out_column, align 4, !dbg !1798, !tbaa !864
  call void @llvm.dbg.value(metadata i32 undef, metadata !1079, metadata !DIExpression()) #25, !dbg !1799
  call void @llvm.dbg.value(metadata i32 %1, metadata !1082, metadata !DIExpression()) #25, !dbg !1799
  %55 = load i1, i1* @tabs, align 1, !dbg !1801
  br i1 %55, label %56, label %82, !dbg !1802

56:                                               ; preds = %48
  %57 = sdiv i32 %1, 8, !dbg !1803
  %58 = shl nsw i32 %57, 3, !dbg !1804
  call void @llvm.dbg.value(metadata i32 %58, metadata !1083, metadata !DIExpression()) #25, !dbg !1799
  %59 = add nsw i32 %54, 1, !dbg !1805
  %60 = icmp slt i32 %59, %58, !dbg !1806
  %61 = icmp slt i32 %54, %58
  %62 = and i1 %61, %60, !dbg !1807
  br i1 %62, label %63, label %82, !dbg !1807

63:                                               ; preds = %56, %76
  %64 = phi i32 [ %80, %76 ], [ %54, %56 ]
  call void @llvm.dbg.value(metadata i32 9, metadata !1096, metadata !DIExpression()) #25, !dbg !1808
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1810, !tbaa !694
  %66 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %65, i64 0, i32 5, !dbg !1810
  %67 = load i8*, i8** %66, align 8, !dbg !1810, !tbaa !1106
  %68 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %65, i64 0, i32 6, !dbg !1810
  %69 = load i8*, i8** %68, align 8, !dbg !1810, !tbaa !1110
  %70 = icmp ult i8* %67, %69, !dbg !1810
  br i1 %70, label %74, label %71, !dbg !1810, !prof !1111

71:                                               ; preds = %63
  %72 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %65, i32 9) #25, !dbg !1810
  %73 = load i32, i32* @out_column, align 4, !dbg !1811, !tbaa !864
  br label %76, !dbg !1810

74:                                               ; preds = %63
  %75 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !1810
  store i8* %75, i8** %66, align 8, !dbg !1810, !tbaa !1106
  store i8 9, i8* %67, align 1, !dbg !1810, !tbaa !874
  br label %76, !dbg !1810

76:                                               ; preds = %74, %71
  %77 = phi i32 [ %73, %71 ], [ %64, %74 ], !dbg !1811
  %78 = sdiv i32 %77, 8, !dbg !1812
  %79 = shl nsw i32 %78, 3, !dbg !1813
  %80 = add i32 %79, 8, !dbg !1813
  store i32 %80, i32* @out_column, align 4, !dbg !1814, !tbaa !864
  %81 = icmp slt i32 %80, %58, !dbg !1815
  br i1 %81, label %63, label %82, !dbg !1816, !llvm.loop !1817

82:                                               ; preds = %76, %56, %48
  %83 = phi i32 [ %54, %56 ], [ %54, %48 ], [ %80, %76 ], !dbg !1819
  %84 = icmp slt i32 %83, %1, !dbg !1820
  br i1 %84, label %85, label %102, !dbg !1821

85:                                               ; preds = %82, %98
  %86 = phi i32 [ %100, %98 ], [ %83, %82 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1096, metadata !DIExpression()) #25, !dbg !1822
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1824, !tbaa !694
  %88 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %87, i64 0, i32 5, !dbg !1824
  %89 = load i8*, i8** %88, align 8, !dbg !1824, !tbaa !1106
  %90 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %87, i64 0, i32 6, !dbg !1824
  %91 = load i8*, i8** %90, align 8, !dbg !1824, !tbaa !1110
  %92 = icmp ult i8* %89, %91, !dbg !1824
  br i1 %92, label %96, label %93, !dbg !1824, !prof !1111

93:                                               ; preds = %85
  %94 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %87, i32 32) #25, !dbg !1824
  %95 = load i32, i32* @out_column, align 4, !dbg !1825, !tbaa !864
  br label %98, !dbg !1824

96:                                               ; preds = %85
  %97 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !1824
  store i8* %97, i8** %88, align 8, !dbg !1824, !tbaa !1106
  store i8 32, i8* %89, align 1, !dbg !1824, !tbaa !874
  br label %98, !dbg !1824

98:                                               ; preds = %93, %96
  %99 = phi i32 [ %95, %93 ], [ %86, %96 ], !dbg !1825
  %100 = add nsw i32 %99, 1, !dbg !1825
  store i32 %100, i32* @out_column, align 4, !dbg !1825, !tbaa !864
  %101 = icmp slt i32 %100, %1, !dbg !1820
  br i1 %101, label %85, label %102, !dbg !1821, !llvm.loop !1826

102:                                              ; preds = %98, %82
  %103 = phi i32 [ %83, %82 ], [ %100, %98 ]
  %104 = getelementptr inbounds %struct.Word, %struct.Word* %0, i64 0, i32 6, !dbg !1828
  %105 = load %struct.Word*, %struct.Word** %104, align 8, !dbg !1828, !tbaa !1370
  %106 = getelementptr inbounds %struct.Word, %struct.Word* %105, i64 -1, !dbg !1829
  call void @llvm.dbg.value(metadata %struct.Word* %106, metadata !1764, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata %struct.Word* %0, metadata !1762, metadata !DIExpression()), !dbg !1765
  %107 = icmp eq %struct.Word* %106, %0, !dbg !1830
  br i1 %107, label %197, label %108, !dbg !1833

108:                                              ; preds = %102, %193
  %109 = phi i32 [ %194, %193 ], [ %103, %102 ]
  %110 = phi %struct.Word* [ %195, %193 ], [ %0, %102 ]
  call void @llvm.dbg.value(metadata %struct.Word* %110, metadata !1762, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata %struct.Word* %110, metadata !1834, metadata !DIExpression()) #25, !dbg !1839
  call void @llvm.dbg.value(metadata i8* undef, metadata !1837, metadata !DIExpression()) #25, !dbg !1839
  %111 = getelementptr inbounds %struct.Word, %struct.Word* %110, i64 0, i32 1, !dbg !1842
  %112 = load i32, i32* %111, align 8, !dbg !1842, !tbaa !1542
  call void @llvm.dbg.value(metadata i32 %112, metadata !1838, metadata !DIExpression()) #25, !dbg !1839
  %113 = icmp eq i32 %112, 0, !dbg !1844
  br i1 %113, label %139, label %114, !dbg !1846

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.Word, %struct.Word* %110, i64 0, i32 0, !dbg !1847
  %116 = load i8*, i8** %115, align 8, !dbg !1847, !tbaa !1480
  call void @llvm.dbg.value(metadata i8* %116, metadata !1837, metadata !DIExpression()) #25, !dbg !1839
  br label %117, !dbg !1846

117:                                              ; preds = %133, %114
  %118 = phi i32 [ %134, %133 ], [ %112, %114 ]
  %119 = phi i8* [ %120, %133 ], [ %116, %114 ]
  call void @llvm.dbg.value(metadata i32 %118, metadata !1838, metadata !DIExpression()) #25, !dbg !1839
  call void @llvm.dbg.value(metadata i8* %119, metadata !1837, metadata !DIExpression()) #25, !dbg !1839
  %120 = getelementptr inbounds i8, i8* %119, i64 1, !dbg !1848
  call void @llvm.dbg.value(metadata i8* %120, metadata !1837, metadata !DIExpression()) #25, !dbg !1839
  %121 = load i8, i8* %119, align 1, !dbg !1848, !tbaa !874
  call void @llvm.dbg.value(metadata i8 %121, metadata !1096, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #25, !dbg !1849
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1851, !tbaa !694
  %123 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %122, i64 0, i32 5, !dbg !1851
  %124 = load i8*, i8** %123, align 8, !dbg !1851, !tbaa !1106
  %125 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %122, i64 0, i32 6, !dbg !1851
  %126 = load i8*, i8** %125, align 8, !dbg !1851, !tbaa !1110
  %127 = icmp ult i8* %124, %126, !dbg !1851
  br i1 %127, label %131, label %128, !dbg !1851, !prof !1111

128:                                              ; preds = %117
  %129 = zext i8 %121 to i32, !dbg !1848
  call void @llvm.dbg.value(metadata i8 %121, metadata !1096, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #25, !dbg !1849
  %130 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %122, i32 %129) #25, !dbg !1851
  br label %133, !dbg !1851

131:                                              ; preds = %117
  %132 = getelementptr inbounds i8, i8* %124, i64 1, !dbg !1851
  store i8* %132, i8** %123, align 8, !dbg !1851, !tbaa !1106
  store i8 %121, i8* %124, align 1, !dbg !1851, !tbaa !874
  br label %133, !dbg !1851

133:                                              ; preds = %131, %128
  %134 = add nsw i32 %118, -1, !dbg !1852
  call void @llvm.dbg.value(metadata i32 %134, metadata !1838, metadata !DIExpression()) #25, !dbg !1839
  call void @llvm.dbg.value(metadata i8* %120, metadata !1837, metadata !DIExpression()) #25, !dbg !1839
  %135 = icmp eq i32 %134, 0, !dbg !1844
  br i1 %135, label %136, label %117, !dbg !1846, !llvm.loop !1853

136:                                              ; preds = %133
  %137 = load i32, i32* %111, align 8, !dbg !1855, !tbaa !1542
  %138 = load i32, i32* @out_column, align 4, !dbg !1856, !tbaa !864
  br label %139, !dbg !1855

139:                                              ; preds = %108, %136
  %140 = phi i32 [ %138, %136 ], [ %109, %108 ], !dbg !1856
  %141 = phi i32 [ %137, %136 ], [ 0, %108 ], !dbg !1855
  %142 = add nsw i32 %140, %141, !dbg !1856
  store i32 %142, i32* @out_column, align 4, !dbg !1856, !tbaa !864
  %143 = getelementptr inbounds %struct.Word, %struct.Word* %110, i64 0, i32 2, !dbg !1857
  %144 = load i32, i32* %143, align 4, !dbg !1857, !tbaa !1580
  call void @llvm.dbg.value(metadata i32 %144, metadata !1079, metadata !DIExpression()) #25, !dbg !1858
  %145 = add nsw i32 %144, %142, !dbg !1860
  call void @llvm.dbg.value(metadata i32 %145, metadata !1082, metadata !DIExpression()) #25, !dbg !1858
  %146 = load i1, i1* @tabs, align 1, !dbg !1861
  br i1 %146, label %147, label %173, !dbg !1862

147:                                              ; preds = %139
  %148 = sdiv i32 %145, 8, !dbg !1863
  %149 = shl nsw i32 %148, 3, !dbg !1864
  call void @llvm.dbg.value(metadata i32 %149, metadata !1083, metadata !DIExpression()) #25, !dbg !1858
  %150 = add nsw i32 %142, 1, !dbg !1865
  %151 = icmp slt i32 %150, %149, !dbg !1866
  %152 = icmp slt i32 %142, %149
  %153 = and i1 %151, %152, !dbg !1867
  br i1 %153, label %154, label %173, !dbg !1867

154:                                              ; preds = %147, %167
  %155 = phi i32 [ %171, %167 ], [ %142, %147 ]
  call void @llvm.dbg.value(metadata i32 9, metadata !1096, metadata !DIExpression()) #25, !dbg !1868
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1870, !tbaa !694
  %157 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %156, i64 0, i32 5, !dbg !1870
  %158 = load i8*, i8** %157, align 8, !dbg !1870, !tbaa !1106
  %159 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %156, i64 0, i32 6, !dbg !1870
  %160 = load i8*, i8** %159, align 8, !dbg !1870, !tbaa !1110
  %161 = icmp ult i8* %158, %160, !dbg !1870
  br i1 %161, label %165, label %162, !dbg !1870, !prof !1111

162:                                              ; preds = %154
  %163 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %156, i32 9) #25, !dbg !1870
  %164 = load i32, i32* @out_column, align 4, !dbg !1871, !tbaa !864
  br label %167, !dbg !1870

165:                                              ; preds = %154
  %166 = getelementptr inbounds i8, i8* %158, i64 1, !dbg !1870
  store i8* %166, i8** %157, align 8, !dbg !1870, !tbaa !1106
  store i8 9, i8* %158, align 1, !dbg !1870, !tbaa !874
  br label %167, !dbg !1870

167:                                              ; preds = %165, %162
  %168 = phi i32 [ %164, %162 ], [ %155, %165 ], !dbg !1871
  %169 = sdiv i32 %168, 8, !dbg !1872
  %170 = shl nsw i32 %169, 3, !dbg !1873
  %171 = add i32 %170, 8, !dbg !1873
  store i32 %171, i32* @out_column, align 4, !dbg !1874, !tbaa !864
  %172 = icmp slt i32 %171, %149, !dbg !1875
  br i1 %172, label %154, label %173, !dbg !1876, !llvm.loop !1877

173:                                              ; preds = %167, %147, %139
  %174 = phi i32 [ %142, %147 ], [ %142, %139 ], [ %171, %167 ], !dbg !1879
  %175 = icmp slt i32 %174, %145, !dbg !1880
  br i1 %175, label %176, label %193, !dbg !1881

176:                                              ; preds = %173, %189
  %177 = phi i32 [ %191, %189 ], [ %174, %173 ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1096, metadata !DIExpression()) #25, !dbg !1882
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1884, !tbaa !694
  %179 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %178, i64 0, i32 5, !dbg !1884
  %180 = load i8*, i8** %179, align 8, !dbg !1884, !tbaa !1106
  %181 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %178, i64 0, i32 6, !dbg !1884
  %182 = load i8*, i8** %181, align 8, !dbg !1884, !tbaa !1110
  %183 = icmp ult i8* %180, %182, !dbg !1884
  br i1 %183, label %187, label %184, !dbg !1884, !prof !1111

184:                                              ; preds = %176
  %185 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %178, i32 32) #25, !dbg !1884
  %186 = load i32, i32* @out_column, align 4, !dbg !1885, !tbaa !864
  br label %189, !dbg !1884

187:                                              ; preds = %176
  %188 = getelementptr inbounds i8, i8* %180, i64 1, !dbg !1884
  store i8* %188, i8** %179, align 8, !dbg !1884, !tbaa !1106
  store i8 32, i8* %180, align 1, !dbg !1884, !tbaa !874
  br label %189, !dbg !1884

189:                                              ; preds = %184, %187
  %190 = phi i32 [ %186, %184 ], [ %177, %187 ], !dbg !1885
  %191 = add nsw i32 %190, 1, !dbg !1885
  store i32 %191, i32* @out_column, align 4, !dbg !1885, !tbaa !864
  %192 = icmp slt i32 %191, %145, !dbg !1880
  br i1 %192, label %176, label %193, !dbg !1881, !llvm.loop !1886

193:                                              ; preds = %189, %173
  %194 = phi i32 [ %174, %173 ], [ %191, %189 ]
  %195 = getelementptr inbounds %struct.Word, %struct.Word* %110, i64 1, !dbg !1888
  call void @llvm.dbg.value(metadata %struct.Word* %195, metadata !1762, metadata !DIExpression()), !dbg !1765
  %196 = icmp eq %struct.Word* %195, %106, !dbg !1830
  br i1 %196, label %197, label %108, !dbg !1833, !llvm.loop !1889

197:                                              ; preds = %193, %102
  %198 = phi i32 [ %103, %102 ], [ %194, %193 ]
  %199 = phi %struct.Word* [ %0, %102 ], [ %106, %193 ]
  call void @llvm.dbg.value(metadata %struct.Word* %199, metadata !1834, metadata !DIExpression()) #25, !dbg !1891
  call void @llvm.dbg.value(metadata i8* undef, metadata !1837, metadata !DIExpression()) #25, !dbg !1891
  %200 = getelementptr inbounds %struct.Word, %struct.Word* %199, i64 0, i32 1, !dbg !1893
  %201 = load i32, i32* %200, align 8, !dbg !1893, !tbaa !1542
  call void @llvm.dbg.value(metadata i32 %201, metadata !1838, metadata !DIExpression()) #25, !dbg !1891
  %202 = icmp eq i32 %201, 0, !dbg !1894
  br i1 %202, label %228, label %203, !dbg !1895

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.Word, %struct.Word* %199, i64 0, i32 0, !dbg !1896
  %205 = load i8*, i8** %204, align 8, !dbg !1896, !tbaa !1480
  call void @llvm.dbg.value(metadata i8* %205, metadata !1837, metadata !DIExpression()) #25, !dbg !1891
  br label %206, !dbg !1895

206:                                              ; preds = %222, %203
  %207 = phi i32 [ %223, %222 ], [ %201, %203 ]
  %208 = phi i8* [ %209, %222 ], [ %205, %203 ]
  call void @llvm.dbg.value(metadata i32 %207, metadata !1838, metadata !DIExpression()) #25, !dbg !1891
  call void @llvm.dbg.value(metadata i8* %208, metadata !1837, metadata !DIExpression()) #25, !dbg !1891
  %209 = getelementptr inbounds i8, i8* %208, i64 1, !dbg !1897
  call void @llvm.dbg.value(metadata i8* %209, metadata !1837, metadata !DIExpression()) #25, !dbg !1891
  %210 = load i8, i8* %208, align 1, !dbg !1897, !tbaa !874
  call void @llvm.dbg.value(metadata i8 %210, metadata !1096, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #25, !dbg !1898
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1900, !tbaa !694
  %212 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %211, i64 0, i32 5, !dbg !1900
  %213 = load i8*, i8** %212, align 8, !dbg !1900, !tbaa !1106
  %214 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %211, i64 0, i32 6, !dbg !1900
  %215 = load i8*, i8** %214, align 8, !dbg !1900, !tbaa !1110
  %216 = icmp ult i8* %213, %215, !dbg !1900
  br i1 %216, label %220, label %217, !dbg !1900, !prof !1111

217:                                              ; preds = %206
  %218 = zext i8 %210 to i32, !dbg !1897
  call void @llvm.dbg.value(metadata i8 %210, metadata !1096, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #25, !dbg !1898
  %219 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %211, i32 %218) #25, !dbg !1900
  br label %222, !dbg !1900

220:                                              ; preds = %206
  %221 = getelementptr inbounds i8, i8* %213, i64 1, !dbg !1900
  store i8* %221, i8** %212, align 8, !dbg !1900, !tbaa !1106
  store i8 %210, i8* %213, align 1, !dbg !1900, !tbaa !874
  br label %222, !dbg !1900

222:                                              ; preds = %220, %217
  %223 = add nsw i32 %207, -1, !dbg !1901
  call void @llvm.dbg.value(metadata i32 %223, metadata !1838, metadata !DIExpression()) #25, !dbg !1891
  call void @llvm.dbg.value(metadata i8* %209, metadata !1837, metadata !DIExpression()) #25, !dbg !1891
  %224 = icmp eq i32 %223, 0, !dbg !1894
  br i1 %224, label %225, label %206, !dbg !1895, !llvm.loop !1902

225:                                              ; preds = %222
  %226 = load i32, i32* %200, align 8, !dbg !1904, !tbaa !1542
  %227 = load i32, i32* @out_column, align 4, !dbg !1905, !tbaa !864
  br label %228, !dbg !1904

228:                                              ; preds = %197, %225
  %229 = phi i32 [ %227, %225 ], [ %198, %197 ], !dbg !1905
  %230 = phi i32 [ %226, %225 ], [ 0, %197 ], !dbg !1904
  %231 = add nsw i32 %229, %230, !dbg !1905
  store i32 %231, i32* @out_column, align 4, !dbg !1905, !tbaa !864
  store i32 %231, i32* @last_line_length, align 4, !dbg !1906, !tbaa !864
  call void @llvm.dbg.value(metadata i32 10, metadata !1096, metadata !DIExpression()) #25, !dbg !1907
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1909, !tbaa !694
  %233 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %232, i64 0, i32 5, !dbg !1909
  %234 = load i8*, i8** %233, align 8, !dbg !1909, !tbaa !1106
  %235 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %232, i64 0, i32 6, !dbg !1909
  %236 = load i8*, i8** %235, align 8, !dbg !1909, !tbaa !1110
  %237 = icmp ult i8* %234, %236, !dbg !1909
  br i1 %237, label %240, label %238, !dbg !1909, !prof !1111

238:                                              ; preds = %228
  %239 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %232, i32 10) #25, !dbg !1909
  br label %242, !dbg !1909

240:                                              ; preds = %228
  %241 = getelementptr inbounds i8, i8* %234, i64 1, !dbg !1909
  store i8* %241, i8** %233, align 8, !dbg !1909, !tbaa !1106
  store i8 10, i8* %234, align 1, !dbg !1909, !tbaa !874
  br label %242, !dbg !1909

242:                                              ; preds = %238, %240
  ret void, !dbg !1910
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @flush_paragraph() unnamed_addr #8 !dbg !1911 {
  %1 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1923, !tbaa !694
  %2 = icmp eq %struct.Word* %1, getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), !dbg !1924
  br i1 %2, label %3, label %9, !dbg !1925

3:                                                ; preds = %0
  %4 = load i8*, i8** @wptr, align 8, !dbg !1926, !tbaa !694
  %5 = ptrtoint i8* %4 to i64, !dbg !1926
  %6 = sub i64 %5, ptrtoint ([5000 x i8]* @parabuf to i64), !dbg !1926
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1926, !tbaa !694
  %8 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i64 1, i64 %6, %struct._IO_FILE* %7), !dbg !1926
  store i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i8** @wptr, align 8, !dbg !1927, !tbaa !694
  br label %81, !dbg !1928

9:                                                ; preds = %0
  tail call fastcc void @fmt_paragraph(), !dbg !1929
  call void @llvm.dbg.value(metadata %struct.Word* %1, metadata !1913, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !1916, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata %struct.Word* undef, metadata !1914, metadata !DIExpression()), !dbg !1930
  %10 = load %struct.Word*, %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), align 16, !dbg !1931, !tbaa !1370
  call void @llvm.dbg.value(metadata %struct.Word* %10, metadata !1914, metadata !DIExpression()), !dbg !1930
  %11 = icmp eq %struct.Word* %10, %1, !dbg !1933
  br i1 %11, label %32, label %12, !dbg !1935

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.Word, %struct.Word* %10, i64 0, i32 5
  %14 = load i64, i64* %13, align 8, !dbg !1936, !tbaa !1638
  br label %15, !dbg !1935

15:                                               ; preds = %12, %15
  %16 = phi i64 [ %23, %15 ], [ %14, %12 ], !dbg !1936
  %17 = phi %struct.Word* [ %21, %15 ], [ %10, %12 ]
  %18 = phi %struct.Word* [ %27, %15 ], [ %1, %12 ]
  %19 = phi i64 [ %30, %15 ], [ 9223372036854775807, %12 ]
  call void @llvm.dbg.value(metadata %struct.Word* %18, metadata !1913, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 %19, metadata !1916, metadata !DIExpression()), !dbg !1930
  %20 = getelementptr inbounds %struct.Word, %struct.Word* %17, i64 0, i32 6, !dbg !1939
  %21 = load %struct.Word*, %struct.Word** %20, align 8, !dbg !1939, !tbaa !1370
  %22 = getelementptr inbounds %struct.Word, %struct.Word* %21, i64 0, i32 5, !dbg !1940
  %23 = load i64, i64* %22, align 8, !dbg !1940, !tbaa !1638
  %24 = sub nsw i64 %16, %23, !dbg !1941
  %25 = icmp slt i64 %24, %19, !dbg !1942
  %26 = select i1 %25, i64 %24, i64 %19, !dbg !1943
  %27 = select i1 %25, %struct.Word* %17, %struct.Word* %18, !dbg !1943
  call void @llvm.dbg.value(metadata %struct.Word* %27, metadata !1913, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 %26, metadata !1916, metadata !DIExpression()), !dbg !1930
  %28 = icmp slt i64 %26, 9223372036854775799, !dbg !1944
  %29 = add nsw i64 %26, 9, !dbg !1946
  %30 = select i1 %28, i64 %29, i64 %26, !dbg !1946
  call void @llvm.dbg.value(metadata i64 %30, metadata !1916, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata %struct.Word* %21, metadata !1914, metadata !DIExpression()), !dbg !1930
  %31 = icmp eq %struct.Word* %21, %1, !dbg !1933
  br i1 %31, label %32, label %15, !dbg !1935, !llvm.loop !1947

32:                                               ; preds = %15, %9
  %33 = phi %struct.Word* [ %1, %9 ], [ %27, %15 ], !dbg !1930
  call void @llvm.dbg.value(metadata %struct.Word* %33, metadata !1358, metadata !DIExpression()) #25, !dbg !1949
  %34 = load i32, i32* @first_indent, align 4, !dbg !1951, !tbaa !864
  tail call fastcc void @put_line(%struct.Word* getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0), i32 %34) #25, !dbg !1952
  call void @llvm.dbg.value(metadata %struct.Word* undef, metadata !1363, metadata !DIExpression()) #25, !dbg !1949
  %35 = load %struct.Word*, %struct.Word** getelementptr inbounds ([1000 x %struct.Word], [1000 x %struct.Word]* @unused_word_type, i64 0, i64 0, i32 6), align 16, !dbg !1953, !tbaa !1370
  call void @llvm.dbg.value(metadata %struct.Word* %35, metadata !1363, metadata !DIExpression()) #25, !dbg !1949
  %36 = icmp eq %struct.Word* %35, %33, !dbg !1954
  br i1 %36, label %43, label %37, !dbg !1955

37:                                               ; preds = %32, %37
  %38 = phi %struct.Word* [ %41, %37 ], [ %35, %32 ]
  %39 = load i32, i32* @other_indent, align 4, !dbg !1956, !tbaa !864
  tail call fastcc void @put_line(%struct.Word* %38, i32 %39) #25, !dbg !1957
  %40 = getelementptr inbounds %struct.Word, %struct.Word* %38, i64 0, i32 6, !dbg !1958
  call void @llvm.dbg.value(metadata %struct.Word* undef, metadata !1363, metadata !DIExpression()) #25, !dbg !1949
  %41 = load %struct.Word*, %struct.Word** %40, align 8, !dbg !1953, !tbaa !1370
  call void @llvm.dbg.value(metadata %struct.Word* %41, metadata !1363, metadata !DIExpression()) #25, !dbg !1949
  %42 = icmp eq %struct.Word* %41, %33, !dbg !1954
  br i1 %42, label %43, label %37, !dbg !1955, !llvm.loop !1959

43:                                               ; preds = %37, %32
  %44 = getelementptr inbounds %struct.Word, %struct.Word* %33, i64 0, i32 0, !dbg !1961
  %45 = load i8*, i8** %44, align 8, !dbg !1961, !tbaa !1480
  %46 = load i8*, i8** @wptr, align 8, !dbg !1962, !tbaa !694
  %47 = ptrtoint i8* %46 to i64, !dbg !1963
  %48 = ptrtoint i8* %45 to i64, !dbg !1963
  %49 = sub i64 %47, %48, !dbg !1963
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), metadata !1964, metadata !DIExpression()) #25, !dbg !1974
  call void @llvm.dbg.value(metadata i8* %45, metadata !1972, metadata !DIExpression()) #25, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %49, metadata !1973, metadata !DIExpression()) #25, !dbg !1974
  %50 = tail call i8* @__memmove_chk(i8* nonnull getelementptr inbounds ([5000 x i8], [5000 x i8]* @parabuf, i64 0, i64 0), i8* nonnull %45, i64 %49, i64 5000) #25, !dbg !1976
  %51 = load i8*, i8** %44, align 8, !dbg !1977, !tbaa !1480
  %52 = ptrtoint i8* %51 to i64, !dbg !1978
  %53 = sub i64 %52, sext (i32 ptrtoint ([5000 x i8]* @parabuf to i32) to i64), !dbg !1979
  call void @llvm.dbg.value(metadata i32 undef, metadata !1915, metadata !DIExpression()), !dbg !1930
  %54 = load i8*, i8** @wptr, align 8, !dbg !1980, !tbaa !694
  %55 = shl i64 %53, 32, !dbg !1980
  %56 = ashr exact i64 %55, 32, !dbg !1980
  %57 = sub nsw i64 0, %56, !dbg !1980
  %58 = getelementptr inbounds i8, i8* %54, i64 %57, !dbg !1980
  store i8* %58, i8** @wptr, align 8, !dbg !1980, !tbaa !694
  call void @llvm.dbg.value(metadata %struct.Word* %33, metadata !1914, metadata !DIExpression()), !dbg !1930
  %59 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1981, !tbaa !694
  %60 = icmp ugt %struct.Word* %33, %59, !dbg !1984
  br i1 %60, label %69, label %61, !dbg !1985

61:                                               ; preds = %43, %61
  %62 = phi %struct.Word* [ %66, %61 ], [ %33, %43 ]
  call void @llvm.dbg.value(metadata %struct.Word* %62, metadata !1914, metadata !DIExpression()), !dbg !1930
  %63 = getelementptr inbounds %struct.Word, %struct.Word* %62, i64 0, i32 0, !dbg !1986
  %64 = load i8*, i8** %63, align 8, !dbg !1987, !tbaa !1480
  %65 = getelementptr inbounds i8, i8* %64, i64 %57, !dbg !1987
  store i8* %65, i8** %63, align 8, !dbg !1987, !tbaa !1480
  %66 = getelementptr inbounds %struct.Word, %struct.Word* %62, i64 1, !dbg !1988
  call void @llvm.dbg.value(metadata %struct.Word* %66, metadata !1914, metadata !DIExpression()), !dbg !1930
  %67 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1981, !tbaa !694
  %68 = icmp ugt %struct.Word* %66, %67, !dbg !1984
  br i1 %68, label %69, label %61, !dbg !1985, !llvm.loop !1989

69:                                               ; preds = %61, %43
  %70 = phi %struct.Word* [ %59, %43 ], [ %67, %61 ], !dbg !1981
  %71 = bitcast %struct.Word* %33 to i8*, !dbg !1991
  %72 = ptrtoint %struct.Word* %70 to i64, !dbg !1992
  %73 = ptrtoint %struct.Word* %33 to i64, !dbg !1992
  %74 = sub i64 40, %73, !dbg !1992
  %75 = add i64 %74, %72, !dbg !1993
  call void @llvm.dbg.value(metadata i8* bitcast ([1000 x %struct.Word]* @unused_word_type to i8*), metadata !1964, metadata !DIExpression()) #25, !dbg !1994
  call void @llvm.dbg.value(metadata i8* %71, metadata !1972, metadata !DIExpression()) #25, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %75, metadata !1973, metadata !DIExpression()) #25, !dbg !1994
  %76 = tail call i8* @__memmove_chk(i8* nonnull bitcast ([1000 x %struct.Word]* @unused_word_type to i8*), i8* nonnull %71, i64 %75, i64 40000) #25, !dbg !1996
  %77 = sub i64 %73, ptrtoint ([1000 x %struct.Word]* @unused_word_type to i64), !dbg !1997
  %78 = sdiv exact i64 %77, -40, !dbg !1997
  %79 = load %struct.Word*, %struct.Word** @word_limit, align 8, !dbg !1998, !tbaa !694
  %80 = getelementptr inbounds %struct.Word, %struct.Word* %79, i64 %78, !dbg !1998
  store %struct.Word* %80, %struct.Word** @word_limit, align 8, !dbg !1998, !tbaa !694
  br label %81, !dbg !1999

81:                                               ; preds = %69, %3
  ret void, !dbg !1999
}

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare !dbg !2000 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i8* @__memmove_chk(i8*, i8*, i64, i64) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #12 !dbg !2003 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2005, metadata !DIExpression()), !dbg !2006
  store i8* %0, i8** @file_name, align 8, !dbg !2007, !tbaa !694
  ret void, !dbg !2008
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #12 !dbg !2009 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2011, metadata !DIExpression()), !dbg !2012
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2013, !tbaa !2014
  ret void, !dbg !2016
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !2017 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2022, !tbaa !694
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #25, !dbg !2023
  %3 = icmp eq i32 %2, 0, !dbg !2024
  br i1 %3, label %22, label %4, !dbg !2025

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2026, !tbaa !2014, !range !2027
  %6 = icmp eq i8 %5, 0, !dbg !2026
  br i1 %6, label %11, label %7, !dbg !2028

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #29, !dbg !2029
  %9 = load i32, i32* %8, align 4, !dbg !2029, !tbaa !864
  %10 = icmp eq i32 %9, 32, !dbg !2030
  br i1 %10, label %22, label %11, !dbg !2031

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i32 5) #25, !dbg !2032
  call void @llvm.dbg.value(metadata i8* %12, metadata !2019, metadata !DIExpression()), !dbg !2033
  %13 = load i8*, i8** @file_name, align 8, !dbg !2034, !tbaa !694
  %14 = icmp eq i8* %13, null, !dbg !2034
  %15 = tail call i32* @__errno_location() #29, !dbg !2036
  %16 = load i32, i32* %15, align 4, !dbg !2036, !tbaa !864
  br i1 %14, label %19, label %17, !dbg !2037

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #25, !dbg !2038
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.54, i64 0, i64 0), i8* %18, i8* %12) #25, !dbg !2039
  br label %20, !dbg !2039

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.55, i64 0, i64 0), i8* %12) #25, !dbg !2040
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2041, !tbaa !864
  tail call void @_exit(i32 %21) #27, !dbg !2042
  unreachable, !dbg !2042

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2043, !tbaa !694
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #25, !dbg !2045
  %25 = icmp eq i32 %24, 0, !dbg !2046
  br i1 %25, label %28, label %26, !dbg !2047

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2048, !tbaa !864
  tail call void @_exit(i32 %27) #27, !dbg !2049
  unreachable, !dbg !2049

28:                                               ; preds = %22
  ret void, !dbg !2050
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !2051 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2057, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %1, metadata !2058, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %2, metadata !2059, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 %3, metadata !2060, metadata !DIExpression()), !dbg !2063
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #25, !dbg !2064
  call void @llvm.dbg.value(metadata i32 %5, metadata !2061, metadata !DIExpression()), !dbg !2065
  ret void, !dbg !2066
}

; Function Attrs: nounwind
declare !dbg !2067 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !2071 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2109, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i32 %1, metadata !2110, metadata !DIExpression()), !dbg !2111
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2112
  br i1 %3, label %7, label %4, !dbg !2114

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !2115
  call void @llvm.dbg.value(metadata i32 %5, metadata !2057, metadata !DIExpression()) #25, !dbg !2116
  call void @llvm.dbg.value(metadata i64 0, metadata !2058, metadata !DIExpression()) #25, !dbg !2116
  call void @llvm.dbg.value(metadata i64 0, metadata !2059, metadata !DIExpression()) #25, !dbg !2116
  call void @llvm.dbg.value(metadata i32 %1, metadata !2060, metadata !DIExpression()) #25, !dbg !2116
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #25, !dbg !2118
  call void @llvm.dbg.value(metadata i32 %6, metadata !2061, metadata !DIExpression()) #25, !dbg !2119
  br label %7, !dbg !2120

7:                                                ; preds = %4, %2
  ret void, !dbg !2121
}

; Function Attrs: nofree nounwind
declare !dbg !2122 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2125 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2127, metadata !DIExpression()), !dbg !2130
  %2 = icmp eq i8* %0, null, !dbg !2131
  br i1 %2, label %3, label %6, !dbg !2133

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2134, !tbaa !694
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.64, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #30, !dbg !2136
  tail call void @abort() #27, !dbg !2137
  unreachable, !dbg !2137

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #26, !dbg !2138
  call void @llvm.dbg.value(metadata i8* %7, metadata !2128, metadata !DIExpression()), !dbg !2130
  %8 = icmp eq i8* %7, null, !dbg !2139
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2140
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2140
  call void @llvm.dbg.value(metadata i8* %10, metadata !2129, metadata !DIExpression()), !dbg !2130
  %11 = ptrtoint i8* %10 to i64, !dbg !2141
  %12 = ptrtoint i8* %0 to i64, !dbg !2141
  %13 = sub i64 %11, %12, !dbg !2141
  %14 = icmp sgt i64 %13, 6, !dbg !2143
  br i1 %14, label %15, label %24, !dbg !2144

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2145
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.65, i64 0, i64 0), i64 7) #26, !dbg !2146
  %18 = icmp eq i32 %17, 0, !dbg !2147
  br i1 %18, label %19, label %24, !dbg !2148

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2127, metadata !DIExpression()), !dbg !2130
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.66, i64 0, i64 0), i64 3) #26, !dbg !2149
  %21 = icmp eq i32 %20, 0, !dbg !2152
  br i1 %21, label %22, label %24, !dbg !2153

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2154
  call void @llvm.dbg.value(metadata i8* %23, metadata !2127, metadata !DIExpression()), !dbg !2130
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2156, !tbaa !694
  br label %24, !dbg !2157

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2127, metadata !DIExpression()), !dbg !2130
  store i8* %25, i8** @program_name, align 8, !dbg !2158, !tbaa !694
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2159, !tbaa !694
  ret void, !dbg !2160
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #14

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2161 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2166, metadata !DIExpression()), !dbg !2169
  %2 = tail call i32* @__errno_location() #29, !dbg !2170
  %3 = load i32, i32* %2, align 4, !dbg !2170, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %3, metadata !2167, metadata !DIExpression()), !dbg !2169
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2171
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2171
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2171
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #25, !dbg !2172
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2172
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2168, metadata !DIExpression()), !dbg !2169
  store i32 %3, i32* %2, align 4, !dbg !2173, !tbaa !864
  ret %struct.quoting_options* %8, !dbg !2174
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #15 !dbg !2175 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2181, metadata !DIExpression()), !dbg !2182
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2183
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2183
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2184
  %5 = load i32, i32* %4, align 8, !dbg !2184, !tbaa !2185
  ret i32 %5, !dbg !2187
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #12 !dbg !2188 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2192, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i32 %1, metadata !2193, metadata !DIExpression()), !dbg !2194
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2195
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2195
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2196
  store i32 %1, i32* %5, align 8, !dbg !2197, !tbaa !2185
  ret void, !dbg !2198
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #16 !dbg !2199 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2203, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 %1, metadata !2204, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i32 %2, metadata !2205, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 %1, metadata !2206, metadata !DIExpression()), !dbg !2211
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2212
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2212
  %6 = lshr i8 %1, 5, !dbg !2213
  %7 = zext i8 %6 to i64, !dbg !2213
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2214
  call void @llvm.dbg.value(metadata i32* %8, metadata !2207, metadata !DIExpression()), !dbg !2211
  %9 = and i8 %1, 31, !dbg !2215
  %10 = zext i8 %9 to i32, !dbg !2215
  call void @llvm.dbg.value(metadata i32 %10, metadata !2209, metadata !DIExpression()), !dbg !2211
  %11 = load i32, i32* %8, align 4, !dbg !2216, !tbaa !864
  %12 = lshr i32 %11, %10, !dbg !2217
  %13 = and i32 %12, 1, !dbg !2218
  call void @llvm.dbg.value(metadata i32 %13, metadata !2210, metadata !DIExpression()), !dbg !2211
  %14 = and i32 %2, 1, !dbg !2219
  %15 = xor i32 %13, %14, !dbg !2220
  %16 = shl i32 %15, %10, !dbg !2221
  %17 = xor i32 %16, %11, !dbg !2222
  store i32 %17, i32* %8, align 4, !dbg !2222, !tbaa !864
  ret i32 %13, !dbg !2223
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #16 !dbg !2224 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2228, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i32 %1, metadata !2229, metadata !DIExpression()), !dbg !2231
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2232
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2234
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2228, metadata !DIExpression()), !dbg !2231
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2235
  %6 = load i32, i32* %5, align 4, !dbg !2235, !tbaa !2236
  call void @llvm.dbg.value(metadata i32 %6, metadata !2230, metadata !DIExpression()), !dbg !2231
  store i32 %1, i32* %5, align 4, !dbg !2237, !tbaa !2236
  ret i32 %6, !dbg !2238
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2239 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2243, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8* %1, metadata !2244, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8* %2, metadata !2245, metadata !DIExpression()), !dbg !2246
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2247
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2249
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2243, metadata !DIExpression()), !dbg !2246
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2250
  store i32 10, i32* %6, align 8, !dbg !2251, !tbaa !2185
  %7 = icmp ne i8* %1, null, !dbg !2252
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2254
  br i1 %9, label %11, label %10, !dbg !2254

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !2255
  unreachable, !dbg !2255

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2256
  store i8* %1, i8** %12, align 8, !dbg !2257, !tbaa !2258
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2259
  store i8* %2, i8** %13, align 8, !dbg !2260, !tbaa !2261
  ret void, !dbg !2262
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2263 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2267, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i64 %1, metadata !2268, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8* %2, metadata !2269, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i64 %3, metadata !2270, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2271, metadata !DIExpression()), !dbg !2275
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2276
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2276
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2272, metadata !DIExpression()), !dbg !2275
  %8 = tail call i32* @__errno_location() #29, !dbg !2277
  %9 = load i32, i32* %8, align 4, !dbg !2277, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %9, metadata !2273, metadata !DIExpression()), !dbg !2275
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2278
  %11 = load i32, i32* %10, align 8, !dbg !2278, !tbaa !2185
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2279
  %13 = load i32, i32* %12, align 4, !dbg !2279, !tbaa !2236
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2280
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2281
  %16 = load i8*, i8** %15, align 8, !dbg !2281, !tbaa !2258
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2282
  %18 = load i8*, i8** %17, align 8, !dbg !2282, !tbaa !2261
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %19, metadata !2274, metadata !DIExpression()), !dbg !2275
  store i32 %9, i32* %8, align 4, !dbg !2284, !tbaa !864
  ret i64 %19, !dbg !2285
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2286 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2292, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %1, metadata !2293, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8* %2, metadata !2294, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %3, metadata !2295, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i32 %4, metadata !2296, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i32 %5, metadata !2297, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i32* %6, metadata !2298, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8* %7, metadata !2299, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8* %8, metadata !2300, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 0, metadata !2302, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 0, metadata !2303, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8* null, metadata !2304, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 0, metadata !2305, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2306, metadata !DIExpression()), !dbg !2362
  %13 = tail call i64 @__ctype_get_mb_cur_max() #25, !dbg !2363
  %14 = icmp eq i64 %13, 1, !dbg !2364
  call void @llvm.dbg.value(metadata i1 %14, metadata !2307, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2362
  %15 = lshr i32 %5, 1, !dbg !2365
  %16 = trunc i32 %15 to i8, !dbg !2365
  %17 = and i8 %16, 1, !dbg !2365
  call void @llvm.dbg.value(metadata i8 %17, metadata !2308, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2309, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2310, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 1, metadata !2311, metadata !DIExpression()), !dbg !2362
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !2366

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !2367
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !2368
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !2369
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !2370
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !2362
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !2371
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !2372
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !2373
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2293, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %38, metadata !2311, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %37, metadata !2310, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %36, metadata !2309, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %35, metadata !2308, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %34, metadata !2295, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %33, metadata !2306, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %32, metadata !2305, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8* %31, metadata !2304, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %30, metadata !2303, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 0, metadata !2302, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8* %29, metadata !2300, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8* %28, metadata !2299, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i32 %27, metadata !2296, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.label(metadata !2356), !dbg !2374
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
  ], !dbg !2375

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2308, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i32 5, metadata !2296, metadata !DIExpression()), !dbg !2362
  br label %92, !dbg !2376

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2308, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i32 5, metadata !2296, metadata !DIExpression()), !dbg !2362
  %42 = and i8 %35, 1, !dbg !2378
  %43 = icmp eq i8 %42, 0, !dbg !2378
  br i1 %43, label %44, label %92, !dbg !2376

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2380
  br i1 %45, label %92, label %46, !dbg !2383

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2380, !tbaa !874
  br label %92, !dbg !2380

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.77, i64 0, i64 0), i32 %27), !dbg !2384
  call void @llvm.dbg.value(metadata i8* %48, metadata !2299, metadata !DIExpression()), !dbg !2362
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), i32 %27), !dbg !2388
  call void @llvm.dbg.value(metadata i8* %49, metadata !2300, metadata !DIExpression()), !dbg !2362
  br label %50, !dbg !2389

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2300, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8* %51, metadata !2299, metadata !DIExpression()), !dbg !2362
  %53 = and i8 %35, 1, !dbg !2390
  %54 = icmp eq i8 %53, 0, !dbg !2390
  br i1 %54, label %55, label %70, !dbg !2392

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2304, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 0, metadata !2302, metadata !DIExpression()), !dbg !2362
  %56 = load i8, i8* %51, align 1, !dbg !2393, !tbaa !874
  %57 = icmp eq i8 %56, 0, !dbg !2396
  br i1 %57, label %70, label %58, !dbg !2396

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2304, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %61, metadata !2302, metadata !DIExpression()), !dbg !2362
  %62 = icmp ult i64 %61, %39, !dbg !2397
  br i1 %62, label %63, label %65, !dbg !2400

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2397
  store i8 %59, i8* %64, align 1, !dbg !2397, !tbaa !874
  br label %65, !dbg !2397

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2400
  call void @llvm.dbg.value(metadata i64 %66, metadata !2302, metadata !DIExpression()), !dbg !2362
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2401
  call void @llvm.dbg.value(metadata i8* %67, metadata !2304, metadata !DIExpression()), !dbg !2362
  %68 = load i8, i8* %67, align 1, !dbg !2393, !tbaa !874
  %69 = icmp eq i8 %68, 0, !dbg !2396
  br i1 %69, label %70, label %58, !dbg !2396, !llvm.loop !2402

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2404
  call void @llvm.dbg.value(metadata i64 %71, metadata !2302, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 1, metadata !2306, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8* %52, metadata !2304, metadata !DIExpression()), !dbg !2362
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #26, !dbg !2405
  call void @llvm.dbg.value(metadata i64 %72, metadata !2305, metadata !DIExpression()), !dbg !2362
  br label %92, !dbg !2406

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2306, metadata !DIExpression()), !dbg !2362
  br label %74, !dbg !2407

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2362
  call void @llvm.dbg.value(metadata i8 %75, metadata !2306, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 1, metadata !2308, metadata !DIExpression()), !dbg !2362
  br label %76, !dbg !2408

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2370
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2362
  call void @llvm.dbg.value(metadata i8 %78, metadata !2308, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %77, metadata !2306, metadata !DIExpression()), !dbg !2362
  %79 = and i8 %78, 1, !dbg !2409
  %80 = icmp eq i8 %79, 0, !dbg !2409
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2411
  br label %82, !dbg !2411

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2362
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2365
  call void @llvm.dbg.value(metadata i8 %84, metadata !2308, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %83, metadata !2306, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i32 2, metadata !2296, metadata !DIExpression()), !dbg !2362
  %85 = and i8 %84, 1, !dbg !2412
  %86 = icmp eq i8 %85, 0, !dbg !2412
  br i1 %86, label %87, label %92, !dbg !2414

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2415
  br i1 %88, label %92, label %89, !dbg !2418

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2415, !tbaa !874
  br label %92, !dbg !2415

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2308, metadata !DIExpression()), !dbg !2362
  br label %92, !dbg !2419

91:                                               ; preds = %26
  call void @abort() #27, !dbg !2420
  unreachable, !dbg !2420

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !2404
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %40 ], !dbg !2362
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !2362
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !2362
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !2362
  call void @llvm.dbg.value(metadata i8 %100, metadata !2308, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %99, metadata !2306, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %98, metadata !2305, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8* %97, metadata !2304, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %96, metadata !2302, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8* %95, metadata !2300, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8* %94, metadata !2299, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i32 %93, metadata !2296, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 0, metadata !2301, metadata !DIExpression()), !dbg !2362
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
  br label %121, !dbg !2421

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !2422
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !2404
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !2367
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !2371
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !2372
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !2373
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2293, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %128, metadata !2311, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %127, metadata !2310, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %126, metadata !2309, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %125, metadata !2295, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %124, metadata !2303, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %123, metadata !2302, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %122, metadata !2301, metadata !DIExpression()), !dbg !2362
  %130 = icmp eq i64 %125, -1, !dbg !2423
  br i1 %130, label %131, label %135, !dbg !2424

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2425
  %133 = load i8, i8* %132, align 1, !dbg !2425, !tbaa !874
  %134 = icmp eq i8 %133, 0, !dbg !2426
  br i1 %134, label %587, label %137, !dbg !2427

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2428
  br i1 %136, label %587, label %137, !dbg !2427

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2317, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 0, metadata !2318, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 0, metadata !2319, metadata !DIExpression()), !dbg !2429
  br i1 %106, label %138, label %153, !dbg !2430

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2432
  %140 = and i1 %107, %130, !dbg !2433
  br i1 %140, label %141, label %143, !dbg !2433

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !2434
  call void @llvm.dbg.value(metadata i64 %142, metadata !2295, metadata !DIExpression()), !dbg !2362
  br label %143, !dbg !2435

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2435
  call void @llvm.dbg.value(metadata i64 %144, metadata !2295, metadata !DIExpression()), !dbg !2362
  %145 = icmp ugt i64 %139, %144, !dbg !2436
  br i1 %145, label %153, label %146, !dbg !2437

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2438
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !2439
  %149 = icmp ne i32 %148, 0, !dbg !2440
  %150 = or i1 %149, %109, !dbg !2441
  %151 = xor i1 %149, true, !dbg !2441
  %152 = zext i1 %151 to i8, !dbg !2441
  br i1 %150, label %153, label %646, !dbg !2441

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !2429
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2429
  call void @llvm.dbg.value(metadata i8 %156, metadata !2317, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i64 %154, metadata !2295, metadata !DIExpression()), !dbg !2362
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2442
  %158 = load i8, i8* %157, align 1, !dbg !2442, !tbaa !874
  call void @llvm.dbg.value(metadata i8 %158, metadata !2312, metadata !DIExpression()), !dbg !2429
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
  ], !dbg !2443

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !2444

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !2445

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2318, metadata !DIExpression()), !dbg !2429
  %162 = and i8 %126, 1, !dbg !2449
  %163 = icmp eq i8 %162, 0, !dbg !2449
  %164 = and i1 %110, %163, !dbg !2449
  br i1 %164, label %165, label %181, !dbg !2449

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2451
  br i1 %166, label %167, label %169, !dbg !2455

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2451
  store i8 39, i8* %168, align 1, !dbg !2451, !tbaa !874
  br label %169, !dbg !2451

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2455
  call void @llvm.dbg.value(metadata i64 %170, metadata !2302, metadata !DIExpression()), !dbg !2362
  %171 = icmp ult i64 %170, %129, !dbg !2456
  br i1 %171, label %172, label %174, !dbg !2459

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2456
  store i8 36, i8* %173, align 1, !dbg !2456, !tbaa !874
  br label %174, !dbg !2456

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2459
  call void @llvm.dbg.value(metadata i64 %175, metadata !2302, metadata !DIExpression()), !dbg !2362
  %176 = icmp ult i64 %175, %129, !dbg !2460
  br i1 %176, label %177, label %179, !dbg !2463

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2460
  store i8 39, i8* %178, align 1, !dbg !2460, !tbaa !874
  br label %179, !dbg !2460

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2463
  call void @llvm.dbg.value(metadata i64 %180, metadata !2302, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 1, metadata !2309, metadata !DIExpression()), !dbg !2362
  br label %181, !dbg !2464

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !2362
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !2362
  call void @llvm.dbg.value(metadata i8 %183, metadata !2309, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %182, metadata !2302, metadata !DIExpression()), !dbg !2362
  %184 = icmp ult i64 %182, %129, !dbg !2465
  br i1 %184, label %185, label %187, !dbg !2468

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2465
  store i8 92, i8* %186, align 1, !dbg !2465, !tbaa !874
  br label %187, !dbg !2465

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %188, metadata !2302, metadata !DIExpression()), !dbg !2362
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2469
  br i1 %191, label %192, label %473, !dbg !2469

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2471
  %194 = load i8, i8* %193, align 1, !dbg !2471, !tbaa !874
  %195 = add i8 %194, -48, !dbg !2472
  %196 = icmp ult i8 %195, 10, !dbg !2472
  br i1 %196, label %197, label %473, !dbg !2472

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2473
  br i1 %198, label %199, label %201, !dbg !2477

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2473
  store i8 48, i8* %200, align 1, !dbg !2473, !tbaa !874
  br label %201, !dbg !2473

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2477
  call void @llvm.dbg.value(metadata i64 %202, metadata !2302, metadata !DIExpression()), !dbg !2362
  %203 = icmp ult i64 %202, %129, !dbg !2478
  br i1 %203, label %204, label %206, !dbg !2481

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2478
  store i8 48, i8* %205, align 1, !dbg !2478, !tbaa !874
  br label %206, !dbg !2478

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2481
  call void @llvm.dbg.value(metadata i64 %207, metadata !2302, metadata !DIExpression()), !dbg !2362
  br label %473, !dbg !2482

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !2483

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2484

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !2485

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !2487
  br i1 %214, label %215, label %473, !dbg !2487

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !2489
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2490
  %218 = load i8, i8* %217, align 1, !dbg !2490, !tbaa !874
  %219 = icmp eq i8 %218, 63, !dbg !2491
  br i1 %219, label %220, label %473, !dbg !2492

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2493
  %222 = load i8, i8* %221, align 1, !dbg !2493, !tbaa !874
  %223 = sext i8 %222 to i32, !dbg !2493
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
  ], !dbg !2494

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !2495

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2312, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i64 undef, metadata !2301, metadata !DIExpression()), !dbg !2362
  %226 = icmp ult i64 %123, %129, !dbg !2497
  br i1 %226, label %227, label %229, !dbg !2500

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2497
  store i8 63, i8* %228, align 1, !dbg !2497, !tbaa !874
  br label %229, !dbg !2497

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2500
  call void @llvm.dbg.value(metadata i64 %230, metadata !2302, metadata !DIExpression()), !dbg !2362
  %231 = icmp ult i64 %230, %129, !dbg !2501
  br i1 %231, label %232, label %234, !dbg !2504

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2501
  store i8 34, i8* %233, align 1, !dbg !2501, !tbaa !874
  br label %234, !dbg !2501

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2504
  call void @llvm.dbg.value(metadata i64 %235, metadata !2302, metadata !DIExpression()), !dbg !2362
  %236 = icmp ult i64 %235, %129, !dbg !2505
  br i1 %236, label %237, label %239, !dbg !2508

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2505
  store i8 34, i8* %238, align 1, !dbg !2505, !tbaa !874
  br label %239, !dbg !2505

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2508
  call void @llvm.dbg.value(metadata i64 %240, metadata !2302, metadata !DIExpression()), !dbg !2362
  %241 = icmp ult i64 %240, %129, !dbg !2509
  br i1 %241, label %242, label %244, !dbg !2512

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2509
  store i8 63, i8* %243, align 1, !dbg !2509, !tbaa !874
  br label %244, !dbg !2509

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2512
  call void @llvm.dbg.value(metadata i64 %245, metadata !2302, metadata !DIExpression()), !dbg !2362
  br label %473, !dbg !2513

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2316, metadata !DIExpression()), !dbg !2429
  br label %256, !dbg !2514

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2316, metadata !DIExpression()), !dbg !2429
  br label %256, !dbg !2515

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2316, metadata !DIExpression()), !dbg !2429
  br label %254, !dbg !2516

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2316, metadata !DIExpression()), !dbg !2429
  br label %254, !dbg !2517

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2316, metadata !DIExpression()), !dbg !2429
  br label %256, !dbg !2518

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !2316, metadata !DIExpression()), !dbg !2429
  br i1 %110, label %252, label %253, !dbg !2519

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2520

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2523

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2525
  call void @llvm.dbg.value(metadata i8 %255, metadata !2316, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.label(metadata !2357), !dbg !2526
  br i1 %111, label %256, label %631, !dbg !2527

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2525
  call void @llvm.dbg.value(metadata i8 %257, metadata !2316, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.label(metadata !2358), !dbg !2529
  br i1 %102, label %495, label %473, !dbg !2530

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2531

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2532, !tbaa !874
  %261 = icmp eq i8 %260, 0, !dbg !2534
  br i1 %261, label %262, label %473, !dbg !2535

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2536
  br i1 %263, label %264, label %473, !dbg !2538

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2319, metadata !DIExpression()), !dbg !2429
  br label %265, !dbg !2539

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !2429
  call void @llvm.dbg.value(metadata i8 %266, metadata !2319, metadata !DIExpression()), !dbg !2429
  br i1 %111, label %473, label %631, !dbg !2540

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2310, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 1, metadata !2319, metadata !DIExpression()), !dbg !2429
  br i1 %110, label %268, label %473, !dbg !2542

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2543

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2546
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2548
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2548
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %274, metadata !2293, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %273, metadata !2303, metadata !DIExpression()), !dbg !2362
  %275 = icmp ult i64 %123, %274, !dbg !2549
  br i1 %275, label %276, label %278, !dbg !2552

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2549
  store i8 39, i8* %277, align 1, !dbg !2549, !tbaa !874
  br label %278, !dbg !2549

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %279, metadata !2302, metadata !DIExpression()), !dbg !2362
  %280 = icmp ult i64 %279, %274, !dbg !2553
  br i1 %280, label %281, label %283, !dbg !2556

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2553
  store i8 92, i8* %282, align 1, !dbg !2553, !tbaa !874
  br label %283, !dbg !2553

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2556
  call void @llvm.dbg.value(metadata i64 %284, metadata !2302, metadata !DIExpression()), !dbg !2362
  %285 = icmp ult i64 %284, %274, !dbg !2557
  br i1 %285, label %286, label %288, !dbg !2560

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2557
  store i8 39, i8* %287, align 1, !dbg !2557, !tbaa !874
  br label %288, !dbg !2557

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2560
  call void @llvm.dbg.value(metadata i64 %289, metadata !2302, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2309, metadata !DIExpression()), !dbg !2362
  br label %473, !dbg !2561

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2562

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2320, metadata !DIExpression()), !dbg !2563
  %292 = tail call i16** @__ctype_b_loc() #29, !dbg !2564
  %293 = load i16*, i16** %292, align 8, !dbg !2564, !tbaa !694
  %294 = zext i8 %158 to i64, !dbg !2564
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2564
  %296 = load i16, i16* %295, align 2, !dbg !2564, !tbaa !1531
  %297 = lshr i16 %296, 14, !dbg !2566
  %298 = trunc i16 %297 to i8, !dbg !2566
  %299 = and i8 %298, 1, !dbg !2566
  call void @llvm.dbg.value(metadata i8 %354, metadata !2323, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i64 %355, metadata !2320, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i64 %306, metadata !2295, metadata !DIExpression()), !dbg !2362
  %300 = icmp eq i8 %299, 0, !dbg !2567
  call void @llvm.dbg.value(metadata i1 %357, metadata !2319, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2429
  br label %359, !dbg !2568

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #25, !dbg !2569
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2324, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8* %23, metadata !2571, metadata !DIExpression()) #25, !dbg !2578
  call void @llvm.dbg.value(metadata i32 0, metadata !2576, metadata !DIExpression()) #25, !dbg !2578
  call void @llvm.dbg.value(metadata i64 8, metadata !2577, metadata !DIExpression()) #25, !dbg !2578
  store i64 0, i64* %10, align 8, !dbg !2580
  call void @llvm.dbg.value(metadata i64 0, metadata !2320, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 1, metadata !2323, metadata !DIExpression()), !dbg !2563
  %302 = icmp eq i64 %154, -1, !dbg !2581
  br i1 %302, label %303, label %305, !dbg !2583

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !2584
  call void @llvm.dbg.value(metadata i64 %304, metadata !2295, metadata !DIExpression()), !dbg !2362
  br label %305, !dbg !2585

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !2429
  call void @llvm.dbg.value(metadata i64 %306, metadata !2295, metadata !DIExpression()), !dbg !2362
  br label %307, !dbg !2586

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2587
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2588
  call void @llvm.dbg.value(metadata i8 %309, metadata !2323, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i64 %308, metadata !2320, metadata !DIExpression()), !dbg !2563
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #25, !dbg !2589
  %310 = add i64 %308, %122, !dbg !2590
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2591
  %312 = sub i64 %306, %310, !dbg !2592
  call void @llvm.dbg.value(metadata i32* %12, metadata !2342, metadata !DIExpression(DW_OP_deref)), !dbg !2593
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #25, !dbg !2594
  call void @llvm.dbg.value(metadata i64 %313, metadata !2345, metadata !DIExpression()), !dbg !2593
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2595

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !2320, metadata !DIExpression()), !dbg !2563
  %315 = icmp ugt i64 %306, %310, !dbg !2596
  br i1 %315, label %316, label %341, !dbg !2598

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2599
  br label %318, !dbg !2599

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !2320, metadata !DIExpression()), !dbg !2563
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2600
  %322 = load i8, i8* %321, align 1, !dbg !2600, !tbaa !874
  %323 = icmp eq i8 %322, 0, !dbg !2598
  br i1 %323, label %341, label %324, !dbg !2599

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2601
  call void @llvm.dbg.value(metadata i64 %325, metadata !2320, metadata !DIExpression()), !dbg !2563
  %326 = add i64 %325, %122, !dbg !2602
  %327 = icmp ult i64 %326, %306, !dbg !2596
  br i1 %327, label %318, label %341, !dbg !2598, !llvm.loop !2603

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2604
  call void @llvm.dbg.value(metadata i64 1, metadata !2346, metadata !DIExpression()), !dbg !2605
  br i1 %330, label %331, label %344, !dbg !2604

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !2346, metadata !DIExpression()), !dbg !2605
  %333 = add i64 %332, %310, !dbg !2606
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2609
  %335 = load i8, i8* %334, align 1, !dbg !2609, !tbaa !874
  %336 = sext i8 %335 to i32, !dbg !2609
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2610

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2611
  call void @llvm.dbg.value(metadata i64 %338, metadata !2346, metadata !DIExpression()), !dbg !2605
  %339 = icmp eq i64 %338, %313, !dbg !2612
  br i1 %339, label %344, label %331, !dbg !2613, !llvm.loop !2614

340:                                              ; preds = %307
  br label %341, !dbg !2616

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2323, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i64 undef, metadata !2320, metadata !DIExpression()), !dbg !2563
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !2616
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2617, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %345, metadata !2342, metadata !DIExpression()), !dbg !2593
  %346 = call i32 @iswprint(i32 %345) #25, !dbg !2619
  %347 = icmp eq i32 %346, 0, !dbg !2619
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2620
  call void @llvm.dbg.value(metadata i8 %348, metadata !2323, metadata !DIExpression()), !dbg !2563
  %349 = add i64 %313, %308, !dbg !2621
  call void @llvm.dbg.value(metadata i64 %349, metadata !2320, metadata !DIExpression()), !dbg !2563
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !2616
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #26, !dbg !2622
  %351 = icmp eq i32 %350, 0, !dbg !2623
  br i1 %351, label %307, label %353, !dbg !2624, !llvm.loop !2625

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !2323, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i64 undef, metadata !2320, metadata !DIExpression()), !dbg !2563
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !2616
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !2627
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !2627
  call void @llvm.dbg.value(metadata i8 %354, metadata !2323, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i64 %355, metadata !2320, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i64 %306, metadata !2295, metadata !DIExpression()), !dbg !2362
  %356 = and i8 %354, 1, !dbg !2567
  %357 = icmp eq i8 %356, 0, !dbg !2567
  call void @llvm.dbg.value(metadata i1 %357, metadata !2319, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2429
  %358 = icmp ugt i64 %355, 1, !dbg !2628
  br i1 %358, label %367, label %359, !dbg !2568

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2629
  br i1 %364, label %367, label %365, !dbg !2629

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !2429
  call void @llvm.dbg.value(metadata i8 %472, metadata !2319, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %441, metadata !2318, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %440, metadata !2317, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %439, metadata !2312, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %438, metadata !2309, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %371, metadata !2295, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %437, metadata !2302, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %375, metadata !2301, metadata !DIExpression()), !dbg !2362
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2630
  call void @llvm.dbg.value(metadata i64 %372, metadata !2353, metadata !DIExpression()), !dbg !2631
  %373 = and i1 %102, %368
  br label %374, !dbg !2632

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !2422
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !2362
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !2371
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !2429
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !2429
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2633
  call void @llvm.dbg.value(metadata i8 %380, metadata !2318, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %379, metadata !2317, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %378, metadata !2312, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %377, metadata !2309, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %376, metadata !2302, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %375, metadata !2301, metadata !DIExpression()), !dbg !2362
  br i1 %373, label %381, label %427, !dbg !2634

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2639

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !2318, metadata !DIExpression()), !dbg !2429
  %383 = and i8 %377, 1, !dbg !2642
  %384 = icmp eq i8 %383, 0, !dbg !2642
  %385 = and i1 %110, %384, !dbg !2642
  br i1 %385, label %386, label %402, !dbg !2642

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2644
  br i1 %387, label %388, label %390, !dbg !2648

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2644
  store i8 39, i8* %389, align 1, !dbg !2644, !tbaa !874
  br label %390, !dbg !2644

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2648
  call void @llvm.dbg.value(metadata i64 %391, metadata !2302, metadata !DIExpression()), !dbg !2362
  %392 = icmp ult i64 %391, %129, !dbg !2649
  br i1 %392, label %393, label %395, !dbg !2652

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2649
  store i8 36, i8* %394, align 1, !dbg !2649, !tbaa !874
  br label %395, !dbg !2649

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2652
  call void @llvm.dbg.value(metadata i64 %396, metadata !2302, metadata !DIExpression()), !dbg !2362
  %397 = icmp ult i64 %396, %129, !dbg !2653
  br i1 %397, label %398, label %400, !dbg !2656

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2653
  store i8 39, i8* %399, align 1, !dbg !2653, !tbaa !874
  br label %400, !dbg !2653

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2656
  call void @llvm.dbg.value(metadata i64 %401, metadata !2302, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 1, metadata !2309, metadata !DIExpression()), !dbg !2362
  br label %402, !dbg !2657

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !2362
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !2362
  call void @llvm.dbg.value(metadata i8 %404, metadata !2309, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %403, metadata !2302, metadata !DIExpression()), !dbg !2362
  %405 = icmp ult i64 %403, %129, !dbg !2658
  br i1 %405, label %406, label %408, !dbg !2661

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2658
  store i8 92, i8* %407, align 1, !dbg !2658, !tbaa !874
  br label %408, !dbg !2658

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2661
  call void @llvm.dbg.value(metadata i64 %409, metadata !2302, metadata !DIExpression()), !dbg !2362
  %410 = icmp ult i64 %409, %129, !dbg !2662
  br i1 %410, label %411, label %415, !dbg !2665

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2662
  %413 = or i8 %412, 48, !dbg !2662
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2662
  store i8 %413, i8* %414, align 1, !dbg !2662, !tbaa !874
  br label %415, !dbg !2662

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2665
  call void @llvm.dbg.value(metadata i64 %416, metadata !2302, metadata !DIExpression()), !dbg !2362
  %417 = icmp ult i64 %416, %129, !dbg !2666
  br i1 %417, label %418, label %423, !dbg !2669

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2666
  %420 = and i8 %419, 7, !dbg !2666
  %421 = or i8 %420, 48, !dbg !2666
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2666
  store i8 %421, i8* %422, align 1, !dbg !2666, !tbaa !874
  br label %423, !dbg !2666

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2669
  call void @llvm.dbg.value(metadata i64 %424, metadata !2302, metadata !DIExpression()), !dbg !2362
  %425 = and i8 %378, 7, !dbg !2670
  %426 = or i8 %425, 48, !dbg !2671
  call void @llvm.dbg.value(metadata i8 %426, metadata !2312, metadata !DIExpression()), !dbg !2429
  br label %436, !dbg !2672

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2673
  %429 = icmp eq i8 %428, 0, !dbg !2673
  br i1 %429, label %436, label %430, !dbg !2675

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2676
  br i1 %431, label %432, label %434, !dbg !2680

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2676
  store i8 92, i8* %433, align 1, !dbg !2676, !tbaa !874
  br label %434, !dbg !2676

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2680
  call void @llvm.dbg.value(metadata i64 %435, metadata !2302, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2317, metadata !DIExpression()), !dbg !2429
  br label %436, !dbg !2681

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !2362
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !2371
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !2429
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !2429
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !2429
  call void @llvm.dbg.value(metadata i8 %441, metadata !2318, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %440, metadata !2317, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %439, metadata !2312, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %438, metadata !2309, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %437, metadata !2302, metadata !DIExpression()), !dbg !2362
  %442 = add i64 %375, 1, !dbg !2682
  %443 = icmp ugt i64 %372, %442, !dbg !2684
  br i1 %443, label %444, label %471, !dbg !2685

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2686
  %446 = icmp ne i8 %445, 0, !dbg !2686
  %447 = and i8 %441, 1, !dbg !2686
  %448 = icmp eq i8 %447, 0, !dbg !2686
  %449 = and i1 %446, %448, !dbg !2686
  br i1 %449, label %450, label %461, !dbg !2686

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2689
  br i1 %451, label %452, label %454, !dbg !2693

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2689
  store i8 39, i8* %453, align 1, !dbg !2689, !tbaa !874
  br label %454, !dbg !2689

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2693
  call void @llvm.dbg.value(metadata i64 %455, metadata !2302, metadata !DIExpression()), !dbg !2362
  %456 = icmp ult i64 %455, %129, !dbg !2694
  br i1 %456, label %457, label %459, !dbg !2697

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2694
  store i8 39, i8* %458, align 1, !dbg !2694, !tbaa !874
  br label %459, !dbg !2694

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2697
  call void @llvm.dbg.value(metadata i64 %460, metadata !2302, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2309, metadata !DIExpression()), !dbg !2362
  br label %461, !dbg !2698

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2699
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !2362
  call void @llvm.dbg.value(metadata i8 %463, metadata !2309, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %462, metadata !2302, metadata !DIExpression()), !dbg !2362
  %464 = icmp ult i64 %462, %129, !dbg !2700
  br i1 %464, label %465, label %467, !dbg !2703

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2700
  store i8 %439, i8* %466, align 1, !dbg !2700, !tbaa !874
  br label %467, !dbg !2700

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2703
  call void @llvm.dbg.value(metadata i64 %468, metadata !2302, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %442, metadata !2301, metadata !DIExpression()), !dbg !2362
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2704
  %470 = load i8, i8* %469, align 1, !dbg !2704, !tbaa !874
  call void @llvm.dbg.value(metadata i8 %470, metadata !2312, metadata !DIExpression()), !dbg !2429
  br label %374, !dbg !2705, !llvm.loop !2706

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !2429
  call void @llvm.dbg.value(metadata i8 %472, metadata !2319, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %441, metadata !2318, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %440, metadata !2317, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %439, metadata !2312, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %438, metadata !2309, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %371, metadata !2295, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %437, metadata !2302, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %375, metadata !2301, metadata !DIExpression()), !dbg !2362
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !2422
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !2362
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !2367
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2709
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !2362
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !2362
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !2429
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !2429
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !2429
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !2293, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %482, metadata !2319, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %481, metadata !2318, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %156, metadata !2317, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %480, metadata !2312, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %479, metadata !2310, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %478, metadata !2309, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %477, metadata !2295, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %476, metadata !2303, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %475, metadata !2302, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %474, metadata !2301, metadata !DIExpression()), !dbg !2362
  br i1 %116, label %494, label %484, !dbg !2710

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2712
  %486 = zext i8 %485 to i64, !dbg !2712
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2713
  %488 = load i32, i32* %487, align 4, !dbg !2713, !tbaa !864
  %489 = and i8 %480, 31, !dbg !2714
  %490 = zext i8 %489 to i32, !dbg !2714
  %491 = shl nuw i32 1, %490, !dbg !2715
  %492 = and i32 %488, %491, !dbg !2715
  %493 = icmp eq i32 %492, 0, !dbg !2715
  br i1 %493, label %494, label %495, !dbg !2716

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2717

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2718
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !2362
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !2367
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2709
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !2371
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !2372
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !2429
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !2429
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !2293, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %503, metadata !2319, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %502, metadata !2312, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %501, metadata !2310, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %500, metadata !2309, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %499, metadata !2295, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %498, metadata !2303, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %497, metadata !2302, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %496, metadata !2301, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.label(metadata !2359), !dbg !2719
  br i1 %109, label %505, label %635, !dbg !2720

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !2318, metadata !DIExpression()), !dbg !2429
  %506 = and i8 %500, 1, !dbg !2722
  %507 = icmp eq i8 %506, 0, !dbg !2722
  %508 = and i1 %110, %507, !dbg !2722
  br i1 %508, label %509, label %525, !dbg !2722

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2724
  br i1 %510, label %511, label %513, !dbg !2728

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2724
  store i8 39, i8* %512, align 1, !dbg !2724, !tbaa !874
  br label %513, !dbg !2724

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2728
  call void @llvm.dbg.value(metadata i64 %514, metadata !2302, metadata !DIExpression()), !dbg !2362
  %515 = icmp ult i64 %514, %504, !dbg !2729
  br i1 %515, label %516, label %518, !dbg !2732

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2729
  store i8 36, i8* %517, align 1, !dbg !2729, !tbaa !874
  br label %518, !dbg !2729

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2732
  call void @llvm.dbg.value(metadata i64 %519, metadata !2302, metadata !DIExpression()), !dbg !2362
  %520 = icmp ult i64 %519, %504, !dbg !2733
  br i1 %520, label %521, label %523, !dbg !2736

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2733
  store i8 39, i8* %522, align 1, !dbg !2733, !tbaa !874
  br label %523, !dbg !2733

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2736
  call void @llvm.dbg.value(metadata i64 %524, metadata !2302, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 1, metadata !2309, metadata !DIExpression()), !dbg !2362
  br label %525, !dbg !2737

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !2429
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !2362
  call void @llvm.dbg.value(metadata i8 %527, metadata !2309, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %526, metadata !2302, metadata !DIExpression()), !dbg !2362
  %528 = icmp ult i64 %526, %504, !dbg !2738
  br i1 %528, label %529, label %531, !dbg !2741

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2738
  store i8 92, i8* %530, align 1, !dbg !2738, !tbaa !874
  br label %531, !dbg !2738

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2741
  call void @llvm.dbg.value(metadata i64 %543, metadata !2293, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %542, metadata !2319, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %541, metadata !2318, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %540, metadata !2312, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %539, metadata !2310, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %538, metadata !2309, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %537, metadata !2295, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %536, metadata !2303, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %535, metadata !2302, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %534, metadata !2301, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.label(metadata !2360), !dbg !2742
  br label %560, !dbg !2743

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2718
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !2362
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !2367
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2709
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !2371
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !2372
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2746
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2429
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2429
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !2293, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %542, metadata !2319, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %541, metadata !2318, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %540, metadata !2312, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %539, metadata !2310, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %538, metadata !2309, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %537, metadata !2295, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %536, metadata !2303, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %535, metadata !2302, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %534, metadata !2301, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.label(metadata !2360), !dbg !2742
  %544 = and i8 %538, 1, !dbg !2743
  %545 = icmp ne i8 %544, 0, !dbg !2743
  %546 = and i8 %541, 1, !dbg !2743
  %547 = icmp eq i8 %546, 0, !dbg !2743
  %548 = and i1 %545, %547, !dbg !2743
  br i1 %548, label %549, label %560, !dbg !2743

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2747
  br i1 %550, label %551, label %553, !dbg !2751

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2747
  store i8 39, i8* %552, align 1, !dbg !2747, !tbaa !874
  br label %553, !dbg !2747

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %554, metadata !2302, metadata !DIExpression()), !dbg !2362
  %555 = icmp ult i64 %554, %543, !dbg !2752
  br i1 %555, label %556, label %558, !dbg !2755

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2752
  store i8 39, i8* %557, align 1, !dbg !2752, !tbaa !874
  br label %558, !dbg !2752

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2755
  call void @llvm.dbg.value(metadata i64 %559, metadata !2302, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2309, metadata !DIExpression()), !dbg !2362
  br label %560, !dbg !2756

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !2429
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !2362
  call void @llvm.dbg.value(metadata i8 %569, metadata !2309, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %568, metadata !2302, metadata !DIExpression()), !dbg !2362
  %570 = icmp ult i64 %568, %561, !dbg !2757
  br i1 %570, label %571, label %573, !dbg !2760

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2757
  store i8 %563, i8* %572, align 1, !dbg !2757, !tbaa !874
  br label %573, !dbg !2757

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2760
  call void @llvm.dbg.value(metadata i64 %574, metadata !2302, metadata !DIExpression()), !dbg !2362
  %575 = icmp eq i8 %562, 0, !dbg !2761
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2763
  call void @llvm.dbg.value(metadata i8 %576, metadata !2311, metadata !DIExpression()), !dbg !2362
  br label %577, !dbg !2764

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2718
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !2362
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !2367
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2709
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !2371
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !2362
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !2373
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !2293, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %584, metadata !2311, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %583, metadata !2310, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %582, metadata !2309, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %581, metadata !2295, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %580, metadata !2303, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %579, metadata !2302, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %578, metadata !2301, metadata !DIExpression()), !dbg !2362
  %586 = add i64 %578, 1, !dbg !2765
  call void @llvm.dbg.value(metadata i64 %586, metadata !2301, metadata !DIExpression()), !dbg !2362
  br label %121, !dbg !2766, !llvm.loop !2767

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2769
  %590 = and i1 %110, %589, !dbg !2771
  %591 = xor i1 %590, true, !dbg !2771
  %592 = or i1 %109, %591, !dbg !2771
  br i1 %592, label %593, label %635, !dbg !2771

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2772
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2772
  br i1 %597, label %598, label %607, !dbg !2772

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2774
  %600 = icmp eq i8 %599, 0, !dbg !2774
  br i1 %600, label %603, label %601, !dbg !2777

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2778
  br label %652, !dbg !2779

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2780
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2782
  br i1 %606, label %26, label %607, !dbg !2782

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2783
  %610 = and i1 %609, %608, !dbg !2785
  br i1 %610, label %611, label %626, !dbg !2785

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !2304, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %123, metadata !2302, metadata !DIExpression()), !dbg !2362
  %612 = load i8, i8* %97, align 1, !dbg !2786, !tbaa !874
  %613 = icmp eq i8 %612, 0, !dbg !2789
  br i1 %613, label %626, label %614, !dbg !2789

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !2304, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %617, metadata !2302, metadata !DIExpression()), !dbg !2362
  %618 = icmp ult i64 %617, %129, !dbg !2790
  br i1 %618, label %619, label %621, !dbg !2793

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2790
  store i8 %615, i8* %620, align 1, !dbg !2790, !tbaa !874
  br label %621, !dbg !2790

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2793
  call void @llvm.dbg.value(metadata i64 %622, metadata !2302, metadata !DIExpression()), !dbg !2362
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2794
  call void @llvm.dbg.value(metadata i8* %623, metadata !2304, metadata !DIExpression()), !dbg !2362
  %624 = load i8, i8* %623, align 1, !dbg !2786, !tbaa !874
  %625 = icmp eq i8 %624, 0, !dbg !2789
  br i1 %625, label %626, label %614, !dbg !2789, !llvm.loop !2795

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !2404
  call void @llvm.dbg.value(metadata i64 %627, metadata !2302, metadata !DIExpression()), !dbg !2362
  %628 = icmp ult i64 %627, %129, !dbg !2797
  br i1 %628, label %629, label %652, !dbg !2799

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2800
  store i8 0, i8* %630, align 1, !dbg !2801, !tbaa !874
  br label %652, !dbg !2800

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2293, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %637, metadata !2295, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.label(metadata !2361), !dbg !2802
  %633 = icmp eq i8 %101, 0, !dbg !2803
  %634 = select i1 %633, i32 2, i32 4, !dbg !2803
  br label %642, !dbg !2803

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2293, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %637, metadata !2295, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.label(metadata !2361), !dbg !2802
  %639 = icmp eq i32 %93, 2, !dbg !2805
  %640 = icmp eq i8 %636, 0, !dbg !2803
  %641 = select i1 %640, i32 2, i32 4, !dbg !2803
  br i1 %639, label %642, label %646, !dbg !2803

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2803

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !2296, metadata !DIExpression()), !dbg !2362
  %650 = and i32 %5, -3, !dbg !2806
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2807
  br label %652, !dbg !2808

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2809
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2810 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2814, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i32 %1, metadata !2815, metadata !DIExpression()), !dbg !2818
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #25, !dbg !2819
  call void @llvm.dbg.value(metadata i8* %3, metadata !2816, metadata !DIExpression()), !dbg !2818
  %4 = icmp eq i8* %3, %0, !dbg !2820
  br i1 %4, label %5, label %72, !dbg !2822

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #25, !dbg !2823
  call void @llvm.dbg.value(metadata i8* %6, metadata !2817, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i8* %6, metadata !2824, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8* undef, metadata !2830, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 85, metadata !2831, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 84, metadata !2832, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 70, metadata !2833, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 45, metadata !2834, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 56, metadata !2835, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 0, metadata !2836, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 0, metadata !2837, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 0, metadata !2838, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 0, metadata !2839, metadata !DIExpression()), !dbg !2840
  %7 = load i8, i8* %6, align 1, !dbg !2843, !tbaa !874
  %8 = and i8 %7, -33, !dbg !2843
  %9 = sext i8 %8 to i32, !dbg !2843
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2843

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2845, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8* undef, metadata !2850, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8 84, metadata !2851, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8 70, metadata !2852, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8 45, metadata !2853, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8 56, metadata !2854, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8 0, metadata !2855, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8 0, metadata !2856, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8 0, metadata !2857, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8 0, metadata !2858, metadata !DIExpression()), !dbg !2859
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2863
  %12 = load i8, i8* %11, align 1, !dbg !2863, !tbaa !874
  %13 = and i8 %12, -33, !dbg !2863
  %14 = icmp eq i8 %13, 84, !dbg !2863
  br i1 %14, label %15, label %69, !dbg !2863

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2865, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8* undef, metadata !2870, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8 70, metadata !2871, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8 45, metadata !2872, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8 56, metadata !2873, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8 0, metadata !2874, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8 0, metadata !2875, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8 0, metadata !2876, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8 0, metadata !2877, metadata !DIExpression()), !dbg !2878
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2882
  %17 = load i8, i8* %16, align 1, !dbg !2882, !tbaa !874
  %18 = and i8 %17, -33, !dbg !2882
  %19 = icmp eq i8 %18, 70, !dbg !2882
  br i1 %19, label %20, label %69, !dbg !2882

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2884, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i8* undef, metadata !2889, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i8 45, metadata !2890, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i8 56, metadata !2891, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i8 0, metadata !2892, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i8 0, metadata !2893, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i8 0, metadata !2894, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i8 0, metadata !2895, metadata !DIExpression()), !dbg !2896
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2900
  %22 = load i8, i8* %21, align 1, !dbg !2900, !tbaa !874
  %23 = icmp eq i8 %22, 45, !dbg !2900
  br i1 %23, label %24, label %69, !dbg !2902

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2903, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8* undef, metadata !2908, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8 56, metadata !2909, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8 0, metadata !2910, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8 0, metadata !2911, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8 0, metadata !2912, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8 0, metadata !2913, metadata !DIExpression()), !dbg !2914
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2918
  %26 = load i8, i8* %25, align 1, !dbg !2918, !tbaa !874
  %27 = icmp eq i8 %26, 56, !dbg !2918
  br i1 %27, label %28, label %69, !dbg !2920

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2921, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8* undef, metadata !2926, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 0, metadata !2927, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 0, metadata !2928, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 0, metadata !2929, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 0, metadata !2930, metadata !DIExpression()), !dbg !2931
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2935
  %30 = load i8, i8* %29, align 1, !dbg !2935, !tbaa !874
  %31 = icmp eq i8 %30, 0, !dbg !2935
  br i1 %31, label %32, label %69, !dbg !2937

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2938, !tbaa !874
  %34 = icmp eq i8 %33, 96, !dbg !2939
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.80, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.81, i64 0, i64 0), !dbg !2938
  br label %72, !dbg !2940

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2845, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8* undef, metadata !2850, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 66, metadata !2851, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 49, metadata !2852, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 56, metadata !2853, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 48, metadata !2854, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 51, metadata !2855, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 48, metadata !2856, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 0, metadata !2857, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 0, metadata !2858, metadata !DIExpression()), !dbg !2941
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2945
  %38 = load i8, i8* %37, align 1, !dbg !2945, !tbaa !874
  %39 = and i8 %38, -33, !dbg !2945
  %40 = icmp eq i8 %39, 66, !dbg !2945
  br i1 %40, label %41, label %69, !dbg !2945

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2865, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8* undef, metadata !2870, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 49, metadata !2871, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 56, metadata !2872, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 48, metadata !2873, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 51, metadata !2874, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 48, metadata !2875, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 0, metadata !2876, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 0, metadata !2877, metadata !DIExpression()), !dbg !2946
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2948
  %43 = load i8, i8* %42, align 1, !dbg !2948, !tbaa !874
  %44 = icmp eq i8 %43, 49, !dbg !2948
  br i1 %44, label %45, label %69, !dbg !2949

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2884, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i8* undef, metadata !2889, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i8 56, metadata !2890, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i8 48, metadata !2891, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i8 51, metadata !2892, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i8 48, metadata !2893, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i8 0, metadata !2894, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i8 0, metadata !2895, metadata !DIExpression()), !dbg !2950
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2952
  %47 = load i8, i8* %46, align 1, !dbg !2952, !tbaa !874
  %48 = icmp eq i8 %47, 56, !dbg !2952
  br i1 %48, label %49, label %69, !dbg !2953

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2903, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8* undef, metadata !2908, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8 48, metadata !2909, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8 51, metadata !2910, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8 48, metadata !2911, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8 0, metadata !2912, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8 0, metadata !2913, metadata !DIExpression()), !dbg !2954
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2956
  %51 = load i8, i8* %50, align 1, !dbg !2956, !tbaa !874
  %52 = icmp eq i8 %51, 48, !dbg !2956
  br i1 %52, label %53, label %69, !dbg !2957

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2921, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i8* undef, metadata !2926, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i8 51, metadata !2927, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i8 48, metadata !2928, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i8 0, metadata !2929, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i8 0, metadata !2930, metadata !DIExpression()), !dbg !2958
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2960
  %55 = load i8, i8* %54, align 1, !dbg !2960, !tbaa !874
  %56 = icmp eq i8 %55, 51, !dbg !2960
  br i1 %56, label %57, label %69, !dbg !2961

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2962, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8* undef, metadata !2967, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8 48, metadata !2968, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8 0, metadata !2969, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8 0, metadata !2970, metadata !DIExpression()), !dbg !2971
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2975
  %59 = load i8, i8* %58, align 1, !dbg !2975, !tbaa !874
  %60 = icmp eq i8 %59, 48, !dbg !2975
  br i1 %60, label %61, label %69, !dbg !2977

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2978, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8* undef, metadata !2983, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 0, metadata !2984, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 0, metadata !2985, metadata !DIExpression()), !dbg !2986
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2990
  %63 = load i8, i8* %62, align 1, !dbg !2990, !tbaa !874
  %64 = icmp eq i8 %63, 0, !dbg !2990
  br i1 %64, label %65, label %69, !dbg !2992

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2993, !tbaa !874
  %67 = icmp eq i8 %66, 96, !dbg !2994
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.82, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.83, i64 0, i64 0), !dbg !2993
  br label %72, !dbg !2995

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2996
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), !dbg !2997
  br label %72, !dbg !2998

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2818
  ret i8* %73, !dbg !2999
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !3000 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !3004 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3010 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3014, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i64 %1, metadata !3015, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3016, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i8* %0, metadata !3018, metadata !DIExpression()) #25, !dbg !3031
  call void @llvm.dbg.value(metadata i64 %1, metadata !3023, metadata !DIExpression()) #25, !dbg !3031
  call void @llvm.dbg.value(metadata i64* null, metadata !3024, metadata !DIExpression()) #25, !dbg !3031
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3025, metadata !DIExpression()) #25, !dbg !3031
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3033
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3033
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3026, metadata !DIExpression()) #25, !dbg !3031
  %6 = tail call i32* @__errno_location() #29, !dbg !3034
  %7 = load i32, i32* %6, align 4, !dbg !3034, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %7, metadata !3027, metadata !DIExpression()) #25, !dbg !3031
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3035
  %9 = load i32, i32* %8, align 4, !dbg !3035, !tbaa !2236
  %10 = or i32 %9, 1, !dbg !3036
  call void @llvm.dbg.value(metadata i32 %10, metadata !3028, metadata !DIExpression()) #25, !dbg !3031
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3037
  %12 = load i32, i32* %11, align 8, !dbg !3037, !tbaa !2185
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3038
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3039
  %15 = load i8*, i8** %14, align 8, !dbg !3039, !tbaa !2258
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3040
  %17 = load i8*, i8** %16, align 8, !dbg !3040, !tbaa !2261
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #25, !dbg !3041
  %19 = add i64 %18, 1, !dbg !3042
  call void @llvm.dbg.value(metadata i64 %19, metadata !3029, metadata !DIExpression()) #25, !dbg !3031
  call void @llvm.dbg.value(metadata i64 %19, metadata !3043, metadata !DIExpression()) #25, !dbg !3048
  %20 = tail call noalias i8* @xmalloc(i64 %19) #25, !dbg !3050
  call void @llvm.dbg.value(metadata i8* %20, metadata !3030, metadata !DIExpression()) #25, !dbg !3031
  %21 = load i32, i32* %11, align 8, !dbg !3051, !tbaa !2185
  %22 = load i8*, i8** %14, align 8, !dbg !3052, !tbaa !2258
  %23 = load i8*, i8** %16, align 8, !dbg !3053, !tbaa !2261
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #25, !dbg !3054
  store i32 %7, i32* %6, align 4, !dbg !3055, !tbaa !864
  ret i8* %20, !dbg !3056
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3019 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3018, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i64 %1, metadata !3023, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i64* %2, metadata !3024, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3025, metadata !DIExpression()), !dbg !3057
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3058
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3058
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3026, metadata !DIExpression()), !dbg !3057
  %7 = tail call i32* @__errno_location() #29, !dbg !3059
  %8 = load i32, i32* %7, align 4, !dbg !3059, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %8, metadata !3027, metadata !DIExpression()), !dbg !3057
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3060
  %10 = load i32, i32* %9, align 4, !dbg !3060, !tbaa !2236
  %11 = icmp eq i64* %2, null, !dbg !3061
  %12 = zext i1 %11 to i32, !dbg !3061
  %13 = or i32 %10, %12, !dbg !3062
  call void @llvm.dbg.value(metadata i32 %13, metadata !3028, metadata !DIExpression()), !dbg !3057
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3063
  %15 = load i32, i32* %14, align 8, !dbg !3063, !tbaa !2185
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3064
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3065
  %18 = load i8*, i8** %17, align 8, !dbg !3065, !tbaa !2258
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3066
  %20 = load i8*, i8** %19, align 8, !dbg !3066, !tbaa !2261
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !3067
  %22 = add i64 %21, 1, !dbg !3068
  call void @llvm.dbg.value(metadata i64 %22, metadata !3029, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i64 %22, metadata !3043, metadata !DIExpression()) #25, !dbg !3069
  %23 = tail call noalias i8* @xmalloc(i64 %22) #25, !dbg !3071
  call void @llvm.dbg.value(metadata i8* %23, metadata !3030, metadata !DIExpression()), !dbg !3057
  %24 = load i32, i32* %14, align 8, !dbg !3072, !tbaa !2185
  %25 = load i8*, i8** %17, align 8, !dbg !3073, !tbaa !2258
  %26 = load i8*, i8** %19, align 8, !dbg !3074, !tbaa !2261
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !3075
  store i32 %8, i32* %7, align 4, !dbg !3076, !tbaa !864
  br i1 %11, label %29, label %28, !dbg !3077

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3078, !tbaa !3080
  br label %29, !dbg !3081

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3082
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3083 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3087, !tbaa !694
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3085, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i32 1, metadata !3086, metadata !DIExpression()), !dbg !3088
  %2 = load i32, i32* @nslots, align 4, !dbg !3089, !tbaa !864
  %3 = icmp sgt i32 %2, 1, !dbg !3092
  br i1 %3, label %4, label %12, !dbg !3093

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3092
  br label %6, !dbg !3093

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !3086, metadata !DIExpression()), !dbg !3088
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !3094
  %9 = load i8*, i8** %8, align 8, !dbg !3094, !tbaa !3095
  tail call void @free(i8* %9) #25, !dbg !3097
  %10 = add nuw nsw i64 %7, 1, !dbg !3098
  call void @llvm.dbg.value(metadata i64 %10, metadata !3086, metadata !DIExpression()), !dbg !3088
  %11 = icmp eq i64 %10, %5, !dbg !3092
  br i1 %11, label %12, label %6, !dbg !3093, !llvm.loop !3099

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3101
  %14 = load i8*, i8** %13, align 8, !dbg !3101, !tbaa !3095
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3103
  br i1 %15, label %17, label %16, !dbg !3104

16:                                               ; preds = %12
  tail call void @free(i8* %14) #25, !dbg !3105
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3107, !tbaa !3108
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3109, !tbaa !3095
  br label %17, !dbg !3110

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3111
  br i1 %18, label %21, label %19, !dbg !3113

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3114
  tail call void @free(i8* %20) #25, !dbg !3116
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3117, !tbaa !694
  br label %21, !dbg !3118

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3119, !tbaa !864
  ret void, !dbg !3120
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3121 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3123, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i8* %1, metadata !3124, metadata !DIExpression()), !dbg !3125
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3126
  ret i8* %3, !dbg !3127
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3128 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3132, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i8* %1, metadata !3133, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 %2, metadata !3134, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3135, metadata !DIExpression()), !dbg !3147
  %5 = tail call i32* @__errno_location() #29, !dbg !3148
  %6 = load i32, i32* %5, align 4, !dbg !3148, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %6, metadata !3136, metadata !DIExpression()), !dbg !3147
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3149, !tbaa !694
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3137, metadata !DIExpression()), !dbg !3147
  %8 = icmp slt i32 %0, 0, !dbg !3150
  br i1 %8, label %9, label %10, !dbg !3152

9:                                                ; preds = %4
  tail call void @abort() #27, !dbg !3153
  unreachable, !dbg !3153

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3154, !tbaa !864
  %12 = icmp sgt i32 %11, %0, !dbg !3155
  br i1 %12, label %34, label %13, !dbg !3156

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3157
  call void @llvm.dbg.value(metadata i1 %14, metadata !3138, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3158
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3141, metadata !DIExpression()), !dbg !3158
  %15 = icmp eq i32 %0, 2147483647, !dbg !3159
  br i1 %15, label %16, label %17, !dbg !3161

16:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !3162
  unreachable, !dbg !3162

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3163
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3163
  %20 = add nuw nsw i32 %0, 1, !dbg !3164
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !3165
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #25, !dbg !3166
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3166
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3137, metadata !DIExpression()), !dbg !3147
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3167, !tbaa !694
  br i1 %14, label %25, label %26, !dbg !3168

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3169, !tbaa.struct !3171
  br label %26, !dbg !3172

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3173, !tbaa !864
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3174
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3175
  %31 = sub nsw i32 %20, %27, !dbg !3176
  %32 = sext i32 %31 to i64, !dbg !3177
  %33 = shl nsw i64 %32, 4, !dbg !3178
  call void @llvm.dbg.value(metadata i8* %30, metadata !2571, metadata !DIExpression()) #25, !dbg !3179
  call void @llvm.dbg.value(metadata i32 0, metadata !2576, metadata !DIExpression()) #25, !dbg !3179
  call void @llvm.dbg.value(metadata i64 %33, metadata !2577, metadata !DIExpression()) #25, !dbg !3179
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #25, !dbg !3181
  store i32 %20, i32* @nslots, align 4, !dbg !3182, !tbaa !864
  br label %34, !dbg !3183

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3147
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3137, metadata !DIExpression()), !dbg !3147
  %36 = zext i32 %0 to i64, !dbg !3184
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3185
  %38 = load i64, i64* %37, align 8, !dbg !3185, !tbaa !3108
  call void @llvm.dbg.value(metadata i64 %38, metadata !3142, metadata !DIExpression()), !dbg !3186
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3187
  %40 = load i8*, i8** %39, align 8, !dbg !3187, !tbaa !3095
  call void @llvm.dbg.value(metadata i8* %40, metadata !3144, metadata !DIExpression()), !dbg !3186
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3188
  %42 = load i32, i32* %41, align 4, !dbg !3188, !tbaa !2236
  %43 = or i32 %42, 1, !dbg !3189
  call void @llvm.dbg.value(metadata i32 %43, metadata !3145, metadata !DIExpression()), !dbg !3186
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3190
  %45 = load i32, i32* %44, align 8, !dbg !3190, !tbaa !2185
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3191
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3192
  %48 = load i8*, i8** %47, align 8, !dbg !3192, !tbaa !2258
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3193
  %50 = load i8*, i8** %49, align 8, !dbg !3193, !tbaa !2261
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3194
  call void @llvm.dbg.value(metadata i64 %51, metadata !3146, metadata !DIExpression()), !dbg !3186
  %52 = icmp ugt i64 %38, %51, !dbg !3195
  br i1 %52, label %63, label %53, !dbg !3197

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3198
  call void @llvm.dbg.value(metadata i64 %54, metadata !3142, metadata !DIExpression()), !dbg !3186
  store i64 %54, i64* %37, align 8, !dbg !3200, !tbaa !3108
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3201
  br i1 %55, label %57, label %56, !dbg !3203

56:                                               ; preds = %53
  tail call void @free(i8* %40) #25, !dbg !3204
  br label %57, !dbg !3204

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !3043, metadata !DIExpression()) #25, !dbg !3205
  %58 = tail call noalias i8* @xmalloc(i64 %54) #25, !dbg !3207
  call void @llvm.dbg.value(metadata i8* %58, metadata !3144, metadata !DIExpression()), !dbg !3186
  store i8* %58, i8** %39, align 8, !dbg !3208, !tbaa !3095
  %59 = load i32, i32* %44, align 8, !dbg !3209, !tbaa !2185
  %60 = load i8*, i8** %47, align 8, !dbg !3210, !tbaa !2258
  %61 = load i8*, i8** %49, align 8, !dbg !3211, !tbaa !2261
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3212
  br label %63, !dbg !3213

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3186
  call void @llvm.dbg.value(metadata i8* %64, metadata !3144, metadata !DIExpression()), !dbg !3186
  store i32 %6, i32* %5, align 4, !dbg !3214, !tbaa !864
  ret i8* %64, !dbg !3215
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3216 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3220, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i8* %1, metadata !3221, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 %2, metadata !3222, metadata !DIExpression()), !dbg !3223
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3224
  ret i8* %4, !dbg !3225
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3226 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3228, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i32 0, metadata !3123, metadata !DIExpression()) #25, !dbg !3230
  call void @llvm.dbg.value(metadata i8* %0, metadata !3124, metadata !DIExpression()) #25, !dbg !3230
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !3232
  ret i8* %2, !dbg !3233
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3234 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3238, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i64 %1, metadata !3239, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i32 0, metadata !3220, metadata !DIExpression()) #25, !dbg !3241
  call void @llvm.dbg.value(metadata i8* %0, metadata !3221, metadata !DIExpression()) #25, !dbg !3241
  call void @llvm.dbg.value(metadata i64 %1, metadata !3222, metadata !DIExpression()) #25, !dbg !3241
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !3243
  ret i8* %3, !dbg !3244
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3245 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3249, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i32 %1, metadata !3250, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i8* %2, metadata !3251, metadata !DIExpression()), !dbg !3253
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3254
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3254
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3252, metadata !DIExpression()), !dbg !3255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3256), !dbg !3259
  call void @llvm.dbg.value(metadata i32 %1, metadata !3260, metadata !DIExpression()) #25, !dbg !3266
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3265, metadata !DIExpression()) #25, !dbg !3268
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !3268, !alias.scope !3256
  %6 = icmp eq i32 %1, 10, !dbg !3269
  br i1 %6, label %7, label %8, !dbg !3271

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !3272, !noalias !3256
  unreachable, !dbg !3272

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3273
  store i32 %1, i32* %9, align 8, !dbg !3274, !tbaa !2185, !alias.scope !3256
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3275
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3276
  ret i8* %10, !dbg !3277
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3278 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3282, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i32 %1, metadata !3283, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i8* %2, metadata !3284, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i64 %3, metadata !3285, metadata !DIExpression()), !dbg !3287
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3288
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3288
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3286, metadata !DIExpression()), !dbg !3289
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3290), !dbg !3293
  call void @llvm.dbg.value(metadata i32 %1, metadata !3260, metadata !DIExpression()) #25, !dbg !3294
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3265, metadata !DIExpression()) #25, !dbg !3296
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #25, !dbg !3296, !alias.scope !3290
  %7 = icmp eq i32 %1, 10, !dbg !3297
  br i1 %7, label %8, label %9, !dbg !3298

8:                                                ; preds = %4
  tail call void @abort() #27, !dbg !3299, !noalias !3290
  unreachable, !dbg !3299

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3300
  store i32 %1, i32* %10, align 8, !dbg !3301, !tbaa !2185, !alias.scope !3290
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3302
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3303
  ret i8* %11, !dbg !3304
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3305 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3309, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i8* %1, metadata !3310, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i32 0, metadata !3249, metadata !DIExpression()) #25, !dbg !3312
  call void @llvm.dbg.value(metadata i32 %0, metadata !3250, metadata !DIExpression()) #25, !dbg !3312
  call void @llvm.dbg.value(metadata i8* %1, metadata !3251, metadata !DIExpression()) #25, !dbg !3312
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3314
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !3314
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3252, metadata !DIExpression()) #25, !dbg !3315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3316) #25, !dbg !3319
  call void @llvm.dbg.value(metadata i32 %0, metadata !3260, metadata !DIExpression()) #25, !dbg !3320
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3265, metadata !DIExpression()) #25, !dbg !3322
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #25, !dbg !3322, !alias.scope !3316
  %5 = icmp eq i32 %0, 10, !dbg !3323
  br i1 %5, label %6, label %7, !dbg !3324

6:                                                ; preds = %2
  tail call void @abort() #27, !dbg !3325, !noalias !3316
  unreachable, !dbg !3325

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3326
  store i32 %0, i32* %8, align 8, !dbg !3327, !tbaa !2185, !alias.scope !3316
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !3328
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !3329
  ret i8* %9, !dbg !3330
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3331 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3335, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8* %1, metadata !3336, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %2, metadata !3337, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 0, metadata !3282, metadata !DIExpression()) #25, !dbg !3339
  call void @llvm.dbg.value(metadata i32 %0, metadata !3283, metadata !DIExpression()) #25, !dbg !3339
  call void @llvm.dbg.value(metadata i8* %1, metadata !3284, metadata !DIExpression()) #25, !dbg !3339
  call void @llvm.dbg.value(metadata i64 %2, metadata !3285, metadata !DIExpression()) #25, !dbg !3339
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3341
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3341
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3286, metadata !DIExpression()) #25, !dbg !3342
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3343) #25, !dbg !3346
  call void @llvm.dbg.value(metadata i32 %0, metadata !3260, metadata !DIExpression()) #25, !dbg !3347
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3265, metadata !DIExpression()) #25, !dbg !3349
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !3349, !alias.scope !3343
  %6 = icmp eq i32 %0, 10, !dbg !3350
  br i1 %6, label %7, label %8, !dbg !3351

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !3352, !noalias !3343
  unreachable, !dbg !3352

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3353
  store i32 %0, i32* %9, align 8, !dbg !3354, !tbaa !2185, !alias.scope !3343
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #25, !dbg !3355
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3356
  ret i8* %10, !dbg !3357
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3358 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3362, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i64 %1, metadata !3363, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i8 %2, metadata !3364, metadata !DIExpression()), !dbg !3366
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3367
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3367
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3365, metadata !DIExpression()), !dbg !3368
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3369, !tbaa.struct !3370
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2203, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i8 %2, metadata !2204, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i32 1, metadata !2205, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i8 %2, metadata !2206, metadata !DIExpression()), !dbg !3371
  %6 = lshr i8 %2, 5, !dbg !3373
  %7 = zext i8 %6 to i64, !dbg !3373
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3374
  call void @llvm.dbg.value(metadata i32* %8, metadata !2207, metadata !DIExpression()), !dbg !3371
  %9 = and i8 %2, 31, !dbg !3375
  %10 = zext i8 %9 to i32, !dbg !3375
  call void @llvm.dbg.value(metadata i32 %10, metadata !2209, metadata !DIExpression()), !dbg !3371
  %11 = load i32, i32* %8, align 4, !dbg !3376, !tbaa !864
  %12 = lshr i32 %11, %10, !dbg !3377
  %13 = and i32 %12, 1, !dbg !3378
  call void @llvm.dbg.value(metadata i32 %13, metadata !2210, metadata !DIExpression()), !dbg !3371
  %14 = xor i32 %13, 1, !dbg !3379
  %15 = shl i32 %14, %10, !dbg !3380
  %16 = xor i32 %15, %11, !dbg !3381
  store i32 %16, i32* %8, align 4, !dbg !3381, !tbaa !864
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3382
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3383
  ret i8* %17, !dbg !3384
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3385 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3389, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i8 %1, metadata !3390, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i8* %0, metadata !3362, metadata !DIExpression()) #25, !dbg !3392
  call void @llvm.dbg.value(metadata i64 -1, metadata !3363, metadata !DIExpression()) #25, !dbg !3392
  call void @llvm.dbg.value(metadata i8 %1, metadata !3364, metadata !DIExpression()) #25, !dbg !3392
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3394
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !3394
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3365, metadata !DIExpression()) #25, !dbg !3395
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !3396, !tbaa.struct !3370
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2203, metadata !DIExpression()) #25, !dbg !3397
  call void @llvm.dbg.value(metadata i8 %1, metadata !2204, metadata !DIExpression()) #25, !dbg !3397
  call void @llvm.dbg.value(metadata i32 1, metadata !2205, metadata !DIExpression()) #25, !dbg !3397
  call void @llvm.dbg.value(metadata i8 %1, metadata !2206, metadata !DIExpression()) #25, !dbg !3397
  %5 = lshr i8 %1, 5, !dbg !3399
  %6 = zext i8 %5 to i64, !dbg !3399
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3400
  call void @llvm.dbg.value(metadata i32* %7, metadata !2207, metadata !DIExpression()) #25, !dbg !3397
  %8 = and i8 %1, 31, !dbg !3401
  %9 = zext i8 %8 to i32, !dbg !3401
  call void @llvm.dbg.value(metadata i32 %9, metadata !2209, metadata !DIExpression()) #25, !dbg !3397
  %10 = load i32, i32* %7, align 4, !dbg !3402, !tbaa !864
  %11 = lshr i32 %10, %9, !dbg !3403
  %12 = and i32 %11, 1, !dbg !3404
  call void @llvm.dbg.value(metadata i32 %12, metadata !2210, metadata !DIExpression()) #25, !dbg !3397
  %13 = xor i32 %12, 1, !dbg !3405
  %14 = shl i32 %13, %9, !dbg !3406
  %15 = xor i32 %14, %10, !dbg !3407
  store i32 %15, i32* %7, align 4, !dbg !3407, !tbaa !864
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !3408
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !3409
  ret i8* %16, !dbg !3410
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3411 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3413, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8* %0, metadata !3389, metadata !DIExpression()) #25, !dbg !3415
  call void @llvm.dbg.value(metadata i8 58, metadata !3390, metadata !DIExpression()) #25, !dbg !3415
  call void @llvm.dbg.value(metadata i8* %0, metadata !3362, metadata !DIExpression()) #25, !dbg !3417
  call void @llvm.dbg.value(metadata i64 -1, metadata !3363, metadata !DIExpression()) #25, !dbg !3417
  call void @llvm.dbg.value(metadata i8 58, metadata !3364, metadata !DIExpression()) #25, !dbg !3417
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3419
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #25, !dbg !3419
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3365, metadata !DIExpression()) #25, !dbg !3420
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !3421, !tbaa.struct !3370
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2203, metadata !DIExpression()) #25, !dbg !3422
  call void @llvm.dbg.value(metadata i8 58, metadata !2204, metadata !DIExpression()) #25, !dbg !3422
  call void @llvm.dbg.value(metadata i32 1, metadata !2205, metadata !DIExpression()) #25, !dbg !3422
  call void @llvm.dbg.value(metadata i8 58, metadata !2206, metadata !DIExpression()) #25, !dbg !3422
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3424
  call void @llvm.dbg.value(metadata i32* %4, metadata !2207, metadata !DIExpression()) #25, !dbg !3422
  call void @llvm.dbg.value(metadata i32 26, metadata !2209, metadata !DIExpression()) #25, !dbg !3422
  %5 = load i32, i32* %4, align 4, !dbg !3425, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %5, metadata !2210, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !3422
  %6 = or i32 %5, 67108864, !dbg !3426
  store i32 %6, i32* %4, align 4, !dbg !3426, !tbaa !864
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #25, !dbg !3427
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #25, !dbg !3428
  ret i8* %7, !dbg !3429
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3430 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3432, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i64 %1, metadata !3433, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i8* %0, metadata !3362, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i64 %1, metadata !3363, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i8 58, metadata !3364, metadata !DIExpression()) #25, !dbg !3435
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3437
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !3437
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3365, metadata !DIExpression()) #25, !dbg !3438
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !3439, !tbaa.struct !3370
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2203, metadata !DIExpression()) #25, !dbg !3440
  call void @llvm.dbg.value(metadata i8 58, metadata !2204, metadata !DIExpression()) #25, !dbg !3440
  call void @llvm.dbg.value(metadata i32 1, metadata !2205, metadata !DIExpression()) #25, !dbg !3440
  call void @llvm.dbg.value(metadata i8 58, metadata !2206, metadata !DIExpression()) #25, !dbg !3440
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3442
  call void @llvm.dbg.value(metadata i32* %5, metadata !2207, metadata !DIExpression()) #25, !dbg !3440
  call void @llvm.dbg.value(metadata i32 26, metadata !2209, metadata !DIExpression()) #25, !dbg !3440
  %6 = load i32, i32* %5, align 4, !dbg !3443, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %6, metadata !2210, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !3440
  %7 = or i32 %6, 67108864, !dbg !3444
  store i32 %7, i32* %5, align 4, !dbg !3444, !tbaa !864
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #25, !dbg !3445
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !3446
  ret i8* %8, !dbg !3447
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3448 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3265, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3454
  call void @llvm.dbg.value(metadata i32 %0, metadata !3450, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i32 %1, metadata !3451, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i8* %2, metadata !3452, metadata !DIExpression()), !dbg !3456
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3457
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3457
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3453, metadata !DIExpression()), !dbg !3458
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3459
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3460), !dbg !3459
  call void @llvm.dbg.value(metadata i32 %1, metadata !3260, metadata !DIExpression()) #25, !dbg !3463
  call void @llvm.dbg.value(metadata i32 0, metadata !3265, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3463
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3454, !alias.scope !3460
  %8 = icmp eq i32 %1, 10, !dbg !3464
  br i1 %8, label %9, label %10, !dbg !3465

9:                                                ; preds = %3
  tail call void @abort() #27, !dbg !3466, !noalias !3460
  unreachable, !dbg !3466

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3265, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3463
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3459
  store i32 %1, i32* %11, align 8, !dbg !3459, !tbaa.struct !3370
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3459
  %13 = bitcast i32* %12 to i8*, !dbg !3459
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3459, !tbaa.struct !3467
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3459
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2203, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i8 58, metadata !2204, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i32 1, metadata !2205, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i8 58, metadata !2206, metadata !DIExpression()), !dbg !3468
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3470
  call void @llvm.dbg.value(metadata i32* %14, metadata !2207, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i32 26, metadata !2209, metadata !DIExpression()), !dbg !3468
  %15 = load i32, i32* %14, align 4, !dbg !3471, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %15, metadata !2210, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3468
  %16 = or i32 %15, 67108864, !dbg !3472
  store i32 %16, i32* %14, align 4, !dbg !3472, !tbaa !864
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3473
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3474
  ret i8* %17, !dbg !3475
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3476 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3480, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i8* %1, metadata !3481, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i8* %2, metadata !3482, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i8* %3, metadata !3483, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i32 %0, metadata !3485, metadata !DIExpression()) #25, !dbg !3495
  call void @llvm.dbg.value(metadata i8* %1, metadata !3490, metadata !DIExpression()) #25, !dbg !3495
  call void @llvm.dbg.value(metadata i8* %2, metadata !3491, metadata !DIExpression()) #25, !dbg !3495
  call void @llvm.dbg.value(metadata i8* %3, metadata !3492, metadata !DIExpression()) #25, !dbg !3495
  call void @llvm.dbg.value(metadata i64 -1, metadata !3493, metadata !DIExpression()) #25, !dbg !3495
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3497
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3497
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3494, metadata !DIExpression()) #25, !dbg !3498
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !3499, !tbaa.struct !3370
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2243, metadata !DIExpression()) #25, !dbg !3500
  call void @llvm.dbg.value(metadata i8* %1, metadata !2244, metadata !DIExpression()) #25, !dbg !3500
  call void @llvm.dbg.value(metadata i8* %2, metadata !2245, metadata !DIExpression()) #25, !dbg !3500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2243, metadata !DIExpression()) #25, !dbg !3500
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3502
  store i32 10, i32* %7, align 8, !dbg !3503, !tbaa !2185
  %8 = icmp ne i8* %1, null, !dbg !3504
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3505
  br i1 %10, label %12, label %11, !dbg !3505

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !3506
  unreachable, !dbg !3506

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3507
  store i8* %1, i8** %13, align 8, !dbg !3508, !tbaa !2258
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3509
  store i8* %2, i8** %14, align 8, !dbg !3510, !tbaa !2261
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #25, !dbg !3511
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3512
  ret i8* %15, !dbg !3513
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3486 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3485, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i8* %1, metadata !3490, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i8* %2, metadata !3491, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i8* %3, metadata !3492, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i64 %4, metadata !3493, metadata !DIExpression()), !dbg !3514
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3515
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #25, !dbg !3515
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3494, metadata !DIExpression()), !dbg !3516
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3517, !tbaa.struct !3370
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2243, metadata !DIExpression()) #25, !dbg !3518
  call void @llvm.dbg.value(metadata i8* %1, metadata !2244, metadata !DIExpression()) #25, !dbg !3518
  call void @llvm.dbg.value(metadata i8* %2, metadata !2245, metadata !DIExpression()) #25, !dbg !3518
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2243, metadata !DIExpression()) #25, !dbg !3518
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3520
  store i32 10, i32* %8, align 8, !dbg !3521, !tbaa !2185
  %9 = icmp ne i8* %1, null, !dbg !3522
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3523
  br i1 %11, label %13, label %12, !dbg !3523

12:                                               ; preds = %5
  tail call void @abort() #27, !dbg !3524
  unreachable, !dbg !3524

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3525
  store i8* %1, i8** %14, align 8, !dbg !3526, !tbaa !2258
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3527
  store i8* %2, i8** %15, align 8, !dbg !3528, !tbaa !2261
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3529
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #25, !dbg !3530
  ret i8* %16, !dbg !3531
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3532 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3536, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i8* %1, metadata !3537, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i8* %2, metadata !3538, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i32 0, metadata !3480, metadata !DIExpression()) #25, !dbg !3540
  call void @llvm.dbg.value(metadata i8* %0, metadata !3481, metadata !DIExpression()) #25, !dbg !3540
  call void @llvm.dbg.value(metadata i8* %1, metadata !3482, metadata !DIExpression()) #25, !dbg !3540
  call void @llvm.dbg.value(metadata i8* %2, metadata !3483, metadata !DIExpression()) #25, !dbg !3540
  call void @llvm.dbg.value(metadata i32 0, metadata !3485, metadata !DIExpression()) #25, !dbg !3542
  call void @llvm.dbg.value(metadata i8* %0, metadata !3490, metadata !DIExpression()) #25, !dbg !3542
  call void @llvm.dbg.value(metadata i8* %1, metadata !3491, metadata !DIExpression()) #25, !dbg !3542
  call void @llvm.dbg.value(metadata i8* %2, metadata !3492, metadata !DIExpression()) #25, !dbg !3542
  call void @llvm.dbg.value(metadata i64 -1, metadata !3493, metadata !DIExpression()) #25, !dbg !3542
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3544
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3544
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3494, metadata !DIExpression()) #25, !dbg !3545
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !3546, !tbaa.struct !3370
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2243, metadata !DIExpression()) #25, !dbg !3547
  call void @llvm.dbg.value(metadata i8* %0, metadata !2244, metadata !DIExpression()) #25, !dbg !3547
  call void @llvm.dbg.value(metadata i8* %1, metadata !2245, metadata !DIExpression()) #25, !dbg !3547
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2243, metadata !DIExpression()) #25, !dbg !3547
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3549
  store i32 10, i32* %6, align 8, !dbg !3550, !tbaa !2185
  %7 = icmp ne i8* %0, null, !dbg !3551
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3552
  br i1 %9, label %11, label %10, !dbg !3552

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !3553
  unreachable, !dbg !3553

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3554
  store i8* %0, i8** %12, align 8, !dbg !3555, !tbaa !2258
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3556
  store i8* %1, i8** %13, align 8, !dbg !3557, !tbaa !2261
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #25, !dbg !3558
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !3559
  ret i8* %14, !dbg !3560
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3561 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3565, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i8* %1, metadata !3566, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i8* %2, metadata !3567, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i64 %3, metadata !3568, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i32 0, metadata !3485, metadata !DIExpression()) #25, !dbg !3570
  call void @llvm.dbg.value(metadata i8* %0, metadata !3490, metadata !DIExpression()) #25, !dbg !3570
  call void @llvm.dbg.value(metadata i8* %1, metadata !3491, metadata !DIExpression()) #25, !dbg !3570
  call void @llvm.dbg.value(metadata i8* %2, metadata !3492, metadata !DIExpression()) #25, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %3, metadata !3493, metadata !DIExpression()) #25, !dbg !3570
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3572
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3572
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3494, metadata !DIExpression()) #25, !dbg !3573
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !3574, !tbaa.struct !3370
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2243, metadata !DIExpression()) #25, !dbg !3575
  call void @llvm.dbg.value(metadata i8* %0, metadata !2244, metadata !DIExpression()) #25, !dbg !3575
  call void @llvm.dbg.value(metadata i8* %1, metadata !2245, metadata !DIExpression()) #25, !dbg !3575
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2243, metadata !DIExpression()) #25, !dbg !3575
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3577
  store i32 10, i32* %7, align 8, !dbg !3578, !tbaa !2185
  %8 = icmp ne i8* %0, null, !dbg !3579
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3580
  br i1 %10, label %12, label %11, !dbg !3580

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !3581
  unreachable, !dbg !3581

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3582
  store i8* %0, i8** %13, align 8, !dbg !3583, !tbaa !2258
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3584
  store i8* %1, i8** %14, align 8, !dbg !3585, !tbaa !2261
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #25, !dbg !3586
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !3587
  ret i8* %15, !dbg !3588
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3589 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3593, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i8* %1, metadata !3594, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i64 %2, metadata !3595, metadata !DIExpression()), !dbg !3596
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3597
  ret i8* %4, !dbg !3598
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3599 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3603, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i64 %1, metadata !3604, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i32 0, metadata !3593, metadata !DIExpression()) #25, !dbg !3606
  call void @llvm.dbg.value(metadata i8* %0, metadata !3594, metadata !DIExpression()) #25, !dbg !3606
  call void @llvm.dbg.value(metadata i64 %1, metadata !3595, metadata !DIExpression()) #25, !dbg !3606
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !3608
  ret i8* %3, !dbg !3609
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3610 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3614, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i8* %1, metadata !3615, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i32 %0, metadata !3593, metadata !DIExpression()) #25, !dbg !3617
  call void @llvm.dbg.value(metadata i8* %1, metadata !3594, metadata !DIExpression()) #25, !dbg !3617
  call void @llvm.dbg.value(metadata i64 -1, metadata !3595, metadata !DIExpression()) #25, !dbg !3617
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !3619
  ret i8* %3, !dbg !3620
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3621 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3625, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i32 0, metadata !3614, metadata !DIExpression()) #25, !dbg !3627
  call void @llvm.dbg.value(metadata i8* %0, metadata !3615, metadata !DIExpression()) #25, !dbg !3627
  call void @llvm.dbg.value(metadata i32 0, metadata !3593, metadata !DIExpression()) #25, !dbg !3629
  call void @llvm.dbg.value(metadata i8* %0, metadata !3594, metadata !DIExpression()) #25, !dbg !3629
  call void @llvm.dbg.value(metadata i64 -1, metadata !3595, metadata !DIExpression()) #25, !dbg !3629
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !3631
  ret i8* %2, !dbg !3632
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3633 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3672, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i8* %1, metadata !3673, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i8* %2, metadata !3674, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i8* %3, metadata !3675, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i8** %4, metadata !3676, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i64 %5, metadata !3677, metadata !DIExpression()), !dbg !3678
  %7 = icmp eq i8* %1, null, !dbg !3679
  br i1 %7, label %10, label %8, !dbg !3681

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #25, !dbg !3682
  br label %12, !dbg !3682

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.91, i64 0, i64 0), i8* %2, i8* %3) #25, !dbg !3683
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.92, i64 0, i64 0), i32 5) #25, !dbg !3684
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #25, !dbg !3684
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.93, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3685
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.94, i64 0, i64 0), i32 5) #25, !dbg !3686
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.95, i64 0, i64 0)) #25, !dbg !3686
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.93, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3687
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
  ], !dbg !3688

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.96, i64 0, i64 0), i32 5) #25, !dbg !3689
  %21 = load i8*, i8** %4, align 8, !dbg !3689, !tbaa !694
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #25, !dbg !3689
  br label %147, !dbg !3691

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.97, i64 0, i64 0), i32 5) #25, !dbg !3692
  %25 = load i8*, i8** %4, align 8, !dbg !3692, !tbaa !694
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3692
  %27 = load i8*, i8** %26, align 8, !dbg !3692, !tbaa !694
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #25, !dbg !3692
  br label %147, !dbg !3693

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.98, i64 0, i64 0), i32 5) #25, !dbg !3694
  %31 = load i8*, i8** %4, align 8, !dbg !3694, !tbaa !694
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3694
  %33 = load i8*, i8** %32, align 8, !dbg !3694, !tbaa !694
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3694
  %35 = load i8*, i8** %34, align 8, !dbg !3694, !tbaa !694
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #25, !dbg !3694
  br label %147, !dbg !3695

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.99, i64 0, i64 0), i32 5) #25, !dbg !3696
  %39 = load i8*, i8** %4, align 8, !dbg !3696, !tbaa !694
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3696
  %41 = load i8*, i8** %40, align 8, !dbg !3696, !tbaa !694
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3696
  %43 = load i8*, i8** %42, align 8, !dbg !3696, !tbaa !694
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3696
  %45 = load i8*, i8** %44, align 8, !dbg !3696, !tbaa !694
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #25, !dbg !3696
  br label %147, !dbg !3697

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.100, i64 0, i64 0), i32 5) #25, !dbg !3698
  %49 = load i8*, i8** %4, align 8, !dbg !3698, !tbaa !694
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3698
  %51 = load i8*, i8** %50, align 8, !dbg !3698, !tbaa !694
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3698
  %53 = load i8*, i8** %52, align 8, !dbg !3698, !tbaa !694
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3698
  %55 = load i8*, i8** %54, align 8, !dbg !3698, !tbaa !694
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3698
  %57 = load i8*, i8** %56, align 8, !dbg !3698, !tbaa !694
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #25, !dbg !3698
  br label %147, !dbg !3699

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.101, i64 0, i64 0), i32 5) #25, !dbg !3700
  %61 = load i8*, i8** %4, align 8, !dbg !3700, !tbaa !694
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3700
  %63 = load i8*, i8** %62, align 8, !dbg !3700, !tbaa !694
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3700
  %65 = load i8*, i8** %64, align 8, !dbg !3700, !tbaa !694
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3700
  %67 = load i8*, i8** %66, align 8, !dbg !3700, !tbaa !694
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3700
  %69 = load i8*, i8** %68, align 8, !dbg !3700, !tbaa !694
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3700
  %71 = load i8*, i8** %70, align 8, !dbg !3700, !tbaa !694
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #25, !dbg !3700
  br label %147, !dbg !3701

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.102, i64 0, i64 0), i32 5) #25, !dbg !3702
  %75 = load i8*, i8** %4, align 8, !dbg !3702, !tbaa !694
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3702
  %77 = load i8*, i8** %76, align 8, !dbg !3702, !tbaa !694
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3702
  %79 = load i8*, i8** %78, align 8, !dbg !3702, !tbaa !694
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3702
  %81 = load i8*, i8** %80, align 8, !dbg !3702, !tbaa !694
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3702
  %83 = load i8*, i8** %82, align 8, !dbg !3702, !tbaa !694
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3702
  %85 = load i8*, i8** %84, align 8, !dbg !3702, !tbaa !694
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3702
  %87 = load i8*, i8** %86, align 8, !dbg !3702, !tbaa !694
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #25, !dbg !3702
  br label %147, !dbg !3703

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.103, i64 0, i64 0), i32 5) #25, !dbg !3704
  %91 = load i8*, i8** %4, align 8, !dbg !3704, !tbaa !694
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3704
  %93 = load i8*, i8** %92, align 8, !dbg !3704, !tbaa !694
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3704
  %95 = load i8*, i8** %94, align 8, !dbg !3704, !tbaa !694
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3704
  %97 = load i8*, i8** %96, align 8, !dbg !3704, !tbaa !694
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3704
  %99 = load i8*, i8** %98, align 8, !dbg !3704, !tbaa !694
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3704
  %101 = load i8*, i8** %100, align 8, !dbg !3704, !tbaa !694
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3704
  %103 = load i8*, i8** %102, align 8, !dbg !3704, !tbaa !694
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3704
  %105 = load i8*, i8** %104, align 8, !dbg !3704, !tbaa !694
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #25, !dbg !3704
  br label %147, !dbg !3705

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.104, i64 0, i64 0), i32 5) #25, !dbg !3706
  %109 = load i8*, i8** %4, align 8, !dbg !3706, !tbaa !694
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3706
  %111 = load i8*, i8** %110, align 8, !dbg !3706, !tbaa !694
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3706
  %113 = load i8*, i8** %112, align 8, !dbg !3706, !tbaa !694
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3706
  %115 = load i8*, i8** %114, align 8, !dbg !3706, !tbaa !694
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3706
  %117 = load i8*, i8** %116, align 8, !dbg !3706, !tbaa !694
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3706
  %119 = load i8*, i8** %118, align 8, !dbg !3706, !tbaa !694
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3706
  %121 = load i8*, i8** %120, align 8, !dbg !3706, !tbaa !694
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3706
  %123 = load i8*, i8** %122, align 8, !dbg !3706, !tbaa !694
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3706
  %125 = load i8*, i8** %124, align 8, !dbg !3706, !tbaa !694
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #25, !dbg !3706
  br label %147, !dbg !3707

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.105, i64 0, i64 0), i32 5) #25, !dbg !3708
  %129 = load i8*, i8** %4, align 8, !dbg !3708, !tbaa !694
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3708
  %131 = load i8*, i8** %130, align 8, !dbg !3708, !tbaa !694
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3708
  %133 = load i8*, i8** %132, align 8, !dbg !3708, !tbaa !694
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3708
  %135 = load i8*, i8** %134, align 8, !dbg !3708, !tbaa !694
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3708
  %137 = load i8*, i8** %136, align 8, !dbg !3708, !tbaa !694
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3708
  %139 = load i8*, i8** %138, align 8, !dbg !3708, !tbaa !694
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3708
  %141 = load i8*, i8** %140, align 8, !dbg !3708, !tbaa !694
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3708
  %143 = load i8*, i8** %142, align 8, !dbg !3708, !tbaa !694
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3708
  %145 = load i8*, i8** %144, align 8, !dbg !3708, !tbaa !694
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #25, !dbg !3708
  br label %147, !dbg !3709

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3710
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3711 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3715, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i8* %1, metadata !3716, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i8* %2, metadata !3717, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i8* %3, metadata !3718, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i8** %4, metadata !3719, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i64 0, metadata !3720, metadata !DIExpression()), !dbg !3721
  br label %6, !dbg !3722

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3724
  call void @llvm.dbg.value(metadata i64 %7, metadata !3720, metadata !DIExpression()), !dbg !3721
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3725
  %9 = load i8*, i8** %8, align 8, !dbg !3725, !tbaa !694
  %10 = icmp eq i8* %9, null, !dbg !3727
  %11 = add i64 %7, 1, !dbg !3728
  call void @llvm.dbg.value(metadata i64 %11, metadata !3720, metadata !DIExpression()), !dbg !3721
  br i1 %10, label %12, label %6, !dbg !3727, !llvm.loop !3729

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3731
  ret void, !dbg !3732
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3733 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3744, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i8* %1, metadata !3745, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i8* %2, metadata !3746, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i8* %3, metadata !3747, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3748, metadata !DIExpression()), !dbg !3752
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3753
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #25, !dbg !3753
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3750, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i64 0, metadata !3749, metadata !DIExpression()), !dbg !3752
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3749, metadata !DIExpression()), !dbg !3752
  %11 = load i32, i32* %8, align 8, !dbg !3755
  %12 = icmp ult i32 %11, 41, !dbg !3755
  br i1 %12, label %13, label %18, !dbg !3755

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3755
  %15 = zext i32 %11 to i64, !dbg !3755
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3755
  %17 = add nuw nsw i32 %11, 8, !dbg !3755
  store i32 %17, i32* %8, align 8, !dbg !3755
  br label %21, !dbg !3755

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3755
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3755
  store i8* %20, i8** %9, align 8, !dbg !3755
  br label %21, !dbg !3755

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3755
  %25 = load i8*, i8** %24, align 8, !dbg !3755
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3758
  store i8* %25, i8** %26, align 16, !dbg !3759, !tbaa !694
  %27 = icmp eq i8* %25, null, !dbg !3760
  br i1 %27, label %30, label %28, !dbg !3761

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3749, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i64 1, metadata !3749, metadata !DIExpression()), !dbg !3752
  %29 = icmp ult i32 %22, 41, !dbg !3755
  br i1 %29, label %35, label %32, !dbg !3755

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3762
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3763
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #25, !dbg !3764
  ret void, !dbg !3764

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3755
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3755
  store i8* %34, i8** %9, align 8, !dbg !3755
  br label %40, !dbg !3755

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3755
  %37 = zext i32 %22 to i64, !dbg !3755
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3755
  %39 = add nuw nsw i32 %22, 8, !dbg !3755
  store i32 %39, i32* %8, align 8, !dbg !3755
  br label %40, !dbg !3755

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3755
  %44 = load i8*, i8** %43, align 8, !dbg !3755
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3758
  store i8* %44, i8** %45, align 8, !dbg !3759, !tbaa !694
  %46 = icmp eq i8* %44, null, !dbg !3760
  br i1 %46, label %30, label %47, !dbg !3761

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3749, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i64 2, metadata !3749, metadata !DIExpression()), !dbg !3752
  %48 = icmp ult i32 %41, 41, !dbg !3755
  br i1 %48, label %52, label %49, !dbg !3755

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3755
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3755
  store i8* %51, i8** %9, align 8, !dbg !3755
  br label %57, !dbg !3755

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3755
  %54 = zext i32 %41 to i64, !dbg !3755
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3755
  %56 = add nuw nsw i32 %41, 8, !dbg !3755
  store i32 %56, i32* %8, align 8, !dbg !3755
  br label %57, !dbg !3755

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3755
  %61 = load i8*, i8** %60, align 8, !dbg !3755
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3758
  store i8* %61, i8** %62, align 16, !dbg !3759, !tbaa !694
  %63 = icmp eq i8* %61, null, !dbg !3760
  br i1 %63, label %30, label %64, !dbg !3761

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3749, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i64 3, metadata !3749, metadata !DIExpression()), !dbg !3752
  %65 = icmp ult i32 %58, 41, !dbg !3755
  br i1 %65, label %69, label %66, !dbg !3755

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3755
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3755
  store i8* %68, i8** %9, align 8, !dbg !3755
  br label %74, !dbg !3755

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3755
  %71 = zext i32 %58 to i64, !dbg !3755
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3755
  %73 = add nuw nsw i32 %58, 8, !dbg !3755
  store i32 %73, i32* %8, align 8, !dbg !3755
  br label %74, !dbg !3755

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3755
  %78 = load i8*, i8** %77, align 8, !dbg !3755
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3758
  store i8* %78, i8** %79, align 8, !dbg !3759, !tbaa !694
  %80 = icmp eq i8* %78, null, !dbg !3760
  br i1 %80, label %30, label %81, !dbg !3761

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3749, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i64 4, metadata !3749, metadata !DIExpression()), !dbg !3752
  %82 = icmp ult i32 %75, 41, !dbg !3755
  br i1 %82, label %86, label %83, !dbg !3755

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3755
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3755
  store i8* %85, i8** %9, align 8, !dbg !3755
  br label %91, !dbg !3755

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3755
  %88 = zext i32 %75 to i64, !dbg !3755
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3755
  %90 = add nuw nsw i32 %75, 8, !dbg !3755
  store i32 %90, i32* %8, align 8, !dbg !3755
  br label %91, !dbg !3755

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3755
  %95 = load i8*, i8** %94, align 8, !dbg !3755
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3758
  store i8* %95, i8** %96, align 16, !dbg !3759, !tbaa !694
  %97 = icmp eq i8* %95, null, !dbg !3760
  br i1 %97, label %30, label %98, !dbg !3761

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3749, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i64 5, metadata !3749, metadata !DIExpression()), !dbg !3752
  %99 = icmp ult i32 %92, 41, !dbg !3755
  br i1 %99, label %103, label %100, !dbg !3755

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3755
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3755
  store i8* %102, i8** %9, align 8, !dbg !3755
  br label %108, !dbg !3755

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3755
  %105 = zext i32 %92 to i64, !dbg !3755
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3755
  %107 = add nuw nsw i32 %92, 8, !dbg !3755
  store i32 %107, i32* %8, align 8, !dbg !3755
  br label %108, !dbg !3755

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3755
  %111 = load i8*, i8** %110, align 8, !dbg !3755
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3758
  store i8* %111, i8** %112, align 8, !dbg !3759, !tbaa !694
  %113 = icmp eq i8* %111, null, !dbg !3760
  br i1 %113, label %30, label %114, !dbg !3761

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3749, metadata !DIExpression()), !dbg !3752
  %115 = load i8*, i8** %9, align 8, !dbg !3755
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3755
  store i8* %116, i8** %9, align 8, !dbg !3755
  %117 = bitcast i8* %115 to i8**, !dbg !3755
  %118 = load i8*, i8** %117, align 8, !dbg !3755
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3758
  store i8* %118, i8** %119, align 16, !dbg !3759, !tbaa !694
  %120 = icmp eq i8* %118, null, !dbg !3760
  br i1 %120, label %30, label %121, !dbg !3761

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3749, metadata !DIExpression()), !dbg !3752
  %122 = load i8*, i8** %9, align 8, !dbg !3755
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3755
  store i8* %123, i8** %9, align 8, !dbg !3755
  %124 = bitcast i8* %122 to i8**, !dbg !3755
  %125 = load i8*, i8** %124, align 8, !dbg !3755
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3758
  store i8* %125, i8** %126, align 8, !dbg !3759, !tbaa !694
  %127 = icmp eq i8* %125, null, !dbg !3760
  br i1 %127, label %30, label %128, !dbg !3761

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3749, metadata !DIExpression()), !dbg !3752
  %129 = load i8*, i8** %9, align 8, !dbg !3755
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3755
  store i8* %130, i8** %9, align 8, !dbg !3755
  %131 = bitcast i8* %129 to i8**, !dbg !3755
  %132 = load i8*, i8** %131, align 8, !dbg !3755
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3758
  store i8* %132, i8** %133, align 16, !dbg !3759, !tbaa !694
  %134 = icmp eq i8* %132, null, !dbg !3760
  br i1 %134, label %30, label %135, !dbg !3761

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3749, metadata !DIExpression()), !dbg !3752
  %136 = load i8*, i8** %9, align 8, !dbg !3755
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3755
  store i8* %137, i8** %9, align 8, !dbg !3755
  %138 = bitcast i8* %136 to i8**, !dbg !3755
  %139 = load i8*, i8** %138, align 8, !dbg !3755
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3758
  store i8* %139, i8** %140, align 8, !dbg !3759, !tbaa !694
  %141 = icmp eq i8* %139, null, !dbg !3760
  %142 = select i1 %141, i64 9, i64 10, !dbg !3761
  br label %30, !dbg !3761
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3765 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3769, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i8* %1, metadata !3770, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i8* %2, metadata !3771, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i8* %3, metadata !3772, metadata !DIExpression()), !dbg !3779
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3780
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #25, !dbg !3780
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3773, metadata !DIExpression()), !dbg !3781
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3782
  call void @llvm.va_start(i8* nonnull %6), !dbg !3782
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3783
  call void @llvm.va_end(i8* nonnull %6), !dbg !3784
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #25, !dbg !3785
  ret void, !dbg !3785
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #21

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3786 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3787, !tbaa !694
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.93, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3787
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.108, i64 0, i64 0), i32 5) #25, !dbg !3788
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.109, i64 0, i64 0)) #25, !dbg !3788
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.110, i64 0, i64 0), i32 5) #25, !dbg !3789
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.111, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.112, i64 0, i64 0)) #25, !dbg !3789
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.113, i64 0, i64 0), i32 5) #25, !dbg !3790
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.114, i64 0, i64 0)) #25, !dbg !3790
  ret void, !dbg !3791
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !3792 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3796, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i64 %1, metadata !3797, metadata !DIExpression()), !dbg !3798
  %3 = udiv i64 9223372036854775807, %1, !dbg !3799
  %4 = icmp ult i64 %3, %0, !dbg !3799
  br i1 %4, label %5, label %6, !dbg !3801

5:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !3802
  unreachable, !dbg !3802

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3803
  call void @llvm.dbg.value(metadata i64 %7, metadata !3804, metadata !DIExpression()) #25, !dbg !3810
  %8 = tail call noalias i8* @malloc(i64 %7) #25, !dbg !3812
  call void @llvm.dbg.value(metadata i8* %8, metadata !3809, metadata !DIExpression()) #25, !dbg !3810
  %9 = icmp eq i8* %8, null, !dbg !3813
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3815
  br i1 %11, label %12, label %13, !dbg !3815

12:                                               ; preds = %6
  tail call void @xalloc_die() #27, !dbg !3816
  unreachable, !dbg !3816

13:                                               ; preds = %6
  ret i8* %8, !dbg !3817
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3805 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3804, metadata !DIExpression()), !dbg !3818
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !3819
  call void @llvm.dbg.value(metadata i8* %2, metadata !3809, metadata !DIExpression()), !dbg !3818
  %3 = icmp eq i8* %2, null, !dbg !3820
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3821
  br i1 %5, label %6, label %7, !dbg !3821

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !3822
  unreachable, !dbg !3822

7:                                                ; preds = %1
  ret i8* %2, !dbg !3823
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #22 !dbg !3824 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3828, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i64 %1, metadata !3829, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i64 %2, metadata !3830, metadata !DIExpression()), !dbg !3831
  %4 = udiv i64 9223372036854775807, %2, !dbg !3832
  %5 = icmp ult i64 %4, %1, !dbg !3832
  br i1 %5, label %6, label %7, !dbg !3834

6:                                                ; preds = %3
  tail call void @xalloc_die() #27, !dbg !3835
  unreachable, !dbg !3835

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3836
  call void @llvm.dbg.value(metadata i8* %0, metadata !3837, metadata !DIExpression()) #25, !dbg !3843
  call void @llvm.dbg.value(metadata i64 %8, metadata !3842, metadata !DIExpression()) #25, !dbg !3843
  %9 = icmp eq i64 %8, 0, !dbg !3845
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3847
  br i1 %11, label %12, label %13, !dbg !3847

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #25, !dbg !3848
  br label %19, !dbg !3850

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #25, !dbg !3851
  call void @llvm.dbg.value(metadata i8* %14, metadata !3837, metadata !DIExpression()) #25, !dbg !3843
  %15 = icmp eq i8* %14, null, !dbg !3852
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3854
  br i1 %17, label %18, label %19, !dbg !3854

18:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !3855
  unreachable, !dbg !3855

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3843
  ret i8* %20, !dbg !3856
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3838 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3837, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i64 %1, metadata !3842, metadata !DIExpression()), !dbg !3857
  %3 = icmp eq i64 %1, 0, !dbg !3858
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3859
  br i1 %5, label %6, label %7, !dbg !3859

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #25, !dbg !3860
  br label %13, !dbg !3861

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #25, !dbg !3862
  call void @llvm.dbg.value(metadata i8* %8, metadata !3837, metadata !DIExpression()), !dbg !3857
  %9 = icmp eq i8* %8, null, !dbg !3863
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3864
  br i1 %11, label %12, label %13, !dbg !3864

12:                                               ; preds = %7
  tail call void @xalloc_die() #27, !dbg !3865
  unreachable, !dbg !3865

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3857
  ret i8* %14, !dbg !3866
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #22 !dbg !242 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !247, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i64* %1, metadata !248, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i64 %2, metadata !249, metadata !DIExpression()), !dbg !3867
  %4 = load i64, i64* %1, align 8, !dbg !3868, !tbaa !3080
  call void @llvm.dbg.value(metadata i64 %4, metadata !250, metadata !DIExpression()), !dbg !3867
  %5 = icmp eq i8* %0, null, !dbg !3869
  br i1 %5, label %6, label %20, !dbg !3871

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3872
  br i1 %7, label %8, label %13, !dbg !3875

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3876
  call void @llvm.dbg.value(metadata i64 %9, metadata !250, metadata !DIExpression()), !dbg !3867
  %10 = icmp ugt i64 %2, 128, !dbg !3878
  %11 = zext i1 %10 to i64, !dbg !3878
  %12 = add nuw nsw i64 %9, %11, !dbg !3879
  call void @llvm.dbg.value(metadata i64 %12, metadata !250, metadata !DIExpression()), !dbg !3867
  br label %13, !dbg !3880

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3867
  call void @llvm.dbg.value(metadata i64 %14, metadata !250, metadata !DIExpression()), !dbg !3867
  %15 = udiv i64 9223372036854775807, %2, !dbg !3881
  %16 = icmp ult i64 %15, %14, !dbg !3881
  br i1 %16, label %19, label %17, !dbg !3883

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !250, metadata !DIExpression()), !dbg !3867
  store i64 %14, i64* %1, align 8, !dbg !3884, !tbaa !3080
  %18 = mul i64 %14, %2, !dbg !3885
  call void @llvm.dbg.value(metadata i8* %0, metadata !3837, metadata !DIExpression()) #25, !dbg !3886
  call void @llvm.dbg.value(metadata i64 %28, metadata !3842, metadata !DIExpression()) #25, !dbg !3886
  br label %31, !dbg !3888

19:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !3889
  unreachable, !dbg !3889

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3890
  %22 = icmp ugt i64 %21, %4, !dbg !3893
  br i1 %22, label %24, label %23, !dbg !3894

23:                                               ; preds = %20
  tail call void @xalloc_die() #27, !dbg !3895
  unreachable, !dbg !3895

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3896
  %26 = add nuw i64 %4, 1, !dbg !3897
  %27 = add i64 %26, %25, !dbg !3898
  call void @llvm.dbg.value(metadata i64 %27, metadata !250, metadata !DIExpression()), !dbg !3867
  store i64 %27, i64* %1, align 8, !dbg !3884, !tbaa !3080
  %28 = mul i64 %27, %2, !dbg !3885
  call void @llvm.dbg.value(metadata i8* %0, metadata !3837, metadata !DIExpression()) #25, !dbg !3886
  call void @llvm.dbg.value(metadata i64 %28, metadata !3842, metadata !DIExpression()) #25, !dbg !3886
  %29 = icmp eq i64 %28, 0, !dbg !3899
  br i1 %29, label %30, label %31, !dbg !3888

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #25, !dbg !3900
  br label %38, !dbg !3901

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #25, !dbg !3902
  call void @llvm.dbg.value(metadata i8* %33, metadata !3837, metadata !DIExpression()) #25, !dbg !3886
  %34 = icmp eq i8* %33, null, !dbg !3903
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3904
  br i1 %36, label %37, label %38, !dbg !3904

37:                                               ; preds = %31
  tail call void @xalloc_die() #27, !dbg !3905
  unreachable, !dbg !3905

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3886
  ret i8* %39, !dbg !3906
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #22 !dbg !3907 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3909, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i64 %0, metadata !3804, metadata !DIExpression()) #25, !dbg !3911
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !3913
  call void @llvm.dbg.value(metadata i8* %2, metadata !3809, metadata !DIExpression()) #25, !dbg !3911
  %3 = icmp eq i8* %2, null, !dbg !3914
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3915
  br i1 %5, label %6, label %7, !dbg !3915

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !3916
  unreachable, !dbg !3916

7:                                                ; preds = %1
  ret i8* %2, !dbg !3917
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3918 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3922, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i64* %1, metadata !3923, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i8* %0, metadata !247, metadata !DIExpression()) #25, !dbg !3925
  call void @llvm.dbg.value(metadata i64* %1, metadata !248, metadata !DIExpression()) #25, !dbg !3925
  call void @llvm.dbg.value(metadata i64 1, metadata !249, metadata !DIExpression()) #25, !dbg !3925
  %3 = load i64, i64* %1, align 8, !dbg !3927, !tbaa !3080
  call void @llvm.dbg.value(metadata i64 %3, metadata !250, metadata !DIExpression()) #25, !dbg !3925
  %4 = icmp eq i8* %0, null, !dbg !3928
  br i1 %4, label %5, label %10, !dbg !3929

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3930
  br i1 %6, label %17, label %7, !dbg !3931

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !250, metadata !DIExpression()) #25, !dbg !3925
  %8 = icmp slt i64 %3, 0, !dbg !3932
  br i1 %8, label %9, label %17, !dbg !3933

9:                                                ; preds = %7
  tail call void @xalloc_die() #27, !dbg !3934
  unreachable, !dbg !3934

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3935
  br i1 %11, label %13, label %12, !dbg !3936

12:                                               ; preds = %10
  tail call void @xalloc_die() #27, !dbg !3937
  unreachable, !dbg !3937

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3938
  %15 = add nuw nsw i64 %3, 1, !dbg !3939
  %16 = add nuw nsw i64 %15, %14, !dbg !3940
  call void @llvm.dbg.value(metadata i64 %16, metadata !250, metadata !DIExpression()) #25, !dbg !3925
  call void @llvm.dbg.value(metadata i8* %0, metadata !3837, metadata !DIExpression()) #25, !dbg !3941
  call void @llvm.dbg.value(metadata i64 %16, metadata !3842, metadata !DIExpression()) #25, !dbg !3941
  br label %17, !dbg !3943

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3944
  store i64 %18, i64* %1, align 8, !dbg !3944, !tbaa !3080
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #25, !dbg !3945
  call void @llvm.dbg.value(metadata i8* %19, metadata !3837, metadata !DIExpression()) #25, !dbg !3941
  %20 = icmp eq i8* %19, null, !dbg !3946
  br i1 %20, label %21, label %22, !dbg !3947

21:                                               ; preds = %17
  tail call void @xalloc_die() #27, !dbg !3948
  unreachable, !dbg !3948

22:                                               ; preds = %17
  ret i8* %19, !dbg !3949
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3950 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3952, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i64 %0, metadata !3954, metadata !DIExpression()) #25, !dbg !3959
  call void @llvm.dbg.value(metadata i64 1, metadata !3957, metadata !DIExpression()) #25, !dbg !3959
  %2 = icmp slt i64 %0, 0, !dbg !3961
  br i1 %2, label %6, label %3, !dbg !3963

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #25, !dbg !3964
  call void @llvm.dbg.value(metadata i8* %4, metadata !3958, metadata !DIExpression()) #25, !dbg !3959
  %5 = icmp eq i8* %4, null, !dbg !3965
  br i1 %5, label %6, label %7, !dbg !3966

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #27, !dbg !3967
  unreachable, !dbg !3967

7:                                                ; preds = %3
  ret i8* %4, !dbg !3968
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3955 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3954, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i64 %1, metadata !3957, metadata !DIExpression()), !dbg !3969
  %3 = udiv i64 9223372036854775807, %1, !dbg !3970
  %4 = icmp ult i64 %3, %0, !dbg !3970
  br i1 %4, label %8, label %5, !dbg !3971

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #25, !dbg !3972
  call void @llvm.dbg.value(metadata i8* %6, metadata !3958, metadata !DIExpression()), !dbg !3969
  %7 = icmp eq i8* %6, null, !dbg !3973
  br i1 %7, label %8, label %9, !dbg !3974

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #27, !dbg !3975
  unreachable, !dbg !3975

9:                                                ; preds = %5
  ret i8* %6, !dbg !3976
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3977 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3981, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i64 %1, metadata !3982, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i64 %1, metadata !3804, metadata !DIExpression()) #25, !dbg !3984
  %3 = tail call noalias i8* @malloc(i64 %1) #25, !dbg !3986
  call void @llvm.dbg.value(metadata i8* %3, metadata !3809, metadata !DIExpression()) #25, !dbg !3984
  %4 = icmp eq i8* %3, null, !dbg !3987
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3988
  br i1 %6, label %7, label %8, !dbg !3988

7:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !3989
  unreachable, !dbg !3989

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3990, metadata !DIExpression()) #25, !dbg !3999
  call void @llvm.dbg.value(metadata i8* %0, metadata !3997, metadata !DIExpression()) #25, !dbg !3999
  call void @llvm.dbg.value(metadata i64 %1, metadata !3998, metadata !DIExpression()) #25, !dbg !3999
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #25, !dbg !4001
  ret i8* %3, !dbg !4002
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4003 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4005, metadata !DIExpression()), !dbg !4006
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #26, !dbg !4007
  %3 = add i64 %2, 1, !dbg !4008
  call void @llvm.dbg.value(metadata i8* %0, metadata !3981, metadata !DIExpression()) #25, !dbg !4009
  call void @llvm.dbg.value(metadata i64 %3, metadata !3982, metadata !DIExpression()) #25, !dbg !4009
  call void @llvm.dbg.value(metadata i64 %3, metadata !3804, metadata !DIExpression()) #25, !dbg !4011
  %4 = tail call noalias i8* @malloc(i64 %3) #25, !dbg !4013
  call void @llvm.dbg.value(metadata i8* %4, metadata !3809, metadata !DIExpression()) #25, !dbg !4011
  %5 = icmp eq i8* %4, null, !dbg !4014
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !4015
  br i1 %7, label %8, label %9, !dbg !4015

8:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !4016
  unreachable, !dbg !4016

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3990, metadata !DIExpression()) #25, !dbg !4017
  call void @llvm.dbg.value(metadata i8* %0, metadata !3997, metadata !DIExpression()) #25, !dbg !4017
  call void @llvm.dbg.value(metadata i64 %3, metadata !3998, metadata !DIExpression()) #25, !dbg !4017
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #25, !dbg !4019
  ret i8* %4, !dbg !4020
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4021 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4022, !tbaa !864
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.125, i64 0, i64 0), i32 5) #25, !dbg !4023
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i64 0, i64 0), i8* %2) #25, !dbg !4024
  tail call void @abort() #27, !dbg !4025
  unreachable, !dbg !4025
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoumax(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i8* %5, i32 %6) local_unnamed_addr #8 !dbg !4026 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4034, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i32 %1, metadata !4035, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i64 %2, metadata !4036, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i64 %3, metadata !4037, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i8* %4, metadata !4038, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i8* %5, metadata !4039, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i32 %6, metadata !4040, metadata !DIExpression()), !dbg !4044
  %9 = bitcast i64* %8 to i8*, !dbg !4045
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #25, !dbg !4045
  call void @llvm.dbg.value(metadata i64* %8, metadata !4043, metadata !DIExpression(DW_OP_deref)), !dbg !4044
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #25, !dbg !4046
  call void @llvm.dbg.value(metadata i32 %10, metadata !4041, metadata !DIExpression()), !dbg !4044
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %23
    i32 3, label %25
  ], !dbg !4047

11:                                               ; preds = %7
  %12 = tail call i32* @__errno_location() #29, !dbg !4048
  br label %27, !dbg !4047

13:                                               ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !4051, !tbaa !3080
  call void @llvm.dbg.value(metadata i64 %14, metadata !4043, metadata !DIExpression()), !dbg !4044
  %15 = icmp ult i64 %14, %2, !dbg !4055
  %16 = icmp ugt i64 %14, %3
  %17 = or i1 %15, %16, !dbg !4056
  br i1 %17, label %18, label %36, !dbg !4056

18:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !4041, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i64 %14, metadata !4043, metadata !DIExpression()), !dbg !4044
  %19 = icmp ugt i64 %14, 1073741823, !dbg !4057
  %20 = tail call i32* @__errno_location() #29, !dbg !4060
  br i1 %19, label %21, label %22, !dbg !4061

21:                                               ; preds = %18
  store i32 75, i32* %20, align 4, !dbg !4062, !tbaa !864
  call void @llvm.dbg.value(metadata i32 undef, metadata !4041, metadata !DIExpression()), !dbg !4044
  br label %27, !dbg !4063

22:                                               ; preds = %18
  store i32 34, i32* %20, align 4, !dbg !4064, !tbaa !864
  call void @llvm.dbg.value(metadata i32 undef, metadata !4041, metadata !DIExpression()), !dbg !4044
  br label %27, !dbg !4063

23:                                               ; preds = %7
  %24 = tail call i32* @__errno_location() #29, !dbg !4065
  store i32 75, i32* %24, align 4, !dbg !4067, !tbaa !864
  call void @llvm.dbg.value(metadata i32 undef, metadata !4041, metadata !DIExpression()), !dbg !4044
  br label %27, !dbg !4063

25:                                               ; preds = %7
  %26 = tail call i32* @__errno_location() #29, !dbg !4068
  store i32 0, i32* %26, align 4, !dbg !4070, !tbaa !864
  call void @llvm.dbg.value(metadata i32 undef, metadata !4041, metadata !DIExpression()), !dbg !4044
  br label %27, !dbg !4063

27:                                               ; preds = %11, %21, %22, %25, %23
  %28 = phi i32* [ %12, %11 ], [ %20, %21 ], [ %20, %22 ], [ %26, %25 ], [ %24, %23 ], !dbg !4048
  %29 = icmp eq i32 %6, 0, !dbg !4071
  %30 = select i1 %29, i32 1, i32 %6, !dbg !4071
  %31 = load i32, i32* %28, align 4, !dbg !4048, !tbaa !864
  %32 = icmp eq i32 %31, 22, !dbg !4072
  %33 = select i1 %32, i32 0, i32 %31, !dbg !4048
  %34 = call i8* @quote(i8* %0) #25, !dbg !4073
  call void (i32, i32, i8*, ...) @error(i32 %30, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i64 0, i64 0), i8* %5, i8* %34) #25, !dbg !4074
  %35 = load i64, i64* %8, align 8, !dbg !4075, !tbaa !3080
  br label %36, !dbg !4076

36:                                               ; preds = %13, %27
  %37 = phi i64 [ %14, %13 ], [ %35, %27 ], !dbg !4075
  call void @llvm.dbg.value(metadata i64 %37, metadata !4043, metadata !DIExpression()), !dbg !4044
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #25, !dbg !4077
  ret i64 %37, !dbg !4078
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoumax(i8* %0, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5) local_unnamed_addr #8 !dbg !4079 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4083, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %1, metadata !4084, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %2, metadata !4085, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i8* %3, metadata !4086, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i8* %4, metadata !4087, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i32 %5, metadata !4088, metadata !DIExpression()), !dbg !4089
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !4090
  ret i64 %7, !dbg !4091
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !4092 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4098, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.value(metadata i8** %1, metadata !4099, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.value(metadata i32 %2, metadata !4100, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.value(metadata i64* %3, metadata !4101, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.value(metadata i8* %4, metadata !4102, metadata !DIExpression()), !dbg !4116
  %7 = bitcast i8** %6 to i8*, !dbg !4117
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #25, !dbg !4117
  call void @llvm.dbg.value(metadata i32 0, metadata !4106, metadata !DIExpression()), !dbg !4116
  %8 = icmp ult i32 %2, 37, !dbg !4118
  br i1 %8, label %10, label %9, !dbg !4118

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.132, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.133, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #27, !dbg !4118
  unreachable, !dbg !4118

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4121
  call void @llvm.dbg.value(metadata i8** %25, metadata !4104, metadata !DIExpression()), !dbg !4116
  %12 = tail call i32* @__errno_location() #29, !dbg !4122
  store i32 0, i32* %12, align 4, !dbg !4123, !tbaa !864
  call void @llvm.dbg.value(metadata i8* %0, metadata !4107, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i8 undef, metadata !4110, metadata !DIExpression()), !dbg !4124
  %13 = tail call i16** @__ctype_b_loc() #29, !dbg !4116
  %14 = load i16*, i16** %13, align 8, !tbaa !694
  br label %15, !dbg !4125

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !4124
  %17 = load i8, i8* %16, align 1, !dbg !4124, !tbaa !874
  call void @llvm.dbg.value(metadata i8 %17, metadata !4110, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i8* %16, metadata !4107, metadata !DIExpression()), !dbg !4124
  %18 = zext i8 %17 to i64, !dbg !4126
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4126
  %20 = load i16, i16* %19, align 2, !dbg !4126, !tbaa !1531
  %21 = and i16 %20, 8192, !dbg !4126
  %22 = icmp eq i16 %21, 0, !dbg !4125
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4127
  call void @llvm.dbg.value(metadata i8* %23, metadata !4107, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i8 undef, metadata !4110, metadata !DIExpression()), !dbg !4124
  br i1 %22, label %24, label %15, !dbg !4125, !llvm.loop !4128

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4121
  %26 = icmp eq i8 %17, 45, !dbg !4130
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  %28 = call i64 @strtoumax(i8* %0, i8** %25, i32 %2) #25, !dbg !4132
  call void @llvm.dbg.value(metadata i64 %28, metadata !4105, metadata !DIExpression()), !dbg !4116
  %29 = load i8*, i8** %25, align 8, !dbg !4133, !tbaa !694
  %30 = icmp eq i8* %29, %0, !dbg !4135
  br i1 %30, label %31, label %40, !dbg !4136

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4137
  br i1 %32, label %285, label %33, !dbg !4140

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4141, !tbaa !874
  %35 = icmp eq i8 %34, 0, !dbg !4141
  br i1 %35, label %285, label %36, !dbg !4142

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4141
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #26, !dbg !4143
  %39 = icmp eq i8* %38, null, !dbg !4143
  br i1 %39, label %285, label %47, !dbg !4144

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4145, !tbaa !864
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4147

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !4106, metadata !DIExpression()), !dbg !4116
  br label %43, !dbg !4148

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !4116
  call void @llvm.dbg.value(metadata i32 %44, metadata !4106, metadata !DIExpression()), !dbg !4116
  %45 = icmp eq i8* %4, null, !dbg !4150
  br i1 %45, label %46, label %47, !dbg !4152

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !4105, metadata !DIExpression()), !dbg !4116
  store i64 %28, i64* %3, align 8, !dbg !4153, !tbaa !3080
  br label %285, !dbg !4155

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4156, !tbaa !874
  %51 = sext i8 %50 to i32, !dbg !4156
  %52 = icmp eq i8 %50, 0, !dbg !4157
  br i1 %52, label %282, label %53, !dbg !4158

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !4111, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 1, metadata !4114, metadata !DIExpression()), !dbg !4159
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #26, !dbg !4160
  %55 = icmp eq i8* %54, null, !dbg !4160
  br i1 %55, label %56, label %58, !dbg !4162

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !4105, metadata !DIExpression()), !dbg !4116
  store i64 %49, i64* %3, align 8, !dbg !4163, !tbaa !3080
  %57 = or i32 %48, 2, !dbg !4165
  br label %285, !dbg !4166

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
  ], !dbg !4167

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #26, !dbg !4168
  %61 = icmp eq i8* %60, null, !dbg !4168
  br i1 %61, label %72, label %62, !dbg !4171

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4172
  %64 = load i8, i8* %63, align 1, !dbg !4172, !tbaa !874
  %65 = sext i8 %64 to i32, !dbg !4172
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4173

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4174
  %68 = load i8, i8* %67, align 1, !dbg !4174, !tbaa !874
  %69 = icmp eq i8 %68, 66, !dbg !4177
  %70 = select i1 %69, i64 3, i64 1, !dbg !4178
  br label %72, !dbg !4178

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !4111, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 2, metadata !4114, metadata !DIExpression()), !dbg !4159
  br label %72, !dbg !4179

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !4114, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 undef, metadata !4111, metadata !DIExpression()), !dbg !4159
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
  ], !dbg !4180

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4181, metadata !DIExpression()) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i32 7, metadata !4188, metadata !DIExpression()) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i32 6, metadata !4188, metadata !DIExpression()) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4198
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4198
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #25, !dbg !4200
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4200
  %78 = mul i64 %49, %73, !dbg !4202
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4202
  call void @llvm.dbg.value(metadata i1 %77, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i32 6, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i1 %77, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i32 6, metadata !4188, metadata !DIExpression()) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i32 5, metadata !4188, metadata !DIExpression()) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4198
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4198
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #25, !dbg !4200
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !4200
  %82 = mul i64 %79, %73, !dbg !4202
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4202
  %84 = or i1 %77, %81, !dbg !4203
  call void @llvm.dbg.value(metadata i1 %84, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i32 5, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i1 %84, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i32 5, metadata !4188, metadata !DIExpression()) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i32 4, metadata !4188, metadata !DIExpression()) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4198
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4198
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #25, !dbg !4200
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !4200
  %87 = mul i64 %83, %73, !dbg !4202
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !4202
  %89 = or i1 %84, %86, !dbg !4203
  call void @llvm.dbg.value(metadata i1 %89, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i32 4, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i1 %89, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i32 4, metadata !4188, metadata !DIExpression()) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i32 3, metadata !4188, metadata !DIExpression()) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4198
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4198
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #25, !dbg !4200
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !4200
  %92 = mul i64 %88, %73, !dbg !4202
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !4202
  %94 = or i1 %89, %91, !dbg !4203
  call void @llvm.dbg.value(metadata i1 %94, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i32 3, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i1 %94, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i32 3, metadata !4188, metadata !DIExpression()) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i32 2, metadata !4188, metadata !DIExpression()) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4198
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4198
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #25, !dbg !4200
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !4200
  %97 = mul i64 %93, %73, !dbg !4202
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !4202
  %99 = or i1 %94, %96, !dbg !4203
  call void @llvm.dbg.value(metadata i1 %99, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i32 2, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i1 %99, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i32 2, metadata !4188, metadata !DIExpression()) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i32 1, metadata !4188, metadata !DIExpression()) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4198
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4198
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #25, !dbg !4200
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !4200
  %102 = mul i64 %98, %73, !dbg !4202
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !4202
  %104 = or i1 %99, %101, !dbg !4203
  call void @llvm.dbg.value(metadata i1 %104, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i32 1, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i1 %104, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i32 1, metadata !4188, metadata !DIExpression()) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i32 0, metadata !4188, metadata !DIExpression()) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4198
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4198
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #25, !dbg !4200
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !4200
  %107 = mul i64 %103, %73, !dbg !4202
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4202
  %109 = or i1 %104, %106, !dbg !4203
  call void @llvm.dbg.value(metadata i1 %109, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4189
  call void @llvm.dbg.value(metadata i32 0, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4189
  br label %272, !dbg !4204

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4181, metadata !DIExpression()) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 8, metadata !4188, metadata !DIExpression()) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 7, metadata !4188, metadata !DIExpression()) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4207
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4207
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #25, !dbg !4209
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !4209
  %113 = mul i64 %49, %73, !dbg !4210
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !4210
  call void @llvm.dbg.value(metadata i1 %112, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 7, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i1 %112, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 7, metadata !4188, metadata !DIExpression()) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 6, metadata !4188, metadata !DIExpression()) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4207
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4207
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #25, !dbg !4209
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !4209
  %117 = mul i64 %114, %73, !dbg !4210
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4210
  %119 = or i1 %112, %116, !dbg !4211
  call void @llvm.dbg.value(metadata i1 %119, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 6, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i1 %119, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 6, metadata !4188, metadata !DIExpression()) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 5, metadata !4188, metadata !DIExpression()) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4207
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4207
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #25, !dbg !4209
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !4209
  %122 = mul i64 %118, %73, !dbg !4210
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !4210
  %124 = or i1 %119, %121, !dbg !4211
  call void @llvm.dbg.value(metadata i1 %124, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 5, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i1 %124, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 5, metadata !4188, metadata !DIExpression()) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 4, metadata !4188, metadata !DIExpression()) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4207
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4207
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #25, !dbg !4209
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !4209
  %127 = mul i64 %123, %73, !dbg !4210
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !4210
  %129 = or i1 %124, %126, !dbg !4211
  call void @llvm.dbg.value(metadata i1 %129, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 4, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i1 %129, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 4, metadata !4188, metadata !DIExpression()) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 3, metadata !4188, metadata !DIExpression()) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4207
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4207
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #25, !dbg !4209
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !4209
  %132 = mul i64 %128, %73, !dbg !4210
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !4210
  %134 = or i1 %129, %131, !dbg !4211
  call void @llvm.dbg.value(metadata i1 %134, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 3, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i1 %134, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 3, metadata !4188, metadata !DIExpression()) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 2, metadata !4188, metadata !DIExpression()) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4207
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4207
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #25, !dbg !4209
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !4209
  %137 = mul i64 %133, %73, !dbg !4210
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4210
  %139 = or i1 %134, %136, !dbg !4211
  call void @llvm.dbg.value(metadata i1 %139, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 2, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i1 %139, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 2, metadata !4188, metadata !DIExpression()) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 1, metadata !4188, metadata !DIExpression()) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4207
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4207
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #25, !dbg !4209
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !4209
  %142 = mul i64 %138, %73, !dbg !4210
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !4210
  %144 = or i1 %139, %141, !dbg !4211
  call void @llvm.dbg.value(metadata i1 %144, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 1, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i1 %144, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 1, metadata !4188, metadata !DIExpression()) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 0, metadata !4188, metadata !DIExpression()) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4207
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4207
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #25, !dbg !4209
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !4209
  %147 = mul i64 %143, %73, !dbg !4210
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4210
  %149 = or i1 %144, %146, !dbg !4211
  call void @llvm.dbg.value(metadata i1 %149, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4205
  call void @llvm.dbg.value(metadata i32 0, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4205
  br label %272, !dbg !4204

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4181, metadata !DIExpression()) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i32 5, metadata !4188, metadata !DIExpression()) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i32 4, metadata !4188, metadata !DIExpression()) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4214
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4214
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #25, !dbg !4216
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !4216
  %153 = mul i64 %49, %73, !dbg !4217
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !4217
  call void @llvm.dbg.value(metadata i1 %152, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i32 4, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i1 %152, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i32 4, metadata !4188, metadata !DIExpression()) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i32 3, metadata !4188, metadata !DIExpression()) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4214
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4214
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #25, !dbg !4216
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !4216
  %157 = mul i64 %154, %73, !dbg !4217
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !4217
  %159 = or i1 %152, %156, !dbg !4218
  call void @llvm.dbg.value(metadata i1 %159, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i32 3, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i1 %159, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i32 3, metadata !4188, metadata !DIExpression()) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i32 2, metadata !4188, metadata !DIExpression()) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4214
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4214
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #25, !dbg !4216
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !4216
  %162 = mul i64 %158, %73, !dbg !4217
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !4217
  %164 = or i1 %159, %161, !dbg !4218
  call void @llvm.dbg.value(metadata i1 %164, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i32 2, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i1 %164, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i32 2, metadata !4188, metadata !DIExpression()) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i32 1, metadata !4188, metadata !DIExpression()) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4214
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4214
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #25, !dbg !4216
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !4216
  %167 = mul i64 %163, %73, !dbg !4217
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !4217
  %169 = or i1 %164, %166, !dbg !4218
  call void @llvm.dbg.value(metadata i1 %169, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i32 1, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i1 %169, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i32 1, metadata !4188, metadata !DIExpression()) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i32 0, metadata !4188, metadata !DIExpression()) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4214
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4214
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #25, !dbg !4216
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !4216
  %172 = mul i64 %168, %73, !dbg !4217
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !4217
  %174 = or i1 %169, %171, !dbg !4218
  call void @llvm.dbg.value(metadata i1 %174, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4212
  call void @llvm.dbg.value(metadata i32 0, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4212
  br label %272, !dbg !4204

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !4181, metadata !DIExpression()) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i32 6, metadata !4188, metadata !DIExpression()) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i32 5, metadata !4188, metadata !DIExpression()) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4221
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4221
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #25, !dbg !4223
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !4223
  %178 = mul i64 %49, %73, !dbg !4224
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !4224
  call void @llvm.dbg.value(metadata i1 %177, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i32 5, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i1 %177, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i32 5, metadata !4188, metadata !DIExpression()) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i32 4, metadata !4188, metadata !DIExpression()) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4221
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4221
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #25, !dbg !4223
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !4223
  %182 = mul i64 %179, %73, !dbg !4224
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !4224
  %184 = or i1 %177, %181, !dbg !4225
  call void @llvm.dbg.value(metadata i1 %184, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i32 4, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i1 %184, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i32 4, metadata !4188, metadata !DIExpression()) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i32 3, metadata !4188, metadata !DIExpression()) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4221
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4221
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #25, !dbg !4223
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !4223
  %187 = mul i64 %183, %73, !dbg !4224
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !4224
  %189 = or i1 %184, %186, !dbg !4225
  call void @llvm.dbg.value(metadata i1 %189, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i32 3, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i1 %189, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i32 3, metadata !4188, metadata !DIExpression()) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i32 2, metadata !4188, metadata !DIExpression()) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4221
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4221
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #25, !dbg !4223
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !4223
  %192 = mul i64 %188, %73, !dbg !4224
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !4224
  %194 = or i1 %189, %191, !dbg !4225
  call void @llvm.dbg.value(metadata i1 %194, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i32 2, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i1 %194, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i32 2, metadata !4188, metadata !DIExpression()) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i32 1, metadata !4188, metadata !DIExpression()) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4221
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4221
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #25, !dbg !4223
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4223
  %197 = mul i64 %193, %73, !dbg !4224
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4224
  %199 = or i1 %194, %196, !dbg !4225
  call void @llvm.dbg.value(metadata i1 %199, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i32 1, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i1 %199, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i32 1, metadata !4188, metadata !DIExpression()) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i32 0, metadata !4188, metadata !DIExpression()) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4221
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4221
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #25, !dbg !4223
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !4223
  %202 = mul i64 %198, %73, !dbg !4224
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !4224
  %204 = or i1 %199, %201, !dbg !4225
  call void @llvm.dbg.value(metadata i1 %204, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4219
  call void @llvm.dbg.value(metadata i32 0, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4219
  br label %272, !dbg !4204

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4226
  call void @llvm.dbg.value(metadata i32 512, metadata !4197, metadata !DIExpression()) #25, !dbg !4226
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #25, !dbg !4228
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !4228
  %208 = shl i64 %49, 9, !dbg !4229
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !4229
  call void @llvm.dbg.value(metadata i1 %207, metadata !4115, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4159
  br label %272, !dbg !4230

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4231
  call void @llvm.dbg.value(metadata i32 1024, metadata !4197, metadata !DIExpression()) #25, !dbg !4231
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #25, !dbg !4233
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !4233
  %213 = shl i64 %49, 10, !dbg !4234
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4234
  call void @llvm.dbg.value(metadata i1 %212, metadata !4115, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4159
  br label %272, !dbg !4235

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #25, !dbg !4236
  call void @llvm.dbg.value(metadata i32 undef, metadata !4187, metadata !DIExpression()) #25, !dbg !4236
  call void @llvm.dbg.value(metadata i32 0, metadata !4181, metadata !DIExpression()) #25, !dbg !4236
  call void @llvm.dbg.value(metadata i32 3, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4236
  call void @llvm.dbg.value(metadata i32 0, metadata !4181, metadata !DIExpression()) #25, !dbg !4236
  call void @llvm.dbg.value(metadata i32 3, metadata !4188, metadata !DIExpression()) #25, !dbg !4236
  call void @llvm.dbg.value(metadata i32 2, metadata !4188, metadata !DIExpression()) #25, !dbg !4236
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4238
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4238
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #25, !dbg !4240
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !4240
  %218 = mul i64 %49, %73, !dbg !4241
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !4241
  call void @llvm.dbg.value(metadata i1 %217, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4236
  call void @llvm.dbg.value(metadata i32 2, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4236
  call void @llvm.dbg.value(metadata i1 %217, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4236
  call void @llvm.dbg.value(metadata i32 2, metadata !4188, metadata !DIExpression()) #25, !dbg !4236
  call void @llvm.dbg.value(metadata i32 1, metadata !4188, metadata !DIExpression()) #25, !dbg !4236
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4238
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4238
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #25, !dbg !4240
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !4240
  %222 = mul i64 %219, %73, !dbg !4241
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !4241
  %224 = or i1 %217, %221, !dbg !4242
  call void @llvm.dbg.value(metadata i1 %224, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4236
  call void @llvm.dbg.value(metadata i32 1, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4236
  call void @llvm.dbg.value(metadata i1 %224, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4236
  call void @llvm.dbg.value(metadata i32 1, metadata !4188, metadata !DIExpression()) #25, !dbg !4236
  call void @llvm.dbg.value(metadata i32 0, metadata !4188, metadata !DIExpression()) #25, !dbg !4236
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4238
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4238
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #25, !dbg !4240
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !4240
  %227 = mul i64 %223, %73, !dbg !4241
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4241
  %229 = or i1 %224, %226, !dbg !4242
  call void @llvm.dbg.value(metadata i1 %229, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4236
  call void @llvm.dbg.value(metadata i32 0, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4236
  br label %272, !dbg !4204

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #25, !dbg !4243
  call void @llvm.dbg.value(metadata i32 undef, metadata !4187, metadata !DIExpression()) #25, !dbg !4243
  call void @llvm.dbg.value(metadata i32 0, metadata !4181, metadata !DIExpression()) #25, !dbg !4243
  call void @llvm.dbg.value(metadata i32 1, metadata !4188, metadata !DIExpression()) #25, !dbg !4243
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4245
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4245
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #25, !dbg !4247
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !4247
  %233 = mul i64 %49, %73, !dbg !4248
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !4248
  call void @llvm.dbg.value(metadata i1 %232, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4243
  call void @llvm.dbg.value(metadata i32 0, metadata !4188, metadata !DIExpression()) #25, !dbg !4243
  %235 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %234) #25, !dbg !4247
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !4247
  %237 = mul i64 %234, %73, !dbg !4248
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !4248
  %239 = or i1 %232, %236, !dbg !4249
  call void @llvm.dbg.value(metadata i1 %239, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4243
  call void @llvm.dbg.value(metadata i32 0, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4243
  br label %272, !dbg !4204

240:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #25, !dbg !4250
  call void @llvm.dbg.value(metadata i32 undef, metadata !4187, metadata !DIExpression()) #25, !dbg !4250
  call void @llvm.dbg.value(metadata i32 0, metadata !4181, metadata !DIExpression()) #25, !dbg !4250
  call void @llvm.dbg.value(metadata i32 3, metadata !4188, metadata !DIExpression()) #25, !dbg !4250
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4252
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4252
  %241 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #25, !dbg !4254
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !4254
  %243 = mul i64 %49, %73, !dbg !4255
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4255
  call void @llvm.dbg.value(metadata i1 %242, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4250
  call void @llvm.dbg.value(metadata i32 2, metadata !4188, metadata !DIExpression()) #25, !dbg !4250
  %245 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %244) #25, !dbg !4254
  %246 = extractvalue { i64, i1 } %245, 1, !dbg !4254
  %247 = mul i64 %244, %73, !dbg !4255
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4255
  %249 = or i1 %242, %246, !dbg !4256
  call void @llvm.dbg.value(metadata i1 %249, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4250
  call void @llvm.dbg.value(metadata i32 1, metadata !4188, metadata !DIExpression()) #25, !dbg !4250
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %248) #25, !dbg !4254
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4254
  %252 = mul i64 %248, %73, !dbg !4255
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4255
  %254 = or i1 %249, %251, !dbg !4256
  call void @llvm.dbg.value(metadata i1 %254, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4250
  call void @llvm.dbg.value(metadata i32 0, metadata !4188, metadata !DIExpression()) #25, !dbg !4250
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #25, !dbg !4254
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4254
  %257 = mul i64 %253, %73, !dbg !4255
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4255
  %259 = or i1 %254, %256, !dbg !4256
  call void @llvm.dbg.value(metadata i1 %259, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4250
  call void @llvm.dbg.value(metadata i32 0, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4250
  br label %272, !dbg !4204

260:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4257
  call void @llvm.dbg.value(metadata i32 2, metadata !4197, metadata !DIExpression()) #25, !dbg !4257
  %261 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #25, !dbg !4259
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !4259
  %263 = shl i64 %49, 1, !dbg !4260
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !4260
  call void @llvm.dbg.value(metadata i1 %262, metadata !4115, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4159
  br label %272, !dbg !4261

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !4105, metadata !DIExpression()), !dbg !4116
  store i64 %49, i64* %3, align 8, !dbg !4262, !tbaa !3080
  %266 = or i32 %48, 2, !dbg !4263
  br label %285, !dbg !4264

267:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !4186, metadata !DIExpression()) #25, !dbg !4265
  call void @llvm.dbg.value(metadata i32 undef, metadata !4187, metadata !DIExpression()) #25, !dbg !4265
  call void @llvm.dbg.value(metadata i32 0, metadata !4181, metadata !DIExpression()) #25, !dbg !4265
  call void @llvm.dbg.value(metadata i32 undef, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4265
  call void @llvm.dbg.value(metadata i64* undef, metadata !4192, metadata !DIExpression()) #25, !dbg !4267
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression()) #25, !dbg !4267
  %268 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #25, !dbg !4269
  %269 = extractvalue { i64, i1 } %268, 1, !dbg !4269
  call void @llvm.dbg.value(metadata i32 undef, metadata !4188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #25, !dbg !4265
  call void @llvm.dbg.value(metadata i1 %269, metadata !4181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !4265
  %270 = mul i64 %49, %73, !dbg !4270
  %271 = select i1 %269, i64 -1, i64 %270, !dbg !4270
  br label %272, !dbg !4204

272:                                              ; preds = %75, %110, %240, %150, %230, %267, %215, %175, %205, %210, %260, %72
  %273 = phi i64 [ %264, %260 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %271, %267 ], [ %238, %230 ], [ %173, %150 ], [ %258, %240 ], [ %148, %110 ], [ %108, %75 ], !dbg !4116
  %274 = phi i1 [ %262, %260 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %269, %267 ], [ %239, %230 ], [ %174, %150 ], [ %259, %240 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !4271
  call void @llvm.dbg.value(metadata i32 %275, metadata !4115, metadata !DIExpression()), !dbg !4159
  %276 = or i32 %48, %275, !dbg !4204
  call void @llvm.dbg.value(metadata i32 %276, metadata !4106, metadata !DIExpression()), !dbg !4116
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4272
  store i8* %277, i8** %25, align 8, !dbg !4272, !tbaa !694
  %278 = load i8, i8* %277, align 1, !dbg !4273, !tbaa !874
  %279 = icmp eq i8 %278, 0, !dbg !4273
  %280 = or i32 %276, 2
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !4275
  call void @llvm.dbg.value(metadata i32 %281, metadata !4106, metadata !DIExpression()), !dbg !4116
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !4276
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !4277
  call void @llvm.dbg.value(metadata i32 %284, metadata !4106, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.value(metadata i64 %283, metadata !4105, metadata !DIExpression()), !dbg !4116
  store i64 %283, i64* %3, align 8, !dbg !4278, !tbaa !3080
  br label %285, !dbg !4279

285:                                              ; preds = %56, %265, %40, %31, %33, %36, %24, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %266, %265 ], !dbg !4116
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #25, !dbg !4280
  ret i32 %286, !dbg !4280
}

; Function Attrs: nounwind
declare !dbg !4281 i64 @strtoumax(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !4285 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4287, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i64 %1, metadata !4288, metadata !DIExpression()), !dbg !4293
  %3 = icmp eq i64 %0, 0, !dbg !4294
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !4295
  br i1 %5, label %11, label %6, !dbg !4295

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4290, metadata !DIExpression()), !dbg !4296
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4297
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4297
  br i1 %8, label %9, label %11, !dbg !4299

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #29, !dbg !4300
  store i32 12, i32* %10, align 4, !dbg !4302, !tbaa !864
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4287, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i64 %12, metadata !4288, metadata !DIExpression()), !dbg !4293
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #25, !dbg !4303
  call void @llvm.dbg.value(metadata i8* %14, metadata !4289, metadata !DIExpression()), !dbg !4293
  br label %15, !dbg !4304

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4293
  ret i8* %16, !dbg !4305
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4306 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4344, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 0, metadata !4345, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 0, metadata !4347, metadata !DIExpression()), !dbg !4348
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !4349
  call void @llvm.dbg.value(metadata i32 %2, metadata !4346, metadata !DIExpression()), !dbg !4348
  %3 = icmp slt i32 %2, 0, !dbg !4350
  br i1 %3, label %4, label %6, !dbg !4352

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4353
  br label %24, !dbg !4354

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !4355
  %8 = icmp eq i32 %7, 0, !dbg !4355
  br i1 %8, label %13, label %9, !dbg !4357

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !4358
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #25, !dbg !4359
  %12 = icmp eq i64 %11, -1, !dbg !4360
  br i1 %12, label %16, label %13, !dbg !4361

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #25, !dbg !4362
  %15 = icmp eq i32 %14, 0, !dbg !4362
  br i1 %15, label %16, label %18, !dbg !4363

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4345, metadata !DIExpression()), !dbg !4348
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4364
  call void @llvm.dbg.value(metadata i32 %21, metadata !4347, metadata !DIExpression()), !dbg !4348
  br label %24, !dbg !4365

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #29, !dbg !4366
  %20 = load i32, i32* %19, align 4, !dbg !4366, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %20, metadata !4345, metadata !DIExpression()), !dbg !4348
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4364
  call void @llvm.dbg.value(metadata i32 %21, metadata !4347, metadata !DIExpression()), !dbg !4348
  %22 = icmp eq i32 %20, 0, !dbg !4367
  br i1 %22, label %24, label %23, !dbg !4365

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4369, !tbaa !864
  call void @llvm.dbg.value(metadata i32 -1, metadata !4347, metadata !DIExpression()), !dbg !4348
  br label %24, !dbg !4371

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4348
  ret i32 %25, !dbg !4372
}

; Function Attrs: nofree nounwind
declare !dbg !4373 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4376 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4380 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4418, metadata !DIExpression()), !dbg !4419
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4420
  br i1 %2, label %6, label %3, !dbg !4422

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !4423
  %5 = icmp eq i32 %4, 0, !dbg !4423
  br i1 %5, label %6, label %8, !dbg !4424

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4425
  br label %17, !dbg !4426

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4427, metadata !DIExpression()) #25, !dbg !4432
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4434
  %10 = load i32, i32* %9, align 8, !dbg !4434, !tbaa !4436
  %11 = and i32 %10, 256, !dbg !4437
  %12 = icmp eq i32 %11, 0, !dbg !4437
  br i1 %12, label %15, label %13, !dbg !4438

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #25, !dbg !4439
  br label %15, !dbg !4439

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4440
  br label %17, !dbg !4441

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4419
  ret i32 %18, !dbg !4442
}

; Function Attrs: nofree nounwind
declare !dbg !4443 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4446 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4484, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i64 %1, metadata !4485, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i32 %2, metadata !4486, metadata !DIExpression()), !dbg !4490
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4491
  %5 = load i8*, i8** %4, align 8, !dbg !4491, !tbaa !1200
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4492
  %7 = load i8*, i8** %6, align 8, !dbg !4492, !tbaa !1199
  %8 = icmp eq i8* %5, %7, !dbg !4493
  br i1 %8, label %9, label %28, !dbg !4494

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4495
  %11 = load i8*, i8** %10, align 8, !dbg !4495, !tbaa !1106
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4496
  %13 = load i8*, i8** %12, align 8, !dbg !4496, !tbaa !4497
  %14 = icmp eq i8* %11, %13, !dbg !4498
  br i1 %14, label %15, label %28, !dbg !4499

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4500
  %17 = load i8*, i8** %16, align 8, !dbg !4500, !tbaa !4501
  %18 = icmp eq i8* %17, null, !dbg !4502
  br i1 %18, label %19, label %28, !dbg !4503

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !4504
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #25, !dbg !4505
  call void @llvm.dbg.value(metadata i64 %21, metadata !4487, metadata !DIExpression()), !dbg !4506
  %22 = icmp eq i64 %21, -1, !dbg !4507
  br i1 %22, label %30, label %23, !dbg !4509

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4510
  %25 = load i32, i32* %24, align 8, !dbg !4511, !tbaa !4436
  %26 = and i32 %25, -17, !dbg !4511
  store i32 %26, i32* %24, align 8, !dbg !4511, !tbaa !4436
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4512
  store i64 %21, i64* %27, align 8, !dbg !4513, !tbaa !4514
  br label %30, !dbg !4515

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4516
  br label %30, !dbg !4517

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4490
  ret i32 %31, !dbg !4518
}

; Function Attrs: nofree nounwind
declare !dbg !4519 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4522 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4538, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i8* %1, metadata !4539, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i64 %2, metadata !4540, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4541, metadata !DIExpression()), !dbg !4547
  %6 = bitcast i32* %5 to i8*, !dbg !4548
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #25, !dbg !4548
  %7 = icmp eq i32* %0, null, !dbg !4549
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4551
  call void @llvm.dbg.value(metadata i32* %8, metadata !4538, metadata !DIExpression()), !dbg !4547
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #25, !dbg !4552
  call void @llvm.dbg.value(metadata i64 %9, metadata !4542, metadata !DIExpression()), !dbg !4547
  %10 = icmp ugt i64 %9, -3, !dbg !4553
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !4554
  br i1 %12, label %13, label %18, !dbg !4554

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #25, !dbg !4555
  br i1 %14, label %18, label %15, !dbg !4556

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4557, !tbaa !874
  call void @llvm.dbg.value(metadata i8 %16, metadata !4544, metadata !DIExpression()), !dbg !4558
  %17 = zext i8 %16 to i32, !dbg !4559
  store i32 %17, i32* %8, align 4, !dbg !4560, !tbaa !864
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4547
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #25, !dbg !4561
  ret i64 %19, !dbg !4561
}

; Function Attrs: nounwind
declare !dbg !4562 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4566 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4604, metadata !DIExpression()), !dbg !4609
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #25, !dbg !4610
  call void @llvm.dbg.value(metadata i1 undef, metadata !4605, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4609
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4611, metadata !DIExpression()), !dbg !4614
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4616
  %4 = load i32, i32* %3, align 8, !dbg !4616, !tbaa !4436
  %5 = and i32 %4, 32, !dbg !4617
  %6 = icmp eq i32 %5, 0, !dbg !4617
  call void @llvm.dbg.value(metadata i1 %6, metadata !4607, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4609
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #25, !dbg !4618
  %8 = icmp eq i32 %7, 0, !dbg !4619
  call void @llvm.dbg.value(metadata i1 %8, metadata !4608, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4609
  br i1 %6, label %9, label %19, !dbg !4620

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4622
  call void @llvm.dbg.value(metadata i1 %10, metadata !4605, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4609
  %11 = or i1 %10, %8, !dbg !4623
  %12 = xor i1 %8, true, !dbg !4623
  %13 = sext i1 %12 to i32, !dbg !4623
  br i1 %11, label %22, label %14, !dbg !4623

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #29, !dbg !4624
  %16 = load i32, i32* %15, align 4, !dbg !4624, !tbaa !864
  %17 = icmp ne i32 %16, 9, !dbg !4625
  %18 = sext i1 %17 to i32, !dbg !4626
  br label %22, !dbg !4626

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4627

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #29, !dbg !4629
  store i32 0, i32* %21, align 4, !dbg !4631, !tbaa !864
  br label %22, !dbg !4629

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4609
  ret i32 %23, !dbg !4632
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4633 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4635, metadata !DIExpression()), !dbg !4640
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4641
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #25, !dbg !4641
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4636, metadata !DIExpression()), !dbg !4642
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #25, !dbg !4643
  %5 = icmp eq i32 %4, 0, !dbg !4643
  br i1 %5, label %6, label %13, !dbg !4645

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4646
  %8 = load i16, i16* %7, align 16, !dbg !4646
  %9 = icmp eq i16 %8, 67, !dbg !4646
  br i1 %9, label %13, label %10, !dbg !4647

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.148, i64 0, i64 0), i64 6), !dbg !4648
  %12 = icmp ne i32 %11, 0, !dbg !4649
  br label %13, !dbg !4647

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4640
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #25, !dbg !4650
  ret i1 %14, !dbg !4650
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4651 {
  %1 = tail call i8* @nl_langinfo(i32 14) #25, !dbg !4656
  call void @llvm.dbg.value(metadata i8* %1, metadata !4655, metadata !DIExpression()), !dbg !4657
  %2 = icmp eq i8* %1, null, !dbg !4658
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.151, i64 0, i64 0), i8* %1, !dbg !4660
  call void @llvm.dbg.value(metadata i8* %3, metadata !4655, metadata !DIExpression()), !dbg !4657
  %4 = load i8, i8* %3, align 1, !dbg !4661, !tbaa !874
  %5 = icmp eq i8 %4, 0, !dbg !4665
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.152, i64 0, i64 0), i8* %3, !dbg !4666
  call void @llvm.dbg.value(metadata i8* %6, metadata !4655, metadata !DIExpression()), !dbg !4657
  ret i8* %6, !dbg !4667
}

; Function Attrs: nounwind
declare !dbg !4668 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4671 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4675, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.value(metadata i8* %1, metadata !4676, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.value(metadata i64 %2, metadata !4677, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.value(metadata i32 %0, metadata !4679, metadata !DIExpression()) #25, !dbg !4688
  call void @llvm.dbg.value(metadata i8* %1, metadata !4682, metadata !DIExpression()) #25, !dbg !4688
  call void @llvm.dbg.value(metadata i64 %2, metadata !4683, metadata !DIExpression()) #25, !dbg !4688
  call void @llvm.dbg.value(metadata i32 %0, metadata !4690, metadata !DIExpression()) #25, !dbg !4696
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !4698
  call void @llvm.dbg.value(metadata i8* %4, metadata !4695, metadata !DIExpression()) #25, !dbg !4696
  call void @llvm.dbg.value(metadata i8* %4, metadata !4684, metadata !DIExpression()) #25, !dbg !4688
  %5 = icmp eq i8* %4, null, !dbg !4699
  br i1 %5, label %6, label %9, !dbg !4700

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4701
  br i1 %7, label %19, label %8, !dbg !4704

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4705, !tbaa !874
  br label %19, !dbg !4706

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #26, !dbg !4707
  call void @llvm.dbg.value(metadata i64 %10, metadata !4685, metadata !DIExpression()) #25, !dbg !4708
  %11 = icmp ult i64 %10, %2, !dbg !4709
  br i1 %11, label %12, label %14, !dbg !4711

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4712
  call void @llvm.dbg.value(metadata i8* %1, metadata !4714, metadata !DIExpression()) #25, !dbg !4719
  call void @llvm.dbg.value(metadata i8* %4, metadata !4717, metadata !DIExpression()) #25, !dbg !4719
  call void @llvm.dbg.value(metadata i64 %13, metadata !4718, metadata !DIExpression()) #25, !dbg !4719
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #25, !dbg !4721
  br label %19, !dbg !4722

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4723
  br i1 %15, label %19, label %16, !dbg !4726

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4727
  call void @llvm.dbg.value(metadata i8* %1, metadata !4714, metadata !DIExpression()) #25, !dbg !4729
  call void @llvm.dbg.value(metadata i8* %4, metadata !4717, metadata !DIExpression()) #25, !dbg !4729
  call void @llvm.dbg.value(metadata i64 %17, metadata !4718, metadata !DIExpression()) #25, !dbg !4729
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #25, !dbg !4731
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4732
  store i8 0, i8* %18, align 1, !dbg !4733, !tbaa !874
  br label %19, !dbg !4734

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4735
  ret i32 %20, !dbg !4736
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4737 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4739, metadata !DIExpression()), !dbg !4740
  call void @llvm.dbg.value(metadata i32 %0, metadata !4690, metadata !DIExpression()) #25, !dbg !4741
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !4743
  call void @llvm.dbg.value(metadata i8* %2, metadata !4695, metadata !DIExpression()) #25, !dbg !4741
  ret i8* %2, !dbg !4744
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
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree nounwind }
attributes #15 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
attributes #28 = { noreturn }
attributes #29 = { nounwind readnone willreturn }
attributes #30 = { cold }

!llvm.dbg.cu = !{!2, !146, !152, !159, !227, !165, !171, !230, !221, !237, !254, !256, !267, !271, !273, !275, !277, !279, !282, !284, !286, !675}
!llvm.ident = !{!677, !677, !677, !677, !677, !677, !677, !677, !677, !677, !677, !677, !677, !677, !677, !677, !677, !677, !677, !677, !677, !677}
!llvm.module.flags = !{!678, !679, !680, !681, !682}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "uniform", scope: !2, file: !3, line: 183, type: !62, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !44, globals: !59, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/fmt.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20, !29}
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
!44 = !{!7, !45, !47, !48, !49, !50, !51, !52, !55, !57}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !53, line: 46, baseType: !54)
!53 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!54 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "COST", file: !3, line: 64, baseType: !58)
!58 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!59 = !{!60, !63, !65, !67, !68, !70, !72, !74, !76, !78, !80, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !117, !119, !138}
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "crown", scope: !2, file: !3, line: 174, type: !62, isLocal: true, isDefinition: true)
!62 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "tagged", scope: !2, file: !3, line: 177, type: !62, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "split", scope: !2, file: !3, line: 180, type: !62, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "prefix", scope: !2, file: !3, line: 186, type: !55, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "max_width", scope: !2, file: !3, line: 190, type: !50, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "prefix_full_length", scope: !2, file: !3, line: 195, type: !50, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "prefix_lead_space", scope: !2, file: !3, line: 198, type: !50, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "prefix_length", scope: !2, file: !3, line: 201, type: !50, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "goal_width", scope: !2, file: !3, line: 204, type: !50, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 302, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 2560, elements: !92)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !85, line: 50, size: 256, elements: !86)
!85 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!86 = !{!87, !88, !89, !91}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !84, file: !85, line: 52, baseType: !55, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !84, file: !85, line: 55, baseType: !50, size: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !84, file: !85, line: 56, baseType: !90, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !84, file: !85, line: 57, baseType: !50, size: 32, offset: 192)
!92 = !{!93}
!93 = !DISubrange(count: 10)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "tabs", scope: !2, file: !3, line: 232, type: !62, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "other_indent", scope: !2, file: !3, line: 241, type: !50, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "in_column", scope: !2, file: !3, line: 209, type: !50, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "next_prefix_indent", scope: !2, file: !3, line: 255, type: !50, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "next_char", scope: !2, file: !3, line: 251, type: !50, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "last_line_length", scope: !2, file: !3, line: 260, type: !50, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "out_column", scope: !2, file: !3, line: 212, type: !50, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "prefix_indent", scope: !2, file: !3, line: 235, type: !50, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "first_indent", scope: !2, file: !3, line: 238, type: !50, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "parabuf", scope: !2, file: !3, line: 216, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 40000, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 5000)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "wptr", scope: !2, file: !3, line: 219, type: !45, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "unused_word_type", scope: !2, file: !3, line: 223, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 320000, elements: !136)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "WORD", file: !3, line: 129, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Word", file: !3, line: 131, size: 320, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !123, file: !3, line: 136, baseType: !55, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !123, file: !3, line: 137, baseType: !50, size: 32, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !123, file: !3, line: 138, baseType: !50, size: 32, offset: 96)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "paren", scope: !123, file: !3, line: 139, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !123, file: !3, line: 140, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "punct", scope: !123, file: !3, line: 141, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !123, file: !3, line: 142, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !123, file: !3, line: 146, baseType: !50, size: 32, offset: 160)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "best_cost", scope: !123, file: !3, line: 147, baseType: !57, size: 64, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next_break", scope: !123, file: !3, line: 148, baseType: !135, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!136 = !{!137}
!137 = !DISubrange(count: 1000)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "word_limit", scope: !2, file: !3, line: 228, type: !135, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!141 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!142 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!143 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "Version", scope: !146, file: !147, line: 2, type: !55, isLocal: false, isDefinition: true)
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, globals: !149, splitDebugInlining: false, nameTableKind: None)
!147 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!148 = !{}
!149 = !{!144}
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "file_name", scope: !152, file: !153, line: 46, type: !55, isLocal: true, isDefinition: true)
!152 = distinct !DICompileUnit(language: DW_LANG_C99, file: !153, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, globals: !154, splitDebugInlining: false, nameTableKind: None)
!153 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!154 = !{!150, !155}
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !152, file: !153, line: 56, type: !62, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "exit_failure", scope: !159, file: !160, line: 24, type: !162, isLocal: false, isDefinition: true)
!159 = distinct !DICompileUnit(language: DW_LANG_C99, file: !160, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, globals: !161, splitDebugInlining: false, nameTableKind: None)
!160 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!161 = !{!157}
!162 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !50)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "program_name", scope: !165, file: !166, line: 33, type: !55, isLocal: false, isDefinition: true)
!165 = distinct !DICompileUnit(language: DW_LANG_C99, file: !166, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !167, globals: !168, splitDebugInlining: false, nameTableKind: None)
!166 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!167 = !{!47, !45}
!168 = !{!163}
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !171, file: !172, line: 85, type: !215, isLocal: false, isDefinition: true)
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !173, retainedTypes: !179, globals: !180, splitDebugInlining: false, nameTableKind: None)
!172 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!173 = !{!5, !174, !29}
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !175)
!175 = !{!176, !177, !178}
!176 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!177 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!178 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!179 = !{!50, !51, !52, !45}
!180 = !{!169, !181, !185, !197, !199, !204, !211, !213}
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !171, file: !172, line: 101, type: !183, isLocal: false, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 320, elements: !92)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !171, file: !172, line: 1052, type: !187, isLocal: false, isDefinition: true)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !172, line: 65, size: 448, elements: !188)
!188 = !{!189, !190, !191, !195, !196}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !187, file: !172, line: 68, baseType: !5, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !187, file: !172, line: 71, baseType: !50, size: 32, offset: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !187, file: !172, line: 75, baseType: !192, size: 256, offset: 64)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 8)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !187, file: !172, line: 78, baseType: !55, size: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !187, file: !172, line: 81, baseType: !55, size: 64, offset: 384)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !171, file: !172, line: 116, type: !187, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "slot0", scope: !171, file: !172, line: 842, type: !201, isLocal: true, isDefinition: true)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2048, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 256)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "slotvec", scope: !171, file: !172, line: 845, type: !206, isLocal: true, isDefinition: true)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !172, line: 834, size: 128, elements: !208)
!208 = !{!209, !210}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !207, file: !172, line: 836, baseType: !52, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !207, file: !172, line: 837, baseType: !45, size: 64, offset: 64)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "nslots", scope: !171, file: !172, line: 843, type: !50, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "slotvec0", scope: !171, file: !172, line: 844, type: !207, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 704, elements: !217)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!217 = !{!218}
!218 = !DISubrange(count: 11)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !221, file: !222, line: 26, type: !224, isLocal: false, isDefinition: true)
!221 = distinct !DICompileUnit(language: DW_LANG_C99, file: !222, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, globals: !223, splitDebugInlining: false, nameTableKind: None)
!222 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!223 = !{!219}
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 376, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 47)
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !229, splitDebugInlining: false, nameTableKind: None)
!228 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!229 = !{!20}
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !236, splitDebugInlining: false, nameTableKind: None)
!231 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!232 = !{!233}
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !231, line: 40, baseType: !7, size: 32, elements: !234)
!234 = !{!235}
!235 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!236 = !{!47}
!237 = distinct !DICompileUnit(language: DW_LANG_C99, file: !238, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !239, retainedTypes: !253, splitDebugInlining: false, nameTableKind: None)
!238 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!239 = !{!240}
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !242, file: !241, line: 186, baseType: !7, size: 32, elements: !251)
!241 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!242 = distinct !DISubprogram(name: "x2nrealloc", scope: !241, file: !241, line: 174, type: !243, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !246)
!243 = !DISubroutineType(types: !244)
!244 = !{!47, !47, !245, !52}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!246 = !{!247, !248, !249, !250}
!247 = !DILocalVariable(name: "p", arg: 1, scope: !242, file: !241, line: 174, type: !47)
!248 = !DILocalVariable(name: "pn", arg: 2, scope: !242, file: !241, line: 174, type: !245)
!249 = !DILocalVariable(name: "s", arg: 3, scope: !242, file: !241, line: 174, type: !52)
!250 = !DILocalVariable(name: "n", scope: !242, file: !241, line: 176, type: !52)
!251 = !{!252}
!252 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!253 = !{!52, !45, !47}
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, splitDebugInlining: false, nameTableKind: None)
!255 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!256 = distinct !DICompileUnit(language: DW_LANG_C99, file: !257, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !258, splitDebugInlining: false, nameTableKind: None)
!257 = !DIFile(filename: "lib/xdectoumax.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!258 = !{!259}
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !260, line: 25, baseType: !7, size: 32, elements: !261)
!260 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!261 = !{!262, !263, !264, !265, !266}
!262 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!263 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!264 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!265 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!266 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!267 = distinct !DICompileUnit(language: DW_LANG_C99, file: !268, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !269, retainedTypes: !270, splitDebugInlining: false, nameTableKind: None)
!268 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!269 = !{!259, !29}
!270 = !{!50, !51}
!271 = distinct !DICompileUnit(language: DW_LANG_C99, file: !272, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !236, splitDebugInlining: false, nameTableKind: None)
!272 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!273 = distinct !DICompileUnit(language: DW_LANG_C99, file: !274, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, splitDebugInlining: false, nameTableKind: None)
!274 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!275 = distinct !DICompileUnit(language: DW_LANG_C99, file: !276, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !236, splitDebugInlining: false, nameTableKind: None)
!276 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!277 = distinct !DICompileUnit(language: DW_LANG_C99, file: !278, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !236, splitDebugInlining: false, nameTableKind: None)
!278 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!279 = distinct !DICompileUnit(language: DW_LANG_C99, file: !280, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !281, splitDebugInlining: false, nameTableKind: None)
!280 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!281 = !{!52}
!282 = distinct !DICompileUnit(language: DW_LANG_C99, file: !283, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, splitDebugInlining: false, nameTableKind: None)
!283 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!284 = distinct !DICompileUnit(language: DW_LANG_C99, file: !285, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, splitDebugInlining: false, nameTableKind: None)
!285 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!286 = distinct !DICompileUnit(language: DW_LANG_C99, file: !287, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !288, retainedTypes: !236, splitDebugInlining: false, nameTableKind: None)
!287 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!288 = !{!289}
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !290, line: 41, baseType: !7, size: 32, elements: !291)
!290 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!291 = !{!292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674}
!292 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!293 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!294 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!295 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!296 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!297 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!298 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!299 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!300 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!301 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!302 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!303 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!304 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!305 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!306 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!307 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!308 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!309 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!310 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!311 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!312 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!313 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!314 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!315 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!316 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!317 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!318 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!319 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!320 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!321 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!322 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!323 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!324 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!325 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!326 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!327 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!328 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!329 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!330 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!331 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!332 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!333 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!334 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!335 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!336 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!337 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!338 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!339 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!340 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!341 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!400 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!403 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!404 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!405 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!406 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!407 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!408 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!409 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!410 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!411 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!412 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!413 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!414 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!487 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!560 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!561 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!562 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!563 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!564 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!565 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!566 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!567 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!568 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!569 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!570 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!571 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!572 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!573 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!574 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!576 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!577 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!578 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!579 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!580 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!581 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!607 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!608 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!609 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!610 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!611 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!616 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!617 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!618 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!619 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!675 = distinct !DICompileUnit(language: DW_LANG_C99, file: !676, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !236, splitDebugInlining: false, nameTableKind: None)
!676 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!677 = !{!"clang version 12.0.1"}
!678 = !{i32 7, !"Dwarf Version", i32 4}
!679 = !{i32 2, !"Debug Info Version", i32 3}
!680 = !{i32 1, !"wchar_size", i32 4}
!681 = !{i32 7, !"PIC Level", i32 2}
!682 = !{i32 7, !"PIE Level", i32 2}
!683 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 263, type: !684, scopeLine: 264, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !686)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !50}
!686 = !{!687}
!687 = !DILocalVariable(name: "status", arg: 1, scope: !683, file: !3, line: 263, type: !50)
!688 = !DILocation(line: 0, scope: !683)
!689 = !DILocation(line: 265, column: 14, scope: !690)
!690 = distinct !DILexicalBlock(scope: !683, file: !3, line: 265, column: 7)
!691 = !DILocation(line: 265, column: 7, scope: !683)
!692 = !DILocation(line: 266, column: 5, scope: !693)
!693 = distinct !DILexicalBlock(scope: !690, file: !3, line: 266, column: 5)
!694 = !{!695, !695, i64 0}
!695 = !{!"any pointer", !696, i64 0}
!696 = !{!"omnipotent char", !697, i64 0}
!697 = !{!"Simple C/C++ TBAA"}
!698 = !DILocation(line: 269, column: 7, scope: !699)
!699 = distinct !DILexicalBlock(scope: !690, file: !3, line: 268, column: 5)
!700 = !DILocation(line: 270, column: 7, scope: !699)
!701 = !DILocation(line: 583, column: 3, scope: !702, inlinedAt: !706)
!702 = distinct !DISubprogram(name: "emit_stdin_note", scope: !703, file: !703, line: 581, type: !704, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !148)
!703 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!704 = !DISubroutineType(types: !705)
!705 = !{null}
!706 = distinct !DILocation(line: 275, column: 7, scope: !699)
!707 = !DILocation(line: 590, column: 3, scope: !708, inlinedAt: !709)
!708 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !703, file: !703, line: 588, type: !704, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !148)
!709 = distinct !DILocation(line: 276, column: 7, scope: !699)
!710 = !DILocation(line: 278, column: 7, scope: !699)
!711 = !DILocation(line: 287, column: 7, scope: !699)
!712 = !DILocation(line: 293, column: 7, scope: !699)
!713 = !DILocation(line: 294, column: 7, scope: !699)
!714 = !DILocalVariable(name: "program", arg: 1, scope: !715, file: !703, line: 634, type: !55)
!715 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !703, file: !703, line: 634, type: !716, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !718)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !55}
!718 = !{!714, !719, !728, !729, !731}
!719 = !DILocalVariable(name: "infomap", scope: !715, file: !703, line: 636, type: !720)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 896, elements: !726)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !715, file: !703, line: 636, size: 128, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !722, file: !703, line: 636, baseType: !55, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !722, file: !703, line: 636, baseType: !55, size: 64, offset: 64)
!726 = !{!727}
!727 = !DISubrange(count: 7)
!728 = !DILocalVariable(name: "node", scope: !715, file: !703, line: 646, type: !55)
!729 = !DILocalVariable(name: "map_prog", scope: !715, file: !703, line: 647, type: !730)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!731 = !DILocalVariable(name: "lc_messages", scope: !715, file: !703, line: 659, type: !55)
!732 = !DILocation(line: 0, scope: !715, inlinedAt: !733)
!733 = distinct !DILocation(line: 295, column: 7, scope: !699)
!734 = !DILocation(line: 636, column: 3, scope: !715, inlinedAt: !733)
!735 = !DILocation(line: 636, column: 67, scope: !715, inlinedAt: !733)
!736 = !DILocation(line: 647, column: 36, scope: !715, inlinedAt: !733)
!737 = !DILocation(line: 649, column: 3, scope: !715, inlinedAt: !733)
!738 = !DILocation(line: 649, column: 33, scope: !715, inlinedAt: !733)
!739 = !DILocation(line: 650, column: 13, scope: !715, inlinedAt: !733)
!740 = !DILocation(line: 649, column: 20, scope: !715, inlinedAt: !733)
!741 = !{!742, !695, i64 0}
!742 = !{!"infomap", !695, i64 0, !695, i64 8}
!743 = !DILocation(line: 649, column: 10, scope: !715, inlinedAt: !733)
!744 = !DILocation(line: 649, column: 28, scope: !715, inlinedAt: !733)
!745 = distinct !{!745, !737, !739, !746}
!746 = !{!"llvm.loop.mustprogress"}
!747 = !DILocation(line: 652, column: 17, scope: !748, inlinedAt: !733)
!748 = distinct !DILexicalBlock(scope: !715, file: !703, line: 652, column: 7)
!749 = !{!742, !695, i64 8}
!750 = !DILocation(line: 652, column: 7, scope: !748, inlinedAt: !733)
!751 = !DILocation(line: 652, column: 7, scope: !715, inlinedAt: !733)
!752 = !DILocation(line: 655, column: 3, scope: !715, inlinedAt: !733)
!753 = !DILocation(line: 659, column: 29, scope: !715, inlinedAt: !733)
!754 = !DILocation(line: 660, column: 7, scope: !755, inlinedAt: !733)
!755 = distinct !DILexicalBlock(scope: !715, file: !703, line: 660, column: 7)
!756 = !DILocation(line: 660, column: 19, scope: !755, inlinedAt: !733)
!757 = !DILocation(line: 660, column: 22, scope: !755, inlinedAt: !733)
!758 = !DILocation(line: 660, column: 7, scope: !715, inlinedAt: !733)
!759 = !DILocation(line: 666, column: 7, scope: !760, inlinedAt: !733)
!760 = distinct !DILexicalBlock(scope: !755, file: !703, line: 661, column: 5)
!761 = !DILocation(line: 668, column: 5, scope: !760, inlinedAt: !733)
!762 = !DILocation(line: 669, column: 3, scope: !715, inlinedAt: !733)
!763 = !DILocation(line: 671, column: 3, scope: !715, inlinedAt: !733)
!764 = !DILocation(line: 673, column: 1, scope: !715, inlinedAt: !733)
!765 = !DILocation(line: 297, column: 3, scope: !683)
!766 = !DISubprogram(name: "dcgettext", scope: !767, file: !767, line: 51, type: !768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !148)
!767 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!768 = !DISubroutineType(types: !769)
!769 = !{!45, !55, !55, !50}
!770 = !DISubprogram(name: "fputs_unlocked", scope: !771, file: !771, line: 667, type: !772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !148)
!771 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!772 = !DISubroutineType(types: !773)
!773 = !{!50, !55, !774}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !776, line: 49, size: 1728, elements: !777)
!776 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!777 = !{!778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !793, !794, !795, !796, !799, !800, !802, !806, !809, !811, !814, !817, !818, !819, !820, !821}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !775, file: !776, line: 51, baseType: !50, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !775, file: !776, line: 54, baseType: !45, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !775, file: !776, line: 55, baseType: !45, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !775, file: !776, line: 56, baseType: !45, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !775, file: !776, line: 57, baseType: !45, size: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !775, file: !776, line: 58, baseType: !45, size: 64, offset: 320)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !775, file: !776, line: 59, baseType: !45, size: 64, offset: 384)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !775, file: !776, line: 60, baseType: !45, size: 64, offset: 448)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !775, file: !776, line: 61, baseType: !45, size: 64, offset: 512)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !775, file: !776, line: 64, baseType: !45, size: 64, offset: 576)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !775, file: !776, line: 65, baseType: !45, size: 64, offset: 640)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !775, file: !776, line: 66, baseType: !45, size: 64, offset: 704)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !775, file: !776, line: 68, baseType: !791, size: 64, offset: 768)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !776, line: 36, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !775, file: !776, line: 70, baseType: !774, size: 64, offset: 832)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !775, file: !776, line: 72, baseType: !50, size: 32, offset: 896)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !775, file: !776, line: 73, baseType: !50, size: 32, offset: 928)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !775, file: !776, line: 74, baseType: !797, size: 64, offset: 960)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !798, line: 152, baseType: !58)
!798 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !775, file: !776, line: 77, baseType: !51, size: 16, offset: 1024)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !775, file: !776, line: 78, baseType: !801, size: 8, offset: 1040)
!801 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !775, file: !776, line: 79, baseType: !803, size: 8, offset: 1048)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, elements: !804)
!804 = !{!805}
!805 = !DISubrange(count: 1)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !775, file: !776, line: 81, baseType: !807, size: 64, offset: 1088)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !776, line: 43, baseType: null)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !775, file: !776, line: 89, baseType: !810, size: 64, offset: 1152)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !798, line: 153, baseType: !58)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !775, file: !776, line: 91, baseType: !812, size: 64, offset: 1216)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !776, line: 37, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !775, file: !776, line: 92, baseType: !815, size: 64, offset: 1280)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !776, line: 38, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !775, file: !776, line: 93, baseType: !774, size: 64, offset: 1344)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !775, file: !776, line: 94, baseType: !47, size: 64, offset: 1408)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !775, file: !776, line: 95, baseType: !52, size: 64, offset: 1472)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !775, file: !776, line: 96, baseType: !50, size: 32, offset: 1536)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !775, file: !776, line: 98, baseType: !822, size: 160, offset: 1568)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 160, elements: !823)
!823 = !{!824}
!824 = !DISubrange(count: 20)
!825 = !DISubprogram(name: "setlocale", scope: !826, file: !826, line: 122, type: !827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !148)
!826 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!827 = !DISubroutineType(types: !828)
!828 = !{!45, !50, !55}
!829 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 317, type: !830, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !833)
!830 = !DISubroutineType(types: !831)
!831 = !{!50, !50, !832}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!833 = !{!834, !835, !836, !837, !838, !839, !840, !846}
!834 = !DILocalVariable(name: "argc", arg: 1, scope: !829, file: !3, line: 317, type: !50)
!835 = !DILocalVariable(name: "argv", arg: 2, scope: !829, file: !3, line: 317, type: !832)
!836 = !DILocalVariable(name: "optchar", scope: !829, file: !3, line: 319, type: !50)
!837 = !DILocalVariable(name: "ok", scope: !829, file: !3, line: 320, type: !62)
!838 = !DILocalVariable(name: "max_width_option", scope: !829, file: !3, line: 321, type: !55)
!839 = !DILocalVariable(name: "goal_width_option", scope: !829, file: !3, line: 322, type: !55)
!840 = !DILocalVariable(name: "file", scope: !841, file: !3, line: 421, type: !45)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 420, column: 9)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 419, column: 7)
!843 = distinct !DILexicalBlock(scope: !844, file: !3, line: 419, column: 7)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 418, column: 5)
!845 = distinct !DILexicalBlock(scope: !829, file: !3, line: 415, column: 7)
!846 = !DILocalVariable(name: "in_stream", scope: !847, file: !3, line: 426, type: !849)
!847 = distinct !DILexicalBlock(scope: !848, file: !3, line: 425, column: 13)
!848 = distinct !DILexicalBlock(scope: !841, file: !3, line: 422, column: 15)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !851, line: 7, baseType: !775)
!851 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!852 = !DILocation(line: 0, scope: !829)
!853 = !DILocation(line: 325, column: 21, scope: !829)
!854 = !DILocation(line: 325, column: 3, scope: !829)
!855 = !DILocation(line: 326, column: 3, scope: !829)
!856 = !DILocation(line: 327, column: 3, scope: !829)
!857 = !DILocation(line: 328, column: 3, scope: !829)
!858 = !DILocation(line: 330, column: 3, scope: !829)
!859 = !DILocation(line: 332, column: 36, scope: !829)
!860 = !DILocation(line: 332, column: 26, scope: !829)
!861 = !DILocation(line: 332, column: 18, scope: !829)
!862 = !DILocation(line: 332, column: 9, scope: !829)
!863 = !DILocation(line: 333, column: 13, scope: !829)
!864 = !{!865, !865, i64 0}
!865 = !{!"int", !696, i64 0}
!866 = !DILocation(line: 334, column: 10, scope: !829)
!867 = !DILocation(line: 335, column: 58, scope: !829)
!868 = !DILocation(line: 335, column: 37, scope: !829)
!869 = !DILocation(line: 335, column: 17, scope: !829)
!870 = !DILocation(line: 337, column: 12, scope: !871)
!871 = distinct !DILexicalBlock(scope: !829, file: !3, line: 337, column: 7)
!872 = !DILocation(line: 337, column: 16, scope: !871)
!873 = !DILocation(line: 337, column: 19, scope: !871)
!874 = !{!696, !696, i64 0}
!875 = !DILocation(line: 337, column: 30, scope: !871)
!876 = !DILocation(line: 337, column: 37, scope: !871)
!877 = !DILocation(line: 337, column: 40, scope: !871)
!878 = !DILocation(line: 337, column: 7, scope: !829)
!879 = !DILocation(line: 343, column: 17, scope: !880)
!880 = distinct !DILexicalBlock(scope: !871, file: !3, line: 338, column: 5)
!881 = !DILocation(line: 343, column: 15, scope: !880)
!882 = !DILocation(line: 345, column: 11, scope: !880)
!883 = !DILocation(line: 346, column: 5, scope: !880)
!884 = !DILocation(line: 348, column: 3, scope: !829)
!885 = !DILocation(line: 348, column: 21, scope: !829)
!886 = !DILocation(line: 354, column: 13, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !3, line: 354, column: 13)
!888 = distinct !DILexicalBlock(scope: !829, file: !3, line: 352, column: 7)
!889 = !DILocation(line: 354, column: 13, scope: !888)
!890 = !DILocation(line: 355, column: 24, scope: !887)
!891 = !DILocation(line: 355, column: 11, scope: !887)
!892 = !DILocation(line: 358, column: 9, scope: !888)
!893 = !DILocation(line: 361, column: 15, scope: !888)
!894 = !DILocation(line: 362, column: 9, scope: !888)
!895 = !DILocation(line: 365, column: 15, scope: !888)
!896 = !DILocation(line: 366, column: 9, scope: !888)
!897 = !DILocation(line: 369, column: 16, scope: !888)
!898 = !DILocation(line: 370, column: 9, scope: !888)
!899 = !DILocation(line: 373, column: 17, scope: !888)
!900 = !DILocation(line: 374, column: 9, scope: !888)
!901 = !DILocation(line: 377, column: 28, scope: !888)
!902 = !DILocation(line: 378, column: 9, scope: !888)
!903 = distinct !{!903, !884, !904, !746}
!904 = !DILocation(line: 392, column: 7, scope: !829)
!905 = !DILocation(line: 381, column: 29, scope: !888)
!906 = !DILocation(line: 382, column: 9, scope: !888)
!907 = !DILocation(line: 385, column: 21, scope: !888)
!908 = !DILocalVariable(name: "p", arg: 1, scope: !909, file: !3, line: 454, type: !45)
!909 = distinct !DISubprogram(name: "set_prefix", scope: !3, file: !3, line: 454, type: !910, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !912)
!910 = !DISubroutineType(types: !911)
!911 = !{null, !45}
!912 = !{!908, !913}
!913 = !DILocalVariable(name: "s", scope: !909, file: !3, line: 456, type: !45)
!914 = !DILocation(line: 0, scope: !909, inlinedAt: !915)
!915 = distinct !DILocation(line: 385, column: 9, scope: !888)
!916 = !DILocation(line: 458, column: 21, scope: !909, inlinedAt: !915)
!917 = !DILocation(line: 459, column: 10, scope: !909, inlinedAt: !915)
!918 = !DILocation(line: 459, column: 13, scope: !909, inlinedAt: !915)
!919 = !DILocation(line: 459, column: 3, scope: !909, inlinedAt: !915)
!920 = !DILocation(line: 461, column: 24, scope: !921, inlinedAt: !915)
!921 = distinct !DILexicalBlock(scope: !909, file: !3, line: 460, column: 5)
!922 = !DILocation(line: 462, column: 8, scope: !921, inlinedAt: !915)
!923 = distinct !{!923, !919, !924, !746}
!924 = !DILocation(line: 463, column: 5, scope: !909, inlinedAt: !915)
!925 = !DILocation(line: 464, column: 10, scope: !909, inlinedAt: !915)
!926 = !DILocation(line: 465, column: 24, scope: !909, inlinedAt: !915)
!927 = !DILocation(line: 465, column: 22, scope: !909, inlinedAt: !915)
!928 = !DILocation(line: 466, column: 9, scope: !909, inlinedAt: !915)
!929 = !DILocation(line: 467, column: 3, scope: !909, inlinedAt: !915)
!930 = !DILocation(line: 467, column: 12, scope: !909, inlinedAt: !915)
!931 = !DILocation(line: 467, column: 16, scope: !909, inlinedAt: !915)
!932 = !DILocation(line: 467, column: 19, scope: !909, inlinedAt: !915)
!933 = !DILocation(line: 467, column: 25, scope: !909, inlinedAt: !915)
!934 = distinct !{!934, !929, !935, !746}
!935 = !DILocation(line: 468, column: 6, scope: !909, inlinedAt: !915)
!936 = !DILocation(line: 469, column: 6, scope: !909, inlinedAt: !915)
!937 = !DILocation(line: 470, column: 21, scope: !909, inlinedAt: !915)
!938 = !DILocation(line: 470, column: 19, scope: !909, inlinedAt: !915)
!939 = !DILocation(line: 470, column: 17, scope: !909, inlinedAt: !915)
!940 = !DILocation(line: 386, column: 9, scope: !888)
!941 = !DILocation(line: 388, column: 7, scope: !888)
!942 = !DILocation(line: 390, column: 7, scope: !888)
!943 = !DILocation(line: 394, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !829, file: !3, line: 394, column: 7)
!945 = !DILocation(line: 394, column: 7, scope: !829)
!946 = !DILocation(line: 399, column: 31, scope: !947)
!947 = distinct !DILexicalBlock(scope: !944, file: !3, line: 395, column: 5)
!948 = !DILocation(line: 398, column: 19, scope: !947)
!949 = !DILocation(line: 398, column: 17, scope: !947)
!950 = !DILocation(line: 400, column: 5, scope: !947)
!951 = !DILocation(line: 402, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !829, file: !3, line: 402, column: 7)
!953 = !DILocation(line: 0, scope: !952)
!954 = !DILocation(line: 402, column: 7, scope: !829)
!955 = !DILocation(line: 405, column: 54, scope: !956)
!956 = distinct !DILexicalBlock(scope: !952, file: !3, line: 403, column: 5)
!957 = !DILocation(line: 406, column: 32, scope: !956)
!958 = !DILocation(line: 405, column: 20, scope: !956)
!959 = !DILocation(line: 405, column: 18, scope: !956)
!960 = !DILocation(line: 407, column: 11, scope: !956)
!961 = !DILocation(line: 408, column: 32, scope: !962)
!962 = distinct !DILexicalBlock(scope: !956, file: !3, line: 407, column: 11)
!963 = !DILocation(line: 408, column: 19, scope: !962)
!964 = !DILocation(line: 408, column: 9, scope: !962)
!965 = !DILocation(line: 412, column: 30, scope: !966)
!966 = distinct !DILexicalBlock(scope: !952, file: !3, line: 411, column: 5)
!967 = !DILocation(line: 412, column: 57, scope: !966)
!968 = !DILocation(line: 412, column: 18, scope: !966)
!969 = !DILocation(line: 415, column: 7, scope: !845)
!970 = !DILocation(line: 415, column: 14, scope: !845)
!971 = !DILocation(line: 415, column: 7, scope: !829)
!972 = !DILocation(line: 419, column: 21, scope: !842)
!973 = !DILocation(line: 419, column: 7, scope: !843)
!974 = !DILocation(line: 416, column: 10, scope: !845)
!975 = !DILocation(line: 416, column: 5, scope: !845)
!976 = !DILocation(line: 421, column: 24, scope: !841)
!977 = !DILocation(line: 0, scope: !841)
!978 = !DILocation(line: 422, column: 15, scope: !848)
!979 = !DILocation(line: 422, column: 15, scope: !841)
!980 = !DILocation(line: 423, column: 18, scope: !848)
!981 = !DILocation(line: 423, column: 13, scope: !848)
!982 = !DILocation(line: 427, column: 27, scope: !847)
!983 = !DILocation(line: 0, scope: !847)
!984 = !DILocation(line: 428, column: 29, scope: !985)
!985 = distinct !DILexicalBlock(scope: !847, file: !3, line: 428, column: 19)
!986 = !DILocation(line: 428, column: 19, scope: !847)
!987 = !DILocation(line: 430, column: 19, scope: !988)
!988 = distinct !DILexicalBlock(scope: !985, file: !3, line: 429, column: 17)
!989 = !DILocation(line: 431, column: 23, scope: !990)
!990 = distinct !DILexicalBlock(scope: !988, file: !3, line: 431, column: 23)
!991 = !DILocation(line: 431, column: 42, scope: !990)
!992 = !DILocation(line: 431, column: 23, scope: !988)
!993 = !DILocation(line: 433, column: 33, scope: !994)
!994 = distinct !DILexicalBlock(scope: !990, file: !3, line: 432, column: 21)
!995 = !DILocation(line: 433, column: 46, scope: !994)
!996 = !DILocation(line: 433, column: 23, scope: !994)
!997 = !DILocation(line: 435, column: 21, scope: !994)
!998 = !DILocation(line: 439, column: 29, scope: !999)
!999 = distinct !DILexicalBlock(scope: !985, file: !3, line: 438, column: 17)
!1000 = !DILocation(line: 439, column: 36, scope: !999)
!1001 = !DILocation(line: 440, column: 26, scope: !999)
!1002 = !DILocation(line: 439, column: 19, scope: !999)
!1003 = !DILocation(line: 419, column: 35, scope: !842)
!1004 = distinct !{!1004, !973, !1005, !746}
!1005 = !DILocation(line: 444, column: 9, scope: !843)
!1006 = !DILocation(line: 320, column: 8, scope: !829)
!1007 = !DILocation(line: 447, column: 10, scope: !829)
!1008 = !DILocation(line: 448, column: 1, scope: !829)
!1009 = !DISubprogram(name: "bindtextdomain", scope: !767, file: !767, line: 86, type: !1010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !148)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!45, !55, !55}
!1012 = !DISubprogram(name: "textdomain", scope: !767, file: !767, line: 82, type: !1013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !148)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!45, !55}
!1015 = !DISubprogram(name: "atexit", scope: !1016, file: !1016, line: 595, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !148)
!1016 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!50, !1019}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!1020 = !DISubprogram(name: "getopt_long", scope: !85, file: !85, line: 66, type: !1021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !148)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!50, !50, !1023, !55, !1025, !90}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!1026 = !DISubprogram(name: "error", scope: !1027, file: !1027, line: 52, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !148)
!1027 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !50, !50, !55, null}
!1030 = distinct !DISubprogram(name: "fmt", scope: !3, file: !3, line: 476, type: !1031, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1033)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !849}
!1033 = !{!1034}
!1034 = !DILocalVariable(name: "f", arg: 1, scope: !1030, file: !3, line: 476, type: !849)
!1035 = !DILocation(line: 0, scope: !1030)
!1036 = !DILocation(line: 478, column: 3, scope: !1030)
!1037 = !DILocation(line: 479, column: 8, scope: !1030)
!1038 = !DILocation(line: 480, column: 16, scope: !1030)
!1039 = !DILocation(line: 481, column: 15, scope: !1030)
!1040 = !DILocation(line: 481, column: 13, scope: !1030)
!1041 = !DILocation(line: 482, column: 3, scope: !1030)
!1042 = !DILocation(line: 543, column: 7, scope: !1043, inlinedAt: !1049)
!1043 = distinct !DISubprogram(name: "get_paragraph", scope: !3, file: !3, line: 538, type: !1044, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1046)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!62, !849}
!1046 = !{!1047, !1048}
!1047 = !DILocalVariable(name: "f", arg: 1, scope: !1043, file: !3, line: 538, type: !849)
!1048 = !DILocalVariable(name: "c", scope: !1043, file: !3, line: 540, type: !50)
!1049 = distinct !DILocation(line: 482, column: 10, scope: !1030)
!1050 = !DILocation(line: 0, scope: !1043, inlinedAt: !1049)
!1051 = !DILocation(line: 542, column: 20, scope: !1043, inlinedAt: !1049)
!1052 = !DILocation(line: 547, column: 3, scope: !1043, inlinedAt: !1049)
!1053 = !DILocation(line: 547, column: 20, scope: !1043, inlinedAt: !1049)
!1054 = !DILocation(line: 548, column: 13, scope: !1043, inlinedAt: !1049)
!1055 = !DILocation(line: 548, column: 34, scope: !1043, inlinedAt: !1049)
!1056 = !DILocation(line: 548, column: 32, scope: !1043, inlinedAt: !1049)
!1057 = !DILocation(line: 549, column: 10, scope: !1043, inlinedAt: !1049)
!1058 = !DILocation(line: 549, column: 13, scope: !1043, inlinedAt: !1049)
!1059 = !DILocation(line: 549, column: 46, scope: !1043, inlinedAt: !1049)
!1060 = !DILocation(line: 549, column: 44, scope: !1043, inlinedAt: !1049)
!1061 = !DILocation(line: 549, column: 23, scope: !1043, inlinedAt: !1049)
!1062 = !DILocation(line: 624, column: 19, scope: !1063, inlinedAt: !1071)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 624, column: 7)
!1064 = distinct !DISubprogram(name: "copy_rest", scope: !3, file: !3, line: 619, type: !1065, scopeLine: 620, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1067)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!50, !849, !50}
!1067 = !{!1068, !1069, !1070}
!1068 = !DILocalVariable(name: "f", arg: 1, scope: !1064, file: !3, line: 619, type: !849)
!1069 = !DILocalVariable(name: "c", arg: 2, scope: !1064, file: !3, line: 619, type: !50)
!1070 = !DILocalVariable(name: "s", scope: !1064, file: !3, line: 621, type: !55)
!1071 = distinct !DILocation(line: 551, column: 11, scope: !1072, inlinedAt: !1049)
!1072 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 550, column: 5)
!1073 = !DILocation(line: 623, column: 14, scope: !1064, inlinedAt: !1071)
!1074 = !DILocation(line: 0, scope: !1064, inlinedAt: !1071)
!1075 = !DILocation(line: 624, column: 7, scope: !1063, inlinedAt: !1071)
!1076 = !DILocation(line: 624, column: 17, scope: !1063, inlinedAt: !1071)
!1077 = !DILocation(line: 624, column: 38, scope: !1063, inlinedAt: !1071)
!1078 = !DILocation(line: 624, column: 52, scope: !1063, inlinedAt: !1071)
!1079 = !DILocalVariable(name: "space", arg: 1, scope: !1080, file: !3, line: 1009, type: !50)
!1080 = distinct !DISubprogram(name: "put_space", scope: !3, file: !3, line: 1009, type: !684, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1081)
!1081 = !{!1079, !1082, !1083}
!1082 = !DILocalVariable(name: "space_target", scope: !1080, file: !3, line: 1011, type: !50)
!1083 = !DILocalVariable(name: "tab_target", scope: !1080, file: !3, line: 1011, type: !50)
!1084 = !DILocation(line: 0, scope: !1080, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 626, column: 7, scope: !1086, inlinedAt: !1071)
!1086 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 625, column: 5)
!1087 = !DILocation(line: 1014, column: 7, scope: !1088, inlinedAt: !1085)
!1088 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 1014, column: 7)
!1089 = !DILocation(line: 1014, column: 7, scope: !1080, inlinedAt: !1085)
!1090 = !DILocation(line: 1016, column: 33, scope: !1091, inlinedAt: !1085)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 1015, column: 5)
!1092 = !DILocation(line: 1016, column: 44, scope: !1091, inlinedAt: !1085)
!1093 = !DILocation(line: 1017, column: 26, scope: !1094, inlinedAt: !1085)
!1094 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 1017, column: 11)
!1095 = !DILocation(line: 1017, column: 11, scope: !1091, inlinedAt: !1085)
!1096 = !DILocalVariable(name: "__c", arg: 1, scope: !1097, file: !1098, line: 108, type: !50)
!1097 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1098, file: !1098, line: 108, type: !1099, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1101)
!1098 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!50, !50}
!1101 = !{!1096}
!1102 = !DILocation(line: 0, scope: !1097, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 1020, column: 13, scope: !1104, inlinedAt: !1085)
!1104 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 1019, column: 11)
!1105 = !DILocation(line: 110, column: 10, scope: !1097, inlinedAt: !1103)
!1106 = !{!1107, !695, i64 40}
!1107 = !{!"_IO_FILE", !865, i64 0, !695, i64 8, !695, i64 16, !695, i64 24, !695, i64 32, !695, i64 40, !695, i64 48, !695, i64 56, !695, i64 64, !695, i64 72, !695, i64 80, !695, i64 88, !695, i64 96, !695, i64 104, !865, i64 112, !865, i64 116, !1108, i64 120, !1109, i64 128, !696, i64 130, !696, i64 131, !695, i64 136, !1108, i64 144, !695, i64 152, !695, i64 160, !695, i64 168, !695, i64 176, !1108, i64 184, !865, i64 192, !696, i64 196}
!1108 = !{!"long", !696, i64 0}
!1109 = !{!"short", !696, i64 0}
!1110 = !{!1107, !695, i64 48}
!1111 = !{!"branch_weights", i32 2000, i32 1}
!1112 = !DILocation(line: 1021, column: 27, scope: !1104, inlinedAt: !1085)
!1113 = !DILocation(line: 1021, column: 38, scope: !1104, inlinedAt: !1085)
!1114 = !DILocation(line: 1021, column: 54, scope: !1104, inlinedAt: !1085)
!1115 = !DILocation(line: 1021, column: 24, scope: !1104, inlinedAt: !1085)
!1116 = !DILocation(line: 1018, column: 27, scope: !1094, inlinedAt: !1085)
!1117 = !DILocation(line: 1018, column: 9, scope: !1094, inlinedAt: !1085)
!1118 = distinct !{!1118, !1117, !1119, !746}
!1119 = !DILocation(line: 1022, column: 11, scope: !1094, inlinedAt: !1085)
!1120 = !DILocation(line: 1024, column: 10, scope: !1080, inlinedAt: !1085)
!1121 = !DILocation(line: 1024, column: 21, scope: !1080, inlinedAt: !1085)
!1122 = !DILocation(line: 1024, column: 3, scope: !1080, inlinedAt: !1085)
!1123 = !DILocation(line: 0, scope: !1097, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 1026, column: 7, scope: !1125, inlinedAt: !1085)
!1125 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 1025, column: 5)
!1126 = !DILocation(line: 110, column: 10, scope: !1097, inlinedAt: !1124)
!1127 = !DILocation(line: 1027, column: 17, scope: !1125, inlinedAt: !1085)
!1128 = distinct !{!1128, !1122, !1129, !746}
!1129 = !DILocation(line: 1028, column: 5, scope: !1080, inlinedAt: !1085)
!1130 = !DILocation(line: 627, column: 24, scope: !1131, inlinedAt: !1071)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 627, column: 7)
!1132 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 627, column: 7)
!1133 = !DILocation(line: 627, column: 38, scope: !1131, inlinedAt: !1071)
!1134 = !DILocation(line: 627, column: 35, scope: !1131, inlinedAt: !1071)
!1135 = !DILocation(line: 627, column: 48, scope: !1131, inlinedAt: !1071)
!1136 = !DILocation(line: 627, column: 16, scope: !1132, inlinedAt: !1071)
!1137 = !DILocation(line: 627, column: 7, scope: !1132, inlinedAt: !1071)
!1138 = !DILocation(line: 627, column: 51, scope: !1131, inlinedAt: !1071)
!1139 = !DILocation(line: 628, column: 9, scope: !1131, inlinedAt: !1071)
!1140 = !DILocation(line: 0, scope: !1097, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 628, column: 9, scope: !1131, inlinedAt: !1071)
!1142 = !DILocation(line: 110, column: 10, scope: !1097, inlinedAt: !1141)
!1143 = !DILocation(line: 627, column: 65, scope: !1131, inlinedAt: !1071)
!1144 = distinct !{!1144, !1137, !1145, !746}
!1145 = !DILocation(line: 628, column: 9, scope: !1132, inlinedAt: !1071)
!1146 = !DILocation(line: 629, column: 20, scope: !1147, inlinedAt: !1071)
!1147 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 629, column: 11)
!1148 = !DILocation(line: 0, scope: !1080, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 630, column: 9, scope: !1147, inlinedAt: !1071)
!1150 = !DILocation(line: 1014, column: 7, scope: !1088, inlinedAt: !1149)
!1151 = !DILocation(line: 1014, column: 7, scope: !1080, inlinedAt: !1149)
!1152 = !DILocation(line: 1016, column: 33, scope: !1091, inlinedAt: !1149)
!1153 = !DILocation(line: 1016, column: 44, scope: !1091, inlinedAt: !1149)
!1154 = !DILocation(line: 1017, column: 22, scope: !1094, inlinedAt: !1149)
!1155 = !DILocation(line: 1017, column: 26, scope: !1094, inlinedAt: !1149)
!1156 = !DILocation(line: 1017, column: 11, scope: !1091, inlinedAt: !1149)
!1157 = !DILocation(line: 0, scope: !1097, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 1020, column: 13, scope: !1104, inlinedAt: !1149)
!1159 = !DILocation(line: 110, column: 10, scope: !1097, inlinedAt: !1158)
!1160 = !DILocation(line: 1021, column: 27, scope: !1104, inlinedAt: !1149)
!1161 = !DILocation(line: 1021, column: 38, scope: !1104, inlinedAt: !1149)
!1162 = !DILocation(line: 1021, column: 54, scope: !1104, inlinedAt: !1149)
!1163 = !DILocation(line: 1021, column: 24, scope: !1104, inlinedAt: !1149)
!1164 = !DILocation(line: 1018, column: 27, scope: !1094, inlinedAt: !1149)
!1165 = !DILocation(line: 1018, column: 9, scope: !1094, inlinedAt: !1149)
!1166 = distinct !{!1166, !1165, !1167, !746}
!1167 = !DILocation(line: 1022, column: 11, scope: !1094, inlinedAt: !1149)
!1168 = !DILocation(line: 1024, column: 10, scope: !1080, inlinedAt: !1149)
!1169 = !DILocation(line: 1024, column: 21, scope: !1080, inlinedAt: !1149)
!1170 = !DILocation(line: 1024, column: 3, scope: !1080, inlinedAt: !1149)
!1171 = !DILocation(line: 0, scope: !1097, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 1026, column: 7, scope: !1125, inlinedAt: !1149)
!1173 = !DILocation(line: 110, column: 10, scope: !1097, inlinedAt: !1172)
!1174 = !DILocation(line: 1027, column: 17, scope: !1125, inlinedAt: !1149)
!1175 = distinct !{!1175, !1170, !1176, !746}
!1176 = !DILocation(line: 1028, column: 5, scope: !1080, inlinedAt: !1149)
!1177 = !DILocation(line: 631, column: 36, scope: !1178, inlinedAt: !1071)
!1178 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 631, column: 11)
!1179 = !DILocation(line: 631, column: 57, scope: !1178, inlinedAt: !1071)
!1180 = !DILocation(line: 631, column: 55, scope: !1178, inlinedAt: !1071)
!1181 = !DILocation(line: 631, column: 33, scope: !1178, inlinedAt: !1071)
!1182 = !DILocation(line: 631, column: 11, scope: !1086, inlinedAt: !1071)
!1183 = !DILocation(line: 0, scope: !1097, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 632, column: 9, scope: !1178, inlinedAt: !1071)
!1185 = !DILocation(line: 110, column: 10, scope: !1097, inlinedAt: !1184)
!1186 = !DILocation(line: 634, column: 3, scope: !1064, inlinedAt: !1071)
!1187 = !DILocation(line: 0, scope: !1097, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 636, column: 7, scope: !1189, inlinedAt: !1071)
!1189 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 635, column: 5)
!1190 = !DILocation(line: 110, column: 10, scope: !1097, inlinedAt: !1188)
!1191 = !DILocalVariable(name: "__fp", arg: 1, scope: !1192, file: !1098, line: 66, type: !849)
!1192 = distinct !DISubprogram(name: "getc_unlocked", scope: !1098, file: !1098, line: 66, type: !1193, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1195)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!50, !849}
!1195 = !{!1191}
!1196 = !DILocation(line: 0, scope: !1192, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 637, column: 11, scope: !1189, inlinedAt: !1071)
!1198 = !DILocation(line: 68, column: 10, scope: !1192, inlinedAt: !1197)
!1199 = !{!1107, !695, i64 8}
!1200 = !{!1107, !695, i64 16}
!1201 = distinct !{!1201, !1186, !1202, !746}
!1202 = !DILocation(line: 638, column: 5, scope: !1064, inlinedAt: !1071)
!1203 = !DILocation(line: 0, scope: !1097, inlinedAt: !1204)
!1204 = distinct !DILocation(line: 557, column: 7, scope: !1072, inlinedAt: !1049)
!1205 = !DILocation(line: 110, column: 10, scope: !1097, inlinedAt: !1204)
!1206 = !DILocation(line: 558, column: 11, scope: !1072, inlinedAt: !1049)
!1207 = distinct !{!1207, !1052, !1208, !746}
!1208 = !DILocation(line: 559, column: 5, scope: !1043, inlinedAt: !1049)
!1209 = !DILocation(line: 563, column: 17, scope: !1043, inlinedAt: !1049)
!1210 = !DILocation(line: 564, column: 16, scope: !1043, inlinedAt: !1049)
!1211 = !DILocation(line: 565, column: 8, scope: !1043, inlinedAt: !1049)
!1212 = !DILocation(line: 566, column: 14, scope: !1043, inlinedAt: !1049)
!1213 = !DILocation(line: 567, column: 7, scope: !1043, inlinedAt: !1049)
!1214 = !DILocalVariable(name: "c", arg: 1, scope: !1215, file: !3, line: 647, type: !50)
!1215 = distinct !DISubprogram(name: "same_para", scope: !3, file: !3, line: 647, type: !1216, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1218)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!62, !50}
!1218 = !{!1214}
!1219 = !DILocation(line: 0, scope: !1215, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 568, column: 21, scope: !1043, inlinedAt: !1049)
!1221 = !DILocation(line: 649, column: 11, scope: !1215, inlinedAt: !1220)
!1222 = !DILocation(line: 649, column: 33, scope: !1215, inlinedAt: !1220)
!1223 = !DILocation(line: 649, column: 30, scope: !1215, inlinedAt: !1220)
!1224 = !DILocation(line: 650, column: 11, scope: !1215, inlinedAt: !1220)
!1225 = !DILocation(line: 650, column: 14, scope: !1215, inlinedAt: !1220)
!1226 = !DILocation(line: 650, column: 48, scope: !1215, inlinedAt: !1220)
!1227 = !DILocation(line: 650, column: 46, scope: !1215, inlinedAt: !1220)
!1228 = !DILocation(line: 650, column: 24, scope: !1215, inlinedAt: !1220)
!1229 = !DILocation(line: 651, column: 11, scope: !1215, inlinedAt: !1220)
!1230 = !DILocalVariable(name: "same_paragraph", arg: 1, scope: !1231, file: !3, line: 493, type: !62)
!1231 = distinct !DISubprogram(name: "set_other_indent", scope: !3, file: !3, line: 493, type: !1232, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1234)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{null, !62}
!1234 = !{!1230}
!1235 = !DILocation(line: 0, scope: !1231, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 568, column: 3, scope: !1043, inlinedAt: !1049)
!1237 = !DILocation(line: 495, column: 7, scope: !1238, inlinedAt: !1236)
!1238 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 495, column: 7)
!1239 = !DILocation(line: 495, column: 7, scope: !1231, inlinedAt: !1236)
!1240 = !DILocation(line: 497, column: 12, scope: !1241, inlinedAt: !1236)
!1241 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 497, column: 12)
!1242 = !DILocation(line: 497, column: 12, scope: !1238, inlinedAt: !1236)
!1243 = !DILocation(line: 501, column: 12, scope: !1244, inlinedAt: !1236)
!1244 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 501, column: 12)
!1245 = !DILocation(line: 501, column: 12, scope: !1241, inlinedAt: !1236)
!1246 = !DILocation(line: 503, column: 26, scope: !1247, inlinedAt: !1236)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 503, column: 11)
!1248 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 502, column: 5)
!1249 = !DILocation(line: 513, column: 32, scope: !1250, inlinedAt: !1236)
!1250 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 513, column: 16)
!1251 = !DILocation(line: 503, column: 29, scope: !1247, inlinedAt: !1236)
!1252 = !DILocation(line: 503, column: 42, scope: !1247, inlinedAt: !1236)
!1253 = !DILocation(line: 503, column: 39, scope: !1247, inlinedAt: !1236)
!1254 = !DILocation(line: 503, column: 11, scope: !1248, inlinedAt: !1236)
!1255 = !DILocation(line: 513, column: 16, scope: !1250, inlinedAt: !1236)
!1256 = !DILocation(line: 513, column: 29, scope: !1250, inlinedAt: !1236)
!1257 = !DILocation(line: 513, column: 16, scope: !1247, inlinedAt: !1236)
!1258 = !DILocation(line: 514, column: 37, scope: !1250, inlinedAt: !1236)
!1259 = !DILocation(line: 514, column: 24, scope: !1250, inlinedAt: !1236)
!1260 = !DILocation(line: 514, column: 9, scope: !1250, inlinedAt: !1236)
!1261 = !DILocation(line: 496, column: 20, scope: !1238, inlinedAt: !1236)
!1262 = !DILocation(line: 496, column: 18, scope: !1238, inlinedAt: !1236)
!1263 = !DILocation(line: 499, column: 23, scope: !1264, inlinedAt: !1236)
!1264 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 498, column: 5)
!1265 = !DILocation(line: 499, column: 20, scope: !1264, inlinedAt: !1236)
!1266 = !DILocation(line: 0, scope: !1215, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 578, column: 11, scope: !1268, inlinedAt: !1049)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 578, column: 11)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 577, column: 5)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 576, column: 12)
!1271 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 572, column: 7)
!1272 = !DILocation(line: 650, column: 11, scope: !1215, inlinedAt: !1267)
!1273 = !DILocation(line: 650, column: 48, scope: !1215, inlinedAt: !1267)
!1274 = !DILocation(line: 650, column: 46, scope: !1215, inlinedAt: !1267)
!1275 = !DILocation(line: 650, column: 24, scope: !1215, inlinedAt: !1267)
!1276 = !DILocation(line: 578, column: 11, scope: !1269, inlinedAt: !1049)
!1277 = !DILocation(line: 582, column: 19, scope: !1278, inlinedAt: !1049)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 581, column: 13)
!1279 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 579, column: 9)
!1280 = !DILocation(line: 0, scope: !1215, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 584, column: 18, scope: !1279, inlinedAt: !1049)
!1282 = !DILocation(line: 649, column: 11, scope: !1215, inlinedAt: !1281)
!1283 = !DILocation(line: 649, column: 33, scope: !1215, inlinedAt: !1281)
!1284 = !DILocation(line: 649, column: 30, scope: !1215, inlinedAt: !1281)
!1285 = !DILocation(line: 650, column: 11, scope: !1215, inlinedAt: !1281)
!1286 = !DILocation(line: 650, column: 14, scope: !1215, inlinedAt: !1281)
!1287 = !DILocation(line: 650, column: 48, scope: !1215, inlinedAt: !1281)
!1288 = !DILocation(line: 650, column: 46, scope: !1215, inlinedAt: !1281)
!1289 = !DILocation(line: 650, column: 24, scope: !1215, inlinedAt: !1281)
!1290 = !DILocation(line: 651, column: 11, scope: !1215, inlinedAt: !1281)
!1291 = !DILocation(line: 584, column: 32, scope: !1279, inlinedAt: !1049)
!1292 = !DILocation(line: 583, column: 13, scope: !1278, inlinedAt: !1049)
!1293 = distinct !{!1293, !1294, !1295, !746}
!1294 = !DILocation(line: 580, column: 11, scope: !1279, inlinedAt: !1049)
!1295 = !DILocation(line: 584, column: 60, scope: !1279, inlinedAt: !1049)
!1296 = !DILocation(line: 518, column: 22, scope: !1297, inlinedAt: !1236)
!1297 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 517, column: 5)
!1298 = !DILocation(line: 518, column: 20, scope: !1297, inlinedAt: !1236)
!1299 = !DILocation(line: 0, scope: !1215, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 600, column: 14, scope: !1301, inlinedAt: !1049)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 599, column: 5)
!1302 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 587, column: 12)
!1303 = !DILocation(line: 650, column: 11, scope: !1215, inlinedAt: !1300)
!1304 = !DILocation(line: 650, column: 14, scope: !1215, inlinedAt: !1300)
!1305 = !DILocation(line: 650, column: 48, scope: !1215, inlinedAt: !1300)
!1306 = !DILocation(line: 650, column: 46, scope: !1215, inlinedAt: !1300)
!1307 = !DILocation(line: 650, column: 24, scope: !1215, inlinedAt: !1300)
!1308 = !DILocation(line: 651, column: 11, scope: !1215, inlinedAt: !1300)
!1309 = !DILocation(line: 600, column: 28, scope: !1301, inlinedAt: !1049)
!1310 = !DILocation(line: 600, column: 7, scope: !1301, inlinedAt: !1049)
!1311 = !DILocation(line: 0, scope: !1247, inlinedAt: !1236)
!1312 = !DILocation(line: 650, column: 11, scope: !1215, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 589, column: 11, scope: !1314, inlinedAt: !1049)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 589, column: 11)
!1315 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 588, column: 5)
!1316 = !DILocation(line: 0, scope: !1215, inlinedAt: !1313)
!1317 = !DILocation(line: 650, column: 14, scope: !1215, inlinedAt: !1313)
!1318 = !DILocation(line: 650, column: 48, scope: !1215, inlinedAt: !1313)
!1319 = !DILocation(line: 650, column: 46, scope: !1215, inlinedAt: !1313)
!1320 = !DILocation(line: 650, column: 24, scope: !1215, inlinedAt: !1313)
!1321 = !DILocation(line: 589, column: 25, scope: !1314, inlinedAt: !1049)
!1322 = !DILocation(line: 589, column: 38, scope: !1314, inlinedAt: !1049)
!1323 = !DILocation(line: 589, column: 11, scope: !1315, inlinedAt: !1049)
!1324 = !DILocation(line: 593, column: 19, scope: !1325, inlinedAt: !1049)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 592, column: 13)
!1326 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 590, column: 9)
!1327 = !DILocation(line: 0, scope: !1215, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 595, column: 18, scope: !1326, inlinedAt: !1049)
!1329 = !DILocation(line: 649, column: 11, scope: !1215, inlinedAt: !1328)
!1330 = !DILocation(line: 649, column: 33, scope: !1215, inlinedAt: !1328)
!1331 = !DILocation(line: 649, column: 30, scope: !1215, inlinedAt: !1328)
!1332 = !DILocation(line: 650, column: 11, scope: !1215, inlinedAt: !1328)
!1333 = !DILocation(line: 650, column: 14, scope: !1215, inlinedAt: !1328)
!1334 = !DILocation(line: 650, column: 48, scope: !1215, inlinedAt: !1328)
!1335 = !DILocation(line: 650, column: 46, scope: !1215, inlinedAt: !1328)
!1336 = !DILocation(line: 650, column: 24, scope: !1215, inlinedAt: !1328)
!1337 = !DILocation(line: 651, column: 11, scope: !1215, inlinedAt: !1328)
!1338 = !DILocation(line: 595, column: 32, scope: !1326, inlinedAt: !1049)
!1339 = !DILocation(line: 594, column: 13, scope: !1325, inlinedAt: !1049)
!1340 = distinct !{!1340, !1341, !1342, !746}
!1341 = !DILocation(line: 591, column: 11, scope: !1326, inlinedAt: !1049)
!1342 = !DILocation(line: 595, column: 60, scope: !1326, inlinedAt: !1049)
!1343 = !DILocation(line: 601, column: 13, scope: !1301, inlinedAt: !1049)
!1344 = !DILocation(line: 649, column: 11, scope: !1215, inlinedAt: !1300)
!1345 = !DILocation(line: 649, column: 33, scope: !1215, inlinedAt: !1300)
!1346 = !DILocation(line: 649, column: 30, scope: !1215, inlinedAt: !1300)
!1347 = distinct !{!1347, !1310, !1348, !746}
!1348 = !DILocation(line: 601, column: 27, scope: !1301, inlinedAt: !1049)
!1349 = !DILocation(line: 606, column: 3, scope: !1350, inlinedAt: !1049)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 606, column: 3)
!1351 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 606, column: 3)
!1352 = !DILocation(line: 606, column: 3, scope: !1351, inlinedAt: !1049)
!1353 = !DILocation(line: 608, column: 48, scope: !1043, inlinedAt: !1049)
!1354 = !DILocation(line: 608, column: 54, scope: !1043, inlinedAt: !1049)
!1355 = !DILocation(line: 608, column: 28, scope: !1043, inlinedAt: !1049)
!1356 = !DILocation(line: 484, column: 7, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 483, column: 5)
!1358 = !DILocalVariable(name: "finish", arg: 1, scope: !1359, file: !3, line: 958, type: !135)
!1359 = distinct !DISubprogram(name: "put_paragraph", scope: !3, file: !3, line: 958, type: !1360, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1362)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !135}
!1362 = !{!1358, !1363}
!1363 = !DILocalVariable(name: "w", scope: !1359, file: !3, line: 960, type: !135)
!1364 = !DILocation(line: 0, scope: !1359, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 485, column: 7, scope: !1357)
!1366 = !DILocation(line: 962, column: 19, scope: !1359, inlinedAt: !1365)
!1367 = !DILocation(line: 962, column: 3, scope: !1359, inlinedAt: !1365)
!1368 = !DILocation(line: 0, scope: !1369, inlinedAt: !1365)
!1369 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 963, column: 3)
!1370 = !{!1371, !695, i64 32}
!1371 = !{!"Word", !695, i64 0, !865, i64 8, !865, i64 12, !865, i64 16, !865, i64 16, !865, i64 16, !865, i64 16, !865, i64 20, !1108, i64 24, !695, i64 32}
!1372 = !DILocation(line: 963, column: 32, scope: !1373, inlinedAt: !1365)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 963, column: 3)
!1374 = !DILocation(line: 963, column: 3, scope: !1369, inlinedAt: !1365)
!1375 = !DILocation(line: 964, column: 18, scope: !1373, inlinedAt: !1365)
!1376 = !DILocation(line: 964, column: 5, scope: !1373, inlinedAt: !1365)
!1377 = !DILocation(line: 963, column: 50, scope: !1373, inlinedAt: !1365)
!1378 = distinct !{!1378, !1374, !1379, !746}
!1379 = !DILocation(line: 964, column: 30, scope: !1369, inlinedAt: !1365)
!1380 = distinct !{!1380, !1041, !1381, !746}
!1381 = !DILocation(line: 486, column: 5, scope: !1030)
!1382 = !DILocation(line: 487, column: 1, scope: !1030)
!1383 = distinct !DISubprogram(name: "get_prefix", scope: !3, file: !3, line: 717, type: !1193, scopeLine: 718, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1384)
!1384 = !{!1385, !1386, !1387, !1390}
!1385 = !DILocalVariable(name: "f", arg: 1, scope: !1383, file: !3, line: 717, type: !849)
!1386 = !DILocalVariable(name: "c", scope: !1383, file: !3, line: 719, type: !50)
!1387 = !DILocalVariable(name: "p", scope: !1388, file: !3, line: 728, type: !55)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 727, column: 5)
!1389 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 723, column: 7)
!1390 = !DILocalVariable(name: "pc", scope: !1391, file: !3, line: 732, type: !49)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 731, column: 9)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 730, column: 7)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 730, column: 7)
!1394 = !DILocation(line: 0, scope: !1383)
!1395 = !DILocation(line: 721, column: 13, scope: !1383)
!1396 = !DILocation(line: 0, scope: !1192, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 722, column: 21, scope: !1383)
!1398 = !DILocation(line: 68, column: 10, scope: !1192, inlinedAt: !1397)
!1399 = !DILocation(line: 749, column: 3, scope: !1400, inlinedAt: !1404)
!1400 = distinct !DISubprogram(name: "get_space", scope: !3, file: !3, line: 747, type: !1065, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1401)
!1401 = !{!1402, !1403}
!1402 = !DILocalVariable(name: "f", arg: 1, scope: !1400, file: !3, line: 747, type: !849)
!1403 = !DILocalVariable(name: "c", arg: 2, scope: !1400, file: !3, line: 747, type: !50)
!1404 = distinct !DILocation(line: 722, column: 7, scope: !1383)
!1405 = !DILocation(line: 0, scope: !1400, inlinedAt: !1404)
!1406 = !DILocation(line: 751, column: 11, scope: !1407, inlinedAt: !1404)
!1407 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 750, column: 5)
!1408 = !DILocation(line: 752, column: 18, scope: !1409, inlinedAt: !1404)
!1409 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 751, column: 11)
!1410 = !DILocation(line: 752, column: 9, scope: !1409, inlinedAt: !1404)
!1411 = !DILocation(line: 755, column: 16, scope: !1412, inlinedAt: !1404)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 754, column: 9)
!1413 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 753, column: 16)
!1414 = !DILocation(line: 756, column: 24, scope: !1412, inlinedAt: !1404)
!1415 = !DILocation(line: 756, column: 34, scope: !1412, inlinedAt: !1404)
!1416 = !DILocation(line: 756, column: 50, scope: !1412, inlinedAt: !1404)
!1417 = !DILocation(line: 0, scope: !1409, inlinedAt: !1404)
!1418 = !DILocation(line: 0, scope: !1192, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 760, column: 11, scope: !1407, inlinedAt: !1404)
!1420 = !DILocation(line: 68, column: 10, scope: !1192, inlinedAt: !1419)
!1421 = distinct !{!1421, !1399, !1422}
!1422 = !DILocation(line: 761, column: 5, scope: !1400, inlinedAt: !1404)
!1423 = !DILocation(line: 723, column: 7, scope: !1389)
!1424 = !DILocation(line: 723, column: 21, scope: !1389)
!1425 = !DILocation(line: 723, column: 7, scope: !1383)
!1426 = !DILocation(line: 724, column: 26, scope: !1389)
!1427 = !DILocation(line: 724, column: 46, scope: !1389)
!1428 = !DILocation(line: 724, column: 44, scope: !1389)
!1429 = !DILocation(line: 724, column: 24, scope: !1389)
!1430 = !DILocation(line: 724, column: 5, scope: !1389)
!1431 = !DILocation(line: 729, column: 28, scope: !1388)
!1432 = !DILocation(line: 729, column: 26, scope: !1388)
!1433 = !DILocation(line: 730, column: 16, scope: !1393)
!1434 = !DILocation(line: 0, scope: !1388)
!1435 = !DILocation(line: 730, column: 24, scope: !1392)
!1436 = !DILocation(line: 730, column: 27, scope: !1392)
!1437 = !DILocation(line: 730, column: 7, scope: !1393)
!1438 = !DILocation(line: 0, scope: !1391)
!1439 = !DILocation(line: 733, column: 20, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 733, column: 15)
!1441 = !DILocation(line: 733, column: 17, scope: !1440)
!1442 = !DILocation(line: 733, column: 15, scope: !1391)
!1443 = !DILocation(line: 735, column: 20, scope: !1391)
!1444 = !DILocation(line: 0, scope: !1192, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 736, column: 15, scope: !1391)
!1446 = !DILocation(line: 68, column: 10, scope: !1192, inlinedAt: !1445)
!1447 = !DILocation(line: 730, column: 37, scope: !1392)
!1448 = distinct !{!1448, !1437, !1449, !746}
!1449 = !DILocation(line: 737, column: 9, scope: !1393)
!1450 = !DILocation(line: 749, column: 3, scope: !1400, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 738, column: 11, scope: !1388)
!1452 = !DILocation(line: 0, scope: !1400, inlinedAt: !1451)
!1453 = !DILocation(line: 751, column: 11, scope: !1407, inlinedAt: !1451)
!1454 = !DILocation(line: 752, column: 18, scope: !1409, inlinedAt: !1451)
!1455 = !DILocation(line: 752, column: 9, scope: !1409, inlinedAt: !1451)
!1456 = !DILocation(line: 755, column: 16, scope: !1412, inlinedAt: !1451)
!1457 = !DILocation(line: 756, column: 24, scope: !1412, inlinedAt: !1451)
!1458 = !DILocation(line: 756, column: 34, scope: !1412, inlinedAt: !1451)
!1459 = !DILocation(line: 756, column: 50, scope: !1412, inlinedAt: !1451)
!1460 = !DILocation(line: 0, scope: !1409, inlinedAt: !1451)
!1461 = !DILocation(line: 0, scope: !1192, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 760, column: 11, scope: !1407, inlinedAt: !1451)
!1463 = !DILocation(line: 68, column: 10, scope: !1192, inlinedAt: !1462)
!1464 = distinct !{!1464, !1450, !1465}
!1465 = !DILocation(line: 761, column: 5, scope: !1400, inlinedAt: !1451)
!1466 = distinct !DISubprogram(name: "get_line", scope: !3, file: !3, line: 663, type: !1065, scopeLine: 664, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1467)
!1467 = !{!1468, !1469, !1470, !1471, !1472}
!1468 = !DILocalVariable(name: "f", arg: 1, scope: !1466, file: !3, line: 663, type: !849)
!1469 = !DILocalVariable(name: "c", arg: 2, scope: !1466, file: !3, line: 663, type: !50)
!1470 = !DILocalVariable(name: "start", scope: !1466, file: !3, line: 665, type: !50)
!1471 = !DILocalVariable(name: "end_of_parabuf", scope: !1466, file: !3, line: 666, type: !45)
!1472 = !DILocalVariable(name: "end_of_word", scope: !1466, file: !3, line: 667, type: !135)
!1473 = !DILocation(line: 0, scope: !1466)
!1474 = !DILocation(line: 677, column: 7, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 673, column: 5)
!1476 = !DILocation(line: 672, column: 3, scope: !1466)
!1477 = !DILocation(line: 677, column: 26, scope: !1475)
!1478 = !DILocation(line: 677, column: 19, scope: !1475)
!1479 = !DILocation(line: 677, column: 24, scope: !1475)
!1480 = !{!1371, !695, i64 0}
!1481 = !DILocation(line: 678, column: 7, scope: !1475)
!1482 = !DILocation(line: 680, column: 15, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 680, column: 15)
!1484 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 679, column: 9)
!1485 = !DILocation(line: 680, column: 20, scope: !1483)
!1486 = !DILocation(line: 680, column: 15, scope: !1484)
!1487 = !DILocation(line: 0, scope: !1231, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 682, column: 15, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 681, column: 13)
!1490 = !DILocation(line: 495, column: 7, scope: !1238, inlinedAt: !1488)
!1491 = !DILocation(line: 495, column: 7, scope: !1231, inlinedAt: !1488)
!1492 = !DILocation(line: 496, column: 20, scope: !1238, inlinedAt: !1488)
!1493 = !DILocation(line: 496, column: 5, scope: !1238, inlinedAt: !1488)
!1494 = !DILocation(line: 497, column: 12, scope: !1241, inlinedAt: !1488)
!1495 = !DILocation(line: 497, column: 12, scope: !1238, inlinedAt: !1488)
!1496 = !DILocation(line: 499, column: 23, scope: !1264, inlinedAt: !1488)
!1497 = !DILocation(line: 500, column: 5, scope: !1264, inlinedAt: !1488)
!1498 = !DILocation(line: 501, column: 12, scope: !1244, inlinedAt: !1488)
!1499 = !DILocation(line: 501, column: 12, scope: !1241, inlinedAt: !1488)
!1500 = !DILocation(line: 503, column: 29, scope: !1247, inlinedAt: !1488)
!1501 = !DILocation(line: 503, column: 42, scope: !1247, inlinedAt: !1488)
!1502 = !DILocation(line: 503, column: 39, scope: !1247, inlinedAt: !1488)
!1503 = !DILocation(line: 503, column: 11, scope: !1248, inlinedAt: !1488)
!1504 = !DILocation(line: 513, column: 16, scope: !1250, inlinedAt: !1488)
!1505 = !DILocation(line: 513, column: 29, scope: !1250, inlinedAt: !1488)
!1506 = !DILocation(line: 513, column: 16, scope: !1247, inlinedAt: !1488)
!1507 = !DILocation(line: 514, column: 37, scope: !1250, inlinedAt: !1488)
!1508 = !DILocation(line: 514, column: 24, scope: !1250, inlinedAt: !1488)
!1509 = !DILocation(line: 514, column: 9, scope: !1250, inlinedAt: !1488)
!1510 = !DILocation(line: 518, column: 22, scope: !1297, inlinedAt: !1488)
!1511 = !DILocation(line: 0, scope: !1238, inlinedAt: !1488)
!1512 = !DILocation(line: 683, column: 15, scope: !1489)
!1513 = !DILocation(line: 685, column: 16, scope: !1484)
!1514 = !DILocation(line: 684, column: 13, scope: !1489)
!1515 = !DILocation(line: 685, column: 21, scope: !1484)
!1516 = !DILocation(line: 685, column: 19, scope: !1484)
!1517 = !DILocation(line: 0, scope: !1192, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 686, column: 15, scope: !1484)
!1519 = !DILocation(line: 68, column: 10, scope: !1192, inlinedAt: !1518)
!1520 = !DILocation(line: 688, column: 23, scope: !1475)
!1521 = !DILocation(line: 688, column: 16, scope: !1475)
!1522 = !DILocation(line: 774, column: 17, scope: !1523, inlinedAt: !1529)
!1523 = distinct !DISubprogram(name: "check_punctuation", scope: !3, file: !3, line: 767, type: !1360, scopeLine: 768, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1524)
!1524 = !{!1525, !1526, !1527, !1528}
!1525 = !DILocalVariable(name: "w", arg: 1, scope: !1523, file: !3, line: 767, type: !135)
!1526 = !DILocalVariable(name: "start", scope: !1523, file: !3, line: 769, type: !55)
!1527 = !DILocalVariable(name: "finish", scope: !1523, file: !3, line: 770, type: !55)
!1528 = !DILocalVariable(name: "fin", scope: !1523, file: !3, line: 771, type: !49)
!1529 = distinct !DILocation(line: 690, column: 7, scope: !1475)
!1530 = !DILocation(line: 688, column: 27, scope: !1475)
!1531 = !{!1109, !1109, i64 0}
!1532 = !DILocation(line: 688, column: 26, scope: !1475)
!1533 = !DILocation(line: 687, column: 9, scope: !1484)
!1534 = distinct !{!1534, !1481, !1535, !746}
!1535 = !DILocation(line: 688, column: 38, scope: !1475)
!1536 = !DILocation(line: 689, column: 41, scope: !1475)
!1537 = !DILocation(line: 689, column: 48, scope: !1475)
!1538 = !DILocation(line: 689, column: 60, scope: !1475)
!1539 = !DILocation(line: 689, column: 46, scope: !1475)
!1540 = !DILocation(line: 689, column: 32, scope: !1475)
!1541 = !DILocation(line: 689, column: 39, scope: !1475)
!1542 = !{!1371, !865, i64 8}
!1543 = !DILocation(line: 689, column: 17, scope: !1475)
!1544 = !DILocation(line: 0, scope: !1523, inlinedAt: !1529)
!1545 = !DILocation(line: 770, column: 30, scope: !1523, inlinedAt: !1529)
!1546 = !DILocation(line: 771, column: 23, scope: !1523, inlinedAt: !1529)
!1547 = !DILocation(line: 773, column: 14, scope: !1523, inlinedAt: !1529)
!1548 = !DILocation(line: 773, column: 6, scope: !1523, inlinedAt: !1529)
!1549 = !DILocation(line: 773, column: 12, scope: !1523, inlinedAt: !1529)
!1550 = !DILocation(line: 774, column: 12, scope: !1523, inlinedAt: !1529)
!1551 = !DILocation(line: 775, column: 16, scope: !1523, inlinedAt: !1529)
!1552 = !DILocation(line: 775, column: 25, scope: !1523, inlinedAt: !1529)
!1553 = !DILocation(line: 775, column: 28, scope: !1523, inlinedAt: !1529)
!1554 = !DILocation(line: 775, column: 3, scope: !1523, inlinedAt: !1529)
!1555 = !DILocation(line: 776, column: 11, scope: !1523, inlinedAt: !1529)
!1556 = distinct !{!1556, !1554, !1555, !746}
!1557 = !DILocation(line: 777, column: 15, scope: !1523, inlinedAt: !1529)
!1558 = !DILocation(line: 777, column: 13, scope: !1523, inlinedAt: !1529)
!1559 = !DILocation(line: 0, scope: !1400, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 695, column: 11, scope: !1475)
!1561 = !DILocation(line: 749, column: 3, scope: !1400, inlinedAt: !1560)
!1562 = !DILocation(line: 751, column: 11, scope: !1407, inlinedAt: !1560)
!1563 = !DILocation(line: 752, column: 18, scope: !1409, inlinedAt: !1560)
!1564 = !DILocation(line: 752, column: 9, scope: !1409, inlinedAt: !1560)
!1565 = !DILocation(line: 755, column: 16, scope: !1412, inlinedAt: !1560)
!1566 = !DILocation(line: 756, column: 24, scope: !1412, inlinedAt: !1560)
!1567 = !DILocation(line: 756, column: 34, scope: !1412, inlinedAt: !1560)
!1568 = !DILocation(line: 756, column: 50, scope: !1412, inlinedAt: !1560)
!1569 = !DILocation(line: 0, scope: !1409, inlinedAt: !1560)
!1570 = !DILocation(line: 0, scope: !1192, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 760, column: 11, scope: !1407, inlinedAt: !1560)
!1572 = !DILocation(line: 68, column: 10, scope: !1192, inlinedAt: !1571)
!1573 = distinct !{!1573, !1561, !1574}
!1574 = !DILocation(line: 761, column: 5, scope: !1400, inlinedAt: !1560)
!1575 = !DILocation(line: 696, column: 27, scope: !1475)
!1576 = !DILocation(line: 696, column: 37, scope: !1475)
!1577 = !DILocation(line: 696, column: 7, scope: !1475)
!1578 = !DILocation(line: 696, column: 19, scope: !1475)
!1579 = !DILocation(line: 696, column: 25, scope: !1475)
!1580 = !{!1371, !865, i64 12}
!1581 = !DILocation(line: 697, column: 30, scope: !1475)
!1582 = !DILocation(line: 0, scope: !1475)
!1583 = !DILocation(line: 698, column: 28, scope: !1475)
!1584 = !DILocation(line: 698, column: 32, scope: !1475)
!1585 = !DILocation(line: 699, column: 32, scope: !1475)
!1586 = !DILocation(line: 699, column: 38, scope: !1475)
!1587 = !DILocation(line: 699, column: 46, scope: !1475)
!1588 = !DILocation(line: 697, column: 19, scope: !1475)
!1589 = !DILocation(line: 697, column: 25, scope: !1475)
!1590 = !DILocation(line: 699, column: 67, scope: !1475)
!1591 = !DILocation(line: 700, column: 21, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 700, column: 11)
!1593 = !DILocation(line: 700, column: 36, scope: !1592)
!1594 = !DILocation(line: 700, column: 11, scope: !1475)
!1595 = !DILocation(line: 701, column: 27, scope: !1592)
!1596 = !DILocation(line: 701, column: 9, scope: !1592)
!1597 = !DILocation(line: 702, column: 22, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 702, column: 11)
!1599 = !DILocation(line: 702, column: 11, scope: !1475)
!1600 = !DILocation(line: 0, scope: !1231, inlinedAt: !1601)
!1601 = distinct !DILocation(line: 704, column: 11, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 703, column: 9)
!1603 = !DILocation(line: 495, column: 7, scope: !1238, inlinedAt: !1601)
!1604 = !DILocation(line: 495, column: 7, scope: !1231, inlinedAt: !1601)
!1605 = !DILocation(line: 496, column: 20, scope: !1238, inlinedAt: !1601)
!1606 = !DILocation(line: 496, column: 5, scope: !1238, inlinedAt: !1601)
!1607 = !DILocation(line: 497, column: 12, scope: !1241, inlinedAt: !1601)
!1608 = !DILocation(line: 497, column: 12, scope: !1238, inlinedAt: !1601)
!1609 = !DILocation(line: 501, column: 12, scope: !1244, inlinedAt: !1601)
!1610 = !DILocation(line: 0, scope: !1244, inlinedAt: !1601)
!1611 = !DILocation(line: 501, column: 12, scope: !1241, inlinedAt: !1601)
!1612 = !DILocation(line: 503, column: 39, scope: !1247, inlinedAt: !1601)
!1613 = !DILocation(line: 503, column: 11, scope: !1248, inlinedAt: !1601)
!1614 = !DILocation(line: 513, column: 16, scope: !1250, inlinedAt: !1601)
!1615 = !DILocation(line: 513, column: 29, scope: !1250, inlinedAt: !1601)
!1616 = !DILocation(line: 513, column: 16, scope: !1247, inlinedAt: !1601)
!1617 = !DILocation(line: 514, column: 37, scope: !1250, inlinedAt: !1601)
!1618 = !DILocation(line: 514, column: 24, scope: !1250, inlinedAt: !1601)
!1619 = !DILocation(line: 514, column: 9, scope: !1250, inlinedAt: !1601)
!1620 = !DILocation(line: 0, scope: !1238, inlinedAt: !1601)
!1621 = !DILocation(line: 705, column: 11, scope: !1602)
!1622 = !DILocation(line: 707, column: 17, scope: !1475)
!1623 = !DILocation(line: 706, column: 9, scope: !1602)
!1624 = !DILocation(line: 708, column: 5, scope: !1475)
!1625 = !DILocation(line: 710, column: 10, scope: !1466)
!1626 = !DILocation(line: 710, column: 3, scope: !1466)
!1627 = distinct !DISubprogram(name: "fmt_paragraph", scope: !3, file: !3, line: 848, type: !704, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1628)
!1628 = !{!1629, !1630, !1631, !1632, !1633, !1634}
!1629 = !DILocalVariable(name: "start", scope: !1627, file: !3, line: 850, type: !135)
!1630 = !DILocalVariable(name: "w", scope: !1627, file: !3, line: 850, type: !135)
!1631 = !DILocalVariable(name: "len", scope: !1627, file: !3, line: 851, type: !50)
!1632 = !DILocalVariable(name: "wcost", scope: !1627, file: !3, line: 852, type: !57)
!1633 = !DILocalVariable(name: "best", scope: !1627, file: !3, line: 852, type: !57)
!1634 = !DILocalVariable(name: "saved_length", scope: !1627, file: !3, line: 853, type: !50)
!1635 = !DILocation(line: 855, column: 3, scope: !1627)
!1636 = !DILocation(line: 855, column: 15, scope: !1627)
!1637 = !DILocation(line: 855, column: 25, scope: !1627)
!1638 = !{!1371, !1108, i64 24}
!1639 = !DILocation(line: 856, column: 30, scope: !1627)
!1640 = !DILocation(line: 0, scope: !1627)
!1641 = !DILocation(line: 857, column: 24, scope: !1627)
!1642 = !DILocation(line: 857, column: 22, scope: !1627)
!1643 = !DILocation(line: 0, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 859, column: 3)
!1645 = !DILocation(line: 859, column: 38, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 859, column: 3)
!1647 = !DILocation(line: 859, column: 3, scope: !1644)
!1648 = !DILocation(line: 862, column: 19, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 860, column: 5)
!1650 = !DILocation(line: 862, column: 13, scope: !1649)
!1651 = !DILocation(line: 867, column: 17, scope: !1649)
!1652 = !DILocation(line: 867, column: 11, scope: !1649)
!1653 = !DILocation(line: 868, column: 7, scope: !1649)
!1654 = !DILocation(line: 0, scope: !1649)
!1655 = !DILocation(line: 870, column: 12, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 869, column: 9)
!1657 = !DILocalVariable(name: "next", arg: 1, scope: !1658, file: !3, line: 937, type: !135)
!1658 = distinct !DISubprogram(name: "line_cost", scope: !3, file: !3, line: 937, type: !1659, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1661)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!57, !135, !50}
!1661 = !{!1657, !1662, !1663, !1664}
!1662 = !DILocalVariable(name: "len", arg: 2, scope: !1658, file: !3, line: 937, type: !50)
!1663 = !DILocalVariable(name: "n", scope: !1658, file: !3, line: 939, type: !50)
!1664 = !DILocalVariable(name: "cost", scope: !1658, file: !3, line: 940, type: !57)
!1665 = !DILocation(line: 0, scope: !1658, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 874, column: 19, scope: !1656)
!1667 = !DILocation(line: 942, column: 12, scope: !1668, inlinedAt: !1666)
!1668 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 942, column: 7)
!1669 = !DILocation(line: 942, column: 7, scope: !1658, inlinedAt: !1666)
!1670 = !DILocation(line: 944, column: 18, scope: !1658, inlinedAt: !1666)
!1671 = !DILocation(line: 945, column: 10, scope: !1658, inlinedAt: !1666)
!1672 = !DILocation(line: 946, column: 13, scope: !1673, inlinedAt: !1666)
!1673 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 946, column: 7)
!1674 = !DILocation(line: 946, column: 24, scope: !1673, inlinedAt: !1666)
!1675 = !DILocation(line: 946, column: 7, scope: !1658, inlinedAt: !1666)
!1676 = !DILocation(line: 948, column: 23, scope: !1677, inlinedAt: !1666)
!1677 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 947, column: 5)
!1678 = !{!1371, !865, i64 20}
!1679 = !DILocation(line: 948, column: 15, scope: !1677, inlinedAt: !1666)
!1680 = !DILocation(line: 949, column: 15, scope: !1677, inlinedAt: !1666)
!1681 = !DILocation(line: 949, column: 12, scope: !1677, inlinedAt: !1666)
!1682 = !DILocation(line: 950, column: 5, scope: !1677, inlinedAt: !1666)
!1683 = !DILocation(line: 874, column: 43, scope: !1656)
!1684 = !DILocation(line: 874, column: 38, scope: !1656)
!1685 = !DILocation(line: 875, column: 29, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 875, column: 15)
!1687 = !DILocation(line: 876, column: 22, scope: !1686)
!1688 = !DILocation(line: 876, column: 19, scope: !1686)
!1689 = !DILocation(line: 876, column: 13, scope: !1686)
!1690 = !DILocation(line: 0, scope: !1656)
!1691 = !DILocation(line: 877, column: 21, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 877, column: 15)
!1693 = !DILocation(line: 877, column: 15, scope: !1656)
!1694 = !DILocation(line: 880, column: 33, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 878, column: 13)
!1696 = !DILocation(line: 881, column: 34, scope: !1695)
!1697 = !DILocation(line: 882, column: 13, scope: !1695)
!1698 = !DILocation(line: 888, column: 15, scope: !1656)
!1699 = !DILocation(line: 891, column: 27, scope: !1656)
!1700 = !DILocation(line: 891, column: 38, scope: !1656)
!1701 = !DILocation(line: 891, column: 33, scope: !1656)
!1702 = !DILocation(line: 891, column: 15, scope: !1656)
!1703 = !DILocation(line: 893, column: 18, scope: !1649)
!1704 = !DILocation(line: 892, column: 9, scope: !1656)
!1705 = distinct !{!1705, !1653, !1706, !746}
!1706 = !DILocation(line: 893, column: 29, scope: !1649)
!1707 = !DILocalVariable(name: "this", arg: 1, scope: !1708, file: !3, line: 904, type: !135)
!1708 = distinct !DISubprogram(name: "base_cost", scope: !3, file: !3, line: 904, type: !1709, scopeLine: 905, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1711)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!57, !135}
!1711 = !{!1707, !1712}
!1712 = !DILocalVariable(name: "cost", scope: !1708, file: !3, line: 906, type: !57)
!1713 = !DILocation(line: 0, scope: !1708, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 894, column: 33, scope: !1649)
!1715 = !DILocation(line: 910, column: 12, scope: !1716, inlinedAt: !1714)
!1716 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 910, column: 7)
!1717 = !DILocation(line: 910, column: 7, scope: !1708, inlinedAt: !1714)
!1718 = !DILocation(line: 912, column: 23, scope: !1719, inlinedAt: !1714)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 912, column: 11)
!1720 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 911, column: 5)
!1721 = !DILocation(line: 912, column: 11, scope: !1719, inlinedAt: !1714)
!1722 = !DILocation(line: 912, column: 11, scope: !1720, inlinedAt: !1714)
!1723 = !DILocation(line: 914, column: 15, scope: !1724, inlinedAt: !1714)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 914, column: 15)
!1725 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 913, column: 9)
!1726 = !DILocation(line: 914, column: 15, scope: !1725, inlinedAt: !1714)
!1727 = !DILocation(line: 919, column: 16, scope: !1728, inlinedAt: !1714)
!1728 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 919, column: 16)
!1729 = !DILocation(line: 919, column: 16, scope: !1719, inlinedAt: !1714)
!1730 = !DILocation(line: 921, column: 21, scope: !1731, inlinedAt: !1714)
!1731 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 921, column: 16)
!1732 = !DILocation(line: 921, column: 32, scope: !1731, inlinedAt: !1714)
!1733 = !DILocation(line: 921, column: 47, scope: !1731, inlinedAt: !1714)
!1734 = !DILocation(line: 921, column: 35, scope: !1731, inlinedAt: !1714)
!1735 = !DILocation(line: 921, column: 16, scope: !1728, inlinedAt: !1714)
!1736 = !DILocation(line: 922, column: 17, scope: !1731, inlinedAt: !1714)
!1737 = !DILocation(line: 922, column: 14, scope: !1731, inlinedAt: !1714)
!1738 = !DILocation(line: 922, column: 9, scope: !1731, inlinedAt: !1714)
!1739 = !DILocation(line: 925, column: 13, scope: !1740, inlinedAt: !1714)
!1740 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 925, column: 7)
!1741 = !DILocation(line: 925, column: 7, scope: !1740, inlinedAt: !1714)
!1742 = !DILocation(line: 925, column: 7, scope: !1708, inlinedAt: !1714)
!1743 = !DILocation(line: 926, column: 10, scope: !1740, inlinedAt: !1714)
!1744 = !DILocation(line: 926, column: 5, scope: !1740, inlinedAt: !1714)
!1745 = !DILocation(line: 927, column: 12, scope: !1746, inlinedAt: !1714)
!1746 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 927, column: 12)
!1747 = !DILocation(line: 927, column: 12, scope: !1740, inlinedAt: !1714)
!1748 = !DILocation(line: 928, column: 13, scope: !1746, inlinedAt: !1714)
!1749 = !DILocation(line: 928, column: 10, scope: !1746, inlinedAt: !1714)
!1750 = !DILocation(line: 928, column: 5, scope: !1746, inlinedAt: !1714)
!1751 = !DILocation(line: 894, column: 31, scope: !1649)
!1752 = !DILocation(line: 894, column: 14, scope: !1649)
!1753 = !DILocation(line: 894, column: 24, scope: !1649)
!1754 = distinct !{!1754, !1647, !1755, !746}
!1755 = !DILocation(line: 895, column: 5, scope: !1644)
!1756 = !DILocation(line: 897, column: 22, scope: !1627)
!1757 = !DILocation(line: 898, column: 1, scope: !1627)
!1758 = distinct !DISubprogram(name: "put_line", scope: !3, file: !3, line: 971, type: !1759, scopeLine: 972, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1761)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{null, !135, !50}
!1761 = !{!1762, !1763, !1764}
!1762 = !DILocalVariable(name: "w", arg: 1, scope: !1758, file: !3, line: 971, type: !135)
!1763 = !DILocalVariable(name: "indent", arg: 2, scope: !1758, file: !3, line: 971, type: !50)
!1764 = !DILocalVariable(name: "endline", scope: !1758, file: !3, line: 973, type: !135)
!1765 = !DILocation(line: 0, scope: !1758)
!1766 = !DILocation(line: 975, column: 14, scope: !1758)
!1767 = !DILocation(line: 976, column: 14, scope: !1758)
!1768 = !DILocation(line: 0, scope: !1080, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 976, column: 3, scope: !1758)
!1770 = !DILocation(line: 1014, column: 7, scope: !1088, inlinedAt: !1769)
!1771 = !DILocation(line: 1014, column: 7, scope: !1080, inlinedAt: !1769)
!1772 = !DILocation(line: 1016, column: 33, scope: !1091, inlinedAt: !1769)
!1773 = !DILocation(line: 1016, column: 44, scope: !1091, inlinedAt: !1769)
!1774 = !DILocation(line: 1017, column: 26, scope: !1094, inlinedAt: !1769)
!1775 = !DILocation(line: 1017, column: 11, scope: !1091, inlinedAt: !1769)
!1776 = !DILocation(line: 0, scope: !1097, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 1020, column: 13, scope: !1104, inlinedAt: !1769)
!1778 = !DILocation(line: 110, column: 10, scope: !1097, inlinedAt: !1777)
!1779 = !DILocation(line: 1021, column: 27, scope: !1104, inlinedAt: !1769)
!1780 = !DILocation(line: 1021, column: 38, scope: !1104, inlinedAt: !1769)
!1781 = !DILocation(line: 1021, column: 54, scope: !1104, inlinedAt: !1769)
!1782 = !DILocation(line: 1021, column: 24, scope: !1104, inlinedAt: !1769)
!1783 = !DILocation(line: 1018, column: 27, scope: !1094, inlinedAt: !1769)
!1784 = !DILocation(line: 1018, column: 9, scope: !1094, inlinedAt: !1769)
!1785 = distinct !{!1785, !1784, !1786, !746}
!1786 = !DILocation(line: 1022, column: 11, scope: !1094, inlinedAt: !1769)
!1787 = !DILocation(line: 1024, column: 10, scope: !1080, inlinedAt: !1769)
!1788 = !DILocation(line: 1024, column: 21, scope: !1080, inlinedAt: !1769)
!1789 = !DILocation(line: 1024, column: 3, scope: !1080, inlinedAt: !1769)
!1790 = !DILocation(line: 0, scope: !1097, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 1026, column: 7, scope: !1125, inlinedAt: !1769)
!1792 = !DILocation(line: 110, column: 10, scope: !1097, inlinedAt: !1791)
!1793 = !DILocation(line: 1027, column: 17, scope: !1125, inlinedAt: !1769)
!1794 = distinct !{!1794, !1789, !1795, !746}
!1795 = !DILocation(line: 1028, column: 5, scope: !1080, inlinedAt: !1769)
!1796 = !DILocation(line: 977, column: 3, scope: !1758)
!1797 = !DILocation(line: 978, column: 17, scope: !1758)
!1798 = !DILocation(line: 978, column: 14, scope: !1758)
!1799 = !DILocation(line: 0, scope: !1080, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 979, column: 3, scope: !1758)
!1801 = !DILocation(line: 1014, column: 7, scope: !1088, inlinedAt: !1800)
!1802 = !DILocation(line: 1014, column: 7, scope: !1080, inlinedAt: !1800)
!1803 = !DILocation(line: 1016, column: 33, scope: !1091, inlinedAt: !1800)
!1804 = !DILocation(line: 1016, column: 44, scope: !1091, inlinedAt: !1800)
!1805 = !DILocation(line: 1017, column: 22, scope: !1094, inlinedAt: !1800)
!1806 = !DILocation(line: 1017, column: 26, scope: !1094, inlinedAt: !1800)
!1807 = !DILocation(line: 1017, column: 11, scope: !1091, inlinedAt: !1800)
!1808 = !DILocation(line: 0, scope: !1097, inlinedAt: !1809)
!1809 = distinct !DILocation(line: 1020, column: 13, scope: !1104, inlinedAt: !1800)
!1810 = !DILocation(line: 110, column: 10, scope: !1097, inlinedAt: !1809)
!1811 = !DILocation(line: 1021, column: 27, scope: !1104, inlinedAt: !1800)
!1812 = !DILocation(line: 1021, column: 38, scope: !1104, inlinedAt: !1800)
!1813 = !DILocation(line: 1021, column: 54, scope: !1104, inlinedAt: !1800)
!1814 = !DILocation(line: 1021, column: 24, scope: !1104, inlinedAt: !1800)
!1815 = !DILocation(line: 1018, column: 27, scope: !1094, inlinedAt: !1800)
!1816 = !DILocation(line: 1018, column: 9, scope: !1094, inlinedAt: !1800)
!1817 = distinct !{!1817, !1816, !1818, !746}
!1818 = !DILocation(line: 1022, column: 11, scope: !1094, inlinedAt: !1800)
!1819 = !DILocation(line: 1024, column: 10, scope: !1080, inlinedAt: !1800)
!1820 = !DILocation(line: 1024, column: 21, scope: !1080, inlinedAt: !1800)
!1821 = !DILocation(line: 1024, column: 3, scope: !1080, inlinedAt: !1800)
!1822 = !DILocation(line: 0, scope: !1097, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 1026, column: 7, scope: !1125, inlinedAt: !1800)
!1824 = !DILocation(line: 110, column: 10, scope: !1097, inlinedAt: !1823)
!1825 = !DILocation(line: 1027, column: 17, scope: !1125, inlinedAt: !1800)
!1826 = distinct !{!1826, !1821, !1827, !746}
!1827 = !DILocation(line: 1028, column: 5, scope: !1080, inlinedAt: !1800)
!1828 = !DILocation(line: 981, column: 16, scope: !1758)
!1829 = !DILocation(line: 981, column: 27, scope: !1758)
!1830 = !DILocation(line: 982, column: 12, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 982, column: 3)
!1832 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 982, column: 3)
!1833 = !DILocation(line: 982, column: 3, scope: !1832)
!1834 = !DILocalVariable(name: "w", arg: 1, scope: !1835, file: !3, line: 995, type: !135)
!1835 = distinct !DISubprogram(name: "put_word", scope: !3, file: !3, line: 995, type: !1360, scopeLine: 996, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1836)
!1836 = !{!1834, !1837, !1838}
!1837 = !DILocalVariable(name: "s", scope: !1835, file: !3, line: 997, type: !55)
!1838 = !DILocalVariable(name: "n", scope: !1835, file: !3, line: 998, type: !50)
!1839 = !DILocation(line: 0, scope: !1835, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 984, column: 7, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 983, column: 5)
!1842 = !DILocation(line: 1001, column: 15, scope: !1843, inlinedAt: !1840)
!1843 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 1001, column: 3)
!1844 = !DILocation(line: 1001, column: 25, scope: !1845, inlinedAt: !1840)
!1845 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 1001, column: 3)
!1846 = !DILocation(line: 1001, column: 3, scope: !1843, inlinedAt: !1840)
!1847 = !DILocation(line: 1000, column: 10, scope: !1835, inlinedAt: !1840)
!1848 = !DILocation(line: 1002, column: 5, scope: !1845, inlinedAt: !1840)
!1849 = !DILocation(line: 0, scope: !1097, inlinedAt: !1850)
!1850 = distinct !DILocation(line: 1002, column: 5, scope: !1845, inlinedAt: !1840)
!1851 = !DILocation(line: 110, column: 10, scope: !1097, inlinedAt: !1850)
!1852 = !DILocation(line: 1001, column: 32, scope: !1845, inlinedAt: !1840)
!1853 = distinct !{!1853, !1846, !1854, !746}
!1854 = !DILocation(line: 1002, column: 5, scope: !1843, inlinedAt: !1840)
!1855 = !DILocation(line: 1003, column: 20, scope: !1835, inlinedAt: !1840)
!1856 = !DILocation(line: 1003, column: 14, scope: !1835, inlinedAt: !1840)
!1857 = !DILocation(line: 985, column: 21, scope: !1841)
!1858 = !DILocation(line: 0, scope: !1080, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 985, column: 7, scope: !1841)
!1860 = !DILocation(line: 1013, column: 29, scope: !1080, inlinedAt: !1859)
!1861 = !DILocation(line: 1014, column: 7, scope: !1088, inlinedAt: !1859)
!1862 = !DILocation(line: 1014, column: 7, scope: !1080, inlinedAt: !1859)
!1863 = !DILocation(line: 1016, column: 33, scope: !1091, inlinedAt: !1859)
!1864 = !DILocation(line: 1016, column: 44, scope: !1091, inlinedAt: !1859)
!1865 = !DILocation(line: 1017, column: 22, scope: !1094, inlinedAt: !1859)
!1866 = !DILocation(line: 1017, column: 26, scope: !1094, inlinedAt: !1859)
!1867 = !DILocation(line: 1017, column: 11, scope: !1091, inlinedAt: !1859)
!1868 = !DILocation(line: 0, scope: !1097, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 1020, column: 13, scope: !1104, inlinedAt: !1859)
!1870 = !DILocation(line: 110, column: 10, scope: !1097, inlinedAt: !1869)
!1871 = !DILocation(line: 1021, column: 27, scope: !1104, inlinedAt: !1859)
!1872 = !DILocation(line: 1021, column: 38, scope: !1104, inlinedAt: !1859)
!1873 = !DILocation(line: 1021, column: 54, scope: !1104, inlinedAt: !1859)
!1874 = !DILocation(line: 1021, column: 24, scope: !1104, inlinedAt: !1859)
!1875 = !DILocation(line: 1018, column: 27, scope: !1094, inlinedAt: !1859)
!1876 = !DILocation(line: 1018, column: 9, scope: !1094, inlinedAt: !1859)
!1877 = distinct !{!1877, !1876, !1878, !746}
!1878 = !DILocation(line: 1022, column: 11, scope: !1094, inlinedAt: !1859)
!1879 = !DILocation(line: 1024, column: 10, scope: !1080, inlinedAt: !1859)
!1880 = !DILocation(line: 1024, column: 21, scope: !1080, inlinedAt: !1859)
!1881 = !DILocation(line: 1024, column: 3, scope: !1080, inlinedAt: !1859)
!1882 = !DILocation(line: 0, scope: !1097, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 1026, column: 7, scope: !1125, inlinedAt: !1859)
!1884 = !DILocation(line: 110, column: 10, scope: !1097, inlinedAt: !1883)
!1885 = !DILocation(line: 1027, column: 17, scope: !1125, inlinedAt: !1859)
!1886 = distinct !{!1886, !1881, !1887, !746}
!1887 = !DILocation(line: 1028, column: 5, scope: !1080, inlinedAt: !1859)
!1888 = !DILocation(line: 982, column: 25, scope: !1831)
!1889 = distinct !{!1889, !1833, !1890, !746}
!1890 = !DILocation(line: 986, column: 5, scope: !1832)
!1891 = !DILocation(line: 0, scope: !1835, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 987, column: 3, scope: !1758)
!1893 = !DILocation(line: 1001, column: 15, scope: !1843, inlinedAt: !1892)
!1894 = !DILocation(line: 1001, column: 25, scope: !1845, inlinedAt: !1892)
!1895 = !DILocation(line: 1001, column: 3, scope: !1843, inlinedAt: !1892)
!1896 = !DILocation(line: 1000, column: 10, scope: !1835, inlinedAt: !1892)
!1897 = !DILocation(line: 1002, column: 5, scope: !1845, inlinedAt: !1892)
!1898 = !DILocation(line: 0, scope: !1097, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 1002, column: 5, scope: !1845, inlinedAt: !1892)
!1900 = !DILocation(line: 110, column: 10, scope: !1097, inlinedAt: !1899)
!1901 = !DILocation(line: 1001, column: 32, scope: !1845, inlinedAt: !1892)
!1902 = distinct !{!1902, !1895, !1903, !746}
!1903 = !DILocation(line: 1002, column: 5, scope: !1843, inlinedAt: !1892)
!1904 = !DILocation(line: 1003, column: 20, scope: !1835, inlinedAt: !1892)
!1905 = !DILocation(line: 1003, column: 14, scope: !1835, inlinedAt: !1892)
!1906 = !DILocation(line: 988, column: 20, scope: !1758)
!1907 = !DILocation(line: 0, scope: !1097, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 989, column: 3, scope: !1758)
!1909 = !DILocation(line: 110, column: 10, scope: !1097, inlinedAt: !1908)
!1910 = !DILocation(line: 990, column: 1, scope: !1758)
!1911 = distinct !DISubprogram(name: "flush_paragraph", scope: !3, file: !3, line: 784, type: !704, scopeLine: 785, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1912)
!1912 = !{!1913, !1914, !1915, !1916, !1917, !1921, !1922}
!1913 = !DILocalVariable(name: "split_point", scope: !1911, file: !3, line: 786, type: !135)
!1914 = !DILocalVariable(name: "w", scope: !1911, file: !3, line: 787, type: !135)
!1915 = !DILocalVariable(name: "shift", scope: !1911, file: !3, line: 788, type: !50)
!1916 = !DILocalVariable(name: "best_break", scope: !1911, file: !3, line: 789, type: !57)
!1917 = !DILocalVariable(name: "__ptr", scope: !1918, file: !3, line: 795, type: !55)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 795, column: 7)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 794, column: 5)
!1920 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 793, column: 7)
!1921 = !DILocalVariable(name: "__stream", scope: !1918, file: !3, line: 795, type: !849)
!1922 = !DILocalVariable(name: "__cnt", scope: !1918, file: !3, line: 795, type: !52)
!1923 = !DILocation(line: 793, column: 7, scope: !1920)
!1924 = !DILocation(line: 793, column: 18, scope: !1920)
!1925 = !DILocation(line: 793, column: 7, scope: !1911)
!1926 = !DILocation(line: 795, column: 7, scope: !1919)
!1927 = !DILocation(line: 796, column: 12, scope: !1919)
!1928 = !DILocation(line: 797, column: 7, scope: !1919)
!1929 = !DILocation(line: 806, column: 3, scope: !1911)
!1930 = !DILocation(line: 0, scope: !1911)
!1931 = !DILocation(line: 0, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 812, column: 3)
!1933 = !DILocation(line: 812, column: 32, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 812, column: 3)
!1935 = !DILocation(line: 812, column: 3, scope: !1932)
!1936 = !DILocation(line: 814, column: 14, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 814, column: 11)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 813, column: 5)
!1939 = !DILocation(line: 814, column: 29, scope: !1937)
!1940 = !DILocation(line: 814, column: 41, scope: !1937)
!1941 = !DILocation(line: 814, column: 24, scope: !1937)
!1942 = !DILocation(line: 814, column: 51, scope: !1937)
!1943 = !DILocation(line: 814, column: 11, scope: !1938)
!1944 = !DILocation(line: 819, column: 22, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 819, column: 11)
!1946 = !DILocation(line: 819, column: 11, scope: !1938)
!1947 = distinct !{!1947, !1935, !1948, !746}
!1948 = !DILocation(line: 821, column: 5, scope: !1932)
!1949 = !DILocation(line: 0, scope: !1359, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 822, column: 3, scope: !1911)
!1951 = !DILocation(line: 962, column: 19, scope: !1359, inlinedAt: !1950)
!1952 = !DILocation(line: 962, column: 3, scope: !1359, inlinedAt: !1950)
!1953 = !DILocation(line: 0, scope: !1369, inlinedAt: !1950)
!1954 = !DILocation(line: 963, column: 32, scope: !1373, inlinedAt: !1950)
!1955 = !DILocation(line: 963, column: 3, scope: !1369, inlinedAt: !1950)
!1956 = !DILocation(line: 964, column: 18, scope: !1373, inlinedAt: !1950)
!1957 = !DILocation(line: 964, column: 5, scope: !1373, inlinedAt: !1950)
!1958 = !DILocation(line: 963, column: 50, scope: !1373, inlinedAt: !1950)
!1959 = distinct !{!1959, !1955, !1960, !746}
!1960 = !DILocation(line: 964, column: 30, scope: !1369, inlinedAt: !1950)
!1961 = !DILocation(line: 827, column: 34, scope: !1911)
!1962 = !DILocation(line: 827, column: 40, scope: !1911)
!1963 = !DILocation(line: 827, column: 45, scope: !1911)
!1964 = !DILocalVariable(name: "__dest", arg: 1, scope: !1965, file: !1966, line: 34, type: !47)
!1965 = distinct !DISubprogram(name: "memmove", scope: !1966, file: !1966, line: 34, type: !1967, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1971)
!1966 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!47, !47, !1969, !52}
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1971 = !{!1964, !1972, !1973}
!1972 = !DILocalVariable(name: "__src", arg: 2, scope: !1965, file: !1966, line: 34, type: !1969)
!1973 = !DILocalVariable(name: "__len", arg: 3, scope: !1965, file: !1966, line: 34, type: !52)
!1974 = !DILocation(line: 0, scope: !1965, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 827, column: 3, scope: !1911)
!1976 = !DILocation(line: 36, column: 10, scope: !1965, inlinedAt: !1975)
!1977 = !DILocation(line: 828, column: 24, scope: !1911)
!1978 = !DILocation(line: 828, column: 29, scope: !1911)
!1979 = !DILocation(line: 828, column: 11, scope: !1911)
!1980 = !DILocation(line: 829, column: 8, scope: !1911)
!1981 = !DILocation(line: 833, column: 30, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 833, column: 3)
!1983 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 833, column: 3)
!1984 = !DILocation(line: 833, column: 27, scope: !1982)
!1985 = !DILocation(line: 833, column: 3, scope: !1983)
!1986 = !DILocation(line: 834, column: 8, scope: !1982)
!1987 = !DILocation(line: 834, column: 13, scope: !1982)
!1988 = !DILocation(line: 833, column: 43, scope: !1982)
!1989 = distinct !{!1989, !1985, !1990, !746}
!1990 = !DILocation(line: 834, column: 16, scope: !1983)
!1991 = !DILocation(line: 839, column: 18, scope: !1911)
!1992 = !DILocation(line: 839, column: 43, scope: !1911)
!1993 = !DILocation(line: 839, column: 62, scope: !1911)
!1994 = !DILocation(line: 0, scope: !1965, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 839, column: 3, scope: !1911)
!1996 = !DILocation(line: 36, column: 10, scope: !1965, inlinedAt: !1995)
!1997 = !DILocation(line: 840, column: 29, scope: !1911)
!1998 = !DILocation(line: 840, column: 14, scope: !1911)
!1999 = !DILocation(line: 841, column: 1, scope: !1911)
!2000 = !DISubprogram(name: "fwrite_unlocked", scope: !771, file: !771, line: 680, type: !2001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !148)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!54, !1969, !54, !54, !774}
!2003 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !153, file: !153, line: 51, type: !716, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !152, retainedNodes: !2004)
!2004 = !{!2005}
!2005 = !DILocalVariable(name: "file", arg: 1, scope: !2003, file: !153, line: 51, type: !55)
!2006 = !DILocation(line: 0, scope: !2003)
!2007 = !DILocation(line: 53, column: 13, scope: !2003)
!2008 = !DILocation(line: 54, column: 1, scope: !2003)
!2009 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !153, file: !153, line: 88, type: !1232, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !152, retainedNodes: !2010)
!2010 = !{!2011}
!2011 = !DILocalVariable(name: "ignore", arg: 1, scope: !2009, file: !153, line: 88, type: !62)
!2012 = !DILocation(line: 0, scope: !2009)
!2013 = !DILocation(line: 90, column: 16, scope: !2009)
!2014 = !{!2015, !2015, i64 0}
!2015 = !{!"_Bool", !696, i64 0}
!2016 = !DILocation(line: 91, column: 1, scope: !2009)
!2017 = distinct !DISubprogram(name: "close_stdout", scope: !153, file: !153, line: 117, type: !704, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !152, retainedNodes: !2018)
!2018 = !{!2019}
!2019 = !DILocalVariable(name: "write_error", scope: !2020, file: !153, line: 122, type: !55)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !153, line: 121, column: 5)
!2021 = distinct !DILexicalBlock(scope: !2017, file: !153, line: 119, column: 7)
!2022 = !DILocation(line: 119, column: 21, scope: !2021)
!2023 = !DILocation(line: 119, column: 7, scope: !2021)
!2024 = !DILocation(line: 119, column: 29, scope: !2021)
!2025 = !DILocation(line: 120, column: 7, scope: !2021)
!2026 = !DILocation(line: 120, column: 12, scope: !2021)
!2027 = !{i8 0, i8 2}
!2028 = !DILocation(line: 120, column: 25, scope: !2021)
!2029 = !DILocation(line: 120, column: 28, scope: !2021)
!2030 = !DILocation(line: 120, column: 34, scope: !2021)
!2031 = !DILocation(line: 119, column: 7, scope: !2017)
!2032 = !DILocation(line: 122, column: 33, scope: !2020)
!2033 = !DILocation(line: 0, scope: !2020)
!2034 = !DILocation(line: 123, column: 11, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2020, file: !153, line: 123, column: 11)
!2036 = !DILocation(line: 0, scope: !2035)
!2037 = !DILocation(line: 123, column: 11, scope: !2020)
!2038 = !DILocation(line: 124, column: 36, scope: !2035)
!2039 = !DILocation(line: 124, column: 9, scope: !2035)
!2040 = !DILocation(line: 127, column: 9, scope: !2035)
!2041 = !DILocation(line: 129, column: 14, scope: !2020)
!2042 = !DILocation(line: 129, column: 7, scope: !2020)
!2043 = !DILocation(line: 134, column: 42, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2017, file: !153, line: 134, column: 7)
!2045 = !DILocation(line: 134, column: 28, scope: !2044)
!2046 = !DILocation(line: 134, column: 50, scope: !2044)
!2047 = !DILocation(line: 134, column: 7, scope: !2017)
!2048 = !DILocation(line: 135, column: 12, scope: !2044)
!2049 = !DILocation(line: 135, column: 5, scope: !2044)
!2050 = !DILocation(line: 136, column: 1, scope: !2017)
!2051 = distinct !DISubprogram(name: "fdadvise", scope: !228, file: !228, line: 31, type: !2052, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !2056)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null, !50, !2054, !2054, !2055}
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !771, line: 63, baseType: !797)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!2056 = !{!2057, !2058, !2059, !2060, !2061}
!2057 = !DILocalVariable(name: "fd", arg: 1, scope: !2051, file: !228, line: 31, type: !50)
!2058 = !DILocalVariable(name: "offset", arg: 2, scope: !2051, file: !228, line: 31, type: !2054)
!2059 = !DILocalVariable(name: "len", arg: 3, scope: !2051, file: !228, line: 31, type: !2054)
!2060 = !DILocalVariable(name: "advice", arg: 4, scope: !2051, file: !228, line: 31, type: !2055)
!2061 = !DILocalVariable(name: "__x", scope: !2062, file: !228, line: 34, type: !50)
!2062 = distinct !DILexicalBlock(scope: !2051, file: !228, line: 34, column: 3)
!2063 = !DILocation(line: 0, scope: !2051)
!2064 = !DILocation(line: 34, column: 3, scope: !2062)
!2065 = !DILocation(line: 0, scope: !2062)
!2066 = !DILocation(line: 36, column: 1, scope: !2051)
!2067 = !DISubprogram(name: "posix_fadvise", scope: !2068, file: !2068, line: 288, type: !2069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !148)
!2068 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!50, !50, !58, !58, !50}
!2071 = distinct !DISubprogram(name: "fadvise", scope: !228, file: !228, line: 39, type: !2072, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !2108)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{null, !2074, !2055}
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !851, line: 7, baseType: !2076)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !776, line: 49, size: 1728, elements: !2077)
!2077 = !{!2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2076, file: !776, line: 51, baseType: !50, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2076, file: !776, line: 54, baseType: !45, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2076, file: !776, line: 55, baseType: !45, size: 64, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2076, file: !776, line: 56, baseType: !45, size: 64, offset: 192)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2076, file: !776, line: 57, baseType: !45, size: 64, offset: 256)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2076, file: !776, line: 58, baseType: !45, size: 64, offset: 320)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2076, file: !776, line: 59, baseType: !45, size: 64, offset: 384)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2076, file: !776, line: 60, baseType: !45, size: 64, offset: 448)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2076, file: !776, line: 61, baseType: !45, size: 64, offset: 512)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2076, file: !776, line: 64, baseType: !45, size: 64, offset: 576)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2076, file: !776, line: 65, baseType: !45, size: 64, offset: 640)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2076, file: !776, line: 66, baseType: !45, size: 64, offset: 704)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2076, file: !776, line: 68, baseType: !791, size: 64, offset: 768)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2076, file: !776, line: 70, baseType: !2092, size: 64, offset: 832)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2076, file: !776, line: 72, baseType: !50, size: 32, offset: 896)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2076, file: !776, line: 73, baseType: !50, size: 32, offset: 928)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2076, file: !776, line: 74, baseType: !797, size: 64, offset: 960)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2076, file: !776, line: 77, baseType: !51, size: 16, offset: 1024)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2076, file: !776, line: 78, baseType: !801, size: 8, offset: 1040)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2076, file: !776, line: 79, baseType: !803, size: 8, offset: 1048)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2076, file: !776, line: 81, baseType: !807, size: 64, offset: 1088)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2076, file: !776, line: 89, baseType: !810, size: 64, offset: 1152)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2076, file: !776, line: 91, baseType: !812, size: 64, offset: 1216)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2076, file: !776, line: 92, baseType: !815, size: 64, offset: 1280)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2076, file: !776, line: 93, baseType: !2092, size: 64, offset: 1344)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2076, file: !776, line: 94, baseType: !47, size: 64, offset: 1408)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2076, file: !776, line: 95, baseType: !52, size: 64, offset: 1472)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2076, file: !776, line: 96, baseType: !50, size: 32, offset: 1536)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2076, file: !776, line: 98, baseType: !822, size: 160, offset: 1568)
!2108 = !{!2109, !2110}
!2109 = !DILocalVariable(name: "fp", arg: 1, scope: !2071, file: !228, line: 39, type: !2074)
!2110 = !DILocalVariable(name: "advice", arg: 2, scope: !2071, file: !228, line: 39, type: !2055)
!2111 = !DILocation(line: 0, scope: !2071)
!2112 = !DILocation(line: 41, column: 7, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2071, file: !228, line: 41, column: 7)
!2114 = !DILocation(line: 41, column: 7, scope: !2071)
!2115 = !DILocation(line: 42, column: 15, scope: !2113)
!2116 = !DILocation(line: 0, scope: !2051, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 42, column: 5, scope: !2113)
!2118 = !DILocation(line: 34, column: 3, scope: !2062, inlinedAt: !2117)
!2119 = !DILocation(line: 0, scope: !2062, inlinedAt: !2117)
!2120 = !DILocation(line: 42, column: 5, scope: !2113)
!2121 = !DILocation(line: 43, column: 1, scope: !2071)
!2122 = !DISubprogram(name: "fileno", scope: !771, file: !771, line: 785, type: !2123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !148)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!50, !2092}
!2125 = distinct !DISubprogram(name: "set_program_name", scope: !166, file: !166, line: 39, type: !716, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !2126)
!2126 = !{!2127, !2128, !2129}
!2127 = !DILocalVariable(name: "argv0", arg: 1, scope: !2125, file: !166, line: 39, type: !55)
!2128 = !DILocalVariable(name: "slash", scope: !2125, file: !166, line: 46, type: !55)
!2129 = !DILocalVariable(name: "base", scope: !2125, file: !166, line: 47, type: !55)
!2130 = !DILocation(line: 0, scope: !2125)
!2131 = !DILocation(line: 51, column: 13, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2125, file: !166, line: 51, column: 7)
!2133 = !DILocation(line: 51, column: 7, scope: !2125)
!2134 = !DILocation(line: 55, column: 14, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2132, file: !166, line: 52, column: 5)
!2136 = !DILocation(line: 54, column: 7, scope: !2135)
!2137 = !DILocation(line: 56, column: 7, scope: !2135)
!2138 = !DILocation(line: 59, column: 11, scope: !2125)
!2139 = !DILocation(line: 60, column: 17, scope: !2125)
!2140 = !DILocation(line: 60, column: 11, scope: !2125)
!2141 = !DILocation(line: 61, column: 12, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2125, file: !166, line: 61, column: 7)
!2143 = !DILocation(line: 61, column: 20, scope: !2142)
!2144 = !DILocation(line: 61, column: 25, scope: !2142)
!2145 = !DILocation(line: 61, column: 42, scope: !2142)
!2146 = !DILocation(line: 61, column: 28, scope: !2142)
!2147 = !DILocation(line: 61, column: 61, scope: !2142)
!2148 = !DILocation(line: 61, column: 7, scope: !2125)
!2149 = !DILocation(line: 64, column: 11, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !166, line: 64, column: 11)
!2151 = distinct !DILexicalBlock(scope: !2142, file: !166, line: 62, column: 5)
!2152 = !DILocation(line: 64, column: 36, scope: !2150)
!2153 = !DILocation(line: 64, column: 11, scope: !2151)
!2154 = !DILocation(line: 66, column: 24, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2150, file: !166, line: 65, column: 9)
!2156 = !DILocation(line: 70, column: 41, scope: !2155)
!2157 = !DILocation(line: 72, column: 9, scope: !2155)
!2158 = !DILocation(line: 84, column: 16, scope: !2125)
!2159 = !DILocation(line: 90, column: 27, scope: !2125)
!2160 = !DILocation(line: 92, column: 1, scope: !2125)
!2161 = distinct !DISubprogram(name: "clone_quoting_options", scope: !172, file: !172, line: 122, type: !2162, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2165)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!2164, !2164}
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!2165 = !{!2166, !2167, !2168}
!2166 = !DILocalVariable(name: "o", arg: 1, scope: !2161, file: !172, line: 122, type: !2164)
!2167 = !DILocalVariable(name: "e", scope: !2161, file: !172, line: 124, type: !50)
!2168 = !DILocalVariable(name: "p", scope: !2161, file: !172, line: 125, type: !2164)
!2169 = !DILocation(line: 0, scope: !2161)
!2170 = !DILocation(line: 124, column: 11, scope: !2161)
!2171 = !DILocation(line: 125, column: 40, scope: !2161)
!2172 = !DILocation(line: 125, column: 31, scope: !2161)
!2173 = !DILocation(line: 127, column: 9, scope: !2161)
!2174 = !DILocation(line: 128, column: 3, scope: !2161)
!2175 = distinct !DISubprogram(name: "get_quoting_style", scope: !172, file: !172, line: 133, type: !2176, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2180)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!5, !2178}
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!2180 = !{!2181}
!2181 = !DILocalVariable(name: "o", arg: 1, scope: !2175, file: !172, line: 133, type: !2178)
!2182 = !DILocation(line: 0, scope: !2175)
!2183 = !DILocation(line: 135, column: 11, scope: !2175)
!2184 = !DILocation(line: 135, column: 46, scope: !2175)
!2185 = !{!2186, !696, i64 0}
!2186 = !{!"quoting_options", !696, i64 0, !865, i64 4, !696, i64 8, !695, i64 40, !695, i64 48}
!2187 = !DILocation(line: 135, column: 3, scope: !2175)
!2188 = distinct !DISubprogram(name: "set_quoting_style", scope: !172, file: !172, line: 141, type: !2189, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2191)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{null, !2164, !5}
!2191 = !{!2192, !2193}
!2192 = !DILocalVariable(name: "o", arg: 1, scope: !2188, file: !172, line: 141, type: !2164)
!2193 = !DILocalVariable(name: "s", arg: 2, scope: !2188, file: !172, line: 141, type: !5)
!2194 = !DILocation(line: 0, scope: !2188)
!2195 = !DILocation(line: 143, column: 4, scope: !2188)
!2196 = !DILocation(line: 143, column: 39, scope: !2188)
!2197 = !DILocation(line: 143, column: 45, scope: !2188)
!2198 = !DILocation(line: 144, column: 1, scope: !2188)
!2199 = distinct !DISubprogram(name: "set_char_quoting", scope: !172, file: !172, line: 152, type: !2200, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2202)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!50, !2164, !46, !50}
!2202 = !{!2203, !2204, !2205, !2206, !2207, !2209, !2210}
!2203 = !DILocalVariable(name: "o", arg: 1, scope: !2199, file: !172, line: 152, type: !2164)
!2204 = !DILocalVariable(name: "c", arg: 2, scope: !2199, file: !172, line: 152, type: !46)
!2205 = !DILocalVariable(name: "i", arg: 3, scope: !2199, file: !172, line: 152, type: !50)
!2206 = !DILocalVariable(name: "uc", scope: !2199, file: !172, line: 154, type: !49)
!2207 = !DILocalVariable(name: "p", scope: !2199, file: !172, line: 155, type: !2208)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2209 = !DILocalVariable(name: "shift", scope: !2199, file: !172, line: 157, type: !50)
!2210 = !DILocalVariable(name: "r", scope: !2199, file: !172, line: 158, type: !50)
!2211 = !DILocation(line: 0, scope: !2199)
!2212 = !DILocation(line: 156, column: 6, scope: !2199)
!2213 = !DILocation(line: 156, column: 62, scope: !2199)
!2214 = !DILocation(line: 156, column: 57, scope: !2199)
!2215 = !DILocation(line: 157, column: 15, scope: !2199)
!2216 = !DILocation(line: 158, column: 12, scope: !2199)
!2217 = !DILocation(line: 158, column: 15, scope: !2199)
!2218 = !DILocation(line: 158, column: 25, scope: !2199)
!2219 = !DILocation(line: 159, column: 13, scope: !2199)
!2220 = !DILocation(line: 159, column: 18, scope: !2199)
!2221 = !DILocation(line: 159, column: 23, scope: !2199)
!2222 = !DILocation(line: 159, column: 6, scope: !2199)
!2223 = !DILocation(line: 160, column: 3, scope: !2199)
!2224 = distinct !DISubprogram(name: "set_quoting_flags", scope: !172, file: !172, line: 168, type: !2225, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2227)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!50, !2164, !50}
!2227 = !{!2228, !2229, !2230}
!2228 = !DILocalVariable(name: "o", arg: 1, scope: !2224, file: !172, line: 168, type: !2164)
!2229 = !DILocalVariable(name: "i", arg: 2, scope: !2224, file: !172, line: 168, type: !50)
!2230 = !DILocalVariable(name: "r", scope: !2224, file: !172, line: 170, type: !50)
!2231 = !DILocation(line: 0, scope: !2224)
!2232 = !DILocation(line: 171, column: 8, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2224, file: !172, line: 171, column: 7)
!2234 = !DILocation(line: 171, column: 7, scope: !2224)
!2235 = !DILocation(line: 173, column: 10, scope: !2224)
!2236 = !{!2186, !865, i64 4}
!2237 = !DILocation(line: 174, column: 12, scope: !2224)
!2238 = !DILocation(line: 175, column: 3, scope: !2224)
!2239 = distinct !DISubprogram(name: "set_custom_quoting", scope: !172, file: !172, line: 179, type: !2240, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2242)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{null, !2164, !55, !55}
!2242 = !{!2243, !2244, !2245}
!2243 = !DILocalVariable(name: "o", arg: 1, scope: !2239, file: !172, line: 179, type: !2164)
!2244 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2239, file: !172, line: 180, type: !55)
!2245 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2239, file: !172, line: 180, type: !55)
!2246 = !DILocation(line: 0, scope: !2239)
!2247 = !DILocation(line: 182, column: 8, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2239, file: !172, line: 182, column: 7)
!2249 = !DILocation(line: 182, column: 7, scope: !2239)
!2250 = !DILocation(line: 184, column: 6, scope: !2239)
!2251 = !DILocation(line: 184, column: 12, scope: !2239)
!2252 = !DILocation(line: 185, column: 8, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2239, file: !172, line: 185, column: 7)
!2254 = !DILocation(line: 185, column: 19, scope: !2253)
!2255 = !DILocation(line: 186, column: 5, scope: !2253)
!2256 = !DILocation(line: 187, column: 6, scope: !2239)
!2257 = !DILocation(line: 187, column: 17, scope: !2239)
!2258 = !{!2186, !695, i64 40}
!2259 = !DILocation(line: 188, column: 6, scope: !2239)
!2260 = !DILocation(line: 188, column: 18, scope: !2239)
!2261 = !{!2186, !695, i64 48}
!2262 = !DILocation(line: 189, column: 1, scope: !2239)
!2263 = distinct !DISubprogram(name: "quotearg_buffer", scope: !172, file: !172, line: 784, type: !2264, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2266)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!52, !45, !52, !55, !52, !2178}
!2266 = !{!2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274}
!2267 = !DILocalVariable(name: "buffer", arg: 1, scope: !2263, file: !172, line: 784, type: !45)
!2268 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2263, file: !172, line: 784, type: !52)
!2269 = !DILocalVariable(name: "arg", arg: 3, scope: !2263, file: !172, line: 785, type: !55)
!2270 = !DILocalVariable(name: "argsize", arg: 4, scope: !2263, file: !172, line: 785, type: !52)
!2271 = !DILocalVariable(name: "o", arg: 5, scope: !2263, file: !172, line: 786, type: !2178)
!2272 = !DILocalVariable(name: "p", scope: !2263, file: !172, line: 788, type: !2178)
!2273 = !DILocalVariable(name: "e", scope: !2263, file: !172, line: 789, type: !50)
!2274 = !DILocalVariable(name: "r", scope: !2263, file: !172, line: 790, type: !52)
!2275 = !DILocation(line: 0, scope: !2263)
!2276 = !DILocation(line: 788, column: 37, scope: !2263)
!2277 = !DILocation(line: 789, column: 11, scope: !2263)
!2278 = !DILocation(line: 791, column: 43, scope: !2263)
!2279 = !DILocation(line: 791, column: 53, scope: !2263)
!2280 = !DILocation(line: 791, column: 60, scope: !2263)
!2281 = !DILocation(line: 792, column: 43, scope: !2263)
!2282 = !DILocation(line: 792, column: 58, scope: !2263)
!2283 = !DILocation(line: 790, column: 14, scope: !2263)
!2284 = !DILocation(line: 793, column: 9, scope: !2263)
!2285 = !DILocation(line: 794, column: 3, scope: !2263)
!2286 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !172, file: !172, line: 256, type: !2287, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2291)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!52, !45, !52, !55, !52, !5, !50, !2289, !55, !55}
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2291 = !{!2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2316, !2317, !2318, !2319, !2320, !2323, !2324, !2342, !2345, !2346, !2353, !2356, !2357, !2358, !2359, !2360, !2361}
!2292 = !DILocalVariable(name: "buffer", arg: 1, scope: !2286, file: !172, line: 256, type: !45)
!2293 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2286, file: !172, line: 256, type: !52)
!2294 = !DILocalVariable(name: "arg", arg: 3, scope: !2286, file: !172, line: 257, type: !55)
!2295 = !DILocalVariable(name: "argsize", arg: 4, scope: !2286, file: !172, line: 257, type: !52)
!2296 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2286, file: !172, line: 258, type: !5)
!2297 = !DILocalVariable(name: "flags", arg: 6, scope: !2286, file: !172, line: 258, type: !50)
!2298 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2286, file: !172, line: 259, type: !2289)
!2299 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2286, file: !172, line: 260, type: !55)
!2300 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2286, file: !172, line: 261, type: !55)
!2301 = !DILocalVariable(name: "i", scope: !2286, file: !172, line: 263, type: !52)
!2302 = !DILocalVariable(name: "len", scope: !2286, file: !172, line: 264, type: !52)
!2303 = !DILocalVariable(name: "orig_buffersize", scope: !2286, file: !172, line: 265, type: !52)
!2304 = !DILocalVariable(name: "quote_string", scope: !2286, file: !172, line: 266, type: !55)
!2305 = !DILocalVariable(name: "quote_string_len", scope: !2286, file: !172, line: 267, type: !52)
!2306 = !DILocalVariable(name: "backslash_escapes", scope: !2286, file: !172, line: 268, type: !62)
!2307 = !DILocalVariable(name: "unibyte_locale", scope: !2286, file: !172, line: 269, type: !62)
!2308 = !DILocalVariable(name: "elide_outer_quotes", scope: !2286, file: !172, line: 270, type: !62)
!2309 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2286, file: !172, line: 271, type: !62)
!2310 = !DILocalVariable(name: "encountered_single_quote", scope: !2286, file: !172, line: 272, type: !62)
!2311 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2286, file: !172, line: 273, type: !62)
!2312 = !DILocalVariable(name: "c", scope: !2313, file: !172, line: 402, type: !49)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !172, line: 401, column: 5)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !172, line: 400, column: 3)
!2315 = distinct !DILexicalBlock(scope: !2286, file: !172, line: 400, column: 3)
!2316 = !DILocalVariable(name: "esc", scope: !2313, file: !172, line: 403, type: !49)
!2317 = !DILocalVariable(name: "is_right_quote", scope: !2313, file: !172, line: 404, type: !62)
!2318 = !DILocalVariable(name: "escaping", scope: !2313, file: !172, line: 405, type: !62)
!2319 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2313, file: !172, line: 406, type: !62)
!2320 = !DILocalVariable(name: "m", scope: !2321, file: !172, line: 610, type: !52)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !172, line: 608, column: 11)
!2322 = distinct !DILexicalBlock(scope: !2313, file: !172, line: 426, column: 9)
!2323 = !DILocalVariable(name: "printable", scope: !2321, file: !172, line: 612, type: !62)
!2324 = !DILocalVariable(name: "mbstate", scope: !2325, file: !172, line: 621, type: !2327)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !172, line: 620, column: 15)
!2326 = distinct !DILexicalBlock(scope: !2321, file: !172, line: 614, column: 17)
!2327 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2328, line: 6, baseType: !2329)
!2328 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2330, line: 21, baseType: !2331)
!2330 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2330, line: 13, size: 64, elements: !2332)
!2332 = !{!2333, !2334}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2331, file: !2330, line: 15, baseType: !50, size: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2331, file: !2330, line: 20, baseType: !2335, size: 32, offset: 32)
!2335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2331, file: !2330, line: 16, size: 32, elements: !2336)
!2336 = !{!2337, !2338}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2335, file: !2330, line: 18, baseType: !7, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2335, file: !2330, line: 19, baseType: !2339, size: 32)
!2339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !2340)
!2340 = !{!2341}
!2341 = !DISubrange(count: 4)
!2342 = !DILocalVariable(name: "w", scope: !2343, file: !172, line: 631, type: !2344)
!2343 = distinct !DILexicalBlock(scope: !2325, file: !172, line: 630, column: 19)
!2344 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !53, line: 74, baseType: !50)
!2345 = !DILocalVariable(name: "bytes", scope: !2343, file: !172, line: 632, type: !52)
!2346 = !DILocalVariable(name: "j", scope: !2347, file: !172, line: 657, type: !52)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !172, line: 656, column: 27)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !172, line: 654, column: 29)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !172, line: 649, column: 23)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !172, line: 641, column: 30)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !172, line: 636, column: 30)
!2352 = distinct !DILexicalBlock(scope: !2343, file: !172, line: 634, column: 25)
!2353 = !DILocalVariable(name: "ilim", scope: !2354, file: !172, line: 684, type: !52)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !172, line: 681, column: 15)
!2355 = distinct !DILexicalBlock(scope: !2321, file: !172, line: 680, column: 17)
!2356 = !DILabel(scope: !2286, name: "process_input", file: !172, line: 314)
!2357 = !DILabel(scope: !2322, name: "c_and_shell_escape", file: !172, line: 512)
!2358 = !DILabel(scope: !2322, name: "c_escape", file: !172, line: 517)
!2359 = !DILabel(scope: !2313, name: "store_escape", file: !172, line: 719)
!2360 = !DILabel(scope: !2313, name: "store_c", file: !172, line: 722)
!2361 = !DILabel(scope: !2286, name: "force_outer_quoting_style", file: !172, line: 763)
!2362 = !DILocation(line: 0, scope: !2286)
!2363 = !DILocation(line: 269, column: 25, scope: !2286)
!2364 = !DILocation(line: 269, column: 36, scope: !2286)
!2365 = !DILocation(line: 270, column: 8, scope: !2286)
!2366 = !DILocation(line: 273, column: 3, scope: !2286)
!2367 = !DILocation(line: 265, column: 10, scope: !2286)
!2368 = !DILocation(line: 266, column: 15, scope: !2286)
!2369 = !DILocation(line: 267, column: 10, scope: !2286)
!2370 = !DILocation(line: 268, column: 8, scope: !2286)
!2371 = !DILocation(line: 271, column: 8, scope: !2286)
!2372 = !DILocation(line: 272, column: 8, scope: !2286)
!2373 = !DILocation(line: 273, column: 8, scope: !2286)
!2374 = !DILocation(line: 314, column: 2, scope: !2286)
!2375 = !DILocation(line: 316, column: 3, scope: !2286)
!2376 = !DILocation(line: 323, column: 11, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2286, file: !172, line: 317, column: 5)
!2378 = !DILocation(line: 323, column: 12, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2377, file: !172, line: 323, column: 11)
!2380 = !DILocation(line: 324, column: 9, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !172, line: 324, column: 9)
!2382 = distinct !DILexicalBlock(scope: !2379, file: !172, line: 324, column: 9)
!2383 = !DILocation(line: 324, column: 9, scope: !2382)
!2384 = !DILocation(line: 362, column: 26, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !172, line: 340, column: 11)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !172, line: 339, column: 13)
!2387 = distinct !DILexicalBlock(scope: !2377, file: !172, line: 338, column: 7)
!2388 = !DILocation(line: 363, column: 27, scope: !2385)
!2389 = !DILocation(line: 364, column: 11, scope: !2385)
!2390 = !DILocation(line: 365, column: 14, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2387, file: !172, line: 365, column: 13)
!2392 = !DILocation(line: 365, column: 13, scope: !2387)
!2393 = !DILocation(line: 366, column: 43, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !172, line: 366, column: 11)
!2395 = distinct !DILexicalBlock(scope: !2391, file: !172, line: 366, column: 11)
!2396 = !DILocation(line: 366, column: 11, scope: !2395)
!2397 = !DILocation(line: 367, column: 13, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !172, line: 367, column: 13)
!2399 = distinct !DILexicalBlock(scope: !2394, file: !172, line: 367, column: 13)
!2400 = !DILocation(line: 367, column: 13, scope: !2399)
!2401 = !DILocation(line: 366, column: 70, scope: !2394)
!2402 = distinct !{!2402, !2396, !2403, !746}
!2403 = !DILocation(line: 367, column: 13, scope: !2395)
!2404 = !DILocation(line: 264, column: 10, scope: !2286)
!2405 = !DILocation(line: 370, column: 28, scope: !2387)
!2406 = !DILocation(line: 372, column: 7, scope: !2377)
!2407 = !DILocation(line: 376, column: 7, scope: !2377)
!2408 = !DILocation(line: 379, column: 7, scope: !2377)
!2409 = !DILocation(line: 381, column: 12, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2377, file: !172, line: 381, column: 11)
!2411 = !DILocation(line: 381, column: 11, scope: !2377)
!2412 = !DILocation(line: 386, column: 12, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2377, file: !172, line: 386, column: 11)
!2414 = !DILocation(line: 386, column: 11, scope: !2377)
!2415 = !DILocation(line: 387, column: 9, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !172, line: 387, column: 9)
!2417 = distinct !DILexicalBlock(scope: !2413, file: !172, line: 387, column: 9)
!2418 = !DILocation(line: 387, column: 9, scope: !2417)
!2419 = !DILocation(line: 394, column: 7, scope: !2377)
!2420 = !DILocation(line: 397, column: 7, scope: !2377)
!2421 = !DILocation(line: 400, column: 8, scope: !2315)
!2422 = !DILocation(line: 0, scope: !2315)
!2423 = !DILocation(line: 400, column: 27, scope: !2314)
!2424 = !DILocation(line: 400, column: 19, scope: !2314)
!2425 = !DILocation(line: 400, column: 41, scope: !2314)
!2426 = !DILocation(line: 400, column: 48, scope: !2314)
!2427 = !DILocation(line: 400, column: 3, scope: !2315)
!2428 = !DILocation(line: 400, column: 60, scope: !2314)
!2429 = !DILocation(line: 0, scope: !2313)
!2430 = !DILocation(line: 409, column: 11, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2313, file: !172, line: 408, column: 11)
!2432 = !DILocation(line: 411, column: 17, scope: !2431)
!2433 = !DILocation(line: 412, column: 39, scope: !2431)
!2434 = !DILocation(line: 416, column: 32, scope: !2431)
!2435 = !DILocation(line: 412, column: 19, scope: !2431)
!2436 = !DILocation(line: 412, column: 15, scope: !2431)
!2437 = !DILocation(line: 417, column: 11, scope: !2431)
!2438 = !DILocation(line: 417, column: 26, scope: !2431)
!2439 = !DILocation(line: 417, column: 14, scope: !2431)
!2440 = !DILocation(line: 417, column: 63, scope: !2431)
!2441 = !DILocation(line: 408, column: 11, scope: !2313)
!2442 = !DILocation(line: 424, column: 11, scope: !2313)
!2443 = !DILocation(line: 425, column: 7, scope: !2313)
!2444 = !DILocation(line: 428, column: 15, scope: !2322)
!2445 = !DILocation(line: 430, column: 15, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !172, line: 430, column: 15)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !172, line: 429, column: 13)
!2448 = distinct !DILexicalBlock(scope: !2322, file: !172, line: 428, column: 15)
!2449 = !DILocation(line: 430, column: 15, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2446, file: !172, line: 430, column: 15)
!2451 = !DILocation(line: 430, column: 15, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !172, line: 430, column: 15)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !172, line: 430, column: 15)
!2454 = distinct !DILexicalBlock(scope: !2450, file: !172, line: 430, column: 15)
!2455 = !DILocation(line: 430, column: 15, scope: !2453)
!2456 = !DILocation(line: 430, column: 15, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !172, line: 430, column: 15)
!2458 = distinct !DILexicalBlock(scope: !2454, file: !172, line: 430, column: 15)
!2459 = !DILocation(line: 430, column: 15, scope: !2458)
!2460 = !DILocation(line: 430, column: 15, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !172, line: 430, column: 15)
!2462 = distinct !DILexicalBlock(scope: !2454, file: !172, line: 430, column: 15)
!2463 = !DILocation(line: 430, column: 15, scope: !2462)
!2464 = !DILocation(line: 430, column: 15, scope: !2454)
!2465 = !DILocation(line: 430, column: 15, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !172, line: 430, column: 15)
!2467 = distinct !DILexicalBlock(scope: !2446, file: !172, line: 430, column: 15)
!2468 = !DILocation(line: 430, column: 15, scope: !2467)
!2469 = !DILocation(line: 438, column: 19, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2447, file: !172, line: 437, column: 19)
!2471 = !DILocation(line: 438, column: 48, scope: !2470)
!2472 = !DILocation(line: 438, column: 59, scope: !2470)
!2473 = !DILocation(line: 440, column: 19, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !172, line: 440, column: 19)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !172, line: 440, column: 19)
!2476 = distinct !DILexicalBlock(scope: !2470, file: !172, line: 439, column: 17)
!2477 = !DILocation(line: 440, column: 19, scope: !2475)
!2478 = !DILocation(line: 441, column: 19, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !172, line: 441, column: 19)
!2480 = distinct !DILexicalBlock(scope: !2476, file: !172, line: 441, column: 19)
!2481 = !DILocation(line: 441, column: 19, scope: !2480)
!2482 = !DILocation(line: 442, column: 17, scope: !2476)
!2483 = !DILocation(line: 449, column: 20, scope: !2448)
!2484 = !DILocation(line: 454, column: 11, scope: !2322)
!2485 = !DILocation(line: 457, column: 19, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2322, file: !172, line: 455, column: 13)
!2487 = !DILocation(line: 463, column: 19, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2486, file: !172, line: 462, column: 19)
!2489 = !DILocation(line: 463, column: 47, scope: !2488)
!2490 = !DILocation(line: 463, column: 41, scope: !2488)
!2491 = !DILocation(line: 463, column: 52, scope: !2488)
!2492 = !DILocation(line: 462, column: 19, scope: !2486)
!2493 = !DILocation(line: 464, column: 25, scope: !2488)
!2494 = !DILocation(line: 464, column: 17, scope: !2488)
!2495 = !DILocation(line: 471, column: 25, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2488, file: !172, line: 465, column: 19)
!2497 = !DILocation(line: 475, column: 21, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !172, line: 475, column: 21)
!2499 = distinct !DILexicalBlock(scope: !2496, file: !172, line: 475, column: 21)
!2500 = !DILocation(line: 475, column: 21, scope: !2499)
!2501 = !DILocation(line: 476, column: 21, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !172, line: 476, column: 21)
!2503 = distinct !DILexicalBlock(scope: !2496, file: !172, line: 476, column: 21)
!2504 = !DILocation(line: 476, column: 21, scope: !2503)
!2505 = !DILocation(line: 477, column: 21, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !172, line: 477, column: 21)
!2507 = distinct !DILexicalBlock(scope: !2496, file: !172, line: 477, column: 21)
!2508 = !DILocation(line: 477, column: 21, scope: !2507)
!2509 = !DILocation(line: 478, column: 21, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !172, line: 478, column: 21)
!2511 = distinct !DILexicalBlock(scope: !2496, file: !172, line: 478, column: 21)
!2512 = !DILocation(line: 478, column: 21, scope: !2511)
!2513 = !DILocation(line: 479, column: 21, scope: !2496)
!2514 = !DILocation(line: 492, column: 31, scope: !2322)
!2515 = !DILocation(line: 493, column: 31, scope: !2322)
!2516 = !DILocation(line: 495, column: 31, scope: !2322)
!2517 = !DILocation(line: 496, column: 31, scope: !2322)
!2518 = !DILocation(line: 497, column: 31, scope: !2322)
!2519 = !DILocation(line: 500, column: 15, scope: !2322)
!2520 = !DILocation(line: 502, column: 19, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !172, line: 501, column: 13)
!2522 = distinct !DILexicalBlock(scope: !2322, file: !172, line: 500, column: 15)
!2523 = !DILocation(line: 509, column: 33, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2322, file: !172, line: 509, column: 15)
!2525 = !DILocation(line: 0, scope: !2322)
!2526 = !DILocation(line: 512, column: 9, scope: !2322)
!2527 = !DILocation(line: 514, column: 15, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2322, file: !172, line: 513, column: 15)
!2529 = !DILocation(line: 517, column: 9, scope: !2322)
!2530 = !DILocation(line: 518, column: 15, scope: !2322)
!2531 = !DILocation(line: 526, column: 15, scope: !2322)
!2532 = !DILocation(line: 526, column: 40, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2322, file: !172, line: 526, column: 15)
!2534 = !DILocation(line: 526, column: 47, scope: !2533)
!2535 = !DILocation(line: 526, column: 18, scope: !2533)
!2536 = !DILocation(line: 530, column: 17, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2322, file: !172, line: 530, column: 15)
!2538 = !DILocation(line: 530, column: 15, scope: !2322)
!2539 = !DILocation(line: 535, column: 11, scope: !2322)
!2540 = !DILocation(line: 549, column: 15, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2322, file: !172, line: 548, column: 15)
!2542 = !DILocation(line: 556, column: 15, scope: !2322)
!2543 = !DILocation(line: 558, column: 19, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !172, line: 557, column: 13)
!2545 = distinct !DILexicalBlock(scope: !2322, file: !172, line: 556, column: 15)
!2546 = !DILocation(line: 561, column: 19, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2544, file: !172, line: 561, column: 19)
!2548 = !DILocation(line: 561, column: 30, scope: !2547)
!2549 = !DILocation(line: 570, column: 15, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !172, line: 570, column: 15)
!2551 = distinct !DILexicalBlock(scope: !2544, file: !172, line: 570, column: 15)
!2552 = !DILocation(line: 570, column: 15, scope: !2551)
!2553 = !DILocation(line: 571, column: 15, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !172, line: 571, column: 15)
!2555 = distinct !DILexicalBlock(scope: !2544, file: !172, line: 571, column: 15)
!2556 = !DILocation(line: 571, column: 15, scope: !2555)
!2557 = !DILocation(line: 572, column: 15, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !172, line: 572, column: 15)
!2559 = distinct !DILexicalBlock(scope: !2544, file: !172, line: 572, column: 15)
!2560 = !DILocation(line: 572, column: 15, scope: !2559)
!2561 = !DILocation(line: 574, column: 13, scope: !2544)
!2562 = !DILocation(line: 614, column: 17, scope: !2321)
!2563 = !DILocation(line: 0, scope: !2321)
!2564 = !DILocation(line: 617, column: 29, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2326, file: !172, line: 615, column: 15)
!2566 = !DILocation(line: 617, column: 27, scope: !2565)
!2567 = !DILocation(line: 678, column: 40, scope: !2321)
!2568 = !DILocation(line: 680, column: 23, scope: !2355)
!2569 = !DILocation(line: 621, column: 17, scope: !2325)
!2570 = !DILocation(line: 621, column: 27, scope: !2325)
!2571 = !DILocalVariable(name: "__dest", arg: 1, scope: !2572, file: !1966, line: 57, type: !47)
!2572 = distinct !DISubprogram(name: "memset", scope: !1966, file: !1966, line: 57, type: !2573, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2575)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!47, !47, !50, !52}
!2575 = !{!2571, !2576, !2577}
!2576 = !DILocalVariable(name: "__ch", arg: 2, scope: !2572, file: !1966, line: 57, type: !50)
!2577 = !DILocalVariable(name: "__len", arg: 3, scope: !2572, file: !1966, line: 57, type: !52)
!2578 = !DILocation(line: 0, scope: !2572, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 622, column: 17, scope: !2325)
!2580 = !DILocation(line: 59, column: 10, scope: !2572, inlinedAt: !2579)
!2581 = !DILocation(line: 626, column: 29, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2325, file: !172, line: 626, column: 21)
!2583 = !DILocation(line: 626, column: 21, scope: !2325)
!2584 = !DILocation(line: 627, column: 29, scope: !2582)
!2585 = !DILocation(line: 627, column: 19, scope: !2582)
!2586 = !DILocation(line: 629, column: 17, scope: !2325)
!2587 = !DILocation(line: 624, column: 19, scope: !2325)
!2588 = !DILocation(line: 625, column: 27, scope: !2325)
!2589 = !DILocation(line: 631, column: 21, scope: !2343)
!2590 = !DILocation(line: 632, column: 56, scope: !2343)
!2591 = !DILocation(line: 632, column: 50, scope: !2343)
!2592 = !DILocation(line: 633, column: 53, scope: !2343)
!2593 = !DILocation(line: 0, scope: !2343)
!2594 = !DILocation(line: 632, column: 36, scope: !2343)
!2595 = !DILocation(line: 634, column: 25, scope: !2343)
!2596 = !DILocation(line: 644, column: 38, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2350, file: !172, line: 642, column: 23)
!2598 = !DILocation(line: 644, column: 48, scope: !2597)
!2599 = !DILocation(line: 644, column: 25, scope: !2597)
!2600 = !DILocation(line: 644, column: 51, scope: !2597)
!2601 = !DILocation(line: 645, column: 28, scope: !2597)
!2602 = !DILocation(line: 644, column: 34, scope: !2597)
!2603 = distinct !{!2603, !2599, !2601, !746}
!2604 = !DILocation(line: 655, column: 29, scope: !2348)
!2605 = !DILocation(line: 0, scope: !2347)
!2606 = !DILocation(line: 659, column: 49, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !172, line: 658, column: 29)
!2608 = distinct !DILexicalBlock(scope: !2347, file: !172, line: 658, column: 29)
!2609 = !DILocation(line: 659, column: 39, scope: !2607)
!2610 = !DILocation(line: 659, column: 31, scope: !2607)
!2611 = !DILocation(line: 658, column: 53, scope: !2607)
!2612 = !DILocation(line: 658, column: 43, scope: !2607)
!2613 = !DILocation(line: 658, column: 29, scope: !2608)
!2614 = distinct !{!2614, !2613, !2615, !746}
!2615 = !DILocation(line: 667, column: 33, scope: !2608)
!2616 = !DILocation(line: 674, column: 19, scope: !2325)
!2617 = !DILocation(line: 670, column: 41, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2349, file: !172, line: 670, column: 29)
!2619 = !DILocation(line: 670, column: 31, scope: !2618)
!2620 = !DILocation(line: 670, column: 29, scope: !2349)
!2621 = !DILocation(line: 672, column: 27, scope: !2349)
!2622 = !DILocation(line: 675, column: 26, scope: !2325)
!2623 = !DILocation(line: 675, column: 24, scope: !2325)
!2624 = !DILocation(line: 674, column: 19, scope: !2343)
!2625 = distinct !{!2625, !2586, !2626, !746}
!2626 = !DILocation(line: 675, column: 44, scope: !2325)
!2627 = !DILocation(line: 676, column: 15, scope: !2326)
!2628 = !DILocation(line: 680, column: 19, scope: !2355)
!2629 = !DILocation(line: 680, column: 45, scope: !2355)
!2630 = !DILocation(line: 684, column: 33, scope: !2354)
!2631 = !DILocation(line: 0, scope: !2354)
!2632 = !DILocation(line: 686, column: 17, scope: !2354)
!2633 = !DILocation(line: 405, column: 12, scope: !2313)
!2634 = !DILocation(line: 688, column: 43, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !172, line: 688, column: 25)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !172, line: 687, column: 19)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !172, line: 686, column: 17)
!2638 = distinct !DILexicalBlock(scope: !2354, file: !172, line: 686, column: 17)
!2639 = !DILocation(line: 690, column: 25, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !172, line: 690, column: 25)
!2641 = distinct !DILexicalBlock(scope: !2635, file: !172, line: 689, column: 23)
!2642 = !DILocation(line: 690, column: 25, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2640, file: !172, line: 690, column: 25)
!2644 = !DILocation(line: 690, column: 25, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !172, line: 690, column: 25)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !172, line: 690, column: 25)
!2647 = distinct !DILexicalBlock(scope: !2643, file: !172, line: 690, column: 25)
!2648 = !DILocation(line: 690, column: 25, scope: !2646)
!2649 = !DILocation(line: 690, column: 25, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !172, line: 690, column: 25)
!2651 = distinct !DILexicalBlock(scope: !2647, file: !172, line: 690, column: 25)
!2652 = !DILocation(line: 690, column: 25, scope: !2651)
!2653 = !DILocation(line: 690, column: 25, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !172, line: 690, column: 25)
!2655 = distinct !DILexicalBlock(scope: !2647, file: !172, line: 690, column: 25)
!2656 = !DILocation(line: 690, column: 25, scope: !2655)
!2657 = !DILocation(line: 690, column: 25, scope: !2647)
!2658 = !DILocation(line: 690, column: 25, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !172, line: 690, column: 25)
!2660 = distinct !DILexicalBlock(scope: !2640, file: !172, line: 690, column: 25)
!2661 = !DILocation(line: 690, column: 25, scope: !2660)
!2662 = !DILocation(line: 691, column: 25, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !172, line: 691, column: 25)
!2664 = distinct !DILexicalBlock(scope: !2641, file: !172, line: 691, column: 25)
!2665 = !DILocation(line: 691, column: 25, scope: !2664)
!2666 = !DILocation(line: 692, column: 25, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !172, line: 692, column: 25)
!2668 = distinct !DILexicalBlock(scope: !2641, file: !172, line: 692, column: 25)
!2669 = !DILocation(line: 692, column: 25, scope: !2668)
!2670 = !DILocation(line: 693, column: 38, scope: !2641)
!2671 = !DILocation(line: 693, column: 33, scope: !2641)
!2672 = !DILocation(line: 694, column: 23, scope: !2641)
!2673 = !DILocation(line: 695, column: 30, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2635, file: !172, line: 695, column: 30)
!2675 = !DILocation(line: 695, column: 30, scope: !2635)
!2676 = !DILocation(line: 697, column: 25, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !172, line: 697, column: 25)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !172, line: 697, column: 25)
!2679 = distinct !DILexicalBlock(scope: !2674, file: !172, line: 696, column: 23)
!2680 = !DILocation(line: 697, column: 25, scope: !2678)
!2681 = !DILocation(line: 699, column: 23, scope: !2679)
!2682 = !DILocation(line: 700, column: 35, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2636, file: !172, line: 700, column: 25)
!2684 = !DILocation(line: 700, column: 30, scope: !2683)
!2685 = !DILocation(line: 700, column: 25, scope: !2636)
!2686 = !DILocation(line: 702, column: 21, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !172, line: 702, column: 21)
!2688 = distinct !DILexicalBlock(scope: !2636, file: !172, line: 702, column: 21)
!2689 = !DILocation(line: 702, column: 21, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !172, line: 702, column: 21)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !172, line: 702, column: 21)
!2692 = distinct !DILexicalBlock(scope: !2687, file: !172, line: 702, column: 21)
!2693 = !DILocation(line: 702, column: 21, scope: !2691)
!2694 = !DILocation(line: 702, column: 21, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !172, line: 702, column: 21)
!2696 = distinct !DILexicalBlock(scope: !2692, file: !172, line: 702, column: 21)
!2697 = !DILocation(line: 702, column: 21, scope: !2696)
!2698 = !DILocation(line: 702, column: 21, scope: !2692)
!2699 = !DILocation(line: 0, scope: !2636)
!2700 = !DILocation(line: 703, column: 21, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !172, line: 703, column: 21)
!2702 = distinct !DILexicalBlock(scope: !2636, file: !172, line: 703, column: 21)
!2703 = !DILocation(line: 703, column: 21, scope: !2702)
!2704 = !DILocation(line: 704, column: 25, scope: !2636)
!2705 = !DILocation(line: 686, column: 17, scope: !2637)
!2706 = distinct !{!2706, !2707, !2708}
!2707 = !DILocation(line: 686, column: 17, scope: !2638)
!2708 = !DILocation(line: 705, column: 19, scope: !2638)
!2709 = !DILocation(line: 416, column: 30, scope: !2431)
!2710 = !DILocation(line: 712, column: 34, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2313, file: !172, line: 712, column: 11)
!2712 = !DILocation(line: 715, column: 35, scope: !2711)
!2713 = !DILocation(line: 715, column: 17, scope: !2711)
!2714 = !DILocation(line: 715, column: 47, scope: !2711)
!2715 = !DILocation(line: 715, column: 65, scope: !2711)
!2716 = !DILocation(line: 716, column: 11, scope: !2711)
!2717 = !DILocation(line: 712, column: 11, scope: !2313)
!2718 = !DILocation(line: 400, column: 10, scope: !2315)
!2719 = !DILocation(line: 719, column: 5, scope: !2313)
!2720 = !DILocation(line: 720, column: 7, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2313, file: !172, line: 720, column: 7)
!2722 = !DILocation(line: 720, column: 7, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2721, file: !172, line: 720, column: 7)
!2724 = !DILocation(line: 720, column: 7, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !172, line: 720, column: 7)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !172, line: 720, column: 7)
!2727 = distinct !DILexicalBlock(scope: !2723, file: !172, line: 720, column: 7)
!2728 = !DILocation(line: 720, column: 7, scope: !2726)
!2729 = !DILocation(line: 720, column: 7, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !172, line: 720, column: 7)
!2731 = distinct !DILexicalBlock(scope: !2727, file: !172, line: 720, column: 7)
!2732 = !DILocation(line: 720, column: 7, scope: !2731)
!2733 = !DILocation(line: 720, column: 7, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !172, line: 720, column: 7)
!2735 = distinct !DILexicalBlock(scope: !2727, file: !172, line: 720, column: 7)
!2736 = !DILocation(line: 720, column: 7, scope: !2735)
!2737 = !DILocation(line: 720, column: 7, scope: !2727)
!2738 = !DILocation(line: 720, column: 7, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !172, line: 720, column: 7)
!2740 = distinct !DILexicalBlock(scope: !2721, file: !172, line: 720, column: 7)
!2741 = !DILocation(line: 720, column: 7, scope: !2740)
!2742 = !DILocation(line: 722, column: 5, scope: !2313)
!2743 = !DILocation(line: 723, column: 7, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !172, line: 723, column: 7)
!2745 = distinct !DILexicalBlock(scope: !2313, file: !172, line: 723, column: 7)
!2746 = !DILocation(line: 424, column: 9, scope: !2313)
!2747 = !DILocation(line: 723, column: 7, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !172, line: 723, column: 7)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !172, line: 723, column: 7)
!2750 = distinct !DILexicalBlock(scope: !2744, file: !172, line: 723, column: 7)
!2751 = !DILocation(line: 723, column: 7, scope: !2749)
!2752 = !DILocation(line: 723, column: 7, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !172, line: 723, column: 7)
!2754 = distinct !DILexicalBlock(scope: !2750, file: !172, line: 723, column: 7)
!2755 = !DILocation(line: 723, column: 7, scope: !2754)
!2756 = !DILocation(line: 723, column: 7, scope: !2750)
!2757 = !DILocation(line: 724, column: 7, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !172, line: 724, column: 7)
!2759 = distinct !DILexicalBlock(scope: !2313, file: !172, line: 724, column: 7)
!2760 = !DILocation(line: 724, column: 7, scope: !2759)
!2761 = !DILocation(line: 726, column: 13, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2313, file: !172, line: 726, column: 11)
!2763 = !DILocation(line: 726, column: 11, scope: !2313)
!2764 = !DILocation(line: 728, column: 5, scope: !2314)
!2765 = !DILocation(line: 400, column: 75, scope: !2314)
!2766 = !DILocation(line: 400, column: 3, scope: !2314)
!2767 = distinct !{!2767, !2427, !2768, !746}
!2768 = !DILocation(line: 728, column: 5, scope: !2315)
!2769 = !DILocation(line: 730, column: 11, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2286, file: !172, line: 730, column: 7)
!2771 = !DILocation(line: 730, column: 16, scope: !2770)
!2772 = !DILocation(line: 738, column: 51, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2286, file: !172, line: 738, column: 7)
!2774 = !DILocation(line: 741, column: 11, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !172, line: 741, column: 11)
!2776 = distinct !DILexicalBlock(scope: !2773, file: !172, line: 740, column: 5)
!2777 = !DILocation(line: 741, column: 11, scope: !2776)
!2778 = !DILocation(line: 742, column: 16, scope: !2775)
!2779 = !DILocation(line: 742, column: 9, scope: !2775)
!2780 = !DILocation(line: 746, column: 18, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2775, file: !172, line: 746, column: 16)
!2782 = !DILocation(line: 746, column: 29, scope: !2781)
!2783 = !DILocation(line: 755, column: 7, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2286, file: !172, line: 755, column: 7)
!2785 = !DILocation(line: 755, column: 20, scope: !2784)
!2786 = !DILocation(line: 756, column: 12, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !172, line: 756, column: 5)
!2788 = distinct !DILexicalBlock(scope: !2784, file: !172, line: 756, column: 5)
!2789 = !DILocation(line: 756, column: 5, scope: !2788)
!2790 = !DILocation(line: 757, column: 7, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !172, line: 757, column: 7)
!2792 = distinct !DILexicalBlock(scope: !2787, file: !172, line: 757, column: 7)
!2793 = !DILocation(line: 757, column: 7, scope: !2792)
!2794 = !DILocation(line: 756, column: 39, scope: !2787)
!2795 = distinct !{!2795, !2789, !2796, !746}
!2796 = !DILocation(line: 757, column: 7, scope: !2788)
!2797 = !DILocation(line: 759, column: 11, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2286, file: !172, line: 759, column: 7)
!2799 = !DILocation(line: 759, column: 7, scope: !2286)
!2800 = !DILocation(line: 760, column: 5, scope: !2798)
!2801 = !DILocation(line: 760, column: 17, scope: !2798)
!2802 = !DILocation(line: 763, column: 2, scope: !2286)
!2803 = !DILocation(line: 766, column: 51, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2286, file: !172, line: 766, column: 7)
!2805 = !DILocation(line: 766, column: 21, scope: !2804)
!2806 = !DILocation(line: 770, column: 42, scope: !2286)
!2807 = !DILocation(line: 768, column: 10, scope: !2286)
!2808 = !DILocation(line: 768, column: 3, scope: !2286)
!2809 = !DILocation(line: 772, column: 1, scope: !2286)
!2810 = distinct !DISubprogram(name: "gettext_quote", scope: !172, file: !172, line: 207, type: !2811, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2813)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!55, !55, !5}
!2813 = !{!2814, !2815, !2816, !2817}
!2814 = !DILocalVariable(name: "msgid", arg: 1, scope: !2810, file: !172, line: 207, type: !55)
!2815 = !DILocalVariable(name: "s", arg: 2, scope: !2810, file: !172, line: 207, type: !5)
!2816 = !DILocalVariable(name: "translation", scope: !2810, file: !172, line: 209, type: !55)
!2817 = !DILocalVariable(name: "locale_code", scope: !2810, file: !172, line: 210, type: !55)
!2818 = !DILocation(line: 0, scope: !2810)
!2819 = !DILocation(line: 209, column: 29, scope: !2810)
!2820 = !DILocation(line: 212, column: 19, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2810, file: !172, line: 212, column: 7)
!2822 = !DILocation(line: 212, column: 7, scope: !2810)
!2823 = !DILocation(line: 233, column: 17, scope: !2810)
!2824 = !DILocalVariable(name: "s1", arg: 1, scope: !2825, file: !2826, line: 160, type: !55)
!2825 = distinct !DISubprogram(name: "strcaseeq0", scope: !2826, file: !2826, line: 160, type: !2827, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2829)
!2826 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!50, !55, !55, !46, !46, !46, !46, !46, !46, !46, !46, !46}
!2829 = !{!2824, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839}
!2830 = !DILocalVariable(name: "s2", arg: 2, scope: !2825, file: !2826, line: 160, type: !55)
!2831 = !DILocalVariable(name: "s20", arg: 3, scope: !2825, file: !2826, line: 160, type: !46)
!2832 = !DILocalVariable(name: "s21", arg: 4, scope: !2825, file: !2826, line: 160, type: !46)
!2833 = !DILocalVariable(name: "s22", arg: 5, scope: !2825, file: !2826, line: 160, type: !46)
!2834 = !DILocalVariable(name: "s23", arg: 6, scope: !2825, file: !2826, line: 160, type: !46)
!2835 = !DILocalVariable(name: "s24", arg: 7, scope: !2825, file: !2826, line: 160, type: !46)
!2836 = !DILocalVariable(name: "s25", arg: 8, scope: !2825, file: !2826, line: 160, type: !46)
!2837 = !DILocalVariable(name: "s26", arg: 9, scope: !2825, file: !2826, line: 160, type: !46)
!2838 = !DILocalVariable(name: "s27", arg: 10, scope: !2825, file: !2826, line: 160, type: !46)
!2839 = !DILocalVariable(name: "s28", arg: 11, scope: !2825, file: !2826, line: 160, type: !46)
!2840 = !DILocation(line: 0, scope: !2825, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 234, column: 7, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2810, file: !172, line: 234, column: 7)
!2843 = !DILocation(line: 162, column: 7, scope: !2844, inlinedAt: !2841)
!2844 = distinct !DILexicalBlock(scope: !2825, file: !2826, line: 162, column: 7)
!2845 = !DILocalVariable(name: "s1", arg: 1, scope: !2846, file: !2826, line: 146, type: !55)
!2846 = distinct !DISubprogram(name: "strcaseeq1", scope: !2826, file: !2826, line: 146, type: !2847, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2849)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!50, !55, !55, !46, !46, !46, !46, !46, !46, !46, !46}
!2849 = !{!2845, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858}
!2850 = !DILocalVariable(name: "s2", arg: 2, scope: !2846, file: !2826, line: 146, type: !55)
!2851 = !DILocalVariable(name: "s21", arg: 3, scope: !2846, file: !2826, line: 146, type: !46)
!2852 = !DILocalVariable(name: "s22", arg: 4, scope: !2846, file: !2826, line: 146, type: !46)
!2853 = !DILocalVariable(name: "s23", arg: 5, scope: !2846, file: !2826, line: 146, type: !46)
!2854 = !DILocalVariable(name: "s24", arg: 6, scope: !2846, file: !2826, line: 146, type: !46)
!2855 = !DILocalVariable(name: "s25", arg: 7, scope: !2846, file: !2826, line: 146, type: !46)
!2856 = !DILocalVariable(name: "s26", arg: 8, scope: !2846, file: !2826, line: 146, type: !46)
!2857 = !DILocalVariable(name: "s27", arg: 9, scope: !2846, file: !2826, line: 146, type: !46)
!2858 = !DILocalVariable(name: "s28", arg: 10, scope: !2846, file: !2826, line: 146, type: !46)
!2859 = !DILocation(line: 0, scope: !2846, inlinedAt: !2860)
!2860 = distinct !DILocation(line: 167, column: 16, scope: !2861, inlinedAt: !2841)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !2826, line: 164, column: 11)
!2862 = distinct !DILexicalBlock(scope: !2844, file: !2826, line: 163, column: 5)
!2863 = !DILocation(line: 148, column: 7, scope: !2864, inlinedAt: !2860)
!2864 = distinct !DILexicalBlock(scope: !2846, file: !2826, line: 148, column: 7)
!2865 = !DILocalVariable(name: "s1", arg: 1, scope: !2866, file: !2826, line: 132, type: !55)
!2866 = distinct !DISubprogram(name: "strcaseeq2", scope: !2826, file: !2826, line: 132, type: !2867, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2869)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!50, !55, !55, !46, !46, !46, !46, !46, !46, !46}
!2869 = !{!2865, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877}
!2870 = !DILocalVariable(name: "s2", arg: 2, scope: !2866, file: !2826, line: 132, type: !55)
!2871 = !DILocalVariable(name: "s22", arg: 3, scope: !2866, file: !2826, line: 132, type: !46)
!2872 = !DILocalVariable(name: "s23", arg: 4, scope: !2866, file: !2826, line: 132, type: !46)
!2873 = !DILocalVariable(name: "s24", arg: 5, scope: !2866, file: !2826, line: 132, type: !46)
!2874 = !DILocalVariable(name: "s25", arg: 6, scope: !2866, file: !2826, line: 132, type: !46)
!2875 = !DILocalVariable(name: "s26", arg: 7, scope: !2866, file: !2826, line: 132, type: !46)
!2876 = !DILocalVariable(name: "s27", arg: 8, scope: !2866, file: !2826, line: 132, type: !46)
!2877 = !DILocalVariable(name: "s28", arg: 9, scope: !2866, file: !2826, line: 132, type: !46)
!2878 = !DILocation(line: 0, scope: !2866, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 153, column: 16, scope: !2880, inlinedAt: !2860)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !2826, line: 150, column: 11)
!2881 = distinct !DILexicalBlock(scope: !2864, file: !2826, line: 149, column: 5)
!2882 = !DILocation(line: 134, column: 7, scope: !2883, inlinedAt: !2879)
!2883 = distinct !DILexicalBlock(scope: !2866, file: !2826, line: 134, column: 7)
!2884 = !DILocalVariable(name: "s1", arg: 1, scope: !2885, file: !2826, line: 118, type: !55)
!2885 = distinct !DISubprogram(name: "strcaseeq3", scope: !2826, file: !2826, line: 118, type: !2886, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!50, !55, !55, !46, !46, !46, !46, !46, !46}
!2888 = !{!2884, !2889, !2890, !2891, !2892, !2893, !2894, !2895}
!2889 = !DILocalVariable(name: "s2", arg: 2, scope: !2885, file: !2826, line: 118, type: !55)
!2890 = !DILocalVariable(name: "s23", arg: 3, scope: !2885, file: !2826, line: 118, type: !46)
!2891 = !DILocalVariable(name: "s24", arg: 4, scope: !2885, file: !2826, line: 118, type: !46)
!2892 = !DILocalVariable(name: "s25", arg: 5, scope: !2885, file: !2826, line: 118, type: !46)
!2893 = !DILocalVariable(name: "s26", arg: 6, scope: !2885, file: !2826, line: 118, type: !46)
!2894 = !DILocalVariable(name: "s27", arg: 7, scope: !2885, file: !2826, line: 118, type: !46)
!2895 = !DILocalVariable(name: "s28", arg: 8, scope: !2885, file: !2826, line: 118, type: !46)
!2896 = !DILocation(line: 0, scope: !2885, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 139, column: 16, scope: !2898, inlinedAt: !2879)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !2826, line: 136, column: 11)
!2899 = distinct !DILexicalBlock(scope: !2883, file: !2826, line: 135, column: 5)
!2900 = !DILocation(line: 120, column: 7, scope: !2901, inlinedAt: !2897)
!2901 = distinct !DILexicalBlock(scope: !2885, file: !2826, line: 120, column: 7)
!2902 = !DILocation(line: 120, column: 7, scope: !2885, inlinedAt: !2897)
!2903 = !DILocalVariable(name: "s1", arg: 1, scope: !2904, file: !2826, line: 104, type: !55)
!2904 = distinct !DISubprogram(name: "strcaseeq4", scope: !2826, file: !2826, line: 104, type: !2905, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2907)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!50, !55, !55, !46, !46, !46, !46, !46}
!2907 = !{!2903, !2908, !2909, !2910, !2911, !2912, !2913}
!2908 = !DILocalVariable(name: "s2", arg: 2, scope: !2904, file: !2826, line: 104, type: !55)
!2909 = !DILocalVariable(name: "s24", arg: 3, scope: !2904, file: !2826, line: 104, type: !46)
!2910 = !DILocalVariable(name: "s25", arg: 4, scope: !2904, file: !2826, line: 104, type: !46)
!2911 = !DILocalVariable(name: "s26", arg: 5, scope: !2904, file: !2826, line: 104, type: !46)
!2912 = !DILocalVariable(name: "s27", arg: 6, scope: !2904, file: !2826, line: 104, type: !46)
!2913 = !DILocalVariable(name: "s28", arg: 7, scope: !2904, file: !2826, line: 104, type: !46)
!2914 = !DILocation(line: 0, scope: !2904, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 125, column: 16, scope: !2916, inlinedAt: !2897)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !2826, line: 122, column: 11)
!2917 = distinct !DILexicalBlock(scope: !2901, file: !2826, line: 121, column: 5)
!2918 = !DILocation(line: 106, column: 7, scope: !2919, inlinedAt: !2915)
!2919 = distinct !DILexicalBlock(scope: !2904, file: !2826, line: 106, column: 7)
!2920 = !DILocation(line: 106, column: 7, scope: !2904, inlinedAt: !2915)
!2921 = !DILocalVariable(name: "s1", arg: 1, scope: !2922, file: !2826, line: 90, type: !55)
!2922 = distinct !DISubprogram(name: "strcaseeq5", scope: !2826, file: !2826, line: 90, type: !2923, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2925)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!50, !55, !55, !46, !46, !46, !46}
!2925 = !{!2921, !2926, !2927, !2928, !2929, !2930}
!2926 = !DILocalVariable(name: "s2", arg: 2, scope: !2922, file: !2826, line: 90, type: !55)
!2927 = !DILocalVariable(name: "s25", arg: 3, scope: !2922, file: !2826, line: 90, type: !46)
!2928 = !DILocalVariable(name: "s26", arg: 4, scope: !2922, file: !2826, line: 90, type: !46)
!2929 = !DILocalVariable(name: "s27", arg: 5, scope: !2922, file: !2826, line: 90, type: !46)
!2930 = !DILocalVariable(name: "s28", arg: 6, scope: !2922, file: !2826, line: 90, type: !46)
!2931 = !DILocation(line: 0, scope: !2922, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 111, column: 16, scope: !2933, inlinedAt: !2915)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !2826, line: 108, column: 11)
!2934 = distinct !DILexicalBlock(scope: !2919, file: !2826, line: 107, column: 5)
!2935 = !DILocation(line: 92, column: 7, scope: !2936, inlinedAt: !2932)
!2936 = distinct !DILexicalBlock(scope: !2922, file: !2826, line: 92, column: 7)
!2937 = !DILocation(line: 92, column: 7, scope: !2922, inlinedAt: !2932)
!2938 = !DILocation(line: 235, column: 12, scope: !2842)
!2939 = !DILocation(line: 235, column: 21, scope: !2842)
!2940 = !DILocation(line: 235, column: 5, scope: !2842)
!2941 = !DILocation(line: 0, scope: !2846, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 167, column: 16, scope: !2861, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 236, column: 7, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2810, file: !172, line: 236, column: 7)
!2945 = !DILocation(line: 148, column: 7, scope: !2864, inlinedAt: !2942)
!2946 = !DILocation(line: 0, scope: !2866, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 153, column: 16, scope: !2880, inlinedAt: !2942)
!2948 = !DILocation(line: 134, column: 7, scope: !2883, inlinedAt: !2947)
!2949 = !DILocation(line: 134, column: 7, scope: !2866, inlinedAt: !2947)
!2950 = !DILocation(line: 0, scope: !2885, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 139, column: 16, scope: !2898, inlinedAt: !2947)
!2952 = !DILocation(line: 120, column: 7, scope: !2901, inlinedAt: !2951)
!2953 = !DILocation(line: 120, column: 7, scope: !2885, inlinedAt: !2951)
!2954 = !DILocation(line: 0, scope: !2904, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 125, column: 16, scope: !2916, inlinedAt: !2951)
!2956 = !DILocation(line: 106, column: 7, scope: !2919, inlinedAt: !2955)
!2957 = !DILocation(line: 106, column: 7, scope: !2904, inlinedAt: !2955)
!2958 = !DILocation(line: 0, scope: !2922, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 111, column: 16, scope: !2933, inlinedAt: !2955)
!2960 = !DILocation(line: 92, column: 7, scope: !2936, inlinedAt: !2959)
!2961 = !DILocation(line: 92, column: 7, scope: !2922, inlinedAt: !2959)
!2962 = !DILocalVariable(name: "s1", arg: 1, scope: !2963, file: !2826, line: 76, type: !55)
!2963 = distinct !DISubprogram(name: "strcaseeq6", scope: !2826, file: !2826, line: 76, type: !2964, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2966)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!50, !55, !55, !46, !46, !46}
!2966 = !{!2962, !2967, !2968, !2969, !2970}
!2967 = !DILocalVariable(name: "s2", arg: 2, scope: !2963, file: !2826, line: 76, type: !55)
!2968 = !DILocalVariable(name: "s26", arg: 3, scope: !2963, file: !2826, line: 76, type: !46)
!2969 = !DILocalVariable(name: "s27", arg: 4, scope: !2963, file: !2826, line: 76, type: !46)
!2970 = !DILocalVariable(name: "s28", arg: 5, scope: !2963, file: !2826, line: 76, type: !46)
!2971 = !DILocation(line: 0, scope: !2963, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 97, column: 16, scope: !2973, inlinedAt: !2959)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !2826, line: 94, column: 11)
!2974 = distinct !DILexicalBlock(scope: !2936, file: !2826, line: 93, column: 5)
!2975 = !DILocation(line: 78, column: 7, scope: !2976, inlinedAt: !2972)
!2976 = distinct !DILexicalBlock(scope: !2963, file: !2826, line: 78, column: 7)
!2977 = !DILocation(line: 78, column: 7, scope: !2963, inlinedAt: !2972)
!2978 = !DILocalVariable(name: "s1", arg: 1, scope: !2979, file: !2826, line: 62, type: !55)
!2979 = distinct !DISubprogram(name: "strcaseeq7", scope: !2826, file: !2826, line: 62, type: !2980, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2982)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!50, !55, !55, !46, !46}
!2982 = !{!2978, !2983, !2984, !2985}
!2983 = !DILocalVariable(name: "s2", arg: 2, scope: !2979, file: !2826, line: 62, type: !55)
!2984 = !DILocalVariable(name: "s27", arg: 3, scope: !2979, file: !2826, line: 62, type: !46)
!2985 = !DILocalVariable(name: "s28", arg: 4, scope: !2979, file: !2826, line: 62, type: !46)
!2986 = !DILocation(line: 0, scope: !2979, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 83, column: 16, scope: !2988, inlinedAt: !2972)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !2826, line: 80, column: 11)
!2989 = distinct !DILexicalBlock(scope: !2976, file: !2826, line: 79, column: 5)
!2990 = !DILocation(line: 64, column: 7, scope: !2991, inlinedAt: !2987)
!2991 = distinct !DILexicalBlock(scope: !2979, file: !2826, line: 64, column: 7)
!2992 = !DILocation(line: 236, column: 7, scope: !2810)
!2993 = !DILocation(line: 237, column: 12, scope: !2944)
!2994 = !DILocation(line: 237, column: 21, scope: !2944)
!2995 = !DILocation(line: 237, column: 5, scope: !2944)
!2996 = !DILocation(line: 239, column: 13, scope: !2810)
!2997 = !DILocation(line: 239, column: 11, scope: !2810)
!2998 = !DILocation(line: 239, column: 3, scope: !2810)
!2999 = !DILocation(line: 240, column: 1, scope: !2810)
!3000 = !DISubprogram(name: "iswprint", scope: !3001, file: !3001, line: 120, type: !3002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !148)
!3001 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!50, !7}
!3004 = !DISubprogram(name: "mbsinit", scope: !3005, file: !3005, line: 292, type: !3006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !148)
!3005 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!50, !3008}
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2331)
!3010 = distinct !DISubprogram(name: "quotearg_alloc", scope: !172, file: !172, line: 799, type: !3011, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3013)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!45, !55, !52, !2178}
!3013 = !{!3014, !3015, !3016}
!3014 = !DILocalVariable(name: "arg", arg: 1, scope: !3010, file: !172, line: 799, type: !55)
!3015 = !DILocalVariable(name: "argsize", arg: 2, scope: !3010, file: !172, line: 799, type: !52)
!3016 = !DILocalVariable(name: "o", arg: 3, scope: !3010, file: !172, line: 800, type: !2178)
!3017 = !DILocation(line: 0, scope: !3010)
!3018 = !DILocalVariable(name: "arg", arg: 1, scope: !3019, file: !172, line: 812, type: !55)
!3019 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !172, file: !172, line: 812, type: !3020, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3022)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!45, !55, !52, !245, !2178}
!3022 = !{!3018, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030}
!3023 = !DILocalVariable(name: "argsize", arg: 2, scope: !3019, file: !172, line: 812, type: !52)
!3024 = !DILocalVariable(name: "size", arg: 3, scope: !3019, file: !172, line: 812, type: !245)
!3025 = !DILocalVariable(name: "o", arg: 4, scope: !3019, file: !172, line: 813, type: !2178)
!3026 = !DILocalVariable(name: "p", scope: !3019, file: !172, line: 815, type: !2178)
!3027 = !DILocalVariable(name: "e", scope: !3019, file: !172, line: 816, type: !50)
!3028 = !DILocalVariable(name: "flags", scope: !3019, file: !172, line: 818, type: !50)
!3029 = !DILocalVariable(name: "bufsize", scope: !3019, file: !172, line: 819, type: !52)
!3030 = !DILocalVariable(name: "buf", scope: !3019, file: !172, line: 823, type: !45)
!3031 = !DILocation(line: 0, scope: !3019, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 802, column: 10, scope: !3010)
!3033 = !DILocation(line: 815, column: 37, scope: !3019, inlinedAt: !3032)
!3034 = !DILocation(line: 816, column: 11, scope: !3019, inlinedAt: !3032)
!3035 = !DILocation(line: 818, column: 18, scope: !3019, inlinedAt: !3032)
!3036 = !DILocation(line: 818, column: 24, scope: !3019, inlinedAt: !3032)
!3037 = !DILocation(line: 819, column: 69, scope: !3019, inlinedAt: !3032)
!3038 = !DILocation(line: 820, column: 53, scope: !3019, inlinedAt: !3032)
!3039 = !DILocation(line: 821, column: 49, scope: !3019, inlinedAt: !3032)
!3040 = !DILocation(line: 822, column: 49, scope: !3019, inlinedAt: !3032)
!3041 = !DILocation(line: 819, column: 20, scope: !3019, inlinedAt: !3032)
!3042 = !DILocation(line: 822, column: 62, scope: !3019, inlinedAt: !3032)
!3043 = !DILocalVariable(name: "n", arg: 1, scope: !3044, file: !241, line: 216, type: !52)
!3044 = distinct !DISubprogram(name: "xcharalloc", scope: !241, file: !241, line: 216, type: !3045, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3047)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!45, !52}
!3047 = !{!3043}
!3048 = !DILocation(line: 0, scope: !3044, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 823, column: 15, scope: !3019, inlinedAt: !3032)
!3050 = !DILocation(line: 218, column: 10, scope: !3044, inlinedAt: !3049)
!3051 = !DILocation(line: 824, column: 60, scope: !3019, inlinedAt: !3032)
!3052 = !DILocation(line: 826, column: 32, scope: !3019, inlinedAt: !3032)
!3053 = !DILocation(line: 826, column: 47, scope: !3019, inlinedAt: !3032)
!3054 = !DILocation(line: 824, column: 3, scope: !3019, inlinedAt: !3032)
!3055 = !DILocation(line: 827, column: 9, scope: !3019, inlinedAt: !3032)
!3056 = !DILocation(line: 802, column: 3, scope: !3010)
!3057 = !DILocation(line: 0, scope: !3019)
!3058 = !DILocation(line: 815, column: 37, scope: !3019)
!3059 = !DILocation(line: 816, column: 11, scope: !3019)
!3060 = !DILocation(line: 818, column: 18, scope: !3019)
!3061 = !DILocation(line: 818, column: 27, scope: !3019)
!3062 = !DILocation(line: 818, column: 24, scope: !3019)
!3063 = !DILocation(line: 819, column: 69, scope: !3019)
!3064 = !DILocation(line: 820, column: 53, scope: !3019)
!3065 = !DILocation(line: 821, column: 49, scope: !3019)
!3066 = !DILocation(line: 822, column: 49, scope: !3019)
!3067 = !DILocation(line: 819, column: 20, scope: !3019)
!3068 = !DILocation(line: 822, column: 62, scope: !3019)
!3069 = !DILocation(line: 0, scope: !3044, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 823, column: 15, scope: !3019)
!3071 = !DILocation(line: 218, column: 10, scope: !3044, inlinedAt: !3070)
!3072 = !DILocation(line: 824, column: 60, scope: !3019)
!3073 = !DILocation(line: 826, column: 32, scope: !3019)
!3074 = !DILocation(line: 826, column: 47, scope: !3019)
!3075 = !DILocation(line: 824, column: 3, scope: !3019)
!3076 = !DILocation(line: 827, column: 9, scope: !3019)
!3077 = !DILocation(line: 828, column: 7, scope: !3019)
!3078 = !DILocation(line: 829, column: 11, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3019, file: !172, line: 828, column: 7)
!3080 = !{!1108, !1108, i64 0}
!3081 = !DILocation(line: 829, column: 5, scope: !3079)
!3082 = !DILocation(line: 830, column: 3, scope: !3019)
!3083 = distinct !DISubprogram(name: "quotearg_free", scope: !172, file: !172, line: 848, type: !704, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3084)
!3084 = !{!3085, !3086}
!3085 = !DILocalVariable(name: "sv", scope: !3083, file: !172, line: 850, type: !206)
!3086 = !DILocalVariable(name: "i", scope: !3083, file: !172, line: 851, type: !50)
!3087 = !DILocation(line: 850, column: 24, scope: !3083)
!3088 = !DILocation(line: 0, scope: !3083)
!3089 = !DILocation(line: 852, column: 19, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !172, line: 852, column: 3)
!3091 = distinct !DILexicalBlock(scope: !3083, file: !172, line: 852, column: 3)
!3092 = !DILocation(line: 852, column: 17, scope: !3090)
!3093 = !DILocation(line: 852, column: 3, scope: !3091)
!3094 = !DILocation(line: 853, column: 17, scope: !3090)
!3095 = !{!3096, !695, i64 8}
!3096 = !{!"slotvec", !1108, i64 0, !695, i64 8}
!3097 = !DILocation(line: 853, column: 5, scope: !3090)
!3098 = !DILocation(line: 852, column: 28, scope: !3090)
!3099 = distinct !{!3099, !3093, !3100, !746}
!3100 = !DILocation(line: 853, column: 20, scope: !3091)
!3101 = !DILocation(line: 854, column: 13, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3083, file: !172, line: 854, column: 7)
!3103 = !DILocation(line: 854, column: 17, scope: !3102)
!3104 = !DILocation(line: 854, column: 7, scope: !3083)
!3105 = !DILocation(line: 856, column: 7, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3102, file: !172, line: 855, column: 5)
!3107 = !DILocation(line: 857, column: 21, scope: !3106)
!3108 = !{!3096, !1108, i64 0}
!3109 = !DILocation(line: 858, column: 20, scope: !3106)
!3110 = !DILocation(line: 859, column: 5, scope: !3106)
!3111 = !DILocation(line: 860, column: 10, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3083, file: !172, line: 860, column: 7)
!3113 = !DILocation(line: 860, column: 7, scope: !3083)
!3114 = !DILocation(line: 862, column: 13, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3112, file: !172, line: 861, column: 5)
!3116 = !DILocation(line: 862, column: 7, scope: !3115)
!3117 = !DILocation(line: 863, column: 15, scope: !3115)
!3118 = !DILocation(line: 864, column: 5, scope: !3115)
!3119 = !DILocation(line: 865, column: 10, scope: !3083)
!3120 = !DILocation(line: 866, column: 1, scope: !3083)
!3121 = distinct !DISubprogram(name: "quotearg_n", scope: !172, file: !172, line: 931, type: !827, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3122)
!3122 = !{!3123, !3124}
!3123 = !DILocalVariable(name: "n", arg: 1, scope: !3121, file: !172, line: 931, type: !50)
!3124 = !DILocalVariable(name: "arg", arg: 2, scope: !3121, file: !172, line: 931, type: !55)
!3125 = !DILocation(line: 0, scope: !3121)
!3126 = !DILocation(line: 933, column: 10, scope: !3121)
!3127 = !DILocation(line: 933, column: 3, scope: !3121)
!3128 = distinct !DISubprogram(name: "quotearg_n_options", scope: !172, file: !172, line: 877, type: !3129, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3131)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!45, !50, !55, !52, !2178}
!3131 = !{!3132, !3133, !3134, !3135, !3136, !3137, !3138, !3141, !3142, !3144, !3145, !3146}
!3132 = !DILocalVariable(name: "n", arg: 1, scope: !3128, file: !172, line: 877, type: !50)
!3133 = !DILocalVariable(name: "arg", arg: 2, scope: !3128, file: !172, line: 877, type: !55)
!3134 = !DILocalVariable(name: "argsize", arg: 3, scope: !3128, file: !172, line: 877, type: !52)
!3135 = !DILocalVariable(name: "options", arg: 4, scope: !3128, file: !172, line: 878, type: !2178)
!3136 = !DILocalVariable(name: "e", scope: !3128, file: !172, line: 880, type: !50)
!3137 = !DILocalVariable(name: "sv", scope: !3128, file: !172, line: 882, type: !206)
!3138 = !DILocalVariable(name: "preallocated", scope: !3139, file: !172, line: 889, type: !62)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !172, line: 888, column: 5)
!3140 = distinct !DILexicalBlock(scope: !3128, file: !172, line: 887, column: 7)
!3141 = !DILocalVariable(name: "nmax", scope: !3139, file: !172, line: 890, type: !50)
!3142 = !DILocalVariable(name: "size", scope: !3143, file: !172, line: 903, type: !52)
!3143 = distinct !DILexicalBlock(scope: !3128, file: !172, line: 902, column: 3)
!3144 = !DILocalVariable(name: "val", scope: !3143, file: !172, line: 904, type: !45)
!3145 = !DILocalVariable(name: "flags", scope: !3143, file: !172, line: 906, type: !50)
!3146 = !DILocalVariable(name: "qsize", scope: !3143, file: !172, line: 907, type: !52)
!3147 = !DILocation(line: 0, scope: !3128)
!3148 = !DILocation(line: 880, column: 11, scope: !3128)
!3149 = !DILocation(line: 882, column: 24, scope: !3128)
!3150 = !DILocation(line: 884, column: 9, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3128, file: !172, line: 884, column: 7)
!3152 = !DILocation(line: 884, column: 7, scope: !3128)
!3153 = !DILocation(line: 885, column: 5, scope: !3151)
!3154 = !DILocation(line: 887, column: 7, scope: !3140)
!3155 = !DILocation(line: 887, column: 14, scope: !3140)
!3156 = !DILocation(line: 887, column: 7, scope: !3128)
!3157 = !DILocation(line: 889, column: 31, scope: !3139)
!3158 = !DILocation(line: 0, scope: !3139)
!3159 = !DILocation(line: 892, column: 16, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3139, file: !172, line: 892, column: 11)
!3161 = !DILocation(line: 892, column: 11, scope: !3139)
!3162 = !DILocation(line: 893, column: 9, scope: !3160)
!3163 = !DILocation(line: 895, column: 32, scope: !3139)
!3164 = !DILocation(line: 895, column: 61, scope: !3139)
!3165 = !DILocation(line: 895, column: 66, scope: !3139)
!3166 = !DILocation(line: 895, column: 22, scope: !3139)
!3167 = !DILocation(line: 895, column: 15, scope: !3139)
!3168 = !DILocation(line: 896, column: 11, scope: !3139)
!3169 = !DILocation(line: 897, column: 15, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3139, file: !172, line: 896, column: 11)
!3171 = !{i64 0, i64 8, !3080, i64 8, i64 8, !694}
!3172 = !DILocation(line: 897, column: 9, scope: !3170)
!3173 = !DILocation(line: 898, column: 20, scope: !3139)
!3174 = !DILocation(line: 898, column: 18, scope: !3139)
!3175 = !DILocation(line: 898, column: 15, scope: !3139)
!3176 = !DILocation(line: 898, column: 38, scope: !3139)
!3177 = !DILocation(line: 898, column: 31, scope: !3139)
!3178 = !DILocation(line: 898, column: 48, scope: !3139)
!3179 = !DILocation(line: 0, scope: !2572, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 898, column: 7, scope: !3139)
!3181 = !DILocation(line: 59, column: 10, scope: !2572, inlinedAt: !3180)
!3182 = !DILocation(line: 899, column: 14, scope: !3139)
!3183 = !DILocation(line: 900, column: 5, scope: !3139)
!3184 = !DILocation(line: 903, column: 19, scope: !3143)
!3185 = !DILocation(line: 903, column: 25, scope: !3143)
!3186 = !DILocation(line: 0, scope: !3143)
!3187 = !DILocation(line: 904, column: 23, scope: !3143)
!3188 = !DILocation(line: 906, column: 26, scope: !3143)
!3189 = !DILocation(line: 906, column: 32, scope: !3143)
!3190 = !DILocation(line: 908, column: 55, scope: !3143)
!3191 = !DILocation(line: 909, column: 46, scope: !3143)
!3192 = !DILocation(line: 910, column: 55, scope: !3143)
!3193 = !DILocation(line: 911, column: 55, scope: !3143)
!3194 = !DILocation(line: 907, column: 20, scope: !3143)
!3195 = !DILocation(line: 913, column: 14, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3143, file: !172, line: 913, column: 9)
!3197 = !DILocation(line: 913, column: 9, scope: !3143)
!3198 = !DILocation(line: 915, column: 35, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3196, file: !172, line: 914, column: 7)
!3200 = !DILocation(line: 915, column: 20, scope: !3199)
!3201 = !DILocation(line: 916, column: 17, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3199, file: !172, line: 916, column: 13)
!3203 = !DILocation(line: 916, column: 13, scope: !3199)
!3204 = !DILocation(line: 917, column: 11, scope: !3202)
!3205 = !DILocation(line: 0, scope: !3044, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 918, column: 27, scope: !3199)
!3207 = !DILocation(line: 218, column: 10, scope: !3044, inlinedAt: !3206)
!3208 = !DILocation(line: 918, column: 19, scope: !3199)
!3209 = !DILocation(line: 919, column: 69, scope: !3199)
!3210 = !DILocation(line: 921, column: 44, scope: !3199)
!3211 = !DILocation(line: 922, column: 44, scope: !3199)
!3212 = !DILocation(line: 919, column: 9, scope: !3199)
!3213 = !DILocation(line: 923, column: 7, scope: !3199)
!3214 = !DILocation(line: 925, column: 11, scope: !3143)
!3215 = !DILocation(line: 926, column: 5, scope: !3143)
!3216 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !172, file: !172, line: 937, type: !3217, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3219)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!45, !50, !55, !52}
!3219 = !{!3220, !3221, !3222}
!3220 = !DILocalVariable(name: "n", arg: 1, scope: !3216, file: !172, line: 937, type: !50)
!3221 = !DILocalVariable(name: "arg", arg: 2, scope: !3216, file: !172, line: 937, type: !55)
!3222 = !DILocalVariable(name: "argsize", arg: 3, scope: !3216, file: !172, line: 937, type: !52)
!3223 = !DILocation(line: 0, scope: !3216)
!3224 = !DILocation(line: 939, column: 10, scope: !3216)
!3225 = !DILocation(line: 939, column: 3, scope: !3216)
!3226 = distinct !DISubprogram(name: "quotearg", scope: !172, file: !172, line: 943, type: !1013, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3227)
!3227 = !{!3228}
!3228 = !DILocalVariable(name: "arg", arg: 1, scope: !3226, file: !172, line: 943, type: !55)
!3229 = !DILocation(line: 0, scope: !3226)
!3230 = !DILocation(line: 0, scope: !3121, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 945, column: 10, scope: !3226)
!3232 = !DILocation(line: 933, column: 10, scope: !3121, inlinedAt: !3231)
!3233 = !DILocation(line: 945, column: 3, scope: !3226)
!3234 = distinct !DISubprogram(name: "quotearg_mem", scope: !172, file: !172, line: 949, type: !3235, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3237)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!45, !55, !52}
!3237 = !{!3238, !3239}
!3238 = !DILocalVariable(name: "arg", arg: 1, scope: !3234, file: !172, line: 949, type: !55)
!3239 = !DILocalVariable(name: "argsize", arg: 2, scope: !3234, file: !172, line: 949, type: !52)
!3240 = !DILocation(line: 0, scope: !3234)
!3241 = !DILocation(line: 0, scope: !3216, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 951, column: 10, scope: !3234)
!3243 = !DILocation(line: 939, column: 10, scope: !3216, inlinedAt: !3242)
!3244 = !DILocation(line: 951, column: 3, scope: !3234)
!3245 = distinct !DISubprogram(name: "quotearg_n_style", scope: !172, file: !172, line: 955, type: !3246, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!45, !50, !5, !55}
!3248 = !{!3249, !3250, !3251, !3252}
!3249 = !DILocalVariable(name: "n", arg: 1, scope: !3245, file: !172, line: 955, type: !50)
!3250 = !DILocalVariable(name: "s", arg: 2, scope: !3245, file: !172, line: 955, type: !5)
!3251 = !DILocalVariable(name: "arg", arg: 3, scope: !3245, file: !172, line: 955, type: !55)
!3252 = !DILocalVariable(name: "o", scope: !3245, file: !172, line: 957, type: !2179)
!3253 = !DILocation(line: 0, scope: !3245)
!3254 = !DILocation(line: 957, column: 3, scope: !3245)
!3255 = !DILocation(line: 957, column: 32, scope: !3245)
!3256 = !{!3257}
!3257 = distinct !{!3257, !3258, !"quoting_options_from_style: argument 0"}
!3258 = distinct !{!3258, !"quoting_options_from_style"}
!3259 = !DILocation(line: 957, column: 36, scope: !3245)
!3260 = !DILocalVariable(name: "style", arg: 1, scope: !3261, file: !172, line: 193, type: !5)
!3261 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !172, file: !172, line: 193, type: !3262, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3264)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!187, !5}
!3264 = !{!3260, !3265}
!3265 = !DILocalVariable(name: "o", scope: !3261, file: !172, line: 195, type: !187)
!3266 = !DILocation(line: 0, scope: !3261, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 957, column: 36, scope: !3245)
!3268 = !DILocation(line: 195, column: 26, scope: !3261, inlinedAt: !3267)
!3269 = !DILocation(line: 196, column: 13, scope: !3270, inlinedAt: !3267)
!3270 = distinct !DILexicalBlock(scope: !3261, file: !172, line: 196, column: 7)
!3271 = !DILocation(line: 196, column: 7, scope: !3261, inlinedAt: !3267)
!3272 = !DILocation(line: 197, column: 5, scope: !3270, inlinedAt: !3267)
!3273 = !DILocation(line: 198, column: 5, scope: !3261, inlinedAt: !3267)
!3274 = !DILocation(line: 198, column: 11, scope: !3261, inlinedAt: !3267)
!3275 = !DILocation(line: 958, column: 10, scope: !3245)
!3276 = !DILocation(line: 959, column: 1, scope: !3245)
!3277 = !DILocation(line: 958, column: 3, scope: !3245)
!3278 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !172, file: !172, line: 962, type: !3279, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3281)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!45, !50, !5, !55, !52}
!3281 = !{!3282, !3283, !3284, !3285, !3286}
!3282 = !DILocalVariable(name: "n", arg: 1, scope: !3278, file: !172, line: 962, type: !50)
!3283 = !DILocalVariable(name: "s", arg: 2, scope: !3278, file: !172, line: 962, type: !5)
!3284 = !DILocalVariable(name: "arg", arg: 3, scope: !3278, file: !172, line: 963, type: !55)
!3285 = !DILocalVariable(name: "argsize", arg: 4, scope: !3278, file: !172, line: 963, type: !52)
!3286 = !DILocalVariable(name: "o", scope: !3278, file: !172, line: 965, type: !2179)
!3287 = !DILocation(line: 0, scope: !3278)
!3288 = !DILocation(line: 965, column: 3, scope: !3278)
!3289 = !DILocation(line: 965, column: 32, scope: !3278)
!3290 = !{!3291}
!3291 = distinct !{!3291, !3292, !"quoting_options_from_style: argument 0"}
!3292 = distinct !{!3292, !"quoting_options_from_style"}
!3293 = !DILocation(line: 965, column: 36, scope: !3278)
!3294 = !DILocation(line: 0, scope: !3261, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 965, column: 36, scope: !3278)
!3296 = !DILocation(line: 195, column: 26, scope: !3261, inlinedAt: !3295)
!3297 = !DILocation(line: 196, column: 13, scope: !3270, inlinedAt: !3295)
!3298 = !DILocation(line: 196, column: 7, scope: !3261, inlinedAt: !3295)
!3299 = !DILocation(line: 197, column: 5, scope: !3270, inlinedAt: !3295)
!3300 = !DILocation(line: 198, column: 5, scope: !3261, inlinedAt: !3295)
!3301 = !DILocation(line: 198, column: 11, scope: !3261, inlinedAt: !3295)
!3302 = !DILocation(line: 966, column: 10, scope: !3278)
!3303 = !DILocation(line: 967, column: 1, scope: !3278)
!3304 = !DILocation(line: 966, column: 3, scope: !3278)
!3305 = distinct !DISubprogram(name: "quotearg_style", scope: !172, file: !172, line: 970, type: !3306, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3308)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!45, !5, !55}
!3308 = !{!3309, !3310}
!3309 = !DILocalVariable(name: "s", arg: 1, scope: !3305, file: !172, line: 970, type: !5)
!3310 = !DILocalVariable(name: "arg", arg: 2, scope: !3305, file: !172, line: 970, type: !55)
!3311 = !DILocation(line: 0, scope: !3305)
!3312 = !DILocation(line: 0, scope: !3245, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 972, column: 10, scope: !3305)
!3314 = !DILocation(line: 957, column: 3, scope: !3245, inlinedAt: !3313)
!3315 = !DILocation(line: 957, column: 32, scope: !3245, inlinedAt: !3313)
!3316 = !{!3317}
!3317 = distinct !{!3317, !3318, !"quoting_options_from_style: argument 0"}
!3318 = distinct !{!3318, !"quoting_options_from_style"}
!3319 = !DILocation(line: 957, column: 36, scope: !3245, inlinedAt: !3313)
!3320 = !DILocation(line: 0, scope: !3261, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 957, column: 36, scope: !3245, inlinedAt: !3313)
!3322 = !DILocation(line: 195, column: 26, scope: !3261, inlinedAt: !3321)
!3323 = !DILocation(line: 196, column: 13, scope: !3270, inlinedAt: !3321)
!3324 = !DILocation(line: 196, column: 7, scope: !3261, inlinedAt: !3321)
!3325 = !DILocation(line: 197, column: 5, scope: !3270, inlinedAt: !3321)
!3326 = !DILocation(line: 198, column: 5, scope: !3261, inlinedAt: !3321)
!3327 = !DILocation(line: 198, column: 11, scope: !3261, inlinedAt: !3321)
!3328 = !DILocation(line: 958, column: 10, scope: !3245, inlinedAt: !3313)
!3329 = !DILocation(line: 959, column: 1, scope: !3245, inlinedAt: !3313)
!3330 = !DILocation(line: 972, column: 3, scope: !3305)
!3331 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !172, file: !172, line: 976, type: !3332, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!45, !5, !55, !52}
!3334 = !{!3335, !3336, !3337}
!3335 = !DILocalVariable(name: "s", arg: 1, scope: !3331, file: !172, line: 976, type: !5)
!3336 = !DILocalVariable(name: "arg", arg: 2, scope: !3331, file: !172, line: 976, type: !55)
!3337 = !DILocalVariable(name: "argsize", arg: 3, scope: !3331, file: !172, line: 976, type: !52)
!3338 = !DILocation(line: 0, scope: !3331)
!3339 = !DILocation(line: 0, scope: !3278, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 978, column: 10, scope: !3331)
!3341 = !DILocation(line: 965, column: 3, scope: !3278, inlinedAt: !3340)
!3342 = !DILocation(line: 965, column: 32, scope: !3278, inlinedAt: !3340)
!3343 = !{!3344}
!3344 = distinct !{!3344, !3345, !"quoting_options_from_style: argument 0"}
!3345 = distinct !{!3345, !"quoting_options_from_style"}
!3346 = !DILocation(line: 965, column: 36, scope: !3278, inlinedAt: !3340)
!3347 = !DILocation(line: 0, scope: !3261, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 965, column: 36, scope: !3278, inlinedAt: !3340)
!3349 = !DILocation(line: 195, column: 26, scope: !3261, inlinedAt: !3348)
!3350 = !DILocation(line: 196, column: 13, scope: !3270, inlinedAt: !3348)
!3351 = !DILocation(line: 196, column: 7, scope: !3261, inlinedAt: !3348)
!3352 = !DILocation(line: 197, column: 5, scope: !3270, inlinedAt: !3348)
!3353 = !DILocation(line: 198, column: 5, scope: !3261, inlinedAt: !3348)
!3354 = !DILocation(line: 198, column: 11, scope: !3261, inlinedAt: !3348)
!3355 = !DILocation(line: 966, column: 10, scope: !3278, inlinedAt: !3340)
!3356 = !DILocation(line: 967, column: 1, scope: !3278, inlinedAt: !3340)
!3357 = !DILocation(line: 978, column: 3, scope: !3331)
!3358 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !172, file: !172, line: 982, type: !3359, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3361)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!45, !55, !52, !46}
!3361 = !{!3362, !3363, !3364, !3365}
!3362 = !DILocalVariable(name: "arg", arg: 1, scope: !3358, file: !172, line: 982, type: !55)
!3363 = !DILocalVariable(name: "argsize", arg: 2, scope: !3358, file: !172, line: 982, type: !52)
!3364 = !DILocalVariable(name: "ch", arg: 3, scope: !3358, file: !172, line: 982, type: !46)
!3365 = !DILocalVariable(name: "options", scope: !3358, file: !172, line: 984, type: !187)
!3366 = !DILocation(line: 0, scope: !3358)
!3367 = !DILocation(line: 984, column: 3, scope: !3358)
!3368 = !DILocation(line: 984, column: 26, scope: !3358)
!3369 = !DILocation(line: 985, column: 13, scope: !3358)
!3370 = !{i64 0, i64 4, !874, i64 4, i64 4, !864, i64 8, i64 32, !874, i64 40, i64 8, !694, i64 48, i64 8, !694}
!3371 = !DILocation(line: 0, scope: !2199, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 986, column: 3, scope: !3358)
!3373 = !DILocation(line: 156, column: 62, scope: !2199, inlinedAt: !3372)
!3374 = !DILocation(line: 156, column: 57, scope: !2199, inlinedAt: !3372)
!3375 = !DILocation(line: 157, column: 15, scope: !2199, inlinedAt: !3372)
!3376 = !DILocation(line: 158, column: 12, scope: !2199, inlinedAt: !3372)
!3377 = !DILocation(line: 158, column: 15, scope: !2199, inlinedAt: !3372)
!3378 = !DILocation(line: 158, column: 25, scope: !2199, inlinedAt: !3372)
!3379 = !DILocation(line: 159, column: 18, scope: !2199, inlinedAt: !3372)
!3380 = !DILocation(line: 159, column: 23, scope: !2199, inlinedAt: !3372)
!3381 = !DILocation(line: 159, column: 6, scope: !2199, inlinedAt: !3372)
!3382 = !DILocation(line: 987, column: 10, scope: !3358)
!3383 = !DILocation(line: 988, column: 1, scope: !3358)
!3384 = !DILocation(line: 987, column: 3, scope: !3358)
!3385 = distinct !DISubprogram(name: "quotearg_char", scope: !172, file: !172, line: 991, type: !3386, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3388)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!45, !55, !46}
!3388 = !{!3389, !3390}
!3389 = !DILocalVariable(name: "arg", arg: 1, scope: !3385, file: !172, line: 991, type: !55)
!3390 = !DILocalVariable(name: "ch", arg: 2, scope: !3385, file: !172, line: 991, type: !46)
!3391 = !DILocation(line: 0, scope: !3385)
!3392 = !DILocation(line: 0, scope: !3358, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 993, column: 10, scope: !3385)
!3394 = !DILocation(line: 984, column: 3, scope: !3358, inlinedAt: !3393)
!3395 = !DILocation(line: 984, column: 26, scope: !3358, inlinedAt: !3393)
!3396 = !DILocation(line: 985, column: 13, scope: !3358, inlinedAt: !3393)
!3397 = !DILocation(line: 0, scope: !2199, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 986, column: 3, scope: !3358, inlinedAt: !3393)
!3399 = !DILocation(line: 156, column: 62, scope: !2199, inlinedAt: !3398)
!3400 = !DILocation(line: 156, column: 57, scope: !2199, inlinedAt: !3398)
!3401 = !DILocation(line: 157, column: 15, scope: !2199, inlinedAt: !3398)
!3402 = !DILocation(line: 158, column: 12, scope: !2199, inlinedAt: !3398)
!3403 = !DILocation(line: 158, column: 15, scope: !2199, inlinedAt: !3398)
!3404 = !DILocation(line: 158, column: 25, scope: !2199, inlinedAt: !3398)
!3405 = !DILocation(line: 159, column: 18, scope: !2199, inlinedAt: !3398)
!3406 = !DILocation(line: 159, column: 23, scope: !2199, inlinedAt: !3398)
!3407 = !DILocation(line: 159, column: 6, scope: !2199, inlinedAt: !3398)
!3408 = !DILocation(line: 987, column: 10, scope: !3358, inlinedAt: !3393)
!3409 = !DILocation(line: 988, column: 1, scope: !3358, inlinedAt: !3393)
!3410 = !DILocation(line: 993, column: 3, scope: !3385)
!3411 = distinct !DISubprogram(name: "quotearg_colon", scope: !172, file: !172, line: 997, type: !1013, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3412)
!3412 = !{!3413}
!3413 = !DILocalVariable(name: "arg", arg: 1, scope: !3411, file: !172, line: 997, type: !55)
!3414 = !DILocation(line: 0, scope: !3411)
!3415 = !DILocation(line: 0, scope: !3385, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 999, column: 10, scope: !3411)
!3417 = !DILocation(line: 0, scope: !3358, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 993, column: 10, scope: !3385, inlinedAt: !3416)
!3419 = !DILocation(line: 984, column: 3, scope: !3358, inlinedAt: !3418)
!3420 = !DILocation(line: 984, column: 26, scope: !3358, inlinedAt: !3418)
!3421 = !DILocation(line: 985, column: 13, scope: !3358, inlinedAt: !3418)
!3422 = !DILocation(line: 0, scope: !2199, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 986, column: 3, scope: !3358, inlinedAt: !3418)
!3424 = !DILocation(line: 156, column: 57, scope: !2199, inlinedAt: !3423)
!3425 = !DILocation(line: 158, column: 12, scope: !2199, inlinedAt: !3423)
!3426 = !DILocation(line: 159, column: 6, scope: !2199, inlinedAt: !3423)
!3427 = !DILocation(line: 987, column: 10, scope: !3358, inlinedAt: !3418)
!3428 = !DILocation(line: 988, column: 1, scope: !3358, inlinedAt: !3418)
!3429 = !DILocation(line: 999, column: 3, scope: !3411)
!3430 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !172, file: !172, line: 1003, type: !3235, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3431)
!3431 = !{!3432, !3433}
!3432 = !DILocalVariable(name: "arg", arg: 1, scope: !3430, file: !172, line: 1003, type: !55)
!3433 = !DILocalVariable(name: "argsize", arg: 2, scope: !3430, file: !172, line: 1003, type: !52)
!3434 = !DILocation(line: 0, scope: !3430)
!3435 = !DILocation(line: 0, scope: !3358, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 1005, column: 10, scope: !3430)
!3437 = !DILocation(line: 984, column: 3, scope: !3358, inlinedAt: !3436)
!3438 = !DILocation(line: 984, column: 26, scope: !3358, inlinedAt: !3436)
!3439 = !DILocation(line: 985, column: 13, scope: !3358, inlinedAt: !3436)
!3440 = !DILocation(line: 0, scope: !2199, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 986, column: 3, scope: !3358, inlinedAt: !3436)
!3442 = !DILocation(line: 156, column: 57, scope: !2199, inlinedAt: !3441)
!3443 = !DILocation(line: 158, column: 12, scope: !2199, inlinedAt: !3441)
!3444 = !DILocation(line: 159, column: 6, scope: !2199, inlinedAt: !3441)
!3445 = !DILocation(line: 987, column: 10, scope: !3358, inlinedAt: !3436)
!3446 = !DILocation(line: 988, column: 1, scope: !3358, inlinedAt: !3436)
!3447 = !DILocation(line: 1005, column: 3, scope: !3430)
!3448 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !172, file: !172, line: 1009, type: !3246, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3449)
!3449 = !{!3450, !3451, !3452, !3453}
!3450 = !DILocalVariable(name: "n", arg: 1, scope: !3448, file: !172, line: 1009, type: !50)
!3451 = !DILocalVariable(name: "s", arg: 2, scope: !3448, file: !172, line: 1009, type: !5)
!3452 = !DILocalVariable(name: "arg", arg: 3, scope: !3448, file: !172, line: 1009, type: !55)
!3453 = !DILocalVariable(name: "options", scope: !3448, file: !172, line: 1011, type: !187)
!3454 = !DILocation(line: 195, column: 26, scope: !3261, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 1012, column: 13, scope: !3448)
!3456 = !DILocation(line: 0, scope: !3448)
!3457 = !DILocation(line: 1011, column: 3, scope: !3448)
!3458 = !DILocation(line: 1011, column: 26, scope: !3448)
!3459 = !DILocation(line: 1012, column: 13, scope: !3448)
!3460 = !{!3461}
!3461 = distinct !{!3461, !3462, !"quoting_options_from_style: argument 0"}
!3462 = distinct !{!3462, !"quoting_options_from_style"}
!3463 = !DILocation(line: 0, scope: !3261, inlinedAt: !3455)
!3464 = !DILocation(line: 196, column: 13, scope: !3270, inlinedAt: !3455)
!3465 = !DILocation(line: 196, column: 7, scope: !3261, inlinedAt: !3455)
!3466 = !DILocation(line: 197, column: 5, scope: !3270, inlinedAt: !3455)
!3467 = !{i64 0, i64 4, !864, i64 4, i64 32, !874, i64 36, i64 8, !694, i64 44, i64 8, !694}
!3468 = !DILocation(line: 0, scope: !2199, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 1013, column: 3, scope: !3448)
!3470 = !DILocation(line: 156, column: 57, scope: !2199, inlinedAt: !3469)
!3471 = !DILocation(line: 158, column: 12, scope: !2199, inlinedAt: !3469)
!3472 = !DILocation(line: 159, column: 6, scope: !2199, inlinedAt: !3469)
!3473 = !DILocation(line: 1014, column: 10, scope: !3448)
!3474 = !DILocation(line: 1015, column: 1, scope: !3448)
!3475 = !DILocation(line: 1014, column: 3, scope: !3448)
!3476 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !172, file: !172, line: 1018, type: !3477, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3479)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!45, !50, !55, !55, !55}
!3479 = !{!3480, !3481, !3482, !3483}
!3480 = !DILocalVariable(name: "n", arg: 1, scope: !3476, file: !172, line: 1018, type: !50)
!3481 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3476, file: !172, line: 1018, type: !55)
!3482 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3476, file: !172, line: 1019, type: !55)
!3483 = !DILocalVariable(name: "arg", arg: 4, scope: !3476, file: !172, line: 1019, type: !55)
!3484 = !DILocation(line: 0, scope: !3476)
!3485 = !DILocalVariable(name: "n", arg: 1, scope: !3486, file: !172, line: 1026, type: !50)
!3486 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !172, file: !172, line: 1026, type: !3487, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3489)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!45, !50, !55, !55, !55, !52}
!3489 = !{!3485, !3490, !3491, !3492, !3493, !3494}
!3490 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3486, file: !172, line: 1026, type: !55)
!3491 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3486, file: !172, line: 1027, type: !55)
!3492 = !DILocalVariable(name: "arg", arg: 4, scope: !3486, file: !172, line: 1028, type: !55)
!3493 = !DILocalVariable(name: "argsize", arg: 5, scope: !3486, file: !172, line: 1028, type: !52)
!3494 = !DILocalVariable(name: "o", scope: !3486, file: !172, line: 1030, type: !187)
!3495 = !DILocation(line: 0, scope: !3486, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 1021, column: 10, scope: !3476)
!3497 = !DILocation(line: 1030, column: 3, scope: !3486, inlinedAt: !3496)
!3498 = !DILocation(line: 1030, column: 26, scope: !3486, inlinedAt: !3496)
!3499 = !DILocation(line: 1030, column: 30, scope: !3486, inlinedAt: !3496)
!3500 = !DILocation(line: 0, scope: !2239, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 1031, column: 3, scope: !3486, inlinedAt: !3496)
!3502 = !DILocation(line: 184, column: 6, scope: !2239, inlinedAt: !3501)
!3503 = !DILocation(line: 184, column: 12, scope: !2239, inlinedAt: !3501)
!3504 = !DILocation(line: 185, column: 8, scope: !2253, inlinedAt: !3501)
!3505 = !DILocation(line: 185, column: 19, scope: !2253, inlinedAt: !3501)
!3506 = !DILocation(line: 186, column: 5, scope: !2253, inlinedAt: !3501)
!3507 = !DILocation(line: 187, column: 6, scope: !2239, inlinedAt: !3501)
!3508 = !DILocation(line: 187, column: 17, scope: !2239, inlinedAt: !3501)
!3509 = !DILocation(line: 188, column: 6, scope: !2239, inlinedAt: !3501)
!3510 = !DILocation(line: 188, column: 18, scope: !2239, inlinedAt: !3501)
!3511 = !DILocation(line: 1032, column: 10, scope: !3486, inlinedAt: !3496)
!3512 = !DILocation(line: 1033, column: 1, scope: !3486, inlinedAt: !3496)
!3513 = !DILocation(line: 1021, column: 3, scope: !3476)
!3514 = !DILocation(line: 0, scope: !3486)
!3515 = !DILocation(line: 1030, column: 3, scope: !3486)
!3516 = !DILocation(line: 1030, column: 26, scope: !3486)
!3517 = !DILocation(line: 1030, column: 30, scope: !3486)
!3518 = !DILocation(line: 0, scope: !2239, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 1031, column: 3, scope: !3486)
!3520 = !DILocation(line: 184, column: 6, scope: !2239, inlinedAt: !3519)
!3521 = !DILocation(line: 184, column: 12, scope: !2239, inlinedAt: !3519)
!3522 = !DILocation(line: 185, column: 8, scope: !2253, inlinedAt: !3519)
!3523 = !DILocation(line: 185, column: 19, scope: !2253, inlinedAt: !3519)
!3524 = !DILocation(line: 186, column: 5, scope: !2253, inlinedAt: !3519)
!3525 = !DILocation(line: 187, column: 6, scope: !2239, inlinedAt: !3519)
!3526 = !DILocation(line: 187, column: 17, scope: !2239, inlinedAt: !3519)
!3527 = !DILocation(line: 188, column: 6, scope: !2239, inlinedAt: !3519)
!3528 = !DILocation(line: 188, column: 18, scope: !2239, inlinedAt: !3519)
!3529 = !DILocation(line: 1032, column: 10, scope: !3486)
!3530 = !DILocation(line: 1033, column: 1, scope: !3486)
!3531 = !DILocation(line: 1032, column: 3, scope: !3486)
!3532 = distinct !DISubprogram(name: "quotearg_custom", scope: !172, file: !172, line: 1036, type: !3533, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3535)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!45, !55, !55, !55}
!3535 = !{!3536, !3537, !3538}
!3536 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3532, file: !172, line: 1036, type: !55)
!3537 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3532, file: !172, line: 1036, type: !55)
!3538 = !DILocalVariable(name: "arg", arg: 3, scope: !3532, file: !172, line: 1037, type: !55)
!3539 = !DILocation(line: 0, scope: !3532)
!3540 = !DILocation(line: 0, scope: !3476, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 1039, column: 10, scope: !3532)
!3542 = !DILocation(line: 0, scope: !3486, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 1021, column: 10, scope: !3476, inlinedAt: !3541)
!3544 = !DILocation(line: 1030, column: 3, scope: !3486, inlinedAt: !3543)
!3545 = !DILocation(line: 1030, column: 26, scope: !3486, inlinedAt: !3543)
!3546 = !DILocation(line: 1030, column: 30, scope: !3486, inlinedAt: !3543)
!3547 = !DILocation(line: 0, scope: !2239, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 1031, column: 3, scope: !3486, inlinedAt: !3543)
!3549 = !DILocation(line: 184, column: 6, scope: !2239, inlinedAt: !3548)
!3550 = !DILocation(line: 184, column: 12, scope: !2239, inlinedAt: !3548)
!3551 = !DILocation(line: 185, column: 8, scope: !2253, inlinedAt: !3548)
!3552 = !DILocation(line: 185, column: 19, scope: !2253, inlinedAt: !3548)
!3553 = !DILocation(line: 186, column: 5, scope: !2253, inlinedAt: !3548)
!3554 = !DILocation(line: 187, column: 6, scope: !2239, inlinedAt: !3548)
!3555 = !DILocation(line: 187, column: 17, scope: !2239, inlinedAt: !3548)
!3556 = !DILocation(line: 188, column: 6, scope: !2239, inlinedAt: !3548)
!3557 = !DILocation(line: 188, column: 18, scope: !2239, inlinedAt: !3548)
!3558 = !DILocation(line: 1032, column: 10, scope: !3486, inlinedAt: !3543)
!3559 = !DILocation(line: 1033, column: 1, scope: !3486, inlinedAt: !3543)
!3560 = !DILocation(line: 1039, column: 3, scope: !3532)
!3561 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !172, file: !172, line: 1043, type: !3562, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3564)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!45, !55, !55, !55, !52}
!3564 = !{!3565, !3566, !3567, !3568}
!3565 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3561, file: !172, line: 1043, type: !55)
!3566 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3561, file: !172, line: 1043, type: !55)
!3567 = !DILocalVariable(name: "arg", arg: 3, scope: !3561, file: !172, line: 1044, type: !55)
!3568 = !DILocalVariable(name: "argsize", arg: 4, scope: !3561, file: !172, line: 1044, type: !52)
!3569 = !DILocation(line: 0, scope: !3561)
!3570 = !DILocation(line: 0, scope: !3486, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 1046, column: 10, scope: !3561)
!3572 = !DILocation(line: 1030, column: 3, scope: !3486, inlinedAt: !3571)
!3573 = !DILocation(line: 1030, column: 26, scope: !3486, inlinedAt: !3571)
!3574 = !DILocation(line: 1030, column: 30, scope: !3486, inlinedAt: !3571)
!3575 = !DILocation(line: 0, scope: !2239, inlinedAt: !3576)
!3576 = distinct !DILocation(line: 1031, column: 3, scope: !3486, inlinedAt: !3571)
!3577 = !DILocation(line: 184, column: 6, scope: !2239, inlinedAt: !3576)
!3578 = !DILocation(line: 184, column: 12, scope: !2239, inlinedAt: !3576)
!3579 = !DILocation(line: 185, column: 8, scope: !2253, inlinedAt: !3576)
!3580 = !DILocation(line: 185, column: 19, scope: !2253, inlinedAt: !3576)
!3581 = !DILocation(line: 186, column: 5, scope: !2253, inlinedAt: !3576)
!3582 = !DILocation(line: 187, column: 6, scope: !2239, inlinedAt: !3576)
!3583 = !DILocation(line: 187, column: 17, scope: !2239, inlinedAt: !3576)
!3584 = !DILocation(line: 188, column: 6, scope: !2239, inlinedAt: !3576)
!3585 = !DILocation(line: 188, column: 18, scope: !2239, inlinedAt: !3576)
!3586 = !DILocation(line: 1032, column: 10, scope: !3486, inlinedAt: !3571)
!3587 = !DILocation(line: 1033, column: 1, scope: !3486, inlinedAt: !3571)
!3588 = !DILocation(line: 1046, column: 3, scope: !3561)
!3589 = distinct !DISubprogram(name: "quote_n_mem", scope: !172, file: !172, line: 1061, type: !3590, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3592)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!55, !50, !55, !52}
!3592 = !{!3593, !3594, !3595}
!3593 = !DILocalVariable(name: "n", arg: 1, scope: !3589, file: !172, line: 1061, type: !50)
!3594 = !DILocalVariable(name: "arg", arg: 2, scope: !3589, file: !172, line: 1061, type: !55)
!3595 = !DILocalVariable(name: "argsize", arg: 3, scope: !3589, file: !172, line: 1061, type: !52)
!3596 = !DILocation(line: 0, scope: !3589)
!3597 = !DILocation(line: 1063, column: 10, scope: !3589)
!3598 = !DILocation(line: 1063, column: 3, scope: !3589)
!3599 = distinct !DISubprogram(name: "quote_mem", scope: !172, file: !172, line: 1067, type: !3600, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3602)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!55, !55, !52}
!3602 = !{!3603, !3604}
!3603 = !DILocalVariable(name: "arg", arg: 1, scope: !3599, file: !172, line: 1067, type: !55)
!3604 = !DILocalVariable(name: "argsize", arg: 2, scope: !3599, file: !172, line: 1067, type: !52)
!3605 = !DILocation(line: 0, scope: !3599)
!3606 = !DILocation(line: 0, scope: !3589, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 1069, column: 10, scope: !3599)
!3608 = !DILocation(line: 1063, column: 10, scope: !3589, inlinedAt: !3607)
!3609 = !DILocation(line: 1069, column: 3, scope: !3599)
!3610 = distinct !DISubprogram(name: "quote_n", scope: !172, file: !172, line: 1073, type: !3611, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3613)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!55, !50, !55}
!3613 = !{!3614, !3615}
!3614 = !DILocalVariable(name: "n", arg: 1, scope: !3610, file: !172, line: 1073, type: !50)
!3615 = !DILocalVariable(name: "arg", arg: 2, scope: !3610, file: !172, line: 1073, type: !55)
!3616 = !DILocation(line: 0, scope: !3610)
!3617 = !DILocation(line: 0, scope: !3589, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 1075, column: 10, scope: !3610)
!3619 = !DILocation(line: 1063, column: 10, scope: !3589, inlinedAt: !3618)
!3620 = !DILocation(line: 1075, column: 3, scope: !3610)
!3621 = distinct !DISubprogram(name: "quote", scope: !172, file: !172, line: 1079, type: !3622, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !3624)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!55, !55}
!3624 = !{!3625}
!3625 = !DILocalVariable(name: "arg", arg: 1, scope: !3621, file: !172, line: 1079, type: !55)
!3626 = !DILocation(line: 0, scope: !3621)
!3627 = !DILocation(line: 0, scope: !3610, inlinedAt: !3628)
!3628 = distinct !DILocation(line: 1081, column: 10, scope: !3621)
!3629 = !DILocation(line: 0, scope: !3589, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 1075, column: 10, scope: !3610, inlinedAt: !3628)
!3631 = !DILocation(line: 1063, column: 10, scope: !3589, inlinedAt: !3630)
!3632 = !DILocation(line: 1081, column: 3, scope: !3621)
!3633 = distinct !DISubprogram(name: "version_etc_arn", scope: !231, file: !231, line: 61, type: !3634, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !3671)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{null, !3636, !55, !55, !55, !3670, !52}
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !851, line: 7, baseType: !3638)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !776, line: 49, size: 1728, elements: !3639)
!3639 = !{!3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3638, file: !776, line: 51, baseType: !50, size: 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3638, file: !776, line: 54, baseType: !45, size: 64, offset: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3638, file: !776, line: 55, baseType: !45, size: 64, offset: 128)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3638, file: !776, line: 56, baseType: !45, size: 64, offset: 192)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3638, file: !776, line: 57, baseType: !45, size: 64, offset: 256)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3638, file: !776, line: 58, baseType: !45, size: 64, offset: 320)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3638, file: !776, line: 59, baseType: !45, size: 64, offset: 384)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3638, file: !776, line: 60, baseType: !45, size: 64, offset: 448)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3638, file: !776, line: 61, baseType: !45, size: 64, offset: 512)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3638, file: !776, line: 64, baseType: !45, size: 64, offset: 576)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3638, file: !776, line: 65, baseType: !45, size: 64, offset: 640)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3638, file: !776, line: 66, baseType: !45, size: 64, offset: 704)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3638, file: !776, line: 68, baseType: !791, size: 64, offset: 768)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3638, file: !776, line: 70, baseType: !3654, size: 64, offset: 832)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3638, file: !776, line: 72, baseType: !50, size: 32, offset: 896)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3638, file: !776, line: 73, baseType: !50, size: 32, offset: 928)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3638, file: !776, line: 74, baseType: !797, size: 64, offset: 960)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3638, file: !776, line: 77, baseType: !51, size: 16, offset: 1024)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3638, file: !776, line: 78, baseType: !801, size: 8, offset: 1040)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3638, file: !776, line: 79, baseType: !803, size: 8, offset: 1048)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3638, file: !776, line: 81, baseType: !807, size: 64, offset: 1088)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3638, file: !776, line: 89, baseType: !810, size: 64, offset: 1152)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3638, file: !776, line: 91, baseType: !812, size: 64, offset: 1216)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3638, file: !776, line: 92, baseType: !815, size: 64, offset: 1280)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3638, file: !776, line: 93, baseType: !3654, size: 64, offset: 1344)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3638, file: !776, line: 94, baseType: !47, size: 64, offset: 1408)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3638, file: !776, line: 95, baseType: !52, size: 64, offset: 1472)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3638, file: !776, line: 96, baseType: !50, size: 32, offset: 1536)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3638, file: !776, line: 98, baseType: !822, size: 160, offset: 1568)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!3671 = !{!3672, !3673, !3674, !3675, !3676, !3677}
!3672 = !DILocalVariable(name: "stream", arg: 1, scope: !3633, file: !231, line: 61, type: !3636)
!3673 = !DILocalVariable(name: "command_name", arg: 2, scope: !3633, file: !231, line: 62, type: !55)
!3674 = !DILocalVariable(name: "package", arg: 3, scope: !3633, file: !231, line: 62, type: !55)
!3675 = !DILocalVariable(name: "version", arg: 4, scope: !3633, file: !231, line: 63, type: !55)
!3676 = !DILocalVariable(name: "authors", arg: 5, scope: !3633, file: !231, line: 64, type: !3670)
!3677 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3633, file: !231, line: 64, type: !52)
!3678 = !DILocation(line: 0, scope: !3633)
!3679 = !DILocation(line: 66, column: 7, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3633, file: !231, line: 66, column: 7)
!3681 = !DILocation(line: 66, column: 7, scope: !3633)
!3682 = !DILocation(line: 67, column: 5, scope: !3680)
!3683 = !DILocation(line: 69, column: 5, scope: !3680)
!3684 = !DILocation(line: 83, column: 3, scope: !3633)
!3685 = !DILocation(line: 85, column: 3, scope: !3633)
!3686 = !DILocation(line: 88, column: 3, scope: !3633)
!3687 = !DILocation(line: 95, column: 3, scope: !3633)
!3688 = !DILocation(line: 97, column: 3, scope: !3633)
!3689 = !DILocation(line: 105, column: 7, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3633, file: !231, line: 98, column: 5)
!3691 = !DILocation(line: 106, column: 7, scope: !3690)
!3692 = !DILocation(line: 109, column: 7, scope: !3690)
!3693 = !DILocation(line: 110, column: 7, scope: !3690)
!3694 = !DILocation(line: 113, column: 7, scope: !3690)
!3695 = !DILocation(line: 115, column: 7, scope: !3690)
!3696 = !DILocation(line: 120, column: 7, scope: !3690)
!3697 = !DILocation(line: 122, column: 7, scope: !3690)
!3698 = !DILocation(line: 127, column: 7, scope: !3690)
!3699 = !DILocation(line: 129, column: 7, scope: !3690)
!3700 = !DILocation(line: 134, column: 7, scope: !3690)
!3701 = !DILocation(line: 137, column: 7, scope: !3690)
!3702 = !DILocation(line: 142, column: 7, scope: !3690)
!3703 = !DILocation(line: 145, column: 7, scope: !3690)
!3704 = !DILocation(line: 150, column: 7, scope: !3690)
!3705 = !DILocation(line: 154, column: 7, scope: !3690)
!3706 = !DILocation(line: 159, column: 7, scope: !3690)
!3707 = !DILocation(line: 163, column: 7, scope: !3690)
!3708 = !DILocation(line: 170, column: 7, scope: !3690)
!3709 = !DILocation(line: 174, column: 7, scope: !3690)
!3710 = !DILocation(line: 176, column: 1, scope: !3633)
!3711 = distinct !DISubprogram(name: "version_etc_ar", scope: !231, file: !231, line: 183, type: !3712, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !3714)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{null, !3636, !55, !55, !55, !3670}
!3714 = !{!3715, !3716, !3717, !3718, !3719, !3720}
!3715 = !DILocalVariable(name: "stream", arg: 1, scope: !3711, file: !231, line: 183, type: !3636)
!3716 = !DILocalVariable(name: "command_name", arg: 2, scope: !3711, file: !231, line: 184, type: !55)
!3717 = !DILocalVariable(name: "package", arg: 3, scope: !3711, file: !231, line: 184, type: !55)
!3718 = !DILocalVariable(name: "version", arg: 4, scope: !3711, file: !231, line: 185, type: !55)
!3719 = !DILocalVariable(name: "authors", arg: 5, scope: !3711, file: !231, line: 185, type: !3670)
!3720 = !DILocalVariable(name: "n_authors", scope: !3711, file: !231, line: 187, type: !52)
!3721 = !DILocation(line: 0, scope: !3711)
!3722 = !DILocation(line: 189, column: 8, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3711, file: !231, line: 189, column: 3)
!3724 = !DILocation(line: 0, scope: !3723)
!3725 = !DILocation(line: 189, column: 23, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3723, file: !231, line: 189, column: 3)
!3727 = !DILocation(line: 189, column: 3, scope: !3723)
!3728 = !DILocation(line: 189, column: 52, scope: !3726)
!3729 = distinct !{!3729, !3727, !3730, !746}
!3730 = !DILocation(line: 190, column: 5, scope: !3723)
!3731 = !DILocation(line: 191, column: 3, scope: !3711)
!3732 = !DILocation(line: 192, column: 1, scope: !3711)
!3733 = distinct !DISubprogram(name: "version_etc_va", scope: !231, file: !231, line: 199, type: !3734, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !3743)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{null, !3636, !55, !55, !55, !3736}
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3738)
!3738 = !{!3739, !3740, !3741, !3742}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3737, file: !231, line: 192, baseType: !7, size: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3737, file: !231, line: 192, baseType: !7, size: 32, offset: 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3737, file: !231, line: 192, baseType: !47, size: 64, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3737, file: !231, line: 192, baseType: !47, size: 64, offset: 128)
!3743 = !{!3744, !3745, !3746, !3747, !3748, !3749, !3750}
!3744 = !DILocalVariable(name: "stream", arg: 1, scope: !3733, file: !231, line: 199, type: !3636)
!3745 = !DILocalVariable(name: "command_name", arg: 2, scope: !3733, file: !231, line: 200, type: !55)
!3746 = !DILocalVariable(name: "package", arg: 3, scope: !3733, file: !231, line: 200, type: !55)
!3747 = !DILocalVariable(name: "version", arg: 4, scope: !3733, file: !231, line: 201, type: !55)
!3748 = !DILocalVariable(name: "authors", arg: 5, scope: !3733, file: !231, line: 201, type: !3736)
!3749 = !DILocalVariable(name: "n_authors", scope: !3733, file: !231, line: 203, type: !52)
!3750 = !DILocalVariable(name: "authtab", scope: !3733, file: !231, line: 204, type: !3751)
!3751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 640, elements: !92)
!3752 = !DILocation(line: 0, scope: !3733)
!3753 = !DILocation(line: 204, column: 3, scope: !3733)
!3754 = !DILocation(line: 204, column: 15, scope: !3733)
!3755 = !DILocation(line: 208, column: 35, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3757, file: !231, line: 206, column: 3)
!3757 = distinct !DILexicalBlock(scope: !3733, file: !231, line: 206, column: 3)
!3758 = !DILocation(line: 208, column: 14, scope: !3756)
!3759 = !DILocation(line: 208, column: 33, scope: !3756)
!3760 = !DILocation(line: 208, column: 67, scope: !3756)
!3761 = !DILocation(line: 206, column: 3, scope: !3757)
!3762 = !DILocation(line: 0, scope: !3757)
!3763 = !DILocation(line: 211, column: 3, scope: !3733)
!3764 = !DILocation(line: 213, column: 1, scope: !3733)
!3765 = distinct !DISubprogram(name: "version_etc", scope: !231, file: !231, line: 230, type: !3766, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !3768)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{null, !3636, !55, !55, !55, null}
!3768 = !{!3769, !3770, !3771, !3772, !3773}
!3769 = !DILocalVariable(name: "stream", arg: 1, scope: !3765, file: !231, line: 230, type: !3636)
!3770 = !DILocalVariable(name: "command_name", arg: 2, scope: !3765, file: !231, line: 231, type: !55)
!3771 = !DILocalVariable(name: "package", arg: 3, scope: !3765, file: !231, line: 231, type: !55)
!3772 = !DILocalVariable(name: "version", arg: 4, scope: !3765, file: !231, line: 232, type: !55)
!3773 = !DILocalVariable(name: "authors", scope: !3765, file: !231, line: 234, type: !3774)
!3774 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !771, line: 52, baseType: !3775)
!3775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3776, line: 32, baseType: !3777)
!3776 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !231, baseType: !3778)
!3778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3737, size: 192, elements: !804)
!3779 = !DILocation(line: 0, scope: !3765)
!3780 = !DILocation(line: 234, column: 3, scope: !3765)
!3781 = !DILocation(line: 234, column: 11, scope: !3765)
!3782 = !DILocation(line: 236, column: 3, scope: !3765)
!3783 = !DILocation(line: 237, column: 3, scope: !3765)
!3784 = !DILocation(line: 238, column: 3, scope: !3765)
!3785 = !DILocation(line: 239, column: 1, scope: !3765)
!3786 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !231, file: !231, line: 242, type: !704, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !148)
!3787 = !DILocation(line: 244, column: 3, scope: !3786)
!3788 = !DILocation(line: 249, column: 3, scope: !3786)
!3789 = !DILocation(line: 255, column: 3, scope: !3786)
!3790 = !DILocation(line: 260, column: 3, scope: !3786)
!3791 = !DILocation(line: 262, column: 1, scope: !3786)
!3792 = distinct !DISubprogram(name: "xnmalloc", scope: !241, file: !241, line: 99, type: !3793, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3795)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!47, !52, !52}
!3795 = !{!3796, !3797}
!3796 = !DILocalVariable(name: "n", arg: 1, scope: !3792, file: !241, line: 99, type: !52)
!3797 = !DILocalVariable(name: "s", arg: 2, scope: !3792, file: !241, line: 99, type: !52)
!3798 = !DILocation(line: 0, scope: !3792)
!3799 = !DILocation(line: 101, column: 7, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3792, file: !241, line: 101, column: 7)
!3801 = !DILocation(line: 101, column: 7, scope: !3792)
!3802 = !DILocation(line: 102, column: 5, scope: !3800)
!3803 = !DILocation(line: 103, column: 21, scope: !3792)
!3804 = !DILocalVariable(name: "n", arg: 1, scope: !3805, file: !238, line: 39, type: !52)
!3805 = distinct !DISubprogram(name: "xmalloc", scope: !238, file: !238, line: 39, type: !3806, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3808)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!47, !52}
!3808 = !{!3804, !3809}
!3809 = !DILocalVariable(name: "p", scope: !3805, file: !238, line: 41, type: !47)
!3810 = !DILocation(line: 0, scope: !3805, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 103, column: 10, scope: !3792)
!3812 = !DILocation(line: 41, column: 13, scope: !3805, inlinedAt: !3811)
!3813 = !DILocation(line: 42, column: 8, scope: !3814, inlinedAt: !3811)
!3814 = distinct !DILexicalBlock(scope: !3805, file: !238, line: 42, column: 7)
!3815 = !DILocation(line: 42, column: 10, scope: !3814, inlinedAt: !3811)
!3816 = !DILocation(line: 43, column: 5, scope: !3814, inlinedAt: !3811)
!3817 = !DILocation(line: 103, column: 3, scope: !3792)
!3818 = !DILocation(line: 0, scope: !3805)
!3819 = !DILocation(line: 41, column: 13, scope: !3805)
!3820 = !DILocation(line: 42, column: 8, scope: !3814)
!3821 = !DILocation(line: 42, column: 10, scope: !3814)
!3822 = !DILocation(line: 43, column: 5, scope: !3814)
!3823 = !DILocation(line: 44, column: 3, scope: !3805)
!3824 = distinct !DISubprogram(name: "xnrealloc", scope: !241, file: !241, line: 112, type: !3825, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3827)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!47, !47, !52, !52}
!3827 = !{!3828, !3829, !3830}
!3828 = !DILocalVariable(name: "p", arg: 1, scope: !3824, file: !241, line: 112, type: !47)
!3829 = !DILocalVariable(name: "n", arg: 2, scope: !3824, file: !241, line: 112, type: !52)
!3830 = !DILocalVariable(name: "s", arg: 3, scope: !3824, file: !241, line: 112, type: !52)
!3831 = !DILocation(line: 0, scope: !3824)
!3832 = !DILocation(line: 114, column: 7, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3824, file: !241, line: 114, column: 7)
!3834 = !DILocation(line: 114, column: 7, scope: !3824)
!3835 = !DILocation(line: 115, column: 5, scope: !3833)
!3836 = !DILocation(line: 116, column: 25, scope: !3824)
!3837 = !DILocalVariable(name: "p", arg: 1, scope: !3838, file: !238, line: 51, type: !47)
!3838 = distinct !DISubprogram(name: "xrealloc", scope: !238, file: !238, line: 51, type: !3839, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3841)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!47, !47, !52}
!3841 = !{!3837, !3842}
!3842 = !DILocalVariable(name: "n", arg: 2, scope: !3838, file: !238, line: 51, type: !52)
!3843 = !DILocation(line: 0, scope: !3838, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 116, column: 10, scope: !3824)
!3845 = !DILocation(line: 53, column: 8, scope: !3846, inlinedAt: !3844)
!3846 = distinct !DILexicalBlock(scope: !3838, file: !238, line: 53, column: 7)
!3847 = !DILocation(line: 53, column: 10, scope: !3846, inlinedAt: !3844)
!3848 = !DILocation(line: 57, column: 7, scope: !3849, inlinedAt: !3844)
!3849 = distinct !DILexicalBlock(scope: !3846, file: !238, line: 54, column: 5)
!3850 = !DILocation(line: 58, column: 7, scope: !3849, inlinedAt: !3844)
!3851 = !DILocation(line: 61, column: 7, scope: !3838, inlinedAt: !3844)
!3852 = !DILocation(line: 62, column: 8, scope: !3853, inlinedAt: !3844)
!3853 = distinct !DILexicalBlock(scope: !3838, file: !238, line: 62, column: 7)
!3854 = !DILocation(line: 62, column: 10, scope: !3853, inlinedAt: !3844)
!3855 = !DILocation(line: 63, column: 5, scope: !3853, inlinedAt: !3844)
!3856 = !DILocation(line: 116, column: 3, scope: !3824)
!3857 = !DILocation(line: 0, scope: !3838)
!3858 = !DILocation(line: 53, column: 8, scope: !3846)
!3859 = !DILocation(line: 53, column: 10, scope: !3846)
!3860 = !DILocation(line: 57, column: 7, scope: !3849)
!3861 = !DILocation(line: 58, column: 7, scope: !3849)
!3862 = !DILocation(line: 61, column: 7, scope: !3838)
!3863 = !DILocation(line: 62, column: 8, scope: !3853)
!3864 = !DILocation(line: 62, column: 10, scope: !3853)
!3865 = !DILocation(line: 63, column: 5, scope: !3853)
!3866 = !DILocation(line: 65, column: 1, scope: !3838)
!3867 = !DILocation(line: 0, scope: !242)
!3868 = !DILocation(line: 176, column: 14, scope: !242)
!3869 = !DILocation(line: 178, column: 9, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !242, file: !241, line: 178, column: 7)
!3871 = !DILocation(line: 178, column: 7, scope: !242)
!3872 = !DILocation(line: 180, column: 13, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3874, file: !241, line: 180, column: 11)
!3874 = distinct !DILexicalBlock(scope: !3870, file: !241, line: 179, column: 5)
!3875 = !DILocation(line: 180, column: 11, scope: !3874)
!3876 = !DILocation(line: 188, column: 30, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3873, file: !241, line: 181, column: 9)
!3878 = !DILocation(line: 189, column: 16, scope: !3877)
!3879 = !DILocation(line: 189, column: 13, scope: !3877)
!3880 = !DILocation(line: 190, column: 9, scope: !3877)
!3881 = !DILocation(line: 191, column: 11, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3874, file: !241, line: 191, column: 11)
!3883 = !DILocation(line: 191, column: 11, scope: !3874)
!3884 = !DILocation(line: 206, column: 7, scope: !242)
!3885 = !DILocation(line: 207, column: 25, scope: !242)
!3886 = !DILocation(line: 0, scope: !3838, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 207, column: 10, scope: !242)
!3888 = !DILocation(line: 53, column: 10, scope: !3846, inlinedAt: !3887)
!3889 = !DILocation(line: 192, column: 9, scope: !3882)
!3890 = !DILocation(line: 200, column: 69, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3892, file: !241, line: 200, column: 11)
!3892 = distinct !DILexicalBlock(scope: !3870, file: !241, line: 195, column: 5)
!3893 = !DILocation(line: 201, column: 11, scope: !3891)
!3894 = !DILocation(line: 200, column: 11, scope: !3892)
!3895 = !DILocation(line: 202, column: 9, scope: !3891)
!3896 = !DILocation(line: 203, column: 14, scope: !3892)
!3897 = !DILocation(line: 203, column: 18, scope: !3892)
!3898 = !DILocation(line: 203, column: 9, scope: !3892)
!3899 = !DILocation(line: 53, column: 8, scope: !3846, inlinedAt: !3887)
!3900 = !DILocation(line: 57, column: 7, scope: !3849, inlinedAt: !3887)
!3901 = !DILocation(line: 58, column: 7, scope: !3849, inlinedAt: !3887)
!3902 = !DILocation(line: 61, column: 7, scope: !3838, inlinedAt: !3887)
!3903 = !DILocation(line: 62, column: 8, scope: !3853, inlinedAt: !3887)
!3904 = !DILocation(line: 62, column: 10, scope: !3853, inlinedAt: !3887)
!3905 = !DILocation(line: 63, column: 5, scope: !3853, inlinedAt: !3887)
!3906 = !DILocation(line: 207, column: 3, scope: !242)
!3907 = distinct !DISubprogram(name: "xcharalloc", scope: !241, file: !241, line: 216, type: !3045, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3908)
!3908 = !{!3909}
!3909 = !DILocalVariable(name: "n", arg: 1, scope: !3907, file: !241, line: 216, type: !52)
!3910 = !DILocation(line: 0, scope: !3907)
!3911 = !DILocation(line: 0, scope: !3805, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 218, column: 10, scope: !3907)
!3913 = !DILocation(line: 41, column: 13, scope: !3805, inlinedAt: !3912)
!3914 = !DILocation(line: 42, column: 8, scope: !3814, inlinedAt: !3912)
!3915 = !DILocation(line: 42, column: 10, scope: !3814, inlinedAt: !3912)
!3916 = !DILocation(line: 43, column: 5, scope: !3814, inlinedAt: !3912)
!3917 = !DILocation(line: 218, column: 3, scope: !3907)
!3918 = distinct !DISubprogram(name: "x2realloc", scope: !238, file: !238, line: 74, type: !3919, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3921)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!47, !47, !245}
!3921 = !{!3922, !3923}
!3922 = !DILocalVariable(name: "p", arg: 1, scope: !3918, file: !238, line: 74, type: !47)
!3923 = !DILocalVariable(name: "pn", arg: 2, scope: !3918, file: !238, line: 74, type: !245)
!3924 = !DILocation(line: 0, scope: !3918)
!3925 = !DILocation(line: 0, scope: !242, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 76, column: 10, scope: !3918)
!3927 = !DILocation(line: 176, column: 14, scope: !242, inlinedAt: !3926)
!3928 = !DILocation(line: 178, column: 9, scope: !3870, inlinedAt: !3926)
!3929 = !DILocation(line: 178, column: 7, scope: !242, inlinedAt: !3926)
!3930 = !DILocation(line: 180, column: 13, scope: !3873, inlinedAt: !3926)
!3931 = !DILocation(line: 180, column: 11, scope: !3874, inlinedAt: !3926)
!3932 = !DILocation(line: 191, column: 11, scope: !3882, inlinedAt: !3926)
!3933 = !DILocation(line: 191, column: 11, scope: !3874, inlinedAt: !3926)
!3934 = !DILocation(line: 192, column: 9, scope: !3882, inlinedAt: !3926)
!3935 = !DILocation(line: 201, column: 11, scope: !3891, inlinedAt: !3926)
!3936 = !DILocation(line: 200, column: 11, scope: !3892, inlinedAt: !3926)
!3937 = !DILocation(line: 202, column: 9, scope: !3891, inlinedAt: !3926)
!3938 = !DILocation(line: 203, column: 14, scope: !3892, inlinedAt: !3926)
!3939 = !DILocation(line: 203, column: 18, scope: !3892, inlinedAt: !3926)
!3940 = !DILocation(line: 203, column: 9, scope: !3892, inlinedAt: !3926)
!3941 = !DILocation(line: 0, scope: !3838, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 207, column: 10, scope: !242, inlinedAt: !3926)
!3943 = !DILocation(line: 53, column: 10, scope: !3846, inlinedAt: !3942)
!3944 = !DILocation(line: 206, column: 7, scope: !242, inlinedAt: !3926)
!3945 = !DILocation(line: 61, column: 7, scope: !3838, inlinedAt: !3942)
!3946 = !DILocation(line: 62, column: 8, scope: !3853, inlinedAt: !3942)
!3947 = !DILocation(line: 62, column: 10, scope: !3853, inlinedAt: !3942)
!3948 = !DILocation(line: 63, column: 5, scope: !3853, inlinedAt: !3942)
!3949 = !DILocation(line: 76, column: 3, scope: !3918)
!3950 = distinct !DISubprogram(name: "xzalloc", scope: !238, file: !238, line: 84, type: !3806, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3951)
!3951 = !{!3952}
!3952 = !DILocalVariable(name: "n", arg: 1, scope: !3950, file: !238, line: 84, type: !52)
!3953 = !DILocation(line: 0, scope: !3950)
!3954 = !DILocalVariable(name: "n", arg: 1, scope: !3955, file: !238, line: 93, type: !52)
!3955 = distinct !DISubprogram(name: "xcalloc", scope: !238, file: !238, line: 93, type: !3793, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3956)
!3956 = !{!3954, !3957, !3958}
!3957 = !DILocalVariable(name: "s", arg: 2, scope: !3955, file: !238, line: 93, type: !52)
!3958 = !DILocalVariable(name: "p", scope: !3955, file: !238, line: 95, type: !47)
!3959 = !DILocation(line: 0, scope: !3955, inlinedAt: !3960)
!3960 = distinct !DILocation(line: 86, column: 10, scope: !3950)
!3961 = !DILocation(line: 100, column: 7, scope: !3962, inlinedAt: !3960)
!3962 = distinct !DILexicalBlock(scope: !3955, file: !238, line: 100, column: 7)
!3963 = !DILocation(line: 101, column: 7, scope: !3962, inlinedAt: !3960)
!3964 = !DILocation(line: 101, column: 18, scope: !3962, inlinedAt: !3960)
!3965 = !DILocation(line: 101, column: 16, scope: !3962, inlinedAt: !3960)
!3966 = !DILocation(line: 100, column: 7, scope: !3955, inlinedAt: !3960)
!3967 = !DILocation(line: 102, column: 5, scope: !3962, inlinedAt: !3960)
!3968 = !DILocation(line: 86, column: 3, scope: !3950)
!3969 = !DILocation(line: 0, scope: !3955)
!3970 = !DILocation(line: 100, column: 7, scope: !3962)
!3971 = !DILocation(line: 101, column: 7, scope: !3962)
!3972 = !DILocation(line: 101, column: 18, scope: !3962)
!3973 = !DILocation(line: 101, column: 16, scope: !3962)
!3974 = !DILocation(line: 100, column: 7, scope: !3955)
!3975 = !DILocation(line: 102, column: 5, scope: !3962)
!3976 = !DILocation(line: 103, column: 3, scope: !3955)
!3977 = distinct !DISubprogram(name: "xmemdup", scope: !238, file: !238, line: 111, type: !3978, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3980)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!47, !1969, !52}
!3980 = !{!3981, !3982}
!3981 = !DILocalVariable(name: "p", arg: 1, scope: !3977, file: !238, line: 111, type: !1969)
!3982 = !DILocalVariable(name: "s", arg: 2, scope: !3977, file: !238, line: 111, type: !52)
!3983 = !DILocation(line: 0, scope: !3977)
!3984 = !DILocation(line: 0, scope: !3805, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 113, column: 18, scope: !3977)
!3986 = !DILocation(line: 41, column: 13, scope: !3805, inlinedAt: !3985)
!3987 = !DILocation(line: 42, column: 8, scope: !3814, inlinedAt: !3985)
!3988 = !DILocation(line: 42, column: 10, scope: !3814, inlinedAt: !3985)
!3989 = !DILocation(line: 43, column: 5, scope: !3814, inlinedAt: !3985)
!3990 = !DILocalVariable(name: "__dest", arg: 1, scope: !3991, file: !1966, line: 26, type: !3994)
!3991 = distinct !DISubprogram(name: "memcpy", scope: !1966, file: !1966, line: 26, type: !3992, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3996)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!47, !3994, !3995, !52}
!3994 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !47)
!3995 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1969)
!3996 = !{!3990, !3997, !3998}
!3997 = !DILocalVariable(name: "__src", arg: 2, scope: !3991, file: !1966, line: 26, type: !3995)
!3998 = !DILocalVariable(name: "__len", arg: 3, scope: !3991, file: !1966, line: 26, type: !52)
!3999 = !DILocation(line: 0, scope: !3991, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 113, column: 10, scope: !3977)
!4001 = !DILocation(line: 29, column: 10, scope: !3991, inlinedAt: !4000)
!4002 = !DILocation(line: 113, column: 3, scope: !3977)
!4003 = distinct !DISubprogram(name: "xstrdup", scope: !238, file: !238, line: 119, type: !1013, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !4004)
!4004 = !{!4005}
!4005 = !DILocalVariable(name: "string", arg: 1, scope: !4003, file: !238, line: 119, type: !55)
!4006 = !DILocation(line: 0, scope: !4003)
!4007 = !DILocation(line: 121, column: 27, scope: !4003)
!4008 = !DILocation(line: 121, column: 43, scope: !4003)
!4009 = !DILocation(line: 0, scope: !3977, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 121, column: 10, scope: !4003)
!4011 = !DILocation(line: 0, scope: !3805, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 113, column: 18, scope: !3977, inlinedAt: !4010)
!4013 = !DILocation(line: 41, column: 13, scope: !3805, inlinedAt: !4012)
!4014 = !DILocation(line: 42, column: 8, scope: !3814, inlinedAt: !4012)
!4015 = !DILocation(line: 42, column: 10, scope: !3814, inlinedAt: !4012)
!4016 = !DILocation(line: 43, column: 5, scope: !3814, inlinedAt: !4012)
!4017 = !DILocation(line: 0, scope: !3991, inlinedAt: !4018)
!4018 = distinct !DILocation(line: 113, column: 10, scope: !3977, inlinedAt: !4010)
!4019 = !DILocation(line: 29, column: 10, scope: !3991, inlinedAt: !4018)
!4020 = !DILocation(line: 121, column: 3, scope: !4003)
!4021 = distinct !DISubprogram(name: "xalloc_die", scope: !255, file: !255, line: 32, type: !704, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !148)
!4022 = !DILocation(line: 34, column: 10, scope: !4021)
!4023 = !DILocation(line: 34, column: 33, scope: !4021)
!4024 = !DILocation(line: 34, column: 3, scope: !4021)
!4025 = !DILocation(line: 40, column: 3, scope: !4021)
!4026 = distinct !DISubprogram(name: "xnumtoumax", scope: !4027, file: !4027, line: 36, type: !4028, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !256, retainedNodes: !4033)
!4027 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!4030, !55, !50, !4030, !4030, !55, !55, !50}
!4030 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !4031, line: 102, baseType: !4032)
!4031 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!4032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !798, line: 73, baseType: !54)
!4033 = !{!4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4043}
!4034 = !DILocalVariable(name: "n_str", arg: 1, scope: !4026, file: !4027, line: 36, type: !55)
!4035 = !DILocalVariable(name: "base", arg: 2, scope: !4026, file: !4027, line: 36, type: !50)
!4036 = !DILocalVariable(name: "min", arg: 3, scope: !4026, file: !4027, line: 36, type: !4030)
!4037 = !DILocalVariable(name: "max", arg: 4, scope: !4026, file: !4027, line: 36, type: !4030)
!4038 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4026, file: !4027, line: 37, type: !55)
!4039 = !DILocalVariable(name: "err", arg: 6, scope: !4026, file: !4027, line: 37, type: !55)
!4040 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4026, file: !4027, line: 37, type: !50)
!4041 = !DILocalVariable(name: "s_err", scope: !4026, file: !4027, line: 39, type: !4042)
!4042 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !260, line: 38, baseType: !259)
!4043 = !DILocalVariable(name: "tnum", scope: !4026, file: !4027, line: 41, type: !4030)
!4044 = !DILocation(line: 0, scope: !4026)
!4045 = !DILocation(line: 41, column: 3, scope: !4026)
!4046 = !DILocation(line: 42, column: 11, scope: !4026)
!4047 = !DILocation(line: 44, column: 7, scope: !4026)
!4048 = !DILocation(line: 69, column: 50, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4050, file: !4027, line: 67, column: 5)
!4050 = distinct !DILexicalBlock(scope: !4026, file: !4027, line: 66, column: 7)
!4051 = !DILocation(line: 46, column: 11, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4053, file: !4027, line: 46, column: 11)
!4053 = distinct !DILexicalBlock(scope: !4054, file: !4027, line: 45, column: 5)
!4054 = distinct !DILexicalBlock(scope: !4026, file: !4027, line: 44, column: 7)
!4055 = !DILocation(line: 46, column: 16, scope: !4052)
!4056 = !DILocation(line: 46, column: 22, scope: !4052)
!4057 = !DILocation(line: 51, column: 20, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4059, file: !4027, line: 51, column: 15)
!4059 = distinct !DILexicalBlock(scope: !4052, file: !4027, line: 47, column: 9)
!4060 = !DILocation(line: 0, scope: !4058)
!4061 = !DILocation(line: 51, column: 15, scope: !4059)
!4062 = !DILocation(line: 52, column: 19, scope: !4058)
!4063 = !DILocation(line: 66, column: 7, scope: !4026)
!4064 = !DILocation(line: 58, column: 19, scope: !4058)
!4065 = !DILocation(line: 62, column: 5, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4054, file: !4027, line: 61, column: 12)
!4067 = !DILocation(line: 62, column: 11, scope: !4066)
!4068 = !DILocation(line: 64, column: 5, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4066, file: !4027, line: 63, column: 12)
!4070 = !DILocation(line: 64, column: 11, scope: !4069)
!4071 = !DILocation(line: 69, column: 14, scope: !4049)
!4072 = !DILocation(line: 69, column: 56, scope: !4049)
!4073 = !DILocation(line: 70, column: 29, scope: !4049)
!4074 = !DILocation(line: 69, column: 7, scope: !4049)
!4075 = !DILocation(line: 73, column: 10, scope: !4026)
!4076 = !DILocation(line: 71, column: 5, scope: !4049)
!4077 = !DILocation(line: 74, column: 1, scope: !4026)
!4078 = !DILocation(line: 73, column: 3, scope: !4026)
!4079 = distinct !DISubprogram(name: "xdectoumax", scope: !4027, file: !4027, line: 82, type: !4080, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !256, retainedNodes: !4082)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!4030, !55, !4030, !4030, !55, !55, !50}
!4082 = !{!4083, !4084, !4085, !4086, !4087, !4088}
!4083 = !DILocalVariable(name: "n_str", arg: 1, scope: !4079, file: !4027, line: 82, type: !55)
!4084 = !DILocalVariable(name: "min", arg: 2, scope: !4079, file: !4027, line: 82, type: !4030)
!4085 = !DILocalVariable(name: "max", arg: 3, scope: !4079, file: !4027, line: 82, type: !4030)
!4086 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4079, file: !4027, line: 83, type: !55)
!4087 = !DILocalVariable(name: "err", arg: 5, scope: !4079, file: !4027, line: 83, type: !55)
!4088 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4079, file: !4027, line: 83, type: !50)
!4089 = !DILocation(line: 0, scope: !4079)
!4090 = !DILocation(line: 85, column: 10, scope: !4079)
!4091 = !DILocation(line: 85, column: 3, scope: !4079)
!4092 = distinct !DISubprogram(name: "xstrtoumax", scope: !4093, file: !4093, line: 76, type: !4094, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !4097)
!4093 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!4042, !55, !832, !50, !4096, !55}
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4097 = !{!4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4110, !4111, !4114, !4115}
!4098 = !DILocalVariable(name: "s", arg: 1, scope: !4092, file: !4093, line: 76, type: !55)
!4099 = !DILocalVariable(name: "ptr", arg: 2, scope: !4092, file: !4093, line: 76, type: !832)
!4100 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4092, file: !4093, line: 76, type: !50)
!4101 = !DILocalVariable(name: "val", arg: 4, scope: !4092, file: !4093, line: 77, type: !4096)
!4102 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4092, file: !4093, line: 77, type: !55)
!4103 = !DILocalVariable(name: "t_ptr", scope: !4092, file: !4093, line: 79, type: !45)
!4104 = !DILocalVariable(name: "p", scope: !4092, file: !4093, line: 80, type: !832)
!4105 = !DILocalVariable(name: "tmp", scope: !4092, file: !4093, line: 81, type: !4030)
!4106 = !DILocalVariable(name: "err", scope: !4092, file: !4093, line: 82, type: !4042)
!4107 = !DILocalVariable(name: "q", scope: !4108, file: !4093, line: 92, type: !55)
!4108 = distinct !DILexicalBlock(scope: !4109, file: !4093, line: 91, column: 5)
!4109 = distinct !DILexicalBlock(scope: !4092, file: !4093, line: 90, column: 7)
!4110 = !DILocalVariable(name: "ch", scope: !4108, file: !4093, line: 93, type: !49)
!4111 = !DILocalVariable(name: "base", scope: !4112, file: !4093, line: 129, type: !50)
!4112 = distinct !DILexicalBlock(scope: !4113, file: !4093, line: 128, column: 5)
!4113 = distinct !DILexicalBlock(scope: !4092, file: !4093, line: 127, column: 7)
!4114 = !DILocalVariable(name: "suffixes", scope: !4112, file: !4093, line: 130, type: !50)
!4115 = !DILocalVariable(name: "overflow", scope: !4112, file: !4093, line: 131, type: !4042)
!4116 = !DILocation(line: 0, scope: !4092)
!4117 = !DILocation(line: 79, column: 3, scope: !4092)
!4118 = !DILocation(line: 84, column: 3, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4120, file: !4093, line: 84, column: 3)
!4120 = distinct !DILexicalBlock(scope: !4092, file: !4093, line: 84, column: 3)
!4121 = !DILocation(line: 86, column: 8, scope: !4092)
!4122 = !DILocation(line: 88, column: 3, scope: !4092)
!4123 = !DILocation(line: 88, column: 9, scope: !4092)
!4124 = !DILocation(line: 0, scope: !4108)
!4125 = !DILocation(line: 94, column: 7, scope: !4108)
!4126 = !DILocation(line: 94, column: 14, scope: !4108)
!4127 = !DILocation(line: 95, column: 15, scope: !4108)
!4128 = distinct !{!4128, !4125, !4129, !746}
!4129 = !DILocation(line: 95, column: 17, scope: !4108)
!4130 = !DILocation(line: 96, column: 14, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4108, file: !4093, line: 96, column: 11)
!4132 = !DILocation(line: 100, column: 9, scope: !4092)
!4133 = !DILocation(line: 102, column: 7, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4092, file: !4093, line: 102, column: 7)
!4135 = !DILocation(line: 102, column: 10, scope: !4134)
!4136 = !DILocation(line: 102, column: 7, scope: !4092)
!4137 = !DILocation(line: 106, column: 11, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4139, file: !4093, line: 106, column: 11)
!4139 = distinct !DILexicalBlock(scope: !4134, file: !4093, line: 103, column: 5)
!4140 = !DILocation(line: 106, column: 26, scope: !4138)
!4141 = !DILocation(line: 106, column: 29, scope: !4138)
!4142 = !DILocation(line: 106, column: 33, scope: !4138)
!4143 = !DILocation(line: 106, column: 36, scope: !4138)
!4144 = !DILocation(line: 106, column: 11, scope: !4139)
!4145 = !DILocation(line: 111, column: 12, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4134, file: !4093, line: 111, column: 12)
!4147 = !DILocation(line: 111, column: 12, scope: !4134)
!4148 = !DILocation(line: 116, column: 5, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4146, file: !4093, line: 112, column: 5)
!4150 = !DILocation(line: 121, column: 8, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4092, file: !4093, line: 121, column: 7)
!4152 = !DILocation(line: 121, column: 7, scope: !4092)
!4153 = !DILocation(line: 123, column: 12, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4151, file: !4093, line: 122, column: 5)
!4155 = !DILocation(line: 124, column: 7, scope: !4154)
!4156 = !DILocation(line: 127, column: 7, scope: !4113)
!4157 = !DILocation(line: 127, column: 11, scope: !4113)
!4158 = !DILocation(line: 127, column: 7, scope: !4092)
!4159 = !DILocation(line: 0, scope: !4112)
!4160 = !DILocation(line: 133, column: 12, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4112, file: !4093, line: 133, column: 11)
!4162 = !DILocation(line: 133, column: 11, scope: !4112)
!4163 = !DILocation(line: 135, column: 16, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4161, file: !4093, line: 134, column: 9)
!4165 = !DILocation(line: 136, column: 22, scope: !4164)
!4166 = !DILocation(line: 136, column: 11, scope: !4164)
!4167 = !DILocation(line: 139, column: 7, scope: !4112)
!4168 = !DILocation(line: 151, column: 15, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4170, file: !4093, line: 151, column: 15)
!4170 = distinct !DILexicalBlock(scope: !4112, file: !4093, line: 140, column: 9)
!4171 = !DILocation(line: 151, column: 15, scope: !4170)
!4172 = !DILocation(line: 152, column: 21, scope: !4169)
!4173 = !DILocation(line: 152, column: 13, scope: !4169)
!4174 = !DILocation(line: 155, column: 21, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4176, file: !4093, line: 155, column: 21)
!4176 = distinct !DILexicalBlock(scope: !4169, file: !4093, line: 153, column: 15)
!4177 = !DILocation(line: 155, column: 29, scope: !4175)
!4178 = !DILocation(line: 155, column: 21, scope: !4176)
!4179 = !DILocation(line: 163, column: 17, scope: !4176)
!4180 = !DILocation(line: 167, column: 7, scope: !4112)
!4181 = !DILocalVariable(name: "err", scope: !4182, file: !4093, line: 67, type: !4042)
!4182 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4093, file: !4093, line: 65, type: !4183, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !4185)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!4042, !4096, !50, !50}
!4185 = !{!4186, !4187, !4188, !4181}
!4186 = !DILocalVariable(name: "x", arg: 1, scope: !4182, file: !4093, line: 65, type: !4096)
!4187 = !DILocalVariable(name: "base", arg: 2, scope: !4182, file: !4093, line: 65, type: !50)
!4188 = !DILocalVariable(name: "power", arg: 3, scope: !4182, file: !4093, line: 65, type: !50)
!4189 = !DILocation(line: 0, scope: !4182, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 221, column: 22, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4112, file: !4093, line: 168, column: 9)
!4192 = !DILocalVariable(name: "x", arg: 1, scope: !4193, file: !4093, line: 48, type: !4096)
!4193 = distinct !DISubprogram(name: "bkm_scale", scope: !4093, file: !4093, line: 48, type: !4194, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !267, retainedNodes: !4196)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!4042, !4096, !50}
!4196 = !{!4192, !4197}
!4197 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4193, file: !4093, line: 48, type: !50)
!4198 = !DILocation(line: 0, scope: !4193, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 69, column: 12, scope: !4182, inlinedAt: !4190)
!4200 = !DILocation(line: 55, column: 39, scope: !4201, inlinedAt: !4199)
!4201 = distinct !DILexicalBlock(scope: !4193, file: !4093, line: 55, column: 7)
!4202 = !DILocation(line: 55, column: 7, scope: !4193, inlinedAt: !4199)
!4203 = !DILocation(line: 69, column: 9, scope: !4182, inlinedAt: !4190)
!4204 = !DILocation(line: 229, column: 11, scope: !4112)
!4205 = !DILocation(line: 0, scope: !4182, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 217, column: 22, scope: !4191)
!4207 = !DILocation(line: 0, scope: !4193, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 69, column: 12, scope: !4182, inlinedAt: !4206)
!4209 = !DILocation(line: 55, column: 39, scope: !4201, inlinedAt: !4208)
!4210 = !DILocation(line: 55, column: 7, scope: !4193, inlinedAt: !4208)
!4211 = !DILocation(line: 69, column: 9, scope: !4182, inlinedAt: !4206)
!4212 = !DILocation(line: 0, scope: !4182, inlinedAt: !4213)
!4213 = distinct !DILocation(line: 204, column: 22, scope: !4191)
!4214 = !DILocation(line: 0, scope: !4193, inlinedAt: !4215)
!4215 = distinct !DILocation(line: 69, column: 12, scope: !4182, inlinedAt: !4213)
!4216 = !DILocation(line: 55, column: 39, scope: !4201, inlinedAt: !4215)
!4217 = !DILocation(line: 55, column: 7, scope: !4193, inlinedAt: !4215)
!4218 = !DILocation(line: 69, column: 9, scope: !4182, inlinedAt: !4213)
!4219 = !DILocation(line: 0, scope: !4182, inlinedAt: !4220)
!4220 = distinct !DILocation(line: 185, column: 22, scope: !4191)
!4221 = !DILocation(line: 0, scope: !4193, inlinedAt: !4222)
!4222 = distinct !DILocation(line: 69, column: 12, scope: !4182, inlinedAt: !4220)
!4223 = !DILocation(line: 55, column: 39, scope: !4201, inlinedAt: !4222)
!4224 = !DILocation(line: 55, column: 7, scope: !4193, inlinedAt: !4222)
!4225 = !DILocation(line: 69, column: 9, scope: !4182, inlinedAt: !4220)
!4226 = !DILocation(line: 0, scope: !4193, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 170, column: 22, scope: !4191)
!4228 = !DILocation(line: 55, column: 39, scope: !4201, inlinedAt: !4227)
!4229 = !DILocation(line: 55, column: 7, scope: !4193, inlinedAt: !4227)
!4230 = !DILocation(line: 171, column: 11, scope: !4191)
!4231 = !DILocation(line: 0, scope: !4193, inlinedAt: !4232)
!4232 = distinct !DILocation(line: 177, column: 22, scope: !4191)
!4233 = !DILocation(line: 55, column: 39, scope: !4201, inlinedAt: !4232)
!4234 = !DILocation(line: 55, column: 7, scope: !4193, inlinedAt: !4232)
!4235 = !DILocation(line: 178, column: 11, scope: !4191)
!4236 = !DILocation(line: 0, scope: !4182, inlinedAt: !4237)
!4237 = distinct !DILocation(line: 190, column: 22, scope: !4191)
!4238 = !DILocation(line: 0, scope: !4193, inlinedAt: !4239)
!4239 = distinct !DILocation(line: 69, column: 12, scope: !4182, inlinedAt: !4237)
!4240 = !DILocation(line: 55, column: 39, scope: !4201, inlinedAt: !4239)
!4241 = !DILocation(line: 55, column: 7, scope: !4193, inlinedAt: !4239)
!4242 = !DILocation(line: 69, column: 9, scope: !4182, inlinedAt: !4237)
!4243 = !DILocation(line: 0, scope: !4182, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 200, column: 22, scope: !4191)
!4245 = !DILocation(line: 0, scope: !4193, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 69, column: 12, scope: !4182, inlinedAt: !4244)
!4247 = !DILocation(line: 55, column: 39, scope: !4201, inlinedAt: !4246)
!4248 = !DILocation(line: 55, column: 7, scope: !4193, inlinedAt: !4246)
!4249 = !DILocation(line: 69, column: 9, scope: !4182, inlinedAt: !4244)
!4250 = !DILocation(line: 0, scope: !4182, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 209, column: 22, scope: !4191)
!4252 = !DILocation(line: 0, scope: !4193, inlinedAt: !4253)
!4253 = distinct !DILocation(line: 69, column: 12, scope: !4182, inlinedAt: !4251)
!4254 = !DILocation(line: 55, column: 39, scope: !4201, inlinedAt: !4253)
!4255 = !DILocation(line: 55, column: 7, scope: !4193, inlinedAt: !4253)
!4256 = !DILocation(line: 69, column: 9, scope: !4182, inlinedAt: !4251)
!4257 = !DILocation(line: 0, scope: !4193, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 213, column: 22, scope: !4191)
!4259 = !DILocation(line: 55, column: 39, scope: !4201, inlinedAt: !4258)
!4260 = !DILocation(line: 55, column: 7, scope: !4193, inlinedAt: !4258)
!4261 = !DILocation(line: 214, column: 11, scope: !4191)
!4262 = !DILocation(line: 225, column: 16, scope: !4191)
!4263 = !DILocation(line: 226, column: 22, scope: !4191)
!4264 = !DILocation(line: 226, column: 11, scope: !4191)
!4265 = !DILocation(line: 0, scope: !4182, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 195, column: 22, scope: !4191)
!4267 = !DILocation(line: 0, scope: !4193, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 69, column: 12, scope: !4182, inlinedAt: !4266)
!4269 = !DILocation(line: 55, column: 39, scope: !4201, inlinedAt: !4268)
!4270 = !DILocation(line: 55, column: 7, scope: !4193, inlinedAt: !4268)
!4271 = !DILocation(line: 0, scope: !4191)
!4272 = !DILocation(line: 230, column: 10, scope: !4112)
!4273 = !DILocation(line: 231, column: 11, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4112, file: !4093, line: 231, column: 11)
!4275 = !DILocation(line: 231, column: 11, scope: !4112)
!4276 = !DILocation(line: 107, column: 13, scope: !4138)
!4277 = !DILocation(line: 82, column: 16, scope: !4092)
!4278 = !DILocation(line: 235, column: 8, scope: !4092)
!4279 = !DILocation(line: 236, column: 3, scope: !4092)
!4280 = !DILocation(line: 237, column: 1, scope: !4092)
!4281 = !DISubprogram(name: "strtoumax", scope: !4282, file: !4282, line: 301, type: !4283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !148)
!4282 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!54, !55, !832, !50}
!4285 = distinct !DISubprogram(name: "rpl_calloc", scope: !272, file: !272, line: 42, type: !3793, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !4286)
!4286 = !{!4287, !4288, !4289, !4290}
!4287 = !DILocalVariable(name: "n", arg: 1, scope: !4285, file: !272, line: 42, type: !52)
!4288 = !DILocalVariable(name: "s", arg: 2, scope: !4285, file: !272, line: 42, type: !52)
!4289 = !DILocalVariable(name: "result", scope: !4285, file: !272, line: 44, type: !47)
!4290 = !DILocalVariable(name: "bytes", scope: !4291, file: !272, line: 56, type: !52)
!4291 = distinct !DILexicalBlock(scope: !4292, file: !272, line: 53, column: 5)
!4292 = distinct !DILexicalBlock(scope: !4285, file: !272, line: 47, column: 7)
!4293 = !DILocation(line: 0, scope: !4285)
!4294 = !DILocation(line: 47, column: 9, scope: !4292)
!4295 = !DILocation(line: 47, column: 14, scope: !4292)
!4296 = !DILocation(line: 0, scope: !4291)
!4297 = !DILocation(line: 57, column: 21, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4291, file: !272, line: 57, column: 11)
!4299 = !DILocation(line: 57, column: 11, scope: !4291)
!4300 = !DILocation(line: 59, column: 11, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4298, file: !272, line: 58, column: 9)
!4302 = !DILocation(line: 59, column: 17, scope: !4301)
!4303 = !DILocation(line: 65, column: 12, scope: !4285)
!4304 = !DILocation(line: 72, column: 3, scope: !4285)
!4305 = !DILocation(line: 73, column: 1, scope: !4285)
!4306 = distinct !DISubprogram(name: "rpl_fclose", scope: !274, file: !274, line: 58, type: !4307, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !4343)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!50, !4309}
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !851, line: 7, baseType: !4311)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !776, line: 49, size: 1728, elements: !4312)
!4312 = !{!4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4311, file: !776, line: 51, baseType: !50, size: 32)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4311, file: !776, line: 54, baseType: !45, size: 64, offset: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4311, file: !776, line: 55, baseType: !45, size: 64, offset: 128)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4311, file: !776, line: 56, baseType: !45, size: 64, offset: 192)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4311, file: !776, line: 57, baseType: !45, size: 64, offset: 256)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4311, file: !776, line: 58, baseType: !45, size: 64, offset: 320)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4311, file: !776, line: 59, baseType: !45, size: 64, offset: 384)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4311, file: !776, line: 60, baseType: !45, size: 64, offset: 448)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4311, file: !776, line: 61, baseType: !45, size: 64, offset: 512)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4311, file: !776, line: 64, baseType: !45, size: 64, offset: 576)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4311, file: !776, line: 65, baseType: !45, size: 64, offset: 640)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4311, file: !776, line: 66, baseType: !45, size: 64, offset: 704)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4311, file: !776, line: 68, baseType: !791, size: 64, offset: 768)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4311, file: !776, line: 70, baseType: !4327, size: 64, offset: 832)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4311, file: !776, line: 72, baseType: !50, size: 32, offset: 896)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4311, file: !776, line: 73, baseType: !50, size: 32, offset: 928)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4311, file: !776, line: 74, baseType: !797, size: 64, offset: 960)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4311, file: !776, line: 77, baseType: !51, size: 16, offset: 1024)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4311, file: !776, line: 78, baseType: !801, size: 8, offset: 1040)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4311, file: !776, line: 79, baseType: !803, size: 8, offset: 1048)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4311, file: !776, line: 81, baseType: !807, size: 64, offset: 1088)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4311, file: !776, line: 89, baseType: !810, size: 64, offset: 1152)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4311, file: !776, line: 91, baseType: !812, size: 64, offset: 1216)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4311, file: !776, line: 92, baseType: !815, size: 64, offset: 1280)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4311, file: !776, line: 93, baseType: !4327, size: 64, offset: 1344)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4311, file: !776, line: 94, baseType: !47, size: 64, offset: 1408)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4311, file: !776, line: 95, baseType: !52, size: 64, offset: 1472)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4311, file: !776, line: 96, baseType: !50, size: 32, offset: 1536)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4311, file: !776, line: 98, baseType: !822, size: 160, offset: 1568)
!4343 = !{!4344, !4345, !4346, !4347}
!4344 = !DILocalVariable(name: "fp", arg: 1, scope: !4306, file: !274, line: 58, type: !4309)
!4345 = !DILocalVariable(name: "saved_errno", scope: !4306, file: !274, line: 60, type: !50)
!4346 = !DILocalVariable(name: "fd", scope: !4306, file: !274, line: 61, type: !50)
!4347 = !DILocalVariable(name: "result", scope: !4306, file: !274, line: 62, type: !50)
!4348 = !DILocation(line: 0, scope: !4306)
!4349 = !DILocation(line: 65, column: 8, scope: !4306)
!4350 = !DILocation(line: 66, column: 10, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4306, file: !274, line: 66, column: 7)
!4352 = !DILocation(line: 66, column: 7, scope: !4306)
!4353 = !DILocation(line: 67, column: 12, scope: !4351)
!4354 = !DILocation(line: 67, column: 5, scope: !4351)
!4355 = !DILocation(line: 72, column: 9, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4306, file: !274, line: 72, column: 7)
!4357 = !DILocation(line: 72, column: 23, scope: !4356)
!4358 = !DILocation(line: 72, column: 33, scope: !4356)
!4359 = !DILocation(line: 72, column: 26, scope: !4356)
!4360 = !DILocation(line: 72, column: 59, scope: !4356)
!4361 = !DILocation(line: 73, column: 7, scope: !4356)
!4362 = !DILocation(line: 73, column: 10, scope: !4356)
!4363 = !DILocation(line: 72, column: 7, scope: !4306)
!4364 = !DILocation(line: 100, column: 12, scope: !4306)
!4365 = !DILocation(line: 105, column: 7, scope: !4306)
!4366 = !DILocation(line: 74, column: 19, scope: !4356)
!4367 = !DILocation(line: 105, column: 19, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4306, file: !274, line: 105, column: 7)
!4369 = !DILocation(line: 107, column: 13, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4368, file: !274, line: 106, column: 5)
!4371 = !DILocation(line: 109, column: 5, scope: !4370)
!4372 = !DILocation(line: 112, column: 1, scope: !4306)
!4373 = !DISubprogram(name: "fclose", scope: !771, file: !771, line: 213, type: !4374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !148)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!50, !4327}
!4376 = !DISubprogram(name: "lseek", scope: !4377, file: !4377, line: 334, type: !4378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !148)
!4377 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!58, !50, !58, !50}
!4380 = distinct !DISubprogram(name: "rpl_fflush", scope: !276, file: !276, line: 129, type: !4381, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !4417)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!50, !4383}
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !851, line: 7, baseType: !4385)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !776, line: 49, size: 1728, elements: !4386)
!4386 = !{!4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4385, file: !776, line: 51, baseType: !50, size: 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4385, file: !776, line: 54, baseType: !45, size: 64, offset: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4385, file: !776, line: 55, baseType: !45, size: 64, offset: 128)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4385, file: !776, line: 56, baseType: !45, size: 64, offset: 192)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4385, file: !776, line: 57, baseType: !45, size: 64, offset: 256)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4385, file: !776, line: 58, baseType: !45, size: 64, offset: 320)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4385, file: !776, line: 59, baseType: !45, size: 64, offset: 384)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4385, file: !776, line: 60, baseType: !45, size: 64, offset: 448)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4385, file: !776, line: 61, baseType: !45, size: 64, offset: 512)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4385, file: !776, line: 64, baseType: !45, size: 64, offset: 576)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4385, file: !776, line: 65, baseType: !45, size: 64, offset: 640)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4385, file: !776, line: 66, baseType: !45, size: 64, offset: 704)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4385, file: !776, line: 68, baseType: !791, size: 64, offset: 768)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4385, file: !776, line: 70, baseType: !4401, size: 64, offset: 832)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4385, file: !776, line: 72, baseType: !50, size: 32, offset: 896)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4385, file: !776, line: 73, baseType: !50, size: 32, offset: 928)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4385, file: !776, line: 74, baseType: !797, size: 64, offset: 960)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4385, file: !776, line: 77, baseType: !51, size: 16, offset: 1024)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4385, file: !776, line: 78, baseType: !801, size: 8, offset: 1040)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4385, file: !776, line: 79, baseType: !803, size: 8, offset: 1048)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4385, file: !776, line: 81, baseType: !807, size: 64, offset: 1088)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4385, file: !776, line: 89, baseType: !810, size: 64, offset: 1152)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4385, file: !776, line: 91, baseType: !812, size: 64, offset: 1216)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4385, file: !776, line: 92, baseType: !815, size: 64, offset: 1280)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4385, file: !776, line: 93, baseType: !4401, size: 64, offset: 1344)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4385, file: !776, line: 94, baseType: !47, size: 64, offset: 1408)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4385, file: !776, line: 95, baseType: !52, size: 64, offset: 1472)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4385, file: !776, line: 96, baseType: !50, size: 32, offset: 1536)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4385, file: !776, line: 98, baseType: !822, size: 160, offset: 1568)
!4417 = !{!4418}
!4418 = !DILocalVariable(name: "stream", arg: 1, scope: !4380, file: !276, line: 129, type: !4383)
!4419 = !DILocation(line: 0, scope: !4380)
!4420 = !DILocation(line: 150, column: 14, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4380, file: !276, line: 150, column: 7)
!4422 = !DILocation(line: 150, column: 22, scope: !4421)
!4423 = !DILocation(line: 150, column: 27, scope: !4421)
!4424 = !DILocation(line: 150, column: 7, scope: !4380)
!4425 = !DILocation(line: 151, column: 12, scope: !4421)
!4426 = !DILocation(line: 151, column: 5, scope: !4421)
!4427 = !DILocalVariable(name: "fp", arg: 1, scope: !4428, file: !276, line: 41, type: !4383)
!4428 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !276, file: !276, line: 41, type: !4429, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !275, retainedNodes: !4431)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{null, !4383}
!4431 = !{!4427}
!4432 = !DILocation(line: 0, scope: !4428, inlinedAt: !4433)
!4433 = distinct !DILocation(line: 156, column: 3, scope: !4380)
!4434 = !DILocation(line: 43, column: 11, scope: !4435, inlinedAt: !4433)
!4435 = distinct !DILexicalBlock(scope: !4428, file: !276, line: 43, column: 7)
!4436 = !{!1107, !865, i64 0}
!4437 = !DILocation(line: 43, column: 18, scope: !4435, inlinedAt: !4433)
!4438 = !DILocation(line: 43, column: 7, scope: !4428, inlinedAt: !4433)
!4439 = !DILocation(line: 45, column: 5, scope: !4435, inlinedAt: !4433)
!4440 = !DILocation(line: 158, column: 10, scope: !4380)
!4441 = !DILocation(line: 158, column: 3, scope: !4380)
!4442 = !DILocation(line: 235, column: 1, scope: !4380)
!4443 = !DISubprogram(name: "fflush", scope: !771, file: !771, line: 218, type: !4444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !148)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!50, !4401}
!4446 = distinct !DISubprogram(name: "rpl_fseeko", scope: !278, file: !278, line: 28, type: !4447, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !277, retainedNodes: !4483)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!50, !4449, !2054, !50}
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !851, line: 7, baseType: !4451)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !776, line: 49, size: 1728, elements: !4452)
!4452 = !{!4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4451, file: !776, line: 51, baseType: !50, size: 32)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4451, file: !776, line: 54, baseType: !45, size: 64, offset: 64)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4451, file: !776, line: 55, baseType: !45, size: 64, offset: 128)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4451, file: !776, line: 56, baseType: !45, size: 64, offset: 192)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4451, file: !776, line: 57, baseType: !45, size: 64, offset: 256)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4451, file: !776, line: 58, baseType: !45, size: 64, offset: 320)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4451, file: !776, line: 59, baseType: !45, size: 64, offset: 384)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4451, file: !776, line: 60, baseType: !45, size: 64, offset: 448)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4451, file: !776, line: 61, baseType: !45, size: 64, offset: 512)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4451, file: !776, line: 64, baseType: !45, size: 64, offset: 576)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4451, file: !776, line: 65, baseType: !45, size: 64, offset: 640)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4451, file: !776, line: 66, baseType: !45, size: 64, offset: 704)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4451, file: !776, line: 68, baseType: !791, size: 64, offset: 768)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4451, file: !776, line: 70, baseType: !4467, size: 64, offset: 832)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4451, file: !776, line: 72, baseType: !50, size: 32, offset: 896)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4451, file: !776, line: 73, baseType: !50, size: 32, offset: 928)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4451, file: !776, line: 74, baseType: !797, size: 64, offset: 960)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4451, file: !776, line: 77, baseType: !51, size: 16, offset: 1024)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4451, file: !776, line: 78, baseType: !801, size: 8, offset: 1040)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4451, file: !776, line: 79, baseType: !803, size: 8, offset: 1048)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4451, file: !776, line: 81, baseType: !807, size: 64, offset: 1088)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4451, file: !776, line: 89, baseType: !810, size: 64, offset: 1152)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4451, file: !776, line: 91, baseType: !812, size: 64, offset: 1216)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4451, file: !776, line: 92, baseType: !815, size: 64, offset: 1280)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4451, file: !776, line: 93, baseType: !4467, size: 64, offset: 1344)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4451, file: !776, line: 94, baseType: !47, size: 64, offset: 1408)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4451, file: !776, line: 95, baseType: !52, size: 64, offset: 1472)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4451, file: !776, line: 96, baseType: !50, size: 32, offset: 1536)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4451, file: !776, line: 98, baseType: !822, size: 160, offset: 1568)
!4483 = !{!4484, !4485, !4486, !4487}
!4484 = !DILocalVariable(name: "fp", arg: 1, scope: !4446, file: !278, line: 28, type: !4449)
!4485 = !DILocalVariable(name: "offset", arg: 2, scope: !4446, file: !278, line: 28, type: !2054)
!4486 = !DILocalVariable(name: "whence", arg: 3, scope: !4446, file: !278, line: 28, type: !50)
!4487 = !DILocalVariable(name: "pos", scope: !4488, file: !278, line: 117, type: !2054)
!4488 = distinct !DILexicalBlock(scope: !4489, file: !278, line: 113, column: 5)
!4489 = distinct !DILexicalBlock(scope: !4446, file: !278, line: 52, column: 7)
!4490 = !DILocation(line: 0, scope: !4446)
!4491 = !DILocation(line: 52, column: 11, scope: !4489)
!4492 = !DILocation(line: 52, column: 31, scope: !4489)
!4493 = !DILocation(line: 52, column: 24, scope: !4489)
!4494 = !DILocation(line: 53, column: 7, scope: !4489)
!4495 = !DILocation(line: 53, column: 14, scope: !4489)
!4496 = !DILocation(line: 53, column: 35, scope: !4489)
!4497 = !{!1107, !695, i64 32}
!4498 = !DILocation(line: 53, column: 28, scope: !4489)
!4499 = !DILocation(line: 54, column: 7, scope: !4489)
!4500 = !DILocation(line: 54, column: 14, scope: !4489)
!4501 = !{!1107, !695, i64 72}
!4502 = !DILocation(line: 54, column: 28, scope: !4489)
!4503 = !DILocation(line: 52, column: 7, scope: !4446)
!4504 = !DILocation(line: 117, column: 26, scope: !4488)
!4505 = !DILocation(line: 117, column: 19, scope: !4488)
!4506 = !DILocation(line: 0, scope: !4488)
!4507 = !DILocation(line: 118, column: 15, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4488, file: !278, line: 118, column: 11)
!4509 = !DILocation(line: 118, column: 11, scope: !4488)
!4510 = !DILocation(line: 129, column: 11, scope: !4488)
!4511 = !DILocation(line: 129, column: 18, scope: !4488)
!4512 = !DILocation(line: 130, column: 11, scope: !4488)
!4513 = !DILocation(line: 130, column: 19, scope: !4488)
!4514 = !{!1107, !1108, i64 144}
!4515 = !DILocation(line: 161, column: 7, scope: !4488)
!4516 = !DILocation(line: 163, column: 10, scope: !4446)
!4517 = !DILocation(line: 163, column: 3, scope: !4446)
!4518 = !DILocation(line: 164, column: 1, scope: !4446)
!4519 = !DISubprogram(name: "fseeko", scope: !771, file: !771, line: 712, type: !4520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !148)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!50, !4467, !58, !50}
!4522 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !280, file: !280, line: 86, type: !4523, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !4537)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!52, !4525, !55, !52, !4526}
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2328, line: 6, baseType: !4528)
!4528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2330, line: 21, baseType: !4529)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2330, line: 13, size: 64, elements: !4530)
!4530 = !{!4531, !4532}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4529, file: !2330, line: 15, baseType: !50, size: 32)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4529, file: !2330, line: 20, baseType: !4533, size: 32, offset: 32)
!4533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4529, file: !2330, line: 16, size: 32, elements: !4534)
!4534 = !{!4535, !4536}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4533, file: !2330, line: 18, baseType: !7, size: 32)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4533, file: !2330, line: 19, baseType: !2339, size: 32)
!4537 = !{!4538, !4539, !4540, !4541, !4542, !4543, !4544}
!4538 = !DILocalVariable(name: "pwc", arg: 1, scope: !4522, file: !280, line: 86, type: !4525)
!4539 = !DILocalVariable(name: "s", arg: 2, scope: !4522, file: !280, line: 86, type: !55)
!4540 = !DILocalVariable(name: "n", arg: 3, scope: !4522, file: !280, line: 86, type: !52)
!4541 = !DILocalVariable(name: "ps", arg: 4, scope: !4522, file: !280, line: 86, type: !4526)
!4542 = !DILocalVariable(name: "ret", scope: !4522, file: !280, line: 88, type: !52)
!4543 = !DILocalVariable(name: "wc", scope: !4522, file: !280, line: 89, type: !2344)
!4544 = !DILocalVariable(name: "uc", scope: !4545, file: !280, line: 156, type: !49)
!4545 = distinct !DILexicalBlock(scope: !4546, file: !280, line: 155, column: 5)
!4546 = distinct !DILexicalBlock(scope: !4522, file: !280, line: 154, column: 7)
!4547 = !DILocation(line: 0, scope: !4522)
!4548 = !DILocation(line: 89, column: 3, scope: !4522)
!4549 = !DILocation(line: 105, column: 9, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4522, file: !280, line: 105, column: 7)
!4551 = !DILocation(line: 105, column: 7, scope: !4522)
!4552 = !DILocation(line: 145, column: 9, scope: !4522)
!4553 = !DILocation(line: 154, column: 19, scope: !4546)
!4554 = !DILocation(line: 154, column: 26, scope: !4546)
!4555 = !DILocation(line: 154, column: 41, scope: !4546)
!4556 = !DILocation(line: 154, column: 7, scope: !4522)
!4557 = !DILocation(line: 156, column: 26, scope: !4545)
!4558 = !DILocation(line: 0, scope: !4545)
!4559 = !DILocation(line: 157, column: 14, scope: !4545)
!4560 = !DILocation(line: 157, column: 12, scope: !4545)
!4561 = !DILocation(line: 163, column: 1, scope: !4522)
!4562 = !DISubprogram(name: "mbrtowc", scope: !3005, file: !3005, line: 296, type: !4563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !148)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!54, !90, !55, !54, !4565}
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4566 = distinct !DISubprogram(name: "close_stream", scope: !283, file: !283, line: 56, type: !4567, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !4603)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!50, !4569}
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !851, line: 7, baseType: !4571)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !776, line: 49, size: 1728, elements: !4572)
!4572 = !{!4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4571, file: !776, line: 51, baseType: !50, size: 32)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4571, file: !776, line: 54, baseType: !45, size: 64, offset: 64)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4571, file: !776, line: 55, baseType: !45, size: 64, offset: 128)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4571, file: !776, line: 56, baseType: !45, size: 64, offset: 192)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4571, file: !776, line: 57, baseType: !45, size: 64, offset: 256)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4571, file: !776, line: 58, baseType: !45, size: 64, offset: 320)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4571, file: !776, line: 59, baseType: !45, size: 64, offset: 384)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4571, file: !776, line: 60, baseType: !45, size: 64, offset: 448)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4571, file: !776, line: 61, baseType: !45, size: 64, offset: 512)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4571, file: !776, line: 64, baseType: !45, size: 64, offset: 576)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4571, file: !776, line: 65, baseType: !45, size: 64, offset: 640)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4571, file: !776, line: 66, baseType: !45, size: 64, offset: 704)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4571, file: !776, line: 68, baseType: !791, size: 64, offset: 768)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4571, file: !776, line: 70, baseType: !4587, size: 64, offset: 832)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4571, file: !776, line: 72, baseType: !50, size: 32, offset: 896)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4571, file: !776, line: 73, baseType: !50, size: 32, offset: 928)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4571, file: !776, line: 74, baseType: !797, size: 64, offset: 960)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4571, file: !776, line: 77, baseType: !51, size: 16, offset: 1024)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4571, file: !776, line: 78, baseType: !801, size: 8, offset: 1040)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4571, file: !776, line: 79, baseType: !803, size: 8, offset: 1048)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4571, file: !776, line: 81, baseType: !807, size: 64, offset: 1088)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4571, file: !776, line: 89, baseType: !810, size: 64, offset: 1152)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4571, file: !776, line: 91, baseType: !812, size: 64, offset: 1216)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4571, file: !776, line: 92, baseType: !815, size: 64, offset: 1280)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4571, file: !776, line: 93, baseType: !4587, size: 64, offset: 1344)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4571, file: !776, line: 94, baseType: !47, size: 64, offset: 1408)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4571, file: !776, line: 95, baseType: !52, size: 64, offset: 1472)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4571, file: !776, line: 96, baseType: !50, size: 32, offset: 1536)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4571, file: !776, line: 98, baseType: !822, size: 160, offset: 1568)
!4603 = !{!4604, !4605, !4607, !4608}
!4604 = !DILocalVariable(name: "stream", arg: 1, scope: !4566, file: !283, line: 56, type: !4569)
!4605 = !DILocalVariable(name: "some_pending", scope: !4566, file: !283, line: 58, type: !4606)
!4606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!4607 = !DILocalVariable(name: "prev_fail", scope: !4566, file: !283, line: 59, type: !4606)
!4608 = !DILocalVariable(name: "fclose_fail", scope: !4566, file: !283, line: 60, type: !4606)
!4609 = !DILocation(line: 0, scope: !4566)
!4610 = !DILocation(line: 58, column: 30, scope: !4566)
!4611 = !DILocalVariable(name: "__stream", arg: 1, scope: !4612, file: !1098, line: 135, type: !4569)
!4612 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1098, file: !1098, line: 135, type: !4567, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !4613)
!4613 = !{!4611}
!4614 = !DILocation(line: 0, scope: !4612, inlinedAt: !4615)
!4615 = distinct !DILocation(line: 59, column: 27, scope: !4566)
!4616 = !DILocation(line: 137, column: 10, scope: !4612, inlinedAt: !4615)
!4617 = !DILocation(line: 59, column: 43, scope: !4566)
!4618 = !DILocation(line: 60, column: 29, scope: !4566)
!4619 = !DILocation(line: 60, column: 45, scope: !4566)
!4620 = !DILocation(line: 70, column: 17, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4566, file: !283, line: 70, column: 7)
!4622 = !DILocation(line: 58, column: 50, scope: !4566)
!4623 = !DILocation(line: 70, column: 33, scope: !4621)
!4624 = !DILocation(line: 70, column: 53, scope: !4621)
!4625 = !DILocation(line: 70, column: 59, scope: !4621)
!4626 = !DILocation(line: 70, column: 7, scope: !4566)
!4627 = !DILocation(line: 72, column: 11, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4621, file: !283, line: 71, column: 5)
!4629 = !DILocation(line: 73, column: 9, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4628, file: !283, line: 72, column: 11)
!4631 = !DILocation(line: 73, column: 15, scope: !4630)
!4632 = !DILocation(line: 78, column: 1, scope: !4566)
!4633 = distinct !DISubprogram(name: "hard_locale", scope: !285, file: !285, line: 27, type: !1216, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !284, retainedNodes: !4634)
!4634 = !{!4635, !4636}
!4635 = !DILocalVariable(name: "category", arg: 1, scope: !4633, file: !285, line: 27, type: !50)
!4636 = !DILocalVariable(name: "locale", scope: !4633, file: !285, line: 29, type: !4637)
!4637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2056, elements: !4638)
!4638 = !{!4639}
!4639 = !DISubrange(count: 257)
!4640 = !DILocation(line: 0, scope: !4633)
!4641 = !DILocation(line: 29, column: 3, scope: !4633)
!4642 = !DILocation(line: 29, column: 8, scope: !4633)
!4643 = !DILocation(line: 31, column: 7, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4633, file: !285, line: 31, column: 7)
!4645 = !DILocation(line: 31, column: 7, scope: !4633)
!4646 = !DILocation(line: 34, column: 12, scope: !4633)
!4647 = !DILocation(line: 34, column: 38, scope: !4633)
!4648 = !DILocation(line: 34, column: 41, scope: !4633)
!4649 = !DILocation(line: 34, column: 66, scope: !4633)
!4650 = !DILocation(line: 35, column: 1, scope: !4633)
!4651 = distinct !DISubprogram(name: "locale_charset", scope: !287, file: !287, line: 831, type: !4652, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !4654)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!55}
!4654 = !{!4655}
!4655 = !DILocalVariable(name: "codeset", scope: !4651, file: !287, line: 833, type: !55)
!4656 = !DILocation(line: 847, column: 13, scope: !4651)
!4657 = !DILocation(line: 0, scope: !4651)
!4658 = !DILocation(line: 911, column: 15, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4651, file: !287, line: 911, column: 7)
!4660 = !DILocation(line: 911, column: 7, scope: !4651)
!4661 = !DILocation(line: 1070, column: 13, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4663, file: !287, line: 1070, column: 13)
!4663 = distinct !DILexicalBlock(scope: !4664, file: !287, line: 1060, column: 7)
!4664 = distinct !DILexicalBlock(scope: !4651, file: !287, line: 1019, column: 3)
!4665 = !DILocation(line: 1070, column: 24, scope: !4662)
!4666 = !DILocation(line: 1070, column: 13, scope: !4663)
!4667 = !DILocation(line: 1158, column: 3, scope: !4651)
!4668 = !DISubprogram(name: "nl_langinfo", scope: !290, file: !290, line: 661, type: !4669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !148)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!45, !50}
!4671 = distinct !DISubprogram(name: "setlocale_null_r", scope: !676, file: !676, line: 269, type: !4672, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !4674)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!50, !50, !45, !52}
!4674 = !{!4675, !4676, !4677}
!4675 = !DILocalVariable(name: "category", arg: 1, scope: !4671, file: !676, line: 269, type: !50)
!4676 = !DILocalVariable(name: "buf", arg: 2, scope: !4671, file: !676, line: 269, type: !45)
!4677 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4671, file: !676, line: 269, type: !52)
!4678 = !DILocation(line: 0, scope: !4671)
!4679 = !DILocalVariable(name: "category", arg: 1, scope: !4680, file: !676, line: 91, type: !50)
!4680 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !676, file: !676, line: 91, type: !4672, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !4681)
!4681 = !{!4679, !4682, !4683, !4684, !4685}
!4682 = !DILocalVariable(name: "buf", arg: 2, scope: !4680, file: !676, line: 91, type: !45)
!4683 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4680, file: !676, line: 91, type: !52)
!4684 = !DILocalVariable(name: "result", scope: !4680, file: !676, line: 140, type: !55)
!4685 = !DILocalVariable(name: "length", scope: !4686, file: !676, line: 154, type: !52)
!4686 = distinct !DILexicalBlock(scope: !4687, file: !676, line: 153, column: 5)
!4687 = distinct !DILexicalBlock(scope: !4680, file: !676, line: 142, column: 7)
!4688 = !DILocation(line: 0, scope: !4680, inlinedAt: !4689)
!4689 = distinct !DILocation(line: 274, column: 10, scope: !4671)
!4690 = !DILocalVariable(name: "category", arg: 1, scope: !4691, file: !676, line: 60, type: !50)
!4691 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !676, file: !676, line: 60, type: !4692, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !4694)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!55, !50}
!4694 = !{!4690, !4695}
!4695 = !DILocalVariable(name: "result", scope: !4691, file: !676, line: 62, type: !55)
!4696 = !DILocation(line: 0, scope: !4691, inlinedAt: !4697)
!4697 = distinct !DILocation(line: 140, column: 24, scope: !4680, inlinedAt: !4689)
!4698 = !DILocation(line: 62, column: 24, scope: !4691, inlinedAt: !4697)
!4699 = !DILocation(line: 142, column: 14, scope: !4687, inlinedAt: !4689)
!4700 = !DILocation(line: 142, column: 7, scope: !4680, inlinedAt: !4689)
!4701 = !DILocation(line: 145, column: 19, scope: !4702, inlinedAt: !4689)
!4702 = distinct !DILexicalBlock(scope: !4703, file: !676, line: 145, column: 11)
!4703 = distinct !DILexicalBlock(scope: !4687, file: !676, line: 143, column: 5)
!4704 = !DILocation(line: 145, column: 11, scope: !4703, inlinedAt: !4689)
!4705 = !DILocation(line: 149, column: 16, scope: !4702, inlinedAt: !4689)
!4706 = !DILocation(line: 149, column: 9, scope: !4702, inlinedAt: !4689)
!4707 = !DILocation(line: 154, column: 23, scope: !4686, inlinedAt: !4689)
!4708 = !DILocation(line: 0, scope: !4686, inlinedAt: !4689)
!4709 = !DILocation(line: 155, column: 18, scope: !4710, inlinedAt: !4689)
!4710 = distinct !DILexicalBlock(scope: !4686, file: !676, line: 155, column: 11)
!4711 = !DILocation(line: 155, column: 11, scope: !4686, inlinedAt: !4689)
!4712 = !DILocation(line: 157, column: 39, scope: !4713, inlinedAt: !4689)
!4713 = distinct !DILexicalBlock(scope: !4710, file: !676, line: 156, column: 9)
!4714 = !DILocalVariable(name: "__dest", arg: 1, scope: !4715, file: !1966, line: 26, type: !3994)
!4715 = distinct !DISubprogram(name: "memcpy", scope: !1966, file: !1966, line: 26, type: !3992, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !4716)
!4716 = !{!4714, !4717, !4718}
!4717 = !DILocalVariable(name: "__src", arg: 2, scope: !4715, file: !1966, line: 26, type: !3995)
!4718 = !DILocalVariable(name: "__len", arg: 3, scope: !4715, file: !1966, line: 26, type: !52)
!4719 = !DILocation(line: 0, scope: !4715, inlinedAt: !4720)
!4720 = distinct !DILocation(line: 157, column: 11, scope: !4713, inlinedAt: !4689)
!4721 = !DILocation(line: 29, column: 10, scope: !4715, inlinedAt: !4720)
!4722 = !DILocation(line: 158, column: 11, scope: !4713, inlinedAt: !4689)
!4723 = !DILocation(line: 162, column: 23, scope: !4724, inlinedAt: !4689)
!4724 = distinct !DILexicalBlock(scope: !4725, file: !676, line: 162, column: 15)
!4725 = distinct !DILexicalBlock(scope: !4710, file: !676, line: 161, column: 9)
!4726 = !DILocation(line: 162, column: 15, scope: !4725, inlinedAt: !4689)
!4727 = !DILocation(line: 167, column: 44, scope: !4728, inlinedAt: !4689)
!4728 = distinct !DILexicalBlock(scope: !4724, file: !676, line: 163, column: 13)
!4729 = !DILocation(line: 0, scope: !4715, inlinedAt: !4730)
!4730 = distinct !DILocation(line: 167, column: 15, scope: !4728, inlinedAt: !4689)
!4731 = !DILocation(line: 29, column: 10, scope: !4715, inlinedAt: !4730)
!4732 = !DILocation(line: 168, column: 15, scope: !4728, inlinedAt: !4689)
!4733 = !DILocation(line: 168, column: 32, scope: !4728, inlinedAt: !4689)
!4734 = !DILocation(line: 169, column: 13, scope: !4728, inlinedAt: !4689)
!4735 = !DILocation(line: 0, scope: !4687, inlinedAt: !4689)
!4736 = !DILocation(line: 274, column: 3, scope: !4671)
!4737 = distinct !DISubprogram(name: "setlocale_null", scope: !676, file: !676, line: 301, type: !4692, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !4738)
!4738 = !{!4739}
!4739 = !DILocalVariable(name: "category", arg: 1, scope: !4737, file: !676, line: 301, type: !50)
!4740 = !DILocation(line: 0, scope: !4737)
!4741 = !DILocation(line: 0, scope: !4691, inlinedAt: !4742)
!4742 = distinct !DILocation(line: 304, column: 10, scope: !4737)
!4743 = !DILocation(line: 62, column: 24, scope: !4691, inlinedAt: !4742)
!4744 = !DILocation(line: 304, column: 3, scope: !4737)
