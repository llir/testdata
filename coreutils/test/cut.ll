; ModuleID = 'coreutils-8.32/src/cut.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.field_range_pair = type { i64, i64 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s OPTION... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Print selected parts of lines from each FILE to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.28 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [177 x i8] c"  -b, --bytes=LIST        select only these bytes\0A  -c, --characters=LIST   select only these characters\0A  -d, --delimiter=DELIM   use DELIM instead of TAB for field delimiter\0A\00", align 1
@.str.4 = private unnamed_addr constant [238 x i8] c"  -f, --fields=LIST       select only these fields;  also print any line\0A                            that contains no delimiter character, unless\0A                            the -s option is specified\0A  -n                      (ignored)\0A\00", align 1
@.str.5 = private unnamed_addr constant [114 x i8] c"      --complement        complement the set of selected bytes, characters\0A                            or fields\0A\00", align 1
@.str.6 = private unnamed_addr constant [210 x i8] c"  -s, --only-delimited    do not print lines not containing delimiters\0A      --output-delimiter=STRING  use STRING as the output delimiter\0A                            the default is to use the input delimiter\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"  -z, --zero-terminated    line delimiter is NUL, not newline\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [204 x i8] c"\0AUse one, and only one of -b, -c or -f.  Each LIST is made up of one\0Arange, or many ranges separated by commas.  Selected input is written\0Ain the same order that it is read, and is written exactly once.\0A\00", align 1
@.str.11 = private unnamed_addr constant [262 x i8] c"Each range is one of:\0A\0A  N     N'th byte, character or field, counted from 1\0A  N-    from N'th byte, character or field, to end of line\0A  N-M   from N'th to M'th (included) byte, character or field\0A  -M    from first to M'th (included) byte, character or field\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"cut\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.29 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.40 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@operating_mode = internal unnamed_addr global i32 0, align 4, !dbg !0
@suppress_non_delimited = internal unnamed_addr global i1 false, align 1, !dbg !115
@delim = internal unnamed_addr global i8 0, align 1, !dbg !74
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !116
@.str.16 = private unnamed_addr constant [12 x i8] c"b:c:d:f:nsz\00", align 1
@longopts = internal constant [11 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 1, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 1, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !84
@.str.17 = private unnamed_addr constant [39 x i8] c"only one type of list may be specified\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.18 = private unnamed_addr constant [41 x i8] c"the delimiter must be a single character\00", align 1
@output_delimiter_specified = internal unnamed_addr global i1 false, align 1, !dbg !117
@output_delimiter_length = internal unnamed_addr global i64 0, align 8, !dbg !78
@output_delimiter_string = internal unnamed_addr global i8* null, align 8, !dbg !80
@line_delim = internal unnamed_addr global i1 false, align 1, !dbg !118
@complement = internal unnamed_addr global i1 false, align 1, !dbg !119
@.str.20 = private unnamed_addr constant [15 x i8] c"David M. Ihnat\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"you must specify a list of bytes, characters, or fields\00", align 1
@.str.24 = private unnamed_addr constant [66 x i8] c"an input delimiter may be specified only when operating on fields\00", align 1
@.str.25 = private unnamed_addr constant [75 x i8] c"suppressing non-delimited lines makes sense\0A\09only when operating on fields\00", align 1
@main.dummy = internal global [2 x i8] zeroinitializer, align 1, !dbg !52
@optind = external local_unnamed_addr global i32, align 4
@.str.26 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.54 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@current_rp = internal unnamed_addr global %struct.field_range_pair* null, align 8, !dbg !100
@field_1_buffer = internal global i8* null, align 8, !dbg !111
@field_1_bufsize = internal global i64 0, align 8, !dbg !113
@.str.56 = private unnamed_addr constant [13 x i8] c"n_bytes != 0\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"src/cut.c\00", align 1
@__PRETTY_FUNCTION__.cut_fields = private unnamed_addr constant [24 x i8] c"void cut_fields(FILE *)\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"characters\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"fields\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"delimiter\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"only-delimited\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"output-delimiter\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"complement\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@n_frp = dso_local local_unnamed_addr global i64 0, align 8, !dbg !120
@frp = dso_local local_unnamed_addr global %struct.field_range_pair* null, align 8, !dbg !192
@.str.58 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2.59 = private unnamed_addr constant [20 x i8] c"invalid field range\00", align 1
@.str.1.60 = private unnamed_addr constant [32 x i8] c"invalid byte or character range\00", align 1
@.str.4.61 = private unnamed_addr constant [27 x i8] c"fields are numbered from 1\00", align 1
@.str.3.62 = private unnamed_addr constant [45 x i8] c"byte/character positions are numbered from 1\00", align 1
@.str.5.63 = private unnamed_addr constant [34 x i8] c"invalid range with no endpoint: -\00", align 1
@n_frp_allocated = internal unnamed_addr global i64 0, align 8, !dbg !195
@.str.6.64 = private unnamed_addr constant [25 x i8] c"invalid decreasing range\00", align 1
@set_fields.num_start = internal unnamed_addr global i8* null, align 8, !dbg !163
@.str.7.65 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.9.66 = private unnamed_addr constant [29 x i8] c"field number %s is too large\00", align 1
@.str.8.67 = private unnamed_addr constant [38 x i8] c"byte/character offset %s is too large\00", align 1
@.str.11.68 = private unnamed_addr constant [23 x i8] c"invalid field value %s\00", align 1
@.str.10.69 = private unnamed_addr constant [35 x i8] c"invalid byte/character position %s\00", align 1
@.str.13.70 = private unnamed_addr constant [23 x i8] c"missing list of fields\00", align 1
@.str.12.71 = private unnamed_addr constant [41 x i8] c"missing list of byte/character positions\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0), align 8, !dbg !197
@.str.74 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !203
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !208
@.str.77 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.78 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.79 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !210
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !216
@.str.92 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.93 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.94 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.96, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.97, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.98, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.99, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.100, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.101, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.102, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.103, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.104, i32 0, i32 0), i8* null], align 16, !dbg !222
@.str.95 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.96 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.97 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.98 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.99 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.100 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.101 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.102 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.103 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.104 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !234
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !240
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !252
@.str.11.105 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.106 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.107 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.108 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.109 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.110 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.111 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !259
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !266
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !254
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !268
@.str.118 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.119 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.120 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.121 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.122 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.123 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.124 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.125 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.126 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.127 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.128 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.129 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.130 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.131 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.132 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.133 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.136 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.137 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.138 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.139 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.140 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.141 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.142 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !272
@.str.1.155 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.177 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.180 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.181 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !733 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !737, metadata !DIExpression()), !dbg !738
  %3 = icmp eq i32 %0, 0, !dbg !739
  br i1 %3, label %9, label %4, !dbg !741

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !742, !tbaa !744
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #29, !dbg !742
  %7 = load i8*, i8** @program_name, align 8, !dbg !742, !tbaa !744
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #29, !dbg !742
  br label %85, !dbg !742

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 5) #29, !dbg !748
  %11 = load i8*, i8** @program_name, align 8, !dbg !748, !tbaa !744
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #29, !dbg !748
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 5) #29, !dbg !750
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !750, !tbaa !744
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !750
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.27, i64 0, i64 0), i32 5) #29, !dbg !751
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !751, !tbaa !744
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #29, !dbg !751
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.28, i64 0, i64 0), i32 5) #29, !dbg !757
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !757, !tbaa !744
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20) #29, !dbg !757
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.3, i64 0, i64 0), i32 5) #29, !dbg !760
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !760, !tbaa !744
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !760
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([238 x i8], [238 x i8]* @.str.4, i64 0, i64 0), i32 5) #29, !dbg !761
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !761, !tbaa !744
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !761
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.5, i64 0, i64 0), i32 5) #29, !dbg !762
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !762, !tbaa !744
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !762
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([210 x i8], [210 x i8]* @.str.6, i64 0, i64 0), i32 5) #29, !dbg !763
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !763, !tbaa !744
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !763
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 5) #29, !dbg !764
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !764, !tbaa !744
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !764
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 5) #29, !dbg !765
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !765, !tbaa !744
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !765
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 5) #29, !dbg !766
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !766, !tbaa !744
  %42 = tail call i32 @fputs_unlocked(i8* %40, %struct._IO_FILE* %41), !dbg !766
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.10, i64 0, i64 0), i32 5) #29, !dbg !767
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !767, !tbaa !744
  %45 = tail call i32 @fputs_unlocked(i8* %43, %struct._IO_FILE* %44), !dbg !767
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([262 x i8], [262 x i8]* @.str.11, i64 0, i64 0), i32 5) #29, !dbg !768
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !768, !tbaa !744
  %48 = tail call i32 @fputs_unlocked(i8* %46, %struct._IO_FILE* %47), !dbg !768
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), metadata !769, metadata !DIExpression()) #29, !dbg !787
  %49 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !789
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %49) #29, !dbg !789
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !774, metadata !DIExpression()) #29, !dbg !790
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %49, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #29, !dbg !790
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), metadata !783, metadata !DIExpression()) #29, !dbg !787
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !784, metadata !DIExpression()) #29, !dbg !787
  %50 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !791
  call void @llvm.dbg.value(metadata %struct.infomap* %50, metadata !784, metadata !DIExpression()) #29, !dbg !787
  br label %51, !dbg !792

51:                                               ; preds = %56, %9
  %52 = phi i8* [ %59, %56 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), %9 ]
  %53 = phi %struct.infomap* [ %57, %56 ], [ %50, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %53, metadata !784, metadata !DIExpression()) #29, !dbg !787
  %54 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* nonnull %52) #30, !dbg !793
  %55 = icmp eq i32 %54, 0, !dbg !793
  br i1 %55, label %61, label %56, !dbg !792

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.infomap, %struct.infomap* %53, i64 1, !dbg !794
  call void @llvm.dbg.value(metadata %struct.infomap* %57, metadata !784, metadata !DIExpression()) #29, !dbg !787
  %58 = getelementptr inbounds %struct.infomap, %struct.infomap* %57, i64 0, i32 0, !dbg !795
  %59 = load i8*, i8** %58, align 8, !dbg !795, !tbaa !796
  %60 = icmp eq i8* %59, null, !dbg !798
  br i1 %60, label %61, label %51, !dbg !799, !llvm.loop !800

61:                                               ; preds = %56, %51
  %62 = phi %struct.infomap* [ %53, %51 ], [ %57, %56 ]
  %63 = getelementptr inbounds %struct.infomap, %struct.infomap* %62, i64 0, i32 1, !dbg !802
  %64 = load i8*, i8** %63, align 8, !dbg !802, !tbaa !804
  %65 = icmp eq i8* %64, null, !dbg !805
  %66 = select i1 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %64, !dbg !806
  call void @llvm.dbg.value(metadata i8* %66, metadata !783, metadata !DIExpression()) #29, !dbg !787
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0), i32 5) #29, !dbg !807
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0)) #29, !dbg !807
  %69 = tail call i8* @setlocale(i32 5, i8* null) #29, !dbg !808
  call void @llvm.dbg.value(metadata i8* %69, metadata !786, metadata !DIExpression()) #29, !dbg !787
  %70 = icmp eq i8* %69, null, !dbg !809
  br i1 %70, label %78, label %71, !dbg !811

71:                                               ; preds = %61
  %72 = tail call i32 @strncmp(i8* nonnull %69, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i64 3) #30, !dbg !812
  %73 = icmp eq i32 %72, 0, !dbg !812
  br i1 %73, label %78, label %74, !dbg !813

74:                                               ; preds = %71
  %75 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.40, i64 0, i64 0), i32 5) #29, !dbg !814
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !814, !tbaa !744
  %77 = tail call i32 @fputs_unlocked(i8* %75, %struct._IO_FILE* %76) #29, !dbg !814
  br label %78, !dbg !816

78:                                               ; preds = %61, %71, %74
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i64 0, i64 0), i32 5) #29, !dbg !817
  %80 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #29, !dbg !817
  %81 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.42, i64 0, i64 0), i32 5) #29, !dbg !818
  %82 = icmp eq i8* %66, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), !dbg !818
  %83 = select i1 %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), !dbg !818
  %84 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %81, i8* %66, i8* %83) #29, !dbg !818
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %49) #29, !dbg !819
  br label %85

85:                                               ; preds = %78, %4
  tail call void @exit(i32 %0) #31, !dbg !820
  unreachable, !dbg !820
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !821 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !825 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !880 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !54 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !60, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i8** %1, metadata !61, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i8 0, metadata !65, metadata !DIExpression()), !dbg !884
  %3 = load i8*, i8** %1, align 8, !dbg !885, !tbaa !744
  tail call void @set_program_name(i8* %3) #29, !dbg !886
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #29, !dbg !887
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #29, !dbg !888
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #29, !dbg !889
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #29, !dbg !890
  store i32 0, i32* @operating_mode, align 4, !dbg !891, !tbaa !892
  store i1 false, i1* @suppress_non_delimited, align 1, !dbg !893
  store i8 0, i8* @delim, align 1, !dbg !894, !tbaa !892
  store i1 false, i1* @have_read_stdin, align 1, !dbg !895
  br label %8, !dbg !896

8:                                                ; preds = %12, %2
  %9 = phi i8 [ 0, %2 ], [ %13, %12 ], !dbg !897
  %10 = phi i8* [ undef, %2 ], [ %14, %12 ]
  call void @llvm.dbg.value(metadata i8* %10, metadata !66, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i8 %9, metadata !65, metadata !DIExpression()), !dbg !884
  %11 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), %struct.option* getelementptr inbounds ([11 x %struct.option], [11 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #29, !dbg !898
  call void @llvm.dbg.value(metadata i32 %11, metadata !62, metadata !DIExpression()), !dbg !884
  switch i32 %11, label %56 [
    i32 -1, label %57
    i32 98, label %15
    i32 99, label %15
    i32 102, label %22
    i32 100, label %29
    i32 128, label %40
    i32 110, label %12
    i32 115, label %49
    i32 122, label %50
    i32 129, label %51
    i32 -130, label %52
    i32 -131, label %53
  ], !dbg !896

12:                                               ; preds = %8, %51, %50, %49, %46, %39, %27, %20
  %13 = phi i8 [ %9, %51 ], [ %9, %50 ], [ %9, %49 ], [ %9, %46 ], [ 1, %39 ], [ %9, %27 ], [ %9, %20 ], [ %9, %8 ]
  %14 = phi i8* [ %10, %51 ], [ %10, %50 ], [ %10, %49 ], [ %10, %46 ], [ %10, %39 ], [ %28, %27 ], [ %21, %20 ], [ %10, %8 ]
  br label %8, !dbg !884, !llvm.loop !899

15:                                               ; preds = %8, %8
  %16 = load i32, i32* @operating_mode, align 4, !dbg !901, !tbaa !892
  %17 = icmp eq i32 %16, 0, !dbg !905
  br i1 %17, label %20, label %18, !dbg !906

18:                                               ; preds = %15
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i32 5) #29, !dbg !907
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %19) #29, !dbg !907
  tail call void @usage(i32 1) #32, !dbg !907
  unreachable, !dbg !907

20:                                               ; preds = %15
  store i32 1, i32* @operating_mode, align 4, !dbg !909, !tbaa !892
  %21 = load i8*, i8** @optarg, align 8, !dbg !910, !tbaa !744
  call void @llvm.dbg.value(metadata i8* %21, metadata !66, metadata !DIExpression()), !dbg !884
  br label %12, !dbg !911

22:                                               ; preds = %8
  %23 = load i32, i32* @operating_mode, align 4, !dbg !912, !tbaa !892
  %24 = icmp eq i32 %23, 0, !dbg !914
  br i1 %24, label %27, label %25, !dbg !915

25:                                               ; preds = %22
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i32 5) #29, !dbg !916
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %26) #29, !dbg !916
  tail call void @usage(i32 1) #32, !dbg !916
  unreachable, !dbg !916

27:                                               ; preds = %22
  store i32 2, i32* @operating_mode, align 4, !dbg !918, !tbaa !892
  %28 = load i8*, i8** @optarg, align 8, !dbg !919, !tbaa !744
  call void @llvm.dbg.value(metadata i8* %28, metadata !66, metadata !DIExpression()), !dbg !884
  br label %12, !dbg !920

29:                                               ; preds = %8
  %30 = load i8*, i8** @optarg, align 8, !dbg !921, !tbaa !744
  %31 = load i8, i8* %30, align 1, !dbg !921, !tbaa !892
  %32 = icmp eq i8 %31, 0, !dbg !923
  br i1 %32, label %39, label %33, !dbg !924

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !925
  %35 = load i8, i8* %34, align 1, !dbg !925, !tbaa !892
  %36 = icmp eq i8 %35, 0, !dbg !926
  br i1 %36, label %39, label %37, !dbg !927

37:                                               ; preds = %33
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i32 5) #29, !dbg !928
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %38) #29, !dbg !928
  tail call void @usage(i32 1) #32, !dbg !928
  unreachable, !dbg !928

39:                                               ; preds = %33, %29
  store i8 %31, i8* @delim, align 1, !dbg !930, !tbaa !892
  call void @llvm.dbg.value(metadata i8 1, metadata !65, metadata !DIExpression()), !dbg !884
  br label %12, !dbg !931

40:                                               ; preds = %8
  store i1 true, i1* @output_delimiter_specified, align 1, !dbg !932
  %41 = load i8*, i8** @optarg, align 8, !dbg !933, !tbaa !744
  %42 = load i8, i8* %41, align 1, !dbg !933, !tbaa !892
  %43 = icmp eq i8 %42, 0, !dbg !934
  br i1 %43, label %46, label %44, !dbg !933

44:                                               ; preds = %40
  %45 = tail call i64 @strlen(i8* nonnull %41) #30, !dbg !935
  br label %46, !dbg !933

46:                                               ; preds = %40, %44
  %47 = phi i64 [ %45, %44 ], [ 1, %40 ], !dbg !933
  store i64 %47, i64* @output_delimiter_length, align 8, !dbg !936, !tbaa !937
  %48 = tail call noalias i8* @xstrdup(i8* nonnull %41) #29, !dbg !939
  store i8* %48, i8** @output_delimiter_string, align 8, !dbg !940, !tbaa !744
  br label %12, !dbg !941

49:                                               ; preds = %8
  store i1 true, i1* @suppress_non_delimited, align 1, !dbg !942
  br label %12, !dbg !943

50:                                               ; preds = %8
  store i1 true, i1* @line_delim, align 1, !dbg !944
  br label %12, !dbg !945

51:                                               ; preds = %8
  store i1 true, i1* @complement, align 1, !dbg !946
  br label %12, !dbg !947

52:                                               ; preds = %8
  tail call void @usage(i32 0) #32, !dbg !948
  unreachable, !dbg !948

53:                                               ; preds = %8
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !949, !tbaa !744
  %55 = load i8*, i8** @Version, align 8, !dbg !949, !tbaa !744
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* null) #29, !dbg !949
  tail call void @exit(i32 0) #31, !dbg !949
  unreachable, !dbg !949

56:                                               ; preds = %8
  tail call void @usage(i32 1) #32, !dbg !950
  unreachable, !dbg !950

57:                                               ; preds = %8
  %58 = load i32, i32* @operating_mode, align 4, !dbg !951, !tbaa !892
  %59 = icmp eq i32 %58, 0, !dbg !953
  br i1 %59, label %60, label %62, !dbg !954

60:                                               ; preds = %57
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i64 0, i64 0), i32 5) #29, !dbg !955
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %61) #29, !dbg !955
  tail call void @usage(i32 1) #32, !dbg !955
  unreachable, !dbg !955

62:                                               ; preds = %57
  %63 = icmp ne i8 %9, 0, !dbg !957
  %64 = icmp ne i32 %58, 2
  %65 = and i1 %63, %64, !dbg !959
  br i1 %65, label %66, label %68, !dbg !959

66:                                               ; preds = %62
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.24, i64 0, i64 0), i32 5) #29, !dbg !960
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %67) #29, !dbg !960
  tail call void @usage(i32 1) #32, !dbg !960
  unreachable, !dbg !960

68:                                               ; preds = %62
  %69 = load i1, i1* @suppress_non_delimited, align 1, !dbg !962
  %70 = and i1 %64, %69, !dbg !964
  br i1 %70, label %71, label %73, !dbg !964

71:                                               ; preds = %68
  %72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.25, i64 0, i64 0), i32 5) #29, !dbg !965
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %72) #29, !dbg !965
  tail call void @usage(i32 1) #32, !dbg !965
  unreachable, !dbg !965

73:                                               ; preds = %68
  %74 = icmp eq i32 %58, 2, !dbg !967
  %75 = select i1 %74, i32 0, i32 4, !dbg !968
  %76 = load i1, i1* @complement, align 1, !dbg !969
  %77 = select i1 %76, i32 2, i32 0, !dbg !969
  %78 = or i32 %77, %75, !dbg !970
  tail call void @set_fields(i8* %10, i32 %78) #29, !dbg !971
  br i1 %63, label %80, label %79, !dbg !972

79:                                               ; preds = %73
  store i8 9, i8* @delim, align 1, !dbg !973, !tbaa !892
  br label %80, !dbg !975

80:                                               ; preds = %79, %73
  %81 = load i8*, i8** @output_delimiter_string, align 8, !dbg !976, !tbaa !744
  %82 = icmp eq i8* %81, null, !dbg !978
  br i1 %82, label %83, label %85, !dbg !979

83:                                               ; preds = %80
  %84 = load i8, i8* @delim, align 1, !dbg !980, !tbaa !892
  store i8 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.dummy, i64 0, i64 0), align 1, !dbg !982, !tbaa !892
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.dummy, i64 0, i64 1), align 1, !dbg !983, !tbaa !892
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.dummy, i64 0, i64 0), i8** @output_delimiter_string, align 8, !dbg !984, !tbaa !744
  store i64 1, i64* @output_delimiter_length, align 8, !dbg !985, !tbaa !937
  br label %85, !dbg !986

85:                                               ; preds = %83, %80
  %86 = load i32, i32* @optind, align 4, !dbg !987, !tbaa !989
  %87 = icmp eq i32 %86, %0, !dbg !991
  br i1 %87, label %90, label %88, !dbg !992

88:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i8 1, metadata !63, metadata !DIExpression()), !dbg !884
  %89 = icmp slt i32 %86, %0, !dbg !993
  br i1 %89, label %93, label %105, !dbg !996

90:                                               ; preds = %85
  %91 = tail call fastcc zeroext i1 @cut_file(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)), !dbg !997
  %92 = zext i1 %91 to i8, !dbg !998
  call void @llvm.dbg.value(metadata i8 %92, metadata !63, metadata !DIExpression()), !dbg !884
  br label %105, !dbg !999

93:                                               ; preds = %88, %93
  %94 = phi i32 [ %103, %93 ], [ %86, %88 ]
  %95 = phi i8 [ %101, %93 ], [ 1, %88 ]
  call void @llvm.dbg.value(metadata i8 %95, metadata !63, metadata !DIExpression()), !dbg !884
  %96 = sext i32 %94 to i64, !dbg !1000
  %97 = getelementptr inbounds i8*, i8** %1, i64 %96, !dbg !1000
  %98 = load i8*, i8** %97, align 8, !dbg !1000, !tbaa !744
  %99 = tail call fastcc zeroext i1 @cut_file(i8* %98), !dbg !1001
  %100 = zext i1 %99 to i8, !dbg !1001
  %101 = and i8 %95, %100, !dbg !1002
  call void @llvm.dbg.value(metadata i8 %101, metadata !63, metadata !DIExpression()), !dbg !884
  %102 = load i32, i32* @optind, align 4, !dbg !1003, !tbaa !989
  %103 = add nsw i32 %102, 1, !dbg !1003
  store i32 %103, i32* @optind, align 4, !dbg !1003, !tbaa !989
  %104 = icmp slt i32 %103, %0, !dbg !993
  br i1 %104, label %93, label %105, !dbg !996, !llvm.loop !1004

105:                                              ; preds = %93, %88, %90
  %106 = phi i8 [ %92, %90 ], [ 1, %88 ], [ %101, %93 ], !dbg !1006
  call void @llvm.dbg.value(metadata i8 %106, metadata !63, metadata !DIExpression()), !dbg !884
  %107 = load i1, i1* @have_read_stdin, align 1, !dbg !1007
  br i1 %107, label %108, label %115, !dbg !1009

108:                                              ; preds = %105
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1010, !tbaa !744
  %110 = tail call i32 @rpl_fclose(%struct._IO_FILE* %109) #29, !dbg !1011
  %111 = icmp eq i32 %110, -1, !dbg !1012
  br i1 %111, label %112, label %115, !dbg !1013

112:                                              ; preds = %108
  %113 = tail call i32* @__errno_location() #33, !dbg !1014
  %114 = load i32, i32* %113, align 4, !dbg !1014, !tbaa !989
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #29, !dbg !1016
  call void @llvm.dbg.value(metadata i8 0, metadata !63, metadata !DIExpression()), !dbg !884
  br label %115, !dbg !1017

115:                                              ; preds = %112, %108, %105
  %116 = phi i8 [ 0, %112 ], [ %106, %108 ], [ %106, %105 ], !dbg !884
  call void @llvm.dbg.value(metadata i8 %116, metadata !63, metadata !DIExpression()), !dbg !884
  %117 = xor i8 %116, 1, !dbg !1018
  %118 = zext i8 %117 to i32, !dbg !1018
  ret i32 %118, !dbg !1019
}

; Function Attrs: nounwind
declare !dbg !1020 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1023 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1026 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1031 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !1037 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @cut_file(i8* %0) unnamed_addr #8 !dbg !1041 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1045, metadata !DIExpression()), !dbg !1050
  %2 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #30, !dbg !1051
  %3 = icmp eq i32 %2, 0, !dbg !1051
  br i1 %3, label %4, label %6, !dbg !1053

4:                                                ; preds = %1
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1054
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1056, !tbaa !744
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %5, metadata !1046, metadata !DIExpression()), !dbg !1050
  br label %13, !dbg !1057

6:                                                ; preds = %1
  %7 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)), !dbg !1058
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1046, metadata !DIExpression()), !dbg !1050
  %8 = icmp eq %struct._IO_FILE* %7, null, !dbg !1060
  br i1 %8, label %9, label %13, !dbg !1062

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #33, !dbg !1063
  %11 = load i32, i32* %10, align 4, !dbg !1063, !tbaa !989
  %12 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #29, !dbg !1065
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* %12) #29, !dbg !1066
  br label %407, !dbg !1067

13:                                               ; preds = %6, %4
  %14 = phi %struct._IO_FILE* [ %5, %4 ], [ %7, %6 ], !dbg !1068
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1046, metadata !DIExpression()), !dbg !1050
  tail call void @fadvise(%struct._IO_FILE* %14, i32 2) #29, !dbg !1069
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1070, metadata !DIExpression()) #29, !dbg !1075
  %15 = load i32, i32* @operating_mode, align 4, !dbg !1077, !tbaa !892
  %16 = icmp eq i32 %15, 1, !dbg !1079
  %17 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1080, !tbaa !744
  store %struct.field_range_pair* %17, %struct.field_range_pair** @current_rp, align 8, !dbg !1080, !tbaa !744
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 1
  br i1 %16, label %19, label %113, !dbg !1081

19:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1082, metadata !DIExpression()) #29, !dbg !1102
  call void @llvm.dbg.value(metadata i64 0, metadata !1085, metadata !DIExpression()) #29, !dbg !1102
  call void @llvm.dbg.value(metadata i8 0, metadata !1086, metadata !DIExpression()) #29, !dbg !1102
  %20 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 2
  br label %21, !dbg !1104

21:                                               ; preds = %55, %19
  %22 = phi i64 [ 0, %19 ], [ %56, %55 ]
  %23 = phi i8 [ 0, %19 ], [ %57, %55 ]
  br label %24, !dbg !1105

24:                                               ; preds = %21, %82
  %25 = phi i64 [ %75, %82 ], [ %22, %21 ], !dbg !1102
  call void @llvm.dbg.value(metadata i8 %23, metadata !1086, metadata !DIExpression()) #29, !dbg !1102
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1111, metadata !DIExpression()) #29, !dbg !1113
  %26 = load i8*, i8** %18, align 8, !dbg !1105, !tbaa !1114
  %27 = load i8*, i8** %20, align 8, !dbg !1105, !tbaa !1117
  %28 = icmp ult i8* %26, %27, !dbg !1105
  br i1 %28, label %31, label %29, !dbg !1105, !prof !1118

29:                                               ; preds = %24
  %30 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #29, !dbg !1105
  br label %35, !dbg !1105

31:                                               ; preds = %24
  %32 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1105
  store i8* %32, i8** %18, align 8, !dbg !1105, !tbaa !1114
  %33 = load i8, i8* %26, align 1, !dbg !1105, !tbaa !892
  %34 = zext i8 %33 to i32, !dbg !1105
  br label %35, !dbg !1105

35:                                               ; preds = %31, %29
  %36 = phi i32 [ %30, %29 ], [ %34, %31 ], !dbg !1105
  call void @llvm.dbg.value(metadata i32 %36, metadata !1087, metadata !DIExpression()) #29, !dbg !1119
  %37 = load i1, i1* @line_delim, align 1, !dbg !1120
  %38 = select i1 %37, i32 0, i32 10, !dbg !1120
  %39 = icmp eq i32 %36, %38, !dbg !1121
  br i1 %39, label %40, label %58, !dbg !1122

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 %36, metadata !1123, metadata !DIExpression()) #29, !dbg !1128
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1131, !tbaa !744
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 5, !dbg !1131
  %43 = load i8*, i8** %42, align 8, !dbg !1131, !tbaa !1132
  %44 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 6, !dbg !1131
  %45 = load i8*, i8** %44, align 8, !dbg !1131, !tbaa !1133
  %46 = icmp ult i8* %43, %45, !dbg !1131
  br i1 %46, label %50, label %47, !dbg !1131, !prof !1118

47:                                               ; preds = %40
  %48 = and i32 %36, 255, !dbg !1131
  %49 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %41, i32 %48) #29, !dbg !1131
  br label %53, !dbg !1131

50:                                               ; preds = %40
  %51 = trunc i32 %36 to i8, !dbg !1131
  %52 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !1131
  store i8* %52, i8** %42, align 8, !dbg !1131, !tbaa !1132
  store i8 %51, i8* %43, align 1, !dbg !1131, !tbaa !892
  br label %53, !dbg !1131

53:                                               ; preds = %50, %47
  call void @llvm.dbg.value(metadata i64 0, metadata !1085, metadata !DIExpression()) #29, !dbg !1102
  call void @llvm.dbg.value(metadata i8 0, metadata !1086, metadata !DIExpression()) #29, !dbg !1102
  %54 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1134, !tbaa !744
  store %struct.field_range_pair* %54, %struct.field_range_pair** @current_rp, align 8, !dbg !1135, !tbaa !744
  br label %55, !dbg !1136

55:                                               ; preds = %53, %107, %110
  %56 = phi i64 [ %75, %110 ], [ %75, %107 ], [ 0, %53 ]
  %57 = phi i8 [ %100, %110 ], [ %100, %107 ], [ 0, %53 ]
  br label %21, !dbg !1105

58:                                               ; preds = %35
  %59 = icmp eq i32 %36, -1, !dbg !1137
  br i1 %59, label %60, label %74, !dbg !1138

60:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i64 %25, metadata !1085, metadata !DIExpression()) #29, !dbg !1102
  %61 = icmp eq i64 %25, 0, !dbg !1139
  br i1 %61, label %387, label %62, !dbg !1142

62:                                               ; preds = %60
  call void @llvm.dbg.value(metadata i32 %38, metadata !1123, metadata !DIExpression()) #29, !dbg !1143
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1145, !tbaa !744
  %64 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %63, i64 0, i32 5, !dbg !1145
  %65 = load i8*, i8** %64, align 8, !dbg !1145, !tbaa !1132
  %66 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %63, i64 0, i32 6, !dbg !1145
  %67 = load i8*, i8** %66, align 8, !dbg !1145, !tbaa !1133
  %68 = icmp ult i8* %65, %67, !dbg !1145
  br i1 %68, label %71, label %69, !dbg !1145, !prof !1118

69:                                               ; preds = %62
  %70 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %63, i32 %38) #29, !dbg !1145
  br label %387, !dbg !1145

71:                                               ; preds = %62
  %72 = trunc i32 %38 to i8, !dbg !1145
  %73 = getelementptr inbounds i8, i8* %65, i64 1, !dbg !1145
  store i8* %73, i8** %64, align 8, !dbg !1145, !tbaa !1132
  store i8 %72, i8* %65, align 1, !dbg !1145, !tbaa !892
  br label %387, !dbg !1145

74:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i64* undef, metadata !1146, metadata !DIExpression()) #29, !dbg !1151
  %75 = add i64 %25, 1, !dbg !1153
  %76 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1154, !tbaa !744
  %77 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %76, i64 0, i32 1, !dbg !1156
  %78 = load i64, i64* %77, align 8, !dbg !1156, !tbaa !1157
  %79 = icmp ugt i64 %75, %78, !dbg !1159
  br i1 %79, label %80, label %82, !dbg !1160

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %76, i64 1, !dbg !1161
  store %struct.field_range_pair* %81, %struct.field_range_pair** @current_rp, align 8, !dbg !1161, !tbaa !744
  br label %82, !dbg !1162

82:                                               ; preds = %80, %74
  %83 = phi %struct.field_range_pair* [ %76, %74 ], [ %81, %80 ], !dbg !1163
  call void @llvm.dbg.value(metadata i64 %75, metadata !1085, metadata !DIExpression()) #29, !dbg !1102
  call void @llvm.dbg.value(metadata i64 %75, metadata !1168, metadata !DIExpression()) #29, !dbg !1170
  %84 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %83, i64 0, i32 0, !dbg !1171
  %85 = load i64, i64* %84, align 8, !dbg !1171, !tbaa !1172
  %86 = icmp ugt i64 %85, %75, !dbg !1173
  br i1 %86, label %24, label %87, !dbg !1174

87:                                               ; preds = %82
  %88 = load i1, i1* @output_delimiter_specified, align 1, !dbg !1175
  br i1 %88, label %89, label %99, !dbg !1176

89:                                               ; preds = %87
  %90 = and i8 %23, 1, !dbg !1177
  %91 = icmp ne i8 %90, 0, !dbg !1177
  %92 = icmp eq i64 %85, %75
  %93 = and i1 %91, %92, !dbg !1178
  call void @llvm.dbg.value(metadata i64 %75, metadata !1085, metadata !DIExpression()) #29, !dbg !1102
  br i1 %93, label %94, label %99, !dbg !1178

94:                                               ; preds = %89
  %95 = load i64, i64* @output_delimiter_length, align 8, !dbg !1179, !tbaa !937
  %96 = load i8*, i8** @output_delimiter_string, align 8, !dbg !1179, !tbaa !744
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1179, !tbaa !744
  %98 = tail call i64 @fwrite_unlocked(i8* %96, i64 1, i64 %95, %struct._IO_FILE* %97) #29, !dbg !1179
  br label %99, !dbg !1179

99:                                               ; preds = %94, %89, %87
  %100 = phi i8 [ %23, %87 ], [ 1, %94 ], [ 1, %89 ], !dbg !1102
  call void @llvm.dbg.value(metadata i8 %100, metadata !1086, metadata !DIExpression()) #29, !dbg !1102
  call void @llvm.dbg.value(metadata i32 %36, metadata !1123, metadata !DIExpression()) #29, !dbg !1180
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1182, !tbaa !744
  %102 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %101, i64 0, i32 5, !dbg !1182
  %103 = load i8*, i8** %102, align 8, !dbg !1182, !tbaa !1132
  %104 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %101, i64 0, i32 6, !dbg !1182
  %105 = load i8*, i8** %104, align 8, !dbg !1182, !tbaa !1133
  %106 = icmp ult i8* %103, %105, !dbg !1182
  br i1 %106, label %110, label %107, !dbg !1182, !prof !1118

107:                                              ; preds = %99
  %108 = and i32 %36, 255, !dbg !1182
  %109 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %101, i32 %108) #29, !dbg !1182
  br label %55, !dbg !1182

110:                                              ; preds = %99
  %111 = trunc i32 %36 to i8, !dbg !1182
  %112 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !1182
  store i8* %112, i8** %102, align 8, !dbg !1182, !tbaa !1132
  store i8 %111, i8* %103, align 1, !dbg !1182, !tbaa !892
  br label %55, !dbg !1182

113:                                              ; preds = %13
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1183, metadata !DIExpression()) #29, !dbg !1226
  call void @llvm.dbg.value(metadata i64 1, metadata !1187, metadata !DIExpression()) #29, !dbg !1226
  call void @llvm.dbg.value(metadata i8 0, metadata !1188, metadata !DIExpression()) #29, !dbg !1226
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1111, metadata !DIExpression()) #29, !dbg !1228
  %114 = load i8*, i8** %18, align 8, !dbg !1230, !tbaa !1114
  %115 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 2, !dbg !1230
  %116 = load i8*, i8** %115, align 8, !dbg !1230, !tbaa !1117
  %117 = icmp ult i8* %114, %116, !dbg !1230
  br i1 %117, label %118, label %122, !dbg !1230, !prof !1118

118:                                              ; preds = %113
  %119 = getelementptr inbounds i8, i8* %114, i64 1, !dbg !1230
  store i8* %119, i8** %18, align 8, !dbg !1230, !tbaa !1114
  %120 = load i8, i8* %114, align 1, !dbg !1230, !tbaa !892
  %121 = zext i8 %120 to i32, !dbg !1230
  call void @llvm.dbg.value(metadata i32 %123, metadata !1186, metadata !DIExpression()) #29, !dbg !1226
  br label %125, !dbg !1231

122:                                              ; preds = %113
  %123 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #29, !dbg !1230
  call void @llvm.dbg.value(metadata i32 %123, metadata !1186, metadata !DIExpression()) #29, !dbg !1226
  %124 = icmp eq i32 %123, -1, !dbg !1232
  br i1 %124, label %387, label %125, !dbg !1231

125:                                              ; preds = %122, %118
  %126 = phi i32 [ %121, %118 ], [ %123, %122 ]
  %127 = tail call i32 @ungetc(i32 %126, %struct._IO_FILE* nonnull %14) #29, !dbg !1234
  call void @llvm.dbg.value(metadata i32 0, metadata !1186, metadata !DIExpression()) #29, !dbg !1226
  %128 = load i1, i1* @suppress_non_delimited, align 1, !dbg !1235
  call void @llvm.dbg.value(metadata i64 1, metadata !1168, metadata !DIExpression()) #29, !dbg !1236
  %129 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1238, !tbaa !744
  %130 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %129, i64 0, i32 0, !dbg !1239
  %131 = load i64, i64* %130, align 8, !dbg !1239, !tbaa !1172
  %132 = icmp ult i64 %131, 2, !dbg !1240
  %133 = xor i1 %128, %132, !dbg !1241
  call void @llvm.dbg.value(metadata i1 %133, metadata !1189, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #29, !dbg !1226
  br label %134, !dbg !1242

134:                                              ; preds = %383, %125
  %135 = phi i64 [ 1, %125 ], [ %384, %383 ], !dbg !1226
  %136 = phi i8 [ 0, %125 ], [ %385, %383 ], !dbg !1226
  %137 = phi i32 [ 0, %125 ], [ %386, %383 ], !dbg !1226
  call void @llvm.dbg.value(metadata i32 %137, metadata !1186, metadata !DIExpression()) #29, !dbg !1226
  call void @llvm.dbg.value(metadata i8 %136, metadata !1188, metadata !DIExpression()) #29, !dbg !1226
  call void @llvm.dbg.value(metadata i64 %135, metadata !1187, metadata !DIExpression()) #29, !dbg !1226
  %138 = icmp ne i64 %135, 1, !dbg !1243
  %139 = or i1 %133, %138, !dbg !1244
  br i1 %139, label %140, label %142, !dbg !1244

140:                                              ; preds = %134
  %141 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1245, !tbaa !744
  br label %227, !dbg !1244

142:                                              ; preds = %134
  %143 = load i8, i8* @delim, align 1, !dbg !1247, !tbaa !892
  %144 = zext i8 %143 to i32, !dbg !1247
  %145 = load i1, i1* @line_delim, align 1, !dbg !1248
  %146 = select i1 %145, i32 0, i32 10, !dbg !1248
  %147 = tail call i64 @getndelim2(i8** nonnull @field_1_buffer, i64* nonnull @field_1_bufsize, i64 0, i64 -1, i32 %144, i32 %146, %struct._IO_FILE* %14) #29, !dbg !1249
  call void @llvm.dbg.value(metadata i64 %147, metadata !1190, metadata !DIExpression()) #29, !dbg !1250
  %148 = icmp slt i64 %147, 0, !dbg !1251
  br i1 %148, label %149, label %156, !dbg !1253

149:                                              ; preds = %142
  %150 = load i8*, i8** @field_1_buffer, align 8, !dbg !1254, !tbaa !744
  tail call void @free(i8* %150) #29, !dbg !1256
  store i8* null, i8** @field_1_buffer, align 8, !dbg !1257, !tbaa !744
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1258, metadata !DIExpression()) #29, !dbg !1261
  %151 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 0, !dbg !1264
  %152 = load i32, i32* %151, align 8, !dbg !1264, !tbaa !1265
  %153 = and i32 %152, 48, !dbg !1266
  %154 = icmp eq i32 %153, 0, !dbg !1266
  br i1 %154, label %155, label %387, !dbg !1266

155:                                              ; preds = %149
  tail call void @xalloc_die() #31, !dbg !1267
  unreachable, !dbg !1267

156:                                              ; preds = %142
  call void @llvm.dbg.value(metadata i64 %147, metadata !1196, metadata !DIExpression()) #29, !dbg !1250
  %157 = icmp eq i64 %147, 0, !dbg !1268
  br i1 %157, label %158, label %159, !dbg !1271

158:                                              ; preds = %156
  tail call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i32 329, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.cut_fields, i64 0, i64 0)) #31, !dbg !1268
  unreachable, !dbg !1268

159:                                              ; preds = %156
  call void @llvm.dbg.value(metadata i32 0, metadata !1186, metadata !DIExpression()) #29, !dbg !1226
  %160 = load i8*, i8** @field_1_buffer, align 8, !dbg !1272, !tbaa !744
  %161 = add nsw i64 %147, -1, !dbg !1273
  %162 = getelementptr inbounds i8, i8* %160, i64 %161, !dbg !1272
  %163 = load i8, i8* %162, align 1, !dbg !1272, !tbaa !892
  %164 = load i8, i8* @delim, align 1, !dbg !1274, !tbaa !892
  %165 = icmp eq i8 %163, %164, !dbg !1275
  br i1 %165, label %192, label %166, !dbg !1276

166:                                              ; preds = %159
  %167 = load i1, i1* @suppress_non_delimited, align 1, !dbg !1277
  br i1 %167, label %383, label %168, !dbg !1278

168:                                              ; preds = %166
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1279, !tbaa !744
  %170 = tail call i64 @fwrite_unlocked(i8* nonnull %160, i64 1, i64 %147, %struct._IO_FILE* %169) #29, !dbg !1279
  %171 = load i8*, i8** @field_1_buffer, align 8, !dbg !1280, !tbaa !744
  %172 = getelementptr inbounds i8, i8* %171, i64 %161, !dbg !1280
  %173 = load i8, i8* %172, align 1, !dbg !1280, !tbaa !892
  %174 = sext i8 %173 to i32, !dbg !1280
  %175 = load i1, i1* @line_delim, align 1, !dbg !1282
  %176 = select i1 %175, i32 0, i32 10, !dbg !1282
  %177 = icmp eq i32 %176, %174, !dbg !1283
  br i1 %177, label %383, label %178, !dbg !1284

178:                                              ; preds = %168
  call void @llvm.dbg.value(metadata i32 %176, metadata !1123, metadata !DIExpression()) #29, !dbg !1285
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1287, !tbaa !744
  %180 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %179, i64 0, i32 5, !dbg !1287
  %181 = load i8*, i8** %180, align 8, !dbg !1287, !tbaa !1132
  %182 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %179, i64 0, i32 6, !dbg !1287
  %183 = load i8*, i8** %182, align 8, !dbg !1287, !tbaa !1133
  %184 = icmp ult i8* %181, %183, !dbg !1287
  br i1 %184, label %189, label %185, !dbg !1287, !prof !1118

185:                                              ; preds = %178
  %186 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %179, i32 %176) #29, !dbg !1287
  %187 = load i1, i1* @line_delim, align 1, !dbg !1288
  %188 = select i1 %187, i32 0, i32 10, !dbg !1288
  br label %383, !dbg !1287

189:                                              ; preds = %178
  %190 = trunc i32 %176 to i8, !dbg !1287
  %191 = getelementptr inbounds i8, i8* %181, i64 1, !dbg !1287
  store i8* %191, i8** %180, align 8, !dbg !1287, !tbaa !1132
  store i8 %190, i8* %181, align 1, !dbg !1287, !tbaa !892
  br label %383, !dbg !1287

192:                                              ; preds = %159
  call void @llvm.dbg.value(metadata i64 1, metadata !1168, metadata !DIExpression()) #29, !dbg !1289
  %193 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1291, !tbaa !744
  %194 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %193, i64 0, i32 0, !dbg !1292
  %195 = load i64, i64* %194, align 8, !dbg !1292, !tbaa !1172
  %196 = icmp ult i64 %195, 2, !dbg !1293
  br i1 %196, label %197, label %219, !dbg !1294

197:                                              ; preds = %192
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1295, !tbaa !744
  %199 = tail call i64 @fwrite_unlocked(i8* nonnull %160, i64 1, i64 %161, %struct._IO_FILE* %198) #29, !dbg !1295
  %200 = load i8, i8* @delim, align 1, !dbg !1296, !tbaa !892
  %201 = zext i8 %200 to i32, !dbg !1296
  %202 = load i1, i1* @line_delim, align 1, !dbg !1297
  %203 = select i1 %202, i32 0, i32 10, !dbg !1297
  %204 = icmp eq i32 %203, %201, !dbg !1298
  br i1 %204, label %205, label %219, !dbg !1299

205:                                              ; preds = %197
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1111, metadata !DIExpression()) #29, !dbg !1300
  %206 = load i8*, i8** %18, align 8, !dbg !1302, !tbaa !1114
  %207 = load i8*, i8** %115, align 8, !dbg !1302, !tbaa !1117
  %208 = icmp ult i8* %206, %207, !dbg !1302
  br i1 %208, label %209, label %213, !dbg !1302, !prof !1118

209:                                              ; preds = %205
  %210 = getelementptr inbounds i8, i8* %206, i64 1, !dbg !1302
  store i8* %210, i8** %18, align 8, !dbg !1302, !tbaa !1114
  %211 = load i8, i8* %206, align 1, !dbg !1302, !tbaa !892
  %212 = zext i8 %211 to i32, !dbg !1302
  call void @llvm.dbg.value(metadata i32 %214, metadata !1211, metadata !DIExpression()) #29, !dbg !1303
  br label %216, !dbg !1304

213:                                              ; preds = %205
  %214 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #29, !dbg !1302
  call void @llvm.dbg.value(metadata i32 %214, metadata !1211, metadata !DIExpression()) #29, !dbg !1303
  %215 = icmp eq i32 %214, -1, !dbg !1305
  br i1 %215, label %219, label %216, !dbg !1304

216:                                              ; preds = %213, %209
  %217 = phi i32 [ %212, %209 ], [ %214, %213 ]
  %218 = tail call i32 @ungetc(i32 %217, %struct._IO_FILE* nonnull %14) #29, !dbg !1307
  call void @llvm.dbg.value(metadata i8 1, metadata !1188, metadata !DIExpression()) #29, !dbg !1226
  br label %219, !dbg !1309

219:                                              ; preds = %216, %213, %197, %192
  %220 = phi i8 [ %136, %192 ], [ 1, %216 ], [ %136, %213 ], [ 1, %197 ], !dbg !1226
  call void @llvm.dbg.value(metadata i8 %220, metadata !1188, metadata !DIExpression()) #29, !dbg !1226
  call void @llvm.dbg.value(metadata i64* undef, metadata !1146, metadata !DIExpression()) #29, !dbg !1310
  %221 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1312, !tbaa !744
  %222 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %221, i64 0, i32 1, !dbg !1313
  %223 = load i64, i64* %222, align 8, !dbg !1313, !tbaa !1157
  %224 = icmp ult i64 %223, 2, !dbg !1314
  br i1 %224, label %225, label %227, !dbg !1315

225:                                              ; preds = %219
  %226 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %221, i64 1, !dbg !1316
  store %struct.field_range_pair* %226, %struct.field_range_pair** @current_rp, align 8, !dbg !1316, !tbaa !744
  br label %227, !dbg !1317

227:                                              ; preds = %225, %219, %140
  %228 = phi %struct.field_range_pair* [ %141, %140 ], [ %221, %219 ], [ %226, %225 ], !dbg !1245
  %229 = phi i64 [ %135, %140 ], [ 2, %219 ], [ 2, %225 ], !dbg !1318
  %230 = phi i8 [ %136, %140 ], [ %220, %219 ], [ %220, %225 ], !dbg !1319
  %231 = phi i32 [ %137, %140 ], [ 0, %219 ], [ 0, %225 ], !dbg !1320
  call void @llvm.dbg.value(metadata i32 %231, metadata !1186, metadata !DIExpression()) #29, !dbg !1226
  call void @llvm.dbg.value(metadata i8 %230, metadata !1188, metadata !DIExpression()) #29, !dbg !1226
  call void @llvm.dbg.value(metadata i32 %231, metadata !1214, metadata !DIExpression()) #29, !dbg !1321
  call void @llvm.dbg.value(metadata i64 %229, metadata !1187, metadata !DIExpression()) #29, !dbg !1226
  call void @llvm.dbg.value(metadata i64 %229, metadata !1168, metadata !DIExpression()) #29, !dbg !1322
  %232 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %228, i64 0, i32 0, !dbg !1323
  %233 = load i64, i64* %232, align 8, !dbg !1323, !tbaa !1172
  %234 = icmp ugt i64 %233, %229, !dbg !1324
  br i1 %234, label %280, label %235, !dbg !1325

235:                                              ; preds = %227
  %236 = and i8 %230, 1, !dbg !1326
  %237 = icmp eq i8 %236, 0, !dbg !1326
  br i1 %237, label %243, label %238, !dbg !1327

238:                                              ; preds = %235
  %239 = load i64, i64* @output_delimiter_length, align 8, !dbg !1328, !tbaa !937
  %240 = load i8*, i8** @output_delimiter_string, align 8, !dbg !1328, !tbaa !744
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1328, !tbaa !744
  %242 = tail call i64 @fwrite_unlocked(i8* %240, i64 1, i64 %239, %struct._IO_FILE* %241) #29, !dbg !1328
  br label %243, !dbg !1328

243:                                              ; preds = %238, %235
  br label %244, !dbg !1329

244:                                              ; preds = %279, %243
  %245 = phi i32 [ %231, %243 ], [ %256, %279 ], !dbg !1321
  call void @llvm.dbg.value(metadata i32 %245, metadata !1214, metadata !DIExpression()) #29, !dbg !1321
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1111, metadata !DIExpression()) #29, !dbg !1330
  %246 = load i8*, i8** %18, align 8, !dbg !1332, !tbaa !1114
  %247 = load i8*, i8** %115, align 8, !dbg !1332, !tbaa !1117
  %248 = icmp ult i8* %246, %247, !dbg !1332
  br i1 %248, label %251, label %249, !dbg !1332, !prof !1118

249:                                              ; preds = %244
  %250 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #29, !dbg !1332
  br label %255, !dbg !1332

251:                                              ; preds = %244
  %252 = getelementptr inbounds i8, i8* %246, i64 1, !dbg !1332
  store i8* %252, i8** %18, align 8, !dbg !1332, !tbaa !1114
  %253 = load i8, i8* %246, align 1, !dbg !1332, !tbaa !892
  %254 = zext i8 %253 to i32, !dbg !1332
  br label %255, !dbg !1332

255:                                              ; preds = %251, %249
  %256 = phi i32 [ %250, %249 ], [ %254, %251 ], !dbg !1332
  call void @llvm.dbg.value(metadata i32 %256, metadata !1186, metadata !DIExpression()) #29, !dbg !1226
  %257 = load i8, i8* @delim, align 1, !dbg !1333, !tbaa !892
  %258 = zext i8 %257 to i32, !dbg !1333
  %259 = icmp eq i32 %256, %258, !dbg !1334
  br i1 %259, label %302, label %260, !dbg !1335

260:                                              ; preds = %255
  %261 = load i1, i1* @line_delim, align 1, !dbg !1336
  %262 = select i1 %261, i32 0, i32 10, !dbg !1336
  %263 = icmp ne i32 %256, %262, !dbg !1337
  %264 = icmp ne i32 %256, -1
  %265 = and i1 %264, %263, !dbg !1338
  br i1 %265, label %266, label %302, !dbg !1338

266:                                              ; preds = %260
  call void @llvm.dbg.value(metadata i32 %256, metadata !1123, metadata !DIExpression()) #29, !dbg !1339
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1342, !tbaa !744
  %268 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %267, i64 0, i32 5, !dbg !1342
  %269 = load i8*, i8** %268, align 8, !dbg !1342, !tbaa !1132
  %270 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %267, i64 0, i32 6, !dbg !1342
  %271 = load i8*, i8** %270, align 8, !dbg !1342, !tbaa !1133
  %272 = icmp ult i8* %269, %271, !dbg !1342
  br i1 %272, label %276, label %273, !dbg !1342, !prof !1118

273:                                              ; preds = %266
  %274 = and i32 %256, 255, !dbg !1342
  %275 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %267, i32 %274) #29, !dbg !1342
  br label %279, !dbg !1342

276:                                              ; preds = %266
  %277 = trunc i32 %256 to i8, !dbg !1342
  %278 = getelementptr inbounds i8, i8* %269, i64 1, !dbg !1342
  store i8* %278, i8** %268, align 8, !dbg !1342, !tbaa !1132
  store i8 %277, i8* %269, align 1, !dbg !1342, !tbaa !892
  br label %279, !dbg !1342

279:                                              ; preds = %276, %273
  br label %244, !dbg !1321, !llvm.loop !1343

280:                                              ; preds = %227, %296
  %281 = phi i32 [ %292, %296 ], [ %231, %227 ], !dbg !1321
  call void @llvm.dbg.value(metadata i32 %281, metadata !1214, metadata !DIExpression()) #29, !dbg !1321
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1111, metadata !DIExpression()) #29, !dbg !1345
  %282 = load i8*, i8** %18, align 8, !dbg !1348, !tbaa !1114
  %283 = load i8*, i8** %115, align 8, !dbg !1348, !tbaa !1117
  %284 = icmp ult i8* %282, %283, !dbg !1348
  br i1 %284, label %287, label %285, !dbg !1348, !prof !1118

285:                                              ; preds = %280
  %286 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #29, !dbg !1348
  br label %291, !dbg !1348

287:                                              ; preds = %280
  %288 = getelementptr inbounds i8, i8* %282, i64 1, !dbg !1348
  store i8* %288, i8** %18, align 8, !dbg !1348, !tbaa !1114
  %289 = load i8, i8* %282, align 1, !dbg !1348, !tbaa !892
  %290 = zext i8 %289 to i32, !dbg !1348
  br label %291, !dbg !1348

291:                                              ; preds = %287, %285
  %292 = phi i32 [ %286, %285 ], [ %290, %287 ], !dbg !1348
  call void @llvm.dbg.value(metadata i32 %292, metadata !1186, metadata !DIExpression()) #29, !dbg !1226
  %293 = load i8, i8* @delim, align 1, !dbg !1349, !tbaa !892
  %294 = zext i8 %293 to i32, !dbg !1349
  %295 = icmp eq i32 %292, %294, !dbg !1350
  br i1 %295, label %302, label %296, !dbg !1351

296:                                              ; preds = %291
  %297 = load i1, i1* @line_delim, align 1, !dbg !1352
  %298 = select i1 %297, i32 0, i32 10, !dbg !1352
  %299 = icmp ne i32 %292, %298, !dbg !1353
  %300 = icmp ne i32 %292, -1
  %301 = and i1 %300, %299, !dbg !1354
  br i1 %301, label %280, label %302, !dbg !1354, !llvm.loop !1355

302:                                              ; preds = %255, %260, %291, %296
  %303 = phi i8 [ %293, %296 ], [ %293, %291 ], [ %257, %260 ], [ %257, %255 ]
  %304 = phi i32 [ %281, %296 ], [ %281, %291 ], [ %245, %260 ], [ %245, %255 ], !dbg !1358
  %305 = phi i8 [ %230, %296 ], [ %230, %291 ], [ 1, %260 ], [ 1, %255 ], !dbg !1226
  %306 = phi i32 [ %292, %296 ], [ %292, %291 ], [ %256, %260 ], [ %256, %255 ], !dbg !1359
  %307 = zext i8 %303 to i32, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %306, metadata !1186, metadata !DIExpression()) #29, !dbg !1226
  call void @llvm.dbg.value(metadata i8 %305, metadata !1188, metadata !DIExpression()) #29, !dbg !1226
  call void @llvm.dbg.value(metadata i32 %304, metadata !1214, metadata !DIExpression()) #29, !dbg !1321
  %308 = load i1, i1* @line_delim, align 1, !dbg !1361
  %309 = select i1 %308, i32 0, i32 10, !dbg !1361
  %310 = icmp eq i32 %309, %307, !dbg !1362
  %311 = icmp eq i32 %306, %307
  %312 = and i1 %311, %310, !dbg !1363
  br i1 %312, label %313, label %334, !dbg !1363

313:                                              ; preds = %302
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1111, metadata !DIExpression()) #29, !dbg !1364
  %314 = load i8*, i8** %18, align 8, !dbg !1366, !tbaa !1114
  %315 = load i8*, i8** %115, align 8, !dbg !1366, !tbaa !1117
  %316 = icmp ult i8* %314, %315, !dbg !1366
  br i1 %316, label %317, label %321, !dbg !1366, !prof !1118

317:                                              ; preds = %313
  %318 = getelementptr inbounds i8, i8* %314, i64 1, !dbg !1366
  store i8* %318, i8** %18, align 8, !dbg !1366, !tbaa !1114
  %319 = load i8, i8* %314, align 1, !dbg !1366, !tbaa !892
  %320 = zext i8 %319 to i32, !dbg !1366
  call void @llvm.dbg.value(metadata i32 %322, metadata !1223, metadata !DIExpression()) #29, !dbg !1367
  br label %329, !dbg !1368

321:                                              ; preds = %313
  %322 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #29, !dbg !1366
  call void @llvm.dbg.value(metadata i32 %322, metadata !1223, metadata !DIExpression()) #29, !dbg !1367
  %323 = icmp eq i32 %322, -1, !dbg !1369
  br i1 %323, label %324, label %329, !dbg !1368

324:                                              ; preds = %321
  call void @llvm.dbg.value(metadata i32 %306, metadata !1186, metadata !DIExpression()) #29, !dbg !1226
  %325 = load i8, i8* @delim, align 1, !dbg !1371, !tbaa !892
  %326 = zext i8 %325 to i32, !dbg !1371
  %327 = load i1, i1* @line_delim, align 1, !dbg !1373
  %328 = select i1 %327, i32 0, i32 10, !dbg !1373
  br label %351, !dbg !1375

329:                                              ; preds = %321, %317
  %330 = phi i32 [ %320, %317 ], [ %322, %321 ]
  %331 = tail call i32 @ungetc(i32 %330, %struct._IO_FILE* nonnull %14) #29, !dbg !1376
  %332 = load i8, i8* @delim, align 1, !dbg !1371, !tbaa !892
  %333 = zext i8 %332 to i32, !dbg !1371
  br label %334, !dbg !1376

334:                                              ; preds = %329, %302
  %335 = phi i32 [ %333, %329 ], [ %307, %302 ], !dbg !1371
  call void @llvm.dbg.value(metadata i32 %306, metadata !1186, metadata !DIExpression()) #29, !dbg !1226
  %336 = icmp eq i32 %306, %335, !dbg !1377
  br i1 %336, label %337, label %345, !dbg !1378

337:                                              ; preds = %334
  call void @llvm.dbg.value(metadata i64* undef, metadata !1146, metadata !DIExpression()) #29, !dbg !1379
  %338 = add i64 %229, 1, !dbg !1381
  %339 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1382, !tbaa !744
  %340 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %339, i64 0, i32 1, !dbg !1383
  %341 = load i64, i64* %340, align 8, !dbg !1383, !tbaa !1157
  %342 = icmp ugt i64 %338, %341, !dbg !1384
  br i1 %342, label %343, label %383, !dbg !1385

343:                                              ; preds = %337
  %344 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %339, i64 1, !dbg !1386
  store %struct.field_range_pair* %344, %struct.field_range_pair** @current_rp, align 8, !dbg !1386, !tbaa !744
  br label %383, !dbg !1387

345:                                              ; preds = %334
  %346 = load i1, i1* @line_delim, align 1, !dbg !1373
  %347 = select i1 %346, i32 0, i32 10, !dbg !1373
  %348 = icmp eq i32 %306, %347, !dbg !1388
  %349 = icmp eq i32 %306, -1
  %350 = or i1 %349, %348, !dbg !1375
  br i1 %350, label %351, label %383, !dbg !1375

351:                                              ; preds = %345, %324
  %352 = phi i1 [ true, %324 ], [ %349, %345 ]
  %353 = phi i32 [ %328, %324 ], [ %347, %345 ]
  %354 = phi i32 [ -1, %324 ], [ %306, %345 ]
  %355 = phi i32 [ %326, %324 ], [ %335, %345 ]
  %356 = and i8 %305, 1, !dbg !1389
  %357 = icmp eq i8 %356, 0, !dbg !1389
  br i1 %357, label %358, label %362, !dbg !1392

358:                                              ; preds = %351
  %359 = load i1, i1* @suppress_non_delimited, align 1, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %229, metadata !1187, metadata !DIExpression()) #29, !dbg !1226
  %360 = icmp eq i64 %229, 1
  %361 = and i1 %360, %359, !dbg !1394
  br i1 %361, label %380, label %362, !dbg !1394

362:                                              ; preds = %358, %351
  %363 = icmp eq i32 %354, %353, !dbg !1395
  %364 = icmp ne i32 %304, %353
  %365 = or i1 %364, %363, !dbg !1398
  %366 = icmp eq i32 %353, %355
  %367 = or i1 %365, %366, !dbg !1398
  br i1 %367, label %368, label %380, !dbg !1398

368:                                              ; preds = %362
  call void @llvm.dbg.value(metadata i32 %347, metadata !1123, metadata !DIExpression()) #29, !dbg !1399
  %369 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1401, !tbaa !744
  %370 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %369, i64 0, i32 5, !dbg !1401
  %371 = load i8*, i8** %370, align 8, !dbg !1401, !tbaa !1132
  %372 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %369, i64 0, i32 6, !dbg !1401
  %373 = load i8*, i8** %372, align 8, !dbg !1401, !tbaa !1133
  %374 = icmp ult i8* %371, %373, !dbg !1401
  br i1 %374, label %377, label %375, !dbg !1401, !prof !1118

375:                                              ; preds = %368
  %376 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %369, i32 %353) #29, !dbg !1401
  br label %380, !dbg !1401

377:                                              ; preds = %368
  %378 = trunc i32 %353 to i8, !dbg !1401
  %379 = getelementptr inbounds i8, i8* %371, i64 1, !dbg !1401
  store i8* %379, i8** %370, align 8, !dbg !1401, !tbaa !1132
  store i8 %378, i8* %371, align 1, !dbg !1401, !tbaa !892
  br label %380, !dbg !1401

380:                                              ; preds = %377, %375, %362, %358
  br i1 %352, label %387, label %381, !dbg !1402

381:                                              ; preds = %380
  call void @llvm.dbg.value(metadata i64 1, metadata !1187, metadata !DIExpression()) #29, !dbg !1226
  %382 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1403, !tbaa !744
  store %struct.field_range_pair* %382, %struct.field_range_pair** @current_rp, align 8, !dbg !1404, !tbaa !744
  call void @llvm.dbg.value(metadata i8 0, metadata !1188, metadata !DIExpression()) #29, !dbg !1226
  br label %383, !dbg !1405

383:                                              ; preds = %381, %345, %343, %337, %189, %185, %168, %166
  %384 = phi i64 [ 1, %166 ], [ 1, %381 ], [ %229, %345 ], [ %338, %337 ], [ %338, %343 ], [ 1, %189 ], [ 1, %185 ], [ 1, %168 ]
  %385 = phi i8 [ %136, %166 ], [ 0, %381 ], [ %305, %345 ], [ %305, %337 ], [ %305, %343 ], [ %136, %189 ], [ %136, %185 ], [ %136, %168 ]
  %386 = phi i32 [ 0, %166 ], [ %354, %381 ], [ %306, %345 ], [ %306, %337 ], [ %306, %343 ], [ %176, %189 ], [ %188, %185 ], [ %174, %168 ]
  br label %134, !dbg !1226, !llvm.loop !1406

387:                                              ; preds = %380, %60, %69, %71, %122, %149
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1258, metadata !DIExpression()), !dbg !1408
  %388 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 0, !dbg !1411
  %389 = load i32, i32* %388, align 8, !dbg !1411, !tbaa !1265
  %390 = and i32 %389, 32, !dbg !1412
  %391 = icmp eq i32 %390, 0, !dbg !1412
  br i1 %391, label %396, label %392, !dbg !1413

392:                                              ; preds = %387
  %393 = tail call i32* @__errno_location() #33, !dbg !1414
  %394 = load i32, i32* %393, align 4, !dbg !1414, !tbaa !989
  %395 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #29, !dbg !1416
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %394, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* %395) #29, !dbg !1417
  br label %407, !dbg !1418

396:                                              ; preds = %387
  %397 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #30, !dbg !1419
  %398 = icmp eq i32 %397, 0, !dbg !1419
  br i1 %398, label %399, label %400, !dbg !1421

399:                                              ; preds = %396
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %14) #29, !dbg !1422
  br label %407, !dbg !1422

400:                                              ; preds = %396
  %401 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %14) #29, !dbg !1423
  %402 = icmp eq i32 %401, -1, !dbg !1425
  br i1 %402, label %403, label %407, !dbg !1426

403:                                              ; preds = %400
  %404 = tail call i32* @__errno_location() #33, !dbg !1427
  %405 = load i32, i32* %404, align 4, !dbg !1427, !tbaa !989
  %406 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #29, !dbg !1429
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %405, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* %406) #29, !dbg !1430
  br label %407, !dbg !1431

407:                                              ; preds = %399, %400, %403, %392, %9
  %408 = phi i1 [ false, %392 ], [ false, %403 ], [ false, %9 ], [ true, %400 ], [ true, %399 ], !dbg !1050
  ret i1 %408, !dbg !1432
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1433 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1438 noundef i32 @ungetc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !1441 void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_fields(i8* %0, i32 %1) local_unnamed_addr #8 !dbg !165 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !169, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 %1, metadata !170, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 1, metadata !171, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 0, metadata !172, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 0, metadata !173, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 0, metadata !174, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 0, metadata !175, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 0, metadata !176, metadata !DIExpression()), !dbg !1444
  %3 = and i32 %1, 1, !dbg !1445
  %4 = icmp eq i32 %3, 0, !dbg !1445
  br i1 %4, label %10, label %5, !dbg !1447

5:                                                ; preds = %2
  %6 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0)) #30, !dbg !1448
  %7 = icmp eq i32 %6, 0, !dbg !1448
  br i1 %7, label %8, label %10, !dbg !1449

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 1, metadata !172, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 1, metadata !173, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 1, metadata !175, metadata !DIExpression()), !dbg !1444
  %9 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1450
  call void @llvm.dbg.value(metadata i8* %9, metadata !169, metadata !DIExpression()), !dbg !1444
  br label %10, !dbg !1452

10:                                               ; preds = %8, %5, %2
  %11 = phi i64 [ 1, %8 ], [ 0, %5 ], [ 0, %2 ], !dbg !1444
  %12 = phi i8 [ 1, %8 ], [ 0, %5 ], [ 0, %2 ], !dbg !1444
  %13 = phi i8* [ %9, %8 ], [ %0, %5 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !172, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %13, metadata !169, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %12, metadata !175, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %12, metadata !173, metadata !DIExpression()), !dbg !1444
  %14 = xor i1 %4, true
  br label %15, !dbg !1453

15:                                               ; preds = %231, %10
  %16 = phi i64 [ %11, %10 ], [ %232, %231 ], !dbg !1444
  %17 = phi i8 [ %12, %10 ], [ %233, %231 ], !dbg !1454
  %18 = phi i8 [ 0, %10 ], [ %234, %231 ], !dbg !1455
  %19 = phi i8 [ %12, %10 ], [ %235, %231 ], !dbg !1444
  %20 = phi i1 [ false, %10 ], [ %236, %231 ], !dbg !1444
  %21 = phi i64 [ 1, %10 ], [ %237, %231 ], !dbg !1444
  %22 = phi i8* [ %13, %10 ], [ %238, %231 ], !dbg !1444
  call void @llvm.dbg.value(metadata i64 %16, metadata !172, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %22, metadata !169, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %21, metadata !171, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 undef, metadata !176, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %19, metadata !175, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %18, metadata !174, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %17, metadata !173, metadata !DIExpression()), !dbg !1444
  %23 = load i8, i8* %22, align 1, !dbg !1456, !tbaa !892
  switch i8 %23, label %44 [
    i8 45, label %24
    i8 44, label %54
  ], !dbg !1457

24:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8 0, metadata !176, metadata !DIExpression()), !dbg !1444
  %25 = and i8 %19, 1, !dbg !1458
  %26 = icmp eq i8 %25, 0, !dbg !1458
  br i1 %26, label %32, label %27, !dbg !1461

27:                                               ; preds = %24
  %28 = and i32 %1, 4, !dbg !1462
  %29 = icmp eq i32 %28, 0, !dbg !1462
  %30 = select i1 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2.59, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.60, i64 0, i64 0), !dbg !1462
  %31 = tail call i8* @dcgettext(i8* null, i8* %30, i32 5) #29, !dbg !1462
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %31) #29, !dbg !1462
  tail call void @usage(i32 1) #31, !dbg !1462
  unreachable, !dbg !1462

32:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8 1, metadata !175, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %22, metadata !169, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1444
  %33 = and i8 %17, 1, !dbg !1464
  %34 = icmp eq i8 %33, 0, !dbg !1464
  %35 = icmp ne i64 %16, 0
  %36 = or i1 %35, %34, !dbg !1466
  br i1 %36, label %42, label %37, !dbg !1466

37:                                               ; preds = %32
  %38 = and i32 %1, 4, !dbg !1467
  %39 = icmp eq i32 %38, 0, !dbg !1467
  %40 = select i1 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.61, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.62, i64 0, i64 0), !dbg !1467
  %41 = tail call i8* @dcgettext(i8* null, i8* %40, i32 5) #29, !dbg !1467
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %41) #29, !dbg !1467
  tail call void @usage(i32 1) #31, !dbg !1467
  unreachable, !dbg !1467

42:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i8* %22, metadata !169, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1444
  %43 = select i1 %34, i64 1, i64 %16, !dbg !1469
  call void @llvm.dbg.value(metadata i64 %43, metadata !171, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 0, metadata !172, metadata !DIExpression()), !dbg !1444
  br label %231, !dbg !1470

44:                                               ; preds = %15
  %45 = tail call i16** @__ctype_b_loc() #33, !dbg !1471
  %46 = load i16*, i16** %45, align 8, !dbg !1471, !tbaa !744
  %47 = zext i8 %23 to i64, !dbg !1471
  %48 = getelementptr inbounds i16, i16* %46, i64 %47, !dbg !1471
  %49 = load i16, i16* %48, align 2, !dbg !1471, !tbaa !1472
  %50 = and i16 %49, 1, !dbg !1471
  %51 = icmp ne i16 %50, 0, !dbg !1471
  %52 = icmp eq i8 %23, 0
  %53 = or i1 %52, %51, !dbg !1473
  br i1 %53, label %54, label %192, !dbg !1473

54:                                               ; preds = %15, %44
  call void @llvm.dbg.value(metadata i8 0, metadata !176, metadata !DIExpression()), !dbg !1444
  %55 = and i8 %19, 1, !dbg !1474
  %56 = icmp eq i8 %55, 0, !dbg !1474
  br i1 %56, label %142, label %57, !dbg !1477

57:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i8 0, metadata !175, metadata !DIExpression()), !dbg !1444
  %58 = or i8 %18, %17, !dbg !1478
  %59 = and i8 %58, 1, !dbg !1478
  %60 = icmp ne i8 %59, 0, !dbg !1478
  %61 = or i1 %60, %14, !dbg !1478
  %62 = select i1 %60, i64 %21, i64 1, !dbg !1478
  br i1 %61, label %65, label %63, !dbg !1478

63:                                               ; preds = %57
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.63, i64 0, i64 0), i32 5) #29, !dbg !1481
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %64) #29, !dbg !1481
  tail call void @usage(i32 1) #31, !dbg !1481
  unreachable, !dbg !1481

65:                                               ; preds = %57
  %66 = and i8 %18, 1
  %67 = icmp eq i8 %66, 0
  call void @llvm.dbg.value(metadata i64 %62, metadata !171, metadata !DIExpression()), !dbg !1444
  br i1 %67, label %68, label %103, !dbg !1485

68:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i64 %62, metadata !1486, metadata !DIExpression()) #29, !dbg !1492
  call void @llvm.dbg.value(metadata i64 -1, metadata !1491, metadata !DIExpression()) #29, !dbg !1492
  %69 = load i64, i64* @n_frp, align 8, !dbg !1496, !tbaa !937
  %70 = load i64, i64* @n_frp_allocated, align 8, !dbg !1498, !tbaa !937
  %71 = icmp eq i64 %69, %70, !dbg !1499
  br i1 %71, label %75, label %72, !dbg !1500

72:                                               ; preds = %68
  %73 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1501, !tbaa !744
  %74 = bitcast %struct.field_range_pair* %73 to i8*, !dbg !1500
  br label %96, !dbg !1500

75:                                               ; preds = %68
  %76 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1502, !tbaa !744
  call void @llvm.dbg.value(metadata i8* %76, metadata !147, metadata !DIExpression()) #29, !dbg !1503
  call void @llvm.dbg.value(metadata i64* @n_frp_allocated, metadata !148, metadata !DIExpression()) #29, !dbg !1503
  call void @llvm.dbg.value(metadata i64 16, metadata !149, metadata !DIExpression()) #29, !dbg !1503
  call void @llvm.dbg.value(metadata i64 %70, metadata !150, metadata !DIExpression()) #29, !dbg !1503
  %77 = icmp eq i8* %76, null, !dbg !1505
  br i1 %77, label %78, label %83, !dbg !1507

78:                                               ; preds = %75
  %79 = icmp eq i64 %69, 0, !dbg !1508
  br i1 %79, label %90, label %80, !dbg !1511

80:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 %70, metadata !150, metadata !DIExpression()) #29, !dbg !1503
  %81 = icmp ugt i64 %69, 576460752303423487, !dbg !1512
  br i1 %81, label %82, label %90, !dbg !1514

82:                                               ; preds = %80
  tail call void @xalloc_die() #31, !dbg !1515
  unreachable, !dbg !1515

83:                                               ; preds = %75
  %84 = icmp ult i64 %69, 384307168202282325, !dbg !1516
  br i1 %84, label %86, label %85, !dbg !1519

85:                                               ; preds = %83
  tail call void @xalloc_die() #31, !dbg !1520
  unreachable, !dbg !1520

86:                                               ; preds = %83
  %87 = lshr i64 %69, 1, !dbg !1521
  %88 = add nuw nsw i64 %69, 1, !dbg !1522
  %89 = add nuw nsw i64 %88, %87, !dbg !1523
  call void @llvm.dbg.value(metadata i64 %89, metadata !150, metadata !DIExpression()) #29, !dbg !1503
  br label %90

90:                                               ; preds = %86, %80, %78
  %91 = phi i64 [ %89, %86 ], [ %69, %80 ], [ 8, %78 ], !dbg !1503
  call void @llvm.dbg.value(metadata i64 %91, metadata !150, metadata !DIExpression()) #29, !dbg !1503
  store i64 %91, i64* @n_frp_allocated, align 8, !dbg !1524, !tbaa !937
  %92 = shl nuw nsw i64 %91, 4, !dbg !1525
  %93 = tail call i8* @xrealloc(i8* %76, i64 %92) #29, !dbg !1526
  store i8* %93, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1527, !tbaa !744
  %94 = bitcast i8* %93 to %struct.field_range_pair*, !dbg !1528
  %95 = load i64, i64* @n_frp, align 8, !dbg !1529, !tbaa !937
  br label %96, !dbg !1528

96:                                               ; preds = %72, %90
  %97 = phi i8* [ %74, %72 ], [ %93, %90 ]
  %98 = phi i64 [ %69, %72 ], [ %95, %90 ], !dbg !1529
  %99 = phi %struct.field_range_pair* [ %73, %72 ], [ %94, %90 ], !dbg !1501
  %100 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %99, i64 %98, i32 0, !dbg !1530
  store i64 %62, i64* %100, align 8, !dbg !1531, !tbaa !1172
  %101 = load i64, i64* @n_frp, align 8, !dbg !1532, !tbaa !937
  %102 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %99, i64 %101, i32 1, !dbg !1533
  store i64 -1, i64* %102, align 8, !dbg !1534, !tbaa !1157
  br label %184, !dbg !1535

103:                                              ; preds = %65
  %104 = icmp ult i64 %16, %62, !dbg !1536
  br i1 %104, label %105, label %107, !dbg !1539

105:                                              ; preds = %103
  %106 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6.64, i64 0, i64 0), i32 5) #29, !dbg !1540
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %106) #29, !dbg !1540
  tail call void @usage(i32 1) #31, !dbg !1540
  unreachable, !dbg !1540

107:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 %62, metadata !1486, metadata !DIExpression()) #29, !dbg !1542
  call void @llvm.dbg.value(metadata i64 %16, metadata !1491, metadata !DIExpression()) #29, !dbg !1542
  %108 = load i64, i64* @n_frp, align 8, !dbg !1544, !tbaa !937
  %109 = load i64, i64* @n_frp_allocated, align 8, !dbg !1545, !tbaa !937
  %110 = icmp eq i64 %108, %109, !dbg !1546
  br i1 %110, label %114, label %111, !dbg !1547

111:                                              ; preds = %107
  %112 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1548, !tbaa !744
  %113 = bitcast %struct.field_range_pair* %112 to i8*, !dbg !1547
  br label %135, !dbg !1547

114:                                              ; preds = %107
  %115 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1549, !tbaa !744
  call void @llvm.dbg.value(metadata i8* %115, metadata !147, metadata !DIExpression()) #29, !dbg !1550
  call void @llvm.dbg.value(metadata i64* @n_frp_allocated, metadata !148, metadata !DIExpression()) #29, !dbg !1550
  call void @llvm.dbg.value(metadata i64 16, metadata !149, metadata !DIExpression()) #29, !dbg !1550
  call void @llvm.dbg.value(metadata i64 %109, metadata !150, metadata !DIExpression()) #29, !dbg !1550
  %116 = icmp eq i8* %115, null, !dbg !1552
  br i1 %116, label %117, label %122, !dbg !1553

117:                                              ; preds = %114
  %118 = icmp eq i64 %108, 0, !dbg !1554
  br i1 %118, label %129, label %119, !dbg !1555

119:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i64 %109, metadata !150, metadata !DIExpression()) #29, !dbg !1550
  %120 = icmp ugt i64 %108, 576460752303423487, !dbg !1556
  br i1 %120, label %121, label %129, !dbg !1557

121:                                              ; preds = %119
  tail call void @xalloc_die() #31, !dbg !1558
  unreachable, !dbg !1558

122:                                              ; preds = %114
  %123 = icmp ult i64 %108, 384307168202282325, !dbg !1559
  br i1 %123, label %125, label %124, !dbg !1560

124:                                              ; preds = %122
  tail call void @xalloc_die() #31, !dbg !1561
  unreachable, !dbg !1561

125:                                              ; preds = %122
  %126 = lshr i64 %108, 1, !dbg !1562
  %127 = add nuw nsw i64 %108, 1, !dbg !1563
  %128 = add nuw nsw i64 %127, %126, !dbg !1564
  call void @llvm.dbg.value(metadata i64 %128, metadata !150, metadata !DIExpression()) #29, !dbg !1550
  br label %129

129:                                              ; preds = %125, %119, %117
  %130 = phi i64 [ %128, %125 ], [ %108, %119 ], [ 8, %117 ], !dbg !1550
  call void @llvm.dbg.value(metadata i64 %130, metadata !150, metadata !DIExpression()) #29, !dbg !1550
  store i64 %130, i64* @n_frp_allocated, align 8, !dbg !1565, !tbaa !937
  %131 = shl nuw nsw i64 %130, 4, !dbg !1566
  %132 = tail call i8* @xrealloc(i8* %115, i64 %131) #29, !dbg !1567
  store i8* %132, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1568, !tbaa !744
  %133 = bitcast i8* %132 to %struct.field_range_pair*, !dbg !1569
  %134 = load i64, i64* @n_frp, align 8, !dbg !1570, !tbaa !937
  br label %135, !dbg !1569

135:                                              ; preds = %111, %129
  %136 = phi i8* [ %113, %111 ], [ %132, %129 ]
  %137 = phi i64 [ %108, %111 ], [ %134, %129 ], !dbg !1570
  %138 = phi %struct.field_range_pair* [ %112, %111 ], [ %133, %129 ], !dbg !1548
  %139 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %138, i64 %137, i32 0, !dbg !1571
  store i64 %62, i64* %139, align 8, !dbg !1572, !tbaa !1172
  %140 = load i64, i64* @n_frp, align 8, !dbg !1573, !tbaa !937
  %141 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %138, i64 %140, i32 1, !dbg !1574
  store i64 %16, i64* %141, align 8, !dbg !1575, !tbaa !1157
  br label %184

142:                                              ; preds = %54
  %143 = icmp eq i64 %16, 0, !dbg !1576
  br i1 %143, label %144, label %149, !dbg !1579

144:                                              ; preds = %142
  %145 = and i32 %1, 4, !dbg !1580
  %146 = icmp eq i32 %145, 0, !dbg !1580
  %147 = select i1 %146, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.61, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.62, i64 0, i64 0), !dbg !1580
  %148 = tail call i8* @dcgettext(i8* null, i8* %147, i32 5) #29, !dbg !1580
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %148) #29, !dbg !1580
  tail call void @usage(i32 1) #31, !dbg !1580
  unreachable, !dbg !1580

149:                                              ; preds = %142
  call void @llvm.dbg.value(metadata i64 %16, metadata !1486, metadata !DIExpression()) #29, !dbg !1582
  call void @llvm.dbg.value(metadata i64 %16, metadata !1491, metadata !DIExpression()) #29, !dbg !1582
  %150 = load i64, i64* @n_frp, align 8, !dbg !1584, !tbaa !937
  %151 = load i64, i64* @n_frp_allocated, align 8, !dbg !1585, !tbaa !937
  %152 = icmp eq i64 %150, %151, !dbg !1586
  br i1 %152, label %156, label %153, !dbg !1587

153:                                              ; preds = %149
  %154 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1588, !tbaa !744
  %155 = bitcast %struct.field_range_pair* %154 to i8*, !dbg !1587
  br label %177, !dbg !1587

156:                                              ; preds = %149
  %157 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1589, !tbaa !744
  call void @llvm.dbg.value(metadata i8* %157, metadata !147, metadata !DIExpression()) #29, !dbg !1590
  call void @llvm.dbg.value(metadata i64* @n_frp_allocated, metadata !148, metadata !DIExpression()) #29, !dbg !1590
  call void @llvm.dbg.value(metadata i64 16, metadata !149, metadata !DIExpression()) #29, !dbg !1590
  call void @llvm.dbg.value(metadata i64 %151, metadata !150, metadata !DIExpression()) #29, !dbg !1590
  %158 = icmp eq i8* %157, null, !dbg !1592
  br i1 %158, label %159, label %164, !dbg !1593

159:                                              ; preds = %156
  %160 = icmp eq i64 %150, 0, !dbg !1594
  br i1 %160, label %171, label %161, !dbg !1595

161:                                              ; preds = %159
  call void @llvm.dbg.value(metadata i64 %151, metadata !150, metadata !DIExpression()) #29, !dbg !1590
  %162 = icmp ugt i64 %150, 576460752303423487, !dbg !1596
  br i1 %162, label %163, label %171, !dbg !1597

163:                                              ; preds = %161
  tail call void @xalloc_die() #31, !dbg !1598
  unreachable, !dbg !1598

164:                                              ; preds = %156
  %165 = icmp ult i64 %150, 384307168202282325, !dbg !1599
  br i1 %165, label %167, label %166, !dbg !1600

166:                                              ; preds = %164
  tail call void @xalloc_die() #31, !dbg !1601
  unreachable, !dbg !1601

167:                                              ; preds = %164
  %168 = lshr i64 %150, 1, !dbg !1602
  %169 = add nuw nsw i64 %150, 1, !dbg !1603
  %170 = add nuw nsw i64 %169, %168, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %170, metadata !150, metadata !DIExpression()) #29, !dbg !1590
  br label %171

171:                                              ; preds = %167, %161, %159
  %172 = phi i64 [ %170, %167 ], [ %150, %161 ], [ 8, %159 ], !dbg !1590
  call void @llvm.dbg.value(metadata i64 %172, metadata !150, metadata !DIExpression()) #29, !dbg !1590
  store i64 %172, i64* @n_frp_allocated, align 8, !dbg !1605, !tbaa !937
  %173 = shl nuw nsw i64 %172, 4, !dbg !1606
  %174 = tail call i8* @xrealloc(i8* %157, i64 %173) #29, !dbg !1607
  store i8* %174, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1608, !tbaa !744
  %175 = bitcast i8* %174 to %struct.field_range_pair*, !dbg !1609
  %176 = load i64, i64* @n_frp, align 8, !dbg !1610, !tbaa !937
  br label %177, !dbg !1609

177:                                              ; preds = %153, %171
  %178 = phi i8* [ %155, %153 ], [ %174, %171 ]
  %179 = phi i64 [ %150, %153 ], [ %176, %171 ], !dbg !1610
  %180 = phi %struct.field_range_pair* [ %154, %153 ], [ %175, %171 ], !dbg !1588
  %181 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %180, i64 %179, i32 0, !dbg !1611
  store i64 %16, i64* %181, align 8, !dbg !1612, !tbaa !1172
  %182 = load i64, i64* @n_frp, align 8, !dbg !1613, !tbaa !937
  %183 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %180, i64 %182, i32 1, !dbg !1614
  store i64 %16, i64* %183, align 8, !dbg !1615, !tbaa !1157
  call void @llvm.dbg.value(metadata i64 0, metadata !172, metadata !DIExpression()), !dbg !1444
  br label %184

184:                                              ; preds = %96, %135, %177
  %185 = phi i8* [ %97, %96 ], [ %136, %135 ], [ %178, %177 ]
  %186 = phi i8 [ 0, %96 ], [ 0, %135 ], [ %19, %177 ], !dbg !1444
  %187 = phi i64 [ %62, %96 ], [ %62, %135 ], [ %21, %177 ], !dbg !1616
  %188 = load i64, i64* @n_frp, align 8, !dbg !1617, !tbaa !937
  %189 = add i64 %188, 1, !dbg !1617
  store i64 %189, i64* @n_frp, align 8, !dbg !1617, !tbaa !937
  call void @llvm.dbg.value(metadata i64 0, metadata !172, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %187, metadata !171, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %186, metadata !175, metadata !DIExpression()), !dbg !1444
  %190 = load i8, i8* %22, align 1, !dbg !1618, !tbaa !892
  %191 = icmp eq i8 %190, 0, !dbg !1620
  br i1 %191, label %239, label %231, !dbg !1621

192:                                              ; preds = %44
  %193 = sext i8 %23 to i32, !dbg !1622
  %194 = add nsw i32 %193, -48, !dbg !1623
  %195 = icmp ult i32 %194, 10, !dbg !1623
  br i1 %195, label %196, label %225, !dbg !1624

196:                                              ; preds = %192
  %197 = load i8*, i8** @set_fields.num_start, align 8
  %198 = icmp ne i8* %197, null
  %199 = and i1 %20, %198, !dbg !1625
  br i1 %199, label %201, label %200, !dbg !1625

200:                                              ; preds = %196
  store i8* %22, i8** @set_fields.num_start, align 8, !dbg !1627, !tbaa !744
  br label %201, !dbg !1628

201:                                              ; preds = %196, %200
  %202 = phi i8* [ %197, %196 ], [ %22, %200 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !176, metadata !DIExpression()), !dbg !1444
  %203 = and i8 %19, 1, !dbg !1629
  %204 = icmp eq i8 %203, 0, !dbg !1629
  call void @llvm.dbg.value(metadata i8 undef, metadata !174, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 undef, metadata !173, metadata !DIExpression()), !dbg !1444
  %205 = icmp ugt i64 %16, 1844674407370955161, !dbg !1631
  br i1 %205, label %217, label %206, !dbg !1631

206:                                              ; preds = %201
  %207 = select i1 %204, i8 %18, i8 1, !dbg !1632
  call void @llvm.dbg.value(metadata i8 %207, metadata !174, metadata !DIExpression()), !dbg !1444
  %208 = select i1 %204, i8 1, i8 %17, !dbg !1632
  call void @llvm.dbg.value(metadata i8 %208, metadata !173, metadata !DIExpression()), !dbg !1444
  %209 = mul nuw i64 %16, 10, !dbg !1631
  %210 = sext i8 %23 to i64, !dbg !1631
  %211 = add i64 %209, -48, !dbg !1631
  %212 = add i64 %211, %210, !dbg !1631
  %213 = icmp ult i64 %212, %16, !dbg !1631
  %214 = select i1 %213, i64 %16, i64 %212, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %214, metadata !172, metadata !DIExpression()), !dbg !1444
  %215 = icmp eq i64 %214, -1
  %216 = or i1 %213, %215, !dbg !1633
  br i1 %216, label %217, label %231, !dbg !1633

217:                                              ; preds = %201, %206
  %218 = tail call i64 @strspn(i8* nonnull %202, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7.65, i64 0, i64 0)) #30, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %218, metadata !177, metadata !DIExpression()), !dbg !1635
  %219 = tail call noalias i8* @xstrndup(i8* nonnull %202, i64 %218) #29, !dbg !1636
  call void @llvm.dbg.value(metadata i8* %219, metadata !185, metadata !DIExpression()), !dbg !1635
  %220 = and i32 %1, 4, !dbg !1637
  %221 = icmp eq i32 %220, 0, !dbg !1637
  %222 = select i1 %221, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9.66, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8.67, i64 0, i64 0), !dbg !1638
  %223 = tail call i8* @dcgettext(i8* null, i8* %222, i32 5) #29, !dbg !1635
  %224 = tail call i8* @quote(i8* %219) #29, !dbg !1639
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %223, i8* %224) #29, !dbg !1640
  tail call void @free(i8* %219) #29, !dbg !1641
  tail call void @usage(i32 1) #31, !dbg !1642
  unreachable, !dbg !1642

225:                                              ; preds = %192
  %226 = and i32 %1, 4, !dbg !1643
  %227 = icmp eq i32 %226, 0, !dbg !1643
  %228 = select i1 %227, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11.68, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10.69, i64 0, i64 0), !dbg !1645
  %229 = tail call i8* @dcgettext(i8* null, i8* %228, i32 5) #29, !dbg !1646
  %230 = tail call i8* @quote(i8* nonnull %22) #29, !dbg !1647
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %229, i8* %230) #29, !dbg !1648
  tail call void @usage(i32 1) #31, !dbg !1649
  unreachable, !dbg !1649

231:                                              ; preds = %206, %184, %42
  %232 = phi i64 [ 0, %42 ], [ 0, %184 ], [ %214, %206 ], !dbg !1444
  %233 = phi i8 [ %17, %42 ], [ 0, %184 ], [ %208, %206 ], !dbg !1444
  %234 = phi i8 [ %18, %42 ], [ 0, %184 ], [ %207, %206 ], !dbg !1444
  %235 = phi i8 [ 1, %42 ], [ %186, %184 ], [ %19, %206 ], !dbg !1444
  %236 = phi i1 [ false, %42 ], [ false, %184 ], [ true, %206 ], !dbg !1650
  %237 = phi i64 [ %43, %42 ], [ %187, %184 ], [ %21, %206 ], !dbg !1444
  %238 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %232, metadata !172, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %238, metadata !169, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %237, metadata !171, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 undef, metadata !176, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %235, metadata !175, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %234, metadata !174, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %233, metadata !173, metadata !DIExpression()), !dbg !1444
  br label %15, !dbg !1453, !llvm.loop !1651

239:                                              ; preds = %184
  %240 = icmp eq i64 %189, 0, !dbg !1653
  br i1 %240, label %241, label %246, !dbg !1655

241:                                              ; preds = %239
  %242 = and i32 %1, 4, !dbg !1656
  %243 = icmp eq i32 %242, 0, !dbg !1656
  %244 = select i1 %243, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13.70, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12.71, i64 0, i64 0), !dbg !1656
  %245 = tail call i8* @dcgettext(i8* null, i8* %244, i32 5) #29, !dbg !1656
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %245) #29, !dbg !1656
  tail call void @usage(i32 1) #31, !dbg !1656
  unreachable, !dbg !1656

246:                                              ; preds = %239
  tail call void @qsort(i8* %185, i64 %189, i64 16, i32 (i8*, i8*)* nonnull @compare_ranges) #29, !dbg !1658
  call void @llvm.dbg.value(metadata i64 0, metadata !186, metadata !DIExpression()), !dbg !1659
  %247 = load i64, i64* @n_frp, align 8, !dbg !1660, !tbaa !937
  %248 = icmp eq i64 %247, 0, !dbg !1661
  br i1 %248, label %249, label %253, !dbg !1662

249:                                              ; preds = %291, %246
  %250 = phi i64 [ 0, %246 ], [ %292, %291 ], !dbg !1660
  %251 = and i32 %1, 2, !dbg !1663
  %252 = icmp eq i32 %251, 0, !dbg !1663
  br i1 %252, label %411, label %294, !dbg !1665

253:                                              ; preds = %246, %291
  %254 = phi i64 [ %292, %291 ], [ %247, %246 ], !dbg !1666
  %255 = phi i64 [ %256, %291 ], [ 0, %246 ]
  call void @llvm.dbg.value(metadata i64 %255, metadata !186, metadata !DIExpression()), !dbg !1659
  %256 = add nuw i64 %255, 1, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %256, metadata !188, metadata !DIExpression()), !dbg !1669
  %257 = icmp ult i64 %256, %254, !dbg !1670
  br i1 %257, label %258, label %291, !dbg !1671

258:                                              ; preds = %253
  %259 = sub i64 1152921504606846974, %255
  %260 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1672, !tbaa !744
  %261 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %260, i64 %256, i32 0, !dbg !1675
  %262 = load i64, i64* %261, align 8, !dbg !1675, !tbaa !1172
  %263 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %260, i64 %255, i32 1, !dbg !1676
  %264 = load i64, i64* %263, align 8, !dbg !1676, !tbaa !1157
  %265 = icmp ugt i64 %262, %264, !dbg !1677
  br i1 %265, label %291, label %273, !dbg !1678

266:                                              ; preds = %273
  %267 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1672, !tbaa !744
  %268 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %267, i64 %256, i32 0, !dbg !1675
  %269 = load i64, i64* %268, align 8, !dbg !1675, !tbaa !1172
  %270 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %267, i64 %255, i32 1, !dbg !1676
  %271 = load i64, i64* %270, align 8, !dbg !1676, !tbaa !1157
  %272 = icmp ugt i64 %269, %271, !dbg !1677
  br i1 %272, label %291, label %273, !dbg !1678, !llvm.loop !1679

273:                                              ; preds = %258, %266
  %274 = phi i64 [ %271, %266 ], [ %264, %258 ]
  %275 = phi i64* [ %270, %266 ], [ %263, %258 ]
  %276 = phi %struct.field_range_pair* [ %267, %266 ], [ %260, %258 ]
  %277 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %276, i64 %256, i32 1, !dbg !1681
  %278 = load i64, i64* %277, align 8, !dbg !1681, !tbaa !1157
  %279 = icmp ugt i64 %278, %274, !dbg !1681
  %280 = select i1 %279, i64 %278, i64 %274, !dbg !1681
  store i64 %280, i64* %275, align 8, !dbg !1683, !tbaa !1157
  %281 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %276, i64 %256, !dbg !1684
  %282 = bitcast %struct.field_range_pair* %281 to i8*, !dbg !1685
  %283 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %281, i64 1, !dbg !1686
  %284 = bitcast %struct.field_range_pair* %283 to i8*, !dbg !1687
  %285 = load i64, i64* @n_frp, align 8, !dbg !1688, !tbaa !937
  %286 = add i64 %259, %285, !dbg !1689
  %287 = shl i64 %286, 4, !dbg !1690
  call void @llvm.dbg.value(metadata i8* %282, metadata !1691, metadata !DIExpression()) #29, !dbg !1699
  call void @llvm.dbg.value(metadata i8* %284, metadata !1697, metadata !DIExpression()) #29, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %287, metadata !1698, metadata !DIExpression()) #29, !dbg !1699
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 1 %282, i8* nonnull align 1 %284, i64 %287, i1 false) #29, !dbg !1701
  %288 = load i64, i64* @n_frp, align 8, !dbg !1702, !tbaa !937
  %289 = add i64 %288, -1, !dbg !1702
  store i64 %289, i64* @n_frp, align 8, !dbg !1702, !tbaa !937
  call void @llvm.dbg.value(metadata i64 %256, metadata !188, metadata !DIExpression()), !dbg !1669
  %290 = icmp ult i64 %256, %289, !dbg !1670
  br i1 %290, label %266, label %291, !dbg !1671, !llvm.loop !1679

291:                                              ; preds = %266, %273, %258, %253
  %292 = phi i64 [ %254, %253 ], [ %254, %258 ], [ %289, %273 ], [ %289, %266 ], !dbg !1660
  call void @llvm.dbg.value(metadata i64 %256, metadata !186, metadata !DIExpression()), !dbg !1659
  %293 = icmp ult i64 %256, %292, !dbg !1661
  br i1 %293, label %253, label %249, !dbg !1662, !llvm.loop !1703

294:                                              ; preds = %249
  %295 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1705, !tbaa !744
  call void @llvm.dbg.value(metadata %struct.field_range_pair* %295, metadata !1708, metadata !DIExpression()) #29, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %250, metadata !1709, metadata !DIExpression()) #29, !dbg !1713
  store %struct.field_range_pair* null, %struct.field_range_pair** @frp, align 8, !dbg !1714, !tbaa !744
  store i64 0, i64* @n_frp, align 8, !dbg !1715, !tbaa !937
  store i64 0, i64* @n_frp_allocated, align 8, !dbg !1716, !tbaa !937
  %296 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %295, i64 0, i32 0, !dbg !1717
  %297 = load i64, i64* %296, align 8, !dbg !1717, !tbaa !1172
  %298 = icmp ugt i64 %297, 1, !dbg !1719
  br i1 %298, label %299, label %309, !dbg !1720

299:                                              ; preds = %294
  %300 = add i64 %297, -1, !dbg !1721
  call void @llvm.dbg.value(metadata i64 1, metadata !1486, metadata !DIExpression()) #29, !dbg !1722
  call void @llvm.dbg.value(metadata i64 %300, metadata !1491, metadata !DIExpression()) #29, !dbg !1722
  call void @llvm.dbg.value(metadata i8* null, metadata !147, metadata !DIExpression()) #29, !dbg !1724
  call void @llvm.dbg.value(metadata i64* @n_frp_allocated, metadata !148, metadata !DIExpression()) #29, !dbg !1724
  call void @llvm.dbg.value(metadata i64 16, metadata !149, metadata !DIExpression()) #29, !dbg !1724
  call void @llvm.dbg.value(metadata i64 8, metadata !150, metadata !DIExpression()) #29, !dbg !1724
  store i64 8, i64* @n_frp_allocated, align 8, !dbg !1726, !tbaa !937
  %301 = tail call i8* @xrealloc(i8* null, i64 128) #29, !dbg !1727
  store i8* %301, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1728, !tbaa !744
  %302 = bitcast i8* %301 to %struct.field_range_pair*, !dbg !1729
  %303 = load i64, i64* @n_frp, align 8, !dbg !1730, !tbaa !937
  %304 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %302, i64 %303, i32 0, !dbg !1731
  store i64 1, i64* %304, align 8, !dbg !1732, !tbaa !1172
  %305 = load i64, i64* @n_frp, align 8, !dbg !1733, !tbaa !937
  %306 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %302, i64 %305, i32 1, !dbg !1734
  store i64 %300, i64* %306, align 8, !dbg !1735, !tbaa !1157
  %307 = load i64, i64* @n_frp, align 8, !dbg !1736, !tbaa !937
  %308 = add i64 %307, 1, !dbg !1736
  store i64 %308, i64* @n_frp, align 8, !dbg !1736, !tbaa !937
  br label %309, !dbg !1737

309:                                              ; preds = %299, %294
  %310 = phi i8* [ %301, %299 ], [ null, %294 ]
  %311 = phi %struct.field_range_pair* [ %302, %299 ], [ null, %294 ]
  %312 = phi i64 [ %308, %299 ], [ 0, %294 ]
  call void @llvm.dbg.value(metadata i64 1, metadata !1710, metadata !DIExpression()) #29, !dbg !1738
  %313 = icmp ugt i64 %250, 1, !dbg !1739
  br i1 %313, label %322, label %314, !dbg !1741

314:                                              ; preds = %369, %309
  %315 = phi i8* [ %310, %309 ], [ %371, %369 ]
  %316 = phi %struct.field_range_pair* [ %311, %309 ], [ %370, %369 ]
  %317 = phi i64 [ %312, %309 ], [ %373, %369 ]
  %318 = add i64 %250, -1, !dbg !1742
  %319 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %295, i64 %318, i32 1, !dbg !1744
  %320 = load i64, i64* %319, align 8, !dbg !1744, !tbaa !1157
  %321 = icmp eq i64 %320, -1, !dbg !1745
  br i1 %321, label %408, label %376, !dbg !1746

322:                                              ; preds = %309, %369
  %323 = phi %struct.field_range_pair* [ %370, %369 ], [ %311, %309 ]
  %324 = phi i8* [ %371, %369 ], [ %310, %309 ]
  %325 = phi %struct.field_range_pair* [ %372, %369 ], [ %311, %309 ]
  %326 = phi i64 [ %373, %369 ], [ %312, %309 ]
  %327 = phi i64 [ %374, %369 ], [ 1, %309 ]
  call void @llvm.dbg.value(metadata i64 %327, metadata !1710, metadata !DIExpression()) #29, !dbg !1738
  %328 = add i64 %327, -1, !dbg !1747
  %329 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %295, i64 %328, i32 1, !dbg !1750
  %330 = load i64, i64* %329, align 8, !dbg !1750, !tbaa !1157
  %331 = add i64 %330, 1, !dbg !1751
  %332 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %295, i64 %327, i32 0, !dbg !1752
  %333 = load i64, i64* %332, align 8, !dbg !1752, !tbaa !1172
  %334 = icmp eq i64 %331, %333, !dbg !1753
  br i1 %334, label %369, label %335, !dbg !1754

335:                                              ; preds = %322
  %336 = add i64 %333, -1, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %331, metadata !1486, metadata !DIExpression()) #29, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %336, metadata !1491, metadata !DIExpression()) #29, !dbg !1756
  %337 = load i64, i64* @n_frp_allocated, align 8, !dbg !1758, !tbaa !937
  %338 = icmp eq i64 %326, %337, !dbg !1759
  br i1 %338, label %339, label %359, !dbg !1760

339:                                              ; preds = %335
  call void @llvm.dbg.value(metadata i8* %324, metadata !147, metadata !DIExpression()) #29, !dbg !1761
  call void @llvm.dbg.value(metadata i64* @n_frp_allocated, metadata !148, metadata !DIExpression()) #29, !dbg !1761
  call void @llvm.dbg.value(metadata i64 16, metadata !149, metadata !DIExpression()) #29, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %337, metadata !150, metadata !DIExpression()) #29, !dbg !1761
  %340 = icmp eq i8* %324, null, !dbg !1763
  br i1 %340, label %341, label %346, !dbg !1764

341:                                              ; preds = %339
  %342 = icmp eq i64 %326, 0, !dbg !1765
  br i1 %342, label %353, label %343, !dbg !1766

343:                                              ; preds = %341
  call void @llvm.dbg.value(metadata i64 %337, metadata !150, metadata !DIExpression()) #29, !dbg !1761
  %344 = icmp ugt i64 %326, 576460752303423487, !dbg !1767
  br i1 %344, label %345, label %353, !dbg !1768

345:                                              ; preds = %343
  tail call void @xalloc_die() #31, !dbg !1769
  unreachable, !dbg !1769

346:                                              ; preds = %339
  %347 = icmp ult i64 %326, 384307168202282325, !dbg !1770
  br i1 %347, label %349, label %348, !dbg !1771

348:                                              ; preds = %346
  tail call void @xalloc_die() #31, !dbg !1772
  unreachable, !dbg !1772

349:                                              ; preds = %346
  %350 = lshr i64 %326, 1, !dbg !1773
  %351 = add nuw nsw i64 %326, 1, !dbg !1774
  %352 = add nuw nsw i64 %351, %350, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %352, metadata !150, metadata !DIExpression()) #29, !dbg !1761
  br label %353

353:                                              ; preds = %349, %343, %341
  %354 = phi i64 [ %352, %349 ], [ %326, %343 ], [ 8, %341 ], !dbg !1761
  call void @llvm.dbg.value(metadata i64 %354, metadata !150, metadata !DIExpression()) #29, !dbg !1761
  store i64 %354, i64* @n_frp_allocated, align 8, !dbg !1776, !tbaa !937
  %355 = shl nuw nsw i64 %354, 4, !dbg !1777
  %356 = tail call i8* @xrealloc(i8* %324, i64 %355) #29, !dbg !1778
  store i8* %356, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1779, !tbaa !744
  %357 = bitcast i8* %356 to %struct.field_range_pair*, !dbg !1780
  %358 = load i64, i64* @n_frp, align 8, !dbg !1781, !tbaa !937
  br label %359, !dbg !1780

359:                                              ; preds = %353, %335
  %360 = phi %struct.field_range_pair* [ %357, %353 ], [ %323, %335 ]
  %361 = phi i8* [ %356, %353 ], [ %324, %335 ]
  %362 = phi i64 [ %358, %353 ], [ %326, %335 ], !dbg !1781
  %363 = phi %struct.field_range_pair* [ %357, %353 ], [ %325, %335 ], !dbg !1782
  %364 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %363, i64 %362, i32 0, !dbg !1783
  store i64 %331, i64* %364, align 8, !dbg !1784, !tbaa !1172
  %365 = load i64, i64* @n_frp, align 8, !dbg !1785, !tbaa !937
  %366 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %363, i64 %365, i32 1, !dbg !1786
  store i64 %336, i64* %366, align 8, !dbg !1787, !tbaa !1157
  %367 = load i64, i64* @n_frp, align 8, !dbg !1788, !tbaa !937
  %368 = add i64 %367, 1, !dbg !1788
  store i64 %368, i64* @n_frp, align 8, !dbg !1788, !tbaa !937
  br label %369, !dbg !1789

369:                                              ; preds = %359, %322
  %370 = phi %struct.field_range_pair* [ %323, %322 ], [ %360, %359 ]
  %371 = phi i8* [ %324, %322 ], [ %361, %359 ]
  %372 = phi %struct.field_range_pair* [ %325, %322 ], [ %363, %359 ]
  %373 = phi i64 [ %326, %322 ], [ %368, %359 ]
  %374 = add nuw i64 %327, 1, !dbg !1790
  call void @llvm.dbg.value(metadata i64 %374, metadata !1710, metadata !DIExpression()) #29, !dbg !1738
  %375 = icmp eq i64 %374, %250, !dbg !1739
  br i1 %375, label %314, label %322, !dbg !1741, !llvm.loop !1791

376:                                              ; preds = %314
  %377 = add nuw i64 %320, 1, !dbg !1793
  call void @llvm.dbg.value(metadata i64 %377, metadata !1486, metadata !DIExpression()) #29, !dbg !1794
  call void @llvm.dbg.value(metadata i64 -1, metadata !1491, metadata !DIExpression()) #29, !dbg !1794
  %378 = load i64, i64* @n_frp_allocated, align 8, !dbg !1796, !tbaa !937
  %379 = icmp eq i64 %317, %378, !dbg !1797
  br i1 %379, label %380, label %400, !dbg !1798

380:                                              ; preds = %376
  call void @llvm.dbg.value(metadata i8* %315, metadata !147, metadata !DIExpression()) #29, !dbg !1799
  call void @llvm.dbg.value(metadata i64* @n_frp_allocated, metadata !148, metadata !DIExpression()) #29, !dbg !1799
  call void @llvm.dbg.value(metadata i64 16, metadata !149, metadata !DIExpression()) #29, !dbg !1799
  call void @llvm.dbg.value(metadata i64 %378, metadata !150, metadata !DIExpression()) #29, !dbg !1799
  %381 = icmp eq i8* %315, null, !dbg !1801
  br i1 %381, label %382, label %387, !dbg !1802

382:                                              ; preds = %380
  %383 = icmp eq i64 %317, 0, !dbg !1803
  br i1 %383, label %394, label %384, !dbg !1804

384:                                              ; preds = %382
  call void @llvm.dbg.value(metadata i64 %378, metadata !150, metadata !DIExpression()) #29, !dbg !1799
  %385 = icmp ugt i64 %317, 576460752303423487, !dbg !1805
  br i1 %385, label %386, label %394, !dbg !1806

386:                                              ; preds = %384
  tail call void @xalloc_die() #31, !dbg !1807
  unreachable, !dbg !1807

387:                                              ; preds = %380
  %388 = icmp ult i64 %317, 384307168202282325, !dbg !1808
  br i1 %388, label %390, label %389, !dbg !1809

389:                                              ; preds = %387
  tail call void @xalloc_die() #31, !dbg !1810
  unreachable, !dbg !1810

390:                                              ; preds = %387
  %391 = lshr i64 %317, 1, !dbg !1811
  %392 = add nuw nsw i64 %317, 1, !dbg !1812
  %393 = add nuw nsw i64 %392, %391, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %393, metadata !150, metadata !DIExpression()) #29, !dbg !1799
  br label %394

394:                                              ; preds = %390, %384, %382
  %395 = phi i64 [ %393, %390 ], [ %317, %384 ], [ 8, %382 ], !dbg !1799
  call void @llvm.dbg.value(metadata i64 %395, metadata !150, metadata !DIExpression()) #29, !dbg !1799
  store i64 %395, i64* @n_frp_allocated, align 8, !dbg !1814, !tbaa !937
  %396 = shl nuw nsw i64 %395, 4, !dbg !1815
  %397 = tail call i8* @xrealloc(i8* %315, i64 %396) #29, !dbg !1816
  store i8* %397, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1817, !tbaa !744
  %398 = bitcast i8* %397 to %struct.field_range_pair*, !dbg !1818
  %399 = load i64, i64* @n_frp, align 8, !dbg !1819, !tbaa !937
  br label %400, !dbg !1818

400:                                              ; preds = %394, %376
  %401 = phi i64 [ %399, %394 ], [ %317, %376 ], !dbg !1819
  %402 = phi %struct.field_range_pair* [ %398, %394 ], [ %316, %376 ], !dbg !1820
  %403 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %402, i64 %401, i32 0, !dbg !1821
  store i64 %377, i64* %403, align 8, !dbg !1822, !tbaa !1172
  %404 = load i64, i64* @n_frp, align 8, !dbg !1823, !tbaa !937
  %405 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %402, i64 %404, i32 1, !dbg !1824
  store i64 -1, i64* %405, align 8, !dbg !1825, !tbaa !1157
  %406 = load i64, i64* @n_frp, align 8, !dbg !1826, !tbaa !937
  %407 = add i64 %406, 1, !dbg !1826
  store i64 %407, i64* @n_frp, align 8, !dbg !1826, !tbaa !937
  br label %408, !dbg !1827

408:                                              ; preds = %314, %400
  %409 = bitcast %struct.field_range_pair* %295 to i8*, !dbg !1828
  tail call void @free(i8* %409) #29, !dbg !1829
  %410 = load i64, i64* @n_frp, align 8, !dbg !1830, !tbaa !937
  br label %411, !dbg !1831

411:                                              ; preds = %408, %249
  %412 = phi i64 [ %410, %408 ], [ %250, %249 ], !dbg !1830
  %413 = add i64 %412, 1, !dbg !1830
  store i64 %413, i64* @n_frp, align 8, !dbg !1830, !tbaa !937
  %414 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1832, !tbaa !744
  %415 = shl i64 %413, 4, !dbg !1833
  %416 = tail call i8* @xrealloc(i8* %414, i64 %415) #29, !dbg !1834
  %417 = bitcast i8* %416 to %struct.field_range_pair*, !dbg !1834
  store i8* %416, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1835, !tbaa !744
  %418 = load i64, i64* @n_frp, align 8, !dbg !1836, !tbaa !937
  %419 = add i64 %418, -1, !dbg !1837
  %420 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %417, i64 %419, i32 1, !dbg !1838
  store i64 -1, i64* %420, align 8, !dbg !1839, !tbaa !1157
  %421 = load i64, i64* @n_frp, align 8, !dbg !1840, !tbaa !937
  %422 = add i64 %421, -1, !dbg !1841
  %423 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %417, i64 %422, i32 0, !dbg !1842
  store i64 -1, i64* %423, align 8, !dbg !1843, !tbaa !1172
  ret void, !dbg !1844
}

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define internal i32 @compare_ranges(i8* nocapture readonly %0, i8* nocapture readonly %1) #11 !dbg !1845 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1849, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8* %1, metadata !1850, metadata !DIExpression()), !dbg !1853
  %3 = bitcast i8* %0 to i64*, !dbg !1854
  %4 = load i64, i64* %3, align 8, !dbg !1854, !tbaa !1172
  %5 = trunc i64 %4 to i32, !dbg !1855
  call void @llvm.dbg.value(metadata i32 %5, metadata !1851, metadata !DIExpression()), !dbg !1853
  %6 = bitcast i8* %1 to i64*, !dbg !1856
  %7 = load i64, i64* %6, align 8, !dbg !1856, !tbaa !1172
  %8 = trunc i64 %7 to i32, !dbg !1857
  call void @llvm.dbg.value(metadata i32 %8, metadata !1852, metadata !DIExpression()), !dbg !1853
  %9 = icmp slt i32 %5, %8, !dbg !1858
  %10 = icmp sgt i32 %5, %8, !dbg !1859
  %11 = zext i1 %10 to i32, !dbg !1859
  %12 = select i1 %9, i32 -1, i32 %11, !dbg !1859
  ret i32 %12, !dbg !1860
}

; Function Attrs: nofree
declare !dbg !1861 void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* nocapture noundef) local_unnamed_addr #12

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable willreturn
define dso_local void @reset_fields() local_unnamed_addr #13 !dbg !1865 {
  store i64 0, i64* @n_frp, align 8, !dbg !1866, !tbaa !937
  store i64 0, i64* @n_frp_allocated, align 8, !dbg !1867, !tbaa !937
  %1 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1868, !tbaa !744
  tail call void @free(i8* %1) #29, !dbg !1869
  store %struct.field_range_pair* null, %struct.field_range_pair** @frp, align 8, !dbg !1870, !tbaa !744
  ret void, !dbg !1871
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #14 !dbg !1872 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1874, metadata !DIExpression()), !dbg !1875
  store i8* %0, i8** @file_name, align 8, !dbg !1876, !tbaa !744
  ret void, !dbg !1877
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #14 !dbg !1878 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1882, metadata !DIExpression()), !dbg !1883
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1884, !tbaa !1885
  ret void, !dbg !1887
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1888 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1893, !tbaa !744
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #29, !dbg !1894
  %3 = icmp eq i32 %2, 0, !dbg !1895
  br i1 %3, label %22, label %4, !dbg !1896

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1897, !tbaa !1885, !range !1898
  %6 = icmp eq i8 %5, 0, !dbg !1897
  br i1 %6, label %11, label %7, !dbg !1899

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #33, !dbg !1900
  %9 = load i32, i32* %8, align 4, !dbg !1900, !tbaa !989
  %10 = icmp eq i32 %9, 32, !dbg !1901
  br i1 %10, label %22, label %11, !dbg !1902

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i64 0, i64 0), i32 5) #29, !dbg !1903
  call void @llvm.dbg.value(metadata i8* %12, metadata !1890, metadata !DIExpression()), !dbg !1904
  %13 = load i8*, i8** @file_name, align 8, !dbg !1905, !tbaa !744
  %14 = icmp eq i8* %13, null, !dbg !1905
  %15 = tail call i32* @__errno_location() #33, !dbg !1907
  %16 = load i32, i32* %15, align 4, !dbg !1907, !tbaa !989
  br i1 %14, label %19, label %17, !dbg !1908

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #29, !dbg !1909
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.78, i64 0, i64 0), i8* %18, i8* %12) #29, !dbg !1910
  br label %20, !dbg !1910

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.79, i64 0, i64 0), i8* %12) #29, !dbg !1911
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1912, !tbaa !989
  tail call void @_exit(i32 %21) #31, !dbg !1913
  unreachable, !dbg !1913

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1914, !tbaa !744
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #29, !dbg !1916
  %25 = icmp eq i32 %24, 0, !dbg !1917
  br i1 %25, label %28, label %26, !dbg !1918

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1919, !tbaa !989
  tail call void @_exit(i32 %27) #31, !dbg !1920
  unreachable, !dbg !1920

28:                                               ; preds = %22
  ret void, !dbg !1921
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #15

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1922 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1928, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i64 %1, metadata !1929, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i64 %2, metadata !1930, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i32 %3, metadata !1931, metadata !DIExpression()), !dbg !1934
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #29, !dbg !1935
  call void @llvm.dbg.value(metadata i32 %5, metadata !1932, metadata !DIExpression()), !dbg !1936
  ret void, !dbg !1937
}

; Function Attrs: nounwind
declare !dbg !1938 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1942 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1980, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i32 %1, metadata !1981, metadata !DIExpression()), !dbg !1982
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1983
  br i1 %3, label %7, label %4, !dbg !1985

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #29, !dbg !1986
  call void @llvm.dbg.value(metadata i32 %5, metadata !1928, metadata !DIExpression()) #29, !dbg !1987
  call void @llvm.dbg.value(metadata i64 0, metadata !1929, metadata !DIExpression()) #29, !dbg !1987
  call void @llvm.dbg.value(metadata i64 0, metadata !1930, metadata !DIExpression()) #29, !dbg !1987
  call void @llvm.dbg.value(metadata i32 %1, metadata !1931, metadata !DIExpression()) #29, !dbg !1987
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #29, !dbg !1989
  call void @llvm.dbg.value(metadata i32 %6, metadata !1932, metadata !DIExpression()) #29, !dbg !1990
  br label %7, !dbg !1991

7:                                                ; preds = %4, %2
  ret void, !dbg !1992
}

; Function Attrs: nofree nounwind
declare !dbg !1993 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @getndelim2(i8** nocapture %0, i64* nocapture %1, i64 %2, i64 %3, i32 %4, i32 %5, %struct._IO_FILE* %6) local_unnamed_addr #8 !dbg !1996 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8** %0, metadata !2034, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64* %1, metadata !2035, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64 %2, metadata !2036, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64 %3, metadata !2037, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %4, metadata !2038, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %5, metadata !2039, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %6, metadata !2040, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64 -1, metadata !2043, metadata !DIExpression()), !dbg !2068
  %9 = load i8*, i8** %0, align 8, !dbg !2069, !tbaa !744
  call void @llvm.dbg.value(metadata i8* %9, metadata !2044, metadata !DIExpression()), !dbg !2068
  %10 = load i64, i64* %1, align 8, !dbg !2070, !tbaa !937
  call void @llvm.dbg.value(metadata i64 %10, metadata !2045, metadata !DIExpression()), !dbg !2068
  %11 = icmp eq i8* %9, null, !dbg !2071
  br i1 %11, label %12, label %17, !dbg !2073

12:                                               ; preds = %7
  %13 = icmp ult i64 %3, 64, !dbg !2074
  %14 = select i1 %13, i64 %3, i64 64, !dbg !2076
  call void @llvm.dbg.value(metadata i64 %14, metadata !2045, metadata !DIExpression()), !dbg !2068
  %15 = tail call noalias i8* @malloc(i64 %14) #29, !dbg !2077
  call void @llvm.dbg.value(metadata i8* %15, metadata !2044, metadata !DIExpression()), !dbg !2068
  %16 = icmp eq i8* %15, null, !dbg !2078
  br i1 %16, label %156, label %17, !dbg !2080

17:                                               ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !2068
  %19 = phi i64 [ %10, %7 ], [ %14, %12 ], !dbg !2068
  call void @llvm.dbg.value(metadata i64 %19, metadata !2045, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %18, metadata !2044, metadata !DIExpression()), !dbg !2068
  %20 = icmp ult i64 %19, %2, !dbg !2081
  br i1 %20, label %143, label %21, !dbg !2083

21:                                               ; preds = %17
  %22 = sub i64 %19, %2, !dbg !2084
  call void @llvm.dbg.value(metadata i64 %22, metadata !2041, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* undef, metadata !2042, metadata !DIExpression()), !dbg !2068
  %23 = icmp ne i64 %22, 0, !dbg !2085
  %24 = icmp ult i64 %19, %3
  %25 = or i1 %24, %23, !dbg !2087
  br i1 %25, label %26, label %143, !dbg !2087

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, i8* %18, i64 %2, !dbg !2088
  call void @llvm.dbg.value(metadata i8* %27, metadata !2042, metadata !DIExpression()), !dbg !2068
  %28 = icmp eq i32 %4, -1, !dbg !2089
  %29 = icmp eq i32 %5, -1, !dbg !2091
  %30 = select i1 %29, i32 %4, i32 %5, !dbg !2091
  %31 = select i1 %28, i32 %5, i32 %30, !dbg !2091
  %32 = select i1 %28, i32 %5, i32 %4, !dbg !2091
  call void @llvm.dbg.value(metadata i32 %32, metadata !2038, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %31, metadata !2039, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8 0, metadata !2046, metadata !DIExpression()), !dbg !2068
  %33 = bitcast i64* %8 to i8*
  %34 = icmp eq i32 %32, -1
  %35 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %6, i64 0, i32 1
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %6, i64 0, i32 2
  %37 = xor i64 %2, -9223372036854775808
  br label %38, !dbg !2092

38:                                               ; preds = %136, %26
  %39 = phi i8* [ %27, %26 ], [ %130, %136 ], !dbg !2068
  %40 = phi i8* [ %18, %26 ], [ %114, %136 ], !dbg !2068
  %41 = phi i64 [ %19, %26 ], [ %115, %136 ], !dbg !2068
  %42 = phi i8 [ 0, %26 ], [ %79, %136 ], !dbg !2068
  %43 = phi i32 [ undef, %26 ], [ %80, %136 ]
  %44 = phi i64 [ %22, %26 ], [ %131, %136 ], !dbg !2068
  call void @llvm.dbg.value(metadata i64 %44, metadata !2041, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %43, metadata !2047, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %42, metadata !2046, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64 %41, metadata !2045, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %40, metadata !2044, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %39, metadata !2042, metadata !DIExpression()), !dbg !2068
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #29, !dbg !2094
  call void @llvm.dbg.value(metadata i64* %8, metadata !2050, metadata !DIExpression(DW_OP_deref)), !dbg !2093
  %45 = call i8* @freadptr(%struct._IO_FILE* %6, i64* nonnull %8) #29, !dbg !2095
  call void @llvm.dbg.value(metadata i8* %45, metadata !2049, metadata !DIExpression()), !dbg !2093
  %46 = icmp eq i8* %45, null, !dbg !2096
  br i1 %46, label %57, label %47, !dbg !2097

47:                                               ; preds = %38
  %48 = load i64, i64* %8, align 8, !dbg !2093, !tbaa !937
  br i1 %34, label %77, label %49, !dbg !2098

49:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i64 %48, metadata !2050, metadata !DIExpression()), !dbg !2093
  %50 = call i8* @memchr2(i8* nonnull %45, i32 %32, i32 %31, i64 %48) #30, !dbg !2099
  call void @llvm.dbg.value(metadata i8* %50, metadata !2051, metadata !DIExpression()), !dbg !2100
  %51 = icmp eq i8* %50, null, !dbg !2101
  br i1 %51, label %77, label %52, !dbg !2103

52:                                               ; preds = %49
  %53 = ptrtoint i8* %50 to i64, !dbg !2104
  %54 = ptrtoint i8* %45 to i64, !dbg !2104
  %55 = sub i64 1, %54, !dbg !2104
  %56 = add i64 %55, %53, !dbg !2106
  call void @llvm.dbg.value(metadata i64 %56, metadata !2050, metadata !DIExpression()), !dbg !2093
  store i64 %56, i64* %8, align 8, !dbg !2107, !tbaa !937
  call void @llvm.dbg.value(metadata i8 1, metadata !2046, metadata !DIExpression()), !dbg !2068
  br label %77, !dbg !2108

57:                                               ; preds = %38
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %6, metadata !2109, metadata !DIExpression()) #29, !dbg !2114
  %58 = load i8*, i8** %35, align 8, !dbg !2117, !tbaa !1114
  %59 = load i8*, i8** %36, align 8, !dbg !2117, !tbaa !1117
  %60 = icmp ult i8* %58, %59, !dbg !2117
  br i1 %60, label %61, label %65, !dbg !2117, !prof !1118

61:                                               ; preds = %57
  %62 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !2117
  store i8* %62, i8** %35, align 8, !dbg !2117, !tbaa !1114
  %63 = load i8, i8* %58, align 1, !dbg !2117, !tbaa !892
  %64 = zext i8 %63 to i32, !dbg !2117
  call void @llvm.dbg.value(metadata i32 %66, metadata !2047, metadata !DIExpression()), !dbg !2093
  br label %71, !dbg !2118

65:                                               ; preds = %57
  %66 = call i32 @__uflow(%struct._IO_FILE* nonnull %6) #29, !dbg !2117
  call void @llvm.dbg.value(metadata i32 %66, metadata !2047, metadata !DIExpression()), !dbg !2093
  %67 = icmp eq i32 %66, -1, !dbg !2119
  br i1 %67, label %68, label %71, !dbg !2118

68:                                               ; preds = %65
  %69 = icmp eq i8* %39, %40, !dbg !2121
  br i1 %69, label %139, label %70

70:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i64 %44, metadata !2041, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %80, metadata !2047, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %79, metadata !2046, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64 %41, metadata !2045, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %40, metadata !2044, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %39, metadata !2042, metadata !DIExpression()), !dbg !2068
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #29, !dbg !2124
  br label %146

71:                                               ; preds = %61, %65
  %72 = phi i32 [ %64, %61 ], [ %66, %65 ]
  %73 = icmp eq i32 %72, %32, !dbg !2125
  %74 = icmp eq i32 %72, %31
  %75 = or i1 %73, %74, !dbg !2127
  %76 = select i1 %75, i8 1, i8 %42, !dbg !2127
  call void @llvm.dbg.value(metadata i8 %76, metadata !2046, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64 1, metadata !2050, metadata !DIExpression()), !dbg !2093
  store i64 1, i64* %8, align 8, !dbg !2128, !tbaa !937
  br label %77

77:                                               ; preds = %47, %49, %52, %71
  %78 = phi i64 [ 1, %71 ], [ %56, %52 ], [ %48, %49 ], [ %48, %47 ], !dbg !2129
  %79 = phi i8 [ %76, %71 ], [ 1, %52 ], [ %42, %49 ], [ %42, %47 ], !dbg !2068
  %80 = phi i32 [ %72, %71 ], [ %43, %52 ], [ %43, %49 ], [ %43, %47 ]
  call void @llvm.dbg.value(metadata i32 %80, metadata !2047, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %79, metadata !2046, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64 %78, metadata !2050, metadata !DIExpression()), !dbg !2093
  %81 = add i64 %78, 1, !dbg !2130
  %82 = icmp ult i64 %44, %81, !dbg !2131
  %83 = icmp ult i64 %41, %3
  %84 = and i1 %83, %82, !dbg !2132
  br i1 %84, label %85, label %112, !dbg !2132

85:                                               ; preds = %77
  %86 = icmp ult i64 %41, 64, !dbg !2133
  %87 = add i64 %41, 64, !dbg !2134
  %88 = shl i64 %41, 1, !dbg !2134
  %89 = select i1 %86, i64 %87, i64 %88, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %89, metadata !2056, metadata !DIExpression()), !dbg !2135
  %90 = ptrtoint i8* %39 to i64, !dbg !2136
  %91 = ptrtoint i8* %40 to i64, !dbg !2136
  %92 = sub i64 %90, %91, !dbg !2136
  %93 = sub i64 %89, %92, !dbg !2138
  %94 = icmp ult i64 %93, %81, !dbg !2139
  %95 = add i64 %81, %92, !dbg !2140
  %96 = select i1 %94, i64 %95, i64 %89, !dbg !2140
  call void @llvm.dbg.value(metadata i64 %96, metadata !2056, metadata !DIExpression()), !dbg !2135
  %97 = icmp uge i64 %41, %96, !dbg !2141
  %98 = icmp ugt i64 %96, %3
  %99 = or i1 %97, %98, !dbg !2143
  %100 = select i1 %99, i64 %3, i64 %96, !dbg !2143
  call void @llvm.dbg.value(metadata i64 %100, metadata !2056, metadata !DIExpression()), !dbg !2135
  %101 = sub i64 %100, %2, !dbg !2144
  %102 = icmp slt i64 %101, 0, !dbg !2145
  br i1 %102, label %103, label %105, !dbg !2146

103:                                              ; preds = %85
  call void @llvm.dbg.value(metadata i64 %37, metadata !2060, metadata !DIExpression()), !dbg !2147
  %104 = icmp eq i64 %41, %37, !dbg !2148
  call void @llvm.dbg.value(metadata i64 undef, metadata !2056, metadata !DIExpression()), !dbg !2135
  br i1 %104, label %142, label %105

105:                                              ; preds = %103, %85
  %106 = phi i64 [ %37, %103 ], [ %100, %85 ], !dbg !2150
  call void @llvm.dbg.value(metadata i64 %106, metadata !2056, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i64 undef, metadata !2041, metadata !DIExpression()), !dbg !2068
  %107 = call i8* @realloc(i8* %40, i64 %106) #29, !dbg !2151
  call void @llvm.dbg.value(metadata i8* %107, metadata !2059, metadata !DIExpression()), !dbg !2135
  %108 = icmp eq i8* %107, null, !dbg !2152
  br i1 %108, label %139, label %109, !dbg !2154

109:                                              ; preds = %105
  %110 = sub i64 %106, %92, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %110, metadata !2041, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %107, metadata !2044, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64 %106, metadata !2045, metadata !DIExpression()), !dbg !2068
  %111 = getelementptr inbounds i8, i8* %107, i64 %92, !dbg !2156
  call void @llvm.dbg.value(metadata i64 %44, metadata !2041, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64 %41, metadata !2045, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %40, metadata !2044, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %39, metadata !2042, metadata !DIExpression()), !dbg !2068
  br label %112

112:                                              ; preds = %109, %77
  %113 = phi i8* [ %39, %77 ], [ %111, %109 ], !dbg !2068
  %114 = phi i8* [ %40, %77 ], [ %107, %109 ], !dbg !2068
  %115 = phi i64 [ %41, %77 ], [ %106, %109 ], !dbg !2068
  %116 = phi i64 [ %44, %77 ], [ %110, %109 ], !dbg !2068
  call void @llvm.dbg.value(metadata i64 %116, metadata !2041, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64 %115, metadata !2045, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %114, metadata !2044, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %113, metadata !2042, metadata !DIExpression()), !dbg !2068
  %117 = icmp ugt i64 %116, 1, !dbg !2157
  br i1 %117, label %118, label %129, !dbg !2158

118:                                              ; preds = %112
  %119 = add i64 %116, -1, !dbg !2159
  call void @llvm.dbg.value(metadata i64 %119, metadata !2063, metadata !DIExpression()), !dbg !2160
  %120 = load i64, i64* %8, align 8, !dbg !2161, !tbaa !937
  call void @llvm.dbg.value(metadata i64 %120, metadata !2050, metadata !DIExpression()), !dbg !2093
  %121 = icmp ult i64 %120, %119, !dbg !2163
  %122 = select i1 %121, i64 %120, i64 %119, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %122, metadata !2063, metadata !DIExpression()), !dbg !2160
  br i1 %46, label %124, label %123, !dbg !2165

123:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i8* %113, metadata !2166, metadata !DIExpression()) #29, !dbg !2175
  call void @llvm.dbg.value(metadata i8* %45, metadata !2173, metadata !DIExpression()) #29, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %122, metadata !2174, metadata !DIExpression()) #29, !dbg !2175
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %113, i8* nonnull align 1 %45, i64 %122, i1 false) #29, !dbg !2178
  br label %126, !dbg !2179

124:                                              ; preds = %118
  %125 = trunc i32 %80 to i8, !dbg !2180
  store i8 %125, i8* %113, align 1, !dbg !2181, !tbaa !892
  br label %126

126:                                              ; preds = %124, %123
  %127 = getelementptr inbounds i8, i8* %113, i64 %122, !dbg !2182
  call void @llvm.dbg.value(metadata i8* %127, metadata !2042, metadata !DIExpression()), !dbg !2068
  %128 = sub i64 %116, %122, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %128, metadata !2041, metadata !DIExpression()), !dbg !2068
  br label %129, !dbg !2184

129:                                              ; preds = %126, %112
  %130 = phi i8* [ %127, %126 ], [ %113, %112 ], !dbg !2093
  %131 = phi i64 [ %128, %126 ], [ %116, %112 ], !dbg !2093
  call void @llvm.dbg.value(metadata i64 %131, metadata !2041, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %130, metadata !2042, metadata !DIExpression()), !dbg !2068
  br i1 %46, label %136, label %132, !dbg !2185

132:                                              ; preds = %129
  %133 = load i64, i64* %8, align 8, !dbg !2187, !tbaa !937
  call void @llvm.dbg.value(metadata i64 %133, metadata !2050, metadata !DIExpression()), !dbg !2093
  %134 = call i32 @freadseek(%struct._IO_FILE* %6, i64 %133) #29, !dbg !2188
  %135 = icmp eq i32 %134, 0, !dbg !2188
  br i1 %135, label %136, label %139, !dbg !2189

136:                                              ; preds = %129, %132
  call void @llvm.dbg.value(metadata i64 %44, metadata !2041, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %80, metadata !2047, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %79, metadata !2046, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64 %41, metadata !2045, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %40, metadata !2044, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %39, metadata !2042, metadata !DIExpression()), !dbg !2068
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #29, !dbg !2124
  %137 = and i8 %79, 1, !dbg !2190
  %138 = icmp eq i8 %137, 0, !dbg !2190
  br i1 %138, label %38, label %146, !dbg !2191, !llvm.loop !2192

139:                                              ; preds = %132, %105, %68
  %140 = phi i8* [ %39, %68 ], [ %114, %132 ], [ %40, %105 ]
  %141 = phi i64 [ %41, %68 ], [ %115, %132 ], [ %41, %105 ]
  call void @llvm.dbg.value(metadata i64 %44, metadata !2041, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %80, metadata !2047, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %79, metadata !2046, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64 %41, metadata !2045, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %40, metadata !2044, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %39, metadata !2042, metadata !DIExpression()), !dbg !2068
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #29, !dbg !2124
  br label %143

142:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 %44, metadata !2041, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %80, metadata !2047, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 %79, metadata !2046, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64 %37, metadata !2045, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %40, metadata !2044, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* undef, metadata !2042, metadata !DIExpression()), !dbg !2068
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #29, !dbg !2124
  br label %143

143:                                              ; preds = %142, %17, %21, %139
  %144 = phi i8* [ %140, %139 ], [ %18, %21 ], [ %40, %142 ], [ %18, %17 ]
  %145 = phi i64 [ %141, %139 ], [ %19, %21 ], [ %37, %142 ], [ %19, %17 ]
  call void @llvm.dbg.value(metadata i64 %149, metadata !2045, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %147, metadata !2044, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64 %153, metadata !2043, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.label(metadata !2067), !dbg !2194
  store i8* %144, i8** %0, align 8, !dbg !2195, !tbaa !744
  store i64 %145, i64* %1, align 8, !dbg !2196, !tbaa !937
  br label %156, !dbg !2197

146:                                              ; preds = %136, %70
  %147 = phi i8* [ %40, %70 ], [ %114, %136 ]
  %148 = phi i8* [ %39, %70 ], [ %130, %136 ]
  %149 = phi i64 [ %41, %70 ], [ %115, %136 ]
  store i8 0, i8* %148, align 1, !dbg !2198, !tbaa !892
  %150 = getelementptr inbounds i8, i8* %147, i64 %2, !dbg !2199
  %151 = ptrtoint i8* %148 to i64, !dbg !2200
  %152 = ptrtoint i8* %150 to i64, !dbg !2200
  %153 = sub i64 %151, %152, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %149, metadata !2045, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i8* %147, metadata !2044, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64 %153, metadata !2043, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.label(metadata !2067), !dbg !2194
  store i8* %147, i8** %0, align 8, !dbg !2195, !tbaa !744
  store i64 %149, i64* %1, align 8, !dbg !2196, !tbaa !937
  %154 = icmp eq i64 %153, 0, !dbg !2197
  %155 = select i1 %154, i64 -1, i64 %153, !dbg !2197
  ret i64 %155, !dbg !2197

156:                                              ; preds = %143, %12
  ret i64 -1, !dbg !2201
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #16

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #10

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i8* @memchr2(i8* %0, i32 %1, i32 %2, i64 %3) local_unnamed_addr #17 !dbg !2202 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2206, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i32 %1, metadata !2207, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i32 %2, metadata !2208, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %3, metadata !2209, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i32 %1, metadata !2219, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i32 %2, metadata !2220, metadata !DIExpression()), !dbg !2224
  %5 = insertelement <2 x i32> poison, i32 %1, i32 0, !dbg !2225
  %6 = insertelement <2 x i32> %5, i32 %2, i32 1, !dbg !2225
  %7 = and <2 x i32> %6, <i32 255, i32 255>, !dbg !2225
  %8 = extractelement <2 x i32> %7, i32 0, !dbg !2227
  %9 = extractelement <2 x i32> %7, i32 1, !dbg !2227
  %10 = icmp eq i32 %8, %9, !dbg !2227
  br i1 %10, label %21, label %11, !dbg !2228

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i64 %3, metadata !2209, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i8* %0, metadata !2211, metadata !DIExpression()), !dbg !2224
  %12 = icmp eq i64 %3, 0, !dbg !2229
  br i1 %12, label %36, label %13, !dbg !2232

13:                                               ; preds = %11
  %14 = ptrtoint i8* %0 to i64, !dbg !2233
  %15 = sub i64 0, %14, !dbg !2233
  %16 = and i64 %15, 7, !dbg !2233
  %17 = sub i64 %3, %16, !dbg !2233
  call void @llvm.dbg.value(metadata i64 %3, metadata !2209, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i8* %0, metadata !2211, metadata !DIExpression()), !dbg !2224
  %18 = ptrtoint i8* %0 to i64, !dbg !2234
  %19 = and i64 %18, 7, !dbg !2235
  %20 = icmp eq i64 %19, 0, !dbg !2236
  br i1 %20, label %32, label %23, !dbg !2233

21:                                               ; preds = %4
  %22 = tail call i8* @memchr(i8* %0, i32 %8, i64 %3) #30, !dbg !2237
  br label %82, !dbg !2238

23:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8* %0, metadata !2210, metadata !DIExpression()), !dbg !2224
  %24 = load i8, i8* %0, align 1, !dbg !2239, !tbaa !892
  %25 = zext i8 %24 to i32, !dbg !2239
  %26 = icmp eq i32 %8, %25, !dbg !2242
  %27 = icmp eq i32 %9, %25
  %28 = or i1 %26, %27, !dbg !2243
  br i1 %28, label %82, label %29, !dbg !2243

29:                                               ; preds = %23
  %30 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2244
  call void @llvm.dbg.value(metadata i8* %30, metadata !2211, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %3, metadata !2209, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2224
  %31 = icmp eq i64 %3, 1, !dbg !2229
  br i1 %31, label %32, label %84, !dbg !2232, !llvm.loop !2245

32:                                               ; preds = %166, %162, %159, %149, %146, %136, %133, %123, %120, %110, %107, %97, %94, %84, %29, %13
  %33 = phi i64 [ %16, %13 ], [ %3, %29 ], [ %16, %84 ], [ %3, %94 ], [ %16, %97 ], [ %3, %107 ], [ %16, %110 ], [ %3, %120 ], [ %16, %123 ], [ %3, %133 ], [ %16, %136 ], [ %3, %146 ], [ %16, %149 ], [ %3, %159 ], [ %16, %162 ], [ %3, %166 ]
  %34 = phi i64 [ %17, %13 ], [ 0, %29 ], [ %17, %84 ], [ 0, %94 ], [ %17, %97 ], [ 0, %107 ], [ %17, %110 ], [ 0, %120 ], [ %17, %123 ], [ 0, %133 ], [ %17, %136 ], [ 0, %146 ], [ %17, %149 ], [ 0, %159 ], [ %17, %162 ], [ 0, %166 ]
  %35 = getelementptr i8, i8* %0, i64 %33, !dbg !2233
  br label %36, !dbg !2247

36:                                               ; preds = %32, %11
  %37 = phi i8* [ %0, %11 ], [ %35, %32 ], !dbg !2248
  %38 = phi i64 [ 0, %11 ], [ %34, %32 ]
  %39 = bitcast i8* %37 to i64*, !dbg !2247
  call void @llvm.dbg.value(metadata i64* %39, metadata !2212, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 16843009, metadata !2216, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 undef, metadata !2217, metadata !DIExpression()), !dbg !2224
  %40 = shl nuw nsw <2 x i32> %7, <i32 8, i32 8>, !dbg !2249
  %41 = or <2 x i32> %40, %7, !dbg !2250
  %42 = zext <2 x i32> %41 to <2 x i64>, !dbg !2251
  call void @llvm.dbg.value(metadata i64 undef, metadata !2218, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 undef, metadata !2217, metadata !DIExpression()), !dbg !2224
  %43 = shl nuw nsw <2 x i64> %42, <i64 16, i64 16>, !dbg !2252
  %44 = or <2 x i64> %43, %42, !dbg !2253
  call void @llvm.dbg.value(metadata i64 undef, metadata !2218, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 72340172838076673, metadata !2216, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 undef, metadata !2217, metadata !DIExpression()), !dbg !2224
  %45 = shl nuw <2 x i64> %44, <i64 32, i64 32>, !dbg !2254
  %46 = or <2 x i64> %45, %44, !dbg !2257
  call void @llvm.dbg.value(metadata i64 undef, metadata !2218, metadata !DIExpression()), !dbg !2224
  br label %47, !dbg !2258

47:                                               ; preds = %51, %36
  %48 = phi i64* [ %39, %36 ], [ %64, %51 ], !dbg !2259
  %49 = phi i64 [ %38, %36 ], [ %65, %51 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !2209, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64* %48, metadata !2212, metadata !DIExpression()), !dbg !2224
  %50 = icmp ugt i64 %49, 7, !dbg !2260
  br i1 %50, label %51, label %66, !dbg !2258

51:                                               ; preds = %47
  %52 = load i64, i64* %48, align 8, !dbg !2261, !tbaa !937
  call void @llvm.dbg.value(metadata i64 undef, metadata !2221, metadata !DIExpression()), !dbg !2262
  %53 = insertelement <2 x i64> poison, i64 %52, i32 0, !dbg !2263
  %54 = shufflevector <2 x i64> %53, <2 x i64> undef, <2 x i32> zeroinitializer, !dbg !2263
  %55 = xor <2 x i64> %54, %46, !dbg !2263
  call void @llvm.dbg.value(metadata i64 undef, metadata !2223, metadata !DIExpression()), !dbg !2262
  %56 = add <2 x i64> %55, <i64 -72340172838076673, i64 -72340172838076673>, !dbg !2264
  %57 = xor <2 x i64> %55, <i64 -1, i64 -1>, !dbg !2266
  %58 = and <2 x i64> %56, %57, !dbg !2267
  %59 = shufflevector <2 x i64> %58, <2 x i64> poison, <2 x i32> <i32 1, i32 undef>, !dbg !2268
  %60 = or <2 x i64> %58, %59, !dbg !2268
  %61 = extractelement <2 x i64> %60, i32 0, !dbg !2268
  %62 = and i64 %61, -9187201950435737472, !dbg !2269
  %63 = icmp eq i64 %62, 0, !dbg !2270
  %64 = getelementptr inbounds i64, i64* %48, i64 1, !dbg !2271
  %65 = add i64 %49, -8, !dbg !2271
  call void @llvm.dbg.value(metadata i64 undef, metadata !2209, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64* undef, metadata !2212, metadata !DIExpression()), !dbg !2224
  br i1 %63, label %47, label %68, !llvm.loop !2272

66:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i64* %48, metadata !2212, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64* %48, metadata !2210, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %49, metadata !2209, metadata !DIExpression()), !dbg !2224
  %67 = icmp eq i64 %49, 0, !dbg !2274
  br i1 %67, label %82, label %68, !dbg !2277

68:                                               ; preds = %51, %66
  %69 = bitcast i64* %48 to i8*, !dbg !2278
  call void @llvm.dbg.value(metadata i8* %69, metadata !2210, metadata !DIExpression()), !dbg !2224
  br label %70, !dbg !2277

70:                                               ; preds = %68, %78
  %71 = phi i64 [ %79, %78 ], [ %49, %68 ]
  %72 = phi i8* [ %80, %78 ], [ %69, %68 ]
  call void @llvm.dbg.value(metadata i64 %71, metadata !2209, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i8* %72, metadata !2210, metadata !DIExpression()), !dbg !2224
  %73 = load i8, i8* %72, align 1, !dbg !2279, !tbaa !892
  %74 = zext i8 %73 to i32, !dbg !2279
  %75 = icmp eq i32 %8, %74, !dbg !2282
  %76 = icmp eq i32 %9, %74
  %77 = or i1 %75, %76, !dbg !2283
  br i1 %77, label %82, label %78, !dbg !2283

78:                                               ; preds = %70
  %79 = add i64 %71, -1, !dbg !2284
  call void @llvm.dbg.value(metadata i64 %79, metadata !2209, metadata !DIExpression()), !dbg !2224
  %80 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !2285
  call void @llvm.dbg.value(metadata i8* %80, metadata !2210, metadata !DIExpression()), !dbg !2224
  %81 = icmp eq i64 %79, 0, !dbg !2274
  br i1 %81, label %82, label %70, !dbg !2277, !llvm.loop !2286

82:                                               ; preds = %23, %88, %101, %114, %127, %140, %153, %166, %70, %78, %66, %21
  %83 = phi i8* [ %22, %21 ], [ null, %66 ], [ %72, %70 ], [ null, %78 ], [ %0, %23 ], [ %30, %88 ], [ %95, %101 ], [ %108, %114 ], [ %121, %127 ], [ %134, %140 ], [ %147, %153 ], [ %160, %166 ], !dbg !2224
  ret i8* %83, !dbg !2288

84:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i64 %3, metadata !2209, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2224
  call void @llvm.dbg.value(metadata i8* %30, metadata !2211, metadata !DIExpression()), !dbg !2224
  %85 = ptrtoint i8* %30 to i64, !dbg !2234
  %86 = and i64 %85, 7, !dbg !2235
  %87 = icmp eq i64 %86, 0, !dbg !2236
  br i1 %87, label %32, label %88, !dbg !2233

88:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i8* %30, metadata !2210, metadata !DIExpression()), !dbg !2224
  %89 = load i8, i8* %30, align 1, !dbg !2239, !tbaa !892
  %90 = zext i8 %89 to i32, !dbg !2239
  %91 = icmp eq i32 %8, %90, !dbg !2242
  %92 = icmp eq i32 %9, %90
  %93 = or i1 %91, %92, !dbg !2243
  br i1 %93, label %82, label %94, !dbg !2243

94:                                               ; preds = %88
  %95 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2244
  call void @llvm.dbg.value(metadata i8* %95, metadata !2211, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %3, metadata !2209, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !2224
  %96 = icmp eq i64 %3, 2, !dbg !2229
  br i1 %96, label %32, label %97, !dbg !2232, !llvm.loop !2245

97:                                               ; preds = %94
  call void @llvm.dbg.value(metadata i64 %3, metadata !2209, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !2224
  call void @llvm.dbg.value(metadata i8* %95, metadata !2211, metadata !DIExpression()), !dbg !2224
  %98 = ptrtoint i8* %95 to i64, !dbg !2234
  %99 = and i64 %98, 7, !dbg !2235
  %100 = icmp eq i64 %99, 0, !dbg !2236
  br i1 %100, label %32, label %101, !dbg !2233

101:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %95, metadata !2210, metadata !DIExpression()), !dbg !2224
  %102 = load i8, i8* %95, align 1, !dbg !2239, !tbaa !892
  %103 = zext i8 %102 to i32, !dbg !2239
  %104 = icmp eq i32 %8, %103, !dbg !2242
  %105 = icmp eq i32 %9, %103
  %106 = or i1 %104, %105, !dbg !2243
  br i1 %106, label %82, label %107, !dbg !2243

107:                                              ; preds = %101
  %108 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2244
  call void @llvm.dbg.value(metadata i8* %108, metadata !2211, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %3, metadata !2209, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !2224
  %109 = icmp eq i64 %3, 3, !dbg !2229
  br i1 %109, label %32, label %110, !dbg !2232, !llvm.loop !2245

110:                                              ; preds = %107
  call void @llvm.dbg.value(metadata i64 %3, metadata !2209, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !2224
  call void @llvm.dbg.value(metadata i8* %108, metadata !2211, metadata !DIExpression()), !dbg !2224
  %111 = ptrtoint i8* %108 to i64, !dbg !2234
  %112 = and i64 %111, 7, !dbg !2235
  %113 = icmp eq i64 %112, 0, !dbg !2236
  br i1 %113, label %32, label %114, !dbg !2233

114:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i8* %108, metadata !2210, metadata !DIExpression()), !dbg !2224
  %115 = load i8, i8* %108, align 1, !dbg !2239, !tbaa !892
  %116 = zext i8 %115 to i32, !dbg !2239
  %117 = icmp eq i32 %8, %116, !dbg !2242
  %118 = icmp eq i32 %9, %116
  %119 = or i1 %117, %118, !dbg !2243
  br i1 %119, label %82, label %120, !dbg !2243

120:                                              ; preds = %114
  %121 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !2244
  call void @llvm.dbg.value(metadata i8* %121, metadata !2211, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %3, metadata !2209, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !2224
  %122 = icmp eq i64 %3, 4, !dbg !2229
  br i1 %122, label %32, label %123, !dbg !2232, !llvm.loop !2245

123:                                              ; preds = %120
  call void @llvm.dbg.value(metadata i64 %3, metadata !2209, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !2224
  call void @llvm.dbg.value(metadata i8* %121, metadata !2211, metadata !DIExpression()), !dbg !2224
  %124 = ptrtoint i8* %121 to i64, !dbg !2234
  %125 = and i64 %124, 7, !dbg !2235
  %126 = icmp eq i64 %125, 0, !dbg !2236
  br i1 %126, label %32, label %127, !dbg !2233

127:                                              ; preds = %123
  call void @llvm.dbg.value(metadata i8* %121, metadata !2210, metadata !DIExpression()), !dbg !2224
  %128 = load i8, i8* %121, align 1, !dbg !2239, !tbaa !892
  %129 = zext i8 %128 to i32, !dbg !2239
  %130 = icmp eq i32 %8, %129, !dbg !2242
  %131 = icmp eq i32 %9, %129
  %132 = or i1 %130, %131, !dbg !2243
  br i1 %132, label %82, label %133, !dbg !2243

133:                                              ; preds = %127
  %134 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !2244
  call void @llvm.dbg.value(metadata i8* %134, metadata !2211, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %3, metadata !2209, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value)), !dbg !2224
  %135 = icmp eq i64 %3, 5, !dbg !2229
  br i1 %135, label %32, label %136, !dbg !2232, !llvm.loop !2245

136:                                              ; preds = %133
  call void @llvm.dbg.value(metadata i64 %3, metadata !2209, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value)), !dbg !2224
  call void @llvm.dbg.value(metadata i8* %134, metadata !2211, metadata !DIExpression()), !dbg !2224
  %137 = ptrtoint i8* %134 to i64, !dbg !2234
  %138 = and i64 %137, 7, !dbg !2235
  %139 = icmp eq i64 %138, 0, !dbg !2236
  br i1 %139, label %32, label %140, !dbg !2233

140:                                              ; preds = %136
  call void @llvm.dbg.value(metadata i8* %134, metadata !2210, metadata !DIExpression()), !dbg !2224
  %141 = load i8, i8* %134, align 1, !dbg !2239, !tbaa !892
  %142 = zext i8 %141 to i32, !dbg !2239
  %143 = icmp eq i32 %8, %142, !dbg !2242
  %144 = icmp eq i32 %9, %142
  %145 = or i1 %143, %144, !dbg !2243
  br i1 %145, label %82, label %146, !dbg !2243

146:                                              ; preds = %140
  %147 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !2244
  call void @llvm.dbg.value(metadata i8* %147, metadata !2211, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %3, metadata !2209, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !2224
  %148 = icmp eq i64 %3, 6, !dbg !2229
  br i1 %148, label %32, label %149, !dbg !2232, !llvm.loop !2245

149:                                              ; preds = %146
  call void @llvm.dbg.value(metadata i64 %3, metadata !2209, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !2224
  call void @llvm.dbg.value(metadata i8* %147, metadata !2211, metadata !DIExpression()), !dbg !2224
  %150 = ptrtoint i8* %147 to i64, !dbg !2234
  %151 = and i64 %150, 7, !dbg !2235
  %152 = icmp eq i64 %151, 0, !dbg !2236
  br i1 %152, label %32, label %153, !dbg !2233

153:                                              ; preds = %149
  call void @llvm.dbg.value(metadata i8* %147, metadata !2210, metadata !DIExpression()), !dbg !2224
  %154 = load i8, i8* %147, align 1, !dbg !2239, !tbaa !892
  %155 = zext i8 %154 to i32, !dbg !2239
  %156 = icmp eq i32 %8, %155, !dbg !2242
  %157 = icmp eq i32 %9, %155
  %158 = or i1 %156, %157, !dbg !2243
  br i1 %158, label %82, label %159, !dbg !2243

159:                                              ; preds = %153
  %160 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !2244
  call void @llvm.dbg.value(metadata i8* %160, metadata !2211, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %3, metadata !2209, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !2224
  %161 = icmp eq i64 %3, 7, !dbg !2229
  br i1 %161, label %32, label %162, !dbg !2232, !llvm.loop !2245

162:                                              ; preds = %159
  call void @llvm.dbg.value(metadata i64 %3, metadata !2209, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !2224
  call void @llvm.dbg.value(metadata i8* %160, metadata !2211, metadata !DIExpression()), !dbg !2224
  %163 = ptrtoint i8* %160 to i64, !dbg !2234
  %164 = and i64 %163, 7, !dbg !2235
  %165 = icmp eq i64 %164, 0, !dbg !2236
  br i1 %165, label %32, label %166, !dbg !2233

166:                                              ; preds = %162
  call void @llvm.dbg.value(metadata i8* %160, metadata !2210, metadata !DIExpression()), !dbg !2224
  %167 = load i8, i8* %160, align 1, !dbg !2239, !tbaa !892
  %168 = zext i8 %167 to i32, !dbg !2239
  %169 = icmp eq i32 %8, %168, !dbg !2242
  %170 = icmp eq i32 %9, %168
  %171 = or i1 %169, %170, !dbg !2243
  br i1 %171, label %82, label %32, !dbg !2243
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2289 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2291, metadata !DIExpression()), !dbg !2294
  %2 = icmp eq i8* %0, null, !dbg !2295
  br i1 %2, label %3, label %6, !dbg !2297

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2298, !tbaa !744
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #34, !dbg !2300
  tail call void @abort() #31, !dbg !2301
  unreachable, !dbg !2301

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #30, !dbg !2302
  call void @llvm.dbg.value(metadata i8* %7, metadata !2292, metadata !DIExpression()), !dbg !2294
  %8 = icmp eq i8* %7, null, !dbg !2303
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2304
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2304
  call void @llvm.dbg.value(metadata i8* %10, metadata !2293, metadata !DIExpression()), !dbg !2294
  %11 = ptrtoint i8* %10 to i64, !dbg !2305
  %12 = ptrtoint i8* %0 to i64, !dbg !2305
  %13 = sub i64 %11, %12, !dbg !2305
  %14 = icmp sgt i64 %13, 6, !dbg !2307
  br i1 %14, label %15, label %24, !dbg !2308

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2309
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.93, i64 0, i64 0), i64 7) #30, !dbg !2310
  %18 = icmp eq i32 %17, 0, !dbg !2311
  br i1 %18, label %19, label %24, !dbg !2312

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2291, metadata !DIExpression()), !dbg !2294
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.94, i64 0, i64 0), i64 3) #30, !dbg !2313
  %21 = icmp eq i32 %20, 0, !dbg !2316
  br i1 %21, label %22, label %24, !dbg !2317

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2318
  call void @llvm.dbg.value(metadata i8* %23, metadata !2291, metadata !DIExpression()), !dbg !2294
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2320, !tbaa !744
  br label %24, !dbg !2321

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2291, metadata !DIExpression()), !dbg !2294
  store i8* %25, i8** @program_name, align 8, !dbg !2322, !tbaa !744
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2323, !tbaa !744
  ret void, !dbg !2324
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #18

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2325 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2330, metadata !DIExpression()), !dbg !2333
  %2 = tail call i32* @__errno_location() #33, !dbg !2334
  %3 = load i32, i32* %2, align 4, !dbg !2334, !tbaa !989
  call void @llvm.dbg.value(metadata i32 %3, metadata !2331, metadata !DIExpression()), !dbg !2333
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2335
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2335
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2335
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #29, !dbg !2336
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2336
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2332, metadata !DIExpression()), !dbg !2333
  store i32 %3, i32* %2, align 4, !dbg !2337, !tbaa !989
  ret %struct.quoting_options* %8, !dbg !2338
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #11 !dbg !2339 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2345, metadata !DIExpression()), !dbg !2346
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2347
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2347
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2348
  %5 = load i32, i32* %4, align 8, !dbg !2348, !tbaa !2349
  ret i32 %5, !dbg !2351
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !2352 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2356, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i32 %1, metadata !2357, metadata !DIExpression()), !dbg !2358
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2359
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2359
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2360
  store i32 %1, i32* %5, align 8, !dbg !2361, !tbaa !2349
  ret void, !dbg !2362
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #19 !dbg !2363 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2367, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i8 %1, metadata !2368, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i32 %2, metadata !2369, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i8 %1, metadata !2370, metadata !DIExpression()), !dbg !2375
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2376
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2376
  %6 = lshr i8 %1, 5, !dbg !2377
  %7 = zext i8 %6 to i64, !dbg !2377
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2378
  call void @llvm.dbg.value(metadata i32* %8, metadata !2371, metadata !DIExpression()), !dbg !2375
  %9 = and i8 %1, 31, !dbg !2379
  %10 = zext i8 %9 to i32, !dbg !2379
  call void @llvm.dbg.value(metadata i32 %10, metadata !2373, metadata !DIExpression()), !dbg !2375
  %11 = load i32, i32* %8, align 4, !dbg !2380, !tbaa !989
  %12 = lshr i32 %11, %10, !dbg !2381
  %13 = and i32 %12, 1, !dbg !2382
  call void @llvm.dbg.value(metadata i32 %13, metadata !2374, metadata !DIExpression()), !dbg !2375
  %14 = and i32 %2, 1, !dbg !2383
  %15 = xor i32 %13, %14, !dbg !2384
  %16 = shl i32 %15, %10, !dbg !2385
  %17 = xor i32 %16, %11, !dbg !2386
  store i32 %17, i32* %8, align 4, !dbg !2386, !tbaa !989
  ret i32 %13, !dbg !2387
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #19 !dbg !2388 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2392, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i32 %1, metadata !2393, metadata !DIExpression()), !dbg !2395
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2396
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2398
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2392, metadata !DIExpression()), !dbg !2395
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2399
  %6 = load i32, i32* %5, align 4, !dbg !2399, !tbaa !2400
  call void @llvm.dbg.value(metadata i32 %6, metadata !2394, metadata !DIExpression()), !dbg !2395
  store i32 %1, i32* %5, align 4, !dbg !2401, !tbaa !2400
  ret i32 %6, !dbg !2402
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2403 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2407, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8* %1, metadata !2408, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8* %2, metadata !2409, metadata !DIExpression()), !dbg !2410
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2411
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2413
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2407, metadata !DIExpression()), !dbg !2410
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2414
  store i32 10, i32* %6, align 8, !dbg !2415, !tbaa !2349
  %7 = icmp ne i8* %1, null, !dbg !2416
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2418
  br i1 %9, label %11, label %10, !dbg !2418

10:                                               ; preds = %3
  tail call void @abort() #31, !dbg !2419
  unreachable, !dbg !2419

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2420
  store i8* %1, i8** %12, align 8, !dbg !2421, !tbaa !2422
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2423
  store i8* %2, i8** %13, align 8, !dbg !2424, !tbaa !2425
  ret void, !dbg !2426
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2427 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2431, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i64 %1, metadata !2432, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8* %2, metadata !2433, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i64 %3, metadata !2434, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2435, metadata !DIExpression()), !dbg !2439
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2440
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2440
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2436, metadata !DIExpression()), !dbg !2439
  %8 = tail call i32* @__errno_location() #33, !dbg !2441
  %9 = load i32, i32* %8, align 4, !dbg !2441, !tbaa !989
  call void @llvm.dbg.value(metadata i32 %9, metadata !2437, metadata !DIExpression()), !dbg !2439
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2442
  %11 = load i32, i32* %10, align 8, !dbg !2442, !tbaa !2349
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2443
  %13 = load i32, i32* %12, align 4, !dbg !2443, !tbaa !2400
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2444
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2445
  %16 = load i8*, i8** %15, align 8, !dbg !2445, !tbaa !2422
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2446
  %18 = load i8*, i8** %17, align 8, !dbg !2446, !tbaa !2425
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2447
  call void @llvm.dbg.value(metadata i64 %19, metadata !2438, metadata !DIExpression()), !dbg !2439
  store i32 %9, i32* %8, align 4, !dbg !2448, !tbaa !989
  ret i64 %19, !dbg !2449
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2450 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2456, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %1, metadata !2457, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* %2, metadata !2458, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %3, metadata !2459, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i32 %4, metadata !2460, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i32 %5, metadata !2461, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i32* %6, metadata !2462, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* %7, metadata !2463, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* %8, metadata !2464, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 0, metadata !2466, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 0, metadata !2467, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* null, metadata !2468, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 0, metadata !2469, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 0, metadata !2470, metadata !DIExpression()), !dbg !2526
  %13 = tail call i64 @__ctype_get_mb_cur_max() #29, !dbg !2527
  %14 = icmp eq i64 %13, 1, !dbg !2528
  call void @llvm.dbg.value(metadata i1 %14, metadata !2471, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2526
  %15 = lshr i32 %5, 1, !dbg !2529
  %16 = trunc i32 %15 to i8, !dbg !2529
  %17 = and i8 %16, 1, !dbg !2529
  call void @llvm.dbg.value(metadata i8 %17, metadata !2472, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 0, metadata !2473, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 0, metadata !2474, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 1, metadata !2475, metadata !DIExpression()), !dbg !2526
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !2530

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !2531
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !2532
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !2533
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !2534
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !2526
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !2535
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !2536
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !2537
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2457, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %38, metadata !2475, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %37, metadata !2474, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %36, metadata !2473, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %35, metadata !2472, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %34, metadata !2459, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %33, metadata !2470, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %32, metadata !2469, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* %31, metadata !2468, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %30, metadata !2467, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 0, metadata !2466, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* %29, metadata !2464, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* %28, metadata !2463, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i32 %27, metadata !2460, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.label(metadata !2520), !dbg !2538
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
  ], !dbg !2539

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2472, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i32 5, metadata !2460, metadata !DIExpression()), !dbg !2526
  br label %92, !dbg !2540

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2472, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i32 5, metadata !2460, metadata !DIExpression()), !dbg !2526
  %42 = and i8 %35, 1, !dbg !2542
  %43 = icmp eq i8 %42, 0, !dbg !2542
  br i1 %43, label %44, label %92, !dbg !2540

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2544
  br i1 %45, label %92, label %46, !dbg !2547

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2544, !tbaa !892
  br label %92, !dbg !2544

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.105, i64 0, i64 0), i32 %27), !dbg !2548
  call void @llvm.dbg.value(metadata i8* %48, metadata !2463, metadata !DIExpression()), !dbg !2526
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), i32 %27), !dbg !2552
  call void @llvm.dbg.value(metadata i8* %49, metadata !2464, metadata !DIExpression()), !dbg !2526
  br label %50, !dbg !2553

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2464, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* %51, metadata !2463, metadata !DIExpression()), !dbg !2526
  %53 = and i8 %35, 1, !dbg !2554
  %54 = icmp eq i8 %53, 0, !dbg !2554
  br i1 %54, label %55, label %70, !dbg !2556

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2468, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 0, metadata !2466, metadata !DIExpression()), !dbg !2526
  %56 = load i8, i8* %51, align 1, !dbg !2557, !tbaa !892
  %57 = icmp eq i8 %56, 0, !dbg !2560
  br i1 %57, label %70, label %58, !dbg !2560

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2468, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %61, metadata !2466, metadata !DIExpression()), !dbg !2526
  %62 = icmp ult i64 %61, %39, !dbg !2561
  br i1 %62, label %63, label %65, !dbg !2564

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2561
  store i8 %59, i8* %64, align 1, !dbg !2561, !tbaa !892
  br label %65, !dbg !2561

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2564
  call void @llvm.dbg.value(metadata i64 %66, metadata !2466, metadata !DIExpression()), !dbg !2526
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2565
  call void @llvm.dbg.value(metadata i8* %67, metadata !2468, metadata !DIExpression()), !dbg !2526
  %68 = load i8, i8* %67, align 1, !dbg !2557, !tbaa !892
  %69 = icmp eq i8 %68, 0, !dbg !2560
  br i1 %69, label %70, label %58, !dbg !2560, !llvm.loop !2566

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2568
  call void @llvm.dbg.value(metadata i64 %71, metadata !2466, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 1, metadata !2470, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* %52, metadata !2468, metadata !DIExpression()), !dbg !2526
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #30, !dbg !2569
  call void @llvm.dbg.value(metadata i64 %72, metadata !2469, metadata !DIExpression()), !dbg !2526
  br label %92, !dbg !2570

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2470, metadata !DIExpression()), !dbg !2526
  br label %74, !dbg !2571

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2526
  call void @llvm.dbg.value(metadata i8 %75, metadata !2470, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 1, metadata !2472, metadata !DIExpression()), !dbg !2526
  br label %76, !dbg !2572

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2534
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2526
  call void @llvm.dbg.value(metadata i8 %78, metadata !2472, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %77, metadata !2470, metadata !DIExpression()), !dbg !2526
  %79 = and i8 %78, 1, !dbg !2573
  %80 = icmp eq i8 %79, 0, !dbg !2573
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2575
  br label %82, !dbg !2575

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2526
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2529
  call void @llvm.dbg.value(metadata i8 %84, metadata !2472, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %83, metadata !2470, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i32 2, metadata !2460, metadata !DIExpression()), !dbg !2526
  %85 = and i8 %84, 1, !dbg !2576
  %86 = icmp eq i8 %85, 0, !dbg !2576
  br i1 %86, label %87, label %92, !dbg !2578

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2579
  br i1 %88, label %92, label %89, !dbg !2582

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2579, !tbaa !892
  br label %92, !dbg !2579

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2472, metadata !DIExpression()), !dbg !2526
  br label %92, !dbg !2583

91:                                               ; preds = %26
  call void @abort() #31, !dbg !2584
  unreachable, !dbg !2584

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !2568
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), %40 ], !dbg !2526
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !2526
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !2526
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !2526
  call void @llvm.dbg.value(metadata i8 %100, metadata !2472, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %99, metadata !2470, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %98, metadata !2469, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* %97, metadata !2468, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %96, metadata !2466, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* %95, metadata !2464, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* %94, metadata !2463, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i32 %93, metadata !2460, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 0, metadata !2465, metadata !DIExpression()), !dbg !2526
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
  br label %121, !dbg !2585

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !2586
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !2568
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !2531
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !2535
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !2536
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !2537
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2457, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %128, metadata !2475, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %127, metadata !2474, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %126, metadata !2473, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %125, metadata !2459, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %124, metadata !2467, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %123, metadata !2466, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %122, metadata !2465, metadata !DIExpression()), !dbg !2526
  %130 = icmp eq i64 %125, -1, !dbg !2587
  br i1 %130, label %131, label %135, !dbg !2588

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2589
  %133 = load i8, i8* %132, align 1, !dbg !2589, !tbaa !892
  %134 = icmp eq i8 %133, 0, !dbg !2590
  br i1 %134, label %587, label %137, !dbg !2591

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2592
  br i1 %136, label %587, label %137, !dbg !2591

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2481, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 0, metadata !2482, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 0, metadata !2483, metadata !DIExpression()), !dbg !2593
  br i1 %106, label %138, label %153, !dbg !2594

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2596
  %140 = and i1 %107, %130, !dbg !2597
  br i1 %140, label %141, label %143, !dbg !2597

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #30, !dbg !2598
  call void @llvm.dbg.value(metadata i64 %142, metadata !2459, metadata !DIExpression()), !dbg !2526
  br label %143, !dbg !2599

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2599
  call void @llvm.dbg.value(metadata i64 %144, metadata !2459, metadata !DIExpression()), !dbg !2526
  %145 = icmp ugt i64 %139, %144, !dbg !2600
  br i1 %145, label %153, label %146, !dbg !2601

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2602
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !2603
  %149 = icmp ne i32 %148, 0, !dbg !2604
  %150 = or i1 %149, %109, !dbg !2605
  %151 = xor i1 %149, true, !dbg !2605
  %152 = zext i1 %151 to i8, !dbg !2605
  br i1 %150, label %153, label %646, !dbg !2605

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !2593
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2593
  call void @llvm.dbg.value(metadata i8 %156, metadata !2481, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %154, metadata !2459, metadata !DIExpression()), !dbg !2526
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2606
  %158 = load i8, i8* %157, align 1, !dbg !2606, !tbaa !892
  call void @llvm.dbg.value(metadata i8 %158, metadata !2476, metadata !DIExpression()), !dbg !2593
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
  ], !dbg !2607

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !2608

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !2609

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2482, metadata !DIExpression()), !dbg !2593
  %162 = and i8 %126, 1, !dbg !2613
  %163 = icmp eq i8 %162, 0, !dbg !2613
  %164 = and i1 %110, %163, !dbg !2613
  br i1 %164, label %165, label %181, !dbg !2613

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2615
  br i1 %166, label %167, label %169, !dbg !2619

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2615
  store i8 39, i8* %168, align 1, !dbg !2615, !tbaa !892
  br label %169, !dbg !2615

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2619
  call void @llvm.dbg.value(metadata i64 %170, metadata !2466, metadata !DIExpression()), !dbg !2526
  %171 = icmp ult i64 %170, %129, !dbg !2620
  br i1 %171, label %172, label %174, !dbg !2623

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2620
  store i8 36, i8* %173, align 1, !dbg !2620, !tbaa !892
  br label %174, !dbg !2620

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2623
  call void @llvm.dbg.value(metadata i64 %175, metadata !2466, metadata !DIExpression()), !dbg !2526
  %176 = icmp ult i64 %175, %129, !dbg !2624
  br i1 %176, label %177, label %179, !dbg !2627

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2624
  store i8 39, i8* %178, align 1, !dbg !2624, !tbaa !892
  br label %179, !dbg !2624

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2627
  call void @llvm.dbg.value(metadata i64 %180, metadata !2466, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 1, metadata !2473, metadata !DIExpression()), !dbg !2526
  br label %181, !dbg !2628

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !2526
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !2526
  call void @llvm.dbg.value(metadata i8 %183, metadata !2473, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %182, metadata !2466, metadata !DIExpression()), !dbg !2526
  %184 = icmp ult i64 %182, %129, !dbg !2629
  br i1 %184, label %185, label %187, !dbg !2632

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2629
  store i8 92, i8* %186, align 1, !dbg !2629, !tbaa !892
  br label %187, !dbg !2629

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2632
  call void @llvm.dbg.value(metadata i64 %188, metadata !2466, metadata !DIExpression()), !dbg !2526
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2633
  br i1 %191, label %192, label %473, !dbg !2633

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2635
  %194 = load i8, i8* %193, align 1, !dbg !2635, !tbaa !892
  %195 = add i8 %194, -48, !dbg !2636
  %196 = icmp ult i8 %195, 10, !dbg !2636
  br i1 %196, label %197, label %473, !dbg !2636

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2637
  br i1 %198, label %199, label %201, !dbg !2641

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2637
  store i8 48, i8* %200, align 1, !dbg !2637, !tbaa !892
  br label %201, !dbg !2637

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2641
  call void @llvm.dbg.value(metadata i64 %202, metadata !2466, metadata !DIExpression()), !dbg !2526
  %203 = icmp ult i64 %202, %129, !dbg !2642
  br i1 %203, label %204, label %206, !dbg !2645

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2642
  store i8 48, i8* %205, align 1, !dbg !2642, !tbaa !892
  br label %206, !dbg !2642

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2645
  call void @llvm.dbg.value(metadata i64 %207, metadata !2466, metadata !DIExpression()), !dbg !2526
  br label %473, !dbg !2646

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !2647

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2648

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !2649

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !2651
  br i1 %214, label %215, label %473, !dbg !2651

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !2653
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2654
  %218 = load i8, i8* %217, align 1, !dbg !2654, !tbaa !892
  %219 = icmp eq i8 %218, 63, !dbg !2655
  br i1 %219, label %220, label %473, !dbg !2656

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2657
  %222 = load i8, i8* %221, align 1, !dbg !2657, !tbaa !892
  %223 = sext i8 %222 to i32, !dbg !2657
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
  ], !dbg !2658

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !2659

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2476, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 undef, metadata !2465, metadata !DIExpression()), !dbg !2526
  %226 = icmp ult i64 %123, %129, !dbg !2661
  br i1 %226, label %227, label %229, !dbg !2664

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2661
  store i8 63, i8* %228, align 1, !dbg !2661, !tbaa !892
  br label %229, !dbg !2661

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2664
  call void @llvm.dbg.value(metadata i64 %230, metadata !2466, metadata !DIExpression()), !dbg !2526
  %231 = icmp ult i64 %230, %129, !dbg !2665
  br i1 %231, label %232, label %234, !dbg !2668

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2665
  store i8 34, i8* %233, align 1, !dbg !2665, !tbaa !892
  br label %234, !dbg !2665

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2668
  call void @llvm.dbg.value(metadata i64 %235, metadata !2466, metadata !DIExpression()), !dbg !2526
  %236 = icmp ult i64 %235, %129, !dbg !2669
  br i1 %236, label %237, label %239, !dbg !2672

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2669
  store i8 34, i8* %238, align 1, !dbg !2669, !tbaa !892
  br label %239, !dbg !2669

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2672
  call void @llvm.dbg.value(metadata i64 %240, metadata !2466, metadata !DIExpression()), !dbg !2526
  %241 = icmp ult i64 %240, %129, !dbg !2673
  br i1 %241, label %242, label %244, !dbg !2676

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2673
  store i8 63, i8* %243, align 1, !dbg !2673, !tbaa !892
  br label %244, !dbg !2673

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2676
  call void @llvm.dbg.value(metadata i64 %245, metadata !2466, metadata !DIExpression()), !dbg !2526
  br label %473, !dbg !2677

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2480, metadata !DIExpression()), !dbg !2593
  br label %256, !dbg !2678

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2480, metadata !DIExpression()), !dbg !2593
  br label %256, !dbg !2679

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2480, metadata !DIExpression()), !dbg !2593
  br label %254, !dbg !2680

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2480, metadata !DIExpression()), !dbg !2593
  br label %254, !dbg !2681

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2480, metadata !DIExpression()), !dbg !2593
  br label %256, !dbg !2682

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !2480, metadata !DIExpression()), !dbg !2593
  br i1 %110, label %252, label %253, !dbg !2683

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2684

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2687

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2689
  call void @llvm.dbg.value(metadata i8 %255, metadata !2480, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.label(metadata !2521), !dbg !2690
  br i1 %111, label %256, label %631, !dbg !2691

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2689
  call void @llvm.dbg.value(metadata i8 %257, metadata !2480, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.label(metadata !2522), !dbg !2693
  br i1 %102, label %495, label %473, !dbg !2694

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2695

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2696, !tbaa !892
  %261 = icmp eq i8 %260, 0, !dbg !2698
  br i1 %261, label %262, label %473, !dbg !2699

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2700
  br i1 %263, label %264, label %473, !dbg !2702

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2483, metadata !DIExpression()), !dbg !2593
  br label %265, !dbg !2703

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !2593
  call void @llvm.dbg.value(metadata i8 %266, metadata !2483, metadata !DIExpression()), !dbg !2593
  br i1 %111, label %473, label %631, !dbg !2704

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2474, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 1, metadata !2483, metadata !DIExpression()), !dbg !2593
  br i1 %110, label %268, label %473, !dbg !2706

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2707

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2710
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2712
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2712
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2712
  call void @llvm.dbg.value(metadata i64 %274, metadata !2457, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %273, metadata !2467, metadata !DIExpression()), !dbg !2526
  %275 = icmp ult i64 %123, %274, !dbg !2713
  br i1 %275, label %276, label %278, !dbg !2716

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2713
  store i8 39, i8* %277, align 1, !dbg !2713, !tbaa !892
  br label %278, !dbg !2713

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2716
  call void @llvm.dbg.value(metadata i64 %279, metadata !2466, metadata !DIExpression()), !dbg !2526
  %280 = icmp ult i64 %279, %274, !dbg !2717
  br i1 %280, label %281, label %283, !dbg !2720

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2717
  store i8 92, i8* %282, align 1, !dbg !2717, !tbaa !892
  br label %283, !dbg !2717

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2720
  call void @llvm.dbg.value(metadata i64 %284, metadata !2466, metadata !DIExpression()), !dbg !2526
  %285 = icmp ult i64 %284, %274, !dbg !2721
  br i1 %285, label %286, label %288, !dbg !2724

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2721
  store i8 39, i8* %287, align 1, !dbg !2721, !tbaa !892
  br label %288, !dbg !2721

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2724
  call void @llvm.dbg.value(metadata i64 %289, metadata !2466, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 0, metadata !2473, metadata !DIExpression()), !dbg !2526
  br label %473, !dbg !2725

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2726

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2484, metadata !DIExpression()), !dbg !2727
  %292 = tail call i16** @__ctype_b_loc() #33, !dbg !2728
  %293 = load i16*, i16** %292, align 8, !dbg !2728, !tbaa !744
  %294 = zext i8 %158 to i64, !dbg !2728
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2728
  %296 = load i16, i16* %295, align 2, !dbg !2728, !tbaa !1472
  %297 = lshr i16 %296, 14, !dbg !2730
  %298 = trunc i16 %297 to i8, !dbg !2730
  %299 = and i8 %298, 1, !dbg !2730
  call void @llvm.dbg.value(metadata i8 %354, metadata !2487, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %355, metadata !2484, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %306, metadata !2459, metadata !DIExpression()), !dbg !2526
  %300 = icmp eq i8 %299, 0, !dbg !2731
  call void @llvm.dbg.value(metadata i1 %357, metadata !2483, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2593
  br label %359, !dbg !2732

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #29, !dbg !2733
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2488, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8* %23, metadata !2735, metadata !DIExpression()) #29, !dbg !2742
  call void @llvm.dbg.value(metadata i32 0, metadata !2740, metadata !DIExpression()) #29, !dbg !2742
  call void @llvm.dbg.value(metadata i64 8, metadata !2741, metadata !DIExpression()) #29, !dbg !2742
  store i64 0, i64* %10, align 8, !dbg !2744
  call void @llvm.dbg.value(metadata i64 0, metadata !2484, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8 1, metadata !2487, metadata !DIExpression()), !dbg !2727
  %302 = icmp eq i64 %154, -1, !dbg !2745
  br i1 %302, label %303, label %305, !dbg !2747

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #30, !dbg !2748
  call void @llvm.dbg.value(metadata i64 %304, metadata !2459, metadata !DIExpression()), !dbg !2526
  br label %305, !dbg !2749

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !2593
  call void @llvm.dbg.value(metadata i64 %306, metadata !2459, metadata !DIExpression()), !dbg !2526
  br label %307, !dbg !2750

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2751
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2752
  call void @llvm.dbg.value(metadata i8 %309, metadata !2487, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %308, metadata !2484, metadata !DIExpression()), !dbg !2727
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #29, !dbg !2753
  %310 = add i64 %308, %122, !dbg !2754
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2755
  %312 = sub i64 %306, %310, !dbg !2756
  call void @llvm.dbg.value(metadata i32* %12, metadata !2506, metadata !DIExpression(DW_OP_deref)), !dbg !2757
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #29, !dbg !2758
  call void @llvm.dbg.value(metadata i64 %313, metadata !2509, metadata !DIExpression()), !dbg !2757
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2759

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !2484, metadata !DIExpression()), !dbg !2727
  %315 = icmp ugt i64 %306, %310, !dbg !2760
  br i1 %315, label %316, label %341, !dbg !2762

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2763
  br label %318, !dbg !2763

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !2484, metadata !DIExpression()), !dbg !2727
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2764
  %322 = load i8, i8* %321, align 1, !dbg !2764, !tbaa !892
  %323 = icmp eq i8 %322, 0, !dbg !2762
  br i1 %323, label %341, label %324, !dbg !2763

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2765
  call void @llvm.dbg.value(metadata i64 %325, metadata !2484, metadata !DIExpression()), !dbg !2727
  %326 = add i64 %325, %122, !dbg !2766
  %327 = icmp ult i64 %326, %306, !dbg !2760
  br i1 %327, label %318, label %341, !dbg !2762, !llvm.loop !2767

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2768
  call void @llvm.dbg.value(metadata i64 1, metadata !2510, metadata !DIExpression()), !dbg !2769
  br i1 %330, label %331, label %344, !dbg !2768

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !2510, metadata !DIExpression()), !dbg !2769
  %333 = add i64 %332, %310, !dbg !2770
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2773
  %335 = load i8, i8* %334, align 1, !dbg !2773, !tbaa !892
  %336 = sext i8 %335 to i32, !dbg !2773
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2774

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2775
  call void @llvm.dbg.value(metadata i64 %338, metadata !2510, metadata !DIExpression()), !dbg !2769
  %339 = icmp eq i64 %338, %313, !dbg !2776
  br i1 %339, label %344, label %331, !dbg !2777, !llvm.loop !2778

340:                                              ; preds = %307
  br label %341, !dbg !2780

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2487, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 undef, metadata !2484, metadata !DIExpression()), !dbg !2727
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #29, !dbg !2780
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2781, !tbaa !989
  call void @llvm.dbg.value(metadata i32 %345, metadata !2506, metadata !DIExpression()), !dbg !2757
  %346 = call i32 @iswprint(i32 %345) #29, !dbg !2783
  %347 = icmp eq i32 %346, 0, !dbg !2783
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2784
  call void @llvm.dbg.value(metadata i8 %348, metadata !2487, metadata !DIExpression()), !dbg !2727
  %349 = add i64 %313, %308, !dbg !2785
  call void @llvm.dbg.value(metadata i64 %349, metadata !2484, metadata !DIExpression()), !dbg !2727
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #29, !dbg !2780
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #30, !dbg !2786
  %351 = icmp eq i32 %350, 0, !dbg !2787
  br i1 %351, label %307, label %353, !dbg !2788, !llvm.loop !2789

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !2487, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 undef, metadata !2484, metadata !DIExpression()), !dbg !2727
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #29, !dbg !2780
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #29, !dbg !2791
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #29, !dbg !2791
  call void @llvm.dbg.value(metadata i8 %354, metadata !2487, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %355, metadata !2484, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %306, metadata !2459, metadata !DIExpression()), !dbg !2526
  %356 = and i8 %354, 1, !dbg !2731
  %357 = icmp eq i8 %356, 0, !dbg !2731
  call void @llvm.dbg.value(metadata i1 %357, metadata !2483, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2593
  %358 = icmp ugt i64 %355, 1, !dbg !2792
  br i1 %358, label %367, label %359, !dbg !2732

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2793
  br i1 %364, label %367, label %365, !dbg !2793

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !2593
  call void @llvm.dbg.value(metadata i8 %472, metadata !2483, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %441, metadata !2482, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %440, metadata !2481, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %439, metadata !2476, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %438, metadata !2473, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %371, metadata !2459, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %437, metadata !2466, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %375, metadata !2465, metadata !DIExpression()), !dbg !2526
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %372, metadata !2517, metadata !DIExpression()), !dbg !2795
  %373 = and i1 %102, %368
  br label %374, !dbg !2796

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !2586
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !2526
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !2535
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !2593
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !2593
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2797
  call void @llvm.dbg.value(metadata i8 %380, metadata !2482, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %379, metadata !2481, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %378, metadata !2476, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %377, metadata !2473, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %376, metadata !2466, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %375, metadata !2465, metadata !DIExpression()), !dbg !2526
  br i1 %373, label %381, label %427, !dbg !2798

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2803

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !2482, metadata !DIExpression()), !dbg !2593
  %383 = and i8 %377, 1, !dbg !2806
  %384 = icmp eq i8 %383, 0, !dbg !2806
  %385 = and i1 %110, %384, !dbg !2806
  br i1 %385, label %386, label %402, !dbg !2806

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2808
  br i1 %387, label %388, label %390, !dbg !2812

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2808
  store i8 39, i8* %389, align 1, !dbg !2808, !tbaa !892
  br label %390, !dbg !2808

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2812
  call void @llvm.dbg.value(metadata i64 %391, metadata !2466, metadata !DIExpression()), !dbg !2526
  %392 = icmp ult i64 %391, %129, !dbg !2813
  br i1 %392, label %393, label %395, !dbg !2816

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2813
  store i8 36, i8* %394, align 1, !dbg !2813, !tbaa !892
  br label %395, !dbg !2813

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2816
  call void @llvm.dbg.value(metadata i64 %396, metadata !2466, metadata !DIExpression()), !dbg !2526
  %397 = icmp ult i64 %396, %129, !dbg !2817
  br i1 %397, label %398, label %400, !dbg !2820

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2817
  store i8 39, i8* %399, align 1, !dbg !2817, !tbaa !892
  br label %400, !dbg !2817

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2820
  call void @llvm.dbg.value(metadata i64 %401, metadata !2466, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 1, metadata !2473, metadata !DIExpression()), !dbg !2526
  br label %402, !dbg !2821

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !2526
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !2526
  call void @llvm.dbg.value(metadata i8 %404, metadata !2473, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %403, metadata !2466, metadata !DIExpression()), !dbg !2526
  %405 = icmp ult i64 %403, %129, !dbg !2822
  br i1 %405, label %406, label %408, !dbg !2825

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2822
  store i8 92, i8* %407, align 1, !dbg !2822, !tbaa !892
  br label %408, !dbg !2822

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2825
  call void @llvm.dbg.value(metadata i64 %409, metadata !2466, metadata !DIExpression()), !dbg !2526
  %410 = icmp ult i64 %409, %129, !dbg !2826
  br i1 %410, label %411, label %415, !dbg !2829

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2826
  %413 = or i8 %412, 48, !dbg !2826
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2826
  store i8 %413, i8* %414, align 1, !dbg !2826, !tbaa !892
  br label %415, !dbg !2826

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2829
  call void @llvm.dbg.value(metadata i64 %416, metadata !2466, metadata !DIExpression()), !dbg !2526
  %417 = icmp ult i64 %416, %129, !dbg !2830
  br i1 %417, label %418, label %423, !dbg !2833

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2830
  %420 = and i8 %419, 7, !dbg !2830
  %421 = or i8 %420, 48, !dbg !2830
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2830
  store i8 %421, i8* %422, align 1, !dbg !2830, !tbaa !892
  br label %423, !dbg !2830

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2833
  call void @llvm.dbg.value(metadata i64 %424, metadata !2466, metadata !DIExpression()), !dbg !2526
  %425 = and i8 %378, 7, !dbg !2834
  %426 = or i8 %425, 48, !dbg !2835
  call void @llvm.dbg.value(metadata i8 %426, metadata !2476, metadata !DIExpression()), !dbg !2593
  br label %436, !dbg !2836

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2837
  %429 = icmp eq i8 %428, 0, !dbg !2837
  br i1 %429, label %436, label %430, !dbg !2839

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2840
  br i1 %431, label %432, label %434, !dbg !2844

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2840
  store i8 92, i8* %433, align 1, !dbg !2840, !tbaa !892
  br label %434, !dbg !2840

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2844
  call void @llvm.dbg.value(metadata i64 %435, metadata !2466, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 0, metadata !2481, metadata !DIExpression()), !dbg !2593
  br label %436, !dbg !2845

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !2526
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !2535
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !2593
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !2593
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !2593
  call void @llvm.dbg.value(metadata i8 %441, metadata !2482, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %440, metadata !2481, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %439, metadata !2476, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %438, metadata !2473, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %437, metadata !2466, metadata !DIExpression()), !dbg !2526
  %442 = add i64 %375, 1, !dbg !2846
  %443 = icmp ugt i64 %372, %442, !dbg !2848
  br i1 %443, label %444, label %471, !dbg !2849

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2850
  %446 = icmp ne i8 %445, 0, !dbg !2850
  %447 = and i8 %441, 1, !dbg !2850
  %448 = icmp eq i8 %447, 0, !dbg !2850
  %449 = and i1 %446, %448, !dbg !2850
  br i1 %449, label %450, label %461, !dbg !2850

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2853
  br i1 %451, label %452, label %454, !dbg !2857

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2853
  store i8 39, i8* %453, align 1, !dbg !2853, !tbaa !892
  br label %454, !dbg !2853

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2857
  call void @llvm.dbg.value(metadata i64 %455, metadata !2466, metadata !DIExpression()), !dbg !2526
  %456 = icmp ult i64 %455, %129, !dbg !2858
  br i1 %456, label %457, label %459, !dbg !2861

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2858
  store i8 39, i8* %458, align 1, !dbg !2858, !tbaa !892
  br label %459, !dbg !2858

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2861
  call void @llvm.dbg.value(metadata i64 %460, metadata !2466, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 0, metadata !2473, metadata !DIExpression()), !dbg !2526
  br label %461, !dbg !2862

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2863
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !2526
  call void @llvm.dbg.value(metadata i8 %463, metadata !2473, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %462, metadata !2466, metadata !DIExpression()), !dbg !2526
  %464 = icmp ult i64 %462, %129, !dbg !2864
  br i1 %464, label %465, label %467, !dbg !2867

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2864
  store i8 %439, i8* %466, align 1, !dbg !2864, !tbaa !892
  br label %467, !dbg !2864

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2867
  call void @llvm.dbg.value(metadata i64 %468, metadata !2466, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %442, metadata !2465, metadata !DIExpression()), !dbg !2526
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2868
  %470 = load i8, i8* %469, align 1, !dbg !2868, !tbaa !892
  call void @llvm.dbg.value(metadata i8 %470, metadata !2476, metadata !DIExpression()), !dbg !2593
  br label %374, !dbg !2869, !llvm.loop !2870

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !2593
  call void @llvm.dbg.value(metadata i8 %472, metadata !2483, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %441, metadata !2482, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %440, metadata !2481, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %439, metadata !2476, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %438, metadata !2473, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %371, metadata !2459, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %437, metadata !2466, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %375, metadata !2465, metadata !DIExpression()), !dbg !2526
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !2586
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !2526
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !2531
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2873
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !2526
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !2526
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !2593
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !2593
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !2593
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !2457, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %482, metadata !2483, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %481, metadata !2482, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %156, metadata !2481, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %480, metadata !2476, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %479, metadata !2474, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %478, metadata !2473, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %477, metadata !2459, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %476, metadata !2467, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %475, metadata !2466, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %474, metadata !2465, metadata !DIExpression()), !dbg !2526
  br i1 %116, label %494, label %484, !dbg !2874

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2876
  %486 = zext i8 %485 to i64, !dbg !2876
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2877
  %488 = load i32, i32* %487, align 4, !dbg !2877, !tbaa !989
  %489 = and i8 %480, 31, !dbg !2878
  %490 = zext i8 %489 to i32, !dbg !2878
  %491 = shl nuw i32 1, %490, !dbg !2879
  %492 = and i32 %488, %491, !dbg !2879
  %493 = icmp eq i32 %492, 0, !dbg !2879
  br i1 %493, label %494, label %495, !dbg !2880

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2881

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2882
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !2526
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !2531
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2873
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !2535
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !2536
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !2593
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !2593
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !2457, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %503, metadata !2483, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %502, metadata !2476, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %501, metadata !2474, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %500, metadata !2473, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %499, metadata !2459, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %498, metadata !2467, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %497, metadata !2466, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %496, metadata !2465, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.label(metadata !2523), !dbg !2883
  br i1 %109, label %505, label %635, !dbg !2884

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !2482, metadata !DIExpression()), !dbg !2593
  %506 = and i8 %500, 1, !dbg !2886
  %507 = icmp eq i8 %506, 0, !dbg !2886
  %508 = and i1 %110, %507, !dbg !2886
  br i1 %508, label %509, label %525, !dbg !2886

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2888
  br i1 %510, label %511, label %513, !dbg !2892

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2888
  store i8 39, i8* %512, align 1, !dbg !2888, !tbaa !892
  br label %513, !dbg !2888

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2892
  call void @llvm.dbg.value(metadata i64 %514, metadata !2466, metadata !DIExpression()), !dbg !2526
  %515 = icmp ult i64 %514, %504, !dbg !2893
  br i1 %515, label %516, label %518, !dbg !2896

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2893
  store i8 36, i8* %517, align 1, !dbg !2893, !tbaa !892
  br label %518, !dbg !2893

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2896
  call void @llvm.dbg.value(metadata i64 %519, metadata !2466, metadata !DIExpression()), !dbg !2526
  %520 = icmp ult i64 %519, %504, !dbg !2897
  br i1 %520, label %521, label %523, !dbg !2900

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2897
  store i8 39, i8* %522, align 1, !dbg !2897, !tbaa !892
  br label %523, !dbg !2897

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %524, metadata !2466, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 1, metadata !2473, metadata !DIExpression()), !dbg !2526
  br label %525, !dbg !2901

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !2593
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !2526
  call void @llvm.dbg.value(metadata i8 %527, metadata !2473, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %526, metadata !2466, metadata !DIExpression()), !dbg !2526
  %528 = icmp ult i64 %526, %504, !dbg !2902
  br i1 %528, label %529, label %531, !dbg !2905

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2902
  store i8 92, i8* %530, align 1, !dbg !2902, !tbaa !892
  br label %531, !dbg !2902

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2905
  call void @llvm.dbg.value(metadata i64 %543, metadata !2457, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %542, metadata !2483, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %541, metadata !2482, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %540, metadata !2476, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %539, metadata !2474, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %538, metadata !2473, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %537, metadata !2459, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %536, metadata !2467, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %535, metadata !2466, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %534, metadata !2465, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.label(metadata !2524), !dbg !2906
  br label %560, !dbg !2907

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2882
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !2526
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !2531
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2873
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !2535
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !2536
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2910
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2593
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !2593
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !2457, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %542, metadata !2483, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %541, metadata !2482, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %540, metadata !2476, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %539, metadata !2474, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %538, metadata !2473, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %537, metadata !2459, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %536, metadata !2467, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %535, metadata !2466, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %534, metadata !2465, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.label(metadata !2524), !dbg !2906
  %544 = and i8 %538, 1, !dbg !2907
  %545 = icmp ne i8 %544, 0, !dbg !2907
  %546 = and i8 %541, 1, !dbg !2907
  %547 = icmp eq i8 %546, 0, !dbg !2907
  %548 = and i1 %545, %547, !dbg !2907
  br i1 %548, label %549, label %560, !dbg !2907

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2911
  br i1 %550, label %551, label %553, !dbg !2915

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2911
  store i8 39, i8* %552, align 1, !dbg !2911, !tbaa !892
  br label %553, !dbg !2911

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2915
  call void @llvm.dbg.value(metadata i64 %554, metadata !2466, metadata !DIExpression()), !dbg !2526
  %555 = icmp ult i64 %554, %543, !dbg !2916
  br i1 %555, label %556, label %558, !dbg !2919

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2916
  store i8 39, i8* %557, align 1, !dbg !2916, !tbaa !892
  br label %558, !dbg !2916

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2919
  call void @llvm.dbg.value(metadata i64 %559, metadata !2466, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 0, metadata !2473, metadata !DIExpression()), !dbg !2526
  br label %560, !dbg !2920

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !2593
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !2526
  call void @llvm.dbg.value(metadata i8 %569, metadata !2473, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %568, metadata !2466, metadata !DIExpression()), !dbg !2526
  %570 = icmp ult i64 %568, %561, !dbg !2921
  br i1 %570, label %571, label %573, !dbg !2924

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2921
  store i8 %563, i8* %572, align 1, !dbg !2921, !tbaa !892
  br label %573, !dbg !2921

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2924
  call void @llvm.dbg.value(metadata i64 %574, metadata !2466, metadata !DIExpression()), !dbg !2526
  %575 = icmp eq i8 %562, 0, !dbg !2925
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2927
  call void @llvm.dbg.value(metadata i8 %576, metadata !2475, metadata !DIExpression()), !dbg !2526
  br label %577, !dbg !2928

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2882
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !2526
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !2531
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2873
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !2535
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !2526
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !2537
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !2457, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %584, metadata !2475, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %583, metadata !2474, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %582, metadata !2473, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %581, metadata !2459, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %580, metadata !2467, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %579, metadata !2466, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %578, metadata !2465, metadata !DIExpression()), !dbg !2526
  %586 = add i64 %578, 1, !dbg !2929
  call void @llvm.dbg.value(metadata i64 %586, metadata !2465, metadata !DIExpression()), !dbg !2526
  br label %121, !dbg !2930, !llvm.loop !2931

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2933
  %590 = and i1 %110, %589, !dbg !2935
  %591 = xor i1 %590, true, !dbg !2935
  %592 = or i1 %109, %591, !dbg !2935
  br i1 %592, label %593, label %635, !dbg !2935

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2936
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2936
  br i1 %597, label %598, label %607, !dbg !2936

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2938
  %600 = icmp eq i8 %599, 0, !dbg !2938
  br i1 %600, label %603, label %601, !dbg !2941

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2942
  br label %652, !dbg !2943

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2944
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2946
  br i1 %606, label %26, label %607, !dbg !2946

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2947
  %610 = and i1 %609, %608, !dbg !2949
  br i1 %610, label %611, label %626, !dbg !2949

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !2468, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %123, metadata !2466, metadata !DIExpression()), !dbg !2526
  %612 = load i8, i8* %97, align 1, !dbg !2950, !tbaa !892
  %613 = icmp eq i8 %612, 0, !dbg !2953
  br i1 %613, label %626, label %614, !dbg !2953

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !2468, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %617, metadata !2466, metadata !DIExpression()), !dbg !2526
  %618 = icmp ult i64 %617, %129, !dbg !2954
  br i1 %618, label %619, label %621, !dbg !2957

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2954
  store i8 %615, i8* %620, align 1, !dbg !2954, !tbaa !892
  br label %621, !dbg !2954

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2957
  call void @llvm.dbg.value(metadata i64 %622, metadata !2466, metadata !DIExpression()), !dbg !2526
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2958
  call void @llvm.dbg.value(metadata i8* %623, metadata !2468, metadata !DIExpression()), !dbg !2526
  %624 = load i8, i8* %623, align 1, !dbg !2950, !tbaa !892
  %625 = icmp eq i8 %624, 0, !dbg !2953
  br i1 %625, label %626, label %614, !dbg !2953, !llvm.loop !2959

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !2568
  call void @llvm.dbg.value(metadata i64 %627, metadata !2466, metadata !DIExpression()), !dbg !2526
  %628 = icmp ult i64 %627, %129, !dbg !2961
  br i1 %628, label %629, label %652, !dbg !2963

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2964
  store i8 0, i8* %630, align 1, !dbg !2965, !tbaa !892
  br label %652, !dbg !2964

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2457, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %637, metadata !2459, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.label(metadata !2525), !dbg !2966
  %633 = icmp eq i8 %101, 0, !dbg !2967
  %634 = select i1 %633, i32 2, i32 4, !dbg !2967
  br label %642, !dbg !2967

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !2457, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %637, metadata !2459, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.label(metadata !2525), !dbg !2966
  %639 = icmp eq i32 %93, 2, !dbg !2969
  %640 = icmp eq i8 %636, 0, !dbg !2967
  %641 = select i1 %640, i32 2, i32 4, !dbg !2967
  br i1 %639, label %642, label %646, !dbg !2967

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2967

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !2460, metadata !DIExpression()), !dbg !2526
  %650 = and i32 %5, -3, !dbg !2970
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2971
  br label %652, !dbg !2972

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2973
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2974 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2978, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i32 %1, metadata !2979, metadata !DIExpression()), !dbg !2982
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #29, !dbg !2983
  call void @llvm.dbg.value(metadata i8* %3, metadata !2980, metadata !DIExpression()), !dbg !2982
  %4 = icmp eq i8* %3, %0, !dbg !2984
  br i1 %4, label %5, label %72, !dbg !2986

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #29, !dbg !2987
  call void @llvm.dbg.value(metadata i8* %6, metadata !2981, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8* %6, metadata !2988, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8* undef, metadata !2994, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8 85, metadata !2995, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8 84, metadata !2996, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8 70, metadata !2997, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8 45, metadata !2998, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8 56, metadata !2999, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8 0, metadata !3000, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8 0, metadata !3001, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8 0, metadata !3002, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8 0, metadata !3003, metadata !DIExpression()), !dbg !3004
  %7 = load i8, i8* %6, align 1, !dbg !3007, !tbaa !892
  %8 = and i8 %7, -33, !dbg !3007
  %9 = sext i8 %8 to i32, !dbg !3007
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !3007

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3009, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8* undef, metadata !3014, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8 84, metadata !3015, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8 70, metadata !3016, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8 45, metadata !3017, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8 56, metadata !3018, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8 0, metadata !3019, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8 0, metadata !3020, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8 0, metadata !3021, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8 0, metadata !3022, metadata !DIExpression()), !dbg !3023
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3027
  %12 = load i8, i8* %11, align 1, !dbg !3027, !tbaa !892
  %13 = and i8 %12, -33, !dbg !3027
  %14 = icmp eq i8 %13, 84, !dbg !3027
  br i1 %14, label %15, label %69, !dbg !3027

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !3029, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8* undef, metadata !3034, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 70, metadata !3035, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 45, metadata !3036, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 56, metadata !3037, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 0, metadata !3038, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 0, metadata !3039, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 0, metadata !3040, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 0, metadata !3041, metadata !DIExpression()), !dbg !3042
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3046
  %17 = load i8, i8* %16, align 1, !dbg !3046, !tbaa !892
  %18 = and i8 %17, -33, !dbg !3046
  %19 = icmp eq i8 %18, 70, !dbg !3046
  br i1 %19, label %20, label %69, !dbg !3046

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !3048, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8* undef, metadata !3053, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 45, metadata !3054, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 56, metadata !3055, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 0, metadata !3056, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 0, metadata !3057, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 0, metadata !3058, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8 0, metadata !3059, metadata !DIExpression()), !dbg !3060
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3064
  %22 = load i8, i8* %21, align 1, !dbg !3064, !tbaa !892
  %23 = icmp eq i8 %22, 45, !dbg !3064
  br i1 %23, label %24, label %69, !dbg !3066

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !3067, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8* undef, metadata !3072, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8 56, metadata !3073, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8 0, metadata !3074, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8 0, metadata !3075, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8 0, metadata !3076, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8 0, metadata !3077, metadata !DIExpression()), !dbg !3078
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3082
  %26 = load i8, i8* %25, align 1, !dbg !3082, !tbaa !892
  %27 = icmp eq i8 %26, 56, !dbg !3082
  br i1 %27, label %28, label %69, !dbg !3084

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !3085, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8* undef, metadata !3090, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8 0, metadata !3091, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8 0, metadata !3092, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8 0, metadata !3093, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8 0, metadata !3094, metadata !DIExpression()), !dbg !3095
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3099
  %30 = load i8, i8* %29, align 1, !dbg !3099, !tbaa !892
  %31 = icmp eq i8 %30, 0, !dbg !3099
  br i1 %31, label %32, label %69, !dbg !3101

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !3102, !tbaa !892
  %34 = icmp eq i8 %33, 96, !dbg !3103
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.108, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.109, i64 0, i64 0), !dbg !3102
  br label %72, !dbg !3104

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3009, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i8* undef, metadata !3014, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i8 66, metadata !3015, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i8 49, metadata !3016, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i8 56, metadata !3017, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i8 48, metadata !3018, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i8 51, metadata !3019, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i8 48, metadata !3020, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i8 0, metadata !3021, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i8 0, metadata !3022, metadata !DIExpression()), !dbg !3105
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3109
  %38 = load i8, i8* %37, align 1, !dbg !3109, !tbaa !892
  %39 = and i8 %38, -33, !dbg !3109
  %40 = icmp eq i8 %39, 66, !dbg !3109
  br i1 %40, label %41, label %69, !dbg !3109

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !3029, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8* undef, metadata !3034, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8 49, metadata !3035, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8 56, metadata !3036, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8 48, metadata !3037, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8 51, metadata !3038, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8 48, metadata !3039, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8 0, metadata !3040, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8 0, metadata !3041, metadata !DIExpression()), !dbg !3110
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3112
  %43 = load i8, i8* %42, align 1, !dbg !3112, !tbaa !892
  %44 = icmp eq i8 %43, 49, !dbg !3112
  br i1 %44, label %45, label %69, !dbg !3113

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !3048, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8* undef, metadata !3053, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8 56, metadata !3054, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8 48, metadata !3055, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8 51, metadata !3056, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8 48, metadata !3057, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8 0, metadata !3058, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8 0, metadata !3059, metadata !DIExpression()), !dbg !3114
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3116
  %47 = load i8, i8* %46, align 1, !dbg !3116, !tbaa !892
  %48 = icmp eq i8 %47, 56, !dbg !3116
  br i1 %48, label %49, label %69, !dbg !3117

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !3067, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i8* undef, metadata !3072, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i8 48, metadata !3073, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i8 51, metadata !3074, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i8 48, metadata !3075, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i8 0, metadata !3076, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i8 0, metadata !3077, metadata !DIExpression()), !dbg !3118
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3120
  %51 = load i8, i8* %50, align 1, !dbg !3120, !tbaa !892
  %52 = icmp eq i8 %51, 48, !dbg !3120
  br i1 %52, label %53, label %69, !dbg !3121

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !3085, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8* undef, metadata !3090, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 51, metadata !3091, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 48, metadata !3092, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 0, metadata !3093, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 0, metadata !3094, metadata !DIExpression()), !dbg !3122
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3124
  %55 = load i8, i8* %54, align 1, !dbg !3124, !tbaa !892
  %56 = icmp eq i8 %55, 51, !dbg !3124
  br i1 %56, label %57, label %69, !dbg !3125

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !3126, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i8* undef, metadata !3131, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i8 48, metadata !3132, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i8 0, metadata !3133, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i8 0, metadata !3134, metadata !DIExpression()), !dbg !3135
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3139
  %59 = load i8, i8* %58, align 1, !dbg !3139, !tbaa !892
  %60 = icmp eq i8 %59, 48, !dbg !3139
  br i1 %60, label %61, label %69, !dbg !3141

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !3142, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i8* undef, metadata !3147, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i8 0, metadata !3148, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i8 0, metadata !3149, metadata !DIExpression()), !dbg !3150
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3154
  %63 = load i8, i8* %62, align 1, !dbg !3154, !tbaa !892
  %64 = icmp eq i8 %63, 0, !dbg !3154
  br i1 %64, label %65, label %69, !dbg !3156

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !3157, !tbaa !892
  %67 = icmp eq i8 %66, 96, !dbg !3158
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.110, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.111, i64 0, i64 0), !dbg !3157
  br label %72, !dbg !3159

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !3160
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), !dbg !3161
  br label %72, !dbg !3162

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2982
  ret i8* %73, !dbg !3163
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind
declare !dbg !3164 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !3168 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3174 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3178, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i64 %1, metadata !3179, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3180, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8* %0, metadata !3182, metadata !DIExpression()) #29, !dbg !3195
  call void @llvm.dbg.value(metadata i64 %1, metadata !3187, metadata !DIExpression()) #29, !dbg !3195
  call void @llvm.dbg.value(metadata i64* null, metadata !3188, metadata !DIExpression()) #29, !dbg !3195
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3189, metadata !DIExpression()) #29, !dbg !3195
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3197
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3197
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3190, metadata !DIExpression()) #29, !dbg !3195
  %6 = tail call i32* @__errno_location() #33, !dbg !3198
  %7 = load i32, i32* %6, align 4, !dbg !3198, !tbaa !989
  call void @llvm.dbg.value(metadata i32 %7, metadata !3191, metadata !DIExpression()) #29, !dbg !3195
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3199
  %9 = load i32, i32* %8, align 4, !dbg !3199, !tbaa !2400
  %10 = or i32 %9, 1, !dbg !3200
  call void @llvm.dbg.value(metadata i32 %10, metadata !3192, metadata !DIExpression()) #29, !dbg !3195
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3201
  %12 = load i32, i32* %11, align 8, !dbg !3201, !tbaa !2349
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3202
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3203
  %15 = load i8*, i8** %14, align 8, !dbg !3203, !tbaa !2422
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3204
  %17 = load i8*, i8** %16, align 8, !dbg !3204, !tbaa !2425
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #29, !dbg !3205
  %19 = add i64 %18, 1, !dbg !3206
  call void @llvm.dbg.value(metadata i64 %19, metadata !3193, metadata !DIExpression()) #29, !dbg !3195
  call void @llvm.dbg.value(metadata i64 %19, metadata !3207, metadata !DIExpression()) #29, !dbg !3212
  %20 = tail call noalias i8* @xmalloc(i64 %19) #29, !dbg !3214
  call void @llvm.dbg.value(metadata i8* %20, metadata !3194, metadata !DIExpression()) #29, !dbg !3195
  %21 = load i32, i32* %11, align 8, !dbg !3215, !tbaa !2349
  %22 = load i8*, i8** %14, align 8, !dbg !3216, !tbaa !2422
  %23 = load i8*, i8** %16, align 8, !dbg !3217, !tbaa !2425
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #29, !dbg !3218
  store i32 %7, i32* %6, align 4, !dbg !3219, !tbaa !989
  ret i8* %20, !dbg !3220
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3183 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3182, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i64 %1, metadata !3187, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i64* %2, metadata !3188, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3189, metadata !DIExpression()), !dbg !3221
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3222
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3222
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3190, metadata !DIExpression()), !dbg !3221
  %7 = tail call i32* @__errno_location() #33, !dbg !3223
  %8 = load i32, i32* %7, align 4, !dbg !3223, !tbaa !989
  call void @llvm.dbg.value(metadata i32 %8, metadata !3191, metadata !DIExpression()), !dbg !3221
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3224
  %10 = load i32, i32* %9, align 4, !dbg !3224, !tbaa !2400
  %11 = icmp eq i64* %2, null, !dbg !3225
  %12 = zext i1 %11 to i32, !dbg !3225
  %13 = or i32 %10, %12, !dbg !3226
  call void @llvm.dbg.value(metadata i32 %13, metadata !3192, metadata !DIExpression()), !dbg !3221
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3227
  %15 = load i32, i32* %14, align 8, !dbg !3227, !tbaa !2349
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3228
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3229
  %18 = load i8*, i8** %17, align 8, !dbg !3229, !tbaa !2422
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3230
  %20 = load i8*, i8** %19, align 8, !dbg !3230, !tbaa !2425
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !3231
  %22 = add i64 %21, 1, !dbg !3232
  call void @llvm.dbg.value(metadata i64 %22, metadata !3193, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i64 %22, metadata !3207, metadata !DIExpression()) #29, !dbg !3233
  %23 = tail call noalias i8* @xmalloc(i64 %22) #29, !dbg !3235
  call void @llvm.dbg.value(metadata i8* %23, metadata !3194, metadata !DIExpression()), !dbg !3221
  %24 = load i32, i32* %14, align 8, !dbg !3236, !tbaa !2349
  %25 = load i8*, i8** %17, align 8, !dbg !3237, !tbaa !2422
  %26 = load i8*, i8** %19, align 8, !dbg !3238, !tbaa !2425
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !3239
  store i32 %8, i32* %7, align 4, !dbg !3240, !tbaa !989
  br i1 %11, label %29, label %28, !dbg !3241

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3242, !tbaa !937
  br label %29, !dbg !3244

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3245
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3246 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3250, !tbaa !744
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3248, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i32 1, metadata !3249, metadata !DIExpression()), !dbg !3251
  %2 = load i32, i32* @nslots, align 4, !dbg !3252, !tbaa !989
  %3 = icmp sgt i32 %2, 1, !dbg !3255
  br i1 %3, label %4, label %12, !dbg !3256

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3255
  br label %6, !dbg !3256

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !3249, metadata !DIExpression()), !dbg !3251
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !3257
  %9 = load i8*, i8** %8, align 8, !dbg !3257, !tbaa !3258
  tail call void @free(i8* %9) #29, !dbg !3260
  %10 = add nuw nsw i64 %7, 1, !dbg !3261
  call void @llvm.dbg.value(metadata i64 %10, metadata !3249, metadata !DIExpression()), !dbg !3251
  %11 = icmp eq i64 %10, %5, !dbg !3255
  br i1 %11, label %12, label %6, !dbg !3256, !llvm.loop !3262

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3264
  %14 = load i8*, i8** %13, align 8, !dbg !3264, !tbaa !3258
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3266
  br i1 %15, label %17, label %16, !dbg !3267

16:                                               ; preds = %12
  tail call void @free(i8* %14) #29, !dbg !3268
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3270, !tbaa !3271
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3272, !tbaa !3258
  br label %17, !dbg !3273

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3274
  br i1 %18, label %21, label %19, !dbg !3276

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3277
  tail call void @free(i8* %20) #29, !dbg !3279
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3280, !tbaa !744
  br label %21, !dbg !3281

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3282, !tbaa !989
  ret void, !dbg !3283
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3284 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3286, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8* %1, metadata !3287, metadata !DIExpression()), !dbg !3288
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3289
  ret i8* %3, !dbg !3290
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3291 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3295, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i8* %1, metadata !3296, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %2, metadata !3297, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3298, metadata !DIExpression()), !dbg !3310
  %5 = tail call i32* @__errno_location() #33, !dbg !3311
  %6 = load i32, i32* %5, align 4, !dbg !3311, !tbaa !989
  call void @llvm.dbg.value(metadata i32 %6, metadata !3299, metadata !DIExpression()), !dbg !3310
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3312, !tbaa !744
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3300, metadata !DIExpression()), !dbg !3310
  %8 = icmp slt i32 %0, 0, !dbg !3313
  br i1 %8, label %9, label %10, !dbg !3315

9:                                                ; preds = %4
  tail call void @abort() #31, !dbg !3316
  unreachable, !dbg !3316

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3317, !tbaa !989
  %12 = icmp sgt i32 %11, %0, !dbg !3318
  br i1 %12, label %34, label %13, !dbg !3319

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3320
  call void @llvm.dbg.value(metadata i1 %14, metadata !3301, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3321
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3304, metadata !DIExpression()), !dbg !3321
  %15 = icmp eq i32 %0, 2147483647, !dbg !3322
  br i1 %15, label %16, label %17, !dbg !3324

16:                                               ; preds = %13
  tail call void @xalloc_die() #31, !dbg !3325
  unreachable, !dbg !3325

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3326
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3326
  %20 = add nuw nsw i32 %0, 1, !dbg !3327
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !3328
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #29, !dbg !3329
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3329
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3300, metadata !DIExpression()), !dbg !3310
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3330, !tbaa !744
  br i1 %14, label %25, label %26, !dbg !3331

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3332, !tbaa.struct !3334
  br label %26, !dbg !3335

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3336, !tbaa !989
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3337
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3338
  %31 = sub nsw i32 %20, %27, !dbg !3339
  %32 = sext i32 %31 to i64, !dbg !3340
  %33 = shl nsw i64 %32, 4, !dbg !3341
  call void @llvm.dbg.value(metadata i8* %30, metadata !2735, metadata !DIExpression()) #29, !dbg !3342
  call void @llvm.dbg.value(metadata i32 0, metadata !2740, metadata !DIExpression()) #29, !dbg !3342
  call void @llvm.dbg.value(metadata i64 %33, metadata !2741, metadata !DIExpression()) #29, !dbg !3342
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #29, !dbg !3344
  store i32 %20, i32* @nslots, align 4, !dbg !3345, !tbaa !989
  br label %34, !dbg !3346

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3310
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3300, metadata !DIExpression()), !dbg !3310
  %36 = zext i32 %0 to i64, !dbg !3347
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3348
  %38 = load i64, i64* %37, align 8, !dbg !3348, !tbaa !3271
  call void @llvm.dbg.value(metadata i64 %38, metadata !3305, metadata !DIExpression()), !dbg !3349
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3350
  %40 = load i8*, i8** %39, align 8, !dbg !3350, !tbaa !3258
  call void @llvm.dbg.value(metadata i8* %40, metadata !3307, metadata !DIExpression()), !dbg !3349
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3351
  %42 = load i32, i32* %41, align 4, !dbg !3351, !tbaa !2400
  %43 = or i32 %42, 1, !dbg !3352
  call void @llvm.dbg.value(metadata i32 %43, metadata !3308, metadata !DIExpression()), !dbg !3349
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3353
  %45 = load i32, i32* %44, align 8, !dbg !3353, !tbaa !2349
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3354
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3355
  %48 = load i8*, i8** %47, align 8, !dbg !3355, !tbaa !2422
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3356
  %50 = load i8*, i8** %49, align 8, !dbg !3356, !tbaa !2425
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3357
  call void @llvm.dbg.value(metadata i64 %51, metadata !3309, metadata !DIExpression()), !dbg !3349
  %52 = icmp ugt i64 %38, %51, !dbg !3358
  br i1 %52, label %63, label %53, !dbg !3360

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3361
  call void @llvm.dbg.value(metadata i64 %54, metadata !3305, metadata !DIExpression()), !dbg !3349
  store i64 %54, i64* %37, align 8, !dbg !3363, !tbaa !3271
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3364
  br i1 %55, label %57, label %56, !dbg !3366

56:                                               ; preds = %53
  tail call void @free(i8* %40) #29, !dbg !3367
  br label %57, !dbg !3367

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !3207, metadata !DIExpression()) #29, !dbg !3368
  %58 = tail call noalias i8* @xmalloc(i64 %54) #29, !dbg !3370
  call void @llvm.dbg.value(metadata i8* %58, metadata !3307, metadata !DIExpression()), !dbg !3349
  store i8* %58, i8** %39, align 8, !dbg !3371, !tbaa !3258
  %59 = load i32, i32* %44, align 8, !dbg !3372, !tbaa !2349
  %60 = load i8*, i8** %47, align 8, !dbg !3373, !tbaa !2422
  %61 = load i8*, i8** %49, align 8, !dbg !3374, !tbaa !2425
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3375
  br label %63, !dbg !3376

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3349
  call void @llvm.dbg.value(metadata i8* %64, metadata !3307, metadata !DIExpression()), !dbg !3349
  store i32 %6, i32* %5, align 4, !dbg !3377, !tbaa !989
  ret i8* %64, !dbg !3378
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3379 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3383, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8* %1, metadata !3384, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i64 %2, metadata !3385, metadata !DIExpression()), !dbg !3386
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3387
  ret i8* %4, !dbg !3388
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3389 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3391, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i32 0, metadata !3286, metadata !DIExpression()) #29, !dbg !3393
  call void @llvm.dbg.value(metadata i8* %0, metadata !3287, metadata !DIExpression()) #29, !dbg !3393
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #29, !dbg !3395
  ret i8* %2, !dbg !3396
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3397 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3401, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i64 %1, metadata !3402, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 0, metadata !3383, metadata !DIExpression()) #29, !dbg !3404
  call void @llvm.dbg.value(metadata i8* %0, metadata !3384, metadata !DIExpression()) #29, !dbg !3404
  call void @llvm.dbg.value(metadata i64 %1, metadata !3385, metadata !DIExpression()) #29, !dbg !3404
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #29, !dbg !3406
  ret i8* %3, !dbg !3407
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3408 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3412, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i32 %1, metadata !3413, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i8* %2, metadata !3414, metadata !DIExpression()), !dbg !3416
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3417
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3417
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3415, metadata !DIExpression()), !dbg !3418
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3419), !dbg !3422
  call void @llvm.dbg.value(metadata i32 %1, metadata !3423, metadata !DIExpression()) #29, !dbg !3429
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3428, metadata !DIExpression()) #29, !dbg !3431
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #29, !dbg !3431, !alias.scope !3419
  %6 = icmp eq i32 %1, 10, !dbg !3432
  br i1 %6, label %7, label %8, !dbg !3434

7:                                                ; preds = %3
  tail call void @abort() #31, !dbg !3435, !noalias !3419
  unreachable, !dbg !3435

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3436
  store i32 %1, i32* %9, align 8, !dbg !3437, !tbaa !2349, !alias.scope !3419
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3438
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3439
  ret i8* %10, !dbg !3440
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3441 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3445, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i32 %1, metadata !3446, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i8* %2, metadata !3447, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i64 %3, metadata !3448, metadata !DIExpression()), !dbg !3450
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3451
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3451
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3449, metadata !DIExpression()), !dbg !3452
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3453), !dbg !3456
  call void @llvm.dbg.value(metadata i32 %1, metadata !3423, metadata !DIExpression()) #29, !dbg !3457
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3428, metadata !DIExpression()) #29, !dbg !3459
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #29, !dbg !3459, !alias.scope !3453
  %7 = icmp eq i32 %1, 10, !dbg !3460
  br i1 %7, label %8, label %9, !dbg !3461

8:                                                ; preds = %4
  tail call void @abort() #31, !dbg !3462, !noalias !3453
  unreachable, !dbg !3462

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3463
  store i32 %1, i32* %10, align 8, !dbg !3464, !tbaa !2349, !alias.scope !3453
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3465
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3466
  ret i8* %11, !dbg !3467
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3468 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3472, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i8* %1, metadata !3473, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 0, metadata !3412, metadata !DIExpression()) #29, !dbg !3475
  call void @llvm.dbg.value(metadata i32 %0, metadata !3413, metadata !DIExpression()) #29, !dbg !3475
  call void @llvm.dbg.value(metadata i8* %1, metadata !3414, metadata !DIExpression()) #29, !dbg !3475
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3477
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #29, !dbg !3477
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3415, metadata !DIExpression()) #29, !dbg !3478
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3479) #29, !dbg !3482
  call void @llvm.dbg.value(metadata i32 %0, metadata !3423, metadata !DIExpression()) #29, !dbg !3483
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3428, metadata !DIExpression()) #29, !dbg !3485
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #29, !dbg !3485, !alias.scope !3479
  %5 = icmp eq i32 %0, 10, !dbg !3486
  br i1 %5, label %6, label %7, !dbg !3487

6:                                                ; preds = %2
  tail call void @abort() #31, !dbg !3488, !noalias !3479
  unreachable, !dbg !3488

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3489
  store i32 %0, i32* %8, align 8, !dbg !3490, !tbaa !2349, !alias.scope !3479
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #29, !dbg !3491
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #29, !dbg !3492
  ret i8* %9, !dbg !3493
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3494 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3498, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i8* %1, metadata !3499, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %2, metadata !3500, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i32 0, metadata !3445, metadata !DIExpression()) #29, !dbg !3502
  call void @llvm.dbg.value(metadata i32 %0, metadata !3446, metadata !DIExpression()) #29, !dbg !3502
  call void @llvm.dbg.value(metadata i8* %1, metadata !3447, metadata !DIExpression()) #29, !dbg !3502
  call void @llvm.dbg.value(metadata i64 %2, metadata !3448, metadata !DIExpression()) #29, !dbg !3502
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3504
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3504
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3449, metadata !DIExpression()) #29, !dbg !3505
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3506) #29, !dbg !3509
  call void @llvm.dbg.value(metadata i32 %0, metadata !3423, metadata !DIExpression()) #29, !dbg !3510
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3428, metadata !DIExpression()) #29, !dbg !3512
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #29, !dbg !3512, !alias.scope !3506
  %6 = icmp eq i32 %0, 10, !dbg !3513
  br i1 %6, label %7, label %8, !dbg !3514

7:                                                ; preds = %3
  tail call void @abort() #31, !dbg !3515, !noalias !3506
  unreachable, !dbg !3515

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3516
  store i32 %0, i32* %9, align 8, !dbg !3517, !tbaa !2349, !alias.scope !3506
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #29, !dbg !3518
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3519
  ret i8* %10, !dbg !3520
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3521 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3525, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i64 %1, metadata !3526, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i8 %2, metadata !3527, metadata !DIExpression()), !dbg !3529
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3530
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3530
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3528, metadata !DIExpression()), !dbg !3531
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3532, !tbaa.struct !3533
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2367, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8 %2, metadata !2368, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i32 1, metadata !2369, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8 %2, metadata !2370, metadata !DIExpression()), !dbg !3534
  %6 = lshr i8 %2, 5, !dbg !3536
  %7 = zext i8 %6 to i64, !dbg !3536
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3537
  call void @llvm.dbg.value(metadata i32* %8, metadata !2371, metadata !DIExpression()), !dbg !3534
  %9 = and i8 %2, 31, !dbg !3538
  %10 = zext i8 %9 to i32, !dbg !3538
  call void @llvm.dbg.value(metadata i32 %10, metadata !2373, metadata !DIExpression()), !dbg !3534
  %11 = load i32, i32* %8, align 4, !dbg !3539, !tbaa !989
  %12 = lshr i32 %11, %10, !dbg !3540
  %13 = and i32 %12, 1, !dbg !3541
  call void @llvm.dbg.value(metadata i32 %13, metadata !2374, metadata !DIExpression()), !dbg !3534
  %14 = xor i32 %13, 1, !dbg !3542
  %15 = shl i32 %14, %10, !dbg !3543
  %16 = xor i32 %15, %11, !dbg !3544
  store i32 %16, i32* %8, align 4, !dbg !3544, !tbaa !989
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3545
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3546
  ret i8* %17, !dbg !3547
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3548 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3552, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i8 %1, metadata !3553, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i8* %0, metadata !3525, metadata !DIExpression()) #29, !dbg !3555
  call void @llvm.dbg.value(metadata i64 -1, metadata !3526, metadata !DIExpression()) #29, !dbg !3555
  call void @llvm.dbg.value(metadata i8 %1, metadata !3527, metadata !DIExpression()) #29, !dbg !3555
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3557
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #29, !dbg !3557
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3528, metadata !DIExpression()) #29, !dbg !3558
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #29, !dbg !3559, !tbaa.struct !3533
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2367, metadata !DIExpression()) #29, !dbg !3560
  call void @llvm.dbg.value(metadata i8 %1, metadata !2368, metadata !DIExpression()) #29, !dbg !3560
  call void @llvm.dbg.value(metadata i32 1, metadata !2369, metadata !DIExpression()) #29, !dbg !3560
  call void @llvm.dbg.value(metadata i8 %1, metadata !2370, metadata !DIExpression()) #29, !dbg !3560
  %5 = lshr i8 %1, 5, !dbg !3562
  %6 = zext i8 %5 to i64, !dbg !3562
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3563
  call void @llvm.dbg.value(metadata i32* %7, metadata !2371, metadata !DIExpression()) #29, !dbg !3560
  %8 = and i8 %1, 31, !dbg !3564
  %9 = zext i8 %8 to i32, !dbg !3564
  call void @llvm.dbg.value(metadata i32 %9, metadata !2373, metadata !DIExpression()) #29, !dbg !3560
  %10 = load i32, i32* %7, align 4, !dbg !3565, !tbaa !989
  %11 = lshr i32 %10, %9, !dbg !3566
  %12 = and i32 %11, 1, !dbg !3567
  call void @llvm.dbg.value(metadata i32 %12, metadata !2374, metadata !DIExpression()) #29, !dbg !3560
  %13 = xor i32 %12, 1, !dbg !3568
  %14 = shl i32 %13, %9, !dbg !3569
  %15 = xor i32 %14, %10, !dbg !3570
  store i32 %15, i32* %7, align 4, !dbg !3570, !tbaa !989
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #29, !dbg !3571
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #29, !dbg !3572
  ret i8* %16, !dbg !3573
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3574 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3576, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i8* %0, metadata !3552, metadata !DIExpression()) #29, !dbg !3578
  call void @llvm.dbg.value(metadata i8 58, metadata !3553, metadata !DIExpression()) #29, !dbg !3578
  call void @llvm.dbg.value(metadata i8* %0, metadata !3525, metadata !DIExpression()) #29, !dbg !3580
  call void @llvm.dbg.value(metadata i64 -1, metadata !3526, metadata !DIExpression()) #29, !dbg !3580
  call void @llvm.dbg.value(metadata i8 58, metadata !3527, metadata !DIExpression()) #29, !dbg !3580
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3582
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #29, !dbg !3582
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3528, metadata !DIExpression()) #29, !dbg !3583
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #29, !dbg !3584, !tbaa.struct !3533
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2367, metadata !DIExpression()) #29, !dbg !3585
  call void @llvm.dbg.value(metadata i8 58, metadata !2368, metadata !DIExpression()) #29, !dbg !3585
  call void @llvm.dbg.value(metadata i32 1, metadata !2369, metadata !DIExpression()) #29, !dbg !3585
  call void @llvm.dbg.value(metadata i8 58, metadata !2370, metadata !DIExpression()) #29, !dbg !3585
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3587
  call void @llvm.dbg.value(metadata i32* %4, metadata !2371, metadata !DIExpression()) #29, !dbg !3585
  call void @llvm.dbg.value(metadata i32 26, metadata !2373, metadata !DIExpression()) #29, !dbg !3585
  %5 = load i32, i32* %4, align 4, !dbg !3588, !tbaa !989
  call void @llvm.dbg.value(metadata i32 %5, metadata !2374, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #29, !dbg !3585
  %6 = or i32 %5, 67108864, !dbg !3589
  store i32 %6, i32* %4, align 4, !dbg !3589, !tbaa !989
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #29, !dbg !3590
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #29, !dbg !3591
  ret i8* %7, !dbg !3592
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3593 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3595, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 %1, metadata !3596, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i8* %0, metadata !3525, metadata !DIExpression()) #29, !dbg !3598
  call void @llvm.dbg.value(metadata i64 %1, metadata !3526, metadata !DIExpression()) #29, !dbg !3598
  call void @llvm.dbg.value(metadata i8 58, metadata !3527, metadata !DIExpression()) #29, !dbg !3598
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3600
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #29, !dbg !3600
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3528, metadata !DIExpression()) #29, !dbg !3601
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #29, !dbg !3602, !tbaa.struct !3533
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2367, metadata !DIExpression()) #29, !dbg !3603
  call void @llvm.dbg.value(metadata i8 58, metadata !2368, metadata !DIExpression()) #29, !dbg !3603
  call void @llvm.dbg.value(metadata i32 1, metadata !2369, metadata !DIExpression()) #29, !dbg !3603
  call void @llvm.dbg.value(metadata i8 58, metadata !2370, metadata !DIExpression()) #29, !dbg !3603
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3605
  call void @llvm.dbg.value(metadata i32* %5, metadata !2371, metadata !DIExpression()) #29, !dbg !3603
  call void @llvm.dbg.value(metadata i32 26, metadata !2373, metadata !DIExpression()) #29, !dbg !3603
  %6 = load i32, i32* %5, align 4, !dbg !3606, !tbaa !989
  call void @llvm.dbg.value(metadata i32 %6, metadata !2374, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #29, !dbg !3603
  %7 = or i32 %6, 67108864, !dbg !3607
  store i32 %7, i32* %5, align 4, !dbg !3607, !tbaa !989
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #29, !dbg !3608
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #29, !dbg !3609
  ret i8* %8, !dbg !3610
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3611 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3428, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3617
  call void @llvm.dbg.value(metadata i32 %0, metadata !3613, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i32 %1, metadata !3614, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i8* %2, metadata !3615, metadata !DIExpression()), !dbg !3619
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3620
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3620
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3616, metadata !DIExpression()), !dbg !3621
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3622
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3622
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3623), !dbg !3622
  call void @llvm.dbg.value(metadata i32 %1, metadata !3423, metadata !DIExpression()) #29, !dbg !3626
  call void @llvm.dbg.value(metadata i32 0, metadata !3428, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3626
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3617, !alias.scope !3623
  %8 = icmp eq i32 %1, 10, !dbg !3627
  br i1 %8, label %9, label %10, !dbg !3628

9:                                                ; preds = %3
  tail call void @abort() #31, !dbg !3629, !noalias !3623
  unreachable, !dbg !3629

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3428, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3626
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3622
  store i32 %1, i32* %11, align 8, !dbg !3622, !tbaa.struct !3533
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3622
  %13 = bitcast i32* %12 to i8*, !dbg !3622
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3622, !tbaa.struct !3630
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3622
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2367, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i8 58, metadata !2368, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i32 1, metadata !2369, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i8 58, metadata !2370, metadata !DIExpression()), !dbg !3631
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3633
  call void @llvm.dbg.value(metadata i32* %14, metadata !2371, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i32 26, metadata !2373, metadata !DIExpression()), !dbg !3631
  %15 = load i32, i32* %14, align 4, !dbg !3634, !tbaa !989
  call void @llvm.dbg.value(metadata i32 %15, metadata !2374, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3631
  %16 = or i32 %15, 67108864, !dbg !3635
  store i32 %16, i32* %14, align 4, !dbg !3635, !tbaa !989
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3636
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3637
  ret i8* %17, !dbg !3638
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3639 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3643, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i8* %1, metadata !3644, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i8* %2, metadata !3645, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i8* %3, metadata !3646, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i32 %0, metadata !3648, metadata !DIExpression()) #29, !dbg !3658
  call void @llvm.dbg.value(metadata i8* %1, metadata !3653, metadata !DIExpression()) #29, !dbg !3658
  call void @llvm.dbg.value(metadata i8* %2, metadata !3654, metadata !DIExpression()) #29, !dbg !3658
  call void @llvm.dbg.value(metadata i8* %3, metadata !3655, metadata !DIExpression()) #29, !dbg !3658
  call void @llvm.dbg.value(metadata i64 -1, metadata !3656, metadata !DIExpression()) #29, !dbg !3658
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3660
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3660
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3657, metadata !DIExpression()) #29, !dbg !3661
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #29, !dbg !3662, !tbaa.struct !3533
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2407, metadata !DIExpression()) #29, !dbg !3663
  call void @llvm.dbg.value(metadata i8* %1, metadata !2408, metadata !DIExpression()) #29, !dbg !3663
  call void @llvm.dbg.value(metadata i8* %2, metadata !2409, metadata !DIExpression()) #29, !dbg !3663
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2407, metadata !DIExpression()) #29, !dbg !3663
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3665
  store i32 10, i32* %7, align 8, !dbg !3666, !tbaa !2349
  %8 = icmp ne i8* %1, null, !dbg !3667
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3668
  br i1 %10, label %12, label %11, !dbg !3668

11:                                               ; preds = %4
  tail call void @abort() #31, !dbg !3669
  unreachable, !dbg !3669

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3670
  store i8* %1, i8** %13, align 8, !dbg !3671, !tbaa !2422
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3672
  store i8* %2, i8** %14, align 8, !dbg !3673, !tbaa !2425
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #29, !dbg !3674
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3675
  ret i8* %15, !dbg !3676
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3649 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3648, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i8* %1, metadata !3653, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i8* %2, metadata !3654, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i8* %3, metadata !3655, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i64 %4, metadata !3656, metadata !DIExpression()), !dbg !3677
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3678
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #29, !dbg !3678
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3657, metadata !DIExpression()), !dbg !3679
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3680, !tbaa.struct !3533
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2407, metadata !DIExpression()) #29, !dbg !3681
  call void @llvm.dbg.value(metadata i8* %1, metadata !2408, metadata !DIExpression()) #29, !dbg !3681
  call void @llvm.dbg.value(metadata i8* %2, metadata !2409, metadata !DIExpression()) #29, !dbg !3681
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2407, metadata !DIExpression()) #29, !dbg !3681
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3683
  store i32 10, i32* %8, align 8, !dbg !3684, !tbaa !2349
  %9 = icmp ne i8* %1, null, !dbg !3685
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3686
  br i1 %11, label %13, label %12, !dbg !3686

12:                                               ; preds = %5
  tail call void @abort() #31, !dbg !3687
  unreachable, !dbg !3687

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3688
  store i8* %1, i8** %14, align 8, !dbg !3689, !tbaa !2422
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3690
  store i8* %2, i8** %15, align 8, !dbg !3691, !tbaa !2425
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3692
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #29, !dbg !3693
  ret i8* %16, !dbg !3694
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3695 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3699, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i8* %1, metadata !3700, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i8* %2, metadata !3701, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i32 0, metadata !3643, metadata !DIExpression()) #29, !dbg !3703
  call void @llvm.dbg.value(metadata i8* %0, metadata !3644, metadata !DIExpression()) #29, !dbg !3703
  call void @llvm.dbg.value(metadata i8* %1, metadata !3645, metadata !DIExpression()) #29, !dbg !3703
  call void @llvm.dbg.value(metadata i8* %2, metadata !3646, metadata !DIExpression()) #29, !dbg !3703
  call void @llvm.dbg.value(metadata i32 0, metadata !3648, metadata !DIExpression()) #29, !dbg !3705
  call void @llvm.dbg.value(metadata i8* %0, metadata !3653, metadata !DIExpression()) #29, !dbg !3705
  call void @llvm.dbg.value(metadata i8* %1, metadata !3654, metadata !DIExpression()) #29, !dbg !3705
  call void @llvm.dbg.value(metadata i8* %2, metadata !3655, metadata !DIExpression()) #29, !dbg !3705
  call void @llvm.dbg.value(metadata i64 -1, metadata !3656, metadata !DIExpression()) #29, !dbg !3705
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3707
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3707
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3657, metadata !DIExpression()) #29, !dbg !3708
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #29, !dbg !3709, !tbaa.struct !3533
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2407, metadata !DIExpression()) #29, !dbg !3710
  call void @llvm.dbg.value(metadata i8* %0, metadata !2408, metadata !DIExpression()) #29, !dbg !3710
  call void @llvm.dbg.value(metadata i8* %1, metadata !2409, metadata !DIExpression()) #29, !dbg !3710
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2407, metadata !DIExpression()) #29, !dbg !3710
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3712
  store i32 10, i32* %6, align 8, !dbg !3713, !tbaa !2349
  %7 = icmp ne i8* %0, null, !dbg !3714
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3715
  br i1 %9, label %11, label %10, !dbg !3715

10:                                               ; preds = %3
  tail call void @abort() #31, !dbg !3716
  unreachable, !dbg !3716

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3717
  store i8* %0, i8** %12, align 8, !dbg !3718, !tbaa !2422
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3719
  store i8* %1, i8** %13, align 8, !dbg !3720, !tbaa !2425
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #29, !dbg !3721
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #29, !dbg !3722
  ret i8* %14, !dbg !3723
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3724 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3728, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i8* %1, metadata !3729, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i8* %2, metadata !3730, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i64 %3, metadata !3731, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i32 0, metadata !3648, metadata !DIExpression()) #29, !dbg !3733
  call void @llvm.dbg.value(metadata i8* %0, metadata !3653, metadata !DIExpression()) #29, !dbg !3733
  call void @llvm.dbg.value(metadata i8* %1, metadata !3654, metadata !DIExpression()) #29, !dbg !3733
  call void @llvm.dbg.value(metadata i8* %2, metadata !3655, metadata !DIExpression()) #29, !dbg !3733
  call void @llvm.dbg.value(metadata i64 %3, metadata !3656, metadata !DIExpression()) #29, !dbg !3733
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3735
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3735
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3657, metadata !DIExpression()) #29, !dbg !3736
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #29, !dbg !3737, !tbaa.struct !3533
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2407, metadata !DIExpression()) #29, !dbg !3738
  call void @llvm.dbg.value(metadata i8* %0, metadata !2408, metadata !DIExpression()) #29, !dbg !3738
  call void @llvm.dbg.value(metadata i8* %1, metadata !2409, metadata !DIExpression()) #29, !dbg !3738
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2407, metadata !DIExpression()) #29, !dbg !3738
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3740
  store i32 10, i32* %7, align 8, !dbg !3741, !tbaa !2349
  %8 = icmp ne i8* %0, null, !dbg !3742
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3743
  br i1 %10, label %12, label %11, !dbg !3743

11:                                               ; preds = %4
  tail call void @abort() #31, !dbg !3744
  unreachable, !dbg !3744

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3745
  store i8* %0, i8** %13, align 8, !dbg !3746, !tbaa !2422
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3747
  store i8* %1, i8** %14, align 8, !dbg !3748, !tbaa !2425
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #29, !dbg !3749
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #29, !dbg !3750
  ret i8* %15, !dbg !3751
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3752 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3756, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i8* %1, metadata !3757, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i64 %2, metadata !3758, metadata !DIExpression()), !dbg !3759
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3760
  ret i8* %4, !dbg !3761
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3762 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3766, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i64 %1, metadata !3767, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i32 0, metadata !3756, metadata !DIExpression()) #29, !dbg !3769
  call void @llvm.dbg.value(metadata i8* %0, metadata !3757, metadata !DIExpression()) #29, !dbg !3769
  call void @llvm.dbg.value(metadata i64 %1, metadata !3758, metadata !DIExpression()) #29, !dbg !3769
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #29, !dbg !3771
  ret i8* %3, !dbg !3772
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3773 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3777, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i8* %1, metadata !3778, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i32 %0, metadata !3756, metadata !DIExpression()) #29, !dbg !3780
  call void @llvm.dbg.value(metadata i8* %1, metadata !3757, metadata !DIExpression()) #29, !dbg !3780
  call void @llvm.dbg.value(metadata i64 -1, metadata !3758, metadata !DIExpression()) #29, !dbg !3780
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #29, !dbg !3782
  ret i8* %3, !dbg !3783
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3784 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3788, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i32 0, metadata !3777, metadata !DIExpression()) #29, !dbg !3790
  call void @llvm.dbg.value(metadata i8* %0, metadata !3778, metadata !DIExpression()) #29, !dbg !3790
  call void @llvm.dbg.value(metadata i32 0, metadata !3756, metadata !DIExpression()) #29, !dbg !3792
  call void @llvm.dbg.value(metadata i8* %0, metadata !3757, metadata !DIExpression()) #29, !dbg !3792
  call void @llvm.dbg.value(metadata i64 -1, metadata !3758, metadata !DIExpression()) #29, !dbg !3792
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #29, !dbg !3794
  ret i8* %2, !dbg !3795
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3796 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3835, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i8* %1, metadata !3836, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i8* %2, metadata !3837, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i8* %3, metadata !3838, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i8** %4, metadata !3839, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i64 %5, metadata !3840, metadata !DIExpression()), !dbg !3841
  %7 = icmp eq i8* %1, null, !dbg !3842
  br i1 %7, label %10, label %8, !dbg !3844

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #29, !dbg !3845
  br label %12, !dbg !3845

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.119, i64 0, i64 0), i8* %2, i8* %3) #29, !dbg !3846
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.120, i64 0, i64 0), i32 5) #29, !dbg !3847
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #29, !dbg !3847
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.121, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3848
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.122, i64 0, i64 0), i32 5) #29, !dbg !3849
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.123, i64 0, i64 0)) #29, !dbg !3849
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.121, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3850
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
  ], !dbg !3851

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.124, i64 0, i64 0), i32 5) #29, !dbg !3852
  %21 = load i8*, i8** %4, align 8, !dbg !3852, !tbaa !744
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #29, !dbg !3852
  br label %147, !dbg !3854

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.125, i64 0, i64 0), i32 5) #29, !dbg !3855
  %25 = load i8*, i8** %4, align 8, !dbg !3855, !tbaa !744
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3855
  %27 = load i8*, i8** %26, align 8, !dbg !3855, !tbaa !744
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #29, !dbg !3855
  br label %147, !dbg !3856

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.126, i64 0, i64 0), i32 5) #29, !dbg !3857
  %31 = load i8*, i8** %4, align 8, !dbg !3857, !tbaa !744
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3857
  %33 = load i8*, i8** %32, align 8, !dbg !3857, !tbaa !744
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3857
  %35 = load i8*, i8** %34, align 8, !dbg !3857, !tbaa !744
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #29, !dbg !3857
  br label %147, !dbg !3858

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.127, i64 0, i64 0), i32 5) #29, !dbg !3859
  %39 = load i8*, i8** %4, align 8, !dbg !3859, !tbaa !744
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3859
  %41 = load i8*, i8** %40, align 8, !dbg !3859, !tbaa !744
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3859
  %43 = load i8*, i8** %42, align 8, !dbg !3859, !tbaa !744
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3859
  %45 = load i8*, i8** %44, align 8, !dbg !3859, !tbaa !744
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #29, !dbg !3859
  br label %147, !dbg !3860

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.128, i64 0, i64 0), i32 5) #29, !dbg !3861
  %49 = load i8*, i8** %4, align 8, !dbg !3861, !tbaa !744
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3861
  %51 = load i8*, i8** %50, align 8, !dbg !3861, !tbaa !744
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3861
  %53 = load i8*, i8** %52, align 8, !dbg !3861, !tbaa !744
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3861
  %55 = load i8*, i8** %54, align 8, !dbg !3861, !tbaa !744
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3861
  %57 = load i8*, i8** %56, align 8, !dbg !3861, !tbaa !744
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #29, !dbg !3861
  br label %147, !dbg !3862

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.129, i64 0, i64 0), i32 5) #29, !dbg !3863
  %61 = load i8*, i8** %4, align 8, !dbg !3863, !tbaa !744
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3863
  %63 = load i8*, i8** %62, align 8, !dbg !3863, !tbaa !744
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3863
  %65 = load i8*, i8** %64, align 8, !dbg !3863, !tbaa !744
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3863
  %67 = load i8*, i8** %66, align 8, !dbg !3863, !tbaa !744
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3863
  %69 = load i8*, i8** %68, align 8, !dbg !3863, !tbaa !744
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3863
  %71 = load i8*, i8** %70, align 8, !dbg !3863, !tbaa !744
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #29, !dbg !3863
  br label %147, !dbg !3864

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.130, i64 0, i64 0), i32 5) #29, !dbg !3865
  %75 = load i8*, i8** %4, align 8, !dbg !3865, !tbaa !744
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3865
  %77 = load i8*, i8** %76, align 8, !dbg !3865, !tbaa !744
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3865
  %79 = load i8*, i8** %78, align 8, !dbg !3865, !tbaa !744
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3865
  %81 = load i8*, i8** %80, align 8, !dbg !3865, !tbaa !744
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3865
  %83 = load i8*, i8** %82, align 8, !dbg !3865, !tbaa !744
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3865
  %85 = load i8*, i8** %84, align 8, !dbg !3865, !tbaa !744
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3865
  %87 = load i8*, i8** %86, align 8, !dbg !3865, !tbaa !744
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #29, !dbg !3865
  br label %147, !dbg !3866

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.131, i64 0, i64 0), i32 5) #29, !dbg !3867
  %91 = load i8*, i8** %4, align 8, !dbg !3867, !tbaa !744
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3867
  %93 = load i8*, i8** %92, align 8, !dbg !3867, !tbaa !744
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3867
  %95 = load i8*, i8** %94, align 8, !dbg !3867, !tbaa !744
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3867
  %97 = load i8*, i8** %96, align 8, !dbg !3867, !tbaa !744
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3867
  %99 = load i8*, i8** %98, align 8, !dbg !3867, !tbaa !744
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3867
  %101 = load i8*, i8** %100, align 8, !dbg !3867, !tbaa !744
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3867
  %103 = load i8*, i8** %102, align 8, !dbg !3867, !tbaa !744
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3867
  %105 = load i8*, i8** %104, align 8, !dbg !3867, !tbaa !744
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #29, !dbg !3867
  br label %147, !dbg !3868

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.132, i64 0, i64 0), i32 5) #29, !dbg !3869
  %109 = load i8*, i8** %4, align 8, !dbg !3869, !tbaa !744
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3869
  %111 = load i8*, i8** %110, align 8, !dbg !3869, !tbaa !744
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3869
  %113 = load i8*, i8** %112, align 8, !dbg !3869, !tbaa !744
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3869
  %115 = load i8*, i8** %114, align 8, !dbg !3869, !tbaa !744
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3869
  %117 = load i8*, i8** %116, align 8, !dbg !3869, !tbaa !744
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3869
  %119 = load i8*, i8** %118, align 8, !dbg !3869, !tbaa !744
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3869
  %121 = load i8*, i8** %120, align 8, !dbg !3869, !tbaa !744
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3869
  %123 = load i8*, i8** %122, align 8, !dbg !3869, !tbaa !744
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3869
  %125 = load i8*, i8** %124, align 8, !dbg !3869, !tbaa !744
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #29, !dbg !3869
  br label %147, !dbg !3870

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.133, i64 0, i64 0), i32 5) #29, !dbg !3871
  %129 = load i8*, i8** %4, align 8, !dbg !3871, !tbaa !744
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3871
  %131 = load i8*, i8** %130, align 8, !dbg !3871, !tbaa !744
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3871
  %133 = load i8*, i8** %132, align 8, !dbg !3871, !tbaa !744
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3871
  %135 = load i8*, i8** %134, align 8, !dbg !3871, !tbaa !744
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3871
  %137 = load i8*, i8** %136, align 8, !dbg !3871, !tbaa !744
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3871
  %139 = load i8*, i8** %138, align 8, !dbg !3871, !tbaa !744
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3871
  %141 = load i8*, i8** %140, align 8, !dbg !3871, !tbaa !744
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3871
  %143 = load i8*, i8** %142, align 8, !dbg !3871, !tbaa !744
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3871
  %145 = load i8*, i8** %144, align 8, !dbg !3871, !tbaa !744
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #29, !dbg !3871
  br label %147, !dbg !3872

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3873
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3874 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3878, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i8* %1, metadata !3879, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i8* %2, metadata !3880, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i8* %3, metadata !3881, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i8** %4, metadata !3882, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i64 0, metadata !3883, metadata !DIExpression()), !dbg !3884
  br label %6, !dbg !3885

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3887
  call void @llvm.dbg.value(metadata i64 %7, metadata !3883, metadata !DIExpression()), !dbg !3884
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3888
  %9 = load i8*, i8** %8, align 8, !dbg !3888, !tbaa !744
  %10 = icmp eq i8* %9, null, !dbg !3890
  %11 = add i64 %7, 1, !dbg !3891
  call void @llvm.dbg.value(metadata i64 %11, metadata !3883, metadata !DIExpression()), !dbg !3884
  br i1 %10, label %12, label %6, !dbg !3890, !llvm.loop !3892

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3894
  ret void, !dbg !3895
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3896 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3907, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i8* %1, metadata !3908, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i8* %2, metadata !3909, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i8* %3, metadata !3910, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3911, metadata !DIExpression()), !dbg !3915
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3916
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #29, !dbg !3916
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3913, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata i64 0, metadata !3912, metadata !DIExpression()), !dbg !3915
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3912, metadata !DIExpression()), !dbg !3915
  %11 = load i32, i32* %8, align 8, !dbg !3918
  %12 = icmp ult i32 %11, 41, !dbg !3918
  br i1 %12, label %13, label %18, !dbg !3918

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3918
  %15 = zext i32 %11 to i64, !dbg !3918
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3918
  %17 = add nuw nsw i32 %11, 8, !dbg !3918
  store i32 %17, i32* %8, align 8, !dbg !3918
  br label %21, !dbg !3918

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3918
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3918
  store i8* %20, i8** %9, align 8, !dbg !3918
  br label %21, !dbg !3918

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3918
  %25 = load i8*, i8** %24, align 8, !dbg !3918
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3921
  store i8* %25, i8** %26, align 16, !dbg !3922, !tbaa !744
  %27 = icmp eq i8* %25, null, !dbg !3923
  br i1 %27, label %30, label %28, !dbg !3924

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3912, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i64 1, metadata !3912, metadata !DIExpression()), !dbg !3915
  %29 = icmp ult i32 %22, 41, !dbg !3918
  br i1 %29, label %35, label %32, !dbg !3918

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3925
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3926
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #29, !dbg !3927
  ret void, !dbg !3927

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3918
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3918
  store i8* %34, i8** %9, align 8, !dbg !3918
  br label %40, !dbg !3918

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3918
  %37 = zext i32 %22 to i64, !dbg !3918
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3918
  %39 = add nuw nsw i32 %22, 8, !dbg !3918
  store i32 %39, i32* %8, align 8, !dbg !3918
  br label %40, !dbg !3918

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3918
  %44 = load i8*, i8** %43, align 8, !dbg !3918
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3921
  store i8* %44, i8** %45, align 8, !dbg !3922, !tbaa !744
  %46 = icmp eq i8* %44, null, !dbg !3923
  br i1 %46, label %30, label %47, !dbg !3924

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3912, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i64 2, metadata !3912, metadata !DIExpression()), !dbg !3915
  %48 = icmp ult i32 %41, 41, !dbg !3918
  br i1 %48, label %52, label %49, !dbg !3918

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3918
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3918
  store i8* %51, i8** %9, align 8, !dbg !3918
  br label %57, !dbg !3918

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3918
  %54 = zext i32 %41 to i64, !dbg !3918
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3918
  %56 = add nuw nsw i32 %41, 8, !dbg !3918
  store i32 %56, i32* %8, align 8, !dbg !3918
  br label %57, !dbg !3918

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3918
  %61 = load i8*, i8** %60, align 8, !dbg !3918
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3921
  store i8* %61, i8** %62, align 16, !dbg !3922, !tbaa !744
  %63 = icmp eq i8* %61, null, !dbg !3923
  br i1 %63, label %30, label %64, !dbg !3924

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3912, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i64 3, metadata !3912, metadata !DIExpression()), !dbg !3915
  %65 = icmp ult i32 %58, 41, !dbg !3918
  br i1 %65, label %69, label %66, !dbg !3918

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3918
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3918
  store i8* %68, i8** %9, align 8, !dbg !3918
  br label %74, !dbg !3918

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3918
  %71 = zext i32 %58 to i64, !dbg !3918
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3918
  %73 = add nuw nsw i32 %58, 8, !dbg !3918
  store i32 %73, i32* %8, align 8, !dbg !3918
  br label %74, !dbg !3918

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3918
  %78 = load i8*, i8** %77, align 8, !dbg !3918
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3921
  store i8* %78, i8** %79, align 8, !dbg !3922, !tbaa !744
  %80 = icmp eq i8* %78, null, !dbg !3923
  br i1 %80, label %30, label %81, !dbg !3924

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3912, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i64 4, metadata !3912, metadata !DIExpression()), !dbg !3915
  %82 = icmp ult i32 %75, 41, !dbg !3918
  br i1 %82, label %86, label %83, !dbg !3918

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3918
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3918
  store i8* %85, i8** %9, align 8, !dbg !3918
  br label %91, !dbg !3918

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3918
  %88 = zext i32 %75 to i64, !dbg !3918
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3918
  %90 = add nuw nsw i32 %75, 8, !dbg !3918
  store i32 %90, i32* %8, align 8, !dbg !3918
  br label %91, !dbg !3918

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3918
  %95 = load i8*, i8** %94, align 8, !dbg !3918
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3921
  store i8* %95, i8** %96, align 16, !dbg !3922, !tbaa !744
  %97 = icmp eq i8* %95, null, !dbg !3923
  br i1 %97, label %30, label %98, !dbg !3924

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3912, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i64 5, metadata !3912, metadata !DIExpression()), !dbg !3915
  %99 = icmp ult i32 %92, 41, !dbg !3918
  br i1 %99, label %103, label %100, !dbg !3918

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3918
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3918
  store i8* %102, i8** %9, align 8, !dbg !3918
  br label %108, !dbg !3918

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3918
  %105 = zext i32 %92 to i64, !dbg !3918
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3918
  %107 = add nuw nsw i32 %92, 8, !dbg !3918
  store i32 %107, i32* %8, align 8, !dbg !3918
  br label %108, !dbg !3918

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3918
  %111 = load i8*, i8** %110, align 8, !dbg !3918
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3921
  store i8* %111, i8** %112, align 8, !dbg !3922, !tbaa !744
  %113 = icmp eq i8* %111, null, !dbg !3923
  br i1 %113, label %30, label %114, !dbg !3924

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3912, metadata !DIExpression()), !dbg !3915
  %115 = load i8*, i8** %9, align 8, !dbg !3918
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3918
  store i8* %116, i8** %9, align 8, !dbg !3918
  %117 = bitcast i8* %115 to i8**, !dbg !3918
  %118 = load i8*, i8** %117, align 8, !dbg !3918
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3921
  store i8* %118, i8** %119, align 16, !dbg !3922, !tbaa !744
  %120 = icmp eq i8* %118, null, !dbg !3923
  br i1 %120, label %30, label %121, !dbg !3924

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3912, metadata !DIExpression()), !dbg !3915
  %122 = load i8*, i8** %9, align 8, !dbg !3918
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3918
  store i8* %123, i8** %9, align 8, !dbg !3918
  %124 = bitcast i8* %122 to i8**, !dbg !3918
  %125 = load i8*, i8** %124, align 8, !dbg !3918
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3921
  store i8* %125, i8** %126, align 8, !dbg !3922, !tbaa !744
  %127 = icmp eq i8* %125, null, !dbg !3923
  br i1 %127, label %30, label %128, !dbg !3924

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3912, metadata !DIExpression()), !dbg !3915
  %129 = load i8*, i8** %9, align 8, !dbg !3918
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3918
  store i8* %130, i8** %9, align 8, !dbg !3918
  %131 = bitcast i8* %129 to i8**, !dbg !3918
  %132 = load i8*, i8** %131, align 8, !dbg !3918
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3921
  store i8* %132, i8** %133, align 16, !dbg !3922, !tbaa !744
  %134 = icmp eq i8* %132, null, !dbg !3923
  br i1 %134, label %30, label %135, !dbg !3924

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3912, metadata !DIExpression()), !dbg !3915
  %136 = load i8*, i8** %9, align 8, !dbg !3918
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3918
  store i8* %137, i8** %9, align 8, !dbg !3918
  %138 = bitcast i8* %136 to i8**, !dbg !3918
  %139 = load i8*, i8** %138, align 8, !dbg !3918
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3921
  store i8* %139, i8** %140, align 8, !dbg !3922, !tbaa !744
  %141 = icmp eq i8* %139, null, !dbg !3923
  %142 = select i1 %141, i64 9, i64 10, !dbg !3924
  br label %30, !dbg !3924
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3928 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3932, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i8* %1, metadata !3933, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i8* %2, metadata !3934, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i8* %3, metadata !3935, metadata !DIExpression()), !dbg !3942
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3943
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #29, !dbg !3943
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3936, metadata !DIExpression()), !dbg !3944
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3945
  call void @llvm.va_start(i8* nonnull %6), !dbg !3945
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3946
  call void @llvm.va_end(i8* nonnull %6), !dbg !3947
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #29, !dbg !3948
  ret void, !dbg !3948
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #24

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3949 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3950, !tbaa !744
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.121, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3950
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.136, i64 0, i64 0), i32 5) #29, !dbg !3951
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.137, i64 0, i64 0)) #29, !dbg !3951
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.138, i64 0, i64 0), i32 5) #29, !dbg !3952
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.139, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.140, i64 0, i64 0)) #29, !dbg !3952
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.141, i64 0, i64 0), i32 5) #29, !dbg !3953
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.142, i64 0, i64 0)) #29, !dbg !3953
  ret void, !dbg !3954
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #25 !dbg !3955 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3959, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata i64 %1, metadata !3960, metadata !DIExpression()), !dbg !3961
  %3 = udiv i64 9223372036854775807, %1, !dbg !3962
  %4 = icmp ult i64 %3, %0, !dbg !3962
  br i1 %4, label %5, label %6, !dbg !3964

5:                                                ; preds = %2
  tail call void @xalloc_die() #31, !dbg !3965
  unreachable, !dbg !3965

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3966
  call void @llvm.dbg.value(metadata i64 %7, metadata !3967, metadata !DIExpression()) #29, !dbg !3973
  %8 = tail call noalias i8* @malloc(i64 %7) #29, !dbg !3975
  call void @llvm.dbg.value(metadata i8* %8, metadata !3972, metadata !DIExpression()) #29, !dbg !3973
  %9 = icmp eq i8* %8, null, !dbg !3976
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3978
  br i1 %11, label %12, label %13, !dbg !3978

12:                                               ; preds = %6
  tail call void @xalloc_die() #31, !dbg !3979
  unreachable, !dbg !3979

13:                                               ; preds = %6
  ret i8* %8, !dbg !3980
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3968 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3967, metadata !DIExpression()), !dbg !3981
  %2 = tail call noalias i8* @malloc(i64 %0) #29, !dbg !3982
  call void @llvm.dbg.value(metadata i8* %2, metadata !3972, metadata !DIExpression()), !dbg !3981
  %3 = icmp eq i8* %2, null, !dbg !3983
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3984
  br i1 %5, label %6, label %7, !dbg !3984

6:                                                ; preds = %1
  tail call void @xalloc_die() #31, !dbg !3985
  unreachable, !dbg !3985

7:                                                ; preds = %1
  ret i8* %2, !dbg !3986
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #25 !dbg !3987 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3991, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i64 %1, metadata !3992, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i64 %2, metadata !3993, metadata !DIExpression()), !dbg !3994
  %4 = udiv i64 9223372036854775807, %2, !dbg !3995
  %5 = icmp ult i64 %4, %1, !dbg !3995
  br i1 %5, label %6, label %7, !dbg !3997

6:                                                ; preds = %3
  tail call void @xalloc_die() #31, !dbg !3998
  unreachable, !dbg !3998

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3999
  call void @llvm.dbg.value(metadata i8* %0, metadata !4000, metadata !DIExpression()) #29, !dbg !4006
  call void @llvm.dbg.value(metadata i64 %8, metadata !4005, metadata !DIExpression()) #29, !dbg !4006
  %9 = icmp eq i64 %8, 0, !dbg !4008
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !4010
  br i1 %11, label %12, label %13, !dbg !4010

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #29, !dbg !4011
  br label %19, !dbg !4013

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #29, !dbg !4014
  call void @llvm.dbg.value(metadata i8* %14, metadata !4000, metadata !DIExpression()) #29, !dbg !4006
  %15 = icmp eq i8* %14, null, !dbg !4015
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !4017
  br i1 %17, label %18, label %19, !dbg !4017

18:                                               ; preds = %13
  tail call void @xalloc_die() #31, !dbg !4018
  unreachable, !dbg !4018

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4006
  ret i8* %20, !dbg !4019
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4001 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4000, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i64 %1, metadata !4005, metadata !DIExpression()), !dbg !4020
  %3 = icmp eq i64 %1, 0, !dbg !4021
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !4022
  br i1 %5, label %6, label %7, !dbg !4022

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #29, !dbg !4023
  br label %13, !dbg !4024

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #29, !dbg !4025
  call void @llvm.dbg.value(metadata i8* %8, metadata !4000, metadata !DIExpression()), !dbg !4020
  %9 = icmp eq i8* %8, null, !dbg !4026
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !4027
  br i1 %11, label %12, label %13, !dbg !4027

12:                                               ; preds = %7
  tail call void @xalloc_die() #31, !dbg !4028
  unreachable, !dbg !4028

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4020
  ret i8* %14, !dbg !4029
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #25 !dbg !303 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !305, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64* %1, metadata !306, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64 %2, metadata !307, metadata !DIExpression()), !dbg !4030
  %4 = load i64, i64* %1, align 8, !dbg !4031, !tbaa !937
  call void @llvm.dbg.value(metadata i64 %4, metadata !308, metadata !DIExpression()), !dbg !4030
  %5 = icmp eq i8* %0, null, !dbg !4032
  br i1 %5, label %6, label %20, !dbg !4034

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4035
  br i1 %7, label %8, label %13, !dbg !4038

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4039
  call void @llvm.dbg.value(metadata i64 %9, metadata !308, metadata !DIExpression()), !dbg !4030
  %10 = icmp ugt i64 %2, 128, !dbg !4041
  %11 = zext i1 %10 to i64, !dbg !4041
  %12 = add nuw nsw i64 %9, %11, !dbg !4042
  call void @llvm.dbg.value(metadata i64 %12, metadata !308, metadata !DIExpression()), !dbg !4030
  br label %13, !dbg !4043

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4030
  call void @llvm.dbg.value(metadata i64 %14, metadata !308, metadata !DIExpression()), !dbg !4030
  %15 = udiv i64 9223372036854775807, %2, !dbg !4044
  %16 = icmp ult i64 %15, %14, !dbg !4044
  br i1 %16, label %19, label %17, !dbg !4046

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !308, metadata !DIExpression()), !dbg !4030
  store i64 %14, i64* %1, align 8, !dbg !4047, !tbaa !937
  %18 = mul i64 %14, %2, !dbg !4048
  call void @llvm.dbg.value(metadata i8* %0, metadata !4000, metadata !DIExpression()) #29, !dbg !4049
  call void @llvm.dbg.value(metadata i64 %28, metadata !4005, metadata !DIExpression()) #29, !dbg !4049
  br label %31, !dbg !4051

19:                                               ; preds = %13
  tail call void @xalloc_die() #31, !dbg !4052
  unreachable, !dbg !4052

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4053
  %22 = icmp ugt i64 %21, %4, !dbg !4056
  br i1 %22, label %24, label %23, !dbg !4057

23:                                               ; preds = %20
  tail call void @xalloc_die() #31, !dbg !4058
  unreachable, !dbg !4058

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4059
  %26 = add nuw i64 %4, 1, !dbg !4060
  %27 = add i64 %26, %25, !dbg !4061
  call void @llvm.dbg.value(metadata i64 %27, metadata !308, metadata !DIExpression()), !dbg !4030
  store i64 %27, i64* %1, align 8, !dbg !4047, !tbaa !937
  %28 = mul i64 %27, %2, !dbg !4048
  call void @llvm.dbg.value(metadata i8* %0, metadata !4000, metadata !DIExpression()) #29, !dbg !4049
  call void @llvm.dbg.value(metadata i64 %28, metadata !4005, metadata !DIExpression()) #29, !dbg !4049
  %29 = icmp eq i64 %28, 0, !dbg !4062
  br i1 %29, label %30, label %31, !dbg !4051

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #29, !dbg !4063
  br label %38, !dbg !4064

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #29, !dbg !4065
  call void @llvm.dbg.value(metadata i8* %33, metadata !4000, metadata !DIExpression()) #29, !dbg !4049
  %34 = icmp eq i8* %33, null, !dbg !4066
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !4067
  br i1 %36, label %37, label %38, !dbg !4067

37:                                               ; preds = %31
  tail call void @xalloc_die() #31, !dbg !4068
  unreachable, !dbg !4068

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4049
  ret i8* %39, !dbg !4069
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #25 !dbg !4070 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4072, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i64 %0, metadata !3967, metadata !DIExpression()) #29, !dbg !4074
  %2 = tail call noalias i8* @malloc(i64 %0) #29, !dbg !4076
  call void @llvm.dbg.value(metadata i8* %2, metadata !3972, metadata !DIExpression()) #29, !dbg !4074
  %3 = icmp eq i8* %2, null, !dbg !4077
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !4078
  br i1 %5, label %6, label %7, !dbg !4078

6:                                                ; preds = %1
  tail call void @xalloc_die() #31, !dbg !4079
  unreachable, !dbg !4079

7:                                                ; preds = %1
  ret i8* %2, !dbg !4080
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4081 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4085, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i64* %1, metadata !4086, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i8* %0, metadata !305, metadata !DIExpression()) #29, !dbg !4088
  call void @llvm.dbg.value(metadata i64* %1, metadata !306, metadata !DIExpression()) #29, !dbg !4088
  call void @llvm.dbg.value(metadata i64 1, metadata !307, metadata !DIExpression()) #29, !dbg !4088
  %3 = load i64, i64* %1, align 8, !dbg !4090, !tbaa !937
  call void @llvm.dbg.value(metadata i64 %3, metadata !308, metadata !DIExpression()) #29, !dbg !4088
  %4 = icmp eq i8* %0, null, !dbg !4091
  br i1 %4, label %5, label %10, !dbg !4092

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4093
  br i1 %6, label %17, label %7, !dbg !4094

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !308, metadata !DIExpression()) #29, !dbg !4088
  %8 = icmp slt i64 %3, 0, !dbg !4095
  br i1 %8, label %9, label %17, !dbg !4096

9:                                                ; preds = %7
  tail call void @xalloc_die() #31, !dbg !4097
  unreachable, !dbg !4097

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !4098
  br i1 %11, label %13, label %12, !dbg !4099

12:                                               ; preds = %10
  tail call void @xalloc_die() #31, !dbg !4100
  unreachable, !dbg !4100

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !4101
  %15 = add nuw nsw i64 %3, 1, !dbg !4102
  %16 = add nuw nsw i64 %15, %14, !dbg !4103
  call void @llvm.dbg.value(metadata i64 %16, metadata !308, metadata !DIExpression()) #29, !dbg !4088
  call void @llvm.dbg.value(metadata i8* %0, metadata !4000, metadata !DIExpression()) #29, !dbg !4104
  call void @llvm.dbg.value(metadata i64 %16, metadata !4005, metadata !DIExpression()) #29, !dbg !4104
  br label %17, !dbg !4106

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !4107
  store i64 %18, i64* %1, align 8, !dbg !4107, !tbaa !937
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #29, !dbg !4108
  call void @llvm.dbg.value(metadata i8* %19, metadata !4000, metadata !DIExpression()) #29, !dbg !4104
  %20 = icmp eq i8* %19, null, !dbg !4109
  br i1 %20, label %21, label %22, !dbg !4110

21:                                               ; preds = %17
  tail call void @xalloc_die() #31, !dbg !4111
  unreachable, !dbg !4111

22:                                               ; preds = %17
  ret i8* %19, !dbg !4112
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4113 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4115, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.value(metadata i64 %0, metadata !4117, metadata !DIExpression()) #29, !dbg !4122
  call void @llvm.dbg.value(metadata i64 1, metadata !4120, metadata !DIExpression()) #29, !dbg !4122
  %2 = icmp slt i64 %0, 0, !dbg !4124
  br i1 %2, label %6, label %3, !dbg !4126

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #29, !dbg !4127
  call void @llvm.dbg.value(metadata i8* %4, metadata !4121, metadata !DIExpression()) #29, !dbg !4122
  %5 = icmp eq i8* %4, null, !dbg !4128
  br i1 %5, label %6, label %7, !dbg !4129

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #31, !dbg !4130
  unreachable, !dbg !4130

7:                                                ; preds = %3
  ret i8* %4, !dbg !4131
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4118 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4117, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i64 %1, metadata !4120, metadata !DIExpression()), !dbg !4132
  %3 = udiv i64 9223372036854775807, %1, !dbg !4133
  %4 = icmp ult i64 %3, %0, !dbg !4133
  br i1 %4, label %8, label %5, !dbg !4134

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #29, !dbg !4135
  call void @llvm.dbg.value(metadata i8* %6, metadata !4121, metadata !DIExpression()), !dbg !4132
  %7 = icmp eq i8* %6, null, !dbg !4136
  br i1 %7, label %8, label %9, !dbg !4137

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #31, !dbg !4138
  unreachable, !dbg !4138

9:                                                ; preds = %5
  ret i8* %6, !dbg !4139
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4140 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4144, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i64 %1, metadata !4145, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i64 %1, metadata !3967, metadata !DIExpression()) #29, !dbg !4147
  %3 = tail call noalias i8* @malloc(i64 %1) #29, !dbg !4149
  call void @llvm.dbg.value(metadata i8* %3, metadata !3972, metadata !DIExpression()) #29, !dbg !4147
  %4 = icmp eq i8* %3, null, !dbg !4150
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !4151
  br i1 %6, label %7, label %8, !dbg !4151

7:                                                ; preds = %2
  tail call void @xalloc_die() #31, !dbg !4152
  unreachable, !dbg !4152

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4153, metadata !DIExpression()) #29, !dbg !4158
  call void @llvm.dbg.value(metadata i8* %0, metadata !4156, metadata !DIExpression()) #29, !dbg !4158
  call void @llvm.dbg.value(metadata i64 %1, metadata !4157, metadata !DIExpression()) #29, !dbg !4158
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #29, !dbg !4160
  ret i8* %3, !dbg !4161
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4162 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4164, metadata !DIExpression()), !dbg !4165
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #30, !dbg !4166
  %3 = add i64 %2, 1, !dbg !4167
  call void @llvm.dbg.value(metadata i8* %0, metadata !4144, metadata !DIExpression()) #29, !dbg !4168
  call void @llvm.dbg.value(metadata i64 %3, metadata !4145, metadata !DIExpression()) #29, !dbg !4168
  call void @llvm.dbg.value(metadata i64 %3, metadata !3967, metadata !DIExpression()) #29, !dbg !4170
  %4 = tail call noalias i8* @malloc(i64 %3) #29, !dbg !4172
  call void @llvm.dbg.value(metadata i8* %4, metadata !3972, metadata !DIExpression()) #29, !dbg !4170
  %5 = icmp eq i8* %4, null, !dbg !4173
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !4174
  br i1 %7, label %8, label %9, !dbg !4174

8:                                                ; preds = %1
  tail call void @xalloc_die() #31, !dbg !4175
  unreachable, !dbg !4175

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4153, metadata !DIExpression()) #29, !dbg !4176
  call void @llvm.dbg.value(metadata i8* %0, metadata !4156, metadata !DIExpression()) #29, !dbg !4176
  call void @llvm.dbg.value(metadata i64 %3, metadata !4157, metadata !DIExpression()) #29, !dbg !4176
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #29, !dbg !4178
  ret i8* %4, !dbg !4179
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4180 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4181, !tbaa !989
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.155, i64 0, i64 0), i32 5) #29, !dbg !4182
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i64 0, i64 0), i8* %2) #29, !dbg !4183
  tail call void @abort() #31, !dbg !4184
  unreachable, !dbg !4184
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrndup(i8* nocapture readonly %0, i64 %1) local_unnamed_addr #8 !dbg !4185 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4187, metadata !DIExpression()), !dbg !4190
  call void @llvm.dbg.value(metadata i64 %1, metadata !4188, metadata !DIExpression()), !dbg !4190
  %3 = tail call noalias i8* @strndup(i8* %0, i64 %1) #29, !dbg !4191
  call void @llvm.dbg.value(metadata i8* %3, metadata !4189, metadata !DIExpression()), !dbg !4190
  %4 = icmp eq i8* %3, null, !dbg !4192
  br i1 %4, label %5, label %6, !dbg !4194

5:                                                ; preds = %2
  tail call void @xalloc_die() #31, !dbg !4195
  unreachable, !dbg !4195

6:                                                ; preds = %2
  ret i8* %3, !dbg !4196
}

; Function Attrs: inaccessiblemem_or_argmemonly nofree nounwind willreturn
declare noalias i8* @strndup(i8* nocapture readonly, i64) local_unnamed_addr #26

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #27 !dbg !4197 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4199, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i64 %1, metadata !4200, metadata !DIExpression()), !dbg !4205
  %3 = icmp eq i64 %0, 0, !dbg !4206
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !4207
  br i1 %5, label %11, label %6, !dbg !4207

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4202, metadata !DIExpression()), !dbg !4208
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4209
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4209
  br i1 %8, label %9, label %11, !dbg !4211

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #33, !dbg !4212
  store i32 12, i32* %10, align 4, !dbg !4214, !tbaa !989
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4199, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i64 %12, metadata !4200, metadata !DIExpression()), !dbg !4205
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #29, !dbg !4215
  call void @llvm.dbg.value(metadata i8* %14, metadata !4201, metadata !DIExpression()), !dbg !4205
  br label %15, !dbg !4216

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4205
  ret i8* %16, !dbg !4217
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4218 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4256, metadata !DIExpression()), !dbg !4260
  call void @llvm.dbg.value(metadata i32 0, metadata !4257, metadata !DIExpression()), !dbg !4260
  call void @llvm.dbg.value(metadata i32 0, metadata !4259, metadata !DIExpression()), !dbg !4260
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #29, !dbg !4261
  call void @llvm.dbg.value(metadata i32 %2, metadata !4258, metadata !DIExpression()), !dbg !4260
  %3 = icmp slt i32 %2, 0, !dbg !4262
  br i1 %3, label %4, label %6, !dbg !4264

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4265
  br label %24, !dbg !4266

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #29, !dbg !4267
  %8 = icmp eq i32 %7, 0, !dbg !4267
  br i1 %8, label %13, label %9, !dbg !4269

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #29, !dbg !4270
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #29, !dbg !4271
  %12 = icmp eq i64 %11, -1, !dbg !4272
  br i1 %12, label %16, label %13, !dbg !4273

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #29, !dbg !4274
  %15 = icmp eq i32 %14, 0, !dbg !4274
  br i1 %15, label %16, label %18, !dbg !4275

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4257, metadata !DIExpression()), !dbg !4260
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4276
  call void @llvm.dbg.value(metadata i32 %21, metadata !4259, metadata !DIExpression()), !dbg !4260
  br label %24, !dbg !4277

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #33, !dbg !4278
  %20 = load i32, i32* %19, align 4, !dbg !4278, !tbaa !989
  call void @llvm.dbg.value(metadata i32 %20, metadata !4257, metadata !DIExpression()), !dbg !4260
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4276
  call void @llvm.dbg.value(metadata i32 %21, metadata !4259, metadata !DIExpression()), !dbg !4260
  %22 = icmp eq i32 %20, 0, !dbg !4279
  br i1 %22, label %24, label %23, !dbg !4277

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4281, !tbaa !989
  call void @llvm.dbg.value(metadata i32 -1, metadata !4259, metadata !DIExpression()), !dbg !4260
  br label %24, !dbg !4283

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4260
  ret i32 %25, !dbg !4284
}

; Function Attrs: nofree nounwind
declare !dbg !4285 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4288 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4292 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4330, metadata !DIExpression()), !dbg !4331
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4332
  br i1 %2, label %6, label %3, !dbg !4334

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #29, !dbg !4335
  %5 = icmp eq i32 %4, 0, !dbg !4335
  br i1 %5, label %6, label %8, !dbg !4336

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4337
  br label %17, !dbg !4338

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4339, metadata !DIExpression()) #29, !dbg !4344
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4346
  %10 = load i32, i32* %9, align 8, !dbg !4346, !tbaa !1265
  %11 = and i32 %10, 256, !dbg !4348
  %12 = icmp eq i32 %11, 0, !dbg !4348
  br i1 %12, label %15, label %13, !dbg !4349

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #29, !dbg !4350
  br label %15, !dbg !4350

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4351
  br label %17, !dbg !4352

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4331
  ret i32 %18, !dbg !4353
}

; Function Attrs: nofree nounwind
declare !dbg !4354 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i8* @freadptr(%struct._IO_FILE* nocapture readonly %0, i64* nocapture %1) local_unnamed_addr #19 !dbg !4357 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4395, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i64* %1, metadata !4396, metadata !DIExpression()), !dbg !4398
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4399
  %4 = load i8*, i8** %3, align 8, !dbg !4399, !tbaa !1132
  %5 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4401
  %6 = load i8*, i8** %5, align 8, !dbg !4401, !tbaa !4402
  %7 = icmp ugt i8* %4, %6, !dbg !4403
  br i1 %7, label %18, label %8, !dbg !4404

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4405
  %10 = load i8*, i8** %9, align 8, !dbg !4405, !tbaa !1117
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4406
  %12 = load i8*, i8** %11, align 8, !dbg !4406, !tbaa !1114
  %13 = ptrtoint i8* %10 to i64, !dbg !4407
  %14 = ptrtoint i8* %12 to i64, !dbg !4407
  %15 = sub i64 %13, %14, !dbg !4407
  call void @llvm.dbg.value(metadata i64 %15, metadata !4397, metadata !DIExpression()), !dbg !4398
  %16 = icmp eq i64 %15, 0, !dbg !4408
  br i1 %16, label %18, label %17, !dbg !4410

17:                                               ; preds = %8
  store i64 %15, i64* %1, align 8, !dbg !4411, !tbaa !937
  br label %18, !dbg !4412

18:                                               ; preds = %8, %2, %17
  %19 = phi i8* [ %12, %17 ], [ null, %2 ], [ null, %8 ], !dbg !4398
  ret i8* %19, !dbg !4413
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4414 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4452, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i64 %1, metadata !4453, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 %2, metadata !4454, metadata !DIExpression()), !dbg !4458
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4459
  %5 = load i8*, i8** %4, align 8, !dbg !4459, !tbaa !1117
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4460
  %7 = load i8*, i8** %6, align 8, !dbg !4460, !tbaa !1114
  %8 = icmp eq i8* %5, %7, !dbg !4461
  br i1 %8, label %9, label %28, !dbg !4462

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4463
  %11 = load i8*, i8** %10, align 8, !dbg !4463, !tbaa !1132
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4464
  %13 = load i8*, i8** %12, align 8, !dbg !4464, !tbaa !4402
  %14 = icmp eq i8* %11, %13, !dbg !4465
  br i1 %14, label %15, label %28, !dbg !4466

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4467
  %17 = load i8*, i8** %16, align 8, !dbg !4467, !tbaa !4468
  %18 = icmp eq i8* %17, null, !dbg !4469
  br i1 %18, label %19, label %28, !dbg !4470

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #29, !dbg !4471
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #29, !dbg !4472
  call void @llvm.dbg.value(metadata i64 %21, metadata !4455, metadata !DIExpression()), !dbg !4473
  %22 = icmp eq i64 %21, -1, !dbg !4474
  br i1 %22, label %30, label %23, !dbg !4476

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4477
  %25 = load i32, i32* %24, align 8, !dbg !4478, !tbaa !1265
  %26 = and i32 %25, -17, !dbg !4478
  store i32 %26, i32* %24, align 8, !dbg !4478, !tbaa !1265
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4479
  store i64 %21, i64* %27, align 8, !dbg !4480, !tbaa !4481
  br label %30, !dbg !4482

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4483
  br label %30, !dbg !4484

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4458
  ret i32 %31, !dbg !4485
}

; Function Attrs: nofree nounwind
declare !dbg !4486 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4489 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4505, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i8* %1, metadata !4506, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i64 %2, metadata !4507, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4508, metadata !DIExpression()), !dbg !4514
  %6 = bitcast i32* %5 to i8*, !dbg !4515
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #29, !dbg !4515
  %7 = icmp eq i32* %0, null, !dbg !4516
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4518
  call void @llvm.dbg.value(metadata i32* %8, metadata !4505, metadata !DIExpression()), !dbg !4514
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #29, !dbg !4519
  call void @llvm.dbg.value(metadata i64 %9, metadata !4509, metadata !DIExpression()), !dbg !4514
  %10 = icmp ugt i64 %9, -3, !dbg !4520
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !4521
  br i1 %12, label %13, label %18, !dbg !4521

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #29, !dbg !4522
  br i1 %14, label %18, label %15, !dbg !4523

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4524, !tbaa !892
  call void @llvm.dbg.value(metadata i8 %16, metadata !4511, metadata !DIExpression()), !dbg !4525
  %17 = zext i8 %16 to i32, !dbg !4526
  store i32 %17, i32* %8, align 4, !dbg !4527, !tbaa !989
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4514
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #29, !dbg !4528
  ret i64 %19, !dbg !4528
}

; Function Attrs: nounwind
declare !dbg !4529 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4533 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4571, metadata !DIExpression()), !dbg !4576
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #29, !dbg !4577
  call void @llvm.dbg.value(metadata i1 undef, metadata !4572, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4576
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4578, metadata !DIExpression()), !dbg !4581
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4583
  %4 = load i32, i32* %3, align 8, !dbg !4583, !tbaa !1265
  %5 = and i32 %4, 32, !dbg !4584
  %6 = icmp eq i32 %5, 0, !dbg !4584
  call void @llvm.dbg.value(metadata i1 %6, metadata !4574, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4576
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #29, !dbg !4585
  %8 = icmp eq i32 %7, 0, !dbg !4586
  call void @llvm.dbg.value(metadata i1 %8, metadata !4575, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4576
  br i1 %6, label %9, label %19, !dbg !4587

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4589
  call void @llvm.dbg.value(metadata i1 %10, metadata !4572, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4576
  %11 = or i1 %10, %8, !dbg !4590
  %12 = xor i1 %8, true, !dbg !4590
  %13 = sext i1 %12 to i32, !dbg !4590
  br i1 %11, label %22, label %14, !dbg !4590

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #33, !dbg !4591
  %16 = load i32, i32* %15, align 4, !dbg !4591, !tbaa !989
  %17 = icmp ne i32 %16, 9, !dbg !4592
  %18 = sext i1 %17 to i32, !dbg !4593
  br label %22, !dbg !4593

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4594

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #33, !dbg !4596
  store i32 0, i32* %21, align 4, !dbg !4598, !tbaa !989
  br label %22, !dbg !4596

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4576
  ret i32 %23, !dbg !4599
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @freadseek(%struct._IO_FILE* %0, i64 %1) local_unnamed_addr #8 !dbg !4600 {
  %3 = alloca i64, align 8
  %4 = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4638, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i64 %1, metadata !4639, metadata !DIExpression()), !dbg !4656
  %5 = icmp eq i64 %1, 0, !dbg !4657
  br i1 %5, label %71, label %6, !dbg !4659

6:                                                ; preds = %2
  %7 = tail call i64 @freadahead(%struct._IO_FILE* %0) #30, !dbg !4660
  call void @llvm.dbg.value(metadata i64 %7, metadata !4640, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i64 %1, metadata !4639, metadata !DIExpression()), !dbg !4656
  %8 = icmp eq i64 %7, 0, !dbg !4661
  br i1 %8, label %45, label %9, !dbg !4662

9:                                                ; preds = %6
  %10 = bitcast i64* %3 to i8*
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  br label %12, !dbg !4662

12:                                               ; preds = %9, %42
  %13 = phi i64 [ %1, %9 ], [ %39, %42 ]
  %14 = phi i64 [ %7, %9 ], [ %43, %42 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4639, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i64 %14, metadata !4640, metadata !DIExpression()), !dbg !4656
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #29, !dbg !4663
  call void @llvm.dbg.value(metadata i64* %3, metadata !4642, metadata !DIExpression(DW_OP_deref)), !dbg !4664
  %15 = call i8* @freadptr(%struct._IO_FILE* %0, i64* nonnull %3) #29, !dbg !4665
  %16 = icmp ne i8* %15, null, !dbg !4666
  %17 = load i64, i64* %3, align 8
  call void @llvm.dbg.value(metadata i64 %17, metadata !4642, metadata !DIExpression()), !dbg !4664
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18, !dbg !4667
  br i1 %19, label %20, label %32, !dbg !4667

20:                                               ; preds = %12
  %21 = icmp ult i64 %17, %13, !dbg !4668
  %22 = select i1 %21, i64 %17, i64 %13, !dbg !4669
  call void @llvm.dbg.value(metadata i64 %22, metadata !4644, metadata !DIExpression()), !dbg !4670
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4671, metadata !DIExpression()), !dbg !4677
  call void @llvm.dbg.value(metadata i64 %22, metadata !4676, metadata !DIExpression()), !dbg !4677
  %23 = load i8*, i8** %11, align 8, !dbg !4679, !tbaa !1114
  %24 = getelementptr inbounds i8, i8* %23, i64 %22, !dbg !4679
  store i8* %24, i8** %11, align 8, !dbg !4679, !tbaa !1114
  %25 = sub i64 %13, %22, !dbg !4680
  call void @llvm.dbg.value(metadata i64 %25, metadata !4639, metadata !DIExpression()), !dbg !4656
  %26 = icmp eq i64 %25, 0, !dbg !4681
  br i1 %26, label %27, label %28, !dbg !4683

27:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 %39, metadata !4639, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i64 %43, metadata !4640, metadata !DIExpression()), !dbg !4656
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #29, !dbg !4684
  br label %71

28:                                               ; preds = %20
  %29 = sub i64 %14, %22, !dbg !4685
  call void @llvm.dbg.value(metadata i64 %29, metadata !4640, metadata !DIExpression()), !dbg !4656
  %30 = icmp eq i64 %29, 0, !dbg !4686
  br i1 %30, label %31, label %32, !dbg !4688

31:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i64 %39, metadata !4639, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i64 %43, metadata !4640, metadata !DIExpression()), !dbg !4656
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #29, !dbg !4684
  br label %45

32:                                               ; preds = %28, %12
  %33 = phi i64 [ %14, %12 ], [ %29, %28 ], !dbg !4689
  %34 = phi i64 [ %13, %12 ], [ %25, %28 ]
  call void @llvm.dbg.value(metadata i64 %34, metadata !4639, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i64 %33, metadata !4640, metadata !DIExpression()), !dbg !4656
  %35 = call i32 @fgetc(%struct._IO_FILE* %0), !dbg !4690
  %36 = icmp eq i32 %35, -1, !dbg !4692
  br i1 %36, label %37, label %38, !dbg !4693

37:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i64 %39, metadata !4639, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i64 %43, metadata !4640, metadata !DIExpression()), !dbg !4656
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #29, !dbg !4684
  br label %67

38:                                               ; preds = %32
  %39 = add i64 %34, -1, !dbg !4694
  call void @llvm.dbg.value(metadata i64 %39, metadata !4639, metadata !DIExpression()), !dbg !4656
  %40 = icmp eq i64 %39, 0, !dbg !4695
  br i1 %40, label %41, label %42, !dbg !4697

41:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i64 undef, metadata !4639, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i64 %43, metadata !4640, metadata !DIExpression()), !dbg !4656
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #29, !dbg !4684
  br label %71

42:                                               ; preds = %38
  %43 = add i64 %33, -1, !dbg !4698
  call void @llvm.dbg.value(metadata i64 %39, metadata !4639, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i64 %43, metadata !4640, metadata !DIExpression()), !dbg !4656
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #29, !dbg !4684
  %44 = icmp eq i64 %43, 0, !dbg !4661
  br i1 %44, label %45, label %12, !dbg !4662

45:                                               ; preds = %42, %6, %31
  %46 = phi i64 [ %25, %31 ], [ %1, %6 ], [ %39, %42 ]
  call void @llvm.dbg.value(metadata i64 %46, metadata !4639, metadata !DIExpression()), !dbg !4656
  %47 = call i32 @fileno(%struct._IO_FILE* %0) #29, !dbg !4699
  call void @llvm.dbg.value(metadata i32 %47, metadata !4641, metadata !DIExpression()), !dbg !4656
  %48 = icmp sgt i32 %47, -1, !dbg !4700
  br i1 %48, label %49, label %54, !dbg !4701

49:                                               ; preds = %45
  %50 = call i64 @lseek(i32 %47, i64 0, i32 1) #29, !dbg !4702
  %51 = icmp sgt i64 %50, -1, !dbg !4703
  br i1 %51, label %52, label %54, !dbg !4704

52:                                               ; preds = %49
  %53 = call i32 @rpl_fseeko(%struct._IO_FILE* %0, i64 %46, i32 1) #29, !dbg !4705
  br label %71, !dbg !4707

54:                                               ; preds = %49, %45
  %55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0, !dbg !4708
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %55) #29, !dbg !4708
  call void @llvm.dbg.declare(metadata [4096 x i8]* %4, metadata !4647, metadata !DIExpression()), !dbg !4709
  br label %56, !dbg !4710

56:                                               ; preds = %63, %54
  %57 = phi i64 [ %46, %54 ], [ %62, %63 ], !dbg !4680
  call void @llvm.dbg.value(metadata i64 %57, metadata !4639, metadata !DIExpression()), !dbg !4656
  %58 = icmp ult i64 %57, 4096, !dbg !4711
  %59 = select i1 %58, i64 %57, i64 4096, !dbg !4711
  call void @llvm.dbg.value(metadata i64 %59, metadata !4653, metadata !DIExpression()), !dbg !4712
  %60 = call i64 @fread(i8* nonnull %55, i64 1, i64 %59, %struct._IO_FILE* %0), !dbg !4713
  %61 = icmp ult i64 %60, %59, !dbg !4715
  %62 = sub i64 %57, %59, !dbg !4716
  call void @llvm.dbg.value(metadata i64 undef, metadata !4639, metadata !DIExpression()), !dbg !4656
  br i1 %61, label %66, label %63

63:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i64 %62, metadata !4639, metadata !DIExpression()), !dbg !4656
  %64 = icmp eq i64 %62, 0, !dbg !4717
  br i1 %64, label %65, label %56, !dbg !4718, !llvm.loop !4719

65:                                               ; preds = %63
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %55) #29, !dbg !4721
  br label %71

66:                                               ; preds = %56
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %55) #29, !dbg !4721
  br label %67

67:                                               ; preds = %66, %37
  call void @llvm.dbg.label(metadata !4655), !dbg !4722
  %68 = call i32 @ferror(%struct._IO_FILE* %0) #29, !dbg !4723
  %69 = icmp ne i32 %68, 0, !dbg !4723
  %70 = sext i1 %69 to i32, !dbg !4725
  ret i32 %70, !dbg !4725

71:                                               ; preds = %27, %65, %41, %2, %52
  %72 = phi i32 [ %53, %52 ], [ 0, %2 ], [ 0, %41 ], [ 0, %65 ], [ 0, %27 ], !dbg !4656
  ret i32 %72, !dbg !4726
}

; Function Attrs: nofree nounwind
declare !dbg !4727 noundef i32 @fgetc(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind readonly
declare !dbg !4730 noundef i32 @ferror(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #28

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4731 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4735, metadata !DIExpression()), !dbg !4740
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4741
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #29, !dbg !4741
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4736, metadata !DIExpression()), !dbg !4742
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #29, !dbg !4743
  %5 = icmp eq i32 %4, 0, !dbg !4743
  br i1 %5, label %6, label %13, !dbg !4745

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4746
  %8 = load i16, i16* %7, align 16, !dbg !4746
  %9 = icmp eq i16 %8, 67, !dbg !4746
  br i1 %9, label %13, label %10, !dbg !4747

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.177, i64 0, i64 0), i64 6), !dbg !4748
  %12 = icmp ne i32 %11, 0, !dbg !4749
  br label %13, !dbg !4747

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4740
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #29, !dbg !4750
  ret i1 %14, !dbg !4750
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4751 {
  %1 = tail call i8* @nl_langinfo(i32 14) #29, !dbg !4755
  call void @llvm.dbg.value(metadata i8* %1, metadata !4754, metadata !DIExpression()), !dbg !4756
  %2 = icmp eq i8* %1, null, !dbg !4757
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.180, i64 0, i64 0), i8* %1, !dbg !4759
  call void @llvm.dbg.value(metadata i8* %3, metadata !4754, metadata !DIExpression()), !dbg !4756
  %4 = load i8, i8* %3, align 1, !dbg !4760, !tbaa !892
  %5 = icmp eq i8 %4, 0, !dbg !4764
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.181, i64 0, i64 0), i8* %3, !dbg !4765
  call void @llvm.dbg.value(metadata i8* %6, metadata !4754, metadata !DIExpression()), !dbg !4756
  ret i8* %6, !dbg !4766
}

; Function Attrs: nounwind
declare !dbg !4767 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4770 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4774, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.value(metadata i8* %1, metadata !4775, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.value(metadata i64 %2, metadata !4776, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.value(metadata i32 %0, metadata !4778, metadata !DIExpression()) #29, !dbg !4787
  call void @llvm.dbg.value(metadata i8* %1, metadata !4781, metadata !DIExpression()) #29, !dbg !4787
  call void @llvm.dbg.value(metadata i64 %2, metadata !4782, metadata !DIExpression()) #29, !dbg !4787
  call void @llvm.dbg.value(metadata i32 %0, metadata !4789, metadata !DIExpression()) #29, !dbg !4795
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #29, !dbg !4797
  call void @llvm.dbg.value(metadata i8* %4, metadata !4794, metadata !DIExpression()) #29, !dbg !4795
  call void @llvm.dbg.value(metadata i8* %4, metadata !4783, metadata !DIExpression()) #29, !dbg !4787
  %5 = icmp eq i8* %4, null, !dbg !4798
  br i1 %5, label %6, label %9, !dbg !4799

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4800
  br i1 %7, label %19, label %8, !dbg !4803

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4804, !tbaa !892
  br label %19, !dbg !4805

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #30, !dbg !4806
  call void @llvm.dbg.value(metadata i64 %10, metadata !4784, metadata !DIExpression()) #29, !dbg !4807
  %11 = icmp ult i64 %10, %2, !dbg !4808
  br i1 %11, label %12, label %14, !dbg !4810

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4811
  call void @llvm.dbg.value(metadata i8* %1, metadata !4813, metadata !DIExpression()) #29, !dbg !4818
  call void @llvm.dbg.value(metadata i8* %4, metadata !4816, metadata !DIExpression()) #29, !dbg !4818
  call void @llvm.dbg.value(metadata i64 %13, metadata !4817, metadata !DIExpression()) #29, !dbg !4818
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #29, !dbg !4820
  br label %19, !dbg !4821

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4822
  br i1 %15, label %19, label %16, !dbg !4825

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4826
  call void @llvm.dbg.value(metadata i8* %1, metadata !4813, metadata !DIExpression()) #29, !dbg !4828
  call void @llvm.dbg.value(metadata i8* %4, metadata !4816, metadata !DIExpression()) #29, !dbg !4828
  call void @llvm.dbg.value(metadata i64 %17, metadata !4817, metadata !DIExpression()) #29, !dbg !4828
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #29, !dbg !4830
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4831
  store i8 0, i8* %18, align 1, !dbg !4832, !tbaa !892
  br label %19, !dbg !4833

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4834
  ret i32 %20, !dbg !4835
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4836 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4838, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata i32 %0, metadata !4789, metadata !DIExpression()) #29, !dbg !4840
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #29, !dbg !4842
  call void @llvm.dbg.value(metadata i8* %2, metadata !4794, metadata !DIExpression()) #29, !dbg !4840
  ret i8* %2, !dbg !4843
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @freadahead(%struct._IO_FILE* nocapture readonly %0) local_unnamed_addr #11 !dbg !4844 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4882, metadata !DIExpression()), !dbg !4883
  %2 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4884
  %3 = load i8*, i8** %2, align 8, !dbg !4884, !tbaa !1132
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4886
  %5 = load i8*, i8** %4, align 8, !dbg !4886, !tbaa !4402
  %6 = icmp ugt i8* %3, %5, !dbg !4887
  br i1 %6, label %30, label %7, !dbg !4888

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4889
  %9 = load i8*, i8** %8, align 8, !dbg !4889, !tbaa !1117
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4890
  %11 = load i8*, i8** %10, align 8, !dbg !4890, !tbaa !1114
  %12 = ptrtoint i8* %9 to i64, !dbg !4891
  %13 = ptrtoint i8* %11 to i64, !dbg !4891
  %14 = sub i64 %12, %13, !dbg !4891
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4892
  %16 = load i32, i32* %15, align 8, !dbg !4892, !tbaa !1265
  %17 = and i32 %16, 256, !dbg !4893
  %18 = icmp eq i32 %17, 0, !dbg !4893
  br i1 %18, label %27, label %19, !dbg !4894

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 11, !dbg !4895
  %21 = load i8*, i8** %20, align 8, !dbg !4895, !tbaa !4896
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4897
  %23 = load i8*, i8** %22, align 8, !dbg !4897, !tbaa !4468
  %24 = ptrtoint i8* %21 to i64, !dbg !4898
  %25 = ptrtoint i8* %23 to i64, !dbg !4898
  %26 = sub i64 %24, %25, !dbg !4898
  br label %27, !dbg !4894

27:                                               ; preds = %7, %19
  %28 = phi i64 [ %26, %19 ], [ 0, %7 ], !dbg !4894
  %29 = add nsw i64 %14, %28, !dbg !4899
  br label %30, !dbg !4900

30:                                               ; preds = %1, %27
  %31 = phi i64 [ %29, %27 ], [ 0, %1 ], !dbg !4883
  ret i64 %31, !dbg !4901
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
attributes #10 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree nounwind }
attributes #19 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #23 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #24 = { nofree nosync nounwind willreturn }
attributes #25 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { inaccessiblemem_or_argmemonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #27 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #28 = { nofree nounwind readonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #29 = { nounwind }
attributes #30 = { nounwind readonly willreturn }
attributes #31 = { noreturn nounwind }
attributes #32 = { noreturn }
attributes #33 = { nounwind readnone willreturn }
attributes #34 = { cold }

!llvm.dbg.cu = !{!2, !122, !199, !205, !212, !280, !283, !286, !218, !224, !292, !274, !299, !310, !312, !314, !316, !318, !320, !323, !325, !328, !330, !332, !334, !723, !725}
!llvm.ident = !{!727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727, !727}
!llvm.module.flags = !{!728, !729, !730, !731, !732}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "operating_mode", scope: !2, file: !3, line: 87, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !40, globals: !51, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/cut.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !11, !17, !31}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "operating_mode", file: !3, line: 76, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "undefined_mode", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "byte_mode", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "field_mode", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 33, baseType: !6, size: 32, elements: !13)
!12 = !DIFile(filename: "src/set-fields.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "SETFLD_ALLOW_DASH", value: 1, isUnsigned: true)
!15 = !DIEnumerator(name: "SETFLD_COMPLEMENT", value: 2, isUnsigned: true)
!16 = !DIEnumerator(name: "SETFLD_ERRMSG_USE_POS", value: 4, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !18, line: 32, baseType: !6, size: 32, elements: !19)
!18 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30}
!20 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!23 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!24 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!25 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!26 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!27 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!28 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!29 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!30 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !32, line: 45, baseType: !6, size: 32, elements: !33)
!32 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!33 = !{!34, !35, !36, !37, !38, !39}
!34 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!35 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!36 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!37 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!38 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!39 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!40 = !{!41, !43, !44, !47, !49, !50}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 46, baseType: !46)
!45 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!46 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !{!52, !0, !70, !72, !74, !76, !78, !80, !82, !84, !98, !100, !111, !113}
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "dummy", scope: !54, file: !3, line: 586, type: !67, isLocal: true, isDefinition: true)
!54 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 480, type: !55, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !59)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !57, !58}
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!59 = !{!60, !61, !62, !63, !65, !66}
!60 = !DILocalVariable(name: "argc", arg: 1, scope: !54, file: !3, line: 480, type: !57)
!61 = !DILocalVariable(name: "argv", arg: 2, scope: !54, file: !3, line: 480, type: !58)
!62 = !DILocalVariable(name: "optc", scope: !54, file: !3, line: 482, type: !57)
!63 = !DILocalVariable(name: "ok", scope: !54, file: !3, line: 483, type: !64)
!64 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!65 = !DILocalVariable(name: "delim_specified", scope: !54, file: !3, line: 484, type: !64)
!66 = !DILocalVariable(name: "spec_list_string", scope: !54, file: !3, line: 485, type: !41)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 16, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 2)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "suppress_non_delimited", scope: !2, file: !3, line: 92, type: !64, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "complement", scope: !2, file: !3, line: 96, type: !64, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "delim", scope: !2, file: !3, line: 99, type: !50, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "output_delimiter_specified", scope: !2, file: !3, line: 105, type: !64, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "output_delimiter_length", scope: !2, file: !3, line: 108, type: !44, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "output_delimiter_string", scope: !2, file: !3, line: 112, type: !41, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 115, type: !64, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 125, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 2816, elements: !96)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !89, line: 50, size: 256, elements: !90)
!89 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!90 = !{!91, !92, !93, !95}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !88, file: !89, line: 52, baseType: !47, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !88, file: !89, line: 55, baseType: !57, size: 32, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !88, file: !89, line: 56, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !88, file: !89, line: 57, baseType: !57, size: 32, offset: 192)
!96 = !{!97}
!97 = !DISubrange(count: 11)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "line_delim", scope: !2, file: !3, line: 102, type: !50, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "current_rp", scope: !2, file: !3, line: 62, type: !102, isLocal: true, isDefinition: true)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "field_range_pair", file: !12, line: 20, size: 128, elements: !104)
!104 = !{!105, !110}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "lo", scope: !103, file: !12, line: 22, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !107, line: 102, baseType: !108)
!107 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !109, line: 73, baseType: !46)
!109 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!110 = !DIDerivedType(tag: DW_TAG_member, name: "hi", scope: !103, file: !12, line: 23, baseType: !106, size: 64, offset: 64)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "field_1_buffer", scope: !2, file: !3, line: 71, type: !41, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "field_1_bufsize", scope: !2, file: !3, line: 74, type: !44, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!116 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!117 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!118 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!119 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "n_frp", scope: !122, file: !123, line: 31, type: !44, isLocal: false, isDefinition: true)
!122 = distinct !DICompileUnit(language: DW_LANG_C99, file: !123, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !124, retainedTypes: !153, globals: !162, splitDebugInlining: false, nameTableKind: None)
!123 = !DIFile(filename: "src/set-fields.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!124 = !{!11, !125, !140}
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !126, line: 46, baseType: !6, size: 32, elements: !127)
!126 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139}
!128 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!129 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!130 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!131 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!132 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!133 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!134 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!135 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!136 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!138 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!139 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !142, file: !141, line: 186, baseType: !6, size: 32, elements: !151)
!141 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!142 = distinct !DISubprogram(name: "x2nrealloc", scope: !141, file: !141, line: 174, type: !143, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !122, retainedNodes: !146)
!143 = !DISubroutineType(types: !144)
!144 = !{!43, !43, !145, !44}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!146 = !{!147, !148, !149, !150}
!147 = !DILocalVariable(name: "p", arg: 1, scope: !142, file: !141, line: 174, type: !43)
!148 = !DILocalVariable(name: "pn", arg: 2, scope: !142, file: !141, line: 174, type: !145)
!149 = !DILocalVariable(name: "s", arg: 3, scope: !142, file: !141, line: 174, type: !44)
!150 = !DILocalVariable(name: "n", scope: !142, file: !141, line: 176, type: !44)
!151 = !{!152}
!152 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!153 = !{!57, !154, !6, !155, !43, !106, !44, !156}
!154 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "field_range_pair", file: !12, line: 20, size: 128, elements: !159)
!159 = !{!160, !161}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "lo", scope: !158, file: !12, line: 22, baseType: !106, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "hi", scope: !158, file: !12, line: 23, baseType: !106, size: 64, offset: 64)
!162 = !{!163, !192, !120, !195}
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "num_start", scope: !165, file: !123, line: 239, type: !47, isLocal: true, isDefinition: true)
!165 = distinct !DISubprogram(name: "set_fields", scope: !123, file: !123, line: 138, type: !166, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !122, retainedNodes: !168)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !47, !6}
!168 = !{!169, !170, !171, !172, !173, !174, !175, !176, !177, !185, !186, !188}
!169 = !DILocalVariable(name: "fieldstr", arg: 1, scope: !165, file: !123, line: 138, type: !47)
!170 = !DILocalVariable(name: "options", arg: 2, scope: !165, file: !123, line: 138, type: !6)
!171 = !DILocalVariable(name: "initial", scope: !165, file: !123, line: 140, type: !106)
!172 = !DILocalVariable(name: "value", scope: !165, file: !123, line: 141, type: !106)
!173 = !DILocalVariable(name: "lhs_specified", scope: !165, file: !123, line: 142, type: !64)
!174 = !DILocalVariable(name: "rhs_specified", scope: !165, file: !123, line: 143, type: !64)
!175 = !DILocalVariable(name: "dash_found", scope: !165, file: !123, line: 144, type: !64)
!176 = !DILocalVariable(name: "in_digits", scope: !165, file: !123, line: 146, type: !64)
!177 = !DILocalVariable(name: "len", scope: !178, file: !123, line: 256, type: !44)
!178 = distinct !DILexicalBlock(scope: !179, file: !123, line: 252, column: 13)
!179 = distinct !DILexicalBlock(scope: !180, file: !123, line: 250, column: 15)
!180 = distinct !DILexicalBlock(scope: !181, file: !123, line: 236, column: 9)
!181 = distinct !DILexicalBlock(scope: !182, file: !123, line: 235, column: 16)
!182 = distinct !DILexicalBlock(scope: !183, file: !123, line: 181, column: 16)
!183 = distinct !DILexicalBlock(scope: !184, file: !123, line: 161, column: 11)
!184 = distinct !DILexicalBlock(scope: !165, file: !123, line: 160, column: 5)
!185 = !DILocalVariable(name: "bad_num", scope: !178, file: !123, line: 257, type: !41)
!186 = !DILocalVariable(name: "i", scope: !187, file: !123, line: 286, type: !44)
!187 = distinct !DILexicalBlock(scope: !165, file: !123, line: 286, column: 3)
!188 = !DILocalVariable(name: "j", scope: !189, file: !123, line: 288, type: !44)
!189 = distinct !DILexicalBlock(scope: !190, file: !123, line: 288, column: 7)
!190 = distinct !DILexicalBlock(scope: !191, file: !123, line: 287, column: 5)
!191 = distinct !DILexicalBlock(scope: !187, file: !123, line: 286, column: 3)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "frp", scope: !122, file: !123, line: 28, type: !194, isLocal: false, isDefinition: true)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "n_frp_allocated", scope: !122, file: !123, line: 34, type: !44, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "Version", scope: !199, file: !200, line: 2, type: !47, isLocal: false, isDefinition: true)
!199 = distinct !DICompileUnit(language: DW_LANG_C99, file: !200, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, globals: !202, splitDebugInlining: false, nameTableKind: None)
!200 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!201 = !{}
!202 = !{!197}
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "file_name", scope: !205, file: !206, line: 46, type: !47, isLocal: true, isDefinition: true)
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, globals: !207, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!207 = !{!203, !208}
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !205, file: !206, line: 56, type: !64, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "exit_failure", scope: !212, file: !213, line: 24, type: !215, isLocal: false, isDefinition: true)
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, globals: !214, splitDebugInlining: false, nameTableKind: None)
!213 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!214 = !{!210}
!215 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !57)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "program_name", scope: !218, file: !219, line: 33, type: !47, isLocal: false, isDefinition: true)
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, retainedTypes: !220, globals: !221, splitDebugInlining: false, nameTableKind: None)
!219 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!220 = !{!43, !41}
!221 = !{!216}
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !224, file: !225, line: 85, type: !270, isLocal: false, isDefinition: true)
!224 = distinct !DICompileUnit(language: DW_LANG_C99, file: !225, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !226, retainedTypes: !232, globals: !233, splitDebugInlining: false, nameTableKind: None)
!225 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!226 = !{!17, !227, !125}
!227 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !18, line: 242, baseType: !6, size: 32, elements: !228)
!228 = !{!229, !230, !231}
!229 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!230 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!231 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!232 = !{!57, !154, !44, !41}
!233 = !{!222, !234, !240, !252, !254, !259, !266, !268}
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !224, file: !225, line: 101, type: !236, isLocal: false, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 320, elements: !238)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!238 = !{!239}
!239 = !DISubrange(count: 10)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !224, file: !225, line: 1052, type: !242, isLocal: false, isDefinition: true)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !225, line: 65, size: 448, elements: !243)
!243 = !{!244, !245, !246, !250, !251}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !242, file: !225, line: 68, baseType: !17, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !242, file: !225, line: 71, baseType: !57, size: 32, offset: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !242, file: !225, line: 75, baseType: !247, size: 256, offset: 64)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 8)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !242, file: !225, line: 78, baseType: !47, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !242, file: !225, line: 81, baseType: !47, size: 64, offset: 384)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !224, file: !225, line: 116, type: !242, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "slot0", scope: !224, file: !225, line: 842, type: !256, isLocal: true, isDefinition: true)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2048, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 256)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(name: "slotvec", scope: !224, file: !225, line: 845, type: !261, isLocal: true, isDefinition: true)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !225, line: 834, size: 128, elements: !263)
!263 = !{!264, !265}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !262, file: !225, line: 836, baseType: !44, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !262, file: !225, line: 837, baseType: !41, size: 64, offset: 64)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "nslots", scope: !224, file: !225, line: 843, type: !57, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(name: "slotvec0", scope: !224, file: !225, line: 844, type: !262, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 704, elements: !96)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !274, file: !275, line: 26, type: !277, isLocal: false, isDefinition: true)
!274 = distinct !DICompileUnit(language: DW_LANG_C99, file: !275, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, globals: !276, splitDebugInlining: false, nameTableKind: None)
!275 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!276 = !{!272}
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 376, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 47)
!280 = distinct !DICompileUnit(language: DW_LANG_C99, file: !281, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !282, splitDebugInlining: false, nameTableKind: None)
!281 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!282 = !{!31}
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, retainedTypes: !285, splitDebugInlining: false, nameTableKind: None)
!284 = !DIFile(filename: "lib/getndelim2.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!285 = !{!49}
!286 = distinct !DICompileUnit(language: DW_LANG_C99, file: !287, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, retainedTypes: !288, splitDebugInlining: false, nameTableKind: None)
!287 = !DIFile(filename: "lib/memchr2.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!288 = !{!50, !289, !43, !290}
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !107, line: 90, baseType: !46)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!292 = distinct !DICompileUnit(language: DW_LANG_C99, file: !293, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !294, retainedTypes: !298, splitDebugInlining: false, nameTableKind: None)
!293 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!294 = !{!295}
!295 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !293, line: 40, baseType: !6, size: 32, elements: !296)
!296 = !{!297}
!297 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!298 = !{!43}
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !301, retainedTypes: !309, splitDebugInlining: false, nameTableKind: None)
!300 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!301 = !{!302}
!302 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !303, file: !141, line: 186, baseType: !6, size: 32, elements: !151)
!303 = distinct !DISubprogram(name: "x2nrealloc", scope: !141, file: !141, line: 174, type: !143, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !304)
!304 = !{!305, !306, !307, !308}
!305 = !DILocalVariable(name: "p", arg: 1, scope: !303, file: !141, line: 174, type: !43)
!306 = !DILocalVariable(name: "pn", arg: 2, scope: !303, file: !141, line: 174, type: !145)
!307 = !DILocalVariable(name: "s", arg: 3, scope: !303, file: !141, line: 174, type: !44)
!308 = !DILocalVariable(name: "n", scope: !303, file: !141, line: 176, type: !44)
!309 = !{!44, !41, !43}
!310 = distinct !DICompileUnit(language: DW_LANG_C99, file: !311, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, splitDebugInlining: false, nameTableKind: None)
!311 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!312 = distinct !DICompileUnit(language: DW_LANG_C99, file: !313, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, splitDebugInlining: false, nameTableKind: None)
!313 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!314 = distinct !DICompileUnit(language: DW_LANG_C99, file: !315, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, retainedTypes: !298, splitDebugInlining: false, nameTableKind: None)
!315 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!316 = distinct !DICompileUnit(language: DW_LANG_C99, file: !317, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, splitDebugInlining: false, nameTableKind: None)
!317 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!318 = distinct !DICompileUnit(language: DW_LANG_C99, file: !319, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, retainedTypes: !298, splitDebugInlining: false, nameTableKind: None)
!319 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!320 = distinct !DICompileUnit(language: DW_LANG_C99, file: !321, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, retainedTypes: !322, splitDebugInlining: false, nameTableKind: None)
!321 = !DIFile(filename: "lib/freadptr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!322 = !{!47}
!323 = distinct !DICompileUnit(language: DW_LANG_C99, file: !324, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, retainedTypes: !298, splitDebugInlining: false, nameTableKind: None)
!324 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!325 = distinct !DICompileUnit(language: DW_LANG_C99, file: !326, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, retainedTypes: !327, splitDebugInlining: false, nameTableKind: None)
!326 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!327 = !{!44}
!328 = distinct !DICompileUnit(language: DW_LANG_C99, file: !329, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, splitDebugInlining: false, nameTableKind: None)
!329 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!330 = distinct !DICompileUnit(language: DW_LANG_C99, file: !331, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, retainedTypes: !298, splitDebugInlining: false, nameTableKind: None)
!331 = !DIFile(filename: "lib/freadseek.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!332 = distinct !DICompileUnit(language: DW_LANG_C99, file: !333, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, splitDebugInlining: false, nameTableKind: None)
!333 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!334 = distinct !DICompileUnit(language: DW_LANG_C99, file: !335, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !336, retainedTypes: !298, splitDebugInlining: false, nameTableKind: None)
!335 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!336 = !{!337}
!337 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !338, line: 41, baseType: !6, size: 32, elements: !339)
!338 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!339 = !{!340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722}
!340 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!341 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!342 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!343 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!344 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!345 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!346 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!347 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!348 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!349 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!350 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!351 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!352 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!353 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!354 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!355 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!356 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!357 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!358 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!359 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!360 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!361 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!362 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!363 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!364 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!365 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!366 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!367 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!368 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!369 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!370 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!371 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!372 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!373 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!374 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!375 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!376 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!377 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!378 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!379 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!380 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!381 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!382 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!383 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!384 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!385 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!386 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!387 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!388 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!389 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!448 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!451 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!452 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!453 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!454 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!455 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!456 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!457 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!458 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!459 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!460 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!461 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!462 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!535 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!608 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!609 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!610 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!611 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!612 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!613 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!614 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!615 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!616 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!617 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!618 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!619 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!620 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!621 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!622 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!624 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!625 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!626 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!627 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!628 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!629 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!655 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!656 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!657 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!658 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!659 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!664 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!665 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!666 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!667 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!723 = distinct !DICompileUnit(language: DW_LANG_C99, file: !724, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, retainedTypes: !298, splitDebugInlining: false, nameTableKind: None)
!724 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!725 = distinct !DICompileUnit(language: DW_LANG_C99, file: !726, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, splitDebugInlining: false, nameTableKind: None)
!726 = !DIFile(filename: "lib/freadahead.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!727 = !{!"clang version 12.0.1"}
!728 = !{i32 7, !"Dwarf Version", i32 4}
!729 = !{i32 2, !"Debug Info Version", i32 3}
!730 = !{i32 1, !"wchar_size", i32 4}
!731 = !{i32 7, !"PIC Level", i32 2}
!732 = !{i32 7, !"PIE Level", i32 2}
!733 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 141, type: !734, scopeLine: 142, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !736)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !57}
!736 = !{!737}
!737 = !DILocalVariable(name: "status", arg: 1, scope: !733, file: !3, line: 141, type: !57)
!738 = !DILocation(line: 0, scope: !733)
!739 = !DILocation(line: 143, column: 14, scope: !740)
!740 = distinct !DILexicalBlock(scope: !733, file: !3, line: 143, column: 7)
!741 = !DILocation(line: 143, column: 7, scope: !733)
!742 = !DILocation(line: 144, column: 5, scope: !743)
!743 = distinct !DILexicalBlock(scope: !740, file: !3, line: 144, column: 5)
!744 = !{!745, !745, i64 0}
!745 = !{!"any pointer", !746, i64 0}
!746 = !{!"omnipotent char", !747, i64 0}
!747 = !{!"Simple C/C++ TBAA"}
!748 = !DILocation(line: 147, column: 7, scope: !749)
!749 = distinct !DILexicalBlock(scope: !740, file: !3, line: 146, column: 5)
!750 = !DILocation(line: 151, column: 7, scope: !749)
!751 = !DILocation(line: 583, column: 3, scope: !752, inlinedAt: !756)
!752 = distinct !DISubprogram(name: "emit_stdin_note", scope: !753, file: !753, line: 581, type: !754, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !201)
!753 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!754 = !DISubroutineType(types: !755)
!755 = !{null}
!756 = distinct !DILocation(line: 155, column: 7, scope: !749)
!757 = !DILocation(line: 590, column: 3, scope: !758, inlinedAt: !759)
!758 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !753, file: !753, line: 588, type: !754, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !201)
!759 = distinct !DILocation(line: 156, column: 7, scope: !749)
!760 = !DILocation(line: 158, column: 7, scope: !749)
!761 = !DILocation(line: 163, column: 7, scope: !749)
!762 = !DILocation(line: 169, column: 7, scope: !749)
!763 = !DILocation(line: 173, column: 7, scope: !749)
!764 = !DILocation(line: 178, column: 7, scope: !749)
!765 = !DILocation(line: 181, column: 7, scope: !749)
!766 = !DILocation(line: 182, column: 7, scope: !749)
!767 = !DILocation(line: 183, column: 7, scope: !749)
!768 = !DILocation(line: 189, column: 7, scope: !749)
!769 = !DILocalVariable(name: "program", arg: 1, scope: !770, file: !753, line: 634, type: !47)
!770 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !753, file: !753, line: 634, type: !771, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !47}
!773 = !{!769, !774, !783, !784, !786}
!774 = !DILocalVariable(name: "infomap", scope: !770, file: !753, line: 636, type: !775)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !776, size: 896, elements: !781)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !770, file: !753, line: 636, size: 128, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !777, file: !753, line: 636, baseType: !47, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !777, file: !753, line: 636, baseType: !47, size: 64, offset: 64)
!781 = !{!782}
!782 = !DISubrange(count: 7)
!783 = !DILocalVariable(name: "node", scope: !770, file: !753, line: 646, type: !47)
!784 = !DILocalVariable(name: "map_prog", scope: !770, file: !753, line: 647, type: !785)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!786 = !DILocalVariable(name: "lc_messages", scope: !770, file: !753, line: 659, type: !47)
!787 = !DILocation(line: 0, scope: !770, inlinedAt: !788)
!788 = distinct !DILocation(line: 197, column: 7, scope: !749)
!789 = !DILocation(line: 636, column: 3, scope: !770, inlinedAt: !788)
!790 = !DILocation(line: 636, column: 67, scope: !770, inlinedAt: !788)
!791 = !DILocation(line: 647, column: 36, scope: !770, inlinedAt: !788)
!792 = !DILocation(line: 649, column: 3, scope: !770, inlinedAt: !788)
!793 = !DILocation(line: 649, column: 33, scope: !770, inlinedAt: !788)
!794 = !DILocation(line: 650, column: 13, scope: !770, inlinedAt: !788)
!795 = !DILocation(line: 649, column: 20, scope: !770, inlinedAt: !788)
!796 = !{!797, !745, i64 0}
!797 = !{!"infomap", !745, i64 0, !745, i64 8}
!798 = !DILocation(line: 649, column: 10, scope: !770, inlinedAt: !788)
!799 = !DILocation(line: 649, column: 28, scope: !770, inlinedAt: !788)
!800 = distinct !{!800, !792, !794, !801}
!801 = !{!"llvm.loop.mustprogress"}
!802 = !DILocation(line: 652, column: 17, scope: !803, inlinedAt: !788)
!803 = distinct !DILexicalBlock(scope: !770, file: !753, line: 652, column: 7)
!804 = !{!797, !745, i64 8}
!805 = !DILocation(line: 652, column: 7, scope: !803, inlinedAt: !788)
!806 = !DILocation(line: 652, column: 7, scope: !770, inlinedAt: !788)
!807 = !DILocation(line: 655, column: 3, scope: !770, inlinedAt: !788)
!808 = !DILocation(line: 659, column: 29, scope: !770, inlinedAt: !788)
!809 = !DILocation(line: 660, column: 7, scope: !810, inlinedAt: !788)
!810 = distinct !DILexicalBlock(scope: !770, file: !753, line: 660, column: 7)
!811 = !DILocation(line: 660, column: 19, scope: !810, inlinedAt: !788)
!812 = !DILocation(line: 660, column: 22, scope: !810, inlinedAt: !788)
!813 = !DILocation(line: 660, column: 7, scope: !770, inlinedAt: !788)
!814 = !DILocation(line: 666, column: 7, scope: !815, inlinedAt: !788)
!815 = distinct !DILexicalBlock(scope: !810, file: !753, line: 661, column: 5)
!816 = !DILocation(line: 668, column: 5, scope: !815, inlinedAt: !788)
!817 = !DILocation(line: 669, column: 3, scope: !770, inlinedAt: !788)
!818 = !DILocation(line: 671, column: 3, scope: !770, inlinedAt: !788)
!819 = !DILocation(line: 673, column: 1, scope: !770, inlinedAt: !788)
!820 = !DILocation(line: 199, column: 3, scope: !733)
!821 = !DISubprogram(name: "dcgettext", scope: !822, file: !822, line: 51, type: !823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!822 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!823 = !DISubroutineType(types: !824)
!824 = !{!41, !47, !47, !57}
!825 = !DISubprogram(name: "fputs_unlocked", scope: !826, file: !826, line: 667, type: !827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!826 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!827 = !DISubroutineType(types: !828)
!828 = !{!57, !47, !829}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !831, line: 49, size: 1728, elements: !832)
!831 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!832 = !{!833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !848, !849, !850, !851, !854, !855, !857, !861, !864, !866, !869, !872, !873, !874, !875, !876}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !830, file: !831, line: 51, baseType: !57, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !830, file: !831, line: 54, baseType: !41, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !830, file: !831, line: 55, baseType: !41, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !830, file: !831, line: 56, baseType: !41, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !830, file: !831, line: 57, baseType: !41, size: 64, offset: 256)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !830, file: !831, line: 58, baseType: !41, size: 64, offset: 320)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !830, file: !831, line: 59, baseType: !41, size: 64, offset: 384)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !830, file: !831, line: 60, baseType: !41, size: 64, offset: 448)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !830, file: !831, line: 61, baseType: !41, size: 64, offset: 512)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !830, file: !831, line: 64, baseType: !41, size: 64, offset: 576)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !830, file: !831, line: 65, baseType: !41, size: 64, offset: 640)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !830, file: !831, line: 66, baseType: !41, size: 64, offset: 704)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !830, file: !831, line: 68, baseType: !846, size: 64, offset: 768)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !831, line: 36, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !830, file: !831, line: 70, baseType: !829, size: 64, offset: 832)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !830, file: !831, line: 72, baseType: !57, size: 32, offset: 896)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !830, file: !831, line: 73, baseType: !57, size: 32, offset: 928)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !830, file: !831, line: 74, baseType: !852, size: 64, offset: 960)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !109, line: 152, baseType: !853)
!853 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !830, file: !831, line: 77, baseType: !154, size: 16, offset: 1024)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !830, file: !831, line: 78, baseType: !856, size: 8, offset: 1040)
!856 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !830, file: !831, line: 79, baseType: !858, size: 8, offset: 1048)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8, elements: !859)
!859 = !{!860}
!860 = !DISubrange(count: 1)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !830, file: !831, line: 81, baseType: !862, size: 64, offset: 1088)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !831, line: 43, baseType: null)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !830, file: !831, line: 89, baseType: !865, size: 64, offset: 1152)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !109, line: 153, baseType: !853)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !830, file: !831, line: 91, baseType: !867, size: 64, offset: 1216)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !831, line: 37, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !830, file: !831, line: 92, baseType: !870, size: 64, offset: 1280)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !831, line: 38, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !830, file: !831, line: 93, baseType: !829, size: 64, offset: 1344)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !830, file: !831, line: 94, baseType: !43, size: 64, offset: 1408)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !830, file: !831, line: 95, baseType: !44, size: 64, offset: 1472)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !830, file: !831, line: 96, baseType: !57, size: 32, offset: 1536)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !830, file: !831, line: 98, baseType: !877, size: 160, offset: 1568)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 160, elements: !878)
!878 = !{!879}
!879 = !DISubrange(count: 20)
!880 = !DISubprogram(name: "setlocale", scope: !881, file: !881, line: 122, type: !882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!881 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!882 = !DISubroutineType(types: !883)
!883 = !{!41, !57, !47}
!884 = !DILocation(line: 0, scope: !54)
!885 = !DILocation(line: 488, column: 21, scope: !54)
!886 = !DILocation(line: 488, column: 3, scope: !54)
!887 = !DILocation(line: 489, column: 3, scope: !54)
!888 = !DILocation(line: 490, column: 3, scope: !54)
!889 = !DILocation(line: 491, column: 3, scope: !54)
!890 = !DILocation(line: 493, column: 3, scope: !54)
!891 = !DILocation(line: 495, column: 18, scope: !54)
!892 = !{!746, !746, i64 0}
!893 = !DILocation(line: 498, column: 26, scope: !54)
!894 = !DILocation(line: 500, column: 9, scope: !54)
!895 = !DILocation(line: 501, column: 19, scope: !54)
!896 = !DILocation(line: 503, column: 3, scope: !54)
!897 = !DILocation(line: 484, column: 8, scope: !54)
!898 = !DILocation(line: 503, column: 18, scope: !54)
!899 = distinct !{!899, !896, !900, !801}
!900 = !DILocation(line: 564, column: 5, scope: !54)
!901 = !DILocation(line: 510, column: 15, scope: !902)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 510, column: 15)
!903 = distinct !DILexicalBlock(scope: !904, file: !3, line: 506, column: 9)
!904 = distinct !DILexicalBlock(scope: !54, file: !3, line: 504, column: 5)
!905 = !DILocation(line: 510, column: 30, scope: !902)
!906 = !DILocation(line: 510, column: 15, scope: !903)
!907 = !DILocation(line: 511, column: 13, scope: !908)
!908 = distinct !DILexicalBlock(scope: !902, file: !3, line: 511, column: 13)
!909 = !DILocation(line: 512, column: 26, scope: !903)
!910 = !DILocation(line: 513, column: 30, scope: !903)
!911 = !DILocation(line: 514, column: 11, scope: !903)
!912 = !DILocation(line: 518, column: 15, scope: !913)
!913 = distinct !DILexicalBlock(scope: !903, file: !3, line: 518, column: 15)
!914 = !DILocation(line: 518, column: 30, scope: !913)
!915 = !DILocation(line: 518, column: 15, scope: !903)
!916 = !DILocation(line: 519, column: 13, scope: !917)
!917 = distinct !DILexicalBlock(scope: !913, file: !3, line: 519, column: 13)
!918 = !DILocation(line: 520, column: 26, scope: !903)
!919 = !DILocation(line: 521, column: 30, scope: !903)
!920 = !DILocation(line: 522, column: 11, scope: !903)
!921 = !DILocation(line: 527, column: 15, scope: !922)
!922 = distinct !DILexicalBlock(scope: !903, file: !3, line: 527, column: 15)
!923 = !DILocation(line: 527, column: 25, scope: !922)
!924 = !DILocation(line: 527, column: 33, scope: !922)
!925 = !DILocation(line: 527, column: 36, scope: !922)
!926 = !DILocation(line: 527, column: 46, scope: !922)
!927 = !DILocation(line: 527, column: 15, scope: !903)
!928 = !DILocation(line: 528, column: 13, scope: !929)
!929 = distinct !DILexicalBlock(scope: !922, file: !3, line: 528, column: 13)
!930 = !DILocation(line: 529, column: 17, scope: !903)
!931 = !DILocation(line: 531, column: 11, scope: !903)
!932 = !DILocation(line: 534, column: 38, scope: !903)
!933 = !DILocation(line: 537, column: 38, scope: !903)
!934 = !DILocation(line: 537, column: 48, scope: !903)
!935 = !DILocation(line: 538, column: 44, scope: !903)
!936 = !DILocation(line: 537, column: 35, scope: !903)
!937 = !{!938, !938, i64 0}
!938 = !{!"long", !746, i64 0}
!939 = !DILocation(line: 539, column: 37, scope: !903)
!940 = !DILocation(line: 539, column: 35, scope: !903)
!941 = !DILocation(line: 540, column: 11, scope: !903)
!942 = !DILocation(line: 546, column: 34, scope: !903)
!943 = !DILocation(line: 547, column: 11, scope: !903)
!944 = !DILocation(line: 550, column: 22, scope: !903)
!945 = !DILocation(line: 551, column: 11, scope: !903)
!946 = !DILocation(line: 554, column: 22, scope: !903)
!947 = !DILocation(line: 555, column: 11, scope: !903)
!948 = !DILocation(line: 557, column: 9, scope: !903)
!949 = !DILocation(line: 559, column: 9, scope: !903)
!950 = !DILocation(line: 562, column: 11, scope: !903)
!951 = !DILocation(line: 566, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !54, file: !3, line: 566, column: 7)
!953 = !DILocation(line: 566, column: 22, scope: !952)
!954 = !DILocation(line: 566, column: 7, scope: !54)
!955 = !DILocation(line: 567, column: 5, scope: !956)
!956 = distinct !DILexicalBlock(scope: !952, file: !3, line: 567, column: 5)
!957 = !DILocation(line: 569, column: 7, scope: !958)
!958 = distinct !DILexicalBlock(scope: !54, file: !3, line: 569, column: 7)
!959 = !DILocation(line: 569, column: 23, scope: !958)
!960 = !DILocation(line: 570, column: 5, scope: !961)
!961 = distinct !DILexicalBlock(scope: !958, file: !3, line: 570, column: 5)
!962 = !DILocation(line: 573, column: 7, scope: !963)
!963 = distinct !DILexicalBlock(scope: !54, file: !3, line: 573, column: 7)
!964 = !DILocation(line: 573, column: 30, scope: !963)
!965 = !DILocation(line: 574, column: 5, scope: !966)
!966 = distinct !DILexicalBlock(scope: !963, file: !3, line: 574, column: 5)
!967 = !DILocation(line: 578, column: 33, scope: !54)
!968 = !DILocation(line: 578, column: 17, scope: !54)
!969 = !DILocation(line: 579, column: 18, scope: !54)
!970 = !DILocation(line: 579, column: 15, scope: !54)
!971 = !DILocation(line: 577, column: 3, scope: !54)
!972 = !DILocation(line: 581, column: 7, scope: !54)
!973 = !DILocation(line: 582, column: 11, scope: !974)
!974 = distinct !DILexicalBlock(scope: !54, file: !3, line: 581, column: 7)
!975 = !DILocation(line: 582, column: 5, scope: !974)
!976 = !DILocation(line: 584, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !54, file: !3, line: 584, column: 7)
!978 = !DILocation(line: 584, column: 31, scope: !977)
!979 = !DILocation(line: 584, column: 7, scope: !54)
!980 = !DILocation(line: 587, column: 18, scope: !981)
!981 = distinct !DILexicalBlock(scope: !977, file: !3, line: 585, column: 5)
!982 = !DILocation(line: 587, column: 16, scope: !981)
!983 = !DILocation(line: 588, column: 16, scope: !981)
!984 = !DILocation(line: 589, column: 31, scope: !981)
!985 = !DILocation(line: 590, column: 31, scope: !981)
!986 = !DILocation(line: 591, column: 5, scope: !981)
!987 = !DILocation(line: 593, column: 7, scope: !988)
!988 = distinct !DILexicalBlock(scope: !54, file: !3, line: 593, column: 7)
!989 = !{!990, !990, i64 0}
!990 = !{!"int", !746, i64 0}
!991 = !DILocation(line: 593, column: 14, scope: !988)
!992 = !DILocation(line: 593, column: 7, scope: !54)
!993 = !DILocation(line: 596, column: 28, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !3, line: 596, column: 5)
!995 = distinct !DILexicalBlock(scope: !988, file: !3, line: 596, column: 5)
!996 = !DILocation(line: 596, column: 5, scope: !995)
!997 = !DILocation(line: 594, column: 10, scope: !988)
!998 = !DILocation(line: 594, column: 8, scope: !988)
!999 = !DILocation(line: 594, column: 5, scope: !988)
!1000 = !DILocation(line: 597, column: 23, scope: !994)
!1001 = !DILocation(line: 597, column: 13, scope: !994)
!1002 = !DILocation(line: 597, column: 10, scope: !994)
!1003 = !DILocation(line: 596, column: 42, scope: !994)
!1004 = distinct !{!1004, !996, !1005, !801}
!1005 = !DILocation(line: 597, column: 35, scope: !995)
!1006 = !DILocation(line: 0, scope: !988)
!1007 = !DILocation(line: 600, column: 7, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !54, file: !3, line: 600, column: 7)
!1009 = !DILocation(line: 600, column: 23, scope: !1008)
!1010 = !DILocation(line: 600, column: 34, scope: !1008)
!1011 = !DILocation(line: 600, column: 26, scope: !1008)
!1012 = !DILocation(line: 600, column: 41, scope: !1008)
!1013 = !DILocation(line: 600, column: 7, scope: !54)
!1014 = !DILocation(line: 602, column: 17, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 601, column: 5)
!1016 = !DILocation(line: 602, column: 7, scope: !1015)
!1017 = !DILocation(line: 604, column: 5, scope: !1015)
!1018 = !DILocation(line: 608, column: 10, scope: !54)
!1019 = !DILocation(line: 609, column: 1, scope: !54)
!1020 = !DISubprogram(name: "bindtextdomain", scope: !822, file: !822, line: 86, type: !1021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!41, !47, !47}
!1023 = !DISubprogram(name: "textdomain", scope: !822, file: !822, line: 82, type: !1024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!41, !47}
!1026 = !DISubprogram(name: "atexit", scope: !1027, file: !1027, line: 595, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!1027 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!57, !1030}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!1031 = !DISubprogram(name: "getopt_long", scope: !89, file: !89, line: 66, type: !1032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!57, !57, !1034, !47, !1036, !94}
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!1037 = !DISubprogram(name: "error", scope: !1038, file: !1038, line: 52, type: !1039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!1038 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1039 = !DISubroutineType(types: !1040)
!1040 = !{null, !57, !57, !47, null}
!1041 = distinct !DISubprogram(name: "cut_file", scope: !3, file: !3, line: 441, type: !1042, scopeLine: 442, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1044)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!64, !47}
!1044 = !{!1045, !1046}
!1045 = !DILocalVariable(name: "file", arg: 1, scope: !1041, file: !3, line: 441, type: !47)
!1046 = !DILocalVariable(name: "stream", scope: !1041, file: !3, line: 443, type: !1047)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1049, line: 7, baseType: !830)
!1049 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1050 = !DILocation(line: 0, scope: !1041)
!1051 = !DILocation(line: 445, column: 7, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 445, column: 7)
!1053 = !DILocation(line: 445, column: 7, scope: !1041)
!1054 = !DILocation(line: 447, column: 23, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 446, column: 5)
!1056 = !DILocation(line: 448, column: 16, scope: !1055)
!1057 = !DILocation(line: 449, column: 5, scope: !1055)
!1058 = !DILocation(line: 452, column: 16, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 451, column: 5)
!1060 = !DILocation(line: 453, column: 18, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 453, column: 11)
!1062 = !DILocation(line: 453, column: 11, scope: !1059)
!1063 = !DILocation(line: 455, column: 21, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 454, column: 9)
!1065 = !DILocation(line: 455, column: 34, scope: !1064)
!1066 = !DILocation(line: 455, column: 11, scope: !1064)
!1067 = !DILocation(line: 456, column: 11, scope: !1064)
!1068 = !DILocation(line: 0, scope: !1052)
!1069 = !DILocation(line: 460, column: 3, scope: !1041)
!1070 = !DILocalVariable(name: "stream", arg: 1, scope: !1071, file: !3, line: 429, type: !1047)
!1071 = distinct !DISubprogram(name: "cut_stream", scope: !3, file: !3, line: 429, type: !1072, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1074)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null, !1047}
!1074 = !{!1070}
!1075 = !DILocation(line: 0, scope: !1071, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 462, column: 3, scope: !1041)
!1077 = !DILocation(line: 431, column: 7, scope: !1078, inlinedAt: !1076)
!1078 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 431, column: 7)
!1079 = !DILocation(line: 431, column: 22, scope: !1078, inlinedAt: !1076)
!1080 = !DILocation(line: 0, scope: !1078, inlinedAt: !1076)
!1081 = !DILocation(line: 431, column: 7, scope: !1071, inlinedAt: !1076)
!1082 = !DILocalVariable(name: "stream", arg: 1, scope: !1083, file: !3, line: 233, type: !1047)
!1083 = distinct !DISubprogram(name: "cut_bytes", scope: !3, file: !3, line: 233, type: !1072, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1084)
!1084 = !{!1082, !1085, !1086, !1087, !1089, !1100, !1101}
!1085 = !DILocalVariable(name: "byte_idx", scope: !1083, file: !3, line: 235, type: !106)
!1086 = !DILocalVariable(name: "print_delimiter", scope: !1083, file: !3, line: 238, type: !64)
!1087 = !DILocalVariable(name: "c", scope: !1088, file: !3, line: 245, type: !57)
!1088 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 244, column: 5)
!1089 = !DILocalVariable(name: "__ptr", scope: !1090, file: !3, line: 271, type: !47)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 271, column: 23)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 270, column: 21)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 269, column: 23)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 268, column: 17)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 267, column: 19)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 266, column: 13)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 265, column: 15)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 263, column: 9)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 256, column: 16)
!1099 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 249, column: 11)
!1100 = !DILocalVariable(name: "__stream", scope: !1090, file: !3, line: 271, type: !1047)
!1101 = !DILocalVariable(name: "__cnt", scope: !1090, file: !3, line: 271, type: !44)
!1102 = !DILocation(line: 0, scope: !1083, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 432, column: 5, scope: !1078, inlinedAt: !1076)
!1104 = !DILocation(line: 243, column: 3, scope: !1083, inlinedAt: !1103)
!1105 = !DILocation(line: 68, column: 10, scope: !1106, inlinedAt: !1112)
!1106 = distinct !DISubprogram(name: "getc_unlocked", scope: !1107, file: !1107, line: 66, type: !1108, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1110)
!1107 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!57, !1047}
!1110 = !{!1111}
!1111 = !DILocalVariable(name: "__fp", arg: 1, scope: !1106, file: !1107, line: 66, type: !1047)
!1112 = distinct !DILocation(line: 247, column: 11, scope: !1088, inlinedAt: !1103)
!1113 = !DILocation(line: 0, scope: !1106, inlinedAt: !1112)
!1114 = !{!1115, !745, i64 8}
!1115 = !{!"_IO_FILE", !990, i64 0, !745, i64 8, !745, i64 16, !745, i64 24, !745, i64 32, !745, i64 40, !745, i64 48, !745, i64 56, !745, i64 64, !745, i64 72, !745, i64 80, !745, i64 88, !745, i64 96, !745, i64 104, !990, i64 112, !990, i64 116, !938, i64 120, !1116, i64 128, !746, i64 130, !746, i64 131, !745, i64 136, !938, i64 144, !745, i64 152, !745, i64 160, !745, i64 168, !745, i64 176, !938, i64 184, !990, i64 192, !746, i64 196}
!1116 = !{!"short", !746, i64 0}
!1117 = !{!1115, !745, i64 16}
!1118 = !{!"branch_weights", i32 2000, i32 1}
!1119 = !DILocation(line: 0, scope: !1088, inlinedAt: !1103)
!1120 = !DILocation(line: 249, column: 16, scope: !1099, inlinedAt: !1103)
!1121 = !DILocation(line: 249, column: 13, scope: !1099, inlinedAt: !1103)
!1122 = !DILocation(line: 249, column: 11, scope: !1088, inlinedAt: !1103)
!1123 = !DILocalVariable(name: "__c", arg: 1, scope: !1124, file: !1107, line: 108, type: !57)
!1124 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1107, file: !1107, line: 108, type: !1125, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1127)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!57, !57}
!1127 = !{!1123}
!1128 = !DILocation(line: 0, scope: !1124, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 251, column: 11, scope: !1130, inlinedAt: !1103)
!1130 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 250, column: 9)
!1131 = !DILocation(line: 110, column: 10, scope: !1124, inlinedAt: !1129)
!1132 = !{!1115, !745, i64 40}
!1133 = !{!1115, !745, i64 48}
!1134 = !DILocation(line: 254, column: 24, scope: !1130, inlinedAt: !1103)
!1135 = !DILocation(line: 254, column: 22, scope: !1130, inlinedAt: !1103)
!1136 = !DILocation(line: 255, column: 9, scope: !1130, inlinedAt: !1103)
!1137 = !DILocation(line: 256, column: 18, scope: !1098, inlinedAt: !1103)
!1138 = !DILocation(line: 256, column: 16, scope: !1099, inlinedAt: !1103)
!1139 = !DILocation(line: 258, column: 24, scope: !1140, inlinedAt: !1103)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 258, column: 15)
!1141 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 257, column: 9)
!1142 = !DILocation(line: 258, column: 15, scope: !1141, inlinedAt: !1103)
!1143 = !DILocation(line: 0, scope: !1124, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 259, column: 13, scope: !1140, inlinedAt: !1103)
!1145 = !DILocation(line: 110, column: 10, scope: !1124, inlinedAt: !1144)
!1146 = !DILocalVariable(name: "item_idx", arg: 1, scope: !1147, file: !3, line: 207, type: !155)
!1147 = distinct !DISubprogram(name: "next_item", scope: !3, file: !3, line: 207, type: !1148, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1150)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !155}
!1150 = !{!1146}
!1151 = !DILocation(line: 0, scope: !1147, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 264, column: 11, scope: !1097, inlinedAt: !1103)
!1153 = !DILocation(line: 209, column: 14, scope: !1147, inlinedAt: !1152)
!1154 = !DILocation(line: 210, column: 21, scope: !1155, inlinedAt: !1152)
!1155 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 210, column: 7)
!1156 = !DILocation(line: 210, column: 33, scope: !1155, inlinedAt: !1152)
!1157 = !{!1158, !938, i64 8}
!1158 = !{!"field_range_pair", !938, i64 0, !938, i64 8}
!1159 = !DILocation(line: 210, column: 19, scope: !1155, inlinedAt: !1152)
!1160 = !DILocation(line: 210, column: 7, scope: !1147, inlinedAt: !1152)
!1161 = !DILocation(line: 211, column: 15, scope: !1155, inlinedAt: !1152)
!1162 = !DILocation(line: 211, column: 5, scope: !1155, inlinedAt: !1152)
!1163 = !DILocation(line: 219, column: 10, scope: !1164, inlinedAt: !1169)
!1164 = distinct !DISubprogram(name: "print_kth", scope: !3, file: !3, line: 217, type: !1165, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1167)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!64, !106}
!1167 = !{!1168}
!1168 = !DILocalVariable(name: "k", arg: 1, scope: !1164, file: !3, line: 217, type: !106)
!1169 = distinct !DILocation(line: 265, column: 15, scope: !1096, inlinedAt: !1103)
!1170 = !DILocation(line: 0, scope: !1164, inlinedAt: !1169)
!1171 = !DILocation(line: 219, column: 22, scope: !1164, inlinedAt: !1169)
!1172 = !{!1158, !938, i64 0}
!1173 = !DILocation(line: 219, column: 25, scope: !1164, inlinedAt: !1169)
!1174 = !DILocation(line: 265, column: 15, scope: !1097, inlinedAt: !1103)
!1175 = !DILocation(line: 267, column: 19, scope: !1094, inlinedAt: !1103)
!1176 = !DILocation(line: 267, column: 19, scope: !1095, inlinedAt: !1103)
!1177 = !DILocation(line: 269, column: 23, scope: !1092, inlinedAt: !1103)
!1178 = !DILocation(line: 269, column: 39, scope: !1092, inlinedAt: !1103)
!1179 = !DILocation(line: 271, column: 23, scope: !1091, inlinedAt: !1103)
!1180 = !DILocation(line: 0, scope: !1124, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 277, column: 15, scope: !1095, inlinedAt: !1103)
!1182 = !DILocation(line: 110, column: 10, scope: !1124, inlinedAt: !1181)
!1183 = !DILocalVariable(name: "stream", arg: 1, scope: !1184, file: !3, line: 286, type: !1047)
!1184 = distinct !DISubprogram(name: "cut_fields", scope: !3, file: !3, line: 286, type: !1072, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1185)
!1185 = !{!1183, !1186, !1187, !1188, !1189, !1190, !1196, !1197, !1203, !1204, !1205, !1209, !1210, !1211, !1214, !1215, !1221, !1222, !1223}
!1186 = !DILocalVariable(name: "c", scope: !1184, file: !3, line: 288, type: !57)
!1187 = !DILocalVariable(name: "field_idx", scope: !1184, file: !3, line: 289, type: !106)
!1188 = !DILocalVariable(name: "found_any_selected_field", scope: !1184, file: !3, line: 290, type: !64)
!1189 = !DILocalVariable(name: "buffer_first_field", scope: !1184, file: !3, line: 291, type: !64)
!1190 = !DILocalVariable(name: "len", scope: !1191, file: !3, line: 314, type: !1194)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 313, column: 9)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 312, column: 11)
!1193 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 311, column: 5)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !826, line: 77, baseType: !1195)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !109, line: 194, baseType: !853)
!1196 = !DILocalVariable(name: "n_bytes", scope: !1191, file: !3, line: 315, type: !44)
!1197 = !DILocalVariable(name: "__ptr", scope: !1198, file: !3, line: 344, type: !47)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 344, column: 19)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 343, column: 17)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 338, column: 19)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 337, column: 13)
!1202 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 336, column: 15)
!1203 = !DILocalVariable(name: "__stream", scope: !1198, file: !3, line: 344, type: !1047)
!1204 = !DILocalVariable(name: "__cnt", scope: !1198, file: !3, line: 344, type: !44)
!1205 = !DILocalVariable(name: "__ptr", scope: !1206, file: !3, line: 355, type: !47)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 355, column: 15)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 353, column: 13)
!1208 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 352, column: 15)
!1209 = !DILocalVariable(name: "__stream", scope: !1206, file: !3, line: 355, type: !1047)
!1210 = !DILocalVariable(name: "__cnt", scope: !1206, file: !3, line: 355, type: !44)
!1211 = !DILocalVariable(name: "last_c", scope: !1212, file: !3, line: 360, type: !57)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 359, column: 17)
!1213 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 358, column: 19)
!1214 = !DILocalVariable(name: "prev_c", scope: !1193, file: !3, line: 373, type: !57)
!1215 = !DILocalVariable(name: "__ptr", scope: !1216, file: !3, line: 379, type: !47)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 379, column: 15)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 378, column: 13)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 377, column: 15)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 376, column: 9)
!1220 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 375, column: 11)
!1221 = !DILocalVariable(name: "__stream", scope: !1216, file: !3, line: 379, type: !1047)
!1222 = !DILocalVariable(name: "__cnt", scope: !1216, file: !3, line: 379, type: !44)
!1223 = !DILocalVariable(name: "last_c", scope: !1224, file: !3, line: 401, type: !57)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 400, column: 9)
!1225 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 399, column: 11)
!1226 = !DILocation(line: 0, scope: !1184, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 434, column: 5, scope: !1078, inlinedAt: !1076)
!1228 = !DILocation(line: 0, scope: !1106, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 295, column: 7, scope: !1184, inlinedAt: !1227)
!1230 = !DILocation(line: 68, column: 10, scope: !1106, inlinedAt: !1229)
!1231 = !DILocation(line: 296, column: 7, scope: !1184, inlinedAt: !1227)
!1232 = !DILocation(line: 296, column: 9, scope: !1233, inlinedAt: !1227)
!1233 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 296, column: 7)
!1234 = !DILocation(line: 299, column: 3, scope: !1184, inlinedAt: !1227)
!1235 = !DILocation(line: 308, column: 25, scope: !1184, inlinedAt: !1227)
!1236 = !DILocation(line: 0, scope: !1164, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 308, column: 51, scope: !1184, inlinedAt: !1227)
!1238 = !DILocation(line: 219, column: 10, scope: !1164, inlinedAt: !1237)
!1239 = !DILocation(line: 219, column: 22, scope: !1164, inlinedAt: !1237)
!1240 = !DILocation(line: 219, column: 25, scope: !1164, inlinedAt: !1237)
!1241 = !DILocation(line: 308, column: 48, scope: !1184, inlinedAt: !1227)
!1242 = !DILocation(line: 310, column: 3, scope: !1184, inlinedAt: !1227)
!1243 = !DILocation(line: 312, column: 21, scope: !1192, inlinedAt: !1227)
!1244 = !DILocation(line: 312, column: 26, scope: !1192, inlinedAt: !1227)
!1245 = !DILocation(line: 219, column: 10, scope: !1164, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 375, column: 11, scope: !1220, inlinedAt: !1227)
!1247 = !DILocation(line: 318, column: 48, scope: !1191, inlinedAt: !1227)
!1248 = !DILocation(line: 318, column: 55, scope: !1191, inlinedAt: !1227)
!1249 = !DILocation(line: 317, column: 17, scope: !1191, inlinedAt: !1227)
!1250 = !DILocation(line: 0, scope: !1191, inlinedAt: !1227)
!1251 = !DILocation(line: 319, column: 19, scope: !1252, inlinedAt: !1227)
!1252 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 319, column: 15)
!1253 = !DILocation(line: 319, column: 15, scope: !1191, inlinedAt: !1227)
!1254 = !DILocation(line: 321, column: 21, scope: !1255, inlinedAt: !1227)
!1255 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 320, column: 13)
!1256 = !DILocation(line: 321, column: 15, scope: !1255, inlinedAt: !1227)
!1257 = !DILocation(line: 322, column: 30, scope: !1255, inlinedAt: !1227)
!1258 = !DILocalVariable(name: "__stream", arg: 1, scope: !1259, file: !1107, line: 135, type: !1047)
!1259 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1107, file: !1107, line: 135, type: !1108, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1260)
!1260 = !{!1258}
!1261 = !DILocation(line: 0, scope: !1259, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 323, column: 19, scope: !1263, inlinedAt: !1227)
!1263 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 323, column: 19)
!1264 = !DILocation(line: 137, column: 10, scope: !1259, inlinedAt: !1262)
!1265 = !{!1115, !990, i64 0}
!1266 = !DILocation(line: 323, column: 35, scope: !1263, inlinedAt: !1227)
!1267 = !DILocation(line: 325, column: 15, scope: !1255, inlinedAt: !1227)
!1268 = !DILocation(line: 329, column: 11, scope: !1269, inlinedAt: !1227)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 329, column: 11)
!1270 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 329, column: 11)
!1271 = !DILocation(line: 329, column: 11, scope: !1270, inlinedAt: !1227)
!1272 = !DILocation(line: 336, column: 25, scope: !1202, inlinedAt: !1227)
!1273 = !DILocation(line: 336, column: 48, scope: !1202, inlinedAt: !1227)
!1274 = !DILocation(line: 336, column: 57, scope: !1202, inlinedAt: !1227)
!1275 = !DILocation(line: 336, column: 54, scope: !1202, inlinedAt: !1227)
!1276 = !DILocation(line: 336, column: 15, scope: !1191, inlinedAt: !1227)
!1277 = !DILocation(line: 338, column: 19, scope: !1200, inlinedAt: !1227)
!1278 = !DILocation(line: 338, column: 19, scope: !1201, inlinedAt: !1227)
!1279 = !DILocation(line: 344, column: 19, scope: !1199, inlinedAt: !1227)
!1280 = !DILocation(line: 346, column: 23, scope: !1281, inlinedAt: !1227)
!1281 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 346, column: 23)
!1282 = !DILocation(line: 346, column: 54, scope: !1281, inlinedAt: !1227)
!1283 = !DILocation(line: 346, column: 51, scope: !1281, inlinedAt: !1227)
!1284 = !DILocation(line: 346, column: 23, scope: !1199, inlinedAt: !1227)
!1285 = !DILocation(line: 0, scope: !1124, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 347, column: 21, scope: !1281, inlinedAt: !1227)
!1287 = !DILocation(line: 110, column: 10, scope: !1124, inlinedAt: !1286)
!1288 = !DILocation(line: 348, column: 23, scope: !1199, inlinedAt: !1227)
!1289 = !DILocation(line: 0, scope: !1164, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 352, column: 15, scope: !1208, inlinedAt: !1227)
!1291 = !DILocation(line: 219, column: 10, scope: !1164, inlinedAt: !1290)
!1292 = !DILocation(line: 219, column: 22, scope: !1164, inlinedAt: !1290)
!1293 = !DILocation(line: 219, column: 25, scope: !1164, inlinedAt: !1290)
!1294 = !DILocation(line: 352, column: 15, scope: !1191, inlinedAt: !1227)
!1295 = !DILocation(line: 355, column: 15, scope: !1207, inlinedAt: !1227)
!1296 = !DILocation(line: 358, column: 19, scope: !1213, inlinedAt: !1227)
!1297 = !DILocation(line: 358, column: 28, scope: !1213, inlinedAt: !1227)
!1298 = !DILocation(line: 358, column: 25, scope: !1213, inlinedAt: !1227)
!1299 = !DILocation(line: 358, column: 19, scope: !1207, inlinedAt: !1227)
!1300 = !DILocation(line: 0, scope: !1106, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 360, column: 32, scope: !1212, inlinedAt: !1227)
!1302 = !DILocation(line: 68, column: 10, scope: !1106, inlinedAt: !1301)
!1303 = !DILocation(line: 0, scope: !1212, inlinedAt: !1227)
!1304 = !DILocation(line: 361, column: 23, scope: !1212, inlinedAt: !1227)
!1305 = !DILocation(line: 361, column: 30, scope: !1306, inlinedAt: !1227)
!1306 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 361, column: 23)
!1307 = !DILocation(line: 363, column: 23, scope: !1308, inlinedAt: !1227)
!1308 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 362, column: 21)
!1309 = !DILocation(line: 365, column: 21, scope: !1308, inlinedAt: !1227)
!1310 = !DILocation(line: 0, scope: !1147, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 370, column: 11, scope: !1191, inlinedAt: !1227)
!1312 = !DILocation(line: 210, column: 21, scope: !1155, inlinedAt: !1311)
!1313 = !DILocation(line: 210, column: 33, scope: !1155, inlinedAt: !1311)
!1314 = !DILocation(line: 210, column: 19, scope: !1155, inlinedAt: !1311)
!1315 = !DILocation(line: 210, column: 7, scope: !1147, inlinedAt: !1311)
!1316 = !DILocation(line: 211, column: 15, scope: !1155, inlinedAt: !1311)
!1317 = !DILocation(line: 211, column: 5, scope: !1155, inlinedAt: !1311)
!1318 = !DILocation(line: 289, column: 13, scope: !1184, inlinedAt: !1227)
!1319 = !DILocation(line: 290, column: 8, scope: !1184, inlinedAt: !1227)
!1320 = !DILocation(line: 300, column: 5, scope: !1184, inlinedAt: !1227)
!1321 = !DILocation(line: 0, scope: !1193, inlinedAt: !1227)
!1322 = !DILocation(line: 0, scope: !1164, inlinedAt: !1246)
!1323 = !DILocation(line: 219, column: 22, scope: !1164, inlinedAt: !1246)
!1324 = !DILocation(line: 219, column: 25, scope: !1164, inlinedAt: !1246)
!1325 = !DILocation(line: 375, column: 11, scope: !1193, inlinedAt: !1227)
!1326 = !DILocation(line: 377, column: 15, scope: !1218, inlinedAt: !1227)
!1327 = !DILocation(line: 377, column: 15, scope: !1219, inlinedAt: !1227)
!1328 = !DILocation(line: 379, column: 15, scope: !1217, inlinedAt: !1227)
!1329 = !DILocation(line: 384, column: 11, scope: !1219, inlinedAt: !1227)
!1330 = !DILocation(line: 0, scope: !1106, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 384, column: 23, scope: !1219, inlinedAt: !1227)
!1332 = !DILocation(line: 68, column: 10, scope: !1106, inlinedAt: !1331)
!1333 = !DILocation(line: 384, column: 41, scope: !1219, inlinedAt: !1227)
!1334 = !DILocation(line: 384, column: 38, scope: !1219, inlinedAt: !1227)
!1335 = !DILocation(line: 384, column: 47, scope: !1219, inlinedAt: !1227)
!1336 = !DILocation(line: 384, column: 55, scope: !1219, inlinedAt: !1227)
!1337 = !DILocation(line: 384, column: 52, scope: !1219, inlinedAt: !1227)
!1338 = !DILocation(line: 384, column: 66, scope: !1219, inlinedAt: !1227)
!1339 = !DILocation(line: 0, scope: !1124, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 386, column: 15, scope: !1341, inlinedAt: !1227)
!1341 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 385, column: 13)
!1342 = !DILocation(line: 110, column: 10, scope: !1124, inlinedAt: !1340)
!1343 = distinct !{!1343, !1329, !1344, !801}
!1344 = !DILocation(line: 388, column: 13, scope: !1219, inlinedAt: !1227)
!1345 = !DILocation(line: 0, scope: !1106, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 392, column: 23, scope: !1347, inlinedAt: !1227)
!1347 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 391, column: 9)
!1348 = !DILocation(line: 68, column: 10, scope: !1106, inlinedAt: !1346)
!1349 = !DILocation(line: 392, column: 41, scope: !1347, inlinedAt: !1227)
!1350 = !DILocation(line: 392, column: 38, scope: !1347, inlinedAt: !1227)
!1351 = !DILocation(line: 392, column: 47, scope: !1347, inlinedAt: !1227)
!1352 = !DILocation(line: 392, column: 55, scope: !1347, inlinedAt: !1227)
!1353 = !DILocation(line: 392, column: 52, scope: !1347, inlinedAt: !1227)
!1354 = !DILocation(line: 392, column: 66, scope: !1347, inlinedAt: !1227)
!1355 = distinct !{!1355, !1356, !1357, !801}
!1356 = !DILocation(line: 392, column: 11, scope: !1347, inlinedAt: !1227)
!1357 = !DILocation(line: 395, column: 13, scope: !1347, inlinedAt: !1227)
!1358 = !DILocation(line: 373, column: 11, scope: !1193, inlinedAt: !1227)
!1359 = !DILocation(line: 0, scope: !1220, inlinedAt: !1227)
!1360 = !DILocation(line: 399, column: 11, scope: !1225, inlinedAt: !1227)
!1361 = !DILocation(line: 399, column: 20, scope: !1225, inlinedAt: !1227)
!1362 = !DILocation(line: 399, column: 17, scope: !1225, inlinedAt: !1227)
!1363 = !DILocation(line: 399, column: 31, scope: !1225, inlinedAt: !1227)
!1364 = !DILocation(line: 0, scope: !1106, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 401, column: 24, scope: !1224, inlinedAt: !1227)
!1366 = !DILocation(line: 68, column: 10, scope: !1106, inlinedAt: !1365)
!1367 = !DILocation(line: 0, scope: !1224, inlinedAt: !1227)
!1368 = !DILocation(line: 402, column: 15, scope: !1224, inlinedAt: !1227)
!1369 = !DILocation(line: 402, column: 22, scope: !1370, inlinedAt: !1227)
!1370 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 402, column: 15)
!1371 = !DILocation(line: 408, column: 16, scope: !1372, inlinedAt: !1227)
!1372 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 408, column: 11)
!1373 = !DILocation(line: 410, column: 21, scope: !1374, inlinedAt: !1227)
!1374 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 410, column: 16)
!1375 = !DILocation(line: 410, column: 32, scope: !1374, inlinedAt: !1227)
!1376 = !DILocation(line: 403, column: 13, scope: !1370, inlinedAt: !1227)
!1377 = !DILocation(line: 408, column: 13, scope: !1372, inlinedAt: !1227)
!1378 = !DILocation(line: 408, column: 11, scope: !1193, inlinedAt: !1227)
!1379 = !DILocation(line: 0, scope: !1147, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 409, column: 9, scope: !1372, inlinedAt: !1227)
!1381 = !DILocation(line: 209, column: 14, scope: !1147, inlinedAt: !1380)
!1382 = !DILocation(line: 210, column: 21, scope: !1155, inlinedAt: !1380)
!1383 = !DILocation(line: 210, column: 33, scope: !1155, inlinedAt: !1380)
!1384 = !DILocation(line: 210, column: 19, scope: !1155, inlinedAt: !1380)
!1385 = !DILocation(line: 210, column: 7, scope: !1147, inlinedAt: !1380)
!1386 = !DILocation(line: 211, column: 15, scope: !1155, inlinedAt: !1380)
!1387 = !DILocation(line: 211, column: 5, scope: !1155, inlinedAt: !1380)
!1388 = !DILocation(line: 410, column: 18, scope: !1374, inlinedAt: !1227)
!1389 = !DILocation(line: 412, column: 15, scope: !1390, inlinedAt: !1227)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 412, column: 15)
!1391 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 411, column: 9)
!1392 = !DILocation(line: 413, column: 15, scope: !1390, inlinedAt: !1227)
!1393 = !DILocation(line: 413, column: 20, scope: !1390, inlinedAt: !1227)
!1394 = !DILocation(line: 413, column: 43, scope: !1390, inlinedAt: !1227)
!1395 = !DILocation(line: 415, column: 21, scope: !1396, inlinedAt: !1227)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 415, column: 19)
!1397 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 414, column: 13)
!1398 = !DILocation(line: 415, column: 35, scope: !1396, inlinedAt: !1227)
!1399 = !DILocation(line: 0, scope: !1124, inlinedAt: !1400)
!1400 = distinct !DILocation(line: 417, column: 17, scope: !1396, inlinedAt: !1227)
!1401 = !DILocation(line: 110, column: 10, scope: !1124, inlinedAt: !1400)
!1402 = !DILocation(line: 419, column: 15, scope: !1391, inlinedAt: !1227)
!1403 = !DILocation(line: 422, column: 24, scope: !1391, inlinedAt: !1227)
!1404 = !DILocation(line: 422, column: 22, scope: !1391, inlinedAt: !1227)
!1405 = !DILocation(line: 424, column: 9, scope: !1391, inlinedAt: !1227)
!1406 = distinct !{!1406, !1242, !1407}
!1407 = !DILocation(line: 425, column: 5, scope: !1184, inlinedAt: !1227)
!1408 = !DILocation(line: 0, scope: !1259, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 464, column: 7, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 464, column: 7)
!1411 = !DILocation(line: 137, column: 10, scope: !1259, inlinedAt: !1409)
!1412 = !DILocation(line: 464, column: 7, scope: !1410)
!1413 = !DILocation(line: 464, column: 7, scope: !1041)
!1414 = !DILocation(line: 466, column: 17, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 465, column: 5)
!1416 = !DILocation(line: 466, column: 30, scope: !1415)
!1417 = !DILocation(line: 466, column: 7, scope: !1415)
!1418 = !DILocation(line: 467, column: 7, scope: !1415)
!1419 = !DILocation(line: 469, column: 7, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 469, column: 7)
!1421 = !DILocation(line: 469, column: 7, scope: !1041)
!1422 = !DILocation(line: 470, column: 5, scope: !1420)
!1423 = !DILocation(line: 471, column: 12, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 471, column: 12)
!1425 = !DILocation(line: 471, column: 28, scope: !1424)
!1426 = !DILocation(line: 471, column: 12, scope: !1420)
!1427 = !DILocation(line: 473, column: 17, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 472, column: 5)
!1429 = !DILocation(line: 473, column: 30, scope: !1428)
!1430 = !DILocation(line: 473, column: 7, scope: !1428)
!1431 = !DILocation(line: 474, column: 7, scope: !1428)
!1432 = !DILocation(line: 477, column: 1, scope: !1041)
!1433 = !DISubprogram(name: "fwrite_unlocked", scope: !826, file: !826, line: 680, type: !1434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!46, !1436, !46, !46, !829}
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1438 = !DISubprogram(name: "ungetc", scope: !826, file: !826, line: 644, type: !1439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!57, !57, !829}
!1441 = !DISubprogram(name: "clearerr_unlocked", scope: !826, file: !826, line: 770, type: !1442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{null, !829}
!1444 = !DILocation(line: 0, scope: !165)
!1445 = !DILocation(line: 151, column: 16, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !165, file: !123, line: 151, column: 7)
!1447 = !DILocation(line: 151, column: 37, scope: !1446)
!1448 = !DILocation(line: 151, column: 40, scope: !1446)
!1449 = !DILocation(line: 151, column: 7, scope: !165)
!1450 = !DILocation(line: 156, column: 15, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1446, file: !123, line: 152, column: 5)
!1452 = !DILocation(line: 157, column: 5, scope: !1451)
!1453 = !DILocation(line: 159, column: 3, scope: !165)
!1454 = !DILocation(line: 154, column: 21, scope: !1451)
!1455 = !DILocation(line: 143, column: 8, scope: !165)
!1456 = !DILocation(line: 161, column: 11, scope: !183)
!1457 = !DILocation(line: 161, column: 11, scope: !184)
!1458 = !DILocation(line: 165, column: 15, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !123, line: 165, column: 15)
!1460 = distinct !DILexicalBlock(scope: !183, file: !123, line: 162, column: 9)
!1461 = !DILocation(line: 165, column: 15, scope: !1460)
!1462 = !DILocation(line: 166, column: 13, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1459, file: !123, line: 166, column: 13)
!1464 = !DILocation(line: 173, column: 15, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1460, file: !123, line: 173, column: 15)
!1466 = !DILocation(line: 173, column: 29, scope: !1465)
!1467 = !DILocation(line: 174, column: 13, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1465, file: !123, line: 174, column: 13)
!1469 = !DILocation(line: 178, column: 22, scope: !1460)
!1470 = !DILocation(line: 180, column: 9, scope: !1460)
!1471 = !DILocation(line: 182, column: 19, scope: !182)
!1472 = !{!1116, !1116, i64 0}
!1473 = !DILocation(line: 182, column: 50, scope: !182)
!1474 = !DILocation(line: 186, column: 15, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !123, line: 186, column: 15)
!1476 = distinct !DILexicalBlock(scope: !182, file: !123, line: 183, column: 9)
!1477 = !DILocation(line: 186, column: 15, scope: !1476)
!1478 = !DILocation(line: 190, column: 34, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !123, line: 190, column: 19)
!1480 = distinct !DILexicalBlock(scope: !1475, file: !123, line: 187, column: 13)
!1481 = !DILocation(line: 196, column: 21, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !123, line: 196, column: 21)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !123, line: 193, column: 23)
!1484 = distinct !DILexicalBlock(scope: !1479, file: !123, line: 191, column: 17)
!1485 = !DILocation(line: 201, column: 19, scope: !1480)
!1486 = !DILocalVariable(name: "lo", arg: 1, scope: !1487, file: !123, line: 48, type: !106)
!1487 = distinct !DISubprogram(name: "add_range_pair", scope: !123, file: !123, line: 48, type: !1488, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !122, retainedNodes: !1490)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{null, !106, !106}
!1490 = !{!1486, !1491}
!1491 = !DILocalVariable(name: "hi", arg: 2, scope: !1487, file: !123, line: 48, type: !106)
!1492 = !DILocation(line: 0, scope: !1487, inlinedAt: !1493)
!1493 = distinct !DILocation(line: 204, column: 19, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !123, line: 202, column: 17)
!1495 = distinct !DILexicalBlock(scope: !1480, file: !123, line: 201, column: 19)
!1496 = !DILocation(line: 50, column: 7, scope: !1497, inlinedAt: !1493)
!1497 = distinct !DILexicalBlock(scope: !1487, file: !123, line: 50, column: 7)
!1498 = !DILocation(line: 50, column: 16, scope: !1497, inlinedAt: !1493)
!1499 = !DILocation(line: 50, column: 13, scope: !1497, inlinedAt: !1493)
!1500 = !DILocation(line: 50, column: 7, scope: !1487, inlinedAt: !1493)
!1501 = !DILocation(line: 52, column: 3, scope: !1487, inlinedAt: !1493)
!1502 = !DILocation(line: 51, column: 11, scope: !1497, inlinedAt: !1493)
!1503 = !DILocation(line: 0, scope: !142, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 51, column: 11, scope: !1497, inlinedAt: !1493)
!1505 = !DILocation(line: 178, column: 9, scope: !1506, inlinedAt: !1504)
!1506 = distinct !DILexicalBlock(scope: !142, file: !141, line: 178, column: 7)
!1507 = !DILocation(line: 178, column: 7, scope: !142, inlinedAt: !1504)
!1508 = !DILocation(line: 180, column: 13, scope: !1509, inlinedAt: !1504)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !141, line: 180, column: 11)
!1510 = distinct !DILexicalBlock(scope: !1506, file: !141, line: 179, column: 5)
!1511 = !DILocation(line: 180, column: 11, scope: !1510, inlinedAt: !1504)
!1512 = !DILocation(line: 191, column: 11, scope: !1513, inlinedAt: !1504)
!1513 = distinct !DILexicalBlock(scope: !1510, file: !141, line: 191, column: 11)
!1514 = !DILocation(line: 191, column: 11, scope: !1510, inlinedAt: !1504)
!1515 = !DILocation(line: 192, column: 9, scope: !1513, inlinedAt: !1504)
!1516 = !DILocation(line: 201, column: 11, scope: !1517, inlinedAt: !1504)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !141, line: 200, column: 11)
!1518 = distinct !DILexicalBlock(scope: !1506, file: !141, line: 195, column: 5)
!1519 = !DILocation(line: 200, column: 11, scope: !1518, inlinedAt: !1504)
!1520 = !DILocation(line: 202, column: 9, scope: !1517, inlinedAt: !1504)
!1521 = !DILocation(line: 203, column: 14, scope: !1518, inlinedAt: !1504)
!1522 = !DILocation(line: 203, column: 18, scope: !1518, inlinedAt: !1504)
!1523 = !DILocation(line: 203, column: 9, scope: !1518, inlinedAt: !1504)
!1524 = !DILocation(line: 206, column: 7, scope: !142, inlinedAt: !1504)
!1525 = !DILocation(line: 207, column: 25, scope: !142, inlinedAt: !1504)
!1526 = !DILocation(line: 207, column: 10, scope: !142, inlinedAt: !1504)
!1527 = !DILocation(line: 51, column: 9, scope: !1497, inlinedAt: !1493)
!1528 = !DILocation(line: 51, column: 5, scope: !1497, inlinedAt: !1493)
!1529 = !DILocation(line: 52, column: 7, scope: !1487, inlinedAt: !1493)
!1530 = !DILocation(line: 52, column: 14, scope: !1487, inlinedAt: !1493)
!1531 = !DILocation(line: 52, column: 17, scope: !1487, inlinedAt: !1493)
!1532 = !DILocation(line: 53, column: 7, scope: !1487, inlinedAt: !1493)
!1533 = !DILocation(line: 53, column: 14, scope: !1487, inlinedAt: !1493)
!1534 = !DILocation(line: 53, column: 17, scope: !1487, inlinedAt: !1493)
!1535 = !DILocation(line: 205, column: 17, scope: !1494)
!1536 = !DILocation(line: 209, column: 29, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !123, line: 209, column: 23)
!1538 = distinct !DILexicalBlock(scope: !1495, file: !123, line: 207, column: 17)
!1539 = !DILocation(line: 209, column: 23, scope: !1538)
!1540 = !DILocation(line: 210, column: 21, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1537, file: !123, line: 210, column: 21)
!1542 = !DILocation(line: 0, scope: !1487, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 212, column: 19, scope: !1538)
!1544 = !DILocation(line: 50, column: 7, scope: !1497, inlinedAt: !1543)
!1545 = !DILocation(line: 50, column: 16, scope: !1497, inlinedAt: !1543)
!1546 = !DILocation(line: 50, column: 13, scope: !1497, inlinedAt: !1543)
!1547 = !DILocation(line: 50, column: 7, scope: !1487, inlinedAt: !1543)
!1548 = !DILocation(line: 52, column: 3, scope: !1487, inlinedAt: !1543)
!1549 = !DILocation(line: 51, column: 11, scope: !1497, inlinedAt: !1543)
!1550 = !DILocation(line: 0, scope: !142, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 51, column: 11, scope: !1497, inlinedAt: !1543)
!1552 = !DILocation(line: 178, column: 9, scope: !1506, inlinedAt: !1551)
!1553 = !DILocation(line: 178, column: 7, scope: !142, inlinedAt: !1551)
!1554 = !DILocation(line: 180, column: 13, scope: !1509, inlinedAt: !1551)
!1555 = !DILocation(line: 180, column: 11, scope: !1510, inlinedAt: !1551)
!1556 = !DILocation(line: 191, column: 11, scope: !1513, inlinedAt: !1551)
!1557 = !DILocation(line: 191, column: 11, scope: !1510, inlinedAt: !1551)
!1558 = !DILocation(line: 192, column: 9, scope: !1513, inlinedAt: !1551)
!1559 = !DILocation(line: 201, column: 11, scope: !1517, inlinedAt: !1551)
!1560 = !DILocation(line: 200, column: 11, scope: !1518, inlinedAt: !1551)
!1561 = !DILocation(line: 202, column: 9, scope: !1517, inlinedAt: !1551)
!1562 = !DILocation(line: 203, column: 14, scope: !1518, inlinedAt: !1551)
!1563 = !DILocation(line: 203, column: 18, scope: !1518, inlinedAt: !1551)
!1564 = !DILocation(line: 203, column: 9, scope: !1518, inlinedAt: !1551)
!1565 = !DILocation(line: 206, column: 7, scope: !142, inlinedAt: !1551)
!1566 = !DILocation(line: 207, column: 25, scope: !142, inlinedAt: !1551)
!1567 = !DILocation(line: 207, column: 10, scope: !142, inlinedAt: !1551)
!1568 = !DILocation(line: 51, column: 9, scope: !1497, inlinedAt: !1543)
!1569 = !DILocation(line: 51, column: 5, scope: !1497, inlinedAt: !1543)
!1570 = !DILocation(line: 52, column: 7, scope: !1487, inlinedAt: !1543)
!1571 = !DILocation(line: 52, column: 14, scope: !1487, inlinedAt: !1543)
!1572 = !DILocation(line: 52, column: 17, scope: !1487, inlinedAt: !1543)
!1573 = !DILocation(line: 53, column: 7, scope: !1487, inlinedAt: !1543)
!1574 = !DILocation(line: 53, column: 14, scope: !1487, inlinedAt: !1543)
!1575 = !DILocation(line: 53, column: 17, scope: !1487, inlinedAt: !1543)
!1576 = !DILocation(line: 219, column: 25, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !123, line: 219, column: 19)
!1578 = distinct !DILexicalBlock(scope: !1475, file: !123, line: 217, column: 13)
!1579 = !DILocation(line: 219, column: 19, scope: !1578)
!1580 = !DILocation(line: 220, column: 17, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !123, line: 220, column: 17)
!1582 = !DILocation(line: 0, scope: !1487, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 224, column: 15, scope: !1578)
!1584 = !DILocation(line: 50, column: 7, scope: !1497, inlinedAt: !1583)
!1585 = !DILocation(line: 50, column: 16, scope: !1497, inlinedAt: !1583)
!1586 = !DILocation(line: 50, column: 13, scope: !1497, inlinedAt: !1583)
!1587 = !DILocation(line: 50, column: 7, scope: !1487, inlinedAt: !1583)
!1588 = !DILocation(line: 52, column: 3, scope: !1487, inlinedAt: !1583)
!1589 = !DILocation(line: 51, column: 11, scope: !1497, inlinedAt: !1583)
!1590 = !DILocation(line: 0, scope: !142, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 51, column: 11, scope: !1497, inlinedAt: !1583)
!1592 = !DILocation(line: 178, column: 9, scope: !1506, inlinedAt: !1591)
!1593 = !DILocation(line: 178, column: 7, scope: !142, inlinedAt: !1591)
!1594 = !DILocation(line: 180, column: 13, scope: !1509, inlinedAt: !1591)
!1595 = !DILocation(line: 180, column: 11, scope: !1510, inlinedAt: !1591)
!1596 = !DILocation(line: 191, column: 11, scope: !1513, inlinedAt: !1591)
!1597 = !DILocation(line: 191, column: 11, scope: !1510, inlinedAt: !1591)
!1598 = !DILocation(line: 192, column: 9, scope: !1513, inlinedAt: !1591)
!1599 = !DILocation(line: 201, column: 11, scope: !1517, inlinedAt: !1591)
!1600 = !DILocation(line: 200, column: 11, scope: !1518, inlinedAt: !1591)
!1601 = !DILocation(line: 202, column: 9, scope: !1517, inlinedAt: !1591)
!1602 = !DILocation(line: 203, column: 14, scope: !1518, inlinedAt: !1591)
!1603 = !DILocation(line: 203, column: 18, scope: !1518, inlinedAt: !1591)
!1604 = !DILocation(line: 203, column: 9, scope: !1518, inlinedAt: !1591)
!1605 = !DILocation(line: 206, column: 7, scope: !142, inlinedAt: !1591)
!1606 = !DILocation(line: 207, column: 25, scope: !142, inlinedAt: !1591)
!1607 = !DILocation(line: 207, column: 10, scope: !142, inlinedAt: !1591)
!1608 = !DILocation(line: 51, column: 9, scope: !1497, inlinedAt: !1583)
!1609 = !DILocation(line: 51, column: 5, scope: !1497, inlinedAt: !1583)
!1610 = !DILocation(line: 52, column: 7, scope: !1487, inlinedAt: !1583)
!1611 = !DILocation(line: 52, column: 14, scope: !1487, inlinedAt: !1583)
!1612 = !DILocation(line: 52, column: 17, scope: !1487, inlinedAt: !1583)
!1613 = !DILocation(line: 53, column: 7, scope: !1487, inlinedAt: !1583)
!1614 = !DILocation(line: 53, column: 14, scope: !1487, inlinedAt: !1583)
!1615 = !DILocation(line: 53, column: 17, scope: !1487, inlinedAt: !1583)
!1616 = !DILocation(line: 140, column: 13, scope: !165)
!1617 = !DILocation(line: 0, scope: !1475)
!1618 = !DILocation(line: 228, column: 15, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1476, file: !123, line: 228, column: 15)
!1620 = !DILocation(line: 228, column: 25, scope: !1619)
!1621 = !DILocation(line: 228, column: 15, scope: !1476)
!1622 = !DILocation(line: 182, column: 53, scope: !182)
!1623 = !DILocation(line: 235, column: 16, scope: !181)
!1624 = !DILocation(line: 235, column: 16, scope: !182)
!1625 = !DILocation(line: 240, column: 26, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !180, file: !123, line: 240, column: 15)
!1627 = !DILocation(line: 241, column: 23, scope: !1626)
!1628 = !DILocation(line: 241, column: 13, scope: !1626)
!1629 = !DILocation(line: 244, column: 15, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !180, file: !123, line: 244, column: 15)
!1631 = !DILocation(line: 250, column: 16, scope: !179)
!1632 = !DILocation(line: 244, column: 15, scope: !180)
!1633 = !DILocation(line: 251, column: 15, scope: !179)
!1634 = !DILocation(line: 256, column: 28, scope: !178)
!1635 = !DILocation(line: 0, scope: !178)
!1636 = !DILocation(line: 257, column: 31, scope: !178)
!1637 = !DILocation(line: 258, column: 37, scope: !178)
!1638 = !DILocation(line: 258, column: 28, scope: !178)
!1639 = !DILocation(line: 261, column: 28, scope: !178)
!1640 = !DILocation(line: 258, column: 15, scope: !178)
!1641 = !DILocation(line: 262, column: 15, scope: !178)
!1642 = !DILocation(line: 263, column: 15, scope: !178)
!1643 = !DILocation(line: 270, column: 33, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !181, file: !123, line: 269, column: 9)
!1645 = !DILocation(line: 270, column: 24, scope: !1644)
!1646 = !DILocation(line: 0, scope: !1644)
!1647 = !DILocation(line: 273, column: 24, scope: !1644)
!1648 = !DILocation(line: 270, column: 11, scope: !1644)
!1649 = !DILocation(line: 274, column: 11, scope: !1644)
!1650 = !DILocation(line: 0, scope: !183)
!1651 = distinct !{!1651, !1453, !1652}
!1652 = !DILocation(line: 276, column: 5, scope: !165)
!1653 = !DILocation(line: 278, column: 8, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !165, file: !123, line: 278, column: 7)
!1655 = !DILocation(line: 278, column: 7, scope: !165)
!1656 = !DILocation(line: 279, column: 5, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1654, file: !123, line: 279, column: 5)
!1658 = !DILocation(line: 283, column: 3, scope: !165)
!1659 = !DILocation(line: 0, scope: !187)
!1660 = !DILocation(line: 286, column: 26, scope: !191)
!1661 = !DILocation(line: 286, column: 24, scope: !191)
!1662 = !DILocation(line: 286, column: 3, scope: !187)
!1663 = !DILocation(line: 302, column: 15, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !165, file: !123, line: 302, column: 7)
!1665 = !DILocation(line: 302, column: 7, scope: !165)
!1666 = !DILocation(line: 288, column: 34, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !189, file: !123, line: 288, column: 7)
!1668 = !DILocation(line: 288, column: 25, scope: !189)
!1669 = !DILocation(line: 0, scope: !189)
!1670 = !DILocation(line: 288, column: 32, scope: !1667)
!1671 = !DILocation(line: 288, column: 7, scope: !189)
!1672 = !DILocation(line: 290, column: 15, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !123, line: 290, column: 15)
!1674 = distinct !DILexicalBlock(scope: !1667, file: !123, line: 289, column: 9)
!1675 = !DILocation(line: 290, column: 22, scope: !1673)
!1676 = !DILocation(line: 290, column: 35, scope: !1673)
!1677 = !DILocation(line: 290, column: 25, scope: !1673)
!1678 = !DILocation(line: 290, column: 15, scope: !1674)
!1679 = distinct !{!1679, !1671, !1680, !801}
!1680 = !DILocation(line: 299, column: 9, scope: !189)
!1681 = !DILocation(line: 292, column: 27, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1673, file: !123, line: 291, column: 13)
!1683 = !DILocation(line: 292, column: 25, scope: !1682)
!1684 = !DILocation(line: 293, column: 28, scope: !1682)
!1685 = !DILocation(line: 293, column: 24, scope: !1682)
!1686 = !DILocation(line: 293, column: 41, scope: !1682)
!1687 = !DILocation(line: 293, column: 33, scope: !1682)
!1688 = !DILocation(line: 293, column: 47, scope: !1682)
!1689 = !DILocation(line: 293, column: 57, scope: !1682)
!1690 = !DILocation(line: 293, column: 62, scope: !1682)
!1691 = !DILocalVariable(name: "__dest", arg: 1, scope: !1692, file: !1693, line: 34, type: !43)
!1692 = distinct !DISubprogram(name: "memmove", scope: !1693, file: !1693, line: 34, type: !1694, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !122, retainedNodes: !1696)
!1693 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!43, !43, !1436, !44}
!1696 = !{!1691, !1697, !1698}
!1697 = !DILocalVariable(name: "__src", arg: 2, scope: !1692, file: !1693, line: 34, type: !1436)
!1698 = !DILocalVariable(name: "__len", arg: 3, scope: !1692, file: !1693, line: 34, type: !44)
!1699 = !DILocation(line: 0, scope: !1692, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 293, column: 15, scope: !1682)
!1701 = !DILocation(line: 36, column: 10, scope: !1692, inlinedAt: !1700)
!1702 = !DILocation(line: 294, column: 20, scope: !1682)
!1703 = distinct !{!1703, !1662, !1704, !801}
!1704 = !DILocation(line: 300, column: 5, scope: !187)
!1705 = !DILocation(line: 74, column: 32, scope: !1706, inlinedAt: !1712)
!1706 = distinct !DISubprogram(name: "complement_rp", scope: !123, file: !123, line: 72, type: !754, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !122, retainedNodes: !1707)
!1707 = !{!1708, !1709, !1710}
!1708 = !DILocalVariable(name: "c", scope: !1706, file: !123, line: 74, type: !194)
!1709 = !DILocalVariable(name: "n", scope: !1706, file: !123, line: 75, type: !44)
!1710 = !DILocalVariable(name: "i", scope: !1711, file: !123, line: 84, type: !44)
!1711 = distinct !DILexicalBlock(scope: !1706, file: !123, line: 84, column: 3)
!1712 = distinct !DILocation(line: 303, column: 5, scope: !1664)
!1713 = !DILocation(line: 0, scope: !1706, inlinedAt: !1712)
!1714 = !DILocation(line: 77, column: 7, scope: !1706, inlinedAt: !1712)
!1715 = !DILocation(line: 78, column: 9, scope: !1706, inlinedAt: !1712)
!1716 = !DILocation(line: 79, column: 19, scope: !1706, inlinedAt: !1712)
!1717 = !DILocation(line: 81, column: 12, scope: !1718, inlinedAt: !1712)
!1718 = distinct !DILexicalBlock(scope: !1706, file: !123, line: 81, column: 7)
!1719 = !DILocation(line: 81, column: 15, scope: !1718, inlinedAt: !1712)
!1720 = !DILocation(line: 81, column: 7, scope: !1706, inlinedAt: !1712)
!1721 = !DILocation(line: 82, column: 32, scope: !1718, inlinedAt: !1712)
!1722 = !DILocation(line: 0, scope: !1487, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 82, column: 5, scope: !1718, inlinedAt: !1712)
!1724 = !DILocation(line: 0, scope: !142, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 51, column: 11, scope: !1497, inlinedAt: !1723)
!1726 = !DILocation(line: 206, column: 7, scope: !142, inlinedAt: !1725)
!1727 = !DILocation(line: 207, column: 10, scope: !142, inlinedAt: !1725)
!1728 = !DILocation(line: 51, column: 9, scope: !1497, inlinedAt: !1723)
!1729 = !DILocation(line: 51, column: 5, scope: !1497, inlinedAt: !1723)
!1730 = !DILocation(line: 52, column: 7, scope: !1487, inlinedAt: !1723)
!1731 = !DILocation(line: 52, column: 14, scope: !1487, inlinedAt: !1723)
!1732 = !DILocation(line: 52, column: 17, scope: !1487, inlinedAt: !1723)
!1733 = !DILocation(line: 53, column: 7, scope: !1487, inlinedAt: !1723)
!1734 = !DILocation(line: 53, column: 14, scope: !1487, inlinedAt: !1723)
!1735 = !DILocation(line: 53, column: 17, scope: !1487, inlinedAt: !1723)
!1736 = !DILocation(line: 54, column: 3, scope: !1487, inlinedAt: !1723)
!1737 = !DILocation(line: 82, column: 5, scope: !1718, inlinedAt: !1712)
!1738 = !DILocation(line: 0, scope: !1711, inlinedAt: !1712)
!1739 = !DILocation(line: 84, column: 24, scope: !1740, inlinedAt: !1712)
!1740 = distinct !DILexicalBlock(scope: !1711, file: !123, line: 84, column: 3)
!1741 = !DILocation(line: 84, column: 3, scope: !1711, inlinedAt: !1712)
!1742 = !DILocation(line: 92, column: 10, scope: !1743, inlinedAt: !1712)
!1743 = distinct !DILexicalBlock(scope: !1706, file: !123, line: 92, column: 7)
!1744 = !DILocation(line: 92, column: 14, scope: !1743, inlinedAt: !1712)
!1745 = !DILocation(line: 92, column: 17, scope: !1743, inlinedAt: !1712)
!1746 = !DILocation(line: 92, column: 7, scope: !1706, inlinedAt: !1712)
!1747 = !DILocation(line: 86, column: 14, scope: !1748, inlinedAt: !1712)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !123, line: 86, column: 11)
!1749 = distinct !DILexicalBlock(scope: !1740, file: !123, line: 85, column: 5)
!1750 = !DILocation(line: 86, column: 18, scope: !1748, inlinedAt: !1712)
!1751 = !DILocation(line: 86, column: 21, scope: !1748, inlinedAt: !1712)
!1752 = !DILocation(line: 86, column: 33, scope: !1748, inlinedAt: !1712)
!1753 = !DILocation(line: 86, column: 25, scope: !1748, inlinedAt: !1712)
!1754 = !DILocation(line: 86, column: 11, scope: !1749, inlinedAt: !1712)
!1755 = !DILocation(line: 89, column: 46, scope: !1749, inlinedAt: !1712)
!1756 = !DILocation(line: 0, scope: !1487, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 89, column: 7, scope: !1749, inlinedAt: !1712)
!1758 = !DILocation(line: 50, column: 16, scope: !1497, inlinedAt: !1757)
!1759 = !DILocation(line: 50, column: 13, scope: !1497, inlinedAt: !1757)
!1760 = !DILocation(line: 50, column: 7, scope: !1487, inlinedAt: !1757)
!1761 = !DILocation(line: 0, scope: !142, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 51, column: 11, scope: !1497, inlinedAt: !1757)
!1763 = !DILocation(line: 178, column: 9, scope: !1506, inlinedAt: !1762)
!1764 = !DILocation(line: 178, column: 7, scope: !142, inlinedAt: !1762)
!1765 = !DILocation(line: 180, column: 13, scope: !1509, inlinedAt: !1762)
!1766 = !DILocation(line: 180, column: 11, scope: !1510, inlinedAt: !1762)
!1767 = !DILocation(line: 191, column: 11, scope: !1513, inlinedAt: !1762)
!1768 = !DILocation(line: 191, column: 11, scope: !1510, inlinedAt: !1762)
!1769 = !DILocation(line: 192, column: 9, scope: !1513, inlinedAt: !1762)
!1770 = !DILocation(line: 201, column: 11, scope: !1517, inlinedAt: !1762)
!1771 = !DILocation(line: 200, column: 11, scope: !1518, inlinedAt: !1762)
!1772 = !DILocation(line: 202, column: 9, scope: !1517, inlinedAt: !1762)
!1773 = !DILocation(line: 203, column: 14, scope: !1518, inlinedAt: !1762)
!1774 = !DILocation(line: 203, column: 18, scope: !1518, inlinedAt: !1762)
!1775 = !DILocation(line: 203, column: 9, scope: !1518, inlinedAt: !1762)
!1776 = !DILocation(line: 206, column: 7, scope: !142, inlinedAt: !1762)
!1777 = !DILocation(line: 207, column: 25, scope: !142, inlinedAt: !1762)
!1778 = !DILocation(line: 207, column: 10, scope: !142, inlinedAt: !1762)
!1779 = !DILocation(line: 51, column: 9, scope: !1497, inlinedAt: !1757)
!1780 = !DILocation(line: 51, column: 5, scope: !1497, inlinedAt: !1757)
!1781 = !DILocation(line: 52, column: 7, scope: !1487, inlinedAt: !1757)
!1782 = !DILocation(line: 52, column: 3, scope: !1487, inlinedAt: !1757)
!1783 = !DILocation(line: 52, column: 14, scope: !1487, inlinedAt: !1757)
!1784 = !DILocation(line: 52, column: 17, scope: !1487, inlinedAt: !1757)
!1785 = !DILocation(line: 53, column: 7, scope: !1487, inlinedAt: !1757)
!1786 = !DILocation(line: 53, column: 14, scope: !1487, inlinedAt: !1757)
!1787 = !DILocation(line: 53, column: 17, scope: !1487, inlinedAt: !1757)
!1788 = !DILocation(line: 54, column: 3, scope: !1487, inlinedAt: !1757)
!1789 = !DILocation(line: 90, column: 5, scope: !1749, inlinedAt: !1712)
!1790 = !DILocation(line: 84, column: 29, scope: !1740, inlinedAt: !1712)
!1791 = distinct !{!1791, !1741, !1792, !801}
!1792 = !DILocation(line: 90, column: 5, scope: !1711, inlinedAt: !1712)
!1793 = !DILocation(line: 93, column: 31, scope: !1743, inlinedAt: !1712)
!1794 = !DILocation(line: 0, scope: !1487, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 93, column: 5, scope: !1743, inlinedAt: !1712)
!1796 = !DILocation(line: 50, column: 16, scope: !1497, inlinedAt: !1795)
!1797 = !DILocation(line: 50, column: 13, scope: !1497, inlinedAt: !1795)
!1798 = !DILocation(line: 50, column: 7, scope: !1487, inlinedAt: !1795)
!1799 = !DILocation(line: 0, scope: !142, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 51, column: 11, scope: !1497, inlinedAt: !1795)
!1801 = !DILocation(line: 178, column: 9, scope: !1506, inlinedAt: !1800)
!1802 = !DILocation(line: 178, column: 7, scope: !142, inlinedAt: !1800)
!1803 = !DILocation(line: 180, column: 13, scope: !1509, inlinedAt: !1800)
!1804 = !DILocation(line: 180, column: 11, scope: !1510, inlinedAt: !1800)
!1805 = !DILocation(line: 191, column: 11, scope: !1513, inlinedAt: !1800)
!1806 = !DILocation(line: 191, column: 11, scope: !1510, inlinedAt: !1800)
!1807 = !DILocation(line: 192, column: 9, scope: !1513, inlinedAt: !1800)
!1808 = !DILocation(line: 201, column: 11, scope: !1517, inlinedAt: !1800)
!1809 = !DILocation(line: 200, column: 11, scope: !1518, inlinedAt: !1800)
!1810 = !DILocation(line: 202, column: 9, scope: !1517, inlinedAt: !1800)
!1811 = !DILocation(line: 203, column: 14, scope: !1518, inlinedAt: !1800)
!1812 = !DILocation(line: 203, column: 18, scope: !1518, inlinedAt: !1800)
!1813 = !DILocation(line: 203, column: 9, scope: !1518, inlinedAt: !1800)
!1814 = !DILocation(line: 206, column: 7, scope: !142, inlinedAt: !1800)
!1815 = !DILocation(line: 207, column: 25, scope: !142, inlinedAt: !1800)
!1816 = !DILocation(line: 207, column: 10, scope: !142, inlinedAt: !1800)
!1817 = !DILocation(line: 51, column: 9, scope: !1497, inlinedAt: !1795)
!1818 = !DILocation(line: 51, column: 5, scope: !1497, inlinedAt: !1795)
!1819 = !DILocation(line: 52, column: 7, scope: !1487, inlinedAt: !1795)
!1820 = !DILocation(line: 52, column: 3, scope: !1487, inlinedAt: !1795)
!1821 = !DILocation(line: 52, column: 14, scope: !1487, inlinedAt: !1795)
!1822 = !DILocation(line: 52, column: 17, scope: !1487, inlinedAt: !1795)
!1823 = !DILocation(line: 53, column: 7, scope: !1487, inlinedAt: !1795)
!1824 = !DILocation(line: 53, column: 14, scope: !1487, inlinedAt: !1795)
!1825 = !DILocation(line: 53, column: 17, scope: !1487, inlinedAt: !1795)
!1826 = !DILocation(line: 54, column: 3, scope: !1487, inlinedAt: !1795)
!1827 = !DILocation(line: 93, column: 5, scope: !1743, inlinedAt: !1712)
!1828 = !DILocation(line: 95, column: 9, scope: !1706, inlinedAt: !1712)
!1829 = !DILocation(line: 95, column: 3, scope: !1706, inlinedAt: !1712)
!1830 = !DILocation(line: 308, column: 3, scope: !165)
!1831 = !DILocation(line: 303, column: 5, scope: !1664)
!1832 = !DILocation(line: 309, column: 19, scope: !165)
!1833 = !DILocation(line: 309, column: 30, scope: !165)
!1834 = !DILocation(line: 309, column: 9, scope: !165)
!1835 = !DILocation(line: 309, column: 7, scope: !165)
!1836 = !DILocation(line: 310, column: 27, scope: !165)
!1837 = !DILocation(line: 310, column: 33, scope: !165)
!1838 = !DILocation(line: 310, column: 38, scope: !165)
!1839 = !DILocation(line: 310, column: 41, scope: !165)
!1840 = !DILocation(line: 310, column: 7, scope: !165)
!1841 = !DILocation(line: 310, column: 13, scope: !165)
!1842 = !DILocation(line: 310, column: 18, scope: !165)
!1843 = !DILocation(line: 310, column: 21, scope: !165)
!1844 = !DILocation(line: 311, column: 1, scope: !165)
!1845 = distinct !DISubprogram(name: "compare_ranges", scope: !123, file: !123, line: 61, type: !1846, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !122, retainedNodes: !1848)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!57, !1436, !1436}
!1848 = !{!1849, !1850, !1851, !1852}
!1849 = !DILocalVariable(name: "a", arg: 1, scope: !1845, file: !123, line: 61, type: !1436)
!1850 = !DILocalVariable(name: "b", arg: 2, scope: !1845, file: !123, line: 61, type: !1436)
!1851 = !DILocalVariable(name: "a_start", scope: !1845, file: !123, line: 63, type: !57)
!1852 = !DILocalVariable(name: "b_start", scope: !1845, file: !123, line: 64, type: !57)
!1853 = !DILocation(line: 0, scope: !1845)
!1854 = !DILocation(line: 63, column: 56, scope: !1845)
!1855 = !DILocation(line: 63, column: 17, scope: !1845)
!1856 = !DILocation(line: 64, column: 56, scope: !1845)
!1857 = !DILocation(line: 64, column: 17, scope: !1845)
!1858 = !DILocation(line: 65, column: 18, scope: !1845)
!1859 = !DILocation(line: 65, column: 10, scope: !1845)
!1860 = !DILocation(line: 65, column: 3, scope: !1845)
!1861 = !DISubprogram(name: "qsort", scope: !1027, file: !1027, line: 830, type: !1862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !43, !46, !46, !1864}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1865 = distinct !DISubprogram(name: "reset_fields", scope: !123, file: !123, line: 314, type: !754, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !122, retainedNodes: !201)
!1866 = !DILocation(line: 316, column: 9, scope: !1865)
!1867 = !DILocation(line: 317, column: 19, scope: !1865)
!1868 = !DILocation(line: 318, column: 9, scope: !1865)
!1869 = !DILocation(line: 318, column: 3, scope: !1865)
!1870 = !DILocation(line: 319, column: 7, scope: !1865)
!1871 = !DILocation(line: 320, column: 1, scope: !1865)
!1872 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !206, file: !206, line: 51, type: !771, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1873)
!1873 = !{!1874}
!1874 = !DILocalVariable(name: "file", arg: 1, scope: !1872, file: !206, line: 51, type: !47)
!1875 = !DILocation(line: 0, scope: !1872)
!1876 = !DILocation(line: 53, column: 13, scope: !1872)
!1877 = !DILocation(line: 54, column: 1, scope: !1872)
!1878 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !206, file: !206, line: 88, type: !1879, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1881)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{null, !64}
!1881 = !{!1882}
!1882 = !DILocalVariable(name: "ignore", arg: 1, scope: !1878, file: !206, line: 88, type: !64)
!1883 = !DILocation(line: 0, scope: !1878)
!1884 = !DILocation(line: 90, column: 16, scope: !1878)
!1885 = !{!1886, !1886, i64 0}
!1886 = !{!"_Bool", !746, i64 0}
!1887 = !DILocation(line: 91, column: 1, scope: !1878)
!1888 = distinct !DISubprogram(name: "close_stdout", scope: !206, file: !206, line: 117, type: !754, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1889)
!1889 = !{!1890}
!1890 = !DILocalVariable(name: "write_error", scope: !1891, file: !206, line: 122, type: !47)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !206, line: 121, column: 5)
!1892 = distinct !DILexicalBlock(scope: !1888, file: !206, line: 119, column: 7)
!1893 = !DILocation(line: 119, column: 21, scope: !1892)
!1894 = !DILocation(line: 119, column: 7, scope: !1892)
!1895 = !DILocation(line: 119, column: 29, scope: !1892)
!1896 = !DILocation(line: 120, column: 7, scope: !1892)
!1897 = !DILocation(line: 120, column: 12, scope: !1892)
!1898 = !{i8 0, i8 2}
!1899 = !DILocation(line: 120, column: 25, scope: !1892)
!1900 = !DILocation(line: 120, column: 28, scope: !1892)
!1901 = !DILocation(line: 120, column: 34, scope: !1892)
!1902 = !DILocation(line: 119, column: 7, scope: !1888)
!1903 = !DILocation(line: 122, column: 33, scope: !1891)
!1904 = !DILocation(line: 0, scope: !1891)
!1905 = !DILocation(line: 123, column: 11, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1891, file: !206, line: 123, column: 11)
!1907 = !DILocation(line: 0, scope: !1906)
!1908 = !DILocation(line: 123, column: 11, scope: !1891)
!1909 = !DILocation(line: 124, column: 36, scope: !1906)
!1910 = !DILocation(line: 124, column: 9, scope: !1906)
!1911 = !DILocation(line: 127, column: 9, scope: !1906)
!1912 = !DILocation(line: 129, column: 14, scope: !1891)
!1913 = !DILocation(line: 129, column: 7, scope: !1891)
!1914 = !DILocation(line: 134, column: 42, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1888, file: !206, line: 134, column: 7)
!1916 = !DILocation(line: 134, column: 28, scope: !1915)
!1917 = !DILocation(line: 134, column: 50, scope: !1915)
!1918 = !DILocation(line: 134, column: 7, scope: !1888)
!1919 = !DILocation(line: 135, column: 12, scope: !1915)
!1920 = !DILocation(line: 135, column: 5, scope: !1915)
!1921 = !DILocation(line: 136, column: 1, scope: !1888)
!1922 = distinct !DISubprogram(name: "fdadvise", scope: !281, file: !281, line: 31, type: !1923, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !1927)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{null, !57, !1925, !1925, !1926}
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !826, line: 63, baseType: !852)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !32, line: 52, baseType: !31)
!1927 = !{!1928, !1929, !1930, !1931, !1932}
!1928 = !DILocalVariable(name: "fd", arg: 1, scope: !1922, file: !281, line: 31, type: !57)
!1929 = !DILocalVariable(name: "offset", arg: 2, scope: !1922, file: !281, line: 31, type: !1925)
!1930 = !DILocalVariable(name: "len", arg: 3, scope: !1922, file: !281, line: 31, type: !1925)
!1931 = !DILocalVariable(name: "advice", arg: 4, scope: !1922, file: !281, line: 31, type: !1926)
!1932 = !DILocalVariable(name: "__x", scope: !1933, file: !281, line: 34, type: !57)
!1933 = distinct !DILexicalBlock(scope: !1922, file: !281, line: 34, column: 3)
!1934 = !DILocation(line: 0, scope: !1922)
!1935 = !DILocation(line: 34, column: 3, scope: !1933)
!1936 = !DILocation(line: 0, scope: !1933)
!1937 = !DILocation(line: 36, column: 1, scope: !1922)
!1938 = !DISubprogram(name: "posix_fadvise", scope: !1939, file: !1939, line: 288, type: !1940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!1939 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!57, !57, !853, !853, !57}
!1942 = distinct !DISubprogram(name: "fadvise", scope: !281, file: !281, line: 39, type: !1943, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !1979)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{null, !1945, !1926}
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1049, line: 7, baseType: !1947)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !831, line: 49, size: 1728, elements: !1948)
!1948 = !{!1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1947, file: !831, line: 51, baseType: !57, size: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1947, file: !831, line: 54, baseType: !41, size: 64, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1947, file: !831, line: 55, baseType: !41, size: 64, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1947, file: !831, line: 56, baseType: !41, size: 64, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1947, file: !831, line: 57, baseType: !41, size: 64, offset: 256)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1947, file: !831, line: 58, baseType: !41, size: 64, offset: 320)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1947, file: !831, line: 59, baseType: !41, size: 64, offset: 384)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1947, file: !831, line: 60, baseType: !41, size: 64, offset: 448)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1947, file: !831, line: 61, baseType: !41, size: 64, offset: 512)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1947, file: !831, line: 64, baseType: !41, size: 64, offset: 576)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1947, file: !831, line: 65, baseType: !41, size: 64, offset: 640)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1947, file: !831, line: 66, baseType: !41, size: 64, offset: 704)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1947, file: !831, line: 68, baseType: !846, size: 64, offset: 768)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1947, file: !831, line: 70, baseType: !1963, size: 64, offset: 832)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1947, file: !831, line: 72, baseType: !57, size: 32, offset: 896)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1947, file: !831, line: 73, baseType: !57, size: 32, offset: 928)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1947, file: !831, line: 74, baseType: !852, size: 64, offset: 960)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1947, file: !831, line: 77, baseType: !154, size: 16, offset: 1024)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1947, file: !831, line: 78, baseType: !856, size: 8, offset: 1040)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1947, file: !831, line: 79, baseType: !858, size: 8, offset: 1048)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1947, file: !831, line: 81, baseType: !862, size: 64, offset: 1088)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1947, file: !831, line: 89, baseType: !865, size: 64, offset: 1152)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1947, file: !831, line: 91, baseType: !867, size: 64, offset: 1216)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1947, file: !831, line: 92, baseType: !870, size: 64, offset: 1280)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1947, file: !831, line: 93, baseType: !1963, size: 64, offset: 1344)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1947, file: !831, line: 94, baseType: !43, size: 64, offset: 1408)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1947, file: !831, line: 95, baseType: !44, size: 64, offset: 1472)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1947, file: !831, line: 96, baseType: !57, size: 32, offset: 1536)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1947, file: !831, line: 98, baseType: !877, size: 160, offset: 1568)
!1979 = !{!1980, !1981}
!1980 = !DILocalVariable(name: "fp", arg: 1, scope: !1942, file: !281, line: 39, type: !1945)
!1981 = !DILocalVariable(name: "advice", arg: 2, scope: !1942, file: !281, line: 39, type: !1926)
!1982 = !DILocation(line: 0, scope: !1942)
!1983 = !DILocation(line: 41, column: 7, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1942, file: !281, line: 41, column: 7)
!1985 = !DILocation(line: 41, column: 7, scope: !1942)
!1986 = !DILocation(line: 42, column: 15, scope: !1984)
!1987 = !DILocation(line: 0, scope: !1922, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 42, column: 5, scope: !1984)
!1989 = !DILocation(line: 34, column: 3, scope: !1933, inlinedAt: !1988)
!1990 = !DILocation(line: 0, scope: !1933, inlinedAt: !1988)
!1991 = !DILocation(line: 42, column: 5, scope: !1984)
!1992 = !DILocation(line: 43, column: 1, scope: !1942)
!1993 = !DISubprogram(name: "fileno", scope: !826, file: !826, line: 785, type: !1994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!57, !1963}
!1996 = distinct !DISubprogram(name: "getndelim2", scope: !284, file: !284, line: 71, type: !1997, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !2033)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!1194, !58, !145, !44, !44, !57, !57, !1999}
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1049, line: 7, baseType: !2001)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !831, line: 49, size: 1728, elements: !2002)
!2002 = !{!2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2001, file: !831, line: 51, baseType: !57, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2001, file: !831, line: 54, baseType: !41, size: 64, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2001, file: !831, line: 55, baseType: !41, size: 64, offset: 128)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2001, file: !831, line: 56, baseType: !41, size: 64, offset: 192)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2001, file: !831, line: 57, baseType: !41, size: 64, offset: 256)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2001, file: !831, line: 58, baseType: !41, size: 64, offset: 320)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2001, file: !831, line: 59, baseType: !41, size: 64, offset: 384)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2001, file: !831, line: 60, baseType: !41, size: 64, offset: 448)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2001, file: !831, line: 61, baseType: !41, size: 64, offset: 512)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2001, file: !831, line: 64, baseType: !41, size: 64, offset: 576)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2001, file: !831, line: 65, baseType: !41, size: 64, offset: 640)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2001, file: !831, line: 66, baseType: !41, size: 64, offset: 704)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2001, file: !831, line: 68, baseType: !846, size: 64, offset: 768)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2001, file: !831, line: 70, baseType: !2017, size: 64, offset: 832)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2001, file: !831, line: 72, baseType: !57, size: 32, offset: 896)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2001, file: !831, line: 73, baseType: !57, size: 32, offset: 928)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2001, file: !831, line: 74, baseType: !852, size: 64, offset: 960)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2001, file: !831, line: 77, baseType: !154, size: 16, offset: 1024)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2001, file: !831, line: 78, baseType: !856, size: 8, offset: 1040)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2001, file: !831, line: 79, baseType: !858, size: 8, offset: 1048)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2001, file: !831, line: 81, baseType: !862, size: 64, offset: 1088)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2001, file: !831, line: 89, baseType: !865, size: 64, offset: 1152)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2001, file: !831, line: 91, baseType: !867, size: 64, offset: 1216)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2001, file: !831, line: 92, baseType: !870, size: 64, offset: 1280)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2001, file: !831, line: 93, baseType: !2017, size: 64, offset: 1344)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2001, file: !831, line: 94, baseType: !43, size: 64, offset: 1408)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2001, file: !831, line: 95, baseType: !44, size: 64, offset: 1472)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2001, file: !831, line: 96, baseType: !57, size: 32, offset: 1536)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2001, file: !831, line: 98, baseType: !877, size: 160, offset: 1568)
!2033 = !{!2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2049, !2050, !2051, !2056, !2059, !2060, !2063, !2066, !2067}
!2034 = !DILocalVariable(name: "lineptr", arg: 1, scope: !1996, file: !284, line: 71, type: !58)
!2035 = !DILocalVariable(name: "linesize", arg: 2, scope: !1996, file: !284, line: 71, type: !145)
!2036 = !DILocalVariable(name: "offset", arg: 3, scope: !1996, file: !284, line: 71, type: !44)
!2037 = !DILocalVariable(name: "nmax", arg: 4, scope: !1996, file: !284, line: 71, type: !44)
!2038 = !DILocalVariable(name: "delim1", arg: 5, scope: !1996, file: !284, line: 72, type: !57)
!2039 = !DILocalVariable(name: "delim2", arg: 6, scope: !1996, file: !284, line: 72, type: !57)
!2040 = !DILocalVariable(name: "stream", arg: 7, scope: !1996, file: !284, line: 72, type: !1999)
!2041 = !DILocalVariable(name: "nbytes_avail", scope: !1996, file: !284, line: 74, type: !44)
!2042 = !DILocalVariable(name: "read_pos", scope: !1996, file: !284, line: 75, type: !41)
!2043 = !DILocalVariable(name: "bytes_stored", scope: !1996, file: !284, line: 76, type: !1194)
!2044 = !DILocalVariable(name: "ptr", scope: !1996, file: !284, line: 77, type: !41)
!2045 = !DILocalVariable(name: "size", scope: !1996, file: !284, line: 78, type: !44)
!2046 = !DILocalVariable(name: "found_delimiter", scope: !1996, file: !284, line: 79, type: !64)
!2047 = !DILocalVariable(name: "c", scope: !2048, file: !284, line: 112, type: !57)
!2048 = distinct !DILexicalBlock(scope: !1996, file: !284, line: 108, column: 5)
!2049 = !DILocalVariable(name: "buffer", scope: !2048, file: !284, line: 113, type: !47)
!2050 = !DILocalVariable(name: "buffer_len", scope: !2048, file: !284, line: 114, type: !44)
!2051 = !DILocalVariable(name: "end", scope: !2052, file: !284, line: 121, type: !47)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !284, line: 120, column: 13)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !284, line: 119, column: 15)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !284, line: 118, column: 9)
!2055 = distinct !DILexicalBlock(scope: !2048, file: !284, line: 117, column: 11)
!2056 = !DILocalVariable(name: "newsize", scope: !2057, file: !284, line: 153, type: !44)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !284, line: 150, column: 9)
!2058 = distinct !DILexicalBlock(scope: !2048, file: !284, line: 149, column: 11)
!2059 = !DILocalVariable(name: "newptr", scope: !2057, file: !284, line: 154, type: !41)
!2060 = !DILocalVariable(name: "newsizemax", scope: !2061, file: !284, line: 166, type: !44)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !284, line: 165, column: 13)
!2062 = distinct !DILexicalBlock(scope: !2057, file: !284, line: 164, column: 15)
!2063 = !DILocalVariable(name: "copy_len", scope: !2064, file: !284, line: 186, type: !44)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !284, line: 185, column: 9)
!2065 = distinct !DILexicalBlock(scope: !2048, file: !284, line: 184, column: 11)
!2066 = !DILabel(scope: !1996, name: "unlock_done", file: !284, line: 210)
!2067 = !DILabel(scope: !1996, name: "done", file: !284, line: 213)
!2068 = !DILocation(line: 0, scope: !1996)
!2069 = !DILocation(line: 77, column: 15, scope: !1996)
!2070 = !DILocation(line: 78, column: 17, scope: !1996)
!2071 = !DILocation(line: 81, column: 8, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1996, file: !284, line: 81, column: 7)
!2073 = !DILocation(line: 81, column: 7, scope: !1996)
!2074 = !DILocation(line: 83, column: 19, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2072, file: !284, line: 82, column: 5)
!2076 = !DILocation(line: 83, column: 14, scope: !2075)
!2077 = !DILocation(line: 84, column: 13, scope: !2075)
!2078 = !DILocation(line: 85, column: 12, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2075, file: !284, line: 85, column: 11)
!2080 = !DILocation(line: 85, column: 11, scope: !2075)
!2081 = !DILocation(line: 89, column: 12, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1996, file: !284, line: 89, column: 7)
!2083 = !DILocation(line: 89, column: 7, scope: !1996)
!2084 = !DILocation(line: 92, column: 23, scope: !1996)
!2085 = !DILocation(line: 95, column: 20, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !1996, file: !284, line: 95, column: 7)
!2087 = !DILocation(line: 95, column: 25, scope: !2086)
!2088 = !DILocation(line: 93, column: 18, scope: !1996)
!2089 = !DILocation(line: 99, column: 14, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1996, file: !284, line: 99, column: 7)
!2091 = !DILocation(line: 99, column: 7, scope: !1996)
!2092 = !DILocation(line: 107, column: 3, scope: !1996)
!2093 = !DILocation(line: 0, scope: !2048)
!2094 = !DILocation(line: 114, column: 7, scope: !2048)
!2095 = !DILocation(line: 116, column: 16, scope: !2048)
!2096 = !DILocation(line: 117, column: 11, scope: !2055)
!2097 = !DILocation(line: 117, column: 11, scope: !2048)
!2098 = !DILocation(line: 119, column: 15, scope: !2054)
!2099 = !DILocation(line: 121, column: 33, scope: !2052)
!2100 = !DILocation(line: 0, scope: !2052)
!2101 = !DILocation(line: 122, column: 19, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2052, file: !284, line: 122, column: 19)
!2103 = !DILocation(line: 122, column: 19, scope: !2052)
!2104 = !DILocation(line: 124, column: 36, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2102, file: !284, line: 123, column: 17)
!2106 = !DILocation(line: 124, column: 45, scope: !2105)
!2107 = !DILocation(line: 124, column: 30, scope: !2105)
!2108 = !DILocation(line: 126, column: 17, scope: !2105)
!2109 = !DILocalVariable(name: "__fp", arg: 1, scope: !2110, file: !1107, line: 66, type: !1999)
!2110 = distinct !DISubprogram(name: "getc_unlocked", scope: !1107, file: !1107, line: 66, type: !2111, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !2113)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!57, !1999}
!2113 = !{!2109}
!2114 = !DILocation(line: 0, scope: !2110, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 131, column: 15, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2055, file: !284, line: 130, column: 9)
!2117 = !DILocation(line: 68, column: 10, scope: !2110, inlinedAt: !2115)
!2118 = !DILocation(line: 132, column: 15, scope: !2116)
!2119 = !DILocation(line: 132, column: 17, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2116, file: !284, line: 132, column: 15)
!2121 = !DILocation(line: 135, column: 28, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !284, line: 135, column: 19)
!2123 = distinct !DILexicalBlock(scope: !2120, file: !284, line: 133, column: 13)
!2124 = !DILocation(line: 201, column: 5, scope: !1996)
!2125 = !DILocation(line: 140, column: 17, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2116, file: !284, line: 140, column: 15)
!2127 = !DILocation(line: 140, column: 27, scope: !2126)
!2128 = !DILocation(line: 142, column: 22, scope: !2116)
!2129 = !DILocation(line: 149, column: 26, scope: !2058)
!2130 = !DILocation(line: 149, column: 37, scope: !2058)
!2131 = !DILocation(line: 149, column: 24, scope: !2058)
!2132 = !DILocation(line: 149, column: 41, scope: !2058)
!2133 = !DILocation(line: 153, column: 33, scope: !2057)
!2134 = !DILocation(line: 153, column: 28, scope: !2057)
!2135 = !DILocation(line: 0, scope: !2057)
!2136 = !DILocation(line: 158, column: 35, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2057, file: !284, line: 158, column: 15)
!2138 = !DILocation(line: 158, column: 23, scope: !2137)
!2139 = !DILocation(line: 158, column: 42, scope: !2137)
!2140 = !DILocation(line: 158, column: 15, scope: !2057)
!2141 = !DILocation(line: 161, column: 23, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2057, file: !284, line: 161, column: 15)
!2143 = !DILocation(line: 161, column: 33, scope: !2142)
!2144 = !DILocation(line: 164, column: 44, scope: !2062)
!2145 = !DILocation(line: 164, column: 34, scope: !2062)
!2146 = !DILocation(line: 164, column: 15, scope: !2057)
!2147 = !DILocation(line: 0, scope: !2061)
!2148 = !DILocation(line: 167, column: 24, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2061, file: !284, line: 167, column: 19)
!2150 = !DILocation(line: 159, column: 21, scope: !2137)
!2151 = !DILocation(line: 173, column: 20, scope: !2057)
!2152 = !DILocation(line: 174, column: 16, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2057, file: !284, line: 174, column: 15)
!2154 = !DILocation(line: 174, column: 15, scope: !2057)
!2155 = !DILocation(line: 172, column: 34, scope: !2057)
!2156 = !DILocation(line: 178, column: 42, scope: !2057)
!2157 = !DILocation(line: 184, column: 13, scope: !2065)
!2158 = !DILocation(line: 184, column: 11, scope: !2048)
!2159 = !DILocation(line: 186, column: 42, scope: !2064)
!2160 = !DILocation(line: 0, scope: !2064)
!2161 = !DILocation(line: 187, column: 15, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2064, file: !284, line: 187, column: 15)
!2163 = !DILocation(line: 187, column: 26, scope: !2162)
!2164 = !DILocation(line: 187, column: 15, scope: !2064)
!2165 = !DILocation(line: 189, column: 15, scope: !2064)
!2166 = !DILocalVariable(name: "__dest", arg: 1, scope: !2167, file: !1693, line: 26, type: !2170)
!2167 = distinct !DISubprogram(name: "memcpy", scope: !1693, file: !1693, line: 26, type: !2168, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !2172)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!43, !2170, !2171, !44}
!2170 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!2171 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1436)
!2172 = !{!2166, !2173, !2174}
!2173 = !DILocalVariable(name: "__src", arg: 2, scope: !2167, file: !1693, line: 26, type: !2171)
!2174 = !DILocalVariable(name: "__len", arg: 3, scope: !2167, file: !1693, line: 26, type: !44)
!2175 = !DILocation(line: 0, scope: !2167, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 190, column: 13, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2064, file: !284, line: 189, column: 15)
!2178 = !DILocation(line: 29, column: 10, scope: !2167, inlinedAt: !2176)
!2179 = !DILocation(line: 190, column: 13, scope: !2177)
!2180 = !DILocation(line: 192, column: 25, scope: !2177)
!2181 = !DILocation(line: 192, column: 23, scope: !2177)
!2182 = !DILocation(line: 193, column: 20, scope: !2064)
!2183 = !DILocation(line: 194, column: 24, scope: !2064)
!2184 = !DILocation(line: 195, column: 9, scope: !2064)
!2185 = !DILocation(line: 199, column: 18, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2048, file: !284, line: 199, column: 11)
!2187 = !DILocation(line: 199, column: 40, scope: !2186)
!2188 = !DILocation(line: 199, column: 21, scope: !2186)
!2189 = !DILocation(line: 199, column: 11, scope: !2048)
!2190 = !DILocation(line: 202, column: 11, scope: !1996)
!2191 = !DILocation(line: 201, column: 5, scope: !2048)
!2192 = distinct !{!2192, !2092, !2193, !801}
!2193 = !DILocation(line: 202, column: 26, scope: !1996)
!2194 = !DILocation(line: 213, column: 2, scope: !1996)
!2195 = !DILocation(line: 214, column: 12, scope: !1996)
!2196 = !DILocation(line: 215, column: 13, scope: !1996)
!2197 = !DILocation(line: 216, column: 10, scope: !1996)
!2198 = !DILocation(line: 206, column: 13, scope: !1996)
!2199 = !DILocation(line: 208, column: 34, scope: !1996)
!2200 = !DILocation(line: 208, column: 27, scope: !1996)
!2201 = !DILocation(line: 217, column: 1, scope: !1996)
!2202 = distinct !DISubprogram(name: "memchr2", scope: !287, file: !287, line: 36, type: !2203, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !286, retainedNodes: !2205)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!43, !1436, !57, !57, !44}
!2205 = !{!2206, !2207, !2208, !2209, !2210, !2211, !2212, !2216, !2217, !2218, !2219, !2220, !2221, !2223}
!2206 = !DILocalVariable(name: "s", arg: 1, scope: !2202, file: !287, line: 36, type: !1436)
!2207 = !DILocalVariable(name: "c1_in", arg: 2, scope: !2202, file: !287, line: 36, type: !57)
!2208 = !DILocalVariable(name: "c2_in", arg: 3, scope: !2202, file: !287, line: 36, type: !57)
!2209 = !DILocalVariable(name: "n", arg: 4, scope: !2202, file: !287, line: 36, type: !44)
!2210 = !DILocalVariable(name: "char_ptr", scope: !2202, file: !287, line: 45, type: !290)
!2211 = !DILocalVariable(name: "void_ptr", scope: !2202, file: !287, line: 46, type: !1436)
!2212 = !DILocalVariable(name: "longword_ptr", scope: !2202, file: !287, line: 47, type: !2213)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2215)
!2215 = !DIDerivedType(tag: DW_TAG_typedef, name: "longword", scope: !2202, file: !287, line: 43, baseType: !46)
!2216 = !DILocalVariable(name: "repeated_one", scope: !2202, file: !287, line: 48, type: !2215)
!2217 = !DILocalVariable(name: "repeated_c1", scope: !2202, file: !287, line: 49, type: !2215)
!2218 = !DILocalVariable(name: "repeated_c2", scope: !2202, file: !287, line: 50, type: !2215)
!2219 = !DILocalVariable(name: "c1", scope: !2202, file: !287, line: 51, type: !50)
!2220 = !DILocalVariable(name: "c2", scope: !2202, file: !287, line: 52, type: !50)
!2221 = !DILocalVariable(name: "longword1", scope: !2222, file: !287, line: 142, type: !2215)
!2222 = distinct !DILexicalBlock(scope: !2202, file: !287, line: 141, column: 5)
!2223 = !DILocalVariable(name: "longword2", scope: !2222, file: !287, line: 143, type: !2215)
!2224 = !DILocation(line: 0, scope: !2202)
!2225 = !DILocation(line: 57, column: 7, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2202, file: !287, line: 57, column: 7)
!2227 = !DILocation(line: 57, column: 10, scope: !2226)
!2228 = !DILocation(line: 57, column: 7, scope: !2202)
!2229 = !DILocation(line: 63, column: 10, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !287, line: 62, column: 3)
!2231 = distinct !DILexicalBlock(scope: !2202, file: !287, line: 62, column: 3)
!2232 = !DILocation(line: 63, column: 14, scope: !2230)
!2233 = !DILocation(line: 62, column: 3, scope: !2231)
!2234 = !DILocation(line: 63, column: 17, scope: !2230)
!2235 = !DILocation(line: 63, column: 38, scope: !2230)
!2236 = !DILocation(line: 63, column: 58, scope: !2230)
!2237 = !DILocation(line: 58, column: 12, scope: !2226)
!2238 = !DILocation(line: 58, column: 5, scope: !2226)
!2239 = !DILocation(line: 67, column: 11, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !287, line: 67, column: 11)
!2241 = distinct !DILexicalBlock(scope: !2230, file: !287, line: 65, column: 5)
!2242 = !DILocation(line: 67, column: 21, scope: !2240)
!2243 = !DILocation(line: 67, column: 27, scope: !2240)
!2244 = !DILocation(line: 69, column: 27, scope: !2241)
!2245 = distinct !{!2245, !2233, !2246, !801}
!2246 = !DILocation(line: 70, column: 5, scope: !2231)
!2247 = !DILocation(line: 72, column: 18, scope: !2202)
!2248 = !DILocation(line: 0, scope: !2231)
!2249 = !DILocation(line: 82, column: 26, scope: !2202)
!2250 = !DILocation(line: 82, column: 20, scope: !2202)
!2251 = !DILocation(line: 82, column: 17, scope: !2202)
!2252 = !DILocation(line: 84, column: 30, scope: !2202)
!2253 = !DILocation(line: 84, column: 15, scope: !2202)
!2254 = !DILocation(line: 89, column: 34, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !287, line: 87, column: 5)
!2256 = distinct !DILexicalBlock(scope: !2202, file: !287, line: 86, column: 7)
!2257 = !DILocation(line: 89, column: 19, scope: !2255)
!2258 = !DILocation(line: 140, column: 3, scope: !2202)
!2259 = !DILocation(line: 72, column: 16, scope: !2202)
!2260 = !DILocation(line: 140, column: 12, scope: !2202)
!2261 = !DILocation(line: 142, column: 28, scope: !2222)
!2262 = !DILocation(line: 0, scope: !2222)
!2263 = !DILocation(line: 142, column: 42, scope: !2222)
!2264 = !DILocation(line: 145, column: 25, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2222, file: !287, line: 145, column: 11)
!2266 = !DILocation(line: 145, column: 43, scope: !2265)
!2267 = !DILocation(line: 145, column: 41, scope: !2265)
!2268 = !DILocation(line: 146, column: 13, scope: !2265)
!2269 = !DILocation(line: 147, column: 12, scope: !2265)
!2270 = !DILocation(line: 147, column: 35, scope: !2265)
!2271 = !DILocation(line: 145, column: 11, scope: !2222)
!2272 = distinct !{!2272, !2258, !2273, !801}
!2273 = !DILocation(line: 151, column: 5, scope: !2202)
!2274 = !DILocation(line: 162, column: 12, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !287, line: 162, column: 3)
!2276 = distinct !DILexicalBlock(scope: !2202, file: !287, line: 162, column: 3)
!2277 = !DILocation(line: 162, column: 3, scope: !2276)
!2278 = !DILocation(line: 153, column: 14, scope: !2202)
!2279 = !DILocation(line: 164, column: 11, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !287, line: 164, column: 11)
!2281 = distinct !DILexicalBlock(scope: !2275, file: !287, line: 163, column: 5)
!2282 = !DILocation(line: 164, column: 21, scope: !2280)
!2283 = !DILocation(line: 164, column: 27, scope: !2280)
!2284 = !DILocation(line: 162, column: 17, scope: !2275)
!2285 = !DILocation(line: 162, column: 22, scope: !2275)
!2286 = distinct !{!2286, !2277, !2287, !801}
!2287 = !DILocation(line: 166, column: 5, scope: !2276)
!2288 = !DILocation(line: 169, column: 1, scope: !2202)
!2289 = distinct !DISubprogram(name: "set_program_name", scope: !219, file: !219, line: 39, type: !771, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2290)
!2290 = !{!2291, !2292, !2293}
!2291 = !DILocalVariable(name: "argv0", arg: 1, scope: !2289, file: !219, line: 39, type: !47)
!2292 = !DILocalVariable(name: "slash", scope: !2289, file: !219, line: 46, type: !47)
!2293 = !DILocalVariable(name: "base", scope: !2289, file: !219, line: 47, type: !47)
!2294 = !DILocation(line: 0, scope: !2289)
!2295 = !DILocation(line: 51, column: 13, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2289, file: !219, line: 51, column: 7)
!2297 = !DILocation(line: 51, column: 7, scope: !2289)
!2298 = !DILocation(line: 55, column: 14, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2296, file: !219, line: 52, column: 5)
!2300 = !DILocation(line: 54, column: 7, scope: !2299)
!2301 = !DILocation(line: 56, column: 7, scope: !2299)
!2302 = !DILocation(line: 59, column: 11, scope: !2289)
!2303 = !DILocation(line: 60, column: 17, scope: !2289)
!2304 = !DILocation(line: 60, column: 11, scope: !2289)
!2305 = !DILocation(line: 61, column: 12, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2289, file: !219, line: 61, column: 7)
!2307 = !DILocation(line: 61, column: 20, scope: !2306)
!2308 = !DILocation(line: 61, column: 25, scope: !2306)
!2309 = !DILocation(line: 61, column: 42, scope: !2306)
!2310 = !DILocation(line: 61, column: 28, scope: !2306)
!2311 = !DILocation(line: 61, column: 61, scope: !2306)
!2312 = !DILocation(line: 61, column: 7, scope: !2289)
!2313 = !DILocation(line: 64, column: 11, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !219, line: 64, column: 11)
!2315 = distinct !DILexicalBlock(scope: !2306, file: !219, line: 62, column: 5)
!2316 = !DILocation(line: 64, column: 36, scope: !2314)
!2317 = !DILocation(line: 64, column: 11, scope: !2315)
!2318 = !DILocation(line: 66, column: 24, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2314, file: !219, line: 65, column: 9)
!2320 = !DILocation(line: 70, column: 41, scope: !2319)
!2321 = !DILocation(line: 72, column: 9, scope: !2319)
!2322 = !DILocation(line: 84, column: 16, scope: !2289)
!2323 = !DILocation(line: 90, column: 27, scope: !2289)
!2324 = !DILocation(line: 92, column: 1, scope: !2289)
!2325 = distinct !DISubprogram(name: "clone_quoting_options", scope: !225, file: !225, line: 122, type: !2326, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !2329)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!2328, !2328}
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!2329 = !{!2330, !2331, !2332}
!2330 = !DILocalVariable(name: "o", arg: 1, scope: !2325, file: !225, line: 122, type: !2328)
!2331 = !DILocalVariable(name: "e", scope: !2325, file: !225, line: 124, type: !57)
!2332 = !DILocalVariable(name: "p", scope: !2325, file: !225, line: 125, type: !2328)
!2333 = !DILocation(line: 0, scope: !2325)
!2334 = !DILocation(line: 124, column: 11, scope: !2325)
!2335 = !DILocation(line: 125, column: 40, scope: !2325)
!2336 = !DILocation(line: 125, column: 31, scope: !2325)
!2337 = !DILocation(line: 127, column: 9, scope: !2325)
!2338 = !DILocation(line: 128, column: 3, scope: !2325)
!2339 = distinct !DISubprogram(name: "get_quoting_style", scope: !225, file: !225, line: 133, type: !2340, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !2344)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!17, !2342}
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!2344 = !{!2345}
!2345 = !DILocalVariable(name: "o", arg: 1, scope: !2339, file: !225, line: 133, type: !2342)
!2346 = !DILocation(line: 0, scope: !2339)
!2347 = !DILocation(line: 135, column: 11, scope: !2339)
!2348 = !DILocation(line: 135, column: 46, scope: !2339)
!2349 = !{!2350, !746, i64 0}
!2350 = !{!"quoting_options", !746, i64 0, !990, i64 4, !746, i64 8, !745, i64 40, !745, i64 48}
!2351 = !DILocation(line: 135, column: 3, scope: !2339)
!2352 = distinct !DISubprogram(name: "set_quoting_style", scope: !225, file: !225, line: 141, type: !2353, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !2355)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{null, !2328, !17}
!2355 = !{!2356, !2357}
!2356 = !DILocalVariable(name: "o", arg: 1, scope: !2352, file: !225, line: 141, type: !2328)
!2357 = !DILocalVariable(name: "s", arg: 2, scope: !2352, file: !225, line: 141, type: !17)
!2358 = !DILocation(line: 0, scope: !2352)
!2359 = !DILocation(line: 143, column: 4, scope: !2352)
!2360 = !DILocation(line: 143, column: 39, scope: !2352)
!2361 = !DILocation(line: 143, column: 45, scope: !2352)
!2362 = !DILocation(line: 144, column: 1, scope: !2352)
!2363 = distinct !DISubprogram(name: "set_char_quoting", scope: !225, file: !225, line: 152, type: !2364, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !2366)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!57, !2328, !42, !57}
!2366 = !{!2367, !2368, !2369, !2370, !2371, !2373, !2374}
!2367 = !DILocalVariable(name: "o", arg: 1, scope: !2363, file: !225, line: 152, type: !2328)
!2368 = !DILocalVariable(name: "c", arg: 2, scope: !2363, file: !225, line: 152, type: !42)
!2369 = !DILocalVariable(name: "i", arg: 3, scope: !2363, file: !225, line: 152, type: !57)
!2370 = !DILocalVariable(name: "uc", scope: !2363, file: !225, line: 154, type: !50)
!2371 = !DILocalVariable(name: "p", scope: !2363, file: !225, line: 155, type: !2372)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2373 = !DILocalVariable(name: "shift", scope: !2363, file: !225, line: 157, type: !57)
!2374 = !DILocalVariable(name: "r", scope: !2363, file: !225, line: 158, type: !57)
!2375 = !DILocation(line: 0, scope: !2363)
!2376 = !DILocation(line: 156, column: 6, scope: !2363)
!2377 = !DILocation(line: 156, column: 62, scope: !2363)
!2378 = !DILocation(line: 156, column: 57, scope: !2363)
!2379 = !DILocation(line: 157, column: 15, scope: !2363)
!2380 = !DILocation(line: 158, column: 12, scope: !2363)
!2381 = !DILocation(line: 158, column: 15, scope: !2363)
!2382 = !DILocation(line: 158, column: 25, scope: !2363)
!2383 = !DILocation(line: 159, column: 13, scope: !2363)
!2384 = !DILocation(line: 159, column: 18, scope: !2363)
!2385 = !DILocation(line: 159, column: 23, scope: !2363)
!2386 = !DILocation(line: 159, column: 6, scope: !2363)
!2387 = !DILocation(line: 160, column: 3, scope: !2363)
!2388 = distinct !DISubprogram(name: "set_quoting_flags", scope: !225, file: !225, line: 168, type: !2389, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !2391)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!57, !2328, !57}
!2391 = !{!2392, !2393, !2394}
!2392 = !DILocalVariable(name: "o", arg: 1, scope: !2388, file: !225, line: 168, type: !2328)
!2393 = !DILocalVariable(name: "i", arg: 2, scope: !2388, file: !225, line: 168, type: !57)
!2394 = !DILocalVariable(name: "r", scope: !2388, file: !225, line: 170, type: !57)
!2395 = !DILocation(line: 0, scope: !2388)
!2396 = !DILocation(line: 171, column: 8, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2388, file: !225, line: 171, column: 7)
!2398 = !DILocation(line: 171, column: 7, scope: !2388)
!2399 = !DILocation(line: 173, column: 10, scope: !2388)
!2400 = !{!2350, !990, i64 4}
!2401 = !DILocation(line: 174, column: 12, scope: !2388)
!2402 = !DILocation(line: 175, column: 3, scope: !2388)
!2403 = distinct !DISubprogram(name: "set_custom_quoting", scope: !225, file: !225, line: 179, type: !2404, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !2406)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !2328, !47, !47}
!2406 = !{!2407, !2408, !2409}
!2407 = !DILocalVariable(name: "o", arg: 1, scope: !2403, file: !225, line: 179, type: !2328)
!2408 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2403, file: !225, line: 180, type: !47)
!2409 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2403, file: !225, line: 180, type: !47)
!2410 = !DILocation(line: 0, scope: !2403)
!2411 = !DILocation(line: 182, column: 8, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2403, file: !225, line: 182, column: 7)
!2413 = !DILocation(line: 182, column: 7, scope: !2403)
!2414 = !DILocation(line: 184, column: 6, scope: !2403)
!2415 = !DILocation(line: 184, column: 12, scope: !2403)
!2416 = !DILocation(line: 185, column: 8, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2403, file: !225, line: 185, column: 7)
!2418 = !DILocation(line: 185, column: 19, scope: !2417)
!2419 = !DILocation(line: 186, column: 5, scope: !2417)
!2420 = !DILocation(line: 187, column: 6, scope: !2403)
!2421 = !DILocation(line: 187, column: 17, scope: !2403)
!2422 = !{!2350, !745, i64 40}
!2423 = !DILocation(line: 188, column: 6, scope: !2403)
!2424 = !DILocation(line: 188, column: 18, scope: !2403)
!2425 = !{!2350, !745, i64 48}
!2426 = !DILocation(line: 189, column: 1, scope: !2403)
!2427 = distinct !DISubprogram(name: "quotearg_buffer", scope: !225, file: !225, line: 784, type: !2428, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !2430)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!44, !41, !44, !47, !44, !2342}
!2430 = !{!2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438}
!2431 = !DILocalVariable(name: "buffer", arg: 1, scope: !2427, file: !225, line: 784, type: !41)
!2432 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2427, file: !225, line: 784, type: !44)
!2433 = !DILocalVariable(name: "arg", arg: 3, scope: !2427, file: !225, line: 785, type: !47)
!2434 = !DILocalVariable(name: "argsize", arg: 4, scope: !2427, file: !225, line: 785, type: !44)
!2435 = !DILocalVariable(name: "o", arg: 5, scope: !2427, file: !225, line: 786, type: !2342)
!2436 = !DILocalVariable(name: "p", scope: !2427, file: !225, line: 788, type: !2342)
!2437 = !DILocalVariable(name: "e", scope: !2427, file: !225, line: 789, type: !57)
!2438 = !DILocalVariable(name: "r", scope: !2427, file: !225, line: 790, type: !44)
!2439 = !DILocation(line: 0, scope: !2427)
!2440 = !DILocation(line: 788, column: 37, scope: !2427)
!2441 = !DILocation(line: 789, column: 11, scope: !2427)
!2442 = !DILocation(line: 791, column: 43, scope: !2427)
!2443 = !DILocation(line: 791, column: 53, scope: !2427)
!2444 = !DILocation(line: 791, column: 60, scope: !2427)
!2445 = !DILocation(line: 792, column: 43, scope: !2427)
!2446 = !DILocation(line: 792, column: 58, scope: !2427)
!2447 = !DILocation(line: 790, column: 14, scope: !2427)
!2448 = !DILocation(line: 793, column: 9, scope: !2427)
!2449 = !DILocation(line: 794, column: 3, scope: !2427)
!2450 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !225, file: !225, line: 256, type: !2451, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !2455)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!44, !41, !44, !47, !44, !17, !57, !2453, !47, !47}
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2455 = !{!2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2480, !2481, !2482, !2483, !2484, !2487, !2488, !2506, !2509, !2510, !2517, !2520, !2521, !2522, !2523, !2524, !2525}
!2456 = !DILocalVariable(name: "buffer", arg: 1, scope: !2450, file: !225, line: 256, type: !41)
!2457 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2450, file: !225, line: 256, type: !44)
!2458 = !DILocalVariable(name: "arg", arg: 3, scope: !2450, file: !225, line: 257, type: !47)
!2459 = !DILocalVariable(name: "argsize", arg: 4, scope: !2450, file: !225, line: 257, type: !44)
!2460 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2450, file: !225, line: 258, type: !17)
!2461 = !DILocalVariable(name: "flags", arg: 6, scope: !2450, file: !225, line: 258, type: !57)
!2462 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2450, file: !225, line: 259, type: !2453)
!2463 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2450, file: !225, line: 260, type: !47)
!2464 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2450, file: !225, line: 261, type: !47)
!2465 = !DILocalVariable(name: "i", scope: !2450, file: !225, line: 263, type: !44)
!2466 = !DILocalVariable(name: "len", scope: !2450, file: !225, line: 264, type: !44)
!2467 = !DILocalVariable(name: "orig_buffersize", scope: !2450, file: !225, line: 265, type: !44)
!2468 = !DILocalVariable(name: "quote_string", scope: !2450, file: !225, line: 266, type: !47)
!2469 = !DILocalVariable(name: "quote_string_len", scope: !2450, file: !225, line: 267, type: !44)
!2470 = !DILocalVariable(name: "backslash_escapes", scope: !2450, file: !225, line: 268, type: !64)
!2471 = !DILocalVariable(name: "unibyte_locale", scope: !2450, file: !225, line: 269, type: !64)
!2472 = !DILocalVariable(name: "elide_outer_quotes", scope: !2450, file: !225, line: 270, type: !64)
!2473 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2450, file: !225, line: 271, type: !64)
!2474 = !DILocalVariable(name: "encountered_single_quote", scope: !2450, file: !225, line: 272, type: !64)
!2475 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2450, file: !225, line: 273, type: !64)
!2476 = !DILocalVariable(name: "c", scope: !2477, file: !225, line: 402, type: !50)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !225, line: 401, column: 5)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !225, line: 400, column: 3)
!2479 = distinct !DILexicalBlock(scope: !2450, file: !225, line: 400, column: 3)
!2480 = !DILocalVariable(name: "esc", scope: !2477, file: !225, line: 403, type: !50)
!2481 = !DILocalVariable(name: "is_right_quote", scope: !2477, file: !225, line: 404, type: !64)
!2482 = !DILocalVariable(name: "escaping", scope: !2477, file: !225, line: 405, type: !64)
!2483 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2477, file: !225, line: 406, type: !64)
!2484 = !DILocalVariable(name: "m", scope: !2485, file: !225, line: 610, type: !44)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !225, line: 608, column: 11)
!2486 = distinct !DILexicalBlock(scope: !2477, file: !225, line: 426, column: 9)
!2487 = !DILocalVariable(name: "printable", scope: !2485, file: !225, line: 612, type: !64)
!2488 = !DILocalVariable(name: "mbstate", scope: !2489, file: !225, line: 621, type: !2491)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !225, line: 620, column: 15)
!2490 = distinct !DILexicalBlock(scope: !2485, file: !225, line: 614, column: 17)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2492, line: 6, baseType: !2493)
!2492 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2494, line: 21, baseType: !2495)
!2494 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2494, line: 13, size: 64, elements: !2496)
!2496 = !{!2497, !2498}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2495, file: !2494, line: 15, baseType: !57, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2495, file: !2494, line: 20, baseType: !2499, size: 32, offset: 32)
!2499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2495, file: !2494, line: 16, size: 32, elements: !2500)
!2500 = !{!2501, !2502}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2499, file: !2494, line: 18, baseType: !6, size: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2499, file: !2494, line: 19, baseType: !2503, size: 32)
!2503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 32, elements: !2504)
!2504 = !{!2505}
!2505 = !DISubrange(count: 4)
!2506 = !DILocalVariable(name: "w", scope: !2507, file: !225, line: 631, type: !2508)
!2507 = distinct !DILexicalBlock(scope: !2489, file: !225, line: 630, column: 19)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !45, line: 74, baseType: !57)
!2509 = !DILocalVariable(name: "bytes", scope: !2507, file: !225, line: 632, type: !44)
!2510 = !DILocalVariable(name: "j", scope: !2511, file: !225, line: 657, type: !44)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !225, line: 656, column: 27)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !225, line: 654, column: 29)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !225, line: 649, column: 23)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !225, line: 641, column: 30)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !225, line: 636, column: 30)
!2516 = distinct !DILexicalBlock(scope: !2507, file: !225, line: 634, column: 25)
!2517 = !DILocalVariable(name: "ilim", scope: !2518, file: !225, line: 684, type: !44)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !225, line: 681, column: 15)
!2519 = distinct !DILexicalBlock(scope: !2485, file: !225, line: 680, column: 17)
!2520 = !DILabel(scope: !2450, name: "process_input", file: !225, line: 314)
!2521 = !DILabel(scope: !2486, name: "c_and_shell_escape", file: !225, line: 512)
!2522 = !DILabel(scope: !2486, name: "c_escape", file: !225, line: 517)
!2523 = !DILabel(scope: !2477, name: "store_escape", file: !225, line: 719)
!2524 = !DILabel(scope: !2477, name: "store_c", file: !225, line: 722)
!2525 = !DILabel(scope: !2450, name: "force_outer_quoting_style", file: !225, line: 763)
!2526 = !DILocation(line: 0, scope: !2450)
!2527 = !DILocation(line: 269, column: 25, scope: !2450)
!2528 = !DILocation(line: 269, column: 36, scope: !2450)
!2529 = !DILocation(line: 270, column: 8, scope: !2450)
!2530 = !DILocation(line: 273, column: 3, scope: !2450)
!2531 = !DILocation(line: 265, column: 10, scope: !2450)
!2532 = !DILocation(line: 266, column: 15, scope: !2450)
!2533 = !DILocation(line: 267, column: 10, scope: !2450)
!2534 = !DILocation(line: 268, column: 8, scope: !2450)
!2535 = !DILocation(line: 271, column: 8, scope: !2450)
!2536 = !DILocation(line: 272, column: 8, scope: !2450)
!2537 = !DILocation(line: 273, column: 8, scope: !2450)
!2538 = !DILocation(line: 314, column: 2, scope: !2450)
!2539 = !DILocation(line: 316, column: 3, scope: !2450)
!2540 = !DILocation(line: 323, column: 11, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2450, file: !225, line: 317, column: 5)
!2542 = !DILocation(line: 323, column: 12, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2541, file: !225, line: 323, column: 11)
!2544 = !DILocation(line: 324, column: 9, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !225, line: 324, column: 9)
!2546 = distinct !DILexicalBlock(scope: !2543, file: !225, line: 324, column: 9)
!2547 = !DILocation(line: 324, column: 9, scope: !2546)
!2548 = !DILocation(line: 362, column: 26, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !225, line: 340, column: 11)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !225, line: 339, column: 13)
!2551 = distinct !DILexicalBlock(scope: !2541, file: !225, line: 338, column: 7)
!2552 = !DILocation(line: 363, column: 27, scope: !2549)
!2553 = !DILocation(line: 364, column: 11, scope: !2549)
!2554 = !DILocation(line: 365, column: 14, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2551, file: !225, line: 365, column: 13)
!2556 = !DILocation(line: 365, column: 13, scope: !2551)
!2557 = !DILocation(line: 366, column: 43, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !225, line: 366, column: 11)
!2559 = distinct !DILexicalBlock(scope: !2555, file: !225, line: 366, column: 11)
!2560 = !DILocation(line: 366, column: 11, scope: !2559)
!2561 = !DILocation(line: 367, column: 13, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !225, line: 367, column: 13)
!2563 = distinct !DILexicalBlock(scope: !2558, file: !225, line: 367, column: 13)
!2564 = !DILocation(line: 367, column: 13, scope: !2563)
!2565 = !DILocation(line: 366, column: 70, scope: !2558)
!2566 = distinct !{!2566, !2560, !2567, !801}
!2567 = !DILocation(line: 367, column: 13, scope: !2559)
!2568 = !DILocation(line: 264, column: 10, scope: !2450)
!2569 = !DILocation(line: 370, column: 28, scope: !2551)
!2570 = !DILocation(line: 372, column: 7, scope: !2541)
!2571 = !DILocation(line: 376, column: 7, scope: !2541)
!2572 = !DILocation(line: 379, column: 7, scope: !2541)
!2573 = !DILocation(line: 381, column: 12, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2541, file: !225, line: 381, column: 11)
!2575 = !DILocation(line: 381, column: 11, scope: !2541)
!2576 = !DILocation(line: 386, column: 12, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2541, file: !225, line: 386, column: 11)
!2578 = !DILocation(line: 386, column: 11, scope: !2541)
!2579 = !DILocation(line: 387, column: 9, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !225, line: 387, column: 9)
!2581 = distinct !DILexicalBlock(scope: !2577, file: !225, line: 387, column: 9)
!2582 = !DILocation(line: 387, column: 9, scope: !2581)
!2583 = !DILocation(line: 394, column: 7, scope: !2541)
!2584 = !DILocation(line: 397, column: 7, scope: !2541)
!2585 = !DILocation(line: 400, column: 8, scope: !2479)
!2586 = !DILocation(line: 0, scope: !2479)
!2587 = !DILocation(line: 400, column: 27, scope: !2478)
!2588 = !DILocation(line: 400, column: 19, scope: !2478)
!2589 = !DILocation(line: 400, column: 41, scope: !2478)
!2590 = !DILocation(line: 400, column: 48, scope: !2478)
!2591 = !DILocation(line: 400, column: 3, scope: !2479)
!2592 = !DILocation(line: 400, column: 60, scope: !2478)
!2593 = !DILocation(line: 0, scope: !2477)
!2594 = !DILocation(line: 409, column: 11, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2477, file: !225, line: 408, column: 11)
!2596 = !DILocation(line: 411, column: 17, scope: !2595)
!2597 = !DILocation(line: 412, column: 39, scope: !2595)
!2598 = !DILocation(line: 416, column: 32, scope: !2595)
!2599 = !DILocation(line: 412, column: 19, scope: !2595)
!2600 = !DILocation(line: 412, column: 15, scope: !2595)
!2601 = !DILocation(line: 417, column: 11, scope: !2595)
!2602 = !DILocation(line: 417, column: 26, scope: !2595)
!2603 = !DILocation(line: 417, column: 14, scope: !2595)
!2604 = !DILocation(line: 417, column: 63, scope: !2595)
!2605 = !DILocation(line: 408, column: 11, scope: !2477)
!2606 = !DILocation(line: 424, column: 11, scope: !2477)
!2607 = !DILocation(line: 425, column: 7, scope: !2477)
!2608 = !DILocation(line: 428, column: 15, scope: !2486)
!2609 = !DILocation(line: 430, column: 15, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !225, line: 430, column: 15)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !225, line: 429, column: 13)
!2612 = distinct !DILexicalBlock(scope: !2486, file: !225, line: 428, column: 15)
!2613 = !DILocation(line: 430, column: 15, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2610, file: !225, line: 430, column: 15)
!2615 = !DILocation(line: 430, column: 15, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !225, line: 430, column: 15)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !225, line: 430, column: 15)
!2618 = distinct !DILexicalBlock(scope: !2614, file: !225, line: 430, column: 15)
!2619 = !DILocation(line: 430, column: 15, scope: !2617)
!2620 = !DILocation(line: 430, column: 15, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !225, line: 430, column: 15)
!2622 = distinct !DILexicalBlock(scope: !2618, file: !225, line: 430, column: 15)
!2623 = !DILocation(line: 430, column: 15, scope: !2622)
!2624 = !DILocation(line: 430, column: 15, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !225, line: 430, column: 15)
!2626 = distinct !DILexicalBlock(scope: !2618, file: !225, line: 430, column: 15)
!2627 = !DILocation(line: 430, column: 15, scope: !2626)
!2628 = !DILocation(line: 430, column: 15, scope: !2618)
!2629 = !DILocation(line: 430, column: 15, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !225, line: 430, column: 15)
!2631 = distinct !DILexicalBlock(scope: !2610, file: !225, line: 430, column: 15)
!2632 = !DILocation(line: 430, column: 15, scope: !2631)
!2633 = !DILocation(line: 438, column: 19, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2611, file: !225, line: 437, column: 19)
!2635 = !DILocation(line: 438, column: 48, scope: !2634)
!2636 = !DILocation(line: 438, column: 59, scope: !2634)
!2637 = !DILocation(line: 440, column: 19, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !225, line: 440, column: 19)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !225, line: 440, column: 19)
!2640 = distinct !DILexicalBlock(scope: !2634, file: !225, line: 439, column: 17)
!2641 = !DILocation(line: 440, column: 19, scope: !2639)
!2642 = !DILocation(line: 441, column: 19, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !225, line: 441, column: 19)
!2644 = distinct !DILexicalBlock(scope: !2640, file: !225, line: 441, column: 19)
!2645 = !DILocation(line: 441, column: 19, scope: !2644)
!2646 = !DILocation(line: 442, column: 17, scope: !2640)
!2647 = !DILocation(line: 449, column: 20, scope: !2612)
!2648 = !DILocation(line: 454, column: 11, scope: !2486)
!2649 = !DILocation(line: 457, column: 19, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2486, file: !225, line: 455, column: 13)
!2651 = !DILocation(line: 463, column: 19, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2650, file: !225, line: 462, column: 19)
!2653 = !DILocation(line: 463, column: 47, scope: !2652)
!2654 = !DILocation(line: 463, column: 41, scope: !2652)
!2655 = !DILocation(line: 463, column: 52, scope: !2652)
!2656 = !DILocation(line: 462, column: 19, scope: !2650)
!2657 = !DILocation(line: 464, column: 25, scope: !2652)
!2658 = !DILocation(line: 464, column: 17, scope: !2652)
!2659 = !DILocation(line: 471, column: 25, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2652, file: !225, line: 465, column: 19)
!2661 = !DILocation(line: 475, column: 21, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !225, line: 475, column: 21)
!2663 = distinct !DILexicalBlock(scope: !2660, file: !225, line: 475, column: 21)
!2664 = !DILocation(line: 475, column: 21, scope: !2663)
!2665 = !DILocation(line: 476, column: 21, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !225, line: 476, column: 21)
!2667 = distinct !DILexicalBlock(scope: !2660, file: !225, line: 476, column: 21)
!2668 = !DILocation(line: 476, column: 21, scope: !2667)
!2669 = !DILocation(line: 477, column: 21, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !225, line: 477, column: 21)
!2671 = distinct !DILexicalBlock(scope: !2660, file: !225, line: 477, column: 21)
!2672 = !DILocation(line: 477, column: 21, scope: !2671)
!2673 = !DILocation(line: 478, column: 21, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !225, line: 478, column: 21)
!2675 = distinct !DILexicalBlock(scope: !2660, file: !225, line: 478, column: 21)
!2676 = !DILocation(line: 478, column: 21, scope: !2675)
!2677 = !DILocation(line: 479, column: 21, scope: !2660)
!2678 = !DILocation(line: 492, column: 31, scope: !2486)
!2679 = !DILocation(line: 493, column: 31, scope: !2486)
!2680 = !DILocation(line: 495, column: 31, scope: !2486)
!2681 = !DILocation(line: 496, column: 31, scope: !2486)
!2682 = !DILocation(line: 497, column: 31, scope: !2486)
!2683 = !DILocation(line: 500, column: 15, scope: !2486)
!2684 = !DILocation(line: 502, column: 19, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !225, line: 501, column: 13)
!2686 = distinct !DILexicalBlock(scope: !2486, file: !225, line: 500, column: 15)
!2687 = !DILocation(line: 509, column: 33, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2486, file: !225, line: 509, column: 15)
!2689 = !DILocation(line: 0, scope: !2486)
!2690 = !DILocation(line: 512, column: 9, scope: !2486)
!2691 = !DILocation(line: 514, column: 15, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2486, file: !225, line: 513, column: 15)
!2693 = !DILocation(line: 517, column: 9, scope: !2486)
!2694 = !DILocation(line: 518, column: 15, scope: !2486)
!2695 = !DILocation(line: 526, column: 15, scope: !2486)
!2696 = !DILocation(line: 526, column: 40, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2486, file: !225, line: 526, column: 15)
!2698 = !DILocation(line: 526, column: 47, scope: !2697)
!2699 = !DILocation(line: 526, column: 18, scope: !2697)
!2700 = !DILocation(line: 530, column: 17, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2486, file: !225, line: 530, column: 15)
!2702 = !DILocation(line: 530, column: 15, scope: !2486)
!2703 = !DILocation(line: 535, column: 11, scope: !2486)
!2704 = !DILocation(line: 549, column: 15, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2486, file: !225, line: 548, column: 15)
!2706 = !DILocation(line: 556, column: 15, scope: !2486)
!2707 = !DILocation(line: 558, column: 19, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !225, line: 557, column: 13)
!2709 = distinct !DILexicalBlock(scope: !2486, file: !225, line: 556, column: 15)
!2710 = !DILocation(line: 561, column: 19, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2708, file: !225, line: 561, column: 19)
!2712 = !DILocation(line: 561, column: 30, scope: !2711)
!2713 = !DILocation(line: 570, column: 15, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !225, line: 570, column: 15)
!2715 = distinct !DILexicalBlock(scope: !2708, file: !225, line: 570, column: 15)
!2716 = !DILocation(line: 570, column: 15, scope: !2715)
!2717 = !DILocation(line: 571, column: 15, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !225, line: 571, column: 15)
!2719 = distinct !DILexicalBlock(scope: !2708, file: !225, line: 571, column: 15)
!2720 = !DILocation(line: 571, column: 15, scope: !2719)
!2721 = !DILocation(line: 572, column: 15, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !225, line: 572, column: 15)
!2723 = distinct !DILexicalBlock(scope: !2708, file: !225, line: 572, column: 15)
!2724 = !DILocation(line: 572, column: 15, scope: !2723)
!2725 = !DILocation(line: 574, column: 13, scope: !2708)
!2726 = !DILocation(line: 614, column: 17, scope: !2485)
!2727 = !DILocation(line: 0, scope: !2485)
!2728 = !DILocation(line: 617, column: 29, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2490, file: !225, line: 615, column: 15)
!2730 = !DILocation(line: 617, column: 27, scope: !2729)
!2731 = !DILocation(line: 678, column: 40, scope: !2485)
!2732 = !DILocation(line: 680, column: 23, scope: !2519)
!2733 = !DILocation(line: 621, column: 17, scope: !2489)
!2734 = !DILocation(line: 621, column: 27, scope: !2489)
!2735 = !DILocalVariable(name: "__dest", arg: 1, scope: !2736, file: !1693, line: 57, type: !43)
!2736 = distinct !DISubprogram(name: "memset", scope: !1693, file: !1693, line: 57, type: !2737, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !2739)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!43, !43, !57, !44}
!2739 = !{!2735, !2740, !2741}
!2740 = !DILocalVariable(name: "__ch", arg: 2, scope: !2736, file: !1693, line: 57, type: !57)
!2741 = !DILocalVariable(name: "__len", arg: 3, scope: !2736, file: !1693, line: 57, type: !44)
!2742 = !DILocation(line: 0, scope: !2736, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 622, column: 17, scope: !2489)
!2744 = !DILocation(line: 59, column: 10, scope: !2736, inlinedAt: !2743)
!2745 = !DILocation(line: 626, column: 29, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2489, file: !225, line: 626, column: 21)
!2747 = !DILocation(line: 626, column: 21, scope: !2489)
!2748 = !DILocation(line: 627, column: 29, scope: !2746)
!2749 = !DILocation(line: 627, column: 19, scope: !2746)
!2750 = !DILocation(line: 629, column: 17, scope: !2489)
!2751 = !DILocation(line: 624, column: 19, scope: !2489)
!2752 = !DILocation(line: 625, column: 27, scope: !2489)
!2753 = !DILocation(line: 631, column: 21, scope: !2507)
!2754 = !DILocation(line: 632, column: 56, scope: !2507)
!2755 = !DILocation(line: 632, column: 50, scope: !2507)
!2756 = !DILocation(line: 633, column: 53, scope: !2507)
!2757 = !DILocation(line: 0, scope: !2507)
!2758 = !DILocation(line: 632, column: 36, scope: !2507)
!2759 = !DILocation(line: 634, column: 25, scope: !2507)
!2760 = !DILocation(line: 644, column: 38, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2514, file: !225, line: 642, column: 23)
!2762 = !DILocation(line: 644, column: 48, scope: !2761)
!2763 = !DILocation(line: 644, column: 25, scope: !2761)
!2764 = !DILocation(line: 644, column: 51, scope: !2761)
!2765 = !DILocation(line: 645, column: 28, scope: !2761)
!2766 = !DILocation(line: 644, column: 34, scope: !2761)
!2767 = distinct !{!2767, !2763, !2765, !801}
!2768 = !DILocation(line: 655, column: 29, scope: !2512)
!2769 = !DILocation(line: 0, scope: !2511)
!2770 = !DILocation(line: 659, column: 49, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !225, line: 658, column: 29)
!2772 = distinct !DILexicalBlock(scope: !2511, file: !225, line: 658, column: 29)
!2773 = !DILocation(line: 659, column: 39, scope: !2771)
!2774 = !DILocation(line: 659, column: 31, scope: !2771)
!2775 = !DILocation(line: 658, column: 53, scope: !2771)
!2776 = !DILocation(line: 658, column: 43, scope: !2771)
!2777 = !DILocation(line: 658, column: 29, scope: !2772)
!2778 = distinct !{!2778, !2777, !2779, !801}
!2779 = !DILocation(line: 667, column: 33, scope: !2772)
!2780 = !DILocation(line: 674, column: 19, scope: !2489)
!2781 = !DILocation(line: 670, column: 41, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2513, file: !225, line: 670, column: 29)
!2783 = !DILocation(line: 670, column: 31, scope: !2782)
!2784 = !DILocation(line: 670, column: 29, scope: !2513)
!2785 = !DILocation(line: 672, column: 27, scope: !2513)
!2786 = !DILocation(line: 675, column: 26, scope: !2489)
!2787 = !DILocation(line: 675, column: 24, scope: !2489)
!2788 = !DILocation(line: 674, column: 19, scope: !2507)
!2789 = distinct !{!2789, !2750, !2790, !801}
!2790 = !DILocation(line: 675, column: 44, scope: !2489)
!2791 = !DILocation(line: 676, column: 15, scope: !2490)
!2792 = !DILocation(line: 680, column: 19, scope: !2519)
!2793 = !DILocation(line: 680, column: 45, scope: !2519)
!2794 = !DILocation(line: 684, column: 33, scope: !2518)
!2795 = !DILocation(line: 0, scope: !2518)
!2796 = !DILocation(line: 686, column: 17, scope: !2518)
!2797 = !DILocation(line: 405, column: 12, scope: !2477)
!2798 = !DILocation(line: 688, column: 43, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !225, line: 688, column: 25)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !225, line: 687, column: 19)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !225, line: 686, column: 17)
!2802 = distinct !DILexicalBlock(scope: !2518, file: !225, line: 686, column: 17)
!2803 = !DILocation(line: 690, column: 25, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !225, line: 690, column: 25)
!2805 = distinct !DILexicalBlock(scope: !2799, file: !225, line: 689, column: 23)
!2806 = !DILocation(line: 690, column: 25, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2804, file: !225, line: 690, column: 25)
!2808 = !DILocation(line: 690, column: 25, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !225, line: 690, column: 25)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !225, line: 690, column: 25)
!2811 = distinct !DILexicalBlock(scope: !2807, file: !225, line: 690, column: 25)
!2812 = !DILocation(line: 690, column: 25, scope: !2810)
!2813 = !DILocation(line: 690, column: 25, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !225, line: 690, column: 25)
!2815 = distinct !DILexicalBlock(scope: !2811, file: !225, line: 690, column: 25)
!2816 = !DILocation(line: 690, column: 25, scope: !2815)
!2817 = !DILocation(line: 690, column: 25, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !225, line: 690, column: 25)
!2819 = distinct !DILexicalBlock(scope: !2811, file: !225, line: 690, column: 25)
!2820 = !DILocation(line: 690, column: 25, scope: !2819)
!2821 = !DILocation(line: 690, column: 25, scope: !2811)
!2822 = !DILocation(line: 690, column: 25, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !225, line: 690, column: 25)
!2824 = distinct !DILexicalBlock(scope: !2804, file: !225, line: 690, column: 25)
!2825 = !DILocation(line: 690, column: 25, scope: !2824)
!2826 = !DILocation(line: 691, column: 25, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !225, line: 691, column: 25)
!2828 = distinct !DILexicalBlock(scope: !2805, file: !225, line: 691, column: 25)
!2829 = !DILocation(line: 691, column: 25, scope: !2828)
!2830 = !DILocation(line: 692, column: 25, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !225, line: 692, column: 25)
!2832 = distinct !DILexicalBlock(scope: !2805, file: !225, line: 692, column: 25)
!2833 = !DILocation(line: 692, column: 25, scope: !2832)
!2834 = !DILocation(line: 693, column: 38, scope: !2805)
!2835 = !DILocation(line: 693, column: 33, scope: !2805)
!2836 = !DILocation(line: 694, column: 23, scope: !2805)
!2837 = !DILocation(line: 695, column: 30, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2799, file: !225, line: 695, column: 30)
!2839 = !DILocation(line: 695, column: 30, scope: !2799)
!2840 = !DILocation(line: 697, column: 25, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !225, line: 697, column: 25)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !225, line: 697, column: 25)
!2843 = distinct !DILexicalBlock(scope: !2838, file: !225, line: 696, column: 23)
!2844 = !DILocation(line: 697, column: 25, scope: !2842)
!2845 = !DILocation(line: 699, column: 23, scope: !2843)
!2846 = !DILocation(line: 700, column: 35, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2800, file: !225, line: 700, column: 25)
!2848 = !DILocation(line: 700, column: 30, scope: !2847)
!2849 = !DILocation(line: 700, column: 25, scope: !2800)
!2850 = !DILocation(line: 702, column: 21, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !225, line: 702, column: 21)
!2852 = distinct !DILexicalBlock(scope: !2800, file: !225, line: 702, column: 21)
!2853 = !DILocation(line: 702, column: 21, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !225, line: 702, column: 21)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !225, line: 702, column: 21)
!2856 = distinct !DILexicalBlock(scope: !2851, file: !225, line: 702, column: 21)
!2857 = !DILocation(line: 702, column: 21, scope: !2855)
!2858 = !DILocation(line: 702, column: 21, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !225, line: 702, column: 21)
!2860 = distinct !DILexicalBlock(scope: !2856, file: !225, line: 702, column: 21)
!2861 = !DILocation(line: 702, column: 21, scope: !2860)
!2862 = !DILocation(line: 702, column: 21, scope: !2856)
!2863 = !DILocation(line: 0, scope: !2800)
!2864 = !DILocation(line: 703, column: 21, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !225, line: 703, column: 21)
!2866 = distinct !DILexicalBlock(scope: !2800, file: !225, line: 703, column: 21)
!2867 = !DILocation(line: 703, column: 21, scope: !2866)
!2868 = !DILocation(line: 704, column: 25, scope: !2800)
!2869 = !DILocation(line: 686, column: 17, scope: !2801)
!2870 = distinct !{!2870, !2871, !2872}
!2871 = !DILocation(line: 686, column: 17, scope: !2802)
!2872 = !DILocation(line: 705, column: 19, scope: !2802)
!2873 = !DILocation(line: 416, column: 30, scope: !2595)
!2874 = !DILocation(line: 712, column: 34, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2477, file: !225, line: 712, column: 11)
!2876 = !DILocation(line: 715, column: 35, scope: !2875)
!2877 = !DILocation(line: 715, column: 17, scope: !2875)
!2878 = !DILocation(line: 715, column: 47, scope: !2875)
!2879 = !DILocation(line: 715, column: 65, scope: !2875)
!2880 = !DILocation(line: 716, column: 11, scope: !2875)
!2881 = !DILocation(line: 712, column: 11, scope: !2477)
!2882 = !DILocation(line: 400, column: 10, scope: !2479)
!2883 = !DILocation(line: 719, column: 5, scope: !2477)
!2884 = !DILocation(line: 720, column: 7, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2477, file: !225, line: 720, column: 7)
!2886 = !DILocation(line: 720, column: 7, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2885, file: !225, line: 720, column: 7)
!2888 = !DILocation(line: 720, column: 7, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !225, line: 720, column: 7)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !225, line: 720, column: 7)
!2891 = distinct !DILexicalBlock(scope: !2887, file: !225, line: 720, column: 7)
!2892 = !DILocation(line: 720, column: 7, scope: !2890)
!2893 = !DILocation(line: 720, column: 7, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !225, line: 720, column: 7)
!2895 = distinct !DILexicalBlock(scope: !2891, file: !225, line: 720, column: 7)
!2896 = !DILocation(line: 720, column: 7, scope: !2895)
!2897 = !DILocation(line: 720, column: 7, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !225, line: 720, column: 7)
!2899 = distinct !DILexicalBlock(scope: !2891, file: !225, line: 720, column: 7)
!2900 = !DILocation(line: 720, column: 7, scope: !2899)
!2901 = !DILocation(line: 720, column: 7, scope: !2891)
!2902 = !DILocation(line: 720, column: 7, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !225, line: 720, column: 7)
!2904 = distinct !DILexicalBlock(scope: !2885, file: !225, line: 720, column: 7)
!2905 = !DILocation(line: 720, column: 7, scope: !2904)
!2906 = !DILocation(line: 722, column: 5, scope: !2477)
!2907 = !DILocation(line: 723, column: 7, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !225, line: 723, column: 7)
!2909 = distinct !DILexicalBlock(scope: !2477, file: !225, line: 723, column: 7)
!2910 = !DILocation(line: 424, column: 9, scope: !2477)
!2911 = !DILocation(line: 723, column: 7, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !225, line: 723, column: 7)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !225, line: 723, column: 7)
!2914 = distinct !DILexicalBlock(scope: !2908, file: !225, line: 723, column: 7)
!2915 = !DILocation(line: 723, column: 7, scope: !2913)
!2916 = !DILocation(line: 723, column: 7, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !225, line: 723, column: 7)
!2918 = distinct !DILexicalBlock(scope: !2914, file: !225, line: 723, column: 7)
!2919 = !DILocation(line: 723, column: 7, scope: !2918)
!2920 = !DILocation(line: 723, column: 7, scope: !2914)
!2921 = !DILocation(line: 724, column: 7, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !225, line: 724, column: 7)
!2923 = distinct !DILexicalBlock(scope: !2477, file: !225, line: 724, column: 7)
!2924 = !DILocation(line: 724, column: 7, scope: !2923)
!2925 = !DILocation(line: 726, column: 13, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2477, file: !225, line: 726, column: 11)
!2927 = !DILocation(line: 726, column: 11, scope: !2477)
!2928 = !DILocation(line: 728, column: 5, scope: !2478)
!2929 = !DILocation(line: 400, column: 75, scope: !2478)
!2930 = !DILocation(line: 400, column: 3, scope: !2478)
!2931 = distinct !{!2931, !2591, !2932, !801}
!2932 = !DILocation(line: 728, column: 5, scope: !2479)
!2933 = !DILocation(line: 730, column: 11, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2450, file: !225, line: 730, column: 7)
!2935 = !DILocation(line: 730, column: 16, scope: !2934)
!2936 = !DILocation(line: 738, column: 51, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2450, file: !225, line: 738, column: 7)
!2938 = !DILocation(line: 741, column: 11, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !225, line: 741, column: 11)
!2940 = distinct !DILexicalBlock(scope: !2937, file: !225, line: 740, column: 5)
!2941 = !DILocation(line: 741, column: 11, scope: !2940)
!2942 = !DILocation(line: 742, column: 16, scope: !2939)
!2943 = !DILocation(line: 742, column: 9, scope: !2939)
!2944 = !DILocation(line: 746, column: 18, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2939, file: !225, line: 746, column: 16)
!2946 = !DILocation(line: 746, column: 29, scope: !2945)
!2947 = !DILocation(line: 755, column: 7, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2450, file: !225, line: 755, column: 7)
!2949 = !DILocation(line: 755, column: 20, scope: !2948)
!2950 = !DILocation(line: 756, column: 12, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !225, line: 756, column: 5)
!2952 = distinct !DILexicalBlock(scope: !2948, file: !225, line: 756, column: 5)
!2953 = !DILocation(line: 756, column: 5, scope: !2952)
!2954 = !DILocation(line: 757, column: 7, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !225, line: 757, column: 7)
!2956 = distinct !DILexicalBlock(scope: !2951, file: !225, line: 757, column: 7)
!2957 = !DILocation(line: 757, column: 7, scope: !2956)
!2958 = !DILocation(line: 756, column: 39, scope: !2951)
!2959 = distinct !{!2959, !2953, !2960, !801}
!2960 = !DILocation(line: 757, column: 7, scope: !2952)
!2961 = !DILocation(line: 759, column: 11, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2450, file: !225, line: 759, column: 7)
!2963 = !DILocation(line: 759, column: 7, scope: !2450)
!2964 = !DILocation(line: 760, column: 5, scope: !2962)
!2965 = !DILocation(line: 760, column: 17, scope: !2962)
!2966 = !DILocation(line: 763, column: 2, scope: !2450)
!2967 = !DILocation(line: 766, column: 51, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2450, file: !225, line: 766, column: 7)
!2969 = !DILocation(line: 766, column: 21, scope: !2968)
!2970 = !DILocation(line: 770, column: 42, scope: !2450)
!2971 = !DILocation(line: 768, column: 10, scope: !2450)
!2972 = !DILocation(line: 768, column: 3, scope: !2450)
!2973 = !DILocation(line: 772, column: 1, scope: !2450)
!2974 = distinct !DISubprogram(name: "gettext_quote", scope: !225, file: !225, line: 207, type: !2975, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !2977)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!47, !47, !17}
!2977 = !{!2978, !2979, !2980, !2981}
!2978 = !DILocalVariable(name: "msgid", arg: 1, scope: !2974, file: !225, line: 207, type: !47)
!2979 = !DILocalVariable(name: "s", arg: 2, scope: !2974, file: !225, line: 207, type: !17)
!2980 = !DILocalVariable(name: "translation", scope: !2974, file: !225, line: 209, type: !47)
!2981 = !DILocalVariable(name: "locale_code", scope: !2974, file: !225, line: 210, type: !47)
!2982 = !DILocation(line: 0, scope: !2974)
!2983 = !DILocation(line: 209, column: 29, scope: !2974)
!2984 = !DILocation(line: 212, column: 19, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2974, file: !225, line: 212, column: 7)
!2986 = !DILocation(line: 212, column: 7, scope: !2974)
!2987 = !DILocation(line: 233, column: 17, scope: !2974)
!2988 = !DILocalVariable(name: "s1", arg: 1, scope: !2989, file: !2990, line: 160, type: !47)
!2989 = distinct !DISubprogram(name: "strcaseeq0", scope: !2990, file: !2990, line: 160, type: !2991, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !2993)
!2990 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!57, !47, !47, !42, !42, !42, !42, !42, !42, !42, !42, !42}
!2993 = !{!2988, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003}
!2994 = !DILocalVariable(name: "s2", arg: 2, scope: !2989, file: !2990, line: 160, type: !47)
!2995 = !DILocalVariable(name: "s20", arg: 3, scope: !2989, file: !2990, line: 160, type: !42)
!2996 = !DILocalVariable(name: "s21", arg: 4, scope: !2989, file: !2990, line: 160, type: !42)
!2997 = !DILocalVariable(name: "s22", arg: 5, scope: !2989, file: !2990, line: 160, type: !42)
!2998 = !DILocalVariable(name: "s23", arg: 6, scope: !2989, file: !2990, line: 160, type: !42)
!2999 = !DILocalVariable(name: "s24", arg: 7, scope: !2989, file: !2990, line: 160, type: !42)
!3000 = !DILocalVariable(name: "s25", arg: 8, scope: !2989, file: !2990, line: 160, type: !42)
!3001 = !DILocalVariable(name: "s26", arg: 9, scope: !2989, file: !2990, line: 160, type: !42)
!3002 = !DILocalVariable(name: "s27", arg: 10, scope: !2989, file: !2990, line: 160, type: !42)
!3003 = !DILocalVariable(name: "s28", arg: 11, scope: !2989, file: !2990, line: 160, type: !42)
!3004 = !DILocation(line: 0, scope: !2989, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 234, column: 7, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2974, file: !225, line: 234, column: 7)
!3007 = !DILocation(line: 162, column: 7, scope: !3008, inlinedAt: !3005)
!3008 = distinct !DILexicalBlock(scope: !2989, file: !2990, line: 162, column: 7)
!3009 = !DILocalVariable(name: "s1", arg: 1, scope: !3010, file: !2990, line: 146, type: !47)
!3010 = distinct !DISubprogram(name: "strcaseeq1", scope: !2990, file: !2990, line: 146, type: !3011, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3013)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!57, !47, !47, !42, !42, !42, !42, !42, !42, !42, !42}
!3013 = !{!3009, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022}
!3014 = !DILocalVariable(name: "s2", arg: 2, scope: !3010, file: !2990, line: 146, type: !47)
!3015 = !DILocalVariable(name: "s21", arg: 3, scope: !3010, file: !2990, line: 146, type: !42)
!3016 = !DILocalVariable(name: "s22", arg: 4, scope: !3010, file: !2990, line: 146, type: !42)
!3017 = !DILocalVariable(name: "s23", arg: 5, scope: !3010, file: !2990, line: 146, type: !42)
!3018 = !DILocalVariable(name: "s24", arg: 6, scope: !3010, file: !2990, line: 146, type: !42)
!3019 = !DILocalVariable(name: "s25", arg: 7, scope: !3010, file: !2990, line: 146, type: !42)
!3020 = !DILocalVariable(name: "s26", arg: 8, scope: !3010, file: !2990, line: 146, type: !42)
!3021 = !DILocalVariable(name: "s27", arg: 9, scope: !3010, file: !2990, line: 146, type: !42)
!3022 = !DILocalVariable(name: "s28", arg: 10, scope: !3010, file: !2990, line: 146, type: !42)
!3023 = !DILocation(line: 0, scope: !3010, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 167, column: 16, scope: !3025, inlinedAt: !3005)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !2990, line: 164, column: 11)
!3026 = distinct !DILexicalBlock(scope: !3008, file: !2990, line: 163, column: 5)
!3027 = !DILocation(line: 148, column: 7, scope: !3028, inlinedAt: !3024)
!3028 = distinct !DILexicalBlock(scope: !3010, file: !2990, line: 148, column: 7)
!3029 = !DILocalVariable(name: "s1", arg: 1, scope: !3030, file: !2990, line: 132, type: !47)
!3030 = distinct !DISubprogram(name: "strcaseeq2", scope: !2990, file: !2990, line: 132, type: !3031, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3033)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!57, !47, !47, !42, !42, !42, !42, !42, !42, !42}
!3033 = !{!3029, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041}
!3034 = !DILocalVariable(name: "s2", arg: 2, scope: !3030, file: !2990, line: 132, type: !47)
!3035 = !DILocalVariable(name: "s22", arg: 3, scope: !3030, file: !2990, line: 132, type: !42)
!3036 = !DILocalVariable(name: "s23", arg: 4, scope: !3030, file: !2990, line: 132, type: !42)
!3037 = !DILocalVariable(name: "s24", arg: 5, scope: !3030, file: !2990, line: 132, type: !42)
!3038 = !DILocalVariable(name: "s25", arg: 6, scope: !3030, file: !2990, line: 132, type: !42)
!3039 = !DILocalVariable(name: "s26", arg: 7, scope: !3030, file: !2990, line: 132, type: !42)
!3040 = !DILocalVariable(name: "s27", arg: 8, scope: !3030, file: !2990, line: 132, type: !42)
!3041 = !DILocalVariable(name: "s28", arg: 9, scope: !3030, file: !2990, line: 132, type: !42)
!3042 = !DILocation(line: 0, scope: !3030, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 153, column: 16, scope: !3044, inlinedAt: !3024)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !2990, line: 150, column: 11)
!3045 = distinct !DILexicalBlock(scope: !3028, file: !2990, line: 149, column: 5)
!3046 = !DILocation(line: 134, column: 7, scope: !3047, inlinedAt: !3043)
!3047 = distinct !DILexicalBlock(scope: !3030, file: !2990, line: 134, column: 7)
!3048 = !DILocalVariable(name: "s1", arg: 1, scope: !3049, file: !2990, line: 118, type: !47)
!3049 = distinct !DISubprogram(name: "strcaseeq3", scope: !2990, file: !2990, line: 118, type: !3050, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3052)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!57, !47, !47, !42, !42, !42, !42, !42, !42}
!3052 = !{!3048, !3053, !3054, !3055, !3056, !3057, !3058, !3059}
!3053 = !DILocalVariable(name: "s2", arg: 2, scope: !3049, file: !2990, line: 118, type: !47)
!3054 = !DILocalVariable(name: "s23", arg: 3, scope: !3049, file: !2990, line: 118, type: !42)
!3055 = !DILocalVariable(name: "s24", arg: 4, scope: !3049, file: !2990, line: 118, type: !42)
!3056 = !DILocalVariable(name: "s25", arg: 5, scope: !3049, file: !2990, line: 118, type: !42)
!3057 = !DILocalVariable(name: "s26", arg: 6, scope: !3049, file: !2990, line: 118, type: !42)
!3058 = !DILocalVariable(name: "s27", arg: 7, scope: !3049, file: !2990, line: 118, type: !42)
!3059 = !DILocalVariable(name: "s28", arg: 8, scope: !3049, file: !2990, line: 118, type: !42)
!3060 = !DILocation(line: 0, scope: !3049, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 139, column: 16, scope: !3062, inlinedAt: !3043)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !2990, line: 136, column: 11)
!3063 = distinct !DILexicalBlock(scope: !3047, file: !2990, line: 135, column: 5)
!3064 = !DILocation(line: 120, column: 7, scope: !3065, inlinedAt: !3061)
!3065 = distinct !DILexicalBlock(scope: !3049, file: !2990, line: 120, column: 7)
!3066 = !DILocation(line: 120, column: 7, scope: !3049, inlinedAt: !3061)
!3067 = !DILocalVariable(name: "s1", arg: 1, scope: !3068, file: !2990, line: 104, type: !47)
!3068 = distinct !DISubprogram(name: "strcaseeq4", scope: !2990, file: !2990, line: 104, type: !3069, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!57, !47, !47, !42, !42, !42, !42, !42}
!3071 = !{!3067, !3072, !3073, !3074, !3075, !3076, !3077}
!3072 = !DILocalVariable(name: "s2", arg: 2, scope: !3068, file: !2990, line: 104, type: !47)
!3073 = !DILocalVariable(name: "s24", arg: 3, scope: !3068, file: !2990, line: 104, type: !42)
!3074 = !DILocalVariable(name: "s25", arg: 4, scope: !3068, file: !2990, line: 104, type: !42)
!3075 = !DILocalVariable(name: "s26", arg: 5, scope: !3068, file: !2990, line: 104, type: !42)
!3076 = !DILocalVariable(name: "s27", arg: 6, scope: !3068, file: !2990, line: 104, type: !42)
!3077 = !DILocalVariable(name: "s28", arg: 7, scope: !3068, file: !2990, line: 104, type: !42)
!3078 = !DILocation(line: 0, scope: !3068, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 125, column: 16, scope: !3080, inlinedAt: !3061)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !2990, line: 122, column: 11)
!3081 = distinct !DILexicalBlock(scope: !3065, file: !2990, line: 121, column: 5)
!3082 = !DILocation(line: 106, column: 7, scope: !3083, inlinedAt: !3079)
!3083 = distinct !DILexicalBlock(scope: !3068, file: !2990, line: 106, column: 7)
!3084 = !DILocation(line: 106, column: 7, scope: !3068, inlinedAt: !3079)
!3085 = !DILocalVariable(name: "s1", arg: 1, scope: !3086, file: !2990, line: 90, type: !47)
!3086 = distinct !DISubprogram(name: "strcaseeq5", scope: !2990, file: !2990, line: 90, type: !3087, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3089)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!57, !47, !47, !42, !42, !42, !42}
!3089 = !{!3085, !3090, !3091, !3092, !3093, !3094}
!3090 = !DILocalVariable(name: "s2", arg: 2, scope: !3086, file: !2990, line: 90, type: !47)
!3091 = !DILocalVariable(name: "s25", arg: 3, scope: !3086, file: !2990, line: 90, type: !42)
!3092 = !DILocalVariable(name: "s26", arg: 4, scope: !3086, file: !2990, line: 90, type: !42)
!3093 = !DILocalVariable(name: "s27", arg: 5, scope: !3086, file: !2990, line: 90, type: !42)
!3094 = !DILocalVariable(name: "s28", arg: 6, scope: !3086, file: !2990, line: 90, type: !42)
!3095 = !DILocation(line: 0, scope: !3086, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 111, column: 16, scope: !3097, inlinedAt: !3079)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !2990, line: 108, column: 11)
!3098 = distinct !DILexicalBlock(scope: !3083, file: !2990, line: 107, column: 5)
!3099 = !DILocation(line: 92, column: 7, scope: !3100, inlinedAt: !3096)
!3100 = distinct !DILexicalBlock(scope: !3086, file: !2990, line: 92, column: 7)
!3101 = !DILocation(line: 92, column: 7, scope: !3086, inlinedAt: !3096)
!3102 = !DILocation(line: 235, column: 12, scope: !3006)
!3103 = !DILocation(line: 235, column: 21, scope: !3006)
!3104 = !DILocation(line: 235, column: 5, scope: !3006)
!3105 = !DILocation(line: 0, scope: !3010, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 167, column: 16, scope: !3025, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 236, column: 7, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !2974, file: !225, line: 236, column: 7)
!3109 = !DILocation(line: 148, column: 7, scope: !3028, inlinedAt: !3106)
!3110 = !DILocation(line: 0, scope: !3030, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 153, column: 16, scope: !3044, inlinedAt: !3106)
!3112 = !DILocation(line: 134, column: 7, scope: !3047, inlinedAt: !3111)
!3113 = !DILocation(line: 134, column: 7, scope: !3030, inlinedAt: !3111)
!3114 = !DILocation(line: 0, scope: !3049, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 139, column: 16, scope: !3062, inlinedAt: !3111)
!3116 = !DILocation(line: 120, column: 7, scope: !3065, inlinedAt: !3115)
!3117 = !DILocation(line: 120, column: 7, scope: !3049, inlinedAt: !3115)
!3118 = !DILocation(line: 0, scope: !3068, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 125, column: 16, scope: !3080, inlinedAt: !3115)
!3120 = !DILocation(line: 106, column: 7, scope: !3083, inlinedAt: !3119)
!3121 = !DILocation(line: 106, column: 7, scope: !3068, inlinedAt: !3119)
!3122 = !DILocation(line: 0, scope: !3086, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 111, column: 16, scope: !3097, inlinedAt: !3119)
!3124 = !DILocation(line: 92, column: 7, scope: !3100, inlinedAt: !3123)
!3125 = !DILocation(line: 92, column: 7, scope: !3086, inlinedAt: !3123)
!3126 = !DILocalVariable(name: "s1", arg: 1, scope: !3127, file: !2990, line: 76, type: !47)
!3127 = distinct !DISubprogram(name: "strcaseeq6", scope: !2990, file: !2990, line: 76, type: !3128, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3130)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!57, !47, !47, !42, !42, !42}
!3130 = !{!3126, !3131, !3132, !3133, !3134}
!3131 = !DILocalVariable(name: "s2", arg: 2, scope: !3127, file: !2990, line: 76, type: !47)
!3132 = !DILocalVariable(name: "s26", arg: 3, scope: !3127, file: !2990, line: 76, type: !42)
!3133 = !DILocalVariable(name: "s27", arg: 4, scope: !3127, file: !2990, line: 76, type: !42)
!3134 = !DILocalVariable(name: "s28", arg: 5, scope: !3127, file: !2990, line: 76, type: !42)
!3135 = !DILocation(line: 0, scope: !3127, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 97, column: 16, scope: !3137, inlinedAt: !3123)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !2990, line: 94, column: 11)
!3138 = distinct !DILexicalBlock(scope: !3100, file: !2990, line: 93, column: 5)
!3139 = !DILocation(line: 78, column: 7, scope: !3140, inlinedAt: !3136)
!3140 = distinct !DILexicalBlock(scope: !3127, file: !2990, line: 78, column: 7)
!3141 = !DILocation(line: 78, column: 7, scope: !3127, inlinedAt: !3136)
!3142 = !DILocalVariable(name: "s1", arg: 1, scope: !3143, file: !2990, line: 62, type: !47)
!3143 = distinct !DISubprogram(name: "strcaseeq7", scope: !2990, file: !2990, line: 62, type: !3144, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3146)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!57, !47, !47, !42, !42}
!3146 = !{!3142, !3147, !3148, !3149}
!3147 = !DILocalVariable(name: "s2", arg: 2, scope: !3143, file: !2990, line: 62, type: !47)
!3148 = !DILocalVariable(name: "s27", arg: 3, scope: !3143, file: !2990, line: 62, type: !42)
!3149 = !DILocalVariable(name: "s28", arg: 4, scope: !3143, file: !2990, line: 62, type: !42)
!3150 = !DILocation(line: 0, scope: !3143, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 83, column: 16, scope: !3152, inlinedAt: !3136)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !2990, line: 80, column: 11)
!3153 = distinct !DILexicalBlock(scope: !3140, file: !2990, line: 79, column: 5)
!3154 = !DILocation(line: 64, column: 7, scope: !3155, inlinedAt: !3151)
!3155 = distinct !DILexicalBlock(scope: !3143, file: !2990, line: 64, column: 7)
!3156 = !DILocation(line: 236, column: 7, scope: !2974)
!3157 = !DILocation(line: 237, column: 12, scope: !3108)
!3158 = !DILocation(line: 237, column: 21, scope: !3108)
!3159 = !DILocation(line: 237, column: 5, scope: !3108)
!3160 = !DILocation(line: 239, column: 13, scope: !2974)
!3161 = !DILocation(line: 239, column: 11, scope: !2974)
!3162 = !DILocation(line: 239, column: 3, scope: !2974)
!3163 = !DILocation(line: 240, column: 1, scope: !2974)
!3164 = !DISubprogram(name: "iswprint", scope: !3165, file: !3165, line: 120, type: !3166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!3165 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!57, !6}
!3168 = !DISubprogram(name: "mbsinit", scope: !3169, file: !3169, line: 292, type: !3170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!3169 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!57, !3172}
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2495)
!3174 = distinct !DISubprogram(name: "quotearg_alloc", scope: !225, file: !225, line: 799, type: !3175, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3177)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!41, !47, !44, !2342}
!3177 = !{!3178, !3179, !3180}
!3178 = !DILocalVariable(name: "arg", arg: 1, scope: !3174, file: !225, line: 799, type: !47)
!3179 = !DILocalVariable(name: "argsize", arg: 2, scope: !3174, file: !225, line: 799, type: !44)
!3180 = !DILocalVariable(name: "o", arg: 3, scope: !3174, file: !225, line: 800, type: !2342)
!3181 = !DILocation(line: 0, scope: !3174)
!3182 = !DILocalVariable(name: "arg", arg: 1, scope: !3183, file: !225, line: 812, type: !47)
!3183 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !225, file: !225, line: 812, type: !3184, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3186)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!41, !47, !44, !145, !2342}
!3186 = !{!3182, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194}
!3187 = !DILocalVariable(name: "argsize", arg: 2, scope: !3183, file: !225, line: 812, type: !44)
!3188 = !DILocalVariable(name: "size", arg: 3, scope: !3183, file: !225, line: 812, type: !145)
!3189 = !DILocalVariable(name: "o", arg: 4, scope: !3183, file: !225, line: 813, type: !2342)
!3190 = !DILocalVariable(name: "p", scope: !3183, file: !225, line: 815, type: !2342)
!3191 = !DILocalVariable(name: "e", scope: !3183, file: !225, line: 816, type: !57)
!3192 = !DILocalVariable(name: "flags", scope: !3183, file: !225, line: 818, type: !57)
!3193 = !DILocalVariable(name: "bufsize", scope: !3183, file: !225, line: 819, type: !44)
!3194 = !DILocalVariable(name: "buf", scope: !3183, file: !225, line: 823, type: !41)
!3195 = !DILocation(line: 0, scope: !3183, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 802, column: 10, scope: !3174)
!3197 = !DILocation(line: 815, column: 37, scope: !3183, inlinedAt: !3196)
!3198 = !DILocation(line: 816, column: 11, scope: !3183, inlinedAt: !3196)
!3199 = !DILocation(line: 818, column: 18, scope: !3183, inlinedAt: !3196)
!3200 = !DILocation(line: 818, column: 24, scope: !3183, inlinedAt: !3196)
!3201 = !DILocation(line: 819, column: 69, scope: !3183, inlinedAt: !3196)
!3202 = !DILocation(line: 820, column: 53, scope: !3183, inlinedAt: !3196)
!3203 = !DILocation(line: 821, column: 49, scope: !3183, inlinedAt: !3196)
!3204 = !DILocation(line: 822, column: 49, scope: !3183, inlinedAt: !3196)
!3205 = !DILocation(line: 819, column: 20, scope: !3183, inlinedAt: !3196)
!3206 = !DILocation(line: 822, column: 62, scope: !3183, inlinedAt: !3196)
!3207 = !DILocalVariable(name: "n", arg: 1, scope: !3208, file: !141, line: 216, type: !44)
!3208 = distinct !DISubprogram(name: "xcharalloc", scope: !141, file: !141, line: 216, type: !3209, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3211)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!41, !44}
!3211 = !{!3207}
!3212 = !DILocation(line: 0, scope: !3208, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 823, column: 15, scope: !3183, inlinedAt: !3196)
!3214 = !DILocation(line: 218, column: 10, scope: !3208, inlinedAt: !3213)
!3215 = !DILocation(line: 824, column: 60, scope: !3183, inlinedAt: !3196)
!3216 = !DILocation(line: 826, column: 32, scope: !3183, inlinedAt: !3196)
!3217 = !DILocation(line: 826, column: 47, scope: !3183, inlinedAt: !3196)
!3218 = !DILocation(line: 824, column: 3, scope: !3183, inlinedAt: !3196)
!3219 = !DILocation(line: 827, column: 9, scope: !3183, inlinedAt: !3196)
!3220 = !DILocation(line: 802, column: 3, scope: !3174)
!3221 = !DILocation(line: 0, scope: !3183)
!3222 = !DILocation(line: 815, column: 37, scope: !3183)
!3223 = !DILocation(line: 816, column: 11, scope: !3183)
!3224 = !DILocation(line: 818, column: 18, scope: !3183)
!3225 = !DILocation(line: 818, column: 27, scope: !3183)
!3226 = !DILocation(line: 818, column: 24, scope: !3183)
!3227 = !DILocation(line: 819, column: 69, scope: !3183)
!3228 = !DILocation(line: 820, column: 53, scope: !3183)
!3229 = !DILocation(line: 821, column: 49, scope: !3183)
!3230 = !DILocation(line: 822, column: 49, scope: !3183)
!3231 = !DILocation(line: 819, column: 20, scope: !3183)
!3232 = !DILocation(line: 822, column: 62, scope: !3183)
!3233 = !DILocation(line: 0, scope: !3208, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 823, column: 15, scope: !3183)
!3235 = !DILocation(line: 218, column: 10, scope: !3208, inlinedAt: !3234)
!3236 = !DILocation(line: 824, column: 60, scope: !3183)
!3237 = !DILocation(line: 826, column: 32, scope: !3183)
!3238 = !DILocation(line: 826, column: 47, scope: !3183)
!3239 = !DILocation(line: 824, column: 3, scope: !3183)
!3240 = !DILocation(line: 827, column: 9, scope: !3183)
!3241 = !DILocation(line: 828, column: 7, scope: !3183)
!3242 = !DILocation(line: 829, column: 11, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3183, file: !225, line: 828, column: 7)
!3244 = !DILocation(line: 829, column: 5, scope: !3243)
!3245 = !DILocation(line: 830, column: 3, scope: !3183)
!3246 = distinct !DISubprogram(name: "quotearg_free", scope: !225, file: !225, line: 848, type: !754, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3247)
!3247 = !{!3248, !3249}
!3248 = !DILocalVariable(name: "sv", scope: !3246, file: !225, line: 850, type: !261)
!3249 = !DILocalVariable(name: "i", scope: !3246, file: !225, line: 851, type: !57)
!3250 = !DILocation(line: 850, column: 24, scope: !3246)
!3251 = !DILocation(line: 0, scope: !3246)
!3252 = !DILocation(line: 852, column: 19, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !225, line: 852, column: 3)
!3254 = distinct !DILexicalBlock(scope: !3246, file: !225, line: 852, column: 3)
!3255 = !DILocation(line: 852, column: 17, scope: !3253)
!3256 = !DILocation(line: 852, column: 3, scope: !3254)
!3257 = !DILocation(line: 853, column: 17, scope: !3253)
!3258 = !{!3259, !745, i64 8}
!3259 = !{!"slotvec", !938, i64 0, !745, i64 8}
!3260 = !DILocation(line: 853, column: 5, scope: !3253)
!3261 = !DILocation(line: 852, column: 28, scope: !3253)
!3262 = distinct !{!3262, !3256, !3263, !801}
!3263 = !DILocation(line: 853, column: 20, scope: !3254)
!3264 = !DILocation(line: 854, column: 13, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3246, file: !225, line: 854, column: 7)
!3266 = !DILocation(line: 854, column: 17, scope: !3265)
!3267 = !DILocation(line: 854, column: 7, scope: !3246)
!3268 = !DILocation(line: 856, column: 7, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3265, file: !225, line: 855, column: 5)
!3270 = !DILocation(line: 857, column: 21, scope: !3269)
!3271 = !{!3259, !938, i64 0}
!3272 = !DILocation(line: 858, column: 20, scope: !3269)
!3273 = !DILocation(line: 859, column: 5, scope: !3269)
!3274 = !DILocation(line: 860, column: 10, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3246, file: !225, line: 860, column: 7)
!3276 = !DILocation(line: 860, column: 7, scope: !3246)
!3277 = !DILocation(line: 862, column: 13, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3275, file: !225, line: 861, column: 5)
!3279 = !DILocation(line: 862, column: 7, scope: !3278)
!3280 = !DILocation(line: 863, column: 15, scope: !3278)
!3281 = !DILocation(line: 864, column: 5, scope: !3278)
!3282 = !DILocation(line: 865, column: 10, scope: !3246)
!3283 = !DILocation(line: 866, column: 1, scope: !3246)
!3284 = distinct !DISubprogram(name: "quotearg_n", scope: !225, file: !225, line: 931, type: !882, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3285)
!3285 = !{!3286, !3287}
!3286 = !DILocalVariable(name: "n", arg: 1, scope: !3284, file: !225, line: 931, type: !57)
!3287 = !DILocalVariable(name: "arg", arg: 2, scope: !3284, file: !225, line: 931, type: !47)
!3288 = !DILocation(line: 0, scope: !3284)
!3289 = !DILocation(line: 933, column: 10, scope: !3284)
!3290 = !DILocation(line: 933, column: 3, scope: !3284)
!3291 = distinct !DISubprogram(name: "quotearg_n_options", scope: !225, file: !225, line: 877, type: !3292, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3294)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!41, !57, !47, !44, !2342}
!3294 = !{!3295, !3296, !3297, !3298, !3299, !3300, !3301, !3304, !3305, !3307, !3308, !3309}
!3295 = !DILocalVariable(name: "n", arg: 1, scope: !3291, file: !225, line: 877, type: !57)
!3296 = !DILocalVariable(name: "arg", arg: 2, scope: !3291, file: !225, line: 877, type: !47)
!3297 = !DILocalVariable(name: "argsize", arg: 3, scope: !3291, file: !225, line: 877, type: !44)
!3298 = !DILocalVariable(name: "options", arg: 4, scope: !3291, file: !225, line: 878, type: !2342)
!3299 = !DILocalVariable(name: "e", scope: !3291, file: !225, line: 880, type: !57)
!3300 = !DILocalVariable(name: "sv", scope: !3291, file: !225, line: 882, type: !261)
!3301 = !DILocalVariable(name: "preallocated", scope: !3302, file: !225, line: 889, type: !64)
!3302 = distinct !DILexicalBlock(scope: !3303, file: !225, line: 888, column: 5)
!3303 = distinct !DILexicalBlock(scope: !3291, file: !225, line: 887, column: 7)
!3304 = !DILocalVariable(name: "nmax", scope: !3302, file: !225, line: 890, type: !57)
!3305 = !DILocalVariable(name: "size", scope: !3306, file: !225, line: 903, type: !44)
!3306 = distinct !DILexicalBlock(scope: !3291, file: !225, line: 902, column: 3)
!3307 = !DILocalVariable(name: "val", scope: !3306, file: !225, line: 904, type: !41)
!3308 = !DILocalVariable(name: "flags", scope: !3306, file: !225, line: 906, type: !57)
!3309 = !DILocalVariable(name: "qsize", scope: !3306, file: !225, line: 907, type: !44)
!3310 = !DILocation(line: 0, scope: !3291)
!3311 = !DILocation(line: 880, column: 11, scope: !3291)
!3312 = !DILocation(line: 882, column: 24, scope: !3291)
!3313 = !DILocation(line: 884, column: 9, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3291, file: !225, line: 884, column: 7)
!3315 = !DILocation(line: 884, column: 7, scope: !3291)
!3316 = !DILocation(line: 885, column: 5, scope: !3314)
!3317 = !DILocation(line: 887, column: 7, scope: !3303)
!3318 = !DILocation(line: 887, column: 14, scope: !3303)
!3319 = !DILocation(line: 887, column: 7, scope: !3291)
!3320 = !DILocation(line: 889, column: 31, scope: !3302)
!3321 = !DILocation(line: 0, scope: !3302)
!3322 = !DILocation(line: 892, column: 16, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3302, file: !225, line: 892, column: 11)
!3324 = !DILocation(line: 892, column: 11, scope: !3302)
!3325 = !DILocation(line: 893, column: 9, scope: !3323)
!3326 = !DILocation(line: 895, column: 32, scope: !3302)
!3327 = !DILocation(line: 895, column: 61, scope: !3302)
!3328 = !DILocation(line: 895, column: 66, scope: !3302)
!3329 = !DILocation(line: 895, column: 22, scope: !3302)
!3330 = !DILocation(line: 895, column: 15, scope: !3302)
!3331 = !DILocation(line: 896, column: 11, scope: !3302)
!3332 = !DILocation(line: 897, column: 15, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3302, file: !225, line: 896, column: 11)
!3334 = !{i64 0, i64 8, !937, i64 8, i64 8, !744}
!3335 = !DILocation(line: 897, column: 9, scope: !3333)
!3336 = !DILocation(line: 898, column: 20, scope: !3302)
!3337 = !DILocation(line: 898, column: 18, scope: !3302)
!3338 = !DILocation(line: 898, column: 15, scope: !3302)
!3339 = !DILocation(line: 898, column: 38, scope: !3302)
!3340 = !DILocation(line: 898, column: 31, scope: !3302)
!3341 = !DILocation(line: 898, column: 48, scope: !3302)
!3342 = !DILocation(line: 0, scope: !2736, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 898, column: 7, scope: !3302)
!3344 = !DILocation(line: 59, column: 10, scope: !2736, inlinedAt: !3343)
!3345 = !DILocation(line: 899, column: 14, scope: !3302)
!3346 = !DILocation(line: 900, column: 5, scope: !3302)
!3347 = !DILocation(line: 903, column: 19, scope: !3306)
!3348 = !DILocation(line: 903, column: 25, scope: !3306)
!3349 = !DILocation(line: 0, scope: !3306)
!3350 = !DILocation(line: 904, column: 23, scope: !3306)
!3351 = !DILocation(line: 906, column: 26, scope: !3306)
!3352 = !DILocation(line: 906, column: 32, scope: !3306)
!3353 = !DILocation(line: 908, column: 55, scope: !3306)
!3354 = !DILocation(line: 909, column: 46, scope: !3306)
!3355 = !DILocation(line: 910, column: 55, scope: !3306)
!3356 = !DILocation(line: 911, column: 55, scope: !3306)
!3357 = !DILocation(line: 907, column: 20, scope: !3306)
!3358 = !DILocation(line: 913, column: 14, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3306, file: !225, line: 913, column: 9)
!3360 = !DILocation(line: 913, column: 9, scope: !3306)
!3361 = !DILocation(line: 915, column: 35, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3359, file: !225, line: 914, column: 7)
!3363 = !DILocation(line: 915, column: 20, scope: !3362)
!3364 = !DILocation(line: 916, column: 17, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3362, file: !225, line: 916, column: 13)
!3366 = !DILocation(line: 916, column: 13, scope: !3362)
!3367 = !DILocation(line: 917, column: 11, scope: !3365)
!3368 = !DILocation(line: 0, scope: !3208, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 918, column: 27, scope: !3362)
!3370 = !DILocation(line: 218, column: 10, scope: !3208, inlinedAt: !3369)
!3371 = !DILocation(line: 918, column: 19, scope: !3362)
!3372 = !DILocation(line: 919, column: 69, scope: !3362)
!3373 = !DILocation(line: 921, column: 44, scope: !3362)
!3374 = !DILocation(line: 922, column: 44, scope: !3362)
!3375 = !DILocation(line: 919, column: 9, scope: !3362)
!3376 = !DILocation(line: 923, column: 7, scope: !3362)
!3377 = !DILocation(line: 925, column: 11, scope: !3306)
!3378 = !DILocation(line: 926, column: 5, scope: !3306)
!3379 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !225, file: !225, line: 937, type: !3380, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3382)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!41, !57, !47, !44}
!3382 = !{!3383, !3384, !3385}
!3383 = !DILocalVariable(name: "n", arg: 1, scope: !3379, file: !225, line: 937, type: !57)
!3384 = !DILocalVariable(name: "arg", arg: 2, scope: !3379, file: !225, line: 937, type: !47)
!3385 = !DILocalVariable(name: "argsize", arg: 3, scope: !3379, file: !225, line: 937, type: !44)
!3386 = !DILocation(line: 0, scope: !3379)
!3387 = !DILocation(line: 939, column: 10, scope: !3379)
!3388 = !DILocation(line: 939, column: 3, scope: !3379)
!3389 = distinct !DISubprogram(name: "quotearg", scope: !225, file: !225, line: 943, type: !1024, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3390)
!3390 = !{!3391}
!3391 = !DILocalVariable(name: "arg", arg: 1, scope: !3389, file: !225, line: 943, type: !47)
!3392 = !DILocation(line: 0, scope: !3389)
!3393 = !DILocation(line: 0, scope: !3284, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 945, column: 10, scope: !3389)
!3395 = !DILocation(line: 933, column: 10, scope: !3284, inlinedAt: !3394)
!3396 = !DILocation(line: 945, column: 3, scope: !3389)
!3397 = distinct !DISubprogram(name: "quotearg_mem", scope: !225, file: !225, line: 949, type: !3398, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3400)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!41, !47, !44}
!3400 = !{!3401, !3402}
!3401 = !DILocalVariable(name: "arg", arg: 1, scope: !3397, file: !225, line: 949, type: !47)
!3402 = !DILocalVariable(name: "argsize", arg: 2, scope: !3397, file: !225, line: 949, type: !44)
!3403 = !DILocation(line: 0, scope: !3397)
!3404 = !DILocation(line: 0, scope: !3379, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 951, column: 10, scope: !3397)
!3406 = !DILocation(line: 939, column: 10, scope: !3379, inlinedAt: !3405)
!3407 = !DILocation(line: 951, column: 3, scope: !3397)
!3408 = distinct !DISubprogram(name: "quotearg_n_style", scope: !225, file: !225, line: 955, type: !3409, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3411)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!41, !57, !17, !47}
!3411 = !{!3412, !3413, !3414, !3415}
!3412 = !DILocalVariable(name: "n", arg: 1, scope: !3408, file: !225, line: 955, type: !57)
!3413 = !DILocalVariable(name: "s", arg: 2, scope: !3408, file: !225, line: 955, type: !17)
!3414 = !DILocalVariable(name: "arg", arg: 3, scope: !3408, file: !225, line: 955, type: !47)
!3415 = !DILocalVariable(name: "o", scope: !3408, file: !225, line: 957, type: !2343)
!3416 = !DILocation(line: 0, scope: !3408)
!3417 = !DILocation(line: 957, column: 3, scope: !3408)
!3418 = !DILocation(line: 957, column: 32, scope: !3408)
!3419 = !{!3420}
!3420 = distinct !{!3420, !3421, !"quoting_options_from_style: argument 0"}
!3421 = distinct !{!3421, !"quoting_options_from_style"}
!3422 = !DILocation(line: 957, column: 36, scope: !3408)
!3423 = !DILocalVariable(name: "style", arg: 1, scope: !3424, file: !225, line: 193, type: !17)
!3424 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !225, file: !225, line: 193, type: !3425, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3427)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!242, !17}
!3427 = !{!3423, !3428}
!3428 = !DILocalVariable(name: "o", scope: !3424, file: !225, line: 195, type: !242)
!3429 = !DILocation(line: 0, scope: !3424, inlinedAt: !3430)
!3430 = distinct !DILocation(line: 957, column: 36, scope: !3408)
!3431 = !DILocation(line: 195, column: 26, scope: !3424, inlinedAt: !3430)
!3432 = !DILocation(line: 196, column: 13, scope: !3433, inlinedAt: !3430)
!3433 = distinct !DILexicalBlock(scope: !3424, file: !225, line: 196, column: 7)
!3434 = !DILocation(line: 196, column: 7, scope: !3424, inlinedAt: !3430)
!3435 = !DILocation(line: 197, column: 5, scope: !3433, inlinedAt: !3430)
!3436 = !DILocation(line: 198, column: 5, scope: !3424, inlinedAt: !3430)
!3437 = !DILocation(line: 198, column: 11, scope: !3424, inlinedAt: !3430)
!3438 = !DILocation(line: 958, column: 10, scope: !3408)
!3439 = !DILocation(line: 959, column: 1, scope: !3408)
!3440 = !DILocation(line: 958, column: 3, scope: !3408)
!3441 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !225, file: !225, line: 962, type: !3442, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3444)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!41, !57, !17, !47, !44}
!3444 = !{!3445, !3446, !3447, !3448, !3449}
!3445 = !DILocalVariable(name: "n", arg: 1, scope: !3441, file: !225, line: 962, type: !57)
!3446 = !DILocalVariable(name: "s", arg: 2, scope: !3441, file: !225, line: 962, type: !17)
!3447 = !DILocalVariable(name: "arg", arg: 3, scope: !3441, file: !225, line: 963, type: !47)
!3448 = !DILocalVariable(name: "argsize", arg: 4, scope: !3441, file: !225, line: 963, type: !44)
!3449 = !DILocalVariable(name: "o", scope: !3441, file: !225, line: 965, type: !2343)
!3450 = !DILocation(line: 0, scope: !3441)
!3451 = !DILocation(line: 965, column: 3, scope: !3441)
!3452 = !DILocation(line: 965, column: 32, scope: !3441)
!3453 = !{!3454}
!3454 = distinct !{!3454, !3455, !"quoting_options_from_style: argument 0"}
!3455 = distinct !{!3455, !"quoting_options_from_style"}
!3456 = !DILocation(line: 965, column: 36, scope: !3441)
!3457 = !DILocation(line: 0, scope: !3424, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 965, column: 36, scope: !3441)
!3459 = !DILocation(line: 195, column: 26, scope: !3424, inlinedAt: !3458)
!3460 = !DILocation(line: 196, column: 13, scope: !3433, inlinedAt: !3458)
!3461 = !DILocation(line: 196, column: 7, scope: !3424, inlinedAt: !3458)
!3462 = !DILocation(line: 197, column: 5, scope: !3433, inlinedAt: !3458)
!3463 = !DILocation(line: 198, column: 5, scope: !3424, inlinedAt: !3458)
!3464 = !DILocation(line: 198, column: 11, scope: !3424, inlinedAt: !3458)
!3465 = !DILocation(line: 966, column: 10, scope: !3441)
!3466 = !DILocation(line: 967, column: 1, scope: !3441)
!3467 = !DILocation(line: 966, column: 3, scope: !3441)
!3468 = distinct !DISubprogram(name: "quotearg_style", scope: !225, file: !225, line: 970, type: !3469, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3471)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!41, !17, !47}
!3471 = !{!3472, !3473}
!3472 = !DILocalVariable(name: "s", arg: 1, scope: !3468, file: !225, line: 970, type: !17)
!3473 = !DILocalVariable(name: "arg", arg: 2, scope: !3468, file: !225, line: 970, type: !47)
!3474 = !DILocation(line: 0, scope: !3468)
!3475 = !DILocation(line: 0, scope: !3408, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 972, column: 10, scope: !3468)
!3477 = !DILocation(line: 957, column: 3, scope: !3408, inlinedAt: !3476)
!3478 = !DILocation(line: 957, column: 32, scope: !3408, inlinedAt: !3476)
!3479 = !{!3480}
!3480 = distinct !{!3480, !3481, !"quoting_options_from_style: argument 0"}
!3481 = distinct !{!3481, !"quoting_options_from_style"}
!3482 = !DILocation(line: 957, column: 36, scope: !3408, inlinedAt: !3476)
!3483 = !DILocation(line: 0, scope: !3424, inlinedAt: !3484)
!3484 = distinct !DILocation(line: 957, column: 36, scope: !3408, inlinedAt: !3476)
!3485 = !DILocation(line: 195, column: 26, scope: !3424, inlinedAt: !3484)
!3486 = !DILocation(line: 196, column: 13, scope: !3433, inlinedAt: !3484)
!3487 = !DILocation(line: 196, column: 7, scope: !3424, inlinedAt: !3484)
!3488 = !DILocation(line: 197, column: 5, scope: !3433, inlinedAt: !3484)
!3489 = !DILocation(line: 198, column: 5, scope: !3424, inlinedAt: !3484)
!3490 = !DILocation(line: 198, column: 11, scope: !3424, inlinedAt: !3484)
!3491 = !DILocation(line: 958, column: 10, scope: !3408, inlinedAt: !3476)
!3492 = !DILocation(line: 959, column: 1, scope: !3408, inlinedAt: !3476)
!3493 = !DILocation(line: 972, column: 3, scope: !3468)
!3494 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !225, file: !225, line: 976, type: !3495, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3497)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!41, !17, !47, !44}
!3497 = !{!3498, !3499, !3500}
!3498 = !DILocalVariable(name: "s", arg: 1, scope: !3494, file: !225, line: 976, type: !17)
!3499 = !DILocalVariable(name: "arg", arg: 2, scope: !3494, file: !225, line: 976, type: !47)
!3500 = !DILocalVariable(name: "argsize", arg: 3, scope: !3494, file: !225, line: 976, type: !44)
!3501 = !DILocation(line: 0, scope: !3494)
!3502 = !DILocation(line: 0, scope: !3441, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 978, column: 10, scope: !3494)
!3504 = !DILocation(line: 965, column: 3, scope: !3441, inlinedAt: !3503)
!3505 = !DILocation(line: 965, column: 32, scope: !3441, inlinedAt: !3503)
!3506 = !{!3507}
!3507 = distinct !{!3507, !3508, !"quoting_options_from_style: argument 0"}
!3508 = distinct !{!3508, !"quoting_options_from_style"}
!3509 = !DILocation(line: 965, column: 36, scope: !3441, inlinedAt: !3503)
!3510 = !DILocation(line: 0, scope: !3424, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 965, column: 36, scope: !3441, inlinedAt: !3503)
!3512 = !DILocation(line: 195, column: 26, scope: !3424, inlinedAt: !3511)
!3513 = !DILocation(line: 196, column: 13, scope: !3433, inlinedAt: !3511)
!3514 = !DILocation(line: 196, column: 7, scope: !3424, inlinedAt: !3511)
!3515 = !DILocation(line: 197, column: 5, scope: !3433, inlinedAt: !3511)
!3516 = !DILocation(line: 198, column: 5, scope: !3424, inlinedAt: !3511)
!3517 = !DILocation(line: 198, column: 11, scope: !3424, inlinedAt: !3511)
!3518 = !DILocation(line: 966, column: 10, scope: !3441, inlinedAt: !3503)
!3519 = !DILocation(line: 967, column: 1, scope: !3441, inlinedAt: !3503)
!3520 = !DILocation(line: 978, column: 3, scope: !3494)
!3521 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !225, file: !225, line: 982, type: !3522, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3524)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!41, !47, !44, !42}
!3524 = !{!3525, !3526, !3527, !3528}
!3525 = !DILocalVariable(name: "arg", arg: 1, scope: !3521, file: !225, line: 982, type: !47)
!3526 = !DILocalVariable(name: "argsize", arg: 2, scope: !3521, file: !225, line: 982, type: !44)
!3527 = !DILocalVariable(name: "ch", arg: 3, scope: !3521, file: !225, line: 982, type: !42)
!3528 = !DILocalVariable(name: "options", scope: !3521, file: !225, line: 984, type: !242)
!3529 = !DILocation(line: 0, scope: !3521)
!3530 = !DILocation(line: 984, column: 3, scope: !3521)
!3531 = !DILocation(line: 984, column: 26, scope: !3521)
!3532 = !DILocation(line: 985, column: 13, scope: !3521)
!3533 = !{i64 0, i64 4, !892, i64 4, i64 4, !989, i64 8, i64 32, !892, i64 40, i64 8, !744, i64 48, i64 8, !744}
!3534 = !DILocation(line: 0, scope: !2363, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 986, column: 3, scope: !3521)
!3536 = !DILocation(line: 156, column: 62, scope: !2363, inlinedAt: !3535)
!3537 = !DILocation(line: 156, column: 57, scope: !2363, inlinedAt: !3535)
!3538 = !DILocation(line: 157, column: 15, scope: !2363, inlinedAt: !3535)
!3539 = !DILocation(line: 158, column: 12, scope: !2363, inlinedAt: !3535)
!3540 = !DILocation(line: 158, column: 15, scope: !2363, inlinedAt: !3535)
!3541 = !DILocation(line: 158, column: 25, scope: !2363, inlinedAt: !3535)
!3542 = !DILocation(line: 159, column: 18, scope: !2363, inlinedAt: !3535)
!3543 = !DILocation(line: 159, column: 23, scope: !2363, inlinedAt: !3535)
!3544 = !DILocation(line: 159, column: 6, scope: !2363, inlinedAt: !3535)
!3545 = !DILocation(line: 987, column: 10, scope: !3521)
!3546 = !DILocation(line: 988, column: 1, scope: !3521)
!3547 = !DILocation(line: 987, column: 3, scope: !3521)
!3548 = distinct !DISubprogram(name: "quotearg_char", scope: !225, file: !225, line: 991, type: !3549, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3551)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!41, !47, !42}
!3551 = !{!3552, !3553}
!3552 = !DILocalVariable(name: "arg", arg: 1, scope: !3548, file: !225, line: 991, type: !47)
!3553 = !DILocalVariable(name: "ch", arg: 2, scope: !3548, file: !225, line: 991, type: !42)
!3554 = !DILocation(line: 0, scope: !3548)
!3555 = !DILocation(line: 0, scope: !3521, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 993, column: 10, scope: !3548)
!3557 = !DILocation(line: 984, column: 3, scope: !3521, inlinedAt: !3556)
!3558 = !DILocation(line: 984, column: 26, scope: !3521, inlinedAt: !3556)
!3559 = !DILocation(line: 985, column: 13, scope: !3521, inlinedAt: !3556)
!3560 = !DILocation(line: 0, scope: !2363, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 986, column: 3, scope: !3521, inlinedAt: !3556)
!3562 = !DILocation(line: 156, column: 62, scope: !2363, inlinedAt: !3561)
!3563 = !DILocation(line: 156, column: 57, scope: !2363, inlinedAt: !3561)
!3564 = !DILocation(line: 157, column: 15, scope: !2363, inlinedAt: !3561)
!3565 = !DILocation(line: 158, column: 12, scope: !2363, inlinedAt: !3561)
!3566 = !DILocation(line: 158, column: 15, scope: !2363, inlinedAt: !3561)
!3567 = !DILocation(line: 158, column: 25, scope: !2363, inlinedAt: !3561)
!3568 = !DILocation(line: 159, column: 18, scope: !2363, inlinedAt: !3561)
!3569 = !DILocation(line: 159, column: 23, scope: !2363, inlinedAt: !3561)
!3570 = !DILocation(line: 159, column: 6, scope: !2363, inlinedAt: !3561)
!3571 = !DILocation(line: 987, column: 10, scope: !3521, inlinedAt: !3556)
!3572 = !DILocation(line: 988, column: 1, scope: !3521, inlinedAt: !3556)
!3573 = !DILocation(line: 993, column: 3, scope: !3548)
!3574 = distinct !DISubprogram(name: "quotearg_colon", scope: !225, file: !225, line: 997, type: !1024, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3575)
!3575 = !{!3576}
!3576 = !DILocalVariable(name: "arg", arg: 1, scope: !3574, file: !225, line: 997, type: !47)
!3577 = !DILocation(line: 0, scope: !3574)
!3578 = !DILocation(line: 0, scope: !3548, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 999, column: 10, scope: !3574)
!3580 = !DILocation(line: 0, scope: !3521, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 993, column: 10, scope: !3548, inlinedAt: !3579)
!3582 = !DILocation(line: 984, column: 3, scope: !3521, inlinedAt: !3581)
!3583 = !DILocation(line: 984, column: 26, scope: !3521, inlinedAt: !3581)
!3584 = !DILocation(line: 985, column: 13, scope: !3521, inlinedAt: !3581)
!3585 = !DILocation(line: 0, scope: !2363, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 986, column: 3, scope: !3521, inlinedAt: !3581)
!3587 = !DILocation(line: 156, column: 57, scope: !2363, inlinedAt: !3586)
!3588 = !DILocation(line: 158, column: 12, scope: !2363, inlinedAt: !3586)
!3589 = !DILocation(line: 159, column: 6, scope: !2363, inlinedAt: !3586)
!3590 = !DILocation(line: 987, column: 10, scope: !3521, inlinedAt: !3581)
!3591 = !DILocation(line: 988, column: 1, scope: !3521, inlinedAt: !3581)
!3592 = !DILocation(line: 999, column: 3, scope: !3574)
!3593 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !225, file: !225, line: 1003, type: !3398, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3594)
!3594 = !{!3595, !3596}
!3595 = !DILocalVariable(name: "arg", arg: 1, scope: !3593, file: !225, line: 1003, type: !47)
!3596 = !DILocalVariable(name: "argsize", arg: 2, scope: !3593, file: !225, line: 1003, type: !44)
!3597 = !DILocation(line: 0, scope: !3593)
!3598 = !DILocation(line: 0, scope: !3521, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 1005, column: 10, scope: !3593)
!3600 = !DILocation(line: 984, column: 3, scope: !3521, inlinedAt: !3599)
!3601 = !DILocation(line: 984, column: 26, scope: !3521, inlinedAt: !3599)
!3602 = !DILocation(line: 985, column: 13, scope: !3521, inlinedAt: !3599)
!3603 = !DILocation(line: 0, scope: !2363, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 986, column: 3, scope: !3521, inlinedAt: !3599)
!3605 = !DILocation(line: 156, column: 57, scope: !2363, inlinedAt: !3604)
!3606 = !DILocation(line: 158, column: 12, scope: !2363, inlinedAt: !3604)
!3607 = !DILocation(line: 159, column: 6, scope: !2363, inlinedAt: !3604)
!3608 = !DILocation(line: 987, column: 10, scope: !3521, inlinedAt: !3599)
!3609 = !DILocation(line: 988, column: 1, scope: !3521, inlinedAt: !3599)
!3610 = !DILocation(line: 1005, column: 3, scope: !3593)
!3611 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !225, file: !225, line: 1009, type: !3409, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3612)
!3612 = !{!3613, !3614, !3615, !3616}
!3613 = !DILocalVariable(name: "n", arg: 1, scope: !3611, file: !225, line: 1009, type: !57)
!3614 = !DILocalVariable(name: "s", arg: 2, scope: !3611, file: !225, line: 1009, type: !17)
!3615 = !DILocalVariable(name: "arg", arg: 3, scope: !3611, file: !225, line: 1009, type: !47)
!3616 = !DILocalVariable(name: "options", scope: !3611, file: !225, line: 1011, type: !242)
!3617 = !DILocation(line: 195, column: 26, scope: !3424, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 1012, column: 13, scope: !3611)
!3619 = !DILocation(line: 0, scope: !3611)
!3620 = !DILocation(line: 1011, column: 3, scope: !3611)
!3621 = !DILocation(line: 1011, column: 26, scope: !3611)
!3622 = !DILocation(line: 1012, column: 13, scope: !3611)
!3623 = !{!3624}
!3624 = distinct !{!3624, !3625, !"quoting_options_from_style: argument 0"}
!3625 = distinct !{!3625, !"quoting_options_from_style"}
!3626 = !DILocation(line: 0, scope: !3424, inlinedAt: !3618)
!3627 = !DILocation(line: 196, column: 13, scope: !3433, inlinedAt: !3618)
!3628 = !DILocation(line: 196, column: 7, scope: !3424, inlinedAt: !3618)
!3629 = !DILocation(line: 197, column: 5, scope: !3433, inlinedAt: !3618)
!3630 = !{i64 0, i64 4, !989, i64 4, i64 32, !892, i64 36, i64 8, !744, i64 44, i64 8, !744}
!3631 = !DILocation(line: 0, scope: !2363, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 1013, column: 3, scope: !3611)
!3633 = !DILocation(line: 156, column: 57, scope: !2363, inlinedAt: !3632)
!3634 = !DILocation(line: 158, column: 12, scope: !2363, inlinedAt: !3632)
!3635 = !DILocation(line: 159, column: 6, scope: !2363, inlinedAt: !3632)
!3636 = !DILocation(line: 1014, column: 10, scope: !3611)
!3637 = !DILocation(line: 1015, column: 1, scope: !3611)
!3638 = !DILocation(line: 1014, column: 3, scope: !3611)
!3639 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !225, file: !225, line: 1018, type: !3640, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3642)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!41, !57, !47, !47, !47}
!3642 = !{!3643, !3644, !3645, !3646}
!3643 = !DILocalVariable(name: "n", arg: 1, scope: !3639, file: !225, line: 1018, type: !57)
!3644 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3639, file: !225, line: 1018, type: !47)
!3645 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3639, file: !225, line: 1019, type: !47)
!3646 = !DILocalVariable(name: "arg", arg: 4, scope: !3639, file: !225, line: 1019, type: !47)
!3647 = !DILocation(line: 0, scope: !3639)
!3648 = !DILocalVariable(name: "n", arg: 1, scope: !3649, file: !225, line: 1026, type: !57)
!3649 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !225, file: !225, line: 1026, type: !3650, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3652)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!41, !57, !47, !47, !47, !44}
!3652 = !{!3648, !3653, !3654, !3655, !3656, !3657}
!3653 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3649, file: !225, line: 1026, type: !47)
!3654 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3649, file: !225, line: 1027, type: !47)
!3655 = !DILocalVariable(name: "arg", arg: 4, scope: !3649, file: !225, line: 1028, type: !47)
!3656 = !DILocalVariable(name: "argsize", arg: 5, scope: !3649, file: !225, line: 1028, type: !44)
!3657 = !DILocalVariable(name: "o", scope: !3649, file: !225, line: 1030, type: !242)
!3658 = !DILocation(line: 0, scope: !3649, inlinedAt: !3659)
!3659 = distinct !DILocation(line: 1021, column: 10, scope: !3639)
!3660 = !DILocation(line: 1030, column: 3, scope: !3649, inlinedAt: !3659)
!3661 = !DILocation(line: 1030, column: 26, scope: !3649, inlinedAt: !3659)
!3662 = !DILocation(line: 1030, column: 30, scope: !3649, inlinedAt: !3659)
!3663 = !DILocation(line: 0, scope: !2403, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 1031, column: 3, scope: !3649, inlinedAt: !3659)
!3665 = !DILocation(line: 184, column: 6, scope: !2403, inlinedAt: !3664)
!3666 = !DILocation(line: 184, column: 12, scope: !2403, inlinedAt: !3664)
!3667 = !DILocation(line: 185, column: 8, scope: !2417, inlinedAt: !3664)
!3668 = !DILocation(line: 185, column: 19, scope: !2417, inlinedAt: !3664)
!3669 = !DILocation(line: 186, column: 5, scope: !2417, inlinedAt: !3664)
!3670 = !DILocation(line: 187, column: 6, scope: !2403, inlinedAt: !3664)
!3671 = !DILocation(line: 187, column: 17, scope: !2403, inlinedAt: !3664)
!3672 = !DILocation(line: 188, column: 6, scope: !2403, inlinedAt: !3664)
!3673 = !DILocation(line: 188, column: 18, scope: !2403, inlinedAt: !3664)
!3674 = !DILocation(line: 1032, column: 10, scope: !3649, inlinedAt: !3659)
!3675 = !DILocation(line: 1033, column: 1, scope: !3649, inlinedAt: !3659)
!3676 = !DILocation(line: 1021, column: 3, scope: !3639)
!3677 = !DILocation(line: 0, scope: !3649)
!3678 = !DILocation(line: 1030, column: 3, scope: !3649)
!3679 = !DILocation(line: 1030, column: 26, scope: !3649)
!3680 = !DILocation(line: 1030, column: 30, scope: !3649)
!3681 = !DILocation(line: 0, scope: !2403, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 1031, column: 3, scope: !3649)
!3683 = !DILocation(line: 184, column: 6, scope: !2403, inlinedAt: !3682)
!3684 = !DILocation(line: 184, column: 12, scope: !2403, inlinedAt: !3682)
!3685 = !DILocation(line: 185, column: 8, scope: !2417, inlinedAt: !3682)
!3686 = !DILocation(line: 185, column: 19, scope: !2417, inlinedAt: !3682)
!3687 = !DILocation(line: 186, column: 5, scope: !2417, inlinedAt: !3682)
!3688 = !DILocation(line: 187, column: 6, scope: !2403, inlinedAt: !3682)
!3689 = !DILocation(line: 187, column: 17, scope: !2403, inlinedAt: !3682)
!3690 = !DILocation(line: 188, column: 6, scope: !2403, inlinedAt: !3682)
!3691 = !DILocation(line: 188, column: 18, scope: !2403, inlinedAt: !3682)
!3692 = !DILocation(line: 1032, column: 10, scope: !3649)
!3693 = !DILocation(line: 1033, column: 1, scope: !3649)
!3694 = !DILocation(line: 1032, column: 3, scope: !3649)
!3695 = distinct !DISubprogram(name: "quotearg_custom", scope: !225, file: !225, line: 1036, type: !3696, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3698)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!41, !47, !47, !47}
!3698 = !{!3699, !3700, !3701}
!3699 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3695, file: !225, line: 1036, type: !47)
!3700 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3695, file: !225, line: 1036, type: !47)
!3701 = !DILocalVariable(name: "arg", arg: 3, scope: !3695, file: !225, line: 1037, type: !47)
!3702 = !DILocation(line: 0, scope: !3695)
!3703 = !DILocation(line: 0, scope: !3639, inlinedAt: !3704)
!3704 = distinct !DILocation(line: 1039, column: 10, scope: !3695)
!3705 = !DILocation(line: 0, scope: !3649, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 1021, column: 10, scope: !3639, inlinedAt: !3704)
!3707 = !DILocation(line: 1030, column: 3, scope: !3649, inlinedAt: !3706)
!3708 = !DILocation(line: 1030, column: 26, scope: !3649, inlinedAt: !3706)
!3709 = !DILocation(line: 1030, column: 30, scope: !3649, inlinedAt: !3706)
!3710 = !DILocation(line: 0, scope: !2403, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 1031, column: 3, scope: !3649, inlinedAt: !3706)
!3712 = !DILocation(line: 184, column: 6, scope: !2403, inlinedAt: !3711)
!3713 = !DILocation(line: 184, column: 12, scope: !2403, inlinedAt: !3711)
!3714 = !DILocation(line: 185, column: 8, scope: !2417, inlinedAt: !3711)
!3715 = !DILocation(line: 185, column: 19, scope: !2417, inlinedAt: !3711)
!3716 = !DILocation(line: 186, column: 5, scope: !2417, inlinedAt: !3711)
!3717 = !DILocation(line: 187, column: 6, scope: !2403, inlinedAt: !3711)
!3718 = !DILocation(line: 187, column: 17, scope: !2403, inlinedAt: !3711)
!3719 = !DILocation(line: 188, column: 6, scope: !2403, inlinedAt: !3711)
!3720 = !DILocation(line: 188, column: 18, scope: !2403, inlinedAt: !3711)
!3721 = !DILocation(line: 1032, column: 10, scope: !3649, inlinedAt: !3706)
!3722 = !DILocation(line: 1033, column: 1, scope: !3649, inlinedAt: !3706)
!3723 = !DILocation(line: 1039, column: 3, scope: !3695)
!3724 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !225, file: !225, line: 1043, type: !3725, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3727)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!41, !47, !47, !47, !44}
!3727 = !{!3728, !3729, !3730, !3731}
!3728 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3724, file: !225, line: 1043, type: !47)
!3729 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3724, file: !225, line: 1043, type: !47)
!3730 = !DILocalVariable(name: "arg", arg: 3, scope: !3724, file: !225, line: 1044, type: !47)
!3731 = !DILocalVariable(name: "argsize", arg: 4, scope: !3724, file: !225, line: 1044, type: !44)
!3732 = !DILocation(line: 0, scope: !3724)
!3733 = !DILocation(line: 0, scope: !3649, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 1046, column: 10, scope: !3724)
!3735 = !DILocation(line: 1030, column: 3, scope: !3649, inlinedAt: !3734)
!3736 = !DILocation(line: 1030, column: 26, scope: !3649, inlinedAt: !3734)
!3737 = !DILocation(line: 1030, column: 30, scope: !3649, inlinedAt: !3734)
!3738 = !DILocation(line: 0, scope: !2403, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 1031, column: 3, scope: !3649, inlinedAt: !3734)
!3740 = !DILocation(line: 184, column: 6, scope: !2403, inlinedAt: !3739)
!3741 = !DILocation(line: 184, column: 12, scope: !2403, inlinedAt: !3739)
!3742 = !DILocation(line: 185, column: 8, scope: !2417, inlinedAt: !3739)
!3743 = !DILocation(line: 185, column: 19, scope: !2417, inlinedAt: !3739)
!3744 = !DILocation(line: 186, column: 5, scope: !2417, inlinedAt: !3739)
!3745 = !DILocation(line: 187, column: 6, scope: !2403, inlinedAt: !3739)
!3746 = !DILocation(line: 187, column: 17, scope: !2403, inlinedAt: !3739)
!3747 = !DILocation(line: 188, column: 6, scope: !2403, inlinedAt: !3739)
!3748 = !DILocation(line: 188, column: 18, scope: !2403, inlinedAt: !3739)
!3749 = !DILocation(line: 1032, column: 10, scope: !3649, inlinedAt: !3734)
!3750 = !DILocation(line: 1033, column: 1, scope: !3649, inlinedAt: !3734)
!3751 = !DILocation(line: 1046, column: 3, scope: !3724)
!3752 = distinct !DISubprogram(name: "quote_n_mem", scope: !225, file: !225, line: 1061, type: !3753, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3755)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!47, !57, !47, !44}
!3755 = !{!3756, !3757, !3758}
!3756 = !DILocalVariable(name: "n", arg: 1, scope: !3752, file: !225, line: 1061, type: !57)
!3757 = !DILocalVariable(name: "arg", arg: 2, scope: !3752, file: !225, line: 1061, type: !47)
!3758 = !DILocalVariable(name: "argsize", arg: 3, scope: !3752, file: !225, line: 1061, type: !44)
!3759 = !DILocation(line: 0, scope: !3752)
!3760 = !DILocation(line: 1063, column: 10, scope: !3752)
!3761 = !DILocation(line: 1063, column: 3, scope: !3752)
!3762 = distinct !DISubprogram(name: "quote_mem", scope: !225, file: !225, line: 1067, type: !3763, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3765)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!47, !47, !44}
!3765 = !{!3766, !3767}
!3766 = !DILocalVariable(name: "arg", arg: 1, scope: !3762, file: !225, line: 1067, type: !47)
!3767 = !DILocalVariable(name: "argsize", arg: 2, scope: !3762, file: !225, line: 1067, type: !44)
!3768 = !DILocation(line: 0, scope: !3762)
!3769 = !DILocation(line: 0, scope: !3752, inlinedAt: !3770)
!3770 = distinct !DILocation(line: 1069, column: 10, scope: !3762)
!3771 = !DILocation(line: 1063, column: 10, scope: !3752, inlinedAt: !3770)
!3772 = !DILocation(line: 1069, column: 3, scope: !3762)
!3773 = distinct !DISubprogram(name: "quote_n", scope: !225, file: !225, line: 1073, type: !3774, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3776)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!47, !57, !47}
!3776 = !{!3777, !3778}
!3777 = !DILocalVariable(name: "n", arg: 1, scope: !3773, file: !225, line: 1073, type: !57)
!3778 = !DILocalVariable(name: "arg", arg: 2, scope: !3773, file: !225, line: 1073, type: !47)
!3779 = !DILocation(line: 0, scope: !3773)
!3780 = !DILocation(line: 0, scope: !3752, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 1075, column: 10, scope: !3773)
!3782 = !DILocation(line: 1063, column: 10, scope: !3752, inlinedAt: !3781)
!3783 = !DILocation(line: 1075, column: 3, scope: !3773)
!3784 = distinct !DISubprogram(name: "quote", scope: !225, file: !225, line: 1079, type: !3785, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3787)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!47, !47}
!3787 = !{!3788}
!3788 = !DILocalVariable(name: "arg", arg: 1, scope: !3784, file: !225, line: 1079, type: !47)
!3789 = !DILocation(line: 0, scope: !3784)
!3790 = !DILocation(line: 0, scope: !3773, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 1081, column: 10, scope: !3784)
!3792 = !DILocation(line: 0, scope: !3752, inlinedAt: !3793)
!3793 = distinct !DILocation(line: 1075, column: 10, scope: !3773, inlinedAt: !3791)
!3794 = !DILocation(line: 1063, column: 10, scope: !3752, inlinedAt: !3793)
!3795 = !DILocation(line: 1081, column: 3, scope: !3784)
!3796 = distinct !DISubprogram(name: "version_etc_arn", scope: !293, file: !293, line: 61, type: !3797, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3834)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{null, !3799, !47, !47, !47, !3833, !44}
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1049, line: 7, baseType: !3801)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !831, line: 49, size: 1728, elements: !3802)
!3802 = !{!3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3801, file: !831, line: 51, baseType: !57, size: 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3801, file: !831, line: 54, baseType: !41, size: 64, offset: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3801, file: !831, line: 55, baseType: !41, size: 64, offset: 128)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3801, file: !831, line: 56, baseType: !41, size: 64, offset: 192)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3801, file: !831, line: 57, baseType: !41, size: 64, offset: 256)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3801, file: !831, line: 58, baseType: !41, size: 64, offset: 320)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3801, file: !831, line: 59, baseType: !41, size: 64, offset: 384)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3801, file: !831, line: 60, baseType: !41, size: 64, offset: 448)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3801, file: !831, line: 61, baseType: !41, size: 64, offset: 512)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3801, file: !831, line: 64, baseType: !41, size: 64, offset: 576)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3801, file: !831, line: 65, baseType: !41, size: 64, offset: 640)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3801, file: !831, line: 66, baseType: !41, size: 64, offset: 704)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3801, file: !831, line: 68, baseType: !846, size: 64, offset: 768)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3801, file: !831, line: 70, baseType: !3817, size: 64, offset: 832)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3801, file: !831, line: 72, baseType: !57, size: 32, offset: 896)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3801, file: !831, line: 73, baseType: !57, size: 32, offset: 928)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3801, file: !831, line: 74, baseType: !852, size: 64, offset: 960)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3801, file: !831, line: 77, baseType: !154, size: 16, offset: 1024)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3801, file: !831, line: 78, baseType: !856, size: 8, offset: 1040)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3801, file: !831, line: 79, baseType: !858, size: 8, offset: 1048)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3801, file: !831, line: 81, baseType: !862, size: 64, offset: 1088)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3801, file: !831, line: 89, baseType: !865, size: 64, offset: 1152)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3801, file: !831, line: 91, baseType: !867, size: 64, offset: 1216)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3801, file: !831, line: 92, baseType: !870, size: 64, offset: 1280)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3801, file: !831, line: 93, baseType: !3817, size: 64, offset: 1344)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3801, file: !831, line: 94, baseType: !43, size: 64, offset: 1408)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3801, file: !831, line: 95, baseType: !44, size: 64, offset: 1472)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3801, file: !831, line: 96, baseType: !57, size: 32, offset: 1536)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3801, file: !831, line: 98, baseType: !877, size: 160, offset: 1568)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!3834 = !{!3835, !3836, !3837, !3838, !3839, !3840}
!3835 = !DILocalVariable(name: "stream", arg: 1, scope: !3796, file: !293, line: 61, type: !3799)
!3836 = !DILocalVariable(name: "command_name", arg: 2, scope: !3796, file: !293, line: 62, type: !47)
!3837 = !DILocalVariable(name: "package", arg: 3, scope: !3796, file: !293, line: 62, type: !47)
!3838 = !DILocalVariable(name: "version", arg: 4, scope: !3796, file: !293, line: 63, type: !47)
!3839 = !DILocalVariable(name: "authors", arg: 5, scope: !3796, file: !293, line: 64, type: !3833)
!3840 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3796, file: !293, line: 64, type: !44)
!3841 = !DILocation(line: 0, scope: !3796)
!3842 = !DILocation(line: 66, column: 7, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3796, file: !293, line: 66, column: 7)
!3844 = !DILocation(line: 66, column: 7, scope: !3796)
!3845 = !DILocation(line: 67, column: 5, scope: !3843)
!3846 = !DILocation(line: 69, column: 5, scope: !3843)
!3847 = !DILocation(line: 83, column: 3, scope: !3796)
!3848 = !DILocation(line: 85, column: 3, scope: !3796)
!3849 = !DILocation(line: 88, column: 3, scope: !3796)
!3850 = !DILocation(line: 95, column: 3, scope: !3796)
!3851 = !DILocation(line: 97, column: 3, scope: !3796)
!3852 = !DILocation(line: 105, column: 7, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3796, file: !293, line: 98, column: 5)
!3854 = !DILocation(line: 106, column: 7, scope: !3853)
!3855 = !DILocation(line: 109, column: 7, scope: !3853)
!3856 = !DILocation(line: 110, column: 7, scope: !3853)
!3857 = !DILocation(line: 113, column: 7, scope: !3853)
!3858 = !DILocation(line: 115, column: 7, scope: !3853)
!3859 = !DILocation(line: 120, column: 7, scope: !3853)
!3860 = !DILocation(line: 122, column: 7, scope: !3853)
!3861 = !DILocation(line: 127, column: 7, scope: !3853)
!3862 = !DILocation(line: 129, column: 7, scope: !3853)
!3863 = !DILocation(line: 134, column: 7, scope: !3853)
!3864 = !DILocation(line: 137, column: 7, scope: !3853)
!3865 = !DILocation(line: 142, column: 7, scope: !3853)
!3866 = !DILocation(line: 145, column: 7, scope: !3853)
!3867 = !DILocation(line: 150, column: 7, scope: !3853)
!3868 = !DILocation(line: 154, column: 7, scope: !3853)
!3869 = !DILocation(line: 159, column: 7, scope: !3853)
!3870 = !DILocation(line: 163, column: 7, scope: !3853)
!3871 = !DILocation(line: 170, column: 7, scope: !3853)
!3872 = !DILocation(line: 174, column: 7, scope: !3853)
!3873 = !DILocation(line: 176, column: 1, scope: !3796)
!3874 = distinct !DISubprogram(name: "version_etc_ar", scope: !293, file: !293, line: 183, type: !3875, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3877)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{null, !3799, !47, !47, !47, !3833}
!3877 = !{!3878, !3879, !3880, !3881, !3882, !3883}
!3878 = !DILocalVariable(name: "stream", arg: 1, scope: !3874, file: !293, line: 183, type: !3799)
!3879 = !DILocalVariable(name: "command_name", arg: 2, scope: !3874, file: !293, line: 184, type: !47)
!3880 = !DILocalVariable(name: "package", arg: 3, scope: !3874, file: !293, line: 184, type: !47)
!3881 = !DILocalVariable(name: "version", arg: 4, scope: !3874, file: !293, line: 185, type: !47)
!3882 = !DILocalVariable(name: "authors", arg: 5, scope: !3874, file: !293, line: 185, type: !3833)
!3883 = !DILocalVariable(name: "n_authors", scope: !3874, file: !293, line: 187, type: !44)
!3884 = !DILocation(line: 0, scope: !3874)
!3885 = !DILocation(line: 189, column: 8, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3874, file: !293, line: 189, column: 3)
!3887 = !DILocation(line: 0, scope: !3886)
!3888 = !DILocation(line: 189, column: 23, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3886, file: !293, line: 189, column: 3)
!3890 = !DILocation(line: 189, column: 3, scope: !3886)
!3891 = !DILocation(line: 189, column: 52, scope: !3889)
!3892 = distinct !{!3892, !3890, !3893, !801}
!3893 = !DILocation(line: 190, column: 5, scope: !3886)
!3894 = !DILocation(line: 191, column: 3, scope: !3874)
!3895 = !DILocation(line: 192, column: 1, scope: !3874)
!3896 = distinct !DISubprogram(name: "version_etc_va", scope: !293, file: !293, line: 199, type: !3897, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3906)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{null, !3799, !47, !47, !47, !3899}
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3901)
!3901 = !{!3902, !3903, !3904, !3905}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3900, file: !293, line: 192, baseType: !6, size: 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3900, file: !293, line: 192, baseType: !6, size: 32, offset: 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3900, file: !293, line: 192, baseType: !43, size: 64, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3900, file: !293, line: 192, baseType: !43, size: 64, offset: 128)
!3906 = !{!3907, !3908, !3909, !3910, !3911, !3912, !3913}
!3907 = !DILocalVariable(name: "stream", arg: 1, scope: !3896, file: !293, line: 199, type: !3799)
!3908 = !DILocalVariable(name: "command_name", arg: 2, scope: !3896, file: !293, line: 200, type: !47)
!3909 = !DILocalVariable(name: "package", arg: 3, scope: !3896, file: !293, line: 200, type: !47)
!3910 = !DILocalVariable(name: "version", arg: 4, scope: !3896, file: !293, line: 201, type: !47)
!3911 = !DILocalVariable(name: "authors", arg: 5, scope: !3896, file: !293, line: 201, type: !3899)
!3912 = !DILocalVariable(name: "n_authors", scope: !3896, file: !293, line: 203, type: !44)
!3913 = !DILocalVariable(name: "authtab", scope: !3896, file: !293, line: 204, type: !3914)
!3914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 640, elements: !238)
!3915 = !DILocation(line: 0, scope: !3896)
!3916 = !DILocation(line: 204, column: 3, scope: !3896)
!3917 = !DILocation(line: 204, column: 15, scope: !3896)
!3918 = !DILocation(line: 208, column: 35, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3920, file: !293, line: 206, column: 3)
!3920 = distinct !DILexicalBlock(scope: !3896, file: !293, line: 206, column: 3)
!3921 = !DILocation(line: 208, column: 14, scope: !3919)
!3922 = !DILocation(line: 208, column: 33, scope: !3919)
!3923 = !DILocation(line: 208, column: 67, scope: !3919)
!3924 = !DILocation(line: 206, column: 3, scope: !3920)
!3925 = !DILocation(line: 0, scope: !3920)
!3926 = !DILocation(line: 211, column: 3, scope: !3896)
!3927 = !DILocation(line: 213, column: 1, scope: !3896)
!3928 = distinct !DISubprogram(name: "version_etc", scope: !293, file: !293, line: 230, type: !3929, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3931)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{null, !3799, !47, !47, !47, null}
!3931 = !{!3932, !3933, !3934, !3935, !3936}
!3932 = !DILocalVariable(name: "stream", arg: 1, scope: !3928, file: !293, line: 230, type: !3799)
!3933 = !DILocalVariable(name: "command_name", arg: 2, scope: !3928, file: !293, line: 231, type: !47)
!3934 = !DILocalVariable(name: "package", arg: 3, scope: !3928, file: !293, line: 231, type: !47)
!3935 = !DILocalVariable(name: "version", arg: 4, scope: !3928, file: !293, line: 232, type: !47)
!3936 = !DILocalVariable(name: "authors", scope: !3928, file: !293, line: 234, type: !3937)
!3937 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !826, line: 52, baseType: !3938)
!3938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3939, line: 32, baseType: !3940)
!3939 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !293, baseType: !3941)
!3941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3900, size: 192, elements: !859)
!3942 = !DILocation(line: 0, scope: !3928)
!3943 = !DILocation(line: 234, column: 3, scope: !3928)
!3944 = !DILocation(line: 234, column: 11, scope: !3928)
!3945 = !DILocation(line: 236, column: 3, scope: !3928)
!3946 = !DILocation(line: 237, column: 3, scope: !3928)
!3947 = !DILocation(line: 238, column: 3, scope: !3928)
!3948 = !DILocation(line: 239, column: 1, scope: !3928)
!3949 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !293, file: !293, line: 242, type: !754, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !201)
!3950 = !DILocation(line: 244, column: 3, scope: !3949)
!3951 = !DILocation(line: 249, column: 3, scope: !3949)
!3952 = !DILocation(line: 255, column: 3, scope: !3949)
!3953 = !DILocation(line: 260, column: 3, scope: !3949)
!3954 = !DILocation(line: 262, column: 1, scope: !3949)
!3955 = distinct !DISubprogram(name: "xnmalloc", scope: !141, file: !141, line: 99, type: !3956, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !3958)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!43, !44, !44}
!3958 = !{!3959, !3960}
!3959 = !DILocalVariable(name: "n", arg: 1, scope: !3955, file: !141, line: 99, type: !44)
!3960 = !DILocalVariable(name: "s", arg: 2, scope: !3955, file: !141, line: 99, type: !44)
!3961 = !DILocation(line: 0, scope: !3955)
!3962 = !DILocation(line: 101, column: 7, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3955, file: !141, line: 101, column: 7)
!3964 = !DILocation(line: 101, column: 7, scope: !3955)
!3965 = !DILocation(line: 102, column: 5, scope: !3963)
!3966 = !DILocation(line: 103, column: 21, scope: !3955)
!3967 = !DILocalVariable(name: "n", arg: 1, scope: !3968, file: !300, line: 39, type: !44)
!3968 = distinct !DISubprogram(name: "xmalloc", scope: !300, file: !300, line: 39, type: !3969, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !3971)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!43, !44}
!3971 = !{!3967, !3972}
!3972 = !DILocalVariable(name: "p", scope: !3968, file: !300, line: 41, type: !43)
!3973 = !DILocation(line: 0, scope: !3968, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 103, column: 10, scope: !3955)
!3975 = !DILocation(line: 41, column: 13, scope: !3968, inlinedAt: !3974)
!3976 = !DILocation(line: 42, column: 8, scope: !3977, inlinedAt: !3974)
!3977 = distinct !DILexicalBlock(scope: !3968, file: !300, line: 42, column: 7)
!3978 = !DILocation(line: 42, column: 10, scope: !3977, inlinedAt: !3974)
!3979 = !DILocation(line: 43, column: 5, scope: !3977, inlinedAt: !3974)
!3980 = !DILocation(line: 103, column: 3, scope: !3955)
!3981 = !DILocation(line: 0, scope: !3968)
!3982 = !DILocation(line: 41, column: 13, scope: !3968)
!3983 = !DILocation(line: 42, column: 8, scope: !3977)
!3984 = !DILocation(line: 42, column: 10, scope: !3977)
!3985 = !DILocation(line: 43, column: 5, scope: !3977)
!3986 = !DILocation(line: 44, column: 3, scope: !3968)
!3987 = distinct !DISubprogram(name: "xnrealloc", scope: !141, file: !141, line: 112, type: !3988, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !3990)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!43, !43, !44, !44}
!3990 = !{!3991, !3992, !3993}
!3991 = !DILocalVariable(name: "p", arg: 1, scope: !3987, file: !141, line: 112, type: !43)
!3992 = !DILocalVariable(name: "n", arg: 2, scope: !3987, file: !141, line: 112, type: !44)
!3993 = !DILocalVariable(name: "s", arg: 3, scope: !3987, file: !141, line: 112, type: !44)
!3994 = !DILocation(line: 0, scope: !3987)
!3995 = !DILocation(line: 114, column: 7, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3987, file: !141, line: 114, column: 7)
!3997 = !DILocation(line: 114, column: 7, scope: !3987)
!3998 = !DILocation(line: 115, column: 5, scope: !3996)
!3999 = !DILocation(line: 116, column: 25, scope: !3987)
!4000 = !DILocalVariable(name: "p", arg: 1, scope: !4001, file: !300, line: 51, type: !43)
!4001 = distinct !DISubprogram(name: "xrealloc", scope: !300, file: !300, line: 51, type: !4002, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4004)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!43, !43, !44}
!4004 = !{!4000, !4005}
!4005 = !DILocalVariable(name: "n", arg: 2, scope: !4001, file: !300, line: 51, type: !44)
!4006 = !DILocation(line: 0, scope: !4001, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 116, column: 10, scope: !3987)
!4008 = !DILocation(line: 53, column: 8, scope: !4009, inlinedAt: !4007)
!4009 = distinct !DILexicalBlock(scope: !4001, file: !300, line: 53, column: 7)
!4010 = !DILocation(line: 53, column: 10, scope: !4009, inlinedAt: !4007)
!4011 = !DILocation(line: 57, column: 7, scope: !4012, inlinedAt: !4007)
!4012 = distinct !DILexicalBlock(scope: !4009, file: !300, line: 54, column: 5)
!4013 = !DILocation(line: 58, column: 7, scope: !4012, inlinedAt: !4007)
!4014 = !DILocation(line: 61, column: 7, scope: !4001, inlinedAt: !4007)
!4015 = !DILocation(line: 62, column: 8, scope: !4016, inlinedAt: !4007)
!4016 = distinct !DILexicalBlock(scope: !4001, file: !300, line: 62, column: 7)
!4017 = !DILocation(line: 62, column: 10, scope: !4016, inlinedAt: !4007)
!4018 = !DILocation(line: 63, column: 5, scope: !4016, inlinedAt: !4007)
!4019 = !DILocation(line: 116, column: 3, scope: !3987)
!4020 = !DILocation(line: 0, scope: !4001)
!4021 = !DILocation(line: 53, column: 8, scope: !4009)
!4022 = !DILocation(line: 53, column: 10, scope: !4009)
!4023 = !DILocation(line: 57, column: 7, scope: !4012)
!4024 = !DILocation(line: 58, column: 7, scope: !4012)
!4025 = !DILocation(line: 61, column: 7, scope: !4001)
!4026 = !DILocation(line: 62, column: 8, scope: !4016)
!4027 = !DILocation(line: 62, column: 10, scope: !4016)
!4028 = !DILocation(line: 63, column: 5, scope: !4016)
!4029 = !DILocation(line: 65, column: 1, scope: !4001)
!4030 = !DILocation(line: 0, scope: !303)
!4031 = !DILocation(line: 176, column: 14, scope: !303)
!4032 = !DILocation(line: 178, column: 9, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !303, file: !141, line: 178, column: 7)
!4034 = !DILocation(line: 178, column: 7, scope: !303)
!4035 = !DILocation(line: 180, column: 13, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4037, file: !141, line: 180, column: 11)
!4037 = distinct !DILexicalBlock(scope: !4033, file: !141, line: 179, column: 5)
!4038 = !DILocation(line: 180, column: 11, scope: !4037)
!4039 = !DILocation(line: 188, column: 30, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4036, file: !141, line: 181, column: 9)
!4041 = !DILocation(line: 189, column: 16, scope: !4040)
!4042 = !DILocation(line: 189, column: 13, scope: !4040)
!4043 = !DILocation(line: 190, column: 9, scope: !4040)
!4044 = !DILocation(line: 191, column: 11, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4037, file: !141, line: 191, column: 11)
!4046 = !DILocation(line: 191, column: 11, scope: !4037)
!4047 = !DILocation(line: 206, column: 7, scope: !303)
!4048 = !DILocation(line: 207, column: 25, scope: !303)
!4049 = !DILocation(line: 0, scope: !4001, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 207, column: 10, scope: !303)
!4051 = !DILocation(line: 53, column: 10, scope: !4009, inlinedAt: !4050)
!4052 = !DILocation(line: 192, column: 9, scope: !4045)
!4053 = !DILocation(line: 200, column: 69, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4055, file: !141, line: 200, column: 11)
!4055 = distinct !DILexicalBlock(scope: !4033, file: !141, line: 195, column: 5)
!4056 = !DILocation(line: 201, column: 11, scope: !4054)
!4057 = !DILocation(line: 200, column: 11, scope: !4055)
!4058 = !DILocation(line: 202, column: 9, scope: !4054)
!4059 = !DILocation(line: 203, column: 14, scope: !4055)
!4060 = !DILocation(line: 203, column: 18, scope: !4055)
!4061 = !DILocation(line: 203, column: 9, scope: !4055)
!4062 = !DILocation(line: 53, column: 8, scope: !4009, inlinedAt: !4050)
!4063 = !DILocation(line: 57, column: 7, scope: !4012, inlinedAt: !4050)
!4064 = !DILocation(line: 58, column: 7, scope: !4012, inlinedAt: !4050)
!4065 = !DILocation(line: 61, column: 7, scope: !4001, inlinedAt: !4050)
!4066 = !DILocation(line: 62, column: 8, scope: !4016, inlinedAt: !4050)
!4067 = !DILocation(line: 62, column: 10, scope: !4016, inlinedAt: !4050)
!4068 = !DILocation(line: 63, column: 5, scope: !4016, inlinedAt: !4050)
!4069 = !DILocation(line: 207, column: 3, scope: !303)
!4070 = distinct !DISubprogram(name: "xcharalloc", scope: !141, file: !141, line: 216, type: !3209, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4071)
!4071 = !{!4072}
!4072 = !DILocalVariable(name: "n", arg: 1, scope: !4070, file: !141, line: 216, type: !44)
!4073 = !DILocation(line: 0, scope: !4070)
!4074 = !DILocation(line: 0, scope: !3968, inlinedAt: !4075)
!4075 = distinct !DILocation(line: 218, column: 10, scope: !4070)
!4076 = !DILocation(line: 41, column: 13, scope: !3968, inlinedAt: !4075)
!4077 = !DILocation(line: 42, column: 8, scope: !3977, inlinedAt: !4075)
!4078 = !DILocation(line: 42, column: 10, scope: !3977, inlinedAt: !4075)
!4079 = !DILocation(line: 43, column: 5, scope: !3977, inlinedAt: !4075)
!4080 = !DILocation(line: 218, column: 3, scope: !4070)
!4081 = distinct !DISubprogram(name: "x2realloc", scope: !300, file: !300, line: 74, type: !4082, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4084)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!43, !43, !145}
!4084 = !{!4085, !4086}
!4085 = !DILocalVariable(name: "p", arg: 1, scope: !4081, file: !300, line: 74, type: !43)
!4086 = !DILocalVariable(name: "pn", arg: 2, scope: !4081, file: !300, line: 74, type: !145)
!4087 = !DILocation(line: 0, scope: !4081)
!4088 = !DILocation(line: 0, scope: !303, inlinedAt: !4089)
!4089 = distinct !DILocation(line: 76, column: 10, scope: !4081)
!4090 = !DILocation(line: 176, column: 14, scope: !303, inlinedAt: !4089)
!4091 = !DILocation(line: 178, column: 9, scope: !4033, inlinedAt: !4089)
!4092 = !DILocation(line: 178, column: 7, scope: !303, inlinedAt: !4089)
!4093 = !DILocation(line: 180, column: 13, scope: !4036, inlinedAt: !4089)
!4094 = !DILocation(line: 180, column: 11, scope: !4037, inlinedAt: !4089)
!4095 = !DILocation(line: 191, column: 11, scope: !4045, inlinedAt: !4089)
!4096 = !DILocation(line: 191, column: 11, scope: !4037, inlinedAt: !4089)
!4097 = !DILocation(line: 192, column: 9, scope: !4045, inlinedAt: !4089)
!4098 = !DILocation(line: 201, column: 11, scope: !4054, inlinedAt: !4089)
!4099 = !DILocation(line: 200, column: 11, scope: !4055, inlinedAt: !4089)
!4100 = !DILocation(line: 202, column: 9, scope: !4054, inlinedAt: !4089)
!4101 = !DILocation(line: 203, column: 14, scope: !4055, inlinedAt: !4089)
!4102 = !DILocation(line: 203, column: 18, scope: !4055, inlinedAt: !4089)
!4103 = !DILocation(line: 203, column: 9, scope: !4055, inlinedAt: !4089)
!4104 = !DILocation(line: 0, scope: !4001, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 207, column: 10, scope: !303, inlinedAt: !4089)
!4106 = !DILocation(line: 53, column: 10, scope: !4009, inlinedAt: !4105)
!4107 = !DILocation(line: 206, column: 7, scope: !303, inlinedAt: !4089)
!4108 = !DILocation(line: 61, column: 7, scope: !4001, inlinedAt: !4105)
!4109 = !DILocation(line: 62, column: 8, scope: !4016, inlinedAt: !4105)
!4110 = !DILocation(line: 62, column: 10, scope: !4016, inlinedAt: !4105)
!4111 = !DILocation(line: 63, column: 5, scope: !4016, inlinedAt: !4105)
!4112 = !DILocation(line: 76, column: 3, scope: !4081)
!4113 = distinct !DISubprogram(name: "xzalloc", scope: !300, file: !300, line: 84, type: !3969, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4114)
!4114 = !{!4115}
!4115 = !DILocalVariable(name: "n", arg: 1, scope: !4113, file: !300, line: 84, type: !44)
!4116 = !DILocation(line: 0, scope: !4113)
!4117 = !DILocalVariable(name: "n", arg: 1, scope: !4118, file: !300, line: 93, type: !44)
!4118 = distinct !DISubprogram(name: "xcalloc", scope: !300, file: !300, line: 93, type: !3956, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4119)
!4119 = !{!4117, !4120, !4121}
!4120 = !DILocalVariable(name: "s", arg: 2, scope: !4118, file: !300, line: 93, type: !44)
!4121 = !DILocalVariable(name: "p", scope: !4118, file: !300, line: 95, type: !43)
!4122 = !DILocation(line: 0, scope: !4118, inlinedAt: !4123)
!4123 = distinct !DILocation(line: 86, column: 10, scope: !4113)
!4124 = !DILocation(line: 100, column: 7, scope: !4125, inlinedAt: !4123)
!4125 = distinct !DILexicalBlock(scope: !4118, file: !300, line: 100, column: 7)
!4126 = !DILocation(line: 101, column: 7, scope: !4125, inlinedAt: !4123)
!4127 = !DILocation(line: 101, column: 18, scope: !4125, inlinedAt: !4123)
!4128 = !DILocation(line: 101, column: 16, scope: !4125, inlinedAt: !4123)
!4129 = !DILocation(line: 100, column: 7, scope: !4118, inlinedAt: !4123)
!4130 = !DILocation(line: 102, column: 5, scope: !4125, inlinedAt: !4123)
!4131 = !DILocation(line: 86, column: 3, scope: !4113)
!4132 = !DILocation(line: 0, scope: !4118)
!4133 = !DILocation(line: 100, column: 7, scope: !4125)
!4134 = !DILocation(line: 101, column: 7, scope: !4125)
!4135 = !DILocation(line: 101, column: 18, scope: !4125)
!4136 = !DILocation(line: 101, column: 16, scope: !4125)
!4137 = !DILocation(line: 100, column: 7, scope: !4118)
!4138 = !DILocation(line: 102, column: 5, scope: !4125)
!4139 = !DILocation(line: 103, column: 3, scope: !4118)
!4140 = distinct !DISubprogram(name: "xmemdup", scope: !300, file: !300, line: 111, type: !4141, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4143)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!43, !1436, !44}
!4143 = !{!4144, !4145}
!4144 = !DILocalVariable(name: "p", arg: 1, scope: !4140, file: !300, line: 111, type: !1436)
!4145 = !DILocalVariable(name: "s", arg: 2, scope: !4140, file: !300, line: 111, type: !44)
!4146 = !DILocation(line: 0, scope: !4140)
!4147 = !DILocation(line: 0, scope: !3968, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 113, column: 18, scope: !4140)
!4149 = !DILocation(line: 41, column: 13, scope: !3968, inlinedAt: !4148)
!4150 = !DILocation(line: 42, column: 8, scope: !3977, inlinedAt: !4148)
!4151 = !DILocation(line: 42, column: 10, scope: !3977, inlinedAt: !4148)
!4152 = !DILocation(line: 43, column: 5, scope: !3977, inlinedAt: !4148)
!4153 = !DILocalVariable(name: "__dest", arg: 1, scope: !4154, file: !1693, line: 26, type: !2170)
!4154 = distinct !DISubprogram(name: "memcpy", scope: !1693, file: !1693, line: 26, type: !2168, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4155)
!4155 = !{!4153, !4156, !4157}
!4156 = !DILocalVariable(name: "__src", arg: 2, scope: !4154, file: !1693, line: 26, type: !2171)
!4157 = !DILocalVariable(name: "__len", arg: 3, scope: !4154, file: !1693, line: 26, type: !44)
!4158 = !DILocation(line: 0, scope: !4154, inlinedAt: !4159)
!4159 = distinct !DILocation(line: 113, column: 10, scope: !4140)
!4160 = !DILocation(line: 29, column: 10, scope: !4154, inlinedAt: !4159)
!4161 = !DILocation(line: 113, column: 3, scope: !4140)
!4162 = distinct !DISubprogram(name: "xstrdup", scope: !300, file: !300, line: 119, type: !1024, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !4163)
!4163 = !{!4164}
!4164 = !DILocalVariable(name: "string", arg: 1, scope: !4162, file: !300, line: 119, type: !47)
!4165 = !DILocation(line: 0, scope: !4162)
!4166 = !DILocation(line: 121, column: 27, scope: !4162)
!4167 = !DILocation(line: 121, column: 43, scope: !4162)
!4168 = !DILocation(line: 0, scope: !4140, inlinedAt: !4169)
!4169 = distinct !DILocation(line: 121, column: 10, scope: !4162)
!4170 = !DILocation(line: 0, scope: !3968, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 113, column: 18, scope: !4140, inlinedAt: !4169)
!4172 = !DILocation(line: 41, column: 13, scope: !3968, inlinedAt: !4171)
!4173 = !DILocation(line: 42, column: 8, scope: !3977, inlinedAt: !4171)
!4174 = !DILocation(line: 42, column: 10, scope: !3977, inlinedAt: !4171)
!4175 = !DILocation(line: 43, column: 5, scope: !3977, inlinedAt: !4171)
!4176 = !DILocation(line: 0, scope: !4154, inlinedAt: !4177)
!4177 = distinct !DILocation(line: 113, column: 10, scope: !4140, inlinedAt: !4169)
!4178 = !DILocation(line: 29, column: 10, scope: !4154, inlinedAt: !4177)
!4179 = !DILocation(line: 121, column: 3, scope: !4162)
!4180 = distinct !DISubprogram(name: "xalloc_die", scope: !311, file: !311, line: 32, type: !754, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !310, retainedNodes: !201)
!4181 = !DILocation(line: 34, column: 10, scope: !4180)
!4182 = !DILocation(line: 34, column: 33, scope: !4180)
!4183 = !DILocation(line: 34, column: 3, scope: !4180)
!4184 = !DILocation(line: 40, column: 3, scope: !4180)
!4185 = distinct !DISubprogram(name: "xstrndup", scope: !313, file: !313, line: 30, type: !3398, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !4186)
!4186 = !{!4187, !4188, !4189}
!4187 = !DILocalVariable(name: "string", arg: 1, scope: !4185, file: !313, line: 30, type: !47)
!4188 = !DILocalVariable(name: "n", arg: 2, scope: !4185, file: !313, line: 30, type: !44)
!4189 = !DILocalVariable(name: "s", scope: !4185, file: !313, line: 32, type: !41)
!4190 = !DILocation(line: 0, scope: !4185)
!4191 = !DILocation(line: 32, column: 13, scope: !4185)
!4192 = !DILocation(line: 33, column: 9, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4185, file: !313, line: 33, column: 7)
!4194 = !DILocation(line: 33, column: 7, scope: !4185)
!4195 = !DILocation(line: 34, column: 5, scope: !4193)
!4196 = !DILocation(line: 35, column: 3, scope: !4185)
!4197 = distinct !DISubprogram(name: "rpl_calloc", scope: !315, file: !315, line: 42, type: !3956, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !4198)
!4198 = !{!4199, !4200, !4201, !4202}
!4199 = !DILocalVariable(name: "n", arg: 1, scope: !4197, file: !315, line: 42, type: !44)
!4200 = !DILocalVariable(name: "s", arg: 2, scope: !4197, file: !315, line: 42, type: !44)
!4201 = !DILocalVariable(name: "result", scope: !4197, file: !315, line: 44, type: !43)
!4202 = !DILocalVariable(name: "bytes", scope: !4203, file: !315, line: 56, type: !44)
!4203 = distinct !DILexicalBlock(scope: !4204, file: !315, line: 53, column: 5)
!4204 = distinct !DILexicalBlock(scope: !4197, file: !315, line: 47, column: 7)
!4205 = !DILocation(line: 0, scope: !4197)
!4206 = !DILocation(line: 47, column: 9, scope: !4204)
!4207 = !DILocation(line: 47, column: 14, scope: !4204)
!4208 = !DILocation(line: 0, scope: !4203)
!4209 = !DILocation(line: 57, column: 21, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4203, file: !315, line: 57, column: 11)
!4211 = !DILocation(line: 57, column: 11, scope: !4203)
!4212 = !DILocation(line: 59, column: 11, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4210, file: !315, line: 58, column: 9)
!4214 = !DILocation(line: 59, column: 17, scope: !4213)
!4215 = !DILocation(line: 65, column: 12, scope: !4197)
!4216 = !DILocation(line: 72, column: 3, scope: !4197)
!4217 = !DILocation(line: 73, column: 1, scope: !4197)
!4218 = distinct !DISubprogram(name: "rpl_fclose", scope: !317, file: !317, line: 58, type: !4219, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !316, retainedNodes: !4255)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!57, !4221}
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1049, line: 7, baseType: !4223)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !831, line: 49, size: 1728, elements: !4224)
!4224 = !{!4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4223, file: !831, line: 51, baseType: !57, size: 32)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4223, file: !831, line: 54, baseType: !41, size: 64, offset: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4223, file: !831, line: 55, baseType: !41, size: 64, offset: 128)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4223, file: !831, line: 56, baseType: !41, size: 64, offset: 192)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4223, file: !831, line: 57, baseType: !41, size: 64, offset: 256)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4223, file: !831, line: 58, baseType: !41, size: 64, offset: 320)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4223, file: !831, line: 59, baseType: !41, size: 64, offset: 384)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4223, file: !831, line: 60, baseType: !41, size: 64, offset: 448)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4223, file: !831, line: 61, baseType: !41, size: 64, offset: 512)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4223, file: !831, line: 64, baseType: !41, size: 64, offset: 576)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4223, file: !831, line: 65, baseType: !41, size: 64, offset: 640)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4223, file: !831, line: 66, baseType: !41, size: 64, offset: 704)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4223, file: !831, line: 68, baseType: !846, size: 64, offset: 768)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4223, file: !831, line: 70, baseType: !4239, size: 64, offset: 832)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4223, file: !831, line: 72, baseType: !57, size: 32, offset: 896)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4223, file: !831, line: 73, baseType: !57, size: 32, offset: 928)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4223, file: !831, line: 74, baseType: !852, size: 64, offset: 960)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4223, file: !831, line: 77, baseType: !154, size: 16, offset: 1024)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4223, file: !831, line: 78, baseType: !856, size: 8, offset: 1040)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4223, file: !831, line: 79, baseType: !858, size: 8, offset: 1048)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4223, file: !831, line: 81, baseType: !862, size: 64, offset: 1088)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4223, file: !831, line: 89, baseType: !865, size: 64, offset: 1152)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4223, file: !831, line: 91, baseType: !867, size: 64, offset: 1216)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4223, file: !831, line: 92, baseType: !870, size: 64, offset: 1280)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4223, file: !831, line: 93, baseType: !4239, size: 64, offset: 1344)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4223, file: !831, line: 94, baseType: !43, size: 64, offset: 1408)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4223, file: !831, line: 95, baseType: !44, size: 64, offset: 1472)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4223, file: !831, line: 96, baseType: !57, size: 32, offset: 1536)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4223, file: !831, line: 98, baseType: !877, size: 160, offset: 1568)
!4255 = !{!4256, !4257, !4258, !4259}
!4256 = !DILocalVariable(name: "fp", arg: 1, scope: !4218, file: !317, line: 58, type: !4221)
!4257 = !DILocalVariable(name: "saved_errno", scope: !4218, file: !317, line: 60, type: !57)
!4258 = !DILocalVariable(name: "fd", scope: !4218, file: !317, line: 61, type: !57)
!4259 = !DILocalVariable(name: "result", scope: !4218, file: !317, line: 62, type: !57)
!4260 = !DILocation(line: 0, scope: !4218)
!4261 = !DILocation(line: 65, column: 8, scope: !4218)
!4262 = !DILocation(line: 66, column: 10, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4218, file: !317, line: 66, column: 7)
!4264 = !DILocation(line: 66, column: 7, scope: !4218)
!4265 = !DILocation(line: 67, column: 12, scope: !4263)
!4266 = !DILocation(line: 67, column: 5, scope: !4263)
!4267 = !DILocation(line: 72, column: 9, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4218, file: !317, line: 72, column: 7)
!4269 = !DILocation(line: 72, column: 23, scope: !4268)
!4270 = !DILocation(line: 72, column: 33, scope: !4268)
!4271 = !DILocation(line: 72, column: 26, scope: !4268)
!4272 = !DILocation(line: 72, column: 59, scope: !4268)
!4273 = !DILocation(line: 73, column: 7, scope: !4268)
!4274 = !DILocation(line: 73, column: 10, scope: !4268)
!4275 = !DILocation(line: 72, column: 7, scope: !4218)
!4276 = !DILocation(line: 100, column: 12, scope: !4218)
!4277 = !DILocation(line: 105, column: 7, scope: !4218)
!4278 = !DILocation(line: 74, column: 19, scope: !4268)
!4279 = !DILocation(line: 105, column: 19, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4218, file: !317, line: 105, column: 7)
!4281 = !DILocation(line: 107, column: 13, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4280, file: !317, line: 106, column: 5)
!4283 = !DILocation(line: 109, column: 5, scope: !4282)
!4284 = !DILocation(line: 112, column: 1, scope: !4218)
!4285 = !DISubprogram(name: "fclose", scope: !826, file: !826, line: 213, type: !4286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!57, !4239}
!4288 = !DISubprogram(name: "lseek", scope: !4289, file: !4289, line: 334, type: !4290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!4289 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!853, !57, !853, !57}
!4292 = distinct !DISubprogram(name: "rpl_fflush", scope: !319, file: !319, line: 129, type: !4293, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4329)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!57, !4295}
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1049, line: 7, baseType: !4297)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !831, line: 49, size: 1728, elements: !4298)
!4298 = !{!4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4297, file: !831, line: 51, baseType: !57, size: 32)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4297, file: !831, line: 54, baseType: !41, size: 64, offset: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4297, file: !831, line: 55, baseType: !41, size: 64, offset: 128)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4297, file: !831, line: 56, baseType: !41, size: 64, offset: 192)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4297, file: !831, line: 57, baseType: !41, size: 64, offset: 256)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4297, file: !831, line: 58, baseType: !41, size: 64, offset: 320)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4297, file: !831, line: 59, baseType: !41, size: 64, offset: 384)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4297, file: !831, line: 60, baseType: !41, size: 64, offset: 448)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4297, file: !831, line: 61, baseType: !41, size: 64, offset: 512)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4297, file: !831, line: 64, baseType: !41, size: 64, offset: 576)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4297, file: !831, line: 65, baseType: !41, size: 64, offset: 640)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4297, file: !831, line: 66, baseType: !41, size: 64, offset: 704)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4297, file: !831, line: 68, baseType: !846, size: 64, offset: 768)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4297, file: !831, line: 70, baseType: !4313, size: 64, offset: 832)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4297, file: !831, line: 72, baseType: !57, size: 32, offset: 896)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4297, file: !831, line: 73, baseType: !57, size: 32, offset: 928)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4297, file: !831, line: 74, baseType: !852, size: 64, offset: 960)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4297, file: !831, line: 77, baseType: !154, size: 16, offset: 1024)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4297, file: !831, line: 78, baseType: !856, size: 8, offset: 1040)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4297, file: !831, line: 79, baseType: !858, size: 8, offset: 1048)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4297, file: !831, line: 81, baseType: !862, size: 64, offset: 1088)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4297, file: !831, line: 89, baseType: !865, size: 64, offset: 1152)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4297, file: !831, line: 91, baseType: !867, size: 64, offset: 1216)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4297, file: !831, line: 92, baseType: !870, size: 64, offset: 1280)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4297, file: !831, line: 93, baseType: !4313, size: 64, offset: 1344)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4297, file: !831, line: 94, baseType: !43, size: 64, offset: 1408)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4297, file: !831, line: 95, baseType: !44, size: 64, offset: 1472)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4297, file: !831, line: 96, baseType: !57, size: 32, offset: 1536)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4297, file: !831, line: 98, baseType: !877, size: 160, offset: 1568)
!4329 = !{!4330}
!4330 = !DILocalVariable(name: "stream", arg: 1, scope: !4292, file: !319, line: 129, type: !4295)
!4331 = !DILocation(line: 0, scope: !4292)
!4332 = !DILocation(line: 150, column: 14, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4292, file: !319, line: 150, column: 7)
!4334 = !DILocation(line: 150, column: 22, scope: !4333)
!4335 = !DILocation(line: 150, column: 27, scope: !4333)
!4336 = !DILocation(line: 150, column: 7, scope: !4292)
!4337 = !DILocation(line: 151, column: 12, scope: !4333)
!4338 = !DILocation(line: 151, column: 5, scope: !4333)
!4339 = !DILocalVariable(name: "fp", arg: 1, scope: !4340, file: !319, line: 41, type: !4295)
!4340 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !319, file: !319, line: 41, type: !4341, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4343)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{null, !4295}
!4343 = !{!4339}
!4344 = !DILocation(line: 0, scope: !4340, inlinedAt: !4345)
!4345 = distinct !DILocation(line: 156, column: 3, scope: !4292)
!4346 = !DILocation(line: 43, column: 11, scope: !4347, inlinedAt: !4345)
!4347 = distinct !DILexicalBlock(scope: !4340, file: !319, line: 43, column: 7)
!4348 = !DILocation(line: 43, column: 18, scope: !4347, inlinedAt: !4345)
!4349 = !DILocation(line: 43, column: 7, scope: !4340, inlinedAt: !4345)
!4350 = !DILocation(line: 45, column: 5, scope: !4347, inlinedAt: !4345)
!4351 = !DILocation(line: 158, column: 10, scope: !4292)
!4352 = !DILocation(line: 158, column: 3, scope: !4292)
!4353 = !DILocation(line: 235, column: 1, scope: !4292)
!4354 = !DISubprogram(name: "fflush", scope: !826, file: !826, line: 218, type: !4355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!57, !4313}
!4357 = distinct !DISubprogram(name: "freadptr", scope: !321, file: !321, line: 30, type: !4358, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !4394)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!47, !4360, !145}
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1049, line: 7, baseType: !4362)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !831, line: 49, size: 1728, elements: !4363)
!4363 = !{!4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4362, file: !831, line: 51, baseType: !57, size: 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4362, file: !831, line: 54, baseType: !41, size: 64, offset: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4362, file: !831, line: 55, baseType: !41, size: 64, offset: 128)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4362, file: !831, line: 56, baseType: !41, size: 64, offset: 192)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4362, file: !831, line: 57, baseType: !41, size: 64, offset: 256)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4362, file: !831, line: 58, baseType: !41, size: 64, offset: 320)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4362, file: !831, line: 59, baseType: !41, size: 64, offset: 384)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4362, file: !831, line: 60, baseType: !41, size: 64, offset: 448)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4362, file: !831, line: 61, baseType: !41, size: 64, offset: 512)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4362, file: !831, line: 64, baseType: !41, size: 64, offset: 576)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4362, file: !831, line: 65, baseType: !41, size: 64, offset: 640)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4362, file: !831, line: 66, baseType: !41, size: 64, offset: 704)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4362, file: !831, line: 68, baseType: !846, size: 64, offset: 768)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4362, file: !831, line: 70, baseType: !4378, size: 64, offset: 832)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4362, file: !831, line: 72, baseType: !57, size: 32, offset: 896)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4362, file: !831, line: 73, baseType: !57, size: 32, offset: 928)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4362, file: !831, line: 74, baseType: !852, size: 64, offset: 960)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4362, file: !831, line: 77, baseType: !154, size: 16, offset: 1024)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4362, file: !831, line: 78, baseType: !856, size: 8, offset: 1040)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4362, file: !831, line: 79, baseType: !858, size: 8, offset: 1048)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4362, file: !831, line: 81, baseType: !862, size: 64, offset: 1088)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4362, file: !831, line: 89, baseType: !865, size: 64, offset: 1152)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4362, file: !831, line: 91, baseType: !867, size: 64, offset: 1216)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4362, file: !831, line: 92, baseType: !870, size: 64, offset: 1280)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4362, file: !831, line: 93, baseType: !4378, size: 64, offset: 1344)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4362, file: !831, line: 94, baseType: !43, size: 64, offset: 1408)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4362, file: !831, line: 95, baseType: !44, size: 64, offset: 1472)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4362, file: !831, line: 96, baseType: !57, size: 32, offset: 1536)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4362, file: !831, line: 98, baseType: !877, size: 160, offset: 1568)
!4394 = !{!4395, !4396, !4397}
!4395 = !DILocalVariable(name: "fp", arg: 1, scope: !4357, file: !321, line: 30, type: !4360)
!4396 = !DILocalVariable(name: "sizep", arg: 2, scope: !4357, file: !321, line: 30, type: !145)
!4397 = !DILocalVariable(name: "size", scope: !4357, file: !321, line: 32, type: !44)
!4398 = !DILocation(line: 0, scope: !4357)
!4399 = !DILocation(line: 37, column: 11, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4357, file: !321, line: 37, column: 7)
!4401 = !DILocation(line: 37, column: 31, scope: !4400)
!4402 = !{!1115, !745, i64 32}
!4403 = !DILocation(line: 37, column: 25, scope: !4400)
!4404 = !DILocation(line: 37, column: 7, scope: !4357)
!4405 = !DILocation(line: 39, column: 14, scope: !4357)
!4406 = !DILocation(line: 39, column: 33, scope: !4357)
!4407 = !DILocation(line: 39, column: 27, scope: !4357)
!4408 = !DILocation(line: 40, column: 12, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4357, file: !321, line: 40, column: 7)
!4410 = !DILocation(line: 40, column: 7, scope: !4357)
!4411 = !DILocation(line: 42, column: 10, scope: !4357)
!4412 = !DILocation(line: 43, column: 3, scope: !4357)
!4413 = !DILocation(line: 125, column: 1, scope: !4357)
!4414 = distinct !DISubprogram(name: "rpl_fseeko", scope: !324, file: !324, line: 28, type: !4415, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4451)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!57, !4417, !1925, !57}
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1049, line: 7, baseType: !4419)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !831, line: 49, size: 1728, elements: !4420)
!4420 = !{!4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4419, file: !831, line: 51, baseType: !57, size: 32)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4419, file: !831, line: 54, baseType: !41, size: 64, offset: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4419, file: !831, line: 55, baseType: !41, size: 64, offset: 128)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4419, file: !831, line: 56, baseType: !41, size: 64, offset: 192)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4419, file: !831, line: 57, baseType: !41, size: 64, offset: 256)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4419, file: !831, line: 58, baseType: !41, size: 64, offset: 320)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4419, file: !831, line: 59, baseType: !41, size: 64, offset: 384)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4419, file: !831, line: 60, baseType: !41, size: 64, offset: 448)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4419, file: !831, line: 61, baseType: !41, size: 64, offset: 512)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4419, file: !831, line: 64, baseType: !41, size: 64, offset: 576)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4419, file: !831, line: 65, baseType: !41, size: 64, offset: 640)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4419, file: !831, line: 66, baseType: !41, size: 64, offset: 704)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4419, file: !831, line: 68, baseType: !846, size: 64, offset: 768)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4419, file: !831, line: 70, baseType: !4435, size: 64, offset: 832)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4419, file: !831, line: 72, baseType: !57, size: 32, offset: 896)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4419, file: !831, line: 73, baseType: !57, size: 32, offset: 928)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4419, file: !831, line: 74, baseType: !852, size: 64, offset: 960)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4419, file: !831, line: 77, baseType: !154, size: 16, offset: 1024)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4419, file: !831, line: 78, baseType: !856, size: 8, offset: 1040)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4419, file: !831, line: 79, baseType: !858, size: 8, offset: 1048)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4419, file: !831, line: 81, baseType: !862, size: 64, offset: 1088)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4419, file: !831, line: 89, baseType: !865, size: 64, offset: 1152)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4419, file: !831, line: 91, baseType: !867, size: 64, offset: 1216)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4419, file: !831, line: 92, baseType: !870, size: 64, offset: 1280)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4419, file: !831, line: 93, baseType: !4435, size: 64, offset: 1344)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4419, file: !831, line: 94, baseType: !43, size: 64, offset: 1408)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4419, file: !831, line: 95, baseType: !44, size: 64, offset: 1472)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4419, file: !831, line: 96, baseType: !57, size: 32, offset: 1536)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4419, file: !831, line: 98, baseType: !877, size: 160, offset: 1568)
!4451 = !{!4452, !4453, !4454, !4455}
!4452 = !DILocalVariable(name: "fp", arg: 1, scope: !4414, file: !324, line: 28, type: !4417)
!4453 = !DILocalVariable(name: "offset", arg: 2, scope: !4414, file: !324, line: 28, type: !1925)
!4454 = !DILocalVariable(name: "whence", arg: 3, scope: !4414, file: !324, line: 28, type: !57)
!4455 = !DILocalVariable(name: "pos", scope: !4456, file: !324, line: 117, type: !1925)
!4456 = distinct !DILexicalBlock(scope: !4457, file: !324, line: 113, column: 5)
!4457 = distinct !DILexicalBlock(scope: !4414, file: !324, line: 52, column: 7)
!4458 = !DILocation(line: 0, scope: !4414)
!4459 = !DILocation(line: 52, column: 11, scope: !4457)
!4460 = !DILocation(line: 52, column: 31, scope: !4457)
!4461 = !DILocation(line: 52, column: 24, scope: !4457)
!4462 = !DILocation(line: 53, column: 7, scope: !4457)
!4463 = !DILocation(line: 53, column: 14, scope: !4457)
!4464 = !DILocation(line: 53, column: 35, scope: !4457)
!4465 = !DILocation(line: 53, column: 28, scope: !4457)
!4466 = !DILocation(line: 54, column: 7, scope: !4457)
!4467 = !DILocation(line: 54, column: 14, scope: !4457)
!4468 = !{!1115, !745, i64 72}
!4469 = !DILocation(line: 54, column: 28, scope: !4457)
!4470 = !DILocation(line: 52, column: 7, scope: !4414)
!4471 = !DILocation(line: 117, column: 26, scope: !4456)
!4472 = !DILocation(line: 117, column: 19, scope: !4456)
!4473 = !DILocation(line: 0, scope: !4456)
!4474 = !DILocation(line: 118, column: 15, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4456, file: !324, line: 118, column: 11)
!4476 = !DILocation(line: 118, column: 11, scope: !4456)
!4477 = !DILocation(line: 129, column: 11, scope: !4456)
!4478 = !DILocation(line: 129, column: 18, scope: !4456)
!4479 = !DILocation(line: 130, column: 11, scope: !4456)
!4480 = !DILocation(line: 130, column: 19, scope: !4456)
!4481 = !{!1115, !938, i64 144}
!4482 = !DILocation(line: 161, column: 7, scope: !4456)
!4483 = !DILocation(line: 163, column: 10, scope: !4414)
!4484 = !DILocation(line: 163, column: 3, scope: !4414)
!4485 = !DILocation(line: 164, column: 1, scope: !4414)
!4486 = !DISubprogram(name: "fseeko", scope: !826, file: !826, line: 712, type: !4487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!57, !4435, !853, !57}
!4489 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !326, file: !326, line: 86, type: !4490, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !4504)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!44, !4492, !47, !44, !4493}
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2492, line: 6, baseType: !4495)
!4495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2494, line: 21, baseType: !4496)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2494, line: 13, size: 64, elements: !4497)
!4497 = !{!4498, !4499}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4496, file: !2494, line: 15, baseType: !57, size: 32)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4496, file: !2494, line: 20, baseType: !4500, size: 32, offset: 32)
!4500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4496, file: !2494, line: 16, size: 32, elements: !4501)
!4501 = !{!4502, !4503}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4500, file: !2494, line: 18, baseType: !6, size: 32)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4500, file: !2494, line: 19, baseType: !2503, size: 32)
!4504 = !{!4505, !4506, !4507, !4508, !4509, !4510, !4511}
!4505 = !DILocalVariable(name: "pwc", arg: 1, scope: !4489, file: !326, line: 86, type: !4492)
!4506 = !DILocalVariable(name: "s", arg: 2, scope: !4489, file: !326, line: 86, type: !47)
!4507 = !DILocalVariable(name: "n", arg: 3, scope: !4489, file: !326, line: 86, type: !44)
!4508 = !DILocalVariable(name: "ps", arg: 4, scope: !4489, file: !326, line: 86, type: !4493)
!4509 = !DILocalVariable(name: "ret", scope: !4489, file: !326, line: 88, type: !44)
!4510 = !DILocalVariable(name: "wc", scope: !4489, file: !326, line: 89, type: !2508)
!4511 = !DILocalVariable(name: "uc", scope: !4512, file: !326, line: 156, type: !50)
!4512 = distinct !DILexicalBlock(scope: !4513, file: !326, line: 155, column: 5)
!4513 = distinct !DILexicalBlock(scope: !4489, file: !326, line: 154, column: 7)
!4514 = !DILocation(line: 0, scope: !4489)
!4515 = !DILocation(line: 89, column: 3, scope: !4489)
!4516 = !DILocation(line: 105, column: 9, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4489, file: !326, line: 105, column: 7)
!4518 = !DILocation(line: 105, column: 7, scope: !4489)
!4519 = !DILocation(line: 145, column: 9, scope: !4489)
!4520 = !DILocation(line: 154, column: 19, scope: !4513)
!4521 = !DILocation(line: 154, column: 26, scope: !4513)
!4522 = !DILocation(line: 154, column: 41, scope: !4513)
!4523 = !DILocation(line: 154, column: 7, scope: !4489)
!4524 = !DILocation(line: 156, column: 26, scope: !4512)
!4525 = !DILocation(line: 0, scope: !4512)
!4526 = !DILocation(line: 157, column: 14, scope: !4512)
!4527 = !DILocation(line: 157, column: 12, scope: !4512)
!4528 = !DILocation(line: 163, column: 1, scope: !4489)
!4529 = !DISubprogram(name: "mbrtowc", scope: !3169, file: !3169, line: 296, type: !4530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!46, !94, !47, !46, !4532}
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4533 = distinct !DISubprogram(name: "close_stream", scope: !329, file: !329, line: 56, type: !4534, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !4570)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!57, !4536}
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1049, line: 7, baseType: !4538)
!4538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !831, line: 49, size: 1728, elements: !4539)
!4539 = !{!4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4538, file: !831, line: 51, baseType: !57, size: 32)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4538, file: !831, line: 54, baseType: !41, size: 64, offset: 64)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4538, file: !831, line: 55, baseType: !41, size: 64, offset: 128)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4538, file: !831, line: 56, baseType: !41, size: 64, offset: 192)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4538, file: !831, line: 57, baseType: !41, size: 64, offset: 256)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4538, file: !831, line: 58, baseType: !41, size: 64, offset: 320)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4538, file: !831, line: 59, baseType: !41, size: 64, offset: 384)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4538, file: !831, line: 60, baseType: !41, size: 64, offset: 448)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4538, file: !831, line: 61, baseType: !41, size: 64, offset: 512)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4538, file: !831, line: 64, baseType: !41, size: 64, offset: 576)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4538, file: !831, line: 65, baseType: !41, size: 64, offset: 640)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4538, file: !831, line: 66, baseType: !41, size: 64, offset: 704)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4538, file: !831, line: 68, baseType: !846, size: 64, offset: 768)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4538, file: !831, line: 70, baseType: !4554, size: 64, offset: 832)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4538, file: !831, line: 72, baseType: !57, size: 32, offset: 896)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4538, file: !831, line: 73, baseType: !57, size: 32, offset: 928)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4538, file: !831, line: 74, baseType: !852, size: 64, offset: 960)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4538, file: !831, line: 77, baseType: !154, size: 16, offset: 1024)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4538, file: !831, line: 78, baseType: !856, size: 8, offset: 1040)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4538, file: !831, line: 79, baseType: !858, size: 8, offset: 1048)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4538, file: !831, line: 81, baseType: !862, size: 64, offset: 1088)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4538, file: !831, line: 89, baseType: !865, size: 64, offset: 1152)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4538, file: !831, line: 91, baseType: !867, size: 64, offset: 1216)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4538, file: !831, line: 92, baseType: !870, size: 64, offset: 1280)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4538, file: !831, line: 93, baseType: !4554, size: 64, offset: 1344)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4538, file: !831, line: 94, baseType: !43, size: 64, offset: 1408)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4538, file: !831, line: 95, baseType: !44, size: 64, offset: 1472)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4538, file: !831, line: 96, baseType: !57, size: 32, offset: 1536)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4538, file: !831, line: 98, baseType: !877, size: 160, offset: 1568)
!4570 = !{!4571, !4572, !4574, !4575}
!4571 = !DILocalVariable(name: "stream", arg: 1, scope: !4533, file: !329, line: 56, type: !4536)
!4572 = !DILocalVariable(name: "some_pending", scope: !4533, file: !329, line: 58, type: !4573)
!4573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!4574 = !DILocalVariable(name: "prev_fail", scope: !4533, file: !329, line: 59, type: !4573)
!4575 = !DILocalVariable(name: "fclose_fail", scope: !4533, file: !329, line: 60, type: !4573)
!4576 = !DILocation(line: 0, scope: !4533)
!4577 = !DILocation(line: 58, column: 30, scope: !4533)
!4578 = !DILocalVariable(name: "__stream", arg: 1, scope: !4579, file: !1107, line: 135, type: !4536)
!4579 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1107, file: !1107, line: 135, type: !4534, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !4580)
!4580 = !{!4578}
!4581 = !DILocation(line: 0, scope: !4579, inlinedAt: !4582)
!4582 = distinct !DILocation(line: 59, column: 27, scope: !4533)
!4583 = !DILocation(line: 137, column: 10, scope: !4579, inlinedAt: !4582)
!4584 = !DILocation(line: 59, column: 43, scope: !4533)
!4585 = !DILocation(line: 60, column: 29, scope: !4533)
!4586 = !DILocation(line: 60, column: 45, scope: !4533)
!4587 = !DILocation(line: 70, column: 17, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4533, file: !329, line: 70, column: 7)
!4589 = !DILocation(line: 58, column: 50, scope: !4533)
!4590 = !DILocation(line: 70, column: 33, scope: !4588)
!4591 = !DILocation(line: 70, column: 53, scope: !4588)
!4592 = !DILocation(line: 70, column: 59, scope: !4588)
!4593 = !DILocation(line: 70, column: 7, scope: !4533)
!4594 = !DILocation(line: 72, column: 11, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4588, file: !329, line: 71, column: 5)
!4596 = !DILocation(line: 73, column: 9, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4595, file: !329, line: 72, column: 11)
!4598 = !DILocation(line: 73, column: 15, scope: !4597)
!4599 = !DILocation(line: 78, column: 1, scope: !4533)
!4600 = distinct !DISubprogram(name: "freadseek", scope: !331, file: !331, line: 74, type: !4601, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !4637)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!57, !4603, !44}
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1049, line: 7, baseType: !4605)
!4605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !831, line: 49, size: 1728, elements: !4606)
!4606 = !{!4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4605, file: !831, line: 51, baseType: !57, size: 32)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4605, file: !831, line: 54, baseType: !41, size: 64, offset: 64)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4605, file: !831, line: 55, baseType: !41, size: 64, offset: 128)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4605, file: !831, line: 56, baseType: !41, size: 64, offset: 192)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4605, file: !831, line: 57, baseType: !41, size: 64, offset: 256)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4605, file: !831, line: 58, baseType: !41, size: 64, offset: 320)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4605, file: !831, line: 59, baseType: !41, size: 64, offset: 384)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4605, file: !831, line: 60, baseType: !41, size: 64, offset: 448)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4605, file: !831, line: 61, baseType: !41, size: 64, offset: 512)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4605, file: !831, line: 64, baseType: !41, size: 64, offset: 576)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4605, file: !831, line: 65, baseType: !41, size: 64, offset: 640)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4605, file: !831, line: 66, baseType: !41, size: 64, offset: 704)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4605, file: !831, line: 68, baseType: !846, size: 64, offset: 768)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4605, file: !831, line: 70, baseType: !4621, size: 64, offset: 832)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4605, file: !831, line: 72, baseType: !57, size: 32, offset: 896)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4605, file: !831, line: 73, baseType: !57, size: 32, offset: 928)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4605, file: !831, line: 74, baseType: !852, size: 64, offset: 960)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4605, file: !831, line: 77, baseType: !154, size: 16, offset: 1024)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4605, file: !831, line: 78, baseType: !856, size: 8, offset: 1040)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4605, file: !831, line: 79, baseType: !858, size: 8, offset: 1048)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4605, file: !831, line: 81, baseType: !862, size: 64, offset: 1088)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4605, file: !831, line: 89, baseType: !865, size: 64, offset: 1152)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4605, file: !831, line: 91, baseType: !867, size: 64, offset: 1216)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4605, file: !831, line: 92, baseType: !870, size: 64, offset: 1280)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4605, file: !831, line: 93, baseType: !4621, size: 64, offset: 1344)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4605, file: !831, line: 94, baseType: !43, size: 64, offset: 1408)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4605, file: !831, line: 95, baseType: !44, size: 64, offset: 1472)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4605, file: !831, line: 96, baseType: !57, size: 32, offset: 1536)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4605, file: !831, line: 98, baseType: !877, size: 160, offset: 1568)
!4637 = !{!4638, !4639, !4640, !4641, !4642, !4644, !4647, !4653, !4655}
!4638 = !DILocalVariable(name: "fp", arg: 1, scope: !4600, file: !331, line: 74, type: !4603)
!4639 = !DILocalVariable(name: "offset", arg: 2, scope: !4600, file: !331, line: 74, type: !44)
!4640 = !DILocalVariable(name: "total_buffered", scope: !4600, file: !331, line: 76, type: !44)
!4641 = !DILocalVariable(name: "fd", scope: !4600, file: !331, line: 77, type: !57)
!4642 = !DILocalVariable(name: "buffered", scope: !4643, file: !331, line: 89, type: !44)
!4643 = distinct !DILexicalBlock(scope: !4600, file: !331, line: 88, column: 5)
!4644 = !DILocalVariable(name: "increment", scope: !4645, file: !331, line: 93, type: !44)
!4645 = distinct !DILexicalBlock(scope: !4646, file: !331, line: 92, column: 9)
!4646 = distinct !DILexicalBlock(scope: !4643, file: !331, line: 91, column: 11)
!4647 = !DILocalVariable(name: "buf", scope: !4648, file: !331, line: 124, type: !4650)
!4648 = distinct !DILexicalBlock(scope: !4649, file: !331, line: 121, column: 5)
!4649 = distinct !DILexicalBlock(scope: !4600, file: !331, line: 115, column: 7)
!4650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 32768, elements: !4651)
!4651 = !{!4652}
!4652 = !DISubrange(count: 4096)
!4653 = !DILocalVariable(name: "count", scope: !4654, file: !331, line: 128, type: !44)
!4654 = distinct !DILexicalBlock(scope: !4648, file: !331, line: 127, column: 9)
!4655 = !DILabel(scope: !4600, name: "eof", file: !331, line: 138)
!4656 = !DILocation(line: 0, scope: !4600)
!4657 = !DILocation(line: 79, column: 14, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4600, file: !331, line: 79, column: 7)
!4659 = !DILocation(line: 79, column: 7, scope: !4600)
!4660 = !DILocation(line: 84, column: 20, scope: !4600)
!4661 = !DILocation(line: 87, column: 25, scope: !4600)
!4662 = !DILocation(line: 87, column: 3, scope: !4600)
!4663 = !DILocation(line: 89, column: 7, scope: !4643)
!4664 = !DILocation(line: 0, scope: !4643)
!4665 = !DILocation(line: 91, column: 11, scope: !4646)
!4666 = !DILocation(line: 91, column: 36, scope: !4646)
!4667 = !DILocation(line: 91, column: 44, scope: !4646)
!4668 = !DILocation(line: 93, column: 40, scope: !4645)
!4669 = !DILocation(line: 93, column: 31, scope: !4645)
!4670 = !DILocation(line: 0, scope: !4645)
!4671 = !DILocalVariable(name: "fp", arg: 1, scope: !4672, file: !331, line: 34, type: !4603)
!4672 = distinct !DISubprogram(name: "freadptrinc", scope: !331, file: !331, line: 34, type: !4673, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !4675)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{null, !4603, !44}
!4675 = !{!4671, !4676}
!4676 = !DILocalVariable(name: "increment", arg: 2, scope: !4672, file: !331, line: 34, type: !44)
!4677 = !DILocation(line: 0, scope: !4672, inlinedAt: !4678)
!4678 = distinct !DILocation(line: 95, column: 11, scope: !4645)
!4679 = !DILocation(line: 41, column: 20, scope: !4672, inlinedAt: !4678)
!4680 = !DILocation(line: 96, column: 18, scope: !4645)
!4681 = !DILocation(line: 97, column: 22, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4645, file: !331, line: 97, column: 15)
!4683 = !DILocation(line: 97, column: 15, scope: !4645)
!4684 = !DILocation(line: 111, column: 5, scope: !4600)
!4685 = !DILocation(line: 99, column: 26, scope: !4645)
!4686 = !DILocation(line: 100, column: 30, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4645, file: !331, line: 100, column: 15)
!4688 = !DILocation(line: 100, column: 15, scope: !4645)
!4689 = !DILocation(line: 84, column: 18, scope: !4600)
!4690 = !DILocation(line: 105, column: 11, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4643, file: !331, line: 105, column: 11)
!4692 = !DILocation(line: 105, column: 22, scope: !4691)
!4693 = !DILocation(line: 105, column: 11, scope: !4643)
!4694 = !DILocation(line: 107, column: 13, scope: !4643)
!4695 = !DILocation(line: 108, column: 18, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4643, file: !331, line: 108, column: 11)
!4697 = !DILocation(line: 108, column: 11, scope: !4643)
!4698 = !DILocation(line: 110, column: 21, scope: !4643)
!4699 = !DILocation(line: 114, column: 8, scope: !4600)
!4700 = !DILocation(line: 115, column: 10, scope: !4649)
!4701 = !DILocation(line: 115, column: 15, scope: !4649)
!4702 = !DILocation(line: 115, column: 18, scope: !4649)
!4703 = !DILocation(line: 115, column: 42, scope: !4649)
!4704 = !DILocation(line: 115, column: 7, scope: !4600)
!4705 = !DILocation(line: 118, column: 14, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4649, file: !331, line: 116, column: 5)
!4707 = !DILocation(line: 118, column: 7, scope: !4706)
!4708 = !DILocation(line: 124, column: 7, scope: !4648)
!4709 = !DILocation(line: 124, column: 12, scope: !4648)
!4710 = !DILocation(line: 126, column: 7, scope: !4648)
!4711 = !DILocation(line: 128, column: 27, scope: !4654)
!4712 = !DILocation(line: 0, scope: !4654)
!4713 = !DILocation(line: 129, column: 15, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4654, file: !331, line: 129, column: 15)
!4715 = !DILocation(line: 129, column: 41, scope: !4714)
!4716 = !DILocation(line: 129, column: 15, scope: !4654)
!4717 = !DILocation(line: 133, column: 21, scope: !4648)
!4718 = !DILocation(line: 132, column: 9, scope: !4654)
!4719 = distinct !{!4719, !4710, !4720, !801}
!4720 = !DILocation(line: 133, column: 24, scope: !4648)
!4721 = !DILocation(line: 136, column: 4, scope: !4649)
!4722 = !DILocation(line: 138, column: 2, scope: !4600)
!4723 = !DILocation(line: 140, column: 7, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4600, file: !331, line: 140, column: 7)
!4725 = !DILocation(line: 140, column: 7, scope: !4600)
!4726 = !DILocation(line: 145, column: 1, scope: !4600)
!4727 = !DISubprogram(name: "fgetc", scope: !826, file: !826, line: 489, type: !4728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!4728 = !DISubroutineType(types: !4729)
!4729 = !{!57, !4621}
!4730 = !DISubprogram(name: "ferror", scope: !826, file: !826, line: 766, type: !4728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!4731 = distinct !DISubprogram(name: "hard_locale", scope: !333, file: !333, line: 27, type: !4732, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4734)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{!64, !57}
!4734 = !{!4735, !4736}
!4735 = !DILocalVariable(name: "category", arg: 1, scope: !4731, file: !333, line: 27, type: !57)
!4736 = !DILocalVariable(name: "locale", scope: !4731, file: !333, line: 29, type: !4737)
!4737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2056, elements: !4738)
!4738 = !{!4739}
!4739 = !DISubrange(count: 257)
!4740 = !DILocation(line: 0, scope: !4731)
!4741 = !DILocation(line: 29, column: 3, scope: !4731)
!4742 = !DILocation(line: 29, column: 8, scope: !4731)
!4743 = !DILocation(line: 31, column: 7, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4731, file: !333, line: 31, column: 7)
!4745 = !DILocation(line: 31, column: 7, scope: !4731)
!4746 = !DILocation(line: 34, column: 12, scope: !4731)
!4747 = !DILocation(line: 34, column: 38, scope: !4731)
!4748 = !DILocation(line: 34, column: 41, scope: !4731)
!4749 = !DILocation(line: 34, column: 66, scope: !4731)
!4750 = !DILocation(line: 35, column: 1, scope: !4731)
!4751 = distinct !DISubprogram(name: "locale_charset", scope: !335, file: !335, line: 831, type: !4752, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !334, retainedNodes: !4753)
!4752 = !DISubroutineType(types: !322)
!4753 = !{!4754}
!4754 = !DILocalVariable(name: "codeset", scope: !4751, file: !335, line: 833, type: !47)
!4755 = !DILocation(line: 847, column: 13, scope: !4751)
!4756 = !DILocation(line: 0, scope: !4751)
!4757 = !DILocation(line: 911, column: 15, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4751, file: !335, line: 911, column: 7)
!4759 = !DILocation(line: 911, column: 7, scope: !4751)
!4760 = !DILocation(line: 1070, column: 13, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4762, file: !335, line: 1070, column: 13)
!4762 = distinct !DILexicalBlock(scope: !4763, file: !335, line: 1060, column: 7)
!4763 = distinct !DILexicalBlock(scope: !4751, file: !335, line: 1019, column: 3)
!4764 = !DILocation(line: 1070, column: 24, scope: !4761)
!4765 = !DILocation(line: 1070, column: 13, scope: !4762)
!4766 = !DILocation(line: 1158, column: 3, scope: !4751)
!4767 = !DISubprogram(name: "nl_langinfo", scope: !338, file: !338, line: 661, type: !4768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !201)
!4768 = !DISubroutineType(types: !4769)
!4769 = !{!41, !57}
!4770 = distinct !DISubprogram(name: "setlocale_null_r", scope: !724, file: !724, line: 269, type: !4771, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !4773)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!57, !57, !41, !44}
!4773 = !{!4774, !4775, !4776}
!4774 = !DILocalVariable(name: "category", arg: 1, scope: !4770, file: !724, line: 269, type: !57)
!4775 = !DILocalVariable(name: "buf", arg: 2, scope: !4770, file: !724, line: 269, type: !41)
!4776 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4770, file: !724, line: 269, type: !44)
!4777 = !DILocation(line: 0, scope: !4770)
!4778 = !DILocalVariable(name: "category", arg: 1, scope: !4779, file: !724, line: 91, type: !57)
!4779 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !724, file: !724, line: 91, type: !4771, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !4780)
!4780 = !{!4778, !4781, !4782, !4783, !4784}
!4781 = !DILocalVariable(name: "buf", arg: 2, scope: !4779, file: !724, line: 91, type: !41)
!4782 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4779, file: !724, line: 91, type: !44)
!4783 = !DILocalVariable(name: "result", scope: !4779, file: !724, line: 140, type: !47)
!4784 = !DILocalVariable(name: "length", scope: !4785, file: !724, line: 154, type: !44)
!4785 = distinct !DILexicalBlock(scope: !4786, file: !724, line: 153, column: 5)
!4786 = distinct !DILexicalBlock(scope: !4779, file: !724, line: 142, column: 7)
!4787 = !DILocation(line: 0, scope: !4779, inlinedAt: !4788)
!4788 = distinct !DILocation(line: 274, column: 10, scope: !4770)
!4789 = !DILocalVariable(name: "category", arg: 1, scope: !4790, file: !724, line: 60, type: !57)
!4790 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !724, file: !724, line: 60, type: !4791, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !4793)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!47, !57}
!4793 = !{!4789, !4794}
!4794 = !DILocalVariable(name: "result", scope: !4790, file: !724, line: 62, type: !47)
!4795 = !DILocation(line: 0, scope: !4790, inlinedAt: !4796)
!4796 = distinct !DILocation(line: 140, column: 24, scope: !4779, inlinedAt: !4788)
!4797 = !DILocation(line: 62, column: 24, scope: !4790, inlinedAt: !4796)
!4798 = !DILocation(line: 142, column: 14, scope: !4786, inlinedAt: !4788)
!4799 = !DILocation(line: 142, column: 7, scope: !4779, inlinedAt: !4788)
!4800 = !DILocation(line: 145, column: 19, scope: !4801, inlinedAt: !4788)
!4801 = distinct !DILexicalBlock(scope: !4802, file: !724, line: 145, column: 11)
!4802 = distinct !DILexicalBlock(scope: !4786, file: !724, line: 143, column: 5)
!4803 = !DILocation(line: 145, column: 11, scope: !4802, inlinedAt: !4788)
!4804 = !DILocation(line: 149, column: 16, scope: !4801, inlinedAt: !4788)
!4805 = !DILocation(line: 149, column: 9, scope: !4801, inlinedAt: !4788)
!4806 = !DILocation(line: 154, column: 23, scope: !4785, inlinedAt: !4788)
!4807 = !DILocation(line: 0, scope: !4785, inlinedAt: !4788)
!4808 = !DILocation(line: 155, column: 18, scope: !4809, inlinedAt: !4788)
!4809 = distinct !DILexicalBlock(scope: !4785, file: !724, line: 155, column: 11)
!4810 = !DILocation(line: 155, column: 11, scope: !4785, inlinedAt: !4788)
!4811 = !DILocation(line: 157, column: 39, scope: !4812, inlinedAt: !4788)
!4812 = distinct !DILexicalBlock(scope: !4809, file: !724, line: 156, column: 9)
!4813 = !DILocalVariable(name: "__dest", arg: 1, scope: !4814, file: !1693, line: 26, type: !2170)
!4814 = distinct !DISubprogram(name: "memcpy", scope: !1693, file: !1693, line: 26, type: !2168, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !4815)
!4815 = !{!4813, !4816, !4817}
!4816 = !DILocalVariable(name: "__src", arg: 2, scope: !4814, file: !1693, line: 26, type: !2171)
!4817 = !DILocalVariable(name: "__len", arg: 3, scope: !4814, file: !1693, line: 26, type: !44)
!4818 = !DILocation(line: 0, scope: !4814, inlinedAt: !4819)
!4819 = distinct !DILocation(line: 157, column: 11, scope: !4812, inlinedAt: !4788)
!4820 = !DILocation(line: 29, column: 10, scope: !4814, inlinedAt: !4819)
!4821 = !DILocation(line: 158, column: 11, scope: !4812, inlinedAt: !4788)
!4822 = !DILocation(line: 162, column: 23, scope: !4823, inlinedAt: !4788)
!4823 = distinct !DILexicalBlock(scope: !4824, file: !724, line: 162, column: 15)
!4824 = distinct !DILexicalBlock(scope: !4809, file: !724, line: 161, column: 9)
!4825 = !DILocation(line: 162, column: 15, scope: !4824, inlinedAt: !4788)
!4826 = !DILocation(line: 167, column: 44, scope: !4827, inlinedAt: !4788)
!4827 = distinct !DILexicalBlock(scope: !4823, file: !724, line: 163, column: 13)
!4828 = !DILocation(line: 0, scope: !4814, inlinedAt: !4829)
!4829 = distinct !DILocation(line: 167, column: 15, scope: !4827, inlinedAt: !4788)
!4830 = !DILocation(line: 29, column: 10, scope: !4814, inlinedAt: !4829)
!4831 = !DILocation(line: 168, column: 15, scope: !4827, inlinedAt: !4788)
!4832 = !DILocation(line: 168, column: 32, scope: !4827, inlinedAt: !4788)
!4833 = !DILocation(line: 169, column: 13, scope: !4827, inlinedAt: !4788)
!4834 = !DILocation(line: 0, scope: !4786, inlinedAt: !4788)
!4835 = !DILocation(line: 274, column: 3, scope: !4770)
!4836 = distinct !DISubprogram(name: "setlocale_null", scope: !724, file: !724, line: 301, type: !4791, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !4837)
!4837 = !{!4838}
!4838 = !DILocalVariable(name: "category", arg: 1, scope: !4836, file: !724, line: 301, type: !57)
!4839 = !DILocation(line: 0, scope: !4836)
!4840 = !DILocation(line: 0, scope: !4790, inlinedAt: !4841)
!4841 = distinct !DILocation(line: 304, column: 10, scope: !4836)
!4842 = !DILocation(line: 62, column: 24, scope: !4790, inlinedAt: !4841)
!4843 = !DILocation(line: 304, column: 3, scope: !4836)
!4844 = distinct !DISubprogram(name: "freadahead", scope: !726, file: !726, line: 34, type: !4845, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !4881)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{!44, !4847}
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1049, line: 7, baseType: !4849)
!4849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !831, line: 49, size: 1728, elements: !4850)
!4850 = !{!4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880}
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4849, file: !831, line: 51, baseType: !57, size: 32)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4849, file: !831, line: 54, baseType: !41, size: 64, offset: 64)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4849, file: !831, line: 55, baseType: !41, size: 64, offset: 128)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4849, file: !831, line: 56, baseType: !41, size: 64, offset: 192)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4849, file: !831, line: 57, baseType: !41, size: 64, offset: 256)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4849, file: !831, line: 58, baseType: !41, size: 64, offset: 320)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4849, file: !831, line: 59, baseType: !41, size: 64, offset: 384)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4849, file: !831, line: 60, baseType: !41, size: 64, offset: 448)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4849, file: !831, line: 61, baseType: !41, size: 64, offset: 512)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4849, file: !831, line: 64, baseType: !41, size: 64, offset: 576)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4849, file: !831, line: 65, baseType: !41, size: 64, offset: 640)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4849, file: !831, line: 66, baseType: !41, size: 64, offset: 704)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4849, file: !831, line: 68, baseType: !846, size: 64, offset: 768)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4849, file: !831, line: 70, baseType: !4865, size: 64, offset: 832)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4849, file: !831, line: 72, baseType: !57, size: 32, offset: 896)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4849, file: !831, line: 73, baseType: !57, size: 32, offset: 928)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4849, file: !831, line: 74, baseType: !852, size: 64, offset: 960)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4849, file: !831, line: 77, baseType: !154, size: 16, offset: 1024)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4849, file: !831, line: 78, baseType: !856, size: 8, offset: 1040)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4849, file: !831, line: 79, baseType: !858, size: 8, offset: 1048)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4849, file: !831, line: 81, baseType: !862, size: 64, offset: 1088)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4849, file: !831, line: 89, baseType: !865, size: 64, offset: 1152)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4849, file: !831, line: 91, baseType: !867, size: 64, offset: 1216)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4849, file: !831, line: 92, baseType: !870, size: 64, offset: 1280)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4849, file: !831, line: 93, baseType: !4865, size: 64, offset: 1344)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4849, file: !831, line: 94, baseType: !43, size: 64, offset: 1408)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4849, file: !831, line: 95, baseType: !44, size: 64, offset: 1472)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4849, file: !831, line: 96, baseType: !57, size: 32, offset: 1536)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4849, file: !831, line: 98, baseType: !877, size: 160, offset: 1568)
!4881 = !{!4882}
!4882 = !DILocalVariable(name: "fp", arg: 1, scope: !4844, file: !726, line: 34, type: !4847)
!4883 = !DILocation(line: 0, scope: !4844)
!4884 = !DILocation(line: 38, column: 11, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4844, file: !726, line: 38, column: 7)
!4886 = !DILocation(line: 38, column: 31, scope: !4885)
!4887 = !DILocation(line: 38, column: 25, scope: !4885)
!4888 = !DILocation(line: 38, column: 7, scope: !4844)
!4889 = !DILocation(line: 40, column: 15, scope: !4844)
!4890 = !DILocation(line: 40, column: 34, scope: !4844)
!4891 = !DILocation(line: 40, column: 28, scope: !4844)
!4892 = !DILocation(line: 41, column: 17, scope: !4844)
!4893 = !DILocation(line: 41, column: 24, scope: !4844)
!4894 = !DILocation(line: 41, column: 13, scope: !4844)
!4895 = !DILocation(line: 41, column: 46, scope: !4844)
!4896 = !{!1115, !745, i64 88}
!4897 = !DILocation(line: 41, column: 65, scope: !4844)
!4898 = !DILocation(line: 41, column: 59, scope: !4844)
!4899 = !DILocation(line: 41, column: 10, scope: !4844)
!4900 = !DILocation(line: 40, column: 3, scope: !4844)
!4901 = !DILocation(line: 103, column: 1, scope: !4844)
