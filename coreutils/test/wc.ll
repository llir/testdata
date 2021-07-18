; ModuleID = 'coreutils-8.32/src/wc.bc'
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
%struct.Tokens = type { i64, i8**, i64*, %struct.obstack, %struct.obstack, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, %union.anon, i64, %union.anon.0, %union.anon.1, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [0 x i8] }
%union.anon = type { i64 }
%union.anon.0 = type { i8* (i64)* }
%union.anon.1 = type { void (i8*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.argv_iterator = type { %struct._IO_FILE*, i64, i8*, i64, i8**, i8** }
%struct.fstatus = type { i32, %struct.stat }
%struct.__mbstate_t = type { i32, %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.mbchar = type { i8*, i64, i8, i32, [24 x i8] }
%struct.sysinfo = type { i64, [3 x i64], i64, i64, i64, i64, i64, i64, i16, i16, i64, i64, i32, [0 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Usage: %s [OPTION]... [FILE]...\0A  or:  %s [OPTION]... --files0-from=F\0A\00", align 1
@.str.2 = private unnamed_addr constant [184 x i8] c"Print newline, word, and byte counts for each FILE, and a total line if\0Amore than one FILE is specified.  A word is a non-zero-length sequence of\0Acharacters delimited by white space.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.31 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.3 = private unnamed_addr constant [301 x i8] c"\0AThe options below may be used to select which counts are printed, always in\0Athe following order: newline, word, character, byte, maximum line length.\0A  -c, --bytes            print the byte counts\0A  -m, --chars            print the character counts\0A  -l, --lines            print the newline counts\0A\00", align 1
@.str.4 = private unnamed_addr constant [301 x i8] c"      --files0-from=F    read input from the files specified by\0A                           NUL-terminated names in file F;\0A                           If F is - then read names from standard input\0A  -L, --max-line-length  print the maximum display width\0A  -w, --words            print the word counts\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"wc\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.32 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.43 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@page_size = internal unnamed_addr global i64 0, align 8, !dbg !0
@.str.11 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@posixly_correct = internal unnamed_addr global i8 0, align 1, !dbg !283
@print_bytes = internal unnamed_addr global i1 false, align 1, !dbg !321
@print_chars = internal unnamed_addr global i1 false, align 1, !dbg !322
@print_words = internal unnamed_addr global i1 false, align 1, !dbg !323
@print_lines = internal unnamed_addr global i1 false, align 1, !dbg !324
@print_linelength = internal unnamed_addr global i1 false, align 1, !dbg !325
@max_line_length = internal unnamed_addr global i64 0, align 8, !dbg !267
@total_bytes = internal unnamed_addr global i64 0, align 8, !dbg !265
@total_chars = internal unnamed_addr global i64 0, align 8, !dbg !263
@total_words = internal unnamed_addr global i64 0, align 8, !dbg !261
@total_lines = internal unnamed_addr global i64 0, align 8, !dbg !256
@.str.12 = private unnamed_addr constant [6 x i8] c"clLmw\00", align 1
@longopts = internal constant [9 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 76 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !285
@optarg = external local_unnamed_addr global i8*, align 8
@.str.14 = private unnamed_addr constant [11 x i8] c"Paul Rubin\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"file operands cannot be combined with --files0-from\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"cannot read file names from %s\00", align 1
@main.stdin_only = internal global [1 x i8*] zeroinitializer, align 8, !dbg !62
@number_width = internal unnamed_addr global i32 0, align 4, !dbg !279
@.str.23 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"!\22unexpected error code from argv_iter\22\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"src/wc.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.26 = private unnamed_addr constant [63 x i8] c"when reading file names from stdin, no file name of %s allowed\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"invalid zero-length file name\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"%s:%lu: %s\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !326
@.str.30 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@write_counts.format_sp_int = internal constant [5 x i8] c" %*s\00", align 1, !dbg !301
@.str.56 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"chars\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"words\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"files0-from\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"max-line-length\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), align 8, !dbg !327
@.str.57 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !333
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !338
@.str.70 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.71 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.72 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !340
@is_basic_table = dso_local local_unnamed_addr constant [8 x i32] [i32 6656, i32 -17, i32 -2, i32 2147483646, i32 0, i32 0, i32 0, i32 0], align 16, !dbg !346
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !356
@.str.87 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.88 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.89 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.91, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.92, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.93, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.94, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.95, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.96, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.97, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.98, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.99, i32 0, i32 0), i8* null], align 16, !dbg !362
@.str.90 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.91 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.92 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.93 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.94 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.95 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.96 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.97 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.98 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.99 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !374
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !380
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !390
@.str.11.100 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.101 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.102 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.103 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.104 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.105 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.106 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !397
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !404
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !392
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !406
@.str.121 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.122 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.123 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.124 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.125 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.126 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.127 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.128 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.129 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.130 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.131 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.132 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.133 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.134 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.135 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.136 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.139 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.140 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.141 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.142 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.143 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.144 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.145 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !412
@.str.1.156 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@obstack_alloc_failed_handler = dso_local local_unnamed_addr global void ()* @print_and_abort, align 8, !dbg !420
@.str.1.168 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1.180 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.183 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.184 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1111 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1115, metadata !DIExpression()), !dbg !1116
  %3 = icmp eq i32 %0, 0, !dbg !1117
  br i1 %3, label %9, label %4, !dbg !1119

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1120, !tbaa !1122
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #32, !dbg !1120
  %7 = load i8*, i8** @program_name, align 8, !dbg !1120, !tbaa !1122
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #32, !dbg !1120
  br label %67, !dbg !1120

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 5) #32, !dbg !1126
  %11 = load i8*, i8** @program_name, align 8, !dbg !1126, !tbaa !1122
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #32, !dbg !1126
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([184 x i8], [184 x i8]* @.str.2, i64 0, i64 0), i32 5) #32, !dbg !1128
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1128, !tbaa !1122
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1128
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.31, i64 0, i64 0), i32 5) #32, !dbg !1129
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1129, !tbaa !1122
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #32, !dbg !1129
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([301 x i8], [301 x i8]* @.str.3, i64 0, i64 0), i32 5) #32, !dbg !1133
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1133, !tbaa !1122
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1133
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([301 x i8], [301 x i8]* @.str.4, i64 0, i64 0), i32 5) #32, !dbg !1134
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1134, !tbaa !1122
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1134
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #32, !dbg !1135
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1135, !tbaa !1122
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1135
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #32, !dbg !1136
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1136, !tbaa !1122
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1136
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), metadata !1137, metadata !DIExpression()) #32, !dbg !1155
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1157
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #32, !dbg !1157
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1142, metadata !DIExpression()) #32, !dbg !1158
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %31, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #32, !dbg !1158
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), metadata !1151, metadata !DIExpression()) #32, !dbg !1155
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1152, metadata !DIExpression()) #32, !dbg !1155
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1159
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !1152, metadata !DIExpression()) #32, !dbg !1155
  br label %33, !dbg !1160

33:                                               ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1152, metadata !DIExpression()) #32, !dbg !1155
  %36 = tail call i32 @strcmp(i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %34) #33, !dbg !1161
  %37 = icmp eq i32 %36, 0, !dbg !1161
  br i1 %37, label %43, label %38, !dbg !1160

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !1162
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !1152, metadata !DIExpression()) #32, !dbg !1155
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !1163
  %41 = load i8*, i8** %40, align 8, !dbg !1163, !tbaa !1164
  %42 = icmp eq i8* %41, null, !dbg !1166
  br i1 %42, label %43, label %33, !dbg !1167, !llvm.loop !1168

43:                                               ; preds = %38, %33
  %44 = phi %struct.infomap* [ %35, %33 ], [ %39, %38 ]
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !1170
  %46 = load i8*, i8** %45, align 8, !dbg !1170, !tbaa !1172
  %47 = icmp eq i8* %46, null, !dbg !1173
  %48 = select i1 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %46, !dbg !1174
  call void @llvm.dbg.value(metadata i8* %48, metadata !1151, metadata !DIExpression()) #32, !dbg !1155
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i64 0, i64 0), i32 5) #32, !dbg !1175
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i64 0, i64 0)) #32, !dbg !1175
  %51 = tail call i8* @setlocale(i32 5, i8* null) #32, !dbg !1176
  call void @llvm.dbg.value(metadata i8* %51, metadata !1154, metadata !DIExpression()) #32, !dbg !1155
  %52 = icmp eq i8* %51, null, !dbg !1177
  br i1 %52, label %60, label %53, !dbg !1179

53:                                               ; preds = %43
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i64 3) #33, !dbg !1180
  %55 = icmp eq i32 %54, 0, !dbg !1180
  br i1 %55, label %60, label %56, !dbg !1181

56:                                               ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.43, i64 0, i64 0), i32 5) #32, !dbg !1182
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1182, !tbaa !1122
  %59 = tail call i32 @fputs_unlocked(i8* %57, %struct._IO_FILE* %58) #32, !dbg !1182
  br label %60, !dbg !1184

60:                                               ; preds = %43, %53, %56
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i32 5) #32, !dbg !1185
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #32, !dbg !1185
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i64 0, i64 0), i32 5) #32, !dbg !1186
  %64 = icmp eq i8* %48, getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), !dbg !1186
  %65 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !1186
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* %48, i8* %65) #32, !dbg !1186
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #32, !dbg !1187
  br label %67

67:                                               ; preds = %60, %4
  tail call void @exit(i32 %0) #34, !dbg !1188
  unreachable, !dbg !1188
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1189 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1193 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !1197 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !64 {
  %3 = alloca %struct.Tokens, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !69, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8** %1, metadata !70, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8* null, metadata !76, metadata !DIExpression()), !dbg !1201
  %6 = bitcast %struct.Tokens* %3 to i8*, !dbg !1202
  call void @llvm.lifetime.start.p0i8(i64 288, i8* nonnull %6) #32, !dbg !1202
  call void @llvm.dbg.declare(metadata %struct.Tokens* %3, metadata !122, metadata !DIExpression()), !dbg !1203
  %7 = load i8*, i8** %1, align 8, !dbg !1204, !tbaa !1122
  tail call void @set_program_name(i8* %7) #32, !dbg !1205
  %8 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #32, !dbg !1206
  %9 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #32, !dbg !1207
  %10 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #32, !dbg !1208
  %11 = tail call i32 @atexit(void ()* nonnull @close_stdout) #32, !dbg !1209
  %12 = tail call i32 @getpagesize() #35, !dbg !1210
  %13 = sext i32 %12 to i64, !dbg !1210
  store i64 %13, i64* @page_size, align 8, !dbg !1211, !tbaa !1212
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1214, !tbaa !1122
  %15 = tail call i32 @setvbuf(%struct._IO_FILE* %14, i8* null, i32 1, i64 0) #32, !dbg !1215
  %16 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #32, !dbg !1216
  %17 = icmp ne i8* %16, null, !dbg !1217
  %18 = zext i1 %17 to i8, !dbg !1218
  store i8 %18, i8* @posixly_correct, align 1, !dbg !1218, !tbaa !1219
  store i1 false, i1* @print_bytes, align 1, !dbg !1221
  store i1 false, i1* @print_chars, align 1, !dbg !1222
  store i1 false, i1* @print_words, align 1, !dbg !1223
  store i1 false, i1* @print_lines, align 1, !dbg !1224
  store i1 false, i1* @print_linelength, align 1, !dbg !1225
  store i64 0, i64* @max_line_length, align 8, !dbg !1226, !tbaa !1212
  store i64 0, i64* @total_bytes, align 8, !dbg !1227, !tbaa !1212
  store i64 0, i64* @total_chars, align 8, !dbg !1228, !tbaa !1212
  store i64 0, i64* @total_words, align 8, !dbg !1229, !tbaa !1212
  store i64 0, i64* @total_lines, align 8, !dbg !1230, !tbaa !1212
  br label %19, !dbg !1231

19:                                               ; preds = %29, %2
  %20 = phi i8* [ %30, %29 ], [ null, %2 ]
  br label %21, !dbg !1231

21:                                               ; preds = %28, %19
  call void @llvm.dbg.value(metadata i8* %20, metadata !76, metadata !DIExpression()), !dbg !1201
  %22 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), %struct.option* getelementptr inbounds ([9 x %struct.option], [9 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #32, !dbg !1232
  call void @llvm.dbg.value(metadata i32 %22, metadata !73, metadata !DIExpression()), !dbg !1201
  switch i32 %22, label %35 [
    i32 -1, label %36
    i32 99, label %23
    i32 109, label %24
    i32 108, label %25
    i32 119, label %26
    i32 76, label %27
    i32 128, label %29
    i32 -130, label %31
    i32 -131, label %32
  ], !dbg !1231

23:                                               ; preds = %21
  store i1 true, i1* @print_bytes, align 1, !dbg !1233
  br label %28, !dbg !1235

24:                                               ; preds = %21
  store i1 true, i1* @print_chars, align 1, !dbg !1236
  br label %28, !dbg !1237

25:                                               ; preds = %21
  store i1 true, i1* @print_lines, align 1, !dbg !1238
  br label %28, !dbg !1239

26:                                               ; preds = %21
  store i1 true, i1* @print_words, align 1, !dbg !1240
  br label %28, !dbg !1241

27:                                               ; preds = %21
  store i1 true, i1* @print_linelength, align 1, !dbg !1242
  br label %28, !dbg !1243

28:                                               ; preds = %27, %26, %25, %24, %23
  br label %21, !dbg !1201, !llvm.loop !1244

29:                                               ; preds = %21
  %30 = load i8*, i8** @optarg, align 8, !dbg !1246, !tbaa !1122
  call void @llvm.dbg.value(metadata i8* %30, metadata !76, metadata !DIExpression()), !dbg !1201
  br label %19, !dbg !1247, !llvm.loop !1244

31:                                               ; preds = %21
  tail call void @usage(i32 0) #36, !dbg !1248
  unreachable, !dbg !1248

32:                                               ; preds = %21
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1249, !tbaa !1122
  %34 = load i8*, i8** @Version, align 8, !dbg !1249, !tbaa !1122
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* null) #32, !dbg !1249
  tail call void @exit(i32 0) #34, !dbg !1249
  unreachable, !dbg !1249

35:                                               ; preds = %21
  tail call void @usage(i32 1) #36, !dbg !1250
  unreachable, !dbg !1250

36:                                               ; preds = %21
  %37 = load i1, i1* @print_lines, align 1, !dbg !1251
  br i1 %37, label %47, label %38, !dbg !1253

38:                                               ; preds = %36
  %39 = load i1, i1* @print_words, align 1, !dbg !1254
  br i1 %39, label %47, label %40, !dbg !1255

40:                                               ; preds = %38
  %41 = load i1, i1* @print_chars, align 1, !dbg !1256
  br i1 %41, label %47, label %42, !dbg !1257

42:                                               ; preds = %40
  %43 = load i1, i1* @print_bytes, align 1, !dbg !1258
  br i1 %43, label %47, label %44, !dbg !1259

44:                                               ; preds = %42
  %45 = load i1, i1* @print_linelength, align 1, !dbg !1260
  br i1 %45, label %47, label %46, !dbg !1261

46:                                               ; preds = %44
  store i1 true, i1* @print_bytes, align 1, !dbg !1262
  store i1 true, i1* @print_words, align 1, !dbg !1263
  store i1 true, i1* @print_lines, align 1, !dbg !1264
  br label %47, !dbg !1265

47:                                               ; preds = %46, %44, %42, %40, %38, %36
  call void @llvm.dbg.value(metadata i8 0, metadata !182, metadata !DIExpression()), !dbg !1201
  %48 = icmp ne i8* %20, null, !dbg !1266
  %49 = load i32, i32* @optind, align 4, !dbg !1267, !tbaa !1268
  %50 = icmp slt i32 %49, %0, !dbg !1267
  br i1 %48, label %51, label %120, !dbg !1270

51:                                               ; preds = %47
  br i1 %50, label %52, label %62, !dbg !1271

52:                                               ; preds = %51
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 5) #32, !dbg !1272
  %54 = load i32, i32* @optind, align 4, !dbg !1275, !tbaa !1268
  %55 = sext i32 %54 to i64, !dbg !1275
  %56 = getelementptr inbounds i8*, i8** %1, i64 %55, !dbg !1275
  %57 = load i8*, i8** %56, align 8, !dbg !1275, !tbaa !1122
  %58 = tail call i8* @quotearg_style(i32 4, i8* %57) #32, !dbg !1275
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %53, i8* %58) #32, !dbg !1276
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1277, !tbaa !1122
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.18, i64 0, i64 0), i32 5) #32, !dbg !1277
  %61 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %59, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %60) #32, !dbg !1277
  tail call void @usage(i32 1) #36, !dbg !1278
  unreachable, !dbg !1278

62:                                               ; preds = %51
  %63 = tail call i32 @strcmp(i8* nonnull %20, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #33, !dbg !1279
  %64 = icmp eq i32 %63, 0, !dbg !1279
  br i1 %64, label %65, label %67, !dbg !1281

65:                                               ; preds = %62
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1282, !tbaa !1122
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %66, metadata !186, metadata !DIExpression()), !dbg !1283
  br label %75, !dbg !1284

67:                                               ; preds = %62
  %68 = tail call %struct._IO_FILE* @fopen(i8* nonnull %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)), !dbg !1285
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %68, metadata !186, metadata !DIExpression()), !dbg !1283
  %69 = icmp eq %struct._IO_FILE* %68, null, !dbg !1287
  br i1 %69, label %70, label %75, !dbg !1289

70:                                               ; preds = %67
  %71 = tail call i32* @__errno_location() #35, !dbg !1290
  %72 = load i32, i32* %71, align 4, !dbg !1290, !tbaa !1268
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), i32 5) #32, !dbg !1290
  %74 = tail call i8* @quotearg_style(i32 4, i8* nonnull %20) #32, !dbg !1290
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %72, i8* %73, i8* %74) #32, !dbg !1290
  unreachable, !dbg !1290

75:                                               ; preds = %67, %65
  %76 = phi %struct._IO_FILE* [ %66, %65 ], [ %68, %67 ], !dbg !1291
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %76, metadata !186, metadata !DIExpression()), !dbg !1283
  %77 = bitcast %struct.stat* %4 to i8*, !dbg !1292
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %77) #32, !dbg !1292
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !241, metadata !DIExpression()), !dbg !1293
  %78 = tail call i32 @fileno(%struct._IO_FILE* %76) #32, !dbg !1294
  %79 = call i32 @fstat(i32 %78, %struct.stat* nonnull %4) #32, !dbg !1296
  %80 = icmp eq i32 %79, 0, !dbg !1297
  br i1 %80, label %81, label %113, !dbg !1298

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 3, !dbg !1299
  %83 = load i32, i32* %82, align 8, !dbg !1299, !tbaa !1300
  %84 = and i32 %83, 61440, !dbg !1299
  %85 = icmp eq i32 %84, 32768, !dbg !1299
  br i1 %85, label %86, label %113, !dbg !1303

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 8, !dbg !1304
  %88 = load i64, i64* %87, align 8, !dbg !1304, !tbaa !1305
  %89 = sitofp i64 %88 to double, !dbg !1306
  %90 = tail call double @physmem_available() #32, !dbg !1307
  %91 = fmul double %90, 5.000000e-01, !dbg !1307
  %92 = fcmp ogt double %91, 0x4164000000000000, !dbg !1307
  br i1 %92, label %96, label %93, !dbg !1307

93:                                               ; preds = %86
  %94 = tail call double @physmem_available() #32, !dbg !1307
  %95 = fmul double %94, 5.000000e-01, !dbg !1307
  br label %96, !dbg !1307

96:                                               ; preds = %86, %93
  %97 = phi double [ %95, %93 ], [ 0x4164000000000000, %86 ], !dbg !1307
  %98 = fcmp ult double %97, %89, !dbg !1308
  br i1 %98, label %113, label %99, !dbg !1309

99:                                               ; preds = %96
  call void @llvm.dbg.value(metadata i8 1, metadata !182, metadata !DIExpression()), !dbg !1201
  call void @readtokens0_init(%struct.Tokens* nonnull %3) #32, !dbg !1310
  %100 = call zeroext i1 @readtokens0(%struct._IO_FILE* %76, %struct.Tokens* nonnull %3) #32, !dbg !1312
  br i1 %100, label %101, label %104, !dbg !1314

101:                                              ; preds = %99
  %102 = call i32 @rpl_fclose(%struct._IO_FILE* %76) #32, !dbg !1315
  %103 = icmp eq i32 %102, 0, !dbg !1316
  br i1 %103, label %107, label %104, !dbg !1317

104:                                              ; preds = %101, %99
  %105 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i32 5) #32, !dbg !1318
  %106 = call i8* @quotearg_style(i32 4, i8* nonnull %20) #32, !dbg !1318
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %105, i8* %106) #32, !dbg !1318
  unreachable, !dbg !1318

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %3, i64 0, i32 1, !dbg !1319
  %109 = load i8**, i8*** %108, align 8, !dbg !1319, !tbaa !1320
  call void @llvm.dbg.value(metadata i8** %109, metadata !75, metadata !DIExpression()), !dbg !1201
  %110 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %3, i64 0, i32 0, !dbg !1323
  %111 = load i64, i64* %110, align 8, !dbg !1323, !tbaa !1324
  call void @llvm.dbg.value(metadata i64 %111, metadata !74, metadata !DIExpression()), !dbg !1201
  %112 = call %struct.argv_iterator* @argv_iter_init_argv(i8** %109) #32, !dbg !1325
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %112, metadata !183, metadata !DIExpression()), !dbg !1201
  br label %115, !dbg !1326

113:                                              ; preds = %96, %81, %75
  call void @llvm.dbg.value(metadata i8** null, metadata !75, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 0, metadata !74, metadata !DIExpression()), !dbg !1201
  %114 = tail call %struct.argv_iterator* @argv_iter_init_stream(%struct._IO_FILE* %76) #32, !dbg !1327
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %114, metadata !183, metadata !DIExpression()), !dbg !1201
  br label %115

115:                                              ; preds = %113, %107
  %116 = phi i8** [ %109, %107 ], [ null, %113 ], !dbg !1329
  %117 = phi i64 [ %111, %107 ], [ 0, %113 ], !dbg !1329
  %118 = phi i1 [ true, %107 ], [ false, %113 ], !dbg !1201
  %119 = phi %struct.argv_iterator* [ %112, %107 ], [ %114, %113 ], !dbg !1329
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %119, metadata !183, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 undef, metadata !182, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %117, metadata !74, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8** %116, metadata !75, metadata !DIExpression()), !dbg !1201
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %77) #32, !dbg !1330
  br label %128, !dbg !1331

120:                                              ; preds = %47
  %121 = sext i32 %49 to i64, !dbg !1332
  %122 = getelementptr inbounds i8*, i8** %1, i64 %121, !dbg !1332
  %123 = select i1 %50, i8** %122, i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @main.stdin_only, i64 0, i64 0), !dbg !1332
  call void @llvm.dbg.value(metadata i8** %123, metadata !75, metadata !DIExpression()), !dbg !1201
  %124 = sub nsw i32 %0, %49, !dbg !1334
  %125 = select i1 %50, i32 %124, i32 1, !dbg !1334
  %126 = sext i32 %125 to i64, !dbg !1335
  call void @llvm.dbg.value(metadata i64 %126, metadata !74, metadata !DIExpression()), !dbg !1201
  %127 = tail call %struct.argv_iterator* @argv_iter_init_argv(i8** %123) #32, !dbg !1336
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %127, metadata !183, metadata !DIExpression()), !dbg !1201
  br label %128

128:                                              ; preds = %120, %115
  %129 = phi i8** [ %116, %115 ], [ %123, %120 ], !dbg !1267
  %130 = phi i64 [ %117, %115 ], [ %126, %120 ], !dbg !1267
  %131 = phi i1 [ %118, %115 ], [ false, %120 ], !dbg !1201
  %132 = phi %struct.argv_iterator* [ %119, %115 ], [ %127, %120 ], !dbg !1267
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %132, metadata !183, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8 undef, metadata !182, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %130, metadata !74, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i8** %129, metadata !75, metadata !DIExpression()), !dbg !1201
  %133 = icmp eq %struct.argv_iterator* %132, null, !dbg !1337
  br i1 %133, label %134, label %135, !dbg !1339

134:                                              ; preds = %128
  call void @xalloc_die() #34, !dbg !1340
  unreachable, !dbg !1340

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 %130, metadata !1341, metadata !DIExpression()) #32, !dbg !1354
  call void @llvm.dbg.value(metadata i8** %129, metadata !1348, metadata !DIExpression()) #32, !dbg !1354
  %136 = icmp eq i64 %130, 0, !dbg !1356
  %137 = select i1 %136, i64 1, i64 %130, !dbg !1356
  call void @llvm.dbg.value(metadata i64 %137, metadata !1357, metadata !DIExpression()) #32, !dbg !1363
  call void @llvm.dbg.value(metadata i64 152, metadata !1362, metadata !DIExpression()) #32, !dbg !1363
  %138 = icmp ugt i64 %137, 60680079189834051, !dbg !1365
  br i1 %138, label %139, label %140, !dbg !1367

139:                                              ; preds = %135
  call void @xalloc_die() #34, !dbg !1368
  unreachable, !dbg !1368

140:                                              ; preds = %135
  %141 = mul nuw nsw i64 %137, 152, !dbg !1369
  %142 = call noalias i8* @xmalloc(i64 %141) #32, !dbg !1370
  %143 = bitcast i8* %142 to %struct.fstatus*, !dbg !1371
  call void @llvm.dbg.value(metadata %struct.fstatus* %143, metadata !1349, metadata !DIExpression()) #32, !dbg !1354
  switch i64 %130, label %144 [
    i64 0, label %161
    i64 1, label %145
  ], !dbg !1372

144:                                              ; preds = %145, %140
  br label %163, !dbg !1373

145:                                              ; preds = %140
  %146 = load i1, i1* @print_lines, align 1, !dbg !1374
  %147 = zext i1 %146 to i32, !dbg !1374
  %148 = load i1, i1* @print_words, align 1, !dbg !1375
  %149 = zext i1 %148 to i32, !dbg !1375
  %150 = add nuw nsw i32 %149, %147, !dbg !1376
  %151 = load i1, i1* @print_chars, align 1, !dbg !1377
  %152 = zext i1 %151 to i32, !dbg !1377
  %153 = add nuw nsw i32 %150, %152, !dbg !1378
  %154 = load i1, i1* @print_bytes, align 1, !dbg !1379
  %155 = zext i1 %154 to i32, !dbg !1379
  %156 = add nuw nsw i32 %153, %155, !dbg !1380
  %157 = load i1, i1* @print_linelength, align 1, !dbg !1381
  %158 = zext i1 %157 to i32, !dbg !1381
  %159 = add nuw nsw i32 %156, %158, !dbg !1382
  %160 = icmp eq i32 %159, 1, !dbg !1383
  br i1 %160, label %161, label %144, !dbg !1384

161:                                              ; preds = %145, %140
  %162 = bitcast i8* %142 to i32*, !dbg !1385
  store i32 1, i32* %162, align 8, !dbg !1386, !tbaa !1387
  br label %182, !dbg !1389

163:                                              ; preds = %144, %177
  %164 = phi i64 [ %180, %177 ], [ 0, %144 ]
  call void @llvm.dbg.value(metadata i64 %164, metadata !1350, metadata !DIExpression()) #32, !dbg !1390
  %165 = getelementptr inbounds i8*, i8** %129, i64 %164, !dbg !1391
  %166 = load i8*, i8** %165, align 8, !dbg !1391, !tbaa !1122
  %167 = icmp eq i8* %166, null, !dbg !1391
  br i1 %167, label %171, label %168, !dbg !1393

168:                                              ; preds = %163
  %169 = call i32 @strcmp(i8* nonnull %166, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #33, !dbg !1394
  %170 = icmp eq i32 %169, 0, !dbg !1394
  br i1 %170, label %171, label %174, !dbg !1395

171:                                              ; preds = %168, %163
  %172 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %143, i64 %164, i32 1, !dbg !1396
  %173 = call i32 @fstat(i32 0, %struct.stat* nonnull %172) #32, !dbg !1397
  br label %177, !dbg !1395

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %143, i64 %164, i32 1, !dbg !1398
  %176 = call i32 @stat(i8* nonnull %166, %struct.stat* nonnull %175) #32, !dbg !1399
  br label %177, !dbg !1395

177:                                              ; preds = %174, %171
  %178 = phi i32 [ %173, %171 ], [ %176, %174 ], !dbg !1395
  %179 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %143, i64 %164, i32 0, !dbg !1400
  store i32 %178, i32* %179, align 8, !dbg !1401, !tbaa !1387
  %180 = add nuw i64 %164, 1, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %180, metadata !1350, metadata !DIExpression()) #32, !dbg !1390
  %181 = icmp eq i64 %180, %130, !dbg !1403
  br i1 %181, label %182, label %163, !dbg !1373, !llvm.loop !1404

182:                                              ; preds = %177, %161
  call void @llvm.dbg.value(metadata %struct.fstatus* %143, metadata !77, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %130, metadata !1406, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata %struct.fstatus* %143, metadata !1413, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i32 1, metadata !1414, metadata !DIExpression()), !dbg !1421
  br i1 %136, label %222, label %183, !dbg !1423

183:                                              ; preds = %182
  %184 = bitcast i8* %142 to i32*, !dbg !1424
  %185 = load i32, i32* %184, align 8, !dbg !1424, !tbaa !1387
  %186 = icmp slt i32 %185, 1, !dbg !1425
  br i1 %186, label %189, label %222, !dbg !1426

187:                                              ; preds = %204
  call void @llvm.dbg.value(metadata i64 %206, metadata !1418, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i32 1, metadata !1414, metadata !DIExpression()), !dbg !1421
  %188 = icmp ugt i64 %206, 9, !dbg !1428
  br i1 %188, label %212, label %218, !dbg !1431

189:                                              ; preds = %183, %209
  %190 = phi i32 [ %211, %209 ], [ %185, %183 ], !dbg !1432
  %191 = phi i64 [ %207, %209 ], [ 0, %183 ]
  %192 = phi i64 [ %206, %209 ], [ 0, %183 ]
  %193 = phi i32 [ %205, %209 ], [ 1, %183 ]
  call void @llvm.dbg.value(metadata i64 %191, metadata !1419, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %192, metadata !1418, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i32 %193, metadata !1415, metadata !DIExpression()), !dbg !1427
  %194 = icmp eq i32 %190, 0, !dbg !1436
  br i1 %194, label %195, label %204, !dbg !1437

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %143, i64 %191, i32 1, i32 3, !dbg !1438
  %197 = load i32, i32* %196, align 8, !dbg !1438, !tbaa !1441
  %198 = and i32 %197, 61440, !dbg !1438
  %199 = icmp eq i32 %198, 32768, !dbg !1438
  br i1 %199, label %200, label %204, !dbg !1442

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %143, i64 %191, i32 1, i32 8, !dbg !1443
  %202 = load i64, i64* %201, align 8, !dbg !1443, !tbaa !1444
  %203 = add i64 %202, %192, !dbg !1445
  call void @llvm.dbg.value(metadata i64 %203, metadata !1418, metadata !DIExpression()), !dbg !1427
  br label %204, !dbg !1446

204:                                              ; preds = %200, %195, %189
  %205 = phi i32 [ %193, %189 ], [ %193, %200 ], [ 7, %195 ], !dbg !1427
  %206 = phi i64 [ %192, %189 ], [ %203, %200 ], [ %192, %195 ], !dbg !1427
  call void @llvm.dbg.value(metadata i64 %206, metadata !1418, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i32 %205, metadata !1415, metadata !DIExpression()), !dbg !1427
  %207 = add nuw i64 %191, 1, !dbg !1447
  call void @llvm.dbg.value(metadata i64 %207, metadata !1419, metadata !DIExpression()), !dbg !1435
  %208 = icmp eq i64 %207, %130, !dbg !1448
  br i1 %208, label %187, label %209, !dbg !1449, !llvm.loop !1450

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %143, i64 %207, i32 0
  %211 = load i32, i32* %210, align 8, !dbg !1432, !tbaa !1387
  br label %189, !dbg !1449

212:                                              ; preds = %187, %212
  %213 = phi i64 [ %216, %212 ], [ %206, %187 ]
  %214 = phi i32 [ %215, %212 ], [ 1, %187 ]
  call void @llvm.dbg.value(metadata i64 %213, metadata !1418, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i32 %214, metadata !1414, metadata !DIExpression()), !dbg !1421
  %215 = add nuw nsw i32 %214, 1, !dbg !1452
  call void @llvm.dbg.value(metadata i32 %215, metadata !1414, metadata !DIExpression()), !dbg !1421
  %216 = udiv i64 %213, 10, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %216, metadata !1418, metadata !DIExpression()), !dbg !1427
  %217 = icmp ugt i64 %213, 99, !dbg !1428
  br i1 %217, label %212, label %218, !dbg !1431, !llvm.loop !1454

218:                                              ; preds = %212, %187
  %219 = phi i32 [ 1, %187 ], [ %215, %212 ], !dbg !1421
  %220 = icmp slt i32 %219, %205, !dbg !1456
  %221 = select i1 %220, i32 %205, i32 %219, !dbg !1458
  call void @llvm.dbg.value(metadata i32 %221, metadata !1414, metadata !DIExpression()), !dbg !1421
  br label %222, !dbg !1459

222:                                              ; preds = %182, %183, %218
  %223 = phi i32 [ %221, %218 ], [ 1, %183 ], [ 1, %182 ], !dbg !1421
  call void @llvm.dbg.value(metadata i32 %223, metadata !1414, metadata !DIExpression()), !dbg !1421
  store i32 %223, i32* @number_width, align 4, !dbg !1460, !tbaa !1268
  call void @llvm.dbg.value(metadata i8 1, metadata !71, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i32 0, metadata !242, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 0, metadata !244, metadata !DIExpression()), !dbg !1462
  %224 = bitcast i32* %5 to i8*, !dbg !1463
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %224) #32, !dbg !1463
  call void @llvm.dbg.value(metadata i32* %5, metadata !247, metadata !DIExpression(DW_OP_deref)), !dbg !1462
  %225 = call i8* @argv_iter(%struct.argv_iterator* nonnull %132, i32* nonnull %5) #32, !dbg !1464
  call void @llvm.dbg.value(metadata i8* %225, metadata !248, metadata !DIExpression()), !dbg !1462
  %226 = icmp eq i8* %225, null, !dbg !1465
  br i1 %226, label %229, label %227, !dbg !1467

227:                                              ; preds = %222
  %228 = bitcast i8* %142 to i32*
  br label %239, !dbg !1467

229:                                              ; preds = %295, %222
  %230 = phi i8 [ 1, %222 ], [ %293, %295 ], !dbg !1201
  %231 = load i32, i32* %5, align 4, !dbg !1468, !tbaa !1470
  call void @llvm.dbg.value(metadata i32 %231, metadata !247, metadata !DIExpression()), !dbg !1462
  switch i32 %231, label %238 [
    i32 2, label %299
    i32 4, label %232
    i32 3, label %237
  ], !dbg !1471

232:                                              ; preds = %229
  %233 = tail call i32* @__errno_location() #35, !dbg !1472
  %234 = load i32, i32* %233, align 4, !dbg !1472, !tbaa !1268
  %235 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 5) #32, !dbg !1474
  %236 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %20) #32, !dbg !1475
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %234, i8* %235, i8* %236) #32, !dbg !1476
  call void @llvm.dbg.value(metadata i8 %230, metadata !71, metadata !DIExpression()), !dbg !1201
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %224) #32, !dbg !1477
  call void @llvm.dbg.label(metadata !254), !dbg !1478
  br label %309, !dbg !1479

237:                                              ; preds = %229
  call void @xalloc_die() #34, !dbg !1481
  unreachable, !dbg !1481

238:                                              ; preds = %229
  call void @__assert_fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 831, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #34, !dbg !1482
  unreachable, !dbg !1482

239:                                              ; preds = %227, %295
  %240 = phi i64 [ 0, %227 ], [ %296, %295 ]
  %241 = phi i8* [ %225, %227 ], [ %297, %295 ]
  %242 = phi i8 [ 1, %227 ], [ %293, %295 ]
  call void @llvm.dbg.value(metadata i8 %242, metadata !71, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %240, metadata !242, metadata !DIExpression()), !dbg !1461
  br i1 %48, label %243, label %257, !dbg !1485

243:                                              ; preds = %239
  %244 = call i32 @strcmp(i8* nonnull %20, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #33, !dbg !1487
  %245 = icmp eq i32 %244, 0, !dbg !1487
  br i1 %245, label %246, label %249, !dbg !1488

246:                                              ; preds = %243
  %247 = call i32 @strcmp(i8* nonnull %241, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #33, !dbg !1489
  %248 = icmp eq i32 %247, 0, !dbg !1489
  br i1 %248, label %252, label %249, !dbg !1490

249:                                              ; preds = %246, %243
  call void @llvm.dbg.value(metadata i8 undef, metadata !244, metadata !DIExpression()), !dbg !1462
  %250 = load i8, i8* %241, align 1, !dbg !1491, !tbaa !1470
  %251 = icmp eq i8 %250, 0, !dbg !1491
  br i1 %251, label %262, label %266, !dbg !1492

252:                                              ; preds = %246
  %253 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.26, i64 0, i64 0), i32 5) #32, !dbg !1493
  %254 = call i8* @quotearg_style(i32 4, i8* nonnull %241) #32, !dbg !1495
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %253, i8* %254) #32, !dbg !1496
  call void @llvm.dbg.value(metadata i8 undef, metadata !244, metadata !DIExpression()), !dbg !1462
  %255 = load i8, i8* %241, align 1, !dbg !1491, !tbaa !1470
  %256 = icmp eq i8 %255, 0, !dbg !1491
  br i1 %256, label %262, label %292, !dbg !1492

257:                                              ; preds = %239
  call void @llvm.dbg.value(metadata i8 undef, metadata !244, metadata !DIExpression()), !dbg !1462
  %258 = load i8, i8* %241, align 1, !dbg !1491, !tbaa !1470
  %259 = icmp eq i8 %258, 0, !dbg !1491
  br i1 %259, label %260, label %266, !dbg !1492

260:                                              ; preds = %257
  %261 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), i32 5) #32, !dbg !1497
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %261) #32, !dbg !1498
  call void @llvm.dbg.value(metadata i8 undef, metadata !244, metadata !DIExpression()), !dbg !1462
  br label %292, !dbg !1499

262:                                              ; preds = %252, %249
  %263 = call i64 @argv_iter_n_args(%struct.argv_iterator* nonnull %132) #33, !dbg !1500
  call void @llvm.dbg.value(metadata i64 %263, metadata !249, metadata !DIExpression()), !dbg !1501
  %264 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %20) #32, !dbg !1502
  %265 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), i32 5) #32, !dbg !1503
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* %264, i64 %263, i8* %265) #32, !dbg !1504
  call void @llvm.dbg.value(metadata i8 undef, metadata !244, metadata !DIExpression()), !dbg !1462
  br label %292, !dbg !1499

266:                                              ; preds = %249, %257
  %267 = select i1 %136, i64 0, i64 %240, !dbg !1505
  %268 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %143, i64 %267, !dbg !1505
  call void @llvm.dbg.value(metadata i8* %241, metadata !1507, metadata !DIExpression()) #32, !dbg !1519
  call void @llvm.dbg.value(metadata %struct.fstatus* %268, metadata !1512, metadata !DIExpression()) #32, !dbg !1519
  %269 = call i32 @strcmp(i8* nonnull %241, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #33, !dbg !1521
  %270 = icmp eq i32 %269, 0, !dbg !1521
  br i1 %270, label %271, label %273, !dbg !1522

271:                                              ; preds = %266
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1523
  %272 = call fastcc zeroext i1 @wc(i32 0, i8* nonnull %241, %struct.fstatus* %268, i64 -1) #32, !dbg !1525
  br label %288, !dbg !1526

273:                                              ; preds = %266
  %274 = call i32 (i8*, i32, ...) @open(i8* nonnull %241, i32 0) #32, !dbg !1527
  call void @llvm.dbg.value(metadata i32 %274, metadata !1513, metadata !DIExpression()) #32, !dbg !1528
  %275 = icmp eq i32 %274, -1, !dbg !1529
  br i1 %275, label %276, label %280, !dbg !1530

276:                                              ; preds = %273
  %277 = tail call i32* @__errno_location() #35, !dbg !1531
  %278 = load i32, i32* %277, align 4, !dbg !1531, !tbaa !1268
  %279 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %241) #32, !dbg !1533
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %278, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %279) #32, !dbg !1534
  br label %288, !dbg !1535

280:                                              ; preds = %273
  %281 = call fastcc zeroext i1 @wc(i32 %274, i8* nonnull %241, %struct.fstatus* %268, i64 0) #32, !dbg !1536
  call void @llvm.dbg.value(metadata i1 %281, metadata !1516, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !1537
  %282 = call i32 @close(i32 %274) #32, !dbg !1538
  %283 = icmp eq i32 %282, 0, !dbg !1540
  br i1 %283, label %288, label %284, !dbg !1541

284:                                              ; preds = %280
  %285 = tail call i32* @__errno_location() #35, !dbg !1542
  %286 = load i32, i32* %285, align 4, !dbg !1542, !tbaa !1268
  %287 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %241) #32, !dbg !1544
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %286, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %287) #32, !dbg !1545
  br label %288, !dbg !1546

288:                                              ; preds = %271, %276, %280, %284
  %289 = phi i1 [ %272, %271 ], [ false, %276 ], [ false, %284 ], [ %281, %280 ], !dbg !1547
  %290 = zext i1 %289 to i8, !dbg !1548
  %291 = and i8 %242, %290, !dbg !1549
  call void @llvm.dbg.value(metadata i8 %291, metadata !71, metadata !DIExpression()), !dbg !1201
  br label %292

292:                                              ; preds = %252, %262, %260, %288
  %293 = phi i8 [ %291, %288 ], [ 0, %260 ], [ 0, %262 ], [ 0, %252 ], !dbg !1550
  call void @llvm.dbg.value(metadata i8 %293, metadata !71, metadata !DIExpression()), !dbg !1201
  br i1 %136, label %294, label %295, !dbg !1551

294:                                              ; preds = %292
  store i32 1, i32* %228, align 8, !dbg !1552, !tbaa !1387
  br label %295, !dbg !1554

295:                                              ; preds = %294, %292
  call void @llvm.dbg.value(metadata i8 undef, metadata !71, metadata !DIExpression()), !dbg !1201
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %224) #32, !dbg !1477
  %296 = add nuw i64 %240, 1, !dbg !1555
  call void @llvm.dbg.value(metadata i8 %293, metadata !71, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %296, metadata !242, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 0, metadata !244, metadata !DIExpression()), !dbg !1462
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %224) #32, !dbg !1463
  call void @llvm.dbg.value(metadata i32* %5, metadata !247, metadata !DIExpression(DW_OP_deref)), !dbg !1462
  %297 = call i8* @argv_iter(%struct.argv_iterator* nonnull %132, i32* nonnull %5) #32, !dbg !1464
  call void @llvm.dbg.value(metadata i8* %297, metadata !248, metadata !DIExpression()), !dbg !1462
  %298 = icmp eq i8* %297, null, !dbg !1465
  br i1 %298, label %229, label %239, !dbg !1467, !llvm.loop !1556

299:                                              ; preds = %229
  call void @llvm.dbg.value(metadata i8 %230, metadata !71, metadata !DIExpression()), !dbg !1201
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %224) #32, !dbg !1477
  call void @llvm.dbg.label(metadata !254), !dbg !1478
  %300 = icmp eq i8 %230, 0, !dbg !1559
  %301 = or i1 %48, %300, !dbg !1479
  br i1 %301, label %309, label %302, !dbg !1479

302:                                              ; preds = %299
  %303 = call i64 @argv_iter_n_args(%struct.argv_iterator* nonnull %132) #33, !dbg !1560
  %304 = icmp eq i64 %303, 0, !dbg !1561
  br i1 %304, label %305, label %309, !dbg !1562

305:                                              ; preds = %302
  call void @llvm.dbg.value(metadata i8* null, metadata !1507, metadata !DIExpression()) #32, !dbg !1563
  call void @llvm.dbg.value(metadata %struct.fstatus* %143, metadata !1512, metadata !DIExpression()) #32, !dbg !1563
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1565
  %306 = call fastcc zeroext i1 @wc(i32 0, i8* null, %struct.fstatus* %143, i64 -1) #32, !dbg !1566
  %307 = zext i1 %306 to i8, !dbg !1567
  %308 = and i8 %230, %307, !dbg !1568
  call void @llvm.dbg.value(metadata i8 %308, metadata !71, metadata !DIExpression()), !dbg !1201
  br label %309, !dbg !1569

309:                                              ; preds = %232, %305, %302, %299
  %310 = phi i8 [ %230, %299 ], [ %308, %305 ], [ 1, %302 ], [ 0, %232 ], !dbg !1201
  call void @llvm.dbg.value(metadata i8 %310, metadata !71, metadata !DIExpression()), !dbg !1201
  br i1 %131, label %311, label %312, !dbg !1570

311:                                              ; preds = %309
  call void @readtokens0_free(%struct.Tokens* nonnull %3) #32, !dbg !1571
  br label %312, !dbg !1571

312:                                              ; preds = %311, %309
  %313 = call i64 @argv_iter_n_args(%struct.argv_iterator* nonnull %132) #33, !dbg !1573
  %314 = icmp ugt i64 %313, 1, !dbg !1575
  br i1 %314, label %315, label %322, !dbg !1576

315:                                              ; preds = %312
  %316 = load i64, i64* @total_lines, align 8, !dbg !1577, !tbaa !1212
  %317 = load i64, i64* @total_words, align 8, !dbg !1578, !tbaa !1212
  %318 = load i64, i64* @total_chars, align 8, !dbg !1579, !tbaa !1212
  %319 = load i64, i64* @total_bytes, align 8, !dbg !1580, !tbaa !1212
  %320 = load i64, i64* @max_line_length, align 8, !dbg !1581, !tbaa !1212
  %321 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i32 5) #32, !dbg !1582
  call fastcc void @write_counts(i64 %316, i64 %317, i64 %318, i64 %319, i64 %320, i8* %321), !dbg !1583
  br label %322, !dbg !1583

322:                                              ; preds = %315, %312
  call void @argv_iter_free(%struct.argv_iterator* nonnull %132) #32, !dbg !1584
  call void @free(i8* %142) #32, !dbg !1585
  %323 = load i1, i1* @have_read_stdin, align 1, !dbg !1586
  br i1 %323, label %324, label %330, !dbg !1588

324:                                              ; preds = %322
  %325 = call i32 @close(i32 0) #32, !dbg !1589
  %326 = icmp eq i32 %325, 0, !dbg !1590
  br i1 %326, label %330, label %327, !dbg !1591

327:                                              ; preds = %324
  %328 = tail call i32* @__errno_location() #35, !dbg !1592
  %329 = load i32, i32* %328, align 4, !dbg !1592, !tbaa !1268
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %329, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #32, !dbg !1592
  unreachable, !dbg !1592

330:                                              ; preds = %322, %324
  %331 = xor i8 %310, 1, !dbg !1593
  %332 = zext i8 %331 to i32, !dbg !1593
  call void @llvm.lifetime.end.p0i8(i64 288, i8* nonnull %6) #32, !dbg !1594
  ret i32 %332, !dbg !1594
}

; Function Attrs: nounwind
declare !dbg !1595 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1598 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1601 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind readnone willreturn
declare !dbg !1605 i32 @getpagesize() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !1609 noundef i32 @setvbuf(%struct._IO_FILE* nocapture noundef, i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind readonly
declare !dbg !1612 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !1613 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !1617 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !1621 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1624 noundef i32 @fstat(i32 noundef, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1629 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @wc(i32 %0, i8* %1, %struct.fstatus* nocapture %2, i64 %3) unnamed_addr #8 !dbg !1632 {
  %5 = alloca [16385 x i8], align 16
  %6 = alloca i64, align 8
  %7 = bitcast i64* %6 to %struct.__mbstate_t*
  %8 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1637, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i8* %1, metadata !1638, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata %struct.fstatus* %2, metadata !1639, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %3, metadata !1640, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i8 1, metadata !1641, metadata !DIExpression()), !dbg !1717
  %9 = getelementptr inbounds [16385 x i8], [16385 x i8]* %5, i64 0, i64 0, !dbg !1718
  call void @llvm.lifetime.start.p0i8(i64 16385, i8* nonnull %9) #32, !dbg !1718
  call void @llvm.dbg.declare(metadata [16385 x i8]* %5, metadata !1642, metadata !DIExpression()), !dbg !1719
  %10 = icmp eq i8* %1, null, !dbg !1720
  br i1 %10, label %11, label %13, !dbg !1720

11:                                               ; preds = %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i64 0, i64 0), i32 5) #32, !dbg !1721
  br label %13, !dbg !1720

13:                                               ; preds = %4, %11
  %14 = phi i8* [ %12, %11 ], [ %1, %4 ], !dbg !1720
  call void @llvm.dbg.value(metadata i8* %14, metadata !1655, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 0, metadata !1651, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 0, metadata !1650, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 0, metadata !1649, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 0, metadata !1648, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 0, metadata !1647, metadata !DIExpression()), !dbg !1717
  %15 = tail call i64 @__ctype_get_mb_cur_max() #32, !dbg !1722
  %16 = icmp ugt i64 %15, 1, !dbg !1724
  %17 = load i1, i1* @print_bytes, align 1, !dbg !1725
  %18 = load i1, i1* @print_chars, align 1, !dbg !1725
  %19 = xor i1 %16, true, !dbg !1726
  %20 = and i1 %18, %19, !dbg !1726
  %21 = or i1 %17, %20, !dbg !1726
  %22 = and i1 %16, %18, !dbg !1726
  call void @llvm.dbg.value(metadata i8 undef, metadata !1653, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i1 %21, metadata !1652, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1717
  %23 = load i1, i1* @print_words, align 1, !dbg !1727
  %24 = load i1, i1* @print_linelength, align 1, !dbg !1728
  %25 = or i1 %23, %24, !dbg !1728
  call void @llvm.dbg.value(metadata i1 %25, metadata !1654, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1717
  %26 = xor i1 %21, true, !dbg !1729
  %27 = or i1 %22, %26, !dbg !1729
  %28 = load i1, i1* @print_lines, align 1
  %29 = or i1 %28, %25
  %30 = or i1 %27, %29, !dbg !1729
  br i1 %30, label %31, label %33, !dbg !1729

31:                                               ; preds = %13
  tail call void @fdadvise(i32 %0, i64 0, i64 0, i32 2) #32, !dbg !1731
  %32 = load i1, i1* @print_lines, align 1
  br label %33, !dbg !1731

33:                                               ; preds = %13, %31
  %34 = phi i1 [ false, %13 ], [ %32, %31 ]
  %35 = or i1 %25, %34
  %36 = or i1 %27, %35, !dbg !1732
  br i1 %36, label %96, label %37, !dbg !1732

37:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i8 0, metadata !1656, metadata !DIExpression()), !dbg !1733
  %38 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 0, !dbg !1734
  %39 = load i32, i32* %38, align 8, !dbg !1734, !tbaa !1387
  %40 = icmp sgt i32 %39, 0, !dbg !1736
  br i1 %40, label %41, label %44, !dbg !1737

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 1, !dbg !1738
  %43 = tail call i32 @fstat(i32 %0, %struct.stat* nonnull %42) #32, !dbg !1739
  store i32 %43, i32* %38, align 8, !dbg !1740, !tbaa !1387
  br label %44, !dbg !1741

44:                                               ; preds = %41, %37
  %45 = phi i32 [ %43, %41 ], [ %39, %37 ], !dbg !1742
  %46 = icmp eq i32 %45, 0, !dbg !1743
  br i1 %46, label %47, label %85, !dbg !1744

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata %struct.fstatus* %2, metadata !1745, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1752
  %48 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 1, i32 3, !dbg !1754
  %49 = load i32, i32* %48, align 8, !dbg !1754, !tbaa !1300
  %50 = trunc i32 %49 to i16, !dbg !1755
  %51 = and i16 %50, -4096, !dbg !1755
  switch i16 %51, label %85 [
    i16 -32768, label %52
    i16 -24576, label %52
  ], !dbg !1755

52:                                               ; preds = %47, %47
  %53 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 1, i32 8, !dbg !1756
  %54 = load i64, i64* %53, align 8, !dbg !1756, !tbaa !1444
  %55 = icmp sgt i64 %54, -1, !dbg !1757
  br i1 %55, label %56, label %85, !dbg !1758

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i64 %54, metadata !1659, metadata !DIExpression()), !dbg !1759
  %57 = icmp slt i64 %3, 0, !dbg !1760
  br i1 %57, label %58, label %60, !dbg !1762

58:                                               ; preds = %56
  %59 = tail call i64 @lseek(i32 %0, i64 0, i32 1) #32, !dbg !1763
  call void @llvm.dbg.value(metadata i64 %59, metadata !1640, metadata !DIExpression()), !dbg !1717
  br label %60, !dbg !1764

60:                                               ; preds = %58, %56
  %61 = phi i64 [ %59, %58 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i64 %61, metadata !1640, metadata !DIExpression()), !dbg !1717
  %62 = load i64, i64* @page_size, align 8, !dbg !1765, !tbaa !1212
  %63 = urem i64 %54, %62, !dbg !1766
  %64 = icmp eq i64 %63, 0, !dbg !1766
  br i1 %64, label %65, label %83, !dbg !1767

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.fstatus, %struct.fstatus* %2, i64 0, i32 1, i32 9, !dbg !1768
  %67 = load i64, i64* %66, align 8, !dbg !1768, !tbaa !1769
  %68 = icmp sgt i64 %67, 0, !dbg !1768
  %69 = icmp ult i64 %67, 2305843009213693953, !dbg !1768
  %70 = and i1 %68, %69, !dbg !1768
  %71 = add i64 %67, 1, !dbg !1768
  %72 = select i1 %70, i64 %71, i64 513, !dbg !1768
  %73 = urem i64 %54, %72, !dbg !1770
  %74 = sub i64 %54, %73, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %74, metadata !1662, metadata !DIExpression()), !dbg !1772
  %75 = icmp sgt i64 %61, -1, !dbg !1773
  %76 = icmp sgt i64 %74, %61
  %77 = and i1 %75, %76, !dbg !1775
  br i1 %77, label %78, label %85, !dbg !1775

78:                                               ; preds = %65
  %79 = tail call i64 @lseek(i32 %0, i64 %74, i32 1) #32, !dbg !1776
  %80 = sub nsw i64 %74, %61
  %81 = icmp slt i64 %79, 0, !dbg !1777
  %82 = select i1 %81, i64 0, i64 %80, !dbg !1777
  br label %85, !dbg !1777

83:                                               ; preds = %60
  %84 = tail call i64 @llvm.usub.sat.i64(i64 %54, i64 %61), !dbg !1778
  call void @llvm.dbg.value(metadata i8 undef, metadata !1656, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i64 %84, metadata !1650, metadata !DIExpression()), !dbg !1717
  br label %463, !dbg !1780

85:                                               ; preds = %44, %52, %65, %78, %47
  %86 = phi i64 [ 0, %47 ], [ %82, %78 ], [ 0, %65 ], [ 0, %52 ], [ 0, %44 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1656, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i64 %84, metadata !1650, metadata !DIExpression()), !dbg !1717
  tail call void @fdadvise(i32 %0, i64 0, i64 0, i32 2) #32, !dbg !1781
  br label %87, !dbg !1784

87:                                               ; preds = %94, %85
  %88 = phi i64 [ %86, %85 ], [ %95, %94 ], !dbg !1717
  call void @llvm.dbg.value(metadata i64 %88, metadata !1650, metadata !DIExpression()), !dbg !1717
  %89 = call i64 @safe_read(i32 %0, i8* nonnull %9, i64 16384) #32, !dbg !1785
  call void @llvm.dbg.value(metadata i64 %89, metadata !1646, metadata !DIExpression()), !dbg !1717
  switch i64 %89, label %94 [
    i64 0, label %463
    i64 -1, label %90
  ], !dbg !1784

90:                                               ; preds = %87
  %91 = tail call i32* @__errno_location() #35, !dbg !1786
  %92 = load i32, i32* %91, align 4, !dbg !1786, !tbaa !1268
  %93 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %14) #32, !dbg !1790
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %93) #32, !dbg !1791
  call void @llvm.dbg.value(metadata i8 0, metadata !1641, metadata !DIExpression()), !dbg !1717
  br label %463, !dbg !1792

94:                                               ; preds = %87
  %95 = add i64 %89, %88, !dbg !1793
  call void @llvm.dbg.value(metadata i64 %95, metadata !1650, metadata !DIExpression()), !dbg !1717
  br label %87, !dbg !1784, !llvm.loop !1794

96:                                               ; preds = %33
  %97 = or i1 %22, %25, !dbg !1796
  br i1 %97, label %212, label %98, !dbg !1796

98:                                               ; preds = %96, %207
  %99 = phi i64 [ %108, %207 ], [ 0, %96 ], !dbg !1717
  %100 = phi i64 [ %208, %207 ], [ 0, %96 ], !dbg !1797
  %101 = phi i1 [ %211, %207 ], [ false, %96 ], !dbg !1798
  call void @llvm.dbg.value(metadata i8 undef, metadata !1665, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %100, metadata !1647, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %99, metadata !1650, metadata !DIExpression()), !dbg !1717
  %102 = call i64 @safe_read(i32 %0, i8* nonnull %9, i64 16384) #32, !dbg !1799
  call void @llvm.dbg.value(metadata i64 %102, metadata !1646, metadata !DIExpression()), !dbg !1717
  switch i64 %102, label %107 [
    i64 0, label %463
    i64 -1, label %103
  ], !dbg !1800

103:                                              ; preds = %98
  %104 = tail call i32* @__errno_location() #35, !dbg !1801
  %105 = load i32, i32* %104, align 4, !dbg !1801, !tbaa !1268
  %106 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %14) #32, !dbg !1804
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %106) #32, !dbg !1805
  call void @llvm.dbg.value(metadata i8 0, metadata !1641, metadata !DIExpression()), !dbg !1717
  br label %463, !dbg !1806

107:                                              ; preds = %98
  %108 = add i64 %102, %99, !dbg !1807
  call void @llvm.dbg.value(metadata i64 %108, metadata !1650, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i8* %9, metadata !1668, metadata !DIExpression()), !dbg !1808
  %109 = getelementptr inbounds [16385 x i8], [16385 x i8]* %5, i64 0, i64 %102, !dbg !1809
  call void @llvm.dbg.value(metadata i8* %109, metadata !1670, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %100, metadata !1671, metadata !DIExpression()), !dbg !1808
  br i1 %101, label %185, label %110, !dbg !1810

110:                                              ; preds = %107
  %111 = icmp ult i64 %102, 4, !dbg !1811
  br i1 %111, label %182, label %112, !dbg !1811

112:                                              ; preds = %110
  %113 = and i64 %102, -4, !dbg !1811
  %114 = getelementptr [16385 x i8], [16385 x i8]* %5, i64 0, i64 %113, !dbg !1811
  %115 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %100, i32 0, !dbg !1811
  %116 = add i64 %113, -4, !dbg !1811
  %117 = lshr exact i64 %116, 2, !dbg !1811
  %118 = add nuw nsw i64 %117, 1, !dbg !1811
  %119 = and i64 %118, 1, !dbg !1811
  %120 = icmp eq i64 %116, 0, !dbg !1811
  br i1 %120, label %156, label %121, !dbg !1811

121:                                              ; preds = %112
  %122 = and i64 %118, 9223372036854775806, !dbg !1811
  br label %123, !dbg !1811

123:                                              ; preds = %123, %121
  %124 = phi i64 [ 0, %121 ], [ %153, %123 ]
  %125 = phi <2 x i64> [ %115, %121 ], [ %151, %123 ]
  %126 = phi <2 x i64> [ zeroinitializer, %121 ], [ %152, %123 ]
  %127 = phi i64 [ %122, %121 ], [ %154, %123 ]
  %128 = getelementptr [16385 x i8], [16385 x i8]* %5, i64 0, i64 %124
  %129 = bitcast i8* %128 to <2 x i8>*, !dbg !1814
  %130 = load <2 x i8>, <2 x i8>* %129, align 8, !dbg !1814, !tbaa !1470
  %131 = getelementptr i8, i8* %128, i64 2, !dbg !1814
  %132 = bitcast i8* %131 to <2 x i8>*, !dbg !1814
  %133 = load <2 x i8>, <2 x i8>* %132, align 2, !dbg !1814, !tbaa !1470
  %134 = icmp eq <2 x i8> %130, <i8 10, i8 10>, !dbg !1815
  %135 = icmp eq <2 x i8> %133, <i8 10, i8 10>, !dbg !1815
  %136 = zext <2 x i1> %134 to <2 x i64>, !dbg !1814
  %137 = zext <2 x i1> %135 to <2 x i64>, !dbg !1814
  %138 = add <2 x i64> %125, %136, !dbg !1816
  %139 = add <2 x i64> %126, %137, !dbg !1816
  %140 = or i64 %124, 4
  %141 = getelementptr [16385 x i8], [16385 x i8]* %5, i64 0, i64 %140
  %142 = bitcast i8* %141 to <2 x i8>*, !dbg !1814
  %143 = load <2 x i8>, <2 x i8>* %142, align 4, !dbg !1814, !tbaa !1470
  %144 = getelementptr i8, i8* %141, i64 2, !dbg !1814
  %145 = bitcast i8* %144 to <2 x i8>*, !dbg !1814
  %146 = load <2 x i8>, <2 x i8>* %145, align 2, !dbg !1814, !tbaa !1470
  %147 = icmp eq <2 x i8> %143, <i8 10, i8 10>, !dbg !1815
  %148 = icmp eq <2 x i8> %146, <i8 10, i8 10>, !dbg !1815
  %149 = zext <2 x i1> %147 to <2 x i64>, !dbg !1814
  %150 = zext <2 x i1> %148 to <2 x i64>, !dbg !1814
  %151 = add <2 x i64> %138, %149, !dbg !1816
  %152 = add <2 x i64> %139, %150, !dbg !1816
  %153 = add i64 %124, 8
  %154 = add i64 %127, -2
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %123, !llvm.loop !1817

156:                                              ; preds = %123, %112
  %157 = phi <2 x i64> [ undef, %112 ], [ %151, %123 ]
  %158 = phi <2 x i64> [ undef, %112 ], [ %152, %123 ]
  %159 = phi i64 [ 0, %112 ], [ %153, %123 ]
  %160 = phi <2 x i64> [ %115, %112 ], [ %151, %123 ]
  %161 = phi <2 x i64> [ zeroinitializer, %112 ], [ %152, %123 ]
  %162 = icmp eq i64 %119, 0
  br i1 %162, label %176, label %163

163:                                              ; preds = %156
  %164 = getelementptr [16385 x i8], [16385 x i8]* %5, i64 0, i64 %159
  %165 = getelementptr i8, i8* %164, i64 2, !dbg !1814
  %166 = bitcast i8* %165 to <2 x i8>*, !dbg !1814
  %167 = load <2 x i8>, <2 x i8>* %166, align 2, !dbg !1814, !tbaa !1470
  %168 = icmp eq <2 x i8> %167, <i8 10, i8 10>, !dbg !1815
  %169 = zext <2 x i1> %168 to <2 x i64>, !dbg !1814
  %170 = add <2 x i64> %161, %169, !dbg !1816
  %171 = bitcast i8* %164 to <2 x i8>*, !dbg !1814
  %172 = load <2 x i8>, <2 x i8>* %171, align 4, !dbg !1814, !tbaa !1470
  %173 = icmp eq <2 x i8> %172, <i8 10, i8 10>, !dbg !1815
  %174 = zext <2 x i1> %173 to <2 x i64>, !dbg !1814
  %175 = add <2 x i64> %160, %174, !dbg !1816
  br label %176, !dbg !1811

176:                                              ; preds = %156, %163
  %177 = phi <2 x i64> [ %157, %156 ], [ %175, %163 ], !dbg !1816
  %178 = phi <2 x i64> [ %158, %156 ], [ %170, %163 ], !dbg !1816
  %179 = add <2 x i64> %178, %177, !dbg !1811
  %180 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %179), !dbg !1811
  %181 = icmp eq i64 %102, %113, !dbg !1811
  br i1 %181, label %207, label %182, !dbg !1811

182:                                              ; preds = %110, %176
  %183 = phi i8* [ %9, %110 ], [ %114, %176 ]
  %184 = phi i64 [ %100, %110 ], [ %180, %176 ]
  br label %189, !dbg !1811

185:                                              ; preds = %107
  call void @llvm.dbg.value(metadata i8* %9, metadata !1668, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %100, metadata !1647, metadata !DIExpression()), !dbg !1717
  %186 = ptrtoint i8* %109 to i64, !dbg !1820
  %187 = call i8* @memchr(i8* nonnull %9, i32 10, i64 %102) #33, !dbg !1822
  call void @llvm.dbg.value(metadata i8* %187, metadata !1668, metadata !DIExpression()), !dbg !1808
  %188 = icmp eq i8* %187, null, !dbg !1823
  br i1 %188, label %207, label %198, !dbg !1823

189:                                              ; preds = %182, %189
  %190 = phi i8* [ %192, %189 ], [ %183, %182 ]
  %191 = phi i64 [ %196, %189 ], [ %184, %182 ]
  call void @llvm.dbg.value(metadata i8* %190, metadata !1668, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %191, metadata !1647, metadata !DIExpression()), !dbg !1717
  %192 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1824
  call void @llvm.dbg.value(metadata i8* %192, metadata !1668, metadata !DIExpression()), !dbg !1808
  %193 = load i8, i8* %190, align 1, !dbg !1814, !tbaa !1470
  %194 = icmp eq i8 %193, 10, !dbg !1815
  %195 = zext i1 %194 to i64, !dbg !1814
  %196 = add i64 %191, %195, !dbg !1816
  call void @llvm.dbg.value(metadata i64 %196, metadata !1647, metadata !DIExpression()), !dbg !1717
  %197 = icmp eq i8* %192, %109, !dbg !1825
  br i1 %197, label %207, label %189, !dbg !1811, !llvm.loop !1826

198:                                              ; preds = %185, %198
  %199 = phi i8* [ %205, %198 ], [ %187, %185 ]
  %200 = phi i64 [ %202, %198 ], [ %100, %185 ]
  call void @llvm.dbg.value(metadata i64 %200, metadata !1647, metadata !DIExpression()), !dbg !1717
  %201 = getelementptr inbounds i8, i8* %199, i64 1, !dbg !1828
  call void @llvm.dbg.value(metadata i8* %201, metadata !1668, metadata !DIExpression()), !dbg !1808
  %202 = add i64 %200, 1, !dbg !1830
  call void @llvm.dbg.value(metadata i64 %202, metadata !1647, metadata !DIExpression()), !dbg !1717
  %203 = ptrtoint i8* %201 to i64, !dbg !1820
  %204 = sub i64 %186, %203, !dbg !1820
  %205 = call i8* @memchr(i8* nonnull %201, i32 10, i64 %204) #33, !dbg !1822
  call void @llvm.dbg.value(metadata i8* %205, metadata !1668, metadata !DIExpression()), !dbg !1808
  %206 = icmp eq i8* %205, null, !dbg !1823
  br i1 %206, label %207, label %198, !dbg !1823, !llvm.loop !1831

207:                                              ; preds = %189, %198, %176, %185
  %208 = phi i64 [ %100, %185 ], [ %180, %176 ], [ %202, %198 ], [ %196, %189 ], !dbg !1797
  call void @llvm.dbg.value(metadata i64 %208, metadata !1647, metadata !DIExpression()), !dbg !1717
  %209 = sub i64 %208, %100, !dbg !1833
  %210 = udiv i64 %102, 15, !dbg !1835
  %211 = icmp ule i64 %209, %210, !dbg !1836
  call void @llvm.dbg.value(metadata i8 undef, metadata !1665, metadata !DIExpression()), !dbg !1798
  br label %98, !dbg !1800, !llvm.loop !1837

212:                                              ; preds = %96
  %213 = tail call i64 @__ctype_get_mb_cur_max() #32, !dbg !1839
  %214 = icmp ugt i64 %213, 1, !dbg !1840
  br i1 %214, label %215, label %387, !dbg !1841

215:                                              ; preds = %212
  call void @llvm.dbg.value(metadata i8 0, metadata !1672, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 0, metadata !1675, metadata !DIExpression()), !dbg !1842
  %216 = bitcast i64* %6 to i8*, !dbg !1843
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %216) #32, !dbg !1843
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %7, metadata !1676, metadata !DIExpression()), !dbg !1844
  store i64 0, i64* %6, align 8, !dbg !1844
  call void @llvm.dbg.value(metadata i8 0, metadata !1692, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 0, metadata !1693, metadata !DIExpression()), !dbg !1842
  %217 = bitcast i32* %8 to i8*
  br label %218, !dbg !1845

218:                                              ; preds = %268, %215
  %219 = phi i64 [ 0, %215 ], [ %269, %268 ], !dbg !1846
  %220 = phi i64 [ 0, %215 ], [ %236, %268 ], !dbg !1847
  %221 = phi i64 [ 0, %215 ], [ %270, %268 ], !dbg !1848
  %222 = phi i64 [ 0, %215 ], [ %271, %268 ], !dbg !1849
  %223 = phi i64 [ 0, %215 ], [ %272, %268 ], !dbg !1797
  %224 = phi i8 [ 0, %215 ], [ %273, %268 ], !dbg !1850
  %225 = phi i64 [ 0, %215 ], [ %274, %268 ], !dbg !1851
  %226 = phi i8 [ 0, %215 ], [ %275, %268 ], !dbg !1852
  %227 = phi i64 [ 0, %215 ], [ %276, %268 ], !dbg !1853
  call void @llvm.dbg.value(metadata i64 %227, metadata !1693, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 %226, metadata !1692, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %225, metadata !1675, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 %224, metadata !1672, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 1, metadata !1641, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %223, metadata !1647, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %222, metadata !1648, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %221, metadata !1649, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %220, metadata !1650, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %219, metadata !1651, metadata !DIExpression()), !dbg !1717
  %228 = getelementptr inbounds [16385 x i8], [16385 x i8]* %5, i64 0, i64 %227, !dbg !1854
  %229 = sub i64 16384, %227, !dbg !1855
  %230 = call i64 @safe_read(i32 %0, i8* nonnull %228, i64 %229) #32, !dbg !1856
  call void @llvm.dbg.value(metadata i64 %230, metadata !1646, metadata !DIExpression()), !dbg !1717
  switch i64 %230, label %235 [
    i64 0, label %380
    i64 -1, label %231
  ], !dbg !1845

231:                                              ; preds = %218
  %232 = tail call i32* @__errno_location() #35, !dbg !1857
  %233 = load i32, i32* %232, align 4, !dbg !1857, !tbaa !1268
  %234 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %14) #32, !dbg !1860
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %233, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %234) #32, !dbg !1861
  call void @llvm.dbg.value(metadata i64 undef, metadata !1693, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 undef, metadata !1692, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 undef, metadata !1675, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 undef, metadata !1672, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 1, metadata !1641, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 undef, metadata !1647, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 undef, metadata !1648, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 undef, metadata !1649, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %236, metadata !1650, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 undef, metadata !1651, metadata !DIExpression()), !dbg !1717
  br label %380

235:                                              ; preds = %218
  %236 = add i64 %230, %220, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %236, metadata !1650, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i8* %9, metadata !1694, metadata !DIExpression()), !dbg !1863
  %237 = add i64 %230, %227, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %237, metadata !1646, metadata !DIExpression()), !dbg !1717
  br label %238, !dbg !1865

238:                                              ; preds = %363, %235
  %239 = phi i64 [ %219, %235 ], [ %364, %363 ], !dbg !1846
  %240 = phi i64 [ %221, %235 ], [ %365, %363 ], !dbg !1848
  %241 = phi i64 [ %222, %235 ], [ %366, %363 ], !dbg !1849
  %242 = phi i64 [ %223, %235 ], [ %367, %363 ], !dbg !1797
  %243 = phi i64 [ %237, %235 ], [ %368, %363 ], !dbg !1864
  %244 = phi i8 [ %224, %235 ], [ %369, %363 ], !dbg !1850
  %245 = phi i64 [ %225, %235 ], [ %370, %363 ], !dbg !1851
  %246 = phi i8 [ %226, %235 ], [ %371, %363 ], !dbg !1842
  %247 = phi i8* [ %9, %235 ], [ %372, %363 ], !dbg !1866
  call void @llvm.dbg.value(metadata i8* %247, metadata !1694, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %246, metadata !1692, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %245, metadata !1675, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 %244, metadata !1672, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %243, metadata !1646, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %242, metadata !1647, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %241, metadata !1648, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %240, metadata !1649, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %239, metadata !1651, metadata !DIExpression()), !dbg !1717
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %217) #32, !dbg !1867
  call void @llvm.dbg.value(metadata i8 1, metadata !1701, metadata !DIExpression()), !dbg !1868
  %248 = and i8 %246, 1, !dbg !1869
  %249 = icmp eq i8 %248, 0, !dbg !1869
  br i1 %249, label %250, label %263, !dbg !1871

250:                                              ; preds = %238
  %251 = load i8, i8* %247, align 1, !dbg !1872, !tbaa !1470
  call void @llvm.dbg.value(metadata i8 %251, metadata !1873, metadata !DIExpression()), !dbg !1879
  %252 = zext i8 %251 to i32, !dbg !1881
  %253 = lshr i32 %252, 5, !dbg !1882
  %254 = zext i32 %253 to i64, !dbg !1883
  %255 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([8 x i32]* @is_basic_table to [0 x i32]*), i64 0, i64 %254, !dbg !1883
  %256 = load i32, i32* %255, align 4, !dbg !1883, !tbaa !1268
  %257 = and i32 %252, 31, !dbg !1884
  %258 = shl nuw i32 1, %257, !dbg !1885
  %259 = and i32 %258, %256, !dbg !1885
  %260 = icmp eq i32 %259, 0, !dbg !1885
  br i1 %260, label %263, label %261, !dbg !1886

261:                                              ; preds = %250
  call void @llvm.dbg.value(metadata i64 1, metadata !1700, metadata !DIExpression()), !dbg !1868
  %262 = sext i8 %251 to i32, !dbg !1887
  call void @llvm.dbg.value(metadata i32 %262, metadata !1697, metadata !DIExpression()), !dbg !1868
  store i32 %262, i32* %8, align 4, !dbg !1889, !tbaa !1268
  call void @llvm.dbg.value(metadata i8 0, metadata !1701, metadata !DIExpression()), !dbg !1868
  br label %288, !dbg !1890

263:                                              ; preds = %250, %238
  call void @llvm.dbg.value(metadata i8 1, metadata !1692, metadata !DIExpression()), !dbg !1842
  %264 = load i64, i64* %6, align 8, !dbg !1891
  call void @llvm.dbg.value(metadata i32* %8, metadata !1697, metadata !DIExpression(DW_OP_deref)), !dbg !1868
  %265 = call i64 @rpl_mbrtowc(i32* nonnull %8, i8* %247, i64 %243, %struct.__mbstate_t* nonnull %7) #32, !dbg !1893
  call void @llvm.dbg.value(metadata i64 %265, metadata !1700, metadata !DIExpression()), !dbg !1868
  switch i64 %265, label %280 [
    i64 -2, label %266
    i64 -1, label %277
  ], !dbg !1894

266:                                              ; preds = %263
  store i64 %264, i64* %6, align 8, !dbg !1895
  call void @llvm.dbg.value(metadata i8* %372, metadata !1694, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 undef, metadata !1692, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 undef, metadata !1675, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 undef, metadata !1672, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %368, metadata !1646, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 undef, metadata !1647, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 undef, metadata !1648, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 undef, metadata !1649, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 undef, metadata !1651, metadata !DIExpression()), !dbg !1717
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %217) #32, !dbg !1898
  %267 = icmp eq i64 %243, 0
  br i1 %267, label %268, label %374, !dbg !1899

268:                                              ; preds = %363, %266, %374
  %269 = phi i64 [ %239, %374 ], [ %239, %266 ], [ %364, %363 ]
  %270 = phi i64 [ %240, %374 ], [ %240, %266 ], [ %365, %363 ]
  %271 = phi i64 [ %241, %374 ], [ %241, %266 ], [ %366, %363 ]
  %272 = phi i64 [ %242, %374 ], [ %242, %266 ], [ %367, %363 ]
  %273 = phi i8 [ %244, %374 ], [ %244, %266 ], [ %369, %363 ]
  %274 = phi i64 [ %245, %374 ], [ %245, %266 ], [ %370, %363 ]
  %275 = phi i8 [ 1, %374 ], [ 1, %266 ], [ %371, %363 ]
  %276 = phi i64 [ %377, %374 ], [ 0, %266 ], [ 0, %363 ]
  br label %218, !dbg !1842

277:                                              ; preds = %263
  %278 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !1900
  call void @llvm.dbg.value(metadata i8* %278, metadata !1694, metadata !DIExpression()), !dbg !1863
  %279 = add i64 %243, -1, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %279, metadata !1646, metadata !DIExpression()), !dbg !1717
  br label %363, !dbg !1904

280:                                              ; preds = %263
  %281 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %7) #33, !dbg !1905
  %282 = icmp eq i32 %281, 0, !dbg !1905
  %283 = zext i1 %282 to i8, !dbg !1907
  call void @llvm.dbg.value(metadata i8 %283, metadata !1692, metadata !DIExpression()), !dbg !1842
  %284 = icmp eq i64 %265, 0, !dbg !1908
  br i1 %284, label %285, label %286, !dbg !1910

285:                                              ; preds = %280
  call void @llvm.dbg.value(metadata i32 0, metadata !1697, metadata !DIExpression()), !dbg !1868
  store i32 0, i32* %8, align 4, !dbg !1911, !tbaa !1268
  call void @llvm.dbg.value(metadata i8 undef, metadata !1701, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i64 %291, metadata !1700, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i8 %290, metadata !1692, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i32 %289, metadata !1697, metadata !DIExpression()), !dbg !1868
  br label %314, !dbg !1913

286:                                              ; preds = %280
  %287 = load i32, i32* %8, align 4, !dbg !1914, !tbaa !1268
  br label %288, !dbg !1914

288:                                              ; preds = %286, %261
  %289 = phi i32 [ %287, %286 ], [ %262, %261 ], !dbg !1914
  %290 = phi i8 [ %283, %286 ], [ %246, %261 ], !dbg !1842
  %291 = phi i64 [ %265, %286 ], [ 1, %261 ], !dbg !1915
  %292 = phi i1 [ true, %286 ], [ false, %261 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1701, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i64 %291, metadata !1700, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i8 %290, metadata !1692, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i32 %289, metadata !1697, metadata !DIExpression()), !dbg !1868
  switch i32 %289, label %313 [
    i32 10, label %293
    i32 13, label %295
    i32 12, label %295
    i32 9, label %299
    i32 32, label %302
    i32 11, label %304
  ], !dbg !1916

293:                                              ; preds = %288
  %294 = add i64 %242, 1, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %294, metadata !1647, metadata !DIExpression()), !dbg !1717
  br label %295, !dbg !1918

295:                                              ; preds = %288, %288, %293
  %296 = phi i64 [ %242, %288 ], [ %242, %288 ], [ %294, %293 ], !dbg !1717
  call void @llvm.dbg.value(metadata i64 %296, metadata !1647, metadata !DIExpression()), !dbg !1717
  %297 = icmp ugt i64 %245, %239, !dbg !1919
  %298 = select i1 %297, i64 %245, i64 %239, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %298, metadata !1651, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 0, metadata !1675, metadata !DIExpression()), !dbg !1842
  br label %304, !dbg !1922

299:                                              ; preds = %288
  %300 = add i64 %245, 8, !dbg !1923
  %301 = and i64 %300, -8, !dbg !1924
  call void @llvm.dbg.value(metadata i64 %301, metadata !1675, metadata !DIExpression()), !dbg !1842
  br label %304, !dbg !1925

302:                                              ; preds = %288
  %303 = add i64 %245, 1, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %303, metadata !1675, metadata !DIExpression()), !dbg !1842
  br label %304, !dbg !1927

304:                                              ; preds = %337, %337, %337, %337, %348, %329, %302, %288, %299, %295
  %305 = phi i64 [ %317, %329 ], [ %291, %348 ], [ %291, %288 ], [ %291, %302 ], [ %291, %299 ], [ %291, %295 ], [ %317, %337 ], [ %317, %337 ], [ %317, %337 ], [ %317, %337 ]
  %306 = phi i8 [ %316, %329 ], [ %290, %348 ], [ %290, %288 ], [ %290, %302 ], [ %290, %299 ], [ %290, %295 ], [ %316, %337 ], [ %316, %337 ], [ %316, %337 ], [ %316, %337 ]
  %307 = phi i64 [ %239, %329 ], [ %239, %348 ], [ %239, %288 ], [ %239, %302 ], [ %239, %299 ], [ %298, %295 ], [ %239, %337 ], [ %239, %337 ], [ %239, %337 ], [ %239, %337 ], !dbg !1717
  %308 = phi i64 [ %242, %329 ], [ %242, %348 ], [ %242, %288 ], [ %242, %302 ], [ %242, %299 ], [ %296, %295 ], [ %242, %337 ], [ %242, %337 ], [ %242, %337 ], [ %242, %337 ], !dbg !1797
  %309 = phi i64 [ %330, %329 ], [ %349, %348 ], [ %245, %288 ], [ %303, %302 ], [ %301, %299 ], [ 0, %295 ], [ %330, %337 ], [ %330, %337 ], [ %330, %337 ], [ %330, %337 ], !dbg !1842
  call void @llvm.dbg.value(metadata i64 %309, metadata !1675, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %308, metadata !1647, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %307, metadata !1651, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.label(metadata !1713), !dbg !1928
  %310 = and i8 %244, 1, !dbg !1929
  %311 = zext i8 %310 to i64, !dbg !1929
  %312 = add i64 %241, %311, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %312, metadata !1648, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i8 0, metadata !1672, metadata !DIExpression()), !dbg !1842
  br label %352, !dbg !1931

313:                                              ; preds = %288
  br i1 %292, label %314, label %339, !dbg !1913

314:                                              ; preds = %285, %313
  %315 = phi i32 [ 0, %285 ], [ %289, %313 ]
  %316 = phi i8 [ %283, %285 ], [ %290, %313 ]
  %317 = phi i64 [ 1, %285 ], [ %291, %313 ]
  %318 = call i32 @iswprint(i32 %315) #32, !dbg !1932
  %319 = icmp eq i32 %318, 0, !dbg !1932
  br i1 %319, label %352, label %320, !dbg !1933

320:                                              ; preds = %314
  %321 = load i1, i1* @print_linelength, align 1, !dbg !1934
  br i1 %321, label %322, label %329, !dbg !1935

322:                                              ; preds = %320
  %323 = load i32, i32* %8, align 4, !dbg !1936, !tbaa !1268
  call void @llvm.dbg.value(metadata i32 %323, metadata !1697, metadata !DIExpression()), !dbg !1868
  %324 = call i32 @wcwidth(i32 %323) #32, !dbg !1937
  call void @llvm.dbg.value(metadata i32 %324, metadata !1702, metadata !DIExpression()), !dbg !1938
  %325 = icmp sgt i32 %324, 0, !dbg !1939
  %326 = select i1 %325, i32 %324, i32 0, !dbg !1941
  %327 = zext i32 %326 to i64, !dbg !1941
  %328 = add i64 %245, %327, !dbg !1941
  br label %329, !dbg !1941

329:                                              ; preds = %322, %320
  %330 = phi i64 [ %245, %320 ], [ %328, %322 ], !dbg !1842
  call void @llvm.dbg.value(metadata i64 %330, metadata !1675, metadata !DIExpression()), !dbg !1842
  %331 = load i32, i32* %8, align 4, !dbg !1942, !tbaa !1268
  call void @llvm.dbg.value(metadata i32 %331, metadata !1697, metadata !DIExpression()), !dbg !1868
  %332 = call i32 @iswspace(i32 %331) #32, !dbg !1944
  %333 = icmp eq i32 %332, 0, !dbg !1944
  br i1 %333, label %334, label %304, !dbg !1945

334:                                              ; preds = %329
  call void @llvm.dbg.value(metadata i32 undef, metadata !1697, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i32 undef, metadata !1946, metadata !DIExpression()), !dbg !1953
  %335 = load i8, i8* @posixly_correct, align 1, !dbg !1955, !tbaa !1219, !range !1956
  %336 = icmp eq i8 %335, 0, !dbg !1955
  br i1 %336, label %337, label %352, !dbg !1957

337:                                              ; preds = %334
  %338 = load i32, i32* %8, align 4, !dbg !1958, !tbaa !1268
  call void @llvm.dbg.value(metadata i32 %338, metadata !1946, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i32 %338, metadata !1697, metadata !DIExpression()), !dbg !1868
  switch i32 %338, label %352 [
    i32 8239, label %304
    i32 8199, label %304
    i32 160, label %304
    i32 8288, label %304
  ], !dbg !1959

339:                                              ; preds = %313
  %340 = tail call i16** @__ctype_b_loc() #35, !dbg !1960
  %341 = load i16*, i16** %340, align 8, !dbg !1960, !tbaa !1122
  %342 = load i8, i8* %247, align 1, !dbg !1960, !tbaa !1470
  %343 = zext i8 %342 to i64, !dbg !1960
  %344 = getelementptr inbounds i16, i16* %341, i64 %343, !dbg !1960
  %345 = load i16, i16* %344, align 2, !dbg !1960, !tbaa !1962
  %346 = and i16 %345, 16384, !dbg !1960
  %347 = icmp eq i16 %346, 0, !dbg !1960
  br i1 %347, label %352, label %348, !dbg !1964

348:                                              ; preds = %339
  %349 = add i64 %245, 1, !dbg !1965
  call void @llvm.dbg.value(metadata i64 %349, metadata !1675, metadata !DIExpression()), !dbg !1842
  %350 = and i16 %345, 8192, !dbg !1967
  %351 = icmp eq i16 %350, 0, !dbg !1967
  br i1 %351, label %352, label %304, !dbg !1969

352:                                              ; preds = %337, %334, %314, %348, %339, %304
  %353 = phi i64 [ %305, %304 ], [ %291, %339 ], [ %291, %348 ], [ %317, %314 ], [ %317, %334 ], [ %317, %337 ]
  %354 = phi i8 [ %306, %304 ], [ %290, %339 ], [ %290, %348 ], [ %316, %314 ], [ %316, %334 ], [ %316, %337 ]
  %355 = phi i64 [ %307, %304 ], [ %239, %339 ], [ %239, %348 ], [ %239, %314 ], [ %239, %334 ], [ %239, %337 ], !dbg !1846
  %356 = phi i64 [ %312, %304 ], [ %241, %339 ], [ %241, %348 ], [ %241, %314 ], [ %241, %334 ], [ %241, %337 ], !dbg !1717
  %357 = phi i64 [ %308, %304 ], [ %242, %339 ], [ %242, %348 ], [ %242, %314 ], [ %242, %334 ], [ %242, %337 ], !dbg !1797
  %358 = phi i8 [ 0, %304 ], [ %244, %339 ], [ 1, %348 ], [ %244, %314 ], [ 1, %334 ], [ 1, %337 ], !dbg !1842
  %359 = phi i64 [ %309, %304 ], [ %245, %339 ], [ %349, %348 ], [ %245, %314 ], [ %330, %334 ], [ %330, %337 ], !dbg !1842
  call void @llvm.dbg.value(metadata i64 %359, metadata !1675, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 %358, metadata !1672, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %357, metadata !1647, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %356, metadata !1648, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %355, metadata !1651, metadata !DIExpression()), !dbg !1717
  %360 = getelementptr inbounds i8, i8* %247, i64 %353, !dbg !1970
  call void @llvm.dbg.value(metadata i8* %360, metadata !1694, metadata !DIExpression()), !dbg !1863
  %361 = sub i64 %243, %353, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %361, metadata !1646, metadata !DIExpression()), !dbg !1717
  %362 = add i64 %240, 1, !dbg !1972
  call void @llvm.dbg.value(metadata i64 %362, metadata !1649, metadata !DIExpression()), !dbg !1717
  br label %363, !dbg !1898

363:                                              ; preds = %352, %277
  %364 = phi i64 [ %239, %277 ], [ %355, %352 ], !dbg !1846
  %365 = phi i64 [ %240, %277 ], [ %362, %352 ], !dbg !1717
  %366 = phi i64 [ %241, %277 ], [ %356, %352 ], !dbg !1717
  %367 = phi i64 [ %242, %277 ], [ %357, %352 ], !dbg !1797
  %368 = phi i64 [ %279, %277 ], [ %361, %352 ], !dbg !1863
  %369 = phi i8 [ %244, %277 ], [ %358, %352 ], !dbg !1842
  %370 = phi i64 [ %245, %277 ], [ %359, %352 ], !dbg !1842
  %371 = phi i8 [ 1, %277 ], [ %354, %352 ], !dbg !1973
  %372 = phi i8* [ %278, %277 ], [ %360, %352 ], !dbg !1863
  call void @llvm.dbg.value(metadata i8* %372, metadata !1694, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %371, metadata !1692, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %370, metadata !1675, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 %369, metadata !1672, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %368, metadata !1646, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %367, metadata !1647, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %366, metadata !1648, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %365, metadata !1649, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %364, metadata !1651, metadata !DIExpression()), !dbg !1717
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %217) #32, !dbg !1898
  %373 = icmp eq i64 %368, 0
  br i1 %373, label %268, label %238, !llvm.loop !1974

374:                                              ; preds = %266
  %375 = icmp eq i64 %243, 16384, !dbg !1976
  %376 = getelementptr inbounds i8, i8* %247, i64 1
  %377 = select i1 %375, i64 16383, i64 %243, !dbg !1980
  %378 = select i1 %375, i8* %376, i8* %247, !dbg !1980
  call void @llvm.dbg.value(metadata i8* %378, metadata !1694, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %377, metadata !1646, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i8* %9, metadata !1981, metadata !DIExpression()) #32, !dbg !1989
  call void @llvm.dbg.value(metadata i8* %378, metadata !1987, metadata !DIExpression()) #32, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %377, metadata !1988, metadata !DIExpression()) #32, !dbg !1989
  %379 = call i8* @__memmove_chk(i8* nonnull %9, i8* nonnull %378, i64 %377, i64 16385) #32, !dbg !1991
  br label %268, !dbg !1992

380:                                              ; preds = %218, %231
  %381 = phi i8 [ 0, %231 ], [ 1, %218 ], !dbg !1717
  call void @llvm.dbg.value(metadata i64 %225, metadata !1675, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 %224, metadata !1672, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 %381, metadata !1641, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %223, metadata !1647, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %222, metadata !1648, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %221, metadata !1649, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %220, metadata !1650, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %219, metadata !1651, metadata !DIExpression()), !dbg !1717
  %382 = icmp ugt i64 %225, %219, !dbg !1993
  %383 = select i1 %382, i64 %225, i64 %219, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %383, metadata !1651, metadata !DIExpression()), !dbg !1717
  %384 = and i8 %224, 1, !dbg !1996
  %385 = zext i8 %384 to i64, !dbg !1996
  %386 = add i64 %222, %385, !dbg !1997
  call void @llvm.dbg.value(metadata i64 %386, metadata !1648, metadata !DIExpression()), !dbg !1717
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %216) #32, !dbg !1998
  br label %463, !dbg !1999

387:                                              ; preds = %212, %454
  %388 = phi i64 [ %447, %454 ], [ 0, %212 ], !dbg !1846
  %389 = phi i64 [ %455, %454 ], [ 0, %212 ], !dbg !1847
  %390 = phi i64 [ %448, %454 ], [ 0, %212 ], !dbg !1849
  %391 = phi i64 [ %449, %454 ], [ 0, %212 ], !dbg !1797
  %392 = phi i8 [ %450, %454 ], [ 0, %212 ], !dbg !2000
  %393 = phi i64 [ %451, %454 ], [ 0, %212 ], !dbg !2001
  call void @llvm.dbg.value(metadata i64 %393, metadata !1710, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i8 %392, metadata !1708, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i8 1, metadata !1641, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %391, metadata !1647, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %390, metadata !1648, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %389, metadata !1650, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %388, metadata !1651, metadata !DIExpression()), !dbg !1717
  %394 = call i64 @safe_read(i32 %0, i8* nonnull %9, i64 16384) #32, !dbg !2003
  call void @llvm.dbg.value(metadata i64 %394, metadata !1646, metadata !DIExpression()), !dbg !1717
  switch i64 %394, label %399 [
    i64 0, label %456
    i64 -1, label %395
  ], !dbg !2004

395:                                              ; preds = %387
  %396 = tail call i32* @__errno_location() #35, !dbg !2005
  %397 = load i32, i32* %396, align 4, !dbg !2005, !tbaa !1268
  %398 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %14) #32, !dbg !2008
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %397, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %398) #32, !dbg !2009
  call void @llvm.dbg.value(metadata i64 %451, metadata !1710, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i8 %450, metadata !1708, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i8 1, metadata !1641, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %449, metadata !1647, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %448, metadata !1648, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %455, metadata !1650, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %447, metadata !1651, metadata !DIExpression()), !dbg !1717
  br label %456

399:                                              ; preds = %387, %446
  %400 = phi i64 [ %447, %446 ], [ %388, %387 ], !dbg !1846
  %401 = phi i64 [ %448, %446 ], [ %390, %387 ], !dbg !1717
  %402 = phi i64 [ %449, %446 ], [ %391, %387 ], !dbg !1797
  %403 = phi i64 [ %452, %446 ], [ %394, %387 ], !dbg !2002
  %404 = phi i8 [ %450, %446 ], [ %392, %387 ], !dbg !2002
  %405 = phi i64 [ %451, %446 ], [ %393, %387 ], !dbg !2002
  %406 = phi i8* [ %407, %446 ], [ %9, %387 ], !dbg !2010
  call void @llvm.dbg.value(metadata i8* %406, metadata !1711, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i64 %405, metadata !1710, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i8 %404, metadata !1708, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i64 %403, metadata !1646, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %402, metadata !1647, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %401, metadata !1648, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %400, metadata !1651, metadata !DIExpression()), !dbg !1717
  %407 = getelementptr inbounds i8, i8* %406, i64 1, !dbg !2011
  call void @llvm.dbg.value(metadata i8* %407, metadata !1711, metadata !DIExpression()), !dbg !2010
  %408 = load i8, i8* %406, align 1, !dbg !2012, !tbaa !1470
  %409 = sext i8 %408 to i32, !dbg !2012
  switch i32 %409, label %428 [
    i32 10, label %410
    i32 13, label %412
    i32 12, label %412
    i32 9, label %416
    i32 32, label %419
    i32 11, label %421
  ], !dbg !2013

410:                                              ; preds = %399
  %411 = add i64 %402, 1, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %411, metadata !1647, metadata !DIExpression()), !dbg !1717
  br label %412, !dbg !2015

412:                                              ; preds = %399, %399, %410
  %413 = phi i64 [ %402, %399 ], [ %402, %399 ], [ %411, %410 ], !dbg !1717
  call void @llvm.dbg.value(metadata i64 %413, metadata !1647, metadata !DIExpression()), !dbg !1717
  %414 = icmp ugt i64 %405, %400, !dbg !2016
  %415 = select i1 %414, i64 %405, i64 %400, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %415, metadata !1651, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 0, metadata !1710, metadata !DIExpression()), !dbg !2002
  br label %421, !dbg !2019

416:                                              ; preds = %399
  %417 = add i64 %405, 8, !dbg !2020
  %418 = and i64 %417, -8, !dbg !2021
  call void @llvm.dbg.value(metadata i64 %418, metadata !1710, metadata !DIExpression()), !dbg !2002
  br label %421, !dbg !2022

419:                                              ; preds = %399
  %420 = add i64 %405, 1, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %420, metadata !1710, metadata !DIExpression()), !dbg !2002
  br label %421, !dbg !2024

421:                                              ; preds = %445, %445, %445, %445, %436, %419, %399, %416, %412
  %422 = phi i64 [ %400, %436 ], [ %400, %399 ], [ %400, %419 ], [ %400, %416 ], [ %415, %412 ], [ %400, %445 ], [ %400, %445 ], [ %400, %445 ], [ %400, %445 ], !dbg !1717
  %423 = phi i64 [ %402, %436 ], [ %402, %399 ], [ %402, %419 ], [ %402, %416 ], [ %413, %412 ], [ %402, %445 ], [ %402, %445 ], [ %402, %445 ], [ %402, %445 ], !dbg !1797
  %424 = phi i64 [ %437, %436 ], [ %405, %399 ], [ %420, %419 ], [ %418, %416 ], [ 0, %412 ], [ %437, %445 ], [ %437, %445 ], [ %437, %445 ], [ %437, %445 ], !dbg !2002
  call void @llvm.dbg.value(metadata i64 %424, metadata !1710, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i64 %423, metadata !1647, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %422, metadata !1651, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.label(metadata !1714), !dbg !2025
  %425 = and i8 %404, 1, !dbg !2026
  %426 = zext i8 %425 to i64, !dbg !2026
  %427 = add i64 %401, %426, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %427, metadata !1648, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i8 0, metadata !1708, metadata !DIExpression()), !dbg !2002
  br label %446, !dbg !2028

428:                                              ; preds = %399
  %429 = tail call i16** @__ctype_b_loc() #35, !dbg !2029
  %430 = load i16*, i16** %429, align 8, !dbg !2029, !tbaa !1122
  %431 = zext i8 %408 to i64, !dbg !2029
  %432 = getelementptr inbounds i16, i16* %430, i64 %431, !dbg !2029
  %433 = load i16, i16* %432, align 2, !dbg !2029, !tbaa !1962
  %434 = and i16 %433, 16384, !dbg !2029
  %435 = icmp eq i16 %434, 0, !dbg !2029
  br i1 %435, label %446, label %436, !dbg !2031

436:                                              ; preds = %428
  %437 = add i64 %405, 1, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %437, metadata !1710, metadata !DIExpression()), !dbg !2002
  %438 = and i16 %433, 8192, !dbg !2034
  %439 = icmp eq i16 %438, 0, !dbg !2034
  br i1 %439, label %440, label %421, !dbg !2036

440:                                              ; preds = %436
  %441 = zext i8 %408 to i32, !dbg !2037
  call void @llvm.dbg.value(metadata i32 %441, metadata !2038, metadata !DIExpression()) #32, !dbg !2043
  %442 = call i32 @btowc(i32 %441) #32, !dbg !2045
  call void @llvm.dbg.value(metadata i32 %442, metadata !1946, metadata !DIExpression()) #32, !dbg !2046
  %443 = load i8, i8* @posixly_correct, align 1, !dbg !2048, !tbaa !1219, !range !1956
  %444 = icmp eq i8 %443, 0, !dbg !2048
  br i1 %444, label %445, label %446, !dbg !2049

445:                                              ; preds = %440
  switch i32 %442, label %446 [
    i32 8239, label %421
    i32 8199, label %421
    i32 160, label %421
    i32 8288, label %421
  ], !dbg !2050

446:                                              ; preds = %445, %440, %421, %428
  %447 = phi i64 [ %422, %421 ], [ %400, %428 ], [ %400, %440 ], [ %400, %445 ], !dbg !1846
  %448 = phi i64 [ %427, %421 ], [ %401, %428 ], [ %401, %440 ], [ %401, %445 ], !dbg !1717
  %449 = phi i64 [ %423, %421 ], [ %402, %428 ], [ %402, %440 ], [ %402, %445 ], !dbg !1797
  %450 = phi i8 [ 0, %421 ], [ %404, %428 ], [ 1, %440 ], [ 1, %445 ], !dbg !2002
  %451 = phi i64 [ %424, %421 ], [ %405, %428 ], [ %437, %440 ], [ %437, %445 ], !dbg !2002
  call void @llvm.dbg.value(metadata i64 %451, metadata !1710, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i8 %450, metadata !1708, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i64 %449, metadata !1647, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %448, metadata !1648, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %447, metadata !1651, metadata !DIExpression()), !dbg !1717
  %452 = add i64 %403, -1, !dbg !2051
  call void @llvm.dbg.value(metadata i64 %452, metadata !1646, metadata !DIExpression()), !dbg !1717
  %453 = icmp eq i64 %452, 0, !dbg !2052
  br i1 %453, label %454, label %399, !dbg !2052, !llvm.loop !2053

454:                                              ; preds = %446
  %455 = add i64 %394, %389, !dbg !2056
  call void @llvm.dbg.value(metadata i64 %451, metadata !1710, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i8 %450, metadata !1708, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i8 1, metadata !1641, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %449, metadata !1647, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %448, metadata !1648, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %455, metadata !1650, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %447, metadata !1651, metadata !DIExpression()), !dbg !1717
  br label %387

456:                                              ; preds = %387, %395
  %457 = phi i8 [ 0, %395 ], [ 1, %387 ], !dbg !1717
  call void @llvm.dbg.value(metadata i64 %393, metadata !1710, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i8 %392, metadata !1708, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i8 %457, metadata !1641, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %391, metadata !1647, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %390, metadata !1648, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %389, metadata !1650, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %388, metadata !1651, metadata !DIExpression()), !dbg !1717
  %458 = icmp ugt i64 %393, %388, !dbg !2057
  %459 = select i1 %458, i64 %393, i64 %388, !dbg !2059
  call void @llvm.dbg.value(metadata i64 %459, metadata !1651, metadata !DIExpression()), !dbg !1717
  %460 = and i8 %392, 1, !dbg !2060
  %461 = zext i8 %460 to i64, !dbg !2060
  %462 = add i64 %390, %461, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %462, metadata !1648, metadata !DIExpression()), !dbg !1717
  br label %463

463:                                              ; preds = %87, %98, %83, %103, %90, %456, %380
  %464 = phi i64 [ %383, %380 ], [ %459, %456 ], [ 0, %90 ], [ 0, %83 ], [ 0, %103 ], [ %102, %98 ], [ %89, %87 ], !dbg !1717
  %465 = phi i64 [ %220, %380 ], [ %389, %456 ], [ %88, %90 ], [ %84, %83 ], [ %99, %103 ], [ %99, %98 ], [ %88, %87 ], !dbg !1847
  %466 = phi i64 [ %221, %380 ], [ 0, %456 ], [ 0, %90 ], [ 0, %83 ], [ 0, %103 ], [ %102, %98 ], [ %89, %87 ], !dbg !1848
  %467 = phi i64 [ %386, %380 ], [ %462, %456 ], [ 0, %90 ], [ 0, %83 ], [ 0, %103 ], [ %102, %98 ], [ %89, %87 ], !dbg !1717
  %468 = phi i64 [ %223, %380 ], [ %391, %456 ], [ 0, %90 ], [ 0, %83 ], [ %100, %103 ], [ %100, %98 ], [ %89, %87 ], !dbg !1797
  %469 = phi i8 [ %381, %380 ], [ %457, %456 ], [ 0, %90 ], [ 1, %83 ], [ 0, %103 ], [ 1, %98 ], [ 1, %87 ], !dbg !1717
  call void @llvm.dbg.value(metadata i8 %469, metadata !1641, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %468, metadata !1647, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %467, metadata !1648, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %466, metadata !1649, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %465, metadata !1650, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %464, metadata !1651, metadata !DIExpression()), !dbg !1717
  %470 = load i1, i1* @print_chars, align 1, !dbg !2062
  %471 = xor i1 %22, true, !dbg !2064
  %472 = and i1 %470, %471, !dbg !2064
  %473 = select i1 %472, i64 %465, i64 %466, !dbg !2065
  call void @llvm.dbg.value(metadata i64 %473, metadata !1649, metadata !DIExpression()), !dbg !1717
  call fastcc void @write_counts(i64 %468, i64 %467, i64 %473, i64 %465, i64 %464, i8* %1), !dbg !2066
  %474 = load i64, i64* @total_lines, align 8, !dbg !2067, !tbaa !1212
  %475 = add i64 %474, %468, !dbg !2067
  store i64 %475, i64* @total_lines, align 8, !dbg !2067, !tbaa !1212
  %476 = load i64, i64* @total_words, align 8, !dbg !2068, !tbaa !1212
  %477 = add i64 %476, %467, !dbg !2068
  store i64 %477, i64* @total_words, align 8, !dbg !2068, !tbaa !1212
  %478 = load i64, i64* @total_chars, align 8, !dbg !2069, !tbaa !1212
  %479 = add i64 %478, %473, !dbg !2069
  store i64 %479, i64* @total_chars, align 8, !dbg !2069, !tbaa !1212
  %480 = load i64, i64* @total_bytes, align 8, !dbg !2070, !tbaa !1212
  %481 = add i64 %480, %465, !dbg !2070
  store i64 %481, i64* @total_bytes, align 8, !dbg !2070, !tbaa !1212
  %482 = load i64, i64* @max_line_length, align 8, !dbg !2071, !tbaa !1212
  %483 = icmp ugt i64 %464, %482, !dbg !2073
  br i1 %483, label %484, label %485, !dbg !2074

484:                                              ; preds = %463
  store i64 %464, i64* @max_line_length, align 8, !dbg !2075, !tbaa !1212
  br label %485, !dbg !2076

485:                                              ; preds = %484, %463
  %486 = icmp ne i8 %469, 0, !dbg !2077
  call void @llvm.lifetime.end.p0i8(i64 16385, i8* nonnull %9) #32, !dbg !2078
  ret i1 %486, !dbg !2079
}

; Function Attrs: nofree
declare !dbg !2080 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #11

declare !dbg !2084 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @write_counts(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i8* %5) unnamed_addr #8 !dbg !303 {
  %7 = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i64 %0, metadata !307, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %1, metadata !308, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %2, metadata !309, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %3, metadata !310, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %4, metadata !311, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8* %5, metadata !312, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 1), metadata !313, metadata !DIExpression()), !dbg !2085
  %8 = getelementptr inbounds [21 x i8], [21 x i8]* %7, i64 0, i64 0, !dbg !2086
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %8) #32, !dbg !2086
  call void @llvm.dbg.declare(metadata [21 x i8]* %7, metadata !314, metadata !DIExpression()), !dbg !2087
  %9 = load i1, i1* @print_lines, align 1, !dbg !2088
  br i1 %9, label %10, label %14, !dbg !2090

10:                                               ; preds = %6
  %11 = load i32, i32* @number_width, align 4, !dbg !2091, !tbaa !1268
  %12 = call i8* @umaxtostr(i64 %0, i8* nonnull %8) #32, !dbg !2091
  %13 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 1), i32 %11, i8* %12) #32, !dbg !2091
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), metadata !313, metadata !DIExpression()), !dbg !2085
  br label %14, !dbg !2093

14:                                               ; preds = %10, %6
  %15 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), %10 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 1), %6 ], !dbg !2085
  call void @llvm.dbg.value(metadata i8* %15, metadata !313, metadata !DIExpression()), !dbg !2085
  %16 = load i1, i1* @print_words, align 1, !dbg !2094
  br i1 %16, label %17, label %21, !dbg !2096

17:                                               ; preds = %14
  %18 = load i32, i32* @number_width, align 4, !dbg !2097, !tbaa !1268
  %19 = call i8* @umaxtostr(i64 %1, i8* nonnull %8) #32, !dbg !2097
  %20 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %15, i32 %18, i8* %19) #32, !dbg !2097
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), metadata !313, metadata !DIExpression()), !dbg !2085
  br label %21, !dbg !2099

21:                                               ; preds = %17, %14
  %22 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), %17 ], [ %15, %14 ], !dbg !2085
  call void @llvm.dbg.value(metadata i8* %22, metadata !313, metadata !DIExpression()), !dbg !2085
  %23 = load i1, i1* @print_chars, align 1, !dbg !2100
  br i1 %23, label %24, label %28, !dbg !2102

24:                                               ; preds = %21
  %25 = load i32, i32* @number_width, align 4, !dbg !2103, !tbaa !1268
  %26 = call i8* @umaxtostr(i64 %2, i8* nonnull %8) #32, !dbg !2103
  %27 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %22, i32 %25, i8* %26) #32, !dbg !2103
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), metadata !313, metadata !DIExpression()), !dbg !2085
  br label %28, !dbg !2105

28:                                               ; preds = %24, %21
  %29 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), %24 ], [ %22, %21 ], !dbg !2085
  call void @llvm.dbg.value(metadata i8* %29, metadata !313, metadata !DIExpression()), !dbg !2085
  %30 = load i1, i1* @print_bytes, align 1, !dbg !2106
  br i1 %30, label %31, label %35, !dbg !2108

31:                                               ; preds = %28
  %32 = load i32, i32* @number_width, align 4, !dbg !2109, !tbaa !1268
  %33 = call i8* @umaxtostr(i64 %3, i8* nonnull %8) #32, !dbg !2109
  %34 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i32 %32, i8* %33) #32, !dbg !2109
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), metadata !313, metadata !DIExpression()), !dbg !2085
  br label %35, !dbg !2111

35:                                               ; preds = %31, %28
  %36 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @write_counts.format_sp_int, i64 0, i64 0), %31 ], [ %29, %28 ], !dbg !2085
  call void @llvm.dbg.value(metadata i8* %36, metadata !313, metadata !DIExpression()), !dbg !2085
  %37 = load i1, i1* @print_linelength, align 1, !dbg !2112
  br i1 %37, label %38, label %42, !dbg !2114

38:                                               ; preds = %35
  %39 = load i32, i32* @number_width, align 4, !dbg !2115, !tbaa !1268
  %40 = call i8* @umaxtostr(i64 %4, i8* nonnull %8) #32, !dbg !2115
  %41 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %36, i32 %39, i8* %40) #32, !dbg !2115
  br label %42, !dbg !2117

42:                                               ; preds = %38, %35
  %43 = icmp eq i8* %5, null, !dbg !2118
  br i1 %43, label %52, label %44, !dbg !2120

44:                                               ; preds = %42
  %45 = call i8* @strchr(i8* nonnull %5, i32 10) #33, !dbg !2121
  %46 = icmp eq i8* %45, null, !dbg !2121
  br i1 %46, label %49, label %47, !dbg !2121

47:                                               ; preds = %44
  %48 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %5) #32, !dbg !2121
  br label %49, !dbg !2121

49:                                               ; preds = %44, %47
  %50 = phi i8* [ %48, %47 ], [ %5, %44 ], !dbg !2121
  %51 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0), i8* %50) #32, !dbg !2121
  br label %52, !dbg !2121

52:                                               ; preds = %49, %42
  call void @llvm.dbg.value(metadata i32 10, metadata !2122, metadata !DIExpression()) #32, !dbg !2126
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2128, !tbaa !1122
  %54 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %53, i64 0, i32 5, !dbg !2128
  %55 = load i8*, i8** %54, align 8, !dbg !2128, !tbaa !2129
  %56 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %53, i64 0, i32 6, !dbg !2128
  %57 = load i8*, i8** %56, align 8, !dbg !2128, !tbaa !2131
  %58 = icmp ult i8* %55, %57, !dbg !2128
  br i1 %58, label %61, label %59, !dbg !2128, !prof !2132

59:                                               ; preds = %52
  %60 = call i32 @__overflow(%struct._IO_FILE* nonnull %53, i32 10) #32, !dbg !2128
  br label %63, !dbg !2128

61:                                               ; preds = %52
  %62 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !2128
  store i8* %62, i8** %54, align 8, !dbg !2128, !tbaa !2129
  store i8 10, i8* %55, align 1, !dbg !2128, !tbaa !1470
  br label %63, !dbg !2128

63:                                               ; preds = %59, %61
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %8) #32, !dbg !2133
  ret void, !dbg !2133
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2134 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #13

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #6

; Function Attrs: nounwind readonly willreturn
declare !dbg !2137 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #14

; Function Attrs: nounwind
declare !dbg !2143 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2147 i32 @wcwidth(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2148 i32 @iswspace(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare i8* @__memmove_chk(i8*, i8*, i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @btowc(i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias %struct.argv_iterator* @argv_iter_init_argv(i8** nonnull %0) local_unnamed_addr #15 !dbg !2149 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !2196, metadata !DIExpression()), !dbg !2198
  %2 = tail call noalias dereferenceable_or_null(48) i8* @malloc(i64 48) #32, !dbg !2199
  call void @llvm.dbg.value(metadata i8* %2, metadata !2197, metadata !DIExpression()), !dbg !2198
  %3 = icmp eq i8* %2, null, !dbg !2200
  br i1 %3, label %11, label %4, !dbg !2202

4:                                                ; preds = %1
  %5 = bitcast i8* %2 to %struct.argv_iterator*, !dbg !2199
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %5, metadata !2197, metadata !DIExpression()), !dbg !2198
  %6 = bitcast i8* %2 to %struct._IO_FILE**, !dbg !2203
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8, !dbg !2204, !tbaa !2205
  %7 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !2207
  %8 = bitcast i8* %7 to i8***, !dbg !2207
  store i8** %0, i8*** %8, align 8, !dbg !2208, !tbaa !2209
  %9 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !2210
  %10 = bitcast i8* %9 to i8***, !dbg !2210
  store i8** %0, i8*** %10, align 8, !dbg !2211, !tbaa !2212
  br label %11, !dbg !2213

11:                                               ; preds = %1, %4
  %12 = phi %struct.argv_iterator* [ %5, %4 ], [ null, %1 ], !dbg !2198
  ret %struct.argv_iterator* %12, !dbg !2214
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) #16

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias %struct.argv_iterator* @argv_iter_init_stream(%struct._IO_FILE* nonnull %0) local_unnamed_addr #15 !dbg !2215 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2219, metadata !DIExpression()), !dbg !2221
  %2 = tail call noalias dereferenceable_or_null(48) i8* @malloc(i64 48) #32, !dbg !2222
  call void @llvm.dbg.value(metadata i8* %2, metadata !2220, metadata !DIExpression()), !dbg !2221
  %3 = icmp eq i8* %2, null, !dbg !2223
  br i1 %3, label %8, label %4, !dbg !2225

4:                                                ; preds = %1
  %5 = bitcast i8* %2 to %struct.argv_iterator*, !dbg !2222
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %5, metadata !2220, metadata !DIExpression()), !dbg !2221
  %6 = bitcast i8* %2 to %struct._IO_FILE**, !dbg !2226
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8, !dbg !2227, !tbaa !2205
  %7 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !2228
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false), !dbg !2229
  br label %8, !dbg !2230

8:                                                ; preds = %1, %4
  %9 = phi %struct.argv_iterator* [ %5, %4 ], [ null, %1 ], !dbg !2221
  ret %struct.argv_iterator* %9, !dbg !2231
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @argv_iter(%struct.argv_iterator* nonnull %0, i32* nocapture nonnull %1) local_unnamed_addr #8 !dbg !2232 {
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %0, metadata !2237, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i32* %1, metadata !2238, metadata !DIExpression()), !dbg !2244
  %3 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 0, !dbg !2245
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2245, !tbaa !2205
  %5 = icmp eq %struct._IO_FILE* %4, null, !dbg !2246
  br i1 %5, label %21, label %6, !dbg !2247

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 2, !dbg !2248
  %8 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 3, !dbg !2249
  %9 = tail call i64 @getdelim(i8** nonnull %7, i64* nonnull %8, i32 0, %struct._IO_FILE* nonnull %4) #32, !dbg !2250
  call void @llvm.dbg.value(metadata i64 %9, metadata !2239, metadata !DIExpression()), !dbg !2251
  %10 = icmp slt i64 %9, 0, !dbg !2252
  br i1 %10, label %11, label %16, !dbg !2254

11:                                               ; preds = %6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2255, !tbaa !2205
  %13 = tail call i32 @feof(%struct._IO_FILE* %12) #32, !dbg !2257
  %14 = icmp eq i32 %13, 0, !dbg !2257
  %15 = select i1 %14, i32 4, i32 2, !dbg !2257
  store i32 %15, i32* %1, align 4, !dbg !2258, !tbaa !1470
  br label %31, !dbg !2259

16:                                               ; preds = %6
  store i32 1, i32* %1, align 4, !dbg !2260, !tbaa !1470
  %17 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 1, !dbg !2261
  %18 = load i64, i64* %17, align 8, !dbg !2262, !tbaa !2263
  %19 = add i64 %18, 1, !dbg !2262
  store i64 %19, i64* %17, align 8, !dbg !2262, !tbaa !2263
  %20 = load i8*, i8** %7, align 8, !dbg !2264, !tbaa !2265
  br label %31, !dbg !2266

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 5, !dbg !2267
  %23 = load i8**, i8*** %22, align 8, !dbg !2267, !tbaa !2212
  %24 = load i8*, i8** %23, align 8, !dbg !2270, !tbaa !1122
  %25 = icmp eq i8* %24, null, !dbg !2271
  br i1 %25, label %26, label %27, !dbg !2272

26:                                               ; preds = %21
  store i32 2, i32* %1, align 4, !dbg !2273, !tbaa !1470
  br label %31, !dbg !2275

27:                                               ; preds = %21
  store i32 1, i32* %1, align 4, !dbg !2276, !tbaa !1470
  %28 = load i8**, i8*** %22, align 8, !dbg !2278, !tbaa !2212
  %29 = getelementptr inbounds i8*, i8** %28, i64 1, !dbg !2278
  store i8** %29, i8*** %22, align 8, !dbg !2278, !tbaa !2212
  %30 = load i8*, i8** %28, align 8, !dbg !2279, !tbaa !1122
  br label %31, !dbg !2280

31:                                               ; preds = %11, %16, %27, %26
  %32 = phi i8* [ null, %26 ], [ %30, %27 ], [ null, %11 ], [ %20, %16 ], !dbg !2281
  ret i8* %32, !dbg !2282
}

declare !dbg !2283 i64 @getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !2287 noundef i32 @feof(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @argv_iter_n_args(%struct.argv_iterator* nocapture nonnull readonly %0) local_unnamed_addr #18 !dbg !2290 {
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %0, metadata !2296, metadata !DIExpression()), !dbg !2297
  %2 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 0, !dbg !2298
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !2298, !tbaa !2205
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !2299
  br i1 %4, label %8, label %5, !dbg !2299

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 1, !dbg !2300
  %7 = load i64, i64* %6, align 8, !dbg !2300, !tbaa !2263
  br label %17, !dbg !2299

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 5, !dbg !2301
  %10 = load i8**, i8*** %9, align 8, !dbg !2301, !tbaa !2212
  %11 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 4, !dbg !2302
  %12 = load i8**, i8*** %11, align 8, !dbg !2302, !tbaa !2209
  %13 = ptrtoint i8** %10 to i64, !dbg !2303
  %14 = ptrtoint i8** %12 to i64, !dbg !2303
  %15 = sub i64 %13, %14, !dbg !2303
  %16 = ashr exact i64 %15, 3, !dbg !2303
  br label %17, !dbg !2299

17:                                               ; preds = %8, %5
  %18 = phi i64 [ %7, %5 ], [ %16, %8 ], !dbg !2299
  ret i64 %18, !dbg !2304
}

; Function Attrs: nounwind sspstrong uwtable willreturn
define dso_local void @argv_iter_free(%struct.argv_iterator* nocapture nonnull %0) local_unnamed_addr #19 !dbg !2305 {
  call void @llvm.dbg.value(metadata %struct.argv_iterator* %0, metadata !2309, metadata !DIExpression()), !dbg !2310
  %2 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 0, !dbg !2311
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !2311, !tbaa !2205
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !2313
  br i1 %4, label %8, label %5, !dbg !2314

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.argv_iterator, %struct.argv_iterator* %0, i64 0, i32 2, !dbg !2315
  %7 = load i8*, i8** %6, align 8, !dbg !2315, !tbaa !2265
  tail call void @free(i8* %7) #32, !dbg !2316
  br label %8, !dbg !2316

8:                                                ; preds = %5, %1
  %9 = bitcast %struct.argv_iterator* %0 to i8*, !dbg !2317
  tail call void @free(i8* nonnull %9) #32, !dbg !2318
  ret void, !dbg !2319
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #20 !dbg !2320 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2322, metadata !DIExpression()), !dbg !2323
  store i8* %0, i8** @file_name, align 8, !dbg !2324, !tbaa !1122
  ret void, !dbg !2325
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #20 !dbg !2326 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2330, metadata !DIExpression()), !dbg !2331
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2332, !tbaa !1219
  ret void, !dbg !2333
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !2334 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2339, !tbaa !1122
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #32, !dbg !2340
  %3 = icmp eq i32 %2, 0, !dbg !2341
  br i1 %3, label %22, label %4, !dbg !2342

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2343, !tbaa !1219, !range !1956
  %6 = icmp eq i8 %5, 0, !dbg !2343
  br i1 %6, label %11, label %7, !dbg !2344

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #35, !dbg !2345
  %9 = load i32, i32* %8, align 4, !dbg !2345, !tbaa !1268
  %10 = icmp eq i32 %9, 32, !dbg !2346
  br i1 %10, label %22, label %11, !dbg !2347

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0), i32 5) #32, !dbg !2348
  call void @llvm.dbg.value(metadata i8* %12, metadata !2336, metadata !DIExpression()), !dbg !2349
  %13 = load i8*, i8** @file_name, align 8, !dbg !2350, !tbaa !1122
  %14 = icmp eq i8* %13, null, !dbg !2350
  %15 = tail call i32* @__errno_location() #35, !dbg !2352
  %16 = load i32, i32* %15, align 4, !dbg !2352, !tbaa !1268
  br i1 %14, label %19, label %17, !dbg !2353

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #32, !dbg !2354
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.71, i64 0, i64 0), i8* %18, i8* %12) #32, !dbg !2355
  br label %20, !dbg !2355

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.72, i64 0, i64 0), i8* %12) #32, !dbg !2356
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2357, !tbaa !1268
  tail call void @_exit(i32 %21) #34, !dbg !2358
  unreachable, !dbg !2358

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2359, !tbaa !1122
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #32, !dbg !2361
  %25 = icmp eq i32 %24, 0, !dbg !2362
  br i1 %25, label %28, label %26, !dbg !2363

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2364, !tbaa !1268
  tail call void @_exit(i32 %27) #34, !dbg !2365
  unreachable, !dbg !2365

28:                                               ; preds = %22
  ret void, !dbg !2366
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !2367 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2372, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i64 %1, metadata !2373, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i64 %2, metadata !2374, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i32 %3, metadata !2375, metadata !DIExpression()), !dbg !2378
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #32, !dbg !2379
  call void @llvm.dbg.value(metadata i32 %5, metadata !2376, metadata !DIExpression()), !dbg !2380
  ret void, !dbg !2381
}

; Function Attrs: nounwind
declare !dbg !2382 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !2385 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2423, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 %1, metadata !2424, metadata !DIExpression()), !dbg !2425
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2426
  br i1 %3, label %7, label %4, !dbg !2428

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #32, !dbg !2429
  call void @llvm.dbg.value(metadata i32 %5, metadata !2372, metadata !DIExpression()) #32, !dbg !2430
  call void @llvm.dbg.value(metadata i64 0, metadata !2373, metadata !DIExpression()) #32, !dbg !2430
  call void @llvm.dbg.value(metadata i64 0, metadata !2374, metadata !DIExpression()) #32, !dbg !2430
  call void @llvm.dbg.value(metadata i32 %1, metadata !2375, metadata !DIExpression()) #32, !dbg !2430
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #32, !dbg !2432
  call void @llvm.dbg.value(metadata i32 %6, metadata !2376, metadata !DIExpression()) #32, !dbg !2433
  br label %7, !dbg !2434

7:                                                ; preds = %4, %2
  ret void, !dbg !2435
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @umaxtostr(i64 %0, i8* %1) local_unnamed_addr #22 !dbg !2436 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2441, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8* %1, metadata !2442, metadata !DIExpression()), !dbg !2444
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2445
  call void @llvm.dbg.value(metadata i8* %3, metadata !2443, metadata !DIExpression()), !dbg !2444
  store i8 0, i8* %3, align 1, !dbg !2446, !tbaa !1470
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !2444
  call void @llvm.dbg.value(metadata i8* %6, metadata !2443, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i64 %5, metadata !2441, metadata !DIExpression()), !dbg !2444
  %7 = urem i64 %5, 10, !dbg !2447
  %8 = trunc i64 %7 to i8, !dbg !2450
  %9 = or i8 %8, 48, !dbg !2450
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !2451
  call void @llvm.dbg.value(metadata i8* %10, metadata !2443, metadata !DIExpression()), !dbg !2444
  store i8 %9, i8* %10, align 1, !dbg !2452, !tbaa !1470
  %11 = udiv i64 %5, 10, !dbg !2453
  call void @llvm.dbg.value(metadata i64 %11, metadata !2441, metadata !DIExpression()), !dbg !2444
  %12 = icmp ult i64 %5, 10, !dbg !2454
  br i1 %12, label %13, label %4, !dbg !2455, !llvm.loop !2456

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !2443, metadata !DIExpression()), !dbg !2444
  ret i8* %10, !dbg !2459
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local i32 @mb_width_aux(i32 %0) local_unnamed_addr #23 !dbg !2460 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2462, metadata !DIExpression()), !dbg !2464
  %2 = tail call i32 @wcwidth(i32 %0) #32, !dbg !2465
  call void @llvm.dbg.value(metadata i32 %2, metadata !2463, metadata !DIExpression()), !dbg !2464
  %3 = icmp sgt i32 %2, -1, !dbg !2466
  br i1 %3, label %8, label %4, !dbg !2467

4:                                                ; preds = %1
  %5 = tail call i32 @iswcntrl(i32 %0) #32, !dbg !2468
  %6 = icmp eq i32 %5, 0, !dbg !2468
  %7 = zext i1 %6 to i32, !dbg !2468
  br label %8, !dbg !2467

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ %2, %1 ], !dbg !2467
  ret i32 %9, !dbg !2469
}

; Function Attrs: nounwind
declare !dbg !2470 i32 @iswcntrl(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nofree nounwind sspstrong uwtable
define dso_local void @mb_copy(%struct.mbchar* %0, %struct.mbchar* %1) local_unnamed_addr #24 !dbg !2471 {
  call void @llvm.dbg.value(metadata %struct.mbchar* %0, metadata !2489, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata %struct.mbchar* %1, metadata !2490, metadata !DIExpression()), !dbg !2491
  %3 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 0, !dbg !2492
  %4 = load i8*, i8** %3, align 8, !dbg !2492, !tbaa !2494
  %5 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 4, i64 0, !dbg !2496
  %6 = icmp eq i8* %4, %5, !dbg !2497
  br i1 %6, label %7, label %11, !dbg !2498

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 4, i64 0, !dbg !2499
  %9 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 1, !dbg !2501
  %10 = load i64, i64* %9, align 8, !dbg !2501, !tbaa !2502
  call void @llvm.dbg.value(metadata i8* %8, metadata !2503, metadata !DIExpression()) #32, !dbg !2512
  call void @llvm.dbg.value(metadata i8* %5, metadata !2510, metadata !DIExpression()) #32, !dbg !2512
  call void @llvm.dbg.value(metadata i64 %10, metadata !2511, metadata !DIExpression()) #32, !dbg !2512
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %8, i8* nonnull align 1 %4, i64 %10, i1 false) #32, !dbg !2514
  br label %11, !dbg !2515

11:                                               ; preds = %2, %7
  %12 = phi i8* [ %8, %7 ], [ %4, %2 ], !dbg !2516
  %13 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 0, !dbg !2517
  store i8* %12, i8** %13, align 8, !dbg !2518
  %14 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 1, !dbg !2519
  %15 = load i64, i64* %14, align 8, !dbg !2519, !tbaa !2502
  %16 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 1, !dbg !2520
  store i64 %15, i64* %16, align 8, !dbg !2521, !tbaa !2502
  %17 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 2, !dbg !2522
  %18 = load i8, i8* %17, align 8, !dbg !2522, !tbaa !2524, !range !1956
  %19 = icmp eq i8 %18, 0, !dbg !2522
  %20 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 2, !dbg !2525
  store i8 %18, i8* %20, align 8, !dbg !2526, !tbaa !2524
  br i1 %19, label %25, label %21, !dbg !2527

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 3, !dbg !2528
  %23 = load i32, i32* %22, align 4, !dbg !2528, !tbaa !2529
  %24 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 3, !dbg !2530
  store i32 %23, i32* %24, align 4, !dbg !2531, !tbaa !2529
  br label %25, !dbg !2532

25:                                               ; preds = %21, %11
  ret void, !dbg !2533
}

; Function Attrs: inlinehint norecurse nounwind readnone sspstrong uwtable willreturn
define dso_local zeroext i1 @is_basic(i8 signext %0) local_unnamed_addr #25 !dbg !2534 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2536, metadata !DIExpression()), !dbg !2537
  %2 = zext i8 %0 to i32, !dbg !2538
  %3 = lshr i32 %2, 5, !dbg !2539
  %4 = zext i32 %3 to i64, !dbg !2540
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @is_basic_table, i64 0, i64 %4, !dbg !2540
  %6 = load i32, i32* %5, align 4, !dbg !2540, !tbaa !1268
  %7 = and i32 %2, 31, !dbg !2541
  %8 = shl nuw i32 1, %7, !dbg !2542
  %9 = and i32 %6, %8, !dbg !2542
  %10 = icmp ne i32 %9, 0, !dbg !2542
  ret i1 %10, !dbg !2543
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @physmem_total() local_unnamed_addr #8 !dbg !2544 {
  %1 = alloca %struct.sysinfo, align 8
  %2 = tail call i64 @sysconf(i32 85) #32, !dbg !2579
  call void @llvm.dbg.value(metadata double undef, metadata !2547, metadata !DIExpression()), !dbg !2580
  %3 = tail call i64 @sysconf(i32 30) #32, !dbg !2581
  call void @llvm.dbg.value(metadata double undef, metadata !2549, metadata !DIExpression()), !dbg !2580
  %4 = or i64 %3, %2, !dbg !2582
  %5 = icmp sgt i64 %4, -1, !dbg !2582
  br i1 %5, label %20, label %6

6:                                                ; preds = %0
  %7 = bitcast %struct.sysinfo* %1 to i8*, !dbg !2584
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %7) #32, !dbg !2584
  call void @llvm.dbg.declare(metadata %struct.sysinfo* %1, metadata !2550, metadata !DIExpression()), !dbg !2585
  %8 = call i32 @sysinfo(%struct.sysinfo* nonnull %1) #32, !dbg !2586
  %9 = icmp eq i32 %8, 0, !dbg !2588
  br i1 %9, label %10, label %18, !dbg !2589

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i64 0, i32 2, !dbg !2590
  %12 = load i64, i64* %11, align 8, !dbg !2590, !tbaa !2591
  %13 = uitofp i64 %12 to double, !dbg !2593
  %14 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i64 0, i32 12, !dbg !2594
  %15 = load i32, i32* %14, align 8, !dbg !2594, !tbaa !2595
  %16 = uitofp i32 %15 to double, !dbg !2596
  %17 = fmul double %13, %16, !dbg !2597
  br label %18, !dbg !2598

18:                                               ; preds = %6, %10
  %19 = phi double [ 0x4190000000000000, %6 ], [ %17, %10 ], !dbg !2599
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %7) #32, !dbg !2600
  ret double %19

20:                                               ; preds = %0
  %21 = sitofp i64 %2 to double, !dbg !2582
  %22 = sitofp i64 %3 to double, !dbg !2582
  %23 = fmul double %21, %22, !dbg !2582
  ret double %23, !dbg !2601
}

; Function Attrs: nounwind
declare !dbg !2602 i64 @sysconf(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2605 i32 @sysinfo(%struct.sysinfo*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @physmem_available() local_unnamed_addr #8 !dbg !2610 {
  %1 = alloca %struct.sysinfo, align 8
  %2 = alloca %struct.sysinfo, align 8
  %3 = tail call i64 @sysconf(i32 86) #32, !dbg !2617
  call void @llvm.dbg.value(metadata double undef, metadata !2612, metadata !DIExpression()), !dbg !2618
  %4 = tail call i64 @sysconf(i32 30) #32, !dbg !2619
  call void @llvm.dbg.value(metadata double undef, metadata !2614, metadata !DIExpression()), !dbg !2618
  %5 = or i64 %4, %3, !dbg !2620
  %6 = icmp sgt i64 %5, -1, !dbg !2620
  %7 = sitofp i64 %4 to double, !dbg !2620
  %8 = sitofp i64 %3 to double, !dbg !2620
  %9 = fmul double %8, %7, !dbg !2620
  br i1 %6, label %52, label %10

10:                                               ; preds = %0
  %11 = bitcast %struct.sysinfo* %2 to i8*, !dbg !2622
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %11) #32, !dbg !2622
  call void @llvm.dbg.declare(metadata %struct.sysinfo* %2, metadata !2615, metadata !DIExpression()), !dbg !2623
  %12 = call i32 @sysinfo(%struct.sysinfo* nonnull %2) #32, !dbg !2624
  %13 = icmp eq i32 %12, 0, !dbg !2626
  br i1 %13, label %14, label %26, !dbg !2627

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %2, i64 0, i32 3, !dbg !2628
  %16 = load i64, i64* %15, align 8, !dbg !2628, !tbaa !2629
  %17 = uitofp i64 %16 to double, !dbg !2630
  %18 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %2, i64 0, i32 5, !dbg !2631
  %19 = load i64, i64* %18, align 8, !dbg !2631, !tbaa !2632
  %20 = uitofp i64 %19 to double, !dbg !2633
  %21 = fadd double %17, %20, !dbg !2634
  %22 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %2, i64 0, i32 12, !dbg !2635
  %23 = load i32, i32* %22, align 8, !dbg !2635, !tbaa !2595
  %24 = uitofp i32 %23 to double, !dbg !2636
  %25 = fmul double %21, %24, !dbg !2637
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #32, !dbg !2638
  br label %52

26:                                               ; preds = %10
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %11) #32, !dbg !2638
  %27 = call i64 @sysconf(i32 85) #32, !dbg !2639
  call void @llvm.dbg.value(metadata double undef, metadata !2547, metadata !DIExpression()) #32, !dbg !2641
  %28 = call i64 @sysconf(i32 30) #32, !dbg !2642
  call void @llvm.dbg.value(metadata double undef, metadata !2549, metadata !DIExpression()) #32, !dbg !2641
  %29 = or i64 %28, %27, !dbg !2643
  %30 = icmp sgt i64 %29, -1, !dbg !2643
  br i1 %30, label %45, label %31

31:                                               ; preds = %26
  %32 = bitcast %struct.sysinfo* %1 to i8*, !dbg !2644
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %32) #32, !dbg !2644
  call void @llvm.dbg.declare(metadata %struct.sysinfo* %1, metadata !2550, metadata !DIExpression()) #32, !dbg !2645
  %33 = call i32 @sysinfo(%struct.sysinfo* nonnull %1) #32, !dbg !2646
  %34 = icmp eq i32 %33, 0, !dbg !2647
  br i1 %34, label %35, label %43, !dbg !2648

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i64 0, i32 2, !dbg !2649
  %37 = load i64, i64* %36, align 8, !dbg !2649, !tbaa !2591
  %38 = uitofp i64 %37 to double, !dbg !2650
  %39 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i64 0, i32 12, !dbg !2651
  %40 = load i32, i32* %39, align 8, !dbg !2651, !tbaa !2595
  %41 = uitofp i32 %40 to double, !dbg !2652
  %42 = fmul double %38, %41, !dbg !2653
  br label %43, !dbg !2654

43:                                               ; preds = %35, %31
  %44 = phi double [ 0x4190000000000000, %31 ], [ %42, %35 ], !dbg !2655
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %32) #32, !dbg !2656
  br label %49

45:                                               ; preds = %26
  %46 = sitofp i64 %27 to double, !dbg !2643
  %47 = sitofp i64 %28 to double, !dbg !2643
  %48 = fmul double %46, %47, !dbg !2643
  br label %49, !dbg !2657

49:                                               ; preds = %45, %43
  %50 = phi double [ %44, %43 ], [ %48, %45 ]
  %51 = fmul double %50, 2.500000e-01, !dbg !2658
  br label %52, !dbg !2659

52:                                               ; preds = %14, %0, %49
  %53 = phi double [ %51, %49 ], [ %9, %0 ], [ %25, %14 ], !dbg !2660
  ret double %53, !dbg !2661
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2662 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2664, metadata !DIExpression()), !dbg !2667
  %2 = icmp eq i8* %0, null, !dbg !2668
  br i1 %2, label %3, label %6, !dbg !2670

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2671, !tbaa !1122
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.87, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #37, !dbg !2673
  tail call void @abort() #34, !dbg !2674
  unreachable, !dbg !2674

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #33, !dbg !2675
  call void @llvm.dbg.value(metadata i8* %7, metadata !2665, metadata !DIExpression()), !dbg !2667
  %8 = icmp eq i8* %7, null, !dbg !2676
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2677
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2677
  call void @llvm.dbg.value(metadata i8* %10, metadata !2666, metadata !DIExpression()), !dbg !2667
  %11 = ptrtoint i8* %10 to i64, !dbg !2678
  %12 = ptrtoint i8* %0 to i64, !dbg !2678
  %13 = sub i64 %11, %12, !dbg !2678
  %14 = icmp sgt i64 %13, 6, !dbg !2680
  br i1 %14, label %15, label %24, !dbg !2681

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2682
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.88, i64 0, i64 0), i64 7) #33, !dbg !2683
  %18 = icmp eq i32 %17, 0, !dbg !2684
  br i1 %18, label %19, label %24, !dbg !2685

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2664, metadata !DIExpression()), !dbg !2667
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.89, i64 0, i64 0), i64 3) #33, !dbg !2686
  %21 = icmp eq i32 %20, 0, !dbg !2689
  br i1 %21, label %22, label %24, !dbg !2690

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2691
  call void @llvm.dbg.value(metadata i8* %23, metadata !2664, metadata !DIExpression()), !dbg !2667
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2693, !tbaa !1122
  br label %24, !dbg !2694

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2664, metadata !DIExpression()), !dbg !2667
  store i8* %25, i8** @program_name, align 8, !dbg !2695, !tbaa !1122
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2696, !tbaa !1122
  ret void, !dbg !2697
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #26

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2698 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2703, metadata !DIExpression()), !dbg !2706
  %2 = tail call i32* @__errno_location() #35, !dbg !2707
  %3 = load i32, i32* %2, align 4, !dbg !2707, !tbaa !1268
  call void @llvm.dbg.value(metadata i32 %3, metadata !2704, metadata !DIExpression()), !dbg !2706
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2708
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2708
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2708
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #32, !dbg !2709
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2709
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2705, metadata !DIExpression()), !dbg !2706
  store i32 %3, i32* %2, align 4, !dbg !2710, !tbaa !1268
  ret %struct.quoting_options* %8, !dbg !2711
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #18 !dbg !2712 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2718, metadata !DIExpression()), !dbg !2719
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2720
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2720
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2721
  %5 = load i32, i32* %4, align 8, !dbg !2721, !tbaa !2722
  ret i32 %5, !dbg !2724
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #20 !dbg !2725 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2729, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i32 %1, metadata !2730, metadata !DIExpression()), !dbg !2731
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2732
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2732
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2733
  store i32 %1, i32* %5, align 8, !dbg !2734, !tbaa !2722
  ret void, !dbg !2735
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #27 !dbg !2736 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2740, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %1, metadata !2741, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 %2, metadata !2742, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %1, metadata !2743, metadata !DIExpression()), !dbg !2748
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2749
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2749
  %6 = lshr i8 %1, 5, !dbg !2750
  %7 = zext i8 %6 to i64, !dbg !2750
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2751
  call void @llvm.dbg.value(metadata i32* %8, metadata !2744, metadata !DIExpression()), !dbg !2748
  %9 = and i8 %1, 31, !dbg !2752
  %10 = zext i8 %9 to i32, !dbg !2752
  call void @llvm.dbg.value(metadata i32 %10, metadata !2746, metadata !DIExpression()), !dbg !2748
  %11 = load i32, i32* %8, align 4, !dbg !2753, !tbaa !1268
  %12 = lshr i32 %11, %10, !dbg !2754
  %13 = and i32 %12, 1, !dbg !2755
  call void @llvm.dbg.value(metadata i32 %13, metadata !2747, metadata !DIExpression()), !dbg !2748
  %14 = and i32 %2, 1, !dbg !2756
  %15 = xor i32 %13, %14, !dbg !2757
  %16 = shl i32 %15, %10, !dbg !2758
  %17 = xor i32 %16, %11, !dbg !2759
  store i32 %17, i32* %8, align 4, !dbg !2759, !tbaa !1268
  ret i32 %13, !dbg !2760
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #27 !dbg !2761 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2765, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i32 %1, metadata !2766, metadata !DIExpression()), !dbg !2768
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2769
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2771
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2765, metadata !DIExpression()), !dbg !2768
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2772
  %6 = load i32, i32* %5, align 4, !dbg !2772, !tbaa !2773
  call void @llvm.dbg.value(metadata i32 %6, metadata !2767, metadata !DIExpression()), !dbg !2768
  store i32 %1, i32* %5, align 4, !dbg !2774, !tbaa !2773
  ret i32 %6, !dbg !2775
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2776 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2780, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i8* %1, metadata !2781, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i8* %2, metadata !2782, metadata !DIExpression()), !dbg !2783
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2784
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2786
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2780, metadata !DIExpression()), !dbg !2783
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2787
  store i32 10, i32* %6, align 8, !dbg !2788, !tbaa !2722
  %7 = icmp ne i8* %1, null, !dbg !2789
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2791
  br i1 %9, label %11, label %10, !dbg !2791

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !2792
  unreachable, !dbg !2792

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2793
  store i8* %1, i8** %12, align 8, !dbg !2794, !tbaa !2795
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2796
  store i8* %2, i8** %13, align 8, !dbg !2797, !tbaa !2798
  ret void, !dbg !2799
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2800 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2804, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i64 %1, metadata !2805, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i8* %2, metadata !2806, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i64 %3, metadata !2807, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2808, metadata !DIExpression()), !dbg !2812
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2813
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2813
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2809, metadata !DIExpression()), !dbg !2812
  %8 = tail call i32* @__errno_location() #35, !dbg !2814
  %9 = load i32, i32* %8, align 4, !dbg !2814, !tbaa !1268
  call void @llvm.dbg.value(metadata i32 %9, metadata !2810, metadata !DIExpression()), !dbg !2812
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2815
  %11 = load i32, i32* %10, align 8, !dbg !2815, !tbaa !2722
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2816
  %13 = load i32, i32* %12, align 4, !dbg !2816, !tbaa !2773
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2817
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2818
  %16 = load i8*, i8** %15, align 8, !dbg !2818, !tbaa !2795
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2819
  %18 = load i8*, i8** %17, align 8, !dbg !2819, !tbaa !2798
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2820
  call void @llvm.dbg.value(metadata i64 %19, metadata !2811, metadata !DIExpression()), !dbg !2812
  store i32 %9, i32* %8, align 4, !dbg !2821, !tbaa !1268
  ret i64 %19, !dbg !2822
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2823 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2828, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %1, metadata !2829, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8* %2, metadata !2830, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %3, metadata !2831, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i32 %4, metadata !2832, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i32 %5, metadata !2833, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i32* %6, metadata !2834, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8* %7, metadata !2835, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8* %8, metadata !2836, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 0, metadata !2838, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 0, metadata !2839, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8* null, metadata !2840, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 0, metadata !2841, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 0, metadata !2842, metadata !DIExpression()), !dbg !2892
  %13 = tail call i64 @__ctype_get_mb_cur_max() #32, !dbg !2893
  %14 = icmp eq i64 %13, 1, !dbg !2894
  call void @llvm.dbg.value(metadata i1 %14, metadata !2843, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2892
  %15 = lshr i32 %5, 1, !dbg !2895
  %16 = trunc i32 %15 to i8, !dbg !2895
  %17 = and i8 %16, 1, !dbg !2895
  call void @llvm.dbg.value(metadata i8 %17, metadata !2844, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 0, metadata !2845, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 0, metadata !2846, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 1, metadata !2847, metadata !DIExpression()), !dbg !2892
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !2896

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !2897
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !2898
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !2899
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !2900
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !2892
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !2901
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !2902
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !2903
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2829, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %38, metadata !2847, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %37, metadata !2846, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %36, metadata !2845, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %35, metadata !2844, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %34, metadata !2831, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %33, metadata !2842, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %32, metadata !2841, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8* %31, metadata !2840, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %30, metadata !2839, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 0, metadata !2838, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8* %29, metadata !2836, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8* %28, metadata !2835, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i32 %27, metadata !2832, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.label(metadata !2886), !dbg !2904
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
  ], !dbg !2905

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2844, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i32 5, metadata !2832, metadata !DIExpression()), !dbg !2892
  br label %92, !dbg !2906

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2844, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i32 5, metadata !2832, metadata !DIExpression()), !dbg !2892
  %42 = and i8 %35, 1, !dbg !2908
  %43 = icmp eq i8 %42, 0, !dbg !2908
  br i1 %43, label %44, label %92, !dbg !2906

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2910
  br i1 %45, label %92, label %46, !dbg !2913

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2910, !tbaa !1470
  br label %92, !dbg !2910

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.100, i64 0, i64 0), i32 %27), !dbg !2914
  call void @llvm.dbg.value(metadata i8* %48, metadata !2835, metadata !DIExpression()), !dbg !2892
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), i32 %27), !dbg !2918
  call void @llvm.dbg.value(metadata i8* %49, metadata !2836, metadata !DIExpression()), !dbg !2892
  br label %50, !dbg !2919

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2836, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8* %51, metadata !2835, metadata !DIExpression()), !dbg !2892
  %53 = and i8 %35, 1, !dbg !2920
  %54 = icmp eq i8 %53, 0, !dbg !2920
  br i1 %54, label %55, label %70, !dbg !2922

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2840, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 0, metadata !2838, metadata !DIExpression()), !dbg !2892
  %56 = load i8, i8* %51, align 1, !dbg !2923, !tbaa !1470
  %57 = icmp eq i8 %56, 0, !dbg !2926
  br i1 %57, label %70, label %58, !dbg !2926

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2840, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %61, metadata !2838, metadata !DIExpression()), !dbg !2892
  %62 = icmp ult i64 %61, %39, !dbg !2927
  br i1 %62, label %63, label %65, !dbg !2930

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2927
  store i8 %59, i8* %64, align 1, !dbg !2927, !tbaa !1470
  br label %65, !dbg !2927

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2930
  call void @llvm.dbg.value(metadata i64 %66, metadata !2838, metadata !DIExpression()), !dbg !2892
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2931
  call void @llvm.dbg.value(metadata i8* %67, metadata !2840, metadata !DIExpression()), !dbg !2892
  %68 = load i8, i8* %67, align 1, !dbg !2923, !tbaa !1470
  %69 = icmp eq i8 %68, 0, !dbg !2926
  br i1 %69, label %70, label %58, !dbg !2926, !llvm.loop !2932

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2934
  call void @llvm.dbg.value(metadata i64 %71, metadata !2838, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 1, metadata !2842, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8* %52, metadata !2840, metadata !DIExpression()), !dbg !2892
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #33, !dbg !2935
  call void @llvm.dbg.value(metadata i64 %72, metadata !2841, metadata !DIExpression()), !dbg !2892
  br label %92, !dbg !2936

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2842, metadata !DIExpression()), !dbg !2892
  br label %74, !dbg !2937

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2892
  call void @llvm.dbg.value(metadata i8 %75, metadata !2842, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 1, metadata !2844, metadata !DIExpression()), !dbg !2892
  br label %76, !dbg !2938

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2900
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2892
  call void @llvm.dbg.value(metadata i8 %78, metadata !2844, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %77, metadata !2842, metadata !DIExpression()), !dbg !2892
  %79 = and i8 %78, 1, !dbg !2939
  %80 = icmp eq i8 %79, 0, !dbg !2939
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2941
  br label %82, !dbg !2941

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2892
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2895
  call void @llvm.dbg.value(metadata i8 %84, metadata !2844, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %83, metadata !2842, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i32 2, metadata !2832, metadata !DIExpression()), !dbg !2892
  %85 = and i8 %84, 1, !dbg !2942
  %86 = icmp eq i8 %85, 0, !dbg !2942
  br i1 %86, label %87, label %92, !dbg !2944

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2945
  br i1 %88, label %92, label %89, !dbg !2948

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2945, !tbaa !1470
  br label %92, !dbg !2945

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2844, metadata !DIExpression()), !dbg !2892
  br label %92, !dbg !2949

91:                                               ; preds = %26
  call void @abort() #34, !dbg !2950
  unreachable, !dbg !2950

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !2934
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), %40 ], !dbg !2892
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !2892
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !2892
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !2892
  call void @llvm.dbg.value(metadata i8 %100, metadata !2844, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %99, metadata !2842, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %98, metadata !2841, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8* %97, metadata !2840, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %96, metadata !2838, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8* %95, metadata !2836, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8* %94, metadata !2835, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i32 %93, metadata !2832, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 0, metadata !2837, metadata !DIExpression()), !dbg !2892
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
  br label %121, !dbg !2951

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !2952
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !2934
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !2897
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !2901
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !2902
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !2903
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2829, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %128, metadata !2847, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %127, metadata !2846, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %126, metadata !2845, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %125, metadata !2831, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %124, metadata !2839, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %123, metadata !2838, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %122, metadata !2837, metadata !DIExpression()), !dbg !2892
  %130 = icmp eq i64 %125, -1, !dbg !2953
  br i1 %130, label %131, label %135, !dbg !2954

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2955
  %133 = load i8, i8* %132, align 1, !dbg !2955, !tbaa !1470
  %134 = icmp eq i8 %133, 0, !dbg !2956
  br i1 %134, label %587, label %137, !dbg !2957

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2958
  br i1 %136, label %587, label %137, !dbg !2957

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2853, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 0, metadata !2854, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 0, metadata !2855, metadata !DIExpression()), !dbg !2959
  br i1 %106, label %138, label %153, !dbg !2960

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2962
  %140 = and i1 %107, %130, !dbg !2963
  br i1 %140, label %141, label %143, !dbg !2963

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #33, !dbg !2964
  call void @llvm.dbg.value(metadata i64 %142, metadata !2831, metadata !DIExpression()), !dbg !2892
  br label %143, !dbg !2965

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2965
  call void @llvm.dbg.value(metadata i64 %144, metadata !2831, metadata !DIExpression()), !dbg !2892
  %145 = icmp ugt i64 %139, %144, !dbg !2966
  br i1 %145, label %153, label %146, !dbg !2967

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2968
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !2969
  %149 = icmp ne i32 %148, 0, !dbg !2970
  %150 = or i1 %149, %109, !dbg !2971
  %151 = xor i1 %149, true, !dbg !2971
  %152 = zext i1 %151 to i8, !dbg !2971
  br i1 %150, label %153, label %646, !dbg !2971

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !2959
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2959
  call void @llvm.dbg.value(metadata i8 %156, metadata !2853, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i64 %154, metadata !2831, metadata !DIExpression()), !dbg !2892
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2972
  %158 = load i8, i8* %157, align 1, !dbg !2972, !tbaa !1470
  call void @llvm.dbg.value(metadata i8 %158, metadata !2848, metadata !DIExpression()), !dbg !2959
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
  ], !dbg !2973

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !2974

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !2975

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2854, metadata !DIExpression()), !dbg !2959
  %162 = and i8 %126, 1, !dbg !2979
  %163 = icmp eq i8 %162, 0, !dbg !2979
  %164 = and i1 %110, %163, !dbg !2979
  br i1 %164, label %165, label %181, !dbg !2979

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2981
  br i1 %166, label %167, label %169, !dbg !2985

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2981
  store i8 39, i8* %168, align 1, !dbg !2981, !tbaa !1470
  br label %169, !dbg !2981

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2985
  call void @llvm.dbg.value(metadata i64 %170, metadata !2838, metadata !DIExpression()), !dbg !2892
  %171 = icmp ult i64 %170, %129, !dbg !2986
  br i1 %171, label %172, label %174, !dbg !2989

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2986
  store i8 36, i8* %173, align 1, !dbg !2986, !tbaa !1470
  br label %174, !dbg !2986

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2989
  call void @llvm.dbg.value(metadata i64 %175, metadata !2838, metadata !DIExpression()), !dbg !2892
  %176 = icmp ult i64 %175, %129, !dbg !2990
  br i1 %176, label %177, label %179, !dbg !2993

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2990
  store i8 39, i8* %178, align 1, !dbg !2990, !tbaa !1470
  br label %179, !dbg !2990

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2993
  call void @llvm.dbg.value(metadata i64 %180, metadata !2838, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 1, metadata !2845, metadata !DIExpression()), !dbg !2892
  br label %181, !dbg !2994

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !2892
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !2892
  call void @llvm.dbg.value(metadata i8 %183, metadata !2845, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %182, metadata !2838, metadata !DIExpression()), !dbg !2892
  %184 = icmp ult i64 %182, %129, !dbg !2995
  br i1 %184, label %185, label %187, !dbg !2998

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2995
  store i8 92, i8* %186, align 1, !dbg !2995, !tbaa !1470
  br label %187, !dbg !2995

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2998
  call void @llvm.dbg.value(metadata i64 %188, metadata !2838, metadata !DIExpression()), !dbg !2892
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2999
  br i1 %191, label %192, label %473, !dbg !2999

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !3001
  %194 = load i8, i8* %193, align 1, !dbg !3001, !tbaa !1470
  %195 = add i8 %194, -48, !dbg !3002
  %196 = icmp ult i8 %195, 10, !dbg !3002
  br i1 %196, label %197, label %473, !dbg !3002

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !3003
  br i1 %198, label %199, label %201, !dbg !3007

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !3003
  store i8 48, i8* %200, align 1, !dbg !3003, !tbaa !1470
  br label %201, !dbg !3003

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !3007
  call void @llvm.dbg.value(metadata i64 %202, metadata !2838, metadata !DIExpression()), !dbg !2892
  %203 = icmp ult i64 %202, %129, !dbg !3008
  br i1 %203, label %204, label %206, !dbg !3011

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !3008
  store i8 48, i8* %205, align 1, !dbg !3008, !tbaa !1470
  br label %206, !dbg !3008

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !3011
  call void @llvm.dbg.value(metadata i64 %207, metadata !2838, metadata !DIExpression()), !dbg !2892
  br label %473, !dbg !3012

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !3013

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !3014

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !3015

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !3017
  br i1 %214, label %215, label %473, !dbg !3017

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !3019
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !3020
  %218 = load i8, i8* %217, align 1, !dbg !3020, !tbaa !1470
  %219 = icmp eq i8 %218, 63, !dbg !3021
  br i1 %219, label %220, label %473, !dbg !3022

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !3023
  %222 = load i8, i8* %221, align 1, !dbg !3023, !tbaa !1470
  %223 = sext i8 %222 to i32, !dbg !3023
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
  ], !dbg !3024

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !3025

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2848, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i64 undef, metadata !2837, metadata !DIExpression()), !dbg !2892
  %226 = icmp ult i64 %123, %129, !dbg !3027
  br i1 %226, label %227, label %229, !dbg !3030

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !3027
  store i8 63, i8* %228, align 1, !dbg !3027, !tbaa !1470
  br label %229, !dbg !3027

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !3030
  call void @llvm.dbg.value(metadata i64 %230, metadata !2838, metadata !DIExpression()), !dbg !2892
  %231 = icmp ult i64 %230, %129, !dbg !3031
  br i1 %231, label %232, label %234, !dbg !3034

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !3031
  store i8 34, i8* %233, align 1, !dbg !3031, !tbaa !1470
  br label %234, !dbg !3031

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !3034
  call void @llvm.dbg.value(metadata i64 %235, metadata !2838, metadata !DIExpression()), !dbg !2892
  %236 = icmp ult i64 %235, %129, !dbg !3035
  br i1 %236, label %237, label %239, !dbg !3038

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !3035
  store i8 34, i8* %238, align 1, !dbg !3035, !tbaa !1470
  br label %239, !dbg !3035

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !3038
  call void @llvm.dbg.value(metadata i64 %240, metadata !2838, metadata !DIExpression()), !dbg !2892
  %241 = icmp ult i64 %240, %129, !dbg !3039
  br i1 %241, label %242, label %244, !dbg !3042

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !3039
  store i8 63, i8* %243, align 1, !dbg !3039, !tbaa !1470
  br label %244, !dbg !3039

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !3042
  call void @llvm.dbg.value(metadata i64 %245, metadata !2838, metadata !DIExpression()), !dbg !2892
  br label %473, !dbg !3043

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2852, metadata !DIExpression()), !dbg !2959
  br label %256, !dbg !3044

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2852, metadata !DIExpression()), !dbg !2959
  br label %256, !dbg !3045

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2852, metadata !DIExpression()), !dbg !2959
  br label %254, !dbg !3046

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2852, metadata !DIExpression()), !dbg !2959
  br label %254, !dbg !3047

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2852, metadata !DIExpression()), !dbg !2959
  br label %256, !dbg !3048

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !2852, metadata !DIExpression()), !dbg !2959
  br i1 %110, label %252, label %253, !dbg !3049

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !3050

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !3053

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !3055
  call void @llvm.dbg.value(metadata i8 %255, metadata !2852, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.label(metadata !2887), !dbg !3056
  br i1 %111, label %256, label %631, !dbg !3057

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !3055
  call void @llvm.dbg.value(metadata i8 %257, metadata !2852, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.label(metadata !2888), !dbg !3059
  br i1 %102, label %495, label %473, !dbg !3060

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !3061

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !3062, !tbaa !1470
  %261 = icmp eq i8 %260, 0, !dbg !3064
  br i1 %261, label %262, label %473, !dbg !3065

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !3066
  br i1 %263, label %264, label %473, !dbg !3068

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2855, metadata !DIExpression()), !dbg !2959
  br label %265, !dbg !3069

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !2959
  call void @llvm.dbg.value(metadata i8 %266, metadata !2855, metadata !DIExpression()), !dbg !2959
  br i1 %111, label %473, label %631, !dbg !3070

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2846, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 1, metadata !2855, metadata !DIExpression()), !dbg !2959
  br i1 %110, label %268, label %473, !dbg !3072

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !3073

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !3076
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !3078
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !3078
  %274 = select i1 %272, i64 %129, i64 0, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %274, metadata !2829, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %273, metadata !2839, metadata !DIExpression()), !dbg !2892
  %275 = icmp ult i64 %123, %274, !dbg !3079
  br i1 %275, label %276, label %278, !dbg !3082

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !3079
  store i8 39, i8* %277, align 1, !dbg !3079, !tbaa !1470
  br label %278, !dbg !3079

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !3082
  call void @llvm.dbg.value(metadata i64 %279, metadata !2838, metadata !DIExpression()), !dbg !2892
  %280 = icmp ult i64 %279, %274, !dbg !3083
  br i1 %280, label %281, label %283, !dbg !3086

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !3083
  store i8 92, i8* %282, align 1, !dbg !3083, !tbaa !1470
  br label %283, !dbg !3083

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !3086
  call void @llvm.dbg.value(metadata i64 %284, metadata !2838, metadata !DIExpression()), !dbg !2892
  %285 = icmp ult i64 %284, %274, !dbg !3087
  br i1 %285, label %286, label %288, !dbg !3090

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !3087
  store i8 39, i8* %287, align 1, !dbg !3087, !tbaa !1470
  br label %288, !dbg !3087

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !3090
  call void @llvm.dbg.value(metadata i64 %289, metadata !2838, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 0, metadata !2845, metadata !DIExpression()), !dbg !2892
  br label %473, !dbg !3091

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !3092

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2856, metadata !DIExpression()), !dbg !3093
  %292 = tail call i16** @__ctype_b_loc() #35, !dbg !3094
  %293 = load i16*, i16** %292, align 8, !dbg !3094, !tbaa !1122
  %294 = zext i8 %158 to i64, !dbg !3094
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !3094
  %296 = load i16, i16* %295, align 2, !dbg !3094, !tbaa !1962
  %297 = lshr i16 %296, 14, !dbg !3096
  %298 = trunc i16 %297 to i8, !dbg !3096
  %299 = and i8 %298, 1, !dbg !3096
  call void @llvm.dbg.value(metadata i8 %354, metadata !2859, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %355, metadata !2856, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %306, metadata !2831, metadata !DIExpression()), !dbg !2892
  %300 = icmp eq i8 %299, 0, !dbg !3097
  call void @llvm.dbg.value(metadata i1 %357, metadata !2855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2959
  br label %359, !dbg !3098

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #32, !dbg !3099
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2860, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8* %23, metadata !3101, metadata !DIExpression()) #32, !dbg !3108
  call void @llvm.dbg.value(metadata i32 0, metadata !3106, metadata !DIExpression()) #32, !dbg !3108
  call void @llvm.dbg.value(metadata i64 8, metadata !3107, metadata !DIExpression()) #32, !dbg !3108
  store i64 0, i64* %10, align 8, !dbg !3110
  call void @llvm.dbg.value(metadata i64 0, metadata !2856, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i8 1, metadata !2859, metadata !DIExpression()), !dbg !3093
  %302 = icmp eq i64 %154, -1, !dbg !3111
  br i1 %302, label %303, label %305, !dbg !3113

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #33, !dbg !3114
  call void @llvm.dbg.value(metadata i64 %304, metadata !2831, metadata !DIExpression()), !dbg !2892
  br label %305, !dbg !3115

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !2959
  call void @llvm.dbg.value(metadata i64 %306, metadata !2831, metadata !DIExpression()), !dbg !2892
  br label %307, !dbg !3116

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !3117
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !3118
  call void @llvm.dbg.value(metadata i8 %309, metadata !2859, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %308, metadata !2856, metadata !DIExpression()), !dbg !3093
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #32, !dbg !3119
  %310 = add i64 %308, %122, !dbg !3120
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !3121
  %312 = sub i64 %306, %310, !dbg !3122
  call void @llvm.dbg.value(metadata i32* %12, metadata !2873, metadata !DIExpression(DW_OP_deref)), !dbg !3123
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #32, !dbg !3124
  call void @llvm.dbg.value(metadata i64 %313, metadata !2875, metadata !DIExpression()), !dbg !3123
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !3125

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !2856, metadata !DIExpression()), !dbg !3093
  %315 = icmp ugt i64 %306, %310, !dbg !3126
  br i1 %315, label %316, label %341, !dbg !3128

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !3129
  br label %318, !dbg !3129

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !2856, metadata !DIExpression()), !dbg !3093
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !3130
  %322 = load i8, i8* %321, align 1, !dbg !3130, !tbaa !1470
  %323 = icmp eq i8 %322, 0, !dbg !3128
  br i1 %323, label %341, label %324, !dbg !3129

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !3131
  call void @llvm.dbg.value(metadata i64 %325, metadata !2856, metadata !DIExpression()), !dbg !3093
  %326 = add i64 %325, %122, !dbg !3132
  %327 = icmp ult i64 %326, %306, !dbg !3126
  br i1 %327, label %318, label %341, !dbg !3128, !llvm.loop !3133

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !3134
  call void @llvm.dbg.value(metadata i64 1, metadata !2876, metadata !DIExpression()), !dbg !3135
  br i1 %330, label %331, label %344, !dbg !3134

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !2876, metadata !DIExpression()), !dbg !3135
  %333 = add i64 %332, %310, !dbg !3136
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !3139
  %335 = load i8, i8* %334, align 1, !dbg !3139, !tbaa !1470
  %336 = sext i8 %335 to i32, !dbg !3139
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !3140

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !3141
  call void @llvm.dbg.value(metadata i64 %338, metadata !2876, metadata !DIExpression()), !dbg !3135
  %339 = icmp eq i64 %338, %313, !dbg !3142
  br i1 %339, label %344, label %331, !dbg !3143, !llvm.loop !3144

340:                                              ; preds = %307
  br label %341, !dbg !3146

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2859, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 undef, metadata !2856, metadata !DIExpression()), !dbg !3093
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #32, !dbg !3146
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !3147, !tbaa !1268
  call void @llvm.dbg.value(metadata i32 %345, metadata !2873, metadata !DIExpression()), !dbg !3123
  %346 = call i32 @iswprint(i32 %345) #32, !dbg !3149
  %347 = icmp eq i32 %346, 0, !dbg !3149
  %348 = select i1 %347, i8 0, i8 %309, !dbg !3150
  call void @llvm.dbg.value(metadata i8 %348, metadata !2859, metadata !DIExpression()), !dbg !3093
  %349 = add i64 %313, %308, !dbg !3151
  call void @llvm.dbg.value(metadata i64 %349, metadata !2856, metadata !DIExpression()), !dbg !3093
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #32, !dbg !3146
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #33, !dbg !3152
  %351 = icmp eq i32 %350, 0, !dbg !3153
  br i1 %351, label %307, label %353, !dbg !3154, !llvm.loop !3155

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !2859, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 undef, metadata !2856, metadata !DIExpression()), !dbg !3093
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #32, !dbg !3146
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #32, !dbg !3157
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #32, !dbg !3157
  call void @llvm.dbg.value(metadata i8 %354, metadata !2859, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %355, metadata !2856, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %306, metadata !2831, metadata !DIExpression()), !dbg !2892
  %356 = and i8 %354, 1, !dbg !3097
  %357 = icmp eq i8 %356, 0, !dbg !3097
  call void @llvm.dbg.value(metadata i1 %357, metadata !2855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2959
  %358 = icmp ugt i64 %355, 1, !dbg !3158
  br i1 %358, label %367, label %359, !dbg !3098

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !3159
  br i1 %364, label %367, label %365, !dbg !3159

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !2959
  call void @llvm.dbg.value(metadata i8 %472, metadata !2855, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %441, metadata !2854, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %440, metadata !2853, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %439, metadata !2848, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %438, metadata !2845, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %371, metadata !2831, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %437, metadata !2838, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %375, metadata !2837, metadata !DIExpression()), !dbg !2892
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !3160
  call void @llvm.dbg.value(metadata i64 %372, metadata !2883, metadata !DIExpression()), !dbg !3161
  %373 = and i1 %102, %368
  br label %374, !dbg !3162

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !2952
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !2892
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !2901
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !2959
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !2959
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !3163
  call void @llvm.dbg.value(metadata i8 %380, metadata !2854, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %379, metadata !2853, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %378, metadata !2848, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %377, metadata !2845, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %376, metadata !2838, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %375, metadata !2837, metadata !DIExpression()), !dbg !2892
  br i1 %373, label %381, label %427, !dbg !3164

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !3169

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !2854, metadata !DIExpression()), !dbg !2959
  %383 = and i8 %377, 1, !dbg !3172
  %384 = icmp eq i8 %383, 0, !dbg !3172
  %385 = and i1 %110, %384, !dbg !3172
  br i1 %385, label %386, label %402, !dbg !3172

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !3174
  br i1 %387, label %388, label %390, !dbg !3178

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !3174
  store i8 39, i8* %389, align 1, !dbg !3174, !tbaa !1470
  br label %390, !dbg !3174

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !3178
  call void @llvm.dbg.value(metadata i64 %391, metadata !2838, metadata !DIExpression()), !dbg !2892
  %392 = icmp ult i64 %391, %129, !dbg !3179
  br i1 %392, label %393, label %395, !dbg !3182

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !3179
  store i8 36, i8* %394, align 1, !dbg !3179, !tbaa !1470
  br label %395, !dbg !3179

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !3182
  call void @llvm.dbg.value(metadata i64 %396, metadata !2838, metadata !DIExpression()), !dbg !2892
  %397 = icmp ult i64 %396, %129, !dbg !3183
  br i1 %397, label %398, label %400, !dbg !3186

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !3183
  store i8 39, i8* %399, align 1, !dbg !3183, !tbaa !1470
  br label %400, !dbg !3183

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !3186
  call void @llvm.dbg.value(metadata i64 %401, metadata !2838, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 1, metadata !2845, metadata !DIExpression()), !dbg !2892
  br label %402, !dbg !3187

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !2892
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !2892
  call void @llvm.dbg.value(metadata i8 %404, metadata !2845, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %403, metadata !2838, metadata !DIExpression()), !dbg !2892
  %405 = icmp ult i64 %403, %129, !dbg !3188
  br i1 %405, label %406, label %408, !dbg !3191

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !3188
  store i8 92, i8* %407, align 1, !dbg !3188, !tbaa !1470
  br label %408, !dbg !3188

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !3191
  call void @llvm.dbg.value(metadata i64 %409, metadata !2838, metadata !DIExpression()), !dbg !2892
  %410 = icmp ult i64 %409, %129, !dbg !3192
  br i1 %410, label %411, label %415, !dbg !3195

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !3192
  %413 = or i8 %412, 48, !dbg !3192
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !3192
  store i8 %413, i8* %414, align 1, !dbg !3192, !tbaa !1470
  br label %415, !dbg !3192

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !3195
  call void @llvm.dbg.value(metadata i64 %416, metadata !2838, metadata !DIExpression()), !dbg !2892
  %417 = icmp ult i64 %416, %129, !dbg !3196
  br i1 %417, label %418, label %423, !dbg !3199

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !3196
  %420 = and i8 %419, 7, !dbg !3196
  %421 = or i8 %420, 48, !dbg !3196
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !3196
  store i8 %421, i8* %422, align 1, !dbg !3196, !tbaa !1470
  br label %423, !dbg !3196

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !3199
  call void @llvm.dbg.value(metadata i64 %424, metadata !2838, metadata !DIExpression()), !dbg !2892
  %425 = and i8 %378, 7, !dbg !3200
  %426 = or i8 %425, 48, !dbg !3201
  call void @llvm.dbg.value(metadata i8 %426, metadata !2848, metadata !DIExpression()), !dbg !2959
  br label %436, !dbg !3202

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !3203
  %429 = icmp eq i8 %428, 0, !dbg !3203
  br i1 %429, label %436, label %430, !dbg !3205

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !3206
  br i1 %431, label %432, label %434, !dbg !3210

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !3206
  store i8 92, i8* %433, align 1, !dbg !3206, !tbaa !1470
  br label %434, !dbg !3206

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !3210
  call void @llvm.dbg.value(metadata i64 %435, metadata !2838, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 0, metadata !2853, metadata !DIExpression()), !dbg !2959
  br label %436, !dbg !3211

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !2892
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !2901
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !2959
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !2959
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !2959
  call void @llvm.dbg.value(metadata i8 %441, metadata !2854, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %440, metadata !2853, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %439, metadata !2848, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %438, metadata !2845, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %437, metadata !2838, metadata !DIExpression()), !dbg !2892
  %442 = add i64 %375, 1, !dbg !3212
  %443 = icmp ugt i64 %372, %442, !dbg !3214
  br i1 %443, label %444, label %471, !dbg !3215

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !3216
  %446 = icmp ne i8 %445, 0, !dbg !3216
  %447 = and i8 %441, 1, !dbg !3216
  %448 = icmp eq i8 %447, 0, !dbg !3216
  %449 = and i1 %446, %448, !dbg !3216
  br i1 %449, label %450, label %461, !dbg !3216

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !3219
  br i1 %451, label %452, label %454, !dbg !3223

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !3219
  store i8 39, i8* %453, align 1, !dbg !3219, !tbaa !1470
  br label %454, !dbg !3219

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !3223
  call void @llvm.dbg.value(metadata i64 %455, metadata !2838, metadata !DIExpression()), !dbg !2892
  %456 = icmp ult i64 %455, %129, !dbg !3224
  br i1 %456, label %457, label %459, !dbg !3227

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !3224
  store i8 39, i8* %458, align 1, !dbg !3224, !tbaa !1470
  br label %459, !dbg !3224

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !3227
  call void @llvm.dbg.value(metadata i64 %460, metadata !2838, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 0, metadata !2845, metadata !DIExpression()), !dbg !2892
  br label %461, !dbg !3228

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !3229
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !2892
  call void @llvm.dbg.value(metadata i8 %463, metadata !2845, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %462, metadata !2838, metadata !DIExpression()), !dbg !2892
  %464 = icmp ult i64 %462, %129, !dbg !3230
  br i1 %464, label %465, label %467, !dbg !3233

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !3230
  store i8 %439, i8* %466, align 1, !dbg !3230, !tbaa !1470
  br label %467, !dbg !3230

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !3233
  call void @llvm.dbg.value(metadata i64 %468, metadata !2838, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %442, metadata !2837, metadata !DIExpression()), !dbg !2892
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !3234
  %470 = load i8, i8* %469, align 1, !dbg !3234, !tbaa !1470
  call void @llvm.dbg.value(metadata i8 %470, metadata !2848, metadata !DIExpression()), !dbg !2959
  br label %374, !dbg !3235, !llvm.loop !3236

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !2959
  call void @llvm.dbg.value(metadata i8 %472, metadata !2855, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %441, metadata !2854, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %440, metadata !2853, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %439, metadata !2848, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %438, metadata !2845, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %371, metadata !2831, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %437, metadata !2838, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %375, metadata !2837, metadata !DIExpression()), !dbg !2892
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !2952
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !2892
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !2897
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !3239
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !2892
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !2892
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !2959
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !2959
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !2959
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !2829, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %482, metadata !2855, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %481, metadata !2854, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %156, metadata !2853, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %480, metadata !2848, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %479, metadata !2846, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %478, metadata !2845, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %477, metadata !2831, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %476, metadata !2839, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %475, metadata !2838, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %474, metadata !2837, metadata !DIExpression()), !dbg !2892
  br i1 %116, label %494, label %484, !dbg !3240

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !3242
  %486 = zext i8 %485 to i64, !dbg !3242
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !3243
  %488 = load i32, i32* %487, align 4, !dbg !3243, !tbaa !1268
  %489 = and i8 %480, 31, !dbg !3244
  %490 = zext i8 %489 to i32, !dbg !3244
  %491 = shl nuw i32 1, %490, !dbg !3245
  %492 = and i32 %488, %491, !dbg !3245
  %493 = icmp eq i32 %492, 0, !dbg !3245
  br i1 %493, label %494, label %495, !dbg !3246

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !3247

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !3248
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !2892
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !2897
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !3239
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !2901
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !2902
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !2959
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !2959
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !2829, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %503, metadata !2855, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %502, metadata !2848, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %501, metadata !2846, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %500, metadata !2845, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %499, metadata !2831, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %498, metadata !2839, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %497, metadata !2838, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %496, metadata !2837, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.label(metadata !2889), !dbg !3249
  br i1 %109, label %505, label %635, !dbg !3250

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !2854, metadata !DIExpression()), !dbg !2959
  %506 = and i8 %500, 1, !dbg !3252
  %507 = icmp eq i8 %506, 0, !dbg !3252
  %508 = and i1 %110, %507, !dbg !3252
  br i1 %508, label %509, label %525, !dbg !3252

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !3254
  br i1 %510, label %511, label %513, !dbg !3258

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !3254
  store i8 39, i8* %512, align 1, !dbg !3254, !tbaa !1470
  br label %513, !dbg !3254

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !3258
  call void @llvm.dbg.value(metadata i64 %514, metadata !2838, metadata !DIExpression()), !dbg !2892
  %515 = icmp ult i64 %514, %504, !dbg !3259
  br i1 %515, label %516, label %518, !dbg !3262

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !3259
  store i8 36, i8* %517, align 1, !dbg !3259, !tbaa !1470
  br label %518, !dbg !3259

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !3262
  call void @llvm.dbg.value(metadata i64 %519, metadata !2838, metadata !DIExpression()), !dbg !2892
  %520 = icmp ult i64 %519, %504, !dbg !3263
  br i1 %520, label %521, label %523, !dbg !3266

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !3263
  store i8 39, i8* %522, align 1, !dbg !3263, !tbaa !1470
  br label %523, !dbg !3263

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !3266
  call void @llvm.dbg.value(metadata i64 %524, metadata !2838, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 1, metadata !2845, metadata !DIExpression()), !dbg !2892
  br label %525, !dbg !3267

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !2959
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !2892
  call void @llvm.dbg.value(metadata i8 %527, metadata !2845, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %526, metadata !2838, metadata !DIExpression()), !dbg !2892
  %528 = icmp ult i64 %526, %504, !dbg !3268
  br i1 %528, label %529, label %531, !dbg !3271

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !3268
  store i8 92, i8* %530, align 1, !dbg !3268, !tbaa !1470
  br label %531, !dbg !3268

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !3271
  call void @llvm.dbg.value(metadata i64 %543, metadata !2829, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %542, metadata !2855, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %541, metadata !2854, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %540, metadata !2848, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %539, metadata !2846, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %538, metadata !2845, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %537, metadata !2831, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %536, metadata !2839, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %535, metadata !2838, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %534, metadata !2837, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.label(metadata !2890), !dbg !3272
  br label %560, !dbg !3273

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !3248
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !2892
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !2897
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !3239
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !2901
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !2902
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !3276
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2959
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2959
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !2829, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %542, metadata !2855, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %541, metadata !2854, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %540, metadata !2848, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 %539, metadata !2846, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %538, metadata !2845, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %537, metadata !2831, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %536, metadata !2839, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %535, metadata !2838, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %534, metadata !2837, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.label(metadata !2890), !dbg !3272
  %544 = and i8 %538, 1, !dbg !3273
  %545 = icmp ne i8 %544, 0, !dbg !3273
  %546 = and i8 %541, 1, !dbg !3273
  %547 = icmp eq i8 %546, 0, !dbg !3273
  %548 = and i1 %545, %547, !dbg !3273
  br i1 %548, label %549, label %560, !dbg !3273

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !3277
  br i1 %550, label %551, label %553, !dbg !3281

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !3277
  store i8 39, i8* %552, align 1, !dbg !3277, !tbaa !1470
  br label %553, !dbg !3277

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !3281
  call void @llvm.dbg.value(metadata i64 %554, metadata !2838, metadata !DIExpression()), !dbg !2892
  %555 = icmp ult i64 %554, %543, !dbg !3282
  br i1 %555, label %556, label %558, !dbg !3285

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !3282
  store i8 39, i8* %557, align 1, !dbg !3282, !tbaa !1470
  br label %558, !dbg !3282

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !3285
  call void @llvm.dbg.value(metadata i64 %559, metadata !2838, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 0, metadata !2845, metadata !DIExpression()), !dbg !2892
  br label %560, !dbg !3286

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !2959
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !2892
  call void @llvm.dbg.value(metadata i8 %569, metadata !2845, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %568, metadata !2838, metadata !DIExpression()), !dbg !2892
  %570 = icmp ult i64 %568, %561, !dbg !3287
  br i1 %570, label %571, label %573, !dbg !3290

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !3287
  store i8 %563, i8* %572, align 1, !dbg !3287, !tbaa !1470
  br label %573, !dbg !3287

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !3290
  call void @llvm.dbg.value(metadata i64 %574, metadata !2838, metadata !DIExpression()), !dbg !2892
  %575 = icmp eq i8 %562, 0, !dbg !3291
  %576 = select i1 %575, i8 0, i8 %128, !dbg !3293
  call void @llvm.dbg.value(metadata i8 %576, metadata !2847, metadata !DIExpression()), !dbg !2892
  br label %577, !dbg !3294

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !3248
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !2892
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !2897
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !3239
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !2901
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !2892
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !2903
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !2829, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %584, metadata !2847, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %583, metadata !2846, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8 %582, metadata !2845, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %581, metadata !2831, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %580, metadata !2839, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %579, metadata !2838, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %578, metadata !2837, metadata !DIExpression()), !dbg !2892
  %586 = add i64 %578, 1, !dbg !3295
  call void @llvm.dbg.value(metadata i64 %586, metadata !2837, metadata !DIExpression()), !dbg !2892
  br label %121, !dbg !3296, !llvm.loop !3297

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !3299
  %590 = and i1 %110, %589, !dbg !3301
  %591 = xor i1 %590, true, !dbg !3301
  %592 = or i1 %109, %591, !dbg !3301
  br i1 %592, label %593, label %635, !dbg !3301

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !3302
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !3302
  br i1 %597, label %598, label %607, !dbg !3302

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !3304
  %600 = icmp eq i8 %599, 0, !dbg !3304
  br i1 %600, label %603, label %601, !dbg !3307

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !3308
  br label %652, !dbg !3309

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !3310
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !3312
  br i1 %606, label %26, label %607, !dbg !3312

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !3313
  %610 = and i1 %609, %608, !dbg !3315
  br i1 %610, label %611, label %626, !dbg !3315

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !2840, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %123, metadata !2838, metadata !DIExpression()), !dbg !2892
  %612 = load i8, i8* %97, align 1, !dbg !3316, !tbaa !1470
  %613 = icmp eq i8 %612, 0, !dbg !3319
  br i1 %613, label %626, label %614, !dbg !3319

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !2840, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %617, metadata !2838, metadata !DIExpression()), !dbg !2892
  %618 = icmp ult i64 %617, %129, !dbg !3320
  br i1 %618, label %619, label %621, !dbg !3323

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !3320
  store i8 %615, i8* %620, align 1, !dbg !3320, !tbaa !1470
  br label %621, !dbg !3320

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !3323
  call void @llvm.dbg.value(metadata i64 %622, metadata !2838, metadata !DIExpression()), !dbg !2892
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !3324
  call void @llvm.dbg.value(metadata i8* %623, metadata !2840, metadata !DIExpression()), !dbg !2892
  %624 = load i8, i8* %623, align 1, !dbg !3316, !tbaa !1470
  %625 = icmp eq i8 %624, 0, !dbg !3319
  br i1 %625, label %626, label %614, !dbg !3319, !llvm.loop !3325

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !2934
  call void @llvm.dbg.value(metadata i64 %627, metadata !2838, metadata !DIExpression()), !dbg !2892
  %628 = icmp ult i64 %627, %129, !dbg !3327
  br i1 %628, label %629, label %652, !dbg !3329

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !3330
  store i8 0, i8* %630, align 1, !dbg !3331, !tbaa !1470
  br label %652, !dbg !3330

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2829, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %637, metadata !2831, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.label(metadata !2891), !dbg !3332
  %633 = icmp eq i8 %101, 0, !dbg !3333
  %634 = select i1 %633, i32 2, i32 4, !dbg !3333
  br label %642, !dbg !3333

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2829, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %637, metadata !2831, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.label(metadata !2891), !dbg !3332
  %639 = icmp eq i32 %93, 2, !dbg !3335
  %640 = icmp eq i8 %636, 0, !dbg !3333
  %641 = select i1 %640, i32 2, i32 4, !dbg !3333
  br i1 %639, label %642, label %646, !dbg !3333

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !3333

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !2832, metadata !DIExpression()), !dbg !2892
  %650 = and i32 %5, -3, !dbg !3336
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !3337
  br label %652, !dbg !3338

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !3339
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !3340 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3344, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 %1, metadata !3345, metadata !DIExpression()), !dbg !3348
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #32, !dbg !3349
  call void @llvm.dbg.value(metadata i8* %3, metadata !3346, metadata !DIExpression()), !dbg !3348
  %4 = icmp eq i8* %3, %0, !dbg !3350
  br i1 %4, label %5, label %72, !dbg !3352

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #32, !dbg !3353
  call void @llvm.dbg.value(metadata i8* %6, metadata !3347, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8* %6, metadata !3354, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i8* undef, metadata !3360, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i8 85, metadata !3361, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i8 84, metadata !3362, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i8 70, metadata !3363, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i8 45, metadata !3364, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i8 56, metadata !3365, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i8 0, metadata !3366, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i8 0, metadata !3367, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i8 0, metadata !3368, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i8 0, metadata !3369, metadata !DIExpression()), !dbg !3370
  %7 = load i8, i8* %6, align 1, !dbg !3373, !tbaa !1470
  %8 = and i8 %7, -33, !dbg !3373
  %9 = sext i8 %8 to i32, !dbg !3373
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !3373

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3375, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i8* undef, metadata !3380, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i8 84, metadata !3381, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i8 70, metadata !3382, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i8 45, metadata !3383, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i8 56, metadata !3384, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i8 0, metadata !3385, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i8 0, metadata !3386, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i8 0, metadata !3387, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i8 0, metadata !3388, metadata !DIExpression()), !dbg !3389
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3393
  %12 = load i8, i8* %11, align 1, !dbg !3393, !tbaa !1470
  %13 = and i8 %12, -33, !dbg !3393
  %14 = icmp eq i8 %13, 84, !dbg !3393
  br i1 %14, label %15, label %69, !dbg !3393

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !3395, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i8* undef, metadata !3400, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i8 70, metadata !3401, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i8 45, metadata !3402, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i8 56, metadata !3403, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i8 0, metadata !3404, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i8 0, metadata !3405, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i8 0, metadata !3406, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i8 0, metadata !3407, metadata !DIExpression()), !dbg !3408
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3412
  %17 = load i8, i8* %16, align 1, !dbg !3412, !tbaa !1470
  %18 = and i8 %17, -33, !dbg !3412
  %19 = icmp eq i8 %18, 70, !dbg !3412
  br i1 %19, label %20, label %69, !dbg !3412

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !3414, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i8* undef, metadata !3419, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i8 45, metadata !3420, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i8 56, metadata !3421, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i8 0, metadata !3422, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i8 0, metadata !3423, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i8 0, metadata !3424, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i8 0, metadata !3425, metadata !DIExpression()), !dbg !3426
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3430
  %22 = load i8, i8* %21, align 1, !dbg !3430, !tbaa !1470
  %23 = icmp eq i8 %22, 45, !dbg !3430
  br i1 %23, label %24, label %69, !dbg !3432

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !3433, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i8* undef, metadata !3438, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i8 56, metadata !3439, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i8 0, metadata !3440, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i8 0, metadata !3441, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i8 0, metadata !3442, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i8 0, metadata !3443, metadata !DIExpression()), !dbg !3444
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3448
  %26 = load i8, i8* %25, align 1, !dbg !3448, !tbaa !1470
  %27 = icmp eq i8 %26, 56, !dbg !3448
  br i1 %27, label %28, label %69, !dbg !3450

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !3451, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i8* undef, metadata !3456, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i8 0, metadata !3457, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i8 0, metadata !3458, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i8 0, metadata !3459, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i8 0, metadata !3460, metadata !DIExpression()), !dbg !3461
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3465
  %30 = load i8, i8* %29, align 1, !dbg !3465, !tbaa !1470
  %31 = icmp eq i8 %30, 0, !dbg !3465
  br i1 %31, label %32, label %69, !dbg !3467

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !3468, !tbaa !1470
  %34 = icmp eq i8 %33, 96, !dbg !3469
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.103, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.104, i64 0, i64 0), !dbg !3468
  br label %72, !dbg !3470

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3375, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i8* undef, metadata !3380, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i8 66, metadata !3381, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i8 49, metadata !3382, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i8 56, metadata !3383, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i8 48, metadata !3384, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i8 51, metadata !3385, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i8 48, metadata !3386, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i8 0, metadata !3387, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i8 0, metadata !3388, metadata !DIExpression()), !dbg !3471
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3475
  %38 = load i8, i8* %37, align 1, !dbg !3475, !tbaa !1470
  %39 = and i8 %38, -33, !dbg !3475
  %40 = icmp eq i8 %39, 66, !dbg !3475
  br i1 %40, label %41, label %69, !dbg !3475

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !3395, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8* undef, metadata !3400, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8 49, metadata !3401, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8 56, metadata !3402, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8 48, metadata !3403, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8 51, metadata !3404, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8 48, metadata !3405, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8 0, metadata !3406, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8 0, metadata !3407, metadata !DIExpression()), !dbg !3476
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3478
  %43 = load i8, i8* %42, align 1, !dbg !3478, !tbaa !1470
  %44 = icmp eq i8 %43, 49, !dbg !3478
  br i1 %44, label %45, label %69, !dbg !3479

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !3414, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i8* undef, metadata !3419, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i8 56, metadata !3420, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i8 48, metadata !3421, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i8 51, metadata !3422, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i8 48, metadata !3423, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i8 0, metadata !3424, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i8 0, metadata !3425, metadata !DIExpression()), !dbg !3480
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3482
  %47 = load i8, i8* %46, align 1, !dbg !3482, !tbaa !1470
  %48 = icmp eq i8 %47, 56, !dbg !3482
  br i1 %48, label %49, label %69, !dbg !3483

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !3433, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i8* undef, metadata !3438, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i8 48, metadata !3439, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i8 51, metadata !3440, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i8 48, metadata !3441, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i8 0, metadata !3442, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i8 0, metadata !3443, metadata !DIExpression()), !dbg !3484
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3486
  %51 = load i8, i8* %50, align 1, !dbg !3486, !tbaa !1470
  %52 = icmp eq i8 %51, 48, !dbg !3486
  br i1 %52, label %53, label %69, !dbg !3487

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !3451, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i8* undef, metadata !3456, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i8 51, metadata !3457, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i8 48, metadata !3458, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i8 0, metadata !3459, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i8 0, metadata !3460, metadata !DIExpression()), !dbg !3488
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3490
  %55 = load i8, i8* %54, align 1, !dbg !3490, !tbaa !1470
  %56 = icmp eq i8 %55, 51, !dbg !3490
  br i1 %56, label %57, label %69, !dbg !3491

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !3492, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i8* undef, metadata !3497, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i8 48, metadata !3498, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i8 0, metadata !3499, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i8 0, metadata !3500, metadata !DIExpression()), !dbg !3501
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3505
  %59 = load i8, i8* %58, align 1, !dbg !3505, !tbaa !1470
  %60 = icmp eq i8 %59, 48, !dbg !3505
  br i1 %60, label %61, label %69, !dbg !3507

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !3508, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i8* undef, metadata !3513, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i8 0, metadata !3514, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i8 0, metadata !3515, metadata !DIExpression()), !dbg !3516
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3520
  %63 = load i8, i8* %62, align 1, !dbg !3520, !tbaa !1470
  %64 = icmp eq i8 %63, 0, !dbg !3520
  br i1 %64, label %65, label %69, !dbg !3522

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !3523, !tbaa !1470
  %67 = icmp eq i8 %66, 96, !dbg !3524
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.105, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.106, i64 0, i64 0), !dbg !3523
  br label %72, !dbg !3525

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !3526
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.102, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), !dbg !3527
  br label %72, !dbg !3528

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !3348
  ret i8* %73, !dbg !3529
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #28

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3530 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3534, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i64 %1, metadata !3535, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3536, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i8* %0, metadata !3538, metadata !DIExpression()) #32, !dbg !3551
  call void @llvm.dbg.value(metadata i64 %1, metadata !3543, metadata !DIExpression()) #32, !dbg !3551
  call void @llvm.dbg.value(metadata i64* null, metadata !3544, metadata !DIExpression()) #32, !dbg !3551
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3545, metadata !DIExpression()) #32, !dbg !3551
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3553
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3553
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3546, metadata !DIExpression()) #32, !dbg !3551
  %6 = tail call i32* @__errno_location() #35, !dbg !3554
  %7 = load i32, i32* %6, align 4, !dbg !3554, !tbaa !1268
  call void @llvm.dbg.value(metadata i32 %7, metadata !3547, metadata !DIExpression()) #32, !dbg !3551
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3555
  %9 = load i32, i32* %8, align 4, !dbg !3555, !tbaa !2773
  %10 = or i32 %9, 1, !dbg !3556
  call void @llvm.dbg.value(metadata i32 %10, metadata !3548, metadata !DIExpression()) #32, !dbg !3551
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3557
  %12 = load i32, i32* %11, align 8, !dbg !3557, !tbaa !2722
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3558
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3559
  %15 = load i8*, i8** %14, align 8, !dbg !3559, !tbaa !2795
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3560
  %17 = load i8*, i8** %16, align 8, !dbg !3560, !tbaa !2798
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #32, !dbg !3561
  %19 = add i64 %18, 1, !dbg !3562
  call void @llvm.dbg.value(metadata i64 %19, metadata !3549, metadata !DIExpression()) #32, !dbg !3551
  call void @llvm.dbg.value(metadata i64 %19, metadata !3563, metadata !DIExpression()) #32, !dbg !3568
  %20 = tail call noalias i8* @xmalloc(i64 %19) #32, !dbg !3570
  call void @llvm.dbg.value(metadata i8* %20, metadata !3550, metadata !DIExpression()) #32, !dbg !3551
  %21 = load i32, i32* %11, align 8, !dbg !3571, !tbaa !2722
  %22 = load i8*, i8** %14, align 8, !dbg !3572, !tbaa !2795
  %23 = load i8*, i8** %16, align 8, !dbg !3573, !tbaa !2798
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #32, !dbg !3574
  store i32 %7, i32* %6, align 4, !dbg !3575, !tbaa !1268
  ret i8* %20, !dbg !3576
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3539 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3538, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i64 %1, metadata !3543, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i64* %2, metadata !3544, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3545, metadata !DIExpression()), !dbg !3577
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3578
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3578
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3546, metadata !DIExpression()), !dbg !3577
  %7 = tail call i32* @__errno_location() #35, !dbg !3579
  %8 = load i32, i32* %7, align 4, !dbg !3579, !tbaa !1268
  call void @llvm.dbg.value(metadata i32 %8, metadata !3547, metadata !DIExpression()), !dbg !3577
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3580
  %10 = load i32, i32* %9, align 4, !dbg !3580, !tbaa !2773
  %11 = icmp eq i64* %2, null, !dbg !3581
  %12 = zext i1 %11 to i32, !dbg !3581
  %13 = or i32 %10, %12, !dbg !3582
  call void @llvm.dbg.value(metadata i32 %13, metadata !3548, metadata !DIExpression()), !dbg !3577
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3583
  %15 = load i32, i32* %14, align 8, !dbg !3583, !tbaa !2722
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3584
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3585
  %18 = load i8*, i8** %17, align 8, !dbg !3585, !tbaa !2795
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3586
  %20 = load i8*, i8** %19, align 8, !dbg !3586, !tbaa !2798
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !3587
  %22 = add i64 %21, 1, !dbg !3588
  call void @llvm.dbg.value(metadata i64 %22, metadata !3549, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i64 %22, metadata !3563, metadata !DIExpression()) #32, !dbg !3589
  %23 = tail call noalias i8* @xmalloc(i64 %22) #32, !dbg !3591
  call void @llvm.dbg.value(metadata i8* %23, metadata !3550, metadata !DIExpression()), !dbg !3577
  %24 = load i32, i32* %14, align 8, !dbg !3592, !tbaa !2722
  %25 = load i8*, i8** %17, align 8, !dbg !3593, !tbaa !2795
  %26 = load i8*, i8** %19, align 8, !dbg !3594, !tbaa !2798
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !3595
  store i32 %8, i32* %7, align 4, !dbg !3596, !tbaa !1268
  br i1 %11, label %29, label %28, !dbg !3597

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3598, !tbaa !1212
  br label %29, !dbg !3600

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3601
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3602 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3606, !tbaa !1122
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3604, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i32 1, metadata !3605, metadata !DIExpression()), !dbg !3607
  %2 = load i32, i32* @nslots, align 4, !dbg !3608, !tbaa !1268
  %3 = icmp sgt i32 %2, 1, !dbg !3611
  br i1 %3, label %4, label %12, !dbg !3612

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3611
  br label %6, !dbg !3612

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !3605, metadata !DIExpression()), !dbg !3607
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !3613
  %9 = load i8*, i8** %8, align 8, !dbg !3613, !tbaa !3614
  tail call void @free(i8* %9) #32, !dbg !3616
  %10 = add nuw nsw i64 %7, 1, !dbg !3617
  call void @llvm.dbg.value(metadata i64 %10, metadata !3605, metadata !DIExpression()), !dbg !3607
  %11 = icmp eq i64 %10, %5, !dbg !3611
  br i1 %11, label %12, label %6, !dbg !3612, !llvm.loop !3618

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3620
  %14 = load i8*, i8** %13, align 8, !dbg !3620, !tbaa !3614
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3622
  br i1 %15, label %17, label %16, !dbg !3623

16:                                               ; preds = %12
  tail call void @free(i8* %14) #32, !dbg !3624
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3626, !tbaa !3627
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3628, !tbaa !3614
  br label %17, !dbg !3629

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3630
  br i1 %18, label %21, label %19, !dbg !3632

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3633
  tail call void @free(i8* %20) #32, !dbg !3635
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3636, !tbaa !1122
  br label %21, !dbg !3637

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3638, !tbaa !1268
  ret void, !dbg !3639
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3640 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3642, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i8* %1, metadata !3643, metadata !DIExpression()), !dbg !3644
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3645
  ret i8* %3, !dbg !3646
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3647 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3651, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i8* %1, metadata !3652, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i64 %2, metadata !3653, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3654, metadata !DIExpression()), !dbg !3666
  %5 = tail call i32* @__errno_location() #35, !dbg !3667
  %6 = load i32, i32* %5, align 4, !dbg !3667, !tbaa !1268
  call void @llvm.dbg.value(metadata i32 %6, metadata !3655, metadata !DIExpression()), !dbg !3666
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3668, !tbaa !1122
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3656, metadata !DIExpression()), !dbg !3666
  %8 = icmp slt i32 %0, 0, !dbg !3669
  br i1 %8, label %9, label %10, !dbg !3671

9:                                                ; preds = %4
  tail call void @abort() #34, !dbg !3672
  unreachable, !dbg !3672

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3673, !tbaa !1268
  %12 = icmp sgt i32 %11, %0, !dbg !3674
  br i1 %12, label %34, label %13, !dbg !3675

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3676
  call void @llvm.dbg.value(metadata i1 %14, metadata !3657, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3677
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3660, metadata !DIExpression()), !dbg !3677
  %15 = icmp eq i32 %0, 2147483647, !dbg !3678
  br i1 %15, label %16, label %17, !dbg !3680

16:                                               ; preds = %13
  tail call void @xalloc_die() #34, !dbg !3681
  unreachable, !dbg !3681

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3682
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3682
  %20 = add nuw nsw i32 %0, 1, !dbg !3683
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !3684
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #32, !dbg !3685
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3685
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3656, metadata !DIExpression()), !dbg !3666
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3686, !tbaa !1122
  br i1 %14, label %25, label %26, !dbg !3687

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3688, !tbaa.struct !3690
  br label %26, !dbg !3691

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3692, !tbaa !1268
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3693
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3694
  %31 = sub nsw i32 %20, %27, !dbg !3695
  %32 = sext i32 %31 to i64, !dbg !3696
  %33 = shl nsw i64 %32, 4, !dbg !3697
  call void @llvm.dbg.value(metadata i8* %30, metadata !3101, metadata !DIExpression()) #32, !dbg !3698
  call void @llvm.dbg.value(metadata i32 0, metadata !3106, metadata !DIExpression()) #32, !dbg !3698
  call void @llvm.dbg.value(metadata i64 %33, metadata !3107, metadata !DIExpression()) #32, !dbg !3698
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #32, !dbg !3700
  store i32 %20, i32* @nslots, align 4, !dbg !3701, !tbaa !1268
  br label %34, !dbg !3702

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3666
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3656, metadata !DIExpression()), !dbg !3666
  %36 = zext i32 %0 to i64, !dbg !3703
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3704
  %38 = load i64, i64* %37, align 8, !dbg !3704, !tbaa !3627
  call void @llvm.dbg.value(metadata i64 %38, metadata !3661, metadata !DIExpression()), !dbg !3705
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3706
  %40 = load i8*, i8** %39, align 8, !dbg !3706, !tbaa !3614
  call void @llvm.dbg.value(metadata i8* %40, metadata !3663, metadata !DIExpression()), !dbg !3705
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3707
  %42 = load i32, i32* %41, align 4, !dbg !3707, !tbaa !2773
  %43 = or i32 %42, 1, !dbg !3708
  call void @llvm.dbg.value(metadata i32 %43, metadata !3664, metadata !DIExpression()), !dbg !3705
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3709
  %45 = load i32, i32* %44, align 8, !dbg !3709, !tbaa !2722
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3710
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3711
  %48 = load i8*, i8** %47, align 8, !dbg !3711, !tbaa !2795
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3712
  %50 = load i8*, i8** %49, align 8, !dbg !3712, !tbaa !2798
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3713
  call void @llvm.dbg.value(metadata i64 %51, metadata !3665, metadata !DIExpression()), !dbg !3705
  %52 = icmp ugt i64 %38, %51, !dbg !3714
  br i1 %52, label %63, label %53, !dbg !3716

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3717
  call void @llvm.dbg.value(metadata i64 %54, metadata !3661, metadata !DIExpression()), !dbg !3705
  store i64 %54, i64* %37, align 8, !dbg !3719, !tbaa !3627
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3720
  br i1 %55, label %57, label %56, !dbg !3722

56:                                               ; preds = %53
  tail call void @free(i8* %40) #32, !dbg !3723
  br label %57, !dbg !3723

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !3563, metadata !DIExpression()) #32, !dbg !3724
  %58 = tail call noalias i8* @xmalloc(i64 %54) #32, !dbg !3726
  call void @llvm.dbg.value(metadata i8* %58, metadata !3663, metadata !DIExpression()), !dbg !3705
  store i8* %58, i8** %39, align 8, !dbg !3727, !tbaa !3614
  %59 = load i32, i32* %44, align 8, !dbg !3728, !tbaa !2722
  %60 = load i8*, i8** %47, align 8, !dbg !3729, !tbaa !2795
  %61 = load i8*, i8** %49, align 8, !dbg !3730, !tbaa !2798
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3731
  br label %63, !dbg !3732

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3705
  call void @llvm.dbg.value(metadata i8* %64, metadata !3663, metadata !DIExpression()), !dbg !3705
  store i32 %6, i32* %5, align 4, !dbg !3733, !tbaa !1268
  ret i8* %64, !dbg !3734
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3735 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3739, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i8* %1, metadata !3740, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i64 %2, metadata !3741, metadata !DIExpression()), !dbg !3742
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3743
  ret i8* %4, !dbg !3744
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3745 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3747, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i32 0, metadata !3642, metadata !DIExpression()) #32, !dbg !3749
  call void @llvm.dbg.value(metadata i8* %0, metadata !3643, metadata !DIExpression()) #32, !dbg !3749
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #32, !dbg !3751
  ret i8* %2, !dbg !3752
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3753 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3757, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i64 %1, metadata !3758, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i32 0, metadata !3739, metadata !DIExpression()) #32, !dbg !3760
  call void @llvm.dbg.value(metadata i8* %0, metadata !3740, metadata !DIExpression()) #32, !dbg !3760
  call void @llvm.dbg.value(metadata i64 %1, metadata !3741, metadata !DIExpression()) #32, !dbg !3760
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #32, !dbg !3762
  ret i8* %3, !dbg !3763
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3764 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3768, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata i32 %1, metadata !3769, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata i8* %2, metadata !3770, metadata !DIExpression()), !dbg !3772
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3773
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !3773
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3771, metadata !DIExpression()), !dbg !3774
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3775), !dbg !3778
  call void @llvm.dbg.value(metadata i32 %1, metadata !3779, metadata !DIExpression()) #32, !dbg !3785
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3784, metadata !DIExpression()) #32, !dbg !3787
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !3787, !alias.scope !3775
  %6 = icmp eq i32 %1, 10, !dbg !3788
  br i1 %6, label %7, label %8, !dbg !3790

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !3791, !noalias !3775
  unreachable, !dbg !3791

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3792
  store i32 %1, i32* %9, align 8, !dbg !3793, !tbaa !2722, !alias.scope !3775
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3794
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !3795
  ret i8* %10, !dbg !3796
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3797 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3801, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i32 %1, metadata !3802, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i8* %2, metadata !3803, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i64 %3, metadata !3804, metadata !DIExpression()), !dbg !3806
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3807
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !3807
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3805, metadata !DIExpression()), !dbg !3808
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3809), !dbg !3812
  call void @llvm.dbg.value(metadata i32 %1, metadata !3779, metadata !DIExpression()) #32, !dbg !3813
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3784, metadata !DIExpression()) #32, !dbg !3815
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #32, !dbg !3815, !alias.scope !3809
  %7 = icmp eq i32 %1, 10, !dbg !3816
  br i1 %7, label %8, label %9, !dbg !3817

8:                                                ; preds = %4
  tail call void @abort() #34, !dbg !3818, !noalias !3809
  unreachable, !dbg !3818

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3819
  store i32 %1, i32* %10, align 8, !dbg !3820, !tbaa !2722, !alias.scope !3809
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3821
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !3822
  ret i8* %11, !dbg !3823
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3824 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3828, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i8* %1, metadata !3829, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i32 0, metadata !3768, metadata !DIExpression()) #32, !dbg !3831
  call void @llvm.dbg.value(metadata i32 %0, metadata !3769, metadata !DIExpression()) #32, !dbg !3831
  call void @llvm.dbg.value(metadata i8* %1, metadata !3770, metadata !DIExpression()) #32, !dbg !3831
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3833
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !3833
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3771, metadata !DIExpression()) #32, !dbg !3834
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3835) #32, !dbg !3838
  call void @llvm.dbg.value(metadata i32 %0, metadata !3779, metadata !DIExpression()) #32, !dbg !3839
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3784, metadata !DIExpression()) #32, !dbg !3841
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #32, !dbg !3841, !alias.scope !3835
  %5 = icmp eq i32 %0, 10, !dbg !3842
  br i1 %5, label %6, label %7, !dbg !3843

6:                                                ; preds = %2
  tail call void @abort() #34, !dbg !3844, !noalias !3835
  unreachable, !dbg !3844

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3845
  store i32 %0, i32* %8, align 8, !dbg !3846, !tbaa !2722, !alias.scope !3835
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #32, !dbg !3847
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !3848
  ret i8* %9, !dbg !3849
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3850 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3854, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i8* %1, metadata !3855, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i64 %2, metadata !3856, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i32 0, metadata !3801, metadata !DIExpression()) #32, !dbg !3858
  call void @llvm.dbg.value(metadata i32 %0, metadata !3802, metadata !DIExpression()) #32, !dbg !3858
  call void @llvm.dbg.value(metadata i8* %1, metadata !3803, metadata !DIExpression()) #32, !dbg !3858
  call void @llvm.dbg.value(metadata i64 %2, metadata !3804, metadata !DIExpression()) #32, !dbg !3858
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3860
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !3860
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3805, metadata !DIExpression()) #32, !dbg !3861
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3862) #32, !dbg !3865
  call void @llvm.dbg.value(metadata i32 %0, metadata !3779, metadata !DIExpression()) #32, !dbg !3866
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3784, metadata !DIExpression()) #32, !dbg !3868
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !3868, !alias.scope !3862
  %6 = icmp eq i32 %0, 10, !dbg !3869
  br i1 %6, label %7, label %8, !dbg !3870

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !3871, !noalias !3862
  unreachable, !dbg !3871

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3872
  store i32 %0, i32* %9, align 8, !dbg !3873, !tbaa !2722, !alias.scope !3862
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #32, !dbg !3874
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !3875
  ret i8* %10, !dbg !3876
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3877 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3881, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata i64 %1, metadata !3882, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata i8 %2, metadata !3883, metadata !DIExpression()), !dbg !3885
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3886
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !3886
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3884, metadata !DIExpression()), !dbg !3887
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3888, !tbaa.struct !3889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2740, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i8 %2, metadata !2741, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i32 1, metadata !2742, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i8 %2, metadata !2743, metadata !DIExpression()), !dbg !3890
  %6 = lshr i8 %2, 5, !dbg !3892
  %7 = zext i8 %6 to i64, !dbg !3892
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3893
  call void @llvm.dbg.value(metadata i32* %8, metadata !2744, metadata !DIExpression()), !dbg !3890
  %9 = and i8 %2, 31, !dbg !3894
  %10 = zext i8 %9 to i32, !dbg !3894
  call void @llvm.dbg.value(metadata i32 %10, metadata !2746, metadata !DIExpression()), !dbg !3890
  %11 = load i32, i32* %8, align 4, !dbg !3895, !tbaa !1268
  %12 = lshr i32 %11, %10, !dbg !3896
  %13 = and i32 %12, 1, !dbg !3897
  call void @llvm.dbg.value(metadata i32 %13, metadata !2747, metadata !DIExpression()), !dbg !3890
  %14 = xor i32 %13, 1, !dbg !3898
  %15 = shl i32 %14, %10, !dbg !3899
  %16 = xor i32 %15, %11, !dbg !3900
  store i32 %16, i32* %8, align 4, !dbg !3900, !tbaa !1268
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3901
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !3902
  ret i8* %17, !dbg !3903
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3904 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3908, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i8 %1, metadata !3909, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i8* %0, metadata !3881, metadata !DIExpression()) #32, !dbg !3911
  call void @llvm.dbg.value(metadata i64 -1, metadata !3882, metadata !DIExpression()) #32, !dbg !3911
  call void @llvm.dbg.value(metadata i8 %1, metadata !3883, metadata !DIExpression()) #32, !dbg !3911
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3913
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !3913
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3884, metadata !DIExpression()) #32, !dbg !3914
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !3915, !tbaa.struct !3889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2740, metadata !DIExpression()) #32, !dbg !3916
  call void @llvm.dbg.value(metadata i8 %1, metadata !2741, metadata !DIExpression()) #32, !dbg !3916
  call void @llvm.dbg.value(metadata i32 1, metadata !2742, metadata !DIExpression()) #32, !dbg !3916
  call void @llvm.dbg.value(metadata i8 %1, metadata !2743, metadata !DIExpression()) #32, !dbg !3916
  %5 = lshr i8 %1, 5, !dbg !3918
  %6 = zext i8 %5 to i64, !dbg !3918
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3919
  call void @llvm.dbg.value(metadata i32* %7, metadata !2744, metadata !DIExpression()) #32, !dbg !3916
  %8 = and i8 %1, 31, !dbg !3920
  %9 = zext i8 %8 to i32, !dbg !3920
  call void @llvm.dbg.value(metadata i32 %9, metadata !2746, metadata !DIExpression()) #32, !dbg !3916
  %10 = load i32, i32* %7, align 4, !dbg !3921, !tbaa !1268
  %11 = lshr i32 %10, %9, !dbg !3922
  %12 = and i32 %11, 1, !dbg !3923
  call void @llvm.dbg.value(metadata i32 %12, metadata !2747, metadata !DIExpression()) #32, !dbg !3916
  %13 = xor i32 %12, 1, !dbg !3924
  %14 = shl i32 %13, %9, !dbg !3925
  %15 = xor i32 %14, %10, !dbg !3926
  store i32 %15, i32* %7, align 4, !dbg !3926, !tbaa !1268
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #32, !dbg !3927
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !3928
  ret i8* %16, !dbg !3929
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3930 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3932, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i8* %0, metadata !3908, metadata !DIExpression()) #32, !dbg !3934
  call void @llvm.dbg.value(metadata i8 58, metadata !3909, metadata !DIExpression()) #32, !dbg !3934
  call void @llvm.dbg.value(metadata i8* %0, metadata !3881, metadata !DIExpression()) #32, !dbg !3936
  call void @llvm.dbg.value(metadata i64 -1, metadata !3882, metadata !DIExpression()) #32, !dbg !3936
  call void @llvm.dbg.value(metadata i8 58, metadata !3883, metadata !DIExpression()) #32, !dbg !3936
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3938
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #32, !dbg !3938
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3884, metadata !DIExpression()) #32, !dbg !3939
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !3940, !tbaa.struct !3889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2740, metadata !DIExpression()) #32, !dbg !3941
  call void @llvm.dbg.value(metadata i8 58, metadata !2741, metadata !DIExpression()) #32, !dbg !3941
  call void @llvm.dbg.value(metadata i32 1, metadata !2742, metadata !DIExpression()) #32, !dbg !3941
  call void @llvm.dbg.value(metadata i8 58, metadata !2743, metadata !DIExpression()) #32, !dbg !3941
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3943
  call void @llvm.dbg.value(metadata i32* %4, metadata !2744, metadata !DIExpression()) #32, !dbg !3941
  call void @llvm.dbg.value(metadata i32 26, metadata !2746, metadata !DIExpression()) #32, !dbg !3941
  %5 = load i32, i32* %4, align 4, !dbg !3944, !tbaa !1268
  call void @llvm.dbg.value(metadata i32 %5, metadata !2747, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !3941
  %6 = or i32 %5, 67108864, !dbg !3945
  store i32 %6, i32* %4, align 4, !dbg !3945, !tbaa !1268
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #32, !dbg !3946
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #32, !dbg !3947
  ret i8* %7, !dbg !3948
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3949 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3951, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i64 %1, metadata !3952, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i8* %0, metadata !3881, metadata !DIExpression()) #32, !dbg !3954
  call void @llvm.dbg.value(metadata i64 %1, metadata !3882, metadata !DIExpression()) #32, !dbg !3954
  call void @llvm.dbg.value(metadata i8 58, metadata !3883, metadata !DIExpression()) #32, !dbg !3954
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3956
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !3956
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3884, metadata !DIExpression()) #32, !dbg !3957
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !3958, !tbaa.struct !3889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2740, metadata !DIExpression()) #32, !dbg !3959
  call void @llvm.dbg.value(metadata i8 58, metadata !2741, metadata !DIExpression()) #32, !dbg !3959
  call void @llvm.dbg.value(metadata i32 1, metadata !2742, metadata !DIExpression()) #32, !dbg !3959
  call void @llvm.dbg.value(metadata i8 58, metadata !2743, metadata !DIExpression()) #32, !dbg !3959
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3961
  call void @llvm.dbg.value(metadata i32* %5, metadata !2744, metadata !DIExpression()) #32, !dbg !3959
  call void @llvm.dbg.value(metadata i32 26, metadata !2746, metadata !DIExpression()) #32, !dbg !3959
  %6 = load i32, i32* %5, align 4, !dbg !3962, !tbaa !1268
  call void @llvm.dbg.value(metadata i32 %6, metadata !2747, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !3959
  %7 = or i32 %6, 67108864, !dbg !3963
  store i32 %7, i32* %5, align 4, !dbg !3963, !tbaa !1268
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #32, !dbg !3964
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !3965
  ret i8* %8, !dbg !3966
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3967 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3784, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3973
  call void @llvm.dbg.value(metadata i32 %0, metadata !3969, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata i32 %1, metadata !3970, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata i8* %2, metadata !3971, metadata !DIExpression()), !dbg !3975
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3976
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !3976
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3972, metadata !DIExpression()), !dbg !3977
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3978
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3978
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3979), !dbg !3978
  call void @llvm.dbg.value(metadata i32 %1, metadata !3779, metadata !DIExpression()) #32, !dbg !3982
  call void @llvm.dbg.value(metadata i32 0, metadata !3784, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3982
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3973, !alias.scope !3979
  %8 = icmp eq i32 %1, 10, !dbg !3983
  br i1 %8, label %9, label %10, !dbg !3984

9:                                                ; preds = %3
  tail call void @abort() #34, !dbg !3985, !noalias !3979
  unreachable, !dbg !3985

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3784, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3982
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3978
  store i32 %1, i32* %11, align 8, !dbg !3978, !tbaa.struct !3889
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3978
  %13 = bitcast i32* %12 to i8*, !dbg !3978
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3978, !tbaa.struct !3986
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3978
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2740, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i8 58, metadata !2741, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i32 1, metadata !2742, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i8 58, metadata !2743, metadata !DIExpression()), !dbg !3987
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3989
  call void @llvm.dbg.value(metadata i32* %14, metadata !2744, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i32 26, metadata !2746, metadata !DIExpression()), !dbg !3987
  %15 = load i32, i32* %14, align 4, !dbg !3990, !tbaa !1268
  call void @llvm.dbg.value(metadata i32 %15, metadata !2747, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3987
  %16 = or i32 %15, 67108864, !dbg !3991
  store i32 %16, i32* %14, align 4, !dbg !3991, !tbaa !1268
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3992
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !3993
  ret i8* %17, !dbg !3994
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3995 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3999, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i8* %1, metadata !4000, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i8* %2, metadata !4001, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i8* %3, metadata !4002, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i32 %0, metadata !4004, metadata !DIExpression()) #32, !dbg !4014
  call void @llvm.dbg.value(metadata i8* %1, metadata !4009, metadata !DIExpression()) #32, !dbg !4014
  call void @llvm.dbg.value(metadata i8* %2, metadata !4010, metadata !DIExpression()) #32, !dbg !4014
  call void @llvm.dbg.value(metadata i8* %3, metadata !4011, metadata !DIExpression()) #32, !dbg !4014
  call void @llvm.dbg.value(metadata i64 -1, metadata !4012, metadata !DIExpression()) #32, !dbg !4014
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4016
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !4016
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !4013, metadata !DIExpression()) #32, !dbg !4017
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !4018, !tbaa.struct !3889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2780, metadata !DIExpression()) #32, !dbg !4019
  call void @llvm.dbg.value(metadata i8* %1, metadata !2781, metadata !DIExpression()) #32, !dbg !4019
  call void @llvm.dbg.value(metadata i8* %2, metadata !2782, metadata !DIExpression()) #32, !dbg !4019
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2780, metadata !DIExpression()) #32, !dbg !4019
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4021
  store i32 10, i32* %7, align 8, !dbg !4022, !tbaa !2722
  %8 = icmp ne i8* %1, null, !dbg !4023
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !4024
  br i1 %10, label %12, label %11, !dbg !4024

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !4025
  unreachable, !dbg !4025

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4026
  store i8* %1, i8** %13, align 8, !dbg !4027, !tbaa !2795
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4028
  store i8* %2, i8** %14, align 8, !dbg !4029, !tbaa !2798
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #32, !dbg !4030
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !4031
  ret i8* %15, !dbg !4032
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !4005 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4004, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata i8* %1, metadata !4009, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata i8* %2, metadata !4010, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata i8* %3, metadata !4011, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata i64 %4, metadata !4012, metadata !DIExpression()), !dbg !4033
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4034
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #32, !dbg !4034
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !4013, metadata !DIExpression()), !dbg !4035
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !4036, !tbaa.struct !3889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2780, metadata !DIExpression()) #32, !dbg !4037
  call void @llvm.dbg.value(metadata i8* %1, metadata !2781, metadata !DIExpression()) #32, !dbg !4037
  call void @llvm.dbg.value(metadata i8* %2, metadata !2782, metadata !DIExpression()) #32, !dbg !4037
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2780, metadata !DIExpression()) #32, !dbg !4037
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4039
  store i32 10, i32* %8, align 8, !dbg !4040, !tbaa !2722
  %9 = icmp ne i8* %1, null, !dbg !4041
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !4042
  br i1 %11, label %13, label %12, !dbg !4042

12:                                               ; preds = %5
  tail call void @abort() #34, !dbg !4043
  unreachable, !dbg !4043

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4044
  store i8* %1, i8** %14, align 8, !dbg !4045, !tbaa !2795
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4046
  store i8* %2, i8** %15, align 8, !dbg !4047, !tbaa !2798
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4048
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #32, !dbg !4049
  ret i8* %16, !dbg !4050
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !4051 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4055, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i8* %1, metadata !4056, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i8* %2, metadata !4057, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 0, metadata !3999, metadata !DIExpression()) #32, !dbg !4059
  call void @llvm.dbg.value(metadata i8* %0, metadata !4000, metadata !DIExpression()) #32, !dbg !4059
  call void @llvm.dbg.value(metadata i8* %1, metadata !4001, metadata !DIExpression()) #32, !dbg !4059
  call void @llvm.dbg.value(metadata i8* %2, metadata !4002, metadata !DIExpression()) #32, !dbg !4059
  call void @llvm.dbg.value(metadata i32 0, metadata !4004, metadata !DIExpression()) #32, !dbg !4061
  call void @llvm.dbg.value(metadata i8* %0, metadata !4009, metadata !DIExpression()) #32, !dbg !4061
  call void @llvm.dbg.value(metadata i8* %1, metadata !4010, metadata !DIExpression()) #32, !dbg !4061
  call void @llvm.dbg.value(metadata i8* %2, metadata !4011, metadata !DIExpression()) #32, !dbg !4061
  call void @llvm.dbg.value(metadata i64 -1, metadata !4012, metadata !DIExpression()) #32, !dbg !4061
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4063
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !4063
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4013, metadata !DIExpression()) #32, !dbg !4064
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !4065, !tbaa.struct !3889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2780, metadata !DIExpression()) #32, !dbg !4066
  call void @llvm.dbg.value(metadata i8* %0, metadata !2781, metadata !DIExpression()) #32, !dbg !4066
  call void @llvm.dbg.value(metadata i8* %1, metadata !2782, metadata !DIExpression()) #32, !dbg !4066
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2780, metadata !DIExpression()) #32, !dbg !4066
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4068
  store i32 10, i32* %6, align 8, !dbg !4069, !tbaa !2722
  %7 = icmp ne i8* %0, null, !dbg !4070
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !4071
  br i1 %9, label %11, label %10, !dbg !4071

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !4072
  unreachable, !dbg !4072

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4073
  store i8* %0, i8** %12, align 8, !dbg !4074, !tbaa !2795
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4075
  store i8* %1, i8** %13, align 8, !dbg !4076, !tbaa !2798
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #32, !dbg !4077
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !4078
  ret i8* %14, !dbg !4079
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !4080 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4084, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i8* %1, metadata !4085, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i8* %2, metadata !4086, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i64 %3, metadata !4087, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i32 0, metadata !4004, metadata !DIExpression()) #32, !dbg !4089
  call void @llvm.dbg.value(metadata i8* %0, metadata !4009, metadata !DIExpression()) #32, !dbg !4089
  call void @llvm.dbg.value(metadata i8* %1, metadata !4010, metadata !DIExpression()) #32, !dbg !4089
  call void @llvm.dbg.value(metadata i8* %2, metadata !4011, metadata !DIExpression()) #32, !dbg !4089
  call void @llvm.dbg.value(metadata i64 %3, metadata !4012, metadata !DIExpression()) #32, !dbg !4089
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4091
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !4091
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !4013, metadata !DIExpression()) #32, !dbg !4092
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !4093, !tbaa.struct !3889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2780, metadata !DIExpression()) #32, !dbg !4094
  call void @llvm.dbg.value(metadata i8* %0, metadata !2781, metadata !DIExpression()) #32, !dbg !4094
  call void @llvm.dbg.value(metadata i8* %1, metadata !2782, metadata !DIExpression()) #32, !dbg !4094
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2780, metadata !DIExpression()) #32, !dbg !4094
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4096
  store i32 10, i32* %7, align 8, !dbg !4097, !tbaa !2722
  %8 = icmp ne i8* %0, null, !dbg !4098
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !4099
  br i1 %10, label %12, label %11, !dbg !4099

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !4100
  unreachable, !dbg !4100

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4101
  store i8* %0, i8** %13, align 8, !dbg !4102, !tbaa !2795
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4103
  store i8* %1, i8** %14, align 8, !dbg !4104, !tbaa !2798
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #32, !dbg !4105
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !4106
  ret i8* %15, !dbg !4107
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !4108 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4112, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i8* %1, metadata !4113, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i64 %2, metadata !4114, metadata !DIExpression()), !dbg !4115
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4116
  ret i8* %4, !dbg !4117
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4118 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4122, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i64 %1, metadata !4123, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i32 0, metadata !4112, metadata !DIExpression()) #32, !dbg !4125
  call void @llvm.dbg.value(metadata i8* %0, metadata !4113, metadata !DIExpression()) #32, !dbg !4125
  call void @llvm.dbg.value(metadata i64 %1, metadata !4114, metadata !DIExpression()) #32, !dbg !4125
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #32, !dbg !4127
  ret i8* %3, !dbg !4128
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !4129 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4133, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i8* %1, metadata !4134, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i32 %0, metadata !4112, metadata !DIExpression()) #32, !dbg !4136
  call void @llvm.dbg.value(metadata i8* %1, metadata !4113, metadata !DIExpression()) #32, !dbg !4136
  call void @llvm.dbg.value(metadata i64 -1, metadata !4114, metadata !DIExpression()) #32, !dbg !4136
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #32, !dbg !4138
  ret i8* %3, !dbg !4139
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !4140 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4144, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i32 0, metadata !4133, metadata !DIExpression()) #32, !dbg !4146
  call void @llvm.dbg.value(metadata i8* %0, metadata !4134, metadata !DIExpression()) #32, !dbg !4146
  call void @llvm.dbg.value(metadata i32 0, metadata !4112, metadata !DIExpression()) #32, !dbg !4148
  call void @llvm.dbg.value(metadata i8* %0, metadata !4113, metadata !DIExpression()) #32, !dbg !4148
  call void @llvm.dbg.value(metadata i64 -1, metadata !4114, metadata !DIExpression()) #32, !dbg !4148
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #32, !dbg !4150
  ret i8* %2, !dbg !4151
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @readtokens0_init(%struct.Tokens* %0) local_unnamed_addr #8 !dbg !4152 {
  call void @llvm.dbg.value(metadata %struct.Tokens* %0, metadata !4198, metadata !DIExpression()), !dbg !4199
  %2 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, !dbg !4200
  %3 = bitcast %struct.Tokens* %0 to i8*, !dbg !4200
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !dbg !4201
  %4 = tail call i32 @_obstack_begin(%struct.obstack* nonnull %2, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #32, !dbg !4200
  %5 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, !dbg !4202
  %6 = tail call i32 @_obstack_begin(%struct.obstack* nonnull %5, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #32, !dbg !4202
  %7 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, !dbg !4203
  %8 = tail call i32 @_obstack_begin(%struct.obstack* nonnull %7, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #32, !dbg !4203
  ret void, !dbg !4204
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @readtokens0_free(%struct.Tokens* %0) local_unnamed_addr #8 !dbg !4205 {
  call void @llvm.dbg.value(metadata %struct.Tokens* %0, metadata !4207, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata %struct.Tokens* %0, metadata !4208, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !4219
  call void @llvm.dbg.value(metadata i8* null, metadata !4211, metadata !DIExpression()), !dbg !4219
  %2 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, !dbg !4220
  call void @llvm.dbg.value(metadata %struct.obstack* %2, metadata !4208, metadata !DIExpression()), !dbg !4219
  tail call void @_obstack_free(%struct.obstack* nonnull %2, i8* null) #32, !dbg !4221
  call void @llvm.dbg.value(metadata %struct.Tokens* %0, metadata !4212, metadata !DIExpression(DW_OP_plus_uconst, 112, DW_OP_stack_value)), !dbg !4223
  call void @llvm.dbg.value(metadata i8* null, metadata !4214, metadata !DIExpression()), !dbg !4223
  %3 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, !dbg !4224
  call void @llvm.dbg.value(metadata %struct.obstack* %3, metadata !4212, metadata !DIExpression()), !dbg !4223
  tail call void @_obstack_free(%struct.obstack* nonnull %3, i8* null) #32, !dbg !4225
  call void @llvm.dbg.value(metadata %struct.Tokens* %0, metadata !4215, metadata !DIExpression(DW_OP_plus_uconst, 200, DW_OP_stack_value)), !dbg !4227
  call void @llvm.dbg.value(metadata i8* null, metadata !4217, metadata !DIExpression()), !dbg !4227
  %4 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, !dbg !4228
  call void @llvm.dbg.value(metadata %struct.obstack* %4, metadata !4215, metadata !DIExpression()), !dbg !4227
  tail call void @_obstack_free(%struct.obstack* nonnull %4, i8* null) #32, !dbg !4229
  ret void, !dbg !4231
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @readtokens0(%struct._IO_FILE* nocapture %0, %struct.Tokens* %1) local_unnamed_addr #8 !dbg !4232 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4270, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata %struct.Tokens* %1, metadata !4271, metadata !DIExpression()), !dbg !4307
  %3 = tail call i32 @fgetc(%struct._IO_FILE* %0), !dbg !4308
  call void @llvm.dbg.value(metadata i32 %3, metadata !4272, metadata !DIExpression()), !dbg !4309
  %4 = icmp eq i32 %3, -1, !dbg !4310
  br i1 %4, label %9, label %5, !dbg !4311

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 4
  %7 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 3
  %8 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3
  br label %25, !dbg !4311

9:                                                ; preds = %38, %2
  %10 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, !dbg !4312
  call void @llvm.dbg.value(metadata %struct.obstack* %10, metadata !4277, metadata !DIExpression()), !dbg !4313
  %11 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 3, !dbg !4312
  %12 = load i8*, i8** %11, align 8, !dbg !4312, !tbaa !4314
  %13 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 2, !dbg !4312
  %14 = load i8*, i8** %13, align 8, !dbg !4312, !tbaa !4315
  call void @llvm.dbg.value(metadata i64 undef, metadata !4274, metadata !DIExpression()), !dbg !4316
  %15 = icmp eq i8* %12, %14, !dbg !4317
  br i1 %15, label %41, label %16, !dbg !4318

16:                                               ; preds = %9
  call void @llvm.dbg.value(metadata %struct.obstack* %10, metadata !4281, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata %struct.obstack* %10, metadata !4285, metadata !DIExpression()), !dbg !4320
  %17 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 3, i32 4, !dbg !4321
  %18 = load i8*, i8** %17, align 8, !dbg !4321, !tbaa !4322
  %19 = icmp eq i8* %18, %12, !dbg !4323
  br i1 %19, label %20, label %22, !dbg !4324

20:                                               ; preds = %16
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %10, i64 1) #32, !dbg !4323
  %21 = load i8*, i8** %11, align 8, !dbg !4324, !tbaa !4314
  br label %22, !dbg !4323

22:                                               ; preds = %20, %16
  %23 = phi i8* [ %21, %20 ], [ %12, %16 ], !dbg !4324
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !4324
  store i8* %24, i8** %11, align 8, !dbg !4324, !tbaa !4314
  store i8 0, i8* %23, align 1, !dbg !4324, !tbaa !1470
  tail call fastcc void @save_token(%struct.Tokens* nonnull %1), !dbg !4325
  br label %41, !dbg !4326

25:                                               ; preds = %5, %38
  %26 = phi i32 [ %3, %5 ], [ %39, %38 ]
  call void @llvm.dbg.value(metadata %struct.Tokens* %1, metadata !4288, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !4327
  call void @llvm.dbg.value(metadata %struct.Tokens* %1, metadata !4290, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !4328
  %27 = load i8*, i8** %6, align 8, !dbg !4329, !tbaa !4322
  %28 = load i8*, i8** %7, align 8, !dbg !4329, !tbaa !4314
  %29 = icmp eq i8* %27, %28, !dbg !4330
  br i1 %29, label %30, label %32, !dbg !4331

30:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %struct.obstack* %8, metadata !4290, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata %struct.obstack* %8, metadata !4288, metadata !DIExpression()), !dbg !4327
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %8, i64 1) #32, !dbg !4330
  %31 = load i8*, i8** %7, align 8, !dbg !4331, !tbaa !4314
  br label %32, !dbg !4330

32:                                               ; preds = %30, %25
  %33 = phi i8* [ %31, %30 ], [ %28, %25 ], !dbg !4331
  %34 = trunc i32 %26 to i8, !dbg !4331
  %35 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !4331
  store i8* %35, i8** %7, align 8, !dbg !4331, !tbaa !4314
  store i8 %34, i8* %33, align 1, !dbg !4331, !tbaa !1470
  %36 = icmp eq i32 %26, 0, !dbg !4332
  br i1 %36, label %37, label %38, !dbg !4334

37:                                               ; preds = %32
  tail call fastcc void @save_token(%struct.Tokens* nonnull %1), !dbg !4335
  br label %38, !dbg !4335

38:                                               ; preds = %32, %37
  %39 = tail call i32 @fgetc(%struct._IO_FILE* %0), !dbg !4308
  call void @llvm.dbg.value(metadata i32 %39, metadata !4272, metadata !DIExpression()), !dbg !4309
  %40 = icmp eq i32 %39, -1, !dbg !4310
  br i1 %40, label %9, label %25, !dbg !4311

41:                                               ; preds = %9, %22
  call void @llvm.dbg.value(metadata %struct.Tokens* %1, metadata !4293, metadata !DIExpression(DW_OP_plus_uconst, 112, DW_OP_stack_value)), !dbg !4336
  call void @llvm.dbg.value(metadata %struct.Tokens* %1, metadata !4295, metadata !DIExpression(DW_OP_plus_uconst, 112, DW_OP_stack_value)), !dbg !4337
  %42 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 4, !dbg !4338
  %43 = load i8*, i8** %42, align 8, !dbg !4338, !tbaa !4322
  %44 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 3, !dbg !4338
  %45 = load i8*, i8** %44, align 8, !dbg !4338, !tbaa !4314
  %46 = ptrtoint i8* %43 to i64, !dbg !4338
  %47 = ptrtoint i8* %45 to i64, !dbg !4338
  %48 = sub i64 %46, %47, !dbg !4338
  %49 = icmp ult i64 %48, 8, !dbg !4339
  br i1 %49, label %52, label %50, !dbg !4340

50:                                               ; preds = %41
  %51 = bitcast i8* %45 to i8**, !dbg !4340
  br label %56, !dbg !4340

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, !dbg !4340
  call void @llvm.dbg.value(metadata %struct.obstack* %53, metadata !4295, metadata !DIExpression()), !dbg !4337
  call void @llvm.dbg.value(metadata %struct.obstack* %53, metadata !4293, metadata !DIExpression()), !dbg !4336
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %53, i64 8) #32, !dbg !4339
  %54 = bitcast i8** %44 to i8***
  %55 = load i8**, i8*** %54, align 8, !dbg !4341, !tbaa !4314
  br label %56, !dbg !4339

56:                                               ; preds = %50, %52
  %57 = phi i8** [ %55, %52 ], [ %51, %50 ], !dbg !4341
  call void @llvm.dbg.value(metadata %struct.Tokens* %1, metadata !4298, metadata !DIExpression(DW_OP_plus_uconst, 112, DW_OP_stack_value)), !dbg !4342
  call void @llvm.dbg.value(metadata i8* undef, metadata !4300, metadata !DIExpression()), !dbg !4342
  store i8* null, i8** %57, align 8, !dbg !4341, !tbaa !1122
  %58 = load i8*, i8** %44, align 8, !dbg !4341, !tbaa !4314
  %59 = getelementptr inbounds i8, i8* %58, i64 8, !dbg !4341
  call void @llvm.dbg.value(metadata %struct.Tokens* %1, metadata !4301, metadata !DIExpression(DW_OP_plus_uconst, 112, DW_OP_stack_value)), !dbg !4343
  %60 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 2, !dbg !4344
  %61 = load i8*, i8** %60, align 8, !dbg !4344, !tbaa !4315
  call void @llvm.dbg.value(metadata i8* %61, metadata !4303, metadata !DIExpression()), !dbg !4343
  %62 = icmp eq i8* %59, %61, !dbg !4345
  br i1 %62, label %63, label %67, !dbg !4344

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 10, !dbg !4345
  %65 = load i8, i8* %64, align 8, !dbg !4345
  %66 = or i8 %65, 2, !dbg !4345
  store i8 %66, i8* %64, align 8, !dbg !4345
  br label %67, !dbg !4345

67:                                               ; preds = %63, %56
  %68 = ptrtoint i8* %59 to i64, !dbg !4344
  %69 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 6, !dbg !4344
  %70 = load i64, i64* %69, align 8, !dbg !4344, !tbaa !4347
  %71 = add i64 %70, %68, !dbg !4344
  %72 = xor i64 %70, -1, !dbg !4344
  %73 = and i64 %71, %72, !dbg !4344
  %74 = getelementptr inbounds i8, i8* null, i64 %73, !dbg !4344
  store i8* %74, i8** %44, align 8, !dbg !4344, !tbaa !4314
  %75 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 4, i32 1, !dbg !4348
  %76 = bitcast %struct._obstack_chunk** %75 to i8**, !dbg !4348
  %77 = load i8*, i8** %76, align 8, !dbg !4348, !tbaa !4350
  %78 = ptrtoint i8* %74 to i64, !dbg !4348
  %79 = ptrtoint i8* %77 to i64, !dbg !4348
  %80 = sub i64 %78, %79, !dbg !4348
  %81 = load i8*, i8** %42, align 8, !dbg !4348, !tbaa !4322
  %82 = ptrtoint i8* %81 to i64, !dbg !4348
  %83 = sub i64 %82, %79, !dbg !4348
  %84 = icmp ugt i64 %80, %83, !dbg !4348
  br i1 %84, label %85, label %86, !dbg !4344

85:                                               ; preds = %67
  store i8* %81, i8** %44, align 8, !dbg !4348, !tbaa !4314
  br label %86, !dbg !4348

86:                                               ; preds = %85, %67
  %87 = phi i8* [ %81, %85 ], [ %74, %67 ], !dbg !4344
  store i8* %87, i8** %60, align 8, !dbg !4344, !tbaa !4315
  %88 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 1, !dbg !4351
  %89 = bitcast i8*** %88 to i8**, !dbg !4352
  store i8* %61, i8** %89, align 8, !dbg !4352, !tbaa !1320
  call void @llvm.dbg.value(metadata %struct.Tokens* %1, metadata !4304, metadata !DIExpression(DW_OP_plus_uconst, 200, DW_OP_stack_value)), !dbg !4353
  %90 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 2, !dbg !4354
  %91 = load i8*, i8** %90, align 8, !dbg !4354, !tbaa !4315
  call void @llvm.dbg.value(metadata i8* %91, metadata !4306, metadata !DIExpression()), !dbg !4353
  %92 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 3, !dbg !4355
  %93 = load i8*, i8** %92, align 8, !dbg !4355, !tbaa !4314
  %94 = icmp eq i8* %93, %91, !dbg !4355
  br i1 %94, label %95, label %99, !dbg !4354

95:                                               ; preds = %86
  call void @llvm.dbg.value(metadata %struct.Tokens* %1, metadata !4304, metadata !DIExpression(DW_OP_plus_uconst, 200, DW_OP_stack_value)), !dbg !4353
  %96 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 10, !dbg !4355
  %97 = load i8, i8* %96, align 8, !dbg !4355
  %98 = or i8 %97, 2, !dbg !4355
  store i8 %98, i8* %96, align 8, !dbg !4355
  br label %99, !dbg !4355

99:                                               ; preds = %95, %86
  %100 = ptrtoint i8* %93 to i64, !dbg !4354
  %101 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 6, !dbg !4354
  %102 = load i64, i64* %101, align 8, !dbg !4354, !tbaa !4347
  %103 = add i64 %102, %100, !dbg !4354
  %104 = xor i64 %102, -1, !dbg !4354
  %105 = and i64 %103, %104, !dbg !4354
  %106 = getelementptr inbounds i8, i8* null, i64 %105, !dbg !4354
  store i8* %106, i8** %92, align 8, !dbg !4354, !tbaa !4314
  %107 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 1, !dbg !4357
  %108 = bitcast %struct._obstack_chunk** %107 to i8**, !dbg !4357
  %109 = load i8*, i8** %108, align 8, !dbg !4357, !tbaa !4350
  %110 = ptrtoint i8* %106 to i64, !dbg !4357
  %111 = ptrtoint i8* %109 to i64, !dbg !4357
  %112 = sub i64 %110, %111, !dbg !4357
  %113 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 5, i32 4, !dbg !4357
  %114 = load i8*, i8** %113, align 8, !dbg !4357, !tbaa !4322
  %115 = ptrtoint i8* %114 to i64, !dbg !4357
  %116 = sub i64 %115, %111, !dbg !4357
  %117 = icmp ugt i64 %112, %116, !dbg !4357
  br i1 %117, label %118, label %119, !dbg !4354

118:                                              ; preds = %99
  store i8* %114, i8** %92, align 8, !dbg !4357, !tbaa !4314
  br label %119, !dbg !4357

119:                                              ; preds = %118, %99
  %120 = phi i8* [ %114, %118 ], [ %106, %99 ], !dbg !4354
  store i8* %120, i8** %90, align 8, !dbg !4354, !tbaa !4315
  %121 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %1, i64 0, i32 2, !dbg !4359
  %122 = bitcast i64** %121 to i8**, !dbg !4360
  store i8* %91, i8** %122, align 8, !dbg !4360, !tbaa !4361
  %123 = tail call i32 @ferror(%struct._IO_FILE* %0) #32, !dbg !4362
  %124 = icmp eq i32 %123, 0, !dbg !4363
  ret i1 %124, !dbg !4364
}

; Function Attrs: nofree nounwind
declare !dbg !4365 noundef i32 @fgetc(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @save_token(%struct.Tokens* %0) unnamed_addr #8 !dbg !4368 {
  %2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.Tokens* %0, metadata !4370, metadata !DIExpression()), !dbg !4392
  %3 = bitcast i64* %2 to i8*, !dbg !4393
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #32, !dbg !4393
  call void @llvm.dbg.value(metadata %struct.Tokens* %0, metadata !4372, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !4394
  %4 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 3, !dbg !4395
  %5 = load i8*, i8** %4, align 8, !dbg !4395, !tbaa !4314
  %6 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 2, !dbg !4395
  %7 = load i8*, i8** %6, align 8, !dbg !4395, !tbaa !4315
  %8 = ptrtoint i8* %5 to i64, !dbg !4395
  %9 = ptrtoint i8* %7 to i64, !dbg !4395
  %10 = xor i64 %9, -1, !dbg !4396
  %11 = add i64 %10, %8, !dbg !4396
  call void @llvm.dbg.value(metadata i64 %11, metadata !4371, metadata !DIExpression()), !dbg !4392
  store i64 %11, i64* %2, align 8, !dbg !4397, !tbaa !1212
  call void @llvm.dbg.value(metadata %struct.Tokens* %0, metadata !4375, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !4398
  call void @llvm.dbg.value(metadata i8* %7, metadata !4377, metadata !DIExpression()), !dbg !4398
  %12 = icmp eq i8* %5, %7, !dbg !4399
  br i1 %12, label %13, label %17, !dbg !4401

13:                                               ; preds = %1
  call void @llvm.dbg.value(metadata %struct.Tokens* %0, metadata !4375, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !4398
  call void @llvm.dbg.value(metadata %struct.Tokens* %0, metadata !4372, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !4394
  %14 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 10, !dbg !4399
  %15 = load i8, i8* %14, align 8, !dbg !4399
  %16 = or i8 %15, 2, !dbg !4399
  store i8 %16, i8* %14, align 8, !dbg !4399
  br label %17, !dbg !4399

17:                                               ; preds = %13, %1
  %18 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 6, !dbg !4401
  %19 = load i64, i64* %18, align 8, !dbg !4401, !tbaa !4347
  %20 = add i64 %19, %8, !dbg !4401
  %21 = xor i64 %19, -1, !dbg !4401
  %22 = and i64 %20, %21, !dbg !4401
  %23 = getelementptr inbounds i8, i8* null, i64 %22, !dbg !4401
  store i8* %23, i8** %4, align 8, !dbg !4401, !tbaa !4314
  %24 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 1, !dbg !4402
  %25 = bitcast %struct._obstack_chunk** %24 to i8**, !dbg !4402
  %26 = load i8*, i8** %25, align 8, !dbg !4402, !tbaa !4350
  %27 = ptrtoint i8* %23 to i64, !dbg !4402
  %28 = ptrtoint i8* %26 to i64, !dbg !4402
  %29 = sub i64 %27, %28, !dbg !4402
  %30 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3, i32 4, !dbg !4402
  %31 = load i8*, i8** %30, align 8, !dbg !4402, !tbaa !4322
  %32 = ptrtoint i8* %31 to i64, !dbg !4402
  %33 = sub i64 %32, %28, !dbg !4402
  %34 = icmp ugt i64 %29, %33, !dbg !4402
  br i1 %34, label %35, label %36, !dbg !4401

35:                                               ; preds = %17
  store i8* %31, i8** %4, align 8, !dbg !4402, !tbaa !4314
  br label %36, !dbg !4402

36:                                               ; preds = %35, %17
  %37 = phi i8* [ %31, %35 ], [ %23, %17 ], !dbg !4401
  store i8* %37, i8** %6, align 8, !dbg !4401, !tbaa !4315
  call void @llvm.dbg.value(metadata i8* %7, metadata !4374, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata %struct.Tokens* %0, metadata !4378, metadata !DIExpression(DW_OP_plus_uconst, 112, DW_OP_stack_value)), !dbg !4404
  call void @llvm.dbg.value(metadata %struct.Tokens* %0, metadata !4380, metadata !DIExpression(DW_OP_plus_uconst, 112, DW_OP_stack_value)), !dbg !4405
  %38 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, i32 4, !dbg !4406
  %39 = load i8*, i8** %38, align 8, !dbg !4406, !tbaa !4322
  %40 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, i32 3, !dbg !4406
  %41 = load i8*, i8** %40, align 8, !dbg !4406, !tbaa !4314
  %42 = ptrtoint i8* %39 to i64, !dbg !4406
  %43 = ptrtoint i8* %41 to i64, !dbg !4406
  %44 = sub i64 %42, %43, !dbg !4406
  %45 = icmp ult i64 %44, 8, !dbg !4407
  br i1 %45, label %48, label %46, !dbg !4408

46:                                               ; preds = %36
  %47 = bitcast i8* %41 to i8**, !dbg !4408
  br label %52, !dbg !4408

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4, !dbg !4408
  call void @llvm.dbg.value(metadata %struct.obstack* %49, metadata !4380, metadata !DIExpression()), !dbg !4405
  call void @llvm.dbg.value(metadata %struct.obstack* %49, metadata !4378, metadata !DIExpression()), !dbg !4404
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %49, i64 8) #32, !dbg !4407
  %50 = bitcast i8** %40 to i8***
  %51 = load i8**, i8*** %50, align 8, !dbg !4409, !tbaa !4314
  br label %52, !dbg !4407

52:                                               ; preds = %46, %48
  %53 = phi i8** [ %51, %48 ], [ %47, %46 ], !dbg !4409
  call void @llvm.dbg.value(metadata %struct.Tokens* %0, metadata !4383, metadata !DIExpression(DW_OP_plus_uconst, 112, DW_OP_stack_value)), !dbg !4410
  call void @llvm.dbg.value(metadata i8* undef, metadata !4385, metadata !DIExpression()), !dbg !4410
  store i8* %7, i8** %53, align 8, !dbg !4409, !tbaa !1122
  %54 = load i8*, i8** %40, align 8, !dbg !4409, !tbaa !4314
  %55 = getelementptr inbounds i8, i8* %54, i64 8, !dbg !4409
  store i8* %55, i8** %40, align 8, !dbg !4409, !tbaa !4314
  call void @llvm.dbg.value(metadata %struct.Tokens* %0, metadata !4386, metadata !DIExpression(DW_OP_plus_uconst, 200, DW_OP_stack_value)), !dbg !4411
  call void @llvm.dbg.value(metadata i64 8, metadata !4388, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata %struct.Tokens* %0, metadata !4389, metadata !DIExpression(DW_OP_plus_uconst, 200, DW_OP_stack_value)), !dbg !4412
  %56 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, i32 4, !dbg !4413
  %57 = load i8*, i8** %56, align 8, !dbg !4413, !tbaa !4322
  %58 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, i32 3, !dbg !4413
  %59 = load i8*, i8** %58, align 8, !dbg !4413, !tbaa !4314
  %60 = ptrtoint i8* %57 to i64, !dbg !4413
  %61 = ptrtoint i8* %59 to i64, !dbg !4413
  %62 = sub i64 %60, %61, !dbg !4413
  %63 = icmp ult i64 %62, 8, !dbg !4414
  br i1 %63, label %64, label %67, !dbg !4415

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5, !dbg !4415
  call void @llvm.dbg.value(metadata %struct.obstack* %65, metadata !4389, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata %struct.obstack* %65, metadata !4386, metadata !DIExpression()), !dbg !4411
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %65, i64 8) #32, !dbg !4414
  %66 = load i8*, i8** %58, align 8, !dbg !4415, !tbaa !4314
  br label %67, !dbg !4414

67:                                               ; preds = %64, %52
  %68 = phi i8* [ %66, %64 ], [ %59, %52 ], !dbg !4415
  call void @llvm.dbg.value(metadata i64* %2, metadata !4371, metadata !DIExpression(DW_OP_deref)), !dbg !4392
  call void @llvm.dbg.value(metadata i8* %68, metadata !4416, metadata !DIExpression()) #32, !dbg !4421
  call void @llvm.dbg.value(metadata i8* %3, metadata !4419, metadata !DIExpression()) #32, !dbg !4421
  call void @llvm.dbg.value(metadata i64 8, metadata !4420, metadata !DIExpression()) #32, !dbg !4421
  %69 = bitcast i8* %68 to i64*, !dbg !4423
  %70 = load i64, i64* %2, align 8, !dbg !4423
  store i64 %70, i64* %69, align 1, !dbg !4423
  %71 = load i8*, i8** %58, align 8, !dbg !4415, !tbaa !4314
  %72 = getelementptr inbounds i8, i8* %71, i64 8, !dbg !4415
  store i8* %72, i8** %58, align 8, !dbg !4415, !tbaa !4314
  %73 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 0, !dbg !4424
  %74 = load i64, i64* %73, align 8, !dbg !4425, !tbaa !1324
  %75 = add i64 %74, 1, !dbg !4425
  store i64 %75, i64* %73, align 8, !dbg !4425, !tbaa !1324
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #32, !dbg !4426
  ret void, !dbg !4426
}

; Function Attrs: nofree nounwind readonly
declare !dbg !4427 noundef i32 @ferror(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i64 @safe_read(i32 %0, i8* nocapture %1, i64 %2) local_unnamed_addr #30 !dbg !4428 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4432, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata i8* %1, metadata !4433, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata i64 %2, metadata !4434, metadata !DIExpression()), !dbg !4441
  %4 = tail call i64 @read(i32 %0, i8* %1, i64 %2) #32, !dbg !4442
  call void @llvm.dbg.value(metadata i64 %4, metadata !4435, metadata !DIExpression()), !dbg !4443
  %5 = icmp sgt i64 %4, -1, !dbg !4444
  br i1 %5, label %21, label %6, !dbg !4446

6:                                                ; preds = %3
  %7 = tail call i32* @__errno_location() #35, !dbg !4441
  br label %8, !dbg !4446

8:                                                ; preds = %6, %17
  %9 = phi i64 [ %4, %6 ], [ %19, %17 ]
  %10 = phi i64 [ %2, %6 ], [ %18, %17 ]
  call void @llvm.dbg.value(metadata i64 %10, metadata !4434, metadata !DIExpression()), !dbg !4441
  %11 = load i32, i32* %7, align 4, !dbg !4447, !tbaa !1268
  %12 = icmp eq i32 %11, 4, !dbg !4447
  br i1 %12, label %17, label %13, !dbg !4449, !llvm.loop !4450

13:                                               ; preds = %8
  %14 = icmp eq i32 %11, 22, !dbg !4453
  %15 = icmp ugt i64 %10, 2146435072
  %16 = and i1 %15, %14, !dbg !4455
  br i1 %16, label %17, label %21, !dbg !4455

17:                                               ; preds = %13, %8
  %18 = phi i64 [ %10, %8 ], [ 2146435072, %13 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !4434, metadata !DIExpression()), !dbg !4441
  %19 = tail call i64 @read(i32 %0, i8* %1, i64 %18) #32, !dbg !4442
  call void @llvm.dbg.value(metadata i64 %19, metadata !4435, metadata !DIExpression()), !dbg !4443
  %20 = icmp sgt i64 %19, -1, !dbg !4444
  br i1 %20, label %21, label %8, !dbg !4446

21:                                               ; preds = %17, %13, %3
  %22 = phi i64 [ %4, %3 ], [ %9, %13 ], [ %19, %17 ], !dbg !4442
  call void @llvm.dbg.value(metadata i64 %18, metadata !4434, metadata !DIExpression()), !dbg !4441
  ret i64 %22, !dbg !4456
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !4457 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4496, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i8* %1, metadata !4497, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i8* %2, metadata !4498, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i8* %3, metadata !4499, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i8** %4, metadata !4500, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i64 %5, metadata !4501, metadata !DIExpression()), !dbg !4502
  %7 = icmp eq i8* %1, null, !dbg !4503
  br i1 %7, label %10, label %8, !dbg !4505

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #32, !dbg !4506
  br label %12, !dbg !4506

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.122, i64 0, i64 0), i8* %2, i8* %3) #32, !dbg !4507
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.123, i64 0, i64 0), i32 5) #32, !dbg !4508
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #32, !dbg !4508
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.124, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4509
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.125, i64 0, i64 0), i32 5) #32, !dbg !4510
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.126, i64 0, i64 0)) #32, !dbg !4510
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.124, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4511
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
  ], !dbg !4512

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.127, i64 0, i64 0), i32 5) #32, !dbg !4513
  %21 = load i8*, i8** %4, align 8, !dbg !4513, !tbaa !1122
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #32, !dbg !4513
  br label %147, !dbg !4515

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.128, i64 0, i64 0), i32 5) #32, !dbg !4516
  %25 = load i8*, i8** %4, align 8, !dbg !4516, !tbaa !1122
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4516
  %27 = load i8*, i8** %26, align 8, !dbg !4516, !tbaa !1122
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #32, !dbg !4516
  br label %147, !dbg !4517

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.129, i64 0, i64 0), i32 5) #32, !dbg !4518
  %31 = load i8*, i8** %4, align 8, !dbg !4518, !tbaa !1122
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4518
  %33 = load i8*, i8** %32, align 8, !dbg !4518, !tbaa !1122
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4518
  %35 = load i8*, i8** %34, align 8, !dbg !4518, !tbaa !1122
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #32, !dbg !4518
  br label %147, !dbg !4519

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.130, i64 0, i64 0), i32 5) #32, !dbg !4520
  %39 = load i8*, i8** %4, align 8, !dbg !4520, !tbaa !1122
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4520
  %41 = load i8*, i8** %40, align 8, !dbg !4520, !tbaa !1122
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4520
  %43 = load i8*, i8** %42, align 8, !dbg !4520, !tbaa !1122
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4520
  %45 = load i8*, i8** %44, align 8, !dbg !4520, !tbaa !1122
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #32, !dbg !4520
  br label %147, !dbg !4521

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.131, i64 0, i64 0), i32 5) #32, !dbg !4522
  %49 = load i8*, i8** %4, align 8, !dbg !4522, !tbaa !1122
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4522
  %51 = load i8*, i8** %50, align 8, !dbg !4522, !tbaa !1122
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4522
  %53 = load i8*, i8** %52, align 8, !dbg !4522, !tbaa !1122
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4522
  %55 = load i8*, i8** %54, align 8, !dbg !4522, !tbaa !1122
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4522
  %57 = load i8*, i8** %56, align 8, !dbg !4522, !tbaa !1122
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #32, !dbg !4522
  br label %147, !dbg !4523

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.132, i64 0, i64 0), i32 5) #32, !dbg !4524
  %61 = load i8*, i8** %4, align 8, !dbg !4524, !tbaa !1122
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4524
  %63 = load i8*, i8** %62, align 8, !dbg !4524, !tbaa !1122
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4524
  %65 = load i8*, i8** %64, align 8, !dbg !4524, !tbaa !1122
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4524
  %67 = load i8*, i8** %66, align 8, !dbg !4524, !tbaa !1122
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4524
  %69 = load i8*, i8** %68, align 8, !dbg !4524, !tbaa !1122
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4524
  %71 = load i8*, i8** %70, align 8, !dbg !4524, !tbaa !1122
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #32, !dbg !4524
  br label %147, !dbg !4525

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.133, i64 0, i64 0), i32 5) #32, !dbg !4526
  %75 = load i8*, i8** %4, align 8, !dbg !4526, !tbaa !1122
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4526
  %77 = load i8*, i8** %76, align 8, !dbg !4526, !tbaa !1122
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4526
  %79 = load i8*, i8** %78, align 8, !dbg !4526, !tbaa !1122
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4526
  %81 = load i8*, i8** %80, align 8, !dbg !4526, !tbaa !1122
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4526
  %83 = load i8*, i8** %82, align 8, !dbg !4526, !tbaa !1122
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4526
  %85 = load i8*, i8** %84, align 8, !dbg !4526, !tbaa !1122
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4526
  %87 = load i8*, i8** %86, align 8, !dbg !4526, !tbaa !1122
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #32, !dbg !4526
  br label %147, !dbg !4527

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.134, i64 0, i64 0), i32 5) #32, !dbg !4528
  %91 = load i8*, i8** %4, align 8, !dbg !4528, !tbaa !1122
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4528
  %93 = load i8*, i8** %92, align 8, !dbg !4528, !tbaa !1122
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4528
  %95 = load i8*, i8** %94, align 8, !dbg !4528, !tbaa !1122
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4528
  %97 = load i8*, i8** %96, align 8, !dbg !4528, !tbaa !1122
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4528
  %99 = load i8*, i8** %98, align 8, !dbg !4528, !tbaa !1122
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4528
  %101 = load i8*, i8** %100, align 8, !dbg !4528, !tbaa !1122
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4528
  %103 = load i8*, i8** %102, align 8, !dbg !4528, !tbaa !1122
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4528
  %105 = load i8*, i8** %104, align 8, !dbg !4528, !tbaa !1122
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #32, !dbg !4528
  br label %147, !dbg !4529

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.135, i64 0, i64 0), i32 5) #32, !dbg !4530
  %109 = load i8*, i8** %4, align 8, !dbg !4530, !tbaa !1122
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4530
  %111 = load i8*, i8** %110, align 8, !dbg !4530, !tbaa !1122
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4530
  %113 = load i8*, i8** %112, align 8, !dbg !4530, !tbaa !1122
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4530
  %115 = load i8*, i8** %114, align 8, !dbg !4530, !tbaa !1122
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4530
  %117 = load i8*, i8** %116, align 8, !dbg !4530, !tbaa !1122
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4530
  %119 = load i8*, i8** %118, align 8, !dbg !4530, !tbaa !1122
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4530
  %121 = load i8*, i8** %120, align 8, !dbg !4530, !tbaa !1122
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4530
  %123 = load i8*, i8** %122, align 8, !dbg !4530, !tbaa !1122
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4530
  %125 = load i8*, i8** %124, align 8, !dbg !4530, !tbaa !1122
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #32, !dbg !4530
  br label %147, !dbg !4531

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.136, i64 0, i64 0), i32 5) #32, !dbg !4532
  %129 = load i8*, i8** %4, align 8, !dbg !4532, !tbaa !1122
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4532
  %131 = load i8*, i8** %130, align 8, !dbg !4532, !tbaa !1122
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4532
  %133 = load i8*, i8** %132, align 8, !dbg !4532, !tbaa !1122
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4532
  %135 = load i8*, i8** %134, align 8, !dbg !4532, !tbaa !1122
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4532
  %137 = load i8*, i8** %136, align 8, !dbg !4532, !tbaa !1122
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4532
  %139 = load i8*, i8** %138, align 8, !dbg !4532, !tbaa !1122
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4532
  %141 = load i8*, i8** %140, align 8, !dbg !4532, !tbaa !1122
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4532
  %143 = load i8*, i8** %142, align 8, !dbg !4532, !tbaa !1122
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4532
  %145 = load i8*, i8** %144, align 8, !dbg !4532, !tbaa !1122
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #32, !dbg !4532
  br label %147, !dbg !4533

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4534
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !4535 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4539, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.value(metadata i8* %1, metadata !4540, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.value(metadata i8* %2, metadata !4541, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.value(metadata i8* %3, metadata !4542, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.value(metadata i8** %4, metadata !4543, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.value(metadata i64 0, metadata !4544, metadata !DIExpression()), !dbg !4545
  br label %6, !dbg !4546

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4548
  call void @llvm.dbg.value(metadata i64 %7, metadata !4544, metadata !DIExpression()), !dbg !4545
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4549
  %9 = load i8*, i8** %8, align 8, !dbg !4549, !tbaa !1122
  %10 = icmp eq i8* %9, null, !dbg !4551
  %11 = add i64 %7, 1, !dbg !4552
  call void @llvm.dbg.value(metadata i64 %11, metadata !4544, metadata !DIExpression()), !dbg !4545
  br i1 %10, label %12, label %6, !dbg !4551, !llvm.loop !4553

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4555
  ret void, !dbg !4556
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !4557 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4568, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata i8* %1, metadata !4569, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata i8* %2, metadata !4570, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata i8* %3, metadata !4571, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4572, metadata !DIExpression()), !dbg !4576
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4577
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #32, !dbg !4577
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4574, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i64 0, metadata !4573, metadata !DIExpression()), !dbg !4576
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !4573, metadata !DIExpression()), !dbg !4576
  %11 = load i32, i32* %8, align 8, !dbg !4579
  %12 = icmp ult i32 %11, 41, !dbg !4579
  br i1 %12, label %13, label %18, !dbg !4579

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !4579
  %15 = zext i32 %11 to i64, !dbg !4579
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4579
  %17 = add nuw nsw i32 %11, 8, !dbg !4579
  store i32 %17, i32* %8, align 8, !dbg !4579
  br label %21, !dbg !4579

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !4579
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4579
  store i8* %20, i8** %9, align 8, !dbg !4579
  br label %21, !dbg !4579

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4579
  %25 = load i8*, i8** %24, align 8, !dbg !4579
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4582
  store i8* %25, i8** %26, align 16, !dbg !4583, !tbaa !1122
  %27 = icmp eq i8* %25, null, !dbg !4584
  br i1 %27, label %30, label %28, !dbg !4585

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4573, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata i64 1, metadata !4573, metadata !DIExpression()), !dbg !4576
  %29 = icmp ult i32 %22, 41, !dbg !4579
  br i1 %29, label %35, label %32, !dbg !4579

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4586
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4587
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #32, !dbg !4588
  ret void, !dbg !4588

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !4579
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4579
  store i8* %34, i8** %9, align 8, !dbg !4579
  br label %40, !dbg !4579

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !4579
  %37 = zext i32 %22 to i64, !dbg !4579
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4579
  %39 = add nuw nsw i32 %22, 8, !dbg !4579
  store i32 %39, i32* %8, align 8, !dbg !4579
  br label %40, !dbg !4579

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4579
  %44 = load i8*, i8** %43, align 8, !dbg !4579
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4582
  store i8* %44, i8** %45, align 8, !dbg !4583, !tbaa !1122
  %46 = icmp eq i8* %44, null, !dbg !4584
  br i1 %46, label %30, label %47, !dbg !4585

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4573, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata i64 2, metadata !4573, metadata !DIExpression()), !dbg !4576
  %48 = icmp ult i32 %41, 41, !dbg !4579
  br i1 %48, label %52, label %49, !dbg !4579

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !4579
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4579
  store i8* %51, i8** %9, align 8, !dbg !4579
  br label %57, !dbg !4579

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !4579
  %54 = zext i32 %41 to i64, !dbg !4579
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4579
  %56 = add nuw nsw i32 %41, 8, !dbg !4579
  store i32 %56, i32* %8, align 8, !dbg !4579
  br label %57, !dbg !4579

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4579
  %61 = load i8*, i8** %60, align 8, !dbg !4579
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4582
  store i8* %61, i8** %62, align 16, !dbg !4583, !tbaa !1122
  %63 = icmp eq i8* %61, null, !dbg !4584
  br i1 %63, label %30, label %64, !dbg !4585

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4573, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata i64 3, metadata !4573, metadata !DIExpression()), !dbg !4576
  %65 = icmp ult i32 %58, 41, !dbg !4579
  br i1 %65, label %69, label %66, !dbg !4579

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !4579
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4579
  store i8* %68, i8** %9, align 8, !dbg !4579
  br label %74, !dbg !4579

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !4579
  %71 = zext i32 %58 to i64, !dbg !4579
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4579
  %73 = add nuw nsw i32 %58, 8, !dbg !4579
  store i32 %73, i32* %8, align 8, !dbg !4579
  br label %74, !dbg !4579

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4579
  %78 = load i8*, i8** %77, align 8, !dbg !4579
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4582
  store i8* %78, i8** %79, align 8, !dbg !4583, !tbaa !1122
  %80 = icmp eq i8* %78, null, !dbg !4584
  br i1 %80, label %30, label %81, !dbg !4585

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4573, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata i64 4, metadata !4573, metadata !DIExpression()), !dbg !4576
  %82 = icmp ult i32 %75, 41, !dbg !4579
  br i1 %82, label %86, label %83, !dbg !4579

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !4579
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4579
  store i8* %85, i8** %9, align 8, !dbg !4579
  br label %91, !dbg !4579

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !4579
  %88 = zext i32 %75 to i64, !dbg !4579
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4579
  %90 = add nuw nsw i32 %75, 8, !dbg !4579
  store i32 %90, i32* %8, align 8, !dbg !4579
  br label %91, !dbg !4579

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4579
  %95 = load i8*, i8** %94, align 8, !dbg !4579
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4582
  store i8* %95, i8** %96, align 16, !dbg !4583, !tbaa !1122
  %97 = icmp eq i8* %95, null, !dbg !4584
  br i1 %97, label %30, label %98, !dbg !4585

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4573, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata i64 5, metadata !4573, metadata !DIExpression()), !dbg !4576
  %99 = icmp ult i32 %92, 41, !dbg !4579
  br i1 %99, label %103, label %100, !dbg !4579

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !4579
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4579
  store i8* %102, i8** %9, align 8, !dbg !4579
  br label %108, !dbg !4579

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !4579
  %105 = zext i32 %92 to i64, !dbg !4579
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4579
  %107 = add nuw nsw i32 %92, 8, !dbg !4579
  store i32 %107, i32* %8, align 8, !dbg !4579
  br label %108, !dbg !4579

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4579
  %111 = load i8*, i8** %110, align 8, !dbg !4579
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4582
  store i8* %111, i8** %112, align 8, !dbg !4583, !tbaa !1122
  %113 = icmp eq i8* %111, null, !dbg !4584
  br i1 %113, label %30, label %114, !dbg !4585

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4573, metadata !DIExpression()), !dbg !4576
  %115 = load i8*, i8** %9, align 8, !dbg !4579
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4579
  store i8* %116, i8** %9, align 8, !dbg !4579
  %117 = bitcast i8* %115 to i8**, !dbg !4579
  %118 = load i8*, i8** %117, align 8, !dbg !4579
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4582
  store i8* %118, i8** %119, align 16, !dbg !4583, !tbaa !1122
  %120 = icmp eq i8* %118, null, !dbg !4584
  br i1 %120, label %30, label %121, !dbg !4585

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4573, metadata !DIExpression()), !dbg !4576
  %122 = load i8*, i8** %9, align 8, !dbg !4579
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4579
  store i8* %123, i8** %9, align 8, !dbg !4579
  %124 = bitcast i8* %122 to i8**, !dbg !4579
  %125 = load i8*, i8** %124, align 8, !dbg !4579
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4582
  store i8* %125, i8** %126, align 8, !dbg !4583, !tbaa !1122
  %127 = icmp eq i8* %125, null, !dbg !4584
  br i1 %127, label %30, label %128, !dbg !4585

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4573, metadata !DIExpression()), !dbg !4576
  %129 = load i8*, i8** %9, align 8, !dbg !4579
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4579
  store i8* %130, i8** %9, align 8, !dbg !4579
  %131 = bitcast i8* %129 to i8**, !dbg !4579
  %132 = load i8*, i8** %131, align 8, !dbg !4579
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4582
  store i8* %132, i8** %133, align 16, !dbg !4583, !tbaa !1122
  %134 = icmp eq i8* %132, null, !dbg !4584
  br i1 %134, label %30, label %135, !dbg !4585

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4573, metadata !DIExpression()), !dbg !4576
  %136 = load i8*, i8** %9, align 8, !dbg !4579
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4579
  store i8* %137, i8** %9, align 8, !dbg !4579
  %138 = bitcast i8* %136 to i8**, !dbg !4579
  %139 = load i8*, i8** %138, align 8, !dbg !4579
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4582
  store i8* %139, i8** %140, align 8, !dbg !4583, !tbaa !1122
  %141 = icmp eq i8* %139, null, !dbg !4584
  %142 = select i1 %141, i64 9, i64 10, !dbg !4585
  br label %30, !dbg !4585
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !4589 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4593, metadata !DIExpression()), !dbg !4603
  call void @llvm.dbg.value(metadata i8* %1, metadata !4594, metadata !DIExpression()), !dbg !4603
  call void @llvm.dbg.value(metadata i8* %2, metadata !4595, metadata !DIExpression()), !dbg !4603
  call void @llvm.dbg.value(metadata i8* %3, metadata !4596, metadata !DIExpression()), !dbg !4603
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4604
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #32, !dbg !4604
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4597, metadata !DIExpression()), !dbg !4605
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4606
  call void @llvm.va_start(i8* nonnull %6), !dbg !4606
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4607
  call void @llvm.va_end(i8* nonnull %6), !dbg !4608
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #32, !dbg !4609
  ret void, !dbg !4609
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #31

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #31

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !4610 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4611, !tbaa !1122
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.124, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !4611
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.139, i64 0, i64 0), i32 5) #32, !dbg !4612
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.140, i64 0, i64 0)) #32, !dbg !4612
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.141, i64 0, i64 0), i32 5) #32, !dbg !4613
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.142, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.143, i64 0, i64 0)) #32, !dbg !4613
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.144, i64 0, i64 0), i32 5) #32, !dbg !4614
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.145, i64 0, i64 0)) #32, !dbg !4614
  ret void, !dbg !4615
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !4616 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4618, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.value(metadata i64 %1, metadata !4619, metadata !DIExpression()), !dbg !4620
  %3 = udiv i64 9223372036854775807, %1, !dbg !4621
  %4 = icmp ult i64 %3, %0, !dbg !4621
  br i1 %4, label %5, label %6, !dbg !4623

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !4624
  unreachable, !dbg !4624

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4625
  call void @llvm.dbg.value(metadata i64 %7, metadata !4626, metadata !DIExpression()) #32, !dbg !4630
  %8 = tail call noalias i8* @malloc(i64 %7) #32, !dbg !4632
  call void @llvm.dbg.value(metadata i8* %8, metadata !4629, metadata !DIExpression()) #32, !dbg !4630
  %9 = icmp eq i8* %8, null, !dbg !4633
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !4635
  br i1 %11, label %12, label %13, !dbg !4635

12:                                               ; preds = %6
  tail call void @xalloc_die() #34, !dbg !4636
  unreachable, !dbg !4636

13:                                               ; preds = %6
  ret i8* %8, !dbg !4637
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !4627 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4626, metadata !DIExpression()), !dbg !4638
  %2 = tail call noalias i8* @malloc(i64 %0) #32, !dbg !4639
  call void @llvm.dbg.value(metadata i8* %2, metadata !4629, metadata !DIExpression()), !dbg !4638
  %3 = icmp eq i8* %2, null, !dbg !4640
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !4641
  br i1 %5, label %6, label %7, !dbg !4641

6:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !4642
  unreachable, !dbg !4642

7:                                                ; preds = %1
  ret i8* %2, !dbg !4643
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #23 !dbg !4644 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4648, metadata !DIExpression()), !dbg !4651
  call void @llvm.dbg.value(metadata i64 %1, metadata !4649, metadata !DIExpression()), !dbg !4651
  call void @llvm.dbg.value(metadata i64 %2, metadata !4650, metadata !DIExpression()), !dbg !4651
  %4 = udiv i64 9223372036854775807, %2, !dbg !4652
  %5 = icmp ult i64 %4, %1, !dbg !4652
  br i1 %5, label %6, label %7, !dbg !4654

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !4655
  unreachable, !dbg !4655

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4656
  call void @llvm.dbg.value(metadata i8* %0, metadata !4657, metadata !DIExpression()) #32, !dbg !4661
  call void @llvm.dbg.value(metadata i64 %8, metadata !4660, metadata !DIExpression()) #32, !dbg !4661
  %9 = icmp eq i64 %8, 0, !dbg !4663
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !4665
  br i1 %11, label %12, label %13, !dbg !4665

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #32, !dbg !4666
  br label %19, !dbg !4668

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #32, !dbg !4669
  call void @llvm.dbg.value(metadata i8* %14, metadata !4657, metadata !DIExpression()) #32, !dbg !4661
  %15 = icmp eq i8* %14, null, !dbg !4670
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !4672
  br i1 %17, label %18, label %19, !dbg !4672

18:                                               ; preds = %13
  tail call void @xalloc_die() #34, !dbg !4673
  unreachable, !dbg !4673

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4661
  ret i8* %20, !dbg !4674
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4658 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4657, metadata !DIExpression()), !dbg !4675
  call void @llvm.dbg.value(metadata i64 %1, metadata !4660, metadata !DIExpression()), !dbg !4675
  %3 = icmp eq i64 %1, 0, !dbg !4676
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !4677
  br i1 %5, label %6, label %7, !dbg !4677

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #32, !dbg !4678
  br label %13, !dbg !4679

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #32, !dbg !4680
  call void @llvm.dbg.value(metadata i8* %8, metadata !4657, metadata !DIExpression()), !dbg !4675
  %9 = icmp eq i8* %8, null, !dbg !4681
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !4682
  br i1 %11, label %12, label %13, !dbg !4682

12:                                               ; preds = %7
  tail call void @xalloc_die() #34, !dbg !4683
  unreachable, !dbg !4683

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4675
  ret i8* %14, !dbg !4684
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #23 !dbg !686 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !690, metadata !DIExpression()), !dbg !4685
  call void @llvm.dbg.value(metadata i64* %1, metadata !691, metadata !DIExpression()), !dbg !4685
  call void @llvm.dbg.value(metadata i64 %2, metadata !692, metadata !DIExpression()), !dbg !4685
  %4 = load i64, i64* %1, align 8, !dbg !4686, !tbaa !1212
  call void @llvm.dbg.value(metadata i64 %4, metadata !693, metadata !DIExpression()), !dbg !4685
  %5 = icmp eq i8* %0, null, !dbg !4687
  br i1 %5, label %6, label %20, !dbg !4689

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4690
  br i1 %7, label %8, label %13, !dbg !4693

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4694
  call void @llvm.dbg.value(metadata i64 %9, metadata !693, metadata !DIExpression()), !dbg !4685
  %10 = icmp ugt i64 %2, 128, !dbg !4696
  %11 = zext i1 %10 to i64, !dbg !4696
  %12 = add nuw nsw i64 %9, %11, !dbg !4697
  call void @llvm.dbg.value(metadata i64 %12, metadata !693, metadata !DIExpression()), !dbg !4685
  br label %13, !dbg !4698

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4685
  call void @llvm.dbg.value(metadata i64 %14, metadata !693, metadata !DIExpression()), !dbg !4685
  %15 = udiv i64 9223372036854775807, %2, !dbg !4699
  %16 = icmp ult i64 %15, %14, !dbg !4699
  br i1 %16, label %19, label %17, !dbg !4701

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !693, metadata !DIExpression()), !dbg !4685
  store i64 %14, i64* %1, align 8, !dbg !4702, !tbaa !1212
  %18 = mul i64 %14, %2, !dbg !4703
  call void @llvm.dbg.value(metadata i8* %0, metadata !4657, metadata !DIExpression()) #32, !dbg !4704
  call void @llvm.dbg.value(metadata i64 %28, metadata !4660, metadata !DIExpression()) #32, !dbg !4704
  br label %31, !dbg !4706

19:                                               ; preds = %13
  tail call void @xalloc_die() #34, !dbg !4707
  unreachable, !dbg !4707

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4708
  %22 = icmp ugt i64 %21, %4, !dbg !4711
  br i1 %22, label %24, label %23, !dbg !4712

23:                                               ; preds = %20
  tail call void @xalloc_die() #34, !dbg !4713
  unreachable, !dbg !4713

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4714
  %26 = add nuw i64 %4, 1, !dbg !4715
  %27 = add i64 %26, %25, !dbg !4716
  call void @llvm.dbg.value(metadata i64 %27, metadata !693, metadata !DIExpression()), !dbg !4685
  store i64 %27, i64* %1, align 8, !dbg !4702, !tbaa !1212
  %28 = mul i64 %27, %2, !dbg !4703
  call void @llvm.dbg.value(metadata i8* %0, metadata !4657, metadata !DIExpression()) #32, !dbg !4704
  call void @llvm.dbg.value(metadata i64 %28, metadata !4660, metadata !DIExpression()) #32, !dbg !4704
  %29 = icmp eq i64 %28, 0, !dbg !4717
  br i1 %29, label %30, label %31, !dbg !4706

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #32, !dbg !4718
  br label %38, !dbg !4719

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #32, !dbg !4720
  call void @llvm.dbg.value(metadata i8* %33, metadata !4657, metadata !DIExpression()) #32, !dbg !4704
  %34 = icmp eq i8* %33, null, !dbg !4721
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !4722
  br i1 %36, label %37, label %38, !dbg !4722

37:                                               ; preds = %31
  tail call void @xalloc_die() #34, !dbg !4723
  unreachable, !dbg !4723

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4704
  ret i8* %39, !dbg !4724
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #23 !dbg !4725 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4727, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.value(metadata i64 %0, metadata !4626, metadata !DIExpression()) #32, !dbg !4729
  %2 = tail call noalias i8* @malloc(i64 %0) #32, !dbg !4731
  call void @llvm.dbg.value(metadata i8* %2, metadata !4629, metadata !DIExpression()) #32, !dbg !4729
  %3 = icmp eq i8* %2, null, !dbg !4732
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !4733
  br i1 %5, label %6, label %7, !dbg !4733

6:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !4734
  unreachable, !dbg !4734

7:                                                ; preds = %1
  ret i8* %2, !dbg !4735
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4736 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4740, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata i64* %1, metadata !4741, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata i8* %0, metadata !690, metadata !DIExpression()) #32, !dbg !4743
  call void @llvm.dbg.value(metadata i64* %1, metadata !691, metadata !DIExpression()) #32, !dbg !4743
  call void @llvm.dbg.value(metadata i64 1, metadata !692, metadata !DIExpression()) #32, !dbg !4743
  %3 = load i64, i64* %1, align 8, !dbg !4745, !tbaa !1212
  call void @llvm.dbg.value(metadata i64 %3, metadata !693, metadata !DIExpression()) #32, !dbg !4743
  %4 = icmp eq i8* %0, null, !dbg !4746
  br i1 %4, label %5, label %10, !dbg !4747

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4748
  br i1 %6, label %17, label %7, !dbg !4749

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !693, metadata !DIExpression()) #32, !dbg !4743
  %8 = icmp slt i64 %3, 0, !dbg !4750
  br i1 %8, label %9, label %17, !dbg !4751

9:                                                ; preds = %7
  tail call void @xalloc_die() #34, !dbg !4752
  unreachable, !dbg !4752

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !4753
  br i1 %11, label %13, label %12, !dbg !4754

12:                                               ; preds = %10
  tail call void @xalloc_die() #34, !dbg !4755
  unreachable, !dbg !4755

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !4756
  %15 = add nuw nsw i64 %3, 1, !dbg !4757
  %16 = add nuw nsw i64 %15, %14, !dbg !4758
  call void @llvm.dbg.value(metadata i64 %16, metadata !693, metadata !DIExpression()) #32, !dbg !4743
  call void @llvm.dbg.value(metadata i8* %0, metadata !4657, metadata !DIExpression()) #32, !dbg !4759
  call void @llvm.dbg.value(metadata i64 %16, metadata !4660, metadata !DIExpression()) #32, !dbg !4759
  br label %17, !dbg !4761

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !4762
  store i64 %18, i64* %1, align 8, !dbg !4762, !tbaa !1212
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #32, !dbg !4763
  call void @llvm.dbg.value(metadata i8* %19, metadata !4657, metadata !DIExpression()) #32, !dbg !4759
  %20 = icmp eq i8* %19, null, !dbg !4764
  br i1 %20, label %21, label %22, !dbg !4765

21:                                               ; preds = %17
  tail call void @xalloc_die() #34, !dbg !4766
  unreachable, !dbg !4766

22:                                               ; preds = %17
  ret i8* %19, !dbg !4767
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4768 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4770, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i64 %0, metadata !4772, metadata !DIExpression()) #32, !dbg !4777
  call void @llvm.dbg.value(metadata i64 1, metadata !4775, metadata !DIExpression()) #32, !dbg !4777
  %2 = icmp slt i64 %0, 0, !dbg !4779
  br i1 %2, label %6, label %3, !dbg !4781

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #32, !dbg !4782
  call void @llvm.dbg.value(metadata i8* %4, metadata !4776, metadata !DIExpression()) #32, !dbg !4777
  %5 = icmp eq i8* %4, null, !dbg !4783
  br i1 %5, label %6, label %7, !dbg !4784

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #34, !dbg !4785
  unreachable, !dbg !4785

7:                                                ; preds = %3
  ret i8* %4, !dbg !4786
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4773 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4772, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i64 %1, metadata !4775, metadata !DIExpression()), !dbg !4787
  %3 = udiv i64 9223372036854775807, %1, !dbg !4788
  %4 = icmp ult i64 %3, %0, !dbg !4788
  br i1 %4, label %8, label %5, !dbg !4789

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #32, !dbg !4790
  call void @llvm.dbg.value(metadata i8* %6, metadata !4776, metadata !DIExpression()), !dbg !4787
  %7 = icmp eq i8* %6, null, !dbg !4791
  br i1 %7, label %8, label %9, !dbg !4792

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #34, !dbg !4793
  unreachable, !dbg !4793

9:                                                ; preds = %5
  ret i8* %6, !dbg !4794
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4795 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4799, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i64 %1, metadata !4800, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i64 %1, metadata !4626, metadata !DIExpression()) #32, !dbg !4802
  %3 = tail call noalias i8* @malloc(i64 %1) #32, !dbg !4804
  call void @llvm.dbg.value(metadata i8* %3, metadata !4629, metadata !DIExpression()) #32, !dbg !4802
  %4 = icmp eq i8* %3, null, !dbg !4805
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !4806
  br i1 %6, label %7, label %8, !dbg !4806

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !4807
  unreachable, !dbg !4807

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4808, metadata !DIExpression()) #32, !dbg !4813
  call void @llvm.dbg.value(metadata i8* %0, metadata !4811, metadata !DIExpression()) #32, !dbg !4813
  call void @llvm.dbg.value(metadata i64 %1, metadata !4812, metadata !DIExpression()) #32, !dbg !4813
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #32, !dbg !4815
  ret i8* %3, !dbg !4816
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4817 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4819, metadata !DIExpression()), !dbg !4820
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #33, !dbg !4821
  %3 = add i64 %2, 1, !dbg !4822
  call void @llvm.dbg.value(metadata i8* %0, metadata !4799, metadata !DIExpression()) #32, !dbg !4823
  call void @llvm.dbg.value(metadata i64 %3, metadata !4800, metadata !DIExpression()) #32, !dbg !4823
  call void @llvm.dbg.value(metadata i64 %3, metadata !4626, metadata !DIExpression()) #32, !dbg !4825
  %4 = tail call noalias i8* @malloc(i64 %3) #32, !dbg !4827
  call void @llvm.dbg.value(metadata i8* %4, metadata !4629, metadata !DIExpression()) #32, !dbg !4825
  %5 = icmp eq i8* %4, null, !dbg !4828
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !4829
  br i1 %7, label %8, label %9, !dbg !4829

8:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !4830
  unreachable, !dbg !4830

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4808, metadata !DIExpression()) #32, !dbg !4831
  call void @llvm.dbg.value(metadata i8* %0, metadata !4811, metadata !DIExpression()) #32, !dbg !4831
  call void @llvm.dbg.value(metadata i64 %3, metadata !4812, metadata !DIExpression()) #32, !dbg !4831
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #32, !dbg !4833
  ret i8* %4, !dbg !4834
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4835 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4836, !tbaa !1268
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.156, i64 0, i64 0), i32 5) #32, !dbg !4837
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157, i64 0, i64 0), i8* %2) #32, !dbg !4838
  tail call void @abort() #34, !dbg !4839
  unreachable, !dbg !4839
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #15 !dbg !4840 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4842, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i64 %1, metadata !4843, metadata !DIExpression()), !dbg !4848
  %3 = icmp eq i64 %0, 0, !dbg !4849
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !4850
  br i1 %5, label %11, label %6, !dbg !4850

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4845, metadata !DIExpression()), !dbg !4851
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4852
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4852
  br i1 %8, label %9, label %11, !dbg !4854

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #35, !dbg !4855
  store i32 12, i32* %10, align 4, !dbg !4857, !tbaa !1268
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4842, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i64 %12, metadata !4843, metadata !DIExpression()), !dbg !4848
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #32, !dbg !4858
  call void @llvm.dbg.value(metadata i8* %14, metadata !4844, metadata !DIExpression()), !dbg !4848
  br label %15, !dbg !4859

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4848
  ret i8* %16, !dbg !4860
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4861 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4899, metadata !DIExpression()), !dbg !4903
  call void @llvm.dbg.value(metadata i32 0, metadata !4900, metadata !DIExpression()), !dbg !4903
  call void @llvm.dbg.value(metadata i32 0, metadata !4902, metadata !DIExpression()), !dbg !4903
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #32, !dbg !4904
  call void @llvm.dbg.value(metadata i32 %2, metadata !4901, metadata !DIExpression()), !dbg !4903
  %3 = icmp slt i32 %2, 0, !dbg !4905
  br i1 %3, label %4, label %6, !dbg !4907

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4908
  br label %24, !dbg !4909

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #32, !dbg !4910
  %8 = icmp eq i32 %7, 0, !dbg !4910
  br i1 %8, label %13, label %9, !dbg !4912

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #32, !dbg !4913
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #32, !dbg !4914
  %12 = icmp eq i64 %11, -1, !dbg !4915
  br i1 %12, label %16, label %13, !dbg !4916

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #32, !dbg !4917
  %15 = icmp eq i32 %14, 0, !dbg !4917
  br i1 %15, label %16, label %18, !dbg !4918

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4900, metadata !DIExpression()), !dbg !4903
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4919
  call void @llvm.dbg.value(metadata i32 %21, metadata !4902, metadata !DIExpression()), !dbg !4903
  br label %24, !dbg !4920

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #35, !dbg !4921
  %20 = load i32, i32* %19, align 4, !dbg !4921, !tbaa !1268
  call void @llvm.dbg.value(metadata i32 %20, metadata !4900, metadata !DIExpression()), !dbg !4903
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4919
  call void @llvm.dbg.value(metadata i32 %21, metadata !4902, metadata !DIExpression()), !dbg !4903
  %22 = icmp eq i32 %20, 0, !dbg !4922
  br i1 %22, label %24, label %23, !dbg !4920

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4924, !tbaa !1268
  call void @llvm.dbg.value(metadata i32 -1, metadata !4902, metadata !DIExpression()), !dbg !4903
  br label %24, !dbg !4926

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4903
  ret i32 %25, !dbg !4927
}

; Function Attrs: nofree nounwind
declare !dbg !4928 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4931 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4969, metadata !DIExpression()), !dbg !4970
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4971
  br i1 %2, label %6, label %3, !dbg !4973

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #32, !dbg !4974
  %5 = icmp eq i32 %4, 0, !dbg !4974
  br i1 %5, label %6, label %8, !dbg !4975

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4976
  br label %17, !dbg !4977

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4978, metadata !DIExpression()) #32, !dbg !4983
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4985
  %10 = load i32, i32* %9, align 8, !dbg !4985, !tbaa !4987
  %11 = and i32 %10, 256, !dbg !4988
  %12 = icmp eq i32 %11, 0, !dbg !4988
  br i1 %12, label %15, label %13, !dbg !4989

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #32, !dbg !4990
  br label %15, !dbg !4990

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4991
  br label %17, !dbg !4992

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4970
  ret i32 %18, !dbg !4993
}

; Function Attrs: nofree nounwind
declare !dbg !4994 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4997 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5035, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata i64 %1, metadata !5036, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata i32 %2, metadata !5037, metadata !DIExpression()), !dbg !5041
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5042
  %5 = load i8*, i8** %4, align 8, !dbg !5042, !tbaa !5043
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5044
  %7 = load i8*, i8** %6, align 8, !dbg !5044, !tbaa !5045
  %8 = icmp eq i8* %5, %7, !dbg !5046
  br i1 %8, label %9, label %28, !dbg !5047

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5048
  %11 = load i8*, i8** %10, align 8, !dbg !5048, !tbaa !2129
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5049
  %13 = load i8*, i8** %12, align 8, !dbg !5049, !tbaa !5050
  %14 = icmp eq i8* %11, %13, !dbg !5051
  br i1 %14, label %15, label %28, !dbg !5052

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5053
  %17 = load i8*, i8** %16, align 8, !dbg !5053, !tbaa !5054
  %18 = icmp eq i8* %17, null, !dbg !5055
  br i1 %18, label %19, label %28, !dbg !5056

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #32, !dbg !5057
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #32, !dbg !5058
  call void @llvm.dbg.value(metadata i64 %21, metadata !5038, metadata !DIExpression()), !dbg !5059
  %22 = icmp eq i64 %21, -1, !dbg !5060
  br i1 %22, label %30, label %23, !dbg !5062

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5063
  %25 = load i32, i32* %24, align 8, !dbg !5064, !tbaa !4987
  %26 = and i32 %25, -17, !dbg !5064
  store i32 %26, i32* %24, align 8, !dbg !5064, !tbaa !4987
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5065
  store i64 %21, i64* %27, align 8, !dbg !5066, !tbaa !5067
  br label %30, !dbg !5068

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5069
  br label %30, !dbg !5070

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !5041
  ret i32 %31, !dbg !5071
}

; Function Attrs: nofree nounwind
declare !dbg !5072 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !5075 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !5091, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata i8* %1, metadata !5092, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata i64 %2, metadata !5093, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !5094, metadata !DIExpression()), !dbg !5100
  %6 = bitcast i32* %5 to i8*, !dbg !5101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #32, !dbg !5101
  %7 = icmp eq i32* %0, null, !dbg !5102
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5104
  call void @llvm.dbg.value(metadata i32* %8, metadata !5091, metadata !DIExpression()), !dbg !5100
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #32, !dbg !5105
  call void @llvm.dbg.value(metadata i64 %9, metadata !5095, metadata !DIExpression()), !dbg !5100
  %10 = icmp ugt i64 %9, -3, !dbg !5106
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !5107
  br i1 %12, label %13, label %18, !dbg !5107

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #32, !dbg !5108
  br i1 %14, label %18, label %15, !dbg !5109

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5110, !tbaa !1470
  call void @llvm.dbg.value(metadata i8 %16, metadata !5097, metadata !DIExpression()), !dbg !5111
  %17 = zext i8 %16 to i32, !dbg !5112
  store i32 %17, i32* %8, align 4, !dbg !5113, !tbaa !1268
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !5100
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #32, !dbg !5114
  ret i64 %19, !dbg !5114
}

; Function Attrs: nounwind
declare !dbg !5115 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @print_and_abort() #0 !dbg !5119 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !5120, !tbaa !1122
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.168, i64 0, i64 0), i32 5) #32, !dbg !5120
  %3 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.169, i64 0, i64 0), i8* %2) #32, !dbg !5120
  %4 = load volatile i32, i32* @exit_failure, align 4, !dbg !5121, !tbaa !1268
  tail call void @exit(i32 %4) #34, !dbg !5122
  unreachable, !dbg !5122
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @_obstack_begin(%struct.obstack* nocapture %0, i64 %1, i64 %2, i8* (i64)* %3, void (i8*)* %4) local_unnamed_addr #8 !dbg !5123 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5161, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.value(metadata i64 %1, metadata !5162, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.value(metadata i64 %2, metadata !5163, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.value(metadata i8* (i64)* %3, metadata !5164, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.value(metadata void (i8*)* %4, metadata !5165, metadata !DIExpression()), !dbg !5166
  %6 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, i32 0, !dbg !5167
  store i8* (i64)* %3, i8* (i64)** %6, align 8, !dbg !5168, !tbaa !1470
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, i32 0, !dbg !5169
  store void (i8*)* %4, void (i8*)** %7, align 8, !dbg !5170, !tbaa !1470
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !5171
  %9 = load i8, i8* %8, align 8, !dbg !5172
  %10 = and i8 %9, -2, !dbg !5172
  store i8 %10, i8* %8, align 8, !dbg !5172
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5173, metadata !DIExpression()) #32, !dbg !5184
  call void @llvm.dbg.value(metadata i64 %1, metadata !5178, metadata !DIExpression()) #32, !dbg !5184
  call void @llvm.dbg.value(metadata i64 %2, metadata !5179, metadata !DIExpression()) #32, !dbg !5184
  %11 = icmp eq i64 %2, 0, !dbg !5186
  %12 = select i1 %11, i64 16, i64 %2, !dbg !5188
  call void @llvm.dbg.value(metadata i64 %12, metadata !5179, metadata !DIExpression()) #32, !dbg !5184
  %13 = icmp eq i64 %1, 0, !dbg !5189
  %14 = select i1 %13, i64 4064, i64 %1, !dbg !5190
  call void @llvm.dbg.value(metadata i64 %14, metadata !5178, metadata !DIExpression()) #32, !dbg !5184
  %15 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !5191
  store i64 %14, i64* %15, align 8, !dbg !5192, !tbaa !5193
  %16 = add i64 %12, -1, !dbg !5194
  %17 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !5195
  store i64 %16, i64* %17, align 8, !dbg !5196, !tbaa !4347
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5197, metadata !DIExpression()) #32, !dbg !5203
  call void @llvm.dbg.value(metadata i64 %14, metadata !5202, metadata !DIExpression()) #32, !dbg !5203
  %18 = tail call i8* %3(i64 %14) #32, !dbg !5205
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5207
  %20 = bitcast %struct._obstack_chunk** %19 to i8**, !dbg !5208
  store i8* %18, i8** %20, align 8, !dbg !5208, !tbaa !4350
  call void @llvm.dbg.value(metadata i8* %18, metadata !5180, metadata !DIExpression()) #32, !dbg !5184
  %21 = icmp eq i8* %18, null, !dbg !5209
  br i1 %21, label %22, label %24, !dbg !5211

22:                                               ; preds = %5
  %23 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !5212, !tbaa !1122
  tail call void %23() #34, !dbg !5213
  unreachable, !dbg !5213

24:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %18, metadata !5180, metadata !DIExpression()) #32, !dbg !5184
  %25 = getelementptr inbounds i8, i8* %18, i64 16, !dbg !5214
  %26 = ptrtoint i8* %25 to i64, !dbg !5214
  %27 = add i64 %16, %26, !dbg !5214
  %28 = sub i64 0, %12, !dbg !5214
  %29 = and i64 %27, %28, !dbg !5214
  %30 = getelementptr inbounds i8, i8* null, i64 %29, !dbg !5214
  %31 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !5215
  store i8* %30, i8** %31, align 8, !dbg !5216, !tbaa !4315
  %32 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !5217
  store i8* %30, i8** %32, align 8, !dbg !5218, !tbaa !4314
  %33 = load i64, i64* %15, align 8, !dbg !5219, !tbaa !5193
  %34 = getelementptr inbounds i8, i8* %18, i64 %33, !dbg !5220
  %35 = bitcast i8* %18 to i8**, !dbg !5221
  store i8* %34, i8** %35, align 8, !dbg !5222, !tbaa !1122
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !5223
  store i8* %34, i8** %36, align 8, !dbg !5224, !tbaa !4322
  %37 = getelementptr inbounds i8, i8* %18, i64 8, !dbg !5225
  %38 = bitcast i8* %37 to %struct._obstack_chunk**, !dbg !5225
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %38, align 8, !dbg !5226, !tbaa !1122
  %39 = load i8, i8* %8, align 8, !dbg !5227
  %40 = and i8 %39, -7, !dbg !5228
  store i8 %40, i8* %8, align 8, !dbg !5228
  ret i32 1, !dbg !5229
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @_obstack_begin_1(%struct.obstack* nocapture %0, i64 %1, i64 %2, i8* (i8*, i64)* %3, void (i8*, i8*)* %4, i8* %5) local_unnamed_addr #8 !dbg !5230 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5234, metadata !DIExpression()), !dbg !5240
  call void @llvm.dbg.value(metadata i64 %1, metadata !5235, metadata !DIExpression()), !dbg !5240
  call void @llvm.dbg.value(metadata i64 %2, metadata !5236, metadata !DIExpression()), !dbg !5240
  call void @llvm.dbg.value(metadata i8* (i8*, i64)* %3, metadata !5237, metadata !DIExpression()), !dbg !5240
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %4, metadata !5238, metadata !DIExpression()), !dbg !5240
  call void @llvm.dbg.value(metadata i8* %5, metadata !5239, metadata !DIExpression()), !dbg !5240
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, !dbg !5241
  %8 = bitcast %union.anon.0* %7 to i8* (i8*, i64)**, !dbg !5242
  store i8* (i8*, i64)* %3, i8* (i8*, i64)** %8, align 8, !dbg !5243, !tbaa !1470
  %9 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, !dbg !5244
  %10 = bitcast %union.anon.1* %9 to void (i8*, i8*)**, !dbg !5245
  store void (i8*, i8*)* %4, void (i8*, i8*)** %10, align 8, !dbg !5246, !tbaa !1470
  %11 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !5247
  store i8* %5, i8** %11, align 8, !dbg !5248, !tbaa !5249
  %12 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !5250
  %13 = load i8, i8* %12, align 8, !dbg !5251
  %14 = or i8 %13, 1, !dbg !5251
  store i8 %14, i8* %12, align 8, !dbg !5251
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5173, metadata !DIExpression()) #32, !dbg !5252
  call void @llvm.dbg.value(metadata i64 %1, metadata !5178, metadata !DIExpression()) #32, !dbg !5252
  call void @llvm.dbg.value(metadata i64 %2, metadata !5179, metadata !DIExpression()) #32, !dbg !5252
  %15 = icmp eq i64 %2, 0, !dbg !5254
  %16 = select i1 %15, i64 16, i64 %2, !dbg !5255
  call void @llvm.dbg.value(metadata i64 %16, metadata !5179, metadata !DIExpression()) #32, !dbg !5252
  %17 = icmp eq i64 %1, 0, !dbg !5256
  %18 = select i1 %17, i64 4064, i64 %1, !dbg !5257
  call void @llvm.dbg.value(metadata i64 %18, metadata !5178, metadata !DIExpression()) #32, !dbg !5252
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !5258
  store i64 %18, i64* %19, align 8, !dbg !5259, !tbaa !5193
  %20 = add i64 %16, -1, !dbg !5260
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !5261
  store i64 %20, i64* %21, align 8, !dbg !5262, !tbaa !4347
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5197, metadata !DIExpression()) #32, !dbg !5263
  call void @llvm.dbg.value(metadata i64 %18, metadata !5202, metadata !DIExpression()) #32, !dbg !5263
  %22 = tail call i8* %3(i8* %5, i64 %18) #32, !dbg !5265
  %23 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5266
  %24 = bitcast %struct._obstack_chunk** %23 to i8**, !dbg !5267
  store i8* %22, i8** %24, align 8, !dbg !5267, !tbaa !4350
  call void @llvm.dbg.value(metadata i8* %22, metadata !5180, metadata !DIExpression()) #32, !dbg !5252
  %25 = icmp eq i8* %22, null, !dbg !5268
  br i1 %25, label %26, label %28, !dbg !5269

26:                                               ; preds = %6
  %27 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !5270, !tbaa !1122
  tail call void %27() #34, !dbg !5271
  unreachable, !dbg !5271

28:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i8* %22, metadata !5180, metadata !DIExpression()) #32, !dbg !5252
  %29 = getelementptr inbounds i8, i8* %22, i64 16, !dbg !5272
  %30 = ptrtoint i8* %29 to i64, !dbg !5272
  %31 = add i64 %20, %30, !dbg !5272
  %32 = sub i64 0, %16, !dbg !5272
  %33 = and i64 %31, %32, !dbg !5272
  %34 = getelementptr inbounds i8, i8* null, i64 %33, !dbg !5272
  %35 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !5273
  store i8* %34, i8** %35, align 8, !dbg !5274, !tbaa !4315
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !5275
  store i8* %34, i8** %36, align 8, !dbg !5276, !tbaa !4314
  %37 = load i64, i64* %19, align 8, !dbg !5277, !tbaa !5193
  %38 = getelementptr inbounds i8, i8* %22, i64 %37, !dbg !5278
  %39 = bitcast i8* %22 to i8**, !dbg !5279
  store i8* %38, i8** %39, align 8, !dbg !5280, !tbaa !1122
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !5281
  store i8* %38, i8** %40, align 8, !dbg !5282, !tbaa !4322
  %41 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !5283
  %42 = bitcast i8* %41 to %struct._obstack_chunk**, !dbg !5283
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %42, align 8, !dbg !5284, !tbaa !1122
  %43 = load i8, i8* %12, align 8, !dbg !5285
  %44 = and i8 %43, -7, !dbg !5286
  store i8 %44, i8* %12, align 8, !dbg !5286
  ret i32 1, !dbg !5287
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @_obstack_newchunk(%struct.obstack* nocapture %0, i64 %1) local_unnamed_addr #8 !dbg !5288 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5292, metadata !DIExpression()), !dbg !5301
  call void @llvm.dbg.value(metadata i64 %1, metadata !5293, metadata !DIExpression()), !dbg !5301
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5302
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !5302, !tbaa !4350
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, metadata !5294, metadata !DIExpression()), !dbg !5301
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* null, metadata !5295, metadata !DIExpression()), !dbg !5301
  %5 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !5303
  %6 = load i8*, i8** %5, align 8, !dbg !5303, !tbaa !4314
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !5304
  %8 = load i8*, i8** %7, align 8, !dbg !5304, !tbaa !4315
  %9 = ptrtoint i8* %6 to i64, !dbg !5305
  %10 = ptrtoint i8* %8 to i64, !dbg !5305
  %11 = sub i64 %9, %10, !dbg !5305
  call void @llvm.dbg.value(metadata i64 %11, metadata !5296, metadata !DIExpression()), !dbg !5301
  %12 = add i64 %11, %1, !dbg !5306
  call void @llvm.dbg.value(metadata i64 %12, metadata !5298, metadata !DIExpression()), !dbg !5301
  %13 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !5307
  %14 = load i64, i64* %13, align 8, !dbg !5307, !tbaa !4347
  %15 = add i64 %12, %14, !dbg !5308
  call void @llvm.dbg.value(metadata i64 %15, metadata !5299, metadata !DIExpression()), !dbg !5301
  %16 = lshr i64 %11, 3, !dbg !5309
  %17 = add nuw nsw i64 %16, 100, !dbg !5310
  %18 = add i64 %17, %15, !dbg !5311
  call void @llvm.dbg.value(metadata i64 %18, metadata !5300, metadata !DIExpression()), !dbg !5301
  %19 = icmp ult i64 %18, %15, !dbg !5312
  %20 = select i1 %19, i64 %15, i64 %18, !dbg !5314
  call void @llvm.dbg.value(metadata i64 %20, metadata !5300, metadata !DIExpression()), !dbg !5301
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !5315
  %22 = load i64, i64* %21, align 8, !dbg !5315, !tbaa !5193
  %23 = icmp ult i64 %20, %22, !dbg !5317
  %24 = select i1 %23, i64 %22, i64 %20, !dbg !5318
  call void @llvm.dbg.value(metadata i64 %24, metadata !5300, metadata !DIExpression()), !dbg !5301
  %25 = icmp ugt i64 %11, %12, !dbg !5319
  %26 = icmp ugt i64 %12, %15
  %27 = or i1 %25, %26, !dbg !5321
  br i1 %27, label %47, label %28, !dbg !5321

28:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5197, metadata !DIExpression()) #32, !dbg !5322
  call void @llvm.dbg.value(metadata i64 %24, metadata !5202, metadata !DIExpression()) #32, !dbg !5322
  %29 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !5324
  %30 = load i8, i8* %29, align 8, !dbg !5324
  %31 = and i8 %30, 1, !dbg !5324
  %32 = icmp eq i8 %31, 0, !dbg !5325
  br i1 %32, label %40, label %33, !dbg !5326

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, !dbg !5327
  %35 = bitcast %union.anon.0* %34 to i8* (i8*, i64)**, !dbg !5328
  %36 = load i8* (i8*, i64)*, i8* (i8*, i64)** %35, align 8, !dbg !5328, !tbaa !1470
  %37 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !5329
  %38 = load i8*, i8** %37, align 8, !dbg !5329, !tbaa !5249
  %39 = tail call i8* %36(i8* %38, i64 %24) #32, !dbg !5330
  br label %44, !dbg !5331

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, i32 0, !dbg !5332
  %42 = load i8* (i64)*, i8* (i64)** %41, align 8, !dbg !5332, !tbaa !1470
  %43 = tail call i8* %42(i64 %24) #32, !dbg !5333
  br label %44, !dbg !5334

44:                                               ; preds = %40, %33
  %45 = phi i8* [ %39, %33 ], [ %43, %40 ], !dbg !5335
  call void @llvm.dbg.value(metadata i8* %45, metadata !5295, metadata !DIExpression()), !dbg !5301
  %46 = icmp eq i8* %45, null, !dbg !5336
  br i1 %46, label %47, label %49, !dbg !5338

47:                                               ; preds = %2, %44
  %48 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !5339, !tbaa !1122
  tail call void %48() #34, !dbg !5340
  unreachable, !dbg !5340

49:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %45, metadata !5295, metadata !DIExpression()), !dbg !5301
  %50 = bitcast %struct._obstack_chunk** %3 to i8**, !dbg !5341
  store i8* %45, i8** %50, align 8, !dbg !5341, !tbaa !4350
  %51 = getelementptr inbounds i8, i8* %45, i64 8, !dbg !5342
  %52 = bitcast i8* %51 to %struct._obstack_chunk**, !dbg !5342
  store %struct._obstack_chunk* %4, %struct._obstack_chunk** %52, align 8, !dbg !5343, !tbaa !1122
  %53 = getelementptr inbounds i8, i8* %45, i64 %24, !dbg !5344
  %54 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !5345
  store i8* %53, i8** %54, align 8, !dbg !5346, !tbaa !4322
  %55 = bitcast i8* %45 to i8**, !dbg !5347
  store i8* %53, i8** %55, align 8, !dbg !5348, !tbaa !1122
  %56 = getelementptr inbounds i8, i8* %45, i64 16, !dbg !5349
  %57 = ptrtoint i8* %56 to i64, !dbg !5349
  %58 = load i64, i64* %13, align 8, !dbg !5349, !tbaa !4347
  %59 = add i64 %58, %57, !dbg !5349
  %60 = xor i64 %58, -1, !dbg !5349
  %61 = and i64 %59, %60, !dbg !5349
  %62 = getelementptr inbounds i8, i8* null, i64 %61, !dbg !5349
  call void @llvm.dbg.value(metadata i8* %62, metadata !5297, metadata !DIExpression()), !dbg !5301
  %63 = load i8*, i8** %7, align 8, !dbg !5350, !tbaa !4315
  call void @llvm.dbg.value(metadata i8* %62, metadata !5351, metadata !DIExpression()) #32, !dbg !5356
  call void @llvm.dbg.value(metadata i8* %63, metadata !5354, metadata !DIExpression()) #32, !dbg !5356
  call void @llvm.dbg.value(metadata i64 %11, metadata !5355, metadata !DIExpression()) #32, !dbg !5356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %62, i8* nonnull align 1 %63, i64 %11, i1 false) #32, !dbg !5358
  %64 = load i8, i8* %29, align 8, !dbg !5359
  %65 = and i8 %64, 2, !dbg !5361
  %66 = icmp eq i8 %65, 0, !dbg !5361
  br i1 %66, label %67, label %93, !dbg !5362

67:                                               ; preds = %49
  %68 = load i8*, i8** %7, align 8, !dbg !5363, !tbaa !4315
  %69 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 2, i64 0, !dbg !5364
  %70 = ptrtoint i8* %69 to i64, !dbg !5364
  %71 = load i64, i64* %13, align 8, !dbg !5364, !tbaa !4347
  %72 = add i64 %71, %70, !dbg !5364
  %73 = xor i64 %71, -1, !dbg !5364
  %74 = and i64 %72, %73, !dbg !5364
  %75 = getelementptr inbounds i8, i8* null, i64 %74, !dbg !5364
  %76 = icmp eq i8* %68, %75, !dbg !5365
  br i1 %76, label %77, label %93, !dbg !5366

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 1, !dbg !5367
  %79 = load %struct._obstack_chunk*, %struct._obstack_chunk** %78, align 8, !dbg !5367, !tbaa !1122
  store %struct._obstack_chunk* %79, %struct._obstack_chunk** %52, align 8, !dbg !5369, !tbaa !1122
  %80 = bitcast %struct._obstack_chunk* %4 to i8*, !dbg !5370
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5371, metadata !DIExpression()) #32, !dbg !5377
  call void @llvm.dbg.value(metadata i8* %80, metadata !5376, metadata !DIExpression()) #32, !dbg !5377
  %81 = load i8, i8* %29, align 8, !dbg !5379
  %82 = and i8 %81, 1, !dbg !5379
  %83 = icmp eq i8 %82, 0, !dbg !5381
  br i1 %83, label %90, label %84, !dbg !5382

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, !dbg !5383
  %86 = bitcast %union.anon.1* %85 to void (i8*, i8*)**, !dbg !5384
  %87 = load void (i8*, i8*)*, void (i8*, i8*)** %86, align 8, !dbg !5384, !tbaa !1470
  %88 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !5385
  %89 = load i8*, i8** %88, align 8, !dbg !5385, !tbaa !5249
  tail call void %87(i8* %89, i8* nonnull %80) #32, !dbg !5386
  br label %93, !dbg !5386

90:                                               ; preds = %77
  %91 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, i32 0, !dbg !5387
  %92 = load void (i8*)*, void (i8*)** %91, align 8, !dbg !5387, !tbaa !1470
  tail call void %92(i8* nonnull %80) #32, !dbg !5388
  br label %93

93:                                               ; preds = %90, %84, %67, %49
  store i8* %62, i8** %7, align 8, !dbg !5389, !tbaa !4315
  %94 = getelementptr inbounds i8, i8* %62, i64 %11, !dbg !5390
  store i8* %94, i8** %5, align 8, !dbg !5391, !tbaa !4314
  %95 = load i8, i8* %29, align 8, !dbg !5392
  %96 = and i8 %95, -3, !dbg !5392
  store i8 %96, i8* %29, align 8, !dbg !5392
  ret void, !dbg !5393
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @_obstack_allocated_p(%struct.obstack* nocapture readonly %0, i8* readnone %1) local_unnamed_addr #18 !dbg !5394 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5398, metadata !DIExpression()), !dbg !5402
  call void @llvm.dbg.value(metadata i8* %1, metadata !5399, metadata !DIExpression()), !dbg !5402
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5403
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* undef, metadata !5400, metadata !DIExpression()), !dbg !5402
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !5402, !tbaa !1122
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, metadata !5400, metadata !DIExpression()), !dbg !5402
  %5 = icmp eq %struct._obstack_chunk* %4, null, !dbg !5404
  br i1 %5, label %18, label %6, !dbg !5405

6:                                                ; preds = %2, %14
  %7 = phi %struct._obstack_chunk* [ %16, %14 ], [ %4, %2 ]
  %8 = bitcast %struct._obstack_chunk* %7 to i8*, !dbg !5406
  %9 = icmp ult i8* %8, %1, !dbg !5407
  br i1 %9, label %10, label %14, !dbg !5408

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %7, i64 0, i32 0, !dbg !5409
  %12 = load i8*, i8** %11, align 8, !dbg !5409, !tbaa !1122
  %13 = icmp ult i8* %12, %1, !dbg !5410
  br i1 %13, label %14, label %18, !dbg !5411

14:                                               ; preds = %6, %10
  %15 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %7, i64 0, i32 1, !dbg !5412
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* undef, metadata !5401, metadata !DIExpression()), !dbg !5402
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* undef, metadata !5400, metadata !DIExpression()), !dbg !5402
  %16 = load %struct._obstack_chunk*, %struct._obstack_chunk** %15, align 8, !dbg !5402, !tbaa !1122
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %16, metadata !5400, metadata !DIExpression()), !dbg !5402
  %17 = icmp eq %struct._obstack_chunk* %16, null, !dbg !5404
  br i1 %17, label %18, label %6, !dbg !5405, !llvm.loop !5414

18:                                               ; preds = %10, %14, %2
  %19 = phi i32 [ 0, %2 ], [ 0, %14 ], [ 1, %10 ], !dbg !5404
  ret i32 %19, !dbg !5416
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @_obstack_free(%struct.obstack* nocapture %0, i8* %1) local_unnamed_addr #8 !dbg !5417 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5419, metadata !DIExpression()), !dbg !5423
  call void @llvm.dbg.value(metadata i8* %1, metadata !5420, metadata !DIExpression()), !dbg !5423
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5424
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !5424, !tbaa !4350
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, metadata !5421, metadata !DIExpression()), !dbg !5423
  %5 = icmp eq %struct._obstack_chunk* %4, null, !dbg !5425
  br i1 %5, label %41, label %6, !dbg !5426

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8
  %9 = bitcast %union.anon.1* %8 to void (i8*, i8*)**
  %10 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9
  %11 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, i32 0
  br label %12, !dbg !5426

12:                                               ; preds = %6, %31
  %13 = phi %struct._obstack_chunk* [ %4, %6 ], [ %22, %31 ]
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !5421, metadata !DIExpression()), !dbg !5423
  %14 = bitcast %struct._obstack_chunk* %13 to i8*, !dbg !5427
  %15 = icmp ult i8* %14, %1, !dbg !5428
  br i1 %15, label %16, label %20, !dbg !5429

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 0, !dbg !5430
  %18 = load i8*, i8** %17, align 8, !dbg !5430, !tbaa !1122
  %19 = icmp ult i8* %18, %1, !dbg !5431
  br i1 %19, label %20, label %35, !dbg !5432

20:                                               ; preds = %12, %16
  %21 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 1, !dbg !5433
  %22 = load %struct._obstack_chunk*, %struct._obstack_chunk** %21, align 8, !dbg !5433, !tbaa !1122
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, metadata !5422, metadata !DIExpression()), !dbg !5423
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5371, metadata !DIExpression()) #32, !dbg !5435
  call void @llvm.dbg.value(metadata i8* %14, metadata !5376, metadata !DIExpression()) #32, !dbg !5435
  %23 = load i8, i8* %7, align 8, !dbg !5437
  %24 = and i8 %23, 1, !dbg !5437
  %25 = icmp eq i8 %24, 0, !dbg !5438
  br i1 %25, label %29, label %26, !dbg !5439

26:                                               ; preds = %20
  %27 = load void (i8*, i8*)*, void (i8*, i8*)** %9, align 8, !dbg !5440, !tbaa !1470
  %28 = load i8*, i8** %10, align 8, !dbg !5441, !tbaa !5249
  tail call void %27(i8* %28, i8* nonnull %14) #32, !dbg !5442
  br label %31, !dbg !5442

29:                                               ; preds = %20
  %30 = load void (i8*)*, void (i8*)** %11, align 8, !dbg !5443, !tbaa !1470
  tail call void %30(i8* nonnull %14) #32, !dbg !5444
  br label %31

31:                                               ; preds = %26, %29
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, metadata !5421, metadata !DIExpression()), !dbg !5423
  %32 = load i8, i8* %7, align 8, !dbg !5445
  %33 = or i8 %32, 2, !dbg !5445
  store i8 %33, i8* %7, align 8, !dbg !5445
  %34 = icmp eq %struct._obstack_chunk* %22, null, !dbg !5425
  br i1 %34, label %41, label %12, !dbg !5426, !llvm.loop !5446

35:                                               ; preds = %16
  %36 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 0, !dbg !5430
  %37 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !5448
  store i8* %1, i8** %37, align 8, !dbg !5451, !tbaa !4314
  %38 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !5452
  store i8* %1, i8** %38, align 8, !dbg !5453, !tbaa !4315
  %39 = load i8*, i8** %36, align 8, !dbg !5454, !tbaa !1122
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !5455
  store i8* %39, i8** %40, align 8, !dbg !5456, !tbaa !4322
  store %struct._obstack_chunk* %13, %struct._obstack_chunk** %3, align 8, !dbg !5457, !tbaa !4350
  br label %44, !dbg !5458

41:                                               ; preds = %31, %2
  %42 = icmp eq i8* %1, null, !dbg !5459
  br i1 %42, label %44, label %43, !dbg !5461

43:                                               ; preds = %41
  tail call void @abort() #34, !dbg !5462
  unreachable, !dbg !5462

44:                                               ; preds = %41, %35
  ret void, !dbg !5463
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @_obstack_memory_used(%struct.obstack* nocapture readonly %0) local_unnamed_addr #18 !dbg !5464 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !5468, metadata !DIExpression()), !dbg !5471
  call void @llvm.dbg.value(metadata i64 0, metadata !5470, metadata !DIExpression()), !dbg !5471
  %2 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5472
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* undef, metadata !5469, metadata !DIExpression()), !dbg !5471
  %3 = load %struct._obstack_chunk*, %struct._obstack_chunk** %2, align 8, !dbg !5474, !tbaa !1122
  call void @llvm.dbg.value(metadata i64 0, metadata !5470, metadata !DIExpression()), !dbg !5471
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %3, metadata !5469, metadata !DIExpression()), !dbg !5471
  %4 = icmp eq %struct._obstack_chunk* %3, null, !dbg !5475
  br i1 %4, label %17, label %5, !dbg !5477

5:                                                ; preds = %1, %5
  %6 = phi %struct._obstack_chunk* [ %15, %5 ], [ %3, %1 ]
  %7 = phi i64 [ %13, %5 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !5470, metadata !DIExpression()), !dbg !5471
  %8 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %6, i64 0, i32 0, !dbg !5478
  %9 = load i8*, i8** %8, align 8, !dbg !5478, !tbaa !1122
  %10 = ptrtoint i8* %9 to i64, !dbg !5480
  %11 = ptrtoint %struct._obstack_chunk* %6 to i64, !dbg !5480
  %12 = sub i64 %7, %11, !dbg !5480
  %13 = add i64 %12, %10, !dbg !5481
  call void @llvm.dbg.value(metadata i64 %13, metadata !5470, metadata !DIExpression()), !dbg !5471
  %14 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %6, i64 0, i32 1, !dbg !5482
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* undef, metadata !5469, metadata !DIExpression()), !dbg !5471
  %15 = load %struct._obstack_chunk*, %struct._obstack_chunk** %14, align 8, !dbg !5474, !tbaa !1122
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %15, metadata !5469, metadata !DIExpression()), !dbg !5471
  %16 = icmp eq %struct._obstack_chunk* %15, null, !dbg !5475
  br i1 %16, label %17, label %5, !dbg !5477, !llvm.loop !5483

17:                                               ; preds = %5, %1
  %18 = phi i64 [ 0, %1 ], [ %13, %5 ], !dbg !5471
  ret i64 %18, !dbg !5485
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !5486 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5524, metadata !DIExpression()), !dbg !5529
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #32, !dbg !5530
  call void @llvm.dbg.value(metadata i1 undef, metadata !5525, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5529
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5531, metadata !DIExpression()), !dbg !5534
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5536
  %4 = load i32, i32* %3, align 8, !dbg !5536, !tbaa !4987
  %5 = and i32 %4, 32, !dbg !5537
  %6 = icmp eq i32 %5, 0, !dbg !5537
  call void @llvm.dbg.value(metadata i1 %6, metadata !5527, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5529
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #32, !dbg !5538
  %8 = icmp eq i32 %7, 0, !dbg !5539
  call void @llvm.dbg.value(metadata i1 %8, metadata !5528, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5529
  br i1 %6, label %9, label %19, !dbg !5540

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !5542
  call void @llvm.dbg.value(metadata i1 %10, metadata !5525, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5529
  %11 = or i1 %10, %8, !dbg !5543
  %12 = xor i1 %8, true, !dbg !5543
  %13 = sext i1 %12 to i32, !dbg !5543
  br i1 %11, label %22, label %14, !dbg !5543

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #35, !dbg !5544
  %16 = load i32, i32* %15, align 4, !dbg !5544, !tbaa !1268
  %17 = icmp ne i32 %16, 9, !dbg !5545
  %18 = sext i1 %17 to i32, !dbg !5546
  br label %22, !dbg !5546

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !5547

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #35, !dbg !5549
  store i32 0, i32* %21, align 4, !dbg !5551, !tbaa !1268
  br label %22, !dbg !5549

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !5529
  ret i32 %23, !dbg !5552
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !5553 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5557, metadata !DIExpression()), !dbg !5562
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !5563
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #32, !dbg !5563
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !5558, metadata !DIExpression()), !dbg !5564
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #32, !dbg !5565
  %5 = icmp eq i32 %4, 0, !dbg !5565
  br i1 %5, label %6, label %13, !dbg !5567

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !5568
  %8 = load i16, i16* %7, align 16, !dbg !5568
  %9 = icmp eq i16 %8, 67, !dbg !5568
  br i1 %9, label %13, label %10, !dbg !5569

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.180, i64 0, i64 0), i64 6), !dbg !5570
  %12 = icmp ne i32 %11, 0, !dbg !5571
  br label %13, !dbg !5569

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !5562
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #32, !dbg !5572
  ret i1 %14, !dbg !5572
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !5573 {
  %1 = tail call i8* @nl_langinfo(i32 14) #32, !dbg !5578
  call void @llvm.dbg.value(metadata i8* %1, metadata !5577, metadata !DIExpression()), !dbg !5579
  %2 = icmp eq i8* %1, null, !dbg !5580
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.183, i64 0, i64 0), i8* %1, !dbg !5582
  call void @llvm.dbg.value(metadata i8* %3, metadata !5577, metadata !DIExpression()), !dbg !5579
  %4 = load i8, i8* %3, align 1, !dbg !5583, !tbaa !1470
  %5 = icmp eq i8 %4, 0, !dbg !5587
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.184, i64 0, i64 0), i8* %3, !dbg !5588
  call void @llvm.dbg.value(metadata i8* %6, metadata !5577, metadata !DIExpression()), !dbg !5579
  ret i8* %6, !dbg !5589
}

; Function Attrs: nounwind
declare !dbg !5590 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !5593 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5597, metadata !DIExpression()), !dbg !5600
  call void @llvm.dbg.value(metadata i8* %1, metadata !5598, metadata !DIExpression()), !dbg !5600
  call void @llvm.dbg.value(metadata i64 %2, metadata !5599, metadata !DIExpression()), !dbg !5600
  call void @llvm.dbg.value(metadata i32 %0, metadata !5601, metadata !DIExpression()) #32, !dbg !5610
  call void @llvm.dbg.value(metadata i8* %1, metadata !5604, metadata !DIExpression()) #32, !dbg !5610
  call void @llvm.dbg.value(metadata i64 %2, metadata !5605, metadata !DIExpression()) #32, !dbg !5610
  call void @llvm.dbg.value(metadata i32 %0, metadata !5612, metadata !DIExpression()) #32, !dbg !5618
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #32, !dbg !5620
  call void @llvm.dbg.value(metadata i8* %4, metadata !5617, metadata !DIExpression()) #32, !dbg !5618
  call void @llvm.dbg.value(metadata i8* %4, metadata !5606, metadata !DIExpression()) #32, !dbg !5610
  %5 = icmp eq i8* %4, null, !dbg !5621
  br i1 %5, label %6, label %9, !dbg !5622

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5623
  br i1 %7, label %19, label %8, !dbg !5626

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !5627, !tbaa !1470
  br label %19, !dbg !5628

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #33, !dbg !5629
  call void @llvm.dbg.value(metadata i64 %10, metadata !5607, metadata !DIExpression()) #32, !dbg !5630
  %11 = icmp ult i64 %10, %2, !dbg !5631
  br i1 %11, label %12, label %14, !dbg !5633

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5634
  call void @llvm.dbg.value(metadata i8* %1, metadata !5636, metadata !DIExpression()) #32, !dbg !5641
  call void @llvm.dbg.value(metadata i8* %4, metadata !5639, metadata !DIExpression()) #32, !dbg !5641
  call void @llvm.dbg.value(metadata i64 %13, metadata !5640, metadata !DIExpression()) #32, !dbg !5641
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #32, !dbg !5643
  br label %19, !dbg !5644

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5645
  br i1 %15, label %19, label %16, !dbg !5648

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5649
  call void @llvm.dbg.value(metadata i8* %1, metadata !5636, metadata !DIExpression()) #32, !dbg !5651
  call void @llvm.dbg.value(metadata i8* %4, metadata !5639, metadata !DIExpression()) #32, !dbg !5651
  call void @llvm.dbg.value(metadata i64 %17, metadata !5640, metadata !DIExpression()) #32, !dbg !5651
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #32, !dbg !5653
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !5654
  store i8 0, i8* %18, align 1, !dbg !5655, !tbaa !1470
  br label %19, !dbg !5656

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5657
  ret i32 %20, !dbg !5658
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !5659 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5661, metadata !DIExpression()), !dbg !5662
  call void @llvm.dbg.value(metadata i32 %0, metadata !5612, metadata !DIExpression()) #32, !dbg !5663
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #32, !dbg !5665
  call void @llvm.dbg.value(metadata i8* %2, metadata !5617, metadata !DIExpression()) #32, !dbg !5663
  ret i8* %2, !dbg !5666
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
attributes #10 = { nofree nounwind readonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nosync nounwind readnone willreturn }
attributes #14 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #18 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nofree norecurse nounwind sspstrong uwtable writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { inlinehint nofree nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { inlinehint norecurse nounwind readnone sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { nofree nounwind }
attributes #27 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #28 = { argmemonly nofree nounwind readonly willreturn }
attributes #29 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #30 = { nofree nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #31 = { nofree nosync nounwind willreturn }
attributes #32 = { nounwind }
attributes #33 = { nounwind readonly willreturn }
attributes #34 = { noreturn nounwind }
attributes #35 = { nounwind readnone willreturn }
attributes #36 = { noreturn }
attributes #37 = { cold }

!llvm.dbg.cu = !{!2, !329, !429, !335, !342, !433, !436, !348, !439, !358, !364, !662, !668, !675, !414, !681, !697, !699, !701, !703, !705, !707, !422, !710, !712, !714, !1103}
!llvm.ident = !{!1105, !1105, !1105, !1105, !1105, !1105, !1105, !1105, !1105, !1105, !1105, !1105, !1105, !1105, !1105, !1105, !1105, !1105, !1105, !1105, !1105, !1105, !1105, !1105, !1105, !1105, !1105}
!llvm.module.flags = !{!1106, !1107, !1108, !1109, !1110}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "page_size", scope: !2, file: !3, line: 75, type: !55, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !51, globals: !61, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/wc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20, !27, !36}
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "argv_iter_err", file: !21, line: 25, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./lib/argv-iter.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "AI_ERR_OK", value: 1, isUnsigned: true)
!24 = !DIEnumerator(name: "AI_ERR_EOF", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "AI_ERR_MEM", value: 3, isUnsigned: true)
!26 = !DIEnumerator(name: "AI_ERR_READ", value: 4, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 45, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!29 = !{!30, !31, !32, !33, !34, !35}
!30 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!32 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!33 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!34 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!35 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 46, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!39 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!40 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!41 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!42 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!43 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!44 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!45 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!46 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!47 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!49 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!50 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!51 = !{!52, !53, !55, !58, !59, !60}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 46, baseType: !57)
!56 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!57 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!60 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!61 = !{!62, !256, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !0, !283, !285, !301}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "stdin_only", scope: !64, file: !3, line: 799, type: !255, isLocal: true, isDefinition: true)
!64 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 680, type: !65, scopeLine: 681, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!65 = !DISubroutineType(types: !66)
!66 = !{!58, !58, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!68 = !{!69, !70, !71, !73, !74, !75, !76, !77, !122, !182, !183, !186, !241, !242, !244, !247, !248, !249, !254}
!69 = !DILocalVariable(name: "argc", arg: 1, scope: !64, file: !3, line: 680, type: !58)
!70 = !DILocalVariable(name: "argv", arg: 2, scope: !64, file: !3, line: 680, type: !67)
!71 = !DILocalVariable(name: "ok", scope: !64, file: !3, line: 682, type: !72)
!72 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!73 = !DILocalVariable(name: "optc", scope: !64, file: !3, line: 683, type: !58)
!74 = !DILocalVariable(name: "nfiles", scope: !64, file: !3, line: 684, type: !55)
!75 = !DILocalVariable(name: "files", scope: !64, file: !3, line: 685, type: !67)
!76 = !DILocalVariable(name: "files_from", scope: !64, file: !3, line: 686, type: !53)
!77 = !DILocalVariable(name: "fstatus", scope: !64, file: !3, line: 687, type: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fstatus", file: !3, line: 81, size: 1216, elements: !80)
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !79, file: !3, line: 85, baseType: !58, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !79, file: !3, line: 88, baseType: !83, size: 1152, offset: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !84, line: 26, size: 1152, elements: !85)
!84 = !DIFile(filename: "/usr/include/bits/struct_stat.h", directory: "")
!85 = !{!86, !89, !91, !93, !95, !97, !99, !100, !101, !104, !106, !108, !116, !117, !118}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !83, file: !84, line: 28, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !88, line: 145, baseType: !57)
!88 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!89 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !83, file: !84, line: 33, baseType: !90, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !88, line: 148, baseType: !57)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !83, file: !84, line: 41, baseType: !92, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !88, line: 151, baseType: !57)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !83, file: !84, line: 42, baseType: !94, size: 32, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !88, line: 150, baseType: !7)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !83, file: !84, line: 44, baseType: !96, size: 32, offset: 224)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !88, line: 146, baseType: !7)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !83, file: !84, line: 45, baseType: !98, size: 32, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !88, line: 147, baseType: !7)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !83, file: !84, line: 47, baseType: !58, size: 32, offset: 288)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !83, file: !84, line: 49, baseType: !87, size: 64, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !83, file: !84, line: 54, baseType: !102, size: 64, offset: 384)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !88, line: 152, baseType: !103)
!103 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !83, file: !84, line: 58, baseType: !105, size: 64, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !88, line: 175, baseType: !103)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !83, file: !84, line: 60, baseType: !107, size: 64, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !88, line: 180, baseType: !103)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !83, file: !84, line: 71, baseType: !109, size: 128, offset: 576)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !110, line: 10, size: 128, elements: !111)
!110 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!111 = !{!112, !114}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !109, file: !110, line: 12, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !88, line: 160, baseType: !103)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !109, file: !110, line: 16, baseType: !115, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !88, line: 197, baseType: !103)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !83, file: !84, line: 72, baseType: !109, size: 128, offset: 704)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !83, file: !84, line: 73, baseType: !109, size: 128, offset: 832)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !83, file: !84, line: 86, baseType: !119, size: 192, offset: 960)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 192, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 3)
!122 = !DILocalVariable(name: "tok", scope: !64, file: !3, line: 688, type: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Tokens", file: !124, line: 28, size: 2304, elements: !125)
!124 = !DIFile(filename: "./lib/readtokens0.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!125 = !{!126, !127, !128, !130, !180, !181}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "n_tok", scope: !123, file: !124, line: 30, baseType: !55, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tok", scope: !123, file: !124, line: 31, baseType: !67, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tok_len", scope: !123, file: !124, line: 32, baseType: !129, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "o_data", scope: !123, file: !124, line: 33, baseType: !131, size: 704, offset: 192)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !132, line: 174, size: 704, elements: !133)
!132 = !DIFile(filename: "./lib/obstack.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!133 = !{!134, !135, !145, !146, !147, !148, !153, !154, !165, !176, !177, !178, !179}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !131, file: !132, line: 176, baseType: !55, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !131, file: !132, line: 177, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !132, line: 167, size: 128, elements: !138)
!138 = !{!139, !140, !141}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !137, file: !132, line: 169, baseType: !53, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !137, file: !132, line: 170, baseType: !136, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !137, file: !132, line: 171, baseType: !142, offset: 128)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: -1)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !131, file: !132, line: 178, baseType: !53, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !131, file: !132, line: 179, baseType: !53, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !131, file: !132, line: 180, baseType: !53, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !131, file: !132, line: 185, baseType: !149, size: 64, offset: 320)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !132, line: 181, size: 64, elements: !150)
!150 = !{!151, !152}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !149, file: !132, line: 183, baseType: !55, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !149, file: !132, line: 184, baseType: !52, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !131, file: !132, line: 186, baseType: !55, size: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !131, file: !132, line: 193, baseType: !155, size: 64, offset: 448)
!155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !132, line: 189, size: 64, elements: !156)
!156 = !{!157, !161}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !155, file: !132, line: 191, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!52, !55}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !155, file: !132, line: 192, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!52, !52, !55}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !131, file: !132, line: 198, baseType: !166, size: 64, offset: 512)
!166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !132, line: 194, size: 64, elements: !167)
!167 = !{!168, !172}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !166, file: !132, line: 196, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !52}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !166, file: !132, line: 197, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !52, !52}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !131, file: !132, line: 200, baseType: !52, size: 64, offset: 576)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !131, file: !132, line: 201, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !131, file: !132, line: 202, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !131, file: !132, line: 206, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "o_tok", scope: !123, file: !124, line: 34, baseType: !131, size: 704, offset: 896)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "o_tok_len", scope: !123, file: !124, line: 35, baseType: !131, size: 704, offset: 1600)
!182 = !DILocalVariable(name: "read_tokens", scope: !64, file: !3, line: 748, type: !72)
!183 = !DILocalVariable(name: "ai", scope: !64, file: !3, line: 749, type: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DICompositeType(tag: DW_TAG_structure_type, name: "argv_iterator", file: !21, line: 23, flags: DIFlagFwdDecl)
!186 = !DILocalVariable(name: "stream", scope: !187, file: !3, line: 752, type: !189)
!187 = distinct !DILexicalBlock(scope: !188, file: !3, line: 751, column: 5)
!188 = distinct !DILexicalBlock(scope: !64, file: !3, line: 750, column: 7)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !192)
!191 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !194)
!193 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !210, !212, !213, !214, !215, !216, !218, !222, !225, !227, !230, !233, !234, !235, !236, !237}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !192, file: !193, line: 51, baseType: !58, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !192, file: !193, line: 54, baseType: !53, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !192, file: !193, line: 55, baseType: !53, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !192, file: !193, line: 56, baseType: !53, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !192, file: !193, line: 57, baseType: !53, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !192, file: !193, line: 58, baseType: !53, size: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !192, file: !193, line: 59, baseType: !53, size: 64, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !192, file: !193, line: 60, baseType: !53, size: 64, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !192, file: !193, line: 61, baseType: !53, size: 64, offset: 512)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !192, file: !193, line: 64, baseType: !53, size: 64, offset: 576)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !192, file: !193, line: 65, baseType: !53, size: 64, offset: 640)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !192, file: !193, line: 66, baseType: !53, size: 64, offset: 704)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !192, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !193, line: 36, flags: DIFlagFwdDecl)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !192, file: !193, line: 70, baseType: !211, size: 64, offset: 832)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !192, file: !193, line: 72, baseType: !58, size: 32, offset: 896)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !192, file: !193, line: 73, baseType: !58, size: 32, offset: 928)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !192, file: !193, line: 74, baseType: !102, size: 64, offset: 960)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !192, file: !193, line: 77, baseType: !59, size: 16, offset: 1024)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !192, file: !193, line: 78, baseType: !217, size: 8, offset: 1040)
!217 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !192, file: !193, line: 79, baseType: !219, size: 8, offset: 1048)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 8, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 1)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !192, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !193, line: 43, baseType: null)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !192, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !88, line: 153, baseType: !103)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !192, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !193, line: 37, flags: DIFlagFwdDecl)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !192, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !193, line: 38, flags: DIFlagFwdDecl)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !192, file: !193, line: 93, baseType: !211, size: 64, offset: 1344)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !192, file: !193, line: 94, baseType: !52, size: 64, offset: 1408)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !192, file: !193, line: 95, baseType: !55, size: 64, offset: 1472)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !192, file: !193, line: 96, baseType: !58, size: 32, offset: 1536)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !192, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 160, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 20)
!241 = !DILocalVariable(name: "st", scope: !187, file: !3, line: 776, type: !83)
!242 = !DILocalVariable(name: "i", scope: !243, file: !3, line: 812, type: !58)
!243 = distinct !DILexicalBlock(scope: !64, file: !3, line: 812, column: 3)
!244 = !DILocalVariable(name: "skip_file", scope: !245, file: !3, line: 814, type: !72)
!245 = distinct !DILexicalBlock(scope: !246, file: !3, line: 813, column: 5)
!246 = distinct !DILexicalBlock(scope: !243, file: !3, line: 812, column: 3)
!247 = !DILocalVariable(name: "ai_err", scope: !245, file: !3, line: 815, type: !20)
!248 = !DILocalVariable(name: "file_name", scope: !245, file: !3, line: 816, type: !53)
!249 = !DILocalVariable(name: "file_number", scope: !250, file: !3, line: 857, type: !57)
!250 = distinct !DILexicalBlock(scope: !251, file: !3, line: 853, column: 13)
!251 = distinct !DILexicalBlock(scope: !252, file: !3, line: 850, column: 15)
!252 = distinct !DILexicalBlock(scope: !253, file: !3, line: 845, column: 9)
!253 = distinct !DILexicalBlock(scope: !245, file: !3, line: 844, column: 11)
!254 = !DILabel(scope: !64, name: "argv_iter_done", file: !3, line: 872)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 64, elements: !220)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "total_lines", scope: !2, file: !3, line: 58, type: !258, isLocal: true, isDefinition: true)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !259, line: 102, baseType: !260)
!259 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !88, line: 73, baseType: !57)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(name: "total_words", scope: !2, file: !3, line: 59, type: !258, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "total_chars", scope: !2, file: !3, line: 60, type: !258, isLocal: true, isDefinition: true)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(name: "total_bytes", scope: !2, file: !3, line: 61, type: !258, isLocal: true, isDefinition: true)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(name: "max_line_length", scope: !2, file: !3, line: 62, type: !258, isLocal: true, isDefinition: true)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(name: "print_lines", scope: !2, file: !3, line: 65, type: !72, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "print_words", scope: !2, file: !3, line: 65, type: !72, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(name: "print_chars", scope: !2, file: !3, line: 65, type: !72, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "print_bytes", scope: !2, file: !3, line: 65, type: !72, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(name: "print_linelength", scope: !2, file: !3, line: 66, type: !72, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(name: "number_width", scope: !2, file: !3, line: 69, type: !58, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 72, type: !72, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "posixly_correct", scope: !2, file: !3, line: 78, type: !72, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 98, type: !287, isLocal: true, isDefinition: true)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 2304, elements: !299)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !290, line: 50, size: 256, elements: !291)
!290 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!291 = !{!292, !295, !296, !298}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !289, file: !290, line: 52, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !289, file: !290, line: 55, baseType: !58, size: 32, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !289, file: !290, line: 56, baseType: !297, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !289, file: !290, line: 57, baseType: !58, size: 32, offset: 192)
!299 = !{!300}
!300 = !DISubrange(count: 9)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(name: "format_sp_int", scope: !303, file: !3, line: 178, type: !318, isLocal: true, isDefinition: true)
!303 = distinct !DISubprogram(name: "write_counts", scope: !3, file: !3, line: 171, type: !304, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !306)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !258, !258, !258, !258, !258, !293}
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314}
!307 = !DILocalVariable(name: "lines", arg: 1, scope: !303, file: !3, line: 171, type: !258)
!308 = !DILocalVariable(name: "words", arg: 2, scope: !303, file: !3, line: 172, type: !258)
!309 = !DILocalVariable(name: "chars", arg: 3, scope: !303, file: !3, line: 173, type: !258)
!310 = !DILocalVariable(name: "bytes", arg: 4, scope: !303, file: !3, line: 174, type: !258)
!311 = !DILocalVariable(name: "linelength", arg: 5, scope: !303, file: !3, line: 175, type: !258)
!312 = !DILocalVariable(name: "file", arg: 6, scope: !303, file: !3, line: 176, type: !293)
!313 = !DILocalVariable(name: "format_int", scope: !303, file: !3, line: 179, type: !293)
!314 = !DILocalVariable(name: "buf", scope: !303, file: !3, line: 180, type: !315)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 168, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 21)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 40, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 5)
!321 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!322 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!323 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!324 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!325 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!326 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(name: "Version", scope: !329, file: !330, line: 2, type: !293, isLocal: false, isDefinition: true)
!329 = distinct !DICompileUnit(language: DW_LANG_C99, file: !330, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !331, globals: !332, splitDebugInlining: false, nameTableKind: None)
!330 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!331 = !{}
!332 = !{!327}
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(name: "file_name", scope: !335, file: !336, line: 46, type: !293, isLocal: true, isDefinition: true)
!335 = distinct !DICompileUnit(language: DW_LANG_C99, file: !336, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !331, globals: !337, splitDebugInlining: false, nameTableKind: None)
!336 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!337 = !{!333, !338}
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !335, file: !336, line: 56, type: !72, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(name: "exit_failure", scope: !342, file: !343, line: 24, type: !345, isLocal: false, isDefinition: true)
!342 = distinct !DICompileUnit(language: DW_LANG_C99, file: !343, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !331, globals: !344, splitDebugInlining: false, nameTableKind: None)
!343 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!344 = !{!340}
!345 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(name: "is_basic_table", scope: !348, file: !349, line: 28, type: !352, isLocal: false, isDefinition: true)
!348 = distinct !DICompileUnit(language: DW_LANG_C99, file: !349, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !331, retainedTypes: !350, globals: !351, splitDebugInlining: false, nameTableKind: None)
!349 = !DIFile(filename: "lib/mbchar.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!350 = !{!60}
!351 = !{!346}
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 256, elements: !354)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!354 = !{!355}
!355 = !DISubrange(count: 8)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(name: "program_name", scope: !358, file: !359, line: 33, type: !293, isLocal: false, isDefinition: true)
!358 = distinct !DICompileUnit(language: DW_LANG_C99, file: !359, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !331, retainedTypes: !360, globals: !361, splitDebugInlining: false, nameTableKind: None)
!359 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!360 = !{!52, !53}
!361 = !{!356}
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !364, file: !365, line: 85, type: !408, isLocal: false, isDefinition: true)
!364 = distinct !DICompileUnit(language: DW_LANG_C99, file: !365, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !366, retainedTypes: !372, globals: !373, splitDebugInlining: false, nameTableKind: None)
!365 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!366 = !{!5, !367, !36}
!367 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !368)
!368 = !{!369, !370, !371}
!369 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!370 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!371 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!372 = !{!58, !59, !55, !53}
!373 = !{!362, !374, !380, !390, !392, !397, !404, !406}
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !364, file: !365, line: 101, type: !376, isLocal: false, isDefinition: true)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 320, elements: !378)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!378 = !{!379}
!379 = !DISubrange(count: 10)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !364, file: !365, line: 1052, type: !382, isLocal: false, isDefinition: true)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !365, line: 65, size: 448, elements: !383)
!383 = !{!384, !385, !386, !388, !389}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !382, file: !365, line: 68, baseType: !5, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !382, file: !365, line: 71, baseType: !58, size: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !382, file: !365, line: 75, baseType: !387, size: 256, offset: 64)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !354)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !382, file: !365, line: 78, baseType: !293, size: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !382, file: !365, line: 81, baseType: !293, size: 64, offset: 384)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !364, file: !365, line: 116, type: !382, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "slot0", scope: !364, file: !365, line: 842, type: !394, isLocal: true, isDefinition: true)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 2048, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 256)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(name: "slotvec", scope: !364, file: !365, line: 845, type: !399, isLocal: true, isDefinition: true)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !365, line: 834, size: 128, elements: !401)
!401 = !{!402, !403}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !400, file: !365, line: 836, baseType: !55, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !400, file: !365, line: 837, baseType: !53, size: 64, offset: 64)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(name: "nslots", scope: !364, file: !365, line: 843, type: !58, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "slotvec0", scope: !364, file: !365, line: 844, type: !400, isLocal: true, isDefinition: true)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 704, elements: !410)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!410 = !{!411}
!411 = !DISubrange(count: 11)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !414, file: !415, line: 26, type: !417, isLocal: false, isDefinition: true)
!414 = distinct !DICompileUnit(language: DW_LANG_C99, file: !415, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !331, globals: !416, splitDebugInlining: false, nameTableKind: None)
!415 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!416 = !{!412}
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 376, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 47)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "obstack_alloc_failed_handler", scope: !422, file: !423, line: 351, type: !426, isLocal: false, isDefinition: true)
!422 = distinct !DICompileUnit(language: DW_LANG_C99, file: !423, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !331, retainedTypes: !424, globals: !425, splitDebugInlining: false, nameTableKind: None)
!423 = !DIFile(filename: "lib/obstack.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!424 = !{!53, !52}
!425 = !{!420}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{null}
!429 = distinct !DICompileUnit(language: DW_LANG_C99, file: !430, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !431, retainedTypes: !432, splitDebugInlining: false, nameTableKind: None)
!430 = !DIFile(filename: "lib/argv-iter.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!431 = !{!20}
!432 = !{!52}
!433 = distinct !DICompileUnit(language: DW_LANG_C99, file: !434, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !435, splitDebugInlining: false, nameTableKind: None)
!434 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!435 = !{!27}
!436 = distinct !DICompileUnit(language: DW_LANG_C99, file: !437, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !331, retainedTypes: !438, splitDebugInlining: false, nameTableKind: None)
!437 = !DIFile(filename: "lib/umaxtostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!438 = !{!258}
!439 = distinct !DICompileUnit(language: DW_LANG_C99, file: !440, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !441, retainedTypes: !660, splitDebugInlining: false, nameTableKind: None)
!440 = !DIFile(filename: "lib/physmem.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!441 = !{!442}
!442 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !443, line: 71, baseType: !7, size: 32, elements: !444)
!443 = !DIFile(filename: "/usr/include/bits/confname.h", directory: "")
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659}
!445 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0, isUnsigned: true)
!446 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1, isUnsigned: true)
!447 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2, isUnsigned: true)
!448 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3, isUnsigned: true)
!449 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4, isUnsigned: true)
!450 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5, isUnsigned: true)
!451 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6, isUnsigned: true)
!452 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7, isUnsigned: true)
!453 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8, isUnsigned: true)
!454 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9, isUnsigned: true)
!455 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10, isUnsigned: true)
!456 = !DIEnumerator(name: "_SC_TIMERS", value: 11, isUnsigned: true)
!457 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12, isUnsigned: true)
!458 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13, isUnsigned: true)
!459 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14, isUnsigned: true)
!460 = !DIEnumerator(name: "_SC_FSYNC", value: 15, isUnsigned: true)
!461 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16, isUnsigned: true)
!462 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17, isUnsigned: true)
!463 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18, isUnsigned: true)
!464 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19, isUnsigned: true)
!465 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20, isUnsigned: true)
!466 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21, isUnsigned: true)
!467 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22, isUnsigned: true)
!468 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23, isUnsigned: true)
!469 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24, isUnsigned: true)
!470 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25, isUnsigned: true)
!471 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26, isUnsigned: true)
!472 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27, isUnsigned: true)
!473 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28, isUnsigned: true)
!474 = !DIEnumerator(name: "_SC_VERSION", value: 29, isUnsigned: true)
!475 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30, isUnsigned: true)
!476 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31, isUnsigned: true)
!477 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32, isUnsigned: true)
!478 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33, isUnsigned: true)
!479 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34, isUnsigned: true)
!480 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35, isUnsigned: true)
!481 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36, isUnsigned: true)
!482 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37, isUnsigned: true)
!483 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38, isUnsigned: true)
!484 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39, isUnsigned: true)
!485 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40, isUnsigned: true)
!486 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41, isUnsigned: true)
!487 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42, isUnsigned: true)
!488 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43, isUnsigned: true)
!489 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44, isUnsigned: true)
!490 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45, isUnsigned: true)
!491 = !DIEnumerator(name: "_SC_2_VERSION", value: 46, isUnsigned: true)
!492 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47, isUnsigned: true)
!493 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48, isUnsigned: true)
!494 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49, isUnsigned: true)
!495 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50, isUnsigned: true)
!496 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51, isUnsigned: true)
!497 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52, isUnsigned: true)
!498 = !DIEnumerator(name: "_SC_PII", value: 53, isUnsigned: true)
!499 = !DIEnumerator(name: "_SC_PII_XTI", value: 54, isUnsigned: true)
!500 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55, isUnsigned: true)
!501 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56, isUnsigned: true)
!502 = !DIEnumerator(name: "_SC_PII_OSI", value: 57, isUnsigned: true)
!503 = !DIEnumerator(name: "_SC_POLL", value: 58, isUnsigned: true)
!504 = !DIEnumerator(name: "_SC_SELECT", value: 59, isUnsigned: true)
!505 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60, isUnsigned: true)
!506 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60, isUnsigned: true)
!507 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61, isUnsigned: true)
!508 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62, isUnsigned: true)
!509 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63, isUnsigned: true)
!510 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64, isUnsigned: true)
!511 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65, isUnsigned: true)
!512 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66, isUnsigned: true)
!513 = !DIEnumerator(name: "_SC_THREADS", value: 67, isUnsigned: true)
!514 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68, isUnsigned: true)
!515 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69, isUnsigned: true)
!516 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70, isUnsigned: true)
!517 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71, isUnsigned: true)
!518 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72, isUnsigned: true)
!519 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73, isUnsigned: true)
!520 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74, isUnsigned: true)
!521 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75, isUnsigned: true)
!522 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76, isUnsigned: true)
!523 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77, isUnsigned: true)
!524 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78, isUnsigned: true)
!525 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79, isUnsigned: true)
!526 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80, isUnsigned: true)
!527 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81, isUnsigned: true)
!528 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82, isUnsigned: true)
!529 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83, isUnsigned: true)
!530 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84, isUnsigned: true)
!531 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85, isUnsigned: true)
!532 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86, isUnsigned: true)
!533 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87, isUnsigned: true)
!534 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88, isUnsigned: true)
!535 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89, isUnsigned: true)
!536 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90, isUnsigned: true)
!537 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91, isUnsigned: true)
!538 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92, isUnsigned: true)
!539 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93, isUnsigned: true)
!540 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94, isUnsigned: true)
!541 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95, isUnsigned: true)
!542 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96, isUnsigned: true)
!543 = !DIEnumerator(name: "_SC_2_UPE", value: 97, isUnsigned: true)
!544 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98, isUnsigned: true)
!545 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99, isUnsigned: true)
!546 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100, isUnsigned: true)
!547 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101, isUnsigned: true)
!548 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102, isUnsigned: true)
!549 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103, isUnsigned: true)
!550 = !DIEnumerator(name: "_SC_INT_MAX", value: 104, isUnsigned: true)
!551 = !DIEnumerator(name: "_SC_INT_MIN", value: 105, isUnsigned: true)
!552 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106, isUnsigned: true)
!553 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107, isUnsigned: true)
!554 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108, isUnsigned: true)
!555 = !DIEnumerator(name: "_SC_NZERO", value: 109, isUnsigned: true)
!556 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110, isUnsigned: true)
!557 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111, isUnsigned: true)
!558 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112, isUnsigned: true)
!559 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113, isUnsigned: true)
!560 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114, isUnsigned: true)
!561 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115, isUnsigned: true)
!562 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116, isUnsigned: true)
!563 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117, isUnsigned: true)
!564 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118, isUnsigned: true)
!565 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119, isUnsigned: true)
!566 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120, isUnsigned: true)
!567 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121, isUnsigned: true)
!568 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122, isUnsigned: true)
!569 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123, isUnsigned: true)
!570 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124, isUnsigned: true)
!571 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125, isUnsigned: true)
!572 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126, isUnsigned: true)
!573 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127, isUnsigned: true)
!574 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128, isUnsigned: true)
!575 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129, isUnsigned: true)
!576 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130, isUnsigned: true)
!577 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131, isUnsigned: true)
!578 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132, isUnsigned: true)
!579 = !DIEnumerator(name: "_SC_BARRIERS", value: 133, isUnsigned: true)
!580 = !DIEnumerator(name: "_SC_BASE", value: 134, isUnsigned: true)
!581 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135, isUnsigned: true)
!582 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136, isUnsigned: true)
!583 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137, isUnsigned: true)
!584 = !DIEnumerator(name: "_SC_CPUTIME", value: 138, isUnsigned: true)
!585 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139, isUnsigned: true)
!586 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140, isUnsigned: true)
!587 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141, isUnsigned: true)
!588 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142, isUnsigned: true)
!589 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143, isUnsigned: true)
!590 = !DIEnumerator(name: "_SC_FIFO", value: 144, isUnsigned: true)
!591 = !DIEnumerator(name: "_SC_PIPE", value: 145, isUnsigned: true)
!592 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146, isUnsigned: true)
!593 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147, isUnsigned: true)
!594 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148, isUnsigned: true)
!595 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149, isUnsigned: true)
!596 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150, isUnsigned: true)
!597 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151, isUnsigned: true)
!598 = !DIEnumerator(name: "_SC_NETWORKING", value: 152, isUnsigned: true)
!599 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153, isUnsigned: true)
!600 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154, isUnsigned: true)
!601 = !DIEnumerator(name: "_SC_REGEXP", value: 155, isUnsigned: true)
!602 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156, isUnsigned: true)
!603 = !DIEnumerator(name: "_SC_SHELL", value: 157, isUnsigned: true)
!604 = !DIEnumerator(name: "_SC_SIGNALS", value: 158, isUnsigned: true)
!605 = !DIEnumerator(name: "_SC_SPAWN", value: 159, isUnsigned: true)
!606 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160, isUnsigned: true)
!607 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161, isUnsigned: true)
!608 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162, isUnsigned: true)
!609 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163, isUnsigned: true)
!610 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164, isUnsigned: true)
!611 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165, isUnsigned: true)
!612 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166, isUnsigned: true)
!613 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167, isUnsigned: true)
!614 = !DIEnumerator(name: "_SC_2_PBS", value: 168, isUnsigned: true)
!615 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169, isUnsigned: true)
!616 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170, isUnsigned: true)
!617 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171, isUnsigned: true)
!618 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172, isUnsigned: true)
!619 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173, isUnsigned: true)
!620 = !DIEnumerator(name: "_SC_STREAMS", value: 174, isUnsigned: true)
!621 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175, isUnsigned: true)
!622 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176, isUnsigned: true)
!623 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177, isUnsigned: true)
!624 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178, isUnsigned: true)
!625 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179, isUnsigned: true)
!626 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180, isUnsigned: true)
!627 = !DIEnumerator(name: "_SC_TRACE", value: 181, isUnsigned: true)
!628 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182, isUnsigned: true)
!629 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183, isUnsigned: true)
!630 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184, isUnsigned: true)
!631 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185, isUnsigned: true)
!632 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186, isUnsigned: true)
!633 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187, isUnsigned: true)
!634 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188, isUnsigned: true)
!635 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189, isUnsigned: true)
!636 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190, isUnsigned: true)
!637 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191, isUnsigned: true)
!638 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192, isUnsigned: true)
!639 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193, isUnsigned: true)
!640 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194, isUnsigned: true)
!641 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195, isUnsigned: true)
!642 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196, isUnsigned: true)
!643 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197, isUnsigned: true)
!644 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198, isUnsigned: true)
!645 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199, isUnsigned: true)
!646 = !DIEnumerator(name: "_SC_IPV6", value: 235, isUnsigned: true)
!647 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236, isUnsigned: true)
!648 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237, isUnsigned: true)
!649 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238, isUnsigned: true)
!650 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239, isUnsigned: true)
!651 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240, isUnsigned: true)
!652 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241, isUnsigned: true)
!653 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242, isUnsigned: true)
!654 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243, isUnsigned: true)
!655 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244, isUnsigned: true)
!656 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245, isUnsigned: true)
!657 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246, isUnsigned: true)
!658 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247, isUnsigned: true)
!659 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248, isUnsigned: true)
!660 = !{!661}
!661 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!662 = distinct !DICompileUnit(language: DW_LANG_C99, file: !663, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !331, retainedTypes: !664, splitDebugInlining: false, nameTableKind: None)
!663 = !DIFile(filename: "lib/readtokens0.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!664 = !{!52, !53, !55, !665}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!668 = distinct !DICompileUnit(language: DW_LANG_C99, file: !669, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !670, splitDebugInlining: false, nameTableKind: None)
!669 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!670 = !{!671}
!671 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !672, line: 40, baseType: !7, size: 32, elements: !673)
!672 = !DIFile(filename: "./lib/sys-limits.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!673 = !{!674}
!674 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072, isUnsigned: true)
!675 = distinct !DICompileUnit(language: DW_LANG_C99, file: !676, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !677, retainedTypes: !432, splitDebugInlining: false, nameTableKind: None)
!676 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!677 = !{!678}
!678 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !676, line: 40, baseType: !7, size: 32, elements: !679)
!679 = !{!680}
!680 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!681 = distinct !DICompileUnit(language: DW_LANG_C99, file: !682, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !683, retainedTypes: !696, splitDebugInlining: false, nameTableKind: None)
!682 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!683 = !{!684}
!684 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !686, file: !685, line: 186, baseType: !7, size: 32, elements: !694)
!685 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!686 = distinct !DISubprogram(name: "x2nrealloc", scope: !685, file: !685, line: 174, type: !687, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !689)
!687 = !DISubroutineType(types: !688)
!688 = !{!52, !52, !129, !55}
!689 = !{!690, !691, !692, !693}
!690 = !DILocalVariable(name: "p", arg: 1, scope: !686, file: !685, line: 174, type: !52)
!691 = !DILocalVariable(name: "pn", arg: 2, scope: !686, file: !685, line: 174, type: !129)
!692 = !DILocalVariable(name: "s", arg: 3, scope: !686, file: !685, line: 174, type: !55)
!693 = !DILocalVariable(name: "n", scope: !686, file: !685, line: 176, type: !55)
!694 = !{!695}
!695 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!696 = !{!55, !53, !52}
!697 = distinct !DICompileUnit(language: DW_LANG_C99, file: !698, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !331, splitDebugInlining: false, nameTableKind: None)
!698 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!699 = distinct !DICompileUnit(language: DW_LANG_C99, file: !700, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !331, retainedTypes: !432, splitDebugInlining: false, nameTableKind: None)
!700 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!701 = distinct !DICompileUnit(language: DW_LANG_C99, file: !702, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !331, splitDebugInlining: false, nameTableKind: None)
!702 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!703 = distinct !DICompileUnit(language: DW_LANG_C99, file: !704, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !331, retainedTypes: !432, splitDebugInlining: false, nameTableKind: None)
!704 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!705 = distinct !DICompileUnit(language: DW_LANG_C99, file: !706, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !331, retainedTypes: !432, splitDebugInlining: false, nameTableKind: None)
!706 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!707 = distinct !DICompileUnit(language: DW_LANG_C99, file: !708, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !331, retainedTypes: !709, splitDebugInlining: false, nameTableKind: None)
!708 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!709 = !{!55}
!710 = distinct !DICompileUnit(language: DW_LANG_C99, file: !711, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !331, splitDebugInlining: false, nameTableKind: None)
!711 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!712 = distinct !DICompileUnit(language: DW_LANG_C99, file: !713, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !331, splitDebugInlining: false, nameTableKind: None)
!713 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!714 = distinct !DICompileUnit(language: DW_LANG_C99, file: !715, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !716, retainedTypes: !432, splitDebugInlining: false, nameTableKind: None)
!715 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!716 = !{!717}
!717 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !718, line: 41, baseType: !7, size: 32, elements: !719)
!718 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!719 = !{!720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102}
!720 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!721 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!722 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!723 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!724 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!725 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!726 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!727 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!728 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!729 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!730 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!731 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!732 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!733 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!734 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!735 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!736 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!737 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!738 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!739 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!740 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!741 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!742 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!743 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!744 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!745 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!746 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!747 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!748 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!749 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!750 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!751 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!752 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!753 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!754 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!755 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!756 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!757 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!758 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!759 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!760 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!761 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!762 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!763 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!764 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!765 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!766 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!767 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!768 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!769 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!828 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!831 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!832 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!833 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!834 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!835 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!836 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!837 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!838 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!839 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!840 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!841 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!842 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!915 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!988 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!989 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!990 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!991 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!992 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!993 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!994 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!995 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!996 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!997 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!998 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!999 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1000 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1001 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1002 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1004 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1005 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1006 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1007 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1008 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1009 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1035 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1036 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1037 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1038 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1039 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1044 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1045 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1046 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1047 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1103 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1104, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !331, retainedTypes: !432, splitDebugInlining: false, nameTableKind: None)
!1104 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1105 = !{!"clang version 12.0.1"}
!1106 = !{i32 7, !"Dwarf Version", i32 4}
!1107 = !{i32 2, !"Debug Info Version", i32 3}
!1108 = !{i32 1, !"wchar_size", i32 4}
!1109 = !{i32 7, !"PIC Level", i32 2}
!1110 = !{i32 7, !"PIE Level", i32 2}
!1111 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 112, type: !1112, scopeLine: 113, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1114)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{null, !58}
!1114 = !{!1115}
!1115 = !DILocalVariable(name: "status", arg: 1, scope: !1111, file: !3, line: 112, type: !58)
!1116 = !DILocation(line: 0, scope: !1111)
!1117 = !DILocation(line: 114, column: 14, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 114, column: 7)
!1119 = !DILocation(line: 114, column: 7, scope: !1111)
!1120 = !DILocation(line: 115, column: 5, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 115, column: 5)
!1122 = !{!1123, !1123, i64 0}
!1123 = !{!"any pointer", !1124, i64 0}
!1124 = !{!"omnipotent char", !1125, i64 0}
!1125 = !{!"Simple C/C++ TBAA"}
!1126 = !DILocation(line: 118, column: 7, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 117, column: 5)
!1128 = !DILocation(line: 123, column: 7, scope: !1127)
!1129 = !DILocation(line: 583, column: 3, scope: !1130, inlinedAt: !1132)
!1130 = distinct !DISubprogram(name: "emit_stdin_note", scope: !1131, file: !1131, line: 581, type: !427, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !331)
!1131 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1132 = distinct !DILocation(line: 129, column: 7, scope: !1127)
!1133 = !DILocation(line: 131, column: 7, scope: !1127)
!1134 = !DILocation(line: 139, column: 7, scope: !1127)
!1135 = !DILocation(line: 146, column: 7, scope: !1127)
!1136 = !DILocation(line: 147, column: 7, scope: !1127)
!1137 = !DILocalVariable(name: "program", arg: 1, scope: !1138, file: !1131, line: 634, type: !293)
!1138 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1131, file: !1131, line: 634, type: !1139, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1141)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{null, !293}
!1141 = !{!1137, !1142, !1151, !1152, !1154}
!1142 = !DILocalVariable(name: "infomap", scope: !1138, file: !1131, line: 636, type: !1143)
!1143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1144, size: 896, elements: !1149)
!1144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1145)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1138, file: !1131, line: 636, size: 128, elements: !1146)
!1146 = !{!1147, !1148}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1145, file: !1131, line: 636, baseType: !293, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1145, file: !1131, line: 636, baseType: !293, size: 64, offset: 64)
!1149 = !{!1150}
!1150 = !DISubrange(count: 7)
!1151 = !DILocalVariable(name: "node", scope: !1138, file: !1131, line: 646, type: !293)
!1152 = !DILocalVariable(name: "map_prog", scope: !1138, file: !1131, line: 647, type: !1153)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1154 = !DILocalVariable(name: "lc_messages", scope: !1138, file: !1131, line: 659, type: !293)
!1155 = !DILocation(line: 0, scope: !1138, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 148, column: 7, scope: !1127)
!1157 = !DILocation(line: 636, column: 3, scope: !1138, inlinedAt: !1156)
!1158 = !DILocation(line: 636, column: 67, scope: !1138, inlinedAt: !1156)
!1159 = !DILocation(line: 647, column: 36, scope: !1138, inlinedAt: !1156)
!1160 = !DILocation(line: 649, column: 3, scope: !1138, inlinedAt: !1156)
!1161 = !DILocation(line: 649, column: 33, scope: !1138, inlinedAt: !1156)
!1162 = !DILocation(line: 650, column: 13, scope: !1138, inlinedAt: !1156)
!1163 = !DILocation(line: 649, column: 20, scope: !1138, inlinedAt: !1156)
!1164 = !{!1165, !1123, i64 0}
!1165 = !{!"infomap", !1123, i64 0, !1123, i64 8}
!1166 = !DILocation(line: 649, column: 10, scope: !1138, inlinedAt: !1156)
!1167 = !DILocation(line: 649, column: 28, scope: !1138, inlinedAt: !1156)
!1168 = distinct !{!1168, !1160, !1162, !1169}
!1169 = !{!"llvm.loop.mustprogress"}
!1170 = !DILocation(line: 652, column: 17, scope: !1171, inlinedAt: !1156)
!1171 = distinct !DILexicalBlock(scope: !1138, file: !1131, line: 652, column: 7)
!1172 = !{!1165, !1123, i64 8}
!1173 = !DILocation(line: 652, column: 7, scope: !1171, inlinedAt: !1156)
!1174 = !DILocation(line: 652, column: 7, scope: !1138, inlinedAt: !1156)
!1175 = !DILocation(line: 655, column: 3, scope: !1138, inlinedAt: !1156)
!1176 = !DILocation(line: 659, column: 29, scope: !1138, inlinedAt: !1156)
!1177 = !DILocation(line: 660, column: 7, scope: !1178, inlinedAt: !1156)
!1178 = distinct !DILexicalBlock(scope: !1138, file: !1131, line: 660, column: 7)
!1179 = !DILocation(line: 660, column: 19, scope: !1178, inlinedAt: !1156)
!1180 = !DILocation(line: 660, column: 22, scope: !1178, inlinedAt: !1156)
!1181 = !DILocation(line: 660, column: 7, scope: !1138, inlinedAt: !1156)
!1182 = !DILocation(line: 666, column: 7, scope: !1183, inlinedAt: !1156)
!1183 = distinct !DILexicalBlock(scope: !1178, file: !1131, line: 661, column: 5)
!1184 = !DILocation(line: 668, column: 5, scope: !1183, inlinedAt: !1156)
!1185 = !DILocation(line: 669, column: 3, scope: !1138, inlinedAt: !1156)
!1186 = !DILocation(line: 671, column: 3, scope: !1138, inlinedAt: !1156)
!1187 = !DILocation(line: 673, column: 1, scope: !1138, inlinedAt: !1156)
!1188 = !DILocation(line: 150, column: 3, scope: !1111)
!1189 = !DISubprogram(name: "dcgettext", scope: !1190, file: !1190, line: 51, type: !1191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!1190 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!53, !293, !293, !58}
!1193 = !DISubprogram(name: "fputs_unlocked", scope: !1194, file: !1194, line: 667, type: !1195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!1194 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!58, !293, !211}
!1197 = !DISubprogram(name: "setlocale", scope: !1198, file: !1198, line: 122, type: !1199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!1198 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!53, !58, !293}
!1201 = !DILocation(line: 0, scope: !64)
!1202 = !DILocation(line: 688, column: 3, scope: !64)
!1203 = !DILocation(line: 688, column: 17, scope: !64)
!1204 = !DILocation(line: 691, column: 21, scope: !64)
!1205 = !DILocation(line: 691, column: 3, scope: !64)
!1206 = !DILocation(line: 692, column: 3, scope: !64)
!1207 = !DILocation(line: 693, column: 3, scope: !64)
!1208 = !DILocation(line: 694, column: 3, scope: !64)
!1209 = !DILocation(line: 696, column: 3, scope: !64)
!1210 = !DILocation(line: 698, column: 15, scope: !64)
!1211 = !DILocation(line: 698, column: 13, scope: !64)
!1212 = !{!1213, !1213, i64 0}
!1213 = !{!"long", !1124, i64 0}
!1214 = !DILocation(line: 701, column: 12, scope: !64)
!1215 = !DILocation(line: 701, column: 3, scope: !64)
!1216 = !DILocation(line: 703, column: 22, scope: !64)
!1217 = !DILocation(line: 703, column: 49, scope: !64)
!1218 = !DILocation(line: 703, column: 19, scope: !64)
!1219 = !{!1220, !1220, i64 0}
!1220 = !{!"_Bool", !1124, i64 0}
!1221 = !DILocation(line: 705, column: 57, scope: !64)
!1222 = !DILocation(line: 705, column: 43, scope: !64)
!1223 = !DILocation(line: 705, column: 29, scope: !64)
!1224 = !DILocation(line: 705, column: 15, scope: !64)
!1225 = !DILocation(line: 706, column: 20, scope: !64)
!1226 = !DILocation(line: 707, column: 75, scope: !64)
!1227 = !DILocation(line: 707, column: 57, scope: !64)
!1228 = !DILocation(line: 707, column: 43, scope: !64)
!1229 = !DILocation(line: 707, column: 29, scope: !64)
!1230 = !DILocation(line: 707, column: 15, scope: !64)
!1231 = !DILocation(line: 709, column: 3, scope: !64)
!1232 = !DILocation(line: 709, column: 18, scope: !64)
!1233 = !DILocation(line: 713, column: 21, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !64, file: !3, line: 711, column: 7)
!1235 = !DILocation(line: 714, column: 9, scope: !1234)
!1236 = !DILocation(line: 717, column: 21, scope: !1234)
!1237 = !DILocation(line: 718, column: 9, scope: !1234)
!1238 = !DILocation(line: 721, column: 21, scope: !1234)
!1239 = !DILocation(line: 722, column: 9, scope: !1234)
!1240 = !DILocation(line: 725, column: 21, scope: !1234)
!1241 = !DILocation(line: 726, column: 9, scope: !1234)
!1242 = !DILocation(line: 729, column: 26, scope: !1234)
!1243 = !DILocation(line: 730, column: 9, scope: !1234)
!1244 = distinct !{!1244, !1231, !1245, !1169}
!1245 = !DILocation(line: 742, column: 7, scope: !64)
!1246 = !DILocation(line: 733, column: 22, scope: !1234)
!1247 = !DILocation(line: 734, column: 9, scope: !1234)
!1248 = !DILocation(line: 736, column: 7, scope: !1234)
!1249 = !DILocation(line: 738, column: 7, scope: !1234)
!1250 = !DILocation(line: 741, column: 9, scope: !1234)
!1251 = !DILocation(line: 744, column: 10, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !64, file: !3, line: 744, column: 7)
!1253 = !DILocation(line: 744, column: 22, scope: !1252)
!1254 = !DILocation(line: 744, column: 25, scope: !1252)
!1255 = !DILocation(line: 744, column: 37, scope: !1252)
!1256 = !DILocation(line: 744, column: 40, scope: !1252)
!1257 = !DILocation(line: 744, column: 52, scope: !1252)
!1258 = !DILocation(line: 744, column: 55, scope: !1252)
!1259 = !DILocation(line: 745, column: 10, scope: !1252)
!1260 = !DILocation(line: 745, column: 13, scope: !1252)
!1261 = !DILocation(line: 744, column: 7, scope: !64)
!1262 = !DILocation(line: 746, column: 45, scope: !1252)
!1263 = !DILocation(line: 746, column: 31, scope: !1252)
!1264 = !DILocation(line: 746, column: 17, scope: !1252)
!1265 = !DILocation(line: 746, column: 5, scope: !1252)
!1266 = !DILocation(line: 750, column: 7, scope: !188)
!1267 = !DILocation(line: 0, scope: !188)
!1268 = !{!1269, !1269, i64 0}
!1269 = !{!"int", !1124, i64 0}
!1270 = !DILocation(line: 750, column: 7, scope: !64)
!1271 = !DILocation(line: 756, column: 11, scope: !187)
!1272 = !DILocation(line: 758, column: 24, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 757, column: 9)
!1274 = distinct !DILexicalBlock(scope: !187, file: !3, line: 756, column: 11)
!1275 = !DILocation(line: 758, column: 47, scope: !1273)
!1276 = !DILocation(line: 758, column: 11, scope: !1273)
!1277 = !DILocation(line: 759, column: 11, scope: !1273)
!1278 = !DILocation(line: 761, column: 11, scope: !1273)
!1279 = !DILocation(line: 764, column: 11, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !187, file: !3, line: 764, column: 11)
!1281 = !DILocation(line: 764, column: 11, scope: !187)
!1282 = !DILocation(line: 765, column: 18, scope: !1280)
!1283 = !DILocation(line: 0, scope: !187)
!1284 = !DILocation(line: 765, column: 9, scope: !1280)
!1285 = !DILocation(line: 768, column: 20, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 767, column: 9)
!1287 = !DILocation(line: 769, column: 22, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 769, column: 15)
!1289 = !DILocation(line: 769, column: 15, scope: !1286)
!1290 = !DILocation(line: 770, column: 13, scope: !1288)
!1291 = !DILocation(line: 0, scope: !1280)
!1292 = !DILocation(line: 776, column: 7, scope: !187)
!1293 = !DILocation(line: 776, column: 19, scope: !187)
!1294 = !DILocation(line: 777, column: 18, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !187, file: !3, line: 777, column: 11)
!1296 = !DILocation(line: 777, column: 11, scope: !1295)
!1297 = !DILocation(line: 777, column: 40, scope: !1295)
!1298 = !DILocation(line: 778, column: 11, scope: !1295)
!1299 = !DILocation(line: 778, column: 14, scope: !1295)
!1300 = !{!1301, !1269, i64 24}
!1301 = !{!"stat", !1213, i64 0, !1213, i64 8, !1213, i64 16, !1269, i64 24, !1269, i64 28, !1269, i64 32, !1269, i64 36, !1213, i64 40, !1213, i64 48, !1213, i64 56, !1213, i64 64, !1302, i64 72, !1302, i64 88, !1302, i64 104, !1124, i64 120}
!1302 = !{!"timespec", !1213, i64 0, !1213, i64 8}
!1303 = !DILocation(line: 779, column: 11, scope: !1295)
!1304 = !DILocation(line: 779, column: 17, scope: !1295)
!1305 = !{!1301, !1213, i64 48}
!1306 = !DILocation(line: 779, column: 14, scope: !1295)
!1307 = !DILocation(line: 779, column: 28, scope: !1295)
!1308 = !DILocation(line: 779, column: 25, scope: !1295)
!1309 = !DILocation(line: 777, column: 11, scope: !187)
!1310 = !DILocation(line: 782, column: 11, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 780, column: 9)
!1312 = !DILocation(line: 783, column: 17, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 783, column: 15)
!1314 = !DILocation(line: 783, column: 44, scope: !1313)
!1315 = !DILocation(line: 783, column: 47, scope: !1313)
!1316 = !DILocation(line: 783, column: 63, scope: !1313)
!1317 = !DILocation(line: 783, column: 15, scope: !1311)
!1318 = !DILocation(line: 784, column: 13, scope: !1313)
!1319 = !DILocation(line: 786, column: 23, scope: !1311)
!1320 = !{!1321, !1123, i64 8}
!1321 = !{!"Tokens", !1213, i64 0, !1123, i64 8, !1123, i64 16, !1322, i64 24, !1322, i64 112, !1322, i64 200}
!1322 = !{!"obstack", !1213, i64 0, !1123, i64 8, !1123, i64 16, !1123, i64 24, !1123, i64 32, !1124, i64 40, !1213, i64 48, !1124, i64 56, !1124, i64 64, !1123, i64 72, !1269, i64 80, !1269, i64 80, !1269, i64 80}
!1323 = !DILocation(line: 787, column: 24, scope: !1311)
!1324 = !{!1321, !1213, i64 0}
!1325 = !DILocation(line: 788, column: 16, scope: !1311)
!1326 = !DILocation(line: 789, column: 9, scope: !1311)
!1327 = !DILocation(line: 794, column: 16, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 791, column: 9)
!1329 = !DILocation(line: 0, scope: !1295)
!1330 = !DILocation(line: 796, column: 5, scope: !188)
!1331 = !DILocation(line: 796, column: 5, scope: !187)
!1332 = !DILocation(line: 800, column: 16, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !188, file: !3, line: 798, column: 5)
!1334 = !DILocation(line: 801, column: 17, scope: !1333)
!1335 = !DILocation(line: 801, column: 16, scope: !1333)
!1336 = !DILocation(line: 802, column: 12, scope: !1333)
!1337 = !DILocation(line: 805, column: 8, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !64, file: !3, line: 805, column: 7)
!1339 = !DILocation(line: 805, column: 7, scope: !64)
!1340 = !DILocation(line: 806, column: 5, scope: !1338)
!1341 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1342, file: !3, line: 625, type: !55)
!1342 = distinct !DISubprogram(name: "get_input_fstatus", scope: !3, file: !3, line: 625, type: !1343, scopeLine: 626, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1347)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!78, !55, !1345}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!1347 = !{!1341, !1348, !1349, !1350}
!1348 = !DILocalVariable(name: "file", arg: 2, scope: !1342, file: !3, line: 625, type: !1345)
!1349 = !DILocalVariable(name: "fstatus", scope: !1342, file: !3, line: 627, type: !78)
!1350 = !DILocalVariable(name: "i", scope: !1351, file: !3, line: 637, type: !55)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 637, column: 7)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 636, column: 5)
!1353 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 629, column: 7)
!1354 = !DILocation(line: 0, scope: !1342, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 808, column: 13, scope: !64)
!1356 = !DILocation(line: 627, column: 39, scope: !1342, inlinedAt: !1355)
!1357 = !DILocalVariable(name: "n", arg: 1, scope: !1358, file: !685, line: 99, type: !55)
!1358 = distinct !DISubprogram(name: "xnmalloc", scope: !685, file: !685, line: 99, type: !1359, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1361)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!52, !55, !55}
!1361 = !{!1357, !1362}
!1362 = !DILocalVariable(name: "s", arg: 2, scope: !1358, file: !685, line: 99, type: !55)
!1363 = !DILocation(line: 0, scope: !1358, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 627, column: 29, scope: !1342, inlinedAt: !1355)
!1365 = !DILocation(line: 101, column: 7, scope: !1366, inlinedAt: !1364)
!1366 = distinct !DILexicalBlock(scope: !1358, file: !685, line: 101, column: 7)
!1367 = !DILocation(line: 101, column: 7, scope: !1358, inlinedAt: !1364)
!1368 = !DILocation(line: 102, column: 5, scope: !1366, inlinedAt: !1364)
!1369 = !DILocation(line: 103, column: 21, scope: !1358, inlinedAt: !1364)
!1370 = !DILocation(line: 103, column: 10, scope: !1358, inlinedAt: !1364)
!1371 = !DILocation(line: 627, column: 29, scope: !1342, inlinedAt: !1355)
!1372 = !DILocation(line: 630, column: 7, scope: !1353, inlinedAt: !1355)
!1373 = !DILocation(line: 637, column: 7, scope: !1351, inlinedAt: !1355)
!1374 = !DILocation(line: 631, column: 16, scope: !1353, inlinedAt: !1355)
!1375 = !DILocation(line: 631, column: 30, scope: !1353, inlinedAt: !1355)
!1376 = !DILocation(line: 631, column: 28, scope: !1353, inlinedAt: !1355)
!1377 = !DILocation(line: 631, column: 44, scope: !1353, inlinedAt: !1355)
!1378 = !DILocation(line: 631, column: 42, scope: !1353, inlinedAt: !1355)
!1379 = !DILocation(line: 632, column: 18, scope: !1353, inlinedAt: !1355)
!1380 = !DILocation(line: 632, column: 16, scope: !1353, inlinedAt: !1355)
!1381 = !DILocation(line: 632, column: 32, scope: !1353, inlinedAt: !1355)
!1382 = !DILocation(line: 632, column: 30, scope: !1353, inlinedAt: !1355)
!1383 = !DILocation(line: 633, column: 15, scope: !1353, inlinedAt: !1355)
!1384 = !DILocation(line: 629, column: 7, scope: !1342, inlinedAt: !1355)
!1385 = !DILocation(line: 634, column: 16, scope: !1353, inlinedAt: !1355)
!1386 = !DILocation(line: 634, column: 23, scope: !1353, inlinedAt: !1355)
!1387 = !{!1388, !1269, i64 0}
!1388 = !{!"fstatus", !1269, i64 0, !1301, i64 8}
!1389 = !DILocation(line: 634, column: 5, scope: !1353, inlinedAt: !1355)
!1390 = !DILocation(line: 0, scope: !1351, inlinedAt: !1355)
!1391 = !DILocation(line: 638, column: 32, scope: !1392, inlinedAt: !1355)
!1392 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 637, column: 7)
!1393 = !DILocation(line: 638, column: 40, scope: !1392, inlinedAt: !1355)
!1394 = !DILocation(line: 638, column: 43, scope: !1392, inlinedAt: !1355)
!1395 = !DILocation(line: 638, column: 30, scope: !1392, inlinedAt: !1355)
!1396 = !DILocation(line: 639, column: 65, scope: !1392, inlinedAt: !1355)
!1397 = !DILocation(line: 639, column: 32, scope: !1392, inlinedAt: !1355)
!1398 = !DILocation(line: 640, column: 59, scope: !1392, inlinedAt: !1355)
!1399 = !DILocation(line: 640, column: 32, scope: !1392, inlinedAt: !1355)
!1400 = !DILocation(line: 638, column: 20, scope: !1392, inlinedAt: !1355)
!1401 = !DILocation(line: 638, column: 27, scope: !1392, inlinedAt: !1355)
!1402 = !DILocation(line: 637, column: 39, scope: !1392, inlinedAt: !1355)
!1403 = !DILocation(line: 637, column: 28, scope: !1392, inlinedAt: !1355)
!1404 = distinct !{!1404, !1373, !1405, !1169}
!1405 = !DILocation(line: 640, column: 62, scope: !1351, inlinedAt: !1355)
!1406 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1407, file: !3, line: 651, type: !55)
!1407 = distinct !DISubprogram(name: "compute_number_width", scope: !3, file: !3, line: 651, type: !1408, scopeLine: 652, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1412)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!58, !55, !1410}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!1412 = !{!1406, !1413, !1414, !1415, !1418, !1419}
!1413 = !DILocalVariable(name: "fstatus", arg: 2, scope: !1407, file: !3, line: 651, type: !1410)
!1414 = !DILocalVariable(name: "width", scope: !1407, file: !3, line: 653, type: !58)
!1415 = !DILocalVariable(name: "minimum_width", scope: !1416, file: !3, line: 657, type: !58)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 656, column: 5)
!1417 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 655, column: 7)
!1418 = !DILocalVariable(name: "regular_total", scope: !1416, file: !3, line: 658, type: !258)
!1419 = !DILocalVariable(name: "i", scope: !1420, file: !3, line: 660, type: !55)
!1420 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 660, column: 7)
!1421 = !DILocation(line: 0, scope: !1407, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 809, column: 18, scope: !64)
!1423 = !DILocation(line: 655, column: 18, scope: !1417, inlinedAt: !1422)
!1424 = !DILocation(line: 655, column: 32, scope: !1417, inlinedAt: !1422)
!1425 = !DILocation(line: 655, column: 39, scope: !1417, inlinedAt: !1422)
!1426 = !DILocation(line: 655, column: 7, scope: !1407, inlinedAt: !1422)
!1427 = !DILocation(line: 0, scope: !1416, inlinedAt: !1422)
!1428 = !DILocation(line: 669, column: 17, scope: !1429, inlinedAt: !1422)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 669, column: 7)
!1430 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 669, column: 7)
!1431 = !DILocation(line: 669, column: 7, scope: !1430, inlinedAt: !1422)
!1432 = !DILocation(line: 661, column: 26, scope: !1433, inlinedAt: !1422)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 661, column: 13)
!1434 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 660, column: 7)
!1435 = !DILocation(line: 0, scope: !1420, inlinedAt: !1422)
!1436 = !DILocation(line: 661, column: 15, scope: !1433, inlinedAt: !1422)
!1437 = !DILocation(line: 661, column: 13, scope: !1434, inlinedAt: !1422)
!1438 = !DILocation(line: 663, column: 17, scope: !1439, inlinedAt: !1422)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 663, column: 17)
!1440 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 662, column: 11)
!1441 = !{!1388, !1269, i64 32}
!1442 = !DILocation(line: 663, column: 17, scope: !1440, inlinedAt: !1422)
!1443 = !DILocation(line: 664, column: 46, scope: !1439, inlinedAt: !1422)
!1444 = !{!1388, !1213, i64 56}
!1445 = !DILocation(line: 664, column: 29, scope: !1439, inlinedAt: !1422)
!1446 = !DILocation(line: 664, column: 15, scope: !1439, inlinedAt: !1422)
!1447 = !DILocation(line: 660, column: 39, scope: !1434, inlinedAt: !1422)
!1448 = !DILocation(line: 660, column: 28, scope: !1434, inlinedAt: !1422)
!1449 = !DILocation(line: 660, column: 7, scope: !1420, inlinedAt: !1422)
!1450 = distinct !{!1450, !1449, !1451, !1169}
!1451 = !DILocation(line: 667, column: 11, scope: !1420, inlinedAt: !1422)
!1452 = !DILocation(line: 670, column: 14, scope: !1429, inlinedAt: !1422)
!1453 = !DILocation(line: 669, column: 49, scope: !1429, inlinedAt: !1422)
!1454 = distinct !{!1454, !1431, !1455, !1169}
!1455 = !DILocation(line: 670, column: 14, scope: !1430, inlinedAt: !1422)
!1456 = !DILocation(line: 671, column: 17, scope: !1457, inlinedAt: !1422)
!1457 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 671, column: 11)
!1458 = !DILocation(line: 671, column: 11, scope: !1416, inlinedAt: !1422)
!1459 = !DILocation(line: 673, column: 5, scope: !1416, inlinedAt: !1422)
!1460 = !DILocation(line: 809, column: 16, scope: !64)
!1461 = !DILocation(line: 0, scope: !243)
!1462 = !DILocation(line: 0, scope: !245)
!1463 = !DILocation(line: 815, column: 7, scope: !245)
!1464 = !DILocation(line: 816, column: 25, scope: !245)
!1465 = !DILocation(line: 817, column: 12, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !245, file: !3, line: 817, column: 11)
!1467 = !DILocation(line: 817, column: 11, scope: !245)
!1468 = !DILocation(line: 819, column: 19, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 818, column: 9)
!1470 = !{!1124, !1124, i64 0}
!1471 = !DILocation(line: 819, column: 11, scope: !1469)
!1472 = !DILocation(line: 824, column: 25, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 820, column: 13)
!1474 = !DILocation(line: 824, column: 32, scope: !1473)
!1475 = !DILocation(line: 825, column: 22, scope: !1473)
!1476 = !DILocation(line: 824, column: 15, scope: !1473)
!1477 = !DILocation(line: 871, column: 5, scope: !246)
!1478 = !DILocation(line: 872, column: 2, scope: !64)
!1479 = !DILocation(line: 877, column: 10, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !64, file: !3, line: 877, column: 7)
!1481 = !DILocation(line: 829, column: 15, scope: !1473)
!1482 = !DILocation(line: 831, column: 15, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 831, column: 15)
!1484 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 831, column: 15)
!1485 = !DILocation(line: 834, column: 22, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !245, file: !3, line: 834, column: 11)
!1487 = !DILocation(line: 834, column: 25, scope: !1486)
!1488 = !DILocation(line: 834, column: 49, scope: !1486)
!1489 = !DILocation(line: 834, column: 52, scope: !1486)
!1490 = !DILocation(line: 834, column: 11, scope: !245)
!1491 = !DILocation(line: 844, column: 12, scope: !253)
!1492 = !DILocation(line: 844, column: 11, scope: !245)
!1493 = !DILocation(line: 838, column: 24, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 835, column: 9)
!1495 = !DILocation(line: 840, column: 18, scope: !1494)
!1496 = !DILocation(line: 838, column: 11, scope: !1494)
!1497 = !DILocation(line: 851, column: 32, scope: !251)
!1498 = !DILocation(line: 851, column: 13, scope: !251)
!1499 = !DILocation(line: 864, column: 11, scope: !245)
!1500 = !DILocation(line: 857, column: 47, scope: !250)
!1501 = !DILocation(line: 0, scope: !250)
!1502 = !DILocation(line: 858, column: 42, scope: !250)
!1503 = !DILocation(line: 859, column: 35, scope: !250)
!1504 = !DILocation(line: 858, column: 15, scope: !250)
!1505 = !DILocation(line: 867, column: 36, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !245, file: !3, line: 864, column: 11)
!1507 = !DILocalVariable(name: "file", arg: 1, scope: !1508, file: !3, line: 589, type: !293)
!1508 = distinct !DISubprogram(name: "wc_file", scope: !3, file: !3, line: 589, type: !1509, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1511)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!72, !293, !78}
!1511 = !{!1507, !1512, !1513, !1516}
!1512 = !DILocalVariable(name: "fstatus", arg: 2, scope: !1508, file: !3, line: 589, type: !78)
!1513 = !DILocalVariable(name: "fd", scope: !1514, file: !3, line: 599, type: !58)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 598, column: 5)
!1515 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 591, column: 7)
!1516 = !DILocalVariable(name: "ok", scope: !1517, file: !3, line: 607, type: !72)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 606, column: 9)
!1518 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 600, column: 11)
!1519 = !DILocation(line: 0, scope: !1508, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 867, column: 15, scope: !1506)
!1521 = !DILocation(line: 591, column: 17, scope: !1515, inlinedAt: !1520)
!1522 = !DILocation(line: 591, column: 7, scope: !1508, inlinedAt: !1520)
!1523 = !DILocation(line: 593, column: 23, scope: !1524, inlinedAt: !1520)
!1524 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 592, column: 5)
!1525 = !DILocation(line: 595, column: 14, scope: !1524, inlinedAt: !1520)
!1526 = !DILocation(line: 595, column: 7, scope: !1524, inlinedAt: !1520)
!1527 = !DILocation(line: 599, column: 16, scope: !1514, inlinedAt: !1520)
!1528 = !DILocation(line: 0, scope: !1514, inlinedAt: !1520)
!1529 = !DILocation(line: 600, column: 14, scope: !1518, inlinedAt: !1520)
!1530 = !DILocation(line: 600, column: 11, scope: !1514, inlinedAt: !1520)
!1531 = !DILocation(line: 602, column: 21, scope: !1532, inlinedAt: !1520)
!1532 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 601, column: 9)
!1533 = !DILocation(line: 602, column: 34, scope: !1532, inlinedAt: !1520)
!1534 = !DILocation(line: 602, column: 11, scope: !1532, inlinedAt: !1520)
!1535 = !DILocation(line: 603, column: 11, scope: !1532, inlinedAt: !1520)
!1536 = !DILocation(line: 607, column: 21, scope: !1517, inlinedAt: !1520)
!1537 = !DILocation(line: 0, scope: !1517, inlinedAt: !1520)
!1538 = !DILocation(line: 608, column: 15, scope: !1539, inlinedAt: !1520)
!1539 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 608, column: 15)
!1540 = !DILocation(line: 608, column: 26, scope: !1539, inlinedAt: !1520)
!1541 = !DILocation(line: 608, column: 15, scope: !1517, inlinedAt: !1520)
!1542 = !DILocation(line: 610, column: 25, scope: !1543, inlinedAt: !1520)
!1543 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 609, column: 13)
!1544 = !DILocation(line: 610, column: 38, scope: !1543, inlinedAt: !1520)
!1545 = !DILocation(line: 610, column: 15, scope: !1543, inlinedAt: !1520)
!1546 = !DILocation(line: 611, column: 15, scope: !1543, inlinedAt: !1520)
!1547 = !DILocation(line: 0, scope: !1515, inlinedAt: !1520)
!1548 = !DILocation(line: 867, column: 15, scope: !1506)
!1549 = !DILocation(line: 867, column: 12, scope: !1506)
!1550 = !DILocation(line: 0, scope: !1506)
!1551 = !DILocation(line: 869, column: 11, scope: !245)
!1552 = !DILocation(line: 870, column: 27, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !245, file: !3, line: 869, column: 11)
!1554 = !DILocation(line: 870, column: 9, scope: !1553)
!1555 = !DILocation(line: 812, column: 27, scope: !246)
!1556 = distinct !{!1556, !1557, !1558}
!1557 = !DILocation(line: 812, column: 3, scope: !243)
!1558 = !DILocation(line: 871, column: 5, scope: !243)
!1559 = !DILocation(line: 877, column: 7, scope: !1480)
!1560 = !DILocation(line: 877, column: 28, scope: !1480)
!1561 = !DILocation(line: 877, column: 50, scope: !1480)
!1562 = !DILocation(line: 877, column: 7, scope: !64)
!1563 = !DILocation(line: 0, scope: !1508, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 878, column: 11, scope: !1480)
!1565 = !DILocation(line: 593, column: 23, scope: !1524, inlinedAt: !1564)
!1566 = !DILocation(line: 595, column: 14, scope: !1524, inlinedAt: !1564)
!1567 = !DILocation(line: 878, column: 11, scope: !1480)
!1568 = !DILocation(line: 878, column: 8, scope: !1480)
!1569 = !DILocation(line: 878, column: 5, scope: !1480)
!1570 = !DILocation(line: 880, column: 7, scope: !64)
!1571 = !DILocation(line: 881, column: 5, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !64, file: !3, line: 880, column: 7)
!1573 = !DILocation(line: 883, column: 11, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !64, file: !3, line: 883, column: 7)
!1575 = !DILocation(line: 883, column: 9, scope: !1574)
!1576 = !DILocation(line: 883, column: 7, scope: !64)
!1577 = !DILocation(line: 884, column: 19, scope: !1574)
!1578 = !DILocation(line: 884, column: 32, scope: !1574)
!1579 = !DILocation(line: 884, column: 45, scope: !1574)
!1580 = !DILocation(line: 884, column: 58, scope: !1574)
!1581 = !DILocation(line: 885, column: 19, scope: !1574)
!1582 = !DILocation(line: 885, column: 36, scope: !1574)
!1583 = !DILocation(line: 884, column: 5, scope: !1574)
!1584 = !DILocation(line: 887, column: 3, scope: !64)
!1585 = !DILocation(line: 889, column: 3, scope: !64)
!1586 = !DILocation(line: 891, column: 7, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !64, file: !3, line: 891, column: 7)
!1588 = !DILocation(line: 891, column: 23, scope: !1587)
!1589 = !DILocation(line: 891, column: 26, scope: !1587)
!1590 = !DILocation(line: 891, column: 47, scope: !1587)
!1591 = !DILocation(line: 891, column: 7, scope: !64)
!1592 = !DILocation(line: 892, column: 5, scope: !1587)
!1593 = !DILocation(line: 894, column: 10, scope: !64)
!1594 = !DILocation(line: 895, column: 1, scope: !64)
!1595 = !DISubprogram(name: "bindtextdomain", scope: !1190, file: !1190, line: 86, type: !1596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!53, !293, !293}
!1598 = !DISubprogram(name: "textdomain", scope: !1190, file: !1190, line: 82, type: !1599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!53, !293}
!1601 = !DISubprogram(name: "atexit", scope: !1602, file: !1602, line: 595, type: !1603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!1602 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!58, !426}
!1605 = !DISubprogram(name: "getpagesize", scope: !1606, file: !1606, line: 990, type: !1607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!1606 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!58}
!1609 = !DISubprogram(name: "setvbuf", scope: !1194, file: !1194, line: 308, type: !1610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!58, !211, !53, !58, !57}
!1612 = !DISubprogram(name: "getenv", scope: !1602, file: !1602, line: 634, type: !1599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!1613 = !DISubprogram(name: "getopt_long", scope: !290, file: !290, line: 66, type: !1614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!58, !58, !1345, !293, !1616, !297}
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!1617 = !DISubprogram(name: "error", scope: !1618, file: !1618, line: 52, type: !1619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!1618 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1619 = !DISubroutineType(types: !1620)
!1620 = !{null, !58, !58, !293, null}
!1621 = !DISubprogram(name: "fileno", scope: !1194, file: !1194, line: 785, type: !1622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!58, !211}
!1624 = !DISubprogram(name: "fstat", scope: !1625, file: !1625, line: 210, type: !1626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!1625 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!58, !58, !1628}
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!1629 = !DISubprogram(name: "stat", scope: !1625, file: !1625, line: 205, type: !1630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!58, !293, !1628}
!1632 = distinct !DISubprogram(name: "wc", scope: !3, file: !3, line: 216, type: !1633, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1636)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!72, !58, !293, !78, !1635}
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1194, line: 63, baseType: !102)
!1636 = !{!1637, !1638, !1639, !1640, !1641, !1642, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1659, !1662, !1665, !1668, !1670, !1671, !1672, !1675, !1676, !1692, !1693, !1694, !1696, !1697, !1700, !1701, !1702, !1708, !1710, !1711, !1713, !1714}
!1637 = !DILocalVariable(name: "fd", arg: 1, scope: !1632, file: !3, line: 216, type: !58)
!1638 = !DILocalVariable(name: "file_x", arg: 2, scope: !1632, file: !3, line: 216, type: !293)
!1639 = !DILocalVariable(name: "fstatus", arg: 3, scope: !1632, file: !3, line: 216, type: !78)
!1640 = !DILocalVariable(name: "current_pos", arg: 4, scope: !1632, file: !3, line: 216, type: !1635)
!1641 = !DILocalVariable(name: "ok", scope: !1632, file: !3, line: 218, type: !72)
!1642 = !DILocalVariable(name: "buf", scope: !1632, file: !3, line: 219, type: !1643)
!1643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 131080, elements: !1644)
!1644 = !{!1645}
!1645 = !DISubrange(count: 16385)
!1646 = !DILocalVariable(name: "bytes_read", scope: !1632, file: !3, line: 220, type: !55)
!1647 = !DILocalVariable(name: "lines", scope: !1632, file: !3, line: 221, type: !258)
!1648 = !DILocalVariable(name: "words", scope: !1632, file: !3, line: 221, type: !258)
!1649 = !DILocalVariable(name: "chars", scope: !1632, file: !3, line: 221, type: !258)
!1650 = !DILocalVariable(name: "bytes", scope: !1632, file: !3, line: 221, type: !258)
!1651 = !DILocalVariable(name: "linelength", scope: !1632, file: !3, line: 221, type: !258)
!1652 = !DILocalVariable(name: "count_bytes", scope: !1632, file: !3, line: 222, type: !72)
!1653 = !DILocalVariable(name: "count_chars", scope: !1632, file: !3, line: 222, type: !72)
!1654 = !DILocalVariable(name: "count_complicated", scope: !1632, file: !3, line: 222, type: !72)
!1655 = !DILocalVariable(name: "file", scope: !1632, file: !3, line: 223, type: !293)
!1656 = !DILocalVariable(name: "skip_read", scope: !1657, file: !3, line: 259, type: !72)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 258, column: 5)
!1658 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 257, column: 7)
!1659 = !DILocalVariable(name: "end_pos", scope: !1660, file: !3, line: 270, type: !55)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 269, column: 9)
!1661 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 267, column: 11)
!1662 = !DILocalVariable(name: "hi_pos", scope: !1663, file: !3, line: 289, type: !1635)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 288, column: 13)
!1664 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 274, column: 15)
!1665 = !DILocalVariable(name: "long_lines", scope: !1666, file: !3, line: 315, type: !72)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 312, column: 5)
!1667 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 311, column: 12)
!1668 = !DILocalVariable(name: "p", scope: !1669, file: !3, line: 327, type: !53)
!1669 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 317, column: 9)
!1670 = !DILocalVariable(name: "end", scope: !1669, file: !3, line: 328, type: !53)
!1671 = !DILocalVariable(name: "plines", scope: !1669, file: !3, line: 329, type: !258)
!1672 = !DILocalVariable(name: "in_word", scope: !1673, file: !3, line: 363, type: !72)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 362, column: 5)
!1674 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 361, column: 12)
!1675 = !DILocalVariable(name: "linepos", scope: !1673, file: !3, line: 364, type: !258)
!1676 = !DILocalVariable(name: "state", scope: !1673, file: !3, line: 365, type: !1677)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1678, line: 6, baseType: !1679)
!1678 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1680, line: 21, baseType: !1681)
!1680 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1680, line: 13, size: 64, elements: !1682)
!1682 = !{!1683, !1684}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1681, file: !1680, line: 15, baseType: !58, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1681, file: !1680, line: 20, baseType: !1685, size: 32, offset: 32)
!1685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1681, file: !1680, line: 16, size: 32, elements: !1686)
!1686 = !{!1687, !1688}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1685, file: !1680, line: 18, baseType: !7, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1685, file: !1680, line: 19, baseType: !1689, size: 32)
!1689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 32, elements: !1690)
!1690 = !{!1691}
!1691 = !DISubrange(count: 4)
!1692 = !DILocalVariable(name: "in_shift", scope: !1673, file: !3, line: 366, type: !72)
!1693 = !DILocalVariable(name: "prev", scope: !1673, file: !3, line: 375, type: !55)
!1694 = !DILocalVariable(name: "p", scope: !1695, file: !3, line: 382, type: !293)
!1695 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 381, column: 9)
!1696 = !DILocalVariable(name: "backup_state", scope: !1695, file: !3, line: 384, type: !1677)
!1697 = !DILocalVariable(name: "wide_char", scope: !1698, file: !3, line: 398, type: !1699)
!1698 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 397, column: 13)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !56, line: 74, baseType: !58)
!1700 = !DILocalVariable(name: "n", scope: !1698, file: !3, line: 399, type: !55)
!1701 = !DILocalVariable(name: "wide", scope: !1698, file: !3, line: 400, type: !72)
!1702 = !DILocalVariable(name: "width", scope: !1703, file: !3, line: 472, type: !58)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 471, column: 25)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 470, column: 27)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 467, column: 21)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 466, column: 23)
!1707 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 444, column: 17)
!1708 = !DILocalVariable(name: "in_word", scope: !1709, file: !3, line: 517, type: !72)
!1709 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 516, column: 5)
!1710 = !DILocalVariable(name: "linepos", scope: !1709, file: !3, line: 518, type: !258)
!1711 = !DILocalVariable(name: "p", scope: !1712, file: !3, line: 522, type: !293)
!1712 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 521, column: 9)
!1713 = !DILabel(scope: !1707, name: "mb_word_separator", file: !3, line: 461)
!1714 = !DILabel(scope: !1715, name: "word_separator", file: !3, line: 551)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 534, column: 17)
!1716 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 532, column: 13)
!1717 = !DILocation(line: 0, scope: !1632)
!1718 = !DILocation(line: 219, column: 3, scope: !1632)
!1719 = !DILocation(line: 219, column: 8, scope: !1632)
!1720 = !DILocation(line: 223, column: 22, scope: !1632)
!1721 = !DILocation(line: 223, column: 40, scope: !1632)
!1722 = !DILocation(line: 230, column: 7, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 230, column: 7)
!1724 = !DILocation(line: 230, column: 18, scope: !1723)
!1725 = !DILocation(line: 0, scope: !1723)
!1726 = !DILocation(line: 230, column: 7, scope: !1632)
!1727 = !DILocation(line: 241, column: 23, scope: !1632)
!1728 = !DILocation(line: 241, column: 35, scope: !1632)
!1729 = !DILocation(line: 244, column: 20, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 244, column: 7)
!1731 = !DILocation(line: 245, column: 5, scope: !1730)
!1732 = !DILocation(line: 257, column: 19, scope: !1658)
!1733 = !DILocation(line: 0, scope: !1657)
!1734 = !DILocation(line: 261, column: 24, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 261, column: 11)
!1736 = !DILocation(line: 261, column: 13, scope: !1735)
!1737 = !DILocation(line: 261, column: 11, scope: !1657)
!1738 = !DILocation(line: 262, column: 48, scope: !1735)
!1739 = !DILocation(line: 262, column: 27, scope: !1735)
!1740 = !DILocation(line: 262, column: 25, scope: !1735)
!1741 = !DILocation(line: 262, column: 9, scope: !1735)
!1742 = !DILocation(line: 267, column: 22, scope: !1661)
!1743 = !DILocation(line: 267, column: 13, scope: !1661)
!1744 = !DILocation(line: 267, column: 29, scope: !1661)
!1745 = !DILocalVariable(name: "sb", arg: 1, scope: !1746, file: !1131, line: 705, type: !1749)
!1746 = distinct !DISubprogram(name: "usable_st_size", scope: !1131, file: !1131, line: 705, type: !1747, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1751)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!72, !1749}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!1751 = !{!1745}
!1752 = !DILocation(line: 0, scope: !1746, inlinedAt: !1753)
!1753 = distinct !DILocation(line: 267, column: 32, scope: !1661)
!1754 = !DILocation(line: 707, column: 11, scope: !1746, inlinedAt: !1753)
!1755 = !DILocation(line: 707, column: 33, scope: !1746, inlinedAt: !1753)
!1756 = !DILocation(line: 268, column: 31, scope: !1661)
!1757 = !DILocation(line: 268, column: 16, scope: !1661)
!1758 = !DILocation(line: 267, column: 11, scope: !1657)
!1759 = !DILocation(line: 0, scope: !1660)
!1760 = !DILocation(line: 271, column: 27, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 271, column: 15)
!1762 = !DILocation(line: 271, column: 15, scope: !1660)
!1763 = !DILocation(line: 272, column: 27, scope: !1761)
!1764 = !DILocation(line: 272, column: 13, scope: !1761)
!1765 = !DILocation(line: 274, column: 25, scope: !1664)
!1766 = !DILocation(line: 274, column: 23, scope: !1664)
!1767 = !DILocation(line: 274, column: 15, scope: !1660)
!1768 = !DILocation(line: 289, column: 51, scope: !1663)
!1769 = !{!1388, !1213, i64 64}
!1770 = !DILocation(line: 289, column: 48, scope: !1663)
!1771 = !DILocation(line: 289, column: 38, scope: !1663)
!1772 = !DILocation(line: 0, scope: !1663)
!1773 = !DILocation(line: 290, column: 21, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 290, column: 19)
!1775 = !DILocation(line: 290, column: 36, scope: !1774)
!1776 = !DILocation(line: 291, column: 27, scope: !1774)
!1777 = !DILocation(line: 290, column: 19, scope: !1663)
!1778 = !DILocation(line: 284, column: 23, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 275, column: 13)
!1780 = !DILocation(line: 296, column: 11, scope: !1657)
!1781 = !DILocation(line: 298, column: 11, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 297, column: 9)
!1783 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 296, column: 11)
!1784 = !DILocation(line: 299, column: 11, scope: !1782)
!1785 = !DILocation(line: 299, column: 32, scope: !1782)
!1786 = !DILocation(line: 303, column: 29, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 302, column: 17)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 301, column: 19)
!1789 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 300, column: 13)
!1790 = !DILocation(line: 303, column: 42, scope: !1787)
!1791 = !DILocation(line: 303, column: 19, scope: !1787)
!1792 = !DILocation(line: 305, column: 19, scope: !1787)
!1793 = !DILocation(line: 307, column: 21, scope: !1789)
!1794 = distinct !{!1794, !1784, !1795, !1169}
!1795 = !DILocation(line: 308, column: 13, scope: !1782)
!1796 = !DILocation(line: 311, column: 25, scope: !1667)
!1797 = !DILocation(line: 225, column: 9, scope: !1632)
!1798 = !DILocation(line: 0, scope: !1666)
!1799 = !DILocation(line: 316, column: 28, scope: !1666)
!1800 = !DILocation(line: 316, column: 7, scope: !1666)
!1801 = !DILocation(line: 320, column: 25, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 319, column: 13)
!1803 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 318, column: 15)
!1804 = !DILocation(line: 320, column: 38, scope: !1802)
!1805 = !DILocation(line: 320, column: 15, scope: !1802)
!1806 = !DILocation(line: 322, column: 15, scope: !1802)
!1807 = !DILocation(line: 325, column: 17, scope: !1669)
!1808 = !DILocation(line: 0, scope: !1669)
!1809 = !DILocation(line: 328, column: 25, scope: !1669)
!1810 = !DILocation(line: 331, column: 15, scope: !1669)
!1811 = !DILocation(line: 334, column: 15, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 332, column: 13)
!1813 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 331, column: 15)
!1814 = !DILocation(line: 335, column: 26, scope: !1812)
!1815 = !DILocation(line: 335, column: 31, scope: !1812)
!1816 = !DILocation(line: 335, column: 23, scope: !1812)
!1817 = distinct !{!1817, !1811, !1818, !1169, !1819}
!1818 = !DILocation(line: 335, column: 34, scope: !1812)
!1819 = !{!"llvm.loop.isvectorized", i32 1}
!1820 = !DILocation(line: 340, column: 48, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 338, column: 13)
!1822 = !DILocation(line: 340, column: 27, scope: !1821)
!1823 = !DILocation(line: 340, column: 15, scope: !1821)
!1824 = !DILocation(line: 335, column: 28, scope: !1812)
!1825 = !DILocation(line: 334, column: 24, scope: !1812)
!1826 = distinct !{!1826, !1811, !1818, !1169, !1827, !1819}
!1827 = !{!"llvm.loop.unroll.runtime.disable"}
!1828 = !DILocation(line: 342, column: 19, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 341, column: 17)
!1830 = !DILocation(line: 343, column: 19, scope: !1829)
!1831 = distinct !{!1831, !1823, !1832, !1169}
!1832 = !DILocation(line: 344, column: 17, scope: !1821)
!1833 = !DILocation(line: 353, column: 21, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 353, column: 15)
!1835 = !DILocation(line: 353, column: 44, scope: !1834)
!1836 = !DILocation(line: 353, column: 30, scope: !1834)
!1837 = distinct !{!1837, !1800, !1838, !1169}
!1838 = !DILocation(line: 357, column: 9, scope: !1666)
!1839 = !DILocation(line: 361, column: 12, scope: !1674)
!1840 = !DILocation(line: 361, column: 23, scope: !1674)
!1841 = !DILocation(line: 361, column: 12, scope: !1667)
!1842 = !DILocation(line: 0, scope: !1673)
!1843 = !DILocation(line: 365, column: 7, scope: !1673)
!1844 = !DILocation(line: 365, column: 17, scope: !1673)
!1845 = !DILocation(line: 380, column: 7, scope: !1673)
!1846 = !DILocation(line: 225, column: 46, scope: !1632)
!1847 = !DILocation(line: 225, column: 33, scope: !1632)
!1848 = !DILocation(line: 225, column: 25, scope: !1632)
!1849 = !DILocation(line: 225, column: 17, scope: !1632)
!1850 = !DILocation(line: 363, column: 12, scope: !1673)
!1851 = !DILocation(line: 364, column: 17, scope: !1673)
!1852 = !DILocation(line: 366, column: 12, scope: !1673)
!1853 = !DILocation(line: 375, column: 14, scope: !1673)
!1854 = !DILocation(line: 380, column: 47, scope: !1673)
!1855 = !DILocation(line: 380, column: 67, scope: !1673)
!1856 = !DILocation(line: 380, column: 28, scope: !1673)
!1857 = !DILocation(line: 388, column: 25, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 387, column: 13)
!1859 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 386, column: 15)
!1860 = !DILocation(line: 388, column: 38, scope: !1858)
!1861 = !DILocation(line: 388, column: 15, scope: !1858)
!1862 = !DILocation(line: 393, column: 17, scope: !1695)
!1863 = !DILocation(line: 0, scope: !1695)
!1864 = !DILocation(line: 395, column: 22, scope: !1695)
!1865 = !DILocation(line: 396, column: 11, scope: !1695)
!1866 = !DILocation(line: 394, column: 13, scope: !1695)
!1867 = !DILocation(line: 398, column: 15, scope: !1698)
!1868 = !DILocation(line: 0, scope: !1698)
!1869 = !DILocation(line: 402, column: 20, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 402, column: 19)
!1871 = !DILocation(line: 402, column: 29, scope: !1870)
!1872 = !DILocation(line: 402, column: 42, scope: !1870)
!1873 = !DILocalVariable(name: "c", arg: 1, scope: !1874, file: !1875, line: 316, type: !54)
!1874 = distinct !DISubprogram(name: "is_basic", scope: !1875, file: !1875, line: 316, type: !1876, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1878)
!1875 = !DIFile(filename: "./lib/mbchar.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!72, !54}
!1878 = !{!1873}
!1879 = !DILocation(line: 0, scope: !1874, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 402, column: 32, scope: !1870)
!1881 = !DILocation(line: 318, column: 27, scope: !1874, inlinedAt: !1880)
!1882 = !DILocation(line: 318, column: 45, scope: !1874, inlinedAt: !1880)
!1883 = !DILocation(line: 318, column: 11, scope: !1874, inlinedAt: !1880)
!1884 = !DILocation(line: 318, column: 73, scope: !1874, inlinedAt: !1880)
!1885 = !DILocation(line: 318, column: 10, scope: !1874, inlinedAt: !1880)
!1886 = !DILocation(line: 402, column: 19, scope: !1698)
!1887 = !DILocation(line: 407, column: 31, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 403, column: 17)
!1889 = !DILocation(line: 407, column: 29, scope: !1888)
!1890 = !DILocation(line: 409, column: 17, scope: !1888)
!1891 = !DILocation(line: 414, column: 34, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 411, column: 17)
!1893 = !DILocation(line: 416, column: 23, scope: !1892)
!1894 = !DILocation(line: 417, column: 23, scope: !1892)
!1895 = !DILocation(line: 420, column: 31, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 418, column: 21)
!1897 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 417, column: 23)
!1898 = !DILocation(line: 493, column: 13, scope: !1695)
!1899 = !DILocation(line: 497, column: 15, scope: !1695)
!1900 = !DILocation(line: 430, column: 24, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 425, column: 21)
!1902 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 424, column: 23)
!1903 = !DILocation(line: 431, column: 33, scope: !1901)
!1904 = !DILocation(line: 432, column: 23, scope: !1901)
!1905 = !DILocation(line: 434, column: 23, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 434, column: 23)
!1907 = !DILocation(line: 434, column: 23, scope: !1892)
!1908 = !DILocation(line: 436, column: 25, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 436, column: 23)
!1910 = !DILocation(line: 436, column: 23, scope: !1892)
!1911 = !DILocation(line: 438, column: 33, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1909, file: !3, line: 437, column: 21)
!1913 = !DILocation(line: 466, column: 28, scope: !1706)
!1914 = !DILocation(line: 443, column: 23, scope: !1698)
!1915 = !DILocation(line: 0, scope: !1870)
!1916 = !DILocation(line: 443, column: 15, scope: !1698)
!1917 = !DILocation(line: 446, column: 24, scope: !1707)
!1918 = !DILocation(line: 447, column: 19, scope: !1707)
!1919 = !DILocation(line: 450, column: 31, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 450, column: 23)
!1921 = !DILocation(line: 450, column: 23, scope: !1707)
!1922 = !DILocation(line: 453, column: 19, scope: !1707)
!1923 = !DILocation(line: 455, column: 32, scope: !1707)
!1924 = !DILocation(line: 455, column: 27, scope: !1707)
!1925 = !DILocation(line: 456, column: 19, scope: !1707)
!1926 = !DILocation(line: 458, column: 26, scope: !1707)
!1927 = !DILocation(line: 459, column: 19, scope: !1707)
!1928 = !DILocation(line: 461, column: 17, scope: !1707)
!1929 = !DILocation(line: 462, column: 28, scope: !1707)
!1930 = !DILocation(line: 462, column: 25, scope: !1707)
!1931 = !DILocation(line: 464, column: 19, scope: !1707)
!1932 = !DILocation(line: 466, column: 31, scope: !1706)
!1933 = !DILocation(line: 466, column: 23, scope: !1707)
!1934 = !DILocation(line: 470, column: 27, scope: !1704)
!1935 = !DILocation(line: 470, column: 27, scope: !1705)
!1936 = !DILocation(line: 472, column: 48, scope: !1703)
!1937 = !DILocation(line: 472, column: 39, scope: !1703)
!1938 = !DILocation(line: 0, scope: !1703)
!1939 = !DILocation(line: 473, column: 37, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 473, column: 31)
!1941 = !DILocation(line: 473, column: 31, scope: !1703)
!1942 = !DILocation(line: 476, column: 37, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 476, column: 27)
!1944 = !DILocation(line: 476, column: 27, scope: !1943)
!1945 = !DILocation(line: 476, column: 48, scope: !1943)
!1946 = !DILocalVariable(name: "wc", arg: 1, scope: !1947, file: !3, line: 155, type: !1950)
!1947 = distinct !DISubprogram(name: "iswnbspace", scope: !3, file: !3, line: 155, type: !1948, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1952)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!58, !1950}
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1951, line: 20, baseType: !7)
!1951 = !DIFile(filename: "/usr/include/bits/types/wint_t.h", directory: "")
!1952 = !{!1946}
!1953 = !DILocation(line: 0, scope: !1947, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 476, column: 51, scope: !1943)
!1955 = !DILocation(line: 157, column: 12, scope: !1947, inlinedAt: !1954)
!1956 = !{i8 0, i8 2}
!1957 = !DILocation(line: 158, column: 10, scope: !1947, inlinedAt: !1954)
!1958 = !DILocation(line: 476, column: 63, scope: !1943)
!1959 = !DILocation(line: 158, column: 27, scope: !1947, inlinedAt: !1954)
!1960 = !DILocation(line: 480, column: 37, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 480, column: 28)
!1962 = !{!1963, !1963, i64 0}
!1963 = !{!"short", !1124, i64 0}
!1964 = !DILocation(line: 480, column: 28, scope: !1706)
!1965 = !DILocation(line: 482, column: 30, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 481, column: 21)
!1967 = !DILocation(line: 483, column: 27, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 483, column: 27)
!1969 = !DILocation(line: 483, column: 27, scope: !1966)
!1970 = !DILocation(line: 490, column: 17, scope: !1698)
!1971 = !DILocation(line: 491, column: 26, scope: !1698)
!1972 = !DILocation(line: 492, column: 20, scope: !1698)
!1973 = !DILocation(line: 0, scope: !1892)
!1974 = distinct !{!1974, !1865, !1975, !1169}
!1975 = !DILocation(line: 494, column: 32, scope: !1695)
!1976 = !DILocation(line: 499, column: 30, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !3, line: 499, column: 19)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !3, line: 498, column: 13)
!1979 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 497, column: 15)
!1980 = !DILocation(line: 499, column: 19, scope: !1978)
!1981 = !DILocalVariable(name: "__dest", arg: 1, scope: !1982, file: !1983, line: 34, type: !52)
!1982 = distinct !DISubprogram(name: "memmove", scope: !1983, file: !1983, line: 34, type: !1984, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1986)
!1983 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!52, !52, !666, !55}
!1986 = !{!1981, !1987, !1988}
!1987 = !DILocalVariable(name: "__src", arg: 2, scope: !1982, file: !1983, line: 34, type: !666)
!1988 = !DILocalVariable(name: "__len", arg: 3, scope: !1982, file: !1983, line: 34, type: !55)
!1989 = !DILocation(line: 0, scope: !1982, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 505, column: 15, scope: !1978)
!1991 = !DILocation(line: 36, column: 10, scope: !1982, inlinedAt: !1990)
!1992 = !DILocation(line: 506, column: 13, scope: !1978)
!1993 = !DILocation(line: 510, column: 19, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 510, column: 11)
!1995 = !DILocation(line: 510, column: 11, scope: !1673)
!1996 = !DILocation(line: 512, column: 16, scope: !1673)
!1997 = !DILocation(line: 512, column: 13, scope: !1673)
!1998 = !DILocation(line: 513, column: 5, scope: !1674)
!1999 = !DILocation(line: 513, column: 5, scope: !1673)
!2000 = !DILocation(line: 517, column: 12, scope: !1709)
!2001 = !DILocation(line: 518, column: 17, scope: !1709)
!2002 = !DILocation(line: 0, scope: !1709)
!2003 = !DILocation(line: 520, column: 28, scope: !1709)
!2004 = !DILocation(line: 520, column: 7, scope: !1709)
!2005 = !DILocation(line: 525, column: 25, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 524, column: 13)
!2007 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 523, column: 15)
!2008 = !DILocation(line: 525, column: 38, scope: !2006)
!2009 = !DILocation(line: 525, column: 15, scope: !2006)
!2010 = !DILocation(line: 0, scope: !1712)
!2011 = !DILocation(line: 533, column: 25, scope: !1716)
!2012 = !DILocation(line: 533, column: 23, scope: !1716)
!2013 = !DILocation(line: 533, column: 15, scope: !1716)
!2014 = !DILocation(line: 536, column: 24, scope: !1715)
!2015 = !DILocation(line: 537, column: 19, scope: !1715)
!2016 = !DILocation(line: 540, column: 31, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 540, column: 23)
!2018 = !DILocation(line: 540, column: 23, scope: !1715)
!2019 = !DILocation(line: 543, column: 19, scope: !1715)
!2020 = !DILocation(line: 545, column: 32, scope: !1715)
!2021 = !DILocation(line: 545, column: 27, scope: !1715)
!2022 = !DILocation(line: 546, column: 19, scope: !1715)
!2023 = !DILocation(line: 548, column: 26, scope: !1715)
!2024 = !DILocation(line: 549, column: 19, scope: !1715)
!2025 = !DILocation(line: 551, column: 17, scope: !1715)
!2026 = !DILocation(line: 552, column: 28, scope: !1715)
!2027 = !DILocation(line: 552, column: 25, scope: !1715)
!2028 = !DILocation(line: 554, column: 19, scope: !1715)
!2029 = !DILocation(line: 556, column: 23, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 556, column: 23)
!2031 = !DILocation(line: 556, column: 23, scope: !1715)
!2032 = !DILocation(line: 558, column: 30, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2030, file: !3, line: 557, column: 21)
!2034 = !DILocation(line: 559, column: 27, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2033, file: !3, line: 559, column: 27)
!2036 = !DILocation(line: 560, column: 27, scope: !2035)
!2037 = !DILocation(line: 560, column: 41, scope: !2035)
!2038 = !DILocalVariable(name: "c", arg: 1, scope: !2039, file: !3, line: 163, type: !58)
!2039 = distinct !DISubprogram(name: "isnbspace", scope: !3, file: !3, line: 163, type: !2040, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2042)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!58, !58}
!2042 = !{!2038}
!2043 = !DILocation(line: 0, scope: !2039, inlinedAt: !2044)
!2044 = distinct !DILocation(line: 560, column: 30, scope: !2035)
!2045 = !DILocation(line: 165, column: 22, scope: !2039, inlinedAt: !2044)
!2046 = !DILocation(line: 0, scope: !1947, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 165, column: 10, scope: !2039, inlinedAt: !2044)
!2048 = !DILocation(line: 157, column: 12, scope: !1947, inlinedAt: !2047)
!2049 = !DILocation(line: 158, column: 10, scope: !1947, inlinedAt: !2047)
!2050 = !DILocation(line: 158, column: 27, scope: !1947, inlinedAt: !2047)
!2051 = !DILocation(line: 567, column: 18, scope: !1712)
!2052 = !DILocation(line: 566, column: 13, scope: !1716)
!2053 = distinct !{!2053, !2054, !2055, !1169}
!2054 = !DILocation(line: 531, column: 11, scope: !1712)
!2055 = !DILocation(line: 567, column: 30, scope: !1712)
!2056 = !DILocation(line: 530, column: 17, scope: !1712)
!2057 = !DILocation(line: 569, column: 19, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 569, column: 11)
!2059 = !DILocation(line: 569, column: 11, scope: !1709)
!2060 = !DILocation(line: 571, column: 16, scope: !1709)
!2061 = !DILocation(line: 571, column: 13, scope: !1709)
!2062 = !DILocation(line: 574, column: 21, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 574, column: 7)
!2064 = !DILocation(line: 574, column: 19, scope: !2063)
!2065 = !DILocation(line: 574, column: 7, scope: !1632)
!2066 = !DILocation(line: 577, column: 3, scope: !1632)
!2067 = !DILocation(line: 578, column: 15, scope: !1632)
!2068 = !DILocation(line: 579, column: 15, scope: !1632)
!2069 = !DILocation(line: 580, column: 15, scope: !1632)
!2070 = !DILocation(line: 581, column: 15, scope: !1632)
!2071 = !DILocation(line: 582, column: 20, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 582, column: 7)
!2073 = !DILocation(line: 582, column: 18, scope: !2072)
!2074 = !DILocation(line: 582, column: 7, scope: !1632)
!2075 = !DILocation(line: 583, column: 21, scope: !2072)
!2076 = !DILocation(line: 583, column: 5, scope: !2072)
!2077 = !DILocation(line: 585, column: 10, scope: !1632)
!2078 = !DILocation(line: 586, column: 1, scope: !1632)
!2079 = !DILocation(line: 585, column: 3, scope: !1632)
!2080 = !DISubprogram(name: "open", scope: !2081, file: !2081, line: 196, type: !2082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!2081 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!58, !293, !58, null}
!2084 = !DISubprogram(name: "close", scope: !1606, file: !1606, line: 353, type: !2040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!2085 = !DILocation(line: 0, scope: !303)
!2086 = !DILocation(line: 180, column: 3, scope: !303)
!2087 = !DILocation(line: 180, column: 8, scope: !303)
!2088 = !DILocation(line: 182, column: 7, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !303, file: !3, line: 182, column: 7)
!2090 = !DILocation(line: 182, column: 7, scope: !303)
!2091 = !DILocation(line: 184, column: 7, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 183, column: 5)
!2093 = !DILocation(line: 186, column: 5, scope: !2092)
!2094 = !DILocation(line: 187, column: 7, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !303, file: !3, line: 187, column: 7)
!2096 = !DILocation(line: 187, column: 7, scope: !303)
!2097 = !DILocation(line: 189, column: 7, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 188, column: 5)
!2099 = !DILocation(line: 191, column: 5, scope: !2098)
!2100 = !DILocation(line: 192, column: 7, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !303, file: !3, line: 192, column: 7)
!2102 = !DILocation(line: 192, column: 7, scope: !303)
!2103 = !DILocation(line: 194, column: 7, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 193, column: 5)
!2105 = !DILocation(line: 196, column: 5, scope: !2104)
!2106 = !DILocation(line: 197, column: 7, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !303, file: !3, line: 197, column: 7)
!2108 = !DILocation(line: 197, column: 7, scope: !303)
!2109 = !DILocation(line: 199, column: 7, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 198, column: 5)
!2111 = !DILocation(line: 201, column: 5, scope: !2110)
!2112 = !DILocation(line: 202, column: 7, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !303, file: !3, line: 202, column: 7)
!2114 = !DILocation(line: 202, column: 7, scope: !303)
!2115 = !DILocation(line: 204, column: 7, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 203, column: 5)
!2117 = !DILocation(line: 205, column: 5, scope: !2116)
!2118 = !DILocation(line: 206, column: 7, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !303, file: !3, line: 206, column: 7)
!2120 = !DILocation(line: 206, column: 7, scope: !303)
!2121 = !DILocation(line: 207, column: 5, scope: !2119)
!2122 = !DILocalVariable(name: "__c", arg: 1, scope: !2123, file: !2124, line: 108, type: !58)
!2123 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2124, file: !2124, line: 108, type: !2040, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2125)
!2124 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!2125 = !{!2122}
!2126 = !DILocation(line: 0, scope: !2123, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 208, column: 3, scope: !303)
!2128 = !DILocation(line: 110, column: 10, scope: !2123, inlinedAt: !2127)
!2129 = !{!2130, !1123, i64 40}
!2130 = !{!"_IO_FILE", !1269, i64 0, !1123, i64 8, !1123, i64 16, !1123, i64 24, !1123, i64 32, !1123, i64 40, !1123, i64 48, !1123, i64 56, !1123, i64 64, !1123, i64 72, !1123, i64 80, !1123, i64 88, !1123, i64 96, !1123, i64 104, !1269, i64 112, !1269, i64 116, !1213, i64 120, !1963, i64 128, !1124, i64 130, !1124, i64 131, !1123, i64 136, !1213, i64 144, !1123, i64 152, !1123, i64 160, !1123, i64 168, !1123, i64 176, !1213, i64 184, !1269, i64 192, !1124, i64 196}
!2131 = !{!2130, !1123, i64 48}
!2132 = !{!"branch_weights", i32 2000, i32 1}
!2133 = !DILocation(line: 209, column: 1, scope: !303)
!2134 = !DISubprogram(name: "lseek", scope: !1606, file: !1606, line: 334, type: !2135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!103, !58, !103, !58}
!2137 = !DISubprogram(name: "mbsinit", scope: !2138, file: !2138, line: 292, type: !2139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!2138 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!58, !2141}
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1681)
!2143 = !DISubprogram(name: "iswprint", scope: !2144, file: !2144, line: 120, type: !2145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!2144 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!58, !7}
!2147 = !DISubprogram(name: "wcwidth", scope: !2138, file: !2138, line: 367, type: !2040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!2148 = !DISubprogram(name: "iswspace", scope: !2144, file: !2144, line: 130, type: !2145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!2149 = distinct !DISubprogram(name: "argv_iter_init_argv", scope: !430, file: !430, line: 40, type: !2150, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !2195)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!2152, !67}
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "argv_iterator", file: !430, line: 25, size: 384, elements: !2154)
!2154 = !{!2155, !2190, !2191, !2192, !2193, !2194}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !2153, file: !430, line: 29, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !2158)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !2159)
!2159 = !{!2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2158, file: !193, line: 51, baseType: !58, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2158, file: !193, line: 54, baseType: !53, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2158, file: !193, line: 55, baseType: !53, size: 64, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2158, file: !193, line: 56, baseType: !53, size: 64, offset: 192)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2158, file: !193, line: 57, baseType: !53, size: 64, offset: 256)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2158, file: !193, line: 58, baseType: !53, size: 64, offset: 320)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2158, file: !193, line: 59, baseType: !53, size: 64, offset: 384)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2158, file: !193, line: 60, baseType: !53, size: 64, offset: 448)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2158, file: !193, line: 61, baseType: !53, size: 64, offset: 512)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2158, file: !193, line: 64, baseType: !53, size: 64, offset: 576)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2158, file: !193, line: 65, baseType: !53, size: 64, offset: 640)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2158, file: !193, line: 66, baseType: !53, size: 64, offset: 704)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2158, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2158, file: !193, line: 70, baseType: !2174, size: 64, offset: 832)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2158, file: !193, line: 72, baseType: !58, size: 32, offset: 896)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2158, file: !193, line: 73, baseType: !58, size: 32, offset: 928)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2158, file: !193, line: 74, baseType: !102, size: 64, offset: 960)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2158, file: !193, line: 77, baseType: !59, size: 16, offset: 1024)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2158, file: !193, line: 78, baseType: !217, size: 8, offset: 1040)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2158, file: !193, line: 79, baseType: !219, size: 8, offset: 1048)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2158, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2158, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2158, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2158, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2158, file: !193, line: 93, baseType: !2174, size: 64, offset: 1344)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2158, file: !193, line: 94, baseType: !52, size: 64, offset: 1408)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2158, file: !193, line: 95, baseType: !55, size: 64, offset: 1472)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2158, file: !193, line: 96, baseType: !58, size: 32, offset: 1536)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2158, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "item_idx", scope: !2153, file: !430, line: 30, baseType: !55, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "tok", scope: !2153, file: !430, line: 31, baseType: !53, size: 64, offset: 128)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "buf_len", scope: !2153, file: !430, line: 32, baseType: !55, size: 64, offset: 192)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !2153, file: !430, line: 35, baseType: !67, size: 64, offset: 256)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2153, file: !430, line: 36, baseType: !67, size: 64, offset: 320)
!2195 = !{!2196, !2197}
!2196 = !DILocalVariable(name: "argv", arg: 1, scope: !2149, file: !430, line: 40, type: !67)
!2197 = !DILocalVariable(name: "ai", scope: !2149, file: !430, line: 42, type: !2152)
!2198 = !DILocation(line: 0, scope: !2149)
!2199 = !DILocation(line: 42, column: 30, scope: !2149)
!2200 = !DILocation(line: 43, column: 8, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2149, file: !430, line: 43, column: 7)
!2202 = !DILocation(line: 43, column: 7, scope: !2149)
!2203 = !DILocation(line: 45, column: 7, scope: !2149)
!2204 = !DILocation(line: 45, column: 10, scope: !2149)
!2205 = !{!2206, !1123, i64 0}
!2206 = !{!"argv_iterator", !1123, i64 0, !1213, i64 8, !1123, i64 16, !1213, i64 24, !1123, i64 32, !1123, i64 40}
!2207 = !DILocation(line: 46, column: 7, scope: !2149)
!2208 = !DILocation(line: 46, column: 16, scope: !2149)
!2209 = !{!2206, !1123, i64 32}
!2210 = !DILocation(line: 47, column: 7, scope: !2149)
!2211 = !DILocation(line: 47, column: 9, scope: !2149)
!2212 = !{!2206, !1123, i64 40}
!2213 = !DILocation(line: 48, column: 3, scope: !2149)
!2214 = !DILocation(line: 49, column: 1, scope: !2149)
!2215 = distinct !DISubprogram(name: "argv_iter_init_stream", scope: !430, file: !430, line: 54, type: !2216, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !2218)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!2152, !2156}
!2218 = !{!2219, !2220}
!2219 = !DILocalVariable(name: "fp", arg: 1, scope: !2215, file: !430, line: 54, type: !2156)
!2220 = !DILocalVariable(name: "ai", scope: !2215, file: !430, line: 56, type: !2152)
!2221 = !DILocation(line: 0, scope: !2215)
!2222 = !DILocation(line: 56, column: 30, scope: !2215)
!2223 = !DILocation(line: 57, column: 8, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2215, file: !430, line: 57, column: 7)
!2225 = !DILocation(line: 57, column: 7, scope: !2215)
!2226 = !DILocation(line: 59, column: 7, scope: !2215)
!2227 = !DILocation(line: 59, column: 10, scope: !2215)
!2228 = !DILocation(line: 63, column: 7, scope: !2215)
!2229 = !DILocation(line: 63, column: 16, scope: !2215)
!2230 = !DILocation(line: 65, column: 3, scope: !2215)
!2231 = !DILocation(line: 66, column: 1, scope: !2215)
!2232 = distinct !DISubprogram(name: "argv_iter", scope: !430, file: !430, line: 69, type: !2233, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !2236)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!53, !2152, !2235}
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!2236 = !{!2237, !2238, !2239}
!2237 = !DILocalVariable(name: "ai", arg: 1, scope: !2232, file: !430, line: 69, type: !2152)
!2238 = !DILocalVariable(name: "err", arg: 2, scope: !2232, file: !430, line: 69, type: !2235)
!2239 = !DILocalVariable(name: "len", scope: !2240, file: !430, line: 73, type: !2242)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !430, line: 72, column: 5)
!2241 = distinct !DILexicalBlock(scope: !2232, file: !430, line: 71, column: 7)
!2242 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1194, line: 77, baseType: !2243)
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !88, line: 194, baseType: !103)
!2244 = !DILocation(line: 0, scope: !2232)
!2245 = !DILocation(line: 71, column: 11, scope: !2241)
!2246 = !DILocation(line: 71, column: 7, scope: !2241)
!2247 = !DILocation(line: 71, column: 7, scope: !2232)
!2248 = !DILocation(line: 73, column: 36, scope: !2240)
!2249 = !DILocation(line: 73, column: 46, scope: !2240)
!2250 = !DILocation(line: 73, column: 21, scope: !2240)
!2251 = !DILocation(line: 0, scope: !2240)
!2252 = !DILocation(line: 74, column: 15, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2240, file: !430, line: 74, column: 11)
!2254 = !DILocation(line: 74, column: 11, scope: !2240)
!2255 = !DILocation(line: 76, column: 28, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2253, file: !430, line: 75, column: 9)
!2257 = !DILocation(line: 76, column: 18, scope: !2256)
!2258 = !DILocation(line: 76, column: 16, scope: !2256)
!2259 = !DILocation(line: 77, column: 11, scope: !2256)
!2260 = !DILocation(line: 80, column: 12, scope: !2240)
!2261 = !DILocation(line: 81, column: 11, scope: !2240)
!2262 = !DILocation(line: 81, column: 19, scope: !2240)
!2263 = !{!2206, !1213, i64 8}
!2264 = !DILocation(line: 82, column: 18, scope: !2240)
!2265 = !{!2206, !1123, i64 16}
!2266 = !DILocation(line: 82, column: 7, scope: !2240)
!2267 = !DILocation(line: 86, column: 17, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !430, line: 86, column: 11)
!2269 = distinct !DILexicalBlock(scope: !2241, file: !430, line: 85, column: 5)
!2270 = !DILocation(line: 86, column: 11, scope: !2268)
!2271 = !DILocation(line: 86, column: 20, scope: !2268)
!2272 = !DILocation(line: 86, column: 11, scope: !2269)
!2273 = !DILocation(line: 88, column: 16, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2268, file: !430, line: 87, column: 9)
!2275 = !DILocation(line: 89, column: 11, scope: !2274)
!2276 = !DILocation(line: 93, column: 16, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2268, file: !430, line: 92, column: 9)
!2278 = !DILocation(line: 94, column: 25, scope: !2277)
!2279 = !DILocation(line: 94, column: 18, scope: !2277)
!2280 = !DILocation(line: 94, column: 11, scope: !2277)
!2281 = !DILocation(line: 0, scope: !2241)
!2282 = !DILocation(line: 97, column: 1, scope: !2232)
!2283 = !DISubprogram(name: "getdelim", scope: !1194, file: !1194, line: 611, type: !2284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!103, !67, !2286, !58, !2174}
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!2287 = !DISubprogram(name: "feof", scope: !1194, file: !1194, line: 764, type: !2288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!58, !2174}
!2290 = distinct !DISubprogram(name: "argv_iter_n_args", scope: !430, file: !430, line: 100, type: !2291, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !2295)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!55, !2293}
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2153)
!2295 = !{!2296}
!2296 = !DILocalVariable(name: "ai", arg: 1, scope: !2290, file: !430, line: 100, type: !2293)
!2297 = !DILocation(line: 0, scope: !2290)
!2298 = !DILocation(line: 102, column: 14, scope: !2290)
!2299 = !DILocation(line: 102, column: 10, scope: !2290)
!2300 = !DILocation(line: 102, column: 23, scope: !2290)
!2301 = !DILocation(line: 102, column: 38, scope: !2290)
!2302 = !DILocation(line: 102, column: 46, scope: !2290)
!2303 = !DILocation(line: 102, column: 40, scope: !2290)
!2304 = !DILocation(line: 102, column: 3, scope: !2290)
!2305 = distinct !DISubprogram(name: "argv_iter_free", scope: !430, file: !430, line: 106, type: !2306, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !2308)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !2152}
!2308 = !{!2309}
!2309 = !DILocalVariable(name: "ai", arg: 1, scope: !2305, file: !430, line: 106, type: !2152)
!2310 = !DILocation(line: 0, scope: !2305)
!2311 = !DILocation(line: 108, column: 11, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2305, file: !430, line: 108, column: 7)
!2313 = !DILocation(line: 108, column: 7, scope: !2312)
!2314 = !DILocation(line: 108, column: 7, scope: !2305)
!2315 = !DILocation(line: 109, column: 15, scope: !2312)
!2316 = !DILocation(line: 109, column: 5, scope: !2312)
!2317 = !DILocation(line: 110, column: 9, scope: !2305)
!2318 = !DILocation(line: 110, column: 3, scope: !2305)
!2319 = !DILocation(line: 111, column: 1, scope: !2305)
!2320 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !336, file: !336, line: 51, type: !1139, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !2321)
!2321 = !{!2322}
!2322 = !DILocalVariable(name: "file", arg: 1, scope: !2320, file: !336, line: 51, type: !293)
!2323 = !DILocation(line: 0, scope: !2320)
!2324 = !DILocation(line: 53, column: 13, scope: !2320)
!2325 = !DILocation(line: 54, column: 1, scope: !2320)
!2326 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !336, file: !336, line: 88, type: !2327, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !2329)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{null, !72}
!2329 = !{!2330}
!2330 = !DILocalVariable(name: "ignore", arg: 1, scope: !2326, file: !336, line: 88, type: !72)
!2331 = !DILocation(line: 0, scope: !2326)
!2332 = !DILocation(line: 90, column: 16, scope: !2326)
!2333 = !DILocation(line: 91, column: 1, scope: !2326)
!2334 = distinct !DISubprogram(name: "close_stdout", scope: !336, file: !336, line: 117, type: !427, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !2335)
!2335 = !{!2336}
!2336 = !DILocalVariable(name: "write_error", scope: !2337, file: !336, line: 122, type: !293)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !336, line: 121, column: 5)
!2338 = distinct !DILexicalBlock(scope: !2334, file: !336, line: 119, column: 7)
!2339 = !DILocation(line: 119, column: 21, scope: !2338)
!2340 = !DILocation(line: 119, column: 7, scope: !2338)
!2341 = !DILocation(line: 119, column: 29, scope: !2338)
!2342 = !DILocation(line: 120, column: 7, scope: !2338)
!2343 = !DILocation(line: 120, column: 12, scope: !2338)
!2344 = !DILocation(line: 120, column: 25, scope: !2338)
!2345 = !DILocation(line: 120, column: 28, scope: !2338)
!2346 = !DILocation(line: 120, column: 34, scope: !2338)
!2347 = !DILocation(line: 119, column: 7, scope: !2334)
!2348 = !DILocation(line: 122, column: 33, scope: !2337)
!2349 = !DILocation(line: 0, scope: !2337)
!2350 = !DILocation(line: 123, column: 11, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2337, file: !336, line: 123, column: 11)
!2352 = !DILocation(line: 0, scope: !2351)
!2353 = !DILocation(line: 123, column: 11, scope: !2337)
!2354 = !DILocation(line: 124, column: 36, scope: !2351)
!2355 = !DILocation(line: 124, column: 9, scope: !2351)
!2356 = !DILocation(line: 127, column: 9, scope: !2351)
!2357 = !DILocation(line: 129, column: 14, scope: !2337)
!2358 = !DILocation(line: 129, column: 7, scope: !2337)
!2359 = !DILocation(line: 134, column: 42, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2334, file: !336, line: 134, column: 7)
!2361 = !DILocation(line: 134, column: 28, scope: !2360)
!2362 = !DILocation(line: 134, column: 50, scope: !2360)
!2363 = !DILocation(line: 134, column: 7, scope: !2334)
!2364 = !DILocation(line: 135, column: 12, scope: !2360)
!2365 = !DILocation(line: 135, column: 5, scope: !2360)
!2366 = !DILocation(line: 136, column: 1, scope: !2334)
!2367 = distinct !DISubprogram(name: "fdadvise", scope: !434, file: !434, line: 31, type: !2368, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !433, retainedNodes: !2371)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{null, !58, !1635, !1635, !2370}
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !28, line: 52, baseType: !27)
!2371 = !{!2372, !2373, !2374, !2375, !2376}
!2372 = !DILocalVariable(name: "fd", arg: 1, scope: !2367, file: !434, line: 31, type: !58)
!2373 = !DILocalVariable(name: "offset", arg: 2, scope: !2367, file: !434, line: 31, type: !1635)
!2374 = !DILocalVariable(name: "len", arg: 3, scope: !2367, file: !434, line: 31, type: !1635)
!2375 = !DILocalVariable(name: "advice", arg: 4, scope: !2367, file: !434, line: 31, type: !2370)
!2376 = !DILocalVariable(name: "__x", scope: !2377, file: !434, line: 34, type: !58)
!2377 = distinct !DILexicalBlock(scope: !2367, file: !434, line: 34, column: 3)
!2378 = !DILocation(line: 0, scope: !2367)
!2379 = !DILocation(line: 34, column: 3, scope: !2377)
!2380 = !DILocation(line: 0, scope: !2377)
!2381 = !DILocation(line: 36, column: 1, scope: !2367)
!2382 = !DISubprogram(name: "posix_fadvise", scope: !2081, file: !2081, line: 288, type: !2383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!58, !58, !103, !103, !58}
!2385 = distinct !DISubprogram(name: "fadvise", scope: !434, file: !434, line: 39, type: !2386, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !433, retainedNodes: !2422)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{null, !2388, !2370}
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !2390)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !2391)
!2391 = !{!2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2390, file: !193, line: 51, baseType: !58, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2390, file: !193, line: 54, baseType: !53, size: 64, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2390, file: !193, line: 55, baseType: !53, size: 64, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2390, file: !193, line: 56, baseType: !53, size: 64, offset: 192)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2390, file: !193, line: 57, baseType: !53, size: 64, offset: 256)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2390, file: !193, line: 58, baseType: !53, size: 64, offset: 320)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2390, file: !193, line: 59, baseType: !53, size: 64, offset: 384)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2390, file: !193, line: 60, baseType: !53, size: 64, offset: 448)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2390, file: !193, line: 61, baseType: !53, size: 64, offset: 512)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2390, file: !193, line: 64, baseType: !53, size: 64, offset: 576)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2390, file: !193, line: 65, baseType: !53, size: 64, offset: 640)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2390, file: !193, line: 66, baseType: !53, size: 64, offset: 704)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2390, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2390, file: !193, line: 70, baseType: !2406, size: 64, offset: 832)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2390, file: !193, line: 72, baseType: !58, size: 32, offset: 896)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2390, file: !193, line: 73, baseType: !58, size: 32, offset: 928)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2390, file: !193, line: 74, baseType: !102, size: 64, offset: 960)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2390, file: !193, line: 77, baseType: !59, size: 16, offset: 1024)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2390, file: !193, line: 78, baseType: !217, size: 8, offset: 1040)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2390, file: !193, line: 79, baseType: !219, size: 8, offset: 1048)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2390, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2390, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2390, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2390, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2390, file: !193, line: 93, baseType: !2406, size: 64, offset: 1344)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2390, file: !193, line: 94, baseType: !52, size: 64, offset: 1408)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2390, file: !193, line: 95, baseType: !55, size: 64, offset: 1472)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2390, file: !193, line: 96, baseType: !58, size: 32, offset: 1536)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2390, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!2422 = !{!2423, !2424}
!2423 = !DILocalVariable(name: "fp", arg: 1, scope: !2385, file: !434, line: 39, type: !2388)
!2424 = !DILocalVariable(name: "advice", arg: 2, scope: !2385, file: !434, line: 39, type: !2370)
!2425 = !DILocation(line: 0, scope: !2385)
!2426 = !DILocation(line: 41, column: 7, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2385, file: !434, line: 41, column: 7)
!2428 = !DILocation(line: 41, column: 7, scope: !2385)
!2429 = !DILocation(line: 42, column: 15, scope: !2427)
!2430 = !DILocation(line: 0, scope: !2367, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 42, column: 5, scope: !2427)
!2432 = !DILocation(line: 34, column: 3, scope: !2377, inlinedAt: !2431)
!2433 = !DILocation(line: 0, scope: !2377, inlinedAt: !2431)
!2434 = !DILocation(line: 42, column: 5, scope: !2427)
!2435 = !DILocation(line: 43, column: 1, scope: !2385)
!2436 = distinct !DISubprogram(name: "umaxtostr", scope: !2437, file: !2437, line: 36, type: !2438, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !436, retainedNodes: !2440)
!2437 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!53, !258, !53}
!2440 = !{!2441, !2442, !2443}
!2441 = !DILocalVariable(name: "i", arg: 1, scope: !2436, file: !2437, line: 36, type: !258)
!2442 = !DILocalVariable(name: "buf", arg: 2, scope: !2436, file: !2437, line: 36, type: !53)
!2443 = !DILocalVariable(name: "p", scope: !2436, file: !2437, line: 38, type: !53)
!2444 = !DILocation(line: 0, scope: !2436)
!2445 = !DILocation(line: 38, column: 17, scope: !2436)
!2446 = !DILocation(line: 39, column: 6, scope: !2436)
!2447 = !DILocation(line: 52, column: 24, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !2437, line: 50, column: 5)
!2449 = distinct !DILexicalBlock(scope: !2436, file: !2437, line: 41, column: 7)
!2450 = !DILocation(line: 52, column: 16, scope: !2448)
!2451 = !DILocation(line: 52, column: 10, scope: !2448)
!2452 = !DILocation(line: 52, column: 14, scope: !2448)
!2453 = !DILocation(line: 53, column: 17, scope: !2448)
!2454 = !DILocation(line: 53, column: 24, scope: !2448)
!2455 = !DILocation(line: 52, column: 9, scope: !2448)
!2456 = distinct !{!2456, !2457, !2458, !1169}
!2457 = !DILocation(line: 51, column: 7, scope: !2448)
!2458 = !DILocation(line: 53, column: 28, scope: !2448)
!2459 = !DILocation(line: 56, column: 3, scope: !2436)
!2460 = distinct !DISubprogram(name: "mb_width_aux", scope: !1875, file: !1875, line: 247, type: !1948, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !348, retainedNodes: !2461)
!2461 = !{!2462, !2463}
!2462 = !DILocalVariable(name: "wc", arg: 1, scope: !2460, file: !1875, line: 247, type: !1950)
!2463 = !DILocalVariable(name: "w", scope: !2460, file: !1875, line: 249, type: !58)
!2464 = !DILocation(line: 0, scope: !2460)
!2465 = !DILocation(line: 249, column: 11, scope: !2460)
!2466 = !DILocation(line: 252, column: 13, scope: !2460)
!2467 = !DILocation(line: 252, column: 11, scope: !2460)
!2468 = !DILocation(line: 252, column: 24, scope: !2460)
!2469 = !DILocation(line: 252, column: 3, scope: !2460)
!2470 = !DISubprogram(name: "iswcntrl", scope: !2144, file: !2144, line: 104, type: !2145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!2471 = distinct !DISubprogram(name: "mb_copy", scope: !1875, file: !1875, line: 268, type: !2472, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !348, retainedNodes: !2488)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{null, !2474, !2486}
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbchar_t", file: !1875, line: 181, baseType: !2476)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbchar", file: !1875, line: 169, size: 384, elements: !2477)
!2477 = !{!2478, !2479, !2480, !2481, !2482}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2476, file: !1875, line: 171, baseType: !293, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2476, file: !1875, line: 172, baseType: !55, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "wc_valid", scope: !2476, file: !1875, line: 173, baseType: !72, size: 8, offset: 128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "wc", scope: !2476, file: !1875, line: 174, baseType: !1699, size: 32, offset: 160)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2476, file: !1875, line: 175, baseType: !2483, size: 192, offset: 192)
!2483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 192, elements: !2484)
!2484 = !{!2485}
!2485 = !DISubrange(count: 24)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2475)
!2488 = !{!2489, !2490}
!2489 = !DILocalVariable(name: "new_mbc", arg: 1, scope: !2471, file: !1875, line: 268, type: !2474)
!2490 = !DILocalVariable(name: "old_mbc", arg: 2, scope: !2471, file: !1875, line: 268, type: !2486)
!2491 = !DILocation(line: 0, scope: !2471)
!2492 = !DILocation(line: 270, column: 16, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2471, file: !1875, line: 270, column: 7)
!2494 = !{!2495, !1123, i64 0}
!2495 = !{!"mbchar", !1123, i64 0, !1213, i64 8, !1220, i64 16, !1269, i64 20, !1124, i64 24}
!2496 = !DILocation(line: 270, column: 24, scope: !2493)
!2497 = !DILocation(line: 270, column: 20, scope: !2493)
!2498 = !DILocation(line: 270, column: 7, scope: !2471)
!2499 = !DILocation(line: 272, column: 16, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2493, file: !1875, line: 271, column: 5)
!2501 = !DILocation(line: 272, column: 60, scope: !2500)
!2502 = !{!2495, !1213, i64 8}
!2503 = !DILocalVariable(name: "__dest", arg: 1, scope: !2504, file: !1983, line: 26, type: !2507)
!2504 = distinct !DISubprogram(name: "memcpy", scope: !1983, file: !1983, line: 26, type: !2505, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !348, retainedNodes: !2509)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!52, !2507, !2508, !55}
!2507 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!2508 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !666)
!2509 = !{!2503, !2510, !2511}
!2510 = !DILocalVariable(name: "__src", arg: 2, scope: !2504, file: !1983, line: 26, type: !2508)
!2511 = !DILocalVariable(name: "__len", arg: 3, scope: !2504, file: !1983, line: 26, type: !55)
!2512 = !DILocation(line: 0, scope: !2504, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 272, column: 7, scope: !2500)
!2514 = !DILocation(line: 29, column: 10, scope: !2504, inlinedAt: !2513)
!2515 = !DILocation(line: 274, column: 5, scope: !2500)
!2516 = !DILocation(line: 0, scope: !2493)
!2517 = !DILocation(line: 273, column: 16, scope: !2500)
!2518 = !DILocation(line: 273, column: 20, scope: !2500)
!2519 = !DILocation(line: 277, column: 29, scope: !2471)
!2520 = !DILocation(line: 277, column: 12, scope: !2471)
!2521 = !DILocation(line: 277, column: 18, scope: !2471)
!2522 = !DILocation(line: 278, column: 37, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2471, file: !1875, line: 278, column: 7)
!2524 = !{!2495, !1220, i64 16}
!2525 = !DILocation(line: 278, column: 17, scope: !2523)
!2526 = !DILocation(line: 278, column: 26, scope: !2523)
!2527 = !DILocation(line: 278, column: 7, scope: !2471)
!2528 = !DILocation(line: 279, column: 28, scope: !2523)
!2529 = !{!2495, !1269, i64 20}
!2530 = !DILocation(line: 279, column: 14, scope: !2523)
!2531 = !DILocation(line: 279, column: 17, scope: !2523)
!2532 = !DILocation(line: 279, column: 5, scope: !2523)
!2533 = !DILocation(line: 280, column: 1, scope: !2471)
!2534 = distinct !DISubprogram(name: "is_basic", scope: !1875, file: !1875, line: 316, type: !1876, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !348, retainedNodes: !2535)
!2535 = !{!2536}
!2536 = !DILocalVariable(name: "c", arg: 1, scope: !2534, file: !1875, line: 316, type: !54)
!2537 = !DILocation(line: 0, scope: !2534)
!2538 = !DILocation(line: 318, column: 27, scope: !2534)
!2539 = !DILocation(line: 318, column: 45, scope: !2534)
!2540 = !DILocation(line: 318, column: 11, scope: !2534)
!2541 = !DILocation(line: 318, column: 73, scope: !2534)
!2542 = !DILocation(line: 318, column: 10, scope: !2534)
!2543 = !DILocation(line: 318, column: 3, scope: !2534)
!2544 = distinct !DISubprogram(name: "physmem_total", scope: !440, file: !440, line: 92, type: !2545, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !2546)
!2545 = !DISubroutineType(types: !660)
!2546 = !{!2547, !2549, !2550}
!2547 = !DILocalVariable(name: "pages", scope: !2548, file: !440, line: 96, type: !661)
!2548 = distinct !DILexicalBlock(scope: !2544, file: !440, line: 95, column: 3)
!2549 = !DILocalVariable(name: "pagesize", scope: !2548, file: !440, line: 97, type: !661)
!2550 = !DILocalVariable(name: "si", scope: !2551, file: !440, line: 105, type: !2552)
!2551 = distinct !DILexicalBlock(scope: !2544, file: !440, line: 104, column: 3)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysinfo", file: !2553, line: 8, size: 896, elements: !2554)
!2553 = !DIFile(filename: "/usr/include/linux/sysinfo.h", directory: "")
!2554 = !{!2555, !2558, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2570, !2571, !2572, !2573, !2575}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "uptime", scope: !2552, file: !2553, line: 9, baseType: !2556, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !2557, line: 15, baseType: !103)
!2557 = !DIFile(filename: "/usr/include/asm-generic/posix_types.h", directory: "")
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "loads", scope: !2552, file: !2553, line: 10, baseType: !2559, size: 192, offset: 64)
!2559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2560, size: 192, elements: !120)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !2557, line: 16, baseType: !57)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "totalram", scope: !2552, file: !2553, line: 11, baseType: !2560, size: 64, offset: 256)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "freeram", scope: !2552, file: !2553, line: 12, baseType: !2560, size: 64, offset: 320)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "sharedram", scope: !2552, file: !2553, line: 13, baseType: !2560, size: 64, offset: 384)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "bufferram", scope: !2552, file: !2553, line: 14, baseType: !2560, size: 64, offset: 448)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "totalswap", scope: !2552, file: !2553, line: 15, baseType: !2560, size: 64, offset: 512)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "freeswap", scope: !2552, file: !2553, line: 16, baseType: !2560, size: 64, offset: 576)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !2552, file: !2553, line: 17, baseType: !2568, size: 16, offset: 640)
!2568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !2569, line: 24, baseType: !59)
!2569 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "")
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !2552, file: !2553, line: 18, baseType: !2568, size: 16, offset: 656)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "totalhigh", scope: !2552, file: !2553, line: 19, baseType: !2560, size: 64, offset: 704)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "freehigh", scope: !2552, file: !2553, line: 20, baseType: !2560, size: 64, offset: 768)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "mem_unit", scope: !2552, file: !2553, line: 21, baseType: !2574, size: 32, offset: 832)
!2574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !2569, line: 27, baseType: !7)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_f", scope: !2552, file: !2553, line: 22, baseType: !2576, offset: 864)
!2576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, elements: !2577)
!2577 = !{!2578}
!2578 = !DISubrange(count: 0)
!2579 = !DILocation(line: 96, column: 20, scope: !2548)
!2580 = !DILocation(line: 0, scope: !2548)
!2581 = !DILocation(line: 97, column: 23, scope: !2548)
!2582 = !DILocation(line: 98, column: 20, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2548, file: !440, line: 98, column: 9)
!2584 = !DILocation(line: 105, column: 5, scope: !2551)
!2585 = !DILocation(line: 105, column: 20, scope: !2551)
!2586 = !DILocation(line: 106, column: 9, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2551, file: !440, line: 106, column: 9)
!2588 = !DILocation(line: 106, column: 22, scope: !2587)
!2589 = !DILocation(line: 106, column: 9, scope: !2551)
!2590 = !DILocation(line: 107, column: 26, scope: !2587)
!2591 = !{!2592, !1213, i64 32}
!2592 = !{!"sysinfo", !1213, i64 0, !1124, i64 8, !1213, i64 32, !1213, i64 40, !1213, i64 48, !1213, i64 56, !1213, i64 64, !1213, i64 72, !1963, i64 80, !1963, i64 82, !1213, i64 88, !1213, i64 96, !1269, i64 104, !1124, i64 108}
!2593 = !DILocation(line: 107, column: 14, scope: !2587)
!2594 = !DILocation(line: 107, column: 40, scope: !2587)
!2595 = !{!2592, !1269, i64 104}
!2596 = !DILocation(line: 107, column: 37, scope: !2587)
!2597 = !DILocation(line: 107, column: 35, scope: !2587)
!2598 = !DILocation(line: 107, column: 7, scope: !2587)
!2599 = !DILocation(line: 0, scope: !2544)
!2600 = !DILocation(line: 108, column: 3, scope: !2544)
!2601 = !DILocation(line: 200, column: 1, scope: !2544)
!2602 = !DISubprogram(name: "sysconf", scope: !1606, file: !1606, line: 630, type: !2603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!103, !58}
!2605 = !DISubprogram(name: "sysinfo", scope: !2606, file: !2606, line: 29, type: !2607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!2606 = !DIFile(filename: "/usr/include/sys/sysinfo.h", directory: "")
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!58, !2609}
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2610 = distinct !DISubprogram(name: "physmem_available", scope: !440, file: !440, line: 204, type: !2545, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !2611)
!2611 = !{!2612, !2614, !2615}
!2612 = !DILocalVariable(name: "pages", scope: !2613, file: !440, line: 208, type: !661)
!2613 = distinct !DILexicalBlock(scope: !2610, file: !440, line: 207, column: 3)
!2614 = !DILocalVariable(name: "pagesize", scope: !2613, file: !440, line: 209, type: !661)
!2615 = !DILocalVariable(name: "si", scope: !2616, file: !440, line: 217, type: !2552)
!2616 = distinct !DILexicalBlock(scope: !2610, file: !440, line: 216, column: 3)
!2617 = !DILocation(line: 208, column: 20, scope: !2613)
!2618 = !DILocation(line: 0, scope: !2613)
!2619 = !DILocation(line: 209, column: 23, scope: !2613)
!2620 = !DILocation(line: 210, column: 20, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2613, file: !440, line: 210, column: 9)
!2622 = !DILocation(line: 217, column: 5, scope: !2616)
!2623 = !DILocation(line: 217, column: 20, scope: !2616)
!2624 = !DILocation(line: 218, column: 9, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2616, file: !440, line: 218, column: 9)
!2626 = !DILocation(line: 218, column: 22, scope: !2625)
!2627 = !DILocation(line: 218, column: 9, scope: !2616)
!2628 = !DILocation(line: 219, column: 27, scope: !2625)
!2629 = !{!2592, !1213, i64 40}
!2630 = !DILocation(line: 219, column: 15, scope: !2625)
!2631 = !DILocation(line: 219, column: 40, scope: !2625)
!2632 = !{!2592, !1213, i64 56}
!2633 = !DILocation(line: 219, column: 37, scope: !2625)
!2634 = !DILocation(line: 219, column: 35, scope: !2625)
!2635 = !DILocation(line: 219, column: 56, scope: !2625)
!2636 = !DILocation(line: 219, column: 53, scope: !2625)
!2637 = !DILocation(line: 219, column: 51, scope: !2625)
!2638 = !DILocation(line: 220, column: 3, scope: !2610)
!2639 = !DILocation(line: 96, column: 20, scope: !2548, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 308, column: 10, scope: !2610)
!2641 = !DILocation(line: 0, scope: !2548, inlinedAt: !2640)
!2642 = !DILocation(line: 97, column: 23, scope: !2548, inlinedAt: !2640)
!2643 = !DILocation(line: 98, column: 20, scope: !2583, inlinedAt: !2640)
!2644 = !DILocation(line: 105, column: 5, scope: !2551, inlinedAt: !2640)
!2645 = !DILocation(line: 105, column: 20, scope: !2551, inlinedAt: !2640)
!2646 = !DILocation(line: 106, column: 9, scope: !2587, inlinedAt: !2640)
!2647 = !DILocation(line: 106, column: 22, scope: !2587, inlinedAt: !2640)
!2648 = !DILocation(line: 106, column: 9, scope: !2551, inlinedAt: !2640)
!2649 = !DILocation(line: 107, column: 26, scope: !2587, inlinedAt: !2640)
!2650 = !DILocation(line: 107, column: 14, scope: !2587, inlinedAt: !2640)
!2651 = !DILocation(line: 107, column: 40, scope: !2587, inlinedAt: !2640)
!2652 = !DILocation(line: 107, column: 37, scope: !2587, inlinedAt: !2640)
!2653 = !DILocation(line: 107, column: 35, scope: !2587, inlinedAt: !2640)
!2654 = !DILocation(line: 107, column: 7, scope: !2587, inlinedAt: !2640)
!2655 = !DILocation(line: 0, scope: !2544, inlinedAt: !2640)
!2656 = !DILocation(line: 108, column: 3, scope: !2544, inlinedAt: !2640)
!2657 = !DILocation(line: 200, column: 1, scope: !2544, inlinedAt: !2640)
!2658 = !DILocation(line: 308, column: 27, scope: !2610)
!2659 = !DILocation(line: 308, column: 3, scope: !2610)
!2660 = !DILocation(line: 0, scope: !2610)
!2661 = !DILocation(line: 309, column: 1, scope: !2610)
!2662 = distinct !DISubprogram(name: "set_program_name", scope: !359, file: !359, line: 39, type: !1139, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !358, retainedNodes: !2663)
!2663 = !{!2664, !2665, !2666}
!2664 = !DILocalVariable(name: "argv0", arg: 1, scope: !2662, file: !359, line: 39, type: !293)
!2665 = !DILocalVariable(name: "slash", scope: !2662, file: !359, line: 46, type: !293)
!2666 = !DILocalVariable(name: "base", scope: !2662, file: !359, line: 47, type: !293)
!2667 = !DILocation(line: 0, scope: !2662)
!2668 = !DILocation(line: 51, column: 13, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2662, file: !359, line: 51, column: 7)
!2670 = !DILocation(line: 51, column: 7, scope: !2662)
!2671 = !DILocation(line: 55, column: 14, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2669, file: !359, line: 52, column: 5)
!2673 = !DILocation(line: 54, column: 7, scope: !2672)
!2674 = !DILocation(line: 56, column: 7, scope: !2672)
!2675 = !DILocation(line: 59, column: 11, scope: !2662)
!2676 = !DILocation(line: 60, column: 17, scope: !2662)
!2677 = !DILocation(line: 60, column: 11, scope: !2662)
!2678 = !DILocation(line: 61, column: 12, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2662, file: !359, line: 61, column: 7)
!2680 = !DILocation(line: 61, column: 20, scope: !2679)
!2681 = !DILocation(line: 61, column: 25, scope: !2679)
!2682 = !DILocation(line: 61, column: 42, scope: !2679)
!2683 = !DILocation(line: 61, column: 28, scope: !2679)
!2684 = !DILocation(line: 61, column: 61, scope: !2679)
!2685 = !DILocation(line: 61, column: 7, scope: !2662)
!2686 = !DILocation(line: 64, column: 11, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !359, line: 64, column: 11)
!2688 = distinct !DILexicalBlock(scope: !2679, file: !359, line: 62, column: 5)
!2689 = !DILocation(line: 64, column: 36, scope: !2687)
!2690 = !DILocation(line: 64, column: 11, scope: !2688)
!2691 = !DILocation(line: 66, column: 24, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2687, file: !359, line: 65, column: 9)
!2693 = !DILocation(line: 70, column: 41, scope: !2692)
!2694 = !DILocation(line: 72, column: 9, scope: !2692)
!2695 = !DILocation(line: 84, column: 16, scope: !2662)
!2696 = !DILocation(line: 90, column: 27, scope: !2662)
!2697 = !DILocation(line: 92, column: 1, scope: !2662)
!2698 = distinct !DISubprogram(name: "clone_quoting_options", scope: !365, file: !365, line: 122, type: !2699, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2702)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!2701, !2701}
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!2702 = !{!2703, !2704, !2705}
!2703 = !DILocalVariable(name: "o", arg: 1, scope: !2698, file: !365, line: 122, type: !2701)
!2704 = !DILocalVariable(name: "e", scope: !2698, file: !365, line: 124, type: !58)
!2705 = !DILocalVariable(name: "p", scope: !2698, file: !365, line: 125, type: !2701)
!2706 = !DILocation(line: 0, scope: !2698)
!2707 = !DILocation(line: 124, column: 11, scope: !2698)
!2708 = !DILocation(line: 125, column: 40, scope: !2698)
!2709 = !DILocation(line: 125, column: 31, scope: !2698)
!2710 = !DILocation(line: 127, column: 9, scope: !2698)
!2711 = !DILocation(line: 128, column: 3, scope: !2698)
!2712 = distinct !DISubprogram(name: "get_quoting_style", scope: !365, file: !365, line: 133, type: !2713, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2717)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!5, !2715}
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!2717 = !{!2718}
!2718 = !DILocalVariable(name: "o", arg: 1, scope: !2712, file: !365, line: 133, type: !2715)
!2719 = !DILocation(line: 0, scope: !2712)
!2720 = !DILocation(line: 135, column: 11, scope: !2712)
!2721 = !DILocation(line: 135, column: 46, scope: !2712)
!2722 = !{!2723, !1124, i64 0}
!2723 = !{!"quoting_options", !1124, i64 0, !1269, i64 4, !1124, i64 8, !1123, i64 40, !1123, i64 48}
!2724 = !DILocation(line: 135, column: 3, scope: !2712)
!2725 = distinct !DISubprogram(name: "set_quoting_style", scope: !365, file: !365, line: 141, type: !2726, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2728)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{null, !2701, !5}
!2728 = !{!2729, !2730}
!2729 = !DILocalVariable(name: "o", arg: 1, scope: !2725, file: !365, line: 141, type: !2701)
!2730 = !DILocalVariable(name: "s", arg: 2, scope: !2725, file: !365, line: 141, type: !5)
!2731 = !DILocation(line: 0, scope: !2725)
!2732 = !DILocation(line: 143, column: 4, scope: !2725)
!2733 = !DILocation(line: 143, column: 39, scope: !2725)
!2734 = !DILocation(line: 143, column: 45, scope: !2725)
!2735 = !DILocation(line: 144, column: 1, scope: !2725)
!2736 = distinct !DISubprogram(name: "set_char_quoting", scope: !365, file: !365, line: 152, type: !2737, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2739)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!58, !2701, !54, !58}
!2739 = !{!2740, !2741, !2742, !2743, !2744, !2746, !2747}
!2740 = !DILocalVariable(name: "o", arg: 1, scope: !2736, file: !365, line: 152, type: !2701)
!2741 = !DILocalVariable(name: "c", arg: 2, scope: !2736, file: !365, line: 152, type: !54)
!2742 = !DILocalVariable(name: "i", arg: 3, scope: !2736, file: !365, line: 152, type: !58)
!2743 = !DILocalVariable(name: "uc", scope: !2736, file: !365, line: 154, type: !60)
!2744 = !DILocalVariable(name: "p", scope: !2736, file: !365, line: 155, type: !2745)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2746 = !DILocalVariable(name: "shift", scope: !2736, file: !365, line: 157, type: !58)
!2747 = !DILocalVariable(name: "r", scope: !2736, file: !365, line: 158, type: !58)
!2748 = !DILocation(line: 0, scope: !2736)
!2749 = !DILocation(line: 156, column: 6, scope: !2736)
!2750 = !DILocation(line: 156, column: 62, scope: !2736)
!2751 = !DILocation(line: 156, column: 57, scope: !2736)
!2752 = !DILocation(line: 157, column: 15, scope: !2736)
!2753 = !DILocation(line: 158, column: 12, scope: !2736)
!2754 = !DILocation(line: 158, column: 15, scope: !2736)
!2755 = !DILocation(line: 158, column: 25, scope: !2736)
!2756 = !DILocation(line: 159, column: 13, scope: !2736)
!2757 = !DILocation(line: 159, column: 18, scope: !2736)
!2758 = !DILocation(line: 159, column: 23, scope: !2736)
!2759 = !DILocation(line: 159, column: 6, scope: !2736)
!2760 = !DILocation(line: 160, column: 3, scope: !2736)
!2761 = distinct !DISubprogram(name: "set_quoting_flags", scope: !365, file: !365, line: 168, type: !2762, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2764)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!58, !2701, !58}
!2764 = !{!2765, !2766, !2767}
!2765 = !DILocalVariable(name: "o", arg: 1, scope: !2761, file: !365, line: 168, type: !2701)
!2766 = !DILocalVariable(name: "i", arg: 2, scope: !2761, file: !365, line: 168, type: !58)
!2767 = !DILocalVariable(name: "r", scope: !2761, file: !365, line: 170, type: !58)
!2768 = !DILocation(line: 0, scope: !2761)
!2769 = !DILocation(line: 171, column: 8, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2761, file: !365, line: 171, column: 7)
!2771 = !DILocation(line: 171, column: 7, scope: !2761)
!2772 = !DILocation(line: 173, column: 10, scope: !2761)
!2773 = !{!2723, !1269, i64 4}
!2774 = !DILocation(line: 174, column: 12, scope: !2761)
!2775 = !DILocation(line: 175, column: 3, scope: !2761)
!2776 = distinct !DISubprogram(name: "set_custom_quoting", scope: !365, file: !365, line: 179, type: !2777, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2779)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{null, !2701, !293, !293}
!2779 = !{!2780, !2781, !2782}
!2780 = !DILocalVariable(name: "o", arg: 1, scope: !2776, file: !365, line: 179, type: !2701)
!2781 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2776, file: !365, line: 180, type: !293)
!2782 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2776, file: !365, line: 180, type: !293)
!2783 = !DILocation(line: 0, scope: !2776)
!2784 = !DILocation(line: 182, column: 8, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2776, file: !365, line: 182, column: 7)
!2786 = !DILocation(line: 182, column: 7, scope: !2776)
!2787 = !DILocation(line: 184, column: 6, scope: !2776)
!2788 = !DILocation(line: 184, column: 12, scope: !2776)
!2789 = !DILocation(line: 185, column: 8, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2776, file: !365, line: 185, column: 7)
!2791 = !DILocation(line: 185, column: 19, scope: !2790)
!2792 = !DILocation(line: 186, column: 5, scope: !2790)
!2793 = !DILocation(line: 187, column: 6, scope: !2776)
!2794 = !DILocation(line: 187, column: 17, scope: !2776)
!2795 = !{!2723, !1123, i64 40}
!2796 = !DILocation(line: 188, column: 6, scope: !2776)
!2797 = !DILocation(line: 188, column: 18, scope: !2776)
!2798 = !{!2723, !1123, i64 48}
!2799 = !DILocation(line: 189, column: 1, scope: !2776)
!2800 = distinct !DISubprogram(name: "quotearg_buffer", scope: !365, file: !365, line: 784, type: !2801, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2803)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!55, !53, !55, !293, !55, !2715}
!2803 = !{!2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811}
!2804 = !DILocalVariable(name: "buffer", arg: 1, scope: !2800, file: !365, line: 784, type: !53)
!2805 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2800, file: !365, line: 784, type: !55)
!2806 = !DILocalVariable(name: "arg", arg: 3, scope: !2800, file: !365, line: 785, type: !293)
!2807 = !DILocalVariable(name: "argsize", arg: 4, scope: !2800, file: !365, line: 785, type: !55)
!2808 = !DILocalVariable(name: "o", arg: 5, scope: !2800, file: !365, line: 786, type: !2715)
!2809 = !DILocalVariable(name: "p", scope: !2800, file: !365, line: 788, type: !2715)
!2810 = !DILocalVariable(name: "e", scope: !2800, file: !365, line: 789, type: !58)
!2811 = !DILocalVariable(name: "r", scope: !2800, file: !365, line: 790, type: !55)
!2812 = !DILocation(line: 0, scope: !2800)
!2813 = !DILocation(line: 788, column: 37, scope: !2800)
!2814 = !DILocation(line: 789, column: 11, scope: !2800)
!2815 = !DILocation(line: 791, column: 43, scope: !2800)
!2816 = !DILocation(line: 791, column: 53, scope: !2800)
!2817 = !DILocation(line: 791, column: 60, scope: !2800)
!2818 = !DILocation(line: 792, column: 43, scope: !2800)
!2819 = !DILocation(line: 792, column: 58, scope: !2800)
!2820 = !DILocation(line: 790, column: 14, scope: !2800)
!2821 = !DILocation(line: 793, column: 9, scope: !2800)
!2822 = !DILocation(line: 794, column: 3, scope: !2800)
!2823 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !365, file: !365, line: 256, type: !2824, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !2827)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!55, !53, !55, !293, !55, !5, !58, !2826, !293, !293}
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!2827 = !{!2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2852, !2853, !2854, !2855, !2856, !2859, !2860, !2873, !2875, !2876, !2883, !2886, !2887, !2888, !2889, !2890, !2891}
!2828 = !DILocalVariable(name: "buffer", arg: 1, scope: !2823, file: !365, line: 256, type: !53)
!2829 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2823, file: !365, line: 256, type: !55)
!2830 = !DILocalVariable(name: "arg", arg: 3, scope: !2823, file: !365, line: 257, type: !293)
!2831 = !DILocalVariable(name: "argsize", arg: 4, scope: !2823, file: !365, line: 257, type: !55)
!2832 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2823, file: !365, line: 258, type: !5)
!2833 = !DILocalVariable(name: "flags", arg: 6, scope: !2823, file: !365, line: 258, type: !58)
!2834 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2823, file: !365, line: 259, type: !2826)
!2835 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2823, file: !365, line: 260, type: !293)
!2836 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2823, file: !365, line: 261, type: !293)
!2837 = !DILocalVariable(name: "i", scope: !2823, file: !365, line: 263, type: !55)
!2838 = !DILocalVariable(name: "len", scope: !2823, file: !365, line: 264, type: !55)
!2839 = !DILocalVariable(name: "orig_buffersize", scope: !2823, file: !365, line: 265, type: !55)
!2840 = !DILocalVariable(name: "quote_string", scope: !2823, file: !365, line: 266, type: !293)
!2841 = !DILocalVariable(name: "quote_string_len", scope: !2823, file: !365, line: 267, type: !55)
!2842 = !DILocalVariable(name: "backslash_escapes", scope: !2823, file: !365, line: 268, type: !72)
!2843 = !DILocalVariable(name: "unibyte_locale", scope: !2823, file: !365, line: 269, type: !72)
!2844 = !DILocalVariable(name: "elide_outer_quotes", scope: !2823, file: !365, line: 270, type: !72)
!2845 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2823, file: !365, line: 271, type: !72)
!2846 = !DILocalVariable(name: "encountered_single_quote", scope: !2823, file: !365, line: 272, type: !72)
!2847 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2823, file: !365, line: 273, type: !72)
!2848 = !DILocalVariable(name: "c", scope: !2849, file: !365, line: 402, type: !60)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !365, line: 401, column: 5)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !365, line: 400, column: 3)
!2851 = distinct !DILexicalBlock(scope: !2823, file: !365, line: 400, column: 3)
!2852 = !DILocalVariable(name: "esc", scope: !2849, file: !365, line: 403, type: !60)
!2853 = !DILocalVariable(name: "is_right_quote", scope: !2849, file: !365, line: 404, type: !72)
!2854 = !DILocalVariable(name: "escaping", scope: !2849, file: !365, line: 405, type: !72)
!2855 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2849, file: !365, line: 406, type: !72)
!2856 = !DILocalVariable(name: "m", scope: !2857, file: !365, line: 610, type: !55)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !365, line: 608, column: 11)
!2858 = distinct !DILexicalBlock(scope: !2849, file: !365, line: 426, column: 9)
!2859 = !DILocalVariable(name: "printable", scope: !2857, file: !365, line: 612, type: !72)
!2860 = !DILocalVariable(name: "mbstate", scope: !2861, file: !365, line: 621, type: !2863)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !365, line: 620, column: 15)
!2862 = distinct !DILexicalBlock(scope: !2857, file: !365, line: 614, column: 17)
!2863 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1678, line: 6, baseType: !2864)
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1680, line: 21, baseType: !2865)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1680, line: 13, size: 64, elements: !2866)
!2866 = !{!2867, !2868}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2865, file: !1680, line: 15, baseType: !58, size: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2865, file: !1680, line: 20, baseType: !2869, size: 32, offset: 32)
!2869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2865, file: !1680, line: 16, size: 32, elements: !2870)
!2870 = !{!2871, !2872}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2869, file: !1680, line: 18, baseType: !7, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2869, file: !1680, line: 19, baseType: !1689, size: 32)
!2873 = !DILocalVariable(name: "w", scope: !2874, file: !365, line: 631, type: !1699)
!2874 = distinct !DILexicalBlock(scope: !2861, file: !365, line: 630, column: 19)
!2875 = !DILocalVariable(name: "bytes", scope: !2874, file: !365, line: 632, type: !55)
!2876 = !DILocalVariable(name: "j", scope: !2877, file: !365, line: 657, type: !55)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !365, line: 656, column: 27)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !365, line: 654, column: 29)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !365, line: 649, column: 23)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !365, line: 641, column: 30)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !365, line: 636, column: 30)
!2882 = distinct !DILexicalBlock(scope: !2874, file: !365, line: 634, column: 25)
!2883 = !DILocalVariable(name: "ilim", scope: !2884, file: !365, line: 684, type: !55)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !365, line: 681, column: 15)
!2885 = distinct !DILexicalBlock(scope: !2857, file: !365, line: 680, column: 17)
!2886 = !DILabel(scope: !2823, name: "process_input", file: !365, line: 314)
!2887 = !DILabel(scope: !2858, name: "c_and_shell_escape", file: !365, line: 512)
!2888 = !DILabel(scope: !2858, name: "c_escape", file: !365, line: 517)
!2889 = !DILabel(scope: !2849, name: "store_escape", file: !365, line: 719)
!2890 = !DILabel(scope: !2849, name: "store_c", file: !365, line: 722)
!2891 = !DILabel(scope: !2823, name: "force_outer_quoting_style", file: !365, line: 763)
!2892 = !DILocation(line: 0, scope: !2823)
!2893 = !DILocation(line: 269, column: 25, scope: !2823)
!2894 = !DILocation(line: 269, column: 36, scope: !2823)
!2895 = !DILocation(line: 270, column: 8, scope: !2823)
!2896 = !DILocation(line: 273, column: 3, scope: !2823)
!2897 = !DILocation(line: 265, column: 10, scope: !2823)
!2898 = !DILocation(line: 266, column: 15, scope: !2823)
!2899 = !DILocation(line: 267, column: 10, scope: !2823)
!2900 = !DILocation(line: 268, column: 8, scope: !2823)
!2901 = !DILocation(line: 271, column: 8, scope: !2823)
!2902 = !DILocation(line: 272, column: 8, scope: !2823)
!2903 = !DILocation(line: 273, column: 8, scope: !2823)
!2904 = !DILocation(line: 314, column: 2, scope: !2823)
!2905 = !DILocation(line: 316, column: 3, scope: !2823)
!2906 = !DILocation(line: 323, column: 11, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2823, file: !365, line: 317, column: 5)
!2908 = !DILocation(line: 323, column: 12, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2907, file: !365, line: 323, column: 11)
!2910 = !DILocation(line: 324, column: 9, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !365, line: 324, column: 9)
!2912 = distinct !DILexicalBlock(scope: !2909, file: !365, line: 324, column: 9)
!2913 = !DILocation(line: 324, column: 9, scope: !2912)
!2914 = !DILocation(line: 362, column: 26, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !365, line: 340, column: 11)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !365, line: 339, column: 13)
!2917 = distinct !DILexicalBlock(scope: !2907, file: !365, line: 338, column: 7)
!2918 = !DILocation(line: 363, column: 27, scope: !2915)
!2919 = !DILocation(line: 364, column: 11, scope: !2915)
!2920 = !DILocation(line: 365, column: 14, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2917, file: !365, line: 365, column: 13)
!2922 = !DILocation(line: 365, column: 13, scope: !2917)
!2923 = !DILocation(line: 366, column: 43, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !365, line: 366, column: 11)
!2925 = distinct !DILexicalBlock(scope: !2921, file: !365, line: 366, column: 11)
!2926 = !DILocation(line: 366, column: 11, scope: !2925)
!2927 = !DILocation(line: 367, column: 13, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !365, line: 367, column: 13)
!2929 = distinct !DILexicalBlock(scope: !2924, file: !365, line: 367, column: 13)
!2930 = !DILocation(line: 367, column: 13, scope: !2929)
!2931 = !DILocation(line: 366, column: 70, scope: !2924)
!2932 = distinct !{!2932, !2926, !2933, !1169}
!2933 = !DILocation(line: 367, column: 13, scope: !2925)
!2934 = !DILocation(line: 264, column: 10, scope: !2823)
!2935 = !DILocation(line: 370, column: 28, scope: !2917)
!2936 = !DILocation(line: 372, column: 7, scope: !2907)
!2937 = !DILocation(line: 376, column: 7, scope: !2907)
!2938 = !DILocation(line: 379, column: 7, scope: !2907)
!2939 = !DILocation(line: 381, column: 12, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2907, file: !365, line: 381, column: 11)
!2941 = !DILocation(line: 381, column: 11, scope: !2907)
!2942 = !DILocation(line: 386, column: 12, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2907, file: !365, line: 386, column: 11)
!2944 = !DILocation(line: 386, column: 11, scope: !2907)
!2945 = !DILocation(line: 387, column: 9, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !365, line: 387, column: 9)
!2947 = distinct !DILexicalBlock(scope: !2943, file: !365, line: 387, column: 9)
!2948 = !DILocation(line: 387, column: 9, scope: !2947)
!2949 = !DILocation(line: 394, column: 7, scope: !2907)
!2950 = !DILocation(line: 397, column: 7, scope: !2907)
!2951 = !DILocation(line: 400, column: 8, scope: !2851)
!2952 = !DILocation(line: 0, scope: !2851)
!2953 = !DILocation(line: 400, column: 27, scope: !2850)
!2954 = !DILocation(line: 400, column: 19, scope: !2850)
!2955 = !DILocation(line: 400, column: 41, scope: !2850)
!2956 = !DILocation(line: 400, column: 48, scope: !2850)
!2957 = !DILocation(line: 400, column: 3, scope: !2851)
!2958 = !DILocation(line: 400, column: 60, scope: !2850)
!2959 = !DILocation(line: 0, scope: !2849)
!2960 = !DILocation(line: 409, column: 11, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2849, file: !365, line: 408, column: 11)
!2962 = !DILocation(line: 411, column: 17, scope: !2961)
!2963 = !DILocation(line: 412, column: 39, scope: !2961)
!2964 = !DILocation(line: 416, column: 32, scope: !2961)
!2965 = !DILocation(line: 412, column: 19, scope: !2961)
!2966 = !DILocation(line: 412, column: 15, scope: !2961)
!2967 = !DILocation(line: 417, column: 11, scope: !2961)
!2968 = !DILocation(line: 417, column: 26, scope: !2961)
!2969 = !DILocation(line: 417, column: 14, scope: !2961)
!2970 = !DILocation(line: 417, column: 63, scope: !2961)
!2971 = !DILocation(line: 408, column: 11, scope: !2849)
!2972 = !DILocation(line: 424, column: 11, scope: !2849)
!2973 = !DILocation(line: 425, column: 7, scope: !2849)
!2974 = !DILocation(line: 428, column: 15, scope: !2858)
!2975 = !DILocation(line: 430, column: 15, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !365, line: 430, column: 15)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !365, line: 429, column: 13)
!2978 = distinct !DILexicalBlock(scope: !2858, file: !365, line: 428, column: 15)
!2979 = !DILocation(line: 430, column: 15, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2976, file: !365, line: 430, column: 15)
!2981 = !DILocation(line: 430, column: 15, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !365, line: 430, column: 15)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !365, line: 430, column: 15)
!2984 = distinct !DILexicalBlock(scope: !2980, file: !365, line: 430, column: 15)
!2985 = !DILocation(line: 430, column: 15, scope: !2983)
!2986 = !DILocation(line: 430, column: 15, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !365, line: 430, column: 15)
!2988 = distinct !DILexicalBlock(scope: !2984, file: !365, line: 430, column: 15)
!2989 = !DILocation(line: 430, column: 15, scope: !2988)
!2990 = !DILocation(line: 430, column: 15, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !365, line: 430, column: 15)
!2992 = distinct !DILexicalBlock(scope: !2984, file: !365, line: 430, column: 15)
!2993 = !DILocation(line: 430, column: 15, scope: !2992)
!2994 = !DILocation(line: 430, column: 15, scope: !2984)
!2995 = !DILocation(line: 430, column: 15, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !365, line: 430, column: 15)
!2997 = distinct !DILexicalBlock(scope: !2976, file: !365, line: 430, column: 15)
!2998 = !DILocation(line: 430, column: 15, scope: !2997)
!2999 = !DILocation(line: 438, column: 19, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2977, file: !365, line: 437, column: 19)
!3001 = !DILocation(line: 438, column: 48, scope: !3000)
!3002 = !DILocation(line: 438, column: 59, scope: !3000)
!3003 = !DILocation(line: 440, column: 19, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !365, line: 440, column: 19)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !365, line: 440, column: 19)
!3006 = distinct !DILexicalBlock(scope: !3000, file: !365, line: 439, column: 17)
!3007 = !DILocation(line: 440, column: 19, scope: !3005)
!3008 = !DILocation(line: 441, column: 19, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !365, line: 441, column: 19)
!3010 = distinct !DILexicalBlock(scope: !3006, file: !365, line: 441, column: 19)
!3011 = !DILocation(line: 441, column: 19, scope: !3010)
!3012 = !DILocation(line: 442, column: 17, scope: !3006)
!3013 = !DILocation(line: 449, column: 20, scope: !2978)
!3014 = !DILocation(line: 454, column: 11, scope: !2858)
!3015 = !DILocation(line: 457, column: 19, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2858, file: !365, line: 455, column: 13)
!3017 = !DILocation(line: 463, column: 19, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3016, file: !365, line: 462, column: 19)
!3019 = !DILocation(line: 463, column: 47, scope: !3018)
!3020 = !DILocation(line: 463, column: 41, scope: !3018)
!3021 = !DILocation(line: 463, column: 52, scope: !3018)
!3022 = !DILocation(line: 462, column: 19, scope: !3016)
!3023 = !DILocation(line: 464, column: 25, scope: !3018)
!3024 = !DILocation(line: 464, column: 17, scope: !3018)
!3025 = !DILocation(line: 471, column: 25, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3018, file: !365, line: 465, column: 19)
!3027 = !DILocation(line: 475, column: 21, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3029, file: !365, line: 475, column: 21)
!3029 = distinct !DILexicalBlock(scope: !3026, file: !365, line: 475, column: 21)
!3030 = !DILocation(line: 475, column: 21, scope: !3029)
!3031 = !DILocation(line: 476, column: 21, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !365, line: 476, column: 21)
!3033 = distinct !DILexicalBlock(scope: !3026, file: !365, line: 476, column: 21)
!3034 = !DILocation(line: 476, column: 21, scope: !3033)
!3035 = !DILocation(line: 477, column: 21, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !365, line: 477, column: 21)
!3037 = distinct !DILexicalBlock(scope: !3026, file: !365, line: 477, column: 21)
!3038 = !DILocation(line: 477, column: 21, scope: !3037)
!3039 = !DILocation(line: 478, column: 21, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !365, line: 478, column: 21)
!3041 = distinct !DILexicalBlock(scope: !3026, file: !365, line: 478, column: 21)
!3042 = !DILocation(line: 478, column: 21, scope: !3041)
!3043 = !DILocation(line: 479, column: 21, scope: !3026)
!3044 = !DILocation(line: 492, column: 31, scope: !2858)
!3045 = !DILocation(line: 493, column: 31, scope: !2858)
!3046 = !DILocation(line: 495, column: 31, scope: !2858)
!3047 = !DILocation(line: 496, column: 31, scope: !2858)
!3048 = !DILocation(line: 497, column: 31, scope: !2858)
!3049 = !DILocation(line: 500, column: 15, scope: !2858)
!3050 = !DILocation(line: 502, column: 19, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !365, line: 501, column: 13)
!3052 = distinct !DILexicalBlock(scope: !2858, file: !365, line: 500, column: 15)
!3053 = !DILocation(line: 509, column: 33, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !2858, file: !365, line: 509, column: 15)
!3055 = !DILocation(line: 0, scope: !2858)
!3056 = !DILocation(line: 512, column: 9, scope: !2858)
!3057 = !DILocation(line: 514, column: 15, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !2858, file: !365, line: 513, column: 15)
!3059 = !DILocation(line: 517, column: 9, scope: !2858)
!3060 = !DILocation(line: 518, column: 15, scope: !2858)
!3061 = !DILocation(line: 526, column: 15, scope: !2858)
!3062 = !DILocation(line: 526, column: 40, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !2858, file: !365, line: 526, column: 15)
!3064 = !DILocation(line: 526, column: 47, scope: !3063)
!3065 = !DILocation(line: 526, column: 18, scope: !3063)
!3066 = !DILocation(line: 530, column: 17, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !2858, file: !365, line: 530, column: 15)
!3068 = !DILocation(line: 530, column: 15, scope: !2858)
!3069 = !DILocation(line: 535, column: 11, scope: !2858)
!3070 = !DILocation(line: 549, column: 15, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !2858, file: !365, line: 548, column: 15)
!3072 = !DILocation(line: 556, column: 15, scope: !2858)
!3073 = !DILocation(line: 558, column: 19, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !365, line: 557, column: 13)
!3075 = distinct !DILexicalBlock(scope: !2858, file: !365, line: 556, column: 15)
!3076 = !DILocation(line: 561, column: 19, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3074, file: !365, line: 561, column: 19)
!3078 = !DILocation(line: 561, column: 30, scope: !3077)
!3079 = !DILocation(line: 570, column: 15, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !365, line: 570, column: 15)
!3081 = distinct !DILexicalBlock(scope: !3074, file: !365, line: 570, column: 15)
!3082 = !DILocation(line: 570, column: 15, scope: !3081)
!3083 = !DILocation(line: 571, column: 15, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !365, line: 571, column: 15)
!3085 = distinct !DILexicalBlock(scope: !3074, file: !365, line: 571, column: 15)
!3086 = !DILocation(line: 571, column: 15, scope: !3085)
!3087 = !DILocation(line: 572, column: 15, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !365, line: 572, column: 15)
!3089 = distinct !DILexicalBlock(scope: !3074, file: !365, line: 572, column: 15)
!3090 = !DILocation(line: 572, column: 15, scope: !3089)
!3091 = !DILocation(line: 574, column: 13, scope: !3074)
!3092 = !DILocation(line: 614, column: 17, scope: !2857)
!3093 = !DILocation(line: 0, scope: !2857)
!3094 = !DILocation(line: 617, column: 29, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !2862, file: !365, line: 615, column: 15)
!3096 = !DILocation(line: 617, column: 27, scope: !3095)
!3097 = !DILocation(line: 678, column: 40, scope: !2857)
!3098 = !DILocation(line: 680, column: 23, scope: !2885)
!3099 = !DILocation(line: 621, column: 17, scope: !2861)
!3100 = !DILocation(line: 621, column: 27, scope: !2861)
!3101 = !DILocalVariable(name: "__dest", arg: 1, scope: !3102, file: !1983, line: 57, type: !52)
!3102 = distinct !DISubprogram(name: "memset", scope: !1983, file: !1983, line: 57, type: !3103, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3105)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!52, !52, !58, !55}
!3105 = !{!3101, !3106, !3107}
!3106 = !DILocalVariable(name: "__ch", arg: 2, scope: !3102, file: !1983, line: 57, type: !58)
!3107 = !DILocalVariable(name: "__len", arg: 3, scope: !3102, file: !1983, line: 57, type: !55)
!3108 = !DILocation(line: 0, scope: !3102, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 622, column: 17, scope: !2861)
!3110 = !DILocation(line: 59, column: 10, scope: !3102, inlinedAt: !3109)
!3111 = !DILocation(line: 626, column: 29, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !2861, file: !365, line: 626, column: 21)
!3113 = !DILocation(line: 626, column: 21, scope: !2861)
!3114 = !DILocation(line: 627, column: 29, scope: !3112)
!3115 = !DILocation(line: 627, column: 19, scope: !3112)
!3116 = !DILocation(line: 629, column: 17, scope: !2861)
!3117 = !DILocation(line: 624, column: 19, scope: !2861)
!3118 = !DILocation(line: 625, column: 27, scope: !2861)
!3119 = !DILocation(line: 631, column: 21, scope: !2874)
!3120 = !DILocation(line: 632, column: 56, scope: !2874)
!3121 = !DILocation(line: 632, column: 50, scope: !2874)
!3122 = !DILocation(line: 633, column: 53, scope: !2874)
!3123 = !DILocation(line: 0, scope: !2874)
!3124 = !DILocation(line: 632, column: 36, scope: !2874)
!3125 = !DILocation(line: 634, column: 25, scope: !2874)
!3126 = !DILocation(line: 644, column: 38, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !2880, file: !365, line: 642, column: 23)
!3128 = !DILocation(line: 644, column: 48, scope: !3127)
!3129 = !DILocation(line: 644, column: 25, scope: !3127)
!3130 = !DILocation(line: 644, column: 51, scope: !3127)
!3131 = !DILocation(line: 645, column: 28, scope: !3127)
!3132 = !DILocation(line: 644, column: 34, scope: !3127)
!3133 = distinct !{!3133, !3129, !3131, !1169}
!3134 = !DILocation(line: 655, column: 29, scope: !2878)
!3135 = !DILocation(line: 0, scope: !2877)
!3136 = !DILocation(line: 659, column: 49, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !365, line: 658, column: 29)
!3138 = distinct !DILexicalBlock(scope: !2877, file: !365, line: 658, column: 29)
!3139 = !DILocation(line: 659, column: 39, scope: !3137)
!3140 = !DILocation(line: 659, column: 31, scope: !3137)
!3141 = !DILocation(line: 658, column: 53, scope: !3137)
!3142 = !DILocation(line: 658, column: 43, scope: !3137)
!3143 = !DILocation(line: 658, column: 29, scope: !3138)
!3144 = distinct !{!3144, !3143, !3145, !1169}
!3145 = !DILocation(line: 667, column: 33, scope: !3138)
!3146 = !DILocation(line: 674, column: 19, scope: !2861)
!3147 = !DILocation(line: 670, column: 41, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !2879, file: !365, line: 670, column: 29)
!3149 = !DILocation(line: 670, column: 31, scope: !3148)
!3150 = !DILocation(line: 670, column: 29, scope: !2879)
!3151 = !DILocation(line: 672, column: 27, scope: !2879)
!3152 = !DILocation(line: 675, column: 26, scope: !2861)
!3153 = !DILocation(line: 675, column: 24, scope: !2861)
!3154 = !DILocation(line: 674, column: 19, scope: !2874)
!3155 = distinct !{!3155, !3116, !3156, !1169}
!3156 = !DILocation(line: 675, column: 44, scope: !2861)
!3157 = !DILocation(line: 676, column: 15, scope: !2862)
!3158 = !DILocation(line: 680, column: 19, scope: !2885)
!3159 = !DILocation(line: 680, column: 45, scope: !2885)
!3160 = !DILocation(line: 684, column: 33, scope: !2884)
!3161 = !DILocation(line: 0, scope: !2884)
!3162 = !DILocation(line: 686, column: 17, scope: !2884)
!3163 = !DILocation(line: 405, column: 12, scope: !2849)
!3164 = !DILocation(line: 688, column: 43, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !365, line: 688, column: 25)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !365, line: 687, column: 19)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !365, line: 686, column: 17)
!3168 = distinct !DILexicalBlock(scope: !2884, file: !365, line: 686, column: 17)
!3169 = !DILocation(line: 690, column: 25, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !365, line: 690, column: 25)
!3171 = distinct !DILexicalBlock(scope: !3165, file: !365, line: 689, column: 23)
!3172 = !DILocation(line: 690, column: 25, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3170, file: !365, line: 690, column: 25)
!3174 = !DILocation(line: 690, column: 25, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !365, line: 690, column: 25)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !365, line: 690, column: 25)
!3177 = distinct !DILexicalBlock(scope: !3173, file: !365, line: 690, column: 25)
!3178 = !DILocation(line: 690, column: 25, scope: !3176)
!3179 = !DILocation(line: 690, column: 25, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !365, line: 690, column: 25)
!3181 = distinct !DILexicalBlock(scope: !3177, file: !365, line: 690, column: 25)
!3182 = !DILocation(line: 690, column: 25, scope: !3181)
!3183 = !DILocation(line: 690, column: 25, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !365, line: 690, column: 25)
!3185 = distinct !DILexicalBlock(scope: !3177, file: !365, line: 690, column: 25)
!3186 = !DILocation(line: 690, column: 25, scope: !3185)
!3187 = !DILocation(line: 690, column: 25, scope: !3177)
!3188 = !DILocation(line: 690, column: 25, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !365, line: 690, column: 25)
!3190 = distinct !DILexicalBlock(scope: !3170, file: !365, line: 690, column: 25)
!3191 = !DILocation(line: 690, column: 25, scope: !3190)
!3192 = !DILocation(line: 691, column: 25, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !365, line: 691, column: 25)
!3194 = distinct !DILexicalBlock(scope: !3171, file: !365, line: 691, column: 25)
!3195 = !DILocation(line: 691, column: 25, scope: !3194)
!3196 = !DILocation(line: 692, column: 25, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !365, line: 692, column: 25)
!3198 = distinct !DILexicalBlock(scope: !3171, file: !365, line: 692, column: 25)
!3199 = !DILocation(line: 692, column: 25, scope: !3198)
!3200 = !DILocation(line: 693, column: 38, scope: !3171)
!3201 = !DILocation(line: 693, column: 33, scope: !3171)
!3202 = !DILocation(line: 694, column: 23, scope: !3171)
!3203 = !DILocation(line: 695, column: 30, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3165, file: !365, line: 695, column: 30)
!3205 = !DILocation(line: 695, column: 30, scope: !3165)
!3206 = !DILocation(line: 697, column: 25, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !365, line: 697, column: 25)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !365, line: 697, column: 25)
!3209 = distinct !DILexicalBlock(scope: !3204, file: !365, line: 696, column: 23)
!3210 = !DILocation(line: 697, column: 25, scope: !3208)
!3211 = !DILocation(line: 699, column: 23, scope: !3209)
!3212 = !DILocation(line: 700, column: 35, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3166, file: !365, line: 700, column: 25)
!3214 = !DILocation(line: 700, column: 30, scope: !3213)
!3215 = !DILocation(line: 700, column: 25, scope: !3166)
!3216 = !DILocation(line: 702, column: 21, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !365, line: 702, column: 21)
!3218 = distinct !DILexicalBlock(scope: !3166, file: !365, line: 702, column: 21)
!3219 = !DILocation(line: 702, column: 21, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !365, line: 702, column: 21)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !365, line: 702, column: 21)
!3222 = distinct !DILexicalBlock(scope: !3217, file: !365, line: 702, column: 21)
!3223 = !DILocation(line: 702, column: 21, scope: !3221)
!3224 = !DILocation(line: 702, column: 21, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !365, line: 702, column: 21)
!3226 = distinct !DILexicalBlock(scope: !3222, file: !365, line: 702, column: 21)
!3227 = !DILocation(line: 702, column: 21, scope: !3226)
!3228 = !DILocation(line: 702, column: 21, scope: !3222)
!3229 = !DILocation(line: 0, scope: !3166)
!3230 = !DILocation(line: 703, column: 21, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !365, line: 703, column: 21)
!3232 = distinct !DILexicalBlock(scope: !3166, file: !365, line: 703, column: 21)
!3233 = !DILocation(line: 703, column: 21, scope: !3232)
!3234 = !DILocation(line: 704, column: 25, scope: !3166)
!3235 = !DILocation(line: 686, column: 17, scope: !3167)
!3236 = distinct !{!3236, !3237, !3238}
!3237 = !DILocation(line: 686, column: 17, scope: !3168)
!3238 = !DILocation(line: 705, column: 19, scope: !3168)
!3239 = !DILocation(line: 416, column: 30, scope: !2961)
!3240 = !DILocation(line: 712, column: 34, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !2849, file: !365, line: 712, column: 11)
!3242 = !DILocation(line: 715, column: 35, scope: !3241)
!3243 = !DILocation(line: 715, column: 17, scope: !3241)
!3244 = !DILocation(line: 715, column: 47, scope: !3241)
!3245 = !DILocation(line: 715, column: 65, scope: !3241)
!3246 = !DILocation(line: 716, column: 11, scope: !3241)
!3247 = !DILocation(line: 712, column: 11, scope: !2849)
!3248 = !DILocation(line: 400, column: 10, scope: !2851)
!3249 = !DILocation(line: 719, column: 5, scope: !2849)
!3250 = !DILocation(line: 720, column: 7, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !2849, file: !365, line: 720, column: 7)
!3252 = !DILocation(line: 720, column: 7, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3251, file: !365, line: 720, column: 7)
!3254 = !DILocation(line: 720, column: 7, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !365, line: 720, column: 7)
!3256 = distinct !DILexicalBlock(scope: !3257, file: !365, line: 720, column: 7)
!3257 = distinct !DILexicalBlock(scope: !3253, file: !365, line: 720, column: 7)
!3258 = !DILocation(line: 720, column: 7, scope: !3256)
!3259 = !DILocation(line: 720, column: 7, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !365, line: 720, column: 7)
!3261 = distinct !DILexicalBlock(scope: !3257, file: !365, line: 720, column: 7)
!3262 = !DILocation(line: 720, column: 7, scope: !3261)
!3263 = !DILocation(line: 720, column: 7, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !365, line: 720, column: 7)
!3265 = distinct !DILexicalBlock(scope: !3257, file: !365, line: 720, column: 7)
!3266 = !DILocation(line: 720, column: 7, scope: !3265)
!3267 = !DILocation(line: 720, column: 7, scope: !3257)
!3268 = !DILocation(line: 720, column: 7, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !365, line: 720, column: 7)
!3270 = distinct !DILexicalBlock(scope: !3251, file: !365, line: 720, column: 7)
!3271 = !DILocation(line: 720, column: 7, scope: !3270)
!3272 = !DILocation(line: 722, column: 5, scope: !2849)
!3273 = !DILocation(line: 723, column: 7, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3275, file: !365, line: 723, column: 7)
!3275 = distinct !DILexicalBlock(scope: !2849, file: !365, line: 723, column: 7)
!3276 = !DILocation(line: 424, column: 9, scope: !2849)
!3277 = !DILocation(line: 723, column: 7, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3279, file: !365, line: 723, column: 7)
!3279 = distinct !DILexicalBlock(scope: !3280, file: !365, line: 723, column: 7)
!3280 = distinct !DILexicalBlock(scope: !3274, file: !365, line: 723, column: 7)
!3281 = !DILocation(line: 723, column: 7, scope: !3279)
!3282 = !DILocation(line: 723, column: 7, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3284, file: !365, line: 723, column: 7)
!3284 = distinct !DILexicalBlock(scope: !3280, file: !365, line: 723, column: 7)
!3285 = !DILocation(line: 723, column: 7, scope: !3284)
!3286 = !DILocation(line: 723, column: 7, scope: !3280)
!3287 = !DILocation(line: 724, column: 7, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3289, file: !365, line: 724, column: 7)
!3289 = distinct !DILexicalBlock(scope: !2849, file: !365, line: 724, column: 7)
!3290 = !DILocation(line: 724, column: 7, scope: !3289)
!3291 = !DILocation(line: 726, column: 13, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !2849, file: !365, line: 726, column: 11)
!3293 = !DILocation(line: 726, column: 11, scope: !2849)
!3294 = !DILocation(line: 728, column: 5, scope: !2850)
!3295 = !DILocation(line: 400, column: 75, scope: !2850)
!3296 = !DILocation(line: 400, column: 3, scope: !2850)
!3297 = distinct !{!3297, !2957, !3298, !1169}
!3298 = !DILocation(line: 728, column: 5, scope: !2851)
!3299 = !DILocation(line: 730, column: 11, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !2823, file: !365, line: 730, column: 7)
!3301 = !DILocation(line: 730, column: 16, scope: !3300)
!3302 = !DILocation(line: 738, column: 51, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !2823, file: !365, line: 738, column: 7)
!3304 = !DILocation(line: 741, column: 11, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !365, line: 741, column: 11)
!3306 = distinct !DILexicalBlock(scope: !3303, file: !365, line: 740, column: 5)
!3307 = !DILocation(line: 741, column: 11, scope: !3306)
!3308 = !DILocation(line: 742, column: 16, scope: !3305)
!3309 = !DILocation(line: 742, column: 9, scope: !3305)
!3310 = !DILocation(line: 746, column: 18, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3305, file: !365, line: 746, column: 16)
!3312 = !DILocation(line: 746, column: 29, scope: !3311)
!3313 = !DILocation(line: 755, column: 7, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !2823, file: !365, line: 755, column: 7)
!3315 = !DILocation(line: 755, column: 20, scope: !3314)
!3316 = !DILocation(line: 756, column: 12, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !365, line: 756, column: 5)
!3318 = distinct !DILexicalBlock(scope: !3314, file: !365, line: 756, column: 5)
!3319 = !DILocation(line: 756, column: 5, scope: !3318)
!3320 = !DILocation(line: 757, column: 7, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !365, line: 757, column: 7)
!3322 = distinct !DILexicalBlock(scope: !3317, file: !365, line: 757, column: 7)
!3323 = !DILocation(line: 757, column: 7, scope: !3322)
!3324 = !DILocation(line: 756, column: 39, scope: !3317)
!3325 = distinct !{!3325, !3319, !3326, !1169}
!3326 = !DILocation(line: 757, column: 7, scope: !3318)
!3327 = !DILocation(line: 759, column: 11, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !2823, file: !365, line: 759, column: 7)
!3329 = !DILocation(line: 759, column: 7, scope: !2823)
!3330 = !DILocation(line: 760, column: 5, scope: !3328)
!3331 = !DILocation(line: 760, column: 17, scope: !3328)
!3332 = !DILocation(line: 763, column: 2, scope: !2823)
!3333 = !DILocation(line: 766, column: 51, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !2823, file: !365, line: 766, column: 7)
!3335 = !DILocation(line: 766, column: 21, scope: !3334)
!3336 = !DILocation(line: 770, column: 42, scope: !2823)
!3337 = !DILocation(line: 768, column: 10, scope: !2823)
!3338 = !DILocation(line: 768, column: 3, scope: !2823)
!3339 = !DILocation(line: 772, column: 1, scope: !2823)
!3340 = distinct !DISubprogram(name: "gettext_quote", scope: !365, file: !365, line: 207, type: !3341, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3343)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!293, !293, !5}
!3343 = !{!3344, !3345, !3346, !3347}
!3344 = !DILocalVariable(name: "msgid", arg: 1, scope: !3340, file: !365, line: 207, type: !293)
!3345 = !DILocalVariable(name: "s", arg: 2, scope: !3340, file: !365, line: 207, type: !5)
!3346 = !DILocalVariable(name: "translation", scope: !3340, file: !365, line: 209, type: !293)
!3347 = !DILocalVariable(name: "locale_code", scope: !3340, file: !365, line: 210, type: !293)
!3348 = !DILocation(line: 0, scope: !3340)
!3349 = !DILocation(line: 209, column: 29, scope: !3340)
!3350 = !DILocation(line: 212, column: 19, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3340, file: !365, line: 212, column: 7)
!3352 = !DILocation(line: 212, column: 7, scope: !3340)
!3353 = !DILocation(line: 233, column: 17, scope: !3340)
!3354 = !DILocalVariable(name: "s1", arg: 1, scope: !3355, file: !3356, line: 160, type: !293)
!3355 = distinct !DISubprogram(name: "strcaseeq0", scope: !3356, file: !3356, line: 160, type: !3357, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3359)
!3356 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!58, !293, !293, !54, !54, !54, !54, !54, !54, !54, !54, !54}
!3359 = !{!3354, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369}
!3360 = !DILocalVariable(name: "s2", arg: 2, scope: !3355, file: !3356, line: 160, type: !293)
!3361 = !DILocalVariable(name: "s20", arg: 3, scope: !3355, file: !3356, line: 160, type: !54)
!3362 = !DILocalVariable(name: "s21", arg: 4, scope: !3355, file: !3356, line: 160, type: !54)
!3363 = !DILocalVariable(name: "s22", arg: 5, scope: !3355, file: !3356, line: 160, type: !54)
!3364 = !DILocalVariable(name: "s23", arg: 6, scope: !3355, file: !3356, line: 160, type: !54)
!3365 = !DILocalVariable(name: "s24", arg: 7, scope: !3355, file: !3356, line: 160, type: !54)
!3366 = !DILocalVariable(name: "s25", arg: 8, scope: !3355, file: !3356, line: 160, type: !54)
!3367 = !DILocalVariable(name: "s26", arg: 9, scope: !3355, file: !3356, line: 160, type: !54)
!3368 = !DILocalVariable(name: "s27", arg: 10, scope: !3355, file: !3356, line: 160, type: !54)
!3369 = !DILocalVariable(name: "s28", arg: 11, scope: !3355, file: !3356, line: 160, type: !54)
!3370 = !DILocation(line: 0, scope: !3355, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 234, column: 7, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3340, file: !365, line: 234, column: 7)
!3373 = !DILocation(line: 162, column: 7, scope: !3374, inlinedAt: !3371)
!3374 = distinct !DILexicalBlock(scope: !3355, file: !3356, line: 162, column: 7)
!3375 = !DILocalVariable(name: "s1", arg: 1, scope: !3376, file: !3356, line: 146, type: !293)
!3376 = distinct !DISubprogram(name: "strcaseeq1", scope: !3356, file: !3356, line: 146, type: !3377, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3379)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!58, !293, !293, !54, !54, !54, !54, !54, !54, !54, !54}
!3379 = !{!3375, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388}
!3380 = !DILocalVariable(name: "s2", arg: 2, scope: !3376, file: !3356, line: 146, type: !293)
!3381 = !DILocalVariable(name: "s21", arg: 3, scope: !3376, file: !3356, line: 146, type: !54)
!3382 = !DILocalVariable(name: "s22", arg: 4, scope: !3376, file: !3356, line: 146, type: !54)
!3383 = !DILocalVariable(name: "s23", arg: 5, scope: !3376, file: !3356, line: 146, type: !54)
!3384 = !DILocalVariable(name: "s24", arg: 6, scope: !3376, file: !3356, line: 146, type: !54)
!3385 = !DILocalVariable(name: "s25", arg: 7, scope: !3376, file: !3356, line: 146, type: !54)
!3386 = !DILocalVariable(name: "s26", arg: 8, scope: !3376, file: !3356, line: 146, type: !54)
!3387 = !DILocalVariable(name: "s27", arg: 9, scope: !3376, file: !3356, line: 146, type: !54)
!3388 = !DILocalVariable(name: "s28", arg: 10, scope: !3376, file: !3356, line: 146, type: !54)
!3389 = !DILocation(line: 0, scope: !3376, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 167, column: 16, scope: !3391, inlinedAt: !3371)
!3391 = distinct !DILexicalBlock(scope: !3392, file: !3356, line: 164, column: 11)
!3392 = distinct !DILexicalBlock(scope: !3374, file: !3356, line: 163, column: 5)
!3393 = !DILocation(line: 148, column: 7, scope: !3394, inlinedAt: !3390)
!3394 = distinct !DILexicalBlock(scope: !3376, file: !3356, line: 148, column: 7)
!3395 = !DILocalVariable(name: "s1", arg: 1, scope: !3396, file: !3356, line: 132, type: !293)
!3396 = distinct !DISubprogram(name: "strcaseeq2", scope: !3356, file: !3356, line: 132, type: !3397, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3399)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!58, !293, !293, !54, !54, !54, !54, !54, !54, !54}
!3399 = !{!3395, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407}
!3400 = !DILocalVariable(name: "s2", arg: 2, scope: !3396, file: !3356, line: 132, type: !293)
!3401 = !DILocalVariable(name: "s22", arg: 3, scope: !3396, file: !3356, line: 132, type: !54)
!3402 = !DILocalVariable(name: "s23", arg: 4, scope: !3396, file: !3356, line: 132, type: !54)
!3403 = !DILocalVariable(name: "s24", arg: 5, scope: !3396, file: !3356, line: 132, type: !54)
!3404 = !DILocalVariable(name: "s25", arg: 6, scope: !3396, file: !3356, line: 132, type: !54)
!3405 = !DILocalVariable(name: "s26", arg: 7, scope: !3396, file: !3356, line: 132, type: !54)
!3406 = !DILocalVariable(name: "s27", arg: 8, scope: !3396, file: !3356, line: 132, type: !54)
!3407 = !DILocalVariable(name: "s28", arg: 9, scope: !3396, file: !3356, line: 132, type: !54)
!3408 = !DILocation(line: 0, scope: !3396, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 153, column: 16, scope: !3410, inlinedAt: !3390)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !3356, line: 150, column: 11)
!3411 = distinct !DILexicalBlock(scope: !3394, file: !3356, line: 149, column: 5)
!3412 = !DILocation(line: 134, column: 7, scope: !3413, inlinedAt: !3409)
!3413 = distinct !DILexicalBlock(scope: !3396, file: !3356, line: 134, column: 7)
!3414 = !DILocalVariable(name: "s1", arg: 1, scope: !3415, file: !3356, line: 118, type: !293)
!3415 = distinct !DISubprogram(name: "strcaseeq3", scope: !3356, file: !3356, line: 118, type: !3416, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!58, !293, !293, !54, !54, !54, !54, !54, !54}
!3418 = !{!3414, !3419, !3420, !3421, !3422, !3423, !3424, !3425}
!3419 = !DILocalVariable(name: "s2", arg: 2, scope: !3415, file: !3356, line: 118, type: !293)
!3420 = !DILocalVariable(name: "s23", arg: 3, scope: !3415, file: !3356, line: 118, type: !54)
!3421 = !DILocalVariable(name: "s24", arg: 4, scope: !3415, file: !3356, line: 118, type: !54)
!3422 = !DILocalVariable(name: "s25", arg: 5, scope: !3415, file: !3356, line: 118, type: !54)
!3423 = !DILocalVariable(name: "s26", arg: 6, scope: !3415, file: !3356, line: 118, type: !54)
!3424 = !DILocalVariable(name: "s27", arg: 7, scope: !3415, file: !3356, line: 118, type: !54)
!3425 = !DILocalVariable(name: "s28", arg: 8, scope: !3415, file: !3356, line: 118, type: !54)
!3426 = !DILocation(line: 0, scope: !3415, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 139, column: 16, scope: !3428, inlinedAt: !3409)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !3356, line: 136, column: 11)
!3429 = distinct !DILexicalBlock(scope: !3413, file: !3356, line: 135, column: 5)
!3430 = !DILocation(line: 120, column: 7, scope: !3431, inlinedAt: !3427)
!3431 = distinct !DILexicalBlock(scope: !3415, file: !3356, line: 120, column: 7)
!3432 = !DILocation(line: 120, column: 7, scope: !3415, inlinedAt: !3427)
!3433 = !DILocalVariable(name: "s1", arg: 1, scope: !3434, file: !3356, line: 104, type: !293)
!3434 = distinct !DISubprogram(name: "strcaseeq4", scope: !3356, file: !3356, line: 104, type: !3435, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3437)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!58, !293, !293, !54, !54, !54, !54, !54}
!3437 = !{!3433, !3438, !3439, !3440, !3441, !3442, !3443}
!3438 = !DILocalVariable(name: "s2", arg: 2, scope: !3434, file: !3356, line: 104, type: !293)
!3439 = !DILocalVariable(name: "s24", arg: 3, scope: !3434, file: !3356, line: 104, type: !54)
!3440 = !DILocalVariable(name: "s25", arg: 4, scope: !3434, file: !3356, line: 104, type: !54)
!3441 = !DILocalVariable(name: "s26", arg: 5, scope: !3434, file: !3356, line: 104, type: !54)
!3442 = !DILocalVariable(name: "s27", arg: 6, scope: !3434, file: !3356, line: 104, type: !54)
!3443 = !DILocalVariable(name: "s28", arg: 7, scope: !3434, file: !3356, line: 104, type: !54)
!3444 = !DILocation(line: 0, scope: !3434, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 125, column: 16, scope: !3446, inlinedAt: !3427)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !3356, line: 122, column: 11)
!3447 = distinct !DILexicalBlock(scope: !3431, file: !3356, line: 121, column: 5)
!3448 = !DILocation(line: 106, column: 7, scope: !3449, inlinedAt: !3445)
!3449 = distinct !DILexicalBlock(scope: !3434, file: !3356, line: 106, column: 7)
!3450 = !DILocation(line: 106, column: 7, scope: !3434, inlinedAt: !3445)
!3451 = !DILocalVariable(name: "s1", arg: 1, scope: !3452, file: !3356, line: 90, type: !293)
!3452 = distinct !DISubprogram(name: "strcaseeq5", scope: !3356, file: !3356, line: 90, type: !3453, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3455)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!58, !293, !293, !54, !54, !54, !54}
!3455 = !{!3451, !3456, !3457, !3458, !3459, !3460}
!3456 = !DILocalVariable(name: "s2", arg: 2, scope: !3452, file: !3356, line: 90, type: !293)
!3457 = !DILocalVariable(name: "s25", arg: 3, scope: !3452, file: !3356, line: 90, type: !54)
!3458 = !DILocalVariable(name: "s26", arg: 4, scope: !3452, file: !3356, line: 90, type: !54)
!3459 = !DILocalVariable(name: "s27", arg: 5, scope: !3452, file: !3356, line: 90, type: !54)
!3460 = !DILocalVariable(name: "s28", arg: 6, scope: !3452, file: !3356, line: 90, type: !54)
!3461 = !DILocation(line: 0, scope: !3452, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 111, column: 16, scope: !3463, inlinedAt: !3445)
!3463 = distinct !DILexicalBlock(scope: !3464, file: !3356, line: 108, column: 11)
!3464 = distinct !DILexicalBlock(scope: !3449, file: !3356, line: 107, column: 5)
!3465 = !DILocation(line: 92, column: 7, scope: !3466, inlinedAt: !3462)
!3466 = distinct !DILexicalBlock(scope: !3452, file: !3356, line: 92, column: 7)
!3467 = !DILocation(line: 92, column: 7, scope: !3452, inlinedAt: !3462)
!3468 = !DILocation(line: 235, column: 12, scope: !3372)
!3469 = !DILocation(line: 235, column: 21, scope: !3372)
!3470 = !DILocation(line: 235, column: 5, scope: !3372)
!3471 = !DILocation(line: 0, scope: !3376, inlinedAt: !3472)
!3472 = distinct !DILocation(line: 167, column: 16, scope: !3391, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 236, column: 7, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3340, file: !365, line: 236, column: 7)
!3475 = !DILocation(line: 148, column: 7, scope: !3394, inlinedAt: !3472)
!3476 = !DILocation(line: 0, scope: !3396, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 153, column: 16, scope: !3410, inlinedAt: !3472)
!3478 = !DILocation(line: 134, column: 7, scope: !3413, inlinedAt: !3477)
!3479 = !DILocation(line: 134, column: 7, scope: !3396, inlinedAt: !3477)
!3480 = !DILocation(line: 0, scope: !3415, inlinedAt: !3481)
!3481 = distinct !DILocation(line: 139, column: 16, scope: !3428, inlinedAt: !3477)
!3482 = !DILocation(line: 120, column: 7, scope: !3431, inlinedAt: !3481)
!3483 = !DILocation(line: 120, column: 7, scope: !3415, inlinedAt: !3481)
!3484 = !DILocation(line: 0, scope: !3434, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 125, column: 16, scope: !3446, inlinedAt: !3481)
!3486 = !DILocation(line: 106, column: 7, scope: !3449, inlinedAt: !3485)
!3487 = !DILocation(line: 106, column: 7, scope: !3434, inlinedAt: !3485)
!3488 = !DILocation(line: 0, scope: !3452, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 111, column: 16, scope: !3463, inlinedAt: !3485)
!3490 = !DILocation(line: 92, column: 7, scope: !3466, inlinedAt: !3489)
!3491 = !DILocation(line: 92, column: 7, scope: !3452, inlinedAt: !3489)
!3492 = !DILocalVariable(name: "s1", arg: 1, scope: !3493, file: !3356, line: 76, type: !293)
!3493 = distinct !DISubprogram(name: "strcaseeq6", scope: !3356, file: !3356, line: 76, type: !3494, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3496)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!58, !293, !293, !54, !54, !54}
!3496 = !{!3492, !3497, !3498, !3499, !3500}
!3497 = !DILocalVariable(name: "s2", arg: 2, scope: !3493, file: !3356, line: 76, type: !293)
!3498 = !DILocalVariable(name: "s26", arg: 3, scope: !3493, file: !3356, line: 76, type: !54)
!3499 = !DILocalVariable(name: "s27", arg: 4, scope: !3493, file: !3356, line: 76, type: !54)
!3500 = !DILocalVariable(name: "s28", arg: 5, scope: !3493, file: !3356, line: 76, type: !54)
!3501 = !DILocation(line: 0, scope: !3493, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 97, column: 16, scope: !3503, inlinedAt: !3489)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !3356, line: 94, column: 11)
!3504 = distinct !DILexicalBlock(scope: !3466, file: !3356, line: 93, column: 5)
!3505 = !DILocation(line: 78, column: 7, scope: !3506, inlinedAt: !3502)
!3506 = distinct !DILexicalBlock(scope: !3493, file: !3356, line: 78, column: 7)
!3507 = !DILocation(line: 78, column: 7, scope: !3493, inlinedAt: !3502)
!3508 = !DILocalVariable(name: "s1", arg: 1, scope: !3509, file: !3356, line: 62, type: !293)
!3509 = distinct !DISubprogram(name: "strcaseeq7", scope: !3356, file: !3356, line: 62, type: !3510, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3512)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!58, !293, !293, !54, !54}
!3512 = !{!3508, !3513, !3514, !3515}
!3513 = !DILocalVariable(name: "s2", arg: 2, scope: !3509, file: !3356, line: 62, type: !293)
!3514 = !DILocalVariable(name: "s27", arg: 3, scope: !3509, file: !3356, line: 62, type: !54)
!3515 = !DILocalVariable(name: "s28", arg: 4, scope: !3509, file: !3356, line: 62, type: !54)
!3516 = !DILocation(line: 0, scope: !3509, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 83, column: 16, scope: !3518, inlinedAt: !3502)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !3356, line: 80, column: 11)
!3519 = distinct !DILexicalBlock(scope: !3506, file: !3356, line: 79, column: 5)
!3520 = !DILocation(line: 64, column: 7, scope: !3521, inlinedAt: !3517)
!3521 = distinct !DILexicalBlock(scope: !3509, file: !3356, line: 64, column: 7)
!3522 = !DILocation(line: 236, column: 7, scope: !3340)
!3523 = !DILocation(line: 237, column: 12, scope: !3474)
!3524 = !DILocation(line: 237, column: 21, scope: !3474)
!3525 = !DILocation(line: 237, column: 5, scope: !3474)
!3526 = !DILocation(line: 239, column: 13, scope: !3340)
!3527 = !DILocation(line: 239, column: 11, scope: !3340)
!3528 = !DILocation(line: 239, column: 3, scope: !3340)
!3529 = !DILocation(line: 240, column: 1, scope: !3340)
!3530 = distinct !DISubprogram(name: "quotearg_alloc", scope: !365, file: !365, line: 799, type: !3531, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3533)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!53, !293, !55, !2715}
!3533 = !{!3534, !3535, !3536}
!3534 = !DILocalVariable(name: "arg", arg: 1, scope: !3530, file: !365, line: 799, type: !293)
!3535 = !DILocalVariable(name: "argsize", arg: 2, scope: !3530, file: !365, line: 799, type: !55)
!3536 = !DILocalVariable(name: "o", arg: 3, scope: !3530, file: !365, line: 800, type: !2715)
!3537 = !DILocation(line: 0, scope: !3530)
!3538 = !DILocalVariable(name: "arg", arg: 1, scope: !3539, file: !365, line: 812, type: !293)
!3539 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !365, file: !365, line: 812, type: !3540, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3542)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!53, !293, !55, !129, !2715}
!3542 = !{!3538, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550}
!3543 = !DILocalVariable(name: "argsize", arg: 2, scope: !3539, file: !365, line: 812, type: !55)
!3544 = !DILocalVariable(name: "size", arg: 3, scope: !3539, file: !365, line: 812, type: !129)
!3545 = !DILocalVariable(name: "o", arg: 4, scope: !3539, file: !365, line: 813, type: !2715)
!3546 = !DILocalVariable(name: "p", scope: !3539, file: !365, line: 815, type: !2715)
!3547 = !DILocalVariable(name: "e", scope: !3539, file: !365, line: 816, type: !58)
!3548 = !DILocalVariable(name: "flags", scope: !3539, file: !365, line: 818, type: !58)
!3549 = !DILocalVariable(name: "bufsize", scope: !3539, file: !365, line: 819, type: !55)
!3550 = !DILocalVariable(name: "buf", scope: !3539, file: !365, line: 823, type: !53)
!3551 = !DILocation(line: 0, scope: !3539, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 802, column: 10, scope: !3530)
!3553 = !DILocation(line: 815, column: 37, scope: !3539, inlinedAt: !3552)
!3554 = !DILocation(line: 816, column: 11, scope: !3539, inlinedAt: !3552)
!3555 = !DILocation(line: 818, column: 18, scope: !3539, inlinedAt: !3552)
!3556 = !DILocation(line: 818, column: 24, scope: !3539, inlinedAt: !3552)
!3557 = !DILocation(line: 819, column: 69, scope: !3539, inlinedAt: !3552)
!3558 = !DILocation(line: 820, column: 53, scope: !3539, inlinedAt: !3552)
!3559 = !DILocation(line: 821, column: 49, scope: !3539, inlinedAt: !3552)
!3560 = !DILocation(line: 822, column: 49, scope: !3539, inlinedAt: !3552)
!3561 = !DILocation(line: 819, column: 20, scope: !3539, inlinedAt: !3552)
!3562 = !DILocation(line: 822, column: 62, scope: !3539, inlinedAt: !3552)
!3563 = !DILocalVariable(name: "n", arg: 1, scope: !3564, file: !685, line: 216, type: !55)
!3564 = distinct !DISubprogram(name: "xcharalloc", scope: !685, file: !685, line: 216, type: !3565, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3567)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!53, !55}
!3567 = !{!3563}
!3568 = !DILocation(line: 0, scope: !3564, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 823, column: 15, scope: !3539, inlinedAt: !3552)
!3570 = !DILocation(line: 218, column: 10, scope: !3564, inlinedAt: !3569)
!3571 = !DILocation(line: 824, column: 60, scope: !3539, inlinedAt: !3552)
!3572 = !DILocation(line: 826, column: 32, scope: !3539, inlinedAt: !3552)
!3573 = !DILocation(line: 826, column: 47, scope: !3539, inlinedAt: !3552)
!3574 = !DILocation(line: 824, column: 3, scope: !3539, inlinedAt: !3552)
!3575 = !DILocation(line: 827, column: 9, scope: !3539, inlinedAt: !3552)
!3576 = !DILocation(line: 802, column: 3, scope: !3530)
!3577 = !DILocation(line: 0, scope: !3539)
!3578 = !DILocation(line: 815, column: 37, scope: !3539)
!3579 = !DILocation(line: 816, column: 11, scope: !3539)
!3580 = !DILocation(line: 818, column: 18, scope: !3539)
!3581 = !DILocation(line: 818, column: 27, scope: !3539)
!3582 = !DILocation(line: 818, column: 24, scope: !3539)
!3583 = !DILocation(line: 819, column: 69, scope: !3539)
!3584 = !DILocation(line: 820, column: 53, scope: !3539)
!3585 = !DILocation(line: 821, column: 49, scope: !3539)
!3586 = !DILocation(line: 822, column: 49, scope: !3539)
!3587 = !DILocation(line: 819, column: 20, scope: !3539)
!3588 = !DILocation(line: 822, column: 62, scope: !3539)
!3589 = !DILocation(line: 0, scope: !3564, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 823, column: 15, scope: !3539)
!3591 = !DILocation(line: 218, column: 10, scope: !3564, inlinedAt: !3590)
!3592 = !DILocation(line: 824, column: 60, scope: !3539)
!3593 = !DILocation(line: 826, column: 32, scope: !3539)
!3594 = !DILocation(line: 826, column: 47, scope: !3539)
!3595 = !DILocation(line: 824, column: 3, scope: !3539)
!3596 = !DILocation(line: 827, column: 9, scope: !3539)
!3597 = !DILocation(line: 828, column: 7, scope: !3539)
!3598 = !DILocation(line: 829, column: 11, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3539, file: !365, line: 828, column: 7)
!3600 = !DILocation(line: 829, column: 5, scope: !3599)
!3601 = !DILocation(line: 830, column: 3, scope: !3539)
!3602 = distinct !DISubprogram(name: "quotearg_free", scope: !365, file: !365, line: 848, type: !427, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3603)
!3603 = !{!3604, !3605}
!3604 = !DILocalVariable(name: "sv", scope: !3602, file: !365, line: 850, type: !399)
!3605 = !DILocalVariable(name: "i", scope: !3602, file: !365, line: 851, type: !58)
!3606 = !DILocation(line: 850, column: 24, scope: !3602)
!3607 = !DILocation(line: 0, scope: !3602)
!3608 = !DILocation(line: 852, column: 19, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3610, file: !365, line: 852, column: 3)
!3610 = distinct !DILexicalBlock(scope: !3602, file: !365, line: 852, column: 3)
!3611 = !DILocation(line: 852, column: 17, scope: !3609)
!3612 = !DILocation(line: 852, column: 3, scope: !3610)
!3613 = !DILocation(line: 853, column: 17, scope: !3609)
!3614 = !{!3615, !1123, i64 8}
!3615 = !{!"slotvec", !1213, i64 0, !1123, i64 8}
!3616 = !DILocation(line: 853, column: 5, scope: !3609)
!3617 = !DILocation(line: 852, column: 28, scope: !3609)
!3618 = distinct !{!3618, !3612, !3619, !1169}
!3619 = !DILocation(line: 853, column: 20, scope: !3610)
!3620 = !DILocation(line: 854, column: 13, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3602, file: !365, line: 854, column: 7)
!3622 = !DILocation(line: 854, column: 17, scope: !3621)
!3623 = !DILocation(line: 854, column: 7, scope: !3602)
!3624 = !DILocation(line: 856, column: 7, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3621, file: !365, line: 855, column: 5)
!3626 = !DILocation(line: 857, column: 21, scope: !3625)
!3627 = !{!3615, !1213, i64 0}
!3628 = !DILocation(line: 858, column: 20, scope: !3625)
!3629 = !DILocation(line: 859, column: 5, scope: !3625)
!3630 = !DILocation(line: 860, column: 10, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3602, file: !365, line: 860, column: 7)
!3632 = !DILocation(line: 860, column: 7, scope: !3602)
!3633 = !DILocation(line: 862, column: 13, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3631, file: !365, line: 861, column: 5)
!3635 = !DILocation(line: 862, column: 7, scope: !3634)
!3636 = !DILocation(line: 863, column: 15, scope: !3634)
!3637 = !DILocation(line: 864, column: 5, scope: !3634)
!3638 = !DILocation(line: 865, column: 10, scope: !3602)
!3639 = !DILocation(line: 866, column: 1, scope: !3602)
!3640 = distinct !DISubprogram(name: "quotearg_n", scope: !365, file: !365, line: 931, type: !1199, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3641)
!3641 = !{!3642, !3643}
!3642 = !DILocalVariable(name: "n", arg: 1, scope: !3640, file: !365, line: 931, type: !58)
!3643 = !DILocalVariable(name: "arg", arg: 2, scope: !3640, file: !365, line: 931, type: !293)
!3644 = !DILocation(line: 0, scope: !3640)
!3645 = !DILocation(line: 933, column: 10, scope: !3640)
!3646 = !DILocation(line: 933, column: 3, scope: !3640)
!3647 = distinct !DISubprogram(name: "quotearg_n_options", scope: !365, file: !365, line: 877, type: !3648, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3650)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!53, !58, !293, !55, !2715}
!3650 = !{!3651, !3652, !3653, !3654, !3655, !3656, !3657, !3660, !3661, !3663, !3664, !3665}
!3651 = !DILocalVariable(name: "n", arg: 1, scope: !3647, file: !365, line: 877, type: !58)
!3652 = !DILocalVariable(name: "arg", arg: 2, scope: !3647, file: !365, line: 877, type: !293)
!3653 = !DILocalVariable(name: "argsize", arg: 3, scope: !3647, file: !365, line: 877, type: !55)
!3654 = !DILocalVariable(name: "options", arg: 4, scope: !3647, file: !365, line: 878, type: !2715)
!3655 = !DILocalVariable(name: "e", scope: !3647, file: !365, line: 880, type: !58)
!3656 = !DILocalVariable(name: "sv", scope: !3647, file: !365, line: 882, type: !399)
!3657 = !DILocalVariable(name: "preallocated", scope: !3658, file: !365, line: 889, type: !72)
!3658 = distinct !DILexicalBlock(scope: !3659, file: !365, line: 888, column: 5)
!3659 = distinct !DILexicalBlock(scope: !3647, file: !365, line: 887, column: 7)
!3660 = !DILocalVariable(name: "nmax", scope: !3658, file: !365, line: 890, type: !58)
!3661 = !DILocalVariable(name: "size", scope: !3662, file: !365, line: 903, type: !55)
!3662 = distinct !DILexicalBlock(scope: !3647, file: !365, line: 902, column: 3)
!3663 = !DILocalVariable(name: "val", scope: !3662, file: !365, line: 904, type: !53)
!3664 = !DILocalVariable(name: "flags", scope: !3662, file: !365, line: 906, type: !58)
!3665 = !DILocalVariable(name: "qsize", scope: !3662, file: !365, line: 907, type: !55)
!3666 = !DILocation(line: 0, scope: !3647)
!3667 = !DILocation(line: 880, column: 11, scope: !3647)
!3668 = !DILocation(line: 882, column: 24, scope: !3647)
!3669 = !DILocation(line: 884, column: 9, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3647, file: !365, line: 884, column: 7)
!3671 = !DILocation(line: 884, column: 7, scope: !3647)
!3672 = !DILocation(line: 885, column: 5, scope: !3670)
!3673 = !DILocation(line: 887, column: 7, scope: !3659)
!3674 = !DILocation(line: 887, column: 14, scope: !3659)
!3675 = !DILocation(line: 887, column: 7, scope: !3647)
!3676 = !DILocation(line: 889, column: 31, scope: !3658)
!3677 = !DILocation(line: 0, scope: !3658)
!3678 = !DILocation(line: 892, column: 16, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3658, file: !365, line: 892, column: 11)
!3680 = !DILocation(line: 892, column: 11, scope: !3658)
!3681 = !DILocation(line: 893, column: 9, scope: !3679)
!3682 = !DILocation(line: 895, column: 32, scope: !3658)
!3683 = !DILocation(line: 895, column: 61, scope: !3658)
!3684 = !DILocation(line: 895, column: 66, scope: !3658)
!3685 = !DILocation(line: 895, column: 22, scope: !3658)
!3686 = !DILocation(line: 895, column: 15, scope: !3658)
!3687 = !DILocation(line: 896, column: 11, scope: !3658)
!3688 = !DILocation(line: 897, column: 15, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3658, file: !365, line: 896, column: 11)
!3690 = !{i64 0, i64 8, !1212, i64 8, i64 8, !1122}
!3691 = !DILocation(line: 897, column: 9, scope: !3689)
!3692 = !DILocation(line: 898, column: 20, scope: !3658)
!3693 = !DILocation(line: 898, column: 18, scope: !3658)
!3694 = !DILocation(line: 898, column: 15, scope: !3658)
!3695 = !DILocation(line: 898, column: 38, scope: !3658)
!3696 = !DILocation(line: 898, column: 31, scope: !3658)
!3697 = !DILocation(line: 898, column: 48, scope: !3658)
!3698 = !DILocation(line: 0, scope: !3102, inlinedAt: !3699)
!3699 = distinct !DILocation(line: 898, column: 7, scope: !3658)
!3700 = !DILocation(line: 59, column: 10, scope: !3102, inlinedAt: !3699)
!3701 = !DILocation(line: 899, column: 14, scope: !3658)
!3702 = !DILocation(line: 900, column: 5, scope: !3658)
!3703 = !DILocation(line: 903, column: 19, scope: !3662)
!3704 = !DILocation(line: 903, column: 25, scope: !3662)
!3705 = !DILocation(line: 0, scope: !3662)
!3706 = !DILocation(line: 904, column: 23, scope: !3662)
!3707 = !DILocation(line: 906, column: 26, scope: !3662)
!3708 = !DILocation(line: 906, column: 32, scope: !3662)
!3709 = !DILocation(line: 908, column: 55, scope: !3662)
!3710 = !DILocation(line: 909, column: 46, scope: !3662)
!3711 = !DILocation(line: 910, column: 55, scope: !3662)
!3712 = !DILocation(line: 911, column: 55, scope: !3662)
!3713 = !DILocation(line: 907, column: 20, scope: !3662)
!3714 = !DILocation(line: 913, column: 14, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3662, file: !365, line: 913, column: 9)
!3716 = !DILocation(line: 913, column: 9, scope: !3662)
!3717 = !DILocation(line: 915, column: 35, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3715, file: !365, line: 914, column: 7)
!3719 = !DILocation(line: 915, column: 20, scope: !3718)
!3720 = !DILocation(line: 916, column: 17, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3718, file: !365, line: 916, column: 13)
!3722 = !DILocation(line: 916, column: 13, scope: !3718)
!3723 = !DILocation(line: 917, column: 11, scope: !3721)
!3724 = !DILocation(line: 0, scope: !3564, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 918, column: 27, scope: !3718)
!3726 = !DILocation(line: 218, column: 10, scope: !3564, inlinedAt: !3725)
!3727 = !DILocation(line: 918, column: 19, scope: !3718)
!3728 = !DILocation(line: 919, column: 69, scope: !3718)
!3729 = !DILocation(line: 921, column: 44, scope: !3718)
!3730 = !DILocation(line: 922, column: 44, scope: !3718)
!3731 = !DILocation(line: 919, column: 9, scope: !3718)
!3732 = !DILocation(line: 923, column: 7, scope: !3718)
!3733 = !DILocation(line: 925, column: 11, scope: !3662)
!3734 = !DILocation(line: 926, column: 5, scope: !3662)
!3735 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !365, file: !365, line: 937, type: !3736, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3738)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!53, !58, !293, !55}
!3738 = !{!3739, !3740, !3741}
!3739 = !DILocalVariable(name: "n", arg: 1, scope: !3735, file: !365, line: 937, type: !58)
!3740 = !DILocalVariable(name: "arg", arg: 2, scope: !3735, file: !365, line: 937, type: !293)
!3741 = !DILocalVariable(name: "argsize", arg: 3, scope: !3735, file: !365, line: 937, type: !55)
!3742 = !DILocation(line: 0, scope: !3735)
!3743 = !DILocation(line: 939, column: 10, scope: !3735)
!3744 = !DILocation(line: 939, column: 3, scope: !3735)
!3745 = distinct !DISubprogram(name: "quotearg", scope: !365, file: !365, line: 943, type: !1599, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3746)
!3746 = !{!3747}
!3747 = !DILocalVariable(name: "arg", arg: 1, scope: !3745, file: !365, line: 943, type: !293)
!3748 = !DILocation(line: 0, scope: !3745)
!3749 = !DILocation(line: 0, scope: !3640, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 945, column: 10, scope: !3745)
!3751 = !DILocation(line: 933, column: 10, scope: !3640, inlinedAt: !3750)
!3752 = !DILocation(line: 945, column: 3, scope: !3745)
!3753 = distinct !DISubprogram(name: "quotearg_mem", scope: !365, file: !365, line: 949, type: !3754, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3756)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!53, !293, !55}
!3756 = !{!3757, !3758}
!3757 = !DILocalVariable(name: "arg", arg: 1, scope: !3753, file: !365, line: 949, type: !293)
!3758 = !DILocalVariable(name: "argsize", arg: 2, scope: !3753, file: !365, line: 949, type: !55)
!3759 = !DILocation(line: 0, scope: !3753)
!3760 = !DILocation(line: 0, scope: !3735, inlinedAt: !3761)
!3761 = distinct !DILocation(line: 951, column: 10, scope: !3753)
!3762 = !DILocation(line: 939, column: 10, scope: !3735, inlinedAt: !3761)
!3763 = !DILocation(line: 951, column: 3, scope: !3753)
!3764 = distinct !DISubprogram(name: "quotearg_n_style", scope: !365, file: !365, line: 955, type: !3765, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3767)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!53, !58, !5, !293}
!3767 = !{!3768, !3769, !3770, !3771}
!3768 = !DILocalVariable(name: "n", arg: 1, scope: !3764, file: !365, line: 955, type: !58)
!3769 = !DILocalVariable(name: "s", arg: 2, scope: !3764, file: !365, line: 955, type: !5)
!3770 = !DILocalVariable(name: "arg", arg: 3, scope: !3764, file: !365, line: 955, type: !293)
!3771 = !DILocalVariable(name: "o", scope: !3764, file: !365, line: 957, type: !2716)
!3772 = !DILocation(line: 0, scope: !3764)
!3773 = !DILocation(line: 957, column: 3, scope: !3764)
!3774 = !DILocation(line: 957, column: 32, scope: !3764)
!3775 = !{!3776}
!3776 = distinct !{!3776, !3777, !"quoting_options_from_style: argument 0"}
!3777 = distinct !{!3777, !"quoting_options_from_style"}
!3778 = !DILocation(line: 957, column: 36, scope: !3764)
!3779 = !DILocalVariable(name: "style", arg: 1, scope: !3780, file: !365, line: 193, type: !5)
!3780 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !365, file: !365, line: 193, type: !3781, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3783)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!382, !5}
!3783 = !{!3779, !3784}
!3784 = !DILocalVariable(name: "o", scope: !3780, file: !365, line: 195, type: !382)
!3785 = !DILocation(line: 0, scope: !3780, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 957, column: 36, scope: !3764)
!3787 = !DILocation(line: 195, column: 26, scope: !3780, inlinedAt: !3786)
!3788 = !DILocation(line: 196, column: 13, scope: !3789, inlinedAt: !3786)
!3789 = distinct !DILexicalBlock(scope: !3780, file: !365, line: 196, column: 7)
!3790 = !DILocation(line: 196, column: 7, scope: !3780, inlinedAt: !3786)
!3791 = !DILocation(line: 197, column: 5, scope: !3789, inlinedAt: !3786)
!3792 = !DILocation(line: 198, column: 5, scope: !3780, inlinedAt: !3786)
!3793 = !DILocation(line: 198, column: 11, scope: !3780, inlinedAt: !3786)
!3794 = !DILocation(line: 958, column: 10, scope: !3764)
!3795 = !DILocation(line: 959, column: 1, scope: !3764)
!3796 = !DILocation(line: 958, column: 3, scope: !3764)
!3797 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !365, file: !365, line: 962, type: !3798, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3800)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!53, !58, !5, !293, !55}
!3800 = !{!3801, !3802, !3803, !3804, !3805}
!3801 = !DILocalVariable(name: "n", arg: 1, scope: !3797, file: !365, line: 962, type: !58)
!3802 = !DILocalVariable(name: "s", arg: 2, scope: !3797, file: !365, line: 962, type: !5)
!3803 = !DILocalVariable(name: "arg", arg: 3, scope: !3797, file: !365, line: 963, type: !293)
!3804 = !DILocalVariable(name: "argsize", arg: 4, scope: !3797, file: !365, line: 963, type: !55)
!3805 = !DILocalVariable(name: "o", scope: !3797, file: !365, line: 965, type: !2716)
!3806 = !DILocation(line: 0, scope: !3797)
!3807 = !DILocation(line: 965, column: 3, scope: !3797)
!3808 = !DILocation(line: 965, column: 32, scope: !3797)
!3809 = !{!3810}
!3810 = distinct !{!3810, !3811, !"quoting_options_from_style: argument 0"}
!3811 = distinct !{!3811, !"quoting_options_from_style"}
!3812 = !DILocation(line: 965, column: 36, scope: !3797)
!3813 = !DILocation(line: 0, scope: !3780, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 965, column: 36, scope: !3797)
!3815 = !DILocation(line: 195, column: 26, scope: !3780, inlinedAt: !3814)
!3816 = !DILocation(line: 196, column: 13, scope: !3789, inlinedAt: !3814)
!3817 = !DILocation(line: 196, column: 7, scope: !3780, inlinedAt: !3814)
!3818 = !DILocation(line: 197, column: 5, scope: !3789, inlinedAt: !3814)
!3819 = !DILocation(line: 198, column: 5, scope: !3780, inlinedAt: !3814)
!3820 = !DILocation(line: 198, column: 11, scope: !3780, inlinedAt: !3814)
!3821 = !DILocation(line: 966, column: 10, scope: !3797)
!3822 = !DILocation(line: 967, column: 1, scope: !3797)
!3823 = !DILocation(line: 966, column: 3, scope: !3797)
!3824 = distinct !DISubprogram(name: "quotearg_style", scope: !365, file: !365, line: 970, type: !3825, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3827)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!53, !5, !293}
!3827 = !{!3828, !3829}
!3828 = !DILocalVariable(name: "s", arg: 1, scope: !3824, file: !365, line: 970, type: !5)
!3829 = !DILocalVariable(name: "arg", arg: 2, scope: !3824, file: !365, line: 970, type: !293)
!3830 = !DILocation(line: 0, scope: !3824)
!3831 = !DILocation(line: 0, scope: !3764, inlinedAt: !3832)
!3832 = distinct !DILocation(line: 972, column: 10, scope: !3824)
!3833 = !DILocation(line: 957, column: 3, scope: !3764, inlinedAt: !3832)
!3834 = !DILocation(line: 957, column: 32, scope: !3764, inlinedAt: !3832)
!3835 = !{!3836}
!3836 = distinct !{!3836, !3837, !"quoting_options_from_style: argument 0"}
!3837 = distinct !{!3837, !"quoting_options_from_style"}
!3838 = !DILocation(line: 957, column: 36, scope: !3764, inlinedAt: !3832)
!3839 = !DILocation(line: 0, scope: !3780, inlinedAt: !3840)
!3840 = distinct !DILocation(line: 957, column: 36, scope: !3764, inlinedAt: !3832)
!3841 = !DILocation(line: 195, column: 26, scope: !3780, inlinedAt: !3840)
!3842 = !DILocation(line: 196, column: 13, scope: !3789, inlinedAt: !3840)
!3843 = !DILocation(line: 196, column: 7, scope: !3780, inlinedAt: !3840)
!3844 = !DILocation(line: 197, column: 5, scope: !3789, inlinedAt: !3840)
!3845 = !DILocation(line: 198, column: 5, scope: !3780, inlinedAt: !3840)
!3846 = !DILocation(line: 198, column: 11, scope: !3780, inlinedAt: !3840)
!3847 = !DILocation(line: 958, column: 10, scope: !3764, inlinedAt: !3832)
!3848 = !DILocation(line: 959, column: 1, scope: !3764, inlinedAt: !3832)
!3849 = !DILocation(line: 972, column: 3, scope: !3824)
!3850 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !365, file: !365, line: 976, type: !3851, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3853)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!53, !5, !293, !55}
!3853 = !{!3854, !3855, !3856}
!3854 = !DILocalVariable(name: "s", arg: 1, scope: !3850, file: !365, line: 976, type: !5)
!3855 = !DILocalVariable(name: "arg", arg: 2, scope: !3850, file: !365, line: 976, type: !293)
!3856 = !DILocalVariable(name: "argsize", arg: 3, scope: !3850, file: !365, line: 976, type: !55)
!3857 = !DILocation(line: 0, scope: !3850)
!3858 = !DILocation(line: 0, scope: !3797, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 978, column: 10, scope: !3850)
!3860 = !DILocation(line: 965, column: 3, scope: !3797, inlinedAt: !3859)
!3861 = !DILocation(line: 965, column: 32, scope: !3797, inlinedAt: !3859)
!3862 = !{!3863}
!3863 = distinct !{!3863, !3864, !"quoting_options_from_style: argument 0"}
!3864 = distinct !{!3864, !"quoting_options_from_style"}
!3865 = !DILocation(line: 965, column: 36, scope: !3797, inlinedAt: !3859)
!3866 = !DILocation(line: 0, scope: !3780, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 965, column: 36, scope: !3797, inlinedAt: !3859)
!3868 = !DILocation(line: 195, column: 26, scope: !3780, inlinedAt: !3867)
!3869 = !DILocation(line: 196, column: 13, scope: !3789, inlinedAt: !3867)
!3870 = !DILocation(line: 196, column: 7, scope: !3780, inlinedAt: !3867)
!3871 = !DILocation(line: 197, column: 5, scope: !3789, inlinedAt: !3867)
!3872 = !DILocation(line: 198, column: 5, scope: !3780, inlinedAt: !3867)
!3873 = !DILocation(line: 198, column: 11, scope: !3780, inlinedAt: !3867)
!3874 = !DILocation(line: 966, column: 10, scope: !3797, inlinedAt: !3859)
!3875 = !DILocation(line: 967, column: 1, scope: !3797, inlinedAt: !3859)
!3876 = !DILocation(line: 978, column: 3, scope: !3850)
!3877 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !365, file: !365, line: 982, type: !3878, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3880)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!53, !293, !55, !54}
!3880 = !{!3881, !3882, !3883, !3884}
!3881 = !DILocalVariable(name: "arg", arg: 1, scope: !3877, file: !365, line: 982, type: !293)
!3882 = !DILocalVariable(name: "argsize", arg: 2, scope: !3877, file: !365, line: 982, type: !55)
!3883 = !DILocalVariable(name: "ch", arg: 3, scope: !3877, file: !365, line: 982, type: !54)
!3884 = !DILocalVariable(name: "options", scope: !3877, file: !365, line: 984, type: !382)
!3885 = !DILocation(line: 0, scope: !3877)
!3886 = !DILocation(line: 984, column: 3, scope: !3877)
!3887 = !DILocation(line: 984, column: 26, scope: !3877)
!3888 = !DILocation(line: 985, column: 13, scope: !3877)
!3889 = !{i64 0, i64 4, !1470, i64 4, i64 4, !1268, i64 8, i64 32, !1470, i64 40, i64 8, !1122, i64 48, i64 8, !1122}
!3890 = !DILocation(line: 0, scope: !2736, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 986, column: 3, scope: !3877)
!3892 = !DILocation(line: 156, column: 62, scope: !2736, inlinedAt: !3891)
!3893 = !DILocation(line: 156, column: 57, scope: !2736, inlinedAt: !3891)
!3894 = !DILocation(line: 157, column: 15, scope: !2736, inlinedAt: !3891)
!3895 = !DILocation(line: 158, column: 12, scope: !2736, inlinedAt: !3891)
!3896 = !DILocation(line: 158, column: 15, scope: !2736, inlinedAt: !3891)
!3897 = !DILocation(line: 158, column: 25, scope: !2736, inlinedAt: !3891)
!3898 = !DILocation(line: 159, column: 18, scope: !2736, inlinedAt: !3891)
!3899 = !DILocation(line: 159, column: 23, scope: !2736, inlinedAt: !3891)
!3900 = !DILocation(line: 159, column: 6, scope: !2736, inlinedAt: !3891)
!3901 = !DILocation(line: 987, column: 10, scope: !3877)
!3902 = !DILocation(line: 988, column: 1, scope: !3877)
!3903 = !DILocation(line: 987, column: 3, scope: !3877)
!3904 = distinct !DISubprogram(name: "quotearg_char", scope: !365, file: !365, line: 991, type: !3905, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3907)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!53, !293, !54}
!3907 = !{!3908, !3909}
!3908 = !DILocalVariable(name: "arg", arg: 1, scope: !3904, file: !365, line: 991, type: !293)
!3909 = !DILocalVariable(name: "ch", arg: 2, scope: !3904, file: !365, line: 991, type: !54)
!3910 = !DILocation(line: 0, scope: !3904)
!3911 = !DILocation(line: 0, scope: !3877, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 993, column: 10, scope: !3904)
!3913 = !DILocation(line: 984, column: 3, scope: !3877, inlinedAt: !3912)
!3914 = !DILocation(line: 984, column: 26, scope: !3877, inlinedAt: !3912)
!3915 = !DILocation(line: 985, column: 13, scope: !3877, inlinedAt: !3912)
!3916 = !DILocation(line: 0, scope: !2736, inlinedAt: !3917)
!3917 = distinct !DILocation(line: 986, column: 3, scope: !3877, inlinedAt: !3912)
!3918 = !DILocation(line: 156, column: 62, scope: !2736, inlinedAt: !3917)
!3919 = !DILocation(line: 156, column: 57, scope: !2736, inlinedAt: !3917)
!3920 = !DILocation(line: 157, column: 15, scope: !2736, inlinedAt: !3917)
!3921 = !DILocation(line: 158, column: 12, scope: !2736, inlinedAt: !3917)
!3922 = !DILocation(line: 158, column: 15, scope: !2736, inlinedAt: !3917)
!3923 = !DILocation(line: 158, column: 25, scope: !2736, inlinedAt: !3917)
!3924 = !DILocation(line: 159, column: 18, scope: !2736, inlinedAt: !3917)
!3925 = !DILocation(line: 159, column: 23, scope: !2736, inlinedAt: !3917)
!3926 = !DILocation(line: 159, column: 6, scope: !2736, inlinedAt: !3917)
!3927 = !DILocation(line: 987, column: 10, scope: !3877, inlinedAt: !3912)
!3928 = !DILocation(line: 988, column: 1, scope: !3877, inlinedAt: !3912)
!3929 = !DILocation(line: 993, column: 3, scope: !3904)
!3930 = distinct !DISubprogram(name: "quotearg_colon", scope: !365, file: !365, line: 997, type: !1599, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3931)
!3931 = !{!3932}
!3932 = !DILocalVariable(name: "arg", arg: 1, scope: !3930, file: !365, line: 997, type: !293)
!3933 = !DILocation(line: 0, scope: !3930)
!3934 = !DILocation(line: 0, scope: !3904, inlinedAt: !3935)
!3935 = distinct !DILocation(line: 999, column: 10, scope: !3930)
!3936 = !DILocation(line: 0, scope: !3877, inlinedAt: !3937)
!3937 = distinct !DILocation(line: 993, column: 10, scope: !3904, inlinedAt: !3935)
!3938 = !DILocation(line: 984, column: 3, scope: !3877, inlinedAt: !3937)
!3939 = !DILocation(line: 984, column: 26, scope: !3877, inlinedAt: !3937)
!3940 = !DILocation(line: 985, column: 13, scope: !3877, inlinedAt: !3937)
!3941 = !DILocation(line: 0, scope: !2736, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 986, column: 3, scope: !3877, inlinedAt: !3937)
!3943 = !DILocation(line: 156, column: 57, scope: !2736, inlinedAt: !3942)
!3944 = !DILocation(line: 158, column: 12, scope: !2736, inlinedAt: !3942)
!3945 = !DILocation(line: 159, column: 6, scope: !2736, inlinedAt: !3942)
!3946 = !DILocation(line: 987, column: 10, scope: !3877, inlinedAt: !3937)
!3947 = !DILocation(line: 988, column: 1, scope: !3877, inlinedAt: !3937)
!3948 = !DILocation(line: 999, column: 3, scope: !3930)
!3949 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !365, file: !365, line: 1003, type: !3754, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3950)
!3950 = !{!3951, !3952}
!3951 = !DILocalVariable(name: "arg", arg: 1, scope: !3949, file: !365, line: 1003, type: !293)
!3952 = !DILocalVariable(name: "argsize", arg: 2, scope: !3949, file: !365, line: 1003, type: !55)
!3953 = !DILocation(line: 0, scope: !3949)
!3954 = !DILocation(line: 0, scope: !3877, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 1005, column: 10, scope: !3949)
!3956 = !DILocation(line: 984, column: 3, scope: !3877, inlinedAt: !3955)
!3957 = !DILocation(line: 984, column: 26, scope: !3877, inlinedAt: !3955)
!3958 = !DILocation(line: 985, column: 13, scope: !3877, inlinedAt: !3955)
!3959 = !DILocation(line: 0, scope: !2736, inlinedAt: !3960)
!3960 = distinct !DILocation(line: 986, column: 3, scope: !3877, inlinedAt: !3955)
!3961 = !DILocation(line: 156, column: 57, scope: !2736, inlinedAt: !3960)
!3962 = !DILocation(line: 158, column: 12, scope: !2736, inlinedAt: !3960)
!3963 = !DILocation(line: 159, column: 6, scope: !2736, inlinedAt: !3960)
!3964 = !DILocation(line: 987, column: 10, scope: !3877, inlinedAt: !3955)
!3965 = !DILocation(line: 988, column: 1, scope: !3877, inlinedAt: !3955)
!3966 = !DILocation(line: 1005, column: 3, scope: !3949)
!3967 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !365, file: !365, line: 1009, type: !3765, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3968)
!3968 = !{!3969, !3970, !3971, !3972}
!3969 = !DILocalVariable(name: "n", arg: 1, scope: !3967, file: !365, line: 1009, type: !58)
!3970 = !DILocalVariable(name: "s", arg: 2, scope: !3967, file: !365, line: 1009, type: !5)
!3971 = !DILocalVariable(name: "arg", arg: 3, scope: !3967, file: !365, line: 1009, type: !293)
!3972 = !DILocalVariable(name: "options", scope: !3967, file: !365, line: 1011, type: !382)
!3973 = !DILocation(line: 195, column: 26, scope: !3780, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 1012, column: 13, scope: !3967)
!3975 = !DILocation(line: 0, scope: !3967)
!3976 = !DILocation(line: 1011, column: 3, scope: !3967)
!3977 = !DILocation(line: 1011, column: 26, scope: !3967)
!3978 = !DILocation(line: 1012, column: 13, scope: !3967)
!3979 = !{!3980}
!3980 = distinct !{!3980, !3981, !"quoting_options_from_style: argument 0"}
!3981 = distinct !{!3981, !"quoting_options_from_style"}
!3982 = !DILocation(line: 0, scope: !3780, inlinedAt: !3974)
!3983 = !DILocation(line: 196, column: 13, scope: !3789, inlinedAt: !3974)
!3984 = !DILocation(line: 196, column: 7, scope: !3780, inlinedAt: !3974)
!3985 = !DILocation(line: 197, column: 5, scope: !3789, inlinedAt: !3974)
!3986 = !{i64 0, i64 4, !1268, i64 4, i64 32, !1470, i64 36, i64 8, !1122, i64 44, i64 8, !1122}
!3987 = !DILocation(line: 0, scope: !2736, inlinedAt: !3988)
!3988 = distinct !DILocation(line: 1013, column: 3, scope: !3967)
!3989 = !DILocation(line: 156, column: 57, scope: !2736, inlinedAt: !3988)
!3990 = !DILocation(line: 158, column: 12, scope: !2736, inlinedAt: !3988)
!3991 = !DILocation(line: 159, column: 6, scope: !2736, inlinedAt: !3988)
!3992 = !DILocation(line: 1014, column: 10, scope: !3967)
!3993 = !DILocation(line: 1015, column: 1, scope: !3967)
!3994 = !DILocation(line: 1014, column: 3, scope: !3967)
!3995 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !365, file: !365, line: 1018, type: !3996, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !3998)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!53, !58, !293, !293, !293}
!3998 = !{!3999, !4000, !4001, !4002}
!3999 = !DILocalVariable(name: "n", arg: 1, scope: !3995, file: !365, line: 1018, type: !58)
!4000 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3995, file: !365, line: 1018, type: !293)
!4001 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3995, file: !365, line: 1019, type: !293)
!4002 = !DILocalVariable(name: "arg", arg: 4, scope: !3995, file: !365, line: 1019, type: !293)
!4003 = !DILocation(line: 0, scope: !3995)
!4004 = !DILocalVariable(name: "n", arg: 1, scope: !4005, file: !365, line: 1026, type: !58)
!4005 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !365, file: !365, line: 1026, type: !4006, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !4008)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!53, !58, !293, !293, !293, !55}
!4008 = !{!4004, !4009, !4010, !4011, !4012, !4013}
!4009 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4005, file: !365, line: 1026, type: !293)
!4010 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4005, file: !365, line: 1027, type: !293)
!4011 = !DILocalVariable(name: "arg", arg: 4, scope: !4005, file: !365, line: 1028, type: !293)
!4012 = !DILocalVariable(name: "argsize", arg: 5, scope: !4005, file: !365, line: 1028, type: !55)
!4013 = !DILocalVariable(name: "o", scope: !4005, file: !365, line: 1030, type: !382)
!4014 = !DILocation(line: 0, scope: !4005, inlinedAt: !4015)
!4015 = distinct !DILocation(line: 1021, column: 10, scope: !3995)
!4016 = !DILocation(line: 1030, column: 3, scope: !4005, inlinedAt: !4015)
!4017 = !DILocation(line: 1030, column: 26, scope: !4005, inlinedAt: !4015)
!4018 = !DILocation(line: 1030, column: 30, scope: !4005, inlinedAt: !4015)
!4019 = !DILocation(line: 0, scope: !2776, inlinedAt: !4020)
!4020 = distinct !DILocation(line: 1031, column: 3, scope: !4005, inlinedAt: !4015)
!4021 = !DILocation(line: 184, column: 6, scope: !2776, inlinedAt: !4020)
!4022 = !DILocation(line: 184, column: 12, scope: !2776, inlinedAt: !4020)
!4023 = !DILocation(line: 185, column: 8, scope: !2790, inlinedAt: !4020)
!4024 = !DILocation(line: 185, column: 19, scope: !2790, inlinedAt: !4020)
!4025 = !DILocation(line: 186, column: 5, scope: !2790, inlinedAt: !4020)
!4026 = !DILocation(line: 187, column: 6, scope: !2776, inlinedAt: !4020)
!4027 = !DILocation(line: 187, column: 17, scope: !2776, inlinedAt: !4020)
!4028 = !DILocation(line: 188, column: 6, scope: !2776, inlinedAt: !4020)
!4029 = !DILocation(line: 188, column: 18, scope: !2776, inlinedAt: !4020)
!4030 = !DILocation(line: 1032, column: 10, scope: !4005, inlinedAt: !4015)
!4031 = !DILocation(line: 1033, column: 1, scope: !4005, inlinedAt: !4015)
!4032 = !DILocation(line: 1021, column: 3, scope: !3995)
!4033 = !DILocation(line: 0, scope: !4005)
!4034 = !DILocation(line: 1030, column: 3, scope: !4005)
!4035 = !DILocation(line: 1030, column: 26, scope: !4005)
!4036 = !DILocation(line: 1030, column: 30, scope: !4005)
!4037 = !DILocation(line: 0, scope: !2776, inlinedAt: !4038)
!4038 = distinct !DILocation(line: 1031, column: 3, scope: !4005)
!4039 = !DILocation(line: 184, column: 6, scope: !2776, inlinedAt: !4038)
!4040 = !DILocation(line: 184, column: 12, scope: !2776, inlinedAt: !4038)
!4041 = !DILocation(line: 185, column: 8, scope: !2790, inlinedAt: !4038)
!4042 = !DILocation(line: 185, column: 19, scope: !2790, inlinedAt: !4038)
!4043 = !DILocation(line: 186, column: 5, scope: !2790, inlinedAt: !4038)
!4044 = !DILocation(line: 187, column: 6, scope: !2776, inlinedAt: !4038)
!4045 = !DILocation(line: 187, column: 17, scope: !2776, inlinedAt: !4038)
!4046 = !DILocation(line: 188, column: 6, scope: !2776, inlinedAt: !4038)
!4047 = !DILocation(line: 188, column: 18, scope: !2776, inlinedAt: !4038)
!4048 = !DILocation(line: 1032, column: 10, scope: !4005)
!4049 = !DILocation(line: 1033, column: 1, scope: !4005)
!4050 = !DILocation(line: 1032, column: 3, scope: !4005)
!4051 = distinct !DISubprogram(name: "quotearg_custom", scope: !365, file: !365, line: 1036, type: !4052, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !4054)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!53, !293, !293, !293}
!4054 = !{!4055, !4056, !4057}
!4055 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4051, file: !365, line: 1036, type: !293)
!4056 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4051, file: !365, line: 1036, type: !293)
!4057 = !DILocalVariable(name: "arg", arg: 3, scope: !4051, file: !365, line: 1037, type: !293)
!4058 = !DILocation(line: 0, scope: !4051)
!4059 = !DILocation(line: 0, scope: !3995, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 1039, column: 10, scope: !4051)
!4061 = !DILocation(line: 0, scope: !4005, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 1021, column: 10, scope: !3995, inlinedAt: !4060)
!4063 = !DILocation(line: 1030, column: 3, scope: !4005, inlinedAt: !4062)
!4064 = !DILocation(line: 1030, column: 26, scope: !4005, inlinedAt: !4062)
!4065 = !DILocation(line: 1030, column: 30, scope: !4005, inlinedAt: !4062)
!4066 = !DILocation(line: 0, scope: !2776, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 1031, column: 3, scope: !4005, inlinedAt: !4062)
!4068 = !DILocation(line: 184, column: 6, scope: !2776, inlinedAt: !4067)
!4069 = !DILocation(line: 184, column: 12, scope: !2776, inlinedAt: !4067)
!4070 = !DILocation(line: 185, column: 8, scope: !2790, inlinedAt: !4067)
!4071 = !DILocation(line: 185, column: 19, scope: !2790, inlinedAt: !4067)
!4072 = !DILocation(line: 186, column: 5, scope: !2790, inlinedAt: !4067)
!4073 = !DILocation(line: 187, column: 6, scope: !2776, inlinedAt: !4067)
!4074 = !DILocation(line: 187, column: 17, scope: !2776, inlinedAt: !4067)
!4075 = !DILocation(line: 188, column: 6, scope: !2776, inlinedAt: !4067)
!4076 = !DILocation(line: 188, column: 18, scope: !2776, inlinedAt: !4067)
!4077 = !DILocation(line: 1032, column: 10, scope: !4005, inlinedAt: !4062)
!4078 = !DILocation(line: 1033, column: 1, scope: !4005, inlinedAt: !4062)
!4079 = !DILocation(line: 1039, column: 3, scope: !4051)
!4080 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !365, file: !365, line: 1043, type: !4081, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !4083)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!53, !293, !293, !293, !55}
!4083 = !{!4084, !4085, !4086, !4087}
!4084 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4080, file: !365, line: 1043, type: !293)
!4085 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4080, file: !365, line: 1043, type: !293)
!4086 = !DILocalVariable(name: "arg", arg: 3, scope: !4080, file: !365, line: 1044, type: !293)
!4087 = !DILocalVariable(name: "argsize", arg: 4, scope: !4080, file: !365, line: 1044, type: !55)
!4088 = !DILocation(line: 0, scope: !4080)
!4089 = !DILocation(line: 0, scope: !4005, inlinedAt: !4090)
!4090 = distinct !DILocation(line: 1046, column: 10, scope: !4080)
!4091 = !DILocation(line: 1030, column: 3, scope: !4005, inlinedAt: !4090)
!4092 = !DILocation(line: 1030, column: 26, scope: !4005, inlinedAt: !4090)
!4093 = !DILocation(line: 1030, column: 30, scope: !4005, inlinedAt: !4090)
!4094 = !DILocation(line: 0, scope: !2776, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 1031, column: 3, scope: !4005, inlinedAt: !4090)
!4096 = !DILocation(line: 184, column: 6, scope: !2776, inlinedAt: !4095)
!4097 = !DILocation(line: 184, column: 12, scope: !2776, inlinedAt: !4095)
!4098 = !DILocation(line: 185, column: 8, scope: !2790, inlinedAt: !4095)
!4099 = !DILocation(line: 185, column: 19, scope: !2790, inlinedAt: !4095)
!4100 = !DILocation(line: 186, column: 5, scope: !2790, inlinedAt: !4095)
!4101 = !DILocation(line: 187, column: 6, scope: !2776, inlinedAt: !4095)
!4102 = !DILocation(line: 187, column: 17, scope: !2776, inlinedAt: !4095)
!4103 = !DILocation(line: 188, column: 6, scope: !2776, inlinedAt: !4095)
!4104 = !DILocation(line: 188, column: 18, scope: !2776, inlinedAt: !4095)
!4105 = !DILocation(line: 1032, column: 10, scope: !4005, inlinedAt: !4090)
!4106 = !DILocation(line: 1033, column: 1, scope: !4005, inlinedAt: !4090)
!4107 = !DILocation(line: 1046, column: 3, scope: !4080)
!4108 = distinct !DISubprogram(name: "quote_n_mem", scope: !365, file: !365, line: 1061, type: !4109, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !4111)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!293, !58, !293, !55}
!4111 = !{!4112, !4113, !4114}
!4112 = !DILocalVariable(name: "n", arg: 1, scope: !4108, file: !365, line: 1061, type: !58)
!4113 = !DILocalVariable(name: "arg", arg: 2, scope: !4108, file: !365, line: 1061, type: !293)
!4114 = !DILocalVariable(name: "argsize", arg: 3, scope: !4108, file: !365, line: 1061, type: !55)
!4115 = !DILocation(line: 0, scope: !4108)
!4116 = !DILocation(line: 1063, column: 10, scope: !4108)
!4117 = !DILocation(line: 1063, column: 3, scope: !4108)
!4118 = distinct !DISubprogram(name: "quote_mem", scope: !365, file: !365, line: 1067, type: !4119, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !4121)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!293, !293, !55}
!4121 = !{!4122, !4123}
!4122 = !DILocalVariable(name: "arg", arg: 1, scope: !4118, file: !365, line: 1067, type: !293)
!4123 = !DILocalVariable(name: "argsize", arg: 2, scope: !4118, file: !365, line: 1067, type: !55)
!4124 = !DILocation(line: 0, scope: !4118)
!4125 = !DILocation(line: 0, scope: !4108, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 1069, column: 10, scope: !4118)
!4127 = !DILocation(line: 1063, column: 10, scope: !4108, inlinedAt: !4126)
!4128 = !DILocation(line: 1069, column: 3, scope: !4118)
!4129 = distinct !DISubprogram(name: "quote_n", scope: !365, file: !365, line: 1073, type: !4130, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !4132)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!293, !58, !293}
!4132 = !{!4133, !4134}
!4133 = !DILocalVariable(name: "n", arg: 1, scope: !4129, file: !365, line: 1073, type: !58)
!4134 = !DILocalVariable(name: "arg", arg: 2, scope: !4129, file: !365, line: 1073, type: !293)
!4135 = !DILocation(line: 0, scope: !4129)
!4136 = !DILocation(line: 0, scope: !4108, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 1075, column: 10, scope: !4129)
!4138 = !DILocation(line: 1063, column: 10, scope: !4108, inlinedAt: !4137)
!4139 = !DILocation(line: 1075, column: 3, scope: !4129)
!4140 = distinct !DISubprogram(name: "quote", scope: !365, file: !365, line: 1079, type: !4141, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !4143)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!293, !293}
!4143 = !{!4144}
!4144 = !DILocalVariable(name: "arg", arg: 1, scope: !4140, file: !365, line: 1079, type: !293)
!4145 = !DILocation(line: 0, scope: !4140)
!4146 = !DILocation(line: 0, scope: !4129, inlinedAt: !4147)
!4147 = distinct !DILocation(line: 1081, column: 10, scope: !4140)
!4148 = !DILocation(line: 0, scope: !4108, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 1075, column: 10, scope: !4129, inlinedAt: !4147)
!4150 = !DILocation(line: 1063, column: 10, scope: !4108, inlinedAt: !4149)
!4151 = !DILocation(line: 1081, column: 3, scope: !4140)
!4152 = distinct !DISubprogram(name: "readtokens0_init", scope: !663, file: !663, line: 30, type: !4153, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !4197)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{null, !4155}
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Tokens", file: !124, line: 28, size: 2304, elements: !4157)
!4157 = !{!4158, !4159, !4160, !4161, !4195, !4196}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "n_tok", scope: !4156, file: !124, line: 30, baseType: !55, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "tok", scope: !4156, file: !124, line: 31, baseType: !67, size: 64, offset: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "tok_len", scope: !4156, file: !124, line: 32, baseType: !129, size: 64, offset: 128)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "o_data", scope: !4156, file: !124, line: 33, baseType: !4162, size: 704, offset: 192)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !132, line: 174, size: 704, elements: !4163)
!4163 = !{!4164, !4165, !4172, !4173, !4174, !4175, !4180, !4181, !4186, !4191, !4192, !4193, !4194}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !4162, file: !132, line: 176, baseType: !55, size: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !4162, file: !132, line: 177, baseType: !4166, size: 64, offset: 64)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !132, line: 167, size: 128, elements: !4168)
!4168 = !{!4169, !4170, !4171}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !4167, file: !132, line: 169, baseType: !53, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !4167, file: !132, line: 170, baseType: !4166, size: 64, offset: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !4167, file: !132, line: 171, baseType: !142, offset: 128)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !4162, file: !132, line: 178, baseType: !53, size: 64, offset: 128)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !4162, file: !132, line: 179, baseType: !53, size: 64, offset: 192)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !4162, file: !132, line: 180, baseType: !53, size: 64, offset: 256)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !4162, file: !132, line: 185, baseType: !4176, size: 64, offset: 320)
!4176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4162, file: !132, line: 181, size: 64, elements: !4177)
!4177 = !{!4178, !4179}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !4176, file: !132, line: 183, baseType: !55, size: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4176, file: !132, line: 184, baseType: !52, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !4162, file: !132, line: 186, baseType: !55, size: 64, offset: 384)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !4162, file: !132, line: 193, baseType: !4182, size: 64, offset: 448)
!4182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4162, file: !132, line: 189, size: 64, elements: !4183)
!4183 = !{!4184, !4185}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !4182, file: !132, line: 191, baseType: !158, size: 64)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4182, file: !132, line: 192, baseType: !162, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !4162, file: !132, line: 198, baseType: !4187, size: 64, offset: 512)
!4187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4162, file: !132, line: 194, size: 64, elements: !4188)
!4188 = !{!4189, !4190}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !4187, file: !132, line: 196, baseType: !169, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4187, file: !132, line: 197, baseType: !173, size: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !4162, file: !132, line: 200, baseType: !52, size: 64, offset: 576)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !4162, file: !132, line: 201, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !4162, file: !132, line: 202, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !4162, file: !132, line: 206, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "o_tok", scope: !4156, file: !124, line: 34, baseType: !4162, size: 704, offset: 896)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "o_tok_len", scope: !4156, file: !124, line: 35, baseType: !4162, size: 704, offset: 1600)
!4197 = !{!4198}
!4198 = !DILocalVariable(name: "t", arg: 1, scope: !4152, file: !663, line: 30, type: !4155)
!4199 = !DILocation(line: 0, scope: !4152)
!4200 = !DILocation(line: 35, column: 3, scope: !4152)
!4201 = !DILocation(line: 33, column: 10, scope: !4152)
!4202 = !DILocation(line: 36, column: 3, scope: !4152)
!4203 = !DILocation(line: 37, column: 3, scope: !4152)
!4204 = !DILocation(line: 38, column: 1, scope: !4152)
!4205 = distinct !DISubprogram(name: "readtokens0_free", scope: !663, file: !663, line: 41, type: !4153, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !4206)
!4206 = !{!4207, !4208, !4211, !4212, !4214, !4215, !4217}
!4207 = !DILocalVariable(name: "t", arg: 1, scope: !4205, file: !663, line: 41, type: !4155)
!4208 = !DILocalVariable(name: "__o", scope: !4209, file: !663, line: 43, type: !4210)
!4209 = distinct !DILexicalBlock(scope: !4205, file: !663, line: 43, column: 3)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4211 = !DILocalVariable(name: "__obj", scope: !4209, file: !663, line: 43, type: !52)
!4212 = !DILocalVariable(name: "__o", scope: !4213, file: !663, line: 44, type: !4210)
!4213 = distinct !DILexicalBlock(scope: !4205, file: !663, line: 44, column: 3)
!4214 = !DILocalVariable(name: "__obj", scope: !4213, file: !663, line: 44, type: !52)
!4215 = !DILocalVariable(name: "__o", scope: !4216, file: !663, line: 45, type: !4210)
!4216 = distinct !DILexicalBlock(scope: !4205, file: !663, line: 45, column: 3)
!4217 = !DILocalVariable(name: "__obj", scope: !4216, file: !663, line: 45, type: !52)
!4218 = !DILocation(line: 0, scope: !4205)
!4219 = !DILocation(line: 0, scope: !4209)
!4220 = !DILocation(line: 43, column: 3, scope: !4209)
!4221 = !DILocation(line: 43, column: 3, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4209, file: !663, line: 43, column: 3)
!4223 = !DILocation(line: 0, scope: !4213)
!4224 = !DILocation(line: 44, column: 3, scope: !4213)
!4225 = !DILocation(line: 44, column: 3, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4213, file: !663, line: 44, column: 3)
!4227 = !DILocation(line: 0, scope: !4216)
!4228 = !DILocation(line: 45, column: 3, scope: !4216)
!4229 = !DILocation(line: 45, column: 3, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4216, file: !663, line: 45, column: 3)
!4231 = !DILocation(line: 46, column: 1, scope: !4205)
!4232 = distinct !DISubprogram(name: "readtokens0", scope: !663, file: !663, line: 66, type: !4233, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !4269)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!72, !4235, !4155}
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !4237)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !4238)
!4238 = !{!4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4237, file: !193, line: 51, baseType: !58, size: 32)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4237, file: !193, line: 54, baseType: !53, size: 64, offset: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4237, file: !193, line: 55, baseType: !53, size: 64, offset: 128)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4237, file: !193, line: 56, baseType: !53, size: 64, offset: 192)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4237, file: !193, line: 57, baseType: !53, size: 64, offset: 256)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4237, file: !193, line: 58, baseType: !53, size: 64, offset: 320)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4237, file: !193, line: 59, baseType: !53, size: 64, offset: 384)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4237, file: !193, line: 60, baseType: !53, size: 64, offset: 448)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4237, file: !193, line: 61, baseType: !53, size: 64, offset: 512)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4237, file: !193, line: 64, baseType: !53, size: 64, offset: 576)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4237, file: !193, line: 65, baseType: !53, size: 64, offset: 640)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4237, file: !193, line: 66, baseType: !53, size: 64, offset: 704)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4237, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4237, file: !193, line: 70, baseType: !4253, size: 64, offset: 832)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4237, file: !193, line: 72, baseType: !58, size: 32, offset: 896)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4237, file: !193, line: 73, baseType: !58, size: 32, offset: 928)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4237, file: !193, line: 74, baseType: !102, size: 64, offset: 960)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4237, file: !193, line: 77, baseType: !59, size: 16, offset: 1024)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4237, file: !193, line: 78, baseType: !217, size: 8, offset: 1040)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4237, file: !193, line: 79, baseType: !219, size: 8, offset: 1048)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4237, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4237, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4237, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4237, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4237, file: !193, line: 93, baseType: !4253, size: 64, offset: 1344)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4237, file: !193, line: 94, baseType: !52, size: 64, offset: 1408)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4237, file: !193, line: 95, baseType: !55, size: 64, offset: 1472)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4237, file: !193, line: 96, baseType: !58, size: 32, offset: 1536)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4237, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!4269 = !{!4270, !4271, !4272, !4274, !4277, !4281, !4285, !4288, !4290, !4293, !4295, !4298, !4300, !4301, !4303, !4304, !4306}
!4270 = !DILocalVariable(name: "in", arg: 1, scope: !4232, file: !663, line: 66, type: !4235)
!4271 = !DILocalVariable(name: "t", arg: 2, scope: !4232, file: !663, line: 66, type: !4155)
!4272 = !DILocalVariable(name: "c", scope: !4273, file: !663, line: 71, type: !58)
!4273 = distinct !DILexicalBlock(scope: !4232, file: !663, line: 70, column: 5)
!4274 = !DILocalVariable(name: "len", scope: !4275, file: !663, line: 74, type: !55)
!4275 = distinct !DILexicalBlock(scope: !4276, file: !663, line: 73, column: 9)
!4276 = distinct !DILexicalBlock(scope: !4273, file: !663, line: 72, column: 11)
!4277 = !DILocalVariable(name: "__o", scope: !4278, file: !663, line: 74, type: !4279)
!4278 = distinct !DILexicalBlock(scope: !4275, file: !663, line: 74, column: 24)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4162)
!4281 = !DILocalVariable(name: "__o", scope: !4282, file: !663, line: 80, type: !4210)
!4282 = distinct !DILexicalBlock(scope: !4283, file: !663, line: 80, column: 15)
!4283 = distinct !DILexicalBlock(scope: !4284, file: !663, line: 79, column: 13)
!4284 = distinct !DILexicalBlock(scope: !4275, file: !663, line: 78, column: 15)
!4285 = !DILocalVariable(name: "__o1", scope: !4286, file: !663, line: 80, type: !4279)
!4286 = distinct !DILexicalBlock(scope: !4287, file: !663, line: 80, column: 15)
!4287 = distinct !DILexicalBlock(scope: !4282, file: !663, line: 80, column: 15)
!4288 = !DILocalVariable(name: "__o", scope: !4289, file: !663, line: 87, type: !4210)
!4289 = distinct !DILexicalBlock(scope: !4273, file: !663, line: 87, column: 7)
!4290 = !DILocalVariable(name: "__o1", scope: !4291, file: !663, line: 87, type: !4279)
!4291 = distinct !DILexicalBlock(scope: !4292, file: !663, line: 87, column: 7)
!4292 = distinct !DILexicalBlock(scope: !4289, file: !663, line: 87, column: 7)
!4293 = !DILocalVariable(name: "__o", scope: !4294, file: !663, line: 94, type: !4210)
!4294 = distinct !DILexicalBlock(scope: !4232, file: !663, line: 94, column: 3)
!4295 = !DILocalVariable(name: "__o1", scope: !4296, file: !663, line: 94, type: !4279)
!4296 = distinct !DILexicalBlock(scope: !4297, file: !663, line: 94, column: 3)
!4297 = distinct !DILexicalBlock(scope: !4294, file: !663, line: 94, column: 3)
!4298 = !DILocalVariable(name: "__o1", scope: !4299, file: !663, line: 94, type: !4210)
!4299 = distinct !DILexicalBlock(scope: !4294, file: !663, line: 94, column: 3)
!4300 = !DILocalVariable(name: "__p1", scope: !4299, file: !663, line: 94, type: !52)
!4301 = !DILocalVariable(name: "__o1", scope: !4302, file: !663, line: 96, type: !4210)
!4302 = distinct !DILexicalBlock(scope: !4232, file: !663, line: 96, column: 12)
!4303 = !DILocalVariable(name: "__value", scope: !4302, file: !663, line: 96, type: !52)
!4304 = !DILocalVariable(name: "__o1", scope: !4305, file: !663, line: 97, type: !4210)
!4305 = distinct !DILexicalBlock(scope: !4232, file: !663, line: 97, column: 16)
!4306 = !DILocalVariable(name: "__value", scope: !4305, file: !663, line: 97, type: !52)
!4307 = !DILocation(line: 0, scope: !4232)
!4308 = !DILocation(line: 71, column: 15, scope: !4273)
!4309 = !DILocation(line: 0, scope: !4273)
!4310 = !DILocation(line: 72, column: 13, scope: !4276)
!4311 = !DILocation(line: 72, column: 11, scope: !4273)
!4312 = !DILocation(line: 74, column: 24, scope: !4278)
!4313 = !DILocation(line: 0, scope: !4278)
!4314 = !{!1322, !1123, i64 24}
!4315 = !{!1322, !1123, i64 16}
!4316 = !DILocation(line: 0, scope: !4275)
!4317 = !DILocation(line: 78, column: 15, scope: !4284)
!4318 = !DILocation(line: 78, column: 15, scope: !4275)
!4319 = !DILocation(line: 0, scope: !4282)
!4320 = !DILocation(line: 0, scope: !4286)
!4321 = !DILocation(line: 80, column: 15, scope: !4286)
!4322 = !{!1322, !1123, i64 32}
!4323 = !DILocation(line: 80, column: 15, scope: !4287)
!4324 = !DILocation(line: 80, column: 15, scope: !4282)
!4325 = !DILocation(line: 81, column: 15, scope: !4283)
!4326 = !DILocation(line: 82, column: 13, scope: !4283)
!4327 = !DILocation(line: 0, scope: !4289)
!4328 = !DILocation(line: 0, scope: !4291)
!4329 = !DILocation(line: 87, column: 7, scope: !4291)
!4330 = !DILocation(line: 87, column: 7, scope: !4292)
!4331 = !DILocation(line: 87, column: 7, scope: !4289)
!4332 = !DILocation(line: 88, column: 13, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4273, file: !663, line: 88, column: 11)
!4334 = !DILocation(line: 88, column: 11, scope: !4273)
!4335 = !DILocation(line: 89, column: 9, scope: !4333)
!4336 = !DILocation(line: 0, scope: !4294)
!4337 = !DILocation(line: 0, scope: !4296)
!4338 = !DILocation(line: 94, column: 3, scope: !4296)
!4339 = !DILocation(line: 94, column: 3, scope: !4297)
!4340 = !DILocation(line: 94, column: 3, scope: !4294)
!4341 = !DILocation(line: 94, column: 3, scope: !4299)
!4342 = !DILocation(line: 0, scope: !4299)
!4343 = !DILocation(line: 0, scope: !4302)
!4344 = !DILocation(line: 96, column: 12, scope: !4302)
!4345 = !DILocation(line: 96, column: 12, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4302, file: !663, line: 96, column: 12)
!4347 = !{!1322, !1213, i64 48}
!4348 = !DILocation(line: 96, column: 12, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4302, file: !663, line: 96, column: 12)
!4350 = !{!1322, !1123, i64 8}
!4351 = !DILocation(line: 96, column: 6, scope: !4232)
!4352 = !DILocation(line: 96, column: 10, scope: !4232)
!4353 = !DILocation(line: 0, scope: !4305)
!4354 = !DILocation(line: 97, column: 16, scope: !4305)
!4355 = !DILocation(line: 97, column: 16, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4305, file: !663, line: 97, column: 16)
!4357 = !DILocation(line: 97, column: 16, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4305, file: !663, line: 97, column: 16)
!4359 = !DILocation(line: 97, column: 6, scope: !4232)
!4360 = !DILocation(line: 97, column: 14, scope: !4232)
!4361 = !{!1321, !1123, i64 16}
!4362 = !DILocation(line: 98, column: 12, scope: !4232)
!4363 = !DILocation(line: 98, column: 10, scope: !4232)
!4364 = !DILocation(line: 98, column: 3, scope: !4232)
!4365 = !DISubprogram(name: "fgetc", scope: !1194, file: !1194, line: 489, type: !4366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!58, !4253}
!4368 = distinct !DISubprogram(name: "save_token", scope: !663, file: !663, line: 51, type: !4153, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !4369)
!4369 = !{!4370, !4371, !4372, !4374, !4375, !4377, !4378, !4380, !4383, !4385, !4386, !4388, !4389}
!4370 = !DILocalVariable(name: "t", arg: 1, scope: !4368, file: !663, line: 51, type: !4155)
!4371 = !DILocalVariable(name: "len", scope: !4368, file: !663, line: 54, type: !55)
!4372 = !DILocalVariable(name: "__o", scope: !4373, file: !663, line: 54, type: !4279)
!4373 = distinct !DILexicalBlock(scope: !4368, file: !663, line: 54, column: 16)
!4374 = !DILocalVariable(name: "s", scope: !4368, file: !663, line: 55, type: !293)
!4375 = !DILocalVariable(name: "__o1", scope: !4376, file: !663, line: 55, type: !4210)
!4376 = distinct !DILexicalBlock(scope: !4368, file: !663, line: 55, column: 19)
!4377 = !DILocalVariable(name: "__value", scope: !4376, file: !663, line: 55, type: !52)
!4378 = !DILocalVariable(name: "__o", scope: !4379, file: !663, line: 56, type: !4210)
!4379 = distinct !DILexicalBlock(scope: !4368, file: !663, line: 56, column: 3)
!4380 = !DILocalVariable(name: "__o1", scope: !4381, file: !663, line: 56, type: !4279)
!4381 = distinct !DILexicalBlock(scope: !4382, file: !663, line: 56, column: 3)
!4382 = distinct !DILexicalBlock(scope: !4379, file: !663, line: 56, column: 3)
!4383 = !DILocalVariable(name: "__o1", scope: !4384, file: !663, line: 56, type: !4210)
!4384 = distinct !DILexicalBlock(scope: !4379, file: !663, line: 56, column: 3)
!4385 = !DILocalVariable(name: "__p1", scope: !4384, file: !663, line: 56, type: !52)
!4386 = !DILocalVariable(name: "__o", scope: !4387, file: !663, line: 57, type: !4210)
!4387 = distinct !DILexicalBlock(scope: !4368, file: !663, line: 57, column: 3)
!4388 = !DILocalVariable(name: "__len", scope: !4387, file: !663, line: 57, type: !55)
!4389 = !DILocalVariable(name: "__o1", scope: !4390, file: !663, line: 57, type: !4279)
!4390 = distinct !DILexicalBlock(scope: !4391, file: !663, line: 57, column: 3)
!4391 = distinct !DILexicalBlock(scope: !4387, file: !663, line: 57, column: 3)
!4392 = !DILocation(line: 0, scope: !4368)
!4393 = !DILocation(line: 54, column: 3, scope: !4368)
!4394 = !DILocation(line: 0, scope: !4373)
!4395 = !DILocation(line: 54, column: 16, scope: !4373)
!4396 = !DILocation(line: 54, column: 49, scope: !4368)
!4397 = !DILocation(line: 54, column: 10, scope: !4368)
!4398 = !DILocation(line: 0, scope: !4376)
!4399 = !DILocation(line: 55, column: 19, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4376, file: !663, line: 55, column: 19)
!4401 = !DILocation(line: 55, column: 19, scope: !4376)
!4402 = !DILocation(line: 55, column: 19, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4376, file: !663, line: 55, column: 19)
!4404 = !DILocation(line: 0, scope: !4379)
!4405 = !DILocation(line: 0, scope: !4381)
!4406 = !DILocation(line: 56, column: 3, scope: !4381)
!4407 = !DILocation(line: 56, column: 3, scope: !4382)
!4408 = !DILocation(line: 56, column: 3, scope: !4379)
!4409 = !DILocation(line: 56, column: 3, scope: !4384)
!4410 = !DILocation(line: 0, scope: !4384)
!4411 = !DILocation(line: 0, scope: !4387)
!4412 = !DILocation(line: 0, scope: !4390)
!4413 = !DILocation(line: 57, column: 3, scope: !4390)
!4414 = !DILocation(line: 57, column: 3, scope: !4391)
!4415 = !DILocation(line: 57, column: 3, scope: !4387)
!4416 = !DILocalVariable(name: "__dest", arg: 1, scope: !4417, file: !1983, line: 26, type: !2507)
!4417 = distinct !DISubprogram(name: "memcpy", scope: !1983, file: !1983, line: 26, type: !2505, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !4418)
!4418 = !{!4416, !4419, !4420}
!4419 = !DILocalVariable(name: "__src", arg: 2, scope: !4417, file: !1983, line: 26, type: !2508)
!4420 = !DILocalVariable(name: "__len", arg: 3, scope: !4417, file: !1983, line: 26, type: !55)
!4421 = !DILocation(line: 0, scope: !4417, inlinedAt: !4422)
!4422 = distinct !DILocation(line: 57, column: 3, scope: !4387)
!4423 = !DILocation(line: 29, column: 10, scope: !4417, inlinedAt: !4422)
!4424 = !DILocation(line: 58, column: 6, scope: !4368)
!4425 = !DILocation(line: 58, column: 11, scope: !4368)
!4426 = !DILocation(line: 59, column: 1, scope: !4368)
!4427 = !DISubprogram(name: "ferror", scope: !1194, file: !1194, line: 766, type: !4366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!4428 = distinct !DISubprogram(name: "safe_read", scope: !669, file: !669, line: 56, type: !4429, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !4431)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!55, !58, !52, !55}
!4431 = !{!4432, !4433, !4434, !4435}
!4432 = !DILocalVariable(name: "fd", arg: 1, scope: !4428, file: !669, line: 56, type: !58)
!4433 = !DILocalVariable(name: "buf", arg: 2, scope: !4428, file: !669, line: 56, type: !52)
!4434 = !DILocalVariable(name: "count", arg: 3, scope: !4428, file: !669, line: 56, type: !55)
!4435 = !DILocalVariable(name: "result", scope: !4436, file: !669, line: 60, type: !4439)
!4436 = distinct !DILexicalBlock(scope: !4437, file: !669, line: 59, column: 5)
!4437 = distinct !DILexicalBlock(scope: !4438, file: !669, line: 58, column: 3)
!4438 = distinct !DILexicalBlock(scope: !4428, file: !669, line: 58, column: 3)
!4439 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !4440, line: 108, baseType: !2243)
!4440 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!4441 = !DILocation(line: 0, scope: !4428)
!4442 = !DILocation(line: 60, column: 24, scope: !4436)
!4443 = !DILocation(line: 0, scope: !4436)
!4444 = !DILocation(line: 62, column: 13, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4436, file: !669, line: 62, column: 11)
!4446 = !DILocation(line: 62, column: 11, scope: !4436)
!4447 = !DILocation(line: 64, column: 16, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4445, file: !669, line: 64, column: 16)
!4449 = !DILocation(line: 64, column: 16, scope: !4445)
!4450 = distinct !{!4450, !4451, !4452}
!4451 = !DILocation(line: 58, column: 3, scope: !4438)
!4452 = !DILocation(line: 70, column: 5, scope: !4438)
!4453 = !DILocation(line: 66, column: 22, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4448, file: !669, line: 66, column: 16)
!4455 = !DILocation(line: 66, column: 32, scope: !4454)
!4456 = !DILocation(line: 71, column: 1, scope: !4428)
!4457 = distinct !DISubprogram(name: "version_etc_arn", scope: !676, file: !676, line: 61, type: !4458, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !4495)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{null, !4460, !293, !293, !293, !4494, !55}
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !4462)
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !4463)
!4463 = !{!4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4462, file: !193, line: 51, baseType: !58, size: 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4462, file: !193, line: 54, baseType: !53, size: 64, offset: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4462, file: !193, line: 55, baseType: !53, size: 64, offset: 128)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4462, file: !193, line: 56, baseType: !53, size: 64, offset: 192)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4462, file: !193, line: 57, baseType: !53, size: 64, offset: 256)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4462, file: !193, line: 58, baseType: !53, size: 64, offset: 320)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4462, file: !193, line: 59, baseType: !53, size: 64, offset: 384)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4462, file: !193, line: 60, baseType: !53, size: 64, offset: 448)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4462, file: !193, line: 61, baseType: !53, size: 64, offset: 512)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4462, file: !193, line: 64, baseType: !53, size: 64, offset: 576)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4462, file: !193, line: 65, baseType: !53, size: 64, offset: 640)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4462, file: !193, line: 66, baseType: !53, size: 64, offset: 704)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4462, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4462, file: !193, line: 70, baseType: !4478, size: 64, offset: 832)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4462, file: !193, line: 72, baseType: !58, size: 32, offset: 896)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4462, file: !193, line: 73, baseType: !58, size: 32, offset: 928)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4462, file: !193, line: 74, baseType: !102, size: 64, offset: 960)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4462, file: !193, line: 77, baseType: !59, size: 16, offset: 1024)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4462, file: !193, line: 78, baseType: !217, size: 8, offset: 1040)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4462, file: !193, line: 79, baseType: !219, size: 8, offset: 1048)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4462, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4462, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4462, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4462, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4462, file: !193, line: 93, baseType: !4478, size: 64, offset: 1344)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4462, file: !193, line: 94, baseType: !52, size: 64, offset: 1408)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4462, file: !193, line: 95, baseType: !55, size: 64, offset: 1472)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4462, file: !193, line: 96, baseType: !58, size: 32, offset: 1536)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4462, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!4495 = !{!4496, !4497, !4498, !4499, !4500, !4501}
!4496 = !DILocalVariable(name: "stream", arg: 1, scope: !4457, file: !676, line: 61, type: !4460)
!4497 = !DILocalVariable(name: "command_name", arg: 2, scope: !4457, file: !676, line: 62, type: !293)
!4498 = !DILocalVariable(name: "package", arg: 3, scope: !4457, file: !676, line: 62, type: !293)
!4499 = !DILocalVariable(name: "version", arg: 4, scope: !4457, file: !676, line: 63, type: !293)
!4500 = !DILocalVariable(name: "authors", arg: 5, scope: !4457, file: !676, line: 64, type: !4494)
!4501 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4457, file: !676, line: 64, type: !55)
!4502 = !DILocation(line: 0, scope: !4457)
!4503 = !DILocation(line: 66, column: 7, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4457, file: !676, line: 66, column: 7)
!4505 = !DILocation(line: 66, column: 7, scope: !4457)
!4506 = !DILocation(line: 67, column: 5, scope: !4504)
!4507 = !DILocation(line: 69, column: 5, scope: !4504)
!4508 = !DILocation(line: 83, column: 3, scope: !4457)
!4509 = !DILocation(line: 85, column: 3, scope: !4457)
!4510 = !DILocation(line: 88, column: 3, scope: !4457)
!4511 = !DILocation(line: 95, column: 3, scope: !4457)
!4512 = !DILocation(line: 97, column: 3, scope: !4457)
!4513 = !DILocation(line: 105, column: 7, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4457, file: !676, line: 98, column: 5)
!4515 = !DILocation(line: 106, column: 7, scope: !4514)
!4516 = !DILocation(line: 109, column: 7, scope: !4514)
!4517 = !DILocation(line: 110, column: 7, scope: !4514)
!4518 = !DILocation(line: 113, column: 7, scope: !4514)
!4519 = !DILocation(line: 115, column: 7, scope: !4514)
!4520 = !DILocation(line: 120, column: 7, scope: !4514)
!4521 = !DILocation(line: 122, column: 7, scope: !4514)
!4522 = !DILocation(line: 127, column: 7, scope: !4514)
!4523 = !DILocation(line: 129, column: 7, scope: !4514)
!4524 = !DILocation(line: 134, column: 7, scope: !4514)
!4525 = !DILocation(line: 137, column: 7, scope: !4514)
!4526 = !DILocation(line: 142, column: 7, scope: !4514)
!4527 = !DILocation(line: 145, column: 7, scope: !4514)
!4528 = !DILocation(line: 150, column: 7, scope: !4514)
!4529 = !DILocation(line: 154, column: 7, scope: !4514)
!4530 = !DILocation(line: 159, column: 7, scope: !4514)
!4531 = !DILocation(line: 163, column: 7, scope: !4514)
!4532 = !DILocation(line: 170, column: 7, scope: !4514)
!4533 = !DILocation(line: 174, column: 7, scope: !4514)
!4534 = !DILocation(line: 176, column: 1, scope: !4457)
!4535 = distinct !DISubprogram(name: "version_etc_ar", scope: !676, file: !676, line: 183, type: !4536, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !4538)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{null, !4460, !293, !293, !293, !4494}
!4538 = !{!4539, !4540, !4541, !4542, !4543, !4544}
!4539 = !DILocalVariable(name: "stream", arg: 1, scope: !4535, file: !676, line: 183, type: !4460)
!4540 = !DILocalVariable(name: "command_name", arg: 2, scope: !4535, file: !676, line: 184, type: !293)
!4541 = !DILocalVariable(name: "package", arg: 3, scope: !4535, file: !676, line: 184, type: !293)
!4542 = !DILocalVariable(name: "version", arg: 4, scope: !4535, file: !676, line: 185, type: !293)
!4543 = !DILocalVariable(name: "authors", arg: 5, scope: !4535, file: !676, line: 185, type: !4494)
!4544 = !DILocalVariable(name: "n_authors", scope: !4535, file: !676, line: 187, type: !55)
!4545 = !DILocation(line: 0, scope: !4535)
!4546 = !DILocation(line: 189, column: 8, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4535, file: !676, line: 189, column: 3)
!4548 = !DILocation(line: 0, scope: !4547)
!4549 = !DILocation(line: 189, column: 23, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4547, file: !676, line: 189, column: 3)
!4551 = !DILocation(line: 189, column: 3, scope: !4547)
!4552 = !DILocation(line: 189, column: 52, scope: !4550)
!4553 = distinct !{!4553, !4551, !4554, !1169}
!4554 = !DILocation(line: 190, column: 5, scope: !4547)
!4555 = !DILocation(line: 191, column: 3, scope: !4535)
!4556 = !DILocation(line: 192, column: 1, scope: !4535)
!4557 = distinct !DISubprogram(name: "version_etc_va", scope: !676, file: !676, line: 199, type: !4558, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !4567)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{null, !4460, !293, !293, !293, !4560}
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4562)
!4562 = !{!4563, !4564, !4565, !4566}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4561, file: !676, line: 192, baseType: !7, size: 32)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4561, file: !676, line: 192, baseType: !7, size: 32, offset: 32)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4561, file: !676, line: 192, baseType: !52, size: 64, offset: 64)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4561, file: !676, line: 192, baseType: !52, size: 64, offset: 128)
!4567 = !{!4568, !4569, !4570, !4571, !4572, !4573, !4574}
!4568 = !DILocalVariable(name: "stream", arg: 1, scope: !4557, file: !676, line: 199, type: !4460)
!4569 = !DILocalVariable(name: "command_name", arg: 2, scope: !4557, file: !676, line: 200, type: !293)
!4570 = !DILocalVariable(name: "package", arg: 3, scope: !4557, file: !676, line: 200, type: !293)
!4571 = !DILocalVariable(name: "version", arg: 4, scope: !4557, file: !676, line: 201, type: !293)
!4572 = !DILocalVariable(name: "authors", arg: 5, scope: !4557, file: !676, line: 201, type: !4560)
!4573 = !DILocalVariable(name: "n_authors", scope: !4557, file: !676, line: 203, type: !55)
!4574 = !DILocalVariable(name: "authtab", scope: !4557, file: !676, line: 204, type: !4575)
!4575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 640, elements: !378)
!4576 = !DILocation(line: 0, scope: !4557)
!4577 = !DILocation(line: 204, column: 3, scope: !4557)
!4578 = !DILocation(line: 204, column: 15, scope: !4557)
!4579 = !DILocation(line: 208, column: 35, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4581, file: !676, line: 206, column: 3)
!4581 = distinct !DILexicalBlock(scope: !4557, file: !676, line: 206, column: 3)
!4582 = !DILocation(line: 208, column: 14, scope: !4580)
!4583 = !DILocation(line: 208, column: 33, scope: !4580)
!4584 = !DILocation(line: 208, column: 67, scope: !4580)
!4585 = !DILocation(line: 206, column: 3, scope: !4581)
!4586 = !DILocation(line: 0, scope: !4581)
!4587 = !DILocation(line: 211, column: 3, scope: !4557)
!4588 = !DILocation(line: 213, column: 1, scope: !4557)
!4589 = distinct !DISubprogram(name: "version_etc", scope: !676, file: !676, line: 230, type: !4590, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !4592)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{null, !4460, !293, !293, !293, null}
!4592 = !{!4593, !4594, !4595, !4596, !4597}
!4593 = !DILocalVariable(name: "stream", arg: 1, scope: !4589, file: !676, line: 230, type: !4460)
!4594 = !DILocalVariable(name: "command_name", arg: 2, scope: !4589, file: !676, line: 231, type: !293)
!4595 = !DILocalVariable(name: "package", arg: 3, scope: !4589, file: !676, line: 231, type: !293)
!4596 = !DILocalVariable(name: "version", arg: 4, scope: !4589, file: !676, line: 232, type: !293)
!4597 = !DILocalVariable(name: "authors", scope: !4589, file: !676, line: 234, type: !4598)
!4598 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1194, line: 52, baseType: !4599)
!4599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4600, line: 32, baseType: !4601)
!4600 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!4601 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !676, baseType: !4602)
!4602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4561, size: 192, elements: !220)
!4603 = !DILocation(line: 0, scope: !4589)
!4604 = !DILocation(line: 234, column: 3, scope: !4589)
!4605 = !DILocation(line: 234, column: 11, scope: !4589)
!4606 = !DILocation(line: 236, column: 3, scope: !4589)
!4607 = !DILocation(line: 237, column: 3, scope: !4589)
!4608 = !DILocation(line: 238, column: 3, scope: !4589)
!4609 = !DILocation(line: 239, column: 1, scope: !4589)
!4610 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !676, file: !676, line: 242, type: !427, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !331)
!4611 = !DILocation(line: 244, column: 3, scope: !4610)
!4612 = !DILocation(line: 249, column: 3, scope: !4610)
!4613 = !DILocation(line: 255, column: 3, scope: !4610)
!4614 = !DILocation(line: 260, column: 3, scope: !4610)
!4615 = !DILocation(line: 262, column: 1, scope: !4610)
!4616 = distinct !DISubprogram(name: "xnmalloc", scope: !685, file: !685, line: 99, type: !1359, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !4617)
!4617 = !{!4618, !4619}
!4618 = !DILocalVariable(name: "n", arg: 1, scope: !4616, file: !685, line: 99, type: !55)
!4619 = !DILocalVariable(name: "s", arg: 2, scope: !4616, file: !685, line: 99, type: !55)
!4620 = !DILocation(line: 0, scope: !4616)
!4621 = !DILocation(line: 101, column: 7, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4616, file: !685, line: 101, column: 7)
!4623 = !DILocation(line: 101, column: 7, scope: !4616)
!4624 = !DILocation(line: 102, column: 5, scope: !4622)
!4625 = !DILocation(line: 103, column: 21, scope: !4616)
!4626 = !DILocalVariable(name: "n", arg: 1, scope: !4627, file: !682, line: 39, type: !55)
!4627 = distinct !DISubprogram(name: "xmalloc", scope: !682, file: !682, line: 39, type: !159, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !4628)
!4628 = !{!4626, !4629}
!4629 = !DILocalVariable(name: "p", scope: !4627, file: !682, line: 41, type: !52)
!4630 = !DILocation(line: 0, scope: !4627, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 103, column: 10, scope: !4616)
!4632 = !DILocation(line: 41, column: 13, scope: !4627, inlinedAt: !4631)
!4633 = !DILocation(line: 42, column: 8, scope: !4634, inlinedAt: !4631)
!4634 = distinct !DILexicalBlock(scope: !4627, file: !682, line: 42, column: 7)
!4635 = !DILocation(line: 42, column: 10, scope: !4634, inlinedAt: !4631)
!4636 = !DILocation(line: 43, column: 5, scope: !4634, inlinedAt: !4631)
!4637 = !DILocation(line: 103, column: 3, scope: !4616)
!4638 = !DILocation(line: 0, scope: !4627)
!4639 = !DILocation(line: 41, column: 13, scope: !4627)
!4640 = !DILocation(line: 42, column: 8, scope: !4634)
!4641 = !DILocation(line: 42, column: 10, scope: !4634)
!4642 = !DILocation(line: 43, column: 5, scope: !4634)
!4643 = !DILocation(line: 44, column: 3, scope: !4627)
!4644 = distinct !DISubprogram(name: "xnrealloc", scope: !685, file: !685, line: 112, type: !4645, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !4647)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!52, !52, !55, !55}
!4647 = !{!4648, !4649, !4650}
!4648 = !DILocalVariable(name: "p", arg: 1, scope: !4644, file: !685, line: 112, type: !52)
!4649 = !DILocalVariable(name: "n", arg: 2, scope: !4644, file: !685, line: 112, type: !55)
!4650 = !DILocalVariable(name: "s", arg: 3, scope: !4644, file: !685, line: 112, type: !55)
!4651 = !DILocation(line: 0, scope: !4644)
!4652 = !DILocation(line: 114, column: 7, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4644, file: !685, line: 114, column: 7)
!4654 = !DILocation(line: 114, column: 7, scope: !4644)
!4655 = !DILocation(line: 115, column: 5, scope: !4653)
!4656 = !DILocation(line: 116, column: 25, scope: !4644)
!4657 = !DILocalVariable(name: "p", arg: 1, scope: !4658, file: !682, line: 51, type: !52)
!4658 = distinct !DISubprogram(name: "xrealloc", scope: !682, file: !682, line: 51, type: !163, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !4659)
!4659 = !{!4657, !4660}
!4660 = !DILocalVariable(name: "n", arg: 2, scope: !4658, file: !682, line: 51, type: !55)
!4661 = !DILocation(line: 0, scope: !4658, inlinedAt: !4662)
!4662 = distinct !DILocation(line: 116, column: 10, scope: !4644)
!4663 = !DILocation(line: 53, column: 8, scope: !4664, inlinedAt: !4662)
!4664 = distinct !DILexicalBlock(scope: !4658, file: !682, line: 53, column: 7)
!4665 = !DILocation(line: 53, column: 10, scope: !4664, inlinedAt: !4662)
!4666 = !DILocation(line: 57, column: 7, scope: !4667, inlinedAt: !4662)
!4667 = distinct !DILexicalBlock(scope: !4664, file: !682, line: 54, column: 5)
!4668 = !DILocation(line: 58, column: 7, scope: !4667, inlinedAt: !4662)
!4669 = !DILocation(line: 61, column: 7, scope: !4658, inlinedAt: !4662)
!4670 = !DILocation(line: 62, column: 8, scope: !4671, inlinedAt: !4662)
!4671 = distinct !DILexicalBlock(scope: !4658, file: !682, line: 62, column: 7)
!4672 = !DILocation(line: 62, column: 10, scope: !4671, inlinedAt: !4662)
!4673 = !DILocation(line: 63, column: 5, scope: !4671, inlinedAt: !4662)
!4674 = !DILocation(line: 116, column: 3, scope: !4644)
!4675 = !DILocation(line: 0, scope: !4658)
!4676 = !DILocation(line: 53, column: 8, scope: !4664)
!4677 = !DILocation(line: 53, column: 10, scope: !4664)
!4678 = !DILocation(line: 57, column: 7, scope: !4667)
!4679 = !DILocation(line: 58, column: 7, scope: !4667)
!4680 = !DILocation(line: 61, column: 7, scope: !4658)
!4681 = !DILocation(line: 62, column: 8, scope: !4671)
!4682 = !DILocation(line: 62, column: 10, scope: !4671)
!4683 = !DILocation(line: 63, column: 5, scope: !4671)
!4684 = !DILocation(line: 65, column: 1, scope: !4658)
!4685 = !DILocation(line: 0, scope: !686)
!4686 = !DILocation(line: 176, column: 14, scope: !686)
!4687 = !DILocation(line: 178, column: 9, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !686, file: !685, line: 178, column: 7)
!4689 = !DILocation(line: 178, column: 7, scope: !686)
!4690 = !DILocation(line: 180, column: 13, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4692, file: !685, line: 180, column: 11)
!4692 = distinct !DILexicalBlock(scope: !4688, file: !685, line: 179, column: 5)
!4693 = !DILocation(line: 180, column: 11, scope: !4692)
!4694 = !DILocation(line: 188, column: 30, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4691, file: !685, line: 181, column: 9)
!4696 = !DILocation(line: 189, column: 16, scope: !4695)
!4697 = !DILocation(line: 189, column: 13, scope: !4695)
!4698 = !DILocation(line: 190, column: 9, scope: !4695)
!4699 = !DILocation(line: 191, column: 11, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4692, file: !685, line: 191, column: 11)
!4701 = !DILocation(line: 191, column: 11, scope: !4692)
!4702 = !DILocation(line: 206, column: 7, scope: !686)
!4703 = !DILocation(line: 207, column: 25, scope: !686)
!4704 = !DILocation(line: 0, scope: !4658, inlinedAt: !4705)
!4705 = distinct !DILocation(line: 207, column: 10, scope: !686)
!4706 = !DILocation(line: 53, column: 10, scope: !4664, inlinedAt: !4705)
!4707 = !DILocation(line: 192, column: 9, scope: !4700)
!4708 = !DILocation(line: 200, column: 69, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4710, file: !685, line: 200, column: 11)
!4710 = distinct !DILexicalBlock(scope: !4688, file: !685, line: 195, column: 5)
!4711 = !DILocation(line: 201, column: 11, scope: !4709)
!4712 = !DILocation(line: 200, column: 11, scope: !4710)
!4713 = !DILocation(line: 202, column: 9, scope: !4709)
!4714 = !DILocation(line: 203, column: 14, scope: !4710)
!4715 = !DILocation(line: 203, column: 18, scope: !4710)
!4716 = !DILocation(line: 203, column: 9, scope: !4710)
!4717 = !DILocation(line: 53, column: 8, scope: !4664, inlinedAt: !4705)
!4718 = !DILocation(line: 57, column: 7, scope: !4667, inlinedAt: !4705)
!4719 = !DILocation(line: 58, column: 7, scope: !4667, inlinedAt: !4705)
!4720 = !DILocation(line: 61, column: 7, scope: !4658, inlinedAt: !4705)
!4721 = !DILocation(line: 62, column: 8, scope: !4671, inlinedAt: !4705)
!4722 = !DILocation(line: 62, column: 10, scope: !4671, inlinedAt: !4705)
!4723 = !DILocation(line: 63, column: 5, scope: !4671, inlinedAt: !4705)
!4724 = !DILocation(line: 207, column: 3, scope: !686)
!4725 = distinct !DISubprogram(name: "xcharalloc", scope: !685, file: !685, line: 216, type: !3565, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !4726)
!4726 = !{!4727}
!4727 = !DILocalVariable(name: "n", arg: 1, scope: !4725, file: !685, line: 216, type: !55)
!4728 = !DILocation(line: 0, scope: !4725)
!4729 = !DILocation(line: 0, scope: !4627, inlinedAt: !4730)
!4730 = distinct !DILocation(line: 218, column: 10, scope: !4725)
!4731 = !DILocation(line: 41, column: 13, scope: !4627, inlinedAt: !4730)
!4732 = !DILocation(line: 42, column: 8, scope: !4634, inlinedAt: !4730)
!4733 = !DILocation(line: 42, column: 10, scope: !4634, inlinedAt: !4730)
!4734 = !DILocation(line: 43, column: 5, scope: !4634, inlinedAt: !4730)
!4735 = !DILocation(line: 218, column: 3, scope: !4725)
!4736 = distinct !DISubprogram(name: "x2realloc", scope: !682, file: !682, line: 74, type: !4737, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !4739)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{!52, !52, !129}
!4739 = !{!4740, !4741}
!4740 = !DILocalVariable(name: "p", arg: 1, scope: !4736, file: !682, line: 74, type: !52)
!4741 = !DILocalVariable(name: "pn", arg: 2, scope: !4736, file: !682, line: 74, type: !129)
!4742 = !DILocation(line: 0, scope: !4736)
!4743 = !DILocation(line: 0, scope: !686, inlinedAt: !4744)
!4744 = distinct !DILocation(line: 76, column: 10, scope: !4736)
!4745 = !DILocation(line: 176, column: 14, scope: !686, inlinedAt: !4744)
!4746 = !DILocation(line: 178, column: 9, scope: !4688, inlinedAt: !4744)
!4747 = !DILocation(line: 178, column: 7, scope: !686, inlinedAt: !4744)
!4748 = !DILocation(line: 180, column: 13, scope: !4691, inlinedAt: !4744)
!4749 = !DILocation(line: 180, column: 11, scope: !4692, inlinedAt: !4744)
!4750 = !DILocation(line: 191, column: 11, scope: !4700, inlinedAt: !4744)
!4751 = !DILocation(line: 191, column: 11, scope: !4692, inlinedAt: !4744)
!4752 = !DILocation(line: 192, column: 9, scope: !4700, inlinedAt: !4744)
!4753 = !DILocation(line: 201, column: 11, scope: !4709, inlinedAt: !4744)
!4754 = !DILocation(line: 200, column: 11, scope: !4710, inlinedAt: !4744)
!4755 = !DILocation(line: 202, column: 9, scope: !4709, inlinedAt: !4744)
!4756 = !DILocation(line: 203, column: 14, scope: !4710, inlinedAt: !4744)
!4757 = !DILocation(line: 203, column: 18, scope: !4710, inlinedAt: !4744)
!4758 = !DILocation(line: 203, column: 9, scope: !4710, inlinedAt: !4744)
!4759 = !DILocation(line: 0, scope: !4658, inlinedAt: !4760)
!4760 = distinct !DILocation(line: 207, column: 10, scope: !686, inlinedAt: !4744)
!4761 = !DILocation(line: 53, column: 10, scope: !4664, inlinedAt: !4760)
!4762 = !DILocation(line: 206, column: 7, scope: !686, inlinedAt: !4744)
!4763 = !DILocation(line: 61, column: 7, scope: !4658, inlinedAt: !4760)
!4764 = !DILocation(line: 62, column: 8, scope: !4671, inlinedAt: !4760)
!4765 = !DILocation(line: 62, column: 10, scope: !4671, inlinedAt: !4760)
!4766 = !DILocation(line: 63, column: 5, scope: !4671, inlinedAt: !4760)
!4767 = !DILocation(line: 76, column: 3, scope: !4736)
!4768 = distinct !DISubprogram(name: "xzalloc", scope: !682, file: !682, line: 84, type: !159, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !4769)
!4769 = !{!4770}
!4770 = !DILocalVariable(name: "n", arg: 1, scope: !4768, file: !682, line: 84, type: !55)
!4771 = !DILocation(line: 0, scope: !4768)
!4772 = !DILocalVariable(name: "n", arg: 1, scope: !4773, file: !682, line: 93, type: !55)
!4773 = distinct !DISubprogram(name: "xcalloc", scope: !682, file: !682, line: 93, type: !1359, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !4774)
!4774 = !{!4772, !4775, !4776}
!4775 = !DILocalVariable(name: "s", arg: 2, scope: !4773, file: !682, line: 93, type: !55)
!4776 = !DILocalVariable(name: "p", scope: !4773, file: !682, line: 95, type: !52)
!4777 = !DILocation(line: 0, scope: !4773, inlinedAt: !4778)
!4778 = distinct !DILocation(line: 86, column: 10, scope: !4768)
!4779 = !DILocation(line: 100, column: 7, scope: !4780, inlinedAt: !4778)
!4780 = distinct !DILexicalBlock(scope: !4773, file: !682, line: 100, column: 7)
!4781 = !DILocation(line: 101, column: 7, scope: !4780, inlinedAt: !4778)
!4782 = !DILocation(line: 101, column: 18, scope: !4780, inlinedAt: !4778)
!4783 = !DILocation(line: 101, column: 16, scope: !4780, inlinedAt: !4778)
!4784 = !DILocation(line: 100, column: 7, scope: !4773, inlinedAt: !4778)
!4785 = !DILocation(line: 102, column: 5, scope: !4780, inlinedAt: !4778)
!4786 = !DILocation(line: 86, column: 3, scope: !4768)
!4787 = !DILocation(line: 0, scope: !4773)
!4788 = !DILocation(line: 100, column: 7, scope: !4780)
!4789 = !DILocation(line: 101, column: 7, scope: !4780)
!4790 = !DILocation(line: 101, column: 18, scope: !4780)
!4791 = !DILocation(line: 101, column: 16, scope: !4780)
!4792 = !DILocation(line: 100, column: 7, scope: !4773)
!4793 = !DILocation(line: 102, column: 5, scope: !4780)
!4794 = !DILocation(line: 103, column: 3, scope: !4773)
!4795 = distinct !DISubprogram(name: "xmemdup", scope: !682, file: !682, line: 111, type: !4796, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !4798)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!52, !666, !55}
!4798 = !{!4799, !4800}
!4799 = !DILocalVariable(name: "p", arg: 1, scope: !4795, file: !682, line: 111, type: !666)
!4800 = !DILocalVariable(name: "s", arg: 2, scope: !4795, file: !682, line: 111, type: !55)
!4801 = !DILocation(line: 0, scope: !4795)
!4802 = !DILocation(line: 0, scope: !4627, inlinedAt: !4803)
!4803 = distinct !DILocation(line: 113, column: 18, scope: !4795)
!4804 = !DILocation(line: 41, column: 13, scope: !4627, inlinedAt: !4803)
!4805 = !DILocation(line: 42, column: 8, scope: !4634, inlinedAt: !4803)
!4806 = !DILocation(line: 42, column: 10, scope: !4634, inlinedAt: !4803)
!4807 = !DILocation(line: 43, column: 5, scope: !4634, inlinedAt: !4803)
!4808 = !DILocalVariable(name: "__dest", arg: 1, scope: !4809, file: !1983, line: 26, type: !2507)
!4809 = distinct !DISubprogram(name: "memcpy", scope: !1983, file: !1983, line: 26, type: !2505, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !4810)
!4810 = !{!4808, !4811, !4812}
!4811 = !DILocalVariable(name: "__src", arg: 2, scope: !4809, file: !1983, line: 26, type: !2508)
!4812 = !DILocalVariable(name: "__len", arg: 3, scope: !4809, file: !1983, line: 26, type: !55)
!4813 = !DILocation(line: 0, scope: !4809, inlinedAt: !4814)
!4814 = distinct !DILocation(line: 113, column: 10, scope: !4795)
!4815 = !DILocation(line: 29, column: 10, scope: !4809, inlinedAt: !4814)
!4816 = !DILocation(line: 113, column: 3, scope: !4795)
!4817 = distinct !DISubprogram(name: "xstrdup", scope: !682, file: !682, line: 119, type: !1599, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !4818)
!4818 = !{!4819}
!4819 = !DILocalVariable(name: "string", arg: 1, scope: !4817, file: !682, line: 119, type: !293)
!4820 = !DILocation(line: 0, scope: !4817)
!4821 = !DILocation(line: 121, column: 27, scope: !4817)
!4822 = !DILocation(line: 121, column: 43, scope: !4817)
!4823 = !DILocation(line: 0, scope: !4795, inlinedAt: !4824)
!4824 = distinct !DILocation(line: 121, column: 10, scope: !4817)
!4825 = !DILocation(line: 0, scope: !4627, inlinedAt: !4826)
!4826 = distinct !DILocation(line: 113, column: 18, scope: !4795, inlinedAt: !4824)
!4827 = !DILocation(line: 41, column: 13, scope: !4627, inlinedAt: !4826)
!4828 = !DILocation(line: 42, column: 8, scope: !4634, inlinedAt: !4826)
!4829 = !DILocation(line: 42, column: 10, scope: !4634, inlinedAt: !4826)
!4830 = !DILocation(line: 43, column: 5, scope: !4634, inlinedAt: !4826)
!4831 = !DILocation(line: 0, scope: !4809, inlinedAt: !4832)
!4832 = distinct !DILocation(line: 113, column: 10, scope: !4795, inlinedAt: !4824)
!4833 = !DILocation(line: 29, column: 10, scope: !4809, inlinedAt: !4832)
!4834 = !DILocation(line: 121, column: 3, scope: !4817)
!4835 = distinct !DISubprogram(name: "xalloc_die", scope: !698, file: !698, line: 32, type: !427, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !697, retainedNodes: !331)
!4836 = !DILocation(line: 34, column: 10, scope: !4835)
!4837 = !DILocation(line: 34, column: 33, scope: !4835)
!4838 = !DILocation(line: 34, column: 3, scope: !4835)
!4839 = !DILocation(line: 40, column: 3, scope: !4835)
!4840 = distinct !DISubprogram(name: "rpl_calloc", scope: !700, file: !700, line: 42, type: !1359, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !4841)
!4841 = !{!4842, !4843, !4844, !4845}
!4842 = !DILocalVariable(name: "n", arg: 1, scope: !4840, file: !700, line: 42, type: !55)
!4843 = !DILocalVariable(name: "s", arg: 2, scope: !4840, file: !700, line: 42, type: !55)
!4844 = !DILocalVariable(name: "result", scope: !4840, file: !700, line: 44, type: !52)
!4845 = !DILocalVariable(name: "bytes", scope: !4846, file: !700, line: 56, type: !55)
!4846 = distinct !DILexicalBlock(scope: !4847, file: !700, line: 53, column: 5)
!4847 = distinct !DILexicalBlock(scope: !4840, file: !700, line: 47, column: 7)
!4848 = !DILocation(line: 0, scope: !4840)
!4849 = !DILocation(line: 47, column: 9, scope: !4847)
!4850 = !DILocation(line: 47, column: 14, scope: !4847)
!4851 = !DILocation(line: 0, scope: !4846)
!4852 = !DILocation(line: 57, column: 21, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4846, file: !700, line: 57, column: 11)
!4854 = !DILocation(line: 57, column: 11, scope: !4846)
!4855 = !DILocation(line: 59, column: 11, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4853, file: !700, line: 58, column: 9)
!4857 = !DILocation(line: 59, column: 17, scope: !4856)
!4858 = !DILocation(line: 65, column: 12, scope: !4840)
!4859 = !DILocation(line: 72, column: 3, scope: !4840)
!4860 = !DILocation(line: 73, column: 1, scope: !4840)
!4861 = distinct !DISubprogram(name: "rpl_fclose", scope: !702, file: !702, line: 58, type: !4862, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !4898)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!58, !4864}
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !4866)
!4866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !4867)
!4867 = !{!4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4866, file: !193, line: 51, baseType: !58, size: 32)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4866, file: !193, line: 54, baseType: !53, size: 64, offset: 64)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4866, file: !193, line: 55, baseType: !53, size: 64, offset: 128)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4866, file: !193, line: 56, baseType: !53, size: 64, offset: 192)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4866, file: !193, line: 57, baseType: !53, size: 64, offset: 256)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4866, file: !193, line: 58, baseType: !53, size: 64, offset: 320)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4866, file: !193, line: 59, baseType: !53, size: 64, offset: 384)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4866, file: !193, line: 60, baseType: !53, size: 64, offset: 448)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4866, file: !193, line: 61, baseType: !53, size: 64, offset: 512)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4866, file: !193, line: 64, baseType: !53, size: 64, offset: 576)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4866, file: !193, line: 65, baseType: !53, size: 64, offset: 640)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4866, file: !193, line: 66, baseType: !53, size: 64, offset: 704)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4866, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4866, file: !193, line: 70, baseType: !4882, size: 64, offset: 832)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4866, file: !193, line: 72, baseType: !58, size: 32, offset: 896)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4866, file: !193, line: 73, baseType: !58, size: 32, offset: 928)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4866, file: !193, line: 74, baseType: !102, size: 64, offset: 960)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4866, file: !193, line: 77, baseType: !59, size: 16, offset: 1024)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4866, file: !193, line: 78, baseType: !217, size: 8, offset: 1040)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4866, file: !193, line: 79, baseType: !219, size: 8, offset: 1048)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4866, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4866, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4866, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4866, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4866, file: !193, line: 93, baseType: !4882, size: 64, offset: 1344)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4866, file: !193, line: 94, baseType: !52, size: 64, offset: 1408)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4866, file: !193, line: 95, baseType: !55, size: 64, offset: 1472)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4866, file: !193, line: 96, baseType: !58, size: 32, offset: 1536)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4866, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!4898 = !{!4899, !4900, !4901, !4902}
!4899 = !DILocalVariable(name: "fp", arg: 1, scope: !4861, file: !702, line: 58, type: !4864)
!4900 = !DILocalVariable(name: "saved_errno", scope: !4861, file: !702, line: 60, type: !58)
!4901 = !DILocalVariable(name: "fd", scope: !4861, file: !702, line: 61, type: !58)
!4902 = !DILocalVariable(name: "result", scope: !4861, file: !702, line: 62, type: !58)
!4903 = !DILocation(line: 0, scope: !4861)
!4904 = !DILocation(line: 65, column: 8, scope: !4861)
!4905 = !DILocation(line: 66, column: 10, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4861, file: !702, line: 66, column: 7)
!4907 = !DILocation(line: 66, column: 7, scope: !4861)
!4908 = !DILocation(line: 67, column: 12, scope: !4906)
!4909 = !DILocation(line: 67, column: 5, scope: !4906)
!4910 = !DILocation(line: 72, column: 9, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4861, file: !702, line: 72, column: 7)
!4912 = !DILocation(line: 72, column: 23, scope: !4911)
!4913 = !DILocation(line: 72, column: 33, scope: !4911)
!4914 = !DILocation(line: 72, column: 26, scope: !4911)
!4915 = !DILocation(line: 72, column: 59, scope: !4911)
!4916 = !DILocation(line: 73, column: 7, scope: !4911)
!4917 = !DILocation(line: 73, column: 10, scope: !4911)
!4918 = !DILocation(line: 72, column: 7, scope: !4861)
!4919 = !DILocation(line: 100, column: 12, scope: !4861)
!4920 = !DILocation(line: 105, column: 7, scope: !4861)
!4921 = !DILocation(line: 74, column: 19, scope: !4911)
!4922 = !DILocation(line: 105, column: 19, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4861, file: !702, line: 105, column: 7)
!4924 = !DILocation(line: 107, column: 13, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4923, file: !702, line: 106, column: 5)
!4926 = !DILocation(line: 109, column: 5, scope: !4925)
!4927 = !DILocation(line: 112, column: 1, scope: !4861)
!4928 = !DISubprogram(name: "fclose", scope: !1194, file: !1194, line: 213, type: !4929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{!58, !4882}
!4931 = distinct !DISubprogram(name: "rpl_fflush", scope: !704, file: !704, line: 129, type: !4932, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !4968)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!58, !4934}
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !4936)
!4936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !4937)
!4937 = !{!4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4936, file: !193, line: 51, baseType: !58, size: 32)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4936, file: !193, line: 54, baseType: !53, size: 64, offset: 64)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4936, file: !193, line: 55, baseType: !53, size: 64, offset: 128)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4936, file: !193, line: 56, baseType: !53, size: 64, offset: 192)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4936, file: !193, line: 57, baseType: !53, size: 64, offset: 256)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4936, file: !193, line: 58, baseType: !53, size: 64, offset: 320)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4936, file: !193, line: 59, baseType: !53, size: 64, offset: 384)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4936, file: !193, line: 60, baseType: !53, size: 64, offset: 448)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4936, file: !193, line: 61, baseType: !53, size: 64, offset: 512)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4936, file: !193, line: 64, baseType: !53, size: 64, offset: 576)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4936, file: !193, line: 65, baseType: !53, size: 64, offset: 640)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4936, file: !193, line: 66, baseType: !53, size: 64, offset: 704)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4936, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4936, file: !193, line: 70, baseType: !4952, size: 64, offset: 832)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4936, file: !193, line: 72, baseType: !58, size: 32, offset: 896)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4936, file: !193, line: 73, baseType: !58, size: 32, offset: 928)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4936, file: !193, line: 74, baseType: !102, size: 64, offset: 960)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4936, file: !193, line: 77, baseType: !59, size: 16, offset: 1024)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4936, file: !193, line: 78, baseType: !217, size: 8, offset: 1040)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4936, file: !193, line: 79, baseType: !219, size: 8, offset: 1048)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4936, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4936, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4936, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4936, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4936, file: !193, line: 93, baseType: !4952, size: 64, offset: 1344)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4936, file: !193, line: 94, baseType: !52, size: 64, offset: 1408)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4936, file: !193, line: 95, baseType: !55, size: 64, offset: 1472)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4936, file: !193, line: 96, baseType: !58, size: 32, offset: 1536)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4936, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!4968 = !{!4969}
!4969 = !DILocalVariable(name: "stream", arg: 1, scope: !4931, file: !704, line: 129, type: !4934)
!4970 = !DILocation(line: 0, scope: !4931)
!4971 = !DILocation(line: 150, column: 14, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4931, file: !704, line: 150, column: 7)
!4973 = !DILocation(line: 150, column: 22, scope: !4972)
!4974 = !DILocation(line: 150, column: 27, scope: !4972)
!4975 = !DILocation(line: 150, column: 7, scope: !4931)
!4976 = !DILocation(line: 151, column: 12, scope: !4972)
!4977 = !DILocation(line: 151, column: 5, scope: !4972)
!4978 = !DILocalVariable(name: "fp", arg: 1, scope: !4979, file: !704, line: 41, type: !4934)
!4979 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !704, file: !704, line: 41, type: !4980, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !4982)
!4980 = !DISubroutineType(types: !4981)
!4981 = !{null, !4934}
!4982 = !{!4978}
!4983 = !DILocation(line: 0, scope: !4979, inlinedAt: !4984)
!4984 = distinct !DILocation(line: 156, column: 3, scope: !4931)
!4985 = !DILocation(line: 43, column: 11, scope: !4986, inlinedAt: !4984)
!4986 = distinct !DILexicalBlock(scope: !4979, file: !704, line: 43, column: 7)
!4987 = !{!2130, !1269, i64 0}
!4988 = !DILocation(line: 43, column: 18, scope: !4986, inlinedAt: !4984)
!4989 = !DILocation(line: 43, column: 7, scope: !4979, inlinedAt: !4984)
!4990 = !DILocation(line: 45, column: 5, scope: !4986, inlinedAt: !4984)
!4991 = !DILocation(line: 158, column: 10, scope: !4931)
!4992 = !DILocation(line: 158, column: 3, scope: !4931)
!4993 = !DILocation(line: 235, column: 1, scope: !4931)
!4994 = !DISubprogram(name: "fflush", scope: !1194, file: !1194, line: 218, type: !4995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!58, !4952}
!4997 = distinct !DISubprogram(name: "rpl_fseeko", scope: !706, file: !706, line: 28, type: !4998, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !705, retainedNodes: !5034)
!4998 = !DISubroutineType(types: !4999)
!4999 = !{!58, !5000, !1635, !58}
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !5002)
!5002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !5003)
!5003 = !{!5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5002, file: !193, line: 51, baseType: !58, size: 32)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5002, file: !193, line: 54, baseType: !53, size: 64, offset: 64)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5002, file: !193, line: 55, baseType: !53, size: 64, offset: 128)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5002, file: !193, line: 56, baseType: !53, size: 64, offset: 192)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5002, file: !193, line: 57, baseType: !53, size: 64, offset: 256)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5002, file: !193, line: 58, baseType: !53, size: 64, offset: 320)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5002, file: !193, line: 59, baseType: !53, size: 64, offset: 384)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5002, file: !193, line: 60, baseType: !53, size: 64, offset: 448)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5002, file: !193, line: 61, baseType: !53, size: 64, offset: 512)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5002, file: !193, line: 64, baseType: !53, size: 64, offset: 576)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5002, file: !193, line: 65, baseType: !53, size: 64, offset: 640)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5002, file: !193, line: 66, baseType: !53, size: 64, offset: 704)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5002, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5002, file: !193, line: 70, baseType: !5018, size: 64, offset: 832)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5002, file: !193, line: 72, baseType: !58, size: 32, offset: 896)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5002, file: !193, line: 73, baseType: !58, size: 32, offset: 928)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5002, file: !193, line: 74, baseType: !102, size: 64, offset: 960)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5002, file: !193, line: 77, baseType: !59, size: 16, offset: 1024)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5002, file: !193, line: 78, baseType: !217, size: 8, offset: 1040)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5002, file: !193, line: 79, baseType: !219, size: 8, offset: 1048)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5002, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5002, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5002, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5002, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5002, file: !193, line: 93, baseType: !5018, size: 64, offset: 1344)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5002, file: !193, line: 94, baseType: !52, size: 64, offset: 1408)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5002, file: !193, line: 95, baseType: !55, size: 64, offset: 1472)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5002, file: !193, line: 96, baseType: !58, size: 32, offset: 1536)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5002, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!5034 = !{!5035, !5036, !5037, !5038}
!5035 = !DILocalVariable(name: "fp", arg: 1, scope: !4997, file: !706, line: 28, type: !5000)
!5036 = !DILocalVariable(name: "offset", arg: 2, scope: !4997, file: !706, line: 28, type: !1635)
!5037 = !DILocalVariable(name: "whence", arg: 3, scope: !4997, file: !706, line: 28, type: !58)
!5038 = !DILocalVariable(name: "pos", scope: !5039, file: !706, line: 117, type: !1635)
!5039 = distinct !DILexicalBlock(scope: !5040, file: !706, line: 113, column: 5)
!5040 = distinct !DILexicalBlock(scope: !4997, file: !706, line: 52, column: 7)
!5041 = !DILocation(line: 0, scope: !4997)
!5042 = !DILocation(line: 52, column: 11, scope: !5040)
!5043 = !{!2130, !1123, i64 16}
!5044 = !DILocation(line: 52, column: 31, scope: !5040)
!5045 = !{!2130, !1123, i64 8}
!5046 = !DILocation(line: 52, column: 24, scope: !5040)
!5047 = !DILocation(line: 53, column: 7, scope: !5040)
!5048 = !DILocation(line: 53, column: 14, scope: !5040)
!5049 = !DILocation(line: 53, column: 35, scope: !5040)
!5050 = !{!2130, !1123, i64 32}
!5051 = !DILocation(line: 53, column: 28, scope: !5040)
!5052 = !DILocation(line: 54, column: 7, scope: !5040)
!5053 = !DILocation(line: 54, column: 14, scope: !5040)
!5054 = !{!2130, !1123, i64 72}
!5055 = !DILocation(line: 54, column: 28, scope: !5040)
!5056 = !DILocation(line: 52, column: 7, scope: !4997)
!5057 = !DILocation(line: 117, column: 26, scope: !5039)
!5058 = !DILocation(line: 117, column: 19, scope: !5039)
!5059 = !DILocation(line: 0, scope: !5039)
!5060 = !DILocation(line: 118, column: 15, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5039, file: !706, line: 118, column: 11)
!5062 = !DILocation(line: 118, column: 11, scope: !5039)
!5063 = !DILocation(line: 129, column: 11, scope: !5039)
!5064 = !DILocation(line: 129, column: 18, scope: !5039)
!5065 = !DILocation(line: 130, column: 11, scope: !5039)
!5066 = !DILocation(line: 130, column: 19, scope: !5039)
!5067 = !{!2130, !1213, i64 144}
!5068 = !DILocation(line: 161, column: 7, scope: !5039)
!5069 = !DILocation(line: 163, column: 10, scope: !4997)
!5070 = !DILocation(line: 163, column: 3, scope: !4997)
!5071 = !DILocation(line: 164, column: 1, scope: !4997)
!5072 = !DISubprogram(name: "fseeko", scope: !1194, file: !1194, line: 712, type: !5073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{!58, !5018, !103, !58}
!5075 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !708, file: !708, line: 86, type: !5076, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !5090)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{!55, !5078, !293, !55, !5079}
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5080, size: 64)
!5080 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1678, line: 6, baseType: !5081)
!5081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1680, line: 21, baseType: !5082)
!5082 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1680, line: 13, size: 64, elements: !5083)
!5083 = !{!5084, !5085}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5082, file: !1680, line: 15, baseType: !58, size: 32)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5082, file: !1680, line: 20, baseType: !5086, size: 32, offset: 32)
!5086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5082, file: !1680, line: 16, size: 32, elements: !5087)
!5087 = !{!5088, !5089}
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5086, file: !1680, line: 18, baseType: !7, size: 32)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5086, file: !1680, line: 19, baseType: !1689, size: 32)
!5090 = !{!5091, !5092, !5093, !5094, !5095, !5096, !5097}
!5091 = !DILocalVariable(name: "pwc", arg: 1, scope: !5075, file: !708, line: 86, type: !5078)
!5092 = !DILocalVariable(name: "s", arg: 2, scope: !5075, file: !708, line: 86, type: !293)
!5093 = !DILocalVariable(name: "n", arg: 3, scope: !5075, file: !708, line: 86, type: !55)
!5094 = !DILocalVariable(name: "ps", arg: 4, scope: !5075, file: !708, line: 86, type: !5079)
!5095 = !DILocalVariable(name: "ret", scope: !5075, file: !708, line: 88, type: !55)
!5096 = !DILocalVariable(name: "wc", scope: !5075, file: !708, line: 89, type: !1699)
!5097 = !DILocalVariable(name: "uc", scope: !5098, file: !708, line: 156, type: !60)
!5098 = distinct !DILexicalBlock(scope: !5099, file: !708, line: 155, column: 5)
!5099 = distinct !DILexicalBlock(scope: !5075, file: !708, line: 154, column: 7)
!5100 = !DILocation(line: 0, scope: !5075)
!5101 = !DILocation(line: 89, column: 3, scope: !5075)
!5102 = !DILocation(line: 105, column: 9, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5075, file: !708, line: 105, column: 7)
!5104 = !DILocation(line: 105, column: 7, scope: !5075)
!5105 = !DILocation(line: 145, column: 9, scope: !5075)
!5106 = !DILocation(line: 154, column: 19, scope: !5099)
!5107 = !DILocation(line: 154, column: 26, scope: !5099)
!5108 = !DILocation(line: 154, column: 41, scope: !5099)
!5109 = !DILocation(line: 154, column: 7, scope: !5075)
!5110 = !DILocation(line: 156, column: 26, scope: !5098)
!5111 = !DILocation(line: 0, scope: !5098)
!5112 = !DILocation(line: 157, column: 14, scope: !5098)
!5113 = !DILocation(line: 157, column: 12, scope: !5098)
!5114 = !DILocation(line: 163, column: 1, scope: !5075)
!5115 = !DISubprogram(name: "mbrtowc", scope: !2138, file: !2138, line: 296, type: !5116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!5116 = !DISubroutineType(types: !5117)
!5117 = !{!57, !297, !293, !57, !5118}
!5118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5119 = distinct !DISubprogram(name: "print_and_abort", scope: !423, file: !423, line: 330, type: !427, scopeLine: 331, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !331)
!5120 = !DILocation(line: 340, column: 3, scope: !5119)
!5121 = !DILocation(line: 342, column: 9, scope: !5119)
!5122 = !DILocation(line: 342, column: 3, scope: !5119)
!5123 = distinct !DISubprogram(name: "_obstack_begin", scope: !423, file: !423, line: 150, type: !5124, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !5160)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{!58, !5126, !55, !55, !158, !169}
!5126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5127, size: 64)
!5127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !132, line: 174, size: 704, elements: !5128)
!5128 = !{!5129, !5130, !5137, !5138, !5139, !5140, !5145, !5146, !5151, !5156, !5157, !5158, !5159}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !5127, file: !132, line: 176, baseType: !55, size: 64)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !5127, file: !132, line: 177, baseType: !5131, size: 64, offset: 64)
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !132, line: 167, size: 128, elements: !5133)
!5133 = !{!5134, !5135, !5136}
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !5132, file: !132, line: 169, baseType: !53, size: 64)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !5132, file: !132, line: 170, baseType: !5131, size: 64, offset: 64)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !5132, file: !132, line: 171, baseType: !142, offset: 128)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !5127, file: !132, line: 178, baseType: !53, size: 64, offset: 128)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !5127, file: !132, line: 179, baseType: !53, size: 64, offset: 192)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !5127, file: !132, line: 180, baseType: !53, size: 64, offset: 256)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !5127, file: !132, line: 185, baseType: !5141, size: 64, offset: 320)
!5141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5127, file: !132, line: 181, size: 64, elements: !5142)
!5142 = !{!5143, !5144}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !5141, file: !132, line: 183, baseType: !55, size: 64)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5141, file: !132, line: 184, baseType: !52, size: 64)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !5127, file: !132, line: 186, baseType: !55, size: 64, offset: 384)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !5127, file: !132, line: 193, baseType: !5147, size: 64, offset: 448)
!5147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5127, file: !132, line: 189, size: 64, elements: !5148)
!5148 = !{!5149, !5150}
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !5147, file: !132, line: 191, baseType: !158, size: 64)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5147, file: !132, line: 192, baseType: !162, size: 64)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !5127, file: !132, line: 198, baseType: !5152, size: 64, offset: 512)
!5152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5127, file: !132, line: 194, size: 64, elements: !5153)
!5153 = !{!5154, !5155}
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !5152, file: !132, line: 196, baseType: !169, size: 64)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5152, file: !132, line: 197, baseType: !173, size: 64)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !5127, file: !132, line: 200, baseType: !52, size: 64, offset: 576)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !5127, file: !132, line: 201, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !5127, file: !132, line: 202, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !5127, file: !132, line: 206, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!5160 = !{!5161, !5162, !5163, !5164, !5165}
!5161 = !DILocalVariable(name: "h", arg: 1, scope: !5123, file: !423, line: 150, type: !5126)
!5162 = !DILocalVariable(name: "size", arg: 2, scope: !5123, file: !423, line: 151, type: !55)
!5163 = !DILocalVariable(name: "alignment", arg: 3, scope: !5123, file: !423, line: 151, type: !55)
!5164 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !5123, file: !423, line: 152, type: !158)
!5165 = !DILocalVariable(name: "freefun", arg: 5, scope: !5123, file: !423, line: 153, type: !169)
!5166 = !DILocation(line: 0, scope: !5123)
!5167 = !DILocation(line: 155, column: 15, scope: !5123)
!5168 = !DILocation(line: 155, column: 21, scope: !5123)
!5169 = !DILocation(line: 156, column: 14, scope: !5123)
!5170 = !DILocation(line: 156, column: 20, scope: !5123)
!5171 = !DILocation(line: 157, column: 6, scope: !5123)
!5172 = !DILocation(line: 157, column: 20, scope: !5123)
!5173 = !DILocalVariable(name: "h", arg: 1, scope: !5174, file: !423, line: 109, type: !5126)
!5174 = distinct !DISubprogram(name: "_obstack_begin_worker", scope: !423, file: !423, line: 109, type: !5175, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !5177)
!5175 = !DISubroutineType(types: !5176)
!5176 = !{!58, !5126, !55, !55}
!5177 = !{!5173, !5178, !5179, !5180, !5181}
!5178 = !DILocalVariable(name: "size", arg: 2, scope: !5174, file: !423, line: 110, type: !55)
!5179 = !DILocalVariable(name: "alignment", arg: 3, scope: !5174, file: !423, line: 110, type: !55)
!5180 = !DILocalVariable(name: "chunk", scope: !5174, file: !423, line: 112, type: !5131)
!5181 = !DILocalVariable(name: "extra", scope: !5182, file: !423, line: 127, type: !58)
!5182 = distinct !DILexicalBlock(scope: !5183, file: !423, line: 118, column: 5)
!5183 = distinct !DILexicalBlock(scope: !5174, file: !423, line: 116, column: 7)
!5184 = !DILocation(line: 0, scope: !5174, inlinedAt: !5185)
!5185 = distinct !DILocation(line: 158, column: 10, scope: !5123)
!5186 = !DILocation(line: 114, column: 17, scope: !5187, inlinedAt: !5185)
!5187 = distinct !DILexicalBlock(scope: !5174, file: !423, line: 114, column: 7)
!5188 = !DILocation(line: 114, column: 7, scope: !5174, inlinedAt: !5185)
!5189 = !DILocation(line: 116, column: 12, scope: !5183, inlinedAt: !5185)
!5190 = !DILocation(line: 116, column: 7, scope: !5174, inlinedAt: !5185)
!5191 = !DILocation(line: 133, column: 6, scope: !5174, inlinedAt: !5185)
!5192 = !DILocation(line: 133, column: 17, scope: !5174, inlinedAt: !5185)
!5193 = !{!1322, !1213, i64 0}
!5194 = !DILocation(line: 134, column: 33, scope: !5174, inlinedAt: !5185)
!5195 = !DILocation(line: 134, column: 6, scope: !5174, inlinedAt: !5185)
!5196 = !DILocation(line: 134, column: 21, scope: !5174, inlinedAt: !5185)
!5197 = !DILocalVariable(name: "h", arg: 1, scope: !5198, file: !423, line: 84, type: !5126)
!5198 = distinct !DISubprogram(name: "call_chunkfun", scope: !423, file: !423, line: 84, type: !5199, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !5201)
!5199 = !DISubroutineType(types: !5200)
!5200 = !{!52, !5126, !55}
!5201 = !{!5197, !5202}
!5202 = !DILocalVariable(name: "size", arg: 2, scope: !5198, file: !423, line: 84, type: !55)
!5203 = !DILocation(line: 0, scope: !5198, inlinedAt: !5204)
!5204 = distinct !DILocation(line: 136, column: 22, scope: !5174, inlinedAt: !5185)
!5205 = !DILocation(line: 89, column: 12, scope: !5206, inlinedAt: !5204)
!5206 = distinct !DILexicalBlock(scope: !5198, file: !423, line: 86, column: 7)
!5207 = !DILocation(line: 136, column: 14, scope: !5174, inlinedAt: !5185)
!5208 = !DILocation(line: 136, column: 20, scope: !5174, inlinedAt: !5185)
!5209 = !DILocation(line: 137, column: 8, scope: !5210, inlinedAt: !5185)
!5210 = distinct !DILexicalBlock(scope: !5174, file: !423, line: 137, column: 7)
!5211 = !DILocation(line: 137, column: 7, scope: !5174, inlinedAt: !5185)
!5212 = !DILocation(line: 138, column: 7, scope: !5210, inlinedAt: !5185)
!5213 = !DILocation(line: 138, column: 5, scope: !5210, inlinedAt: !5185)
!5214 = !DILocation(line: 139, column: 35, scope: !5174, inlinedAt: !5185)
!5215 = !DILocation(line: 139, column: 21, scope: !5174, inlinedAt: !5185)
!5216 = !DILocation(line: 139, column: 33, scope: !5174, inlinedAt: !5185)
!5217 = !DILocation(line: 139, column: 6, scope: !5174, inlinedAt: !5185)
!5218 = !DILocation(line: 139, column: 16, scope: !5174, inlinedAt: !5185)
!5219 = !DILocation(line: 141, column: 55, scope: !5174, inlinedAt: !5185)
!5220 = !DILocation(line: 141, column: 50, scope: !5174, inlinedAt: !5185)
!5221 = !DILocation(line: 141, column: 27, scope: !5174, inlinedAt: !5185)
!5222 = !DILocation(line: 141, column: 33, scope: !5174, inlinedAt: !5185)
!5223 = !DILocation(line: 141, column: 6, scope: !5174, inlinedAt: !5185)
!5224 = !DILocation(line: 141, column: 18, scope: !5174, inlinedAt: !5185)
!5225 = !DILocation(line: 142, column: 10, scope: !5174, inlinedAt: !5185)
!5226 = !DILocation(line: 142, column: 15, scope: !5174, inlinedAt: !5185)
!5227 = !DILocation(line: 144, column: 25, scope: !5174, inlinedAt: !5185)
!5228 = !DILocation(line: 145, column: 19, scope: !5174, inlinedAt: !5185)
!5229 = !DILocation(line: 158, column: 3, scope: !5123)
!5230 = distinct !DISubprogram(name: "_obstack_begin_1", scope: !423, file: !423, line: 162, type: !5231, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !5233)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{!58, !5126, !55, !55, !162, !173, !52}
!5233 = !{!5234, !5235, !5236, !5237, !5238, !5239}
!5234 = !DILocalVariable(name: "h", arg: 1, scope: !5230, file: !423, line: 162, type: !5126)
!5235 = !DILocalVariable(name: "size", arg: 2, scope: !5230, file: !423, line: 163, type: !55)
!5236 = !DILocalVariable(name: "alignment", arg: 3, scope: !5230, file: !423, line: 163, type: !55)
!5237 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !5230, file: !423, line: 164, type: !162)
!5238 = !DILocalVariable(name: "freefun", arg: 5, scope: !5230, file: !423, line: 165, type: !173)
!5239 = !DILocalVariable(name: "arg", arg: 6, scope: !5230, file: !423, line: 166, type: !52)
!5240 = !DILocation(line: 0, scope: !5230)
!5241 = !DILocation(line: 168, column: 6, scope: !5230)
!5242 = !DILocation(line: 168, column: 15, scope: !5230)
!5243 = !DILocation(line: 168, column: 21, scope: !5230)
!5244 = !DILocation(line: 169, column: 6, scope: !5230)
!5245 = !DILocation(line: 169, column: 14, scope: !5230)
!5246 = !DILocation(line: 169, column: 20, scope: !5230)
!5247 = !DILocation(line: 170, column: 6, scope: !5230)
!5248 = !DILocation(line: 170, column: 16, scope: !5230)
!5249 = !{!1322, !1123, i64 72}
!5250 = !DILocation(line: 171, column: 6, scope: !5230)
!5251 = !DILocation(line: 171, column: 20, scope: !5230)
!5252 = !DILocation(line: 0, scope: !5174, inlinedAt: !5253)
!5253 = distinct !DILocation(line: 172, column: 10, scope: !5230)
!5254 = !DILocation(line: 114, column: 17, scope: !5187, inlinedAt: !5253)
!5255 = !DILocation(line: 114, column: 7, scope: !5174, inlinedAt: !5253)
!5256 = !DILocation(line: 116, column: 12, scope: !5183, inlinedAt: !5253)
!5257 = !DILocation(line: 116, column: 7, scope: !5174, inlinedAt: !5253)
!5258 = !DILocation(line: 133, column: 6, scope: !5174, inlinedAt: !5253)
!5259 = !DILocation(line: 133, column: 17, scope: !5174, inlinedAt: !5253)
!5260 = !DILocation(line: 134, column: 33, scope: !5174, inlinedAt: !5253)
!5261 = !DILocation(line: 134, column: 6, scope: !5174, inlinedAt: !5253)
!5262 = !DILocation(line: 134, column: 21, scope: !5174, inlinedAt: !5253)
!5263 = !DILocation(line: 0, scope: !5198, inlinedAt: !5264)
!5264 = distinct !DILocation(line: 136, column: 22, scope: !5174, inlinedAt: !5253)
!5265 = !DILocation(line: 87, column: 12, scope: !5206, inlinedAt: !5264)
!5266 = !DILocation(line: 136, column: 14, scope: !5174, inlinedAt: !5253)
!5267 = !DILocation(line: 136, column: 20, scope: !5174, inlinedAt: !5253)
!5268 = !DILocation(line: 137, column: 8, scope: !5210, inlinedAt: !5253)
!5269 = !DILocation(line: 137, column: 7, scope: !5174, inlinedAt: !5253)
!5270 = !DILocation(line: 138, column: 7, scope: !5210, inlinedAt: !5253)
!5271 = !DILocation(line: 138, column: 5, scope: !5210, inlinedAt: !5253)
!5272 = !DILocation(line: 139, column: 35, scope: !5174, inlinedAt: !5253)
!5273 = !DILocation(line: 139, column: 21, scope: !5174, inlinedAt: !5253)
!5274 = !DILocation(line: 139, column: 33, scope: !5174, inlinedAt: !5253)
!5275 = !DILocation(line: 139, column: 6, scope: !5174, inlinedAt: !5253)
!5276 = !DILocation(line: 139, column: 16, scope: !5174, inlinedAt: !5253)
!5277 = !DILocation(line: 141, column: 55, scope: !5174, inlinedAt: !5253)
!5278 = !DILocation(line: 141, column: 50, scope: !5174, inlinedAt: !5253)
!5279 = !DILocation(line: 141, column: 27, scope: !5174, inlinedAt: !5253)
!5280 = !DILocation(line: 141, column: 33, scope: !5174, inlinedAt: !5253)
!5281 = !DILocation(line: 141, column: 6, scope: !5174, inlinedAt: !5253)
!5282 = !DILocation(line: 141, column: 18, scope: !5174, inlinedAt: !5253)
!5283 = !DILocation(line: 142, column: 10, scope: !5174, inlinedAt: !5253)
!5284 = !DILocation(line: 142, column: 15, scope: !5174, inlinedAt: !5253)
!5285 = !DILocation(line: 144, column: 25, scope: !5174, inlinedAt: !5253)
!5286 = !DILocation(line: 145, column: 19, scope: !5174, inlinedAt: !5253)
!5287 = !DILocation(line: 172, column: 3, scope: !5230)
!5288 = distinct !DISubprogram(name: "_obstack_newchunk", scope: !423, file: !423, line: 182, type: !5289, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !5291)
!5289 = !DISubroutineType(types: !5290)
!5290 = !{null, !5126, !55}
!5291 = !{!5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300}
!5292 = !DILocalVariable(name: "h", arg: 1, scope: !5288, file: !423, line: 182, type: !5126)
!5293 = !DILocalVariable(name: "length", arg: 2, scope: !5288, file: !423, line: 182, type: !55)
!5294 = !DILocalVariable(name: "old_chunk", scope: !5288, file: !423, line: 184, type: !5131)
!5295 = !DILocalVariable(name: "new_chunk", scope: !5288, file: !423, line: 185, type: !5131)
!5296 = !DILocalVariable(name: "obj_size", scope: !5288, file: !423, line: 186, type: !55)
!5297 = !DILocalVariable(name: "object_base", scope: !5288, file: !423, line: 187, type: !53)
!5298 = !DILocalVariable(name: "sum1", scope: !5288, file: !423, line: 190, type: !55)
!5299 = !DILocalVariable(name: "sum2", scope: !5288, file: !423, line: 191, type: !55)
!5300 = !DILocalVariable(name: "new_size", scope: !5288, file: !423, line: 192, type: !55)
!5301 = !DILocation(line: 0, scope: !5288)
!5302 = !DILocation(line: 184, column: 41, scope: !5288)
!5303 = !DILocation(line: 186, column: 24, scope: !5288)
!5304 = !DILocation(line: 186, column: 39, scope: !5288)
!5305 = !DILocation(line: 186, column: 34, scope: !5288)
!5306 = !DILocation(line: 190, column: 26, scope: !5288)
!5307 = !DILocation(line: 191, column: 27, scope: !5288)
!5308 = !DILocation(line: 191, column: 22, scope: !5288)
!5309 = !DILocation(line: 192, column: 38, scope: !5288)
!5310 = !DILocation(line: 192, column: 26, scope: !5288)
!5311 = !DILocation(line: 192, column: 44, scope: !5288)
!5312 = !DILocation(line: 193, column: 16, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5288, file: !423, line: 193, column: 7)
!5314 = !DILocation(line: 193, column: 7, scope: !5288)
!5315 = !DILocation(line: 195, column: 21, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5288, file: !423, line: 195, column: 7)
!5317 = !DILocation(line: 195, column: 16, scope: !5316)
!5318 = !DILocation(line: 195, column: 7, scope: !5288)
!5319 = !DILocation(line: 199, column: 16, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5288, file: !423, line: 199, column: 7)
!5321 = !DILocation(line: 199, column: 24, scope: !5320)
!5322 = !DILocation(line: 0, scope: !5198, inlinedAt: !5323)
!5323 = distinct !DILocation(line: 200, column: 17, scope: !5320)
!5324 = !DILocation(line: 86, column: 10, scope: !5206, inlinedAt: !5323)
!5325 = !DILocation(line: 86, column: 7, scope: !5206, inlinedAt: !5323)
!5326 = !DILocation(line: 86, column: 7, scope: !5198, inlinedAt: !5323)
!5327 = !DILocation(line: 87, column: 15, scope: !5206, inlinedAt: !5323)
!5328 = !DILocation(line: 87, column: 24, scope: !5206, inlinedAt: !5323)
!5329 = !DILocation(line: 87, column: 34, scope: !5206, inlinedAt: !5323)
!5330 = !DILocation(line: 87, column: 12, scope: !5206, inlinedAt: !5323)
!5331 = !DILocation(line: 87, column: 5, scope: !5206, inlinedAt: !5323)
!5332 = !DILocation(line: 89, column: 24, scope: !5206, inlinedAt: !5323)
!5333 = !DILocation(line: 89, column: 12, scope: !5206, inlinedAt: !5323)
!5334 = !DILocation(line: 89, column: 5, scope: !5206, inlinedAt: !5323)
!5335 = !DILocation(line: 0, scope: !5206, inlinedAt: !5323)
!5336 = !DILocation(line: 201, column: 8, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5288, file: !423, line: 201, column: 7)
!5338 = !DILocation(line: 201, column: 7, scope: !5288)
!5339 = !DILocation(line: 202, column: 7, scope: !5337)
!5340 = !DILocation(line: 202, column: 5, scope: !5337)
!5341 = !DILocation(line: 203, column: 12, scope: !5288)
!5342 = !DILocation(line: 204, column: 14, scope: !5288)
!5343 = !DILocation(line: 204, column: 19, scope: !5288)
!5344 = !DILocation(line: 205, column: 58, scope: !5288)
!5345 = !DILocation(line: 205, column: 25, scope: !5288)
!5346 = !DILocation(line: 205, column: 37, scope: !5288)
!5347 = !DILocation(line: 205, column: 14, scope: !5288)
!5348 = !DILocation(line: 205, column: 20, scope: !5288)
!5349 = !DILocation(line: 209, column: 5, scope: !5288)
!5350 = !DILocation(line: 212, column: 27, scope: !5288)
!5351 = !DILocalVariable(name: "__dest", arg: 1, scope: !5352, file: !1983, line: 26, type: !2507)
!5352 = distinct !DISubprogram(name: "memcpy", scope: !1983, file: !1983, line: 26, type: !2505, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !5353)
!5353 = !{!5351, !5354, !5355}
!5354 = !DILocalVariable(name: "__src", arg: 2, scope: !5352, file: !1983, line: 26, type: !2508)
!5355 = !DILocalVariable(name: "__len", arg: 3, scope: !5352, file: !1983, line: 26, type: !55)
!5356 = !DILocation(line: 0, scope: !5352, inlinedAt: !5357)
!5357 = distinct !DILocation(line: 212, column: 3, scope: !5288)
!5358 = !DILocation(line: 29, column: 10, scope: !5352, inlinedAt: !5357)
!5359 = !DILocation(line: 217, column: 11, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5288, file: !423, line: 217, column: 7)
!5361 = !DILocation(line: 217, column: 8, scope: !5360)
!5362 = !DILocation(line: 218, column: 7, scope: !5360)
!5363 = !DILocation(line: 218, column: 14, scope: !5360)
!5364 = !DILocation(line: 219, column: 14, scope: !5360)
!5365 = !DILocation(line: 219, column: 11, scope: !5360)
!5366 = !DILocation(line: 217, column: 7, scope: !5288)
!5367 = !DILocation(line: 222, column: 36, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5360, file: !423, line: 221, column: 5)
!5369 = !DILocation(line: 222, column: 23, scope: !5368)
!5370 = !DILocation(line: 223, column: 24, scope: !5368)
!5371 = !DILocalVariable(name: "h", arg: 1, scope: !5372, file: !423, line: 93, type: !5126)
!5372 = distinct !DISubprogram(name: "call_freefun", scope: !423, file: !423, line: 93, type: !5373, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !5375)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{null, !5126, !52}
!5375 = !{!5371, !5376}
!5376 = !DILocalVariable(name: "old_chunk", arg: 2, scope: !5372, file: !423, line: 93, type: !52)
!5377 = !DILocation(line: 0, scope: !5372, inlinedAt: !5378)
!5378 = distinct !DILocation(line: 223, column: 7, scope: !5368)
!5379 = !DILocation(line: 95, column: 10, scope: !5380, inlinedAt: !5378)
!5380 = distinct !DILexicalBlock(scope: !5372, file: !423, line: 95, column: 7)
!5381 = !DILocation(line: 95, column: 7, scope: !5380, inlinedAt: !5378)
!5382 = !DILocation(line: 95, column: 7, scope: !5372, inlinedAt: !5378)
!5383 = !DILocation(line: 96, column: 8, scope: !5380, inlinedAt: !5378)
!5384 = !DILocation(line: 96, column: 16, scope: !5380, inlinedAt: !5378)
!5385 = !DILocation(line: 96, column: 26, scope: !5380, inlinedAt: !5378)
!5386 = !DILocation(line: 96, column: 5, scope: !5380, inlinedAt: !5378)
!5387 = !DILocation(line: 98, column: 16, scope: !5380, inlinedAt: !5378)
!5388 = !DILocation(line: 98, column: 5, scope: !5380, inlinedAt: !5378)
!5389 = !DILocation(line: 226, column: 18, scope: !5288)
!5390 = !DILocation(line: 227, column: 33, scope: !5288)
!5391 = !DILocation(line: 227, column: 16, scope: !5288)
!5392 = !DILocation(line: 229, column: 25, scope: !5288)
!5393 = !DILocation(line: 230, column: 1, scope: !5288)
!5394 = distinct !DISubprogram(name: "_obstack_allocated_p", scope: !423, file: !423, line: 241, type: !5395, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !5397)
!5395 = !DISubroutineType(types: !5396)
!5396 = !{!58, !5126, !52}
!5397 = !{!5398, !5399, !5400, !5401}
!5398 = !DILocalVariable(name: "h", arg: 1, scope: !5394, file: !423, line: 241, type: !5126)
!5399 = !DILocalVariable(name: "obj", arg: 2, scope: !5394, file: !423, line: 241, type: !52)
!5400 = !DILocalVariable(name: "lp", scope: !5394, file: !423, line: 243, type: !5131)
!5401 = !DILocalVariable(name: "plp", scope: !5394, file: !423, line: 244, type: !5131)
!5402 = !DILocation(line: 0, scope: !5394)
!5403 = !DILocation(line: 246, column: 13, scope: !5394)
!5404 = !DILocation(line: 250, column: 13, scope: !5394)
!5405 = !DILocation(line: 250, column: 18, scope: !5394)
!5406 = !DILocation(line: 250, column: 22, scope: !5394)
!5407 = !DILocation(line: 250, column: 34, scope: !5394)
!5408 = !DILocation(line: 250, column: 41, scope: !5394)
!5409 = !DILocation(line: 250, column: 59, scope: !5394)
!5410 = !DILocation(line: 250, column: 65, scope: !5394)
!5411 = !DILocation(line: 250, column: 3, scope: !5394)
!5412 = !DILocation(line: 252, column: 17, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5394, file: !423, line: 251, column: 5)
!5414 = distinct !{!5414, !5411, !5415, !1169}
!5415 = !DILocation(line: 254, column: 5, scope: !5394)
!5416 = !DILocation(line: 255, column: 3, scope: !5394)
!5417 = distinct !DISubprogram(name: "_obstack_free", scope: !423, file: !423, line: 262, type: !5373, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !5418)
!5418 = !{!5419, !5420, !5421, !5422}
!5419 = !DILocalVariable(name: "h", arg: 1, scope: !5417, file: !423, line: 262, type: !5126)
!5420 = !DILocalVariable(name: "obj", arg: 2, scope: !5417, file: !423, line: 262, type: !52)
!5421 = !DILocalVariable(name: "lp", scope: !5417, file: !423, line: 264, type: !5131)
!5422 = !DILocalVariable(name: "plp", scope: !5417, file: !423, line: 265, type: !5131)
!5423 = !DILocation(line: 0, scope: !5417)
!5424 = !DILocation(line: 267, column: 11, scope: !5417)
!5425 = !DILocation(line: 271, column: 13, scope: !5417)
!5426 = !DILocation(line: 271, column: 18, scope: !5417)
!5427 = !DILocation(line: 271, column: 22, scope: !5417)
!5428 = !DILocation(line: 271, column: 34, scope: !5417)
!5429 = !DILocation(line: 271, column: 41, scope: !5417)
!5430 = !DILocation(line: 271, column: 59, scope: !5417)
!5431 = !DILocation(line: 271, column: 65, scope: !5417)
!5432 = !DILocation(line: 271, column: 3, scope: !5417)
!5433 = !DILocation(line: 273, column: 17, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5417, file: !423, line: 272, column: 5)
!5435 = !DILocation(line: 0, scope: !5372, inlinedAt: !5436)
!5436 = distinct !DILocation(line: 274, column: 7, scope: !5434)
!5437 = !DILocation(line: 95, column: 10, scope: !5380, inlinedAt: !5436)
!5438 = !DILocation(line: 95, column: 7, scope: !5380, inlinedAt: !5436)
!5439 = !DILocation(line: 95, column: 7, scope: !5372, inlinedAt: !5436)
!5440 = !DILocation(line: 96, column: 16, scope: !5380, inlinedAt: !5436)
!5441 = !DILocation(line: 96, column: 26, scope: !5380, inlinedAt: !5436)
!5442 = !DILocation(line: 96, column: 5, scope: !5380, inlinedAt: !5436)
!5443 = !DILocation(line: 98, column: 16, scope: !5380, inlinedAt: !5436)
!5444 = !DILocation(line: 98, column: 5, scope: !5380, inlinedAt: !5436)
!5445 = !DILocation(line: 278, column: 29, scope: !5434)
!5446 = distinct !{!5446, !5432, !5447, !1169}
!5447 = !DILocation(line: 279, column: 5, scope: !5417)
!5448 = !DILocation(line: 282, column: 27, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5450, file: !423, line: 281, column: 5)
!5450 = distinct !DILexicalBlock(scope: !5417, file: !423, line: 280, column: 7)
!5451 = !DILocation(line: 282, column: 37, scope: !5449)
!5452 = !DILocation(line: 282, column: 10, scope: !5449)
!5453 = !DILocation(line: 282, column: 22, scope: !5449)
!5454 = !DILocation(line: 283, column: 28, scope: !5449)
!5455 = !DILocation(line: 283, column: 10, scope: !5449)
!5456 = !DILocation(line: 283, column: 22, scope: !5449)
!5457 = !DILocation(line: 284, column: 16, scope: !5449)
!5458 = !DILocation(line: 285, column: 5, scope: !5449)
!5459 = !DILocation(line: 286, column: 16, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5450, file: !423, line: 286, column: 12)
!5461 = !DILocation(line: 286, column: 12, scope: !5450)
!5462 = !DILocation(line: 288, column: 5, scope: !5460)
!5463 = !DILocation(line: 289, column: 1, scope: !5417)
!5464 = distinct !DISubprogram(name: "_obstack_memory_used", scope: !423, file: !423, line: 292, type: !5465, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !5467)
!5465 = !DISubroutineType(types: !5466)
!5466 = !{!55, !5126}
!5467 = !{!5468, !5469, !5470}
!5468 = !DILocalVariable(name: "h", arg: 1, scope: !5464, file: !423, line: 292, type: !5126)
!5469 = !DILocalVariable(name: "lp", scope: !5464, file: !423, line: 294, type: !5131)
!5470 = !DILocalVariable(name: "nbytes", scope: !5464, file: !423, line: 295, type: !55)
!5471 = !DILocation(line: 0, scope: !5464)
!5472 = !DILocation(line: 297, column: 16, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5464, file: !423, line: 297, column: 3)
!5474 = !DILocation(line: 0, scope: !5473)
!5475 = !DILocation(line: 297, column: 26, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5473, file: !423, line: 297, column: 3)
!5477 = !DILocation(line: 297, column: 3, scope: !5473)
!5478 = !DILocation(line: 299, column: 21, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5476, file: !423, line: 298, column: 5)
!5480 = !DILocation(line: 299, column: 27, scope: !5479)
!5481 = !DILocation(line: 299, column: 14, scope: !5479)
!5482 = !DILocation(line: 297, column: 41, scope: !5476)
!5483 = distinct !{!5483, !5477, !5484, !1169}
!5484 = !DILocation(line: 300, column: 5, scope: !5473)
!5485 = !DILocation(line: 301, column: 3, scope: !5464)
!5486 = distinct !DISubprogram(name: "close_stream", scope: !711, file: !711, line: 56, type: !5487, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !5523)
!5487 = !DISubroutineType(types: !5488)
!5488 = !{!58, !5489}
!5489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5490, size: 64)
!5490 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 7, baseType: !5491)
!5491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 49, size: 1728, elements: !5492)
!5492 = !{!5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5505, !5506, !5508, !5509, !5510, !5511, !5512, !5513, !5514, !5515, !5516, !5517, !5518, !5519, !5520, !5521, !5522}
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5491, file: !193, line: 51, baseType: !58, size: 32)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5491, file: !193, line: 54, baseType: !53, size: 64, offset: 64)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5491, file: !193, line: 55, baseType: !53, size: 64, offset: 128)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5491, file: !193, line: 56, baseType: !53, size: 64, offset: 192)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5491, file: !193, line: 57, baseType: !53, size: 64, offset: 256)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5491, file: !193, line: 58, baseType: !53, size: 64, offset: 320)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5491, file: !193, line: 59, baseType: !53, size: 64, offset: 384)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5491, file: !193, line: 60, baseType: !53, size: 64, offset: 448)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5491, file: !193, line: 61, baseType: !53, size: 64, offset: 512)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5491, file: !193, line: 64, baseType: !53, size: 64, offset: 576)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5491, file: !193, line: 65, baseType: !53, size: 64, offset: 640)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5491, file: !193, line: 66, baseType: !53, size: 64, offset: 704)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5491, file: !193, line: 68, baseType: !208, size: 64, offset: 768)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5491, file: !193, line: 70, baseType: !5507, size: 64, offset: 832)
!5507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5491, size: 64)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5491, file: !193, line: 72, baseType: !58, size: 32, offset: 896)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5491, file: !193, line: 73, baseType: !58, size: 32, offset: 928)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5491, file: !193, line: 74, baseType: !102, size: 64, offset: 960)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5491, file: !193, line: 77, baseType: !59, size: 16, offset: 1024)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5491, file: !193, line: 78, baseType: !217, size: 8, offset: 1040)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5491, file: !193, line: 79, baseType: !219, size: 8, offset: 1048)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5491, file: !193, line: 81, baseType: !223, size: 64, offset: 1088)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5491, file: !193, line: 89, baseType: !226, size: 64, offset: 1152)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5491, file: !193, line: 91, baseType: !228, size: 64, offset: 1216)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5491, file: !193, line: 92, baseType: !231, size: 64, offset: 1280)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5491, file: !193, line: 93, baseType: !5507, size: 64, offset: 1344)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5491, file: !193, line: 94, baseType: !52, size: 64, offset: 1408)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5491, file: !193, line: 95, baseType: !55, size: 64, offset: 1472)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5491, file: !193, line: 96, baseType: !58, size: 32, offset: 1536)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5491, file: !193, line: 98, baseType: !238, size: 160, offset: 1568)
!5523 = !{!5524, !5525, !5527, !5528}
!5524 = !DILocalVariable(name: "stream", arg: 1, scope: !5486, file: !711, line: 56, type: !5489)
!5525 = !DILocalVariable(name: "some_pending", scope: !5486, file: !711, line: 58, type: !5526)
!5526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!5527 = !DILocalVariable(name: "prev_fail", scope: !5486, file: !711, line: 59, type: !5526)
!5528 = !DILocalVariable(name: "fclose_fail", scope: !5486, file: !711, line: 60, type: !5526)
!5529 = !DILocation(line: 0, scope: !5486)
!5530 = !DILocation(line: 58, column: 30, scope: !5486)
!5531 = !DILocalVariable(name: "__stream", arg: 1, scope: !5532, file: !2124, line: 135, type: !5489)
!5532 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2124, file: !2124, line: 135, type: !5487, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !5533)
!5533 = !{!5531}
!5534 = !DILocation(line: 0, scope: !5532, inlinedAt: !5535)
!5535 = distinct !DILocation(line: 59, column: 27, scope: !5486)
!5536 = !DILocation(line: 137, column: 10, scope: !5532, inlinedAt: !5535)
!5537 = !DILocation(line: 59, column: 43, scope: !5486)
!5538 = !DILocation(line: 60, column: 29, scope: !5486)
!5539 = !DILocation(line: 60, column: 45, scope: !5486)
!5540 = !DILocation(line: 70, column: 17, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5486, file: !711, line: 70, column: 7)
!5542 = !DILocation(line: 58, column: 50, scope: !5486)
!5543 = !DILocation(line: 70, column: 33, scope: !5541)
!5544 = !DILocation(line: 70, column: 53, scope: !5541)
!5545 = !DILocation(line: 70, column: 59, scope: !5541)
!5546 = !DILocation(line: 70, column: 7, scope: !5486)
!5547 = !DILocation(line: 72, column: 11, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5541, file: !711, line: 71, column: 5)
!5549 = !DILocation(line: 73, column: 9, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5548, file: !711, line: 72, column: 11)
!5551 = !DILocation(line: 73, column: 15, scope: !5550)
!5552 = !DILocation(line: 78, column: 1, scope: !5486)
!5553 = distinct !DISubprogram(name: "hard_locale", scope: !713, file: !713, line: 27, type: !5554, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !5556)
!5554 = !DISubroutineType(types: !5555)
!5555 = !{!72, !58}
!5556 = !{!5557, !5558}
!5557 = !DILocalVariable(name: "category", arg: 1, scope: !5553, file: !713, line: 27, type: !58)
!5558 = !DILocalVariable(name: "locale", scope: !5553, file: !713, line: 29, type: !5559)
!5559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 2056, elements: !5560)
!5560 = !{!5561}
!5561 = !DISubrange(count: 257)
!5562 = !DILocation(line: 0, scope: !5553)
!5563 = !DILocation(line: 29, column: 3, scope: !5553)
!5564 = !DILocation(line: 29, column: 8, scope: !5553)
!5565 = !DILocation(line: 31, column: 7, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5553, file: !713, line: 31, column: 7)
!5567 = !DILocation(line: 31, column: 7, scope: !5553)
!5568 = !DILocation(line: 34, column: 12, scope: !5553)
!5569 = !DILocation(line: 34, column: 38, scope: !5553)
!5570 = !DILocation(line: 34, column: 41, scope: !5553)
!5571 = !DILocation(line: 34, column: 66, scope: !5553)
!5572 = !DILocation(line: 35, column: 1, scope: !5553)
!5573 = distinct !DISubprogram(name: "locale_charset", scope: !715, file: !715, line: 831, type: !5574, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !5576)
!5574 = !DISubroutineType(types: !5575)
!5575 = !{!293}
!5576 = !{!5577}
!5577 = !DILocalVariable(name: "codeset", scope: !5573, file: !715, line: 833, type: !293)
!5578 = !DILocation(line: 847, column: 13, scope: !5573)
!5579 = !DILocation(line: 0, scope: !5573)
!5580 = !DILocation(line: 911, column: 15, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5573, file: !715, line: 911, column: 7)
!5582 = !DILocation(line: 911, column: 7, scope: !5573)
!5583 = !DILocation(line: 1070, column: 13, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5585, file: !715, line: 1070, column: 13)
!5585 = distinct !DILexicalBlock(scope: !5586, file: !715, line: 1060, column: 7)
!5586 = distinct !DILexicalBlock(scope: !5573, file: !715, line: 1019, column: 3)
!5587 = !DILocation(line: 1070, column: 24, scope: !5584)
!5588 = !DILocation(line: 1070, column: 13, scope: !5585)
!5589 = !DILocation(line: 1158, column: 3, scope: !5573)
!5590 = !DISubprogram(name: "nl_langinfo", scope: !718, file: !718, line: 661, type: !5591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !331)
!5591 = !DISubroutineType(types: !5592)
!5592 = !{!53, !58}
!5593 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1104, file: !1104, line: 269, type: !5594, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5596)
!5594 = !DISubroutineType(types: !5595)
!5595 = !{!58, !58, !53, !55}
!5596 = !{!5597, !5598, !5599}
!5597 = !DILocalVariable(name: "category", arg: 1, scope: !5593, file: !1104, line: 269, type: !58)
!5598 = !DILocalVariable(name: "buf", arg: 2, scope: !5593, file: !1104, line: 269, type: !53)
!5599 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5593, file: !1104, line: 269, type: !55)
!5600 = !DILocation(line: 0, scope: !5593)
!5601 = !DILocalVariable(name: "category", arg: 1, scope: !5602, file: !1104, line: 91, type: !58)
!5602 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1104, file: !1104, line: 91, type: !5594, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5603)
!5603 = !{!5601, !5604, !5605, !5606, !5607}
!5604 = !DILocalVariable(name: "buf", arg: 2, scope: !5602, file: !1104, line: 91, type: !53)
!5605 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5602, file: !1104, line: 91, type: !55)
!5606 = !DILocalVariable(name: "result", scope: !5602, file: !1104, line: 140, type: !293)
!5607 = !DILocalVariable(name: "length", scope: !5608, file: !1104, line: 154, type: !55)
!5608 = distinct !DILexicalBlock(scope: !5609, file: !1104, line: 153, column: 5)
!5609 = distinct !DILexicalBlock(scope: !5602, file: !1104, line: 142, column: 7)
!5610 = !DILocation(line: 0, scope: !5602, inlinedAt: !5611)
!5611 = distinct !DILocation(line: 274, column: 10, scope: !5593)
!5612 = !DILocalVariable(name: "category", arg: 1, scope: !5613, file: !1104, line: 60, type: !58)
!5613 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1104, file: !1104, line: 60, type: !5614, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5616)
!5614 = !DISubroutineType(types: !5615)
!5615 = !{!293, !58}
!5616 = !{!5612, !5617}
!5617 = !DILocalVariable(name: "result", scope: !5613, file: !1104, line: 62, type: !293)
!5618 = !DILocation(line: 0, scope: !5613, inlinedAt: !5619)
!5619 = distinct !DILocation(line: 140, column: 24, scope: !5602, inlinedAt: !5611)
!5620 = !DILocation(line: 62, column: 24, scope: !5613, inlinedAt: !5619)
!5621 = !DILocation(line: 142, column: 14, scope: !5609, inlinedAt: !5611)
!5622 = !DILocation(line: 142, column: 7, scope: !5602, inlinedAt: !5611)
!5623 = !DILocation(line: 145, column: 19, scope: !5624, inlinedAt: !5611)
!5624 = distinct !DILexicalBlock(scope: !5625, file: !1104, line: 145, column: 11)
!5625 = distinct !DILexicalBlock(scope: !5609, file: !1104, line: 143, column: 5)
!5626 = !DILocation(line: 145, column: 11, scope: !5625, inlinedAt: !5611)
!5627 = !DILocation(line: 149, column: 16, scope: !5624, inlinedAt: !5611)
!5628 = !DILocation(line: 149, column: 9, scope: !5624, inlinedAt: !5611)
!5629 = !DILocation(line: 154, column: 23, scope: !5608, inlinedAt: !5611)
!5630 = !DILocation(line: 0, scope: !5608, inlinedAt: !5611)
!5631 = !DILocation(line: 155, column: 18, scope: !5632, inlinedAt: !5611)
!5632 = distinct !DILexicalBlock(scope: !5608, file: !1104, line: 155, column: 11)
!5633 = !DILocation(line: 155, column: 11, scope: !5608, inlinedAt: !5611)
!5634 = !DILocation(line: 157, column: 39, scope: !5635, inlinedAt: !5611)
!5635 = distinct !DILexicalBlock(scope: !5632, file: !1104, line: 156, column: 9)
!5636 = !DILocalVariable(name: "__dest", arg: 1, scope: !5637, file: !1983, line: 26, type: !2507)
!5637 = distinct !DISubprogram(name: "memcpy", scope: !1983, file: !1983, line: 26, type: !2505, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5638)
!5638 = !{!5636, !5639, !5640}
!5639 = !DILocalVariable(name: "__src", arg: 2, scope: !5637, file: !1983, line: 26, type: !2508)
!5640 = !DILocalVariable(name: "__len", arg: 3, scope: !5637, file: !1983, line: 26, type: !55)
!5641 = !DILocation(line: 0, scope: !5637, inlinedAt: !5642)
!5642 = distinct !DILocation(line: 157, column: 11, scope: !5635, inlinedAt: !5611)
!5643 = !DILocation(line: 29, column: 10, scope: !5637, inlinedAt: !5642)
!5644 = !DILocation(line: 158, column: 11, scope: !5635, inlinedAt: !5611)
!5645 = !DILocation(line: 162, column: 23, scope: !5646, inlinedAt: !5611)
!5646 = distinct !DILexicalBlock(scope: !5647, file: !1104, line: 162, column: 15)
!5647 = distinct !DILexicalBlock(scope: !5632, file: !1104, line: 161, column: 9)
!5648 = !DILocation(line: 162, column: 15, scope: !5647, inlinedAt: !5611)
!5649 = !DILocation(line: 167, column: 44, scope: !5650, inlinedAt: !5611)
!5650 = distinct !DILexicalBlock(scope: !5646, file: !1104, line: 163, column: 13)
!5651 = !DILocation(line: 0, scope: !5637, inlinedAt: !5652)
!5652 = distinct !DILocation(line: 167, column: 15, scope: !5650, inlinedAt: !5611)
!5653 = !DILocation(line: 29, column: 10, scope: !5637, inlinedAt: !5652)
!5654 = !DILocation(line: 168, column: 15, scope: !5650, inlinedAt: !5611)
!5655 = !DILocation(line: 168, column: 32, scope: !5650, inlinedAt: !5611)
!5656 = !DILocation(line: 169, column: 13, scope: !5650, inlinedAt: !5611)
!5657 = !DILocation(line: 0, scope: !5609, inlinedAt: !5611)
!5658 = !DILocation(line: 274, column: 3, scope: !5593)
!5659 = distinct !DISubprogram(name: "setlocale_null", scope: !1104, file: !1104, line: 301, type: !5614, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5660)
!5660 = !{!5661}
!5661 = !DILocalVariable(name: "category", arg: 1, scope: !5659, file: !1104, line: 301, type: !58)
!5662 = !DILocation(line: 0, scope: !5659)
!5663 = !DILocation(line: 0, scope: !5613, inlinedAt: !5664)
!5664 = distinct !DILocation(line: 304, column: 10, scope: !5659)
!5665 = !DILocation(line: 62, column: 24, scope: !5613, inlinedAt: !5664)
!5666 = !DILocation(line: 304, column: 3, scope: !5659)
