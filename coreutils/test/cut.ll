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
@suppress_non_delimited = internal unnamed_addr global i1 false, align 1, !dbg !246
@delim = internal unnamed_addr global i8 0, align 1, !dbg !215
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !247
@.str.16 = private unnamed_addr constant [12 x i8] c"b:c:d:f:nsz\00", align 1
@longopts = internal constant [11 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 1, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 1, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !225
@.str.17 = private unnamed_addr constant [39 x i8] c"only one type of list may be specified\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.18 = private unnamed_addr constant [41 x i8] c"the delimiter must be a single character\00", align 1
@output_delimiter_specified = internal unnamed_addr global i1 false, align 1, !dbg !248
@output_delimiter_length = internal unnamed_addr global i64 0, align 8, !dbg !219
@output_delimiter_string = internal unnamed_addr global i8* null, align 8, !dbg !221
@line_delim = internal unnamed_addr global i1 false, align 1, !dbg !249
@complement = internal unnamed_addr global i1 false, align 1, !dbg !250
@.str.20 = private unnamed_addr constant [15 x i8] c"David M. Ihnat\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"you must specify a list of bytes, characters, or fields\00", align 1
@.str.24 = private unnamed_addr constant [66 x i8] c"an input delimiter may be specified only when operating on fields\00", align 1
@.str.25 = private unnamed_addr constant [75 x i8] c"suppressing non-delimited lines makes sense\0A\09only when operating on fields\00", align 1
@main.dummy = internal global [2 x i8] zeroinitializer, align 1, !dbg !195
@optind = external local_unnamed_addr global i32, align 4
@.str.26 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.54 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@current_rp = internal unnamed_addr global %struct.field_range_pair* null, align 8, !dbg !232
@field_1_buffer = internal global i8* null, align 8, !dbg !242
@field_1_bufsize = internal global i64 0, align 8, !dbg !244
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
@n_frp = common dso_local local_unnamed_addr global i64 0, align 8, !dbg !251
@frp = common dso_local local_unnamed_addr global %struct.field_range_pair* null, align 8, !dbg !340
@.str.58 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2.59 = private unnamed_addr constant [20 x i8] c"invalid field range\00", align 1
@.str.1.60 = private unnamed_addr constant [32 x i8] c"invalid byte or character range\00", align 1
@.str.4.61 = private unnamed_addr constant [27 x i8] c"fields are numbered from 1\00", align 1
@.str.3.62 = private unnamed_addr constant [45 x i8] c"byte/character positions are numbered from 1\00", align 1
@.str.5.63 = private unnamed_addr constant [34 x i8] c"invalid range with no endpoint: -\00", align 1
@n_frp_allocated = internal unnamed_addr global i64 0, align 8, !dbg !343
@.str.6.64 = private unnamed_addr constant [25 x i8] c"invalid decreasing range\00", align 1
@set_fields.num_start = internal unnamed_addr global i8* null, align 8, !dbg !313
@.str.7.65 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.9.66 = private unnamed_addr constant [29 x i8] c"field number %s is too large\00", align 1
@.str.8.67 = private unnamed_addr constant [38 x i8] c"byte/character offset %s is too large\00", align 1
@.str.11.68 = private unnamed_addr constant [23 x i8] c"invalid field value %s\00", align 1
@.str.10.69 = private unnamed_addr constant [35 x i8] c"invalid byte/character position %s\00", align 1
@.str.13.70 = private unnamed_addr constant [23 x i8] c"missing list of fields\00", align 1
@.str.12.71 = private unnamed_addr constant [41 x i8] c"missing list of byte/character positions\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0), align 8, !dbg !345
@.str.74 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !350
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !393
@.str.77 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.78 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.79 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !395
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !401
@.str.92 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.93 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.94 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.96, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.97, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.98, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.99, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.100, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.101, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.102, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.103, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.104, i32 0, i32 0), i8* null], align 16, !dbg !442
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !513
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !519
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !521
@.str.11.105 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.106 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.107 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.108 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.109 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.110 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.111 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !528
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !535
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !523
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !537
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !541
@.str.1.155 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.177 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.180 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.181 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1358 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1361, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata i32 %0, metadata !1360, metadata !DIExpression()), !dbg !1381
  %3 = icmp eq i32 %0, 0, !dbg !1382
  br i1 %3, label %9, label %4, !dbg !1383

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1384, !tbaa !1386
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #20, !dbg !1384
  %7 = load i8*, i8** @program_name, align 8, !dbg !1384, !tbaa !1386
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #20, !dbg !1384
  br label %85, !dbg !1384

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 5) #20, !dbg !1390
  %11 = load i8*, i8** @program_name, align 8, !dbg !1390, !tbaa !1386
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #20, !dbg !1390
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 5) #20, !dbg !1391
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1391, !tbaa !1386
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1391
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.27, i64 0, i64 0), i32 5) #20, !dbg !1392
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1392, !tbaa !1386
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #20, !dbg !1392
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.28, i64 0, i64 0), i32 5) #20, !dbg !1395
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1395, !tbaa !1386
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20) #20, !dbg !1395
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.3, i64 0, i64 0), i32 5) #20, !dbg !1398
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1398, !tbaa !1386
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1398
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([238 x i8], [238 x i8]* @.str.4, i64 0, i64 0), i32 5) #20, !dbg !1399
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1399, !tbaa !1386
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1399
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.5, i64 0, i64 0), i32 5) #20, !dbg !1400
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1400, !tbaa !1386
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1400
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([210 x i8], [210 x i8]* @.str.6, i64 0, i64 0), i32 5) #20, !dbg !1401
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1401, !tbaa !1386
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !1401
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 5) #20, !dbg !1402
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1402, !tbaa !1386
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !1402
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 5) #20, !dbg !1403
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1403, !tbaa !1386
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !1403
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 5) #20, !dbg !1404
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1404, !tbaa !1386
  %42 = tail call i32 @fputs_unlocked(i8* %40, %struct._IO_FILE* %41), !dbg !1404
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.10, i64 0, i64 0), i32 5) #20, !dbg !1405
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1405, !tbaa !1386
  %45 = tail call i32 @fputs_unlocked(i8* %43, %struct._IO_FILE* %44), !dbg !1405
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([262 x i8], [262 x i8]* @.str.11, i64 0, i64 0), i32 5) #20, !dbg !1406
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1406, !tbaa !1386
  %48 = tail call i32 @fputs_unlocked(i8* %46, %struct._IO_FILE* %47), !dbg !1406
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), metadata !1364, metadata !DIExpression()) #20, !dbg !1407
  %49 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1408
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %49) #20, !dbg !1408
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %49, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #20, !dbg !1377
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), metadata !1365, metadata !DIExpression()) #20, !dbg !1407
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1366, metadata !DIExpression()) #20, !dbg !1407
  %50 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1409
  call void @llvm.dbg.value(metadata %struct.infomap* %50, metadata !1366, metadata !DIExpression()) #20, !dbg !1407
  br label %51, !dbg !1410

51:                                               ; preds = %56, %9
  %52 = phi i8* [ %59, %56 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), %9 ]
  %53 = phi %struct.infomap* [ %57, %56 ], [ %50, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %53, metadata !1366, metadata !DIExpression()) #20, !dbg !1407
  %54 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* nonnull %52) #24, !dbg !1411
  %55 = icmp eq i32 %54, 0, !dbg !1411
  br i1 %55, label %61, label %56, !dbg !1410

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.infomap, %struct.infomap* %53, i64 1, !dbg !1412
  call void @llvm.dbg.value(metadata %struct.infomap* %57, metadata !1366, metadata !DIExpression()) #20, !dbg !1407
  %58 = getelementptr inbounds %struct.infomap, %struct.infomap* %57, i64 0, i32 0, !dbg !1413
  %59 = load i8*, i8** %58, align 8, !dbg !1413, !tbaa !1414
  %60 = icmp eq i8* %59, null, !dbg !1416
  br i1 %60, label %61, label %51, !dbg !1417, !llvm.loop !1418

61:                                               ; preds = %56, %51
  %62 = phi %struct.infomap* [ %57, %56 ], [ %53, %51 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %62, metadata !1366, metadata !DIExpression()) #20, !dbg !1407
  call void @llvm.dbg.value(metadata %struct.infomap* %62, metadata !1366, metadata !DIExpression()) #20, !dbg !1407
  %63 = getelementptr inbounds %struct.infomap, %struct.infomap* %62, i64 0, i32 1, !dbg !1419
  %64 = load i8*, i8** %63, align 8, !dbg !1419, !tbaa !1421
  %65 = icmp eq i8* %64, null, !dbg !1422
  %66 = select i1 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %64, !dbg !1423
  call void @llvm.dbg.value(metadata i8* %66, metadata !1365, metadata !DIExpression()) #20, !dbg !1407
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0), i32 5) #20, !dbg !1424
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0)) #20, !dbg !1424
  %69 = tail call i8* @setlocale(i32 5, i8* null) #20, !dbg !1425
  call void @llvm.dbg.value(metadata i8* %69, metadata !1373, metadata !DIExpression()) #20, !dbg !1407
  %70 = icmp eq i8* %69, null, !dbg !1426
  br i1 %70, label %78, label %71, !dbg !1428

71:                                               ; preds = %61
  %72 = tail call i32 @strncmp(i8* nonnull %69, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i64 3) #24, !dbg !1429
  %73 = icmp eq i32 %72, 0, !dbg !1429
  br i1 %73, label %78, label %74, !dbg !1430

74:                                               ; preds = %71
  %75 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.40, i64 0, i64 0), i32 5) #20, !dbg !1431
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1431, !tbaa !1386
  %77 = tail call i32 @fputs_unlocked(i8* %75, %struct._IO_FILE* %76) #20, !dbg !1431
  br label %78, !dbg !1433

78:                                               ; preds = %61, %71, %74
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i64 0, i64 0), i32 5) #20, !dbg !1434
  %80 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #20, !dbg !1434
  %81 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.42, i64 0, i64 0), i32 5) #20, !dbg !1435
  %82 = icmp eq i8* %66, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), !dbg !1435
  %83 = select i1 %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), !dbg !1435
  %84 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %81, i8* %66, i8* %83) #20, !dbg !1435
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %49) #20, !dbg !1436
  br label %85

85:                                               ; preds = %78, %4
  tail call void @exit(i32 %0) #25, !dbg !1437
  unreachable, !dbg !1437
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !41 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !51 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !116 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !197 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !201, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8** %1, metadata !202, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 0, metadata !206, metadata !DIExpression()), !dbg !1438
  %3 = load i8*, i8** %1, align 8, !dbg !1439, !tbaa !1386
  tail call void @set_program_name(i8* %3) #20, !dbg !1440
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #20, !dbg !1441
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #20, !dbg !1442
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #20, !dbg !1443
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #20, !dbg !1444
  store i32 0, i32* @operating_mode, align 4, !dbg !1445, !tbaa !1446
  store i1 false, i1* @suppress_non_delimited, align 1, !dbg !1447
  store i8 0, i8* @delim, align 1, !dbg !1448, !tbaa !1446
  store i1 false, i1* @have_read_stdin, align 1, !dbg !1449
  br label %8, !dbg !1450

8:                                                ; preds = %12, %2
  %9 = phi i8 [ 0, %2 ], [ %13, %12 ], !dbg !1451
  %10 = phi i8* [ undef, %2 ], [ %14, %12 ]
  call void @llvm.dbg.value(metadata i8* %10, metadata !207, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %9, metadata !206, metadata !DIExpression()), !dbg !1438
  %11 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), %struct.option* getelementptr inbounds ([11 x %struct.option], [11 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #20, !dbg !1452
  call void @llvm.dbg.value(metadata i32 %11, metadata !203, metadata !DIExpression()), !dbg !1438
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
  ], !dbg !1450

12:                                               ; preds = %8, %51, %50, %49, %46, %39, %27, %20
  %13 = phi i8 [ %9, %51 ], [ %9, %50 ], [ %9, %49 ], [ %9, %46 ], [ 1, %39 ], [ %9, %27 ], [ %9, %20 ], [ %9, %8 ]
  %14 = phi i8* [ %10, %51 ], [ %10, %50 ], [ %10, %49 ], [ %10, %46 ], [ %10, %39 ], [ %28, %27 ], [ %21, %20 ], [ %10, %8 ]
  br label %8, !dbg !1438, !llvm.loop !1453

15:                                               ; preds = %8, %8
  %16 = load i32, i32* @operating_mode, align 4, !dbg !1455, !tbaa !1446
  %17 = icmp eq i32 %16, 0, !dbg !1459
  br i1 %17, label %20, label %18, !dbg !1460

18:                                               ; preds = %15
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i32 5) #20, !dbg !1461
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %19) #20, !dbg !1461
  tail call void @usage(i32 1) #26, !dbg !1461
  unreachable, !dbg !1461

20:                                               ; preds = %15
  store i32 1, i32* @operating_mode, align 4, !dbg !1463, !tbaa !1446
  %21 = load i8*, i8** @optarg, align 8, !dbg !1464, !tbaa !1386
  call void @llvm.dbg.value(metadata i8* %21, metadata !207, metadata !DIExpression()), !dbg !1438
  br label %12, !dbg !1465

22:                                               ; preds = %8
  %23 = load i32, i32* @operating_mode, align 4, !dbg !1466, !tbaa !1446
  %24 = icmp eq i32 %23, 0, !dbg !1468
  br i1 %24, label %27, label %25, !dbg !1469

25:                                               ; preds = %22
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i32 5) #20, !dbg !1470
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %26) #20, !dbg !1470
  tail call void @usage(i32 1) #26, !dbg !1470
  unreachable, !dbg !1470

27:                                               ; preds = %22
  store i32 2, i32* @operating_mode, align 4, !dbg !1472, !tbaa !1446
  %28 = load i8*, i8** @optarg, align 8, !dbg !1473, !tbaa !1386
  call void @llvm.dbg.value(metadata i8* %28, metadata !207, metadata !DIExpression()), !dbg !1438
  br label %12, !dbg !1474

29:                                               ; preds = %8
  %30 = load i8*, i8** @optarg, align 8, !dbg !1475, !tbaa !1386
  %31 = load i8, i8* %30, align 1, !dbg !1475, !tbaa !1446
  %32 = icmp eq i8 %31, 0, !dbg !1477
  br i1 %32, label %39, label %33, !dbg !1478

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !1479
  %35 = load i8, i8* %34, align 1, !dbg !1479, !tbaa !1446
  %36 = icmp eq i8 %35, 0, !dbg !1480
  br i1 %36, label %39, label %37, !dbg !1481

37:                                               ; preds = %33
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i32 5) #20, !dbg !1482
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %38) #20, !dbg !1482
  tail call void @usage(i32 1) #26, !dbg !1482
  unreachable, !dbg !1482

39:                                               ; preds = %33, %29
  store i8 %31, i8* @delim, align 1, !dbg !1484, !tbaa !1446
  call void @llvm.dbg.value(metadata i8 1, metadata !206, metadata !DIExpression()), !dbg !1438
  br label %12, !dbg !1485

40:                                               ; preds = %8
  store i1 true, i1* @output_delimiter_specified, align 1, !dbg !1486
  %41 = load i8*, i8** @optarg, align 8, !dbg !1487, !tbaa !1386
  %42 = load i8, i8* %41, align 1, !dbg !1487, !tbaa !1446
  %43 = icmp eq i8 %42, 0, !dbg !1488
  br i1 %43, label %46, label %44, !dbg !1487

44:                                               ; preds = %40
  %45 = tail call i64 @strlen(i8* nonnull %41) #24, !dbg !1489
  br label %46, !dbg !1487

46:                                               ; preds = %40, %44
  %47 = phi i64 [ %45, %44 ], [ 1, %40 ], !dbg !1487
  store i64 %47, i64* @output_delimiter_length, align 8, !dbg !1490, !tbaa !1491
  %48 = tail call noalias i8* @xstrdup(i8* nonnull %41) #20, !dbg !1493
  store i8* %48, i8** @output_delimiter_string, align 8, !dbg !1494, !tbaa !1386
  br label %12, !dbg !1495

49:                                               ; preds = %8
  store i1 true, i1* @suppress_non_delimited, align 1, !dbg !1496
  br label %12, !dbg !1497

50:                                               ; preds = %8
  store i1 true, i1* @line_delim, align 1, !dbg !1498
  br label %12, !dbg !1499

51:                                               ; preds = %8
  store i1 true, i1* @complement, align 1, !dbg !1500
  br label %12, !dbg !1501

52:                                               ; preds = %8
  tail call void @usage(i32 0) #26, !dbg !1502
  unreachable, !dbg !1502

53:                                               ; preds = %8
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1503, !tbaa !1386
  %55 = load i8*, i8** @Version, align 8, !dbg !1503, !tbaa !1386
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* null) #20, !dbg !1503
  tail call void @exit(i32 0) #25, !dbg !1503
  unreachable, !dbg !1503

56:                                               ; preds = %8
  tail call void @usage(i32 1) #26, !dbg !1504
  unreachable, !dbg !1504

57:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i8 %9, metadata !206, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %10, metadata !207, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %9, metadata !206, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %10, metadata !207, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %9, metadata !206, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %10, metadata !207, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %9, metadata !206, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %10, metadata !207, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %9, metadata !206, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %10, metadata !207, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %9, metadata !206, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %10, metadata !207, metadata !DIExpression()), !dbg !1438
  %58 = load i32, i32* @operating_mode, align 4, !dbg !1505, !tbaa !1446
  %59 = icmp eq i32 %58, 0, !dbg !1507
  br i1 %59, label %60, label %62, !dbg !1508

60:                                               ; preds = %57
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i64 0, i64 0), i32 5) #20, !dbg !1509
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %61) #20, !dbg !1509
  tail call void @usage(i32 1) #26, !dbg !1509
  unreachable, !dbg !1509

62:                                               ; preds = %57
  %63 = icmp ne i8 %9, 0, !dbg !1511
  %64 = icmp ne i32 %58, 2, !dbg !1513
  %65 = and i1 %63, %64, !dbg !1514
  br i1 %65, label %66, label %68, !dbg !1514

66:                                               ; preds = %62
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.24, i64 0, i64 0), i32 5) #20, !dbg !1515
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %67) #20, !dbg !1515
  tail call void @usage(i32 1) #26, !dbg !1515
  unreachable, !dbg !1515

68:                                               ; preds = %62
  %69 = load i1, i1* @suppress_non_delimited, align 1, !dbg !1517
  %70 = and i1 %64, %69, !dbg !1519
  br i1 %70, label %71, label %73, !dbg !1519

71:                                               ; preds = %68
  %72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.25, i64 0, i64 0), i32 5) #20, !dbg !1520
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %72) #20, !dbg !1520
  tail call void @usage(i32 1) #26, !dbg !1520
  unreachable, !dbg !1520

73:                                               ; preds = %68
  %74 = icmp eq i32 %58, 2, !dbg !1522
  %75 = select i1 %74, i32 0, i32 4, !dbg !1523
  %76 = load i1, i1* @complement, align 1, !dbg !1524
  %77 = select i1 %76, i32 2, i32 0, !dbg !1524
  %78 = or i32 %77, %75, !dbg !1525
  tail call void @set_fields(i8* %10, i32 %78) #20, !dbg !1526
  br i1 %63, label %80, label %79, !dbg !1527

79:                                               ; preds = %73
  store i8 9, i8* @delim, align 1, !dbg !1528, !tbaa !1446
  br label %80, !dbg !1530

80:                                               ; preds = %79, %73
  %81 = load i8*, i8** @output_delimiter_string, align 8, !dbg !1531, !tbaa !1386
  %82 = icmp eq i8* %81, null, !dbg !1533
  br i1 %82, label %83, label %85, !dbg !1534

83:                                               ; preds = %80
  %84 = load i8, i8* @delim, align 1, !dbg !1535, !tbaa !1446
  store i8 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.dummy, i64 0, i64 0), align 1, !dbg !1537, !tbaa !1446
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.dummy, i64 0, i64 1), align 1, !dbg !1538, !tbaa !1446
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.dummy, i64 0, i64 0), i8** @output_delimiter_string, align 8, !dbg !1539, !tbaa !1386
  store i64 1, i64* @output_delimiter_length, align 8, !dbg !1540, !tbaa !1491
  br label %85, !dbg !1541

85:                                               ; preds = %83, %80
  %86 = load i32, i32* @optind, align 4, !dbg !1542, !tbaa !1544
  %87 = icmp eq i32 %86, %0, !dbg !1546
  br i1 %87, label %90, label %88, !dbg !1547

88:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i8 1, metadata !204, metadata !DIExpression()), !dbg !1438
  %89 = icmp slt i32 %86, %0, !dbg !1548
  br i1 %89, label %93, label %105, !dbg !1551

90:                                               ; preds = %85
  %91 = tail call fastcc zeroext i1 @cut_file(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)), !dbg !1552
  %92 = zext i1 %91 to i8, !dbg !1553
  call void @llvm.dbg.value(metadata i8 %92, metadata !204, metadata !DIExpression()), !dbg !1438
  br label %105, !dbg !1554

93:                                               ; preds = %88, %93
  %94 = phi i32 [ %103, %93 ], [ %86, %88 ]
  %95 = phi i8 [ %101, %93 ], [ 1, %88 ]
  call void @llvm.dbg.value(metadata i8 %95, metadata !204, metadata !DIExpression()), !dbg !1438
  %96 = sext i32 %94 to i64, !dbg !1555
  %97 = getelementptr inbounds i8*, i8** %1, i64 %96, !dbg !1555
  %98 = load i8*, i8** %97, align 8, !dbg !1555, !tbaa !1386
  %99 = tail call fastcc zeroext i1 @cut_file(i8* %98), !dbg !1556
  %100 = zext i1 %99 to i8, !dbg !1556
  %101 = and i8 %95, %100, !dbg !1557
  call void @llvm.dbg.value(metadata i8 %101, metadata !204, metadata !DIExpression()), !dbg !1438
  %102 = load i32, i32* @optind, align 4, !dbg !1558, !tbaa !1544
  %103 = add nsw i32 %102, 1, !dbg !1558
  store i32 %103, i32* @optind, align 4, !dbg !1558, !tbaa !1544
  %104 = icmp slt i32 %103, %0, !dbg !1548
  br i1 %104, label %93, label %105, !dbg !1551, !llvm.loop !1559

105:                                              ; preds = %93, %88, %90
  %106 = phi i8 [ %92, %90 ], [ 1, %88 ], [ %101, %93 ], !dbg !1561
  call void @llvm.dbg.value(metadata i8 %106, metadata !204, metadata !DIExpression()), !dbg !1438
  %107 = load i1, i1* @have_read_stdin, align 1, !dbg !1562
  br i1 %107, label %108, label %115, !dbg !1564

108:                                              ; preds = %105
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1565, !tbaa !1386
  %110 = tail call i32 @rpl_fclose(%struct._IO_FILE* %109) #20, !dbg !1566
  %111 = icmp eq i32 %110, -1, !dbg !1567
  br i1 %111, label %112, label %115, !dbg !1568

112:                                              ; preds = %108
  %113 = tail call i32* @__errno_location() #27, !dbg !1569
  %114 = load i32, i32* %113, align 4, !dbg !1569, !tbaa !1544
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #20, !dbg !1571
  call void @llvm.dbg.value(metadata i8 0, metadata !204, metadata !DIExpression()), !dbg !1438
  br label %115, !dbg !1572

115:                                              ; preds = %112, %108, %105
  %116 = phi i8 [ 0, %112 ], [ %106, %108 ], [ %106, %105 ], !dbg !1438
  call void @llvm.dbg.value(metadata i8 %116, metadata !204, metadata !DIExpression()), !dbg !1438
  %117 = xor i8 %116, 1, !dbg !1573
  %118 = zext i8 %117 to i32, !dbg !1573
  ret i32 %118, !dbg !1574
}

; Function Attrs: nounwind
declare !dbg !120 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !123 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !126 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !133 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !148 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @cut_file(i8* %0) unnamed_addr #8 !dbg !1575 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1579, metadata !DIExpression()), !dbg !1584
  %2 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #24, !dbg !1585
  %3 = icmp eq i32 %2, 0, !dbg !1585
  br i1 %3, label %4, label %6, !dbg !1587

4:                                                ; preds = %1
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1588
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1590, !tbaa !1386
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %5, metadata !1580, metadata !DIExpression()), !dbg !1584
  br label %13, !dbg !1591

6:                                                ; preds = %1
  %7 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)), !dbg !1592
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1580, metadata !DIExpression()), !dbg !1584
  %8 = icmp eq %struct._IO_FILE* %7, null, !dbg !1594
  br i1 %8, label %9, label %13, !dbg !1596

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #27, !dbg !1597
  %11 = load i32, i32* %10, align 4, !dbg !1597, !tbaa !1544
  %12 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #20, !dbg !1599
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* %12) #20, !dbg !1600
  br label %413, !dbg !1601

13:                                               ; preds = %6, %4
  %14 = phi %struct._IO_FILE* [ %5, %4 ], [ %7, %6 ], !dbg !1602
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1580, metadata !DIExpression()), !dbg !1584
  tail call void @fadvise(%struct._IO_FILE* %14, i32 2) #20, !dbg !1603
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1604, metadata !DIExpression()) #20, !dbg !1609
  %15 = load i32, i32* @operating_mode, align 4, !dbg !1611, !tbaa !1446
  %16 = icmp eq i32 %15, 1, !dbg !1613
  %17 = load i64, i64* bitcast (%struct.field_range_pair** @frp to i64*), align 8, !dbg !1614, !tbaa !1386
  store i64 %17, i64* bitcast (%struct.field_range_pair** @current_rp to i64*), align 8, !dbg !1614, !tbaa !1386
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 1, !dbg !1614
  br i1 %16, label %19, label %113, !dbg !1615

19:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1616, metadata !DIExpression()) #20, !dbg !1636
  call void @llvm.dbg.value(metadata i64 0, metadata !1619, metadata !DIExpression()) #20, !dbg !1636
  call void @llvm.dbg.value(metadata i8 0, metadata !1620, metadata !DIExpression()) #20, !dbg !1636
  %20 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 2, !dbg !1638
  br label %21, !dbg !1646

21:                                               ; preds = %55, %19
  %22 = phi i64 [ 0, %19 ], [ %56, %55 ]
  %23 = phi i8 [ 0, %19 ], [ %57, %55 ]
  br label %24, !dbg !1647

24:                                               ; preds = %21, %82
  %25 = phi i64 [ %75, %82 ], [ %22, %21 ], !dbg !1636
  call void @llvm.dbg.value(metadata i8 %23, metadata !1620, metadata !DIExpression()) #20, !dbg !1636
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1644, metadata !DIExpression()) #20, !dbg !1638
  %26 = load i8*, i8** %18, align 8, !dbg !1647, !tbaa !1648
  %27 = load i8*, i8** %20, align 8, !dbg !1647, !tbaa !1651
  %28 = icmp ult i8* %26, %27, !dbg !1647
  br i1 %28, label %31, label %29, !dbg !1647, !prof !1652, !misexpect !1653

29:                                               ; preds = %24
  %30 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #20, !dbg !1647
  br label %35, !dbg !1647

31:                                               ; preds = %24
  %32 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1647
  store i8* %32, i8** %18, align 8, !dbg !1647, !tbaa !1648
  %33 = load i8, i8* %26, align 1, !dbg !1647, !tbaa !1446
  %34 = zext i8 %33 to i32, !dbg !1647
  br label %35, !dbg !1647

35:                                               ; preds = %31, %29
  %36 = phi i32 [ %30, %29 ], [ %34, %31 ], !dbg !1647
  call void @llvm.dbg.value(metadata i32 %36, metadata !1621, metadata !DIExpression()) #20, !dbg !1654
  %37 = load i1, i1* @line_delim, align 1, !dbg !1655
  %38 = select i1 %37, i32 0, i32 10, !dbg !1655
  %39 = icmp eq i32 %36, %38, !dbg !1656
  br i1 %39, label %40, label %58, !dbg !1657

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 %36, metadata !1621, metadata !DIExpression()) #20, !dbg !1654
  call void @llvm.dbg.value(metadata i32 %36, metadata !1621, metadata !DIExpression()) #20, !dbg !1654
  call void @llvm.dbg.value(metadata i32 %36, metadata !1658, metadata !DIExpression()) #20, !dbg !1663
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1666, !tbaa !1386
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 5, !dbg !1666
  %43 = load i8*, i8** %42, align 8, !dbg !1666, !tbaa !1667
  %44 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 6, !dbg !1666
  %45 = load i8*, i8** %44, align 8, !dbg !1666, !tbaa !1668
  %46 = icmp ult i8* %43, %45, !dbg !1666
  br i1 %46, label %50, label %47, !dbg !1666, !prof !1652, !misexpect !1653

47:                                               ; preds = %40
  %48 = and i32 %36, 255, !dbg !1666
  %49 = tail call i32 @__overflow(%struct._IO_FILE* %41, i32 %48) #20, !dbg !1666
  br label %53, !dbg !1666

50:                                               ; preds = %40
  %51 = trunc i32 %36 to i8, !dbg !1666
  %52 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !1666
  store i8* %52, i8** %42, align 8, !dbg !1666, !tbaa !1667
  store i8 %51, i8* %43, align 1, !dbg !1666, !tbaa !1446
  br label %53, !dbg !1666

53:                                               ; preds = %50, %47
  call void @llvm.dbg.value(metadata i64 0, metadata !1619, metadata !DIExpression()) #20, !dbg !1636
  call void @llvm.dbg.value(metadata i8 0, metadata !1620, metadata !DIExpression()) #20, !dbg !1636
  %54 = load i64, i64* bitcast (%struct.field_range_pair** @frp to i64*), align 8, !dbg !1669, !tbaa !1386
  store i64 %54, i64* bitcast (%struct.field_range_pair** @current_rp to i64*), align 8, !dbg !1670, !tbaa !1386
  br label %55, !dbg !1671

55:                                               ; preds = %53, %107, %110
  %56 = phi i64 [ %75, %110 ], [ %75, %107 ], [ 0, %53 ]
  %57 = phi i8 [ %100, %110 ], [ %100, %107 ], [ 0, %53 ]
  br label %21, !dbg !1647

58:                                               ; preds = %35
  %59 = icmp eq i32 %36, -1, !dbg !1672
  br i1 %59, label %60, label %74, !dbg !1673

60:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i64 %25, metadata !1619, metadata !DIExpression()) #20, !dbg !1636
  %61 = icmp eq i64 %25, 0, !dbg !1674
  br i1 %61, label %393, label %62, !dbg !1677

62:                                               ; preds = %60
  call void @llvm.dbg.value(metadata i32 %38, metadata !1658, metadata !DIExpression()) #20, !dbg !1678
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1680, !tbaa !1386
  %64 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %63, i64 0, i32 5, !dbg !1680
  %65 = load i8*, i8** %64, align 8, !dbg !1680, !tbaa !1667
  %66 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %63, i64 0, i32 6, !dbg !1680
  %67 = load i8*, i8** %66, align 8, !dbg !1680, !tbaa !1668
  %68 = icmp ult i8* %65, %67, !dbg !1680
  br i1 %68, label %71, label %69, !dbg !1680, !prof !1652, !misexpect !1653

69:                                               ; preds = %62
  %70 = tail call i32 @__overflow(%struct._IO_FILE* %63, i32 %38) #20, !dbg !1680
  br label %393, !dbg !1680

71:                                               ; preds = %62
  %72 = trunc i32 %38 to i8, !dbg !1680
  %73 = getelementptr inbounds i8, i8* %65, i64 1, !dbg !1680
  store i8* %73, i8** %64, align 8, !dbg !1680, !tbaa !1667
  store i8 %72, i8* %65, align 1, !dbg !1680, !tbaa !1446
  br label %393, !dbg !1680

74:                                               ; preds = %58
  %75 = add i64 %25, 1, !dbg !1681
  %76 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1688, !tbaa !1386
  %77 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %76, i64 0, i32 1, !dbg !1690
  %78 = load i64, i64* %77, align 8, !dbg !1690, !tbaa !1691
  %79 = icmp ugt i64 %75, %78, !dbg !1693
  br i1 %79, label %80, label %82, !dbg !1694

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %76, i64 1, !dbg !1695
  store %struct.field_range_pair* %81, %struct.field_range_pair** @current_rp, align 8, !dbg !1695, !tbaa !1386
  br label %82, !dbg !1696

82:                                               ; preds = %80, %74
  %83 = phi %struct.field_range_pair* [ %76, %74 ], [ %81, %80 ], !dbg !1697
  call void @llvm.dbg.value(metadata i64 %75, metadata !1619, metadata !DIExpression()) #20, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %75, metadata !1702, metadata !DIExpression()) #20, !dbg !1704
  %84 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %83, i64 0, i32 0, !dbg !1705
  %85 = load i64, i64* %84, align 8, !dbg !1705, !tbaa !1706
  %86 = icmp ugt i64 %85, %75, !dbg !1707
  br i1 %86, label %24, label %87, !dbg !1708

87:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i32 %36, metadata !1621, metadata !DIExpression()) #20, !dbg !1654
  call void @llvm.dbg.value(metadata i32 %36, metadata !1621, metadata !DIExpression()) #20, !dbg !1654
  %88 = load i1, i1* @output_delimiter_specified, align 1, !dbg !1709
  br i1 %88, label %89, label %99, !dbg !1710

89:                                               ; preds = %87
  %90 = and i8 %23, 1, !dbg !1711
  %91 = icmp ne i8 %90, 0, !dbg !1711
  %92 = icmp eq i64 %85, %75, !dbg !1712
  %93 = and i1 %91, %92, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %75, metadata !1619, metadata !DIExpression()) #20, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %75, metadata !1715, metadata !DIExpression()) #20, !dbg !1718
  br i1 %93, label %94, label %99, !dbg !1717

94:                                               ; preds = %89
  %95 = load i64, i64* @output_delimiter_length, align 8, !dbg !1719, !tbaa !1491
  %96 = load i8*, i8** @output_delimiter_string, align 8, !dbg !1719, !tbaa !1386
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1719, !tbaa !1386
  %98 = tail call i64 @fwrite_unlocked(i8* %96, i64 1, i64 %95, %struct._IO_FILE* %97) #20, !dbg !1719
  br label %99, !dbg !1719

99:                                               ; preds = %94, %89, %87
  %100 = phi i8 [ %23, %87 ], [ 1, %89 ], [ 1, %94 ], !dbg !1636
  call void @llvm.dbg.value(metadata i8 %100, metadata !1620, metadata !DIExpression()) #20, !dbg !1636
  call void @llvm.dbg.value(metadata i32 %36, metadata !1658, metadata !DIExpression()) #20, !dbg !1720
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1722, !tbaa !1386
  %102 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %101, i64 0, i32 5, !dbg !1722
  %103 = load i8*, i8** %102, align 8, !dbg !1722, !tbaa !1667
  %104 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %101, i64 0, i32 6, !dbg !1722
  %105 = load i8*, i8** %104, align 8, !dbg !1722, !tbaa !1668
  %106 = icmp ult i8* %103, %105, !dbg !1722
  br i1 %106, label %110, label %107, !dbg !1722, !prof !1652, !misexpect !1653

107:                                              ; preds = %99
  %108 = and i32 %36, 255, !dbg !1722
  %109 = tail call i32 @__overflow(%struct._IO_FILE* %101, i32 %108) #20, !dbg !1722
  br label %55, !dbg !1722

110:                                              ; preds = %99
  %111 = trunc i32 %36 to i8, !dbg !1722
  %112 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !1722
  store i8* %112, i8** %102, align 8, !dbg !1722, !tbaa !1667
  store i8 %111, i8* %103, align 1, !dbg !1722, !tbaa !1446
  br label %55, !dbg !1722

113:                                              ; preds = %13
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1723, metadata !DIExpression()) #20, !dbg !1766
  call void @llvm.dbg.value(metadata i64 1, metadata !1727, metadata !DIExpression()) #20, !dbg !1766
  call void @llvm.dbg.value(metadata i8 0, metadata !1728, metadata !DIExpression()) #20, !dbg !1766
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1644, metadata !DIExpression()) #20, !dbg !1768
  %114 = load i8*, i8** %18, align 8, !dbg !1770, !tbaa !1648
  %115 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 2, !dbg !1770
  %116 = load i8*, i8** %115, align 8, !dbg !1770, !tbaa !1651
  %117 = icmp ult i8* %114, %116, !dbg !1770
  br i1 %117, label %118, label %122, !dbg !1770, !prof !1652, !misexpect !1653

118:                                              ; preds = %113
  %119 = getelementptr inbounds i8, i8* %114, i64 1, !dbg !1770
  store i8* %119, i8** %18, align 8, !dbg !1770, !tbaa !1648
  %120 = load i8, i8* %114, align 1, !dbg !1770, !tbaa !1446
  %121 = zext i8 %120 to i32, !dbg !1770
  call void @llvm.dbg.value(metadata i32 %123, metadata !1726, metadata !DIExpression()) #20, !dbg !1766
  br label %125, !dbg !1771

122:                                              ; preds = %113
  %123 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #20, !dbg !1770
  call void @llvm.dbg.value(metadata i32 %123, metadata !1726, metadata !DIExpression()) #20, !dbg !1766
  %124 = icmp eq i32 %123, -1, !dbg !1772
  br i1 %124, label %393, label %125, !dbg !1771

125:                                              ; preds = %122, %118
  %126 = phi i32 [ %121, %118 ], [ %123, %122 ]
  %127 = tail call i32 @ungetc(i32 %126, %struct._IO_FILE* nonnull %14) #20, !dbg !1774
  call void @llvm.dbg.value(metadata i32 0, metadata !1726, metadata !DIExpression()) #20, !dbg !1766
  %128 = load i1, i1* @suppress_non_delimited, align 1, !dbg !1775
  call void @llvm.dbg.value(metadata i64 1, metadata !1702, metadata !DIExpression()) #20, !dbg !1776
  %129 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1778, !tbaa !1386
  %130 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %129, i64 0, i32 0, !dbg !1779
  %131 = load i64, i64* %130, align 8, !dbg !1779, !tbaa !1706
  %132 = icmp ult i64 %131, 2, !dbg !1780
  call void @llvm.dbg.value(metadata i1 undef, metadata !1729, metadata !DIExpression()) #20, !dbg !1766
  %133 = xor i1 %128, %132, !dbg !1781
  br label %134, !dbg !1782

134:                                              ; preds = %389, %125
  %135 = phi i64 [ 1, %125 ], [ %390, %389 ]
  %136 = phi i8 [ 0, %125 ], [ %391, %389 ]
  %137 = phi i32 [ 0, %125 ], [ %392, %389 ]
  call void @llvm.dbg.value(metadata i32 %137, metadata !1726, metadata !DIExpression()) #20, !dbg !1766
  call void @llvm.dbg.value(metadata i8 %136, metadata !1728, metadata !DIExpression()) #20, !dbg !1766
  call void @llvm.dbg.value(metadata i64 %135, metadata !1727, metadata !DIExpression()) #20, !dbg !1766
  %138 = icmp ne i64 %135, 1, !dbg !1783
  %139 = or i1 %133, %138, !dbg !1784
  br i1 %139, label %140, label %142, !dbg !1784

140:                                              ; preds = %134
  %141 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1785, !tbaa !1386
  br label %233, !dbg !1784

142:                                              ; preds = %134
  %143 = load i8, i8* @delim, align 1, !dbg !1787, !tbaa !1446
  %144 = zext i8 %143 to i32, !dbg !1787
  %145 = load i1, i1* @line_delim, align 1, !dbg !1788
  %146 = select i1 %145, i32 0, i32 10, !dbg !1788
  %147 = tail call i64 @getndelim2(i8** nonnull @field_1_buffer, i64* nonnull @field_1_bufsize, i64 0, i64 -1, i32 %144, i32 %146, %struct._IO_FILE* %14) #20, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %147, metadata !1730, metadata !DIExpression()) #20, !dbg !1790
  %148 = icmp slt i64 %147, 0, !dbg !1791
  br i1 %148, label %149, label %156, !dbg !1793

149:                                              ; preds = %142, %226
  %150 = load i8*, i8** @field_1_buffer, align 8, !dbg !1794, !tbaa !1386
  tail call void @free(i8* %150) #20, !dbg !1796
  store i8* null, i8** @field_1_buffer, align 8, !dbg !1797, !tbaa !1386
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1798, metadata !DIExpression()) #20, !dbg !1801
  %151 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 0, !dbg !1804
  %152 = load i32, i32* %151, align 8, !dbg !1804, !tbaa !1805
  %153 = and i32 %152, 48, !dbg !1806
  %154 = icmp eq i32 %153, 0, !dbg !1806
  br i1 %154, label %155, label %393, !dbg !1806

155:                                              ; preds = %149
  tail call void @xalloc_die() #25, !dbg !1807
  unreachable, !dbg !1807

156:                                              ; preds = %142, %226
  %157 = phi i64 [ %231, %226 ], [ %147, %142 ]
  call void @llvm.dbg.value(metadata i64 %157, metadata !1736, metadata !DIExpression()) #20, !dbg !1790
  %158 = icmp eq i64 %157, 0, !dbg !1808
  br i1 %158, label %159, label %160, !dbg !1811

159:                                              ; preds = %156
  tail call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i32 329, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.cut_fields, i64 0, i64 0)) #25, !dbg !1808
  unreachable, !dbg !1808

160:                                              ; preds = %156
  call void @llvm.dbg.value(metadata i32 0, metadata !1726, metadata !DIExpression()) #20, !dbg !1766
  %161 = load i8*, i8** @field_1_buffer, align 8, !dbg !1812, !tbaa !1386
  %162 = add nsw i64 %157, -1, !dbg !1813
  %163 = getelementptr inbounds i8, i8* %161, i64 %162, !dbg !1812
  %164 = load i8, i8* %163, align 1, !dbg !1812, !tbaa !1446
  %165 = load i8, i8* @delim, align 1, !dbg !1814, !tbaa !1446
  %166 = icmp eq i8 %164, %165, !dbg !1815
  br i1 %166, label %191, label %167, !dbg !1816

167:                                              ; preds = %160
  %168 = load i1, i1* @suppress_non_delimited, align 1, !dbg !1817
  br i1 %168, label %226, label %169, !dbg !1818, !llvm.loop !1819

169:                                              ; preds = %167
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1821, !tbaa !1386
  %171 = tail call i64 @fwrite_unlocked(i8* %161, i64 1, i64 %157, %struct._IO_FILE* %170) #20, !dbg !1822
  %172 = load i8*, i8** @field_1_buffer, align 8, !dbg !1823, !tbaa !1386
  %173 = getelementptr inbounds i8, i8* %172, i64 %162, !dbg !1823
  %174 = load i8, i8* %173, align 1, !dbg !1823, !tbaa !1446
  %175 = sext i8 %174 to i32, !dbg !1823
  %176 = load i1, i1* @line_delim, align 1, !dbg !1825
  %177 = select i1 %176, i32 0, i32 10, !dbg !1825
  %178 = icmp eq i32 %177, %175, !dbg !1826
  br i1 %178, label %226, label %179, !dbg !1827, !llvm.loop !1828

179:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i32 %177, metadata !1658, metadata !DIExpression()) #20, !dbg !1829
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1831, !tbaa !1386
  %181 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %180, i64 0, i32 5, !dbg !1831
  %182 = load i8*, i8** %181, align 8, !dbg !1831, !tbaa !1667
  %183 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %180, i64 0, i32 6, !dbg !1831
  %184 = load i8*, i8** %183, align 8, !dbg !1831, !tbaa !1668
  %185 = icmp ult i8* %182, %184, !dbg !1831
  br i1 %185, label %188, label %186, !dbg !1831, !prof !1652, !misexpect !1653

186:                                              ; preds = %179
  %187 = tail call i32 @__overflow(%struct._IO_FILE* %180, i32 %177) #20, !dbg !1831
  br label %226, !dbg !1831, !llvm.loop !1832

188:                                              ; preds = %179
  %189 = trunc i32 %177 to i8, !dbg !1831
  %190 = getelementptr inbounds i8, i8* %182, i64 1, !dbg !1831
  store i8* %190, i8** %181, align 8, !dbg !1831, !tbaa !1667
  store i8 %189, i8* %182, align 1, !dbg !1831, !tbaa !1446
  br label %226, !dbg !1831, !llvm.loop !1833

191:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i64 1, metadata !1702, metadata !DIExpression()) #20, !dbg !1834
  %192 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1836, !tbaa !1386
  %193 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %192, i64 0, i32 0, !dbg !1837
  %194 = load i64, i64* %193, align 8, !dbg !1837, !tbaa !1706
  %195 = icmp ult i64 %194, 2, !dbg !1838
  br i1 %195, label %196, label %218, !dbg !1839

196:                                              ; preds = %191
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1840, !tbaa !1386
  %198 = tail call i64 @fwrite_unlocked(i8* %161, i64 1, i64 %162, %struct._IO_FILE* %197) #20, !dbg !1840
  %199 = load i8, i8* @delim, align 1, !dbg !1841, !tbaa !1446
  %200 = zext i8 %199 to i32, !dbg !1841
  %201 = load i1, i1* @line_delim, align 1, !dbg !1842
  %202 = select i1 %201, i32 0, i32 10, !dbg !1842
  %203 = icmp eq i32 %202, %200, !dbg !1843
  br i1 %203, label %204, label %218, !dbg !1844

204:                                              ; preds = %196
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1644, metadata !DIExpression()) #20, !dbg !1845
  %205 = load i8*, i8** %18, align 8, !dbg !1847, !tbaa !1648
  %206 = load i8*, i8** %115, align 8, !dbg !1847, !tbaa !1651
  %207 = icmp ult i8* %205, %206, !dbg !1847
  br i1 %207, label %208, label %212, !dbg !1847, !prof !1652, !misexpect !1653

208:                                              ; preds = %204
  %209 = getelementptr inbounds i8, i8* %205, i64 1, !dbg !1847
  store i8* %209, i8** %18, align 8, !dbg !1847, !tbaa !1648
  %210 = load i8, i8* %205, align 1, !dbg !1847, !tbaa !1446
  %211 = zext i8 %210 to i32, !dbg !1847
  call void @llvm.dbg.value(metadata i32 %213, metadata !1751, metadata !DIExpression()) #20, !dbg !1848
  br label %215, !dbg !1849

212:                                              ; preds = %204
  %213 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #20, !dbg !1847
  call void @llvm.dbg.value(metadata i32 %213, metadata !1751, metadata !DIExpression()) #20, !dbg !1848
  %214 = icmp eq i32 %213, -1, !dbg !1850
  br i1 %214, label %218, label %215, !dbg !1849

215:                                              ; preds = %212, %208
  %216 = phi i32 [ %211, %208 ], [ %213, %212 ]
  %217 = tail call i32 @ungetc(i32 %216, %struct._IO_FILE* nonnull %14) #20, !dbg !1852
  call void @llvm.dbg.value(metadata i8 1, metadata !1728, metadata !DIExpression()) #20, !dbg !1766
  br label %218, !dbg !1854

218:                                              ; preds = %215, %212, %196, %191
  %219 = phi i8 [ %136, %191 ], [ 1, %215 ], [ %136, %212 ], [ 1, %196 ], !dbg !1766
  call void @llvm.dbg.value(metadata i8 %219, metadata !1728, metadata !DIExpression()) #20, !dbg !1766
  %220 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1855, !tbaa !1386
  %221 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %220, i64 0, i32 1, !dbg !1857
  %222 = load i64, i64* %221, align 8, !dbg !1857, !tbaa !1691
  %223 = icmp ult i64 %222, 2, !dbg !1858
  br i1 %223, label %224, label %233, !dbg !1859

224:                                              ; preds = %218
  %225 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %220, i64 1, !dbg !1860
  store %struct.field_range_pair* %225, %struct.field_range_pair** @current_rp, align 8, !dbg !1860, !tbaa !1386
  br label %233, !dbg !1861

226:                                              ; preds = %188, %186, %169, %167
  call void @llvm.dbg.value(metadata i32 undef, metadata !1726, metadata !DIExpression()) #20, !dbg !1766
  call void @llvm.dbg.value(metadata i8 %136, metadata !1728, metadata !DIExpression()) #20, !dbg !1766
  call void @llvm.dbg.value(metadata i64 %135, metadata !1727, metadata !DIExpression()) #20, !dbg !1766
  %227 = load i8, i8* @delim, align 1, !dbg !1787, !tbaa !1446
  %228 = zext i8 %227 to i32, !dbg !1787
  %229 = load i1, i1* @line_delim, align 1, !dbg !1788
  %230 = select i1 %229, i32 0, i32 10, !dbg !1788
  %231 = tail call i64 @getndelim2(i8** nonnull @field_1_buffer, i64* nonnull @field_1_bufsize, i64 0, i64 -1, i32 %228, i32 %230, %struct._IO_FILE* %14) #20, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %231, metadata !1730, metadata !DIExpression()) #20, !dbg !1790
  %232 = icmp slt i64 %231, 0, !dbg !1791
  br i1 %232, label %149, label %156, !dbg !1793

233:                                              ; preds = %224, %218, %140
  %234 = phi %struct.field_range_pair* [ %220, %218 ], [ %225, %224 ], [ %141, %140 ], !dbg !1785
  %235 = phi i64 [ 2, %218 ], [ 2, %224 ], [ %135, %140 ], !dbg !1862
  %236 = phi i8 [ %219, %218 ], [ %219, %224 ], [ %136, %140 ], !dbg !1863
  %237 = phi i32 [ 0, %218 ], [ 0, %224 ], [ %137, %140 ], !dbg !1864
  call void @llvm.dbg.value(metadata i32 %237, metadata !1726, metadata !DIExpression()) #20, !dbg !1766
  call void @llvm.dbg.value(metadata i8 %236, metadata !1728, metadata !DIExpression()) #20, !dbg !1766
  call void @llvm.dbg.value(metadata i32 %237, metadata !1754, metadata !DIExpression()) #20, !dbg !1865
  call void @llvm.dbg.value(metadata i64 %235, metadata !1727, metadata !DIExpression()) #20, !dbg !1766
  call void @llvm.dbg.value(metadata i64 %235, metadata !1702, metadata !DIExpression()) #20, !dbg !1866
  %238 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %234, i64 0, i32 0, !dbg !1867
  %239 = load i64, i64* %238, align 8, !dbg !1867, !tbaa !1706
  %240 = icmp ugt i64 %239, %235, !dbg !1868
  br i1 %240, label %286, label %241, !dbg !1869

241:                                              ; preds = %233
  %242 = and i8 %236, 1, !dbg !1870
  %243 = icmp eq i8 %242, 0, !dbg !1870
  br i1 %243, label %249, label %244, !dbg !1871

244:                                              ; preds = %241
  %245 = load i64, i64* @output_delimiter_length, align 8, !dbg !1872, !tbaa !1491
  %246 = load i8*, i8** @output_delimiter_string, align 8, !dbg !1872, !tbaa !1386
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1872, !tbaa !1386
  %248 = tail call i64 @fwrite_unlocked(i8* %246, i64 1, i64 %245, %struct._IO_FILE* %247) #20, !dbg !1872
  br label %249, !dbg !1872

249:                                              ; preds = %244, %241
  br label %250, !dbg !1873

250:                                              ; preds = %285, %249
  %251 = phi i32 [ %237, %249 ], [ %262, %285 ], !dbg !1865
  call void @llvm.dbg.value(metadata i32 %251, metadata !1754, metadata !DIExpression()) #20, !dbg !1865
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1644, metadata !DIExpression()) #20, !dbg !1874
  %252 = load i8*, i8** %18, align 8, !dbg !1876, !tbaa !1648
  %253 = load i8*, i8** %115, align 8, !dbg !1876, !tbaa !1651
  %254 = icmp ult i8* %252, %253, !dbg !1876
  br i1 %254, label %257, label %255, !dbg !1876, !prof !1652, !misexpect !1653

255:                                              ; preds = %250
  %256 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #20, !dbg !1876
  br label %261, !dbg !1876

257:                                              ; preds = %250
  %258 = getelementptr inbounds i8, i8* %252, i64 1, !dbg !1876
  store i8* %258, i8** %18, align 8, !dbg !1876, !tbaa !1648
  %259 = load i8, i8* %252, align 1, !dbg !1876, !tbaa !1446
  %260 = zext i8 %259 to i32, !dbg !1876
  br label %261, !dbg !1876

261:                                              ; preds = %257, %255
  %262 = phi i32 [ %256, %255 ], [ %260, %257 ], !dbg !1876
  call void @llvm.dbg.value(metadata i32 %262, metadata !1726, metadata !DIExpression()) #20, !dbg !1766
  %263 = load i8, i8* @delim, align 1, !dbg !1877, !tbaa !1446
  %264 = zext i8 %263 to i32, !dbg !1877
  %265 = icmp eq i32 %262, %264, !dbg !1878
  br i1 %265, label %308, label %266, !dbg !1879

266:                                              ; preds = %261
  %267 = load i1, i1* @line_delim, align 1, !dbg !1880
  %268 = select i1 %267, i32 0, i32 10, !dbg !1880
  %269 = icmp ne i32 %262, %268, !dbg !1881
  %270 = icmp ne i32 %262, -1, !dbg !1882
  %271 = and i1 %270, %269, !dbg !1883
  br i1 %271, label %272, label %308, !dbg !1883

272:                                              ; preds = %266
  call void @llvm.dbg.value(metadata i32 %262, metadata !1658, metadata !DIExpression()) #20, !dbg !1884
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1887, !tbaa !1386
  %274 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %273, i64 0, i32 5, !dbg !1887
  %275 = load i8*, i8** %274, align 8, !dbg !1887, !tbaa !1667
  %276 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %273, i64 0, i32 6, !dbg !1887
  %277 = load i8*, i8** %276, align 8, !dbg !1887, !tbaa !1668
  %278 = icmp ult i8* %275, %277, !dbg !1887
  br i1 %278, label %282, label %279, !dbg !1887, !prof !1652, !misexpect !1653

279:                                              ; preds = %272
  %280 = and i32 %262, 255, !dbg !1887
  %281 = tail call i32 @__overflow(%struct._IO_FILE* %273, i32 %280) #20, !dbg !1887
  br label %285, !dbg !1887

282:                                              ; preds = %272
  %283 = trunc i32 %262 to i8, !dbg !1887
  %284 = getelementptr inbounds i8, i8* %275, i64 1, !dbg !1887
  store i8* %284, i8** %274, align 8, !dbg !1887, !tbaa !1667
  store i8 %283, i8* %275, align 1, !dbg !1887, !tbaa !1446
  br label %285, !dbg !1887

285:                                              ; preds = %282, %279
  br label %250, !dbg !1865, !llvm.loop !1888

286:                                              ; preds = %233, %302
  %287 = phi i32 [ %298, %302 ], [ %237, %233 ], !dbg !1865
  call void @llvm.dbg.value(metadata i32 %287, metadata !1754, metadata !DIExpression()) #20, !dbg !1865
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1644, metadata !DIExpression()) #20, !dbg !1890
  %288 = load i8*, i8** %18, align 8, !dbg !1893, !tbaa !1648
  %289 = load i8*, i8** %115, align 8, !dbg !1893, !tbaa !1651
  %290 = icmp ult i8* %288, %289, !dbg !1893
  br i1 %290, label %293, label %291, !dbg !1893, !prof !1652, !misexpect !1653

291:                                              ; preds = %286
  %292 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #20, !dbg !1893
  br label %297, !dbg !1893

293:                                              ; preds = %286
  %294 = getelementptr inbounds i8, i8* %288, i64 1, !dbg !1893
  store i8* %294, i8** %18, align 8, !dbg !1893, !tbaa !1648
  %295 = load i8, i8* %288, align 1, !dbg !1893, !tbaa !1446
  %296 = zext i8 %295 to i32, !dbg !1893
  br label %297, !dbg !1893

297:                                              ; preds = %293, %291
  %298 = phi i32 [ %292, %291 ], [ %296, %293 ], !dbg !1893
  call void @llvm.dbg.value(metadata i32 %298, metadata !1726, metadata !DIExpression()) #20, !dbg !1766
  %299 = load i8, i8* @delim, align 1, !dbg !1894, !tbaa !1446
  %300 = zext i8 %299 to i32, !dbg !1894
  %301 = icmp eq i32 %298, %300, !dbg !1895
  br i1 %301, label %308, label %302, !dbg !1896

302:                                              ; preds = %297
  %303 = load i1, i1* @line_delim, align 1, !dbg !1897
  %304 = select i1 %303, i32 0, i32 10, !dbg !1897
  %305 = icmp ne i32 %298, %304, !dbg !1898
  %306 = icmp ne i32 %298, -1, !dbg !1899
  %307 = and i1 %306, %305, !dbg !1900
  br i1 %307, label %286, label %308, !dbg !1900, !llvm.loop !1901

308:                                              ; preds = %261, %266, %297, %302
  %309 = phi i8 [ %299, %302 ], [ %299, %297 ], [ %263, %266 ], [ %263, %261 ]
  %310 = phi i32 [ %287, %302 ], [ %287, %297 ], [ %251, %266 ], [ %251, %261 ], !dbg !1904
  %311 = phi i8 [ %236, %302 ], [ %236, %297 ], [ 1, %266 ], [ 1, %261 ], !dbg !1766
  %312 = phi i32 [ %298, %302 ], [ %298, %297 ], [ %262, %266 ], [ %262, %261 ], !dbg !1905
  %313 = zext i8 %309 to i32, !dbg !1906
  call void @llvm.dbg.value(metadata i32 %312, metadata !1726, metadata !DIExpression()) #20, !dbg !1766
  call void @llvm.dbg.value(metadata i8 %311, metadata !1728, metadata !DIExpression()) #20, !dbg !1766
  call void @llvm.dbg.value(metadata i32 %310, metadata !1754, metadata !DIExpression()) #20, !dbg !1865
  %314 = load i1, i1* @line_delim, align 1, !dbg !1907
  %315 = select i1 %314, i32 0, i32 10, !dbg !1907
  %316 = icmp eq i32 %315, %313, !dbg !1908
  %317 = icmp eq i32 %312, %313, !dbg !1909
  %318 = and i1 %317, %316, !dbg !1910
  br i1 %318, label %319, label %340, !dbg !1910

319:                                              ; preds = %308
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1644, metadata !DIExpression()) #20, !dbg !1911
  %320 = load i8*, i8** %18, align 8, !dbg !1913, !tbaa !1648
  %321 = load i8*, i8** %115, align 8, !dbg !1913, !tbaa !1651
  %322 = icmp ult i8* %320, %321, !dbg !1913
  br i1 %322, label %323, label %327, !dbg !1913, !prof !1652, !misexpect !1653

323:                                              ; preds = %319
  %324 = getelementptr inbounds i8, i8* %320, i64 1, !dbg !1913
  store i8* %324, i8** %18, align 8, !dbg !1913, !tbaa !1648
  %325 = load i8, i8* %320, align 1, !dbg !1913, !tbaa !1446
  %326 = zext i8 %325 to i32, !dbg !1913
  call void @llvm.dbg.value(metadata i32 %328, metadata !1763, metadata !DIExpression()) #20, !dbg !1914
  br label %335, !dbg !1915

327:                                              ; preds = %319
  %328 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #20, !dbg !1913
  call void @llvm.dbg.value(metadata i32 %328, metadata !1763, metadata !DIExpression()) #20, !dbg !1914
  %329 = icmp eq i32 %328, -1, !dbg !1916
  br i1 %329, label %330, label %335, !dbg !1915

330:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i32 %312, metadata !1726, metadata !DIExpression()) #20, !dbg !1766
  %331 = load i8, i8* @delim, align 1, !dbg !1918, !tbaa !1446
  %332 = zext i8 %331 to i32, !dbg !1918
  %333 = load i1, i1* @line_delim, align 1, !dbg !1920
  %334 = select i1 %333, i32 0, i32 10, !dbg !1920
  br label %357, !dbg !1922

335:                                              ; preds = %327, %323
  %336 = phi i32 [ %326, %323 ], [ %328, %327 ]
  %337 = tail call i32 @ungetc(i32 %336, %struct._IO_FILE* nonnull %14) #20, !dbg !1923
  %338 = load i8, i8* @delim, align 1, !dbg !1918, !tbaa !1446
  %339 = zext i8 %338 to i32, !dbg !1918
  br label %340, !dbg !1923

340:                                              ; preds = %335, %308
  %341 = phi i32 [ %339, %335 ], [ %313, %308 ], !dbg !1918
  call void @llvm.dbg.value(metadata i32 %312, metadata !1726, metadata !DIExpression()) #20, !dbg !1766
  %342 = icmp eq i32 %312, %341, !dbg !1924
  br i1 %342, label %343, label %351, !dbg !1925

343:                                              ; preds = %340
  %344 = add i64 %235, 1, !dbg !1926
  %345 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1928, !tbaa !1386
  %346 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %345, i64 0, i32 1, !dbg !1929
  %347 = load i64, i64* %346, align 8, !dbg !1929, !tbaa !1691
  %348 = icmp ugt i64 %344, %347, !dbg !1930
  br i1 %348, label %349, label %389, !dbg !1931

349:                                              ; preds = %343
  %350 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %345, i64 1, !dbg !1932
  store %struct.field_range_pair* %350, %struct.field_range_pair** @current_rp, align 8, !dbg !1932, !tbaa !1386
  br label %389, !dbg !1933

351:                                              ; preds = %340
  %352 = load i1, i1* @line_delim, align 1, !dbg !1920
  %353 = select i1 %352, i32 0, i32 10, !dbg !1920
  %354 = icmp eq i32 %312, %353, !dbg !1934
  %355 = icmp eq i32 %312, -1, !dbg !1935
  %356 = or i1 %355, %354, !dbg !1922
  br i1 %356, label %357, label %389, !dbg !1922

357:                                              ; preds = %351, %330
  %358 = phi i1 [ true, %330 ], [ %355, %351 ]
  %359 = phi i32 [ %334, %330 ], [ %353, %351 ]
  %360 = phi i32 [ -1, %330 ], [ %312, %351 ]
  %361 = phi i32 [ %332, %330 ], [ %341, %351 ]
  %362 = and i8 %311, 1, !dbg !1936
  %363 = icmp eq i8 %362, 0, !dbg !1936
  br i1 %363, label %364, label %368, !dbg !1939

364:                                              ; preds = %357
  %365 = load i1, i1* @suppress_non_delimited, align 1, !dbg !1940
  call void @llvm.dbg.value(metadata i64 %235, metadata !1727, metadata !DIExpression()) #20, !dbg !1766
  %366 = icmp eq i64 %235, 1, !dbg !1941
  %367 = and i1 %366, %365, !dbg !1942
  br i1 %367, label %386, label %368, !dbg !1942

368:                                              ; preds = %364, %357
  %369 = icmp eq i32 %360, %359, !dbg !1943
  %370 = icmp ne i32 %310, %359, !dbg !1946
  %371 = or i1 %370, %369, !dbg !1947
  %372 = icmp eq i32 %359, %361, !dbg !1948
  %373 = or i1 %371, %372, !dbg !1947
  br i1 %373, label %374, label %386, !dbg !1947

374:                                              ; preds = %368
  call void @llvm.dbg.value(metadata i32 %353, metadata !1658, metadata !DIExpression()) #20, !dbg !1949
  %375 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1951, !tbaa !1386
  %376 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %375, i64 0, i32 5, !dbg !1951
  %377 = load i8*, i8** %376, align 8, !dbg !1951, !tbaa !1667
  %378 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %375, i64 0, i32 6, !dbg !1951
  %379 = load i8*, i8** %378, align 8, !dbg !1951, !tbaa !1668
  %380 = icmp ult i8* %377, %379, !dbg !1951
  br i1 %380, label %383, label %381, !dbg !1951, !prof !1652, !misexpect !1653

381:                                              ; preds = %374
  %382 = tail call i32 @__overflow(%struct._IO_FILE* %375, i32 %359) #20, !dbg !1951
  br label %386, !dbg !1951

383:                                              ; preds = %374
  %384 = trunc i32 %359 to i8, !dbg !1951
  %385 = getelementptr inbounds i8, i8* %377, i64 1, !dbg !1951
  store i8* %385, i8** %376, align 8, !dbg !1951, !tbaa !1667
  store i8 %384, i8* %377, align 1, !dbg !1951, !tbaa !1446
  br label %386, !dbg !1951

386:                                              ; preds = %383, %381, %368, %364
  br i1 %358, label %393, label %387, !dbg !1952

387:                                              ; preds = %386
  call void @llvm.dbg.value(metadata i64 1, metadata !1727, metadata !DIExpression()) #20, !dbg !1766
  %388 = load i64, i64* bitcast (%struct.field_range_pair** @frp to i64*), align 8, !dbg !1953, !tbaa !1386
  store i64 %388, i64* bitcast (%struct.field_range_pair** @current_rp to i64*), align 8, !dbg !1954, !tbaa !1386
  call void @llvm.dbg.value(metadata i8 0, metadata !1728, metadata !DIExpression()) #20, !dbg !1766
  br label %389, !dbg !1955

389:                                              ; preds = %387, %351, %349, %343
  %390 = phi i64 [ 1, %387 ], [ %235, %351 ], [ %344, %343 ], [ %344, %349 ]
  %391 = phi i8 [ 0, %387 ], [ %311, %351 ], [ %311, %343 ], [ %311, %349 ]
  %392 = phi i32 [ %360, %387 ], [ %312, %351 ], [ %312, %343 ], [ %312, %349 ]
  br label %134, !dbg !1766

393:                                              ; preds = %386, %60, %69, %71, %122, %149
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1798, metadata !DIExpression()), !dbg !1956
  %394 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 0, !dbg !1959
  %395 = load i32, i32* %394, align 8, !dbg !1959, !tbaa !1805
  %396 = and i32 %395, 32, !dbg !1959
  %397 = icmp eq i32 %396, 0, !dbg !1960
  br i1 %397, label %402, label %398, !dbg !1961

398:                                              ; preds = %393
  %399 = tail call i32* @__errno_location() #27, !dbg !1962
  %400 = load i32, i32* %399, align 4, !dbg !1962, !tbaa !1544
  %401 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #20, !dbg !1964
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %400, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* %401) #20, !dbg !1965
  br label %413, !dbg !1966

402:                                              ; preds = %393
  %403 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #24, !dbg !1967
  %404 = icmp eq i32 %403, 0, !dbg !1967
  br i1 %404, label %405, label %406, !dbg !1969

405:                                              ; preds = %402
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %14) #20, !dbg !1970
  br label %413, !dbg !1970

406:                                              ; preds = %402
  %407 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %14) #20, !dbg !1971
  %408 = icmp eq i32 %407, -1, !dbg !1973
  br i1 %408, label %409, label %413, !dbg !1974

409:                                              ; preds = %406
  %410 = tail call i32* @__errno_location() #27, !dbg !1975
  %411 = load i32, i32* %410, align 4, !dbg !1975, !tbaa !1544
  %412 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #20, !dbg !1977
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %411, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* %412) #20, !dbg !1978
  br label %413, !dbg !1979

413:                                              ; preds = %405, %406, %409, %398, %9
  %414 = phi i1 [ false, %398 ], [ false, %409 ], [ false, %9 ], [ true, %406 ], [ true, %405 ], !dbg !1584
  ret i1 %414, !dbg !1980
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !174 i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !181 i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !190 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !171 void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_fields(i8* %0, i32 %1) local_unnamed_addr #8 !dbg !315 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !317, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i32 %1, metadata !318, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i64 1, metadata !319, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i64 0, metadata !320, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8 0, metadata !321, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8 0, metadata !322, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8 0, metadata !323, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8 0, metadata !324, metadata !DIExpression()), !dbg !1981
  %3 = and i32 %1, 1, !dbg !1982
  %4 = icmp ne i32 %3, 0, !dbg !1982
  br i1 %4, label %5, label %12, !dbg !1984

5:                                                ; preds = %2
  %6 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0)) #24, !dbg !1985
  %7 = icmp eq i32 %6, 0, !dbg !1985
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1986
  %9 = zext i1 %7 to i64, !dbg !1988
  %10 = zext i1 %7 to i8, !dbg !1988
  %11 = select i1 %7, i8* %8, i8* %0, !dbg !1988
  br label %12, !dbg !1988

12:                                               ; preds = %5, %2
  %13 = phi i64 [ %9, %5 ], [ 0, %2 ]
  %14 = phi i8 [ %10, %5 ], [ 0, %2 ]
  %15 = phi i8* [ %11, %5 ], [ %0, %2 ]
  br label %16, !dbg !1989

16:                                               ; preds = %12, %238
  %17 = phi i64 [ %239, %238 ], [ %13, %12 ], !dbg !1981
  %18 = phi i8 [ %240, %238 ], [ %14, %12 ], !dbg !1990
  %19 = phi i8 [ %241, %238 ], [ 0, %12 ], !dbg !1991
  %20 = phi i8 [ %242, %238 ], [ %14, %12 ], !dbg !1981
  %21 = phi i1 [ %243, %238 ], [ false, %12 ], !dbg !1981
  %22 = phi i64 [ %244, %238 ], [ 1, %12 ], !dbg !1981
  %23 = phi i8* [ %245, %238 ], [ %15, %12 ], !dbg !1981
  call void @llvm.dbg.value(metadata i64 %17, metadata !320, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8* %23, metadata !317, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i64 %22, metadata !319, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8 undef, metadata !324, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8 %20, metadata !323, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8 %19, metadata !322, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8 %18, metadata !321, metadata !DIExpression()), !dbg !1981
  %24 = load i8, i8* %23, align 1, !dbg !1992, !tbaa !1446
  switch i8 %24, label %46 [
    i8 45, label %25
    i8 44, label %56
  ], !dbg !1993

25:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 0, metadata !324, metadata !DIExpression()), !dbg !1981
  %26 = and i8 %20, 1, !dbg !1994
  %27 = icmp eq i8 %26, 0, !dbg !1994
  br i1 %27, label %33, label %28, !dbg !1997

28:                                               ; preds = %25
  %29 = and i32 %1, 4, !dbg !1998
  %30 = icmp eq i32 %29, 0, !dbg !1998
  %31 = select i1 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2.59, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.60, i64 0, i64 0), !dbg !1998
  %32 = tail call i8* @dcgettext(i8* null, i8* %31, i32 5) #20, !dbg !1998
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %32) #20, !dbg !1998
  tail call void @usage(i32 1) #25, !dbg !1998
  unreachable, !dbg !1998

33:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i8 1, metadata !323, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8* %23, metadata !317, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1981
  %34 = and i8 %18, 1, !dbg !2000
  %35 = icmp ne i8 %34, 0, !dbg !2000
  %36 = xor i1 %35, true, !dbg !2002
  %37 = icmp ne i64 %17, 0, !dbg !2003
  %38 = or i1 %37, %36, !dbg !2002
  br i1 %38, label %44, label %39, !dbg !2002

39:                                               ; preds = %33
  %40 = and i32 %1, 4, !dbg !2004
  %41 = icmp eq i32 %40, 0, !dbg !2004
  %42 = select i1 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.61, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.62, i64 0, i64 0), !dbg !2004
  %43 = tail call i8* @dcgettext(i8* null, i8* %42, i32 5) #20, !dbg !2004
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %43) #20, !dbg !2004
  tail call void @usage(i32 1) #25, !dbg !2004
  unreachable, !dbg !2004

44:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i8* %23, metadata !317, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1981
  %45 = select i1 %35, i64 %17, i64 1, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %45, metadata !319, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i64 0, metadata !320, metadata !DIExpression()), !dbg !1981
  br label %238, !dbg !2007

46:                                               ; preds = %16
  %47 = tail call i16** @__ctype_b_loc() #27, !dbg !2008
  %48 = load i16*, i16** %47, align 8, !dbg !2008, !tbaa !1386
  %49 = zext i8 %24 to i64, !dbg !2008
  %50 = getelementptr inbounds i16, i16* %48, i64 %49, !dbg !2008
  %51 = load i16, i16* %50, align 2, !dbg !2008, !tbaa !2009
  %52 = and i16 %51, 1, !dbg !2008
  %53 = icmp ne i16 %52, 0, !dbg !2008
  %54 = icmp eq i8 %24, 0, !dbg !2010
  %55 = or i1 %54, %53, !dbg !2011
  br i1 %55, label %56, label %199, !dbg !2011

56:                                               ; preds = %46, %16
  call void @llvm.dbg.value(metadata i8 0, metadata !324, metadata !DIExpression()), !dbg !1981
  %57 = and i8 %20, 1, !dbg !2012
  %58 = icmp eq i8 %57, 0, !dbg !2012
  br i1 %58, label %148, label %59, !dbg !2015

59:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8 0, metadata !323, metadata !DIExpression()), !dbg !1981
  %60 = or i8 %19, %18, !dbg !2016
  %61 = and i8 %60, 1, !dbg !2016
  %62 = icmp ne i8 %61, 0, !dbg !2016
  %63 = or i1 %4, %62, !dbg !2016
  %64 = select i1 %62, i64 %22, i64 1, !dbg !2016
  br i1 %63, label %67, label %65, !dbg !2016

65:                                               ; preds = %59
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.63, i64 0, i64 0), i32 5) #20, !dbg !2019
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %66) #20, !dbg !2019
  tail call void @usage(i32 1) #25, !dbg !2019
  unreachable, !dbg !2019

67:                                               ; preds = %59
  %68 = and i8 %19, 1, !dbg !2023
  %69 = icmp eq i8 %68, 0, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %64, metadata !319, metadata !DIExpression()), !dbg !1981
  br i1 %69, label %70, label %107, !dbg !2024

70:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i64 %64, metadata !2025, metadata !DIExpression()) #20, !dbg !2031
  call void @llvm.dbg.value(metadata i64 -1, metadata !2030, metadata !DIExpression()) #20, !dbg !2031
  %71 = load i64, i64* @n_frp, align 8, !dbg !2035, !tbaa !1491
  %72 = load i64, i64* @n_frp_allocated, align 8, !dbg !2037, !tbaa !1491
  %73 = icmp eq i64 %71, %72, !dbg !2038
  br i1 %73, label %77, label %74, !dbg !2039

74:                                               ; preds = %70
  %75 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !2040, !tbaa !1386
  %76 = bitcast %struct.field_range_pair* %75 to i8*, !dbg !2039
  br label %98, !dbg !2039

77:                                               ; preds = %70
  %78 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !2041, !tbaa !1386
  call void @llvm.dbg.value(metadata i8* %78, metadata !277, metadata !DIExpression()) #20, !dbg !2042
  call void @llvm.dbg.value(metadata i64* @n_frp_allocated, metadata !278, metadata !DIExpression()) #20, !dbg !2042
  call void @llvm.dbg.value(metadata i64 16, metadata !279, metadata !DIExpression()) #20, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %72, metadata !280, metadata !DIExpression()) #20, !dbg !2042
  %79 = icmp eq i8* %78, null, !dbg !2044
  br i1 %79, label %80, label %85, !dbg !2046

80:                                               ; preds = %77
  %81 = icmp eq i64 %71, 0, !dbg !2047
  br i1 %81, label %92, label %82, !dbg !2050

82:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i64 %72, metadata !280, metadata !DIExpression()) #20, !dbg !2042
  %83 = icmp ugt i64 %71, 576460752303423487, !dbg !2051
  br i1 %83, label %84, label %92, !dbg !2053

84:                                               ; preds = %82
  tail call void @xalloc_die() #25, !dbg !2054
  unreachable, !dbg !2054

85:                                               ; preds = %77
  %86 = icmp ult i64 %71, 384307168202282325, !dbg !2055
  br i1 %86, label %88, label %87, !dbg !2058

87:                                               ; preds = %85
  tail call void @xalloc_die() #25, !dbg !2059
  unreachable, !dbg !2059

88:                                               ; preds = %85
  %89 = lshr i64 %71, 1, !dbg !2060
  %90 = add nuw nsw i64 %71, 1, !dbg !2061
  %91 = add nuw nsw i64 %90, %89, !dbg !2062
  call void @llvm.dbg.value(metadata i64 %91, metadata !280, metadata !DIExpression()) #20, !dbg !2042
  br label %92

92:                                               ; preds = %88, %82, %80
  %93 = phi i64 [ %91, %88 ], [ %71, %82 ], [ 8, %80 ], !dbg !2042
  call void @llvm.dbg.value(metadata i64 %93, metadata !280, metadata !DIExpression()) #20, !dbg !2042
  store i64 %93, i64* @n_frp_allocated, align 8, !dbg !2063, !tbaa !1491
  %94 = shl nuw nsw i64 %93, 4, !dbg !2064
  %95 = tail call i8* @xrealloc(i8* %78, i64 %94) #20, !dbg !2065
  store i8* %95, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !2066, !tbaa !1386
  %96 = bitcast i8* %95 to %struct.field_range_pair*, !dbg !2067
  %97 = load i64, i64* @n_frp, align 8, !dbg !2068, !tbaa !1491
  br label %98, !dbg !2067

98:                                               ; preds = %74, %92
  %99 = phi i8* [ %76, %74 ], [ %95, %92 ]
  %100 = phi i64 [ %71, %74 ], [ %97, %92 ], !dbg !2068
  %101 = phi %struct.field_range_pair* [ %75, %74 ], [ %96, %92 ], !dbg !2040
  %102 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %101, i64 %100, i32 0, !dbg !2069
  store i64 %64, i64* %102, align 8, !dbg !2070, !tbaa !1706
  %103 = load i64, i64* @n_frp, align 8, !dbg !2071, !tbaa !1491
  %104 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %101, i64 %103, i32 1, !dbg !2072
  store i64 -1, i64* %104, align 8, !dbg !2073, !tbaa !1691
  %105 = load i64, i64* @n_frp, align 8, !dbg !2074, !tbaa !1491
  %106 = add i64 %105, 1, !dbg !2074
  br label %192, !dbg !2075

107:                                              ; preds = %67
  %108 = icmp ult i64 %17, %64, !dbg !2076
  br i1 %108, label %109, label %111, !dbg !2079

109:                                              ; preds = %107
  %110 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6.64, i64 0, i64 0), i32 5) #20, !dbg !2080
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %110) #20, !dbg !2080
  tail call void @usage(i32 1) #25, !dbg !2080
  unreachable, !dbg !2080

111:                                              ; preds = %107
  call void @llvm.dbg.value(metadata i64 %64, metadata !2025, metadata !DIExpression()) #20, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %17, metadata !2030, metadata !DIExpression()) #20, !dbg !2082
  %112 = load i64, i64* @n_frp, align 8, !dbg !2084, !tbaa !1491
  %113 = load i64, i64* @n_frp_allocated, align 8, !dbg !2085, !tbaa !1491
  %114 = icmp eq i64 %112, %113, !dbg !2086
  br i1 %114, label %118, label %115, !dbg !2087

115:                                              ; preds = %111
  %116 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !2088, !tbaa !1386
  %117 = bitcast %struct.field_range_pair* %116 to i8*, !dbg !2087
  br label %139, !dbg !2087

118:                                              ; preds = %111
  %119 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !2089, !tbaa !1386
  call void @llvm.dbg.value(metadata i8* %119, metadata !277, metadata !DIExpression()) #20, !dbg !2090
  call void @llvm.dbg.value(metadata i64* @n_frp_allocated, metadata !278, metadata !DIExpression()) #20, !dbg !2090
  call void @llvm.dbg.value(metadata i64 16, metadata !279, metadata !DIExpression()) #20, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %113, metadata !280, metadata !DIExpression()) #20, !dbg !2090
  %120 = icmp eq i8* %119, null, !dbg !2092
  br i1 %120, label %121, label %126, !dbg !2093

121:                                              ; preds = %118
  %122 = icmp eq i64 %112, 0, !dbg !2094
  br i1 %122, label %133, label %123, !dbg !2095

123:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 %113, metadata !280, metadata !DIExpression()) #20, !dbg !2090
  %124 = icmp ugt i64 %112, 576460752303423487, !dbg !2096
  br i1 %124, label %125, label %133, !dbg !2097

125:                                              ; preds = %123
  tail call void @xalloc_die() #25, !dbg !2098
  unreachable, !dbg !2098

126:                                              ; preds = %118
  %127 = icmp ult i64 %112, 384307168202282325, !dbg !2099
  br i1 %127, label %129, label %128, !dbg !2100

128:                                              ; preds = %126
  tail call void @xalloc_die() #25, !dbg !2101
  unreachable, !dbg !2101

129:                                              ; preds = %126
  %130 = lshr i64 %112, 1, !dbg !2102
  %131 = add nuw nsw i64 %112, 1, !dbg !2103
  %132 = add nuw nsw i64 %131, %130, !dbg !2104
  call void @llvm.dbg.value(metadata i64 %132, metadata !280, metadata !DIExpression()) #20, !dbg !2090
  br label %133

133:                                              ; preds = %129, %123, %121
  %134 = phi i64 [ %132, %129 ], [ %112, %123 ], [ 8, %121 ], !dbg !2090
  call void @llvm.dbg.value(metadata i64 %134, metadata !280, metadata !DIExpression()) #20, !dbg !2090
  store i64 %134, i64* @n_frp_allocated, align 8, !dbg !2105, !tbaa !1491
  %135 = shl nuw nsw i64 %134, 4, !dbg !2106
  %136 = tail call i8* @xrealloc(i8* %119, i64 %135) #20, !dbg !2107
  store i8* %136, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !2108, !tbaa !1386
  %137 = bitcast i8* %136 to %struct.field_range_pair*, !dbg !2109
  %138 = load i64, i64* @n_frp, align 8, !dbg !2110, !tbaa !1491
  br label %139, !dbg !2109

139:                                              ; preds = %115, %133
  %140 = phi i8* [ %117, %115 ], [ %136, %133 ]
  %141 = phi i64 [ %112, %115 ], [ %138, %133 ], !dbg !2110
  %142 = phi %struct.field_range_pair* [ %116, %115 ], [ %137, %133 ], !dbg !2088
  %143 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %142, i64 %141, i32 0, !dbg !2111
  store i64 %64, i64* %143, align 8, !dbg !2112, !tbaa !1706
  %144 = load i64, i64* @n_frp, align 8, !dbg !2113, !tbaa !1491
  %145 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %142, i64 %144, i32 1, !dbg !2114
  store i64 %17, i64* %145, align 8, !dbg !2115, !tbaa !1691
  %146 = load i64, i64* @n_frp, align 8, !dbg !2116, !tbaa !1491
  %147 = add i64 %146, 1, !dbg !2116
  br label %192

148:                                              ; preds = %56
  %149 = icmp eq i64 %17, 0, !dbg !2117
  br i1 %149, label %150, label %155, !dbg !2120

150:                                              ; preds = %148
  %151 = and i32 %1, 4, !dbg !2121
  %152 = icmp eq i32 %151, 0, !dbg !2121
  %153 = select i1 %152, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.61, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.62, i64 0, i64 0), !dbg !2121
  %154 = tail call i8* @dcgettext(i8* null, i8* %153, i32 5) #20, !dbg !2121
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %154) #20, !dbg !2121
  tail call void @usage(i32 1) #25, !dbg !2121
  unreachable, !dbg !2121

155:                                              ; preds = %148
  call void @llvm.dbg.value(metadata i64 %17, metadata !2025, metadata !DIExpression()) #20, !dbg !2123
  call void @llvm.dbg.value(metadata i64 %17, metadata !2030, metadata !DIExpression()) #20, !dbg !2123
  %156 = load i64, i64* @n_frp, align 8, !dbg !2125, !tbaa !1491
  %157 = load i64, i64* @n_frp_allocated, align 8, !dbg !2126, !tbaa !1491
  %158 = icmp eq i64 %156, %157, !dbg !2127
  br i1 %158, label %162, label %159, !dbg !2128

159:                                              ; preds = %155
  %160 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !2129, !tbaa !1386
  %161 = bitcast %struct.field_range_pair* %160 to i8*, !dbg !2128
  br label %183, !dbg !2128

162:                                              ; preds = %155
  %163 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !2130, !tbaa !1386
  call void @llvm.dbg.value(metadata i8* %163, metadata !277, metadata !DIExpression()) #20, !dbg !2131
  call void @llvm.dbg.value(metadata i64* @n_frp_allocated, metadata !278, metadata !DIExpression()) #20, !dbg !2131
  call void @llvm.dbg.value(metadata i64 16, metadata !279, metadata !DIExpression()) #20, !dbg !2131
  call void @llvm.dbg.value(metadata i64 %157, metadata !280, metadata !DIExpression()) #20, !dbg !2131
  %164 = icmp eq i8* %163, null, !dbg !2133
  br i1 %164, label %165, label %170, !dbg !2134

165:                                              ; preds = %162
  %166 = icmp eq i64 %156, 0, !dbg !2135
  br i1 %166, label %177, label %167, !dbg !2136

167:                                              ; preds = %165
  call void @llvm.dbg.value(metadata i64 %157, metadata !280, metadata !DIExpression()) #20, !dbg !2131
  %168 = icmp ugt i64 %156, 576460752303423487, !dbg !2137
  br i1 %168, label %169, label %177, !dbg !2138

169:                                              ; preds = %167
  tail call void @xalloc_die() #25, !dbg !2139
  unreachable, !dbg !2139

170:                                              ; preds = %162
  %171 = icmp ult i64 %156, 384307168202282325, !dbg !2140
  br i1 %171, label %173, label %172, !dbg !2141

172:                                              ; preds = %170
  tail call void @xalloc_die() #25, !dbg !2142
  unreachable, !dbg !2142

173:                                              ; preds = %170
  %174 = lshr i64 %156, 1, !dbg !2143
  %175 = add nuw nsw i64 %156, 1, !dbg !2144
  %176 = add nuw nsw i64 %175, %174, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %176, metadata !280, metadata !DIExpression()) #20, !dbg !2131
  br label %177

177:                                              ; preds = %173, %167, %165
  %178 = phi i64 [ %176, %173 ], [ %156, %167 ], [ 8, %165 ], !dbg !2131
  call void @llvm.dbg.value(metadata i64 %178, metadata !280, metadata !DIExpression()) #20, !dbg !2131
  store i64 %178, i64* @n_frp_allocated, align 8, !dbg !2146, !tbaa !1491
  %179 = shl nuw nsw i64 %178, 4, !dbg !2147
  %180 = tail call i8* @xrealloc(i8* %163, i64 %179) #20, !dbg !2148
  store i8* %180, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !2149, !tbaa !1386
  %181 = bitcast i8* %180 to %struct.field_range_pair*, !dbg !2150
  %182 = load i64, i64* @n_frp, align 8, !dbg !2151, !tbaa !1491
  br label %183, !dbg !2150

183:                                              ; preds = %159, %177
  %184 = phi i8* [ %161, %159 ], [ %180, %177 ]
  %185 = phi i64 [ %156, %159 ], [ %182, %177 ], !dbg !2151
  %186 = phi %struct.field_range_pair* [ %160, %159 ], [ %181, %177 ], !dbg !2129
  %187 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %186, i64 %185, i32 0, !dbg !2152
  store i64 %17, i64* %187, align 8, !dbg !2153, !tbaa !1706
  %188 = load i64, i64* @n_frp, align 8, !dbg !2154, !tbaa !1491
  %189 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %186, i64 %188, i32 1, !dbg !2155
  store i64 %17, i64* %189, align 8, !dbg !2156, !tbaa !1691
  %190 = load i64, i64* @n_frp, align 8, !dbg !2157, !tbaa !1491
  %191 = add i64 %190, 1, !dbg !2157
  call void @llvm.dbg.value(metadata i64 0, metadata !320, metadata !DIExpression()), !dbg !1981
  br label %192

192:                                              ; preds = %98, %139, %183
  %193 = phi i64 [ %106, %98 ], [ %147, %139 ], [ %191, %183 ]
  %194 = phi i8* [ %99, %98 ], [ %140, %139 ], [ %184, %183 ]
  %195 = phi i8 [ 0, %98 ], [ 0, %139 ], [ %20, %183 ], !dbg !1981
  %196 = phi i64 [ %64, %98 ], [ %64, %139 ], [ %22, %183 ], !dbg !2158
  store i64 %193, i64* @n_frp, align 8, !dbg !2159, !tbaa !1491
  call void @llvm.dbg.value(metadata i64 0, metadata !320, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i64 %196, metadata !319, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8 %195, metadata !323, metadata !DIExpression()), !dbg !1981
  %197 = load i8, i8* %23, align 1, !dbg !2160, !tbaa !1446
  %198 = icmp eq i8 %197, 0, !dbg !2162
  br i1 %198, label %246, label %238, !dbg !2163

199:                                              ; preds = %46
  %200 = sext i8 %24 to i32, !dbg !2164
  %201 = add nsw i32 %200, -48, !dbg !2165
  %202 = icmp ult i32 %201, 10, !dbg !2165
  br i1 %202, label %203, label %232, !dbg !2166

203:                                              ; preds = %199
  %204 = load i8*, i8** @set_fields.num_start, align 8, !dbg !2167
  %205 = icmp ne i8* %204, null, !dbg !2167
  %206 = and i1 %21, %205, !dbg !2169
  br i1 %206, label %208, label %207, !dbg !2169

207:                                              ; preds = %203
  store i8* %23, i8** @set_fields.num_start, align 8, !dbg !2170, !tbaa !1386
  br label %208, !dbg !2171

208:                                              ; preds = %203, %207
  %209 = phi i8* [ %204, %203 ], [ %23, %207 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !324, metadata !DIExpression()), !dbg !1981
  %210 = and i8 %20, 1, !dbg !2172
  %211 = icmp eq i8 %210, 0, !dbg !2172
  call void @llvm.dbg.value(metadata i8 undef, metadata !322, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8 undef, metadata !321, metadata !DIExpression()), !dbg !1981
  %212 = icmp ugt i64 %17, 1844674407370955161, !dbg !2174
  br i1 %212, label %224, label %213, !dbg !2174

213:                                              ; preds = %208
  %214 = select i1 %211, i8 %19, i8 1
  call void @llvm.dbg.value(metadata i8 %214, metadata !322, metadata !DIExpression()), !dbg !1981
  %215 = select i1 %211, i8 1, i8 %18
  call void @llvm.dbg.value(metadata i8 %215, metadata !321, metadata !DIExpression()), !dbg !1981
  %216 = mul nuw i64 %17, 10, !dbg !2174
  %217 = sext i8 %24 to i64, !dbg !2174
  %218 = add i64 %216, -48, !dbg !2174
  %219 = add i64 %218, %217, !dbg !2174
  %220 = icmp ult i64 %219, %17, !dbg !2174
  %221 = select i1 %220, i64 %17, i64 %219, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %221, metadata !320, metadata !DIExpression()), !dbg !1981
  %222 = icmp eq i64 %221, -1, !dbg !2175
  %223 = or i1 %220, %222, !dbg !2176
  br i1 %223, label %224, label %238, !dbg !2176

224:                                              ; preds = %208, %213
  %225 = tail call i64 @strspn(i8* %209, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7.65, i64 0, i64 0)) #24, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %225, metadata !325, metadata !DIExpression()), !dbg !2178
  %226 = tail call noalias i8* @xstrndup(i8* %209, i64 %225) #20, !dbg !2179
  call void @llvm.dbg.value(metadata i8* %226, metadata !333, metadata !DIExpression()), !dbg !2178
  %227 = and i32 %1, 4, !dbg !2180
  %228 = icmp eq i32 %227, 0, !dbg !2180
  %229 = select i1 %228, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9.66, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8.67, i64 0, i64 0), !dbg !2181
  %230 = tail call i8* @dcgettext(i8* null, i8* %229, i32 5) #20, !dbg !2178
  %231 = tail call i8* @quote(i8* %226) #20, !dbg !2182
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %230, i8* %231) #20, !dbg !2183
  tail call void @free(i8* %226) #20, !dbg !2184
  tail call void @usage(i32 1) #25, !dbg !2185
  unreachable, !dbg !2185

232:                                              ; preds = %199
  call void @llvm.dbg.value(metadata i8* %23, metadata !317, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8* %23, metadata !317, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8* %23, metadata !317, metadata !DIExpression()), !dbg !1981
  %233 = and i32 %1, 4, !dbg !2186
  %234 = icmp eq i32 %233, 0, !dbg !2186
  %235 = select i1 %234, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11.68, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10.69, i64 0, i64 0), !dbg !2188
  %236 = tail call i8* @dcgettext(i8* null, i8* %235, i32 5) #20, !dbg !2189
  %237 = tail call i8* @quote(i8* nonnull %23) #20, !dbg !2190
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %236, i8* %237) #20, !dbg !2191
  tail call void @usage(i32 1) #25, !dbg !2192
  unreachable, !dbg !2192

238:                                              ; preds = %213, %192, %44
  %239 = phi i64 [ 0, %44 ], [ 0, %192 ], [ %221, %213 ], !dbg !1981
  %240 = phi i8 [ %18, %44 ], [ 0, %192 ], [ %215, %213 ], !dbg !1981
  %241 = phi i8 [ %19, %44 ], [ 0, %192 ], [ %214, %213 ], !dbg !1981
  %242 = phi i8 [ 1, %44 ], [ %195, %192 ], [ %20, %213 ], !dbg !1981
  %243 = phi i1 [ false, %44 ], [ false, %192 ], [ true, %213 ], !dbg !2193
  %244 = phi i64 [ %45, %44 ], [ %196, %192 ], [ %22, %213 ], !dbg !1981
  %245 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !2193
  call void @llvm.dbg.value(metadata i64 %239, metadata !320, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8* %245, metadata !317, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i64 %244, metadata !319, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8 undef, metadata !324, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8 %242, metadata !323, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8 %241, metadata !322, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8 %240, metadata !321, metadata !DIExpression()), !dbg !1981
  br label %16, !dbg !1989, !llvm.loop !2194

246:                                              ; preds = %192
  %247 = icmp eq i64 %193, 0, !dbg !2196
  br i1 %247, label %248, label %253, !dbg !2198

248:                                              ; preds = %246
  %249 = and i32 %1, 4, !dbg !2199
  %250 = icmp eq i32 %249, 0, !dbg !2199
  %251 = select i1 %250, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13.70, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12.71, i64 0, i64 0), !dbg !2199
  %252 = tail call i8* @dcgettext(i8* null, i8* %251, i32 5) #20, !dbg !2199
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %252) #20, !dbg !2199
  tail call void @usage(i32 1) #25, !dbg !2199
  unreachable, !dbg !2199

253:                                              ; preds = %246
  tail call void @qsort(i8* %194, i64 %193, i64 16, i32 (i8*, i8*)* nonnull @compare_ranges) #20, !dbg !2201
  call void @llvm.dbg.value(metadata i64 0, metadata !334, metadata !DIExpression()), !dbg !2202
  %254 = load i64, i64* @n_frp, align 8, !dbg !2203, !tbaa !1491
  %255 = icmp eq i64 %254, 0, !dbg !2204
  br i1 %255, label %256, label %260, !dbg !2205

256:                                              ; preds = %298, %253
  %257 = phi i64 [ 0, %253 ], [ %299, %298 ]
  %258 = and i32 %1, 2, !dbg !2206
  %259 = icmp eq i32 %258, 0, !dbg !2206
  br i1 %259, label %418, label %301, !dbg !2208

260:                                              ; preds = %253, %298
  %261 = phi i64 [ %299, %298 ], [ %254, %253 ]
  %262 = phi i64 [ %263, %298 ], [ 0, %253 ]
  call void @llvm.dbg.value(metadata i64 %262, metadata !334, metadata !DIExpression()), !dbg !2202
  %263 = add nuw i64 %262, 1, !dbg !2209
  call void @llvm.dbg.value(metadata i64 %263, metadata !336, metadata !DIExpression()), !dbg !2210
  %264 = icmp ult i64 %263, %261, !dbg !2211
  br i1 %264, label %265, label %298, !dbg !2213

265:                                              ; preds = %260
  %266 = sub i64 1152921504606846974, %262, !dbg !2214
  %267 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !2218, !tbaa !1386
  %268 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %267, i64 %263, i32 0, !dbg !2219
  %269 = load i64, i64* %268, align 8, !dbg !2219, !tbaa !1706
  %270 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %267, i64 %262, i32 1, !dbg !2220
  %271 = load i64, i64* %270, align 8, !dbg !2220, !tbaa !1691
  %272 = icmp ugt i64 %269, %271, !dbg !2221
  br i1 %272, label %298, label %280, !dbg !2222

273:                                              ; preds = %280
  %274 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !2218, !tbaa !1386
  %275 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %274, i64 %263, i32 0, !dbg !2219
  %276 = load i64, i64* %275, align 8, !dbg !2219, !tbaa !1706
  %277 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %274, i64 %262, i32 1, !dbg !2220
  %278 = load i64, i64* %277, align 8, !dbg !2220, !tbaa !1691
  %279 = icmp ugt i64 %276, %278, !dbg !2221
  br i1 %279, label %298, label %280, !dbg !2222, !llvm.loop !2223

280:                                              ; preds = %265, %273
  %281 = phi i64 [ %278, %273 ], [ %271, %265 ]
  %282 = phi i64* [ %277, %273 ], [ %270, %265 ]
  %283 = phi %struct.field_range_pair* [ %274, %273 ], [ %267, %265 ]
  %284 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %283, i64 %263, i32 1, !dbg !2225
  %285 = load i64, i64* %284, align 8, !dbg !2225, !tbaa !1691
  %286 = icmp ugt i64 %285, %281, !dbg !2225
  %287 = select i1 %286, i64 %285, i64 %281, !dbg !2225
  store i64 %287, i64* %282, align 8, !dbg !2226, !tbaa !1691
  %288 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %283, i64 %263, !dbg !2227
  %289 = bitcast %struct.field_range_pair* %288 to i8*, !dbg !2228
  %290 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %288, i64 1, !dbg !2229
  %291 = bitcast %struct.field_range_pair* %290 to i8*, !dbg !2230
  %292 = load i64, i64* @n_frp, align 8, !dbg !2231, !tbaa !1491
  %293 = add i64 %266, %292, !dbg !2232
  %294 = shl i64 %293, 4, !dbg !2233
  call void @llvm.dbg.value(metadata i8* %289, metadata !2234, metadata !DIExpression()) #20, !dbg !2242
  call void @llvm.dbg.value(metadata i8* %291, metadata !2240, metadata !DIExpression()) #20, !dbg !2242
  call void @llvm.dbg.value(metadata i64 %294, metadata !2241, metadata !DIExpression()) #20, !dbg !2242
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 1 %289, i8* nonnull align 1 %291, i64 %294, i1 false) #20, !dbg !2244
  %295 = load i64, i64* @n_frp, align 8, !dbg !2245, !tbaa !1491
  %296 = add i64 %295, -1, !dbg !2245
  store i64 %296, i64* @n_frp, align 8, !dbg !2245, !tbaa !1491
  call void @llvm.dbg.value(metadata i64 %263, metadata !336, metadata !DIExpression()), !dbg !2210
  %297 = icmp ult i64 %263, %296, !dbg !2211
  br i1 %297, label %273, label %298, !dbg !2213, !llvm.loop !2223

298:                                              ; preds = %273, %280, %265, %260
  %299 = phi i64 [ %261, %260 ], [ %261, %265 ], [ %296, %280 ], [ %296, %273 ], !dbg !2203
  call void @llvm.dbg.value(metadata i64 %263, metadata !334, metadata !DIExpression()), !dbg !2202
  %300 = icmp ult i64 %263, %299, !dbg !2204
  br i1 %300, label %260, label %256, !dbg !2205, !llvm.loop !2246

301:                                              ; preds = %256
  %302 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !2248, !tbaa !1386
  call void @llvm.dbg.value(metadata %struct.field_range_pair* %302, metadata !2251, metadata !DIExpression()) #20, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %257, metadata !2252, metadata !DIExpression()) #20, !dbg !2256
  store %struct.field_range_pair* null, %struct.field_range_pair** @frp, align 8, !dbg !2257, !tbaa !1386
  store i64 0, i64* @n_frp, align 8, !dbg !2258, !tbaa !1491
  store i64 0, i64* @n_frp_allocated, align 8, !dbg !2259, !tbaa !1491
  %303 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %302, i64 0, i32 0, !dbg !2260
  %304 = load i64, i64* %303, align 8, !dbg !2260, !tbaa !1706
  %305 = icmp ugt i64 %304, 1, !dbg !2262
  br i1 %305, label %306, label %316, !dbg !2263

306:                                              ; preds = %301
  %307 = add i64 %304, -1, !dbg !2264
  call void @llvm.dbg.value(metadata i64 1, metadata !2025, metadata !DIExpression()) #20, !dbg !2265
  call void @llvm.dbg.value(metadata i64 %307, metadata !2030, metadata !DIExpression()) #20, !dbg !2265
  call void @llvm.dbg.value(metadata i8* null, metadata !277, metadata !DIExpression()) #20, !dbg !2267
  call void @llvm.dbg.value(metadata i64* @n_frp_allocated, metadata !278, metadata !DIExpression()) #20, !dbg !2267
  call void @llvm.dbg.value(metadata i64 16, metadata !279, metadata !DIExpression()) #20, !dbg !2267
  call void @llvm.dbg.value(metadata i64 0, metadata !280, metadata !DIExpression()) #20, !dbg !2267
  call void @llvm.dbg.value(metadata i64 8, metadata !280, metadata !DIExpression()) #20, !dbg !2267
  store i64 8, i64* @n_frp_allocated, align 8, !dbg !2269, !tbaa !1491
  %308 = tail call i8* @xrealloc(i8* null, i64 128) #20, !dbg !2270
  store i8* %308, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !2271, !tbaa !1386
  %309 = bitcast i8* %308 to %struct.field_range_pair*, !dbg !2272
  %310 = load i64, i64* @n_frp, align 8, !dbg !2273, !tbaa !1491
  %311 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %309, i64 %310, i32 0, !dbg !2274
  store i64 1, i64* %311, align 8, !dbg !2275, !tbaa !1706
  %312 = load i64, i64* @n_frp, align 8, !dbg !2276, !tbaa !1491
  %313 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %309, i64 %312, i32 1, !dbg !2277
  store i64 %307, i64* %313, align 8, !dbg !2278, !tbaa !1691
  %314 = load i64, i64* @n_frp, align 8, !dbg !2279, !tbaa !1491
  %315 = add i64 %314, 1, !dbg !2279
  store i64 %315, i64* @n_frp, align 8, !dbg !2279, !tbaa !1491
  br label %316, !dbg !2280

316:                                              ; preds = %306, %301
  %317 = phi %struct.field_range_pair* [ %309, %306 ], [ null, %301 ]
  %318 = phi i8* [ %308, %306 ], [ null, %301 ]
  %319 = phi i64 [ %315, %306 ], [ 0, %301 ]
  call void @llvm.dbg.value(metadata i64 1, metadata !2253, metadata !DIExpression()) #20, !dbg !2281
  %320 = icmp ugt i64 %257, 1, !dbg !2282
  br i1 %320, label %329, label %321, !dbg !2284

321:                                              ; preds = %376, %316
  %322 = phi i8* [ %318, %316 ], [ %378, %376 ]
  %323 = phi %struct.field_range_pair* [ %317, %316 ], [ %377, %376 ]
  %324 = phi i64 [ %319, %316 ], [ %380, %376 ]
  %325 = add i64 %257, -1, !dbg !2285
  %326 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %302, i64 %325, i32 1, !dbg !2287
  %327 = load i64, i64* %326, align 8, !dbg !2287, !tbaa !1691
  %328 = icmp eq i64 %327, -1, !dbg !2288
  br i1 %328, label %415, label %383, !dbg !2289

329:                                              ; preds = %316, %376
  %330 = phi %struct.field_range_pair* [ %377, %376 ], [ %317, %316 ]
  %331 = phi i8* [ %378, %376 ], [ %318, %316 ]
  %332 = phi %struct.field_range_pair* [ %379, %376 ], [ %317, %316 ]
  %333 = phi i64 [ %380, %376 ], [ %319, %316 ]
  %334 = phi i64 [ %381, %376 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %334, metadata !2253, metadata !DIExpression()) #20, !dbg !2281
  %335 = add i64 %334, -1, !dbg !2290
  %336 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %302, i64 %335, i32 1, !dbg !2293
  %337 = load i64, i64* %336, align 8, !dbg !2293, !tbaa !1691
  %338 = add i64 %337, 1, !dbg !2294
  %339 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %302, i64 %334, i32 0, !dbg !2295
  %340 = load i64, i64* %339, align 8, !dbg !2295, !tbaa !1706
  %341 = icmp eq i64 %338, %340, !dbg !2296
  br i1 %341, label %376, label %342, !dbg !2297

342:                                              ; preds = %329
  %343 = add i64 %340, -1, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %338, metadata !2025, metadata !DIExpression()) #20, !dbg !2299
  call void @llvm.dbg.value(metadata i64 %343, metadata !2030, metadata !DIExpression()) #20, !dbg !2299
  %344 = load i64, i64* @n_frp_allocated, align 8, !dbg !2301, !tbaa !1491
  %345 = icmp eq i64 %333, %344, !dbg !2302
  br i1 %345, label %346, label %366, !dbg !2303

346:                                              ; preds = %342
  call void @llvm.dbg.value(metadata i8* %331, metadata !277, metadata !DIExpression()) #20, !dbg !2304
  call void @llvm.dbg.value(metadata i64* @n_frp_allocated, metadata !278, metadata !DIExpression()) #20, !dbg !2304
  call void @llvm.dbg.value(metadata i64 16, metadata !279, metadata !DIExpression()) #20, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %344, metadata !280, metadata !DIExpression()) #20, !dbg !2304
  %347 = icmp eq i8* %331, null, !dbg !2306
  br i1 %347, label %348, label %353, !dbg !2307

348:                                              ; preds = %346
  %349 = icmp eq i64 %333, 0, !dbg !2308
  br i1 %349, label %360, label %350, !dbg !2309

350:                                              ; preds = %348
  call void @llvm.dbg.value(metadata i64 %344, metadata !280, metadata !DIExpression()) #20, !dbg !2304
  %351 = icmp ugt i64 %333, 576460752303423487, !dbg !2310
  br i1 %351, label %352, label %360, !dbg !2311

352:                                              ; preds = %350
  tail call void @xalloc_die() #25, !dbg !2312
  unreachable, !dbg !2312

353:                                              ; preds = %346
  %354 = icmp ult i64 %333, 384307168202282325, !dbg !2313
  br i1 %354, label %356, label %355, !dbg !2314

355:                                              ; preds = %353
  tail call void @xalloc_die() #25, !dbg !2315
  unreachable, !dbg !2315

356:                                              ; preds = %353
  %357 = lshr i64 %333, 1, !dbg !2316
  %358 = add nuw nsw i64 %333, 1, !dbg !2317
  %359 = add nuw nsw i64 %358, %357, !dbg !2318
  call void @llvm.dbg.value(metadata i64 %359, metadata !280, metadata !DIExpression()) #20, !dbg !2304
  br label %360

360:                                              ; preds = %356, %350, %348
  %361 = phi i64 [ %359, %356 ], [ %333, %350 ], [ 8, %348 ], !dbg !2304
  call void @llvm.dbg.value(metadata i64 %361, metadata !280, metadata !DIExpression()) #20, !dbg !2304
  store i64 %361, i64* @n_frp_allocated, align 8, !dbg !2319, !tbaa !1491
  %362 = shl nuw nsw i64 %361, 4, !dbg !2320
  %363 = tail call i8* @xrealloc(i8* %331, i64 %362) #20, !dbg !2321
  store i8* %363, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !2322, !tbaa !1386
  %364 = bitcast i8* %363 to %struct.field_range_pair*, !dbg !2323
  %365 = load i64, i64* @n_frp, align 8, !dbg !2324, !tbaa !1491
  br label %366, !dbg !2323

366:                                              ; preds = %360, %342
  %367 = phi %struct.field_range_pair* [ %364, %360 ], [ %330, %342 ]
  %368 = phi i8* [ %363, %360 ], [ %331, %342 ]
  %369 = phi %struct.field_range_pair* [ %364, %360 ], [ %332, %342 ]
  %370 = phi i64 [ %365, %360 ], [ %333, %342 ], !dbg !2324
  %371 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %369, i64 %370, i32 0, !dbg !2325
  store i64 %338, i64* %371, align 8, !dbg !2326, !tbaa !1706
  %372 = load i64, i64* @n_frp, align 8, !dbg !2327, !tbaa !1491
  %373 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %369, i64 %372, i32 1, !dbg !2328
  store i64 %343, i64* %373, align 8, !dbg !2329, !tbaa !1691
  %374 = load i64, i64* @n_frp, align 8, !dbg !2330, !tbaa !1491
  %375 = add i64 %374, 1, !dbg !2330
  store i64 %375, i64* @n_frp, align 8, !dbg !2330, !tbaa !1491
  br label %376, !dbg !2331

376:                                              ; preds = %366, %329
  %377 = phi %struct.field_range_pair* [ %330, %329 ], [ %367, %366 ]
  %378 = phi i8* [ %331, %329 ], [ %368, %366 ]
  %379 = phi %struct.field_range_pair* [ %332, %329 ], [ %369, %366 ]
  %380 = phi i64 [ %333, %329 ], [ %375, %366 ]
  %381 = add nuw i64 %334, 1, !dbg !2332
  call void @llvm.dbg.value(metadata i64 %381, metadata !2253, metadata !DIExpression()) #20, !dbg !2281
  %382 = icmp eq i64 %381, %257, !dbg !2282
  br i1 %382, label %321, label %329, !dbg !2284, !llvm.loop !2333

383:                                              ; preds = %321
  %384 = add nuw i64 %327, 1, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %384, metadata !2025, metadata !DIExpression()) #20, !dbg !2336
  call void @llvm.dbg.value(metadata i64 -1, metadata !2030, metadata !DIExpression()) #20, !dbg !2336
  %385 = load i64, i64* @n_frp_allocated, align 8, !dbg !2338, !tbaa !1491
  %386 = icmp eq i64 %324, %385, !dbg !2339
  br i1 %386, label %387, label %407, !dbg !2340

387:                                              ; preds = %383
  call void @llvm.dbg.value(metadata i8* %322, metadata !277, metadata !DIExpression()) #20, !dbg !2341
  call void @llvm.dbg.value(metadata i64* @n_frp_allocated, metadata !278, metadata !DIExpression()) #20, !dbg !2341
  call void @llvm.dbg.value(metadata i64 16, metadata !279, metadata !DIExpression()) #20, !dbg !2341
  call void @llvm.dbg.value(metadata i64 %385, metadata !280, metadata !DIExpression()) #20, !dbg !2341
  %388 = icmp eq i8* %322, null, !dbg !2343
  br i1 %388, label %389, label %394, !dbg !2344

389:                                              ; preds = %387
  %390 = icmp eq i64 %324, 0, !dbg !2345
  br i1 %390, label %401, label %391, !dbg !2346

391:                                              ; preds = %389
  call void @llvm.dbg.value(metadata i64 %385, metadata !280, metadata !DIExpression()) #20, !dbg !2341
  %392 = icmp ugt i64 %324, 576460752303423487, !dbg !2347
  br i1 %392, label %393, label %401, !dbg !2348

393:                                              ; preds = %391
  tail call void @xalloc_die() #25, !dbg !2349
  unreachable, !dbg !2349

394:                                              ; preds = %387
  %395 = icmp ult i64 %324, 384307168202282325, !dbg !2350
  br i1 %395, label %397, label %396, !dbg !2351

396:                                              ; preds = %394
  tail call void @xalloc_die() #25, !dbg !2352
  unreachable, !dbg !2352

397:                                              ; preds = %394
  %398 = lshr i64 %324, 1, !dbg !2353
  %399 = add nuw nsw i64 %324, 1, !dbg !2354
  %400 = add nuw nsw i64 %399, %398, !dbg !2355
  call void @llvm.dbg.value(metadata i64 %400, metadata !280, metadata !DIExpression()) #20, !dbg !2341
  br label %401

401:                                              ; preds = %397, %391, %389
  %402 = phi i64 [ %400, %397 ], [ %324, %391 ], [ 8, %389 ], !dbg !2341
  call void @llvm.dbg.value(metadata i64 %402, metadata !280, metadata !DIExpression()) #20, !dbg !2341
  store i64 %402, i64* @n_frp_allocated, align 8, !dbg !2356, !tbaa !1491
  %403 = shl nuw nsw i64 %402, 4, !dbg !2357
  %404 = tail call i8* @xrealloc(i8* %322, i64 %403) #20, !dbg !2358
  store i8* %404, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !2359, !tbaa !1386
  %405 = bitcast i8* %404 to %struct.field_range_pair*, !dbg !2360
  %406 = load i64, i64* @n_frp, align 8, !dbg !2361, !tbaa !1491
  br label %407, !dbg !2360

407:                                              ; preds = %401, %383
  %408 = phi i64 [ %406, %401 ], [ %324, %383 ], !dbg !2361
  %409 = phi %struct.field_range_pair* [ %405, %401 ], [ %323, %383 ], !dbg !2362
  %410 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %409, i64 %408, i32 0, !dbg !2363
  store i64 %384, i64* %410, align 8, !dbg !2364, !tbaa !1706
  %411 = load i64, i64* @n_frp, align 8, !dbg !2365, !tbaa !1491
  %412 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %409, i64 %411, i32 1, !dbg !2366
  store i64 -1, i64* %412, align 8, !dbg !2367, !tbaa !1691
  %413 = load i64, i64* @n_frp, align 8, !dbg !2368, !tbaa !1491
  %414 = add i64 %413, 1, !dbg !2368
  store i64 %414, i64* @n_frp, align 8, !dbg !2368, !tbaa !1491
  br label %415, !dbg !2369

415:                                              ; preds = %321, %407
  %416 = bitcast %struct.field_range_pair* %302 to i8*, !dbg !2370
  tail call void @free(i8* %416) #20, !dbg !2371
  %417 = load i64, i64* @n_frp, align 8, !dbg !2372, !tbaa !1491
  br label %418, !dbg !2373

418:                                              ; preds = %256, %415
  %419 = phi i64 [ %257, %256 ], [ %417, %415 ], !dbg !2372
  %420 = add i64 %419, 1, !dbg !2372
  store i64 %420, i64* @n_frp, align 8, !dbg !2372, !tbaa !1491
  %421 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !2374, !tbaa !1386
  %422 = shl i64 %420, 4, !dbg !2375
  %423 = tail call i8* @xrealloc(i8* %421, i64 %422) #20, !dbg !2376
  %424 = bitcast i8* %423 to %struct.field_range_pair*, !dbg !2376
  store i8* %423, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !2377, !tbaa !1386
  %425 = load i64, i64* @n_frp, align 8, !dbg !2378, !tbaa !1491
  %426 = add i64 %425, -1, !dbg !2379
  %427 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %424, i64 %426, i32 1, !dbg !2380
  store i64 -1, i64* %427, align 8, !dbg !2381, !tbaa !1691
  %428 = load i64, i64* @n_frp, align 8, !dbg !2382, !tbaa !1491
  %429 = add i64 %428, -1, !dbg !2383
  %430 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %424, i64 %429, i32 0, !dbg !2384
  store i64 -1, i64* %430, align 8, !dbg !2385, !tbaa !1706
  ret void, !dbg !2386
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nofree nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define internal i32 @compare_ranges(i8* nocapture readonly %0, i8* nocapture readonly %1) #11 !dbg !2387 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2389, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i8* %1, metadata !2390, metadata !DIExpression()), !dbg !2393
  %3 = bitcast i8* %0 to i64*, !dbg !2394
  %4 = load i64, i64* %3, align 8, !dbg !2394, !tbaa !1706
  %5 = trunc i64 %4 to i32, !dbg !2395
  call void @llvm.dbg.value(metadata i32 %5, metadata !2391, metadata !DIExpression()), !dbg !2393
  %6 = bitcast i8* %1 to i64*, !dbg !2396
  %7 = load i64, i64* %6, align 8, !dbg !2396, !tbaa !1706
  %8 = trunc i64 %7 to i32, !dbg !2397
  call void @llvm.dbg.value(metadata i32 %8, metadata !2392, metadata !DIExpression()), !dbg !2393
  %9 = icmp slt i32 %5, %8, !dbg !2398
  %10 = icmp sgt i32 %5, %8, !dbg !2399
  %11 = zext i1 %10 to i32, !dbg !2399
  %12 = select i1 %9, i32 -1, i32 %11, !dbg !2399
  ret i32 %12, !dbg !2400
}

; Function Attrs: nofree
declare !dbg !297 void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) local_unnamed_addr #12

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @reset_fields() local_unnamed_addr #8 !dbg !2401 {
  store i64 0, i64* @n_frp, align 8, !dbg !2402, !tbaa !1491
  store i64 0, i64* @n_frp_allocated, align 8, !dbg !2403, !tbaa !1491
  %1 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !2404, !tbaa !1386
  tail call void @free(i8* %1) #20, !dbg !2405
  store %struct.field_range_pair* null, %struct.field_range_pair** @frp, align 8, !dbg !2406, !tbaa !1386
  ret void, !dbg !2407
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #13 !dbg !2408 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2410, metadata !DIExpression()), !dbg !2411
  store i8* %0, i8** @file_name, align 8, !dbg !2412, !tbaa !1386
  ret void, !dbg !2413
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #13 !dbg !2414 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2418, metadata !DIExpression()), !dbg !2419
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2420, !tbaa !2421
  ret void, !dbg !2423
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !2424 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2429, !tbaa !1386
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #20, !dbg !2430
  %3 = icmp eq i32 %2, 0, !dbg !2431
  br i1 %3, label %22, label %4, !dbg !2432

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2433, !tbaa !2421, !range !2434
  %6 = icmp eq i8 %5, 0, !dbg !2433
  br i1 %6, label %11, label %7, !dbg !2435

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #27, !dbg !2436
  %9 = load i32, i32* %8, align 4, !dbg !2436, !tbaa !1544
  %10 = icmp eq i32 %9, 32, !dbg !2437
  br i1 %10, label %22, label %11, !dbg !2438

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i64 0, i64 0), i32 5) #20, !dbg !2439
  call void @llvm.dbg.value(metadata i8* %12, metadata !2426, metadata !DIExpression()), !dbg !2440
  %13 = load i8*, i8** @file_name, align 8, !dbg !2441, !tbaa !1386
  %14 = icmp eq i8* %13, null, !dbg !2441
  %15 = tail call i32* @__errno_location() #27, !dbg !2443
  %16 = load i32, i32* %15, align 4, !dbg !2443, !tbaa !1544
  br i1 %14, label %19, label %17, !dbg !2444

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #20, !dbg !2445
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.78, i64 0, i64 0), i8* %18, i8* %12) #20, !dbg !2446
  br label %20, !dbg !2446

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.79, i64 0, i64 0), i8* %12) #20, !dbg !2447
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2448, !tbaa !1544
  tail call void @_exit(i32 %21) #25, !dbg !2449
  unreachable, !dbg !2449

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2450, !tbaa !1386
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #20, !dbg !2452
  %25 = icmp eq i32 %24, 0, !dbg !2453
  br i1 %25, label %28, label %26, !dbg !2454

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2455, !tbaa !1544
  tail call void @_exit(i32 %27) #25, !dbg !2456
  unreachable, !dbg !2456

28:                                               ; preds = %22
  ret void, !dbg !2457
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !2458 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2464, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i64 %1, metadata !2465, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i64 %2, metadata !2466, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32 %3, metadata !2467, metadata !DIExpression()), !dbg !2470
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #20, !dbg !2471
  call void @llvm.dbg.value(metadata i32 %5, metadata !2468, metadata !DIExpression()), !dbg !2472
  ret void, !dbg !2473
}

; Function Attrs: nounwind
declare !dbg !553 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !2474 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2480, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i32 %1, metadata !2481, metadata !DIExpression()), !dbg !2482
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2483
  br i1 %3, label %7, label %4, !dbg !2485

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !2486
  call void @llvm.dbg.value(metadata i32 %5, metadata !2464, metadata !DIExpression()) #20, !dbg !2487
  call void @llvm.dbg.value(metadata i64 0, metadata !2465, metadata !DIExpression()) #20, !dbg !2487
  call void @llvm.dbg.value(metadata i64 0, metadata !2466, metadata !DIExpression()) #20, !dbg !2487
  call void @llvm.dbg.value(metadata i32 %1, metadata !2467, metadata !DIExpression()) #20, !dbg !2487
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #20, !dbg !2489
  call void @llvm.dbg.value(metadata i32 %6, metadata !2468, metadata !DIExpression()) #20, !dbg !2490
  br label %7, !dbg !2491

7:                                                ; preds = %2, %4
  ret void, !dbg !2492
}

; Function Attrs: nofree nounwind
declare !dbg !557 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @getndelim2(i8** nocapture %0, i64* nocapture %1, i64 %2, i64 %3, i32 %4, i32 %5, %struct._IO_FILE* %6) local_unnamed_addr #8 !dbg !2493 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8** %0, metadata !2499, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64* %1, metadata !2500, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %2, metadata !2501, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %3, metadata !2502, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 %4, metadata !2503, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 %5, metadata !2504, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %6, metadata !2505, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 -1, metadata !2508, metadata !DIExpression()), !dbg !2533
  %9 = load i8*, i8** %0, align 8, !dbg !2534, !tbaa !1386
  call void @llvm.dbg.value(metadata i8* %9, metadata !2509, metadata !DIExpression()), !dbg !2533
  %10 = load i64, i64* %1, align 8, !dbg !2535, !tbaa !1491
  call void @llvm.dbg.value(metadata i64 %10, metadata !2510, metadata !DIExpression()), !dbg !2533
  %11 = icmp eq i8* %9, null, !dbg !2536
  br i1 %11, label %12, label %17, !dbg !2538

12:                                               ; preds = %7
  %13 = icmp ult i64 %3, 64, !dbg !2539
  %14 = select i1 %13, i64 %3, i64 64, !dbg !2541
  call void @llvm.dbg.value(metadata i64 %14, metadata !2510, metadata !DIExpression()), !dbg !2533
  %15 = tail call noalias i8* @malloc(i64 %14) #20, !dbg !2542
  call void @llvm.dbg.value(metadata i8* %15, metadata !2509, metadata !DIExpression()), !dbg !2533
  %16 = icmp eq i8* %15, null, !dbg !2543
  br i1 %16, label %156, label %17, !dbg !2545

17:                                               ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !2533
  %19 = phi i64 [ %10, %7 ], [ %14, %12 ], !dbg !2533
  call void @llvm.dbg.value(metadata i64 %19, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %18, metadata !2509, metadata !DIExpression()), !dbg !2533
  %20 = icmp ult i64 %19, %2, !dbg !2546
  br i1 %20, label %143, label %21, !dbg !2548

21:                                               ; preds = %17
  %22 = sub i64 %19, %2, !dbg !2549
  call void @llvm.dbg.value(metadata i64 %22, metadata !2506, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* undef, metadata !2507, metadata !DIExpression()), !dbg !2533
  %23 = icmp ne i64 %22, 0, !dbg !2550
  %24 = icmp ult i64 %19, %3, !dbg !2552
  %25 = or i1 %24, %23, !dbg !2553
  br i1 %25, label %26, label %143, !dbg !2553

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, i8* %18, i64 %2, !dbg !2554
  call void @llvm.dbg.value(metadata i8* %27, metadata !2507, metadata !DIExpression()), !dbg !2533
  %28 = icmp eq i32 %4, -1, !dbg !2555
  %29 = icmp eq i32 %5, -1, !dbg !2557
  %30 = select i1 %29, i32 %4, i32 %5, !dbg !2557
  %31 = select i1 %28, i32 %5, i32 %30, !dbg !2557
  %32 = select i1 %28, i32 %5, i32 %4, !dbg !2557
  call void @llvm.dbg.value(metadata i32 %32, metadata !2503, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 %31, metadata !2504, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 0, metadata !2511, metadata !DIExpression()), !dbg !2533
  %33 = bitcast i64* %8 to i8*, !dbg !2558
  %34 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %6, i64 0, i32 1, !dbg !2559
  %35 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %6, i64 0, i32 2, !dbg !2559
  %36 = icmp eq i32 %32, -1, !dbg !2567
  %37 = xor i64 %2, -9223372036854775808, !dbg !2568
  br label %38, !dbg !2569

38:                                               ; preds = %136, %26
  %39 = phi i8* [ %27, %26 ], [ %130, %136 ], !dbg !2533
  %40 = phi i8* [ %18, %26 ], [ %114, %136 ], !dbg !2533
  %41 = phi i64 [ %19, %26 ], [ %115, %136 ], !dbg !2533
  %42 = phi i8 [ 0, %26 ], [ %79, %136 ], !dbg !2533
  %43 = phi i32 [ undef, %26 ], [ %80, %136 ]
  %44 = phi i64 [ %22, %26 ], [ %131, %136 ], !dbg !2533
  call void @llvm.dbg.value(metadata i64 %44, metadata !2506, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 %43, metadata !2512, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 %42, metadata !2511, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %41, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %39, metadata !2507, metadata !DIExpression()), !dbg !2533
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #20, !dbg !2570
  call void @llvm.dbg.value(metadata i64* %8, metadata !2515, metadata !DIExpression(DW_OP_deref)), !dbg !2558
  %45 = call i8* @freadptr(%struct._IO_FILE* %6, i64* nonnull %8) #20, !dbg !2571
  call void @llvm.dbg.value(metadata i8* %45, metadata !2514, metadata !DIExpression()), !dbg !2558
  %46 = icmp ne i8* %45, null, !dbg !2572
  br i1 %46, label %47, label %57, !dbg !2573

47:                                               ; preds = %38
  %48 = load i64, i64* %8, align 8, !dbg !2558, !tbaa !1491
  br i1 %36, label %77, label %49, !dbg !2574

49:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i64 %48, metadata !2515, metadata !DIExpression()), !dbg !2558
  %50 = call i8* @memchr2(i8* nonnull %45, i32 %32, i32 %31, i64 %48) #24, !dbg !2575
  call void @llvm.dbg.value(metadata i8* %50, metadata !2516, metadata !DIExpression()), !dbg !2576
  %51 = icmp eq i8* %50, null, !dbg !2577
  br i1 %51, label %77, label %52, !dbg !2579

52:                                               ; preds = %49
  %53 = ptrtoint i8* %50 to i64, !dbg !2580
  %54 = ptrtoint i8* %45 to i64, !dbg !2580
  %55 = sub i64 1, %54, !dbg !2580
  %56 = add i64 %55, %53, !dbg !2582
  call void @llvm.dbg.value(metadata i64 %56, metadata !2515, metadata !DIExpression()), !dbg !2558
  store i64 %56, i64* %8, align 8, !dbg !2583, !tbaa !1491
  call void @llvm.dbg.value(metadata i8 1, metadata !2511, metadata !DIExpression()), !dbg !2533
  br label %77, !dbg !2584

57:                                               ; preds = %38
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %6, metadata !2564, metadata !DIExpression()) #20, !dbg !2559
  %58 = load i8*, i8** %34, align 8, !dbg !2585, !tbaa !1648
  %59 = load i8*, i8** %35, align 8, !dbg !2585, !tbaa !1651
  %60 = icmp ult i8* %58, %59, !dbg !2585
  br i1 %60, label %61, label %65, !dbg !2585, !prof !1652, !misexpect !1653

61:                                               ; preds = %57
  %62 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !2585
  store i8* %62, i8** %34, align 8, !dbg !2585, !tbaa !1648
  %63 = load i8, i8* %58, align 1, !dbg !2585, !tbaa !1446
  %64 = zext i8 %63 to i32, !dbg !2585
  call void @llvm.dbg.value(metadata i32 %66, metadata !2512, metadata !DIExpression()), !dbg !2558
  br label %71, !dbg !2586

65:                                               ; preds = %57
  %66 = call i32 @__uflow(%struct._IO_FILE* nonnull %6) #20, !dbg !2585
  call void @llvm.dbg.value(metadata i32 %66, metadata !2512, metadata !DIExpression()), !dbg !2558
  %67 = icmp eq i32 %66, -1, !dbg !2587
  br i1 %67, label %68, label %71, !dbg !2586

68:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i8* %39, metadata !2507, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %41, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %39, metadata !2507, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %41, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %39, metadata !2507, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %41, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %39, metadata !2507, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %41, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %39, metadata !2507, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %41, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %39, metadata !2507, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %41, metadata !2510, metadata !DIExpression()), !dbg !2533
  %69 = icmp eq i8* %39, %40, !dbg !2589
  br i1 %69, label %139, label %70

70:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i64 %44, metadata !2506, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 %80, metadata !2512, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 %79, metadata !2511, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %41, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %39, metadata !2507, metadata !DIExpression()), !dbg !2533
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #20, !dbg !2592
  br label %146

71:                                               ; preds = %61, %65
  %72 = phi i32 [ %64, %61 ], [ %66, %65 ]
  %73 = icmp eq i32 %72, %32, !dbg !2593
  %74 = icmp eq i32 %72, %31, !dbg !2595
  %75 = or i1 %73, %74, !dbg !2596
  %76 = select i1 %75, i8 1, i8 %42, !dbg !2596
  call void @llvm.dbg.value(metadata i8 %76, metadata !2511, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 1, metadata !2515, metadata !DIExpression()), !dbg !2558
  store i64 1, i64* %8, align 8, !dbg !2597, !tbaa !1491
  br label %77

77:                                               ; preds = %47, %52, %49, %71
  %78 = phi i64 [ 1, %71 ], [ %56, %52 ], [ %48, %49 ], [ %48, %47 ], !dbg !2598
  %79 = phi i8 [ %76, %71 ], [ 1, %52 ], [ %42, %49 ], [ %42, %47 ], !dbg !2533
  %80 = phi i32 [ %72, %71 ], [ %43, %52 ], [ %43, %49 ], [ %43, %47 ]
  call void @llvm.dbg.value(metadata i32 %80, metadata !2512, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 %79, metadata !2511, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %78, metadata !2515, metadata !DIExpression()), !dbg !2558
  %81 = add i64 %78, 1, !dbg !2599
  %82 = icmp ult i64 %44, %81, !dbg !2600
  %83 = icmp ult i64 %41, %3, !dbg !2601
  %84 = and i1 %83, %82, !dbg !2602
  br i1 %84, label %85, label %112, !dbg !2602

85:                                               ; preds = %77
  %86 = icmp ult i64 %41, 64, !dbg !2603
  %87 = add i64 %41, 64, !dbg !2604
  %88 = shl i64 %41, 1, !dbg !2604
  %89 = select i1 %86, i64 %87, i64 %88, !dbg !2604
  call void @llvm.dbg.value(metadata i64 %89, metadata !2521, metadata !DIExpression()), !dbg !2605
  %90 = ptrtoint i8* %39 to i64, !dbg !2606
  %91 = ptrtoint i8* %40 to i64, !dbg !2606
  %92 = sub i64 %90, %91, !dbg !2606
  %93 = sub i64 %89, %92, !dbg !2608
  %94 = icmp ult i64 %93, %81, !dbg !2609
  %95 = add i64 %81, %92, !dbg !2610
  %96 = select i1 %94, i64 %95, i64 %89, !dbg !2610
  call void @llvm.dbg.value(metadata i64 %96, metadata !2521, metadata !DIExpression()), !dbg !2605
  %97 = icmp uge i64 %41, %96, !dbg !2611
  %98 = icmp ugt i64 %96, %3, !dbg !2613
  %99 = or i1 %97, %98, !dbg !2614
  %100 = select i1 %99, i64 %3, i64 %96, !dbg !2614
  call void @llvm.dbg.value(metadata i64 %100, metadata !2521, metadata !DIExpression()), !dbg !2605
  %101 = sub i64 %100, %2, !dbg !2615
  %102 = icmp slt i64 %101, 0, !dbg !2616
  br i1 %102, label %103, label %105, !dbg !2617

103:                                              ; preds = %85
  call void @llvm.dbg.value(metadata i64 %37, metadata !2525, metadata !DIExpression()), !dbg !2568
  %104 = icmp eq i64 %41, %37, !dbg !2618
  br i1 %104, label %142, label %105

105:                                              ; preds = %103, %85
  %106 = phi i64 [ %37, %103 ], [ %100, %85 ], !dbg !2620
  call void @llvm.dbg.value(metadata i64 %106, metadata !2521, metadata !DIExpression()), !dbg !2605
  %107 = sub i64 %106, %92, !dbg !2621
  call void @llvm.dbg.value(metadata i64 %107, metadata !2506, metadata !DIExpression()), !dbg !2533
  %108 = call i8* @realloc(i8* %40, i64 %106) #20, !dbg !2622
  call void @llvm.dbg.value(metadata i8* %108, metadata !2524, metadata !DIExpression()), !dbg !2605
  %109 = icmp eq i8* %108, null, !dbg !2623
  %110 = getelementptr inbounds i8, i8* %108, i64 %92, !dbg !2625
  br i1 %109, label %111, label %112

111:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %41, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %41, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %41, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %41, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %41, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %41, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %44, metadata !2506, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 %80, metadata !2512, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 %79, metadata !2511, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %41, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #20, !dbg !2592
  br label %143

112:                                              ; preds = %105, %77
  %113 = phi i8* [ %39, %77 ], [ %110, %105 ], !dbg !2533
  %114 = phi i8* [ %40, %77 ], [ %108, %105 ], !dbg !2533
  %115 = phi i64 [ %41, %77 ], [ %106, %105 ], !dbg !2533
  %116 = phi i64 [ %44, %77 ], [ %107, %105 ], !dbg !2533
  call void @llvm.dbg.value(metadata i64 %116, metadata !2506, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %115, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %114, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %113, metadata !2507, metadata !DIExpression()), !dbg !2533
  %117 = icmp ugt i64 %116, 1, !dbg !2626
  br i1 %117, label %118, label %129, !dbg !2627

118:                                              ; preds = %112
  %119 = add i64 %116, -1, !dbg !2628
  call void @llvm.dbg.value(metadata i64 %119, metadata !2528, metadata !DIExpression()), !dbg !2629
  %120 = load i64, i64* %8, align 8, !dbg !2630, !tbaa !1491
  call void @llvm.dbg.value(metadata i64 %120, metadata !2515, metadata !DIExpression()), !dbg !2558
  %121 = icmp ult i64 %120, %119, !dbg !2632
  %122 = select i1 %121, i64 %120, i64 %119, !dbg !2633
  call void @llvm.dbg.value(metadata i64 %122, metadata !2528, metadata !DIExpression()), !dbg !2629
  br i1 %46, label %123, label %124, !dbg !2634

123:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i8* %113, metadata !2635, metadata !DIExpression()) #20, !dbg !2644
  call void @llvm.dbg.value(metadata i8* %45, metadata !2642, metadata !DIExpression()) #20, !dbg !2644
  call void @llvm.dbg.value(metadata i64 %122, metadata !2643, metadata !DIExpression()) #20, !dbg !2644
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %113, i8* nonnull align 1 %45, i64 %122, i1 false) #20, !dbg !2647
  br label %126, !dbg !2648

124:                                              ; preds = %118
  %125 = trunc i32 %80 to i8, !dbg !2649
  store i8 %125, i8* %113, align 1, !dbg !2650, !tbaa !1446
  br label %126

126:                                              ; preds = %124, %123
  %127 = getelementptr inbounds i8, i8* %113, i64 %122, !dbg !2651
  call void @llvm.dbg.value(metadata i8* %127, metadata !2507, metadata !DIExpression()), !dbg !2533
  %128 = sub i64 %116, %122, !dbg !2652
  call void @llvm.dbg.value(metadata i64 %128, metadata !2506, metadata !DIExpression()), !dbg !2533
  br label %129, !dbg !2653

129:                                              ; preds = %126, %112
  %130 = phi i8* [ %127, %126 ], [ %113, %112 ], !dbg !2558
  %131 = phi i64 [ %128, %126 ], [ %116, %112 ], !dbg !2558
  call void @llvm.dbg.value(metadata i64 %131, metadata !2506, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %130, metadata !2507, metadata !DIExpression()), !dbg !2533
  br i1 %46, label %132, label %136, !dbg !2654

132:                                              ; preds = %129
  %133 = load i64, i64* %8, align 8, !dbg !2656, !tbaa !1491
  call void @llvm.dbg.value(metadata i64 %133, metadata !2515, metadata !DIExpression()), !dbg !2558
  %134 = call i32 @freadseek(%struct._IO_FILE* %6, i64 %133) #20, !dbg !2657
  %135 = icmp eq i32 %134, 0, !dbg !2657
  br i1 %135, label %136, label %139, !dbg !2658

136:                                              ; preds = %129, %132
  call void @llvm.dbg.value(metadata i64 %44, metadata !2506, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 %80, metadata !2512, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 %79, metadata !2511, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %41, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %39, metadata !2507, metadata !DIExpression()), !dbg !2533
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #20, !dbg !2592
  %137 = and i8 %79, 1, !dbg !2659
  %138 = icmp eq i8 %137, 0, !dbg !2659
  br i1 %138, label %38, label %146, !dbg !2660, !llvm.loop !2661

139:                                              ; preds = %132, %68
  %140 = phi i8* [ %39, %68 ], [ %114, %132 ]
  %141 = phi i64 [ %41, %68 ], [ %115, %132 ]
  call void @llvm.dbg.value(metadata i64 %44, metadata !2506, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 %80, metadata !2512, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 %79, metadata !2511, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %41, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %39, metadata !2507, metadata !DIExpression()), !dbg !2533
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #20, !dbg !2592
  br label %143

142:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %37, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %37, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %44, metadata !2506, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 %80, metadata !2512, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 %79, metadata !2511, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %37, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %40, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #20, !dbg !2592
  br label %143

143:                                              ; preds = %142, %17, %21, %139, %111
  %144 = phi i8* [ %40, %111 ], [ %140, %139 ], [ %18, %21 ], [ %40, %142 ], [ %18, %17 ]
  %145 = phi i64 [ %41, %111 ], [ %141, %139 ], [ %19, %21 ], [ %37, %142 ], [ %19, %17 ]
  call void @llvm.dbg.value(metadata i64 %149, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %147, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %153, metadata !2508, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.label(metadata !2532), !dbg !2663
  store i8* %144, i8** %0, align 8, !dbg !2664, !tbaa !1386
  store i64 %145, i64* %1, align 8, !dbg !2665, !tbaa !1491
  br label %156, !dbg !2666

146:                                              ; preds = %136, %70
  %147 = phi i8* [ %40, %70 ], [ %114, %136 ]
  %148 = phi i8* [ %39, %70 ], [ %130, %136 ]
  %149 = phi i64 [ %41, %70 ], [ %115, %136 ]
  store i8 0, i8* %148, align 1, !dbg !2667, !tbaa !1446
  %150 = getelementptr inbounds i8, i8* %147, i64 %2, !dbg !2668
  %151 = ptrtoint i8* %148 to i64, !dbg !2669
  %152 = ptrtoint i8* %150 to i64, !dbg !2669
  %153 = sub i64 %151, %152, !dbg !2669
  call void @llvm.dbg.value(metadata i64 %153, metadata !2508, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %149, metadata !2510, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %147, metadata !2509, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %153, metadata !2508, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.label(metadata !2532), !dbg !2663
  store i8* %147, i8** %0, align 8, !dbg !2664, !tbaa !1386
  store i64 %149, i64* %1, align 8, !dbg !2665, !tbaa !1491
  %154 = icmp eq i64 %153, 0, !dbg !2666
  %155 = select i1 %154, i64 -1, i64 %153, !dbg !2666
  ret i64 %155, !dbg !2666

156:                                              ; preds = %143, %12
  ret i64 -1, !dbg !2670
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i8* @memchr2(i8* %0, i32 %1, i32 %2, i64 %3) local_unnamed_addr #15 !dbg !2671 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2675, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i32 %1, metadata !2676, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i32 %2, metadata !2677, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 %3, metadata !2678, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i32 %1, metadata !2688, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i32 %2, metadata !2689, metadata !DIExpression()), !dbg !2693
  %5 = insertelement <2 x i32> undef, i32 %1, i32 0, !dbg !2694
  %6 = insertelement <2 x i32> %5, i32 %2, i32 1, !dbg !2694
  %7 = and <2 x i32> %6, <i32 255, i32 255>, !dbg !2694
  %8 = extractelement <2 x i32> %7, i32 0, !dbg !2696
  %9 = extractelement <2 x i32> %7, i32 1, !dbg !2696
  %10 = icmp eq i32 %8, %9, !dbg !2696
  br i1 %10, label %17, label %11, !dbg !2697

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i64 %3, metadata !2678, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8* %0, metadata !2680, metadata !DIExpression()), !dbg !2693
  %12 = icmp ne i64 %3, 0, !dbg !2698
  %13 = ptrtoint i8* %0 to i64, !dbg !2701
  %14 = and i64 %13, 7, !dbg !2701
  %15 = icmp ne i64 %14, 0, !dbg !2701
  %16 = and i1 %12, %15, !dbg !2701
  br i1 %16, label %19, label %35, !dbg !2702

17:                                               ; preds = %4
  %18 = tail call i8* @memchr(i8* %0, i32 %8, i64 %3) #24, !dbg !2703
  br label %81, !dbg !2704

19:                                               ; preds = %11, %27
  %20 = phi i64 [ %29, %27 ], [ %3, %11 ]
  %21 = phi i8* [ %28, %27 ], [ %0, %11 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !2678, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8* %21, metadata !2680, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8* %21, metadata !2679, metadata !DIExpression()), !dbg !2693
  %22 = load i8, i8* %21, align 1, !dbg !2705, !tbaa !1446
  %23 = zext i8 %22 to i32, !dbg !2705
  %24 = icmp eq i32 %8, %23, !dbg !2708
  %25 = icmp eq i32 %9, %23, !dbg !2709
  %26 = or i1 %24, %25, !dbg !2710
  br i1 %26, label %81, label %27, !dbg !2710

27:                                               ; preds = %19
  %28 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !2711
  call void @llvm.dbg.value(metadata i8* %28, metadata !2680, metadata !DIExpression()), !dbg !2693
  %29 = add i64 %20, -1, !dbg !2712
  call void @llvm.dbg.value(metadata i64 %29, metadata !2678, metadata !DIExpression()), !dbg !2693
  %30 = icmp ne i64 %29, 0, !dbg !2698
  %31 = ptrtoint i8* %28 to i64, !dbg !2701
  %32 = and i64 %31, 7, !dbg !2701
  %33 = icmp ne i64 %32, 0, !dbg !2701
  %34 = and i1 %30, %33, !dbg !2701
  br i1 %34, label %19, label %35, !dbg !2702, !llvm.loop !2713

35:                                               ; preds = %27, %11
  %36 = phi i8* [ %0, %11 ], [ %28, %27 ], !dbg !2715
  %37 = phi i64 [ %3, %11 ], [ %29, %27 ]
  call void @llvm.dbg.value(metadata i8* %36, metadata !2680, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 %37, metadata !2678, metadata !DIExpression()), !dbg !2693
  %38 = bitcast i8* %36 to i64*, !dbg !2716
  call void @llvm.dbg.value(metadata i64* %38, metadata !2681, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 16843009, metadata !2685, metadata !DIExpression()), !dbg !2693
  %39 = shl nuw nsw <2 x i32> %7, <i32 8, i32 8>, !dbg !2717
  %40 = or <2 x i32> %39, %7, !dbg !2718
  %41 = zext <2 x i32> %40 to <2 x i64>, !dbg !2719
  %42 = shl nuw nsw <2 x i64> %41, <i64 16, i64 16>, !dbg !2720
  %43 = or <2 x i64> %42, %41, !dbg !2721
  call void @llvm.dbg.value(metadata i64 72340172838076673, metadata !2685, metadata !DIExpression()), !dbg !2693
  %44 = shl nuw <2 x i64> %43, <i64 32, i64 32>, !dbg !2722
  %45 = or <2 x i64> %44, %43, !dbg !2725
  br label %46, !dbg !2726

46:                                               ; preds = %50, %35
  %47 = phi i64* [ %38, %35 ], [ %63, %50 ], !dbg !2727
  %48 = phi i64 [ %37, %35 ], [ %64, %50 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2678, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64* %47, metadata !2681, metadata !DIExpression()), !dbg !2693
  %49 = icmp ugt i64 %48, 7, !dbg !2728
  br i1 %49, label %50, label %65, !dbg !2726

50:                                               ; preds = %46
  %51 = load i64, i64* %47, align 8, !dbg !2729, !tbaa !1491
  %52 = insertelement <2 x i64> undef, i64 %51, i32 0, !dbg !2730
  %53 = shufflevector <2 x i64> %52, <2 x i64> undef, <2 x i32> zeroinitializer, !dbg !2730
  %54 = xor <2 x i64> %53, %45, !dbg !2730
  %55 = add <2 x i64> %54, <i64 -72340172838076673, i64 -72340172838076673>, !dbg !2731
  %56 = xor <2 x i64> %54, <i64 -9187201950435737472, i64 -9187201950435737472>, !dbg !2733
  %57 = and <2 x i64> %55, %56, !dbg !2734
  %58 = extractelement <2 x i64> %57, i32 0, !dbg !2735
  %59 = extractelement <2 x i64> %57, i32 1, !dbg !2735
  %60 = or i64 %58, %59, !dbg !2735
  %61 = and i64 %60, -9187201950435737472, !dbg !2736
  %62 = icmp eq i64 %61, 0, !dbg !2737
  %63 = getelementptr inbounds i64, i64* %47, i64 1, !dbg !2738
  %64 = add i64 %48, -8, !dbg !2738
  call void @llvm.dbg.value(metadata i64 undef, metadata !2678, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64* undef, metadata !2681, metadata !DIExpression()), !dbg !2693
  br i1 %62, label %46, label %67, !llvm.loop !2739

65:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i64* %47, metadata !2681, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 %48, metadata !2678, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64* %47, metadata !2681, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 %48, metadata !2678, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64* %47, metadata !2681, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 %48, metadata !2678, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64* %47, metadata !2681, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 %48, metadata !2678, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64* %47, metadata !2681, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64* %47, metadata !2681, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 %48, metadata !2678, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 %48, metadata !2678, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64* %47, metadata !2681, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64* %47, metadata !2681, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 %48, metadata !2678, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 %48, metadata !2678, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 %48, metadata !2678, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64* %47, metadata !2681, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64* %47, metadata !2679, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 %48, metadata !2678, metadata !DIExpression()), !dbg !2693
  %66 = icmp eq i64 %48, 0, !dbg !2741
  br i1 %66, label %81, label %67, !dbg !2744

67:                                               ; preds = %50, %65
  %68 = bitcast i64* %47 to i8*, !dbg !2745
  call void @llvm.dbg.value(metadata i8* %68, metadata !2679, metadata !DIExpression()), !dbg !2693
  br label %69, !dbg !2744

69:                                               ; preds = %67, %77
  %70 = phi i64 [ %78, %77 ], [ %48, %67 ]
  %71 = phi i8* [ %79, %77 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %70, metadata !2678, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8* %71, metadata !2679, metadata !DIExpression()), !dbg !2693
  %72 = load i8, i8* %71, align 1, !dbg !2746, !tbaa !1446
  %73 = zext i8 %72 to i32, !dbg !2746
  %74 = icmp eq i32 %8, %73, !dbg !2749
  %75 = icmp eq i32 %9, %73, !dbg !2750
  %76 = or i1 %74, %75, !dbg !2751
  br i1 %76, label %81, label %77, !dbg !2751

77:                                               ; preds = %69
  %78 = add i64 %70, -1, !dbg !2752
  call void @llvm.dbg.value(metadata i64 %78, metadata !2678, metadata !DIExpression()), !dbg !2693
  %79 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !2753
  call void @llvm.dbg.value(metadata i8* %79, metadata !2679, metadata !DIExpression()), !dbg !2693
  %80 = icmp eq i64 %78, 0, !dbg !2741
  br i1 %80, label %81, label %69, !dbg !2744, !llvm.loop !2754

81:                                               ; preds = %19, %69, %77, %65, %17
  %82 = phi i8* [ %18, %17 ], [ null, %65 ], [ %71, %69 ], [ null, %77 ], [ %21, %19 ], !dbg !2693
  ret i8* %82, !dbg !2756
}

; Function Attrs: nofree nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2757 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2759, metadata !DIExpression()), !dbg !2762
  %2 = icmp eq i8* %0, null, !dbg !2763
  br i1 %2, label %3, label %6, !dbg !2765

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2766, !tbaa !1386
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #28, !dbg !2768
  tail call void @abort() #25, !dbg !2769
  unreachable, !dbg !2769

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #24, !dbg !2770
  call void @llvm.dbg.value(metadata i8* %7, metadata !2760, metadata !DIExpression()), !dbg !2762
  %8 = icmp eq i8* %7, null, !dbg !2771
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2772
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2772
  call void @llvm.dbg.value(metadata i8* %10, metadata !2761, metadata !DIExpression()), !dbg !2762
  %11 = ptrtoint i8* %10 to i64, !dbg !2773
  %12 = ptrtoint i8* %0 to i64, !dbg !2773
  %13 = sub i64 %11, %12, !dbg !2773
  %14 = icmp sgt i64 %13, 6, !dbg !2775
  br i1 %14, label %15, label %24, !dbg !2776

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2777
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.93, i64 0, i64 0), i64 7) #24, !dbg !2778
  %18 = icmp eq i32 %17, 0, !dbg !2779
  br i1 %18, label %19, label %24, !dbg !2780

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2759, metadata !DIExpression()), !dbg !2762
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.94, i64 0, i64 0), i64 3) #24, !dbg !2781
  %21 = icmp eq i32 %20, 0, !dbg !2784
  br i1 %21, label %22, label %24, !dbg !2785

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2786
  call void @llvm.dbg.value(metadata i8* %23, metadata !2759, metadata !DIExpression()), !dbg !2762
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2788, !tbaa !1386
  br label %24, !dbg !2789

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2759, metadata !DIExpression()), !dbg !2762
  store i8* %25, i8** @program_name, align 8, !dbg !2790, !tbaa !1386
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2791, !tbaa !1386
  ret void, !dbg !2792
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #16

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2793 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2798, metadata !DIExpression()), !dbg !2801
  %2 = tail call i32* @__errno_location() #27, !dbg !2802
  %3 = load i32, i32* %2, align 4, !dbg !2802, !tbaa !1544
  call void @llvm.dbg.value(metadata i32 %3, metadata !2799, metadata !DIExpression()), !dbg !2801
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2803
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2803
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2803
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #20, !dbg !2804
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2804
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2800, metadata !DIExpression()), !dbg !2801
  store i32 %3, i32* %2, align 4, !dbg !2805, !tbaa !1544
  ret %struct.quoting_options* %8, !dbg !2806
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #11 !dbg !2807 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2811, metadata !DIExpression()), !dbg !2812
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2813
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2813
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2814
  %5 = load i32, i32* %4, align 8, !dbg !2814, !tbaa !2815
  ret i32 %5, !dbg !2817
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #13 !dbg !2818 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2822, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i32 %1, metadata !2823, metadata !DIExpression()), !dbg !2824
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2825
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2825
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2826
  store i32 %1, i32* %5, align 8, !dbg !2827, !tbaa !2815
  ret void, !dbg !2828
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !2829 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2833, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i8 %1, metadata !2834, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i32 %2, metadata !2835, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i8 %1, metadata !2836, metadata !DIExpression()), !dbg !2841
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2842
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2842
  %6 = lshr i8 %1, 5, !dbg !2843
  %7 = zext i8 %6 to i64, !dbg !2843
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2844
  call void @llvm.dbg.value(metadata i32* %8, metadata !2837, metadata !DIExpression()), !dbg !2841
  %9 = and i8 %1, 31, !dbg !2845
  %10 = zext i8 %9 to i32, !dbg !2845
  call void @llvm.dbg.value(metadata i32 %10, metadata !2839, metadata !DIExpression()), !dbg !2841
  %11 = load i32, i32* %8, align 4, !dbg !2846, !tbaa !1544
  %12 = lshr i32 %11, %10, !dbg !2847
  %13 = and i32 %12, 1, !dbg !2848
  call void @llvm.dbg.value(metadata i32 %13, metadata !2840, metadata !DIExpression()), !dbg !2841
  %14 = and i32 %2, 1, !dbg !2849
  %15 = xor i32 %13, %14, !dbg !2850
  %16 = shl i32 %15, %10, !dbg !2851
  %17 = xor i32 %16, %11, !dbg !2852
  store i32 %17, i32* %8, align 4, !dbg !2852, !tbaa !1544
  ret i32 %13, !dbg !2853
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !2854 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2858, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i32 %1, metadata !2859, metadata !DIExpression()), !dbg !2861
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2862
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2864
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2858, metadata !DIExpression()), !dbg !2861
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2865
  %6 = load i32, i32* %5, align 4, !dbg !2865, !tbaa !2866
  call void @llvm.dbg.value(metadata i32 %6, metadata !2860, metadata !DIExpression()), !dbg !2861
  store i32 %1, i32* %5, align 4, !dbg !2867, !tbaa !2866
  ret i32 %6, !dbg !2868
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2869 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2873, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %1, metadata !2874, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %2, metadata !2875, metadata !DIExpression()), !dbg !2876
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2877
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2879
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2873, metadata !DIExpression()), !dbg !2876
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2880
  store i32 10, i32* %6, align 8, !dbg !2881, !tbaa !2815
  %7 = icmp ne i8* %1, null, !dbg !2882
  %8 = icmp ne i8* %2, null, !dbg !2884
  %9 = and i1 %7, %8, !dbg !2885
  br i1 %9, label %11, label %10, !dbg !2885

10:                                               ; preds = %3
  tail call void @abort() #25, !dbg !2886
  unreachable, !dbg !2886

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2887
  store i8* %1, i8** %12, align 8, !dbg !2888, !tbaa !2889
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2890
  store i8* %2, i8** %13, align 8, !dbg !2891, !tbaa !2892
  ret void, !dbg !2893
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2894 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2898, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %1, metadata !2899, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i8* %2, metadata !2900, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %3, metadata !2901, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2902, metadata !DIExpression()), !dbg !2906
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2907
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2907
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2903, metadata !DIExpression()), !dbg !2906
  %8 = tail call i32* @__errno_location() #27, !dbg !2908
  %9 = load i32, i32* %8, align 4, !dbg !2908, !tbaa !1544
  call void @llvm.dbg.value(metadata i32 %9, metadata !2904, metadata !DIExpression()), !dbg !2906
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2909
  %11 = load i32, i32* %10, align 8, !dbg !2909, !tbaa !2815
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2910
  %13 = load i32, i32* %12, align 4, !dbg !2910, !tbaa !2866
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2911
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2912
  %16 = load i8*, i8** %15, align 8, !dbg !2912, !tbaa !2889
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2913
  %18 = load i8*, i8** %17, align 8, !dbg !2913, !tbaa !2892
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2914
  call void @llvm.dbg.value(metadata i64 %19, metadata !2905, metadata !DIExpression()), !dbg !2906
  store i32 %9, i32* %8, align 4, !dbg !2915, !tbaa !1544
  ret i64 %19, !dbg !2916
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2917 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2923, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %1, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %2, metadata !2925, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %3, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 %4, metadata !2927, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 %5, metadata !2928, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32* %6, metadata !2929, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %7, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %8, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 0, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 0, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* null, metadata !2935, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 0, metadata !2936, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 0, metadata !2937, metadata !DIExpression()), !dbg !2981
  %13 = tail call i64 @__ctype_get_mb_cur_max() #20, !dbg !2982
  %14 = icmp eq i64 %13, 1, !dbg !2983
  call void @llvm.dbg.value(metadata i1 %14, metadata !2938, metadata !DIExpression()), !dbg !2981
  %15 = lshr i32 %5, 1, !dbg !2984
  %16 = trunc i32 %15 to i8, !dbg !2984
  %17 = and i8 %16, 1, !dbg !2984
  call void @llvm.dbg.value(metadata i8 %17, metadata !2939, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 0, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 0, metadata !2941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 1, metadata !2942, metadata !DIExpression()), !dbg !2981
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2985
  %19 = and i32 %5, 4, !dbg !2987
  %20 = icmp eq i32 %19, 0, !dbg !2987
  %21 = and i32 %5, 1, !dbg !2990
  %22 = icmp eq i32 %21, 0, !dbg !2990
  %23 = bitcast i64* %10 to i8*, !dbg !2993
  %24 = bitcast i32* %12 to i8*, !dbg !2994
  %25 = icmp eq i32* %6, null, !dbg !2995
  br label %26, !dbg !2997

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2998
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2999
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !3000
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !3001
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2981
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !3002
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !3003
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !3004
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %38, metadata !2942, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %37, metadata !2941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %36, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %35, metadata !2939, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %34, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %33, metadata !2937, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %32, metadata !2936, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %31, metadata !2935, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %30, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 0, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %29, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %28, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 %27, metadata !2927, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.label(metadata !2975), !dbg !3005
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
  ], !dbg !3006

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2927, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 1, metadata !2939, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %35, metadata !2939, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 5, metadata !2927, metadata !DIExpression()), !dbg !2981
  br label %92, !dbg !3007

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2939, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 5, metadata !2927, metadata !DIExpression()), !dbg !2981
  %42 = and i8 %35, 1, !dbg !3009
  %43 = icmp eq i8 %42, 0, !dbg !3009
  br i1 %43, label %44, label %92, !dbg !3007

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !3011
  br i1 %45, label %92, label %46, !dbg !3014

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !3011, !tbaa !1446
  br label %92, !dbg !3011

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.105, i64 0, i64 0), i32 %27), !dbg !3015
  call void @llvm.dbg.value(metadata i8* %48, metadata !2930, metadata !DIExpression()), !dbg !2981
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), i32 %27), !dbg !3019
  call void @llvm.dbg.value(metadata i8* %49, metadata !2931, metadata !DIExpression()), !dbg !2981
  br label %50, !dbg !3020

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %51, metadata !2930, metadata !DIExpression()), !dbg !2981
  %53 = and i8 %35, 1, !dbg !3021
  %54 = icmp eq i8 %53, 0, !dbg !3021
  br i1 %54, label %55, label %70, !dbg !3023

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2935, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 0, metadata !2933, metadata !DIExpression()), !dbg !2981
  %56 = load i8, i8* %51, align 1, !dbg !3024, !tbaa !1446
  %57 = icmp eq i8 %56, 0, !dbg !3027
  br i1 %57, label %70, label %58, !dbg !3027

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2935, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %61, metadata !2933, metadata !DIExpression()), !dbg !2981
  %62 = icmp ult i64 %61, %39, !dbg !3028
  br i1 %62, label %63, label %65, !dbg !3031

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !3028
  store i8 %59, i8* %64, align 1, !dbg !3028, !tbaa !1446
  br label %65, !dbg !3028

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !3031
  call void @llvm.dbg.value(metadata i64 %66, metadata !2933, metadata !DIExpression()), !dbg !2981
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !3032
  call void @llvm.dbg.value(metadata i8* %67, metadata !2935, metadata !DIExpression()), !dbg !2981
  %68 = load i8, i8* %67, align 1, !dbg !3024, !tbaa !1446
  %69 = icmp eq i8 %68, 0, !dbg !3027
  br i1 %69, label %70, label %58, !dbg !3027, !llvm.loop !3033

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !3035
  call void @llvm.dbg.value(metadata i64 %71, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 1, metadata !2937, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %52, metadata !2935, metadata !DIExpression()), !dbg !2981
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #24, !dbg !3036
  call void @llvm.dbg.value(metadata i64 %72, metadata !2936, metadata !DIExpression()), !dbg !2981
  br label %92, !dbg !3037

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2937, metadata !DIExpression()), !dbg !2981
  br label %74, !dbg !3038

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2981
  call void @llvm.dbg.value(metadata i8 %75, metadata !2937, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 1, metadata !2939, metadata !DIExpression()), !dbg !2981
  br label %76, !dbg !3039

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !3001
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2981
  call void @llvm.dbg.value(metadata i8 %78, metadata !2939, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %77, metadata !2937, metadata !DIExpression()), !dbg !2981
  %79 = and i8 %78, 1, !dbg !3040
  %80 = icmp eq i8 %79, 0, !dbg !3040
  %81 = select i1 %80, i8 1, i8 %77, !dbg !3042
  br label %82, !dbg !3042

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2981
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2984
  call void @llvm.dbg.value(metadata i8 %84, metadata !2939, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %83, metadata !2937, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 2, metadata !2927, metadata !DIExpression()), !dbg !2981
  %85 = and i8 %84, 1, !dbg !3043
  %86 = icmp eq i8 %85, 0, !dbg !3043
  br i1 %86, label %87, label %92, !dbg !3045

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !3046
  br i1 %88, label %92, label %89, !dbg !3049

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !3046, !tbaa !1446
  br label %92, !dbg !3046

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2939, metadata !DIExpression()), !dbg !2981
  br label %92, !dbg !3050

91:                                               ; preds = %26
  call void @abort() #25, !dbg !3051
  unreachable, !dbg !3051

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !3035
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), %40 ], !dbg !2981
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2981
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2981
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2981
  call void @llvm.dbg.value(metadata i8 %100, metadata !2939, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %99, metadata !2937, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %98, metadata !2936, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %97, metadata !2935, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %96, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 %93, metadata !2927, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 0, metadata !2932, metadata !DIExpression()), !dbg !2981
  %101 = and i8 %99, 1, !dbg !3052
  %102 = icmp ne i8 %101, 0, !dbg !3052
  %103 = icmp ne i32 %93, 2, !dbg !3052
  %104 = and i1 %103, %102, !dbg !3052
  %105 = icmp ne i64 %98, 0, !dbg !3052
  %106 = and i1 %105, %104, !dbg !3052
  %107 = icmp ugt i64 %98, 1, !dbg !3052
  %108 = and i8 %100, 1, !dbg !3054
  %109 = icmp eq i8 %108, 0, !dbg !3054
  %110 = icmp eq i32 %93, 2, !dbg !3057
  %111 = or i1 %103, %109, !dbg !3059
  %112 = icmp ne i8 %108, 0, !dbg !3061
  %113 = and i1 %110, %112, !dbg !3061
  %114 = xor i1 %102, true, !dbg !3062
  %115 = xor i1 %104, true, !dbg !2995
  %116 = and i1 %109, %115, !dbg !2995
  %117 = or i1 %25, %116, !dbg !2995
  %118 = and i8 %99, %100, !dbg !3063
  %119 = and i8 %118, 1, !dbg !3063
  %120 = icmp ne i8 %119, 0, !dbg !3063
  %121 = and i1 %120, %105, !dbg !3063
  br label %122, !dbg !3065

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !3066
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !3035
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2998
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !3002
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !3003
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !3004
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %129, metadata !2942, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %128, metadata !2941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %127, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %126, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %125, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %123, metadata !2932, metadata !DIExpression()), !dbg !2981
  %131 = icmp eq i64 %126, -1, !dbg !3067
  br i1 %131, label %132, label %136, !dbg !3068

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !3069
  %134 = load i8, i8* %133, align 1, !dbg !3069, !tbaa !1446
  %135 = icmp eq i8 %134, 0, !dbg !3070
  br i1 %135, label %581, label %138, !dbg !3071

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !3072
  br i1 %137, label %581, label %138, !dbg !3071

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2948, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 0, metadata !2949, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 0, metadata !2950, metadata !DIExpression()), !dbg !3073
  br i1 %106, label %139, label %154, !dbg !3074

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !3075
  %141 = and i1 %107, %131, !dbg !3076
  br i1 %141, label %142, label %144, !dbg !3076

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #24, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %143, metadata !2926, metadata !DIExpression()), !dbg !2981
  br label %144, !dbg !3078

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2926, metadata !DIExpression()), !dbg !2981
  %146 = icmp ugt i64 %140, %145, !dbg !3079
  br i1 %146, label %154, label %147, !dbg !3080

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !3081
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !3082
  %150 = icmp ne i32 %149, 0, !dbg !3083
  %151 = or i1 %150, %109, !dbg !3084
  %152 = xor i1 %150, true, !dbg !3084
  %153 = zext i1 %152 to i8, !dbg !3084
  br i1 %151, label %154, label %639, !dbg !3084

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !3073
  call void @llvm.dbg.value(metadata i8 %156, metadata !2948, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %155, metadata !2926, metadata !DIExpression()), !dbg !2981
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !3085
  %158 = load i8, i8* %157, align 1, !dbg !3085, !tbaa !1446
  call void @llvm.dbg.value(metadata i8 %158, metadata !2943, metadata !DIExpression()), !dbg !3073
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
  ], !dbg !3086

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !3087

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !3088

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2949, metadata !DIExpression()), !dbg !3073
  %162 = and i8 %127, 1, !dbg !3091
  %163 = icmp eq i8 %162, 0, !dbg !3091
  %164 = and i1 %110, %163, !dbg !3091
  br i1 %164, label %165, label %181, !dbg !3091

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !3093
  br i1 %166, label %167, label %169, !dbg !3097

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !3093
  store i8 39, i8* %168, align 1, !dbg !3093, !tbaa !1446
  br label %169, !dbg !3093

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !3097
  call void @llvm.dbg.value(metadata i64 %170, metadata !2933, metadata !DIExpression()), !dbg !2981
  %171 = icmp ult i64 %170, %130, !dbg !3098
  br i1 %171, label %172, label %174, !dbg !3101

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !3098
  store i8 36, i8* %173, align 1, !dbg !3098, !tbaa !1446
  br label %174, !dbg !3098

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !3101
  call void @llvm.dbg.value(metadata i64 %175, metadata !2933, metadata !DIExpression()), !dbg !2981
  %176 = icmp ult i64 %175, %130, !dbg !3102
  br i1 %176, label %177, label %179, !dbg !3105

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !3102
  store i8 39, i8* %178, align 1, !dbg !3102, !tbaa !1446
  br label %179, !dbg !3102

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !3105
  call void @llvm.dbg.value(metadata i64 %180, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 1, metadata !2940, metadata !DIExpression()), !dbg !2981
  br label %181, !dbg !3106

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2981
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2981
  call void @llvm.dbg.value(metadata i8 %183, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %182, metadata !2933, metadata !DIExpression()), !dbg !2981
  %184 = icmp ult i64 %182, %130, !dbg !3107
  br i1 %184, label %185, label %187, !dbg !3110

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !3107
  store i8 92, i8* %186, align 1, !dbg !3107, !tbaa !1446
  br label %187, !dbg !3107

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %188, metadata !2933, metadata !DIExpression()), !dbg !2981
  br i1 %103, label %189, label %463, !dbg !3111

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !3113
  %191 = icmp ult i64 %190, %155, !dbg !3114
  br i1 %191, label %192, label %463, !dbg !3115

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !3116
  %194 = load i8, i8* %193, align 1, !dbg !3116, !tbaa !1446
  %195 = add i8 %194, -48, !dbg !3117
  %196 = icmp ult i8 %195, 10, !dbg !3117
  br i1 %196, label %197, label %463, !dbg !3117

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !3118
  br i1 %198, label %199, label %201, !dbg !3122

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !3118
  store i8 48, i8* %200, align 1, !dbg !3118, !tbaa !1446
  br label %201, !dbg !3118

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !3122
  call void @llvm.dbg.value(metadata i64 %202, metadata !2933, metadata !DIExpression()), !dbg !2981
  %203 = icmp ult i64 %202, %130, !dbg !3123
  br i1 %203, label %204, label %206, !dbg !3126

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !3123
  store i8 48, i8* %205, align 1, !dbg !3123, !tbaa !1446
  br label %206, !dbg !3123

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !3126
  call void @llvm.dbg.value(metadata i64 %207, metadata !2933, metadata !DIExpression()), !dbg !2981
  br label %463, !dbg !3127

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !3128

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !3129

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !3130

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !3131

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !3132
  %214 = icmp ult i64 %213, %155, !dbg !3133
  br i1 %214, label %215, label %463, !dbg !3134

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !3135
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !3136
  %218 = load i8, i8* %217, align 1, !dbg !3136, !tbaa !1446
  %219 = icmp eq i8 %218, 63, !dbg !3137
  br i1 %219, label %220, label %463, !dbg !3138

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !3139
  %222 = load i8, i8* %221, align 1, !dbg !3139, !tbaa !1446
  %223 = sext i8 %222 to i32, !dbg !3139
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
  ], !dbg !3140

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !3141

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2943, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %213, metadata !2932, metadata !DIExpression()), !dbg !2981
  %226 = icmp ult i64 %124, %130, !dbg !3143
  br i1 %226, label %227, label %229, !dbg !3146

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !3143
  store i8 63, i8* %228, align 1, !dbg !3143, !tbaa !1446
  br label %229, !dbg !3143

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !3146
  call void @llvm.dbg.value(metadata i64 %230, metadata !2933, metadata !DIExpression()), !dbg !2981
  %231 = icmp ult i64 %230, %130, !dbg !3147
  br i1 %231, label %232, label %234, !dbg !3150

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !3147
  store i8 34, i8* %233, align 1, !dbg !3147, !tbaa !1446
  br label %234, !dbg !3147

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !3150
  call void @llvm.dbg.value(metadata i64 %235, metadata !2933, metadata !DIExpression()), !dbg !2981
  %236 = icmp ult i64 %235, %130, !dbg !3151
  br i1 %236, label %237, label %239, !dbg !3154

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !3151
  store i8 34, i8* %238, align 1, !dbg !3151, !tbaa !1446
  br label %239, !dbg !3151

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !3154
  call void @llvm.dbg.value(metadata i64 %240, metadata !2933, metadata !DIExpression()), !dbg !2981
  %241 = icmp ult i64 %240, %130, !dbg !3155
  br i1 %241, label %242, label %244, !dbg !3158

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !3155
  store i8 63, i8* %243, align 1, !dbg !3155, !tbaa !1446
  br label %244, !dbg !3155

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !3158
  call void @llvm.dbg.value(metadata i64 %245, metadata !2933, metadata !DIExpression()), !dbg !2981
  br label %463, !dbg !3159

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2947, metadata !DIExpression()), !dbg !3073
  br label %256, !dbg !3160

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2947, metadata !DIExpression()), !dbg !3073
  br label %256, !dbg !3161

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2947, metadata !DIExpression()), !dbg !3073
  br label %254, !dbg !3162

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2947, metadata !DIExpression()), !dbg !3073
  br label %254, !dbg !3163

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2947, metadata !DIExpression()), !dbg !3073
  br label %256, !dbg !3164

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2947, metadata !DIExpression()), !dbg !3073
  br i1 %110, label %252, label %253, !dbg !3165

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !3166

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !3169

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !3170
  call void @llvm.dbg.value(metadata i8 %255, metadata !2947, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.label(metadata !2976), !dbg !3171
  br i1 %111, label %256, label %625, !dbg !3172

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !3170
  call void @llvm.dbg.value(metadata i8 %257, metadata !2947, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.label(metadata !2977), !dbg !3174
  br i1 %102, label %488, label %463, !dbg !3175

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !3176

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !3177, !tbaa !1446
  %261 = icmp eq i8 %260, 0, !dbg !3178
  br i1 %261, label %262, label %463, !dbg !3179

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !3180
  br i1 %263, label %264, label %463, !dbg !3182

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2950, metadata !DIExpression()), !dbg !3073
  br label %265, !dbg !3183

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !3073
  call void @llvm.dbg.value(metadata i8 %266, metadata !2950, metadata !DIExpression()), !dbg !3073
  br i1 %111, label %463, label %625, !dbg !3184

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 1, metadata !2950, metadata !DIExpression()), !dbg !3073
  br i1 %110, label %268, label %463, !dbg !3185

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !3186

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !3188
  %271 = icmp ne i64 %125, 0, !dbg !3190
  %272 = or i1 %271, %270, !dbg !3191
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !3191
  %274 = select i1 %272, i64 %130, i64 0, !dbg !3191
  call void @llvm.dbg.value(metadata i64 %274, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %273, metadata !2934, metadata !DIExpression()), !dbg !2981
  %275 = icmp ult i64 %124, %274, !dbg !3192
  br i1 %275, label %276, label %278, !dbg !3195

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !3192
  store i8 39, i8* %277, align 1, !dbg !3192, !tbaa !1446
  br label %278, !dbg !3192

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !3195
  call void @llvm.dbg.value(metadata i64 %279, metadata !2933, metadata !DIExpression()), !dbg !2981
  %280 = icmp ult i64 %279, %274, !dbg !3196
  br i1 %280, label %281, label %283, !dbg !3199

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !3196
  store i8 92, i8* %282, align 1, !dbg !3196, !tbaa !1446
  br label %283, !dbg !3196

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !3199
  call void @llvm.dbg.value(metadata i64 %284, metadata !2933, metadata !DIExpression()), !dbg !2981
  %285 = icmp ult i64 %284, %274, !dbg !3200
  br i1 %285, label %286, label %288, !dbg !3203

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !3200
  store i8 39, i8* %287, align 1, !dbg !3200, !tbaa !1446
  br label %288, !dbg !3200

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !3203
  call void @llvm.dbg.value(metadata i64 %289, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 0, metadata !2940, metadata !DIExpression()), !dbg !2981
  br label %463, !dbg !3204

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !3205

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2951, metadata !DIExpression()), !dbg !3206
  %292 = tail call i16** @__ctype_b_loc() #27, !dbg !3207
  %293 = load i16*, i16** %292, align 8, !dbg !3207, !tbaa !1386
  %294 = zext i8 %158 to i64, !dbg !3207
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !3207
  %296 = load i16, i16* %295, align 2, !dbg !3207, !tbaa !2009
  %297 = lshr i16 %296, 14, !dbg !3209
  %298 = trunc i16 %297 to i8, !dbg !3209
  %299 = and i8 %298, 1, !dbg !3209
  call void @llvm.dbg.value(metadata i8 %299, metadata !2954, metadata !DIExpression()), !dbg !3206
  br label %355, !dbg !3210

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #20, !dbg !3211
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2955, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %23, metadata !3213, metadata !DIExpression()) #20, !dbg !3220
  call void @llvm.dbg.value(metadata i32 0, metadata !3218, metadata !DIExpression()) #20, !dbg !3220
  call void @llvm.dbg.value(metadata i64 8, metadata !3219, metadata !DIExpression()) #20, !dbg !3220
  store i64 0, i64* %10, align 8, !dbg !3222
  call void @llvm.dbg.value(metadata i64 0, metadata !2951, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i8 1, metadata !2954, metadata !DIExpression()), !dbg !3206
  %301 = icmp eq i64 %155, -1, !dbg !3223
  br i1 %301, label %302, label %304, !dbg !3225

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #24, !dbg !3226
  call void @llvm.dbg.value(metadata i64 %303, metadata !2926, metadata !DIExpression()), !dbg !2981
  br label %304, !dbg !3227

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !3073
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  br label %306, !dbg !3228

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !3229
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !3230
  call void @llvm.dbg.value(metadata i8 %308, metadata !2954, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %307, metadata !2951, metadata !DIExpression()), !dbg !3206
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #20, !dbg !3231
  %309 = add i64 %307, %123, !dbg !3232
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !3233
  %311 = sub i64 %305, %309, !dbg !3234
  call void @llvm.dbg.value(metadata i32* %12, metadata !2961, metadata !DIExpression(DW_OP_deref)), !dbg !2994
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #20, !dbg !3235
  call void @llvm.dbg.value(metadata i64 %312, metadata !2964, metadata !DIExpression()), !dbg !2994
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !3236

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2951, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %307, metadata !2951, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %307, metadata !2951, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %307, metadata !2951, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %307, metadata !2951, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %307, metadata !2951, metadata !DIExpression()), !dbg !3206
  %314 = icmp ugt i64 %305, %309, !dbg !3237
  br i1 %314, label %315, label %340, !dbg !3239

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !3240
  br label %317, !dbg !3240

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2951, metadata !DIExpression()), !dbg !3206
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !3241
  %321 = load i8, i8* %320, align 1, !dbg !3241, !tbaa !1446
  %322 = icmp eq i8 %321, 0, !dbg !3239
  br i1 %322, label %340, label %323, !dbg !3240

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !3242
  call void @llvm.dbg.value(metadata i64 %324, metadata !2951, metadata !DIExpression()), !dbg !3206
  %325 = add i64 %324, %123, !dbg !3243
  %326 = icmp ult i64 %325, %305, !dbg !3237
  br i1 %326, label %317, label %340, !dbg !3239, !llvm.loop !3244

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !3245
  %329 = and i1 %113, %328, !dbg !3248
  call void @llvm.dbg.value(metadata i64 1, metadata !2965, metadata !DIExpression()), !dbg !3249
  br i1 %329, label %330, label %343, !dbg !3248

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2965, metadata !DIExpression()), !dbg !3249
  %332 = add i64 %331, %309, !dbg !3250
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !3251
  %334 = load i8, i8* %333, align 1, !dbg !3251, !tbaa !1446
  %335 = sext i8 %334 to i32, !dbg !3251
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !3252

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !3253
  call void @llvm.dbg.value(metadata i64 %337, metadata !2965, metadata !DIExpression()), !dbg !3249
  %338 = icmp eq i64 %337, %312, !dbg !3245
  br i1 %338, label %343, label %330, !dbg !3254, !llvm.loop !3255

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2951, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i8 %308, metadata !2954, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %307, metadata !2951, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i8 %308, metadata !2954, metadata !DIExpression()), !dbg !3206
  br label %340, !dbg !3257

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !3257
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !3258, !tbaa !1544
  call void @llvm.dbg.value(metadata i32 %344, metadata !2961, metadata !DIExpression()), !dbg !2994
  %345 = call i32 @iswprint(i32 %344) #20, !dbg !3260
  %346 = icmp eq i32 %345, 0, !dbg !3260
  %347 = select i1 %346, i8 0, i8 %308, !dbg !3261
  call void @llvm.dbg.value(metadata i8 %347, metadata !2954, metadata !DIExpression()), !dbg !3206
  %348 = add i64 %312, %307, !dbg !3262
  call void @llvm.dbg.value(metadata i64 %348, metadata !2951, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i8 %347, metadata !2954, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %348, metadata !2951, metadata !DIExpression()), !dbg !3206
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !3257
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #24, !dbg !3263
  %350 = icmp eq i32 %349, 0, !dbg !3264
  br i1 %350, label %306, label %351, !dbg !3265, !llvm.loop !3266

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !3268
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 2, metadata !2927, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 2, metadata !2927, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 2, metadata !2927, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 2, metadata !2927, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 2, metadata !2927, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %99, metadata !2937, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %99, metadata !2937, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %99, metadata !2937, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %99, metadata !2937, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %99, metadata !2937, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 2, metadata !2927, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 2, metadata !2927, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 2, metadata !2927, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 2, metadata !2927, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 2, metadata !2927, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %99, metadata !2937, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %99, metadata !2937, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %99, metadata !2937, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %99, metadata !2937, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %99, metadata !2937, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %305, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !3257
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !3268
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !3073
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !3269
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !3269
  call void @llvm.dbg.value(metadata i8 %358, metadata !2954, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %357, metadata !2951, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %356, metadata !2926, metadata !DIExpression()), !dbg !2981
  %359 = and i8 %358, 1, !dbg !3270
  %360 = icmp ne i8 %359, 0, !dbg !3270
  call void @llvm.dbg.value(metadata i8 %359, metadata !2950, metadata !DIExpression()), !dbg !3073
  %361 = icmp ult i64 %357, 2, !dbg !3271
  %362 = or i1 %360, %114, !dbg !3272
  %363 = and i1 %361, %362, !dbg !3273
  br i1 %363, label %463, label %364, !dbg !3273

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !3274
  call void @llvm.dbg.value(metadata i64 %365, metadata !2972, metadata !DIExpression()), !dbg !3275
  br label %366, !dbg !3276

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !3066
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2981
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !3002
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !3073
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !3073
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !3277
  call void @llvm.dbg.value(metadata i8 %372, metadata !2949, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 %371, metadata !2948, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 %370, metadata !2943, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 %369, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %368, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %367, metadata !2932, metadata !DIExpression()), !dbg !2981
  br i1 %362, label %419, label %373, !dbg !3278

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !3283

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2949, metadata !DIExpression()), !dbg !3073
  %375 = and i8 %369, 1, !dbg !3286
  %376 = icmp eq i8 %375, 0, !dbg !3286
  %377 = and i1 %110, %376, !dbg !3286
  br i1 %377, label %378, label %394, !dbg !3286

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !3288
  br i1 %379, label %380, label %382, !dbg !3292

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !3288
  store i8 39, i8* %381, align 1, !dbg !3288, !tbaa !1446
  br label %382, !dbg !3288

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !3292
  call void @llvm.dbg.value(metadata i64 %383, metadata !2933, metadata !DIExpression()), !dbg !2981
  %384 = icmp ult i64 %383, %130, !dbg !3293
  br i1 %384, label %385, label %387, !dbg !3296

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !3293
  store i8 36, i8* %386, align 1, !dbg !3293, !tbaa !1446
  br label %387, !dbg !3293

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !3296
  call void @llvm.dbg.value(metadata i64 %388, metadata !2933, metadata !DIExpression()), !dbg !2981
  %389 = icmp ult i64 %388, %130, !dbg !3297
  br i1 %389, label %390, label %392, !dbg !3300

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !3297
  store i8 39, i8* %391, align 1, !dbg !3297, !tbaa !1446
  br label %392, !dbg !3297

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !3300
  call void @llvm.dbg.value(metadata i64 %393, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 1, metadata !2940, metadata !DIExpression()), !dbg !2981
  br label %394, !dbg !3301

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2981
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2981
  call void @llvm.dbg.value(metadata i8 %396, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %395, metadata !2933, metadata !DIExpression()), !dbg !2981
  %397 = icmp ult i64 %395, %130, !dbg !3302
  br i1 %397, label %398, label %400, !dbg !3305

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !3302
  store i8 92, i8* %399, align 1, !dbg !3302, !tbaa !1446
  br label %400, !dbg !3302

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %401, metadata !2933, metadata !DIExpression()), !dbg !2981
  %402 = icmp ult i64 %401, %130, !dbg !3306
  br i1 %402, label %403, label %407, !dbg !3309

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !3306
  %405 = or i8 %404, 48, !dbg !3306
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3306
  store i8 %405, i8* %406, align 1, !dbg !3306, !tbaa !1446
  br label %407, !dbg !3306

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !3309
  call void @llvm.dbg.value(metadata i64 %408, metadata !2933, metadata !DIExpression()), !dbg !2981
  %409 = icmp ult i64 %408, %130, !dbg !3310
  br i1 %409, label %410, label %415, !dbg !3313

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !3310
  %412 = and i8 %411, 7, !dbg !3310
  %413 = or i8 %412, 48, !dbg !3310
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3310
  store i8 %413, i8* %414, align 1, !dbg !3310, !tbaa !1446
  br label %415, !dbg !3310

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %416, metadata !2933, metadata !DIExpression()), !dbg !2981
  %417 = and i8 %370, 7, !dbg !3314
  %418 = or i8 %417, 48, !dbg !3315
  call void @llvm.dbg.value(metadata i8 %418, metadata !2943, metadata !DIExpression()), !dbg !3073
  br label %428, !dbg !3316

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !3317
  %421 = icmp eq i8 %420, 0, !dbg !3317
  br i1 %421, label %428, label %422, !dbg !3319

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !3320
  br i1 %423, label %424, label %426, !dbg !3324

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !3320
  store i8 92, i8* %425, align 1, !dbg !3320, !tbaa !1446
  br label %426, !dbg !3320

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %427, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 0, metadata !2948, metadata !DIExpression()), !dbg !3073
  br label %428, !dbg !3325

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2981
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !3002
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !3073
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !3073
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !3073
  call void @llvm.dbg.value(metadata i8 %433, metadata !2949, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 %432, metadata !2948, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 %431, metadata !2943, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 %430, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %429, metadata !2933, metadata !DIExpression()), !dbg !2981
  %434 = add i64 %367, 1, !dbg !3326
  %435 = icmp ugt i64 %365, %434, !dbg !3328
  br i1 %435, label %436, label %526, !dbg !3329

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !3330
  %438 = icmp ne i8 %437, 0, !dbg !3330
  %439 = and i8 %433, 1, !dbg !3330
  %440 = icmp eq i8 %439, 0, !dbg !3330
  %441 = and i1 %438, %440, !dbg !3330
  br i1 %441, label %442, label %453, !dbg !3330

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !3333
  br i1 %443, label %444, label %446, !dbg !3337

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !3333
  store i8 39, i8* %445, align 1, !dbg !3333, !tbaa !1446
  br label %446, !dbg !3333

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !3337
  call void @llvm.dbg.value(metadata i64 %447, metadata !2933, metadata !DIExpression()), !dbg !2981
  %448 = icmp ult i64 %447, %130, !dbg !3338
  br i1 %448, label %449, label %451, !dbg !3341

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !3338
  store i8 39, i8* %450, align 1, !dbg !3338, !tbaa !1446
  br label %451, !dbg !3338

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !3341
  call void @llvm.dbg.value(metadata i64 %452, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 0, metadata !2940, metadata !DIExpression()), !dbg !2981
  br label %453, !dbg !3342

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !3343
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2981
  call void @llvm.dbg.value(metadata i8 %455, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %454, metadata !2933, metadata !DIExpression()), !dbg !2981
  %456 = icmp ult i64 %454, %130, !dbg !3344
  br i1 %456, label %457, label %459, !dbg !3347

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !3344
  store i8 %431, i8* %458, align 1, !dbg !3344, !tbaa !1446
  br label %459, !dbg !3344

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !3347
  call void @llvm.dbg.value(metadata i64 %460, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %434, metadata !2932, metadata !DIExpression()), !dbg !2981
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !3348
  %462 = load i8, i8* %461, align 1, !dbg !3348, !tbaa !1446
  call void @llvm.dbg.value(metadata i8 %462, metadata !2943, metadata !DIExpression()), !dbg !3073
  br label %366, !dbg !3349, !llvm.loop !3350

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !3066
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2981
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2998
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !3353
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2981
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2981
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !3073
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !3073
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !3073
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %472, metadata !2950, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 %471, metadata !2949, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 %156, metadata !2948, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 %470, metadata !2943, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 %469, metadata !2941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %468, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %467, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %466, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %465, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %464, metadata !2932, metadata !DIExpression()), !dbg !2981
  br i1 %117, label %486, label %474, !dbg !3354

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !3355
  %476 = zext i8 %475 to i64, !dbg !3355
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !3356
  %478 = load i32, i32* %477, align 4, !dbg !3356, !tbaa !1544
  %479 = and i8 %470, 31, !dbg !3357
  %480 = zext i8 %479 to i32, !dbg !3357
  %481 = shl nuw i32 1, %480, !dbg !3358
  %482 = and i32 %478, %481, !dbg !3358
  %483 = icmp eq i32 %482, 0, !dbg !3358
  %484 = icmp eq i8 %156, 0, !dbg !3359
  %485 = and i1 %484, %483, !dbg !3360
  br i1 %485, label %526, label %488, !dbg !3360

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !3359
  br i1 %487, label %526, label %488, !dbg !3361

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !3362
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2981
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2998
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !3353
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !3002
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !3003
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !3073
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !3073
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %496, metadata !2950, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 %495, metadata !2943, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 %494, metadata !2941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %493, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %492, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %491, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %490, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %489, metadata !2932, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.label(metadata !2978), !dbg !3363
  br i1 %109, label %498, label %629, !dbg !3364

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2949, metadata !DIExpression()), !dbg !3073
  %499 = and i8 %493, 1, !dbg !3366
  %500 = icmp eq i8 %499, 0, !dbg !3366
  %501 = and i1 %110, %500, !dbg !3366
  br i1 %501, label %502, label %518, !dbg !3366

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !3368
  br i1 %503, label %504, label %506, !dbg !3372

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !3368
  store i8 39, i8* %505, align 1, !dbg !3368, !tbaa !1446
  br label %506, !dbg !3368

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !3372
  call void @llvm.dbg.value(metadata i64 %507, metadata !2933, metadata !DIExpression()), !dbg !2981
  %508 = icmp ult i64 %507, %497, !dbg !3373
  br i1 %508, label %509, label %511, !dbg !3376

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !3373
  store i8 36, i8* %510, align 1, !dbg !3373, !tbaa !1446
  br label %511, !dbg !3373

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !3376
  call void @llvm.dbg.value(metadata i64 %512, metadata !2933, metadata !DIExpression()), !dbg !2981
  %513 = icmp ult i64 %512, %497, !dbg !3377
  br i1 %513, label %514, label %516, !dbg !3380

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !3377
  store i8 39, i8* %515, align 1, !dbg !3377, !tbaa !1446
  br label %516, !dbg !3377

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !3380
  call void @llvm.dbg.value(metadata i64 %517, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 1, metadata !2940, metadata !DIExpression()), !dbg !2981
  br label %518, !dbg !3381

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !3073
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2981
  call void @llvm.dbg.value(metadata i8 %520, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %519, metadata !2933, metadata !DIExpression()), !dbg !2981
  %521 = icmp ult i64 %519, %497, !dbg !3382
  br i1 %521, label %522, label %524, !dbg !3385

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !3382
  store i8 92, i8* %523, align 1, !dbg !3382, !tbaa !1446
  br label %524, !dbg !3382

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !3385
  call void @llvm.dbg.value(metadata i64 %525, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %536, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %535, metadata !2950, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 %534, metadata !2949, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 %533, metadata !2943, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 %532, metadata !2941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %531, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %530, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %529, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %528, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %527, metadata !2932, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.label(metadata !2979), !dbg !3386
  br label %553, !dbg !3387

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !3362
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2981
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2998
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !3353
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !3002
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !3003
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !3390
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !3073
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !3073
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %535, metadata !2950, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 %534, metadata !2949, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 %533, metadata !2943, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8 %532, metadata !2941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %531, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %530, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %529, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %528, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %527, metadata !2932, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.label(metadata !2979), !dbg !3386
  %537 = and i8 %531, 1, !dbg !3387
  %538 = icmp ne i8 %537, 0, !dbg !3387
  %539 = and i8 %534, 1, !dbg !3387
  %540 = icmp eq i8 %539, 0, !dbg !3387
  %541 = and i1 %538, %540, !dbg !3387
  br i1 %541, label %542, label %553, !dbg !3387

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !3391
  br i1 %543, label %544, label %546, !dbg !3395

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !3391
  store i8 39, i8* %545, align 1, !dbg !3391, !tbaa !1446
  br label %546, !dbg !3391

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !3395
  call void @llvm.dbg.value(metadata i64 %547, metadata !2933, metadata !DIExpression()), !dbg !2981
  %548 = icmp ult i64 %547, %536, !dbg !3396
  br i1 %548, label %549, label %551, !dbg !3399

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !3396
  store i8 39, i8* %550, align 1, !dbg !3396, !tbaa !1446
  br label %551, !dbg !3396

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !3399
  call void @llvm.dbg.value(metadata i64 %552, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 0, metadata !2940, metadata !DIExpression()), !dbg !2981
  br label %553, !dbg !3400

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !3073
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2981
  call void @llvm.dbg.value(metadata i8 %562, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %561, metadata !2933, metadata !DIExpression()), !dbg !2981
  %563 = icmp ult i64 %561, %554, !dbg !3401
  br i1 %563, label %564, label %566, !dbg !3404

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !3401
  store i8 %556, i8* %565, align 1, !dbg !3401, !tbaa !1446
  br label %566, !dbg !3401

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3404
  call void @llvm.dbg.value(metadata i64 %567, metadata !2933, metadata !DIExpression()), !dbg !2981
  %568 = and i8 %555, 1, !dbg !3405
  %569 = icmp eq i8 %568, 0, !dbg !3405
  %570 = select i1 %569, i8 0, i8 %129, !dbg !3407
  call void @llvm.dbg.value(metadata i8 %570, metadata !2942, metadata !DIExpression()), !dbg !2981
  br label %571, !dbg !3408

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !3362
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2981
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2998
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !3353
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !3002
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2981
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !3004
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %578, metadata !2942, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %577, metadata !2941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %576, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %575, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %574, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %573, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %572, metadata !2932, metadata !DIExpression()), !dbg !2981
  %580 = add i64 %572, 1, !dbg !3409
  call void @llvm.dbg.value(metadata i64 %580, metadata !2932, metadata !DIExpression()), !dbg !2981
  br label %122, !dbg !3410, !llvm.loop !3411

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %125, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %125, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %127, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %127, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %128, metadata !2941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %128, metadata !2941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %129, metadata !2942, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %129, metadata !2942, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %125, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %125, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %127, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %127, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %128, metadata !2941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %128, metadata !2941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %129, metadata !2942, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %129, metadata !2942, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %125, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %125, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %127, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %127, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %128, metadata !2941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %128, metadata !2941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %129, metadata !2942, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %129, metadata !2942, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %125, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %125, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %127, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %127, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %128, metadata !2941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %128, metadata !2941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %129, metadata !2942, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %129, metadata !2942, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %125, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %125, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %582, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %582, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %127, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %127, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %128, metadata !2941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %128, metadata !2941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %129, metadata !2942, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %129, metadata !2942, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %125, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %125, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %582, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %582, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %127, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %127, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %128, metadata !2941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %128, metadata !2941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %129, metadata !2942, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 %129, metadata !2942, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  %583 = icmp eq i64 %124, 0, !dbg !3413
  %584 = and i1 %110, %583, !dbg !3415
  %585 = xor i1 %584, true, !dbg !3415
  %586 = or i1 %109, %585, !dbg !3415
  br i1 %586, label %587, label %629, !dbg !3415

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !3416
  %589 = xor i1 %588, true, !dbg !3416
  %590 = and i8 %128, 1, !dbg !3418
  %591 = icmp eq i8 %590, 0, !dbg !3418
  %592 = or i1 %591, %589, !dbg !3416
  br i1 %592, label %602, label %593, !dbg !3416

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !3419
  %595 = icmp eq i8 %594, 0, !dbg !3419
  br i1 %595, label %598, label %596, !dbg !3422

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %125, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %582, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %125, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %582, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %125, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %582, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %125, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %125, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %582, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %94, metadata !2930, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %95, metadata !2931, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %125, metadata !2934, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %582, metadata !2926, metadata !DIExpression()), !dbg !2981
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !3423
  br label %645, !dbg !3424

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !3425
  %600 = icmp ne i64 %125, 0, !dbg !3427
  %601 = and i1 %600, %599, !dbg !3428
  br i1 %601, label %26, label %602, !dbg !3428

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2935, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %97, metadata !2935, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %97, metadata !2935, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %97, metadata !2935, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %97, metadata !2935, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %97, metadata !2935, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %97, metadata !2935, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %97, metadata !2935, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %97, metadata !2935, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %97, metadata !2935, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %130, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %97, metadata !2935, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %97, metadata !2935, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  %603 = icmp ne i8* %97, null, !dbg !3429
  %604 = and i1 %603, %109, !dbg !3431
  br i1 %604, label %605, label %620, !dbg !3431

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2935, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %124, metadata !2933, metadata !DIExpression()), !dbg !2981
  %606 = load i8, i8* %97, align 1, !dbg !3432, !tbaa !1446
  %607 = icmp eq i8 %606, 0, !dbg !3435
  br i1 %607, label %620, label %608, !dbg !3435

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2935, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %611, metadata !2933, metadata !DIExpression()), !dbg !2981
  %612 = icmp ult i64 %611, %130, !dbg !3436
  br i1 %612, label %613, label %615, !dbg !3439

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !3436
  store i8 %609, i8* %614, align 1, !dbg !3436, !tbaa !1446
  br label %615, !dbg !3436

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !3439
  call void @llvm.dbg.value(metadata i64 %616, metadata !2933, metadata !DIExpression()), !dbg !2981
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !3440
  call void @llvm.dbg.value(metadata i8* %617, metadata !2935, metadata !DIExpression()), !dbg !2981
  %618 = load i8, i8* %617, align 1, !dbg !3432, !tbaa !1446
  %619 = icmp eq i8 %618, 0, !dbg !3435
  br i1 %619, label %620, label %608, !dbg !3435, !llvm.loop !3441

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !3035
  call void @llvm.dbg.value(metadata i64 %621, metadata !2933, metadata !DIExpression()), !dbg !2981
  %622 = icmp ult i64 %621, %130, !dbg !3443
  br i1 %622, label %623, label %645, !dbg !3445

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !3446
  store i8 0, i8* %624, align 1, !dbg !3447, !tbaa !1446
  br label %645, !dbg !3446

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %630, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.label(metadata !2980), !dbg !3448
  %627 = icmp eq i8 %101, 0, !dbg !3449
  %628 = select i1 %627, i32 2, i32 4, !dbg !3449
  br label %635, !dbg !3449

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %630, metadata !2926, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.label(metadata !2980), !dbg !3448
  %632 = icmp eq i32 %93, 2, !dbg !3451
  %633 = icmp eq i8 %101, 0, !dbg !3449
  %634 = select i1 %633, i32 2, i32 4, !dbg !3449
  br i1 %632, label %635, label %639, !dbg !3449

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !3449

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2927, metadata !DIExpression()), !dbg !2981
  %643 = and i32 %5, -3, !dbg !3452
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !3453
  br label %645, !dbg !3454

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !3455
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !3456 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3460, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i32 %1, metadata !3461, metadata !DIExpression()), !dbg !3464
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #20, !dbg !3465
  call void @llvm.dbg.value(metadata i8* %3, metadata !3462, metadata !DIExpression()), !dbg !3464
  %4 = icmp eq i8* %3, %0, !dbg !3466
  br i1 %4, label %5, label %71, !dbg !3468

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #20, !dbg !3469
  call void @llvm.dbg.value(metadata i8* %6, metadata !3463, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i8* %6, metadata !3470, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8* undef, metadata !3476, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8 85, metadata !3477, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8 84, metadata !3478, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8 70, metadata !3479, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8 45, metadata !3480, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8 56, metadata !3481, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8 0, metadata !3482, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8 0, metadata !3483, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8 0, metadata !3484, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8 0, metadata !3485, metadata !DIExpression()), !dbg !3486
  %7 = load i8, i8* %6, align 1, !dbg !3489, !tbaa !1446
  %8 = and i8 %7, -33, !dbg !3489
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !3489

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3491, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8* undef, metadata !3496, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8 84, metadata !3497, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8 70, metadata !3498, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8 45, metadata !3499, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8 56, metadata !3500, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8 0, metadata !3501, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8 0, metadata !3502, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8 0, metadata !3503, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8 0, metadata !3504, metadata !DIExpression()), !dbg !3505
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3509
  %11 = load i8, i8* %10, align 1, !dbg !3509, !tbaa !1446
  %12 = and i8 %11, -33, !dbg !3509
  %13 = icmp eq i8 %12, 84, !dbg !3509
  br i1 %13, label %14, label %68, !dbg !3509

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3511, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* undef, metadata !3516, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8 70, metadata !3517, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8 45, metadata !3518, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8 56, metadata !3519, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8 0, metadata !3520, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8 0, metadata !3521, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8 0, metadata !3522, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8 0, metadata !3523, metadata !DIExpression()), !dbg !3524
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3528
  %16 = load i8, i8* %15, align 1, !dbg !3528, !tbaa !1446
  %17 = and i8 %16, -33, !dbg !3528
  %18 = icmp eq i8 %17, 70, !dbg !3528
  br i1 %18, label %19, label %68, !dbg !3528

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3530, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8* undef, metadata !3535, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8 45, metadata !3536, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8 56, metadata !3537, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8 0, metadata !3538, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8 0, metadata !3539, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8 0, metadata !3540, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8 0, metadata !3541, metadata !DIExpression()), !dbg !3542
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3546
  %21 = load i8, i8* %20, align 1, !dbg !3546, !tbaa !1446
  %22 = icmp eq i8 %21, 45, !dbg !3546
  br i1 %22, label %23, label %68, !dbg !3548

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3549, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.value(metadata i8* undef, metadata !3554, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.value(metadata i8 56, metadata !3555, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.value(metadata i8 0, metadata !3556, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.value(metadata i8 0, metadata !3557, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.value(metadata i8 0, metadata !3558, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.value(metadata i8 0, metadata !3559, metadata !DIExpression()), !dbg !3560
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3564
  %25 = load i8, i8* %24, align 1, !dbg !3564, !tbaa !1446
  %26 = icmp eq i8 %25, 56, !dbg !3564
  br i1 %26, label %27, label %68, !dbg !3566

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3567, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i8* undef, metadata !3572, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i8 0, metadata !3573, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i8 0, metadata !3574, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i8 0, metadata !3575, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i8 0, metadata !3576, metadata !DIExpression()), !dbg !3577
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3581
  %29 = load i8, i8* %28, align 1, !dbg !3581, !tbaa !1446
  %30 = icmp eq i8 %29, 0, !dbg !3581
  br i1 %30, label %31, label %68, !dbg !3583

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3584, !tbaa !1446
  %33 = icmp eq i8 %32, 96, !dbg !3585
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.108, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.109, i64 0, i64 0), !dbg !3584
  br label %71, !dbg !3586

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3491, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i8* undef, metadata !3496, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i8 66, metadata !3497, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i8 49, metadata !3498, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i8 56, metadata !3499, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i8 48, metadata !3500, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i8 51, metadata !3501, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i8 48, metadata !3502, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i8 0, metadata !3503, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i8 0, metadata !3504, metadata !DIExpression()), !dbg !3587
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3591
  %37 = load i8, i8* %36, align 1, !dbg !3591, !tbaa !1446
  %38 = and i8 %37, -33, !dbg !3591
  %39 = icmp eq i8 %38, 66, !dbg !3591
  br i1 %39, label %40, label %68, !dbg !3591

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3511, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i8* undef, metadata !3516, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i8 49, metadata !3517, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i8 56, metadata !3518, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i8 48, metadata !3519, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i8 51, metadata !3520, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i8 48, metadata !3521, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i8 0, metadata !3522, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i8 0, metadata !3523, metadata !DIExpression()), !dbg !3592
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3594
  %42 = load i8, i8* %41, align 1, !dbg !3594, !tbaa !1446
  %43 = icmp eq i8 %42, 49, !dbg !3594
  br i1 %43, label %44, label %68, !dbg !3595

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3530, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i8* undef, metadata !3535, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i8 56, metadata !3536, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i8 48, metadata !3537, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i8 51, metadata !3538, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i8 48, metadata !3539, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i8 0, metadata !3540, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i8 0, metadata !3541, metadata !DIExpression()), !dbg !3596
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3598
  %46 = load i8, i8* %45, align 1, !dbg !3598, !tbaa !1446
  %47 = icmp eq i8 %46, 56, !dbg !3598
  br i1 %47, label %48, label %68, !dbg !3599

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3549, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i8* undef, metadata !3554, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i8 48, metadata !3555, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i8 51, metadata !3556, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i8 48, metadata !3557, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i8 0, metadata !3558, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i8 0, metadata !3559, metadata !DIExpression()), !dbg !3600
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3602
  %50 = load i8, i8* %49, align 1, !dbg !3602, !tbaa !1446
  %51 = icmp eq i8 %50, 48, !dbg !3602
  br i1 %51, label %52, label %68, !dbg !3603

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3567, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i8* undef, metadata !3572, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i8 51, metadata !3573, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i8 48, metadata !3574, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i8 0, metadata !3575, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i8 0, metadata !3576, metadata !DIExpression()), !dbg !3604
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3606
  %54 = load i8, i8* %53, align 1, !dbg !3606, !tbaa !1446
  %55 = icmp eq i8 %54, 51, !dbg !3606
  br i1 %55, label %56, label %68, !dbg !3607

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3608, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i8* undef, metadata !3613, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i8 48, metadata !3614, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i8 0, metadata !3615, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i8 0, metadata !3616, metadata !DIExpression()), !dbg !3617
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3621
  %58 = load i8, i8* %57, align 1, !dbg !3621, !tbaa !1446
  %59 = icmp eq i8 %58, 48, !dbg !3621
  br i1 %59, label %60, label %68, !dbg !3623

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3624, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i8* undef, metadata !3629, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i8 0, metadata !3630, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i8 0, metadata !3631, metadata !DIExpression()), !dbg !3632
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3636
  %62 = load i8, i8* %61, align 1, !dbg !3636, !tbaa !1446
  %63 = icmp eq i8 %62, 0, !dbg !3636
  br i1 %63, label %64, label %68, !dbg !3638

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3639, !tbaa !1446
  %66 = icmp eq i8 %65, 96, !dbg !3640
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.110, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.111, i64 0, i64 0), !dbg !3639
  br label %71, !dbg !3641

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3642
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), !dbg !3643
  br label %71, !dbg !3644

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3464
  ret i8* %72, !dbg !3645
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind
declare !dbg !491 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !495 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3646 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3650, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64 %1, metadata !3651, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3652, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i8* %0, metadata !3654, metadata !DIExpression()) #20, !dbg !3667
  call void @llvm.dbg.value(metadata i64 %1, metadata !3659, metadata !DIExpression()) #20, !dbg !3667
  call void @llvm.dbg.value(metadata i64* null, metadata !3660, metadata !DIExpression()) #20, !dbg !3667
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3661, metadata !DIExpression()) #20, !dbg !3667
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3669
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3669
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3662, metadata !DIExpression()) #20, !dbg !3667
  %6 = tail call i32* @__errno_location() #27, !dbg !3670
  %7 = load i32, i32* %6, align 4, !dbg !3670, !tbaa !1544
  call void @llvm.dbg.value(metadata i32 %7, metadata !3663, metadata !DIExpression()) #20, !dbg !3667
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3671
  %9 = load i32, i32* %8, align 4, !dbg !3671, !tbaa !2866
  %10 = or i32 %9, 1, !dbg !3672
  call void @llvm.dbg.value(metadata i32 %10, metadata !3664, metadata !DIExpression()) #20, !dbg !3667
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3673
  %12 = load i32, i32* %11, align 8, !dbg !3673, !tbaa !2815
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3674
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3675
  %15 = load i8*, i8** %14, align 8, !dbg !3675, !tbaa !2889
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3676
  %17 = load i8*, i8** %16, align 8, !dbg !3676, !tbaa !2892
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #20, !dbg !3677
  %19 = add i64 %18, 1, !dbg !3678
  call void @llvm.dbg.value(metadata i64 %19, metadata !3665, metadata !DIExpression()) #20, !dbg !3667
  call void @llvm.dbg.value(metadata i64 %19, metadata !3679, metadata !DIExpression()) #20, !dbg !3684
  %20 = tail call noalias i8* @xmalloc(i64 %19) #20, !dbg !3686
  call void @llvm.dbg.value(metadata i8* %20, metadata !3666, metadata !DIExpression()) #20, !dbg !3667
  %21 = load i32, i32* %11, align 8, !dbg !3687, !tbaa !2815
  %22 = load i8*, i8** %14, align 8, !dbg !3688, !tbaa !2889
  %23 = load i8*, i8** %16, align 8, !dbg !3689, !tbaa !2892
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #20, !dbg !3690
  store i32 %7, i32* %6, align 4, !dbg !3691, !tbaa !1544
  ret i8* %20, !dbg !3692
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3655 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3654, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i64 %1, metadata !3659, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i64* %2, metadata !3660, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3661, metadata !DIExpression()), !dbg !3693
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3694
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3694
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3662, metadata !DIExpression()), !dbg !3693
  %7 = tail call i32* @__errno_location() #27, !dbg !3695
  %8 = load i32, i32* %7, align 4, !dbg !3695, !tbaa !1544
  call void @llvm.dbg.value(metadata i32 %8, metadata !3663, metadata !DIExpression()), !dbg !3693
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3696
  %10 = load i32, i32* %9, align 4, !dbg !3696, !tbaa !2866
  %11 = icmp ne i64* %2, null, !dbg !3697
  %12 = xor i1 %11, true, !dbg !3697
  %13 = zext i1 %12 to i32, !dbg !3697
  %14 = or i32 %10, %13, !dbg !3698
  call void @llvm.dbg.value(metadata i32 %14, metadata !3664, metadata !DIExpression()), !dbg !3693
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3699
  %16 = load i32, i32* %15, align 8, !dbg !3699, !tbaa !2815
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3700
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3701
  %19 = load i8*, i8** %18, align 8, !dbg !3701, !tbaa !2889
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3702
  %21 = load i8*, i8** %20, align 8, !dbg !3702, !tbaa !2892
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3703
  %23 = add i64 %22, 1, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %23, metadata !3665, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i64 %23, metadata !3679, metadata !DIExpression()) #20, !dbg !3705
  %24 = tail call noalias i8* @xmalloc(i64 %23) #20, !dbg !3707
  call void @llvm.dbg.value(metadata i8* %24, metadata !3666, metadata !DIExpression()), !dbg !3693
  %25 = load i32, i32* %15, align 8, !dbg !3708, !tbaa !2815
  %26 = load i8*, i8** %18, align 8, !dbg !3709, !tbaa !2889
  %27 = load i8*, i8** %20, align 8, !dbg !3710, !tbaa !2892
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3711
  store i32 %8, i32* %7, align 4, !dbg !3712, !tbaa !1544
  br i1 %11, label %29, label %30, !dbg !3713

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3714, !tbaa !1491
  br label %30, !dbg !3716

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3717
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3718 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3722, !tbaa !1386
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3720, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i32 1, metadata !3721, metadata !DIExpression()), !dbg !3723
  %2 = load i32, i32* @nslots, align 4, !dbg !3724, !tbaa !1544
  %3 = icmp sgt i32 %2, 1, !dbg !3727
  br i1 %3, label %4, label %12, !dbg !3728

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3721, metadata !DIExpression()), !dbg !3723
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3729
  %7 = load i8*, i8** %6, align 8, !dbg !3729, !tbaa !3730
  tail call void @free(i8* %7) #20, !dbg !3732
  %8 = add nuw nsw i64 %5, 1, !dbg !3733
  call void @llvm.dbg.value(metadata i64 %8, metadata !3721, metadata !DIExpression()), !dbg !3723
  %9 = load i32, i32* @nslots, align 4, !dbg !3724, !tbaa !1544
  %10 = sext i32 %9 to i64, !dbg !3727
  %11 = icmp slt i64 %8, %10, !dbg !3727
  br i1 %11, label %4, label %12, !dbg !3728, !llvm.loop !3734

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3736
  %14 = load i8*, i8** %13, align 8, !dbg !3736, !tbaa !3730
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3738
  br i1 %15, label %17, label %16, !dbg !3739

16:                                               ; preds = %12
  tail call void @free(i8* %14) #20, !dbg !3740
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3742, !tbaa !3743
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3744, !tbaa !3730
  br label %17, !dbg !3745

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3746
  br i1 %18, label %21, label %19, !dbg !3748

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3749
  tail call void @free(i8* %20) #20, !dbg !3751
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3752, !tbaa !1386
  br label %21, !dbg !3753

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3754, !tbaa !1544
  ret void, !dbg !3755
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3756 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3758, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i8* %1, metadata !3759, metadata !DIExpression()), !dbg !3760
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3761
  ret i8* %3, !dbg !3762
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3763 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3767, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i8* %1, metadata !3768, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i64 %2, metadata !3769, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3770, metadata !DIExpression()), !dbg !3782
  %5 = tail call i32* @__errno_location() #27, !dbg !3783
  %6 = load i32, i32* %5, align 4, !dbg !3783, !tbaa !1544
  call void @llvm.dbg.value(metadata i32 %6, metadata !3771, metadata !DIExpression()), !dbg !3782
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3784, !tbaa !1386
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3772, metadata !DIExpression()), !dbg !3782
  %8 = icmp slt i32 %0, 0, !dbg !3785
  br i1 %8, label %9, label %10, !dbg !3787

9:                                                ; preds = %4
  tail call void @abort() #25, !dbg !3788
  unreachable, !dbg !3788

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3789, !tbaa !1544
  %12 = icmp sgt i32 %11, %0, !dbg !3790
  br i1 %12, label %34, label %13, !dbg !3791

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3792
  call void @llvm.dbg.value(metadata i1 %14, metadata !3773, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3776, metadata !DIExpression()), !dbg !3793
  %15 = icmp eq i32 %0, 2147483647, !dbg !3794
  br i1 %15, label %16, label %17, !dbg !3796

16:                                               ; preds = %13
  tail call void @xalloc_die() #25, !dbg !3797
  unreachable, !dbg !3797

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3798
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3798
  %20 = add nuw nsw i32 %0, 1, !dbg !3799
  %21 = sext i32 %20 to i64, !dbg !3800
  %22 = shl nuw nsw i64 %21, 4, !dbg !3801
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #20, !dbg !3802
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3802
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3772, metadata !DIExpression()), !dbg !3782
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3803, !tbaa !1386
  br i1 %14, label %25, label %26, !dbg !3804

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3805, !tbaa.struct !3807
  br label %26, !dbg !3808

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3809, !tbaa !1544
  %28 = sext i32 %27 to i64, !dbg !3810
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3810
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3811
  %31 = sub nsw i32 %20, %27, !dbg !3812
  %32 = sext i32 %31 to i64, !dbg !3813
  %33 = shl nsw i64 %32, 4, !dbg !3814
  call void @llvm.dbg.value(metadata i8* %30, metadata !3213, metadata !DIExpression()) #20, !dbg !3815
  call void @llvm.dbg.value(metadata i32 0, metadata !3218, metadata !DIExpression()) #20, !dbg !3815
  call void @llvm.dbg.value(metadata i64 %33, metadata !3219, metadata !DIExpression()) #20, !dbg !3815
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #20, !dbg !3817
  store i32 %20, i32* @nslots, align 4, !dbg !3818, !tbaa !1544
  br label %34, !dbg !3819

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3782
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3772, metadata !DIExpression()), !dbg !3782
  %36 = zext i32 %0 to i64, !dbg !3820
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3821
  %38 = load i64, i64* %37, align 8, !dbg !3821, !tbaa !3743
  call void @llvm.dbg.value(metadata i64 %38, metadata !3777, metadata !DIExpression()), !dbg !3822
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3823
  %40 = load i8*, i8** %39, align 8, !dbg !3823, !tbaa !3730
  call void @llvm.dbg.value(metadata i8* %40, metadata !3779, metadata !DIExpression()), !dbg !3822
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3824
  %42 = load i32, i32* %41, align 4, !dbg !3824, !tbaa !2866
  %43 = or i32 %42, 1, !dbg !3825
  call void @llvm.dbg.value(metadata i32 %43, metadata !3780, metadata !DIExpression()), !dbg !3822
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3826
  %45 = load i32, i32* %44, align 8, !dbg !3826, !tbaa !2815
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3827
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3828
  %48 = load i8*, i8** %47, align 8, !dbg !3828, !tbaa !2889
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3829
  %50 = load i8*, i8** %49, align 8, !dbg !3829, !tbaa !2892
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3830
  call void @llvm.dbg.value(metadata i64 %51, metadata !3781, metadata !DIExpression()), !dbg !3822
  %52 = icmp ugt i64 %38, %51, !dbg !3831
  br i1 %52, label %63, label %53, !dbg !3833

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3834
  call void @llvm.dbg.value(metadata i64 %54, metadata !3777, metadata !DIExpression()), !dbg !3822
  store i64 %54, i64* %37, align 8, !dbg !3836, !tbaa !3743
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3837
  br i1 %55, label %57, label %56, !dbg !3839

56:                                               ; preds = %53
  tail call void @free(i8* %40) #20, !dbg !3840
  br label %57, !dbg !3840

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3679, metadata !DIExpression()) #20, !dbg !3841
  %58 = tail call noalias i8* @xmalloc(i64 %54) #20, !dbg !3843
  call void @llvm.dbg.value(metadata i8* %58, metadata !3779, metadata !DIExpression()), !dbg !3822
  store i8* %58, i8** %39, align 8, !dbg !3844, !tbaa !3730
  %59 = load i32, i32* %44, align 8, !dbg !3845, !tbaa !2815
  %60 = load i8*, i8** %47, align 8, !dbg !3846, !tbaa !2889
  %61 = load i8*, i8** %49, align 8, !dbg !3847, !tbaa !2892
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3848
  br label %63, !dbg !3849

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3822
  call void @llvm.dbg.value(metadata i8* %64, metadata !3779, metadata !DIExpression()), !dbg !3822
  store i32 %6, i32* %5, align 4, !dbg !3850, !tbaa !1544
  ret i8* %64, !dbg !3851
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3852 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3856, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i8* %1, metadata !3857, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i64 %2, metadata !3858, metadata !DIExpression()), !dbg !3859
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3860
  ret i8* %4, !dbg !3861
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3862 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3864, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i32 0, metadata !3758, metadata !DIExpression()) #20, !dbg !3866
  call void @llvm.dbg.value(metadata i8* %0, metadata !3759, metadata !DIExpression()) #20, !dbg !3866
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !3868
  ret i8* %2, !dbg !3869
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3870 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3874, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i64 %1, metadata !3875, metadata !DIExpression()), !dbg !3876
  call void @llvm.dbg.value(metadata i32 0, metadata !3856, metadata !DIExpression()) #20, !dbg !3877
  call void @llvm.dbg.value(metadata i8* %0, metadata !3857, metadata !DIExpression()) #20, !dbg !3877
  call void @llvm.dbg.value(metadata i64 %1, metadata !3858, metadata !DIExpression()) #20, !dbg !3877
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !3879
  ret i8* %3, !dbg !3880
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3881 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3883, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata i32 %1, metadata !3884, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata i8* %2, metadata !3885, metadata !DIExpression()), !dbg !3887
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3888
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3888
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3886, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i32 %1, metadata !3890, metadata !DIExpression()) #20, !dbg !3896
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3895, metadata !DIExpression()) #20, !dbg !3898
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3898, !alias.scope !3899
  %6 = icmp eq i32 %1, 10, !dbg !3902
  br i1 %6, label %7, label %8, !dbg !3904

7:                                                ; preds = %3
  tail call void @abort() #25, !dbg !3905, !noalias !3899
  unreachable, !dbg !3905

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3906
  store i32 %1, i32* %9, align 8, !dbg !3907, !tbaa !2815, !alias.scope !3899
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3908
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3909
  ret i8* %10, !dbg !3910
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3911 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3915, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 %1, metadata !3916, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i8* %2, metadata !3917, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i64 %3, metadata !3918, metadata !DIExpression()), !dbg !3920
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3921
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3921
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3919, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i32 %1, metadata !3890, metadata !DIExpression()) #20, !dbg !3923
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3895, metadata !DIExpression()) #20, !dbg !3925
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #20, !dbg !3925, !alias.scope !3926
  %7 = icmp eq i32 %1, 10, !dbg !3929
  br i1 %7, label %8, label %9, !dbg !3930

8:                                                ; preds = %4
  tail call void @abort() #25, !dbg !3931, !noalias !3926
  unreachable, !dbg !3931

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3932
  store i32 %1, i32* %10, align 8, !dbg !3933, !tbaa !2815, !alias.scope !3926
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3934
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3935
  ret i8* %11, !dbg !3936
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3937 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3895, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3886, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i32 %0, metadata !3941, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i8* %1, metadata !3942, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i32 0, metadata !3883, metadata !DIExpression()) #20, !dbg !3948
  call void @llvm.dbg.value(metadata i32 %0, metadata !3884, metadata !DIExpression()) #20, !dbg !3948
  call void @llvm.dbg.value(metadata i8* %1, metadata !3885, metadata !DIExpression()) #20, !dbg !3948
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3949
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3949
  call void @llvm.dbg.value(metadata i32 %0, metadata !3890, metadata !DIExpression()) #20, !dbg !3950
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #20, !dbg !3943, !alias.scope !3951
  %5 = icmp eq i32 %0, 10, !dbg !3954
  br i1 %5, label %6, label %7, !dbg !3955

6:                                                ; preds = %2
  tail call void @abort() #25, !dbg !3956, !noalias !3951
  unreachable, !dbg !3956

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3957
  store i32 %0, i32* %8, align 8, !dbg !3958, !tbaa !2815, !alias.scope !3951
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !3959
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3960
  ret i8* %9, !dbg !3961
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3962 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3895, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3919, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i32 %0, metadata !3966, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i8* %1, metadata !3967, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i64 %2, metadata !3968, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i32 0, metadata !3915, metadata !DIExpression()) #20, !dbg !3974
  call void @llvm.dbg.value(metadata i32 %0, metadata !3916, metadata !DIExpression()) #20, !dbg !3974
  call void @llvm.dbg.value(metadata i8* %1, metadata !3917, metadata !DIExpression()) #20, !dbg !3974
  call void @llvm.dbg.value(metadata i64 %2, metadata !3918, metadata !DIExpression()) #20, !dbg !3974
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3975
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3975
  call void @llvm.dbg.value(metadata i32 %0, metadata !3890, metadata !DIExpression()) #20, !dbg !3976
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3969, !alias.scope !3977
  %6 = icmp eq i32 %0, 10, !dbg !3980
  br i1 %6, label %7, label %8, !dbg !3981

7:                                                ; preds = %3
  tail call void @abort() #25, !dbg !3982, !noalias !3977
  unreachable, !dbg !3982

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3983
  store i32 %0, i32* %9, align 8, !dbg !3984, !tbaa !2815, !alias.scope !3977
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #20, !dbg !3985
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3986
  ret i8* %10, !dbg !3987
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3988 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3992, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i64 %1, metadata !3993, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i8 %2, metadata !3994, metadata !DIExpression()), !dbg !3996
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3997
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3997
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3995, metadata !DIExpression()), !dbg !3998
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3999, !tbaa.struct !4000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2833, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i8 %2, metadata !2834, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i32 1, metadata !2835, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i8 %2, metadata !2836, metadata !DIExpression()), !dbg !4001
  %6 = lshr i8 %2, 5, !dbg !4003
  %7 = zext i8 %6 to i64, !dbg !4003
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !4004
  call void @llvm.dbg.value(metadata i32* %8, metadata !2837, metadata !DIExpression()), !dbg !4001
  %9 = and i8 %2, 31, !dbg !4005
  %10 = zext i8 %9 to i32, !dbg !4005
  call void @llvm.dbg.value(metadata i32 %10, metadata !2839, metadata !DIExpression()), !dbg !4001
  %11 = load i32, i32* %8, align 4, !dbg !4006, !tbaa !1544
  %12 = lshr i32 %11, %10, !dbg !4007
  %13 = and i32 %12, 1, !dbg !4008
  call void @llvm.dbg.value(metadata i32 %13, metadata !2840, metadata !DIExpression()), !dbg !4001
  %14 = xor i32 %13, 1, !dbg !4009
  %15 = shl i32 %14, %10, !dbg !4010
  %16 = xor i32 %15, %11, !dbg !4011
  store i32 %16, i32* %8, align 4, !dbg !4011, !tbaa !1544
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !4012
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !4013
  ret i8* %17, !dbg !4014
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !4015 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3995, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i8* %0, metadata !4019, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i8 %1, metadata !4020, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i8* %0, metadata !3992, metadata !DIExpression()) #20, !dbg !4024
  call void @llvm.dbg.value(metadata i64 -1, metadata !3993, metadata !DIExpression()) #20, !dbg !4024
  call void @llvm.dbg.value(metadata i8 %1, metadata !3994, metadata !DIExpression()) #20, !dbg !4024
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4025
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !4025
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !4026, !tbaa.struct !4000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2833, metadata !DIExpression()) #20, !dbg !4027
  call void @llvm.dbg.value(metadata i8 %1, metadata !2834, metadata !DIExpression()) #20, !dbg !4027
  call void @llvm.dbg.value(metadata i32 1, metadata !2835, metadata !DIExpression()) #20, !dbg !4027
  call void @llvm.dbg.value(metadata i8 %1, metadata !2836, metadata !DIExpression()) #20, !dbg !4027
  %5 = lshr i8 %1, 5, !dbg !4029
  %6 = zext i8 %5 to i64, !dbg !4029
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !4030
  call void @llvm.dbg.value(metadata i32* %7, metadata !2837, metadata !DIExpression()) #20, !dbg !4027
  %8 = and i8 %1, 31, !dbg !4031
  %9 = zext i8 %8 to i32, !dbg !4031
  call void @llvm.dbg.value(metadata i32 %9, metadata !2839, metadata !DIExpression()) #20, !dbg !4027
  %10 = load i32, i32* %7, align 4, !dbg !4032, !tbaa !1544
  %11 = lshr i32 %10, %9, !dbg !4033
  %12 = and i32 %11, 1, !dbg !4034
  call void @llvm.dbg.value(metadata i32 %12, metadata !2840, metadata !DIExpression()) #20, !dbg !4027
  %13 = xor i32 %12, 1, !dbg !4035
  %14 = shl i32 %13, %9, !dbg !4036
  %15 = xor i32 %14, %10, !dbg !4037
  store i32 %15, i32* %7, align 4, !dbg !4037, !tbaa !1544
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !4038
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !4039
  ret i8* %16, !dbg !4040
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !4041 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3995, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i8* %0, metadata !4043, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata i8* %0, metadata !4019, metadata !DIExpression()) #20, !dbg !4048
  call void @llvm.dbg.value(metadata i8 58, metadata !4020, metadata !DIExpression()) #20, !dbg !4048
  call void @llvm.dbg.value(metadata i8* %0, metadata !3992, metadata !DIExpression()) #20, !dbg !4049
  call void @llvm.dbg.value(metadata i64 -1, metadata !3993, metadata !DIExpression()) #20, !dbg !4049
  call void @llvm.dbg.value(metadata i8 58, metadata !3994, metadata !DIExpression()) #20, !dbg !4049
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !4050
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #20, !dbg !4050
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !4051, !tbaa.struct !4000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2833, metadata !DIExpression()) #20, !dbg !4052
  call void @llvm.dbg.value(metadata i8 58, metadata !2834, metadata !DIExpression()) #20, !dbg !4052
  call void @llvm.dbg.value(metadata i32 1, metadata !2835, metadata !DIExpression()) #20, !dbg !4052
  call void @llvm.dbg.value(metadata i8 58, metadata !2836, metadata !DIExpression()) #20, !dbg !4052
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !4054
  call void @llvm.dbg.value(metadata i32* %4, metadata !2837, metadata !DIExpression()) #20, !dbg !4052
  call void @llvm.dbg.value(metadata i32 26, metadata !2839, metadata !DIExpression()) #20, !dbg !4052
  %5 = load i32, i32* %4, align 4, !dbg !4055, !tbaa !1544
  call void @llvm.dbg.value(metadata i32 %5, metadata !2840, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !4052
  %6 = or i32 %5, 67108864, !dbg !4056
  store i32 %6, i32* %4, align 4, !dbg !4056, !tbaa !1544
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #20, !dbg !4057
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #20, !dbg !4058
  ret i8* %7, !dbg !4059
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4060 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3995, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8* %0, metadata !4062, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 %1, metadata !4063, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i8* %0, metadata !3992, metadata !DIExpression()) #20, !dbg !4067
  call void @llvm.dbg.value(metadata i64 %1, metadata !3993, metadata !DIExpression()) #20, !dbg !4067
  call void @llvm.dbg.value(metadata i8 58, metadata !3994, metadata !DIExpression()) #20, !dbg !4067
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4068
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !4068
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !4069, !tbaa.struct !4000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2833, metadata !DIExpression()) #20, !dbg !4070
  call void @llvm.dbg.value(metadata i8 58, metadata !2834, metadata !DIExpression()) #20, !dbg !4070
  call void @llvm.dbg.value(metadata i32 1, metadata !2835, metadata !DIExpression()) #20, !dbg !4070
  call void @llvm.dbg.value(metadata i8 58, metadata !2836, metadata !DIExpression()) #20, !dbg !4070
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4072
  call void @llvm.dbg.value(metadata i32* %5, metadata !2837, metadata !DIExpression()) #20, !dbg !4070
  call void @llvm.dbg.value(metadata i32 26, metadata !2839, metadata !DIExpression()) #20, !dbg !4070
  %6 = load i32, i32* %5, align 4, !dbg !4073, !tbaa !1544
  call void @llvm.dbg.value(metadata i32 %6, metadata !2840, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !4070
  %7 = or i32 %6, 67108864, !dbg !4074
  store i32 %7, i32* %5, align 4, !dbg !4074, !tbaa !1544
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #20, !dbg !4075
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !4076
  ret i8* %8, !dbg !4077
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !4078 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3895, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4084
  call void @llvm.dbg.value(metadata i32 %0, metadata !4080, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata i32 %1, metadata !4081, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata i8* %2, metadata !4082, metadata !DIExpression()), !dbg !4086
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4087
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !4087
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4083, metadata !DIExpression()), !dbg !4088
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4089
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !4089
  call void @llvm.dbg.value(metadata i32 %1, metadata !3890, metadata !DIExpression()) #20, !dbg !4090
  call void @llvm.dbg.value(metadata i32 0, metadata !3895, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4090
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !4084, !alias.scope !4091
  %8 = icmp eq i32 %1, 10, !dbg !4094
  br i1 %8, label %9, label %10, !dbg !4095

9:                                                ; preds = %3
  tail call void @abort() #25, !dbg !4096, !noalias !4091
  unreachable, !dbg !4096

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3895, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4090
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4089
  store i32 %1, i32* %11, align 8, !dbg !4089, !tbaa.struct !4000
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4089
  %13 = bitcast i32* %12 to i8*, !dbg !4089
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !4089, !tbaa.struct !4000
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !4089
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2833, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i8 58, metadata !2834, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i32 1, metadata !2835, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i8 58, metadata !2836, metadata !DIExpression()), !dbg !4097
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !4099
  call void @llvm.dbg.value(metadata i32* %14, metadata !2837, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i32 26, metadata !2839, metadata !DIExpression()), !dbg !4097
  %15 = load i32, i32* %14, align 4, !dbg !4100, !tbaa !1544
  call void @llvm.dbg.value(metadata i32 %15, metadata !2840, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !4097
  %16 = or i32 %15, 67108864, !dbg !4101
  store i32 %16, i32* %14, align 4, !dbg !4101, !tbaa !1544
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !4102
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !4103
  ret i8* %17, !dbg !4104
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !4105 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !4113, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata i32 %0, metadata !4109, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i8* %1, metadata !4110, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i8* %2, metadata !4111, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i8* %3, metadata !4112, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i32 %0, metadata !4118, metadata !DIExpression()) #20, !dbg !4126
  call void @llvm.dbg.value(metadata i8* %1, metadata !4119, metadata !DIExpression()) #20, !dbg !4126
  call void @llvm.dbg.value(metadata i8* %2, metadata !4120, metadata !DIExpression()) #20, !dbg !4126
  call void @llvm.dbg.value(metadata i8* %3, metadata !4121, metadata !DIExpression()) #20, !dbg !4126
  call void @llvm.dbg.value(metadata i64 -1, metadata !4122, metadata !DIExpression()) #20, !dbg !4126
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4127
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !4127
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !4128, !tbaa.struct !4000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2873, metadata !DIExpression()) #20, !dbg !4129
  call void @llvm.dbg.value(metadata i8* %1, metadata !2874, metadata !DIExpression()) #20, !dbg !4129
  call void @llvm.dbg.value(metadata i8* %2, metadata !2875, metadata !DIExpression()) #20, !dbg !4129
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2873, metadata !DIExpression()) #20, !dbg !4129
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4131
  store i32 10, i32* %7, align 8, !dbg !4132, !tbaa !2815
  %8 = icmp ne i8* %1, null, !dbg !4133
  %9 = icmp ne i8* %2, null, !dbg !4134
  %10 = and i1 %8, %9, !dbg !4135
  br i1 %10, label %12, label %11, !dbg !4135

11:                                               ; preds = %4
  tail call void @abort() #25, !dbg !4136
  unreachable, !dbg !4136

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4137
  store i8* %1, i8** %13, align 8, !dbg !4138, !tbaa !2889
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4139
  store i8* %2, i8** %14, align 8, !dbg !4140, !tbaa !2892
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #20, !dbg !4141
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !4142
  ret i8* %15, !dbg !4143
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !4114 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4118, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i8* %1, metadata !4119, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i8* %2, metadata !4120, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i8* %3, metadata !4121, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i64 %4, metadata !4122, metadata !DIExpression()), !dbg !4144
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4145
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #20, !dbg !4145
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !4113, metadata !DIExpression()), !dbg !4146
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4147, !tbaa.struct !4000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2873, metadata !DIExpression()) #20, !dbg !4148
  call void @llvm.dbg.value(metadata i8* %1, metadata !2874, metadata !DIExpression()) #20, !dbg !4148
  call void @llvm.dbg.value(metadata i8* %2, metadata !2875, metadata !DIExpression()) #20, !dbg !4148
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2873, metadata !DIExpression()) #20, !dbg !4148
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4150
  store i32 10, i32* %8, align 8, !dbg !4151, !tbaa !2815
  %9 = icmp ne i8* %1, null, !dbg !4152
  %10 = icmp ne i8* %2, null, !dbg !4153
  %11 = and i1 %9, %10, !dbg !4154
  br i1 %11, label %13, label %12, !dbg !4154

12:                                               ; preds = %5
  tail call void @abort() #25, !dbg !4155
  unreachable, !dbg !4155

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4156
  store i8* %1, i8** %14, align 8, !dbg !4157, !tbaa !2889
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4158
  store i8* %2, i8** %15, align 8, !dbg !4159, !tbaa !2892
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4160
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #20, !dbg !4161
  ret i8* %16, !dbg !4162
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !4163 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4113, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata i8* %0, metadata !4167, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i8* %1, metadata !4168, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i8* %2, metadata !4169, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i32 0, metadata !4109, metadata !DIExpression()) #20, !dbg !4174
  call void @llvm.dbg.value(metadata i8* %0, metadata !4110, metadata !DIExpression()) #20, !dbg !4174
  call void @llvm.dbg.value(metadata i8* %1, metadata !4111, metadata !DIExpression()) #20, !dbg !4174
  call void @llvm.dbg.value(metadata i8* %2, metadata !4112, metadata !DIExpression()) #20, !dbg !4174
  call void @llvm.dbg.value(metadata i32 0, metadata !4118, metadata !DIExpression()) #20, !dbg !4175
  call void @llvm.dbg.value(metadata i8* %0, metadata !4119, metadata !DIExpression()) #20, !dbg !4175
  call void @llvm.dbg.value(metadata i8* %1, metadata !4120, metadata !DIExpression()) #20, !dbg !4175
  call void @llvm.dbg.value(metadata i8* %2, metadata !4121, metadata !DIExpression()) #20, !dbg !4175
  call void @llvm.dbg.value(metadata i64 -1, metadata !4122, metadata !DIExpression()) #20, !dbg !4175
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4176
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !4176
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !4177, !tbaa.struct !4000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2873, metadata !DIExpression()) #20, !dbg !4178
  call void @llvm.dbg.value(metadata i8* %0, metadata !2874, metadata !DIExpression()) #20, !dbg !4178
  call void @llvm.dbg.value(metadata i8* %1, metadata !2875, metadata !DIExpression()) #20, !dbg !4178
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2873, metadata !DIExpression()) #20, !dbg !4178
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4180
  store i32 10, i32* %6, align 8, !dbg !4181, !tbaa !2815
  %7 = icmp ne i8* %0, null, !dbg !4182
  %8 = icmp ne i8* %1, null, !dbg !4183
  %9 = and i1 %7, %8, !dbg !4184
  br i1 %9, label %11, label %10, !dbg !4184

10:                                               ; preds = %3
  tail call void @abort() #25, !dbg !4185
  unreachable, !dbg !4185

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4186
  store i8* %0, i8** %12, align 8, !dbg !4187, !tbaa !2889
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4188
  store i8* %1, i8** %13, align 8, !dbg !4189, !tbaa !2892
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #20, !dbg !4190
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !4191
  ret i8* %14, !dbg !4192
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !4193 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !4113, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i8* %0, metadata !4197, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i8* %1, metadata !4198, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i8* %2, metadata !4199, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i64 %3, metadata !4200, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i32 0, metadata !4118, metadata !DIExpression()) #20, !dbg !4204
  call void @llvm.dbg.value(metadata i8* %0, metadata !4119, metadata !DIExpression()) #20, !dbg !4204
  call void @llvm.dbg.value(metadata i8* %1, metadata !4120, metadata !DIExpression()) #20, !dbg !4204
  call void @llvm.dbg.value(metadata i8* %2, metadata !4121, metadata !DIExpression()) #20, !dbg !4204
  call void @llvm.dbg.value(metadata i64 %3, metadata !4122, metadata !DIExpression()) #20, !dbg !4204
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4205
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !4205
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !4206, !tbaa.struct !4000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2873, metadata !DIExpression()) #20, !dbg !4207
  call void @llvm.dbg.value(metadata i8* %0, metadata !2874, metadata !DIExpression()) #20, !dbg !4207
  call void @llvm.dbg.value(metadata i8* %1, metadata !2875, metadata !DIExpression()) #20, !dbg !4207
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2873, metadata !DIExpression()) #20, !dbg !4207
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4209
  store i32 10, i32* %7, align 8, !dbg !4210, !tbaa !2815
  %8 = icmp ne i8* %0, null, !dbg !4211
  %9 = icmp ne i8* %1, null, !dbg !4212
  %10 = and i1 %8, %9, !dbg !4213
  br i1 %10, label %12, label %11, !dbg !4213

11:                                               ; preds = %4
  tail call void @abort() #25, !dbg !4214
  unreachable, !dbg !4214

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4215
  store i8* %0, i8** %13, align 8, !dbg !4216, !tbaa !2889
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4217
  store i8* %1, i8** %14, align 8, !dbg !4218, !tbaa !2892
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #20, !dbg !4219
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !4220
  ret i8* %15, !dbg !4221
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !4222 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4226, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata i8* %1, metadata !4227, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata i64 %2, metadata !4228, metadata !DIExpression()), !dbg !4229
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4230
  ret i8* %4, !dbg !4231
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4232 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4236, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata i64 %1, metadata !4237, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata i32 0, metadata !4226, metadata !DIExpression()) #20, !dbg !4239
  call void @llvm.dbg.value(metadata i8* %0, metadata !4227, metadata !DIExpression()) #20, !dbg !4239
  call void @llvm.dbg.value(metadata i64 %1, metadata !4228, metadata !DIExpression()) #20, !dbg !4239
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !4241
  ret i8* %3, !dbg !4242
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !4243 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4247, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.value(metadata i8* %1, metadata !4248, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.value(metadata i32 %0, metadata !4226, metadata !DIExpression()) #20, !dbg !4250
  call void @llvm.dbg.value(metadata i8* %1, metadata !4227, metadata !DIExpression()) #20, !dbg !4250
  call void @llvm.dbg.value(metadata i64 -1, metadata !4228, metadata !DIExpression()) #20, !dbg !4250
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !4252
  ret i8* %3, !dbg !4253
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !4254 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4256, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i32 0, metadata !4247, metadata !DIExpression()) #20, !dbg !4258
  call void @llvm.dbg.value(metadata i8* %0, metadata !4248, metadata !DIExpression()) #20, !dbg !4258
  call void @llvm.dbg.value(metadata i32 0, metadata !4226, metadata !DIExpression()) #20, !dbg !4260
  call void @llvm.dbg.value(metadata i8* %0, metadata !4227, metadata !DIExpression()) #20, !dbg !4260
  call void @llvm.dbg.value(metadata i64 -1, metadata !4228, metadata !DIExpression()) #20, !dbg !4260
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !4262
  ret i8* %2, !dbg !4263
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !4264 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4271, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i8* %1, metadata !4272, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i8* %2, metadata !4273, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i8* %3, metadata !4274, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i8** %4, metadata !4275, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i64 %5, metadata !4276, metadata !DIExpression()), !dbg !4277
  %7 = icmp eq i8* %1, null, !dbg !4278
  br i1 %7, label %10, label %8, !dbg !4280

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #20, !dbg !4281
  br label %12, !dbg !4281

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.119, i64 0, i64 0), i8* %2, i8* %3) #20, !dbg !4282
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.120, i64 0, i64 0), i32 5) #20, !dbg !4283
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #20, !dbg !4283
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.121, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4284
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.122, i64 0, i64 0), i32 5) #20, !dbg !4285
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.123, i64 0, i64 0)) #20, !dbg !4285
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.121, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4286
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
  ], !dbg !4287

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.124, i64 0, i64 0), i32 5) #20, !dbg !4288
  %21 = load i8*, i8** %4, align 8, !dbg !4288, !tbaa !1386
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #20, !dbg !4288
  br label %147, !dbg !4290

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.125, i64 0, i64 0), i32 5) #20, !dbg !4291
  %25 = load i8*, i8** %4, align 8, !dbg !4291, !tbaa !1386
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4291
  %27 = load i8*, i8** %26, align 8, !dbg !4291, !tbaa !1386
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #20, !dbg !4291
  br label %147, !dbg !4292

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.126, i64 0, i64 0), i32 5) #20, !dbg !4293
  %31 = load i8*, i8** %4, align 8, !dbg !4293, !tbaa !1386
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4293
  %33 = load i8*, i8** %32, align 8, !dbg !4293, !tbaa !1386
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4293
  %35 = load i8*, i8** %34, align 8, !dbg !4293, !tbaa !1386
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #20, !dbg !4293
  br label %147, !dbg !4294

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.127, i64 0, i64 0), i32 5) #20, !dbg !4295
  %39 = load i8*, i8** %4, align 8, !dbg !4295, !tbaa !1386
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4295
  %41 = load i8*, i8** %40, align 8, !dbg !4295, !tbaa !1386
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4295
  %43 = load i8*, i8** %42, align 8, !dbg !4295, !tbaa !1386
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4295
  %45 = load i8*, i8** %44, align 8, !dbg !4295, !tbaa !1386
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #20, !dbg !4295
  br label %147, !dbg !4296

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.128, i64 0, i64 0), i32 5) #20, !dbg !4297
  %49 = load i8*, i8** %4, align 8, !dbg !4297, !tbaa !1386
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4297
  %51 = load i8*, i8** %50, align 8, !dbg !4297, !tbaa !1386
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4297
  %53 = load i8*, i8** %52, align 8, !dbg !4297, !tbaa !1386
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4297
  %55 = load i8*, i8** %54, align 8, !dbg !4297, !tbaa !1386
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4297
  %57 = load i8*, i8** %56, align 8, !dbg !4297, !tbaa !1386
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #20, !dbg !4297
  br label %147, !dbg !4298

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.129, i64 0, i64 0), i32 5) #20, !dbg !4299
  %61 = load i8*, i8** %4, align 8, !dbg !4299, !tbaa !1386
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4299
  %63 = load i8*, i8** %62, align 8, !dbg !4299, !tbaa !1386
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4299
  %65 = load i8*, i8** %64, align 8, !dbg !4299, !tbaa !1386
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4299
  %67 = load i8*, i8** %66, align 8, !dbg !4299, !tbaa !1386
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4299
  %69 = load i8*, i8** %68, align 8, !dbg !4299, !tbaa !1386
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4299
  %71 = load i8*, i8** %70, align 8, !dbg !4299, !tbaa !1386
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #20, !dbg !4299
  br label %147, !dbg !4300

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.130, i64 0, i64 0), i32 5) #20, !dbg !4301
  %75 = load i8*, i8** %4, align 8, !dbg !4301, !tbaa !1386
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4301
  %77 = load i8*, i8** %76, align 8, !dbg !4301, !tbaa !1386
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4301
  %79 = load i8*, i8** %78, align 8, !dbg !4301, !tbaa !1386
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4301
  %81 = load i8*, i8** %80, align 8, !dbg !4301, !tbaa !1386
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4301
  %83 = load i8*, i8** %82, align 8, !dbg !4301, !tbaa !1386
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4301
  %85 = load i8*, i8** %84, align 8, !dbg !4301, !tbaa !1386
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4301
  %87 = load i8*, i8** %86, align 8, !dbg !4301, !tbaa !1386
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #20, !dbg !4301
  br label %147, !dbg !4302

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.131, i64 0, i64 0), i32 5) #20, !dbg !4303
  %91 = load i8*, i8** %4, align 8, !dbg !4303, !tbaa !1386
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4303
  %93 = load i8*, i8** %92, align 8, !dbg !4303, !tbaa !1386
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4303
  %95 = load i8*, i8** %94, align 8, !dbg !4303, !tbaa !1386
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4303
  %97 = load i8*, i8** %96, align 8, !dbg !4303, !tbaa !1386
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4303
  %99 = load i8*, i8** %98, align 8, !dbg !4303, !tbaa !1386
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4303
  %101 = load i8*, i8** %100, align 8, !dbg !4303, !tbaa !1386
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4303
  %103 = load i8*, i8** %102, align 8, !dbg !4303, !tbaa !1386
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4303
  %105 = load i8*, i8** %104, align 8, !dbg !4303, !tbaa !1386
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #20, !dbg !4303
  br label %147, !dbg !4304

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.132, i64 0, i64 0), i32 5) #20, !dbg !4305
  %109 = load i8*, i8** %4, align 8, !dbg !4305, !tbaa !1386
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4305
  %111 = load i8*, i8** %110, align 8, !dbg !4305, !tbaa !1386
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4305
  %113 = load i8*, i8** %112, align 8, !dbg !4305, !tbaa !1386
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4305
  %115 = load i8*, i8** %114, align 8, !dbg !4305, !tbaa !1386
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4305
  %117 = load i8*, i8** %116, align 8, !dbg !4305, !tbaa !1386
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4305
  %119 = load i8*, i8** %118, align 8, !dbg !4305, !tbaa !1386
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4305
  %121 = load i8*, i8** %120, align 8, !dbg !4305, !tbaa !1386
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4305
  %123 = load i8*, i8** %122, align 8, !dbg !4305, !tbaa !1386
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4305
  %125 = load i8*, i8** %124, align 8, !dbg !4305, !tbaa !1386
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #20, !dbg !4305
  br label %147, !dbg !4306

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.133, i64 0, i64 0), i32 5) #20, !dbg !4307
  %129 = load i8*, i8** %4, align 8, !dbg !4307, !tbaa !1386
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4307
  %131 = load i8*, i8** %130, align 8, !dbg !4307, !tbaa !1386
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4307
  %133 = load i8*, i8** %132, align 8, !dbg !4307, !tbaa !1386
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4307
  %135 = load i8*, i8** %134, align 8, !dbg !4307, !tbaa !1386
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4307
  %137 = load i8*, i8** %136, align 8, !dbg !4307, !tbaa !1386
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4307
  %139 = load i8*, i8** %138, align 8, !dbg !4307, !tbaa !1386
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4307
  %141 = load i8*, i8** %140, align 8, !dbg !4307, !tbaa !1386
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4307
  %143 = load i8*, i8** %142, align 8, !dbg !4307, !tbaa !1386
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4307
  %145 = load i8*, i8** %144, align 8, !dbg !4307, !tbaa !1386
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #20, !dbg !4307
  br label %147, !dbg !4308

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4309
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !4310 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4314, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i8* %1, metadata !4315, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i8* %2, metadata !4316, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i8* %3, metadata !4317, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i8** %4, metadata !4318, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i64 0, metadata !4319, metadata !DIExpression()), !dbg !4320
  br label %6, !dbg !4321

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4323
  call void @llvm.dbg.value(metadata i64 %7, metadata !4319, metadata !DIExpression()), !dbg !4320
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4324
  %9 = load i8*, i8** %8, align 8, !dbg !4324, !tbaa !1386
  %10 = icmp eq i8* %9, null, !dbg !4326
  %11 = add i64 %7, 1, !dbg !4327
  call void @llvm.dbg.value(metadata i64 %11, metadata !4319, metadata !DIExpression()), !dbg !4320
  br i1 %10, label %12, label %6, !dbg !4326, !llvm.loop !4328

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4319, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i64 %7, metadata !4319, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i64 %7, metadata !4319, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i64 %7, metadata !4319, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i64 %7, metadata !4319, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i64 %7, metadata !4319, metadata !DIExpression()), !dbg !4320
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4330
  ret void, !dbg !4331
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !4332 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4343, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i8* %1, metadata !4344, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i8* %2, metadata !4345, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i8* %3, metadata !4346, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4347, metadata !DIExpression()), !dbg !4351
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4352
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #20, !dbg !4352
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4349, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i64 0, metadata !4348, metadata !DIExpression()), !dbg !4351
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !4354
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !4354
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !4354
  %11 = load i32, i32* %8, align 8, !dbg !4357
  %12 = icmp ult i32 %11, 41, !dbg !4357
  br i1 %12, label %13, label %18, !dbg !4357

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !4357
  %15 = zext i32 %11 to i64, !dbg !4357
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4357
  %17 = add nuw nsw i32 %11, 8, !dbg !4357
  store i32 %17, i32* %8, align 8, !dbg !4357
  br label %21, !dbg !4357

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !4357
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4357
  store i8* %20, i8** %9, align 8, !dbg !4357
  br label %21, !dbg !4357

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4357
  %25 = load i8*, i8** %24, align 8, !dbg !4357
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4358
  store i8* %25, i8** %26, align 16, !dbg !4359, !tbaa !1386
  %27 = icmp eq i8* %25, null, !dbg !4360
  br i1 %27, label %30, label %28, !dbg !4361

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4348, metadata !DIExpression()), !dbg !4351
  %29 = icmp ult i32 %22, 41, !dbg !4357
  br i1 %29, label %35, label %32, !dbg !4357

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4362
  call void @llvm.dbg.value(metadata i64 %31, metadata !4348, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i64 %31, metadata !4348, metadata !DIExpression()), !dbg !4351
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4363
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #20, !dbg !4364
  ret void, !dbg !4364

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !4357
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4357
  store i8* %34, i8** %9, align 8, !dbg !4357
  br label %40, !dbg !4357

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !4357
  %37 = zext i32 %22 to i64, !dbg !4357
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4357
  %39 = add nuw nsw i32 %22, 8, !dbg !4357
  store i32 %39, i32* %8, align 8, !dbg !4357
  br label %40, !dbg !4357

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4357
  %44 = load i8*, i8** %43, align 8, !dbg !4357
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4358
  store i8* %44, i8** %45, align 8, !dbg !4359, !tbaa !1386
  %46 = icmp eq i8* %44, null, !dbg !4360
  br i1 %46, label %30, label %47, !dbg !4361

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4348, metadata !DIExpression()), !dbg !4351
  %48 = icmp ult i32 %41, 41, !dbg !4357
  br i1 %48, label %52, label %49, !dbg !4357

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !4357
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4357
  store i8* %51, i8** %9, align 8, !dbg !4357
  br label %57, !dbg !4357

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !4357
  %54 = zext i32 %41 to i64, !dbg !4357
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4357
  %56 = add nuw nsw i32 %41, 8, !dbg !4357
  store i32 %56, i32* %8, align 8, !dbg !4357
  br label %57, !dbg !4357

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4357
  %61 = load i8*, i8** %60, align 8, !dbg !4357
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4358
  store i8* %61, i8** %62, align 16, !dbg !4359, !tbaa !1386
  %63 = icmp eq i8* %61, null, !dbg !4360
  br i1 %63, label %30, label %64, !dbg !4361

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4348, metadata !DIExpression()), !dbg !4351
  %65 = icmp ult i32 %58, 41, !dbg !4357
  br i1 %65, label %69, label %66, !dbg !4357

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !4357
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4357
  store i8* %68, i8** %9, align 8, !dbg !4357
  br label %74, !dbg !4357

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !4357
  %71 = zext i32 %58 to i64, !dbg !4357
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4357
  %73 = add nuw nsw i32 %58, 8, !dbg !4357
  store i32 %73, i32* %8, align 8, !dbg !4357
  br label %74, !dbg !4357

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4357
  %78 = load i8*, i8** %77, align 8, !dbg !4357
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4358
  store i8* %78, i8** %79, align 8, !dbg !4359, !tbaa !1386
  %80 = icmp eq i8* %78, null, !dbg !4360
  br i1 %80, label %30, label %81, !dbg !4361

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4348, metadata !DIExpression()), !dbg !4351
  %82 = icmp ult i32 %75, 41, !dbg !4357
  br i1 %82, label %86, label %83, !dbg !4357

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !4357
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4357
  store i8* %85, i8** %9, align 8, !dbg !4357
  br label %91, !dbg !4357

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !4357
  %88 = zext i32 %75 to i64, !dbg !4357
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4357
  %90 = add nuw nsw i32 %75, 8, !dbg !4357
  store i32 %90, i32* %8, align 8, !dbg !4357
  br label %91, !dbg !4357

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4357
  %95 = load i8*, i8** %94, align 8, !dbg !4357
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4358
  store i8* %95, i8** %96, align 16, !dbg !4359, !tbaa !1386
  %97 = icmp eq i8* %95, null, !dbg !4360
  br i1 %97, label %30, label %98, !dbg !4361

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4348, metadata !DIExpression()), !dbg !4351
  %99 = icmp ult i32 %92, 41, !dbg !4357
  br i1 %99, label %103, label %100, !dbg !4357

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !4357
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4357
  store i8* %102, i8** %9, align 8, !dbg !4357
  br label %108, !dbg !4357

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !4357
  %105 = zext i32 %92 to i64, !dbg !4357
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4357
  %107 = add nuw nsw i32 %92, 8, !dbg !4357
  store i32 %107, i32* %8, align 8, !dbg !4357
  br label %108, !dbg !4357

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4357
  %111 = load i8*, i8** %110, align 8, !dbg !4357
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4358
  store i8* %111, i8** %112, align 8, !dbg !4359, !tbaa !1386
  %113 = icmp eq i8* %111, null, !dbg !4360
  br i1 %113, label %30, label %114, !dbg !4361

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4348, metadata !DIExpression()), !dbg !4351
  %115 = load i8*, i8** %9, align 8, !dbg !4357
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4357
  store i8* %116, i8** %9, align 8, !dbg !4357
  %117 = bitcast i8* %115 to i8**, !dbg !4357
  %118 = load i8*, i8** %117, align 8, !dbg !4357
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4358
  store i8* %118, i8** %119, align 16, !dbg !4359, !tbaa !1386
  %120 = icmp eq i8* %118, null, !dbg !4360
  br i1 %120, label %30, label %121, !dbg !4361

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4348, metadata !DIExpression()), !dbg !4351
  %122 = load i8*, i8** %9, align 8, !dbg !4357
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4357
  store i8* %123, i8** %9, align 8, !dbg !4357
  %124 = bitcast i8* %122 to i8**, !dbg !4357
  %125 = load i8*, i8** %124, align 8, !dbg !4357
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4358
  store i8* %125, i8** %126, align 8, !dbg !4359, !tbaa !1386
  %127 = icmp eq i8* %125, null, !dbg !4360
  br i1 %127, label %30, label %128, !dbg !4361

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4348, metadata !DIExpression()), !dbg !4351
  %129 = load i8*, i8** %9, align 8, !dbg !4357
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4357
  store i8* %130, i8** %9, align 8, !dbg !4357
  %131 = bitcast i8* %129 to i8**, !dbg !4357
  %132 = load i8*, i8** %131, align 8, !dbg !4357
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4358
  store i8* %132, i8** %133, align 16, !dbg !4359, !tbaa !1386
  %134 = icmp eq i8* %132, null, !dbg !4360
  br i1 %134, label %30, label %135, !dbg !4361

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4348, metadata !DIExpression()), !dbg !4351
  %136 = load i8*, i8** %9, align 8, !dbg !4357
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4357
  store i8* %137, i8** %9, align 8, !dbg !4357
  %138 = bitcast i8* %136 to i8**, !dbg !4357
  %139 = load i8*, i8** %138, align 8, !dbg !4357
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4358
  store i8* %139, i8** %140, align 8, !dbg !4359, !tbaa !1386
  %141 = icmp eq i8* %139, null, !dbg !4360
  %142 = select i1 %141, i64 9, i64 10, !dbg !4361
  br label %30, !dbg !4361
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !4365 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4369, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata i8* %1, metadata !4370, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata i8* %2, metadata !4371, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata i8* %3, metadata !4372, metadata !DIExpression()), !dbg !4379
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4380
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #20, !dbg !4380
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4373, metadata !DIExpression()), !dbg !4381
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4382
  call void @llvm.va_start(i8* nonnull %6), !dbg !4382
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4383
  call void @llvm.va_end(i8* nonnull %6), !dbg !4384
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #20, !dbg !4385
  ret void, !dbg !4385
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #20

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !4386 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4387, !tbaa !1386
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.121, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !4387
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.136, i64 0, i64 0), i32 5) #20, !dbg !4388
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.137, i64 0, i64 0)) #20, !dbg !4388
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.138, i64 0, i64 0), i32 5) #20, !dbg !4389
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.139, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.140, i64 0, i64 0)) #20, !dbg !4389
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.141, i64 0, i64 0), i32 5) #20, !dbg !4390
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.142, i64 0, i64 0)) #20, !dbg !4390
  ret void, !dbg !4391
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !4392 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4396, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i64 %1, metadata !4397, metadata !DIExpression()), !dbg !4398
  %3 = udiv i64 9223372036854775807, %1, !dbg !4399
  %4 = icmp ult i64 %3, %0, !dbg !4399
  br i1 %4, label %5, label %6, !dbg !4401

5:                                                ; preds = %2
  tail call void @xalloc_die() #25, !dbg !4402
  unreachable, !dbg !4402

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4403
  call void @llvm.dbg.value(metadata i64 %7, metadata !4404, metadata !DIExpression()) #20, !dbg !4410
  %8 = tail call noalias i8* @malloc(i64 %7) #20, !dbg !4412
  call void @llvm.dbg.value(metadata i8* %8, metadata !4409, metadata !DIExpression()) #20, !dbg !4410
  %9 = icmp eq i8* %8, null, !dbg !4413
  %10 = icmp ne i64 %7, 0, !dbg !4415
  %11 = and i1 %10, %9, !dbg !4416
  br i1 %11, label %12, label %13, !dbg !4416

12:                                               ; preds = %6
  tail call void @xalloc_die() #25, !dbg !4417
  unreachable, !dbg !4417

13:                                               ; preds = %6
  ret i8* %8, !dbg !4418
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !4405 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4404, metadata !DIExpression()), !dbg !4419
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !4420
  call void @llvm.dbg.value(metadata i8* %2, metadata !4409, metadata !DIExpression()), !dbg !4419
  %3 = icmp eq i8* %2, null, !dbg !4421
  %4 = icmp ne i64 %0, 0, !dbg !4422
  %5 = and i1 %4, %3, !dbg !4423
  br i1 %5, label %6, label %7, !dbg !4423

6:                                                ; preds = %1
  tail call void @xalloc_die() #25, !dbg !4424
  unreachable, !dbg !4424

7:                                                ; preds = %1
  ret i8* %2, !dbg !4425
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !4426 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4430, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.value(metadata i64 %1, metadata !4431, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.value(metadata i64 %2, metadata !4432, metadata !DIExpression()), !dbg !4433
  %4 = udiv i64 9223372036854775807, %2, !dbg !4434
  %5 = icmp ult i64 %4, %1, !dbg !4434
  br i1 %5, label %6, label %7, !dbg !4436

6:                                                ; preds = %3
  tail call void @xalloc_die() #25, !dbg !4437
  unreachable, !dbg !4437

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4438
  call void @llvm.dbg.value(metadata i8* %0, metadata !4439, metadata !DIExpression()) #20, !dbg !4445
  call void @llvm.dbg.value(metadata i64 %8, metadata !4444, metadata !DIExpression()) #20, !dbg !4445
  %9 = icmp eq i64 %8, 0, !dbg !4447
  %10 = icmp ne i8* %0, null, !dbg !4449
  %11 = and i1 %10, %9, !dbg !4450
  br i1 %11, label %12, label %13, !dbg !4450

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #20, !dbg !4451
  br label %19, !dbg !4453

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #20, !dbg !4454
  call void @llvm.dbg.value(metadata i8* %14, metadata !4439, metadata !DIExpression()) #20, !dbg !4445
  %15 = icmp eq i8* %14, null, !dbg !4455
  %16 = icmp ne i64 %8, 0, !dbg !4457
  %17 = and i1 %16, %15, !dbg !4458
  br i1 %17, label %18, label %19, !dbg !4458

18:                                               ; preds = %13
  tail call void @xalloc_die() #25, !dbg !4459
  unreachable, !dbg !4459

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4445
  ret i8* %20, !dbg !4460
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4440 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4439, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 %1, metadata !4444, metadata !DIExpression()), !dbg !4461
  %3 = icmp eq i64 %1, 0, !dbg !4462
  %4 = icmp ne i8* %0, null, !dbg !4463
  %5 = and i1 %4, %3, !dbg !4464
  br i1 %5, label %6, label %7, !dbg !4464

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #20, !dbg !4465
  br label %13, !dbg !4466

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #20, !dbg !4467
  call void @llvm.dbg.value(metadata i8* %8, metadata !4439, metadata !DIExpression()), !dbg !4461
  %9 = icmp eq i8* %8, null, !dbg !4468
  %10 = icmp ne i64 %1, 0, !dbg !4469
  %11 = and i1 %10, %9, !dbg !4470
  br i1 %11, label %12, label %13, !dbg !4470

12:                                               ; preds = %7
  tail call void @xalloc_die() #25, !dbg !4471
  unreachable, !dbg !4471

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4461
  ret i8* %14, !dbg !4472
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !691 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !693, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i64* %1, metadata !694, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i64 %2, metadata !695, metadata !DIExpression()), !dbg !4473
  %4 = load i64, i64* %1, align 8, !dbg !4474, !tbaa !1491
  call void @llvm.dbg.value(metadata i64 %4, metadata !696, metadata !DIExpression()), !dbg !4473
  %5 = icmp eq i8* %0, null, !dbg !4475
  br i1 %5, label %6, label %20, !dbg !4477

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4478
  br i1 %7, label %8, label %13, !dbg !4481

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4482
  call void @llvm.dbg.value(metadata i64 %9, metadata !696, metadata !DIExpression()), !dbg !4473
  %10 = icmp ugt i64 %2, 128, !dbg !4484
  %11 = zext i1 %10 to i64, !dbg !4484
  %12 = add nuw nsw i64 %9, %11, !dbg !4485
  call void @llvm.dbg.value(metadata i64 %12, metadata !696, metadata !DIExpression()), !dbg !4473
  br label %13, !dbg !4486

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4473
  call void @llvm.dbg.value(metadata i64 %14, metadata !696, metadata !DIExpression()), !dbg !4473
  %15 = udiv i64 9223372036854775807, %2, !dbg !4487
  %16 = icmp ult i64 %15, %14, !dbg !4487
  br i1 %16, label %19, label %17, !dbg !4489

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !696, metadata !DIExpression()), !dbg !4473
  store i64 %14, i64* %1, align 8, !dbg !4490, !tbaa !1491
  %18 = mul i64 %14, %2, !dbg !4491
  call void @llvm.dbg.value(metadata i8* %0, metadata !4439, metadata !DIExpression()) #20, !dbg !4492
  call void @llvm.dbg.value(metadata i64 %28, metadata !4444, metadata !DIExpression()) #20, !dbg !4492
  br label %31, !dbg !4494

19:                                               ; preds = %13
  tail call void @xalloc_die() #25, !dbg !4495
  unreachable, !dbg !4495

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4496
  %22 = icmp ugt i64 %21, %4, !dbg !4499
  br i1 %22, label %24, label %23, !dbg !4500

23:                                               ; preds = %20
  tail call void @xalloc_die() #25, !dbg !4501
  unreachable, !dbg !4501

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4502
  %26 = add nuw i64 %4, 1, !dbg !4503
  %27 = add i64 %26, %25, !dbg !4504
  call void @llvm.dbg.value(metadata i64 %27, metadata !696, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i64 %27, metadata !696, metadata !DIExpression()), !dbg !4473
  store i64 %27, i64* %1, align 8, !dbg !4490, !tbaa !1491
  %28 = mul i64 %27, %2, !dbg !4491
  call void @llvm.dbg.value(metadata i8* %0, metadata !4439, metadata !DIExpression()) #20, !dbg !4492
  call void @llvm.dbg.value(metadata i64 %28, metadata !4444, metadata !DIExpression()) #20, !dbg !4492
  %29 = icmp eq i64 %28, 0, !dbg !4505
  br i1 %29, label %30, label %31, !dbg !4494

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #20, !dbg !4506
  br label %38, !dbg !4507

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #20, !dbg !4508
  call void @llvm.dbg.value(metadata i8* %33, metadata !4439, metadata !DIExpression()) #20, !dbg !4492
  %34 = icmp eq i8* %33, null, !dbg !4509
  %35 = icmp ne i64 %32, 0, !dbg !4510
  %36 = and i1 %35, %34, !dbg !4511
  br i1 %36, label %37, label %38, !dbg !4511

37:                                               ; preds = %31
  tail call void @xalloc_die() #25, !dbg !4512
  unreachable, !dbg !4512

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4492
  ret i8* %39, !dbg !4513
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !4514 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4516, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i64 %0, metadata !4404, metadata !DIExpression()) #20, !dbg !4518
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !4520
  call void @llvm.dbg.value(metadata i8* %2, metadata !4409, metadata !DIExpression()) #20, !dbg !4518
  %3 = icmp eq i8* %2, null, !dbg !4521
  %4 = icmp ne i64 %0, 0, !dbg !4522
  %5 = and i1 %4, %3, !dbg !4523
  br i1 %5, label %6, label %7, !dbg !4523

6:                                                ; preds = %1
  tail call void @xalloc_die() #25, !dbg !4524
  unreachable, !dbg !4524

7:                                                ; preds = %1
  ret i8* %2, !dbg !4525
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4526 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4530, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i64* %1, metadata !4531, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i8* %0, metadata !693, metadata !DIExpression()) #20, !dbg !4533
  call void @llvm.dbg.value(metadata i64* %1, metadata !694, metadata !DIExpression()) #20, !dbg !4533
  call void @llvm.dbg.value(metadata i64 1, metadata !695, metadata !DIExpression()) #20, !dbg !4533
  %3 = load i64, i64* %1, align 8, !dbg !4535, !tbaa !1491
  call void @llvm.dbg.value(metadata i64 %3, metadata !696, metadata !DIExpression()) #20, !dbg !4533
  %4 = icmp eq i8* %0, null, !dbg !4536
  br i1 %4, label %5, label %12, !dbg !4537

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4538
  br i1 %6, label %9, label %7, !dbg !4539

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !696, metadata !DIExpression()) #20, !dbg !4533
  %8 = icmp slt i64 %3, 0, !dbg !4540
  br i1 %8, label %11, label %9, !dbg !4541

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !696, metadata !DIExpression()) #20, !dbg !4533
  store i64 %10, i64* %1, align 8, !dbg !4542, !tbaa !1491
  call void @llvm.dbg.value(metadata i8* %0, metadata !4439, metadata !DIExpression()) #20, !dbg !4543
  call void @llvm.dbg.value(metadata i64 %18, metadata !4444, metadata !DIExpression()) #20, !dbg !4543
  br label %21, !dbg !4545

11:                                               ; preds = %7
  tail call void @xalloc_die() #25, !dbg !4546
  unreachable, !dbg !4546

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4547
  br i1 %13, label %15, label %14, !dbg !4548

14:                                               ; preds = %12
  tail call void @xalloc_die() #25, !dbg !4549
  unreachable, !dbg !4549

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4550
  %17 = add nuw nsw i64 %3, 1, !dbg !4551
  %18 = add nuw nsw i64 %17, %16, !dbg !4552
  call void @llvm.dbg.value(metadata i64 %18, metadata !696, metadata !DIExpression()) #20, !dbg !4533
  call void @llvm.dbg.value(metadata i64 %18, metadata !696, metadata !DIExpression()) #20, !dbg !4533
  store i64 %18, i64* %1, align 8, !dbg !4542, !tbaa !1491
  call void @llvm.dbg.value(metadata i8* %0, metadata !4439, metadata !DIExpression()) #20, !dbg !4543
  call void @llvm.dbg.value(metadata i64 %18, metadata !4444, metadata !DIExpression()) #20, !dbg !4543
  %19 = icmp eq i64 %18, 0, !dbg !4553
  br i1 %19, label %20, label %21, !dbg !4545

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #20, !dbg !4554
  br label %28, !dbg !4555

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #20, !dbg !4556
  call void @llvm.dbg.value(metadata i8* %23, metadata !4439, metadata !DIExpression()) #20, !dbg !4543
  %24 = icmp eq i8* %23, null, !dbg !4557
  %25 = icmp ne i64 %22, 0, !dbg !4558
  %26 = and i1 %25, %24, !dbg !4559
  br i1 %26, label %27, label %28, !dbg !4559

27:                                               ; preds = %21
  tail call void @xalloc_die() #25, !dbg !4560
  unreachable, !dbg !4560

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4543
  ret i8* %29, !dbg !4561
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4562 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4564, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %0, metadata !4566, metadata !DIExpression()) #20, !dbg !4571
  call void @llvm.dbg.value(metadata i64 1, metadata !4569, metadata !DIExpression()) #20, !dbg !4571
  %2 = icmp slt i64 %0, 0, !dbg !4573
  br i1 %2, label %6, label %3, !dbg !4575

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #20, !dbg !4576
  call void @llvm.dbg.value(metadata i8* %4, metadata !4570, metadata !DIExpression()) #20, !dbg !4571
  %5 = icmp eq i8* %4, null, !dbg !4577
  br i1 %5, label %6, label %7, !dbg !4578

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #25, !dbg !4579
  unreachable, !dbg !4579

7:                                                ; preds = %3
  ret i8* %4, !dbg !4580
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4567 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4566, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata i64 %1, metadata !4569, metadata !DIExpression()), !dbg !4581
  %3 = udiv i64 9223372036854775807, %1, !dbg !4582
  %4 = icmp ult i64 %3, %0, !dbg !4582
  br i1 %4, label %8, label %5, !dbg !4583

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #20, !dbg !4584
  call void @llvm.dbg.value(metadata i8* %6, metadata !4570, metadata !DIExpression()), !dbg !4581
  %7 = icmp eq i8* %6, null, !dbg !4585
  br i1 %7, label %8, label %9, !dbg !4586

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #25, !dbg !4587
  unreachable, !dbg !4587

9:                                                ; preds = %5
  ret i8* %6, !dbg !4588
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4589 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4593, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i64 %1, metadata !4594, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i64 %1, metadata !4404, metadata !DIExpression()) #20, !dbg !4596
  %3 = tail call noalias i8* @malloc(i64 %1) #20, !dbg !4598
  call void @llvm.dbg.value(metadata i8* %3, metadata !4409, metadata !DIExpression()) #20, !dbg !4596
  %4 = icmp eq i8* %3, null, !dbg !4599
  %5 = icmp ne i64 %1, 0, !dbg !4600
  %6 = and i1 %5, %4, !dbg !4601
  br i1 %6, label %7, label %8, !dbg !4601

7:                                                ; preds = %2
  tail call void @xalloc_die() #25, !dbg !4602
  unreachable, !dbg !4602

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4603, metadata !DIExpression()) #20, !dbg !4608
  call void @llvm.dbg.value(metadata i8* %0, metadata !4606, metadata !DIExpression()) #20, !dbg !4608
  call void @llvm.dbg.value(metadata i64 %1, metadata !4607, metadata !DIExpression()) #20, !dbg !4608
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #20, !dbg !4610
  ret i8* %3, !dbg !4611
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4612 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4614, metadata !DIExpression()), !dbg !4615
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #24, !dbg !4616
  %3 = add i64 %2, 1, !dbg !4617
  call void @llvm.dbg.value(metadata i8* %0, metadata !4593, metadata !DIExpression()) #20, !dbg !4618
  call void @llvm.dbg.value(metadata i64 %3, metadata !4594, metadata !DIExpression()) #20, !dbg !4618
  call void @llvm.dbg.value(metadata i64 %3, metadata !4404, metadata !DIExpression()) #20, !dbg !4620
  %4 = tail call noalias i8* @malloc(i64 %3) #20, !dbg !4622
  call void @llvm.dbg.value(metadata i8* %4, metadata !4409, metadata !DIExpression()) #20, !dbg !4620
  %5 = icmp eq i8* %4, null, !dbg !4623
  %6 = icmp ne i64 %3, 0, !dbg !4624
  %7 = and i1 %6, %5, !dbg !4625
  br i1 %7, label %8, label %9, !dbg !4625

8:                                                ; preds = %1
  tail call void @xalloc_die() #25, !dbg !4626
  unreachable, !dbg !4626

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4603, metadata !DIExpression()) #20, !dbg !4627
  call void @llvm.dbg.value(metadata i8* %0, metadata !4606, metadata !DIExpression()) #20, !dbg !4627
  call void @llvm.dbg.value(metadata i64 %3, metadata !4607, metadata !DIExpression()) #20, !dbg !4627
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #20, !dbg !4629
  ret i8* %4, !dbg !4630
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4631 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4632, !tbaa !1544
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.155, i64 0, i64 0), i32 5) #20, !dbg !4633
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i64 0, i64 0), i8* %2) #20, !dbg !4634
  tail call void @abort() #25, !dbg !4635
  unreachable, !dbg !4635
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrndup(i8* nocapture readonly %0, i64 %1) local_unnamed_addr #8 !dbg !4636 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4638, metadata !DIExpression()), !dbg !4641
  call void @llvm.dbg.value(metadata i64 %1, metadata !4639, metadata !DIExpression()), !dbg !4641
  %3 = tail call noalias i8* @strndup(i8* %0, i64 %1) #20, !dbg !4642
  call void @llvm.dbg.value(metadata i8* %3, metadata !4640, metadata !DIExpression()), !dbg !4641
  %4 = icmp eq i8* %3, null, !dbg !4643
  br i1 %4, label %5, label %6, !dbg !4645

5:                                                ; preds = %2
  tail call void @xalloc_die() #25, !dbg !4646
  unreachable, !dbg !4646

6:                                                ; preds = %2
  ret i8* %3, !dbg !4647
}

; Function Attrs: nofree nounwind
declare noalias i8* @strndup(i8* nocapture readonly, i64) local_unnamed_addr #4

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !4648 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4650, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i64 %1, metadata !4651, metadata !DIExpression()), !dbg !4656
  %3 = icmp eq i64 %0, 0, !dbg !4657
  %4 = icmp eq i64 %1, 0, !dbg !4658
  %5 = or i1 %3, %4, !dbg !4659
  br i1 %5, label %11, label %6, !dbg !4659

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4653, metadata !DIExpression()), !dbg !4660
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4661
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4661
  br i1 %8, label %9, label %11, !dbg !4663

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #27, !dbg !4664
  store i32 12, i32* %10, align 4, !dbg !4666, !tbaa !1544
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4650, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i64 %12, metadata !4651, metadata !DIExpression()), !dbg !4656
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #20, !dbg !4667
  call void @llvm.dbg.value(metadata i8* %14, metadata !4652, metadata !DIExpression()), !dbg !4656
  br label %15, !dbg !4668

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4656
  ret i8* %16, !dbg !4669
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4670 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4676, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.value(metadata i32 0, metadata !4677, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.value(metadata i32 0, metadata !4679, metadata !DIExpression()), !dbg !4680
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4681
  call void @llvm.dbg.value(metadata i32 %2, metadata !4678, metadata !DIExpression()), !dbg !4680
  %3 = icmp slt i32 %2, 0, !dbg !4682
  br i1 %3, label %4, label %6, !dbg !4684

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4685
  br label %24, !dbg !4686

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !4687
  %8 = icmp eq i32 %7, 0, !dbg !4687
  br i1 %8, label %13, label %9, !dbg !4689

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4690
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #20, !dbg !4691
  %12 = icmp eq i64 %11, -1, !dbg !4692
  br i1 %12, label %16, label %13, !dbg !4693

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #20, !dbg !4694
  %15 = icmp eq i32 %14, 0, !dbg !4694
  br i1 %15, label %16, label %18, !dbg !4695

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4677, metadata !DIExpression()), !dbg !4680
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4696
  call void @llvm.dbg.value(metadata i32 %21, metadata !4679, metadata !DIExpression()), !dbg !4680
  br label %24, !dbg !4697

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #27, !dbg !4698
  %20 = load i32, i32* %19, align 4, !dbg !4698, !tbaa !1544
  call void @llvm.dbg.value(metadata i32 %20, metadata !4677, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.value(metadata i32 %20, metadata !4677, metadata !DIExpression()), !dbg !4680
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4696
  call void @llvm.dbg.value(metadata i32 %21, metadata !4679, metadata !DIExpression()), !dbg !4680
  %22 = icmp eq i32 %20, 0, !dbg !4699
  br i1 %22, label %24, label %23, !dbg !4697

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4701, !tbaa !1544
  call void @llvm.dbg.value(metadata i32 -1, metadata !4679, metadata !DIExpression()), !dbg !4680
  br label %24, !dbg !4703

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4680
  ret i32 %25, !dbg !4704
}

; Function Attrs: nofree nounwind
declare !dbg !750 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !751 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4705 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4711, metadata !DIExpression()), !dbg !4712
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4713
  br i1 %2, label %6, label %3, !dbg !4715

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !4716
  %5 = icmp eq i32 %4, 0, !dbg !4716
  br i1 %5, label %6, label %8, !dbg !4717

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4718
  br label %17, !dbg !4719

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4720, metadata !DIExpression()) #20, !dbg !4725
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4727
  %10 = load i32, i32* %9, align 8, !dbg !4727, !tbaa !1805
  %11 = and i32 %10, 256, !dbg !4729
  %12 = icmp eq i32 %11, 0, !dbg !4729
  br i1 %12, label %15, label %13, !dbg !4730

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #20, !dbg !4731
  br label %15, !dbg !4731

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4732
  br label %17, !dbg !4733

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4712
  ret i32 %18, !dbg !4734
}

; Function Attrs: nofree nounwind
declare !dbg !759 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i8* @freadptr(%struct._IO_FILE* nocapture readonly %0, i64* nocapture %1) local_unnamed_addr #17 !dbg !4735 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4773, metadata !DIExpression()), !dbg !4776
  call void @llvm.dbg.value(metadata i64* %1, metadata !4774, metadata !DIExpression()), !dbg !4776
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4777
  %4 = load i8*, i8** %3, align 8, !dbg !4777, !tbaa !1667
  %5 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4779
  %6 = load i8*, i8** %5, align 8, !dbg !4779, !tbaa !4780
  %7 = icmp ugt i8* %4, %6, !dbg !4781
  br i1 %7, label %19, label %8, !dbg !4782

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4783
  %10 = bitcast i8** %9 to i64*, !dbg !4783
  %11 = load i64, i64* %10, align 8, !dbg !4783, !tbaa !1651
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4784
  %13 = bitcast i8** %12 to i64*, !dbg !4784
  %14 = load i64, i64* %13, align 8, !dbg !4784, !tbaa !1648
  %15 = sub i64 %11, %14, !dbg !4785
  call void @llvm.dbg.value(metadata i64 %15, metadata !4775, metadata !DIExpression()), !dbg !4776
  %16 = icmp eq i64 %15, 0, !dbg !4786
  br i1 %16, label %19, label %17, !dbg !4788

17:                                               ; preds = %8
  %18 = inttoptr i64 %14 to i8*, !dbg !4788
  store i64 %15, i64* %1, align 8, !dbg !4789, !tbaa !1491
  br label %19, !dbg !4790

19:                                               ; preds = %8, %2, %17
  %20 = phi i8* [ %18, %17 ], [ null, %2 ], [ null, %8 ], !dbg !4776
  ret i8* %20, !dbg !4791
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4792 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4798, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i64 %1, metadata !4799, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i32 %2, metadata !4800, metadata !DIExpression()), !dbg !4804
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4805
  %5 = load i8*, i8** %4, align 8, !dbg !4805, !tbaa !1651
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4806
  %7 = load i8*, i8** %6, align 8, !dbg !4806, !tbaa !1648
  %8 = icmp eq i8* %5, %7, !dbg !4807
  br i1 %8, label %9, label %28, !dbg !4808

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4809
  %11 = load i8*, i8** %10, align 8, !dbg !4809, !tbaa !1667
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4810
  %13 = load i8*, i8** %12, align 8, !dbg !4810, !tbaa !4780
  %14 = icmp eq i8* %11, %13, !dbg !4811
  br i1 %14, label %15, label %28, !dbg !4812

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4813
  %17 = load i8*, i8** %16, align 8, !dbg !4813, !tbaa !4814
  %18 = icmp eq i8* %17, null, !dbg !4815
  br i1 %18, label %19, label %28, !dbg !4816

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4817
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #20, !dbg !4818
  call void @llvm.dbg.value(metadata i64 %21, metadata !4801, metadata !DIExpression()), !dbg !4819
  %22 = icmp eq i64 %21, -1, !dbg !4820
  br i1 %22, label %30, label %23, !dbg !4822

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4823
  %25 = load i32, i32* %24, align 8, !dbg !4824, !tbaa !1805
  %26 = and i32 %25, -17, !dbg !4824
  store i32 %26, i32* %24, align 8, !dbg !4824, !tbaa !1805
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4825
  store i64 %21, i64* %27, align 8, !dbg !4826, !tbaa !4827
  br label %30, !dbg !4828

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4829
  br label %30, !dbg !4830

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4804
  ret i32 %31, !dbg !4831
}

; Function Attrs: nofree nounwind
declare !dbg !837 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4832 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4840, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata i8* %1, metadata !4841, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata i64 %2, metadata !4842, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4843, metadata !DIExpression()), !dbg !4849
  %6 = bitcast i32* %5 to i8*, !dbg !4850
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4850
  %7 = icmp eq i32* %0, null, !dbg !4851
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4853
  call void @llvm.dbg.value(metadata i32* %8, metadata !4840, metadata !DIExpression()), !dbg !4849
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #20, !dbg !4854
  call void @llvm.dbg.value(metadata i64 %9, metadata !4844, metadata !DIExpression()), !dbg !4849
  %10 = icmp ugt i64 %9, -3, !dbg !4855
  %11 = icmp ne i64 %2, 0, !dbg !4856
  %12 = and i1 %11, %10, !dbg !4857
  br i1 %12, label %13, label %18, !dbg !4857

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #20, !dbg !4858
  br i1 %14, label %18, label %15, !dbg !4859

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4860, !tbaa !1446
  call void @llvm.dbg.value(metadata i8 %16, metadata !4846, metadata !DIExpression()), !dbg !4861
  %17 = zext i8 %16 to i32, !dbg !4862
  store i32 %17, i32* %8, align 4, !dbg !4863, !tbaa !1544
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4849
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4864
  ret i64 %19, !dbg !4864
}

; Function Attrs: nounwind
declare !dbg !843 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4865 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4871, metadata !DIExpression()), !dbg !4876
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #20, !dbg !4877
  call void @llvm.dbg.value(metadata i1 undef, metadata !4872, metadata !DIExpression()), !dbg !4876
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4878, metadata !DIExpression()), !dbg !4881
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4883
  %4 = load i32, i32* %3, align 8, !dbg !4883, !tbaa !1805
  %5 = and i32 %4, 32, !dbg !4883
  %6 = icmp eq i32 %5, 0, !dbg !4884
  call void @llvm.dbg.value(metadata i1 %6, metadata !4874, metadata !DIExpression()), !dbg !4876
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #20, !dbg !4885
  %8 = icmp ne i32 %7, 0, !dbg !4886
  call void @llvm.dbg.value(metadata i1 %8, metadata !4875, metadata !DIExpression()), !dbg !4876
  br i1 %6, label %9, label %19, !dbg !4887

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4889
  call void @llvm.dbg.value(metadata i1 %10, metadata !4872, metadata !DIExpression()), !dbg !4876
  %11 = xor i1 %8, true, !dbg !4890
  %12 = or i1 %10, %11, !dbg !4890
  %13 = sext i1 %8 to i32, !dbg !4890
  br i1 %12, label %22, label %14, !dbg !4890

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #27, !dbg !4891
  %16 = load i32, i32* %15, align 4, !dbg !4891, !tbaa !1544
  %17 = icmp ne i32 %16, 9, !dbg !4892
  %18 = sext i1 %17 to i32, !dbg !4893
  br label %22, !dbg !4893

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4894

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #27, !dbg !4896
  store i32 0, i32* %21, align 4, !dbg !4898, !tbaa !1544
  br label %22, !dbg !4896

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4876
  ret i32 %23, !dbg !4899
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @freadseek(%struct._IO_FILE* %0, i64 %1) local_unnamed_addr #8 !dbg !4900 {
  %3 = alloca i64, align 8
  %4 = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4906, metadata !DIExpression()), !dbg !4924
  call void @llvm.dbg.value(metadata i64 %1, metadata !4907, metadata !DIExpression()), !dbg !4924
  %5 = icmp eq i64 %1, 0, !dbg !4925
  br i1 %5, label %75, label %6, !dbg !4927

6:                                                ; preds = %2
  %7 = tail call i64 @freadahead(%struct._IO_FILE* %0) #24, !dbg !4928
  call void @llvm.dbg.value(metadata i64 %7, metadata !4908, metadata !DIExpression()), !dbg !4924
  %8 = bitcast i64* %3 to i8*, !dbg !4929
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4930
  br label %10, !dbg !4938

10:                                               ; preds = %44, %6
  %11 = phi i64 [ %7, %6 ], [ %45, %44 ], !dbg !4939
  %12 = phi i64 [ %1, %6 ], [ %47, %44 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !4907, metadata !DIExpression()), !dbg !4924
  call void @llvm.dbg.value(metadata i64 %11, metadata !4908, metadata !DIExpression()), !dbg !4924
  %13 = icmp eq i64 %11, 0, !dbg !4940
  br i1 %13, label %48, label %14, !dbg !4938

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #20, !dbg !4941
  call void @llvm.dbg.value(metadata i64* %3, metadata !4910, metadata !DIExpression(DW_OP_deref)), !dbg !4929
  %15 = call i8* @freadptr(%struct._IO_FILE* %0, i64* nonnull %3) #20, !dbg !4942
  %16 = icmp ne i8* %15, null, !dbg !4943
  %17 = load i64, i64* %3, align 8, !dbg !4944
  call void @llvm.dbg.value(metadata i64 %17, metadata !4910, metadata !DIExpression()), !dbg !4929
  %18 = icmp ne i64 %17, 0, !dbg !4945
  %19 = and i1 %16, %18, !dbg !4946
  br i1 %19, label %20, label %33, !dbg !4946

20:                                               ; preds = %14
  %21 = icmp ult i64 %17, %12, !dbg !4947
  %22 = select i1 %21, i64 %17, i64 %12, !dbg !4948
  call void @llvm.dbg.value(metadata i64 %22, metadata !4912, metadata !DIExpression()), !dbg !4949
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4935, metadata !DIExpression()), !dbg !4930
  call void @llvm.dbg.value(metadata i64 %22, metadata !4936, metadata !DIExpression()), !dbg !4930
  %23 = load i8*, i8** %9, align 8, !dbg !4950, !tbaa !1648
  %24 = getelementptr inbounds i8, i8* %23, i64 %22, !dbg !4950
  store i8* %24, i8** %9, align 8, !dbg !4950, !tbaa !1648
  %25 = sub i64 %12, %22, !dbg !4951
  call void @llvm.dbg.value(metadata i64 %25, metadata !4907, metadata !DIExpression()), !dbg !4924
  %26 = icmp eq i64 %25, 0, !dbg !4952
  %27 = sub i64 %11, %22, !dbg !4954
  %28 = icmp eq i64 %27, 0, !dbg !4954
  %29 = select i1 %28, i32 3, i32 0, !dbg !4954
  %30 = select i1 %26, i64 %11, i64 %27, !dbg !4954
  %31 = select i1 %26, i32 1, i32 %29, !dbg !4954
  call void @llvm.dbg.value(metadata i64 %30, metadata !4908, metadata !DIExpression()), !dbg !4924
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %20, %14
  %34 = phi i64 [ %30, %20 ], [ %11, %14 ], !dbg !4939
  %35 = phi i64 [ %25, %20 ], [ %12, %14 ]
  call void @llvm.dbg.value(metadata i64 %35, metadata !4907, metadata !DIExpression()), !dbg !4924
  call void @llvm.dbg.value(metadata i64 %34, metadata !4908, metadata !DIExpression()), !dbg !4924
  %36 = call i32 @fgetc(%struct._IO_FILE* %0), !dbg !4955
  %37 = icmp eq i32 %36, -1, !dbg !4957
  br i1 %37, label %38, label %39, !dbg !4958

38:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i64 %47, metadata !4907, metadata !DIExpression()), !dbg !4924
  call void @llvm.dbg.value(metadata i64 %45, metadata !4908, metadata !DIExpression()), !dbg !4924
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #20, !dbg !4959
  br label %71

39:                                               ; preds = %33
  %40 = add i64 %35, -1, !dbg !4960
  call void @llvm.dbg.value(metadata i64 %40, metadata !4907, metadata !DIExpression()), !dbg !4924
  %41 = icmp eq i64 %40, 0, !dbg !4961
  %42 = add i64 %34, -1, !dbg !4963
  br i1 %41, label %43, label %44

43:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i64 %47, metadata !4907, metadata !DIExpression()), !dbg !4924
  call void @llvm.dbg.value(metadata i64 %45, metadata !4908, metadata !DIExpression()), !dbg !4924
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #20, !dbg !4959
  br label %75

44:                                               ; preds = %39, %20
  %45 = phi i64 [ %30, %20 ], [ %42, %39 ], !dbg !4924
  %46 = phi i32 [ %31, %20 ], [ 0, %39 ]
  %47 = phi i64 [ %25, %20 ], [ %40, %39 ], !dbg !4929
  call void @llvm.dbg.value(metadata i64 %47, metadata !4907, metadata !DIExpression()), !dbg !4924
  call void @llvm.dbg.value(metadata i64 %45, metadata !4908, metadata !DIExpression()), !dbg !4924
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #20, !dbg !4959
  switch i32 %46, label %75 [
    i32 0, label %10
    i32 3, label %48
  ], !llvm.loop !4964

48:                                               ; preds = %10, %44
  %49 = phi i64 [ %47, %44 ], [ %12, %10 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !4907, metadata !DIExpression()), !dbg !4924
  %50 = call i32 @fileno(%struct._IO_FILE* %0) #20, !dbg !4965
  call void @llvm.dbg.value(metadata i32 %50, metadata !4909, metadata !DIExpression()), !dbg !4924
  %51 = icmp sgt i32 %50, -1, !dbg !4966
  br i1 %51, label %52, label %57, !dbg !4967

52:                                               ; preds = %48
  %53 = call i64 @lseek(i32 %50, i64 0, i32 1) #20, !dbg !4968
  %54 = icmp sgt i64 %53, -1, !dbg !4969
  br i1 %54, label %55, label %57, !dbg !4970

55:                                               ; preds = %52
  %56 = call i32 @rpl_fseeko(%struct._IO_FILE* %0, i64 %49, i32 1) #20, !dbg !4971
  br label %75, !dbg !4973

57:                                               ; preds = %52, %48
  %58 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0, !dbg !4974
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %58) #20, !dbg !4974
  call void @llvm.dbg.declare(metadata [4096 x i8]* %4, metadata !4915, metadata !DIExpression()), !dbg !4975
  br label %59, !dbg !4976

59:                                               ; preds = %67, %57
  %60 = phi i64 [ %49, %57 ], [ %66, %67 ], !dbg !4951
  call void @llvm.dbg.value(metadata i64 %60, metadata !4907, metadata !DIExpression()), !dbg !4924
  %61 = icmp ult i64 %60, 4096, !dbg !4977
  %62 = select i1 %61, i64 %60, i64 4096, !dbg !4977
  call void @llvm.dbg.value(metadata i64 %62, metadata !4921, metadata !DIExpression()), !dbg !4978
  %63 = call i64 @fread(i8* nonnull %58, i64 1, i64 %62, %struct._IO_FILE* %0), !dbg !4979
  %64 = icmp ult i64 %63, %62, !dbg !4981
  %65 = select i1 %64, i64 0, i64 %62, !dbg !4982
  %66 = sub i64 %60, %65, !dbg !4982
  call void @llvm.dbg.value(metadata i64 %66, metadata !4907, metadata !DIExpression()), !dbg !4924
  br i1 %64, label %70, label %67

67:                                               ; preds = %59
  %68 = icmp eq i64 %66, 0, !dbg !4983
  br i1 %68, label %69, label %59, !dbg !4984, !llvm.loop !4985

69:                                               ; preds = %67
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %58) #20, !dbg !4987
  br label %75

70:                                               ; preds = %59
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %58) #20, !dbg !4987
  br label %71

71:                                               ; preds = %70, %38
  call void @llvm.dbg.label(metadata !4923), !dbg !4988
  %72 = call i32 @ferror(%struct._IO_FILE* %0) #20, !dbg !4989
  %73 = icmp ne i32 %72, 0, !dbg !4989
  %74 = sext i1 %73 to i32, !dbg !4991
  br label %75, !dbg !4991

75:                                               ; preds = %44, %69, %43, %71, %2, %55
  %76 = phi i32 [ %56, %55 ], [ 0, %2 ], [ %74, %71 ], [ 0, %43 ], [ 0, %69 ], [ 0, %44 ], !dbg !4924
  ret i32 %76, !dbg !4992
}

; Function Attrs: nofree nounwind
declare !dbg !939 i32 @fgetc(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nobuiltin nofree nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #23

; Function Attrs: nofree nounwind readonly
declare !dbg !946 i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4993 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4995, metadata !DIExpression()), !dbg !5000
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !5001
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #20, !dbg !5001
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4996, metadata !DIExpression()), !dbg !5002
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #20, !dbg !5003
  %5 = icmp eq i32 %4, 0, !dbg !5003
  br i1 %5, label %6, label %13, !dbg !5005

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !5006
  %8 = load i16, i16* %7, align 16, !dbg !5006
  %9 = icmp eq i16 %8, 67, !dbg !5006
  br i1 %9, label %13, label %10, !dbg !5007

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.177, i64 0, i64 0), i64 6), !dbg !5008
  %12 = icmp ne i32 %11, 0, !dbg !5009
  br label %13, !dbg !5007

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !5000
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #20, !dbg !5010
  ret i1 %14, !dbg !5010
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !5011 {
  %1 = tail call i8* @nl_langinfo(i32 14) #20, !dbg !5014
  call void @llvm.dbg.value(metadata i8* %1, metadata !5013, metadata !DIExpression()), !dbg !5015
  %2 = icmp eq i8* %1, null, !dbg !5016
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.180, i64 0, i64 0), i8* %1, !dbg !5018
  call void @llvm.dbg.value(metadata i8* %3, metadata !5013, metadata !DIExpression()), !dbg !5015
  %4 = load i8, i8* %3, align 1, !dbg !5019, !tbaa !1446
  %5 = icmp eq i8 %4, 0, !dbg !5023
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.181, i64 0, i64 0), i8* %3, !dbg !5024
  call void @llvm.dbg.value(metadata i8* %6, metadata !5013, metadata !DIExpression()), !dbg !5015
  ret i8* %6, !dbg !5025
}

; Function Attrs: nounwind
declare !dbg !1344 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !5026 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5030, metadata !DIExpression()), !dbg !5033
  call void @llvm.dbg.value(metadata i8* %1, metadata !5031, metadata !DIExpression()), !dbg !5033
  call void @llvm.dbg.value(metadata i64 %2, metadata !5032, metadata !DIExpression()), !dbg !5033
  call void @llvm.dbg.value(metadata i32 %0, metadata !5034, metadata !DIExpression()) #20, !dbg !5043
  call void @llvm.dbg.value(metadata i8* %1, metadata !5037, metadata !DIExpression()) #20, !dbg !5043
  call void @llvm.dbg.value(metadata i64 %2, metadata !5038, metadata !DIExpression()) #20, !dbg !5043
  call void @llvm.dbg.value(metadata i32 %0, metadata !5045, metadata !DIExpression()) #20, !dbg !5051
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !5053
  call void @llvm.dbg.value(metadata i8* %4, metadata !5050, metadata !DIExpression()) #20, !dbg !5051
  call void @llvm.dbg.value(metadata i8* %4, metadata !5039, metadata !DIExpression()) #20, !dbg !5043
  %5 = icmp eq i8* %4, null, !dbg !5054
  br i1 %5, label %6, label %9, !dbg !5055

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5056
  br i1 %7, label %19, label %8, !dbg !5059

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !5060, !tbaa !1446
  br label %19, !dbg !5061

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #24, !dbg !5062
  call void @llvm.dbg.value(metadata i64 %10, metadata !5040, metadata !DIExpression()) #20, !dbg !5063
  %11 = icmp ult i64 %10, %2, !dbg !5064
  br i1 %11, label %12, label %14, !dbg !5066

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5067
  call void @llvm.dbg.value(metadata i8* %1, metadata !5069, metadata !DIExpression()) #20, !dbg !5074
  call void @llvm.dbg.value(metadata i8* %4, metadata !5072, metadata !DIExpression()) #20, !dbg !5074
  call void @llvm.dbg.value(metadata i64 %13, metadata !5073, metadata !DIExpression()) #20, !dbg !5074
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #20, !dbg !5076
  br label %19, !dbg !5077

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5078
  br i1 %15, label %19, label %16, !dbg !5081

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5082
  call void @llvm.dbg.value(metadata i8* %1, metadata !5069, metadata !DIExpression()) #20, !dbg !5084
  call void @llvm.dbg.value(metadata i8* %4, metadata !5072, metadata !DIExpression()) #20, !dbg !5084
  call void @llvm.dbg.value(metadata i64 %17, metadata !5073, metadata !DIExpression()) #20, !dbg !5084
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #20, !dbg !5086
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !5087
  store i8 0, i8* %18, align 1, !dbg !5088, !tbaa !1446
  br label %19, !dbg !5089

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !5090
  ret i32 %20, !dbg !5091
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !5092 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5094, metadata !DIExpression()), !dbg !5095
  call void @llvm.dbg.value(metadata i32 %0, metadata !5045, metadata !DIExpression()) #20, !dbg !5096
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !5098
  call void @llvm.dbg.value(metadata i8* %2, metadata !5050, metadata !DIExpression()) #20, !dbg !5096
  ret i8* %2, !dbg !5099
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i64 @freadahead(%struct._IO_FILE* nocapture readonly %0) local_unnamed_addr #11 !dbg !5100 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5138, metadata !DIExpression()), !dbg !5139
  %2 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5140
  %3 = load i8*, i8** %2, align 8, !dbg !5140, !tbaa !1667
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5142
  %5 = load i8*, i8** %4, align 8, !dbg !5142, !tbaa !4780
  %6 = icmp ugt i8* %3, %5, !dbg !5143
  br i1 %6, label %30, label %7, !dbg !5144

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5145
  %9 = bitcast i8** %8 to i64*, !dbg !5145
  %10 = load i64, i64* %9, align 8, !dbg !5145, !tbaa !1651
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5146
  %12 = bitcast i8** %11 to i64*, !dbg !5146
  %13 = load i64, i64* %12, align 8, !dbg !5146, !tbaa !1648
  %14 = sub i64 %10, %13, !dbg !5147
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5148
  %16 = load i32, i32* %15, align 8, !dbg !5148, !tbaa !1805
  %17 = and i32 %16, 256, !dbg !5149
  %18 = icmp eq i32 %17, 0, !dbg !5149
  br i1 %18, label %27, label %19, !dbg !5150

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 11, !dbg !5151
  %21 = bitcast i8** %20 to i64*, !dbg !5151
  %22 = load i64, i64* %21, align 8, !dbg !5151, !tbaa !5152
  %23 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5153
  %24 = bitcast i8** %23 to i64*, !dbg !5153
  %25 = load i64, i64* %24, align 8, !dbg !5153, !tbaa !4814
  %26 = sub i64 %22, %25, !dbg !5154
  br label %27, !dbg !5150

27:                                               ; preds = %7, %19
  %28 = phi i64 [ %26, %19 ], [ 0, %7 ], !dbg !5150
  %29 = add nsw i64 %14, %28, !dbg !5155
  br label %30, !dbg !5156

30:                                               ; preds = %1, %27
  %31 = phi i64 [ %29, %27 ], [ 0, %1 ], !dbg !5139
  ret i64 %31, !dbg !5157
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
attributes #11 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree nounwind }
attributes #17 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree nounwind readonly }
attributes #19 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nounwind }
attributes #21 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nobuiltin nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nounwind readonly }
attributes #25 = { noreturn nounwind }
attributes #26 = { noreturn }
attributes #27 = { nounwind readnone }
attributes #28 = { cold }

!llvm.dbg.cu = !{!2, !253, !347, !352, !397, !549, !592, !639, !403, !444, !645, !543, !687, !703, !706, !709, !712, !756, !797, !799, !840, !859, !897, !947, !954, !1347, !1350}
!llvm.ident = !{!1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352, !1352}
!llvm.module.flags = !{!1353, !1354, !1355, !1356, !1357}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "operating_mode", scope: !2, file: !3, line: 87, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !40, globals: !194, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/cut.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !11, !17, !31}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "operating_mode", file: !3, line: 76, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "undefined_mode", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "byte_mode", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "field_mode", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 33, baseType: !6, size: 32, elements: !13)
!12 = !DIFile(filename: "src/set-fields.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "SETFLD_ALLOW_DASH", value: 1, isUnsigned: true)
!15 = !DIEnumerator(name: "SETFLD_COMPLEMENT", value: 2, isUnsigned: true)
!16 = !DIEnumerator(name: "SETFLD_ERRMSG_USE_POS", value: 4, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !18, line: 32, baseType: !6, size: 32, elements: !19)
!18 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!32 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!33 = !{!34, !35, !36, !37, !38, !39}
!34 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!35 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!36 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!37 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!38 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!39 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!40 = !{!41, !51, !112, !116, !120, !123, !126, !133, !148, !152, !45, !102, !154, !158, !161, !165, !168, !171, !104, !47, !174, !179, !180, !181, !184, !190, !193}
!41 = !DISubprogram(name: "dcgettext", scope: !42, file: !42, line: 51, type: !43, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!42 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !47, !47, !49}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !{}
!51 = !DISubprogram(name: "fputs_unlocked", scope: !52, file: !52, line: 662, type: !53, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!52 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!53 = !DISubroutineType(types: !54)
!54 = !{!49, !47, !55}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !57, line: 49, size: 1728, elements: !58)
!57 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !74, !75, !76, !77, !81, !83, !85, !89, !92, !94, !97, !100, !101, !103, !107, !108}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !56, file: !57, line: 51, baseType: !49, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !56, file: !57, line: 54, baseType: !45, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !56, file: !57, line: 55, baseType: !45, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !56, file: !57, line: 56, baseType: !45, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !56, file: !57, line: 57, baseType: !45, size: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !56, file: !57, line: 58, baseType: !45, size: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !56, file: !57, line: 59, baseType: !45, size: 64, offset: 384)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !56, file: !57, line: 60, baseType: !45, size: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !56, file: !57, line: 61, baseType: !45, size: 64, offset: 512)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !56, file: !57, line: 64, baseType: !45, size: 64, offset: 576)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !56, file: !57, line: 65, baseType: !45, size: 64, offset: 640)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !56, file: !57, line: 66, baseType: !45, size: 64, offset: 704)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !56, file: !57, line: 68, baseType: !72, size: 64, offset: 768)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !57, line: 36, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !56, file: !57, line: 70, baseType: !55, size: 64, offset: 832)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !56, file: !57, line: 72, baseType: !49, size: 32, offset: 896)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !56, file: !57, line: 73, baseType: !49, size: 32, offset: 928)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !56, file: !57, line: 74, baseType: !78, size: 64, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !79, line: 152, baseType: !80)
!79 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!80 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !56, file: !57, line: 77, baseType: !82, size: 16, offset: 1024)
!82 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !56, file: !57, line: 78, baseType: !84, size: 8, offset: 1040)
!84 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !56, file: !57, line: 79, baseType: !86, size: 8, offset: 1048)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 1)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !56, file: !57, line: 81, baseType: !90, size: 64, offset: 1088)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !57, line: 43, baseType: null)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !56, file: !57, line: 89, baseType: !93, size: 64, offset: 1152)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !79, line: 153, baseType: !80)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !56, file: !57, line: 91, baseType: !95, size: 64, offset: 1216)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !57, line: 37, flags: DIFlagFwdDecl)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !56, file: !57, line: 92, baseType: !98, size: 64, offset: 1280)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !57, line: 38, flags: DIFlagFwdDecl)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !56, file: !57, line: 93, baseType: !55, size: 64, offset: 1344)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !56, file: !57, line: 94, baseType: !102, size: 64, offset: 1408)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !56, file: !57, line: 95, baseType: !104, size: 64, offset: 1472)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 46, baseType: !106)
!105 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!106 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !56, file: !57, line: 96, baseType: !49, size: 32, offset: 1536)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !56, file: !57, line: 98, baseType: !109, size: 160, offset: 1568)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 160, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 20)
!112 = !DISubprogram(name: "set_program_name", scope: !113, file: !113, line: 37, type: !114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!113 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!114 = !DISubroutineType(types: !115)
!115 = !{null, !47}
!116 = !DISubprogram(name: "setlocale", scope: !117, file: !117, line: 122, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!117 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!118 = !DISubroutineType(types: !119)
!119 = !{!45, !49, !47}
!120 = !DISubprogram(name: "bindtextdomain", scope: !42, file: !42, line: 86, type: !121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!121 = !DISubroutineType(types: !122)
!122 = !{!45, !47, !47}
!123 = !DISubprogram(name: "textdomain", scope: !42, file: !42, line: 82, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!124 = !DISubroutineType(types: !125)
!125 = !{!45, !47}
!126 = !DISubprogram(name: "atexit", scope: !127, file: !127, line: 595, type: !128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!127 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!128 = !DISubroutineType(types: !129)
!129 = !{!49, !130}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{null}
!133 = !DISubprogram(name: "getopt_long", scope: !134, file: !134, line: 66, type: !135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!134 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!135 = !DISubroutineType(types: !136)
!136 = !{!49, !49, !137, !47, !139, !146}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !134, line: 50, size: 256, elements: !142)
!142 = !{!143, !144, !145, !147}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !141, file: !134, line: 52, baseType: !47, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !141, file: !134, line: 55, baseType: !49, size: 32, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !141, file: !134, line: 56, baseType: !146, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !141, file: !134, line: 57, baseType: !49, size: 32, offset: 192)
!148 = !DISubprogram(name: "error", scope: !149, file: !149, line: 52, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!149 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!150 = !DISubroutineType(types: !151)
!151 = !{null, !49, !49, !47, null}
!152 = !DISubprogram(name: "xstrdup", scope: !153, file: !153, line: 64, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!153 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!154 = !DISubprogram(name: "version_etc", scope: !155, file: !155, line: 69, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!155 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!156 = !DISubroutineType(types: !157)
!157 = !{null, !55, !47, !47, !47, null}
!158 = !DISubprogram(name: "set_fields", scope: !12, file: !12, line: 42, type: !159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !47, !6}
!161 = !DISubprogram(name: "rpl_fclose", scope: !162, file: !162, line: 672, type: !163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!162 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!163 = !DISubroutineType(types: !164)
!164 = !{!49, !55}
!165 = !DISubprogram(name: "quotearg_n_style_colon", scope: !18, file: !18, line: 397, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!166 = !DISubroutineType(types: !167)
!167 = !{!45, !49, !17, !47}
!168 = !DISubprogram(name: "fadvise", scope: !32, file: !32, line: 72, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !55, !31}
!171 = !DISubprogram(name: "clearerr_unlocked", scope: !52, file: !52, line: 765, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !55}
!174 = !DISubprogram(name: "fwrite_unlocked", scope: !52, file: !52, line: 675, type: !175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!175 = !DISubroutineType(types: !176)
!176 = !{!106, !177, !106, !106, !55}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!181 = !DISubprogram(name: "ungetc", scope: !52, file: !52, line: 639, type: !182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!182 = !DISubroutineType(types: !183)
!183 = !{!49, !49, !55}
!184 = !DISubprogram(name: "getndelim2", scope: !185, file: !185, line: 38, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!185 = !DIFile(filename: "./lib/getndelim2.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!186 = !DISubroutineType(types: !187)
!187 = !{!80, !188, !189, !106, !106, !49, !49, !55}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!190 = !DISubprogram(name: "free", scope: !127, file: !127, line: 565, type: !191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !102}
!193 = !DISubprogram(name: "xalloc_die", scope: !153, file: !153, line: 51, type: !131, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !50)
!194 = !{!195, !0, !211, !213, !215, !217, !219, !221, !223, !225, !230, !232, !242, !244}
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "dummy", scope: !197, file: !3, line: 586, type: !208, isLocal: true, isDefinition: true)
!197 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 480, type: !198, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !200)
!198 = !DISubroutineType(types: !199)
!199 = !{!49, !49, !188}
!200 = !{!201, !202, !203, !204, !206, !207}
!201 = !DILocalVariable(name: "argc", arg: 1, scope: !197, file: !3, line: 480, type: !49)
!202 = !DILocalVariable(name: "argv", arg: 2, scope: !197, file: !3, line: 480, type: !188)
!203 = !DILocalVariable(name: "optc", scope: !197, file: !3, line: 482, type: !49)
!204 = !DILocalVariable(name: "ok", scope: !197, file: !3, line: 483, type: !205)
!205 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!206 = !DILocalVariable(name: "delim_specified", scope: !197, file: !3, line: 484, type: !205)
!207 = !DILocalVariable(name: "spec_list_string", scope: !197, file: !3, line: 485, type: !45)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 16, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 2)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "suppress_non_delimited", scope: !2, file: !3, line: 92, type: !205, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "complement", scope: !2, file: !3, line: 96, type: !205, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "delim", scope: !2, file: !3, line: 99, type: !180, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "output_delimiter_specified", scope: !2, file: !3, line: 105, type: !205, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "output_delimiter_length", scope: !2, file: !3, line: 108, type: !104, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "output_delimiter_string", scope: !2, file: !3, line: 112, type: !45, isLocal: true, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 115, type: !205, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 125, type: !227, isLocal: true, isDefinition: true)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 2816, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 11)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "line_delim", scope: !2, file: !3, line: 102, type: !180, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "current_rp", scope: !2, file: !3, line: 62, type: !234, isLocal: true, isDefinition: true)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "field_range_pair", file: !12, line: 20, size: 128, elements: !236)
!236 = !{!237, !241}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "lo", scope: !235, file: !12, line: 22, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !239, line: 102, baseType: !240)
!239 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !79, line: 73, baseType: !106)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "hi", scope: !235, file: !12, line: 23, baseType: !238, size: 64, offset: 64)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "field_1_buffer", scope: !2, file: !3, line: 71, type: !45, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "field_1_bufsize", scope: !2, file: !3, line: 74, type: !104, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!247 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!248 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!249 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!250 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "n_frp", scope: !253, file: !254, line: 31, type: !104, isLocal: false, isDefinition: true)
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !255, retainedTypes: !283, globals: !312, splitDebugInlining: false, nameTableKind: None)
!254 = !DIFile(filename: "src/set-fields.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!255 = !{!11, !256, !271}
!256 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !257, line: 46, baseType: !6, size: 32, elements: !258)
!257 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!259 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!260 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!261 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!262 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!263 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!264 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!265 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!266 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!267 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!268 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!269 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!270 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !272, file: !153, line: 186, baseType: !6, size: 32, elements: !281)
!272 = distinct !DISubprogram(name: "x2nrealloc", scope: !153, file: !153, line: 174, type: !273, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !276)
!273 = !DISubroutineType(types: !274)
!274 = !{!102, !102, !275, !104}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!276 = !{!277, !278, !279, !280}
!277 = !DILocalVariable(name: "p", arg: 1, scope: !272, file: !153, line: 174, type: !102)
!278 = !DILocalVariable(name: "pn", arg: 2, scope: !272, file: !153, line: 174, type: !275)
!279 = !DILocalVariable(name: "s", arg: 3, scope: !272, file: !153, line: 174, type: !104)
!280 = !DILocalVariable(name: "n", scope: !272, file: !153, line: 176, type: !104)
!281 = !{!282}
!282 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!283 = !{!41, !148, !284, !49, !82, !6, !288, !102, !238, !289, !293, !190, !297, !303, !104, !193, !306}
!284 = !DISubprogram(name: "usage", scope: !285, file: !285, line: 711, type: !286, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !50)
!285 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!286 = !DISubroutineType(types: !287)
!287 = !{null, !49}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!289 = !DISubprogram(name: "xstrndup", scope: !290, file: !290, line: 23, type: !291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!290 = !DIFile(filename: "./lib/xstrndup.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!291 = !DISubroutineType(types: !292)
!292 = !{!45, !47, !106}
!293 = !DISubprogram(name: "quote", scope: !294, file: !294, line: 44, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!294 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!295 = !DISubroutineType(types: !296)
!296 = !{!47, !47}
!297 = !DISubprogram(name: "qsort", scope: !127, file: !127, line: 830, type: !298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !102, !106, !106, !300}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!49, !177, !177}
!303 = !DISubprogram(name: "xrealloc", scope: !153, file: !153, line: 59, type: !304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!304 = !DISubroutineType(types: !305)
!305 = !{!102, !102, !106}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "field_range_pair", file: !12, line: 20, size: 128, elements: !309)
!309 = !{!310, !311}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "lo", scope: !308, file: !12, line: 22, baseType: !238, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "hi", scope: !308, file: !12, line: 23, baseType: !238, size: 64, offset: 64)
!312 = !{!313, !340, !251, !343}
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(name: "num_start", scope: !315, file: !254, line: 239, type: !47, isLocal: true, isDefinition: true)
!315 = distinct !DISubprogram(name: "set_fields", scope: !254, file: !254, line: 138, type: !159, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !316)
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !333, !334, !336}
!317 = !DILocalVariable(name: "fieldstr", arg: 1, scope: !315, file: !254, line: 138, type: !47)
!318 = !DILocalVariable(name: "options", arg: 2, scope: !315, file: !254, line: 138, type: !6)
!319 = !DILocalVariable(name: "initial", scope: !315, file: !254, line: 140, type: !238)
!320 = !DILocalVariable(name: "value", scope: !315, file: !254, line: 141, type: !238)
!321 = !DILocalVariable(name: "lhs_specified", scope: !315, file: !254, line: 142, type: !205)
!322 = !DILocalVariable(name: "rhs_specified", scope: !315, file: !254, line: 143, type: !205)
!323 = !DILocalVariable(name: "dash_found", scope: !315, file: !254, line: 144, type: !205)
!324 = !DILocalVariable(name: "in_digits", scope: !315, file: !254, line: 146, type: !205)
!325 = !DILocalVariable(name: "len", scope: !326, file: !254, line: 256, type: !104)
!326 = distinct !DILexicalBlock(scope: !327, file: !254, line: 252, column: 13)
!327 = distinct !DILexicalBlock(scope: !328, file: !254, line: 250, column: 15)
!328 = distinct !DILexicalBlock(scope: !329, file: !254, line: 236, column: 9)
!329 = distinct !DILexicalBlock(scope: !330, file: !254, line: 235, column: 16)
!330 = distinct !DILexicalBlock(scope: !331, file: !254, line: 181, column: 16)
!331 = distinct !DILexicalBlock(scope: !332, file: !254, line: 161, column: 11)
!332 = distinct !DILexicalBlock(scope: !315, file: !254, line: 160, column: 5)
!333 = !DILocalVariable(name: "bad_num", scope: !326, file: !254, line: 257, type: !45)
!334 = !DILocalVariable(name: "i", scope: !335, file: !254, line: 286, type: !104)
!335 = distinct !DILexicalBlock(scope: !315, file: !254, line: 286, column: 3)
!336 = !DILocalVariable(name: "j", scope: !337, file: !254, line: 288, type: !104)
!337 = distinct !DILexicalBlock(scope: !338, file: !254, line: 288, column: 7)
!338 = distinct !DILexicalBlock(scope: !339, file: !254, line: 287, column: 5)
!339 = distinct !DILexicalBlock(scope: !335, file: !254, line: 286, column: 3)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(name: "frp", scope: !253, file: !254, line: 28, type: !342, isLocal: false, isDefinition: true)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(name: "n_frp_allocated", scope: !253, file: !254, line: 34, type: !104, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "Version", scope: !347, file: !348, line: 2, type: !47, isLocal: false, isDefinition: true)
!347 = distinct !DICompileUnit(language: DW_LANG_C99, file: !348, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, globals: !349, splitDebugInlining: false, nameTableKind: None)
!348 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!349 = !{!345}
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "file_name", scope: !352, file: !353, line: 46, type: !47, isLocal: true, isDefinition: true)
!352 = distinct !DICompileUnit(language: DW_LANG_C99, file: !353, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !354, globals: !392, splitDebugInlining: false, nameTableKind: None)
!353 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!354 = !{!355, !41, !391, !148}
!355 = !DISubprogram(name: "close_stream", scope: !356, file: !356, line: 2, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!356 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!357 = !DISubroutineType(types: !358)
!358 = !{!49, !359}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !57, line: 49, size: 1728, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !360, file: !57, line: 51, baseType: !49, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !360, file: !57, line: 54, baseType: !45, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !360, file: !57, line: 55, baseType: !45, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !360, file: !57, line: 56, baseType: !45, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !360, file: !57, line: 57, baseType: !45, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !360, file: !57, line: 58, baseType: !45, size: 64, offset: 320)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !360, file: !57, line: 59, baseType: !45, size: 64, offset: 384)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !360, file: !57, line: 60, baseType: !45, size: 64, offset: 448)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !360, file: !57, line: 61, baseType: !45, size: 64, offset: 512)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !360, file: !57, line: 64, baseType: !45, size: 64, offset: 576)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !360, file: !57, line: 65, baseType: !45, size: 64, offset: 640)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !360, file: !57, line: 66, baseType: !45, size: 64, offset: 704)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !360, file: !57, line: 68, baseType: !72, size: 64, offset: 768)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !360, file: !57, line: 70, baseType: !359, size: 64, offset: 832)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !360, file: !57, line: 72, baseType: !49, size: 32, offset: 896)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !360, file: !57, line: 73, baseType: !49, size: 32, offset: 928)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !360, file: !57, line: 74, baseType: !78, size: 64, offset: 960)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !360, file: !57, line: 77, baseType: !82, size: 16, offset: 1024)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !360, file: !57, line: 78, baseType: !84, size: 8, offset: 1040)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !360, file: !57, line: 79, baseType: !86, size: 8, offset: 1048)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !360, file: !57, line: 81, baseType: !90, size: 64, offset: 1088)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !360, file: !57, line: 89, baseType: !93, size: 64, offset: 1152)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !360, file: !57, line: 91, baseType: !95, size: 64, offset: 1216)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !360, file: !57, line: 92, baseType: !98, size: 64, offset: 1280)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !360, file: !57, line: 93, baseType: !359, size: 64, offset: 1344)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !360, file: !57, line: 94, baseType: !102, size: 64, offset: 1408)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !360, file: !57, line: 95, baseType: !104, size: 64, offset: 1472)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !360, file: !57, line: 96, baseType: !49, size: 32, offset: 1536)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !360, file: !57, line: 98, baseType: !109, size: 160, offset: 1568)
!391 = !DISubprogram(name: "quotearg_colon", scope: !18, file: !18, line: 391, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!392 = !{!350, !393}
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !352, file: !353, line: 56, type: !205, isLocal: true, isDefinition: true)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(name: "exit_failure", scope: !397, file: !398, line: 24, type: !400, isLocal: false, isDefinition: true)
!397 = distinct !DICompileUnit(language: DW_LANG_C99, file: !398, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, globals: !399, splitDebugInlining: false, nameTableKind: None)
!398 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!399 = !{!395}
!400 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !49)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "program_name", scope: !403, file: !404, line: 33, type: !47, isLocal: false, isDefinition: true)
!403 = distinct !DICompileUnit(language: DW_LANG_C99, file: !404, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !405, globals: !441, splitDebugInlining: false, nameTableKind: None)
!404 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!405 = !{!102, !406, !45}
!406 = !DISubprogram(name: "fputs", scope: !52, file: !52, line: 626, type: !407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!407 = !DISubroutineType(types: !408)
!408 = !{!49, !47, !409}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !57, line: 49, size: 1728, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !410, file: !57, line: 51, baseType: !49, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !410, file: !57, line: 54, baseType: !45, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !410, file: !57, line: 55, baseType: !45, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !410, file: !57, line: 56, baseType: !45, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !410, file: !57, line: 57, baseType: !45, size: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !410, file: !57, line: 58, baseType: !45, size: 64, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !410, file: !57, line: 59, baseType: !45, size: 64, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !410, file: !57, line: 60, baseType: !45, size: 64, offset: 448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !410, file: !57, line: 61, baseType: !45, size: 64, offset: 512)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !410, file: !57, line: 64, baseType: !45, size: 64, offset: 576)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !410, file: !57, line: 65, baseType: !45, size: 64, offset: 640)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !410, file: !57, line: 66, baseType: !45, size: 64, offset: 704)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !410, file: !57, line: 68, baseType: !72, size: 64, offset: 768)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !410, file: !57, line: 70, baseType: !409, size: 64, offset: 832)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !410, file: !57, line: 72, baseType: !49, size: 32, offset: 896)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !410, file: !57, line: 73, baseType: !49, size: 32, offset: 928)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !410, file: !57, line: 74, baseType: !78, size: 64, offset: 960)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !410, file: !57, line: 77, baseType: !82, size: 16, offset: 1024)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !410, file: !57, line: 78, baseType: !84, size: 8, offset: 1040)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !410, file: !57, line: 79, baseType: !86, size: 8, offset: 1048)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !410, file: !57, line: 81, baseType: !90, size: 64, offset: 1088)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !410, file: !57, line: 89, baseType: !93, size: 64, offset: 1152)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !410, file: !57, line: 91, baseType: !95, size: 64, offset: 1216)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !410, file: !57, line: 92, baseType: !98, size: 64, offset: 1280)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !410, file: !57, line: 93, baseType: !409, size: 64, offset: 1344)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !410, file: !57, line: 94, baseType: !102, size: 64, offset: 1408)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !410, file: !57, line: 95, baseType: !104, size: 64, offset: 1472)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !410, file: !57, line: 96, baseType: !49, size: 32, offset: 1536)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !410, file: !57, line: 98, baseType: !109, size: 160, offset: 1568)
!441 = !{!401}
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !444, file: !445, line: 85, type: !539, isLocal: false, isDefinition: true)
!444 = distinct !DICompileUnit(language: DW_LANG_C99, file: !445, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !446, retainedTypes: !452, globals: !512, splitDebugInlining: false, nameTableKind: None)
!445 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!446 = !{!17, !447, !256}
!447 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !18, line: 242, baseType: !6, size: 32, elements: !448)
!448 = !{!449, !450, !451}
!449 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!450 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!451 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!452 = !{!453, !456, !190, !471, !49, !82, !474, !104, !491, !495, !41, !501, !505, !45, !509, !193, !303}
!453 = !DISubprogram(name: "xmemdup", scope: !153, file: !153, line: 62, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!454 = !DISubroutineType(types: !455)
!455 = !{!102, !177, !106}
!456 = !DISubprogram(name: "quotearg_alloc_mem", scope: !18, file: !18, line: 342, type: !457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!457 = !DISubroutineType(types: !458)
!458 = !{!45, !47, !106, !189, !459}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !445, line: 65, size: 448, elements: !462)
!462 = !{!463, !464, !465, !469, !470}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !461, file: !445, line: 68, baseType: !17, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !461, file: !445, line: 71, baseType: !49, size: 32, offset: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !461, file: !445, line: 75, baseType: !466, size: 256, offset: 64)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !467)
!467 = !{!468}
!468 = !DISubrange(count: 8)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !461, file: !445, line: 78, baseType: !47, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !461, file: !445, line: 81, baseType: !47, size: 64, offset: 384)
!471 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !18, file: !18, line: 408, type: !472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!472 = !DISubroutineType(types: !473)
!473 = !{!45, !49, !47, !47, !47, !106}
!474 = !DISubprogram(name: "rpl_mbrtowc", scope: !475, file: !475, line: 717, type: !476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!475 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!476 = !DISubroutineType(types: !477)
!477 = !{!106, !146, !47, !106, !478}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !480, line: 13, size: 64, elements: !481)
!480 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!481 = !{!482, !483}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !479, file: !480, line: 15, baseType: !49, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !479, file: !480, line: 20, baseType: !484, size: 32, offset: 32)
!484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !479, file: !480, line: 16, size: 32, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !484, file: !480, line: 18, baseType: !6, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !484, file: !480, line: 19, baseType: !488, size: 32)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 4)
!491 = !DISubprogram(name: "iswprint", scope: !492, file: !492, line: 120, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!492 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!493 = !DISubroutineType(types: !494)
!494 = !{!49, !6}
!495 = !DISubprogram(name: "mbsinit", scope: !496, file: !496, line: 292, type: !497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!496 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!497 = !DISubroutineType(types: !498)
!498 = !{!49, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!501 = !DISubprogram(name: "locale_charset", scope: !502, file: !502, line: 35, type: !503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!502 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!503 = !DISubroutineType(types: !504)
!504 = !{!47}
!505 = !DISubprogram(name: "c_strcasecmp", scope: !506, file: !506, line: 42, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!506 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!507 = !DISubroutineType(types: !508)
!508 = !{!49, !47, !47}
!509 = !DISubprogram(name: "xmalloc", scope: !153, file: !153, line: 53, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!510 = !DISubroutineType(types: !511)
!511 = !{!102, !106}
!512 = !{!442, !513, !519, !521, !523, !528, !535, !537}
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !444, file: !445, line: 101, type: !515, isLocal: false, isDefinition: true)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 320, elements: !517)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!517 = !{!518}
!518 = !DISubrange(count: 10)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !444, file: !445, line: 1052, type: !461, isLocal: false, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !444, file: !445, line: 116, type: !461, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(name: "slot0", scope: !444, file: !445, line: 842, type: !525, isLocal: true, isDefinition: true)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2048, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 256)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "slotvec", scope: !444, file: !445, line: 845, type: !530, isLocal: true, isDefinition: true)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !445, line: 834, size: 128, elements: !532)
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !531, file: !445, line: 836, baseType: !104, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !531, file: !445, line: 837, baseType: !45, size: 64, offset: 64)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(name: "nslots", scope: !444, file: !445, line: 843, type: !49, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(name: "slotvec0", scope: !444, file: !445, line: 844, type: !531, isLocal: true, isDefinition: true)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 704, elements: !228)
!540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !543, file: !544, line: 26, type: !546, isLocal: false, isDefinition: true)
!543 = distinct !DICompileUnit(language: DW_LANG_C99, file: !544, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, globals: !545, splitDebugInlining: false, nameTableKind: None)
!544 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!545 = !{!541}
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 376, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: 47)
!549 = distinct !DICompileUnit(language: DW_LANG_C99, file: !550, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !551, retainedTypes: !552, splitDebugInlining: false, nameTableKind: None)
!550 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!551 = !{!31}
!552 = !{!553, !557}
!553 = !DISubprogram(name: "posix_fadvise", scope: !554, file: !554, line: 288, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!554 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!555 = !DISubroutineType(types: !556)
!556 = !{!49, !49, !80, !80, !49}
!557 = !DISubprogram(name: "fileno", scope: !52, file: !52, line: 786, type: !558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!558 = !DISubroutineType(types: !559)
!559 = !{!49, !560}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !57, line: 49, size: 1728, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !561, file: !57, line: 51, baseType: !49, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !561, file: !57, line: 54, baseType: !45, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !561, file: !57, line: 55, baseType: !45, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !561, file: !57, line: 56, baseType: !45, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !561, file: !57, line: 57, baseType: !45, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !561, file: !57, line: 58, baseType: !45, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !561, file: !57, line: 59, baseType: !45, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !561, file: !57, line: 60, baseType: !45, size: 64, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !561, file: !57, line: 61, baseType: !45, size: 64, offset: 512)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !561, file: !57, line: 64, baseType: !45, size: 64, offset: 576)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !561, file: !57, line: 65, baseType: !45, size: 64, offset: 640)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !561, file: !57, line: 66, baseType: !45, size: 64, offset: 704)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !561, file: !57, line: 68, baseType: !72, size: 64, offset: 768)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !561, file: !57, line: 70, baseType: !560, size: 64, offset: 832)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !561, file: !57, line: 72, baseType: !49, size: 32, offset: 896)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !561, file: !57, line: 73, baseType: !49, size: 32, offset: 928)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !561, file: !57, line: 74, baseType: !78, size: 64, offset: 960)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !561, file: !57, line: 77, baseType: !82, size: 16, offset: 1024)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !561, file: !57, line: 78, baseType: !84, size: 8, offset: 1040)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !561, file: !57, line: 79, baseType: !86, size: 8, offset: 1048)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !561, file: !57, line: 81, baseType: !90, size: 64, offset: 1088)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !561, file: !57, line: 89, baseType: !93, size: 64, offset: 1152)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !561, file: !57, line: 91, baseType: !95, size: 64, offset: 1216)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !561, file: !57, line: 92, baseType: !98, size: 64, offset: 1280)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !561, file: !57, line: 93, baseType: !560, size: 64, offset: 1344)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !561, file: !57, line: 94, baseType: !102, size: 64, offset: 1408)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !561, file: !57, line: 95, baseType: !104, size: 64, offset: 1472)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !561, file: !57, line: 96, baseType: !49, size: 32, offset: 1536)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !561, file: !57, line: 98, baseType: !109, size: 160, offset: 1568)
!592 = distinct !DICompileUnit(language: DW_LANG_C99, file: !593, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !594, splitDebugInlining: false, nameTableKind: None)
!593 = !DIFile(filename: "lib/getndelim2.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!594 = !{!595, !631, !635, !179}
!595 = !DISubprogram(name: "freadptr", scope: !596, file: !596, line: 42, type: !597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!596 = !DIFile(filename: "./lib/freadptr.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!597 = !DISubroutineType(types: !598)
!598 = !{!47, !599, !189}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !57, line: 49, size: 1728, elements: !601)
!601 = !{!602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !600, file: !57, line: 51, baseType: !49, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !600, file: !57, line: 54, baseType: !45, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !600, file: !57, line: 55, baseType: !45, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !600, file: !57, line: 56, baseType: !45, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !600, file: !57, line: 57, baseType: !45, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !600, file: !57, line: 58, baseType: !45, size: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !600, file: !57, line: 59, baseType: !45, size: 64, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !600, file: !57, line: 60, baseType: !45, size: 64, offset: 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !600, file: !57, line: 61, baseType: !45, size: 64, offset: 512)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !600, file: !57, line: 64, baseType: !45, size: 64, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !600, file: !57, line: 65, baseType: !45, size: 64, offset: 640)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !600, file: !57, line: 66, baseType: !45, size: 64, offset: 704)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !600, file: !57, line: 68, baseType: !72, size: 64, offset: 768)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !600, file: !57, line: 70, baseType: !599, size: 64, offset: 832)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !600, file: !57, line: 72, baseType: !49, size: 32, offset: 896)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !600, file: !57, line: 73, baseType: !49, size: 32, offset: 928)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !600, file: !57, line: 74, baseType: !78, size: 64, offset: 960)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !600, file: !57, line: 77, baseType: !82, size: 16, offset: 1024)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !600, file: !57, line: 78, baseType: !84, size: 8, offset: 1040)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !600, file: !57, line: 79, baseType: !86, size: 8, offset: 1048)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !600, file: !57, line: 81, baseType: !90, size: 64, offset: 1088)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !600, file: !57, line: 89, baseType: !93, size: 64, offset: 1152)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !600, file: !57, line: 91, baseType: !95, size: 64, offset: 1216)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !600, file: !57, line: 92, baseType: !98, size: 64, offset: 1280)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !600, file: !57, line: 93, baseType: !599, size: 64, offset: 1344)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !600, file: !57, line: 94, baseType: !102, size: 64, offset: 1408)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !600, file: !57, line: 95, baseType: !104, size: 64, offset: 1472)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !600, file: !57, line: 96, baseType: !49, size: 32, offset: 1536)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !600, file: !57, line: 98, baseType: !109, size: 160, offset: 1568)
!631 = !DISubprogram(name: "memchr2", scope: !632, file: !632, line: 27, type: !633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!632 = !DIFile(filename: "./lib/memchr2.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!633 = !DISubroutineType(types: !634)
!634 = !{!102, !177, !49, !49, !106}
!635 = !DISubprogram(name: "freadseek", scope: !636, file: !636, line: 38, type: !637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!636 = !DIFile(filename: "./lib/freadseek.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!637 = !DISubroutineType(types: !638)
!638 = !{!49, !599, !106}
!639 = distinct !DICompileUnit(language: DW_LANG_C99, file: !640, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !641, splitDebugInlining: false, nameTableKind: None)
!640 = !DIFile(filename: "lib/memchr2.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!641 = !{!180, !642, !102, !643}
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !239, line: 90, baseType: !106)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!645 = distinct !DICompileUnit(language: DW_LANG_C99, file: !646, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !647, retainedTypes: !651, splitDebugInlining: false, nameTableKind: None)
!646 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!647 = !{!648}
!648 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !646, line: 40, baseType: !6, size: 32, elements: !649)
!649 = !{!650}
!650 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!651 = !{!41, !652, !102}
!652 = !DISubprogram(name: "fputs_unlocked", scope: !52, file: !52, line: 662, type: !653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!653 = !DISubroutineType(types: !654)
!654 = !{!49, !47, !655}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !57, line: 49, size: 1728, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !656, file: !57, line: 51, baseType: !49, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !656, file: !57, line: 54, baseType: !45, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !656, file: !57, line: 55, baseType: !45, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !656, file: !57, line: 56, baseType: !45, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !656, file: !57, line: 57, baseType: !45, size: 64, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !656, file: !57, line: 58, baseType: !45, size: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !656, file: !57, line: 59, baseType: !45, size: 64, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !656, file: !57, line: 60, baseType: !45, size: 64, offset: 448)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !656, file: !57, line: 61, baseType: !45, size: 64, offset: 512)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !656, file: !57, line: 64, baseType: !45, size: 64, offset: 576)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !656, file: !57, line: 65, baseType: !45, size: 64, offset: 640)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !656, file: !57, line: 66, baseType: !45, size: 64, offset: 704)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !656, file: !57, line: 68, baseType: !72, size: 64, offset: 768)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !656, file: !57, line: 70, baseType: !655, size: 64, offset: 832)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !656, file: !57, line: 72, baseType: !49, size: 32, offset: 896)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !656, file: !57, line: 73, baseType: !49, size: 32, offset: 928)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !656, file: !57, line: 74, baseType: !78, size: 64, offset: 960)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !656, file: !57, line: 77, baseType: !82, size: 16, offset: 1024)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !656, file: !57, line: 78, baseType: !84, size: 8, offset: 1040)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !656, file: !57, line: 79, baseType: !86, size: 8, offset: 1048)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !656, file: !57, line: 81, baseType: !90, size: 64, offset: 1088)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !656, file: !57, line: 89, baseType: !93, size: 64, offset: 1152)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !656, file: !57, line: 91, baseType: !95, size: 64, offset: 1216)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !656, file: !57, line: 92, baseType: !98, size: 64, offset: 1280)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !656, file: !57, line: 93, baseType: !655, size: 64, offset: 1344)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !656, file: !57, line: 94, baseType: !102, size: 64, offset: 1408)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !656, file: !57, line: 95, baseType: !104, size: 64, offset: 1472)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !656, file: !57, line: 96, baseType: !49, size: 32, offset: 1536)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !656, file: !57, line: 98, baseType: !109, size: 160, offset: 1568)
!687 = distinct !DICompileUnit(language: DW_LANG_C99, file: !688, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !689, retainedTypes: !697, splitDebugInlining: false, nameTableKind: None)
!688 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!689 = !{!690}
!690 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !691, file: !153, line: 186, baseType: !6, size: 32, elements: !281)
!691 = distinct !DISubprogram(name: "x2nrealloc", scope: !153, file: !153, line: 174, type: !273, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !692)
!692 = !{!693, !694, !695, !696}
!693 = !DILocalVariable(name: "p", arg: 1, scope: !691, file: !153, line: 174, type: !102)
!694 = !DILocalVariable(name: "pn", arg: 2, scope: !691, file: !153, line: 174, type: !275)
!695 = !DILocalVariable(name: "s", arg: 3, scope: !691, file: !153, line: 174, type: !104)
!696 = !DILocalVariable(name: "n", scope: !691, file: !153, line: 176, type: !104)
!697 = !{!104, !193, !509, !303, !45, !190, !102, !698, !701}
!698 = !DISubprogram(name: "xcalloc", scope: !153, file: !153, line: 57, type: !699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!699 = !DISubroutineType(types: !700)
!700 = !{!102, !106, !106}
!701 = !DISubprogram(name: "rpl_calloc", scope: !702, file: !702, line: 688, type: !699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!702 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!703 = distinct !DICompileUnit(language: DW_LANG_C99, file: !704, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !705, splitDebugInlining: false, nameTableKind: None)
!704 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!705 = !{!41, !148}
!706 = distinct !DICompileUnit(language: DW_LANG_C99, file: !707, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !708, splitDebugInlining: false, nameTableKind: None)
!707 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!708 = !{!193}
!709 = distinct !DICompileUnit(language: DW_LANG_C99, file: !710, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !711, splitDebugInlining: false, nameTableKind: None)
!710 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!711 = !{!102}
!712 = distinct !DICompileUnit(language: DW_LANG_C99, file: !713, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !714, splitDebugInlining: false, nameTableKind: None)
!713 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!714 = !{!715, !750, !751, !755}
!715 = !DISubprogram(name: "fileno", scope: !52, file: !52, line: 786, type: !716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!716 = !DISubroutineType(types: !717)
!717 = !{!49, !718}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !57, line: 49, size: 1728, elements: !720)
!720 = !{!721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !719, file: !57, line: 51, baseType: !49, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !719, file: !57, line: 54, baseType: !45, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !719, file: !57, line: 55, baseType: !45, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !719, file: !57, line: 56, baseType: !45, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !719, file: !57, line: 57, baseType: !45, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !719, file: !57, line: 58, baseType: !45, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !719, file: !57, line: 59, baseType: !45, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !719, file: !57, line: 60, baseType: !45, size: 64, offset: 448)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !719, file: !57, line: 61, baseType: !45, size: 64, offset: 512)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !719, file: !57, line: 64, baseType: !45, size: 64, offset: 576)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !719, file: !57, line: 65, baseType: !45, size: 64, offset: 640)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !719, file: !57, line: 66, baseType: !45, size: 64, offset: 704)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !719, file: !57, line: 68, baseType: !72, size: 64, offset: 768)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !719, file: !57, line: 70, baseType: !718, size: 64, offset: 832)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !719, file: !57, line: 72, baseType: !49, size: 32, offset: 896)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !719, file: !57, line: 73, baseType: !49, size: 32, offset: 928)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !719, file: !57, line: 74, baseType: !78, size: 64, offset: 960)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !719, file: !57, line: 77, baseType: !82, size: 16, offset: 1024)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !719, file: !57, line: 78, baseType: !84, size: 8, offset: 1040)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !719, file: !57, line: 79, baseType: !86, size: 8, offset: 1048)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !719, file: !57, line: 81, baseType: !90, size: 64, offset: 1088)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !719, file: !57, line: 89, baseType: !93, size: 64, offset: 1152)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !719, file: !57, line: 91, baseType: !95, size: 64, offset: 1216)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !719, file: !57, line: 92, baseType: !98, size: 64, offset: 1280)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !719, file: !57, line: 93, baseType: !718, size: 64, offset: 1344)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !719, file: !57, line: 94, baseType: !102, size: 64, offset: 1408)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !719, file: !57, line: 95, baseType: !104, size: 64, offset: 1472)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !719, file: !57, line: 96, baseType: !49, size: 32, offset: 1536)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !719, file: !57, line: 98, baseType: !109, size: 160, offset: 1568)
!750 = !DISubprogram(name: "fclose", scope: !52, file: !52, line: 213, type: !716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!751 = !DISubprogram(name: "lseek", scope: !752, file: !752, line: 334, type: !753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!752 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!753 = !DISubroutineType(types: !754)
!754 = !{!80, !49, !80, !49}
!755 = !DISubprogram(name: "rpl_fflush", scope: !162, file: !162, line: 718, type: !716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!756 = distinct !DICompileUnit(language: DW_LANG_C99, file: !757, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !758, splitDebugInlining: false, nameTableKind: None)
!757 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!758 = !{!102, !759, !794}
!759 = !DISubprogram(name: "fflush", scope: !52, file: !52, line: 218, type: !760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!760 = !DISubroutineType(types: !761)
!761 = !{!49, !762}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !57, line: 49, size: 1728, elements: !764)
!764 = !{!765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !763, file: !57, line: 51, baseType: !49, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !763, file: !57, line: 54, baseType: !45, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !763, file: !57, line: 55, baseType: !45, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !763, file: !57, line: 56, baseType: !45, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !763, file: !57, line: 57, baseType: !45, size: 64, offset: 256)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !763, file: !57, line: 58, baseType: !45, size: 64, offset: 320)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !763, file: !57, line: 59, baseType: !45, size: 64, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !763, file: !57, line: 60, baseType: !45, size: 64, offset: 448)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !763, file: !57, line: 61, baseType: !45, size: 64, offset: 512)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !763, file: !57, line: 64, baseType: !45, size: 64, offset: 576)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !763, file: !57, line: 65, baseType: !45, size: 64, offset: 640)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !763, file: !57, line: 66, baseType: !45, size: 64, offset: 704)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !763, file: !57, line: 68, baseType: !72, size: 64, offset: 768)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !763, file: !57, line: 70, baseType: !762, size: 64, offset: 832)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !763, file: !57, line: 72, baseType: !49, size: 32, offset: 896)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !763, file: !57, line: 73, baseType: !49, size: 32, offset: 928)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !763, file: !57, line: 74, baseType: !78, size: 64, offset: 960)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !763, file: !57, line: 77, baseType: !82, size: 16, offset: 1024)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !763, file: !57, line: 78, baseType: !84, size: 8, offset: 1040)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !763, file: !57, line: 79, baseType: !86, size: 8, offset: 1048)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !763, file: !57, line: 81, baseType: !90, size: 64, offset: 1088)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !763, file: !57, line: 89, baseType: !93, size: 64, offset: 1152)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !763, file: !57, line: 91, baseType: !95, size: 64, offset: 1216)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !763, file: !57, line: 92, baseType: !98, size: 64, offset: 1280)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !763, file: !57, line: 93, baseType: !762, size: 64, offset: 1344)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !763, file: !57, line: 94, baseType: !102, size: 64, offset: 1408)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !763, file: !57, line: 95, baseType: !104, size: 64, offset: 1472)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !763, file: !57, line: 96, baseType: !49, size: 32, offset: 1536)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !763, file: !57, line: 98, baseType: !109, size: 160, offset: 1568)
!794 = !DISubprogram(name: "rpl_fseeko", scope: !162, file: !162, line: 1034, type: !795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!795 = !DISubroutineType(types: !796)
!796 = !{!49, !762, !80, !49}
!797 = distinct !DICompileUnit(language: DW_LANG_C99, file: !798, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !504, splitDebugInlining: false, nameTableKind: None)
!798 = !DIFile(filename: "lib/freadptr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!799 = distinct !DICompileUnit(language: DW_LANG_C99, file: !800, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !801, splitDebugInlining: false, nameTableKind: None)
!800 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!801 = !{!102, !802, !751, !837}
!802 = !DISubprogram(name: "fileno", scope: !52, file: !52, line: 786, type: !803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!803 = !DISubroutineType(types: !804)
!804 = !{!49, !805}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !57, line: 49, size: 1728, elements: !807)
!807 = !{!808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !806, file: !57, line: 51, baseType: !49, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !806, file: !57, line: 54, baseType: !45, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !806, file: !57, line: 55, baseType: !45, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !806, file: !57, line: 56, baseType: !45, size: 64, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !806, file: !57, line: 57, baseType: !45, size: 64, offset: 256)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !806, file: !57, line: 58, baseType: !45, size: 64, offset: 320)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !806, file: !57, line: 59, baseType: !45, size: 64, offset: 384)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !806, file: !57, line: 60, baseType: !45, size: 64, offset: 448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !806, file: !57, line: 61, baseType: !45, size: 64, offset: 512)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !806, file: !57, line: 64, baseType: !45, size: 64, offset: 576)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !806, file: !57, line: 65, baseType: !45, size: 64, offset: 640)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !806, file: !57, line: 66, baseType: !45, size: 64, offset: 704)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !806, file: !57, line: 68, baseType: !72, size: 64, offset: 768)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !806, file: !57, line: 70, baseType: !805, size: 64, offset: 832)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !806, file: !57, line: 72, baseType: !49, size: 32, offset: 896)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !806, file: !57, line: 73, baseType: !49, size: 32, offset: 928)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !806, file: !57, line: 74, baseType: !78, size: 64, offset: 960)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !806, file: !57, line: 77, baseType: !82, size: 16, offset: 1024)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !806, file: !57, line: 78, baseType: !84, size: 8, offset: 1040)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !806, file: !57, line: 79, baseType: !86, size: 8, offset: 1048)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !806, file: !57, line: 81, baseType: !90, size: 64, offset: 1088)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !806, file: !57, line: 89, baseType: !93, size: 64, offset: 1152)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !806, file: !57, line: 91, baseType: !95, size: 64, offset: 1216)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !806, file: !57, line: 92, baseType: !98, size: 64, offset: 1280)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !806, file: !57, line: 93, baseType: !805, size: 64, offset: 1344)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !806, file: !57, line: 94, baseType: !102, size: 64, offset: 1408)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !806, file: !57, line: 95, baseType: !104, size: 64, offset: 1472)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !806, file: !57, line: 96, baseType: !49, size: 32, offset: 1536)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !806, file: !57, line: 98, baseType: !109, size: 160, offset: 1568)
!837 = !DISubprogram(name: "fseeko", scope: !52, file: !52, line: 707, type: !838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!838 = !DISubroutineType(types: !839)
!839 = !{!49, !805, !80, !49}
!840 = distinct !DICompileUnit(language: DW_LANG_C99, file: !841, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !842, splitDebugInlining: false, nameTableKind: None)
!841 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!842 = !{!843, !104, !855}
!843 = !DISubprogram(name: "mbrtowc", scope: !496, file: !496, line: 296, type: !844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!844 = !DISubroutineType(types: !845)
!845 = !{!106, !146, !47, !106, !846}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !480, line: 13, size: 64, elements: !848)
!848 = !{!849, !850}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !847, file: !480, line: 15, baseType: !49, size: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !847, file: !480, line: 20, baseType: !851, size: 32, offset: 32)
!851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !847, file: !480, line: 16, size: 32, elements: !852)
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !851, file: !480, line: 18, baseType: !6, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !851, file: !480, line: 19, baseType: !488, size: 32)
!855 = !DISubprogram(name: "hard_locale", scope: !856, file: !856, line: 26, type: !857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!856 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!857 = !DISubroutineType(types: !858)
!858 = !{!205, !49}
!859 = distinct !DICompileUnit(language: DW_LANG_C99, file: !860, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !861, splitDebugInlining: false, nameTableKind: None)
!860 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!861 = !{!862}
!862 = !DISubprogram(name: "rpl_fclose", scope: !162, file: !162, line: 672, type: !863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!863 = !DISubroutineType(types: !864)
!864 = !{!49, !865}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !57, line: 49, size: 1728, elements: !867)
!867 = !{!868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !866, file: !57, line: 51, baseType: !49, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !866, file: !57, line: 54, baseType: !45, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !866, file: !57, line: 55, baseType: !45, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !866, file: !57, line: 56, baseType: !45, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !866, file: !57, line: 57, baseType: !45, size: 64, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !866, file: !57, line: 58, baseType: !45, size: 64, offset: 320)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !866, file: !57, line: 59, baseType: !45, size: 64, offset: 384)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !866, file: !57, line: 60, baseType: !45, size: 64, offset: 448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !866, file: !57, line: 61, baseType: !45, size: 64, offset: 512)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !866, file: !57, line: 64, baseType: !45, size: 64, offset: 576)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !866, file: !57, line: 65, baseType: !45, size: 64, offset: 640)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !866, file: !57, line: 66, baseType: !45, size: 64, offset: 704)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !866, file: !57, line: 68, baseType: !72, size: 64, offset: 768)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !866, file: !57, line: 70, baseType: !865, size: 64, offset: 832)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !866, file: !57, line: 72, baseType: !49, size: 32, offset: 896)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !866, file: !57, line: 73, baseType: !49, size: 32, offset: 928)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !866, file: !57, line: 74, baseType: !78, size: 64, offset: 960)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !866, file: !57, line: 77, baseType: !82, size: 16, offset: 1024)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !866, file: !57, line: 78, baseType: !84, size: 8, offset: 1040)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !866, file: !57, line: 79, baseType: !86, size: 8, offset: 1048)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !866, file: !57, line: 81, baseType: !90, size: 64, offset: 1088)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !866, file: !57, line: 89, baseType: !93, size: 64, offset: 1152)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !866, file: !57, line: 91, baseType: !95, size: 64, offset: 1216)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !866, file: !57, line: 92, baseType: !98, size: 64, offset: 1280)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !866, file: !57, line: 93, baseType: !865, size: 64, offset: 1344)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !866, file: !57, line: 94, baseType: !102, size: 64, offset: 1408)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !866, file: !57, line: 95, baseType: !104, size: 64, offset: 1472)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !866, file: !57, line: 96, baseType: !49, size: 32, offset: 1536)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !866, file: !57, line: 98, baseType: !109, size: 160, offset: 1568)
!897 = distinct !DICompileUnit(language: DW_LANG_C99, file: !898, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !899, splitDebugInlining: false, nameTableKind: None)
!898 = !DIFile(filename: "lib/freadseek.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!899 = !{!900, !936, !102, !939, !942, !751, !943, !946}
!900 = !DISubprogram(name: "freadahead", scope: !901, file: !901, line: 41, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!901 = !DIFile(filename: "./lib/freadahead.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!902 = !DISubroutineType(types: !903)
!903 = !{!106, !904}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !57, line: 49, size: 1728, elements: !906)
!906 = !{!907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !905, file: !57, line: 51, baseType: !49, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !905, file: !57, line: 54, baseType: !45, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !905, file: !57, line: 55, baseType: !45, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !905, file: !57, line: 56, baseType: !45, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !905, file: !57, line: 57, baseType: !45, size: 64, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !905, file: !57, line: 58, baseType: !45, size: 64, offset: 320)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !905, file: !57, line: 59, baseType: !45, size: 64, offset: 384)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !905, file: !57, line: 60, baseType: !45, size: 64, offset: 448)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !905, file: !57, line: 61, baseType: !45, size: 64, offset: 512)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !905, file: !57, line: 64, baseType: !45, size: 64, offset: 576)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !905, file: !57, line: 65, baseType: !45, size: 64, offset: 640)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !905, file: !57, line: 66, baseType: !45, size: 64, offset: 704)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !905, file: !57, line: 68, baseType: !72, size: 64, offset: 768)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !905, file: !57, line: 70, baseType: !904, size: 64, offset: 832)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !905, file: !57, line: 72, baseType: !49, size: 32, offset: 896)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !905, file: !57, line: 73, baseType: !49, size: 32, offset: 928)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !905, file: !57, line: 74, baseType: !78, size: 64, offset: 960)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !905, file: !57, line: 77, baseType: !82, size: 16, offset: 1024)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !905, file: !57, line: 78, baseType: !84, size: 8, offset: 1040)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !905, file: !57, line: 79, baseType: !86, size: 8, offset: 1048)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !905, file: !57, line: 81, baseType: !90, size: 64, offset: 1088)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !905, file: !57, line: 89, baseType: !93, size: 64, offset: 1152)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !905, file: !57, line: 91, baseType: !95, size: 64, offset: 1216)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !905, file: !57, line: 92, baseType: !98, size: 64, offset: 1280)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !905, file: !57, line: 93, baseType: !904, size: 64, offset: 1344)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !905, file: !57, line: 94, baseType: !102, size: 64, offset: 1408)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !905, file: !57, line: 95, baseType: !104, size: 64, offset: 1472)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !905, file: !57, line: 96, baseType: !49, size: 32, offset: 1536)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !905, file: !57, line: 98, baseType: !109, size: 160, offset: 1568)
!936 = !DISubprogram(name: "freadptr", scope: !596, file: !596, line: 42, type: !937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!937 = !DISubroutineType(types: !938)
!938 = !{!47, !904, !189}
!939 = !DISubprogram(name: "fgetc", scope: !52, file: !52, line: 485, type: !940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!940 = !DISubroutineType(types: !941)
!941 = !{!49, !904}
!942 = !DISubprogram(name: "fileno", scope: !52, file: !52, line: 786, type: !940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!943 = !DISubprogram(name: "rpl_fseeko", scope: !162, file: !162, line: 1034, type: !944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!944 = !DISubroutineType(types: !945)
!945 = !{!49, !904, !80, !49}
!946 = !DISubprogram(name: "ferror", scope: !52, file: !52, line: 761, type: !940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!947 = distinct !DICompileUnit(language: DW_LANG_C99, file: !948, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !949, splitDebugInlining: false, nameTableKind: None)
!948 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!949 = !{!950}
!950 = !DISubprogram(name: "setlocale_null_r", scope: !951, file: !951, line: 64, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!951 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!952 = !DISubroutineType(types: !953)
!953 = !{!49, !49, !45, !106}
!954 = distinct !DICompileUnit(language: DW_LANG_C99, file: !955, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !956, retainedTypes: !1343, splitDebugInlining: false, nameTableKind: None)
!955 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!956 = !{!957}
!957 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !958, line: 41, baseType: !6, size: 32, elements: !959)
!958 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!959 = !{!960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342}
!960 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!961 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!962 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!963 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!964 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!965 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!966 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!967 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!968 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!969 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!970 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!971 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!972 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!973 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!974 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!975 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!976 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!977 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!978 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!979 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!980 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!981 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!982 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!983 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!984 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!985 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!986 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!987 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!988 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!989 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!990 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!991 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!992 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!993 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!994 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!995 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!996 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!997 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!998 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!999 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!1000 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!1001 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!1002 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!1003 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!1004 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!1005 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!1006 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!1007 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!1008 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!1009 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!1068 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!1071 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!1072 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!1073 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!1074 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!1075 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!1076 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!1077 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!1078 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!1079 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!1080 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!1081 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!1082 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!1107 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!1108 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!1109 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!1110 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!1111 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!1112 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!1113 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!1114 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!1115 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!1116 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!1117 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!1118 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!1119 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!1120 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!1121 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!1122 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!1123 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!1124 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!1125 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!1126 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!1127 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!1128 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!1129 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!1130 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!1131 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!1132 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!1133 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!1134 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!1135 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!1136 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!1137 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!1138 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!1139 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!1140 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!1141 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!1142 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!1143 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!1144 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!1145 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!1146 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!1147 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!1148 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!1149 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!1150 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!1151 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!1152 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!1153 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!1154 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!1155 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!1156 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!1157 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!1158 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!1159 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!1160 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!1161 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!1162 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!1163 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!1164 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!1165 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!1166 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!1167 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!1168 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!1169 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!1170 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!1171 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!1172 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!1173 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!1174 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!1175 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!1176 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!1177 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!1178 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!1179 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!1180 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!1181 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!1182 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!1183 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!1184 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!1185 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!1186 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!1187 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!1188 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!1189 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!1190 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!1191 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!1192 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1193 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1194 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1195 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1196 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1197 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1198 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1199 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1200 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1201 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1202 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1203 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1204 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1205 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1206 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1207 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1208 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1209 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1210 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1211 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1212 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1213 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1214 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1215 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1216 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1217 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1218 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1219 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1220 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1221 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1222 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1223 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1224 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1225 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1226 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1227 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1228 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1229 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1230 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1231 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1232 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1233 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1234 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1235 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1236 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1237 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1238 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1239 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1240 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1241 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1242 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1243 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1244 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1245 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1246 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1247 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1248 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1249 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1250 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1251 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1252 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1253 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1254 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1255 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1256 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1257 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1258 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1259 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1260 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1261 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1262 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1263 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1264 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1265 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1266 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1267 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1268 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1269 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1270 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1271 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1272 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1273 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1274 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1275 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1276 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1277 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1278 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1279 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1280 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1281 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1282 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1283 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1284 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1285 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1286 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1287 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1288 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1289 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1290 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1291 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1292 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1293 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1294 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1295 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1296 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1297 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1298 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1299 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1300 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1301 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1302 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1303 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1304 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1305 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1306 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1307 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1308 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1309 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1310 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1311 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1312 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1313 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1314 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1315 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1316 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1317 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1318 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1319 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1320 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1321 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1322 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1323 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1324 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1325 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1326 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1327 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1328 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1329 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1330 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1331 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1332 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1333 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1334 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1335 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1336 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1337 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1338 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1339 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1340 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1341 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1342 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1343 = !{!1344, !102}
!1344 = !DISubprogram(name: "nl_langinfo", scope: !958, file: !958, line: 661, type: !1345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!45, !49}
!1347 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1348, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !1349, splitDebugInlining: false, nameTableKind: None)
!1348 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1349 = !{!102, !116}
!1350 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1351, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, splitDebugInlining: false, nameTableKind: None)
!1351 = !DIFile(filename: "lib/freadahead.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1352 = !{!"clang version 10.0.0 "}
!1353 = !{i32 7, !"Dwarf Version", i32 4}
!1354 = !{i32 2, !"Debug Info Version", i32 3}
!1355 = !{i32 1, !"wchar_size", i32 4}
!1356 = !{i32 7, !"PIC Level", i32 2}
!1357 = !{i32 7, !"PIE Level", i32 2}
!1358 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 141, type: !286, scopeLine: 142, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1359)
!1359 = !{!1360}
!1360 = !DILocalVariable(name: "status", arg: 1, scope: !1358, file: !3, line: 141, type: !49)
!1361 = !DILocalVariable(name: "infomap", scope: !1362, file: !285, line: 636, type: !1374)
!1362 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !285, file: !285, line: 634, type: !114, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1363)
!1363 = !{!1364, !1361, !1365, !1366, !1373}
!1364 = !DILocalVariable(name: "program", arg: 1, scope: !1362, file: !285, line: 634, type: !47)
!1365 = !DILocalVariable(name: "node", scope: !1362, file: !285, line: 646, type: !47)
!1366 = !DILocalVariable(name: "map_prog", scope: !1362, file: !285, line: 647, type: !1367)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1369)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1362, file: !285, line: 636, size: 128, elements: !1370)
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1369, file: !285, line: 636, baseType: !47, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1369, file: !285, line: 636, baseType: !47, size: 64, offset: 64)
!1373 = !DILocalVariable(name: "lc_messages", scope: !1362, file: !285, line: 659, type: !47)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1368, size: 896, elements: !1375)
!1375 = !{!1376}
!1376 = !DISubrange(count: 7)
!1377 = !DILocation(line: 636, column: 67, scope: !1362, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 197, column: 7, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 146, column: 5)
!1380 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 143, column: 7)
!1381 = !DILocation(line: 0, scope: !1358)
!1382 = !DILocation(line: 143, column: 14, scope: !1380)
!1383 = !DILocation(line: 143, column: 7, scope: !1358)
!1384 = !DILocation(line: 144, column: 5, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 144, column: 5)
!1386 = !{!1387, !1387, i64 0}
!1387 = !{!"any pointer", !1388, i64 0}
!1388 = !{!"omnipotent char", !1389, i64 0}
!1389 = !{!"Simple C/C++ TBAA"}
!1390 = !DILocation(line: 147, column: 7, scope: !1379)
!1391 = !DILocation(line: 151, column: 7, scope: !1379)
!1392 = !DILocation(line: 583, column: 3, scope: !1393, inlinedAt: !1394)
!1393 = distinct !DISubprogram(name: "emit_stdin_note", scope: !285, file: !285, line: 581, type: !131, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !50)
!1394 = distinct !DILocation(line: 155, column: 7, scope: !1379)
!1395 = !DILocation(line: 590, column: 3, scope: !1396, inlinedAt: !1397)
!1396 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !285, file: !285, line: 588, type: !131, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !50)
!1397 = distinct !DILocation(line: 156, column: 7, scope: !1379)
!1398 = !DILocation(line: 158, column: 7, scope: !1379)
!1399 = !DILocation(line: 163, column: 7, scope: !1379)
!1400 = !DILocation(line: 169, column: 7, scope: !1379)
!1401 = !DILocation(line: 173, column: 7, scope: !1379)
!1402 = !DILocation(line: 178, column: 7, scope: !1379)
!1403 = !DILocation(line: 181, column: 7, scope: !1379)
!1404 = !DILocation(line: 182, column: 7, scope: !1379)
!1405 = !DILocation(line: 183, column: 7, scope: !1379)
!1406 = !DILocation(line: 189, column: 7, scope: !1379)
!1407 = !DILocation(line: 0, scope: !1362, inlinedAt: !1378)
!1408 = !DILocation(line: 636, column: 3, scope: !1362, inlinedAt: !1378)
!1409 = !DILocation(line: 647, column: 36, scope: !1362, inlinedAt: !1378)
!1410 = !DILocation(line: 649, column: 3, scope: !1362, inlinedAt: !1378)
!1411 = !DILocation(line: 649, column: 33, scope: !1362, inlinedAt: !1378)
!1412 = !DILocation(line: 650, column: 13, scope: !1362, inlinedAt: !1378)
!1413 = !DILocation(line: 649, column: 20, scope: !1362, inlinedAt: !1378)
!1414 = !{!1415, !1387, i64 0}
!1415 = !{!"infomap", !1387, i64 0, !1387, i64 8}
!1416 = !DILocation(line: 649, column: 10, scope: !1362, inlinedAt: !1378)
!1417 = !DILocation(line: 649, column: 28, scope: !1362, inlinedAt: !1378)
!1418 = distinct !{!1418, !1410, !1412}
!1419 = !DILocation(line: 652, column: 17, scope: !1420, inlinedAt: !1378)
!1420 = distinct !DILexicalBlock(scope: !1362, file: !285, line: 652, column: 7)
!1421 = !{!1415, !1387, i64 8}
!1422 = !DILocation(line: 652, column: 7, scope: !1420, inlinedAt: !1378)
!1423 = !DILocation(line: 652, column: 7, scope: !1362, inlinedAt: !1378)
!1424 = !DILocation(line: 655, column: 3, scope: !1362, inlinedAt: !1378)
!1425 = !DILocation(line: 659, column: 29, scope: !1362, inlinedAt: !1378)
!1426 = !DILocation(line: 660, column: 7, scope: !1427, inlinedAt: !1378)
!1427 = distinct !DILexicalBlock(scope: !1362, file: !285, line: 660, column: 7)
!1428 = !DILocation(line: 660, column: 19, scope: !1427, inlinedAt: !1378)
!1429 = !DILocation(line: 660, column: 22, scope: !1427, inlinedAt: !1378)
!1430 = !DILocation(line: 660, column: 7, scope: !1362, inlinedAt: !1378)
!1431 = !DILocation(line: 666, column: 7, scope: !1432, inlinedAt: !1378)
!1432 = distinct !DILexicalBlock(scope: !1427, file: !285, line: 661, column: 5)
!1433 = !DILocation(line: 668, column: 5, scope: !1432, inlinedAt: !1378)
!1434 = !DILocation(line: 669, column: 3, scope: !1362, inlinedAt: !1378)
!1435 = !DILocation(line: 671, column: 3, scope: !1362, inlinedAt: !1378)
!1436 = !DILocation(line: 673, column: 1, scope: !1362, inlinedAt: !1378)
!1437 = !DILocation(line: 199, column: 3, scope: !1358)
!1438 = !DILocation(line: 0, scope: !197)
!1439 = !DILocation(line: 488, column: 21, scope: !197)
!1440 = !DILocation(line: 488, column: 3, scope: !197)
!1441 = !DILocation(line: 489, column: 3, scope: !197)
!1442 = !DILocation(line: 490, column: 3, scope: !197)
!1443 = !DILocation(line: 491, column: 3, scope: !197)
!1444 = !DILocation(line: 493, column: 3, scope: !197)
!1445 = !DILocation(line: 495, column: 18, scope: !197)
!1446 = !{!1388, !1388, i64 0}
!1447 = !DILocation(line: 498, column: 26, scope: !197)
!1448 = !DILocation(line: 500, column: 9, scope: !197)
!1449 = !DILocation(line: 501, column: 19, scope: !197)
!1450 = !DILocation(line: 503, column: 3, scope: !197)
!1451 = !DILocation(line: 484, column: 8, scope: !197)
!1452 = !DILocation(line: 503, column: 18, scope: !197)
!1453 = distinct !{!1453, !1450, !1454}
!1454 = !DILocation(line: 564, column: 5, scope: !197)
!1455 = !DILocation(line: 510, column: 15, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 510, column: 15)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 506, column: 9)
!1458 = distinct !DILexicalBlock(scope: !197, file: !3, line: 504, column: 5)
!1459 = !DILocation(line: 510, column: 30, scope: !1456)
!1460 = !DILocation(line: 510, column: 15, scope: !1457)
!1461 = !DILocation(line: 511, column: 13, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 511, column: 13)
!1463 = !DILocation(line: 512, column: 26, scope: !1457)
!1464 = !DILocation(line: 513, column: 30, scope: !1457)
!1465 = !DILocation(line: 514, column: 11, scope: !1457)
!1466 = !DILocation(line: 518, column: 15, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 518, column: 15)
!1468 = !DILocation(line: 518, column: 30, scope: !1467)
!1469 = !DILocation(line: 518, column: 15, scope: !1457)
!1470 = !DILocation(line: 519, column: 13, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 519, column: 13)
!1472 = !DILocation(line: 520, column: 26, scope: !1457)
!1473 = !DILocation(line: 521, column: 30, scope: !1457)
!1474 = !DILocation(line: 522, column: 11, scope: !1457)
!1475 = !DILocation(line: 527, column: 15, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 527, column: 15)
!1477 = !DILocation(line: 527, column: 25, scope: !1476)
!1478 = !DILocation(line: 527, column: 33, scope: !1476)
!1479 = !DILocation(line: 527, column: 36, scope: !1476)
!1480 = !DILocation(line: 527, column: 46, scope: !1476)
!1481 = !DILocation(line: 527, column: 15, scope: !1457)
!1482 = !DILocation(line: 528, column: 13, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 528, column: 13)
!1484 = !DILocation(line: 529, column: 17, scope: !1457)
!1485 = !DILocation(line: 531, column: 11, scope: !1457)
!1486 = !DILocation(line: 534, column: 38, scope: !1457)
!1487 = !DILocation(line: 537, column: 38, scope: !1457)
!1488 = !DILocation(line: 537, column: 48, scope: !1457)
!1489 = !DILocation(line: 538, column: 44, scope: !1457)
!1490 = !DILocation(line: 537, column: 35, scope: !1457)
!1491 = !{!1492, !1492, i64 0}
!1492 = !{!"long", !1388, i64 0}
!1493 = !DILocation(line: 539, column: 37, scope: !1457)
!1494 = !DILocation(line: 539, column: 35, scope: !1457)
!1495 = !DILocation(line: 540, column: 11, scope: !1457)
!1496 = !DILocation(line: 546, column: 34, scope: !1457)
!1497 = !DILocation(line: 547, column: 11, scope: !1457)
!1498 = !DILocation(line: 550, column: 22, scope: !1457)
!1499 = !DILocation(line: 551, column: 11, scope: !1457)
!1500 = !DILocation(line: 554, column: 22, scope: !1457)
!1501 = !DILocation(line: 555, column: 11, scope: !1457)
!1502 = !DILocation(line: 557, column: 9, scope: !1457)
!1503 = !DILocation(line: 559, column: 9, scope: !1457)
!1504 = !DILocation(line: 562, column: 11, scope: !1457)
!1505 = !DILocation(line: 566, column: 7, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !197, file: !3, line: 566, column: 7)
!1507 = !DILocation(line: 566, column: 22, scope: !1506)
!1508 = !DILocation(line: 566, column: 7, scope: !197)
!1509 = !DILocation(line: 567, column: 5, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 567, column: 5)
!1511 = !DILocation(line: 569, column: 7, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !197, file: !3, line: 569, column: 7)
!1513 = !DILocation(line: 569, column: 41, scope: !1512)
!1514 = !DILocation(line: 569, column: 23, scope: !1512)
!1515 = !DILocation(line: 570, column: 5, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 570, column: 5)
!1517 = !DILocation(line: 573, column: 7, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !197, file: !3, line: 573, column: 7)
!1519 = !DILocation(line: 573, column: 30, scope: !1518)
!1520 = !DILocation(line: 574, column: 5, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 574, column: 5)
!1522 = !DILocation(line: 578, column: 33, scope: !197)
!1523 = !DILocation(line: 578, column: 17, scope: !197)
!1524 = !DILocation(line: 579, column: 18, scope: !197)
!1525 = !DILocation(line: 579, column: 15, scope: !197)
!1526 = !DILocation(line: 577, column: 3, scope: !197)
!1527 = !DILocation(line: 581, column: 7, scope: !197)
!1528 = !DILocation(line: 582, column: 11, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !197, file: !3, line: 581, column: 7)
!1530 = !DILocation(line: 582, column: 5, scope: !1529)
!1531 = !DILocation(line: 584, column: 7, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !197, file: !3, line: 584, column: 7)
!1533 = !DILocation(line: 584, column: 31, scope: !1532)
!1534 = !DILocation(line: 584, column: 7, scope: !197)
!1535 = !DILocation(line: 587, column: 18, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 585, column: 5)
!1537 = !DILocation(line: 587, column: 16, scope: !1536)
!1538 = !DILocation(line: 588, column: 16, scope: !1536)
!1539 = !DILocation(line: 589, column: 31, scope: !1536)
!1540 = !DILocation(line: 590, column: 31, scope: !1536)
!1541 = !DILocation(line: 591, column: 5, scope: !1536)
!1542 = !DILocation(line: 593, column: 7, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !197, file: !3, line: 593, column: 7)
!1544 = !{!1545, !1545, i64 0}
!1545 = !{!"int", !1388, i64 0}
!1546 = !DILocation(line: 593, column: 14, scope: !1543)
!1547 = !DILocation(line: 593, column: 7, scope: !197)
!1548 = !DILocation(line: 596, column: 28, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 596, column: 5)
!1550 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 596, column: 5)
!1551 = !DILocation(line: 596, column: 5, scope: !1550)
!1552 = !DILocation(line: 594, column: 10, scope: !1543)
!1553 = !DILocation(line: 594, column: 8, scope: !1543)
!1554 = !DILocation(line: 594, column: 5, scope: !1543)
!1555 = !DILocation(line: 597, column: 23, scope: !1549)
!1556 = !DILocation(line: 597, column: 13, scope: !1549)
!1557 = !DILocation(line: 597, column: 10, scope: !1549)
!1558 = !DILocation(line: 596, column: 42, scope: !1549)
!1559 = distinct !{!1559, !1551, !1560}
!1560 = !DILocation(line: 597, column: 35, scope: !1550)
!1561 = !DILocation(line: 0, scope: !1543)
!1562 = !DILocation(line: 600, column: 7, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !197, file: !3, line: 600, column: 7)
!1564 = !DILocation(line: 600, column: 23, scope: !1563)
!1565 = !DILocation(line: 600, column: 34, scope: !1563)
!1566 = !DILocation(line: 600, column: 26, scope: !1563)
!1567 = !DILocation(line: 600, column: 41, scope: !1563)
!1568 = !DILocation(line: 600, column: 7, scope: !197)
!1569 = !DILocation(line: 602, column: 17, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 601, column: 5)
!1571 = !DILocation(line: 602, column: 7, scope: !1570)
!1572 = !DILocation(line: 604, column: 5, scope: !1570)
!1573 = !DILocation(line: 608, column: 10, scope: !197)
!1574 = !DILocation(line: 609, column: 1, scope: !197)
!1575 = distinct !DISubprogram(name: "cut_file", scope: !3, file: !3, line: 441, type: !1576, scopeLine: 442, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1578)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!205, !47}
!1578 = !{!1579, !1580}
!1579 = !DILocalVariable(name: "file", arg: 1, scope: !1575, file: !3, line: 441, type: !47)
!1580 = !DILocalVariable(name: "stream", scope: !1575, file: !3, line: 443, type: !1581)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1583, line: 7, baseType: !56)
!1583 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1584 = !DILocation(line: 0, scope: !1575)
!1585 = !DILocation(line: 445, column: 7, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 445, column: 7)
!1587 = !DILocation(line: 445, column: 7, scope: !1575)
!1588 = !DILocation(line: 447, column: 23, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 446, column: 5)
!1590 = !DILocation(line: 448, column: 16, scope: !1589)
!1591 = !DILocation(line: 449, column: 5, scope: !1589)
!1592 = !DILocation(line: 452, column: 16, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 451, column: 5)
!1594 = !DILocation(line: 453, column: 18, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 453, column: 11)
!1596 = !DILocation(line: 453, column: 11, scope: !1593)
!1597 = !DILocation(line: 455, column: 21, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 454, column: 9)
!1599 = !DILocation(line: 455, column: 34, scope: !1598)
!1600 = !DILocation(line: 455, column: 11, scope: !1598)
!1601 = !DILocation(line: 456, column: 11, scope: !1598)
!1602 = !DILocation(line: 0, scope: !1586)
!1603 = !DILocation(line: 460, column: 3, scope: !1575)
!1604 = !DILocalVariable(name: "stream", arg: 1, scope: !1605, file: !3, line: 429, type: !1581)
!1605 = distinct !DISubprogram(name: "cut_stream", scope: !3, file: !3, line: 429, type: !1606, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1608)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{null, !1581}
!1608 = !{!1604}
!1609 = !DILocation(line: 0, scope: !1605, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 462, column: 3, scope: !1575)
!1611 = !DILocation(line: 431, column: 7, scope: !1612, inlinedAt: !1610)
!1612 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 431, column: 7)
!1613 = !DILocation(line: 431, column: 22, scope: !1612, inlinedAt: !1610)
!1614 = !DILocation(line: 0, scope: !1612, inlinedAt: !1610)
!1615 = !DILocation(line: 431, column: 7, scope: !1605, inlinedAt: !1610)
!1616 = !DILocalVariable(name: "stream", arg: 1, scope: !1617, file: !3, line: 233, type: !1581)
!1617 = distinct !DISubprogram(name: "cut_bytes", scope: !3, file: !3, line: 233, type: !1606, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1618)
!1618 = !{!1616, !1619, !1620, !1621, !1623, !1634, !1635}
!1619 = !DILocalVariable(name: "byte_idx", scope: !1617, file: !3, line: 235, type: !238)
!1620 = !DILocalVariable(name: "print_delimiter", scope: !1617, file: !3, line: 238, type: !205)
!1621 = !DILocalVariable(name: "c", scope: !1622, file: !3, line: 245, type: !49)
!1622 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 244, column: 5)
!1623 = !DILocalVariable(name: "__ptr", scope: !1624, file: !3, line: 271, type: !47)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 271, column: 23)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 270, column: 21)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 269, column: 23)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 268, column: 17)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 267, column: 19)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 266, column: 13)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 265, column: 15)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 263, column: 9)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 256, column: 16)
!1633 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 249, column: 11)
!1634 = !DILocalVariable(name: "__stream", scope: !1624, file: !3, line: 271, type: !1581)
!1635 = !DILocalVariable(name: "__cnt", scope: !1624, file: !3, line: 271, type: !104)
!1636 = !DILocation(line: 0, scope: !1617, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 432, column: 5, scope: !1612, inlinedAt: !1610)
!1638 = !DILocation(line: 0, scope: !1639, inlinedAt: !1645)
!1639 = distinct !DISubprogram(name: "getc_unlocked", scope: !1640, file: !1640, line: 66, type: !1641, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1643)
!1640 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!49, !1581}
!1643 = !{!1644}
!1644 = !DILocalVariable(name: "__fp", arg: 1, scope: !1639, file: !1640, line: 66, type: !1581)
!1645 = distinct !DILocation(line: 247, column: 11, scope: !1622, inlinedAt: !1637)
!1646 = !DILocation(line: 243, column: 3, scope: !1617, inlinedAt: !1637)
!1647 = !DILocation(line: 68, column: 10, scope: !1639, inlinedAt: !1645)
!1648 = !{!1649, !1387, i64 8}
!1649 = !{!"_IO_FILE", !1545, i64 0, !1387, i64 8, !1387, i64 16, !1387, i64 24, !1387, i64 32, !1387, i64 40, !1387, i64 48, !1387, i64 56, !1387, i64 64, !1387, i64 72, !1387, i64 80, !1387, i64 88, !1387, i64 96, !1387, i64 104, !1545, i64 112, !1545, i64 116, !1492, i64 120, !1650, i64 128, !1388, i64 130, !1388, i64 131, !1387, i64 136, !1492, i64 144, !1387, i64 152, !1387, i64 160, !1387, i64 168, !1387, i64 176, !1492, i64 184, !1545, i64 192, !1388, i64 196}
!1650 = !{!"short", !1388, i64 0}
!1651 = !{!1649, !1387, i64 16}
!1652 = !{!"branch_weights", i32 2000, i32 1}
!1653 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1654 = !DILocation(line: 0, scope: !1622, inlinedAt: !1637)
!1655 = !DILocation(line: 249, column: 16, scope: !1633, inlinedAt: !1637)
!1656 = !DILocation(line: 249, column: 13, scope: !1633, inlinedAt: !1637)
!1657 = !DILocation(line: 249, column: 11, scope: !1622, inlinedAt: !1637)
!1658 = !DILocalVariable(name: "__c", arg: 1, scope: !1659, file: !1640, line: 108, type: !49)
!1659 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1640, file: !1640, line: 108, type: !1660, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1662)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!49, !49}
!1662 = !{!1658}
!1663 = !DILocation(line: 0, scope: !1659, inlinedAt: !1664)
!1664 = distinct !DILocation(line: 251, column: 11, scope: !1665, inlinedAt: !1637)
!1665 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 250, column: 9)
!1666 = !DILocation(line: 110, column: 10, scope: !1659, inlinedAt: !1664)
!1667 = !{!1649, !1387, i64 40}
!1668 = !{!1649, !1387, i64 48}
!1669 = !DILocation(line: 254, column: 24, scope: !1665, inlinedAt: !1637)
!1670 = !DILocation(line: 254, column: 22, scope: !1665, inlinedAt: !1637)
!1671 = !DILocation(line: 255, column: 9, scope: !1665, inlinedAt: !1637)
!1672 = !DILocation(line: 256, column: 18, scope: !1632, inlinedAt: !1637)
!1673 = !DILocation(line: 256, column: 16, scope: !1633, inlinedAt: !1637)
!1674 = !DILocation(line: 258, column: 24, scope: !1675, inlinedAt: !1637)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 258, column: 15)
!1676 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 257, column: 9)
!1677 = !DILocation(line: 258, column: 15, scope: !1676, inlinedAt: !1637)
!1678 = !DILocation(line: 0, scope: !1659, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 259, column: 13, scope: !1675, inlinedAt: !1637)
!1680 = !DILocation(line: 110, column: 10, scope: !1659, inlinedAt: !1679)
!1681 = !DILocation(line: 209, column: 14, scope: !1682, inlinedAt: !1687)
!1682 = distinct !DISubprogram(name: "next_item", scope: !3, file: !3, line: 207, type: !1683, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1685)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !288}
!1685 = !{!1686}
!1686 = !DILocalVariable(name: "item_idx", arg: 1, scope: !1682, file: !3, line: 207, type: !288)
!1687 = distinct !DILocation(line: 264, column: 11, scope: !1631, inlinedAt: !1637)
!1688 = !DILocation(line: 210, column: 21, scope: !1689, inlinedAt: !1687)
!1689 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 210, column: 7)
!1690 = !DILocation(line: 210, column: 33, scope: !1689, inlinedAt: !1687)
!1691 = !{!1692, !1492, i64 8}
!1692 = !{!"field_range_pair", !1492, i64 0, !1492, i64 8}
!1693 = !DILocation(line: 210, column: 19, scope: !1689, inlinedAt: !1687)
!1694 = !DILocation(line: 210, column: 7, scope: !1682, inlinedAt: !1687)
!1695 = !DILocation(line: 211, column: 15, scope: !1689, inlinedAt: !1687)
!1696 = !DILocation(line: 211, column: 5, scope: !1689, inlinedAt: !1687)
!1697 = !DILocation(line: 219, column: 10, scope: !1698, inlinedAt: !1703)
!1698 = distinct !DISubprogram(name: "print_kth", scope: !3, file: !3, line: 217, type: !1699, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1701)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!205, !238}
!1701 = !{!1702}
!1702 = !DILocalVariable(name: "k", arg: 1, scope: !1698, file: !3, line: 217, type: !238)
!1703 = distinct !DILocation(line: 265, column: 15, scope: !1630, inlinedAt: !1637)
!1704 = !DILocation(line: 0, scope: !1698, inlinedAt: !1703)
!1705 = !DILocation(line: 219, column: 22, scope: !1698, inlinedAt: !1703)
!1706 = !{!1692, !1492, i64 0}
!1707 = !DILocation(line: 219, column: 25, scope: !1698, inlinedAt: !1703)
!1708 = !DILocation(line: 265, column: 15, scope: !1631, inlinedAt: !1637)
!1709 = !DILocation(line: 267, column: 19, scope: !1628, inlinedAt: !1637)
!1710 = !DILocation(line: 267, column: 19, scope: !1629, inlinedAt: !1637)
!1711 = !DILocation(line: 269, column: 23, scope: !1626, inlinedAt: !1637)
!1712 = !DILocation(line: 227, column: 12, scope: !1713, inlinedAt: !1716)
!1713 = distinct !DISubprogram(name: "is_range_start_index", scope: !3, file: !3, line: 225, type: !1699, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1714)
!1714 = !{!1715}
!1715 = !DILocalVariable(name: "k", arg: 1, scope: !1713, file: !3, line: 225, type: !238)
!1716 = distinct !DILocation(line: 269, column: 42, scope: !1626, inlinedAt: !1637)
!1717 = !DILocation(line: 269, column: 39, scope: !1626, inlinedAt: !1637)
!1718 = !DILocation(line: 0, scope: !1713, inlinedAt: !1716)
!1719 = !DILocation(line: 271, column: 23, scope: !1625, inlinedAt: !1637)
!1720 = !DILocation(line: 0, scope: !1659, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 277, column: 15, scope: !1629, inlinedAt: !1637)
!1722 = !DILocation(line: 110, column: 10, scope: !1659, inlinedAt: !1721)
!1723 = !DILocalVariable(name: "stream", arg: 1, scope: !1724, file: !3, line: 286, type: !1581)
!1724 = distinct !DISubprogram(name: "cut_fields", scope: !3, file: !3, line: 286, type: !1606, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1725)
!1725 = !{!1723, !1726, !1727, !1728, !1729, !1730, !1736, !1737, !1743, !1744, !1745, !1749, !1750, !1751, !1754, !1755, !1761, !1762, !1763}
!1726 = !DILocalVariable(name: "c", scope: !1724, file: !3, line: 288, type: !49)
!1727 = !DILocalVariable(name: "field_idx", scope: !1724, file: !3, line: 289, type: !238)
!1728 = !DILocalVariable(name: "found_any_selected_field", scope: !1724, file: !3, line: 290, type: !205)
!1729 = !DILocalVariable(name: "buffer_first_field", scope: !1724, file: !3, line: 291, type: !205)
!1730 = !DILocalVariable(name: "len", scope: !1731, file: !3, line: 314, type: !1734)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 313, column: 9)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 312, column: 11)
!1733 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 311, column: 5)
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !52, line: 77, baseType: !1735)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !79, line: 193, baseType: !80)
!1736 = !DILocalVariable(name: "n_bytes", scope: !1731, file: !3, line: 315, type: !104)
!1737 = !DILocalVariable(name: "__ptr", scope: !1738, file: !3, line: 344, type: !47)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 344, column: 19)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 343, column: 17)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !3, line: 338, column: 19)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 337, column: 13)
!1742 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 336, column: 15)
!1743 = !DILocalVariable(name: "__stream", scope: !1738, file: !3, line: 344, type: !1581)
!1744 = !DILocalVariable(name: "__cnt", scope: !1738, file: !3, line: 344, type: !104)
!1745 = !DILocalVariable(name: "__ptr", scope: !1746, file: !3, line: 355, type: !47)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 355, column: 15)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 353, column: 13)
!1748 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 352, column: 15)
!1749 = !DILocalVariable(name: "__stream", scope: !1746, file: !3, line: 355, type: !1581)
!1750 = !DILocalVariable(name: "__cnt", scope: !1746, file: !3, line: 355, type: !104)
!1751 = !DILocalVariable(name: "last_c", scope: !1752, file: !3, line: 360, type: !49)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 359, column: 17)
!1753 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 358, column: 19)
!1754 = !DILocalVariable(name: "prev_c", scope: !1733, file: !3, line: 373, type: !49)
!1755 = !DILocalVariable(name: "__ptr", scope: !1756, file: !3, line: 379, type: !47)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !3, line: 379, column: 15)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 378, column: 13)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 377, column: 15)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 376, column: 9)
!1760 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 375, column: 11)
!1761 = !DILocalVariable(name: "__stream", scope: !1756, file: !3, line: 379, type: !1581)
!1762 = !DILocalVariable(name: "__cnt", scope: !1756, file: !3, line: 379, type: !104)
!1763 = !DILocalVariable(name: "last_c", scope: !1764, file: !3, line: 401, type: !49)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 400, column: 9)
!1765 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 399, column: 11)
!1766 = !DILocation(line: 0, scope: !1724, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 434, column: 5, scope: !1612, inlinedAt: !1610)
!1768 = !DILocation(line: 0, scope: !1639, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 295, column: 7, scope: !1724, inlinedAt: !1767)
!1770 = !DILocation(line: 68, column: 10, scope: !1639, inlinedAt: !1769)
!1771 = !DILocation(line: 296, column: 7, scope: !1724, inlinedAt: !1767)
!1772 = !DILocation(line: 296, column: 9, scope: !1773, inlinedAt: !1767)
!1773 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 296, column: 7)
!1774 = !DILocation(line: 299, column: 3, scope: !1724, inlinedAt: !1767)
!1775 = !DILocation(line: 308, column: 25, scope: !1724, inlinedAt: !1767)
!1776 = !DILocation(line: 0, scope: !1698, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 308, column: 51, scope: !1724, inlinedAt: !1767)
!1778 = !DILocation(line: 219, column: 10, scope: !1698, inlinedAt: !1777)
!1779 = !DILocation(line: 219, column: 22, scope: !1698, inlinedAt: !1777)
!1780 = !DILocation(line: 219, column: 25, scope: !1698, inlinedAt: !1777)
!1781 = !DILocation(line: 0, scope: !1732, inlinedAt: !1767)
!1782 = !DILocation(line: 310, column: 3, scope: !1724, inlinedAt: !1767)
!1783 = !DILocation(line: 312, column: 21, scope: !1732, inlinedAt: !1767)
!1784 = !DILocation(line: 312, column: 26, scope: !1732, inlinedAt: !1767)
!1785 = !DILocation(line: 219, column: 10, scope: !1698, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 375, column: 11, scope: !1760, inlinedAt: !1767)
!1787 = !DILocation(line: 318, column: 48, scope: !1731, inlinedAt: !1767)
!1788 = !DILocation(line: 318, column: 55, scope: !1731, inlinedAt: !1767)
!1789 = !DILocation(line: 317, column: 17, scope: !1731, inlinedAt: !1767)
!1790 = !DILocation(line: 0, scope: !1731, inlinedAt: !1767)
!1791 = !DILocation(line: 319, column: 19, scope: !1792, inlinedAt: !1767)
!1792 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 319, column: 15)
!1793 = !DILocation(line: 319, column: 15, scope: !1731, inlinedAt: !1767)
!1794 = !DILocation(line: 321, column: 21, scope: !1795, inlinedAt: !1767)
!1795 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 320, column: 13)
!1796 = !DILocation(line: 321, column: 15, scope: !1795, inlinedAt: !1767)
!1797 = !DILocation(line: 322, column: 30, scope: !1795, inlinedAt: !1767)
!1798 = !DILocalVariable(name: "__stream", arg: 1, scope: !1799, file: !1640, line: 135, type: !1581)
!1799 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1640, file: !1640, line: 135, type: !1641, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1800)
!1800 = !{!1798}
!1801 = !DILocation(line: 0, scope: !1799, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 323, column: 19, scope: !1803, inlinedAt: !1767)
!1803 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 323, column: 19)
!1804 = !DILocation(line: 137, column: 10, scope: !1799, inlinedAt: !1802)
!1805 = !{!1649, !1545, i64 0}
!1806 = !DILocation(line: 323, column: 35, scope: !1803, inlinedAt: !1767)
!1807 = !DILocation(line: 325, column: 15, scope: !1795, inlinedAt: !1767)
!1808 = !DILocation(line: 329, column: 11, scope: !1809, inlinedAt: !1767)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 329, column: 11)
!1810 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 329, column: 11)
!1811 = !DILocation(line: 329, column: 11, scope: !1810, inlinedAt: !1767)
!1812 = !DILocation(line: 336, column: 25, scope: !1742, inlinedAt: !1767)
!1813 = !DILocation(line: 336, column: 48, scope: !1742, inlinedAt: !1767)
!1814 = !DILocation(line: 336, column: 57, scope: !1742, inlinedAt: !1767)
!1815 = !DILocation(line: 336, column: 54, scope: !1742, inlinedAt: !1767)
!1816 = !DILocation(line: 336, column: 15, scope: !1731, inlinedAt: !1767)
!1817 = !DILocation(line: 338, column: 19, scope: !1740, inlinedAt: !1767)
!1818 = !DILocation(line: 338, column: 19, scope: !1741, inlinedAt: !1767)
!1819 = distinct !{!1819, !1782, !1820}
!1820 = !DILocation(line: 425, column: 5, scope: !1724, inlinedAt: !1767)
!1821 = !DILocation(line: 0, scope: !1739, inlinedAt: !1767)
!1822 = !DILocation(line: 344, column: 19, scope: !1739, inlinedAt: !1767)
!1823 = !DILocation(line: 346, column: 23, scope: !1824, inlinedAt: !1767)
!1824 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 346, column: 23)
!1825 = !DILocation(line: 346, column: 54, scope: !1824, inlinedAt: !1767)
!1826 = !DILocation(line: 346, column: 51, scope: !1824, inlinedAt: !1767)
!1827 = !DILocation(line: 346, column: 23, scope: !1739, inlinedAt: !1767)
!1828 = distinct !{!1828, !1782, !1820}
!1829 = !DILocation(line: 0, scope: !1659, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 347, column: 21, scope: !1824, inlinedAt: !1767)
!1831 = !DILocation(line: 110, column: 10, scope: !1659, inlinedAt: !1830)
!1832 = distinct !{!1832, !1782, !1820}
!1833 = distinct !{!1833, !1782, !1820}
!1834 = !DILocation(line: 0, scope: !1698, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 352, column: 15, scope: !1748, inlinedAt: !1767)
!1836 = !DILocation(line: 219, column: 10, scope: !1698, inlinedAt: !1835)
!1837 = !DILocation(line: 219, column: 22, scope: !1698, inlinedAt: !1835)
!1838 = !DILocation(line: 219, column: 25, scope: !1698, inlinedAt: !1835)
!1839 = !DILocation(line: 352, column: 15, scope: !1731, inlinedAt: !1767)
!1840 = !DILocation(line: 355, column: 15, scope: !1747, inlinedAt: !1767)
!1841 = !DILocation(line: 358, column: 19, scope: !1753, inlinedAt: !1767)
!1842 = !DILocation(line: 358, column: 28, scope: !1753, inlinedAt: !1767)
!1843 = !DILocation(line: 358, column: 25, scope: !1753, inlinedAt: !1767)
!1844 = !DILocation(line: 358, column: 19, scope: !1747, inlinedAt: !1767)
!1845 = !DILocation(line: 0, scope: !1639, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 360, column: 32, scope: !1752, inlinedAt: !1767)
!1847 = !DILocation(line: 68, column: 10, scope: !1639, inlinedAt: !1846)
!1848 = !DILocation(line: 0, scope: !1752, inlinedAt: !1767)
!1849 = !DILocation(line: 361, column: 23, scope: !1752, inlinedAt: !1767)
!1850 = !DILocation(line: 361, column: 30, scope: !1851, inlinedAt: !1767)
!1851 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 361, column: 23)
!1852 = !DILocation(line: 363, column: 23, scope: !1853, inlinedAt: !1767)
!1853 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 362, column: 21)
!1854 = !DILocation(line: 365, column: 21, scope: !1853, inlinedAt: !1767)
!1855 = !DILocation(line: 210, column: 21, scope: !1689, inlinedAt: !1856)
!1856 = distinct !DILocation(line: 370, column: 11, scope: !1731, inlinedAt: !1767)
!1857 = !DILocation(line: 210, column: 33, scope: !1689, inlinedAt: !1856)
!1858 = !DILocation(line: 210, column: 19, scope: !1689, inlinedAt: !1856)
!1859 = !DILocation(line: 210, column: 7, scope: !1682, inlinedAt: !1856)
!1860 = !DILocation(line: 211, column: 15, scope: !1689, inlinedAt: !1856)
!1861 = !DILocation(line: 211, column: 5, scope: !1689, inlinedAt: !1856)
!1862 = !DILocation(line: 289, column: 13, scope: !1724, inlinedAt: !1767)
!1863 = !DILocation(line: 290, column: 8, scope: !1724, inlinedAt: !1767)
!1864 = !DILocation(line: 300, column: 5, scope: !1724, inlinedAt: !1767)
!1865 = !DILocation(line: 0, scope: !1733, inlinedAt: !1767)
!1866 = !DILocation(line: 0, scope: !1698, inlinedAt: !1786)
!1867 = !DILocation(line: 219, column: 22, scope: !1698, inlinedAt: !1786)
!1868 = !DILocation(line: 219, column: 25, scope: !1698, inlinedAt: !1786)
!1869 = !DILocation(line: 375, column: 11, scope: !1733, inlinedAt: !1767)
!1870 = !DILocation(line: 377, column: 15, scope: !1758, inlinedAt: !1767)
!1871 = !DILocation(line: 377, column: 15, scope: !1759, inlinedAt: !1767)
!1872 = !DILocation(line: 379, column: 15, scope: !1757, inlinedAt: !1767)
!1873 = !DILocation(line: 384, column: 11, scope: !1759, inlinedAt: !1767)
!1874 = !DILocation(line: 0, scope: !1639, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 384, column: 23, scope: !1759, inlinedAt: !1767)
!1876 = !DILocation(line: 68, column: 10, scope: !1639, inlinedAt: !1875)
!1877 = !DILocation(line: 384, column: 41, scope: !1759, inlinedAt: !1767)
!1878 = !DILocation(line: 384, column: 38, scope: !1759, inlinedAt: !1767)
!1879 = !DILocation(line: 384, column: 47, scope: !1759, inlinedAt: !1767)
!1880 = !DILocation(line: 384, column: 55, scope: !1759, inlinedAt: !1767)
!1881 = !DILocation(line: 384, column: 52, scope: !1759, inlinedAt: !1767)
!1882 = !DILocation(line: 384, column: 71, scope: !1759, inlinedAt: !1767)
!1883 = !DILocation(line: 384, column: 66, scope: !1759, inlinedAt: !1767)
!1884 = !DILocation(line: 0, scope: !1659, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 386, column: 15, scope: !1886, inlinedAt: !1767)
!1886 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 385, column: 13)
!1887 = !DILocation(line: 110, column: 10, scope: !1659, inlinedAt: !1885)
!1888 = distinct !{!1888, !1873, !1889}
!1889 = !DILocation(line: 388, column: 13, scope: !1759, inlinedAt: !1767)
!1890 = !DILocation(line: 0, scope: !1639, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 392, column: 23, scope: !1892, inlinedAt: !1767)
!1892 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 391, column: 9)
!1893 = !DILocation(line: 68, column: 10, scope: !1639, inlinedAt: !1891)
!1894 = !DILocation(line: 392, column: 41, scope: !1892, inlinedAt: !1767)
!1895 = !DILocation(line: 392, column: 38, scope: !1892, inlinedAt: !1767)
!1896 = !DILocation(line: 392, column: 47, scope: !1892, inlinedAt: !1767)
!1897 = !DILocation(line: 392, column: 55, scope: !1892, inlinedAt: !1767)
!1898 = !DILocation(line: 392, column: 52, scope: !1892, inlinedAt: !1767)
!1899 = !DILocation(line: 392, column: 71, scope: !1892, inlinedAt: !1767)
!1900 = !DILocation(line: 392, column: 66, scope: !1892, inlinedAt: !1767)
!1901 = distinct !{!1901, !1902, !1903}
!1902 = !DILocation(line: 392, column: 11, scope: !1892, inlinedAt: !1767)
!1903 = !DILocation(line: 395, column: 13, scope: !1892, inlinedAt: !1767)
!1904 = !DILocation(line: 373, column: 11, scope: !1733, inlinedAt: !1767)
!1905 = !DILocation(line: 0, scope: !1760, inlinedAt: !1767)
!1906 = !DILocation(line: 399, column: 11, scope: !1765, inlinedAt: !1767)
!1907 = !DILocation(line: 399, column: 20, scope: !1765, inlinedAt: !1767)
!1908 = !DILocation(line: 399, column: 17, scope: !1765, inlinedAt: !1767)
!1909 = !DILocation(line: 399, column: 36, scope: !1765, inlinedAt: !1767)
!1910 = !DILocation(line: 399, column: 31, scope: !1765, inlinedAt: !1767)
!1911 = !DILocation(line: 0, scope: !1639, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 401, column: 24, scope: !1764, inlinedAt: !1767)
!1913 = !DILocation(line: 68, column: 10, scope: !1639, inlinedAt: !1912)
!1914 = !DILocation(line: 0, scope: !1764, inlinedAt: !1767)
!1915 = !DILocation(line: 402, column: 15, scope: !1764, inlinedAt: !1767)
!1916 = !DILocation(line: 402, column: 22, scope: !1917, inlinedAt: !1767)
!1917 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 402, column: 15)
!1918 = !DILocation(line: 408, column: 16, scope: !1919, inlinedAt: !1767)
!1919 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 408, column: 11)
!1920 = !DILocation(line: 410, column: 21, scope: !1921, inlinedAt: !1767)
!1921 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 410, column: 16)
!1922 = !DILocation(line: 410, column: 32, scope: !1921, inlinedAt: !1767)
!1923 = !DILocation(line: 403, column: 13, scope: !1917, inlinedAt: !1767)
!1924 = !DILocation(line: 408, column: 13, scope: !1919, inlinedAt: !1767)
!1925 = !DILocation(line: 408, column: 11, scope: !1733, inlinedAt: !1767)
!1926 = !DILocation(line: 209, column: 14, scope: !1682, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 409, column: 9, scope: !1919, inlinedAt: !1767)
!1928 = !DILocation(line: 210, column: 21, scope: !1689, inlinedAt: !1927)
!1929 = !DILocation(line: 210, column: 33, scope: !1689, inlinedAt: !1927)
!1930 = !DILocation(line: 210, column: 19, scope: !1689, inlinedAt: !1927)
!1931 = !DILocation(line: 210, column: 7, scope: !1682, inlinedAt: !1927)
!1932 = !DILocation(line: 211, column: 15, scope: !1689, inlinedAt: !1927)
!1933 = !DILocation(line: 211, column: 5, scope: !1689, inlinedAt: !1927)
!1934 = !DILocation(line: 410, column: 18, scope: !1921, inlinedAt: !1767)
!1935 = !DILocation(line: 410, column: 37, scope: !1921, inlinedAt: !1767)
!1936 = !DILocation(line: 412, column: 15, scope: !1937, inlinedAt: !1767)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 412, column: 15)
!1938 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 411, column: 9)
!1939 = !DILocation(line: 413, column: 15, scope: !1937, inlinedAt: !1767)
!1940 = !DILocation(line: 413, column: 20, scope: !1937, inlinedAt: !1767)
!1941 = !DILocation(line: 413, column: 56, scope: !1937, inlinedAt: !1767)
!1942 = !DILocation(line: 413, column: 43, scope: !1937, inlinedAt: !1767)
!1943 = !DILocation(line: 415, column: 21, scope: !1944, inlinedAt: !1767)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 415, column: 19)
!1945 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 414, column: 13)
!1946 = !DILocation(line: 415, column: 45, scope: !1944, inlinedAt: !1767)
!1947 = !DILocation(line: 415, column: 35, scope: !1944, inlinedAt: !1767)
!1948 = !DILocation(line: 416, column: 28, scope: !1944, inlinedAt: !1767)
!1949 = !DILocation(line: 0, scope: !1659, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 417, column: 17, scope: !1944, inlinedAt: !1767)
!1951 = !DILocation(line: 110, column: 10, scope: !1659, inlinedAt: !1950)
!1952 = !DILocation(line: 419, column: 15, scope: !1938, inlinedAt: !1767)
!1953 = !DILocation(line: 422, column: 24, scope: !1938, inlinedAt: !1767)
!1954 = !DILocation(line: 422, column: 22, scope: !1938, inlinedAt: !1767)
!1955 = !DILocation(line: 424, column: 9, scope: !1938, inlinedAt: !1767)
!1956 = !DILocation(line: 0, scope: !1799, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 464, column: 7, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 464, column: 7)
!1959 = !DILocation(line: 137, column: 10, scope: !1799, inlinedAt: !1957)
!1960 = !DILocation(line: 464, column: 7, scope: !1958)
!1961 = !DILocation(line: 464, column: 7, scope: !1575)
!1962 = !DILocation(line: 466, column: 17, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 465, column: 5)
!1964 = !DILocation(line: 466, column: 30, scope: !1963)
!1965 = !DILocation(line: 466, column: 7, scope: !1963)
!1966 = !DILocation(line: 467, column: 7, scope: !1963)
!1967 = !DILocation(line: 469, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 469, column: 7)
!1969 = !DILocation(line: 469, column: 7, scope: !1575)
!1970 = !DILocation(line: 470, column: 5, scope: !1968)
!1971 = !DILocation(line: 471, column: 12, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 471, column: 12)
!1973 = !DILocation(line: 471, column: 28, scope: !1972)
!1974 = !DILocation(line: 471, column: 12, scope: !1968)
!1975 = !DILocation(line: 473, column: 17, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 472, column: 5)
!1977 = !DILocation(line: 473, column: 30, scope: !1976)
!1978 = !DILocation(line: 473, column: 7, scope: !1976)
!1979 = !DILocation(line: 474, column: 7, scope: !1976)
!1980 = !DILocation(line: 477, column: 1, scope: !1575)
!1981 = !DILocation(line: 0, scope: !315)
!1982 = !DILocation(line: 151, column: 16, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !315, file: !254, line: 151, column: 7)
!1984 = !DILocation(line: 151, column: 37, scope: !1983)
!1985 = !DILocation(line: 151, column: 40, scope: !1983)
!1986 = !DILocation(line: 156, column: 15, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1983, file: !254, line: 152, column: 5)
!1988 = !DILocation(line: 151, column: 7, scope: !315)
!1989 = !DILocation(line: 159, column: 3, scope: !315)
!1990 = !DILocation(line: 154, column: 21, scope: !1987)
!1991 = !DILocation(line: 143, column: 8, scope: !315)
!1992 = !DILocation(line: 161, column: 11, scope: !331)
!1993 = !DILocation(line: 161, column: 11, scope: !332)
!1994 = !DILocation(line: 165, column: 15, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !254, line: 165, column: 15)
!1996 = distinct !DILexicalBlock(scope: !331, file: !254, line: 162, column: 9)
!1997 = !DILocation(line: 165, column: 15, scope: !1996)
!1998 = !DILocation(line: 166, column: 13, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1995, file: !254, line: 166, column: 13)
!2000 = !DILocation(line: 173, column: 15, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1996, file: !254, line: 173, column: 15)
!2002 = !DILocation(line: 173, column: 29, scope: !2001)
!2003 = !DILocation(line: 173, column: 33, scope: !2001)
!2004 = !DILocation(line: 174, column: 13, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2001, file: !254, line: 174, column: 13)
!2006 = !DILocation(line: 178, column: 22, scope: !1996)
!2007 = !DILocation(line: 180, column: 9, scope: !1996)
!2008 = !DILocation(line: 182, column: 19, scope: !330)
!2009 = !{!1650, !1650, i64 0}
!2010 = !DILocation(line: 182, column: 63, scope: !330)
!2011 = !DILocation(line: 182, column: 50, scope: !330)
!2012 = !DILocation(line: 186, column: 15, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !254, line: 186, column: 15)
!2014 = distinct !DILexicalBlock(scope: !330, file: !254, line: 183, column: 9)
!2015 = !DILocation(line: 186, column: 15, scope: !2014)
!2016 = !DILocation(line: 190, column: 34, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !254, line: 190, column: 19)
!2018 = distinct !DILexicalBlock(scope: !2013, file: !254, line: 187, column: 13)
!2019 = !DILocation(line: 196, column: 21, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !254, line: 196, column: 21)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !254, line: 193, column: 23)
!2022 = distinct !DILexicalBlock(scope: !2017, file: !254, line: 191, column: 17)
!2023 = !DILocation(line: 190, column: 38, scope: !2017)
!2024 = !DILocation(line: 201, column: 19, scope: !2018)
!2025 = !DILocalVariable(name: "lo", arg: 1, scope: !2026, file: !254, line: 48, type: !238)
!2026 = distinct !DISubprogram(name: "add_range_pair", scope: !254, file: !254, line: 48, type: !2027, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2029)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{null, !238, !238}
!2029 = !{!2025, !2030}
!2030 = !DILocalVariable(name: "hi", arg: 2, scope: !2026, file: !254, line: 48, type: !238)
!2031 = !DILocation(line: 0, scope: !2026, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 204, column: 19, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !254, line: 202, column: 17)
!2034 = distinct !DILexicalBlock(scope: !2018, file: !254, line: 201, column: 19)
!2035 = !DILocation(line: 50, column: 7, scope: !2036, inlinedAt: !2032)
!2036 = distinct !DILexicalBlock(scope: !2026, file: !254, line: 50, column: 7)
!2037 = !DILocation(line: 50, column: 16, scope: !2036, inlinedAt: !2032)
!2038 = !DILocation(line: 50, column: 13, scope: !2036, inlinedAt: !2032)
!2039 = !DILocation(line: 50, column: 7, scope: !2026, inlinedAt: !2032)
!2040 = !DILocation(line: 52, column: 3, scope: !2026, inlinedAt: !2032)
!2041 = !DILocation(line: 51, column: 11, scope: !2036, inlinedAt: !2032)
!2042 = !DILocation(line: 0, scope: !272, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 51, column: 11, scope: !2036, inlinedAt: !2032)
!2044 = !DILocation(line: 178, column: 9, scope: !2045, inlinedAt: !2043)
!2045 = distinct !DILexicalBlock(scope: !272, file: !153, line: 178, column: 7)
!2046 = !DILocation(line: 178, column: 7, scope: !272, inlinedAt: !2043)
!2047 = !DILocation(line: 180, column: 13, scope: !2048, inlinedAt: !2043)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !153, line: 180, column: 11)
!2049 = distinct !DILexicalBlock(scope: !2045, file: !153, line: 179, column: 5)
!2050 = !DILocation(line: 180, column: 11, scope: !2049, inlinedAt: !2043)
!2051 = !DILocation(line: 191, column: 11, scope: !2052, inlinedAt: !2043)
!2052 = distinct !DILexicalBlock(scope: !2049, file: !153, line: 191, column: 11)
!2053 = !DILocation(line: 191, column: 11, scope: !2049, inlinedAt: !2043)
!2054 = !DILocation(line: 192, column: 9, scope: !2052, inlinedAt: !2043)
!2055 = !DILocation(line: 201, column: 11, scope: !2056, inlinedAt: !2043)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !153, line: 200, column: 11)
!2057 = distinct !DILexicalBlock(scope: !2045, file: !153, line: 195, column: 5)
!2058 = !DILocation(line: 200, column: 11, scope: !2057, inlinedAt: !2043)
!2059 = !DILocation(line: 202, column: 9, scope: !2056, inlinedAt: !2043)
!2060 = !DILocation(line: 203, column: 14, scope: !2057, inlinedAt: !2043)
!2061 = !DILocation(line: 203, column: 18, scope: !2057, inlinedAt: !2043)
!2062 = !DILocation(line: 203, column: 9, scope: !2057, inlinedAt: !2043)
!2063 = !DILocation(line: 206, column: 7, scope: !272, inlinedAt: !2043)
!2064 = !DILocation(line: 207, column: 25, scope: !272, inlinedAt: !2043)
!2065 = !DILocation(line: 207, column: 10, scope: !272, inlinedAt: !2043)
!2066 = !DILocation(line: 51, column: 9, scope: !2036, inlinedAt: !2032)
!2067 = !DILocation(line: 51, column: 5, scope: !2036, inlinedAt: !2032)
!2068 = !DILocation(line: 52, column: 7, scope: !2026, inlinedAt: !2032)
!2069 = !DILocation(line: 52, column: 14, scope: !2026, inlinedAt: !2032)
!2070 = !DILocation(line: 52, column: 17, scope: !2026, inlinedAt: !2032)
!2071 = !DILocation(line: 53, column: 7, scope: !2026, inlinedAt: !2032)
!2072 = !DILocation(line: 53, column: 14, scope: !2026, inlinedAt: !2032)
!2073 = !DILocation(line: 53, column: 17, scope: !2026, inlinedAt: !2032)
!2074 = !DILocation(line: 54, column: 3, scope: !2026, inlinedAt: !2032)
!2075 = !DILocation(line: 205, column: 17, scope: !2033)
!2076 = !DILocation(line: 209, column: 29, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !254, line: 209, column: 23)
!2078 = distinct !DILexicalBlock(scope: !2034, file: !254, line: 207, column: 17)
!2079 = !DILocation(line: 209, column: 23, scope: !2078)
!2080 = !DILocation(line: 210, column: 21, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2077, file: !254, line: 210, column: 21)
!2082 = !DILocation(line: 0, scope: !2026, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 212, column: 19, scope: !2078)
!2084 = !DILocation(line: 50, column: 7, scope: !2036, inlinedAt: !2083)
!2085 = !DILocation(line: 50, column: 16, scope: !2036, inlinedAt: !2083)
!2086 = !DILocation(line: 50, column: 13, scope: !2036, inlinedAt: !2083)
!2087 = !DILocation(line: 50, column: 7, scope: !2026, inlinedAt: !2083)
!2088 = !DILocation(line: 52, column: 3, scope: !2026, inlinedAt: !2083)
!2089 = !DILocation(line: 51, column: 11, scope: !2036, inlinedAt: !2083)
!2090 = !DILocation(line: 0, scope: !272, inlinedAt: !2091)
!2091 = distinct !DILocation(line: 51, column: 11, scope: !2036, inlinedAt: !2083)
!2092 = !DILocation(line: 178, column: 9, scope: !2045, inlinedAt: !2091)
!2093 = !DILocation(line: 178, column: 7, scope: !272, inlinedAt: !2091)
!2094 = !DILocation(line: 180, column: 13, scope: !2048, inlinedAt: !2091)
!2095 = !DILocation(line: 180, column: 11, scope: !2049, inlinedAt: !2091)
!2096 = !DILocation(line: 191, column: 11, scope: !2052, inlinedAt: !2091)
!2097 = !DILocation(line: 191, column: 11, scope: !2049, inlinedAt: !2091)
!2098 = !DILocation(line: 192, column: 9, scope: !2052, inlinedAt: !2091)
!2099 = !DILocation(line: 201, column: 11, scope: !2056, inlinedAt: !2091)
!2100 = !DILocation(line: 200, column: 11, scope: !2057, inlinedAt: !2091)
!2101 = !DILocation(line: 202, column: 9, scope: !2056, inlinedAt: !2091)
!2102 = !DILocation(line: 203, column: 14, scope: !2057, inlinedAt: !2091)
!2103 = !DILocation(line: 203, column: 18, scope: !2057, inlinedAt: !2091)
!2104 = !DILocation(line: 203, column: 9, scope: !2057, inlinedAt: !2091)
!2105 = !DILocation(line: 206, column: 7, scope: !272, inlinedAt: !2091)
!2106 = !DILocation(line: 207, column: 25, scope: !272, inlinedAt: !2091)
!2107 = !DILocation(line: 207, column: 10, scope: !272, inlinedAt: !2091)
!2108 = !DILocation(line: 51, column: 9, scope: !2036, inlinedAt: !2083)
!2109 = !DILocation(line: 51, column: 5, scope: !2036, inlinedAt: !2083)
!2110 = !DILocation(line: 52, column: 7, scope: !2026, inlinedAt: !2083)
!2111 = !DILocation(line: 52, column: 14, scope: !2026, inlinedAt: !2083)
!2112 = !DILocation(line: 52, column: 17, scope: !2026, inlinedAt: !2083)
!2113 = !DILocation(line: 53, column: 7, scope: !2026, inlinedAt: !2083)
!2114 = !DILocation(line: 53, column: 14, scope: !2026, inlinedAt: !2083)
!2115 = !DILocation(line: 53, column: 17, scope: !2026, inlinedAt: !2083)
!2116 = !DILocation(line: 54, column: 3, scope: !2026, inlinedAt: !2083)
!2117 = !DILocation(line: 219, column: 25, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !254, line: 219, column: 19)
!2119 = distinct !DILexicalBlock(scope: !2013, file: !254, line: 217, column: 13)
!2120 = !DILocation(line: 219, column: 19, scope: !2119)
!2121 = !DILocation(line: 220, column: 17, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2118, file: !254, line: 220, column: 17)
!2123 = !DILocation(line: 0, scope: !2026, inlinedAt: !2124)
!2124 = distinct !DILocation(line: 224, column: 15, scope: !2119)
!2125 = !DILocation(line: 50, column: 7, scope: !2036, inlinedAt: !2124)
!2126 = !DILocation(line: 50, column: 16, scope: !2036, inlinedAt: !2124)
!2127 = !DILocation(line: 50, column: 13, scope: !2036, inlinedAt: !2124)
!2128 = !DILocation(line: 50, column: 7, scope: !2026, inlinedAt: !2124)
!2129 = !DILocation(line: 52, column: 3, scope: !2026, inlinedAt: !2124)
!2130 = !DILocation(line: 51, column: 11, scope: !2036, inlinedAt: !2124)
!2131 = !DILocation(line: 0, scope: !272, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 51, column: 11, scope: !2036, inlinedAt: !2124)
!2133 = !DILocation(line: 178, column: 9, scope: !2045, inlinedAt: !2132)
!2134 = !DILocation(line: 178, column: 7, scope: !272, inlinedAt: !2132)
!2135 = !DILocation(line: 180, column: 13, scope: !2048, inlinedAt: !2132)
!2136 = !DILocation(line: 180, column: 11, scope: !2049, inlinedAt: !2132)
!2137 = !DILocation(line: 191, column: 11, scope: !2052, inlinedAt: !2132)
!2138 = !DILocation(line: 191, column: 11, scope: !2049, inlinedAt: !2132)
!2139 = !DILocation(line: 192, column: 9, scope: !2052, inlinedAt: !2132)
!2140 = !DILocation(line: 201, column: 11, scope: !2056, inlinedAt: !2132)
!2141 = !DILocation(line: 200, column: 11, scope: !2057, inlinedAt: !2132)
!2142 = !DILocation(line: 202, column: 9, scope: !2056, inlinedAt: !2132)
!2143 = !DILocation(line: 203, column: 14, scope: !2057, inlinedAt: !2132)
!2144 = !DILocation(line: 203, column: 18, scope: !2057, inlinedAt: !2132)
!2145 = !DILocation(line: 203, column: 9, scope: !2057, inlinedAt: !2132)
!2146 = !DILocation(line: 206, column: 7, scope: !272, inlinedAt: !2132)
!2147 = !DILocation(line: 207, column: 25, scope: !272, inlinedAt: !2132)
!2148 = !DILocation(line: 207, column: 10, scope: !272, inlinedAt: !2132)
!2149 = !DILocation(line: 51, column: 9, scope: !2036, inlinedAt: !2124)
!2150 = !DILocation(line: 51, column: 5, scope: !2036, inlinedAt: !2124)
!2151 = !DILocation(line: 52, column: 7, scope: !2026, inlinedAt: !2124)
!2152 = !DILocation(line: 52, column: 14, scope: !2026, inlinedAt: !2124)
!2153 = !DILocation(line: 52, column: 17, scope: !2026, inlinedAt: !2124)
!2154 = !DILocation(line: 53, column: 7, scope: !2026, inlinedAt: !2124)
!2155 = !DILocation(line: 53, column: 14, scope: !2026, inlinedAt: !2124)
!2156 = !DILocation(line: 53, column: 17, scope: !2026, inlinedAt: !2124)
!2157 = !DILocation(line: 54, column: 3, scope: !2026, inlinedAt: !2124)
!2158 = !DILocation(line: 140, column: 13, scope: !315)
!2159 = !DILocation(line: 0, scope: !2013)
!2160 = !DILocation(line: 228, column: 15, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2014, file: !254, line: 228, column: 15)
!2162 = !DILocation(line: 228, column: 25, scope: !2161)
!2163 = !DILocation(line: 228, column: 15, scope: !2014)
!2164 = !DILocation(line: 182, column: 53, scope: !330)
!2165 = !DILocation(line: 235, column: 16, scope: !329)
!2166 = !DILocation(line: 235, column: 16, scope: !330)
!2167 = !DILocation(line: 240, column: 30, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !328, file: !254, line: 240, column: 15)
!2169 = !DILocation(line: 240, column: 26, scope: !2168)
!2170 = !DILocation(line: 241, column: 23, scope: !2168)
!2171 = !DILocation(line: 241, column: 13, scope: !2168)
!2172 = !DILocation(line: 244, column: 15, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !328, file: !254, line: 244, column: 15)
!2174 = !DILocation(line: 250, column: 16, scope: !327)
!2175 = !DILocation(line: 251, column: 24, scope: !327)
!2176 = !DILocation(line: 251, column: 15, scope: !327)
!2177 = !DILocation(line: 256, column: 28, scope: !326)
!2178 = !DILocation(line: 0, scope: !326)
!2179 = !DILocation(line: 257, column: 31, scope: !326)
!2180 = !DILocation(line: 258, column: 37, scope: !326)
!2181 = !DILocation(line: 258, column: 28, scope: !326)
!2182 = !DILocation(line: 261, column: 28, scope: !326)
!2183 = !DILocation(line: 258, column: 15, scope: !326)
!2184 = !DILocation(line: 262, column: 15, scope: !326)
!2185 = !DILocation(line: 263, column: 15, scope: !326)
!2186 = !DILocation(line: 270, column: 33, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !329, file: !254, line: 269, column: 9)
!2188 = !DILocation(line: 270, column: 24, scope: !2187)
!2189 = !DILocation(line: 0, scope: !2187)
!2190 = !DILocation(line: 273, column: 24, scope: !2187)
!2191 = !DILocation(line: 270, column: 11, scope: !2187)
!2192 = !DILocation(line: 274, column: 11, scope: !2187)
!2193 = !DILocation(line: 0, scope: !331)
!2194 = distinct !{!2194, !1989, !2195}
!2195 = !DILocation(line: 276, column: 5, scope: !315)
!2196 = !DILocation(line: 278, column: 8, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !315, file: !254, line: 278, column: 7)
!2198 = !DILocation(line: 278, column: 7, scope: !315)
!2199 = !DILocation(line: 279, column: 5, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2197, file: !254, line: 279, column: 5)
!2201 = !DILocation(line: 283, column: 3, scope: !315)
!2202 = !DILocation(line: 0, scope: !335)
!2203 = !DILocation(line: 286, column: 26, scope: !339)
!2204 = !DILocation(line: 286, column: 24, scope: !339)
!2205 = !DILocation(line: 286, column: 3, scope: !335)
!2206 = !DILocation(line: 302, column: 15, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !315, file: !254, line: 302, column: 7)
!2208 = !DILocation(line: 302, column: 7, scope: !315)
!2209 = !DILocation(line: 288, column: 25, scope: !337)
!2210 = !DILocation(line: 0, scope: !337)
!2211 = !DILocation(line: 288, column: 32, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !337, file: !254, line: 288, column: 7)
!2213 = !DILocation(line: 288, column: 7, scope: !337)
!2214 = !DILocation(line: 0, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !254, line: 291, column: 13)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !254, line: 290, column: 15)
!2217 = distinct !DILexicalBlock(scope: !2212, file: !254, line: 289, column: 9)
!2218 = !DILocation(line: 290, column: 15, scope: !2216)
!2219 = !DILocation(line: 290, column: 22, scope: !2216)
!2220 = !DILocation(line: 290, column: 35, scope: !2216)
!2221 = !DILocation(line: 290, column: 25, scope: !2216)
!2222 = !DILocation(line: 290, column: 15, scope: !2217)
!2223 = distinct !{!2223, !2213, !2224}
!2224 = !DILocation(line: 299, column: 9, scope: !337)
!2225 = !DILocation(line: 292, column: 27, scope: !2215)
!2226 = !DILocation(line: 292, column: 25, scope: !2215)
!2227 = !DILocation(line: 293, column: 28, scope: !2215)
!2228 = !DILocation(line: 293, column: 24, scope: !2215)
!2229 = !DILocation(line: 293, column: 41, scope: !2215)
!2230 = !DILocation(line: 293, column: 33, scope: !2215)
!2231 = !DILocation(line: 293, column: 47, scope: !2215)
!2232 = !DILocation(line: 293, column: 57, scope: !2215)
!2233 = !DILocation(line: 293, column: 62, scope: !2215)
!2234 = !DILocalVariable(name: "__dest", arg: 1, scope: !2235, file: !2236, line: 38, type: !102)
!2235 = distinct !DISubprogram(name: "memmove", scope: !2236, file: !2236, line: 38, type: !2237, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2239)
!2236 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!102, !102, !177, !104}
!2239 = !{!2234, !2240, !2241}
!2240 = !DILocalVariable(name: "__src", arg: 2, scope: !2235, file: !2236, line: 38, type: !177)
!2241 = !DILocalVariable(name: "__len", arg: 3, scope: !2235, file: !2236, line: 38, type: !104)
!2242 = !DILocation(line: 0, scope: !2235, inlinedAt: !2243)
!2243 = distinct !DILocation(line: 293, column: 15, scope: !2215)
!2244 = !DILocation(line: 40, column: 10, scope: !2235, inlinedAt: !2243)
!2245 = !DILocation(line: 294, column: 20, scope: !2215)
!2246 = distinct !{!2246, !2205, !2247}
!2247 = !DILocation(line: 300, column: 5, scope: !335)
!2248 = !DILocation(line: 74, column: 32, scope: !2249, inlinedAt: !2255)
!2249 = distinct !DISubprogram(name: "complement_rp", scope: !254, file: !254, line: 72, type: !131, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2250)
!2250 = !{!2251, !2252, !2253}
!2251 = !DILocalVariable(name: "c", scope: !2249, file: !254, line: 74, type: !342)
!2252 = !DILocalVariable(name: "n", scope: !2249, file: !254, line: 75, type: !104)
!2253 = !DILocalVariable(name: "i", scope: !2254, file: !254, line: 84, type: !104)
!2254 = distinct !DILexicalBlock(scope: !2249, file: !254, line: 84, column: 3)
!2255 = distinct !DILocation(line: 303, column: 5, scope: !2207)
!2256 = !DILocation(line: 0, scope: !2249, inlinedAt: !2255)
!2257 = !DILocation(line: 77, column: 7, scope: !2249, inlinedAt: !2255)
!2258 = !DILocation(line: 78, column: 9, scope: !2249, inlinedAt: !2255)
!2259 = !DILocation(line: 79, column: 19, scope: !2249, inlinedAt: !2255)
!2260 = !DILocation(line: 81, column: 12, scope: !2261, inlinedAt: !2255)
!2261 = distinct !DILexicalBlock(scope: !2249, file: !254, line: 81, column: 7)
!2262 = !DILocation(line: 81, column: 15, scope: !2261, inlinedAt: !2255)
!2263 = !DILocation(line: 81, column: 7, scope: !2249, inlinedAt: !2255)
!2264 = !DILocation(line: 82, column: 32, scope: !2261, inlinedAt: !2255)
!2265 = !DILocation(line: 0, scope: !2026, inlinedAt: !2266)
!2266 = distinct !DILocation(line: 82, column: 5, scope: !2261, inlinedAt: !2255)
!2267 = !DILocation(line: 0, scope: !272, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 51, column: 11, scope: !2036, inlinedAt: !2266)
!2269 = !DILocation(line: 206, column: 7, scope: !272, inlinedAt: !2268)
!2270 = !DILocation(line: 207, column: 10, scope: !272, inlinedAt: !2268)
!2271 = !DILocation(line: 51, column: 9, scope: !2036, inlinedAt: !2266)
!2272 = !DILocation(line: 51, column: 5, scope: !2036, inlinedAt: !2266)
!2273 = !DILocation(line: 52, column: 7, scope: !2026, inlinedAt: !2266)
!2274 = !DILocation(line: 52, column: 14, scope: !2026, inlinedAt: !2266)
!2275 = !DILocation(line: 52, column: 17, scope: !2026, inlinedAt: !2266)
!2276 = !DILocation(line: 53, column: 7, scope: !2026, inlinedAt: !2266)
!2277 = !DILocation(line: 53, column: 14, scope: !2026, inlinedAt: !2266)
!2278 = !DILocation(line: 53, column: 17, scope: !2026, inlinedAt: !2266)
!2279 = !DILocation(line: 54, column: 3, scope: !2026, inlinedAt: !2266)
!2280 = !DILocation(line: 82, column: 5, scope: !2261, inlinedAt: !2255)
!2281 = !DILocation(line: 0, scope: !2254, inlinedAt: !2255)
!2282 = !DILocation(line: 84, column: 24, scope: !2283, inlinedAt: !2255)
!2283 = distinct !DILexicalBlock(scope: !2254, file: !254, line: 84, column: 3)
!2284 = !DILocation(line: 84, column: 3, scope: !2254, inlinedAt: !2255)
!2285 = !DILocation(line: 92, column: 10, scope: !2286, inlinedAt: !2255)
!2286 = distinct !DILexicalBlock(scope: !2249, file: !254, line: 92, column: 7)
!2287 = !DILocation(line: 92, column: 14, scope: !2286, inlinedAt: !2255)
!2288 = !DILocation(line: 92, column: 17, scope: !2286, inlinedAt: !2255)
!2289 = !DILocation(line: 92, column: 7, scope: !2249, inlinedAt: !2255)
!2290 = !DILocation(line: 86, column: 14, scope: !2291, inlinedAt: !2255)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !254, line: 86, column: 11)
!2292 = distinct !DILexicalBlock(scope: !2283, file: !254, line: 85, column: 5)
!2293 = !DILocation(line: 86, column: 18, scope: !2291, inlinedAt: !2255)
!2294 = !DILocation(line: 86, column: 21, scope: !2291, inlinedAt: !2255)
!2295 = !DILocation(line: 86, column: 33, scope: !2291, inlinedAt: !2255)
!2296 = !DILocation(line: 86, column: 25, scope: !2291, inlinedAt: !2255)
!2297 = !DILocation(line: 86, column: 11, scope: !2292, inlinedAt: !2255)
!2298 = !DILocation(line: 89, column: 46, scope: !2292, inlinedAt: !2255)
!2299 = !DILocation(line: 0, scope: !2026, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 89, column: 7, scope: !2292, inlinedAt: !2255)
!2301 = !DILocation(line: 50, column: 16, scope: !2036, inlinedAt: !2300)
!2302 = !DILocation(line: 50, column: 13, scope: !2036, inlinedAt: !2300)
!2303 = !DILocation(line: 50, column: 7, scope: !2026, inlinedAt: !2300)
!2304 = !DILocation(line: 0, scope: !272, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 51, column: 11, scope: !2036, inlinedAt: !2300)
!2306 = !DILocation(line: 178, column: 9, scope: !2045, inlinedAt: !2305)
!2307 = !DILocation(line: 178, column: 7, scope: !272, inlinedAt: !2305)
!2308 = !DILocation(line: 180, column: 13, scope: !2048, inlinedAt: !2305)
!2309 = !DILocation(line: 180, column: 11, scope: !2049, inlinedAt: !2305)
!2310 = !DILocation(line: 191, column: 11, scope: !2052, inlinedAt: !2305)
!2311 = !DILocation(line: 191, column: 11, scope: !2049, inlinedAt: !2305)
!2312 = !DILocation(line: 192, column: 9, scope: !2052, inlinedAt: !2305)
!2313 = !DILocation(line: 201, column: 11, scope: !2056, inlinedAt: !2305)
!2314 = !DILocation(line: 200, column: 11, scope: !2057, inlinedAt: !2305)
!2315 = !DILocation(line: 202, column: 9, scope: !2056, inlinedAt: !2305)
!2316 = !DILocation(line: 203, column: 14, scope: !2057, inlinedAt: !2305)
!2317 = !DILocation(line: 203, column: 18, scope: !2057, inlinedAt: !2305)
!2318 = !DILocation(line: 203, column: 9, scope: !2057, inlinedAt: !2305)
!2319 = !DILocation(line: 206, column: 7, scope: !272, inlinedAt: !2305)
!2320 = !DILocation(line: 207, column: 25, scope: !272, inlinedAt: !2305)
!2321 = !DILocation(line: 207, column: 10, scope: !272, inlinedAt: !2305)
!2322 = !DILocation(line: 51, column: 9, scope: !2036, inlinedAt: !2300)
!2323 = !DILocation(line: 51, column: 5, scope: !2036, inlinedAt: !2300)
!2324 = !DILocation(line: 52, column: 7, scope: !2026, inlinedAt: !2300)
!2325 = !DILocation(line: 52, column: 14, scope: !2026, inlinedAt: !2300)
!2326 = !DILocation(line: 52, column: 17, scope: !2026, inlinedAt: !2300)
!2327 = !DILocation(line: 53, column: 7, scope: !2026, inlinedAt: !2300)
!2328 = !DILocation(line: 53, column: 14, scope: !2026, inlinedAt: !2300)
!2329 = !DILocation(line: 53, column: 17, scope: !2026, inlinedAt: !2300)
!2330 = !DILocation(line: 54, column: 3, scope: !2026, inlinedAt: !2300)
!2331 = !DILocation(line: 90, column: 5, scope: !2292, inlinedAt: !2255)
!2332 = !DILocation(line: 84, column: 29, scope: !2283, inlinedAt: !2255)
!2333 = distinct !{!2333, !2284, !2334}
!2334 = !DILocation(line: 90, column: 5, scope: !2254, inlinedAt: !2255)
!2335 = !DILocation(line: 93, column: 31, scope: !2286, inlinedAt: !2255)
!2336 = !DILocation(line: 0, scope: !2026, inlinedAt: !2337)
!2337 = distinct !DILocation(line: 93, column: 5, scope: !2286, inlinedAt: !2255)
!2338 = !DILocation(line: 50, column: 16, scope: !2036, inlinedAt: !2337)
!2339 = !DILocation(line: 50, column: 13, scope: !2036, inlinedAt: !2337)
!2340 = !DILocation(line: 50, column: 7, scope: !2026, inlinedAt: !2337)
!2341 = !DILocation(line: 0, scope: !272, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 51, column: 11, scope: !2036, inlinedAt: !2337)
!2343 = !DILocation(line: 178, column: 9, scope: !2045, inlinedAt: !2342)
!2344 = !DILocation(line: 178, column: 7, scope: !272, inlinedAt: !2342)
!2345 = !DILocation(line: 180, column: 13, scope: !2048, inlinedAt: !2342)
!2346 = !DILocation(line: 180, column: 11, scope: !2049, inlinedAt: !2342)
!2347 = !DILocation(line: 191, column: 11, scope: !2052, inlinedAt: !2342)
!2348 = !DILocation(line: 191, column: 11, scope: !2049, inlinedAt: !2342)
!2349 = !DILocation(line: 192, column: 9, scope: !2052, inlinedAt: !2342)
!2350 = !DILocation(line: 201, column: 11, scope: !2056, inlinedAt: !2342)
!2351 = !DILocation(line: 200, column: 11, scope: !2057, inlinedAt: !2342)
!2352 = !DILocation(line: 202, column: 9, scope: !2056, inlinedAt: !2342)
!2353 = !DILocation(line: 203, column: 14, scope: !2057, inlinedAt: !2342)
!2354 = !DILocation(line: 203, column: 18, scope: !2057, inlinedAt: !2342)
!2355 = !DILocation(line: 203, column: 9, scope: !2057, inlinedAt: !2342)
!2356 = !DILocation(line: 206, column: 7, scope: !272, inlinedAt: !2342)
!2357 = !DILocation(line: 207, column: 25, scope: !272, inlinedAt: !2342)
!2358 = !DILocation(line: 207, column: 10, scope: !272, inlinedAt: !2342)
!2359 = !DILocation(line: 51, column: 9, scope: !2036, inlinedAt: !2337)
!2360 = !DILocation(line: 51, column: 5, scope: !2036, inlinedAt: !2337)
!2361 = !DILocation(line: 52, column: 7, scope: !2026, inlinedAt: !2337)
!2362 = !DILocation(line: 52, column: 3, scope: !2026, inlinedAt: !2337)
!2363 = !DILocation(line: 52, column: 14, scope: !2026, inlinedAt: !2337)
!2364 = !DILocation(line: 52, column: 17, scope: !2026, inlinedAt: !2337)
!2365 = !DILocation(line: 53, column: 7, scope: !2026, inlinedAt: !2337)
!2366 = !DILocation(line: 53, column: 14, scope: !2026, inlinedAt: !2337)
!2367 = !DILocation(line: 53, column: 17, scope: !2026, inlinedAt: !2337)
!2368 = !DILocation(line: 54, column: 3, scope: !2026, inlinedAt: !2337)
!2369 = !DILocation(line: 93, column: 5, scope: !2286, inlinedAt: !2255)
!2370 = !DILocation(line: 95, column: 9, scope: !2249, inlinedAt: !2255)
!2371 = !DILocation(line: 95, column: 3, scope: !2249, inlinedAt: !2255)
!2372 = !DILocation(line: 308, column: 3, scope: !315)
!2373 = !DILocation(line: 303, column: 5, scope: !2207)
!2374 = !DILocation(line: 309, column: 19, scope: !315)
!2375 = !DILocation(line: 309, column: 30, scope: !315)
!2376 = !DILocation(line: 309, column: 9, scope: !315)
!2377 = !DILocation(line: 309, column: 7, scope: !315)
!2378 = !DILocation(line: 310, column: 27, scope: !315)
!2379 = !DILocation(line: 310, column: 33, scope: !315)
!2380 = !DILocation(line: 310, column: 38, scope: !315)
!2381 = !DILocation(line: 310, column: 41, scope: !315)
!2382 = !DILocation(line: 310, column: 7, scope: !315)
!2383 = !DILocation(line: 310, column: 13, scope: !315)
!2384 = !DILocation(line: 310, column: 18, scope: !315)
!2385 = !DILocation(line: 310, column: 21, scope: !315)
!2386 = !DILocation(line: 311, column: 1, scope: !315)
!2387 = distinct !DISubprogram(name: "compare_ranges", scope: !254, file: !254, line: 61, type: !301, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2388)
!2388 = !{!2389, !2390, !2391, !2392}
!2389 = !DILocalVariable(name: "a", arg: 1, scope: !2387, file: !254, line: 61, type: !177)
!2390 = !DILocalVariable(name: "b", arg: 2, scope: !2387, file: !254, line: 61, type: !177)
!2391 = !DILocalVariable(name: "a_start", scope: !2387, file: !254, line: 63, type: !49)
!2392 = !DILocalVariable(name: "b_start", scope: !2387, file: !254, line: 64, type: !49)
!2393 = !DILocation(line: 0, scope: !2387)
!2394 = !DILocation(line: 63, column: 56, scope: !2387)
!2395 = !DILocation(line: 63, column: 17, scope: !2387)
!2396 = !DILocation(line: 64, column: 56, scope: !2387)
!2397 = !DILocation(line: 64, column: 17, scope: !2387)
!2398 = !DILocation(line: 65, column: 18, scope: !2387)
!2399 = !DILocation(line: 65, column: 10, scope: !2387)
!2400 = !DILocation(line: 65, column: 3, scope: !2387)
!2401 = distinct !DISubprogram(name: "reset_fields", scope: !254, file: !254, line: 314, type: !131, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !50)
!2402 = !DILocation(line: 316, column: 9, scope: !2401)
!2403 = !DILocation(line: 317, column: 19, scope: !2401)
!2404 = !DILocation(line: 318, column: 9, scope: !2401)
!2405 = !DILocation(line: 318, column: 3, scope: !2401)
!2406 = !DILocation(line: 319, column: 7, scope: !2401)
!2407 = !DILocation(line: 320, column: 1, scope: !2401)
!2408 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !353, file: !353, line: 51, type: !114, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2409)
!2409 = !{!2410}
!2410 = !DILocalVariable(name: "file", arg: 1, scope: !2408, file: !353, line: 51, type: !47)
!2411 = !DILocation(line: 0, scope: !2408)
!2412 = !DILocation(line: 53, column: 13, scope: !2408)
!2413 = !DILocation(line: 54, column: 1, scope: !2408)
!2414 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !353, file: !353, line: 88, type: !2415, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{null, !205}
!2417 = !{!2418}
!2418 = !DILocalVariable(name: "ignore", arg: 1, scope: !2414, file: !353, line: 88, type: !205)
!2419 = !DILocation(line: 0, scope: !2414)
!2420 = !DILocation(line: 90, column: 16, scope: !2414)
!2421 = !{!2422, !2422, i64 0}
!2422 = !{!"_Bool", !1388, i64 0}
!2423 = !DILocation(line: 91, column: 1, scope: !2414)
!2424 = distinct !DISubprogram(name: "close_stdout", scope: !353, file: !353, line: 117, type: !131, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2425)
!2425 = !{!2426}
!2426 = !DILocalVariable(name: "write_error", scope: !2427, file: !353, line: 122, type: !47)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !353, line: 121, column: 5)
!2428 = distinct !DILexicalBlock(scope: !2424, file: !353, line: 119, column: 7)
!2429 = !DILocation(line: 119, column: 21, scope: !2428)
!2430 = !DILocation(line: 119, column: 7, scope: !2428)
!2431 = !DILocation(line: 119, column: 29, scope: !2428)
!2432 = !DILocation(line: 120, column: 7, scope: !2428)
!2433 = !DILocation(line: 120, column: 12, scope: !2428)
!2434 = !{i8 0, i8 2}
!2435 = !DILocation(line: 120, column: 25, scope: !2428)
!2436 = !DILocation(line: 120, column: 28, scope: !2428)
!2437 = !DILocation(line: 120, column: 34, scope: !2428)
!2438 = !DILocation(line: 119, column: 7, scope: !2424)
!2439 = !DILocation(line: 122, column: 33, scope: !2427)
!2440 = !DILocation(line: 0, scope: !2427)
!2441 = !DILocation(line: 123, column: 11, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2427, file: !353, line: 123, column: 11)
!2443 = !DILocation(line: 0, scope: !2442)
!2444 = !DILocation(line: 123, column: 11, scope: !2427)
!2445 = !DILocation(line: 124, column: 36, scope: !2442)
!2446 = !DILocation(line: 124, column: 9, scope: !2442)
!2447 = !DILocation(line: 127, column: 9, scope: !2442)
!2448 = !DILocation(line: 129, column: 14, scope: !2427)
!2449 = !DILocation(line: 129, column: 7, scope: !2427)
!2450 = !DILocation(line: 134, column: 42, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2424, file: !353, line: 134, column: 7)
!2452 = !DILocation(line: 134, column: 28, scope: !2451)
!2453 = !DILocation(line: 134, column: 50, scope: !2451)
!2454 = !DILocation(line: 134, column: 7, scope: !2424)
!2455 = !DILocation(line: 135, column: 12, scope: !2451)
!2456 = !DILocation(line: 135, column: 5, scope: !2451)
!2457 = !DILocation(line: 136, column: 1, scope: !2424)
!2458 = distinct !DISubprogram(name: "fdadvise", scope: !550, file: !550, line: 31, type: !2459, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !2463)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{null, !49, !2461, !2461, !2462}
!2461 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !52, line: 63, baseType: !78)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !32, line: 52, baseType: !31)
!2463 = !{!2464, !2465, !2466, !2467, !2468}
!2464 = !DILocalVariable(name: "fd", arg: 1, scope: !2458, file: !550, line: 31, type: !49)
!2465 = !DILocalVariable(name: "offset", arg: 2, scope: !2458, file: !550, line: 31, type: !2461)
!2466 = !DILocalVariable(name: "len", arg: 3, scope: !2458, file: !550, line: 31, type: !2461)
!2467 = !DILocalVariable(name: "advice", arg: 4, scope: !2458, file: !550, line: 31, type: !2462)
!2468 = !DILocalVariable(name: "__x", scope: !2469, file: !550, line: 34, type: !49)
!2469 = distinct !DILexicalBlock(scope: !2458, file: !550, line: 34, column: 3)
!2470 = !DILocation(line: 0, scope: !2458)
!2471 = !DILocation(line: 34, column: 3, scope: !2469)
!2472 = !DILocation(line: 0, scope: !2469)
!2473 = !DILocation(line: 36, column: 1, scope: !2458)
!2474 = distinct !DISubprogram(name: "fadvise", scope: !550, file: !550, line: 39, type: !2475, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !2479)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{null, !2477, !2462}
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1583, line: 7, baseType: !561)
!2479 = !{!2480, !2481}
!2480 = !DILocalVariable(name: "fp", arg: 1, scope: !2474, file: !550, line: 39, type: !2477)
!2481 = !DILocalVariable(name: "advice", arg: 2, scope: !2474, file: !550, line: 39, type: !2462)
!2482 = !DILocation(line: 0, scope: !2474)
!2483 = !DILocation(line: 41, column: 7, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2474, file: !550, line: 41, column: 7)
!2485 = !DILocation(line: 41, column: 7, scope: !2474)
!2486 = !DILocation(line: 42, column: 15, scope: !2484)
!2487 = !DILocation(line: 0, scope: !2458, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 42, column: 5, scope: !2484)
!2489 = !DILocation(line: 34, column: 3, scope: !2469, inlinedAt: !2488)
!2490 = !DILocation(line: 0, scope: !2469, inlinedAt: !2488)
!2491 = !DILocation(line: 42, column: 5, scope: !2484)
!2492 = !DILocation(line: 43, column: 1, scope: !2474)
!2493 = distinct !DISubprogram(name: "getndelim2", scope: !593, file: !593, line: 71, type: !2494, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2498)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!1734, !188, !275, !104, !104, !49, !49, !2496}
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1583, line: 7, baseType: !600)
!2498 = !{!2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2514, !2515, !2516, !2521, !2524, !2525, !2528, !2531, !2532}
!2499 = !DILocalVariable(name: "lineptr", arg: 1, scope: !2493, file: !593, line: 71, type: !188)
!2500 = !DILocalVariable(name: "linesize", arg: 2, scope: !2493, file: !593, line: 71, type: !275)
!2501 = !DILocalVariable(name: "offset", arg: 3, scope: !2493, file: !593, line: 71, type: !104)
!2502 = !DILocalVariable(name: "nmax", arg: 4, scope: !2493, file: !593, line: 71, type: !104)
!2503 = !DILocalVariable(name: "delim1", arg: 5, scope: !2493, file: !593, line: 72, type: !49)
!2504 = !DILocalVariable(name: "delim2", arg: 6, scope: !2493, file: !593, line: 72, type: !49)
!2505 = !DILocalVariable(name: "stream", arg: 7, scope: !2493, file: !593, line: 72, type: !2496)
!2506 = !DILocalVariable(name: "nbytes_avail", scope: !2493, file: !593, line: 74, type: !104)
!2507 = !DILocalVariable(name: "read_pos", scope: !2493, file: !593, line: 75, type: !45)
!2508 = !DILocalVariable(name: "bytes_stored", scope: !2493, file: !593, line: 76, type: !1734)
!2509 = !DILocalVariable(name: "ptr", scope: !2493, file: !593, line: 77, type: !45)
!2510 = !DILocalVariable(name: "size", scope: !2493, file: !593, line: 78, type: !104)
!2511 = !DILocalVariable(name: "found_delimiter", scope: !2493, file: !593, line: 79, type: !205)
!2512 = !DILocalVariable(name: "c", scope: !2513, file: !593, line: 112, type: !49)
!2513 = distinct !DILexicalBlock(scope: !2493, file: !593, line: 108, column: 5)
!2514 = !DILocalVariable(name: "buffer", scope: !2513, file: !593, line: 113, type: !47)
!2515 = !DILocalVariable(name: "buffer_len", scope: !2513, file: !593, line: 114, type: !104)
!2516 = !DILocalVariable(name: "end", scope: !2517, file: !593, line: 121, type: !47)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !593, line: 120, column: 13)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !593, line: 119, column: 15)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !593, line: 118, column: 9)
!2520 = distinct !DILexicalBlock(scope: !2513, file: !593, line: 117, column: 11)
!2521 = !DILocalVariable(name: "newsize", scope: !2522, file: !593, line: 153, type: !104)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !593, line: 150, column: 9)
!2523 = distinct !DILexicalBlock(scope: !2513, file: !593, line: 149, column: 11)
!2524 = !DILocalVariable(name: "newptr", scope: !2522, file: !593, line: 154, type: !45)
!2525 = !DILocalVariable(name: "newsizemax", scope: !2526, file: !593, line: 166, type: !104)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !593, line: 165, column: 13)
!2527 = distinct !DILexicalBlock(scope: !2522, file: !593, line: 164, column: 15)
!2528 = !DILocalVariable(name: "copy_len", scope: !2529, file: !593, line: 186, type: !104)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !593, line: 185, column: 9)
!2530 = distinct !DILexicalBlock(scope: !2513, file: !593, line: 184, column: 11)
!2531 = !DILabel(scope: !2493, name: "unlock_done", file: !593, line: 210)
!2532 = !DILabel(scope: !2493, name: "done", file: !593, line: 213)
!2533 = !DILocation(line: 0, scope: !2493)
!2534 = !DILocation(line: 77, column: 15, scope: !2493)
!2535 = !DILocation(line: 78, column: 17, scope: !2493)
!2536 = !DILocation(line: 81, column: 8, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2493, file: !593, line: 81, column: 7)
!2538 = !DILocation(line: 81, column: 7, scope: !2493)
!2539 = !DILocation(line: 83, column: 19, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2537, file: !593, line: 82, column: 5)
!2541 = !DILocation(line: 83, column: 14, scope: !2540)
!2542 = !DILocation(line: 84, column: 13, scope: !2540)
!2543 = !DILocation(line: 85, column: 12, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2540, file: !593, line: 85, column: 11)
!2545 = !DILocation(line: 85, column: 11, scope: !2540)
!2546 = !DILocation(line: 89, column: 12, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2493, file: !593, line: 89, column: 7)
!2548 = !DILocation(line: 89, column: 7, scope: !2493)
!2549 = !DILocation(line: 92, column: 23, scope: !2493)
!2550 = !DILocation(line: 95, column: 20, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2493, file: !593, line: 95, column: 7)
!2552 = !DILocation(line: 95, column: 33, scope: !2551)
!2553 = !DILocation(line: 95, column: 25, scope: !2551)
!2554 = !DILocation(line: 93, column: 18, scope: !2493)
!2555 = !DILocation(line: 99, column: 14, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2493, file: !593, line: 99, column: 7)
!2557 = !DILocation(line: 99, column: 7, scope: !2493)
!2558 = !DILocation(line: 0, scope: !2513)
!2559 = !DILocation(line: 0, scope: !2560, inlinedAt: !2565)
!2560 = distinct !DISubprogram(name: "getc_unlocked", scope: !1640, file: !1640, line: 66, type: !2561, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2563)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!49, !2496}
!2563 = !{!2564}
!2564 = !DILocalVariable(name: "__fp", arg: 1, scope: !2560, file: !1640, line: 66, type: !2496)
!2565 = distinct !DILocation(line: 131, column: 15, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2520, file: !593, line: 130, column: 9)
!2567 = !DILocation(line: 0, scope: !2518)
!2568 = !DILocation(line: 0, scope: !2526)
!2569 = !DILocation(line: 107, column: 3, scope: !2493)
!2570 = !DILocation(line: 114, column: 7, scope: !2513)
!2571 = !DILocation(line: 116, column: 16, scope: !2513)
!2572 = !DILocation(line: 117, column: 11, scope: !2520)
!2573 = !DILocation(line: 117, column: 11, scope: !2513)
!2574 = !DILocation(line: 119, column: 15, scope: !2519)
!2575 = !DILocation(line: 121, column: 33, scope: !2517)
!2576 = !DILocation(line: 0, scope: !2517)
!2577 = !DILocation(line: 122, column: 19, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2517, file: !593, line: 122, column: 19)
!2579 = !DILocation(line: 122, column: 19, scope: !2517)
!2580 = !DILocation(line: 124, column: 36, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2578, file: !593, line: 123, column: 17)
!2582 = !DILocation(line: 124, column: 45, scope: !2581)
!2583 = !DILocation(line: 124, column: 30, scope: !2581)
!2584 = !DILocation(line: 126, column: 17, scope: !2581)
!2585 = !DILocation(line: 68, column: 10, scope: !2560, inlinedAt: !2565)
!2586 = !DILocation(line: 132, column: 15, scope: !2566)
!2587 = !DILocation(line: 132, column: 17, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2566, file: !593, line: 132, column: 15)
!2589 = !DILocation(line: 135, column: 28, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !593, line: 135, column: 19)
!2591 = distinct !DILexicalBlock(scope: !2588, file: !593, line: 133, column: 13)
!2592 = !DILocation(line: 201, column: 5, scope: !2493)
!2593 = !DILocation(line: 140, column: 17, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2566, file: !593, line: 140, column: 15)
!2595 = !DILocation(line: 140, column: 32, scope: !2594)
!2596 = !DILocation(line: 140, column: 27, scope: !2594)
!2597 = !DILocation(line: 142, column: 22, scope: !2566)
!2598 = !DILocation(line: 149, column: 26, scope: !2523)
!2599 = !DILocation(line: 149, column: 37, scope: !2523)
!2600 = !DILocation(line: 149, column: 24, scope: !2523)
!2601 = !DILocation(line: 149, column: 49, scope: !2523)
!2602 = !DILocation(line: 149, column: 41, scope: !2523)
!2603 = !DILocation(line: 153, column: 33, scope: !2522)
!2604 = !DILocation(line: 153, column: 28, scope: !2522)
!2605 = !DILocation(line: 0, scope: !2522)
!2606 = !DILocation(line: 158, column: 35, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2522, file: !593, line: 158, column: 15)
!2608 = !DILocation(line: 158, column: 23, scope: !2607)
!2609 = !DILocation(line: 158, column: 42, scope: !2607)
!2610 = !DILocation(line: 158, column: 15, scope: !2522)
!2611 = !DILocation(line: 161, column: 23, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2522, file: !593, line: 161, column: 15)
!2613 = !DILocation(line: 161, column: 44, scope: !2612)
!2614 = !DILocation(line: 161, column: 33, scope: !2612)
!2615 = !DILocation(line: 164, column: 44, scope: !2527)
!2616 = !DILocation(line: 164, column: 34, scope: !2527)
!2617 = !DILocation(line: 164, column: 15, scope: !2522)
!2618 = !DILocation(line: 167, column: 24, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2526, file: !593, line: 167, column: 19)
!2620 = !DILocation(line: 159, column: 21, scope: !2607)
!2621 = !DILocation(line: 172, column: 34, scope: !2522)
!2622 = !DILocation(line: 173, column: 20, scope: !2522)
!2623 = !DILocation(line: 174, column: 16, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2522, file: !593, line: 174, column: 15)
!2625 = !DILocation(line: 178, column: 42, scope: !2522)
!2626 = !DILocation(line: 184, column: 13, scope: !2530)
!2627 = !DILocation(line: 184, column: 11, scope: !2513)
!2628 = !DILocation(line: 186, column: 42, scope: !2529)
!2629 = !DILocation(line: 0, scope: !2529)
!2630 = !DILocation(line: 187, column: 15, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2529, file: !593, line: 187, column: 15)
!2632 = !DILocation(line: 187, column: 26, scope: !2631)
!2633 = !DILocation(line: 187, column: 15, scope: !2529)
!2634 = !DILocation(line: 189, column: 15, scope: !2529)
!2635 = !DILocalVariable(name: "__dest", arg: 1, scope: !2636, file: !2236, line: 31, type: !2639)
!2636 = distinct !DISubprogram(name: "memcpy", scope: !2236, file: !2236, line: 31, type: !2637, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2641)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!102, !2639, !2640, !104}
!2639 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!2640 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !177)
!2641 = !{!2635, !2642, !2643}
!2642 = !DILocalVariable(name: "__src", arg: 2, scope: !2636, file: !2236, line: 31, type: !2640)
!2643 = !DILocalVariable(name: "__len", arg: 3, scope: !2636, file: !2236, line: 31, type: !104)
!2644 = !DILocation(line: 0, scope: !2636, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 190, column: 13, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2529, file: !593, line: 189, column: 15)
!2647 = !DILocation(line: 34, column: 10, scope: !2636, inlinedAt: !2645)
!2648 = !DILocation(line: 190, column: 13, scope: !2646)
!2649 = !DILocation(line: 192, column: 25, scope: !2646)
!2650 = !DILocation(line: 192, column: 23, scope: !2646)
!2651 = !DILocation(line: 193, column: 20, scope: !2529)
!2652 = !DILocation(line: 194, column: 24, scope: !2529)
!2653 = !DILocation(line: 195, column: 9, scope: !2529)
!2654 = !DILocation(line: 199, column: 18, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2513, file: !593, line: 199, column: 11)
!2656 = !DILocation(line: 199, column: 40, scope: !2655)
!2657 = !DILocation(line: 199, column: 21, scope: !2655)
!2658 = !DILocation(line: 199, column: 11, scope: !2513)
!2659 = !DILocation(line: 202, column: 11, scope: !2493)
!2660 = !DILocation(line: 201, column: 5, scope: !2513)
!2661 = distinct !{!2661, !2569, !2662}
!2662 = !DILocation(line: 202, column: 26, scope: !2493)
!2663 = !DILocation(line: 213, column: 2, scope: !2493)
!2664 = !DILocation(line: 214, column: 12, scope: !2493)
!2665 = !DILocation(line: 215, column: 13, scope: !2493)
!2666 = !DILocation(line: 216, column: 10, scope: !2493)
!2667 = !DILocation(line: 206, column: 13, scope: !2493)
!2668 = !DILocation(line: 208, column: 34, scope: !2493)
!2669 = !DILocation(line: 208, column: 27, scope: !2493)
!2670 = !DILocation(line: 217, column: 1, scope: !2493)
!2671 = distinct !DISubprogram(name: "memchr2", scope: !640, file: !640, line: 36, type: !2672, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !639, retainedNodes: !2674)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!102, !177, !49, !49, !104}
!2674 = !{!2675, !2676, !2677, !2678, !2679, !2680, !2681, !2685, !2686, !2687, !2688, !2689, !2690, !2692}
!2675 = !DILocalVariable(name: "s", arg: 1, scope: !2671, file: !640, line: 36, type: !177)
!2676 = !DILocalVariable(name: "c1_in", arg: 2, scope: !2671, file: !640, line: 36, type: !49)
!2677 = !DILocalVariable(name: "c2_in", arg: 3, scope: !2671, file: !640, line: 36, type: !49)
!2678 = !DILocalVariable(name: "n", arg: 4, scope: !2671, file: !640, line: 36, type: !104)
!2679 = !DILocalVariable(name: "char_ptr", scope: !2671, file: !640, line: 45, type: !643)
!2680 = !DILocalVariable(name: "void_ptr", scope: !2671, file: !640, line: 46, type: !177)
!2681 = !DILocalVariable(name: "longword_ptr", scope: !2671, file: !640, line: 47, type: !2682)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2684)
!2684 = !DIDerivedType(tag: DW_TAG_typedef, name: "longword", scope: !2671, file: !640, line: 43, baseType: !106)
!2685 = !DILocalVariable(name: "repeated_one", scope: !2671, file: !640, line: 48, type: !2684)
!2686 = !DILocalVariable(name: "repeated_c1", scope: !2671, file: !640, line: 49, type: !2684)
!2687 = !DILocalVariable(name: "repeated_c2", scope: !2671, file: !640, line: 50, type: !2684)
!2688 = !DILocalVariable(name: "c1", scope: !2671, file: !640, line: 51, type: !180)
!2689 = !DILocalVariable(name: "c2", scope: !2671, file: !640, line: 52, type: !180)
!2690 = !DILocalVariable(name: "longword1", scope: !2691, file: !640, line: 142, type: !2684)
!2691 = distinct !DILexicalBlock(scope: !2671, file: !640, line: 141, column: 5)
!2692 = !DILocalVariable(name: "longword2", scope: !2691, file: !640, line: 143, type: !2684)
!2693 = !DILocation(line: 0, scope: !2671)
!2694 = !DILocation(line: 57, column: 7, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2671, file: !640, line: 57, column: 7)
!2696 = !DILocation(line: 57, column: 10, scope: !2695)
!2697 = !DILocation(line: 57, column: 7, scope: !2671)
!2698 = !DILocation(line: 63, column: 10, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !640, line: 62, column: 3)
!2700 = distinct !DILexicalBlock(scope: !2671, file: !640, line: 62, column: 3)
!2701 = !DILocation(line: 63, column: 14, scope: !2699)
!2702 = !DILocation(line: 62, column: 3, scope: !2700)
!2703 = !DILocation(line: 58, column: 12, scope: !2695)
!2704 = !DILocation(line: 58, column: 5, scope: !2695)
!2705 = !DILocation(line: 67, column: 11, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !640, line: 67, column: 11)
!2707 = distinct !DILexicalBlock(scope: !2699, file: !640, line: 65, column: 5)
!2708 = !DILocation(line: 67, column: 21, scope: !2706)
!2709 = !DILocation(line: 67, column: 40, scope: !2706)
!2710 = !DILocation(line: 67, column: 27, scope: !2706)
!2711 = !DILocation(line: 69, column: 27, scope: !2707)
!2712 = !DILocation(line: 64, column: 8, scope: !2699)
!2713 = distinct !{!2713, !2702, !2714}
!2714 = !DILocation(line: 70, column: 5, scope: !2700)
!2715 = !DILocation(line: 0, scope: !2700)
!2716 = !DILocation(line: 72, column: 18, scope: !2671)
!2717 = !DILocation(line: 82, column: 26, scope: !2671)
!2718 = !DILocation(line: 82, column: 20, scope: !2671)
!2719 = !DILocation(line: 82, column: 17, scope: !2671)
!2720 = !DILocation(line: 84, column: 30, scope: !2671)
!2721 = !DILocation(line: 84, column: 15, scope: !2671)
!2722 = !DILocation(line: 89, column: 34, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !640, line: 87, column: 5)
!2724 = distinct !DILexicalBlock(scope: !2671, file: !640, line: 86, column: 7)
!2725 = !DILocation(line: 89, column: 19, scope: !2723)
!2726 = !DILocation(line: 140, column: 3, scope: !2671)
!2727 = !DILocation(line: 72, column: 16, scope: !2671)
!2728 = !DILocation(line: 140, column: 12, scope: !2671)
!2729 = !DILocation(line: 142, column: 28, scope: !2691)
!2730 = !DILocation(line: 142, column: 42, scope: !2691)
!2731 = !DILocation(line: 145, column: 25, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2691, file: !640, line: 145, column: 11)
!2733 = !DILocation(line: 145, column: 43, scope: !2732)
!2734 = !DILocation(line: 145, column: 41, scope: !2732)
!2735 = !DILocation(line: 146, column: 13, scope: !2732)
!2736 = !DILocation(line: 147, column: 12, scope: !2732)
!2737 = !DILocation(line: 147, column: 35, scope: !2732)
!2738 = !DILocation(line: 145, column: 11, scope: !2691)
!2739 = distinct !{!2739, !2726, !2740}
!2740 = !DILocation(line: 151, column: 5, scope: !2671)
!2741 = !DILocation(line: 162, column: 12, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !640, line: 162, column: 3)
!2743 = distinct !DILexicalBlock(scope: !2671, file: !640, line: 162, column: 3)
!2744 = !DILocation(line: 162, column: 3, scope: !2743)
!2745 = !DILocation(line: 153, column: 14, scope: !2671)
!2746 = !DILocation(line: 164, column: 11, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !640, line: 164, column: 11)
!2748 = distinct !DILexicalBlock(scope: !2742, file: !640, line: 163, column: 5)
!2749 = !DILocation(line: 164, column: 21, scope: !2747)
!2750 = !DILocation(line: 164, column: 40, scope: !2747)
!2751 = !DILocation(line: 164, column: 27, scope: !2747)
!2752 = !DILocation(line: 162, column: 17, scope: !2742)
!2753 = !DILocation(line: 162, column: 22, scope: !2742)
!2754 = distinct !{!2754, !2744, !2755}
!2755 = !DILocation(line: 166, column: 5, scope: !2743)
!2756 = !DILocation(line: 169, column: 1, scope: !2671)
!2757 = distinct !DISubprogram(name: "set_program_name", scope: !404, file: !404, line: 39, type: !114, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !2758)
!2758 = !{!2759, !2760, !2761}
!2759 = !DILocalVariable(name: "argv0", arg: 1, scope: !2757, file: !404, line: 39, type: !47)
!2760 = !DILocalVariable(name: "slash", scope: !2757, file: !404, line: 46, type: !47)
!2761 = !DILocalVariable(name: "base", scope: !2757, file: !404, line: 47, type: !47)
!2762 = !DILocation(line: 0, scope: !2757)
!2763 = !DILocation(line: 51, column: 13, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2757, file: !404, line: 51, column: 7)
!2765 = !DILocation(line: 51, column: 7, scope: !2757)
!2766 = !DILocation(line: 55, column: 14, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2764, file: !404, line: 52, column: 5)
!2768 = !DILocation(line: 54, column: 7, scope: !2767)
!2769 = !DILocation(line: 56, column: 7, scope: !2767)
!2770 = !DILocation(line: 59, column: 11, scope: !2757)
!2771 = !DILocation(line: 60, column: 17, scope: !2757)
!2772 = !DILocation(line: 60, column: 11, scope: !2757)
!2773 = !DILocation(line: 61, column: 12, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2757, file: !404, line: 61, column: 7)
!2775 = !DILocation(line: 61, column: 20, scope: !2774)
!2776 = !DILocation(line: 61, column: 25, scope: !2774)
!2777 = !DILocation(line: 61, column: 42, scope: !2774)
!2778 = !DILocation(line: 61, column: 28, scope: !2774)
!2779 = !DILocation(line: 61, column: 61, scope: !2774)
!2780 = !DILocation(line: 61, column: 7, scope: !2757)
!2781 = !DILocation(line: 64, column: 11, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !404, line: 64, column: 11)
!2783 = distinct !DILexicalBlock(scope: !2774, file: !404, line: 62, column: 5)
!2784 = !DILocation(line: 64, column: 36, scope: !2782)
!2785 = !DILocation(line: 64, column: 11, scope: !2783)
!2786 = !DILocation(line: 66, column: 24, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2782, file: !404, line: 65, column: 9)
!2788 = !DILocation(line: 70, column: 41, scope: !2787)
!2789 = !DILocation(line: 72, column: 9, scope: !2787)
!2790 = !DILocation(line: 84, column: 16, scope: !2757)
!2791 = !DILocation(line: 90, column: 27, scope: !2757)
!2792 = !DILocation(line: 92, column: 1, scope: !2757)
!2793 = distinct !DISubprogram(name: "clone_quoting_options", scope: !445, file: !445, line: 122, type: !2794, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !2797)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!2796, !2796}
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!2797 = !{!2798, !2799, !2800}
!2798 = !DILocalVariable(name: "o", arg: 1, scope: !2793, file: !445, line: 122, type: !2796)
!2799 = !DILocalVariable(name: "e", scope: !2793, file: !445, line: 124, type: !49)
!2800 = !DILocalVariable(name: "p", scope: !2793, file: !445, line: 125, type: !2796)
!2801 = !DILocation(line: 0, scope: !2793)
!2802 = !DILocation(line: 124, column: 11, scope: !2793)
!2803 = !DILocation(line: 125, column: 40, scope: !2793)
!2804 = !DILocation(line: 125, column: 31, scope: !2793)
!2805 = !DILocation(line: 127, column: 9, scope: !2793)
!2806 = !DILocation(line: 128, column: 3, scope: !2793)
!2807 = distinct !DISubprogram(name: "get_quoting_style", scope: !445, file: !445, line: 133, type: !2808, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !2810)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!17, !459}
!2810 = !{!2811}
!2811 = !DILocalVariable(name: "o", arg: 1, scope: !2807, file: !445, line: 133, type: !459)
!2812 = !DILocation(line: 0, scope: !2807)
!2813 = !DILocation(line: 135, column: 11, scope: !2807)
!2814 = !DILocation(line: 135, column: 46, scope: !2807)
!2815 = !{!2816, !1388, i64 0}
!2816 = !{!"quoting_options", !1388, i64 0, !1545, i64 4, !1388, i64 8, !1387, i64 40, !1387, i64 48}
!2817 = !DILocation(line: 135, column: 3, scope: !2807)
!2818 = distinct !DISubprogram(name: "set_quoting_style", scope: !445, file: !445, line: 141, type: !2819, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !2821)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{null, !2796, !17}
!2821 = !{!2822, !2823}
!2822 = !DILocalVariable(name: "o", arg: 1, scope: !2818, file: !445, line: 141, type: !2796)
!2823 = !DILocalVariable(name: "s", arg: 2, scope: !2818, file: !445, line: 141, type: !17)
!2824 = !DILocation(line: 0, scope: !2818)
!2825 = !DILocation(line: 143, column: 4, scope: !2818)
!2826 = !DILocation(line: 143, column: 39, scope: !2818)
!2827 = !DILocation(line: 143, column: 45, scope: !2818)
!2828 = !DILocation(line: 144, column: 1, scope: !2818)
!2829 = distinct !DISubprogram(name: "set_char_quoting", scope: !445, file: !445, line: 152, type: !2830, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !2832)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!49, !2796, !46, !49}
!2832 = !{!2833, !2834, !2835, !2836, !2837, !2839, !2840}
!2833 = !DILocalVariable(name: "o", arg: 1, scope: !2829, file: !445, line: 152, type: !2796)
!2834 = !DILocalVariable(name: "c", arg: 2, scope: !2829, file: !445, line: 152, type: !46)
!2835 = !DILocalVariable(name: "i", arg: 3, scope: !2829, file: !445, line: 152, type: !49)
!2836 = !DILocalVariable(name: "uc", scope: !2829, file: !445, line: 154, type: !180)
!2837 = !DILocalVariable(name: "p", scope: !2829, file: !445, line: 155, type: !2838)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2839 = !DILocalVariable(name: "shift", scope: !2829, file: !445, line: 157, type: !49)
!2840 = !DILocalVariable(name: "r", scope: !2829, file: !445, line: 158, type: !49)
!2841 = !DILocation(line: 0, scope: !2829)
!2842 = !DILocation(line: 156, column: 6, scope: !2829)
!2843 = !DILocation(line: 156, column: 62, scope: !2829)
!2844 = !DILocation(line: 156, column: 57, scope: !2829)
!2845 = !DILocation(line: 157, column: 15, scope: !2829)
!2846 = !DILocation(line: 158, column: 12, scope: !2829)
!2847 = !DILocation(line: 158, column: 15, scope: !2829)
!2848 = !DILocation(line: 158, column: 25, scope: !2829)
!2849 = !DILocation(line: 159, column: 13, scope: !2829)
!2850 = !DILocation(line: 159, column: 18, scope: !2829)
!2851 = !DILocation(line: 159, column: 23, scope: !2829)
!2852 = !DILocation(line: 159, column: 6, scope: !2829)
!2853 = !DILocation(line: 160, column: 3, scope: !2829)
!2854 = distinct !DISubprogram(name: "set_quoting_flags", scope: !445, file: !445, line: 168, type: !2855, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !2857)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!49, !2796, !49}
!2857 = !{!2858, !2859, !2860}
!2858 = !DILocalVariable(name: "o", arg: 1, scope: !2854, file: !445, line: 168, type: !2796)
!2859 = !DILocalVariable(name: "i", arg: 2, scope: !2854, file: !445, line: 168, type: !49)
!2860 = !DILocalVariable(name: "r", scope: !2854, file: !445, line: 170, type: !49)
!2861 = !DILocation(line: 0, scope: !2854)
!2862 = !DILocation(line: 171, column: 8, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2854, file: !445, line: 171, column: 7)
!2864 = !DILocation(line: 171, column: 7, scope: !2854)
!2865 = !DILocation(line: 173, column: 10, scope: !2854)
!2866 = !{!2816, !1545, i64 4}
!2867 = !DILocation(line: 174, column: 12, scope: !2854)
!2868 = !DILocation(line: 175, column: 3, scope: !2854)
!2869 = distinct !DISubprogram(name: "set_custom_quoting", scope: !445, file: !445, line: 179, type: !2870, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !2872)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{null, !2796, !47, !47}
!2872 = !{!2873, !2874, !2875}
!2873 = !DILocalVariable(name: "o", arg: 1, scope: !2869, file: !445, line: 179, type: !2796)
!2874 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2869, file: !445, line: 180, type: !47)
!2875 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2869, file: !445, line: 180, type: !47)
!2876 = !DILocation(line: 0, scope: !2869)
!2877 = !DILocation(line: 182, column: 8, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2869, file: !445, line: 182, column: 7)
!2879 = !DILocation(line: 182, column: 7, scope: !2869)
!2880 = !DILocation(line: 184, column: 6, scope: !2869)
!2881 = !DILocation(line: 184, column: 12, scope: !2869)
!2882 = !DILocation(line: 185, column: 8, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2869, file: !445, line: 185, column: 7)
!2884 = !DILocation(line: 185, column: 23, scope: !2883)
!2885 = !DILocation(line: 185, column: 19, scope: !2883)
!2886 = !DILocation(line: 186, column: 5, scope: !2883)
!2887 = !DILocation(line: 187, column: 6, scope: !2869)
!2888 = !DILocation(line: 187, column: 17, scope: !2869)
!2889 = !{!2816, !1387, i64 40}
!2890 = !DILocation(line: 188, column: 6, scope: !2869)
!2891 = !DILocation(line: 188, column: 18, scope: !2869)
!2892 = !{!2816, !1387, i64 48}
!2893 = !DILocation(line: 189, column: 1, scope: !2869)
!2894 = distinct !DISubprogram(name: "quotearg_buffer", scope: !445, file: !445, line: 784, type: !2895, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!104, !45, !104, !47, !104, !459}
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905}
!2898 = !DILocalVariable(name: "buffer", arg: 1, scope: !2894, file: !445, line: 784, type: !45)
!2899 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2894, file: !445, line: 784, type: !104)
!2900 = !DILocalVariable(name: "arg", arg: 3, scope: !2894, file: !445, line: 785, type: !47)
!2901 = !DILocalVariable(name: "argsize", arg: 4, scope: !2894, file: !445, line: 785, type: !104)
!2902 = !DILocalVariable(name: "o", arg: 5, scope: !2894, file: !445, line: 786, type: !459)
!2903 = !DILocalVariable(name: "p", scope: !2894, file: !445, line: 788, type: !459)
!2904 = !DILocalVariable(name: "e", scope: !2894, file: !445, line: 789, type: !49)
!2905 = !DILocalVariable(name: "r", scope: !2894, file: !445, line: 790, type: !104)
!2906 = !DILocation(line: 0, scope: !2894)
!2907 = !DILocation(line: 788, column: 37, scope: !2894)
!2908 = !DILocation(line: 789, column: 11, scope: !2894)
!2909 = !DILocation(line: 791, column: 43, scope: !2894)
!2910 = !DILocation(line: 791, column: 53, scope: !2894)
!2911 = !DILocation(line: 791, column: 60, scope: !2894)
!2912 = !DILocation(line: 792, column: 43, scope: !2894)
!2913 = !DILocation(line: 792, column: 58, scope: !2894)
!2914 = !DILocation(line: 790, column: 14, scope: !2894)
!2915 = !DILocation(line: 793, column: 9, scope: !2894)
!2916 = !DILocation(line: 794, column: 3, scope: !2894)
!2917 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !445, file: !445, line: 256, type: !2918, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !2922)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!104, !45, !104, !47, !104, !17, !49, !2920, !47, !47}
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2922 = !{!2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2947, !2948, !2949, !2950, !2951, !2954, !2955, !2961, !2964, !2965, !2972, !2975, !2976, !2977, !2978, !2979, !2980}
!2923 = !DILocalVariable(name: "buffer", arg: 1, scope: !2917, file: !445, line: 256, type: !45)
!2924 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2917, file: !445, line: 256, type: !104)
!2925 = !DILocalVariable(name: "arg", arg: 3, scope: !2917, file: !445, line: 257, type: !47)
!2926 = !DILocalVariable(name: "argsize", arg: 4, scope: !2917, file: !445, line: 257, type: !104)
!2927 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2917, file: !445, line: 258, type: !17)
!2928 = !DILocalVariable(name: "flags", arg: 6, scope: !2917, file: !445, line: 258, type: !49)
!2929 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2917, file: !445, line: 259, type: !2920)
!2930 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2917, file: !445, line: 260, type: !47)
!2931 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2917, file: !445, line: 261, type: !47)
!2932 = !DILocalVariable(name: "i", scope: !2917, file: !445, line: 263, type: !104)
!2933 = !DILocalVariable(name: "len", scope: !2917, file: !445, line: 264, type: !104)
!2934 = !DILocalVariable(name: "orig_buffersize", scope: !2917, file: !445, line: 265, type: !104)
!2935 = !DILocalVariable(name: "quote_string", scope: !2917, file: !445, line: 266, type: !47)
!2936 = !DILocalVariable(name: "quote_string_len", scope: !2917, file: !445, line: 267, type: !104)
!2937 = !DILocalVariable(name: "backslash_escapes", scope: !2917, file: !445, line: 268, type: !205)
!2938 = !DILocalVariable(name: "unibyte_locale", scope: !2917, file: !445, line: 269, type: !205)
!2939 = !DILocalVariable(name: "elide_outer_quotes", scope: !2917, file: !445, line: 270, type: !205)
!2940 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2917, file: !445, line: 271, type: !205)
!2941 = !DILocalVariable(name: "encountered_single_quote", scope: !2917, file: !445, line: 272, type: !205)
!2942 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2917, file: !445, line: 273, type: !205)
!2943 = !DILocalVariable(name: "c", scope: !2944, file: !445, line: 402, type: !180)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !445, line: 401, column: 5)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !445, line: 400, column: 3)
!2946 = distinct !DILexicalBlock(scope: !2917, file: !445, line: 400, column: 3)
!2947 = !DILocalVariable(name: "esc", scope: !2944, file: !445, line: 403, type: !180)
!2948 = !DILocalVariable(name: "is_right_quote", scope: !2944, file: !445, line: 404, type: !205)
!2949 = !DILocalVariable(name: "escaping", scope: !2944, file: !445, line: 405, type: !205)
!2950 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2944, file: !445, line: 406, type: !205)
!2951 = !DILocalVariable(name: "m", scope: !2952, file: !445, line: 610, type: !104)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !445, line: 608, column: 11)
!2953 = distinct !DILexicalBlock(scope: !2944, file: !445, line: 426, column: 9)
!2954 = !DILocalVariable(name: "printable", scope: !2952, file: !445, line: 612, type: !205)
!2955 = !DILocalVariable(name: "mbstate", scope: !2956, file: !445, line: 621, type: !2958)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !445, line: 620, column: 15)
!2957 = distinct !DILexicalBlock(scope: !2952, file: !445, line: 614, column: 17)
!2958 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2959, line: 6, baseType: !2960)
!2959 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !480, line: 21, baseType: !479)
!2961 = !DILocalVariable(name: "w", scope: !2962, file: !445, line: 631, type: !2963)
!2962 = distinct !DILexicalBlock(scope: !2956, file: !445, line: 630, column: 19)
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !105, line: 74, baseType: !49)
!2964 = !DILocalVariable(name: "bytes", scope: !2962, file: !445, line: 632, type: !104)
!2965 = !DILocalVariable(name: "j", scope: !2966, file: !445, line: 657, type: !104)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !445, line: 656, column: 27)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !445, line: 654, column: 29)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !445, line: 649, column: 23)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !445, line: 641, column: 30)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !445, line: 636, column: 30)
!2971 = distinct !DILexicalBlock(scope: !2962, file: !445, line: 634, column: 25)
!2972 = !DILocalVariable(name: "ilim", scope: !2973, file: !445, line: 684, type: !104)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !445, line: 681, column: 15)
!2974 = distinct !DILexicalBlock(scope: !2952, file: !445, line: 680, column: 17)
!2975 = !DILabel(scope: !2917, name: "process_input", file: !445, line: 314)
!2976 = !DILabel(scope: !2953, name: "c_and_shell_escape", file: !445, line: 512)
!2977 = !DILabel(scope: !2953, name: "c_escape", file: !445, line: 517)
!2978 = !DILabel(scope: !2944, name: "store_escape", file: !445, line: 719)
!2979 = !DILabel(scope: !2944, name: "store_c", file: !445, line: 722)
!2980 = !DILabel(scope: !2917, name: "force_outer_quoting_style", file: !445, line: 763)
!2981 = !DILocation(line: 0, scope: !2917)
!2982 = !DILocation(line: 269, column: 25, scope: !2917)
!2983 = !DILocation(line: 269, column: 36, scope: !2917)
!2984 = !DILocation(line: 270, column: 8, scope: !2917)
!2985 = !DILocation(line: 0, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2953, file: !445, line: 526, column: 15)
!2987 = !DILocation(line: 0, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !445, line: 462, column: 19)
!2989 = distinct !DILexicalBlock(scope: !2953, file: !445, line: 455, column: 13)
!2990 = !DILocation(line: 0, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !445, line: 449, column: 20)
!2992 = distinct !DILexicalBlock(scope: !2953, file: !445, line: 428, column: 15)
!2993 = !DILocation(line: 0, scope: !2956)
!2994 = !DILocation(line: 0, scope: !2962)
!2995 = !DILocation(line: 0, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2944, file: !445, line: 712, column: 11)
!2997 = !DILocation(line: 273, column: 3, scope: !2917)
!2998 = !DILocation(line: 265, column: 10, scope: !2917)
!2999 = !DILocation(line: 266, column: 15, scope: !2917)
!3000 = !DILocation(line: 267, column: 10, scope: !2917)
!3001 = !DILocation(line: 268, column: 8, scope: !2917)
!3002 = !DILocation(line: 271, column: 8, scope: !2917)
!3003 = !DILocation(line: 272, column: 8, scope: !2917)
!3004 = !DILocation(line: 273, column: 8, scope: !2917)
!3005 = !DILocation(line: 314, column: 2, scope: !2917)
!3006 = !DILocation(line: 316, column: 3, scope: !2917)
!3007 = !DILocation(line: 323, column: 11, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2917, file: !445, line: 317, column: 5)
!3009 = !DILocation(line: 323, column: 12, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3008, file: !445, line: 323, column: 11)
!3011 = !DILocation(line: 324, column: 9, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !445, line: 324, column: 9)
!3013 = distinct !DILexicalBlock(scope: !3010, file: !445, line: 324, column: 9)
!3014 = !DILocation(line: 324, column: 9, scope: !3013)
!3015 = !DILocation(line: 362, column: 26, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !445, line: 340, column: 11)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !445, line: 339, column: 13)
!3018 = distinct !DILexicalBlock(scope: !3008, file: !445, line: 338, column: 7)
!3019 = !DILocation(line: 363, column: 27, scope: !3016)
!3020 = !DILocation(line: 364, column: 11, scope: !3016)
!3021 = !DILocation(line: 365, column: 14, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3018, file: !445, line: 365, column: 13)
!3023 = !DILocation(line: 365, column: 13, scope: !3018)
!3024 = !DILocation(line: 366, column: 43, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !445, line: 366, column: 11)
!3026 = distinct !DILexicalBlock(scope: !3022, file: !445, line: 366, column: 11)
!3027 = !DILocation(line: 366, column: 11, scope: !3026)
!3028 = !DILocation(line: 367, column: 13, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !445, line: 367, column: 13)
!3030 = distinct !DILexicalBlock(scope: !3025, file: !445, line: 367, column: 13)
!3031 = !DILocation(line: 367, column: 13, scope: !3030)
!3032 = !DILocation(line: 366, column: 70, scope: !3025)
!3033 = distinct !{!3033, !3027, !3034}
!3034 = !DILocation(line: 367, column: 13, scope: !3026)
!3035 = !DILocation(line: 264, column: 10, scope: !2917)
!3036 = !DILocation(line: 370, column: 28, scope: !3018)
!3037 = !DILocation(line: 372, column: 7, scope: !3008)
!3038 = !DILocation(line: 376, column: 7, scope: !3008)
!3039 = !DILocation(line: 379, column: 7, scope: !3008)
!3040 = !DILocation(line: 381, column: 12, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3008, file: !445, line: 381, column: 11)
!3042 = !DILocation(line: 381, column: 11, scope: !3008)
!3043 = !DILocation(line: 386, column: 12, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3008, file: !445, line: 386, column: 11)
!3045 = !DILocation(line: 386, column: 11, scope: !3008)
!3046 = !DILocation(line: 387, column: 9, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !445, line: 387, column: 9)
!3048 = distinct !DILexicalBlock(scope: !3044, file: !445, line: 387, column: 9)
!3049 = !DILocation(line: 387, column: 9, scope: !3048)
!3050 = !DILocation(line: 394, column: 7, scope: !3008)
!3051 = !DILocation(line: 397, column: 7, scope: !3008)
!3052 = !DILocation(line: 0, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !2944, file: !445, line: 408, column: 11)
!3054 = !DILocation(line: 0, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !445, line: 419, column: 15)
!3056 = distinct !DILexicalBlock(scope: !3053, file: !445, line: 418, column: 9)
!3057 = !DILocation(line: 0, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !2953, file: !445, line: 556, column: 15)
!3059 = !DILocation(line: 0, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !2953, file: !445, line: 548, column: 15)
!3061 = !DILocation(line: 0, scope: !2967)
!3062 = !DILocation(line: 0, scope: !2974)
!3063 = !DILocation(line: 0, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !2953, file: !445, line: 509, column: 15)
!3065 = !DILocation(line: 400, column: 8, scope: !2946)
!3066 = !DILocation(line: 0, scope: !2946)
!3067 = !DILocation(line: 400, column: 27, scope: !2945)
!3068 = !DILocation(line: 400, column: 19, scope: !2945)
!3069 = !DILocation(line: 400, column: 41, scope: !2945)
!3070 = !DILocation(line: 400, column: 48, scope: !2945)
!3071 = !DILocation(line: 400, column: 3, scope: !2946)
!3072 = !DILocation(line: 400, column: 60, scope: !2945)
!3073 = !DILocation(line: 0, scope: !2944)
!3074 = !DILocation(line: 409, column: 11, scope: !3053)
!3075 = !DILocation(line: 411, column: 17, scope: !3053)
!3076 = !DILocation(line: 412, column: 39, scope: !3053)
!3077 = !DILocation(line: 416, column: 32, scope: !3053)
!3078 = !DILocation(line: 412, column: 19, scope: !3053)
!3079 = !DILocation(line: 412, column: 15, scope: !3053)
!3080 = !DILocation(line: 417, column: 11, scope: !3053)
!3081 = !DILocation(line: 417, column: 26, scope: !3053)
!3082 = !DILocation(line: 417, column: 14, scope: !3053)
!3083 = !DILocation(line: 417, column: 63, scope: !3053)
!3084 = !DILocation(line: 408, column: 11, scope: !2944)
!3085 = !DILocation(line: 424, column: 11, scope: !2944)
!3086 = !DILocation(line: 425, column: 7, scope: !2944)
!3087 = !DILocation(line: 428, column: 15, scope: !2953)
!3088 = !DILocation(line: 430, column: 15, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3090, file: !445, line: 430, column: 15)
!3090 = distinct !DILexicalBlock(scope: !2992, file: !445, line: 429, column: 13)
!3091 = !DILocation(line: 430, column: 15, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3089, file: !445, line: 430, column: 15)
!3093 = !DILocation(line: 430, column: 15, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !445, line: 430, column: 15)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !445, line: 430, column: 15)
!3096 = distinct !DILexicalBlock(scope: !3092, file: !445, line: 430, column: 15)
!3097 = !DILocation(line: 430, column: 15, scope: !3095)
!3098 = !DILocation(line: 430, column: 15, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !445, line: 430, column: 15)
!3100 = distinct !DILexicalBlock(scope: !3096, file: !445, line: 430, column: 15)
!3101 = !DILocation(line: 430, column: 15, scope: !3100)
!3102 = !DILocation(line: 430, column: 15, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !445, line: 430, column: 15)
!3104 = distinct !DILexicalBlock(scope: !3096, file: !445, line: 430, column: 15)
!3105 = !DILocation(line: 430, column: 15, scope: !3104)
!3106 = !DILocation(line: 430, column: 15, scope: !3096)
!3107 = !DILocation(line: 430, column: 15, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !445, line: 430, column: 15)
!3109 = distinct !DILexicalBlock(scope: !3089, file: !445, line: 430, column: 15)
!3110 = !DILocation(line: 430, column: 15, scope: !3109)
!3111 = !DILocation(line: 438, column: 19, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3090, file: !445, line: 437, column: 19)
!3113 = !DILocation(line: 438, column: 24, scope: !3112)
!3114 = !DILocation(line: 438, column: 28, scope: !3112)
!3115 = !DILocation(line: 438, column: 38, scope: !3112)
!3116 = !DILocation(line: 438, column: 48, scope: !3112)
!3117 = !DILocation(line: 438, column: 59, scope: !3112)
!3118 = !DILocation(line: 440, column: 19, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !445, line: 440, column: 19)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !445, line: 440, column: 19)
!3121 = distinct !DILexicalBlock(scope: !3112, file: !445, line: 439, column: 17)
!3122 = !DILocation(line: 440, column: 19, scope: !3120)
!3123 = !DILocation(line: 441, column: 19, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !445, line: 441, column: 19)
!3125 = distinct !DILexicalBlock(scope: !3121, file: !445, line: 441, column: 19)
!3126 = !DILocation(line: 441, column: 19, scope: !3125)
!3127 = !DILocation(line: 442, column: 17, scope: !3121)
!3128 = !DILocation(line: 449, column: 20, scope: !2992)
!3129 = !DILocation(line: 454, column: 11, scope: !2953)
!3130 = !DILocation(line: 457, column: 19, scope: !2989)
!3131 = !DILocation(line: 463, column: 19, scope: !2988)
!3132 = !DILocation(line: 463, column: 24, scope: !2988)
!3133 = !DILocation(line: 463, column: 28, scope: !2988)
!3134 = !DILocation(line: 463, column: 38, scope: !2988)
!3135 = !DILocation(line: 463, column: 47, scope: !2988)
!3136 = !DILocation(line: 463, column: 41, scope: !2988)
!3137 = !DILocation(line: 463, column: 52, scope: !2988)
!3138 = !DILocation(line: 462, column: 19, scope: !2989)
!3139 = !DILocation(line: 464, column: 25, scope: !2988)
!3140 = !DILocation(line: 464, column: 17, scope: !2988)
!3141 = !DILocation(line: 471, column: 25, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !2988, file: !445, line: 465, column: 19)
!3143 = !DILocation(line: 475, column: 21, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !445, line: 475, column: 21)
!3145 = distinct !DILexicalBlock(scope: !3142, file: !445, line: 475, column: 21)
!3146 = !DILocation(line: 475, column: 21, scope: !3145)
!3147 = !DILocation(line: 476, column: 21, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !445, line: 476, column: 21)
!3149 = distinct !DILexicalBlock(scope: !3142, file: !445, line: 476, column: 21)
!3150 = !DILocation(line: 476, column: 21, scope: !3149)
!3151 = !DILocation(line: 477, column: 21, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !445, line: 477, column: 21)
!3153 = distinct !DILexicalBlock(scope: !3142, file: !445, line: 477, column: 21)
!3154 = !DILocation(line: 477, column: 21, scope: !3153)
!3155 = !DILocation(line: 478, column: 21, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !445, line: 478, column: 21)
!3157 = distinct !DILexicalBlock(scope: !3142, file: !445, line: 478, column: 21)
!3158 = !DILocation(line: 478, column: 21, scope: !3157)
!3159 = !DILocation(line: 479, column: 21, scope: !3142)
!3160 = !DILocation(line: 492, column: 31, scope: !2953)
!3161 = !DILocation(line: 493, column: 31, scope: !2953)
!3162 = !DILocation(line: 495, column: 31, scope: !2953)
!3163 = !DILocation(line: 496, column: 31, scope: !2953)
!3164 = !DILocation(line: 497, column: 31, scope: !2953)
!3165 = !DILocation(line: 500, column: 15, scope: !2953)
!3166 = !DILocation(line: 502, column: 19, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !445, line: 501, column: 13)
!3168 = distinct !DILexicalBlock(scope: !2953, file: !445, line: 500, column: 15)
!3169 = !DILocation(line: 509, column: 33, scope: !3064)
!3170 = !DILocation(line: 0, scope: !2953)
!3171 = !DILocation(line: 512, column: 9, scope: !2953)
!3172 = !DILocation(line: 514, column: 15, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !2953, file: !445, line: 513, column: 15)
!3174 = !DILocation(line: 517, column: 9, scope: !2953)
!3175 = !DILocation(line: 518, column: 15, scope: !2953)
!3176 = !DILocation(line: 526, column: 15, scope: !2953)
!3177 = !DILocation(line: 526, column: 40, scope: !2986)
!3178 = !DILocation(line: 526, column: 47, scope: !2986)
!3179 = !DILocation(line: 526, column: 18, scope: !2986)
!3180 = !DILocation(line: 530, column: 17, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !2953, file: !445, line: 530, column: 15)
!3182 = !DILocation(line: 530, column: 15, scope: !2953)
!3183 = !DILocation(line: 535, column: 11, scope: !2953)
!3184 = !DILocation(line: 549, column: 15, scope: !3060)
!3185 = !DILocation(line: 556, column: 15, scope: !2953)
!3186 = !DILocation(line: 558, column: 19, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3058, file: !445, line: 557, column: 13)
!3188 = !DILocation(line: 561, column: 19, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3187, file: !445, line: 561, column: 19)
!3190 = !DILocation(line: 561, column: 35, scope: !3189)
!3191 = !DILocation(line: 561, column: 30, scope: !3189)
!3192 = !DILocation(line: 570, column: 15, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !445, line: 570, column: 15)
!3194 = distinct !DILexicalBlock(scope: !3187, file: !445, line: 570, column: 15)
!3195 = !DILocation(line: 570, column: 15, scope: !3194)
!3196 = !DILocation(line: 571, column: 15, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !445, line: 571, column: 15)
!3198 = distinct !DILexicalBlock(scope: !3187, file: !445, line: 571, column: 15)
!3199 = !DILocation(line: 571, column: 15, scope: !3198)
!3200 = !DILocation(line: 572, column: 15, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !445, line: 572, column: 15)
!3202 = distinct !DILexicalBlock(scope: !3187, file: !445, line: 572, column: 15)
!3203 = !DILocation(line: 572, column: 15, scope: !3202)
!3204 = !DILocation(line: 574, column: 13, scope: !3187)
!3205 = !DILocation(line: 614, column: 17, scope: !2952)
!3206 = !DILocation(line: 0, scope: !2952)
!3207 = !DILocation(line: 617, column: 29, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !2957, file: !445, line: 615, column: 15)
!3209 = !DILocation(line: 617, column: 27, scope: !3208)
!3210 = !DILocation(line: 618, column: 15, scope: !3208)
!3211 = !DILocation(line: 621, column: 17, scope: !2956)
!3212 = !DILocation(line: 621, column: 27, scope: !2956)
!3213 = !DILocalVariable(name: "__dest", arg: 1, scope: !3214, file: !2236, line: 59, type: !102)
!3214 = distinct !DISubprogram(name: "memset", scope: !2236, file: !2236, line: 59, type: !3215, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3217)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!102, !102, !49, !104}
!3217 = !{!3213, !3218, !3219}
!3218 = !DILocalVariable(name: "__ch", arg: 2, scope: !3214, file: !2236, line: 59, type: !49)
!3219 = !DILocalVariable(name: "__len", arg: 3, scope: !3214, file: !2236, line: 59, type: !104)
!3220 = !DILocation(line: 0, scope: !3214, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 622, column: 17, scope: !2956)
!3222 = !DILocation(line: 71, column: 10, scope: !3214, inlinedAt: !3221)
!3223 = !DILocation(line: 626, column: 29, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !2956, file: !445, line: 626, column: 21)
!3225 = !DILocation(line: 626, column: 21, scope: !2956)
!3226 = !DILocation(line: 627, column: 29, scope: !3224)
!3227 = !DILocation(line: 627, column: 19, scope: !3224)
!3228 = !DILocation(line: 629, column: 17, scope: !2956)
!3229 = !DILocation(line: 624, column: 19, scope: !2956)
!3230 = !DILocation(line: 625, column: 27, scope: !2956)
!3231 = !DILocation(line: 631, column: 21, scope: !2962)
!3232 = !DILocation(line: 632, column: 56, scope: !2962)
!3233 = !DILocation(line: 632, column: 50, scope: !2962)
!3234 = !DILocation(line: 633, column: 53, scope: !2962)
!3235 = !DILocation(line: 632, column: 36, scope: !2962)
!3236 = !DILocation(line: 634, column: 25, scope: !2962)
!3237 = !DILocation(line: 644, column: 38, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !2969, file: !445, line: 642, column: 23)
!3239 = !DILocation(line: 644, column: 48, scope: !3238)
!3240 = !DILocation(line: 644, column: 25, scope: !3238)
!3241 = !DILocation(line: 644, column: 51, scope: !3238)
!3242 = !DILocation(line: 645, column: 28, scope: !3238)
!3243 = !DILocation(line: 644, column: 34, scope: !3238)
!3244 = distinct !{!3244, !3240, !3242}
!3245 = !DILocation(line: 658, column: 43, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !445, line: 658, column: 29)
!3247 = distinct !DILexicalBlock(scope: !2966, file: !445, line: 658, column: 29)
!3248 = !DILocation(line: 655, column: 29, scope: !2967)
!3249 = !DILocation(line: 0, scope: !2966)
!3250 = !DILocation(line: 659, column: 49, scope: !3246)
!3251 = !DILocation(line: 659, column: 39, scope: !3246)
!3252 = !DILocation(line: 659, column: 31, scope: !3246)
!3253 = !DILocation(line: 658, column: 53, scope: !3246)
!3254 = !DILocation(line: 658, column: 29, scope: !3247)
!3255 = distinct !{!3255, !3254, !3256}
!3256 = !DILocation(line: 667, column: 33, scope: !3247)
!3257 = !DILocation(line: 674, column: 19, scope: !2956)
!3258 = !DILocation(line: 670, column: 41, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !2968, file: !445, line: 670, column: 29)
!3260 = !DILocation(line: 670, column: 31, scope: !3259)
!3261 = !DILocation(line: 670, column: 29, scope: !2968)
!3262 = !DILocation(line: 672, column: 27, scope: !2968)
!3263 = !DILocation(line: 675, column: 26, scope: !2956)
!3264 = !DILocation(line: 675, column: 24, scope: !2956)
!3265 = !DILocation(line: 674, column: 19, scope: !2962)
!3266 = distinct !{!3266, !3228, !3267}
!3267 = !DILocation(line: 675, column: 44, scope: !2956)
!3268 = !DILocation(line: 676, column: 15, scope: !2957)
!3269 = !DILocation(line: 0, scope: !2957)
!3270 = !DILocation(line: 678, column: 40, scope: !2952)
!3271 = !DILocation(line: 680, column: 19, scope: !2974)
!3272 = !DILocation(line: 680, column: 45, scope: !2974)
!3273 = !DILocation(line: 680, column: 23, scope: !2974)
!3274 = !DILocation(line: 684, column: 33, scope: !2973)
!3275 = !DILocation(line: 0, scope: !2973)
!3276 = !DILocation(line: 686, column: 17, scope: !2973)
!3277 = !DILocation(line: 405, column: 12, scope: !2944)
!3278 = !DILocation(line: 688, column: 43, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3280, file: !445, line: 688, column: 25)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !445, line: 687, column: 19)
!3281 = distinct !DILexicalBlock(scope: !3282, file: !445, line: 686, column: 17)
!3282 = distinct !DILexicalBlock(scope: !2973, file: !445, line: 686, column: 17)
!3283 = !DILocation(line: 690, column: 25, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3285, file: !445, line: 690, column: 25)
!3285 = distinct !DILexicalBlock(scope: !3279, file: !445, line: 689, column: 23)
!3286 = !DILocation(line: 690, column: 25, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3284, file: !445, line: 690, column: 25)
!3288 = !DILocation(line: 690, column: 25, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3290, file: !445, line: 690, column: 25)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !445, line: 690, column: 25)
!3291 = distinct !DILexicalBlock(scope: !3287, file: !445, line: 690, column: 25)
!3292 = !DILocation(line: 690, column: 25, scope: !3290)
!3293 = !DILocation(line: 690, column: 25, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !445, line: 690, column: 25)
!3295 = distinct !DILexicalBlock(scope: !3291, file: !445, line: 690, column: 25)
!3296 = !DILocation(line: 690, column: 25, scope: !3295)
!3297 = !DILocation(line: 690, column: 25, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3299, file: !445, line: 690, column: 25)
!3299 = distinct !DILexicalBlock(scope: !3291, file: !445, line: 690, column: 25)
!3300 = !DILocation(line: 690, column: 25, scope: !3299)
!3301 = !DILocation(line: 690, column: 25, scope: !3291)
!3302 = !DILocation(line: 690, column: 25, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !445, line: 690, column: 25)
!3304 = distinct !DILexicalBlock(scope: !3284, file: !445, line: 690, column: 25)
!3305 = !DILocation(line: 690, column: 25, scope: !3304)
!3306 = !DILocation(line: 691, column: 25, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3308, file: !445, line: 691, column: 25)
!3308 = distinct !DILexicalBlock(scope: !3285, file: !445, line: 691, column: 25)
!3309 = !DILocation(line: 691, column: 25, scope: !3308)
!3310 = !DILocation(line: 692, column: 25, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3312, file: !445, line: 692, column: 25)
!3312 = distinct !DILexicalBlock(scope: !3285, file: !445, line: 692, column: 25)
!3313 = !DILocation(line: 692, column: 25, scope: !3312)
!3314 = !DILocation(line: 693, column: 38, scope: !3285)
!3315 = !DILocation(line: 693, column: 33, scope: !3285)
!3316 = !DILocation(line: 694, column: 23, scope: !3285)
!3317 = !DILocation(line: 695, column: 30, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3279, file: !445, line: 695, column: 30)
!3319 = !DILocation(line: 695, column: 30, scope: !3279)
!3320 = !DILocation(line: 697, column: 25, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !445, line: 697, column: 25)
!3322 = distinct !DILexicalBlock(scope: !3323, file: !445, line: 697, column: 25)
!3323 = distinct !DILexicalBlock(scope: !3318, file: !445, line: 696, column: 23)
!3324 = !DILocation(line: 697, column: 25, scope: !3322)
!3325 = !DILocation(line: 699, column: 23, scope: !3323)
!3326 = !DILocation(line: 700, column: 35, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3280, file: !445, line: 700, column: 25)
!3328 = !DILocation(line: 700, column: 30, scope: !3327)
!3329 = !DILocation(line: 700, column: 25, scope: !3280)
!3330 = !DILocation(line: 702, column: 21, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !445, line: 702, column: 21)
!3332 = distinct !DILexicalBlock(scope: !3280, file: !445, line: 702, column: 21)
!3333 = !DILocation(line: 702, column: 21, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !445, line: 702, column: 21)
!3335 = distinct !DILexicalBlock(scope: !3336, file: !445, line: 702, column: 21)
!3336 = distinct !DILexicalBlock(scope: !3331, file: !445, line: 702, column: 21)
!3337 = !DILocation(line: 702, column: 21, scope: !3335)
!3338 = !DILocation(line: 702, column: 21, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !445, line: 702, column: 21)
!3340 = distinct !DILexicalBlock(scope: !3336, file: !445, line: 702, column: 21)
!3341 = !DILocation(line: 702, column: 21, scope: !3340)
!3342 = !DILocation(line: 702, column: 21, scope: !3336)
!3343 = !DILocation(line: 0, scope: !3280)
!3344 = !DILocation(line: 703, column: 21, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !445, line: 703, column: 21)
!3346 = distinct !DILexicalBlock(scope: !3280, file: !445, line: 703, column: 21)
!3347 = !DILocation(line: 703, column: 21, scope: !3346)
!3348 = !DILocation(line: 704, column: 25, scope: !3280)
!3349 = !DILocation(line: 686, column: 17, scope: !3281)
!3350 = distinct !{!3350, !3351, !3352}
!3351 = !DILocation(line: 686, column: 17, scope: !3282)
!3352 = !DILocation(line: 705, column: 19, scope: !3282)
!3353 = !DILocation(line: 416, column: 30, scope: !3053)
!3354 = !DILocation(line: 712, column: 34, scope: !2996)
!3355 = !DILocation(line: 715, column: 35, scope: !2996)
!3356 = !DILocation(line: 715, column: 17, scope: !2996)
!3357 = !DILocation(line: 715, column: 47, scope: !2996)
!3358 = !DILocation(line: 715, column: 65, scope: !2996)
!3359 = !DILocation(line: 716, column: 15, scope: !2996)
!3360 = !DILocation(line: 716, column: 11, scope: !2996)
!3361 = !DILocation(line: 712, column: 11, scope: !2944)
!3362 = !DILocation(line: 400, column: 10, scope: !2946)
!3363 = !DILocation(line: 719, column: 5, scope: !2944)
!3364 = !DILocation(line: 720, column: 7, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !2944, file: !445, line: 720, column: 7)
!3366 = !DILocation(line: 720, column: 7, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3365, file: !445, line: 720, column: 7)
!3368 = !DILocation(line: 720, column: 7, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !445, line: 720, column: 7)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !445, line: 720, column: 7)
!3371 = distinct !DILexicalBlock(scope: !3367, file: !445, line: 720, column: 7)
!3372 = !DILocation(line: 720, column: 7, scope: !3370)
!3373 = !DILocation(line: 720, column: 7, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !445, line: 720, column: 7)
!3375 = distinct !DILexicalBlock(scope: !3371, file: !445, line: 720, column: 7)
!3376 = !DILocation(line: 720, column: 7, scope: !3375)
!3377 = !DILocation(line: 720, column: 7, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !445, line: 720, column: 7)
!3379 = distinct !DILexicalBlock(scope: !3371, file: !445, line: 720, column: 7)
!3380 = !DILocation(line: 720, column: 7, scope: !3379)
!3381 = !DILocation(line: 720, column: 7, scope: !3371)
!3382 = !DILocation(line: 720, column: 7, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !445, line: 720, column: 7)
!3384 = distinct !DILexicalBlock(scope: !3365, file: !445, line: 720, column: 7)
!3385 = !DILocation(line: 720, column: 7, scope: !3384)
!3386 = !DILocation(line: 722, column: 5, scope: !2944)
!3387 = !DILocation(line: 723, column: 7, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !445, line: 723, column: 7)
!3389 = distinct !DILexicalBlock(scope: !2944, file: !445, line: 723, column: 7)
!3390 = !DILocation(line: 424, column: 9, scope: !2944)
!3391 = !DILocation(line: 723, column: 7, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !445, line: 723, column: 7)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !445, line: 723, column: 7)
!3394 = distinct !DILexicalBlock(scope: !3388, file: !445, line: 723, column: 7)
!3395 = !DILocation(line: 723, column: 7, scope: !3393)
!3396 = !DILocation(line: 723, column: 7, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !445, line: 723, column: 7)
!3398 = distinct !DILexicalBlock(scope: !3394, file: !445, line: 723, column: 7)
!3399 = !DILocation(line: 723, column: 7, scope: !3398)
!3400 = !DILocation(line: 723, column: 7, scope: !3394)
!3401 = !DILocation(line: 724, column: 7, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3403, file: !445, line: 724, column: 7)
!3403 = distinct !DILexicalBlock(scope: !2944, file: !445, line: 724, column: 7)
!3404 = !DILocation(line: 724, column: 7, scope: !3403)
!3405 = !DILocation(line: 726, column: 13, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !2944, file: !445, line: 726, column: 11)
!3407 = !DILocation(line: 726, column: 11, scope: !2944)
!3408 = !DILocation(line: 728, column: 5, scope: !2945)
!3409 = !DILocation(line: 400, column: 75, scope: !2945)
!3410 = !DILocation(line: 400, column: 3, scope: !2945)
!3411 = distinct !{!3411, !3071, !3412}
!3412 = !DILocation(line: 728, column: 5, scope: !2946)
!3413 = !DILocation(line: 730, column: 11, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !2917, file: !445, line: 730, column: 7)
!3415 = !DILocation(line: 730, column: 16, scope: !3414)
!3416 = !DILocation(line: 738, column: 51, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !2917, file: !445, line: 738, column: 7)
!3418 = !DILocation(line: 739, column: 10, scope: !3417)
!3419 = !DILocation(line: 741, column: 11, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !445, line: 741, column: 11)
!3421 = distinct !DILexicalBlock(scope: !3417, file: !445, line: 740, column: 5)
!3422 = !DILocation(line: 741, column: 11, scope: !3421)
!3423 = !DILocation(line: 742, column: 16, scope: !3420)
!3424 = !DILocation(line: 742, column: 9, scope: !3420)
!3425 = !DILocation(line: 746, column: 18, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3420, file: !445, line: 746, column: 16)
!3427 = !DILocation(line: 746, column: 32, scope: !3426)
!3428 = !DILocation(line: 746, column: 29, scope: !3426)
!3429 = !DILocation(line: 755, column: 7, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !2917, file: !445, line: 755, column: 7)
!3431 = !DILocation(line: 755, column: 20, scope: !3430)
!3432 = !DILocation(line: 756, column: 12, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3434, file: !445, line: 756, column: 5)
!3434 = distinct !DILexicalBlock(scope: !3430, file: !445, line: 756, column: 5)
!3435 = !DILocation(line: 756, column: 5, scope: !3434)
!3436 = !DILocation(line: 757, column: 7, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !445, line: 757, column: 7)
!3438 = distinct !DILexicalBlock(scope: !3433, file: !445, line: 757, column: 7)
!3439 = !DILocation(line: 757, column: 7, scope: !3438)
!3440 = !DILocation(line: 756, column: 39, scope: !3433)
!3441 = distinct !{!3441, !3435, !3442}
!3442 = !DILocation(line: 757, column: 7, scope: !3434)
!3443 = !DILocation(line: 759, column: 11, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !2917, file: !445, line: 759, column: 7)
!3445 = !DILocation(line: 759, column: 7, scope: !2917)
!3446 = !DILocation(line: 760, column: 5, scope: !3444)
!3447 = !DILocation(line: 760, column: 17, scope: !3444)
!3448 = !DILocation(line: 763, column: 2, scope: !2917)
!3449 = !DILocation(line: 766, column: 51, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !2917, file: !445, line: 766, column: 7)
!3451 = !DILocation(line: 766, column: 21, scope: !3450)
!3452 = !DILocation(line: 770, column: 42, scope: !2917)
!3453 = !DILocation(line: 768, column: 10, scope: !2917)
!3454 = !DILocation(line: 768, column: 3, scope: !2917)
!3455 = !DILocation(line: 772, column: 1, scope: !2917)
!3456 = distinct !DISubprogram(name: "gettext_quote", scope: !445, file: !445, line: 207, type: !3457, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3459)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!47, !47, !17}
!3459 = !{!3460, !3461, !3462, !3463}
!3460 = !DILocalVariable(name: "msgid", arg: 1, scope: !3456, file: !445, line: 207, type: !47)
!3461 = !DILocalVariable(name: "s", arg: 2, scope: !3456, file: !445, line: 207, type: !17)
!3462 = !DILocalVariable(name: "translation", scope: !3456, file: !445, line: 209, type: !47)
!3463 = !DILocalVariable(name: "locale_code", scope: !3456, file: !445, line: 210, type: !47)
!3464 = !DILocation(line: 0, scope: !3456)
!3465 = !DILocation(line: 209, column: 29, scope: !3456)
!3466 = !DILocation(line: 212, column: 19, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3456, file: !445, line: 212, column: 7)
!3468 = !DILocation(line: 212, column: 7, scope: !3456)
!3469 = !DILocation(line: 233, column: 17, scope: !3456)
!3470 = !DILocalVariable(name: "s1", arg: 1, scope: !3471, file: !3472, line: 160, type: !47)
!3471 = distinct !DISubprogram(name: "strcaseeq0", scope: !3472, file: !3472, line: 160, type: !3473, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3475)
!3472 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!49, !47, !47, !46, !46, !46, !46, !46, !46, !46, !46, !46}
!3475 = !{!3470, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485}
!3476 = !DILocalVariable(name: "s2", arg: 2, scope: !3471, file: !3472, line: 160, type: !47)
!3477 = !DILocalVariable(name: "s20", arg: 3, scope: !3471, file: !3472, line: 160, type: !46)
!3478 = !DILocalVariable(name: "s21", arg: 4, scope: !3471, file: !3472, line: 160, type: !46)
!3479 = !DILocalVariable(name: "s22", arg: 5, scope: !3471, file: !3472, line: 160, type: !46)
!3480 = !DILocalVariable(name: "s23", arg: 6, scope: !3471, file: !3472, line: 160, type: !46)
!3481 = !DILocalVariable(name: "s24", arg: 7, scope: !3471, file: !3472, line: 160, type: !46)
!3482 = !DILocalVariable(name: "s25", arg: 8, scope: !3471, file: !3472, line: 160, type: !46)
!3483 = !DILocalVariable(name: "s26", arg: 9, scope: !3471, file: !3472, line: 160, type: !46)
!3484 = !DILocalVariable(name: "s27", arg: 10, scope: !3471, file: !3472, line: 160, type: !46)
!3485 = !DILocalVariable(name: "s28", arg: 11, scope: !3471, file: !3472, line: 160, type: !46)
!3486 = !DILocation(line: 0, scope: !3471, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 234, column: 7, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3456, file: !445, line: 234, column: 7)
!3489 = !DILocation(line: 162, column: 7, scope: !3490, inlinedAt: !3487)
!3490 = distinct !DILexicalBlock(scope: !3471, file: !3472, line: 162, column: 7)
!3491 = !DILocalVariable(name: "s1", arg: 1, scope: !3492, file: !3472, line: 146, type: !47)
!3492 = distinct !DISubprogram(name: "strcaseeq1", scope: !3472, file: !3472, line: 146, type: !3493, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3495)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!49, !47, !47, !46, !46, !46, !46, !46, !46, !46, !46}
!3495 = !{!3491, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504}
!3496 = !DILocalVariable(name: "s2", arg: 2, scope: !3492, file: !3472, line: 146, type: !47)
!3497 = !DILocalVariable(name: "s21", arg: 3, scope: !3492, file: !3472, line: 146, type: !46)
!3498 = !DILocalVariable(name: "s22", arg: 4, scope: !3492, file: !3472, line: 146, type: !46)
!3499 = !DILocalVariable(name: "s23", arg: 5, scope: !3492, file: !3472, line: 146, type: !46)
!3500 = !DILocalVariable(name: "s24", arg: 6, scope: !3492, file: !3472, line: 146, type: !46)
!3501 = !DILocalVariable(name: "s25", arg: 7, scope: !3492, file: !3472, line: 146, type: !46)
!3502 = !DILocalVariable(name: "s26", arg: 8, scope: !3492, file: !3472, line: 146, type: !46)
!3503 = !DILocalVariable(name: "s27", arg: 9, scope: !3492, file: !3472, line: 146, type: !46)
!3504 = !DILocalVariable(name: "s28", arg: 10, scope: !3492, file: !3472, line: 146, type: !46)
!3505 = !DILocation(line: 0, scope: !3492, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 167, column: 16, scope: !3507, inlinedAt: !3487)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !3472, line: 164, column: 11)
!3508 = distinct !DILexicalBlock(scope: !3490, file: !3472, line: 163, column: 5)
!3509 = !DILocation(line: 148, column: 7, scope: !3510, inlinedAt: !3506)
!3510 = distinct !DILexicalBlock(scope: !3492, file: !3472, line: 148, column: 7)
!3511 = !DILocalVariable(name: "s1", arg: 1, scope: !3512, file: !3472, line: 132, type: !47)
!3512 = distinct !DISubprogram(name: "strcaseeq2", scope: !3472, file: !3472, line: 132, type: !3513, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3515)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!49, !47, !47, !46, !46, !46, !46, !46, !46, !46}
!3515 = !{!3511, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523}
!3516 = !DILocalVariable(name: "s2", arg: 2, scope: !3512, file: !3472, line: 132, type: !47)
!3517 = !DILocalVariable(name: "s22", arg: 3, scope: !3512, file: !3472, line: 132, type: !46)
!3518 = !DILocalVariable(name: "s23", arg: 4, scope: !3512, file: !3472, line: 132, type: !46)
!3519 = !DILocalVariable(name: "s24", arg: 5, scope: !3512, file: !3472, line: 132, type: !46)
!3520 = !DILocalVariable(name: "s25", arg: 6, scope: !3512, file: !3472, line: 132, type: !46)
!3521 = !DILocalVariable(name: "s26", arg: 7, scope: !3512, file: !3472, line: 132, type: !46)
!3522 = !DILocalVariable(name: "s27", arg: 8, scope: !3512, file: !3472, line: 132, type: !46)
!3523 = !DILocalVariable(name: "s28", arg: 9, scope: !3512, file: !3472, line: 132, type: !46)
!3524 = !DILocation(line: 0, scope: !3512, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 153, column: 16, scope: !3526, inlinedAt: !3506)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !3472, line: 150, column: 11)
!3527 = distinct !DILexicalBlock(scope: !3510, file: !3472, line: 149, column: 5)
!3528 = !DILocation(line: 134, column: 7, scope: !3529, inlinedAt: !3525)
!3529 = distinct !DILexicalBlock(scope: !3512, file: !3472, line: 134, column: 7)
!3530 = !DILocalVariable(name: "s1", arg: 1, scope: !3531, file: !3472, line: 118, type: !47)
!3531 = distinct !DISubprogram(name: "strcaseeq3", scope: !3472, file: !3472, line: 118, type: !3532, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3534)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!49, !47, !47, !46, !46, !46, !46, !46, !46}
!3534 = !{!3530, !3535, !3536, !3537, !3538, !3539, !3540, !3541}
!3535 = !DILocalVariable(name: "s2", arg: 2, scope: !3531, file: !3472, line: 118, type: !47)
!3536 = !DILocalVariable(name: "s23", arg: 3, scope: !3531, file: !3472, line: 118, type: !46)
!3537 = !DILocalVariable(name: "s24", arg: 4, scope: !3531, file: !3472, line: 118, type: !46)
!3538 = !DILocalVariable(name: "s25", arg: 5, scope: !3531, file: !3472, line: 118, type: !46)
!3539 = !DILocalVariable(name: "s26", arg: 6, scope: !3531, file: !3472, line: 118, type: !46)
!3540 = !DILocalVariable(name: "s27", arg: 7, scope: !3531, file: !3472, line: 118, type: !46)
!3541 = !DILocalVariable(name: "s28", arg: 8, scope: !3531, file: !3472, line: 118, type: !46)
!3542 = !DILocation(line: 0, scope: !3531, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 139, column: 16, scope: !3544, inlinedAt: !3525)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !3472, line: 136, column: 11)
!3545 = distinct !DILexicalBlock(scope: !3529, file: !3472, line: 135, column: 5)
!3546 = !DILocation(line: 120, column: 7, scope: !3547, inlinedAt: !3543)
!3547 = distinct !DILexicalBlock(scope: !3531, file: !3472, line: 120, column: 7)
!3548 = !DILocation(line: 120, column: 7, scope: !3531, inlinedAt: !3543)
!3549 = !DILocalVariable(name: "s1", arg: 1, scope: !3550, file: !3472, line: 104, type: !47)
!3550 = distinct !DISubprogram(name: "strcaseeq4", scope: !3472, file: !3472, line: 104, type: !3551, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3553)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!49, !47, !47, !46, !46, !46, !46, !46}
!3553 = !{!3549, !3554, !3555, !3556, !3557, !3558, !3559}
!3554 = !DILocalVariable(name: "s2", arg: 2, scope: !3550, file: !3472, line: 104, type: !47)
!3555 = !DILocalVariable(name: "s24", arg: 3, scope: !3550, file: !3472, line: 104, type: !46)
!3556 = !DILocalVariable(name: "s25", arg: 4, scope: !3550, file: !3472, line: 104, type: !46)
!3557 = !DILocalVariable(name: "s26", arg: 5, scope: !3550, file: !3472, line: 104, type: !46)
!3558 = !DILocalVariable(name: "s27", arg: 6, scope: !3550, file: !3472, line: 104, type: !46)
!3559 = !DILocalVariable(name: "s28", arg: 7, scope: !3550, file: !3472, line: 104, type: !46)
!3560 = !DILocation(line: 0, scope: !3550, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 125, column: 16, scope: !3562, inlinedAt: !3543)
!3562 = distinct !DILexicalBlock(scope: !3563, file: !3472, line: 122, column: 11)
!3563 = distinct !DILexicalBlock(scope: !3547, file: !3472, line: 121, column: 5)
!3564 = !DILocation(line: 106, column: 7, scope: !3565, inlinedAt: !3561)
!3565 = distinct !DILexicalBlock(scope: !3550, file: !3472, line: 106, column: 7)
!3566 = !DILocation(line: 106, column: 7, scope: !3550, inlinedAt: !3561)
!3567 = !DILocalVariable(name: "s1", arg: 1, scope: !3568, file: !3472, line: 90, type: !47)
!3568 = distinct !DISubprogram(name: "strcaseeq5", scope: !3472, file: !3472, line: 90, type: !3569, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3571)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!49, !47, !47, !46, !46, !46, !46}
!3571 = !{!3567, !3572, !3573, !3574, !3575, !3576}
!3572 = !DILocalVariable(name: "s2", arg: 2, scope: !3568, file: !3472, line: 90, type: !47)
!3573 = !DILocalVariable(name: "s25", arg: 3, scope: !3568, file: !3472, line: 90, type: !46)
!3574 = !DILocalVariable(name: "s26", arg: 4, scope: !3568, file: !3472, line: 90, type: !46)
!3575 = !DILocalVariable(name: "s27", arg: 5, scope: !3568, file: !3472, line: 90, type: !46)
!3576 = !DILocalVariable(name: "s28", arg: 6, scope: !3568, file: !3472, line: 90, type: !46)
!3577 = !DILocation(line: 0, scope: !3568, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 111, column: 16, scope: !3579, inlinedAt: !3561)
!3579 = distinct !DILexicalBlock(scope: !3580, file: !3472, line: 108, column: 11)
!3580 = distinct !DILexicalBlock(scope: !3565, file: !3472, line: 107, column: 5)
!3581 = !DILocation(line: 92, column: 7, scope: !3582, inlinedAt: !3578)
!3582 = distinct !DILexicalBlock(scope: !3568, file: !3472, line: 92, column: 7)
!3583 = !DILocation(line: 92, column: 7, scope: !3568, inlinedAt: !3578)
!3584 = !DILocation(line: 235, column: 12, scope: !3488)
!3585 = !DILocation(line: 235, column: 21, scope: !3488)
!3586 = !DILocation(line: 235, column: 5, scope: !3488)
!3587 = !DILocation(line: 0, scope: !3492, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 167, column: 16, scope: !3507, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 236, column: 7, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3456, file: !445, line: 236, column: 7)
!3591 = !DILocation(line: 148, column: 7, scope: !3510, inlinedAt: !3588)
!3592 = !DILocation(line: 0, scope: !3512, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 153, column: 16, scope: !3526, inlinedAt: !3588)
!3594 = !DILocation(line: 134, column: 7, scope: !3529, inlinedAt: !3593)
!3595 = !DILocation(line: 134, column: 7, scope: !3512, inlinedAt: !3593)
!3596 = !DILocation(line: 0, scope: !3531, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 139, column: 16, scope: !3544, inlinedAt: !3593)
!3598 = !DILocation(line: 120, column: 7, scope: !3547, inlinedAt: !3597)
!3599 = !DILocation(line: 120, column: 7, scope: !3531, inlinedAt: !3597)
!3600 = !DILocation(line: 0, scope: !3550, inlinedAt: !3601)
!3601 = distinct !DILocation(line: 125, column: 16, scope: !3562, inlinedAt: !3597)
!3602 = !DILocation(line: 106, column: 7, scope: !3565, inlinedAt: !3601)
!3603 = !DILocation(line: 106, column: 7, scope: !3550, inlinedAt: !3601)
!3604 = !DILocation(line: 0, scope: !3568, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 111, column: 16, scope: !3579, inlinedAt: !3601)
!3606 = !DILocation(line: 92, column: 7, scope: !3582, inlinedAt: !3605)
!3607 = !DILocation(line: 92, column: 7, scope: !3568, inlinedAt: !3605)
!3608 = !DILocalVariable(name: "s1", arg: 1, scope: !3609, file: !3472, line: 76, type: !47)
!3609 = distinct !DISubprogram(name: "strcaseeq6", scope: !3472, file: !3472, line: 76, type: !3610, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3612)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!49, !47, !47, !46, !46, !46}
!3612 = !{!3608, !3613, !3614, !3615, !3616}
!3613 = !DILocalVariable(name: "s2", arg: 2, scope: !3609, file: !3472, line: 76, type: !47)
!3614 = !DILocalVariable(name: "s26", arg: 3, scope: !3609, file: !3472, line: 76, type: !46)
!3615 = !DILocalVariable(name: "s27", arg: 4, scope: !3609, file: !3472, line: 76, type: !46)
!3616 = !DILocalVariable(name: "s28", arg: 5, scope: !3609, file: !3472, line: 76, type: !46)
!3617 = !DILocation(line: 0, scope: !3609, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 97, column: 16, scope: !3619, inlinedAt: !3605)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !3472, line: 94, column: 11)
!3620 = distinct !DILexicalBlock(scope: !3582, file: !3472, line: 93, column: 5)
!3621 = !DILocation(line: 78, column: 7, scope: !3622, inlinedAt: !3618)
!3622 = distinct !DILexicalBlock(scope: !3609, file: !3472, line: 78, column: 7)
!3623 = !DILocation(line: 78, column: 7, scope: !3609, inlinedAt: !3618)
!3624 = !DILocalVariable(name: "s1", arg: 1, scope: !3625, file: !3472, line: 62, type: !47)
!3625 = distinct !DISubprogram(name: "strcaseeq7", scope: !3472, file: !3472, line: 62, type: !3626, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3628)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!49, !47, !47, !46, !46}
!3628 = !{!3624, !3629, !3630, !3631}
!3629 = !DILocalVariable(name: "s2", arg: 2, scope: !3625, file: !3472, line: 62, type: !47)
!3630 = !DILocalVariable(name: "s27", arg: 3, scope: !3625, file: !3472, line: 62, type: !46)
!3631 = !DILocalVariable(name: "s28", arg: 4, scope: !3625, file: !3472, line: 62, type: !46)
!3632 = !DILocation(line: 0, scope: !3625, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 83, column: 16, scope: !3634, inlinedAt: !3618)
!3634 = distinct !DILexicalBlock(scope: !3635, file: !3472, line: 80, column: 11)
!3635 = distinct !DILexicalBlock(scope: !3622, file: !3472, line: 79, column: 5)
!3636 = !DILocation(line: 64, column: 7, scope: !3637, inlinedAt: !3633)
!3637 = distinct !DILexicalBlock(scope: !3625, file: !3472, line: 64, column: 7)
!3638 = !DILocation(line: 236, column: 7, scope: !3456)
!3639 = !DILocation(line: 237, column: 12, scope: !3590)
!3640 = !DILocation(line: 237, column: 21, scope: !3590)
!3641 = !DILocation(line: 237, column: 5, scope: !3590)
!3642 = !DILocation(line: 239, column: 13, scope: !3456)
!3643 = !DILocation(line: 239, column: 11, scope: !3456)
!3644 = !DILocation(line: 239, column: 3, scope: !3456)
!3645 = !DILocation(line: 240, column: 1, scope: !3456)
!3646 = distinct !DISubprogram(name: "quotearg_alloc", scope: !445, file: !445, line: 799, type: !3647, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3649)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!45, !47, !104, !459}
!3649 = !{!3650, !3651, !3652}
!3650 = !DILocalVariable(name: "arg", arg: 1, scope: !3646, file: !445, line: 799, type: !47)
!3651 = !DILocalVariable(name: "argsize", arg: 2, scope: !3646, file: !445, line: 799, type: !104)
!3652 = !DILocalVariable(name: "o", arg: 3, scope: !3646, file: !445, line: 800, type: !459)
!3653 = !DILocation(line: 0, scope: !3646)
!3654 = !DILocalVariable(name: "arg", arg: 1, scope: !3655, file: !445, line: 812, type: !47)
!3655 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !445, file: !445, line: 812, type: !3656, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3658)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!45, !47, !104, !275, !459}
!3658 = !{!3654, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666}
!3659 = !DILocalVariable(name: "argsize", arg: 2, scope: !3655, file: !445, line: 812, type: !104)
!3660 = !DILocalVariable(name: "size", arg: 3, scope: !3655, file: !445, line: 812, type: !275)
!3661 = !DILocalVariable(name: "o", arg: 4, scope: !3655, file: !445, line: 813, type: !459)
!3662 = !DILocalVariable(name: "p", scope: !3655, file: !445, line: 815, type: !459)
!3663 = !DILocalVariable(name: "e", scope: !3655, file: !445, line: 816, type: !49)
!3664 = !DILocalVariable(name: "flags", scope: !3655, file: !445, line: 818, type: !49)
!3665 = !DILocalVariable(name: "bufsize", scope: !3655, file: !445, line: 819, type: !104)
!3666 = !DILocalVariable(name: "buf", scope: !3655, file: !445, line: 823, type: !45)
!3667 = !DILocation(line: 0, scope: !3655, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 802, column: 10, scope: !3646)
!3669 = !DILocation(line: 815, column: 37, scope: !3655, inlinedAt: !3668)
!3670 = !DILocation(line: 816, column: 11, scope: !3655, inlinedAt: !3668)
!3671 = !DILocation(line: 818, column: 18, scope: !3655, inlinedAt: !3668)
!3672 = !DILocation(line: 818, column: 24, scope: !3655, inlinedAt: !3668)
!3673 = !DILocation(line: 819, column: 69, scope: !3655, inlinedAt: !3668)
!3674 = !DILocation(line: 820, column: 53, scope: !3655, inlinedAt: !3668)
!3675 = !DILocation(line: 821, column: 49, scope: !3655, inlinedAt: !3668)
!3676 = !DILocation(line: 822, column: 49, scope: !3655, inlinedAt: !3668)
!3677 = !DILocation(line: 819, column: 20, scope: !3655, inlinedAt: !3668)
!3678 = !DILocation(line: 822, column: 62, scope: !3655, inlinedAt: !3668)
!3679 = !DILocalVariable(name: "n", arg: 1, scope: !3680, file: !153, line: 216, type: !104)
!3680 = distinct !DISubprogram(name: "xcharalloc", scope: !153, file: !153, line: 216, type: !3681, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3683)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!45, !104}
!3683 = !{!3679}
!3684 = !DILocation(line: 0, scope: !3680, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 823, column: 15, scope: !3655, inlinedAt: !3668)
!3686 = !DILocation(line: 218, column: 10, scope: !3680, inlinedAt: !3685)
!3687 = !DILocation(line: 824, column: 60, scope: !3655, inlinedAt: !3668)
!3688 = !DILocation(line: 826, column: 32, scope: !3655, inlinedAt: !3668)
!3689 = !DILocation(line: 826, column: 47, scope: !3655, inlinedAt: !3668)
!3690 = !DILocation(line: 824, column: 3, scope: !3655, inlinedAt: !3668)
!3691 = !DILocation(line: 827, column: 9, scope: !3655, inlinedAt: !3668)
!3692 = !DILocation(line: 802, column: 3, scope: !3646)
!3693 = !DILocation(line: 0, scope: !3655)
!3694 = !DILocation(line: 815, column: 37, scope: !3655)
!3695 = !DILocation(line: 816, column: 11, scope: !3655)
!3696 = !DILocation(line: 818, column: 18, scope: !3655)
!3697 = !DILocation(line: 818, column: 27, scope: !3655)
!3698 = !DILocation(line: 818, column: 24, scope: !3655)
!3699 = !DILocation(line: 819, column: 69, scope: !3655)
!3700 = !DILocation(line: 820, column: 53, scope: !3655)
!3701 = !DILocation(line: 821, column: 49, scope: !3655)
!3702 = !DILocation(line: 822, column: 49, scope: !3655)
!3703 = !DILocation(line: 819, column: 20, scope: !3655)
!3704 = !DILocation(line: 822, column: 62, scope: !3655)
!3705 = !DILocation(line: 0, scope: !3680, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 823, column: 15, scope: !3655)
!3707 = !DILocation(line: 218, column: 10, scope: !3680, inlinedAt: !3706)
!3708 = !DILocation(line: 824, column: 60, scope: !3655)
!3709 = !DILocation(line: 826, column: 32, scope: !3655)
!3710 = !DILocation(line: 826, column: 47, scope: !3655)
!3711 = !DILocation(line: 824, column: 3, scope: !3655)
!3712 = !DILocation(line: 827, column: 9, scope: !3655)
!3713 = !DILocation(line: 828, column: 7, scope: !3655)
!3714 = !DILocation(line: 829, column: 11, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3655, file: !445, line: 828, column: 7)
!3716 = !DILocation(line: 829, column: 5, scope: !3715)
!3717 = !DILocation(line: 830, column: 3, scope: !3655)
!3718 = distinct !DISubprogram(name: "quotearg_free", scope: !445, file: !445, line: 848, type: !131, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3719)
!3719 = !{!3720, !3721}
!3720 = !DILocalVariable(name: "sv", scope: !3718, file: !445, line: 850, type: !530)
!3721 = !DILocalVariable(name: "i", scope: !3718, file: !445, line: 851, type: !49)
!3722 = !DILocation(line: 850, column: 24, scope: !3718)
!3723 = !DILocation(line: 0, scope: !3718)
!3724 = !DILocation(line: 852, column: 19, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3726, file: !445, line: 852, column: 3)
!3726 = distinct !DILexicalBlock(scope: !3718, file: !445, line: 852, column: 3)
!3727 = !DILocation(line: 852, column: 17, scope: !3725)
!3728 = !DILocation(line: 852, column: 3, scope: !3726)
!3729 = !DILocation(line: 853, column: 17, scope: !3725)
!3730 = !{!3731, !1387, i64 8}
!3731 = !{!"slotvec", !1492, i64 0, !1387, i64 8}
!3732 = !DILocation(line: 853, column: 5, scope: !3725)
!3733 = !DILocation(line: 852, column: 28, scope: !3725)
!3734 = distinct !{!3734, !3728, !3735}
!3735 = !DILocation(line: 853, column: 20, scope: !3726)
!3736 = !DILocation(line: 854, column: 13, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3718, file: !445, line: 854, column: 7)
!3738 = !DILocation(line: 854, column: 17, scope: !3737)
!3739 = !DILocation(line: 854, column: 7, scope: !3718)
!3740 = !DILocation(line: 856, column: 7, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3737, file: !445, line: 855, column: 5)
!3742 = !DILocation(line: 857, column: 21, scope: !3741)
!3743 = !{!3731, !1492, i64 0}
!3744 = !DILocation(line: 858, column: 20, scope: !3741)
!3745 = !DILocation(line: 859, column: 5, scope: !3741)
!3746 = !DILocation(line: 860, column: 10, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3718, file: !445, line: 860, column: 7)
!3748 = !DILocation(line: 860, column: 7, scope: !3718)
!3749 = !DILocation(line: 862, column: 13, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3747, file: !445, line: 861, column: 5)
!3751 = !DILocation(line: 862, column: 7, scope: !3750)
!3752 = !DILocation(line: 863, column: 15, scope: !3750)
!3753 = !DILocation(line: 864, column: 5, scope: !3750)
!3754 = !DILocation(line: 865, column: 10, scope: !3718)
!3755 = !DILocation(line: 866, column: 1, scope: !3718)
!3756 = distinct !DISubprogram(name: "quotearg_n", scope: !445, file: !445, line: 931, type: !118, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3757)
!3757 = !{!3758, !3759}
!3758 = !DILocalVariable(name: "n", arg: 1, scope: !3756, file: !445, line: 931, type: !49)
!3759 = !DILocalVariable(name: "arg", arg: 2, scope: !3756, file: !445, line: 931, type: !47)
!3760 = !DILocation(line: 0, scope: !3756)
!3761 = !DILocation(line: 933, column: 10, scope: !3756)
!3762 = !DILocation(line: 933, column: 3, scope: !3756)
!3763 = distinct !DISubprogram(name: "quotearg_n_options", scope: !445, file: !445, line: 877, type: !3764, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3766)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!45, !49, !47, !104, !459}
!3766 = !{!3767, !3768, !3769, !3770, !3771, !3772, !3773, !3776, !3777, !3779, !3780, !3781}
!3767 = !DILocalVariable(name: "n", arg: 1, scope: !3763, file: !445, line: 877, type: !49)
!3768 = !DILocalVariable(name: "arg", arg: 2, scope: !3763, file: !445, line: 877, type: !47)
!3769 = !DILocalVariable(name: "argsize", arg: 3, scope: !3763, file: !445, line: 877, type: !104)
!3770 = !DILocalVariable(name: "options", arg: 4, scope: !3763, file: !445, line: 878, type: !459)
!3771 = !DILocalVariable(name: "e", scope: !3763, file: !445, line: 880, type: !49)
!3772 = !DILocalVariable(name: "sv", scope: !3763, file: !445, line: 882, type: !530)
!3773 = !DILocalVariable(name: "preallocated", scope: !3774, file: !445, line: 889, type: !205)
!3774 = distinct !DILexicalBlock(scope: !3775, file: !445, line: 888, column: 5)
!3775 = distinct !DILexicalBlock(scope: !3763, file: !445, line: 887, column: 7)
!3776 = !DILocalVariable(name: "nmax", scope: !3774, file: !445, line: 890, type: !49)
!3777 = !DILocalVariable(name: "size", scope: !3778, file: !445, line: 903, type: !104)
!3778 = distinct !DILexicalBlock(scope: !3763, file: !445, line: 902, column: 3)
!3779 = !DILocalVariable(name: "val", scope: !3778, file: !445, line: 904, type: !45)
!3780 = !DILocalVariable(name: "flags", scope: !3778, file: !445, line: 906, type: !49)
!3781 = !DILocalVariable(name: "qsize", scope: !3778, file: !445, line: 907, type: !104)
!3782 = !DILocation(line: 0, scope: !3763)
!3783 = !DILocation(line: 880, column: 11, scope: !3763)
!3784 = !DILocation(line: 882, column: 24, scope: !3763)
!3785 = !DILocation(line: 884, column: 9, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3763, file: !445, line: 884, column: 7)
!3787 = !DILocation(line: 884, column: 7, scope: !3763)
!3788 = !DILocation(line: 885, column: 5, scope: !3786)
!3789 = !DILocation(line: 887, column: 7, scope: !3775)
!3790 = !DILocation(line: 887, column: 14, scope: !3775)
!3791 = !DILocation(line: 887, column: 7, scope: !3763)
!3792 = !DILocation(line: 889, column: 31, scope: !3774)
!3793 = !DILocation(line: 0, scope: !3774)
!3794 = !DILocation(line: 892, column: 16, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3774, file: !445, line: 892, column: 11)
!3796 = !DILocation(line: 892, column: 11, scope: !3774)
!3797 = !DILocation(line: 893, column: 9, scope: !3795)
!3798 = !DILocation(line: 895, column: 32, scope: !3774)
!3799 = !DILocation(line: 895, column: 61, scope: !3774)
!3800 = !DILocation(line: 895, column: 58, scope: !3774)
!3801 = !DILocation(line: 895, column: 66, scope: !3774)
!3802 = !DILocation(line: 895, column: 22, scope: !3774)
!3803 = !DILocation(line: 895, column: 15, scope: !3774)
!3804 = !DILocation(line: 896, column: 11, scope: !3774)
!3805 = !DILocation(line: 897, column: 15, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3774, file: !445, line: 896, column: 11)
!3807 = !{i64 0, i64 8, !1491, i64 8, i64 8, !1386}
!3808 = !DILocation(line: 897, column: 9, scope: !3806)
!3809 = !DILocation(line: 898, column: 20, scope: !3774)
!3810 = !DILocation(line: 898, column: 18, scope: !3774)
!3811 = !DILocation(line: 898, column: 15, scope: !3774)
!3812 = !DILocation(line: 898, column: 38, scope: !3774)
!3813 = !DILocation(line: 898, column: 31, scope: !3774)
!3814 = !DILocation(line: 898, column: 48, scope: !3774)
!3815 = !DILocation(line: 0, scope: !3214, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 898, column: 7, scope: !3774)
!3817 = !DILocation(line: 71, column: 10, scope: !3214, inlinedAt: !3816)
!3818 = !DILocation(line: 899, column: 14, scope: !3774)
!3819 = !DILocation(line: 900, column: 5, scope: !3774)
!3820 = !DILocation(line: 903, column: 19, scope: !3778)
!3821 = !DILocation(line: 903, column: 25, scope: !3778)
!3822 = !DILocation(line: 0, scope: !3778)
!3823 = !DILocation(line: 904, column: 23, scope: !3778)
!3824 = !DILocation(line: 906, column: 26, scope: !3778)
!3825 = !DILocation(line: 906, column: 32, scope: !3778)
!3826 = !DILocation(line: 908, column: 55, scope: !3778)
!3827 = !DILocation(line: 909, column: 46, scope: !3778)
!3828 = !DILocation(line: 910, column: 55, scope: !3778)
!3829 = !DILocation(line: 911, column: 55, scope: !3778)
!3830 = !DILocation(line: 907, column: 20, scope: !3778)
!3831 = !DILocation(line: 913, column: 14, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3778, file: !445, line: 913, column: 9)
!3833 = !DILocation(line: 913, column: 9, scope: !3778)
!3834 = !DILocation(line: 915, column: 35, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3832, file: !445, line: 914, column: 7)
!3836 = !DILocation(line: 915, column: 20, scope: !3835)
!3837 = !DILocation(line: 916, column: 17, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3835, file: !445, line: 916, column: 13)
!3839 = !DILocation(line: 916, column: 13, scope: !3835)
!3840 = !DILocation(line: 917, column: 11, scope: !3838)
!3841 = !DILocation(line: 0, scope: !3680, inlinedAt: !3842)
!3842 = distinct !DILocation(line: 918, column: 27, scope: !3835)
!3843 = !DILocation(line: 218, column: 10, scope: !3680, inlinedAt: !3842)
!3844 = !DILocation(line: 918, column: 19, scope: !3835)
!3845 = !DILocation(line: 919, column: 69, scope: !3835)
!3846 = !DILocation(line: 921, column: 44, scope: !3835)
!3847 = !DILocation(line: 922, column: 44, scope: !3835)
!3848 = !DILocation(line: 919, column: 9, scope: !3835)
!3849 = !DILocation(line: 923, column: 7, scope: !3835)
!3850 = !DILocation(line: 925, column: 11, scope: !3778)
!3851 = !DILocation(line: 926, column: 5, scope: !3778)
!3852 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !445, file: !445, line: 937, type: !3853, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3855)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!45, !49, !47, !104}
!3855 = !{!3856, !3857, !3858}
!3856 = !DILocalVariable(name: "n", arg: 1, scope: !3852, file: !445, line: 937, type: !49)
!3857 = !DILocalVariable(name: "arg", arg: 2, scope: !3852, file: !445, line: 937, type: !47)
!3858 = !DILocalVariable(name: "argsize", arg: 3, scope: !3852, file: !445, line: 937, type: !104)
!3859 = !DILocation(line: 0, scope: !3852)
!3860 = !DILocation(line: 939, column: 10, scope: !3852)
!3861 = !DILocation(line: 939, column: 3, scope: !3852)
!3862 = distinct !DISubprogram(name: "quotearg", scope: !445, file: !445, line: 943, type: !124, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3863)
!3863 = !{!3864}
!3864 = !DILocalVariable(name: "arg", arg: 1, scope: !3862, file: !445, line: 943, type: !47)
!3865 = !DILocation(line: 0, scope: !3862)
!3866 = !DILocation(line: 0, scope: !3756, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 945, column: 10, scope: !3862)
!3868 = !DILocation(line: 933, column: 10, scope: !3756, inlinedAt: !3867)
!3869 = !DILocation(line: 945, column: 3, scope: !3862)
!3870 = distinct !DISubprogram(name: "quotearg_mem", scope: !445, file: !445, line: 949, type: !3871, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3873)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!45, !47, !104}
!3873 = !{!3874, !3875}
!3874 = !DILocalVariable(name: "arg", arg: 1, scope: !3870, file: !445, line: 949, type: !47)
!3875 = !DILocalVariable(name: "argsize", arg: 2, scope: !3870, file: !445, line: 949, type: !104)
!3876 = !DILocation(line: 0, scope: !3870)
!3877 = !DILocation(line: 0, scope: !3852, inlinedAt: !3878)
!3878 = distinct !DILocation(line: 951, column: 10, scope: !3870)
!3879 = !DILocation(line: 939, column: 10, scope: !3852, inlinedAt: !3878)
!3880 = !DILocation(line: 951, column: 3, scope: !3870)
!3881 = distinct !DISubprogram(name: "quotearg_n_style", scope: !445, file: !445, line: 955, type: !166, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3882)
!3882 = !{!3883, !3884, !3885, !3886}
!3883 = !DILocalVariable(name: "n", arg: 1, scope: !3881, file: !445, line: 955, type: !49)
!3884 = !DILocalVariable(name: "s", arg: 2, scope: !3881, file: !445, line: 955, type: !17)
!3885 = !DILocalVariable(name: "arg", arg: 3, scope: !3881, file: !445, line: 955, type: !47)
!3886 = !DILocalVariable(name: "o", scope: !3881, file: !445, line: 957, type: !460)
!3887 = !DILocation(line: 0, scope: !3881)
!3888 = !DILocation(line: 957, column: 3, scope: !3881)
!3889 = !DILocation(line: 957, column: 32, scope: !3881)
!3890 = !DILocalVariable(name: "style", arg: 1, scope: !3891, file: !445, line: 193, type: !17)
!3891 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !445, file: !445, line: 193, type: !3892, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3894)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!461, !17}
!3894 = !{!3890, !3895}
!3895 = !DILocalVariable(name: "o", scope: !3891, file: !445, line: 195, type: !461)
!3896 = !DILocation(line: 0, scope: !3891, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 957, column: 36, scope: !3881)
!3898 = !DILocation(line: 195, column: 26, scope: !3891, inlinedAt: !3897)
!3899 = !{!3900}
!3900 = distinct !{!3900, !3901, !"quoting_options_from_style: argument 0"}
!3901 = distinct !{!3901, !"quoting_options_from_style"}
!3902 = !DILocation(line: 196, column: 13, scope: !3903, inlinedAt: !3897)
!3903 = distinct !DILexicalBlock(scope: !3891, file: !445, line: 196, column: 7)
!3904 = !DILocation(line: 196, column: 7, scope: !3891, inlinedAt: !3897)
!3905 = !DILocation(line: 197, column: 5, scope: !3903, inlinedAt: !3897)
!3906 = !DILocation(line: 198, column: 5, scope: !3891, inlinedAt: !3897)
!3907 = !DILocation(line: 198, column: 11, scope: !3891, inlinedAt: !3897)
!3908 = !DILocation(line: 958, column: 10, scope: !3881)
!3909 = !DILocation(line: 959, column: 1, scope: !3881)
!3910 = !DILocation(line: 958, column: 3, scope: !3881)
!3911 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !445, file: !445, line: 962, type: !3912, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3914)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!45, !49, !17, !47, !104}
!3914 = !{!3915, !3916, !3917, !3918, !3919}
!3915 = !DILocalVariable(name: "n", arg: 1, scope: !3911, file: !445, line: 962, type: !49)
!3916 = !DILocalVariable(name: "s", arg: 2, scope: !3911, file: !445, line: 962, type: !17)
!3917 = !DILocalVariable(name: "arg", arg: 3, scope: !3911, file: !445, line: 963, type: !47)
!3918 = !DILocalVariable(name: "argsize", arg: 4, scope: !3911, file: !445, line: 963, type: !104)
!3919 = !DILocalVariable(name: "o", scope: !3911, file: !445, line: 965, type: !460)
!3920 = !DILocation(line: 0, scope: !3911)
!3921 = !DILocation(line: 965, column: 3, scope: !3911)
!3922 = !DILocation(line: 965, column: 32, scope: !3911)
!3923 = !DILocation(line: 0, scope: !3891, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 965, column: 36, scope: !3911)
!3925 = !DILocation(line: 195, column: 26, scope: !3891, inlinedAt: !3924)
!3926 = !{!3927}
!3927 = distinct !{!3927, !3928, !"quoting_options_from_style: argument 0"}
!3928 = distinct !{!3928, !"quoting_options_from_style"}
!3929 = !DILocation(line: 196, column: 13, scope: !3903, inlinedAt: !3924)
!3930 = !DILocation(line: 196, column: 7, scope: !3891, inlinedAt: !3924)
!3931 = !DILocation(line: 197, column: 5, scope: !3903, inlinedAt: !3924)
!3932 = !DILocation(line: 198, column: 5, scope: !3891, inlinedAt: !3924)
!3933 = !DILocation(line: 198, column: 11, scope: !3891, inlinedAt: !3924)
!3934 = !DILocation(line: 966, column: 10, scope: !3911)
!3935 = !DILocation(line: 967, column: 1, scope: !3911)
!3936 = !DILocation(line: 966, column: 3, scope: !3911)
!3937 = distinct !DISubprogram(name: "quotearg_style", scope: !445, file: !445, line: 970, type: !3938, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3940)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!45, !17, !47}
!3940 = !{!3941, !3942}
!3941 = !DILocalVariable(name: "s", arg: 1, scope: !3937, file: !445, line: 970, type: !17)
!3942 = !DILocalVariable(name: "arg", arg: 2, scope: !3937, file: !445, line: 970, type: !47)
!3943 = !DILocation(line: 195, column: 26, scope: !3891, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 957, column: 36, scope: !3881, inlinedAt: !3945)
!3945 = distinct !DILocation(line: 972, column: 10, scope: !3937)
!3946 = !DILocation(line: 957, column: 32, scope: !3881, inlinedAt: !3945)
!3947 = !DILocation(line: 0, scope: !3937)
!3948 = !DILocation(line: 0, scope: !3881, inlinedAt: !3945)
!3949 = !DILocation(line: 957, column: 3, scope: !3881, inlinedAt: !3945)
!3950 = !DILocation(line: 0, scope: !3891, inlinedAt: !3944)
!3951 = !{!3952}
!3952 = distinct !{!3952, !3953, !"quoting_options_from_style: argument 0"}
!3953 = distinct !{!3953, !"quoting_options_from_style"}
!3954 = !DILocation(line: 196, column: 13, scope: !3903, inlinedAt: !3944)
!3955 = !DILocation(line: 196, column: 7, scope: !3891, inlinedAt: !3944)
!3956 = !DILocation(line: 197, column: 5, scope: !3903, inlinedAt: !3944)
!3957 = !DILocation(line: 198, column: 5, scope: !3891, inlinedAt: !3944)
!3958 = !DILocation(line: 198, column: 11, scope: !3891, inlinedAt: !3944)
!3959 = !DILocation(line: 958, column: 10, scope: !3881, inlinedAt: !3945)
!3960 = !DILocation(line: 959, column: 1, scope: !3881, inlinedAt: !3945)
!3961 = !DILocation(line: 972, column: 3, scope: !3937)
!3962 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !445, file: !445, line: 976, type: !3963, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3965)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!45, !17, !47, !104}
!3965 = !{!3966, !3967, !3968}
!3966 = !DILocalVariable(name: "s", arg: 1, scope: !3962, file: !445, line: 976, type: !17)
!3967 = !DILocalVariable(name: "arg", arg: 2, scope: !3962, file: !445, line: 976, type: !47)
!3968 = !DILocalVariable(name: "argsize", arg: 3, scope: !3962, file: !445, line: 976, type: !104)
!3969 = !DILocation(line: 195, column: 26, scope: !3891, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 965, column: 36, scope: !3911, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 978, column: 10, scope: !3962)
!3972 = !DILocation(line: 965, column: 32, scope: !3911, inlinedAt: !3971)
!3973 = !DILocation(line: 0, scope: !3962)
!3974 = !DILocation(line: 0, scope: !3911, inlinedAt: !3971)
!3975 = !DILocation(line: 965, column: 3, scope: !3911, inlinedAt: !3971)
!3976 = !DILocation(line: 0, scope: !3891, inlinedAt: !3970)
!3977 = !{!3978}
!3978 = distinct !{!3978, !3979, !"quoting_options_from_style: argument 0"}
!3979 = distinct !{!3979, !"quoting_options_from_style"}
!3980 = !DILocation(line: 196, column: 13, scope: !3903, inlinedAt: !3970)
!3981 = !DILocation(line: 196, column: 7, scope: !3891, inlinedAt: !3970)
!3982 = !DILocation(line: 197, column: 5, scope: !3903, inlinedAt: !3970)
!3983 = !DILocation(line: 198, column: 5, scope: !3891, inlinedAt: !3970)
!3984 = !DILocation(line: 198, column: 11, scope: !3891, inlinedAt: !3970)
!3985 = !DILocation(line: 966, column: 10, scope: !3911, inlinedAt: !3971)
!3986 = !DILocation(line: 967, column: 1, scope: !3911, inlinedAt: !3971)
!3987 = !DILocation(line: 978, column: 3, scope: !3962)
!3988 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !445, file: !445, line: 982, type: !3989, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3991)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!45, !47, !104, !46}
!3991 = !{!3992, !3993, !3994, !3995}
!3992 = !DILocalVariable(name: "arg", arg: 1, scope: !3988, file: !445, line: 982, type: !47)
!3993 = !DILocalVariable(name: "argsize", arg: 2, scope: !3988, file: !445, line: 982, type: !104)
!3994 = !DILocalVariable(name: "ch", arg: 3, scope: !3988, file: !445, line: 982, type: !46)
!3995 = !DILocalVariable(name: "options", scope: !3988, file: !445, line: 984, type: !461)
!3996 = !DILocation(line: 0, scope: !3988)
!3997 = !DILocation(line: 984, column: 3, scope: !3988)
!3998 = !DILocation(line: 984, column: 26, scope: !3988)
!3999 = !DILocation(line: 985, column: 13, scope: !3988)
!4000 = !{i64 0, i64 4, !1446, i64 4, i64 4, !1544, i64 8, i64 32, !1446, i64 40, i64 8, !1386, i64 48, i64 8, !1386}
!4001 = !DILocation(line: 0, scope: !2829, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 986, column: 3, scope: !3988)
!4003 = !DILocation(line: 156, column: 62, scope: !2829, inlinedAt: !4002)
!4004 = !DILocation(line: 156, column: 57, scope: !2829, inlinedAt: !4002)
!4005 = !DILocation(line: 157, column: 15, scope: !2829, inlinedAt: !4002)
!4006 = !DILocation(line: 158, column: 12, scope: !2829, inlinedAt: !4002)
!4007 = !DILocation(line: 158, column: 15, scope: !2829, inlinedAt: !4002)
!4008 = !DILocation(line: 158, column: 25, scope: !2829, inlinedAt: !4002)
!4009 = !DILocation(line: 159, column: 18, scope: !2829, inlinedAt: !4002)
!4010 = !DILocation(line: 159, column: 23, scope: !2829, inlinedAt: !4002)
!4011 = !DILocation(line: 159, column: 6, scope: !2829, inlinedAt: !4002)
!4012 = !DILocation(line: 987, column: 10, scope: !3988)
!4013 = !DILocation(line: 988, column: 1, scope: !3988)
!4014 = !DILocation(line: 987, column: 3, scope: !3988)
!4015 = distinct !DISubprogram(name: "quotearg_char", scope: !445, file: !445, line: 991, type: !4016, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4018)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!45, !47, !46}
!4018 = !{!4019, !4020}
!4019 = !DILocalVariable(name: "arg", arg: 1, scope: !4015, file: !445, line: 991, type: !47)
!4020 = !DILocalVariable(name: "ch", arg: 2, scope: !4015, file: !445, line: 991, type: !46)
!4021 = !DILocation(line: 984, column: 26, scope: !3988, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 993, column: 10, scope: !4015)
!4023 = !DILocation(line: 0, scope: !4015)
!4024 = !DILocation(line: 0, scope: !3988, inlinedAt: !4022)
!4025 = !DILocation(line: 984, column: 3, scope: !3988, inlinedAt: !4022)
!4026 = !DILocation(line: 985, column: 13, scope: !3988, inlinedAt: !4022)
!4027 = !DILocation(line: 0, scope: !2829, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 986, column: 3, scope: !3988, inlinedAt: !4022)
!4029 = !DILocation(line: 156, column: 62, scope: !2829, inlinedAt: !4028)
!4030 = !DILocation(line: 156, column: 57, scope: !2829, inlinedAt: !4028)
!4031 = !DILocation(line: 157, column: 15, scope: !2829, inlinedAt: !4028)
!4032 = !DILocation(line: 158, column: 12, scope: !2829, inlinedAt: !4028)
!4033 = !DILocation(line: 158, column: 15, scope: !2829, inlinedAt: !4028)
!4034 = !DILocation(line: 158, column: 25, scope: !2829, inlinedAt: !4028)
!4035 = !DILocation(line: 159, column: 18, scope: !2829, inlinedAt: !4028)
!4036 = !DILocation(line: 159, column: 23, scope: !2829, inlinedAt: !4028)
!4037 = !DILocation(line: 159, column: 6, scope: !2829, inlinedAt: !4028)
!4038 = !DILocation(line: 987, column: 10, scope: !3988, inlinedAt: !4022)
!4039 = !DILocation(line: 988, column: 1, scope: !3988, inlinedAt: !4022)
!4040 = !DILocation(line: 993, column: 3, scope: !4015)
!4041 = distinct !DISubprogram(name: "quotearg_colon", scope: !445, file: !445, line: 997, type: !124, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4042)
!4042 = !{!4043}
!4043 = !DILocalVariable(name: "arg", arg: 1, scope: !4041, file: !445, line: 997, type: !47)
!4044 = !DILocation(line: 984, column: 26, scope: !3988, inlinedAt: !4045)
!4045 = distinct !DILocation(line: 993, column: 10, scope: !4015, inlinedAt: !4046)
!4046 = distinct !DILocation(line: 999, column: 10, scope: !4041)
!4047 = !DILocation(line: 0, scope: !4041)
!4048 = !DILocation(line: 0, scope: !4015, inlinedAt: !4046)
!4049 = !DILocation(line: 0, scope: !3988, inlinedAt: !4045)
!4050 = !DILocation(line: 984, column: 3, scope: !3988, inlinedAt: !4045)
!4051 = !DILocation(line: 985, column: 13, scope: !3988, inlinedAt: !4045)
!4052 = !DILocation(line: 0, scope: !2829, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 986, column: 3, scope: !3988, inlinedAt: !4045)
!4054 = !DILocation(line: 156, column: 57, scope: !2829, inlinedAt: !4053)
!4055 = !DILocation(line: 158, column: 12, scope: !2829, inlinedAt: !4053)
!4056 = !DILocation(line: 159, column: 6, scope: !2829, inlinedAt: !4053)
!4057 = !DILocation(line: 987, column: 10, scope: !3988, inlinedAt: !4045)
!4058 = !DILocation(line: 988, column: 1, scope: !3988, inlinedAt: !4045)
!4059 = !DILocation(line: 999, column: 3, scope: !4041)
!4060 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !445, file: !445, line: 1003, type: !3871, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4061)
!4061 = !{!4062, !4063}
!4062 = !DILocalVariable(name: "arg", arg: 1, scope: !4060, file: !445, line: 1003, type: !47)
!4063 = !DILocalVariable(name: "argsize", arg: 2, scope: !4060, file: !445, line: 1003, type: !104)
!4064 = !DILocation(line: 984, column: 26, scope: !3988, inlinedAt: !4065)
!4065 = distinct !DILocation(line: 1005, column: 10, scope: !4060)
!4066 = !DILocation(line: 0, scope: !4060)
!4067 = !DILocation(line: 0, scope: !3988, inlinedAt: !4065)
!4068 = !DILocation(line: 984, column: 3, scope: !3988, inlinedAt: !4065)
!4069 = !DILocation(line: 985, column: 13, scope: !3988, inlinedAt: !4065)
!4070 = !DILocation(line: 0, scope: !2829, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 986, column: 3, scope: !3988, inlinedAt: !4065)
!4072 = !DILocation(line: 156, column: 57, scope: !2829, inlinedAt: !4071)
!4073 = !DILocation(line: 158, column: 12, scope: !2829, inlinedAt: !4071)
!4074 = !DILocation(line: 159, column: 6, scope: !2829, inlinedAt: !4071)
!4075 = !DILocation(line: 987, column: 10, scope: !3988, inlinedAt: !4065)
!4076 = !DILocation(line: 988, column: 1, scope: !3988, inlinedAt: !4065)
!4077 = !DILocation(line: 1005, column: 3, scope: !4060)
!4078 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !445, file: !445, line: 1009, type: !166, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4079)
!4079 = !{!4080, !4081, !4082, !4083}
!4080 = !DILocalVariable(name: "n", arg: 1, scope: !4078, file: !445, line: 1009, type: !49)
!4081 = !DILocalVariable(name: "s", arg: 2, scope: !4078, file: !445, line: 1009, type: !17)
!4082 = !DILocalVariable(name: "arg", arg: 3, scope: !4078, file: !445, line: 1009, type: !47)
!4083 = !DILocalVariable(name: "options", scope: !4078, file: !445, line: 1011, type: !461)
!4084 = !DILocation(line: 195, column: 26, scope: !3891, inlinedAt: !4085)
!4085 = distinct !DILocation(line: 1012, column: 13, scope: !4078)
!4086 = !DILocation(line: 0, scope: !4078)
!4087 = !DILocation(line: 1011, column: 3, scope: !4078)
!4088 = !DILocation(line: 1011, column: 26, scope: !4078)
!4089 = !DILocation(line: 1012, column: 13, scope: !4078)
!4090 = !DILocation(line: 0, scope: !3891, inlinedAt: !4085)
!4091 = !{!4092}
!4092 = distinct !{!4092, !4093, !"quoting_options_from_style: argument 0"}
!4093 = distinct !{!4093, !"quoting_options_from_style"}
!4094 = !DILocation(line: 196, column: 13, scope: !3903, inlinedAt: !4085)
!4095 = !DILocation(line: 196, column: 7, scope: !3891, inlinedAt: !4085)
!4096 = !DILocation(line: 197, column: 5, scope: !3903, inlinedAt: !4085)
!4097 = !DILocation(line: 0, scope: !2829, inlinedAt: !4098)
!4098 = distinct !DILocation(line: 1013, column: 3, scope: !4078)
!4099 = !DILocation(line: 156, column: 57, scope: !2829, inlinedAt: !4098)
!4100 = !DILocation(line: 158, column: 12, scope: !2829, inlinedAt: !4098)
!4101 = !DILocation(line: 159, column: 6, scope: !2829, inlinedAt: !4098)
!4102 = !DILocation(line: 1014, column: 10, scope: !4078)
!4103 = !DILocation(line: 1015, column: 1, scope: !4078)
!4104 = !DILocation(line: 1014, column: 3, scope: !4078)
!4105 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !445, file: !445, line: 1018, type: !4106, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4108)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!45, !49, !47, !47, !47}
!4108 = !{!4109, !4110, !4111, !4112}
!4109 = !DILocalVariable(name: "n", arg: 1, scope: !4105, file: !445, line: 1018, type: !49)
!4110 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4105, file: !445, line: 1018, type: !47)
!4111 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4105, file: !445, line: 1019, type: !47)
!4112 = !DILocalVariable(name: "arg", arg: 4, scope: !4105, file: !445, line: 1019, type: !47)
!4113 = !DILocalVariable(name: "o", scope: !4114, file: !445, line: 1030, type: !461)
!4114 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !445, file: !445, line: 1026, type: !4115, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4117)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!45, !49, !47, !47, !47, !104}
!4117 = !{!4118, !4119, !4120, !4121, !4122, !4113}
!4118 = !DILocalVariable(name: "n", arg: 1, scope: !4114, file: !445, line: 1026, type: !49)
!4119 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4114, file: !445, line: 1026, type: !47)
!4120 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4114, file: !445, line: 1027, type: !47)
!4121 = !DILocalVariable(name: "arg", arg: 4, scope: !4114, file: !445, line: 1028, type: !47)
!4122 = !DILocalVariable(name: "argsize", arg: 5, scope: !4114, file: !445, line: 1028, type: !104)
!4123 = !DILocation(line: 1030, column: 26, scope: !4114, inlinedAt: !4124)
!4124 = distinct !DILocation(line: 1021, column: 10, scope: !4105)
!4125 = !DILocation(line: 0, scope: !4105)
!4126 = !DILocation(line: 0, scope: !4114, inlinedAt: !4124)
!4127 = !DILocation(line: 1030, column: 3, scope: !4114, inlinedAt: !4124)
!4128 = !DILocation(line: 1030, column: 30, scope: !4114, inlinedAt: !4124)
!4129 = !DILocation(line: 0, scope: !2869, inlinedAt: !4130)
!4130 = distinct !DILocation(line: 1031, column: 3, scope: !4114, inlinedAt: !4124)
!4131 = !DILocation(line: 184, column: 6, scope: !2869, inlinedAt: !4130)
!4132 = !DILocation(line: 184, column: 12, scope: !2869, inlinedAt: !4130)
!4133 = !DILocation(line: 185, column: 8, scope: !2883, inlinedAt: !4130)
!4134 = !DILocation(line: 185, column: 23, scope: !2883, inlinedAt: !4130)
!4135 = !DILocation(line: 185, column: 19, scope: !2883, inlinedAt: !4130)
!4136 = !DILocation(line: 186, column: 5, scope: !2883, inlinedAt: !4130)
!4137 = !DILocation(line: 187, column: 6, scope: !2869, inlinedAt: !4130)
!4138 = !DILocation(line: 187, column: 17, scope: !2869, inlinedAt: !4130)
!4139 = !DILocation(line: 188, column: 6, scope: !2869, inlinedAt: !4130)
!4140 = !DILocation(line: 188, column: 18, scope: !2869, inlinedAt: !4130)
!4141 = !DILocation(line: 1032, column: 10, scope: !4114, inlinedAt: !4124)
!4142 = !DILocation(line: 1033, column: 1, scope: !4114, inlinedAt: !4124)
!4143 = !DILocation(line: 1021, column: 3, scope: !4105)
!4144 = !DILocation(line: 0, scope: !4114)
!4145 = !DILocation(line: 1030, column: 3, scope: !4114)
!4146 = !DILocation(line: 1030, column: 26, scope: !4114)
!4147 = !DILocation(line: 1030, column: 30, scope: !4114)
!4148 = !DILocation(line: 0, scope: !2869, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 1031, column: 3, scope: !4114)
!4150 = !DILocation(line: 184, column: 6, scope: !2869, inlinedAt: !4149)
!4151 = !DILocation(line: 184, column: 12, scope: !2869, inlinedAt: !4149)
!4152 = !DILocation(line: 185, column: 8, scope: !2883, inlinedAt: !4149)
!4153 = !DILocation(line: 185, column: 23, scope: !2883, inlinedAt: !4149)
!4154 = !DILocation(line: 185, column: 19, scope: !2883, inlinedAt: !4149)
!4155 = !DILocation(line: 186, column: 5, scope: !2883, inlinedAt: !4149)
!4156 = !DILocation(line: 187, column: 6, scope: !2869, inlinedAt: !4149)
!4157 = !DILocation(line: 187, column: 17, scope: !2869, inlinedAt: !4149)
!4158 = !DILocation(line: 188, column: 6, scope: !2869, inlinedAt: !4149)
!4159 = !DILocation(line: 188, column: 18, scope: !2869, inlinedAt: !4149)
!4160 = !DILocation(line: 1032, column: 10, scope: !4114)
!4161 = !DILocation(line: 1033, column: 1, scope: !4114)
!4162 = !DILocation(line: 1032, column: 3, scope: !4114)
!4163 = distinct !DISubprogram(name: "quotearg_custom", scope: !445, file: !445, line: 1036, type: !4164, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4166)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!45, !47, !47, !47}
!4166 = !{!4167, !4168, !4169}
!4167 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4163, file: !445, line: 1036, type: !47)
!4168 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4163, file: !445, line: 1036, type: !47)
!4169 = !DILocalVariable(name: "arg", arg: 3, scope: !4163, file: !445, line: 1037, type: !47)
!4170 = !DILocation(line: 1030, column: 26, scope: !4114, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 1021, column: 10, scope: !4105, inlinedAt: !4172)
!4172 = distinct !DILocation(line: 1039, column: 10, scope: !4163)
!4173 = !DILocation(line: 0, scope: !4163)
!4174 = !DILocation(line: 0, scope: !4105, inlinedAt: !4172)
!4175 = !DILocation(line: 0, scope: !4114, inlinedAt: !4171)
!4176 = !DILocation(line: 1030, column: 3, scope: !4114, inlinedAt: !4171)
!4177 = !DILocation(line: 1030, column: 30, scope: !4114, inlinedAt: !4171)
!4178 = !DILocation(line: 0, scope: !2869, inlinedAt: !4179)
!4179 = distinct !DILocation(line: 1031, column: 3, scope: !4114, inlinedAt: !4171)
!4180 = !DILocation(line: 184, column: 6, scope: !2869, inlinedAt: !4179)
!4181 = !DILocation(line: 184, column: 12, scope: !2869, inlinedAt: !4179)
!4182 = !DILocation(line: 185, column: 8, scope: !2883, inlinedAt: !4179)
!4183 = !DILocation(line: 185, column: 23, scope: !2883, inlinedAt: !4179)
!4184 = !DILocation(line: 185, column: 19, scope: !2883, inlinedAt: !4179)
!4185 = !DILocation(line: 186, column: 5, scope: !2883, inlinedAt: !4179)
!4186 = !DILocation(line: 187, column: 6, scope: !2869, inlinedAt: !4179)
!4187 = !DILocation(line: 187, column: 17, scope: !2869, inlinedAt: !4179)
!4188 = !DILocation(line: 188, column: 6, scope: !2869, inlinedAt: !4179)
!4189 = !DILocation(line: 188, column: 18, scope: !2869, inlinedAt: !4179)
!4190 = !DILocation(line: 1032, column: 10, scope: !4114, inlinedAt: !4171)
!4191 = !DILocation(line: 1033, column: 1, scope: !4114, inlinedAt: !4171)
!4192 = !DILocation(line: 1039, column: 3, scope: !4163)
!4193 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !445, file: !445, line: 1043, type: !4194, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4196)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!45, !47, !47, !47, !104}
!4196 = !{!4197, !4198, !4199, !4200}
!4197 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4193, file: !445, line: 1043, type: !47)
!4198 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4193, file: !445, line: 1043, type: !47)
!4199 = !DILocalVariable(name: "arg", arg: 3, scope: !4193, file: !445, line: 1044, type: !47)
!4200 = !DILocalVariable(name: "argsize", arg: 4, scope: !4193, file: !445, line: 1044, type: !104)
!4201 = !DILocation(line: 1030, column: 26, scope: !4114, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 1046, column: 10, scope: !4193)
!4203 = !DILocation(line: 0, scope: !4193)
!4204 = !DILocation(line: 0, scope: !4114, inlinedAt: !4202)
!4205 = !DILocation(line: 1030, column: 3, scope: !4114, inlinedAt: !4202)
!4206 = !DILocation(line: 1030, column: 30, scope: !4114, inlinedAt: !4202)
!4207 = !DILocation(line: 0, scope: !2869, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 1031, column: 3, scope: !4114, inlinedAt: !4202)
!4209 = !DILocation(line: 184, column: 6, scope: !2869, inlinedAt: !4208)
!4210 = !DILocation(line: 184, column: 12, scope: !2869, inlinedAt: !4208)
!4211 = !DILocation(line: 185, column: 8, scope: !2883, inlinedAt: !4208)
!4212 = !DILocation(line: 185, column: 23, scope: !2883, inlinedAt: !4208)
!4213 = !DILocation(line: 185, column: 19, scope: !2883, inlinedAt: !4208)
!4214 = !DILocation(line: 186, column: 5, scope: !2883, inlinedAt: !4208)
!4215 = !DILocation(line: 187, column: 6, scope: !2869, inlinedAt: !4208)
!4216 = !DILocation(line: 187, column: 17, scope: !2869, inlinedAt: !4208)
!4217 = !DILocation(line: 188, column: 6, scope: !2869, inlinedAt: !4208)
!4218 = !DILocation(line: 188, column: 18, scope: !2869, inlinedAt: !4208)
!4219 = !DILocation(line: 1032, column: 10, scope: !4114, inlinedAt: !4202)
!4220 = !DILocation(line: 1033, column: 1, scope: !4114, inlinedAt: !4202)
!4221 = !DILocation(line: 1046, column: 3, scope: !4193)
!4222 = distinct !DISubprogram(name: "quote_n_mem", scope: !445, file: !445, line: 1061, type: !4223, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4225)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!47, !49, !47, !104}
!4225 = !{!4226, !4227, !4228}
!4226 = !DILocalVariable(name: "n", arg: 1, scope: !4222, file: !445, line: 1061, type: !49)
!4227 = !DILocalVariable(name: "arg", arg: 2, scope: !4222, file: !445, line: 1061, type: !47)
!4228 = !DILocalVariable(name: "argsize", arg: 3, scope: !4222, file: !445, line: 1061, type: !104)
!4229 = !DILocation(line: 0, scope: !4222)
!4230 = !DILocation(line: 1063, column: 10, scope: !4222)
!4231 = !DILocation(line: 1063, column: 3, scope: !4222)
!4232 = distinct !DISubprogram(name: "quote_mem", scope: !445, file: !445, line: 1067, type: !4233, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4235)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!47, !47, !104}
!4235 = !{!4236, !4237}
!4236 = !DILocalVariable(name: "arg", arg: 1, scope: !4232, file: !445, line: 1067, type: !47)
!4237 = !DILocalVariable(name: "argsize", arg: 2, scope: !4232, file: !445, line: 1067, type: !104)
!4238 = !DILocation(line: 0, scope: !4232)
!4239 = !DILocation(line: 0, scope: !4222, inlinedAt: !4240)
!4240 = distinct !DILocation(line: 1069, column: 10, scope: !4232)
!4241 = !DILocation(line: 1063, column: 10, scope: !4222, inlinedAt: !4240)
!4242 = !DILocation(line: 1069, column: 3, scope: !4232)
!4243 = distinct !DISubprogram(name: "quote_n", scope: !445, file: !445, line: 1073, type: !4244, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4246)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!47, !49, !47}
!4246 = !{!4247, !4248}
!4247 = !DILocalVariable(name: "n", arg: 1, scope: !4243, file: !445, line: 1073, type: !49)
!4248 = !DILocalVariable(name: "arg", arg: 2, scope: !4243, file: !445, line: 1073, type: !47)
!4249 = !DILocation(line: 0, scope: !4243)
!4250 = !DILocation(line: 0, scope: !4222, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 1075, column: 10, scope: !4243)
!4252 = !DILocation(line: 1063, column: 10, scope: !4222, inlinedAt: !4251)
!4253 = !DILocation(line: 1075, column: 3, scope: !4243)
!4254 = distinct !DISubprogram(name: "quote", scope: !445, file: !445, line: 1079, type: !295, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4255)
!4255 = !{!4256}
!4256 = !DILocalVariable(name: "arg", arg: 1, scope: !4254, file: !445, line: 1079, type: !47)
!4257 = !DILocation(line: 0, scope: !4254)
!4258 = !DILocation(line: 0, scope: !4243, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 1081, column: 10, scope: !4254)
!4260 = !DILocation(line: 0, scope: !4222, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 1075, column: 10, scope: !4243, inlinedAt: !4259)
!4262 = !DILocation(line: 1063, column: 10, scope: !4222, inlinedAt: !4261)
!4263 = !DILocation(line: 1081, column: 3, scope: !4254)
!4264 = distinct !DISubprogram(name: "version_etc_arn", scope: !646, file: !646, line: 61, type: !4265, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !645, retainedNodes: !4270)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{null, !4267, !47, !47, !47, !4269, !104}
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1583, line: 7, baseType: !656)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!4270 = !{!4271, !4272, !4273, !4274, !4275, !4276}
!4271 = !DILocalVariable(name: "stream", arg: 1, scope: !4264, file: !646, line: 61, type: !4267)
!4272 = !DILocalVariable(name: "command_name", arg: 2, scope: !4264, file: !646, line: 62, type: !47)
!4273 = !DILocalVariable(name: "package", arg: 3, scope: !4264, file: !646, line: 62, type: !47)
!4274 = !DILocalVariable(name: "version", arg: 4, scope: !4264, file: !646, line: 63, type: !47)
!4275 = !DILocalVariable(name: "authors", arg: 5, scope: !4264, file: !646, line: 64, type: !4269)
!4276 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4264, file: !646, line: 64, type: !104)
!4277 = !DILocation(line: 0, scope: !4264)
!4278 = !DILocation(line: 66, column: 7, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4264, file: !646, line: 66, column: 7)
!4280 = !DILocation(line: 66, column: 7, scope: !4264)
!4281 = !DILocation(line: 67, column: 5, scope: !4279)
!4282 = !DILocation(line: 69, column: 5, scope: !4279)
!4283 = !DILocation(line: 83, column: 3, scope: !4264)
!4284 = !DILocation(line: 85, column: 3, scope: !4264)
!4285 = !DILocation(line: 88, column: 3, scope: !4264)
!4286 = !DILocation(line: 95, column: 3, scope: !4264)
!4287 = !DILocation(line: 97, column: 3, scope: !4264)
!4288 = !DILocation(line: 105, column: 7, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4264, file: !646, line: 98, column: 5)
!4290 = !DILocation(line: 106, column: 7, scope: !4289)
!4291 = !DILocation(line: 109, column: 7, scope: !4289)
!4292 = !DILocation(line: 110, column: 7, scope: !4289)
!4293 = !DILocation(line: 113, column: 7, scope: !4289)
!4294 = !DILocation(line: 115, column: 7, scope: !4289)
!4295 = !DILocation(line: 120, column: 7, scope: !4289)
!4296 = !DILocation(line: 122, column: 7, scope: !4289)
!4297 = !DILocation(line: 127, column: 7, scope: !4289)
!4298 = !DILocation(line: 129, column: 7, scope: !4289)
!4299 = !DILocation(line: 134, column: 7, scope: !4289)
!4300 = !DILocation(line: 137, column: 7, scope: !4289)
!4301 = !DILocation(line: 142, column: 7, scope: !4289)
!4302 = !DILocation(line: 145, column: 7, scope: !4289)
!4303 = !DILocation(line: 150, column: 7, scope: !4289)
!4304 = !DILocation(line: 154, column: 7, scope: !4289)
!4305 = !DILocation(line: 159, column: 7, scope: !4289)
!4306 = !DILocation(line: 163, column: 7, scope: !4289)
!4307 = !DILocation(line: 170, column: 7, scope: !4289)
!4308 = !DILocation(line: 174, column: 7, scope: !4289)
!4309 = !DILocation(line: 176, column: 1, scope: !4264)
!4310 = distinct !DISubprogram(name: "version_etc_ar", scope: !646, file: !646, line: 183, type: !4311, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !645, retainedNodes: !4313)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{null, !4267, !47, !47, !47, !4269}
!4313 = !{!4314, !4315, !4316, !4317, !4318, !4319}
!4314 = !DILocalVariable(name: "stream", arg: 1, scope: !4310, file: !646, line: 183, type: !4267)
!4315 = !DILocalVariable(name: "command_name", arg: 2, scope: !4310, file: !646, line: 184, type: !47)
!4316 = !DILocalVariable(name: "package", arg: 3, scope: !4310, file: !646, line: 184, type: !47)
!4317 = !DILocalVariable(name: "version", arg: 4, scope: !4310, file: !646, line: 185, type: !47)
!4318 = !DILocalVariable(name: "authors", arg: 5, scope: !4310, file: !646, line: 185, type: !4269)
!4319 = !DILocalVariable(name: "n_authors", scope: !4310, file: !646, line: 187, type: !104)
!4320 = !DILocation(line: 0, scope: !4310)
!4321 = !DILocation(line: 189, column: 8, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4310, file: !646, line: 189, column: 3)
!4323 = !DILocation(line: 0, scope: !4322)
!4324 = !DILocation(line: 189, column: 23, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4322, file: !646, line: 189, column: 3)
!4326 = !DILocation(line: 189, column: 3, scope: !4322)
!4327 = !DILocation(line: 189, column: 52, scope: !4325)
!4328 = distinct !{!4328, !4326, !4329}
!4329 = !DILocation(line: 190, column: 5, scope: !4322)
!4330 = !DILocation(line: 191, column: 3, scope: !4310)
!4331 = !DILocation(line: 192, column: 1, scope: !4310)
!4332 = distinct !DISubprogram(name: "version_etc_va", scope: !646, file: !646, line: 199, type: !4333, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !645, retainedNodes: !4342)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{null, !4267, !47, !47, !47, !4335}
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !646, line: 192, size: 192, elements: !4337)
!4337 = !{!4338, !4339, !4340, !4341}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4336, file: !646, line: 192, baseType: !6, size: 32)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4336, file: !646, line: 192, baseType: !6, size: 32, offset: 32)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4336, file: !646, line: 192, baseType: !102, size: 64, offset: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4336, file: !646, line: 192, baseType: !102, size: 64, offset: 128)
!4342 = !{!4343, !4344, !4345, !4346, !4347, !4348, !4349}
!4343 = !DILocalVariable(name: "stream", arg: 1, scope: !4332, file: !646, line: 199, type: !4267)
!4344 = !DILocalVariable(name: "command_name", arg: 2, scope: !4332, file: !646, line: 200, type: !47)
!4345 = !DILocalVariable(name: "package", arg: 3, scope: !4332, file: !646, line: 200, type: !47)
!4346 = !DILocalVariable(name: "version", arg: 4, scope: !4332, file: !646, line: 201, type: !47)
!4347 = !DILocalVariable(name: "authors", arg: 5, scope: !4332, file: !646, line: 201, type: !4335)
!4348 = !DILocalVariable(name: "n_authors", scope: !4332, file: !646, line: 203, type: !104)
!4349 = !DILocalVariable(name: "authtab", scope: !4332, file: !646, line: 204, type: !4350)
!4350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 640, elements: !517)
!4351 = !DILocation(line: 0, scope: !4332)
!4352 = !DILocation(line: 204, column: 3, scope: !4332)
!4353 = !DILocation(line: 204, column: 15, scope: !4332)
!4354 = !DILocation(line: 0, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4356, file: !646, line: 206, column: 3)
!4356 = distinct !DILexicalBlock(scope: !4332, file: !646, line: 206, column: 3)
!4357 = !DILocation(line: 208, column: 35, scope: !4355)
!4358 = !DILocation(line: 208, column: 14, scope: !4355)
!4359 = !DILocation(line: 208, column: 33, scope: !4355)
!4360 = !DILocation(line: 208, column: 67, scope: !4355)
!4361 = !DILocation(line: 206, column: 3, scope: !4356)
!4362 = !DILocation(line: 0, scope: !4356)
!4363 = !DILocation(line: 211, column: 3, scope: !4332)
!4364 = !DILocation(line: 213, column: 1, scope: !4332)
!4365 = distinct !DISubprogram(name: "version_etc", scope: !646, file: !646, line: 230, type: !4366, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !645, retainedNodes: !4368)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{null, !4267, !47, !47, !47, null}
!4368 = !{!4369, !4370, !4371, !4372, !4373}
!4369 = !DILocalVariable(name: "stream", arg: 1, scope: !4365, file: !646, line: 230, type: !4267)
!4370 = !DILocalVariable(name: "command_name", arg: 2, scope: !4365, file: !646, line: 231, type: !47)
!4371 = !DILocalVariable(name: "package", arg: 3, scope: !4365, file: !646, line: 231, type: !47)
!4372 = !DILocalVariable(name: "version", arg: 4, scope: !4365, file: !646, line: 232, type: !47)
!4373 = !DILocalVariable(name: "authors", scope: !4365, file: !646, line: 234, type: !4374)
!4374 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !52, line: 52, baseType: !4375)
!4375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4376, line: 32, baseType: !4377)
!4376 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!4377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !646, line: 234, baseType: !4378)
!4378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4336, size: 192, elements: !87)
!4379 = !DILocation(line: 0, scope: !4365)
!4380 = !DILocation(line: 234, column: 3, scope: !4365)
!4381 = !DILocation(line: 234, column: 11, scope: !4365)
!4382 = !DILocation(line: 236, column: 3, scope: !4365)
!4383 = !DILocation(line: 237, column: 3, scope: !4365)
!4384 = !DILocation(line: 238, column: 3, scope: !4365)
!4385 = !DILocation(line: 239, column: 1, scope: !4365)
!4386 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !646, file: !646, line: 242, type: !131, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !645, retainedNodes: !50)
!4387 = !DILocation(line: 244, column: 3, scope: !4386)
!4388 = !DILocation(line: 249, column: 3, scope: !4386)
!4389 = !DILocation(line: 255, column: 3, scope: !4386)
!4390 = !DILocation(line: 260, column: 3, scope: !4386)
!4391 = !DILocation(line: 262, column: 1, scope: !4386)
!4392 = distinct !DISubprogram(name: "xnmalloc", scope: !153, file: !153, line: 99, type: !4393, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !4395)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{!102, !104, !104}
!4395 = !{!4396, !4397}
!4396 = !DILocalVariable(name: "n", arg: 1, scope: !4392, file: !153, line: 99, type: !104)
!4397 = !DILocalVariable(name: "s", arg: 2, scope: !4392, file: !153, line: 99, type: !104)
!4398 = !DILocation(line: 0, scope: !4392)
!4399 = !DILocation(line: 101, column: 7, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4392, file: !153, line: 101, column: 7)
!4401 = !DILocation(line: 101, column: 7, scope: !4392)
!4402 = !DILocation(line: 102, column: 5, scope: !4400)
!4403 = !DILocation(line: 103, column: 21, scope: !4392)
!4404 = !DILocalVariable(name: "n", arg: 1, scope: !4405, file: !688, line: 39, type: !104)
!4405 = distinct !DISubprogram(name: "xmalloc", scope: !688, file: !688, line: 39, type: !4406, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !4408)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{!102, !104}
!4408 = !{!4404, !4409}
!4409 = !DILocalVariable(name: "p", scope: !4405, file: !688, line: 41, type: !102)
!4410 = !DILocation(line: 0, scope: !4405, inlinedAt: !4411)
!4411 = distinct !DILocation(line: 103, column: 10, scope: !4392)
!4412 = !DILocation(line: 41, column: 13, scope: !4405, inlinedAt: !4411)
!4413 = !DILocation(line: 42, column: 8, scope: !4414, inlinedAt: !4411)
!4414 = distinct !DILexicalBlock(scope: !4405, file: !688, line: 42, column: 7)
!4415 = !DILocation(line: 42, column: 15, scope: !4414, inlinedAt: !4411)
!4416 = !DILocation(line: 42, column: 10, scope: !4414, inlinedAt: !4411)
!4417 = !DILocation(line: 43, column: 5, scope: !4414, inlinedAt: !4411)
!4418 = !DILocation(line: 103, column: 3, scope: !4392)
!4419 = !DILocation(line: 0, scope: !4405)
!4420 = !DILocation(line: 41, column: 13, scope: !4405)
!4421 = !DILocation(line: 42, column: 8, scope: !4414)
!4422 = !DILocation(line: 42, column: 15, scope: !4414)
!4423 = !DILocation(line: 42, column: 10, scope: !4414)
!4424 = !DILocation(line: 43, column: 5, scope: !4414)
!4425 = !DILocation(line: 44, column: 3, scope: !4405)
!4426 = distinct !DISubprogram(name: "xnrealloc", scope: !153, file: !153, line: 112, type: !4427, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !4429)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{!102, !102, !104, !104}
!4429 = !{!4430, !4431, !4432}
!4430 = !DILocalVariable(name: "p", arg: 1, scope: !4426, file: !153, line: 112, type: !102)
!4431 = !DILocalVariable(name: "n", arg: 2, scope: !4426, file: !153, line: 112, type: !104)
!4432 = !DILocalVariable(name: "s", arg: 3, scope: !4426, file: !153, line: 112, type: !104)
!4433 = !DILocation(line: 0, scope: !4426)
!4434 = !DILocation(line: 114, column: 7, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4426, file: !153, line: 114, column: 7)
!4436 = !DILocation(line: 114, column: 7, scope: !4426)
!4437 = !DILocation(line: 115, column: 5, scope: !4435)
!4438 = !DILocation(line: 116, column: 25, scope: !4426)
!4439 = !DILocalVariable(name: "p", arg: 1, scope: !4440, file: !688, line: 51, type: !102)
!4440 = distinct !DISubprogram(name: "xrealloc", scope: !688, file: !688, line: 51, type: !4441, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !4443)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!102, !102, !104}
!4443 = !{!4439, !4444}
!4444 = !DILocalVariable(name: "n", arg: 2, scope: !4440, file: !688, line: 51, type: !104)
!4445 = !DILocation(line: 0, scope: !4440, inlinedAt: !4446)
!4446 = distinct !DILocation(line: 116, column: 10, scope: !4426)
!4447 = !DILocation(line: 53, column: 8, scope: !4448, inlinedAt: !4446)
!4448 = distinct !DILexicalBlock(scope: !4440, file: !688, line: 53, column: 7)
!4449 = !DILocation(line: 53, column: 13, scope: !4448, inlinedAt: !4446)
!4450 = !DILocation(line: 53, column: 10, scope: !4448, inlinedAt: !4446)
!4451 = !DILocation(line: 57, column: 7, scope: !4452, inlinedAt: !4446)
!4452 = distinct !DILexicalBlock(scope: !4448, file: !688, line: 54, column: 5)
!4453 = !DILocation(line: 58, column: 7, scope: !4452, inlinedAt: !4446)
!4454 = !DILocation(line: 61, column: 7, scope: !4440, inlinedAt: !4446)
!4455 = !DILocation(line: 62, column: 8, scope: !4456, inlinedAt: !4446)
!4456 = distinct !DILexicalBlock(scope: !4440, file: !688, line: 62, column: 7)
!4457 = !DILocation(line: 62, column: 13, scope: !4456, inlinedAt: !4446)
!4458 = !DILocation(line: 62, column: 10, scope: !4456, inlinedAt: !4446)
!4459 = !DILocation(line: 63, column: 5, scope: !4456, inlinedAt: !4446)
!4460 = !DILocation(line: 116, column: 3, scope: !4426)
!4461 = !DILocation(line: 0, scope: !4440)
!4462 = !DILocation(line: 53, column: 8, scope: !4448)
!4463 = !DILocation(line: 53, column: 13, scope: !4448)
!4464 = !DILocation(line: 53, column: 10, scope: !4448)
!4465 = !DILocation(line: 57, column: 7, scope: !4452)
!4466 = !DILocation(line: 58, column: 7, scope: !4452)
!4467 = !DILocation(line: 61, column: 7, scope: !4440)
!4468 = !DILocation(line: 62, column: 8, scope: !4456)
!4469 = !DILocation(line: 62, column: 13, scope: !4456)
!4470 = !DILocation(line: 62, column: 10, scope: !4456)
!4471 = !DILocation(line: 63, column: 5, scope: !4456)
!4472 = !DILocation(line: 65, column: 1, scope: !4440)
!4473 = !DILocation(line: 0, scope: !691)
!4474 = !DILocation(line: 176, column: 14, scope: !691)
!4475 = !DILocation(line: 178, column: 9, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !691, file: !153, line: 178, column: 7)
!4477 = !DILocation(line: 178, column: 7, scope: !691)
!4478 = !DILocation(line: 180, column: 13, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4480, file: !153, line: 180, column: 11)
!4480 = distinct !DILexicalBlock(scope: !4476, file: !153, line: 179, column: 5)
!4481 = !DILocation(line: 180, column: 11, scope: !4480)
!4482 = !DILocation(line: 188, column: 30, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4479, file: !153, line: 181, column: 9)
!4484 = !DILocation(line: 189, column: 16, scope: !4483)
!4485 = !DILocation(line: 189, column: 13, scope: !4483)
!4486 = !DILocation(line: 190, column: 9, scope: !4483)
!4487 = !DILocation(line: 191, column: 11, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4480, file: !153, line: 191, column: 11)
!4489 = !DILocation(line: 191, column: 11, scope: !4480)
!4490 = !DILocation(line: 206, column: 7, scope: !691)
!4491 = !DILocation(line: 207, column: 25, scope: !691)
!4492 = !DILocation(line: 0, scope: !4440, inlinedAt: !4493)
!4493 = distinct !DILocation(line: 207, column: 10, scope: !691)
!4494 = !DILocation(line: 53, column: 10, scope: !4448, inlinedAt: !4493)
!4495 = !DILocation(line: 192, column: 9, scope: !4488)
!4496 = !DILocation(line: 200, column: 69, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4498, file: !153, line: 200, column: 11)
!4498 = distinct !DILexicalBlock(scope: !4476, file: !153, line: 195, column: 5)
!4499 = !DILocation(line: 201, column: 11, scope: !4497)
!4500 = !DILocation(line: 200, column: 11, scope: !4498)
!4501 = !DILocation(line: 202, column: 9, scope: !4497)
!4502 = !DILocation(line: 203, column: 14, scope: !4498)
!4503 = !DILocation(line: 203, column: 18, scope: !4498)
!4504 = !DILocation(line: 203, column: 9, scope: !4498)
!4505 = !DILocation(line: 53, column: 8, scope: !4448, inlinedAt: !4493)
!4506 = !DILocation(line: 57, column: 7, scope: !4452, inlinedAt: !4493)
!4507 = !DILocation(line: 58, column: 7, scope: !4452, inlinedAt: !4493)
!4508 = !DILocation(line: 61, column: 7, scope: !4440, inlinedAt: !4493)
!4509 = !DILocation(line: 62, column: 8, scope: !4456, inlinedAt: !4493)
!4510 = !DILocation(line: 62, column: 13, scope: !4456, inlinedAt: !4493)
!4511 = !DILocation(line: 62, column: 10, scope: !4456, inlinedAt: !4493)
!4512 = !DILocation(line: 63, column: 5, scope: !4456, inlinedAt: !4493)
!4513 = !DILocation(line: 207, column: 3, scope: !691)
!4514 = distinct !DISubprogram(name: "xcharalloc", scope: !153, file: !153, line: 216, type: !3681, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !4515)
!4515 = !{!4516}
!4516 = !DILocalVariable(name: "n", arg: 1, scope: !4514, file: !153, line: 216, type: !104)
!4517 = !DILocation(line: 0, scope: !4514)
!4518 = !DILocation(line: 0, scope: !4405, inlinedAt: !4519)
!4519 = distinct !DILocation(line: 218, column: 10, scope: !4514)
!4520 = !DILocation(line: 41, column: 13, scope: !4405, inlinedAt: !4519)
!4521 = !DILocation(line: 42, column: 8, scope: !4414, inlinedAt: !4519)
!4522 = !DILocation(line: 42, column: 15, scope: !4414, inlinedAt: !4519)
!4523 = !DILocation(line: 42, column: 10, scope: !4414, inlinedAt: !4519)
!4524 = !DILocation(line: 43, column: 5, scope: !4414, inlinedAt: !4519)
!4525 = !DILocation(line: 218, column: 3, scope: !4514)
!4526 = distinct !DISubprogram(name: "x2realloc", scope: !688, file: !688, line: 74, type: !4527, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !4529)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{!102, !102, !275}
!4529 = !{!4530, !4531}
!4530 = !DILocalVariable(name: "p", arg: 1, scope: !4526, file: !688, line: 74, type: !102)
!4531 = !DILocalVariable(name: "pn", arg: 2, scope: !4526, file: !688, line: 74, type: !275)
!4532 = !DILocation(line: 0, scope: !4526)
!4533 = !DILocation(line: 0, scope: !691, inlinedAt: !4534)
!4534 = distinct !DILocation(line: 76, column: 10, scope: !4526)
!4535 = !DILocation(line: 176, column: 14, scope: !691, inlinedAt: !4534)
!4536 = !DILocation(line: 178, column: 9, scope: !4476, inlinedAt: !4534)
!4537 = !DILocation(line: 178, column: 7, scope: !691, inlinedAt: !4534)
!4538 = !DILocation(line: 180, column: 13, scope: !4479, inlinedAt: !4534)
!4539 = !DILocation(line: 180, column: 11, scope: !4480, inlinedAt: !4534)
!4540 = !DILocation(line: 191, column: 11, scope: !4488, inlinedAt: !4534)
!4541 = !DILocation(line: 191, column: 11, scope: !4480, inlinedAt: !4534)
!4542 = !DILocation(line: 206, column: 7, scope: !691, inlinedAt: !4534)
!4543 = !DILocation(line: 0, scope: !4440, inlinedAt: !4544)
!4544 = distinct !DILocation(line: 207, column: 10, scope: !691, inlinedAt: !4534)
!4545 = !DILocation(line: 53, column: 10, scope: !4448, inlinedAt: !4544)
!4546 = !DILocation(line: 192, column: 9, scope: !4488, inlinedAt: !4534)
!4547 = !DILocation(line: 201, column: 11, scope: !4497, inlinedAt: !4534)
!4548 = !DILocation(line: 200, column: 11, scope: !4498, inlinedAt: !4534)
!4549 = !DILocation(line: 202, column: 9, scope: !4497, inlinedAt: !4534)
!4550 = !DILocation(line: 203, column: 14, scope: !4498, inlinedAt: !4534)
!4551 = !DILocation(line: 203, column: 18, scope: !4498, inlinedAt: !4534)
!4552 = !DILocation(line: 203, column: 9, scope: !4498, inlinedAt: !4534)
!4553 = !DILocation(line: 53, column: 8, scope: !4448, inlinedAt: !4544)
!4554 = !DILocation(line: 57, column: 7, scope: !4452, inlinedAt: !4544)
!4555 = !DILocation(line: 58, column: 7, scope: !4452, inlinedAt: !4544)
!4556 = !DILocation(line: 61, column: 7, scope: !4440, inlinedAt: !4544)
!4557 = !DILocation(line: 62, column: 8, scope: !4456, inlinedAt: !4544)
!4558 = !DILocation(line: 62, column: 13, scope: !4456, inlinedAt: !4544)
!4559 = !DILocation(line: 62, column: 10, scope: !4456, inlinedAt: !4544)
!4560 = !DILocation(line: 63, column: 5, scope: !4456, inlinedAt: !4544)
!4561 = !DILocation(line: 76, column: 3, scope: !4526)
!4562 = distinct !DISubprogram(name: "xzalloc", scope: !688, file: !688, line: 84, type: !4406, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !4563)
!4563 = !{!4564}
!4564 = !DILocalVariable(name: "n", arg: 1, scope: !4562, file: !688, line: 84, type: !104)
!4565 = !DILocation(line: 0, scope: !4562)
!4566 = !DILocalVariable(name: "n", arg: 1, scope: !4567, file: !688, line: 93, type: !104)
!4567 = distinct !DISubprogram(name: "xcalloc", scope: !688, file: !688, line: 93, type: !4393, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !4568)
!4568 = !{!4566, !4569, !4570}
!4569 = !DILocalVariable(name: "s", arg: 2, scope: !4567, file: !688, line: 93, type: !104)
!4570 = !DILocalVariable(name: "p", scope: !4567, file: !688, line: 95, type: !102)
!4571 = !DILocation(line: 0, scope: !4567, inlinedAt: !4572)
!4572 = distinct !DILocation(line: 86, column: 10, scope: !4562)
!4573 = !DILocation(line: 100, column: 7, scope: !4574, inlinedAt: !4572)
!4574 = distinct !DILexicalBlock(scope: !4567, file: !688, line: 100, column: 7)
!4575 = !DILocation(line: 101, column: 7, scope: !4574, inlinedAt: !4572)
!4576 = !DILocation(line: 101, column: 18, scope: !4574, inlinedAt: !4572)
!4577 = !DILocation(line: 101, column: 16, scope: !4574, inlinedAt: !4572)
!4578 = !DILocation(line: 100, column: 7, scope: !4567, inlinedAt: !4572)
!4579 = !DILocation(line: 102, column: 5, scope: !4574, inlinedAt: !4572)
!4580 = !DILocation(line: 86, column: 3, scope: !4562)
!4581 = !DILocation(line: 0, scope: !4567)
!4582 = !DILocation(line: 100, column: 7, scope: !4574)
!4583 = !DILocation(line: 101, column: 7, scope: !4574)
!4584 = !DILocation(line: 101, column: 18, scope: !4574)
!4585 = !DILocation(line: 101, column: 16, scope: !4574)
!4586 = !DILocation(line: 100, column: 7, scope: !4567)
!4587 = !DILocation(line: 102, column: 5, scope: !4574)
!4588 = !DILocation(line: 103, column: 3, scope: !4567)
!4589 = distinct !DISubprogram(name: "xmemdup", scope: !688, file: !688, line: 111, type: !4590, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !4592)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!102, !177, !104}
!4592 = !{!4593, !4594}
!4593 = !DILocalVariable(name: "p", arg: 1, scope: !4589, file: !688, line: 111, type: !177)
!4594 = !DILocalVariable(name: "s", arg: 2, scope: !4589, file: !688, line: 111, type: !104)
!4595 = !DILocation(line: 0, scope: !4589)
!4596 = !DILocation(line: 0, scope: !4405, inlinedAt: !4597)
!4597 = distinct !DILocation(line: 113, column: 18, scope: !4589)
!4598 = !DILocation(line: 41, column: 13, scope: !4405, inlinedAt: !4597)
!4599 = !DILocation(line: 42, column: 8, scope: !4414, inlinedAt: !4597)
!4600 = !DILocation(line: 42, column: 15, scope: !4414, inlinedAt: !4597)
!4601 = !DILocation(line: 42, column: 10, scope: !4414, inlinedAt: !4597)
!4602 = !DILocation(line: 43, column: 5, scope: !4414, inlinedAt: !4597)
!4603 = !DILocalVariable(name: "__dest", arg: 1, scope: !4604, file: !2236, line: 31, type: !2639)
!4604 = distinct !DISubprogram(name: "memcpy", scope: !2236, file: !2236, line: 31, type: !2637, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !4605)
!4605 = !{!4603, !4606, !4607}
!4606 = !DILocalVariable(name: "__src", arg: 2, scope: !4604, file: !2236, line: 31, type: !2640)
!4607 = !DILocalVariable(name: "__len", arg: 3, scope: !4604, file: !2236, line: 31, type: !104)
!4608 = !DILocation(line: 0, scope: !4604, inlinedAt: !4609)
!4609 = distinct !DILocation(line: 113, column: 10, scope: !4589)
!4610 = !DILocation(line: 34, column: 10, scope: !4604, inlinedAt: !4609)
!4611 = !DILocation(line: 113, column: 3, scope: !4589)
!4612 = distinct !DISubprogram(name: "xstrdup", scope: !688, file: !688, line: 119, type: !124, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !4613)
!4613 = !{!4614}
!4614 = !DILocalVariable(name: "string", arg: 1, scope: !4612, file: !688, line: 119, type: !47)
!4615 = !DILocation(line: 0, scope: !4612)
!4616 = !DILocation(line: 121, column: 27, scope: !4612)
!4617 = !DILocation(line: 121, column: 43, scope: !4612)
!4618 = !DILocation(line: 0, scope: !4589, inlinedAt: !4619)
!4619 = distinct !DILocation(line: 121, column: 10, scope: !4612)
!4620 = !DILocation(line: 0, scope: !4405, inlinedAt: !4621)
!4621 = distinct !DILocation(line: 113, column: 18, scope: !4589, inlinedAt: !4619)
!4622 = !DILocation(line: 41, column: 13, scope: !4405, inlinedAt: !4621)
!4623 = !DILocation(line: 42, column: 8, scope: !4414, inlinedAt: !4621)
!4624 = !DILocation(line: 42, column: 15, scope: !4414, inlinedAt: !4621)
!4625 = !DILocation(line: 42, column: 10, scope: !4414, inlinedAt: !4621)
!4626 = !DILocation(line: 43, column: 5, scope: !4414, inlinedAt: !4621)
!4627 = !DILocation(line: 0, scope: !4604, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 113, column: 10, scope: !4589, inlinedAt: !4619)
!4629 = !DILocation(line: 34, column: 10, scope: !4604, inlinedAt: !4628)
!4630 = !DILocation(line: 121, column: 3, scope: !4612)
!4631 = distinct !DISubprogram(name: "xalloc_die", scope: !704, file: !704, line: 32, type: !131, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !50)
!4632 = !DILocation(line: 34, column: 10, scope: !4631)
!4633 = !DILocation(line: 34, column: 33, scope: !4631)
!4634 = !DILocation(line: 34, column: 3, scope: !4631)
!4635 = !DILocation(line: 40, column: 3, scope: !4631)
!4636 = distinct !DISubprogram(name: "xstrndup", scope: !707, file: !707, line: 30, type: !3871, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !4637)
!4637 = !{!4638, !4639, !4640}
!4638 = !DILocalVariable(name: "string", arg: 1, scope: !4636, file: !707, line: 30, type: !47)
!4639 = !DILocalVariable(name: "n", arg: 2, scope: !4636, file: !707, line: 30, type: !104)
!4640 = !DILocalVariable(name: "s", scope: !4636, file: !707, line: 32, type: !45)
!4641 = !DILocation(line: 0, scope: !4636)
!4642 = !DILocation(line: 32, column: 13, scope: !4636)
!4643 = !DILocation(line: 33, column: 9, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4636, file: !707, line: 33, column: 7)
!4645 = !DILocation(line: 33, column: 7, scope: !4636)
!4646 = !DILocation(line: 34, column: 5, scope: !4644)
!4647 = !DILocation(line: 35, column: 3, scope: !4636)
!4648 = distinct !DISubprogram(name: "rpl_calloc", scope: !710, file: !710, line: 42, type: !4393, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !4649)
!4649 = !{!4650, !4651, !4652, !4653}
!4650 = !DILocalVariable(name: "n", arg: 1, scope: !4648, file: !710, line: 42, type: !104)
!4651 = !DILocalVariable(name: "s", arg: 2, scope: !4648, file: !710, line: 42, type: !104)
!4652 = !DILocalVariable(name: "result", scope: !4648, file: !710, line: 44, type: !102)
!4653 = !DILocalVariable(name: "bytes", scope: !4654, file: !710, line: 56, type: !104)
!4654 = distinct !DILexicalBlock(scope: !4655, file: !710, line: 53, column: 5)
!4655 = distinct !DILexicalBlock(scope: !4648, file: !710, line: 47, column: 7)
!4656 = !DILocation(line: 0, scope: !4648)
!4657 = !DILocation(line: 47, column: 9, scope: !4655)
!4658 = !DILocation(line: 47, column: 19, scope: !4655)
!4659 = !DILocation(line: 47, column: 14, scope: !4655)
!4660 = !DILocation(line: 0, scope: !4654)
!4661 = !DILocation(line: 57, column: 21, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4654, file: !710, line: 57, column: 11)
!4663 = !DILocation(line: 57, column: 11, scope: !4654)
!4664 = !DILocation(line: 59, column: 11, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4662, file: !710, line: 58, column: 9)
!4666 = !DILocation(line: 59, column: 17, scope: !4665)
!4667 = !DILocation(line: 65, column: 12, scope: !4648)
!4668 = !DILocation(line: 72, column: 3, scope: !4648)
!4669 = !DILocation(line: 73, column: 1, scope: !4648)
!4670 = distinct !DISubprogram(name: "rpl_fclose", scope: !713, file: !713, line: 58, type: !4671, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !4675)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!49, !4673}
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1583, line: 7, baseType: !719)
!4675 = !{!4676, !4677, !4678, !4679}
!4676 = !DILocalVariable(name: "fp", arg: 1, scope: !4670, file: !713, line: 58, type: !4673)
!4677 = !DILocalVariable(name: "saved_errno", scope: !4670, file: !713, line: 60, type: !49)
!4678 = !DILocalVariable(name: "fd", scope: !4670, file: !713, line: 61, type: !49)
!4679 = !DILocalVariable(name: "result", scope: !4670, file: !713, line: 62, type: !49)
!4680 = !DILocation(line: 0, scope: !4670)
!4681 = !DILocation(line: 65, column: 8, scope: !4670)
!4682 = !DILocation(line: 66, column: 10, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4670, file: !713, line: 66, column: 7)
!4684 = !DILocation(line: 66, column: 7, scope: !4670)
!4685 = !DILocation(line: 67, column: 12, scope: !4683)
!4686 = !DILocation(line: 67, column: 5, scope: !4683)
!4687 = !DILocation(line: 72, column: 9, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4670, file: !713, line: 72, column: 7)
!4689 = !DILocation(line: 72, column: 23, scope: !4688)
!4690 = !DILocation(line: 72, column: 33, scope: !4688)
!4691 = !DILocation(line: 72, column: 26, scope: !4688)
!4692 = !DILocation(line: 72, column: 59, scope: !4688)
!4693 = !DILocation(line: 73, column: 7, scope: !4688)
!4694 = !DILocation(line: 73, column: 10, scope: !4688)
!4695 = !DILocation(line: 72, column: 7, scope: !4670)
!4696 = !DILocation(line: 100, column: 12, scope: !4670)
!4697 = !DILocation(line: 105, column: 7, scope: !4670)
!4698 = !DILocation(line: 74, column: 19, scope: !4688)
!4699 = !DILocation(line: 105, column: 19, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4670, file: !713, line: 105, column: 7)
!4701 = !DILocation(line: 107, column: 13, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4700, file: !713, line: 106, column: 5)
!4703 = !DILocation(line: 109, column: 5, scope: !4702)
!4704 = !DILocation(line: 112, column: 1, scope: !4670)
!4705 = distinct !DISubprogram(name: "rpl_fflush", scope: !757, file: !757, line: 129, type: !4706, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !756, retainedNodes: !4710)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!49, !4708}
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1583, line: 7, baseType: !763)
!4710 = !{!4711}
!4711 = !DILocalVariable(name: "stream", arg: 1, scope: !4705, file: !757, line: 129, type: !4708)
!4712 = !DILocation(line: 0, scope: !4705)
!4713 = !DILocation(line: 150, column: 14, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4705, file: !757, line: 150, column: 7)
!4715 = !DILocation(line: 150, column: 22, scope: !4714)
!4716 = !DILocation(line: 150, column: 27, scope: !4714)
!4717 = !DILocation(line: 150, column: 7, scope: !4705)
!4718 = !DILocation(line: 151, column: 12, scope: !4714)
!4719 = !DILocation(line: 151, column: 5, scope: !4714)
!4720 = !DILocalVariable(name: "fp", arg: 1, scope: !4721, file: !757, line: 41, type: !4708)
!4721 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !757, file: !757, line: 41, type: !4722, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !756, retainedNodes: !4724)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{null, !4708}
!4724 = !{!4720}
!4725 = !DILocation(line: 0, scope: !4721, inlinedAt: !4726)
!4726 = distinct !DILocation(line: 156, column: 3, scope: !4705)
!4727 = !DILocation(line: 43, column: 11, scope: !4728, inlinedAt: !4726)
!4728 = distinct !DILexicalBlock(scope: !4721, file: !757, line: 43, column: 7)
!4729 = !DILocation(line: 43, column: 18, scope: !4728, inlinedAt: !4726)
!4730 = !DILocation(line: 43, column: 7, scope: !4721, inlinedAt: !4726)
!4731 = !DILocation(line: 45, column: 5, scope: !4728, inlinedAt: !4726)
!4732 = !DILocation(line: 158, column: 10, scope: !4705)
!4733 = !DILocation(line: 158, column: 3, scope: !4705)
!4734 = !DILocation(line: 235, column: 1, scope: !4705)
!4735 = distinct !DISubprogram(name: "freadptr", scope: !798, file: !798, line: 30, type: !4736, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !4772)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!47, !4738, !275}
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1583, line: 7, baseType: !4740)
!4740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !57, line: 49, size: 1728, elements: !4741)
!4741 = !{!4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4740, file: !57, line: 51, baseType: !49, size: 32)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4740, file: !57, line: 54, baseType: !45, size: 64, offset: 64)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4740, file: !57, line: 55, baseType: !45, size: 64, offset: 128)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4740, file: !57, line: 56, baseType: !45, size: 64, offset: 192)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4740, file: !57, line: 57, baseType: !45, size: 64, offset: 256)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4740, file: !57, line: 58, baseType: !45, size: 64, offset: 320)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4740, file: !57, line: 59, baseType: !45, size: 64, offset: 384)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4740, file: !57, line: 60, baseType: !45, size: 64, offset: 448)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4740, file: !57, line: 61, baseType: !45, size: 64, offset: 512)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4740, file: !57, line: 64, baseType: !45, size: 64, offset: 576)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4740, file: !57, line: 65, baseType: !45, size: 64, offset: 640)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4740, file: !57, line: 66, baseType: !45, size: 64, offset: 704)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4740, file: !57, line: 68, baseType: !72, size: 64, offset: 768)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4740, file: !57, line: 70, baseType: !4756, size: 64, offset: 832)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4740, file: !57, line: 72, baseType: !49, size: 32, offset: 896)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4740, file: !57, line: 73, baseType: !49, size: 32, offset: 928)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4740, file: !57, line: 74, baseType: !78, size: 64, offset: 960)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4740, file: !57, line: 77, baseType: !82, size: 16, offset: 1024)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4740, file: !57, line: 78, baseType: !84, size: 8, offset: 1040)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4740, file: !57, line: 79, baseType: !86, size: 8, offset: 1048)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4740, file: !57, line: 81, baseType: !90, size: 64, offset: 1088)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4740, file: !57, line: 89, baseType: !93, size: 64, offset: 1152)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4740, file: !57, line: 91, baseType: !95, size: 64, offset: 1216)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4740, file: !57, line: 92, baseType: !98, size: 64, offset: 1280)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4740, file: !57, line: 93, baseType: !4756, size: 64, offset: 1344)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4740, file: !57, line: 94, baseType: !102, size: 64, offset: 1408)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4740, file: !57, line: 95, baseType: !104, size: 64, offset: 1472)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4740, file: !57, line: 96, baseType: !49, size: 32, offset: 1536)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4740, file: !57, line: 98, baseType: !109, size: 160, offset: 1568)
!4772 = !{!4773, !4774, !4775}
!4773 = !DILocalVariable(name: "fp", arg: 1, scope: !4735, file: !798, line: 30, type: !4738)
!4774 = !DILocalVariable(name: "sizep", arg: 2, scope: !4735, file: !798, line: 30, type: !275)
!4775 = !DILocalVariable(name: "size", scope: !4735, file: !798, line: 32, type: !104)
!4776 = !DILocation(line: 0, scope: !4735)
!4777 = !DILocation(line: 37, column: 11, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4735, file: !798, line: 37, column: 7)
!4779 = !DILocation(line: 37, column: 31, scope: !4778)
!4780 = !{!1649, !1387, i64 32}
!4781 = !DILocation(line: 37, column: 25, scope: !4778)
!4782 = !DILocation(line: 37, column: 7, scope: !4735)
!4783 = !DILocation(line: 39, column: 14, scope: !4735)
!4784 = !DILocation(line: 39, column: 33, scope: !4735)
!4785 = !DILocation(line: 39, column: 27, scope: !4735)
!4786 = !DILocation(line: 40, column: 12, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4735, file: !798, line: 40, column: 7)
!4788 = !DILocation(line: 40, column: 7, scope: !4735)
!4789 = !DILocation(line: 42, column: 10, scope: !4735)
!4790 = !DILocation(line: 43, column: 3, scope: !4735)
!4791 = !DILocation(line: 125, column: 1, scope: !4735)
!4792 = distinct !DISubprogram(name: "rpl_fseeko", scope: !800, file: !800, line: 28, type: !4793, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !4797)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{!49, !4795, !2461, !49}
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1583, line: 7, baseType: !806)
!4797 = !{!4798, !4799, !4800, !4801}
!4798 = !DILocalVariable(name: "fp", arg: 1, scope: !4792, file: !800, line: 28, type: !4795)
!4799 = !DILocalVariable(name: "offset", arg: 2, scope: !4792, file: !800, line: 28, type: !2461)
!4800 = !DILocalVariable(name: "whence", arg: 3, scope: !4792, file: !800, line: 28, type: !49)
!4801 = !DILocalVariable(name: "pos", scope: !4802, file: !800, line: 117, type: !2461)
!4802 = distinct !DILexicalBlock(scope: !4803, file: !800, line: 113, column: 5)
!4803 = distinct !DILexicalBlock(scope: !4792, file: !800, line: 52, column: 7)
!4804 = !DILocation(line: 0, scope: !4792)
!4805 = !DILocation(line: 52, column: 11, scope: !4803)
!4806 = !DILocation(line: 52, column: 31, scope: !4803)
!4807 = !DILocation(line: 52, column: 24, scope: !4803)
!4808 = !DILocation(line: 53, column: 7, scope: !4803)
!4809 = !DILocation(line: 53, column: 14, scope: !4803)
!4810 = !DILocation(line: 53, column: 35, scope: !4803)
!4811 = !DILocation(line: 53, column: 28, scope: !4803)
!4812 = !DILocation(line: 54, column: 7, scope: !4803)
!4813 = !DILocation(line: 54, column: 14, scope: !4803)
!4814 = !{!1649, !1387, i64 72}
!4815 = !DILocation(line: 54, column: 28, scope: !4803)
!4816 = !DILocation(line: 52, column: 7, scope: !4792)
!4817 = !DILocation(line: 117, column: 26, scope: !4802)
!4818 = !DILocation(line: 117, column: 19, scope: !4802)
!4819 = !DILocation(line: 0, scope: !4802)
!4820 = !DILocation(line: 118, column: 15, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4802, file: !800, line: 118, column: 11)
!4822 = !DILocation(line: 118, column: 11, scope: !4802)
!4823 = !DILocation(line: 129, column: 11, scope: !4802)
!4824 = !DILocation(line: 129, column: 18, scope: !4802)
!4825 = !DILocation(line: 130, column: 11, scope: !4802)
!4826 = !DILocation(line: 130, column: 19, scope: !4802)
!4827 = !{!1649, !1492, i64 144}
!4828 = !DILocation(line: 161, column: 7, scope: !4802)
!4829 = !DILocation(line: 163, column: 10, scope: !4792)
!4830 = !DILocation(line: 163, column: 3, scope: !4792)
!4831 = !DILocation(line: 164, column: 1, scope: !4792)
!4832 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !841, file: !841, line: 86, type: !4833, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !840, retainedNodes: !4839)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{!104, !4835, !47, !104, !4836}
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2959, line: 6, baseType: !4838)
!4838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !480, line: 21, baseType: !847)
!4839 = !{!4840, !4841, !4842, !4843, !4844, !4845, !4846}
!4840 = !DILocalVariable(name: "pwc", arg: 1, scope: !4832, file: !841, line: 86, type: !4835)
!4841 = !DILocalVariable(name: "s", arg: 2, scope: !4832, file: !841, line: 86, type: !47)
!4842 = !DILocalVariable(name: "n", arg: 3, scope: !4832, file: !841, line: 86, type: !104)
!4843 = !DILocalVariable(name: "ps", arg: 4, scope: !4832, file: !841, line: 86, type: !4836)
!4844 = !DILocalVariable(name: "ret", scope: !4832, file: !841, line: 88, type: !104)
!4845 = !DILocalVariable(name: "wc", scope: !4832, file: !841, line: 89, type: !2963)
!4846 = !DILocalVariable(name: "uc", scope: !4847, file: !841, line: 156, type: !180)
!4847 = distinct !DILexicalBlock(scope: !4848, file: !841, line: 155, column: 5)
!4848 = distinct !DILexicalBlock(scope: !4832, file: !841, line: 154, column: 7)
!4849 = !DILocation(line: 0, scope: !4832)
!4850 = !DILocation(line: 89, column: 3, scope: !4832)
!4851 = !DILocation(line: 105, column: 9, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4832, file: !841, line: 105, column: 7)
!4853 = !DILocation(line: 105, column: 7, scope: !4832)
!4854 = !DILocation(line: 145, column: 9, scope: !4832)
!4855 = !DILocation(line: 154, column: 19, scope: !4848)
!4856 = !DILocation(line: 154, column: 31, scope: !4848)
!4857 = !DILocation(line: 154, column: 26, scope: !4848)
!4858 = !DILocation(line: 154, column: 41, scope: !4848)
!4859 = !DILocation(line: 154, column: 7, scope: !4832)
!4860 = !DILocation(line: 156, column: 26, scope: !4847)
!4861 = !DILocation(line: 0, scope: !4847)
!4862 = !DILocation(line: 157, column: 14, scope: !4847)
!4863 = !DILocation(line: 157, column: 12, scope: !4847)
!4864 = !DILocation(line: 163, column: 1, scope: !4832)
!4865 = distinct !DISubprogram(name: "close_stream", scope: !860, file: !860, line: 56, type: !4866, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !4870)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!49, !4868}
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1583, line: 7, baseType: !866)
!4870 = !{!4871, !4872, !4874, !4875}
!4871 = !DILocalVariable(name: "stream", arg: 1, scope: !4865, file: !860, line: 56, type: !4868)
!4872 = !DILocalVariable(name: "some_pending", scope: !4865, file: !860, line: 58, type: !4873)
!4873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!4874 = !DILocalVariable(name: "prev_fail", scope: !4865, file: !860, line: 59, type: !4873)
!4875 = !DILocalVariable(name: "fclose_fail", scope: !4865, file: !860, line: 60, type: !4873)
!4876 = !DILocation(line: 0, scope: !4865)
!4877 = !DILocation(line: 58, column: 30, scope: !4865)
!4878 = !DILocalVariable(name: "__stream", arg: 1, scope: !4879, file: !1640, line: 135, type: !4868)
!4879 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1640, file: !1640, line: 135, type: !4866, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !859, retainedNodes: !4880)
!4880 = !{!4878}
!4881 = !DILocation(line: 0, scope: !4879, inlinedAt: !4882)
!4882 = distinct !DILocation(line: 59, column: 27, scope: !4865)
!4883 = !DILocation(line: 137, column: 10, scope: !4879, inlinedAt: !4882)
!4884 = !DILocation(line: 59, column: 43, scope: !4865)
!4885 = !DILocation(line: 60, column: 29, scope: !4865)
!4886 = !DILocation(line: 60, column: 45, scope: !4865)
!4887 = !DILocation(line: 70, column: 17, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4865, file: !860, line: 70, column: 7)
!4889 = !DILocation(line: 58, column: 50, scope: !4865)
!4890 = !DILocation(line: 70, column: 33, scope: !4888)
!4891 = !DILocation(line: 70, column: 53, scope: !4888)
!4892 = !DILocation(line: 70, column: 59, scope: !4888)
!4893 = !DILocation(line: 70, column: 7, scope: !4865)
!4894 = !DILocation(line: 72, column: 11, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4888, file: !860, line: 71, column: 5)
!4896 = !DILocation(line: 73, column: 9, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4895, file: !860, line: 72, column: 11)
!4898 = !DILocation(line: 73, column: 15, scope: !4897)
!4899 = !DILocation(line: 78, column: 1, scope: !4865)
!4900 = distinct !DISubprogram(name: "freadseek", scope: !898, file: !898, line: 74, type: !4901, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !897, retainedNodes: !4905)
!4901 = !DISubroutineType(types: !4902)
!4902 = !{!49, !4903, !104}
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1583, line: 7, baseType: !905)
!4905 = !{!4906, !4907, !4908, !4909, !4910, !4912, !4915, !4921, !4923}
!4906 = !DILocalVariable(name: "fp", arg: 1, scope: !4900, file: !898, line: 74, type: !4903)
!4907 = !DILocalVariable(name: "offset", arg: 2, scope: !4900, file: !898, line: 74, type: !104)
!4908 = !DILocalVariable(name: "total_buffered", scope: !4900, file: !898, line: 76, type: !104)
!4909 = !DILocalVariable(name: "fd", scope: !4900, file: !898, line: 77, type: !49)
!4910 = !DILocalVariable(name: "buffered", scope: !4911, file: !898, line: 89, type: !104)
!4911 = distinct !DILexicalBlock(scope: !4900, file: !898, line: 88, column: 5)
!4912 = !DILocalVariable(name: "increment", scope: !4913, file: !898, line: 93, type: !104)
!4913 = distinct !DILexicalBlock(scope: !4914, file: !898, line: 92, column: 9)
!4914 = distinct !DILexicalBlock(scope: !4911, file: !898, line: 91, column: 11)
!4915 = !DILocalVariable(name: "buf", scope: !4916, file: !898, line: 124, type: !4918)
!4916 = distinct !DILexicalBlock(scope: !4917, file: !898, line: 121, column: 5)
!4917 = distinct !DILexicalBlock(scope: !4900, file: !898, line: 115, column: 7)
!4918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32768, elements: !4919)
!4919 = !{!4920}
!4920 = !DISubrange(count: 4096)
!4921 = !DILocalVariable(name: "count", scope: !4922, file: !898, line: 128, type: !104)
!4922 = distinct !DILexicalBlock(scope: !4916, file: !898, line: 127, column: 9)
!4923 = !DILabel(scope: !4900, name: "eof", file: !898, line: 138)
!4924 = !DILocation(line: 0, scope: !4900)
!4925 = !DILocation(line: 79, column: 14, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4900, file: !898, line: 79, column: 7)
!4927 = !DILocation(line: 79, column: 7, scope: !4900)
!4928 = !DILocation(line: 84, column: 20, scope: !4900)
!4929 = !DILocation(line: 0, scope: !4911)
!4930 = !DILocation(line: 0, scope: !4931, inlinedAt: !4937)
!4931 = distinct !DISubprogram(name: "freadptrinc", scope: !898, file: !898, line: 34, type: !4932, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !897, retainedNodes: !4934)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{null, !4903, !104}
!4934 = !{!4935, !4936}
!4935 = !DILocalVariable(name: "fp", arg: 1, scope: !4931, file: !898, line: 34, type: !4903)
!4936 = !DILocalVariable(name: "increment", arg: 2, scope: !4931, file: !898, line: 34, type: !104)
!4937 = distinct !DILocation(line: 95, column: 11, scope: !4913)
!4938 = !DILocation(line: 87, column: 3, scope: !4900)
!4939 = !DILocation(line: 84, column: 18, scope: !4900)
!4940 = !DILocation(line: 87, column: 25, scope: !4900)
!4941 = !DILocation(line: 89, column: 7, scope: !4911)
!4942 = !DILocation(line: 91, column: 11, scope: !4914)
!4943 = !DILocation(line: 91, column: 36, scope: !4914)
!4944 = !DILocation(line: 91, column: 47, scope: !4914)
!4945 = !DILocation(line: 91, column: 56, scope: !4914)
!4946 = !DILocation(line: 91, column: 44, scope: !4914)
!4947 = !DILocation(line: 93, column: 40, scope: !4913)
!4948 = !DILocation(line: 93, column: 31, scope: !4913)
!4949 = !DILocation(line: 0, scope: !4913)
!4950 = !DILocation(line: 41, column: 20, scope: !4931, inlinedAt: !4937)
!4951 = !DILocation(line: 96, column: 18, scope: !4913)
!4952 = !DILocation(line: 97, column: 22, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4913, file: !898, line: 97, column: 15)
!4954 = !DILocation(line: 97, column: 15, scope: !4913)
!4955 = !DILocation(line: 105, column: 11, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4911, file: !898, line: 105, column: 11)
!4957 = !DILocation(line: 105, column: 22, scope: !4956)
!4958 = !DILocation(line: 105, column: 11, scope: !4911)
!4959 = !DILocation(line: 111, column: 5, scope: !4900)
!4960 = !DILocation(line: 107, column: 13, scope: !4911)
!4961 = !DILocation(line: 108, column: 18, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4911, file: !898, line: 108, column: 11)
!4963 = !DILocation(line: 110, column: 21, scope: !4911)
!4964 = distinct !{!4964, !4938, !4959}
!4965 = !DILocation(line: 114, column: 8, scope: !4900)
!4966 = !DILocation(line: 115, column: 10, scope: !4917)
!4967 = !DILocation(line: 115, column: 15, scope: !4917)
!4968 = !DILocation(line: 115, column: 18, scope: !4917)
!4969 = !DILocation(line: 115, column: 42, scope: !4917)
!4970 = !DILocation(line: 115, column: 7, scope: !4900)
!4971 = !DILocation(line: 118, column: 14, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4917, file: !898, line: 116, column: 5)
!4973 = !DILocation(line: 118, column: 7, scope: !4972)
!4974 = !DILocation(line: 124, column: 7, scope: !4916)
!4975 = !DILocation(line: 124, column: 12, scope: !4916)
!4976 = !DILocation(line: 126, column: 7, scope: !4916)
!4977 = !DILocation(line: 128, column: 27, scope: !4922)
!4978 = !DILocation(line: 0, scope: !4922)
!4979 = !DILocation(line: 129, column: 15, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4922, file: !898, line: 129, column: 15)
!4981 = !DILocation(line: 129, column: 41, scope: !4980)
!4982 = !DILocation(line: 129, column: 15, scope: !4922)
!4983 = !DILocation(line: 133, column: 21, scope: !4916)
!4984 = !DILocation(line: 132, column: 9, scope: !4922)
!4985 = distinct !{!4985, !4976, !4986}
!4986 = !DILocation(line: 133, column: 24, scope: !4916)
!4987 = !DILocation(line: 136, column: 4, scope: !4917)
!4988 = !DILocation(line: 138, column: 2, scope: !4900)
!4989 = !DILocation(line: 140, column: 7, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4900, file: !898, line: 140, column: 7)
!4991 = !DILocation(line: 0, scope: !4990)
!4992 = !DILocation(line: 145, column: 1, scope: !4900)
!4993 = distinct !DISubprogram(name: "hard_locale", scope: !948, file: !948, line: 27, type: !857, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !947, retainedNodes: !4994)
!4994 = !{!4995, !4996}
!4995 = !DILocalVariable(name: "category", arg: 1, scope: !4993, file: !948, line: 27, type: !49)
!4996 = !DILocalVariable(name: "locale", scope: !4993, file: !948, line: 29, type: !4997)
!4997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2056, elements: !4998)
!4998 = !{!4999}
!4999 = !DISubrange(count: 257)
!5000 = !DILocation(line: 0, scope: !4993)
!5001 = !DILocation(line: 29, column: 3, scope: !4993)
!5002 = !DILocation(line: 29, column: 8, scope: !4993)
!5003 = !DILocation(line: 31, column: 7, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4993, file: !948, line: 31, column: 7)
!5005 = !DILocation(line: 31, column: 7, scope: !4993)
!5006 = !DILocation(line: 34, column: 12, scope: !4993)
!5007 = !DILocation(line: 34, column: 38, scope: !4993)
!5008 = !DILocation(line: 34, column: 41, scope: !4993)
!5009 = !DILocation(line: 34, column: 66, scope: !4993)
!5010 = !DILocation(line: 35, column: 1, scope: !4993)
!5011 = distinct !DISubprogram(name: "locale_charset", scope: !955, file: !955, line: 831, type: !503, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !5012)
!5012 = !{!5013}
!5013 = !DILocalVariable(name: "codeset", scope: !5011, file: !955, line: 833, type: !47)
!5014 = !DILocation(line: 847, column: 13, scope: !5011)
!5015 = !DILocation(line: 0, scope: !5011)
!5016 = !DILocation(line: 911, column: 15, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5011, file: !955, line: 911, column: 7)
!5018 = !DILocation(line: 911, column: 7, scope: !5011)
!5019 = !DILocation(line: 1070, column: 13, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5021, file: !955, line: 1070, column: 13)
!5021 = distinct !DILexicalBlock(scope: !5022, file: !955, line: 1060, column: 7)
!5022 = distinct !DILexicalBlock(scope: !5011, file: !955, line: 1019, column: 3)
!5023 = !DILocation(line: 1070, column: 24, scope: !5020)
!5024 = !DILocation(line: 1070, column: 13, scope: !5021)
!5025 = !DILocation(line: 1158, column: 3, scope: !5011)
!5026 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1348, file: !1348, line: 269, type: !5027, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1347, retainedNodes: !5029)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!49, !49, !45, !104}
!5029 = !{!5030, !5031, !5032}
!5030 = !DILocalVariable(name: "category", arg: 1, scope: !5026, file: !1348, line: 269, type: !49)
!5031 = !DILocalVariable(name: "buf", arg: 2, scope: !5026, file: !1348, line: 269, type: !45)
!5032 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5026, file: !1348, line: 269, type: !104)
!5033 = !DILocation(line: 0, scope: !5026)
!5034 = !DILocalVariable(name: "category", arg: 1, scope: !5035, file: !1348, line: 91, type: !49)
!5035 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1348, file: !1348, line: 91, type: !5027, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1347, retainedNodes: !5036)
!5036 = !{!5034, !5037, !5038, !5039, !5040}
!5037 = !DILocalVariable(name: "buf", arg: 2, scope: !5035, file: !1348, line: 91, type: !45)
!5038 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5035, file: !1348, line: 91, type: !104)
!5039 = !DILocalVariable(name: "result", scope: !5035, file: !1348, line: 140, type: !47)
!5040 = !DILocalVariable(name: "length", scope: !5041, file: !1348, line: 154, type: !104)
!5041 = distinct !DILexicalBlock(scope: !5042, file: !1348, line: 153, column: 5)
!5042 = distinct !DILexicalBlock(scope: !5035, file: !1348, line: 142, column: 7)
!5043 = !DILocation(line: 0, scope: !5035, inlinedAt: !5044)
!5044 = distinct !DILocation(line: 274, column: 10, scope: !5026)
!5045 = !DILocalVariable(name: "category", arg: 1, scope: !5046, file: !1348, line: 60, type: !49)
!5046 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1348, file: !1348, line: 60, type: !5047, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1347, retainedNodes: !5049)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{!47, !49}
!5049 = !{!5045, !5050}
!5050 = !DILocalVariable(name: "result", scope: !5046, file: !1348, line: 62, type: !47)
!5051 = !DILocation(line: 0, scope: !5046, inlinedAt: !5052)
!5052 = distinct !DILocation(line: 140, column: 24, scope: !5035, inlinedAt: !5044)
!5053 = !DILocation(line: 62, column: 24, scope: !5046, inlinedAt: !5052)
!5054 = !DILocation(line: 142, column: 14, scope: !5042, inlinedAt: !5044)
!5055 = !DILocation(line: 142, column: 7, scope: !5035, inlinedAt: !5044)
!5056 = !DILocation(line: 145, column: 19, scope: !5057, inlinedAt: !5044)
!5057 = distinct !DILexicalBlock(scope: !5058, file: !1348, line: 145, column: 11)
!5058 = distinct !DILexicalBlock(scope: !5042, file: !1348, line: 143, column: 5)
!5059 = !DILocation(line: 145, column: 11, scope: !5058, inlinedAt: !5044)
!5060 = !DILocation(line: 149, column: 16, scope: !5057, inlinedAt: !5044)
!5061 = !DILocation(line: 149, column: 9, scope: !5057, inlinedAt: !5044)
!5062 = !DILocation(line: 154, column: 23, scope: !5041, inlinedAt: !5044)
!5063 = !DILocation(line: 0, scope: !5041, inlinedAt: !5044)
!5064 = !DILocation(line: 155, column: 18, scope: !5065, inlinedAt: !5044)
!5065 = distinct !DILexicalBlock(scope: !5041, file: !1348, line: 155, column: 11)
!5066 = !DILocation(line: 155, column: 11, scope: !5041, inlinedAt: !5044)
!5067 = !DILocation(line: 157, column: 39, scope: !5068, inlinedAt: !5044)
!5068 = distinct !DILexicalBlock(scope: !5065, file: !1348, line: 156, column: 9)
!5069 = !DILocalVariable(name: "__dest", arg: 1, scope: !5070, file: !2236, line: 31, type: !2639)
!5070 = distinct !DISubprogram(name: "memcpy", scope: !2236, file: !2236, line: 31, type: !2637, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1347, retainedNodes: !5071)
!5071 = !{!5069, !5072, !5073}
!5072 = !DILocalVariable(name: "__src", arg: 2, scope: !5070, file: !2236, line: 31, type: !2640)
!5073 = !DILocalVariable(name: "__len", arg: 3, scope: !5070, file: !2236, line: 31, type: !104)
!5074 = !DILocation(line: 0, scope: !5070, inlinedAt: !5075)
!5075 = distinct !DILocation(line: 157, column: 11, scope: !5068, inlinedAt: !5044)
!5076 = !DILocation(line: 34, column: 10, scope: !5070, inlinedAt: !5075)
!5077 = !DILocation(line: 158, column: 11, scope: !5068, inlinedAt: !5044)
!5078 = !DILocation(line: 162, column: 23, scope: !5079, inlinedAt: !5044)
!5079 = distinct !DILexicalBlock(scope: !5080, file: !1348, line: 162, column: 15)
!5080 = distinct !DILexicalBlock(scope: !5065, file: !1348, line: 161, column: 9)
!5081 = !DILocation(line: 162, column: 15, scope: !5080, inlinedAt: !5044)
!5082 = !DILocation(line: 167, column: 44, scope: !5083, inlinedAt: !5044)
!5083 = distinct !DILexicalBlock(scope: !5079, file: !1348, line: 163, column: 13)
!5084 = !DILocation(line: 0, scope: !5070, inlinedAt: !5085)
!5085 = distinct !DILocation(line: 167, column: 15, scope: !5083, inlinedAt: !5044)
!5086 = !DILocation(line: 34, column: 10, scope: !5070, inlinedAt: !5085)
!5087 = !DILocation(line: 168, column: 15, scope: !5083, inlinedAt: !5044)
!5088 = !DILocation(line: 168, column: 32, scope: !5083, inlinedAt: !5044)
!5089 = !DILocation(line: 169, column: 13, scope: !5083, inlinedAt: !5044)
!5090 = !DILocation(line: 0, scope: !5042, inlinedAt: !5044)
!5091 = !DILocation(line: 274, column: 3, scope: !5026)
!5092 = distinct !DISubprogram(name: "setlocale_null", scope: !1348, file: !1348, line: 301, type: !5047, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1347, retainedNodes: !5093)
!5093 = !{!5094}
!5094 = !DILocalVariable(name: "category", arg: 1, scope: !5092, file: !1348, line: 301, type: !49)
!5095 = !DILocation(line: 0, scope: !5092)
!5096 = !DILocation(line: 0, scope: !5046, inlinedAt: !5097)
!5097 = distinct !DILocation(line: 304, column: 10, scope: !5092)
!5098 = !DILocation(line: 62, column: 24, scope: !5046, inlinedAt: !5097)
!5099 = !DILocation(line: 304, column: 3, scope: !5092)
!5100 = distinct !DISubprogram(name: "freadahead", scope: !1351, file: !1351, line: 34, type: !5101, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1350, retainedNodes: !5137)
!5101 = !DISubroutineType(types: !5102)
!5102 = !{!104, !5103}
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5104 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1583, line: 7, baseType: !5105)
!5105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !57, line: 49, size: 1728, elements: !5106)
!5106 = !{!5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5105, file: !57, line: 51, baseType: !49, size: 32)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5105, file: !57, line: 54, baseType: !45, size: 64, offset: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5105, file: !57, line: 55, baseType: !45, size: 64, offset: 128)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5105, file: !57, line: 56, baseType: !45, size: 64, offset: 192)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5105, file: !57, line: 57, baseType: !45, size: 64, offset: 256)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5105, file: !57, line: 58, baseType: !45, size: 64, offset: 320)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5105, file: !57, line: 59, baseType: !45, size: 64, offset: 384)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5105, file: !57, line: 60, baseType: !45, size: 64, offset: 448)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5105, file: !57, line: 61, baseType: !45, size: 64, offset: 512)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5105, file: !57, line: 64, baseType: !45, size: 64, offset: 576)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5105, file: !57, line: 65, baseType: !45, size: 64, offset: 640)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5105, file: !57, line: 66, baseType: !45, size: 64, offset: 704)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5105, file: !57, line: 68, baseType: !72, size: 64, offset: 768)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5105, file: !57, line: 70, baseType: !5121, size: 64, offset: 832)
!5121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5105, file: !57, line: 72, baseType: !49, size: 32, offset: 896)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5105, file: !57, line: 73, baseType: !49, size: 32, offset: 928)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5105, file: !57, line: 74, baseType: !78, size: 64, offset: 960)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5105, file: !57, line: 77, baseType: !82, size: 16, offset: 1024)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5105, file: !57, line: 78, baseType: !84, size: 8, offset: 1040)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5105, file: !57, line: 79, baseType: !86, size: 8, offset: 1048)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5105, file: !57, line: 81, baseType: !90, size: 64, offset: 1088)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5105, file: !57, line: 89, baseType: !93, size: 64, offset: 1152)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5105, file: !57, line: 91, baseType: !95, size: 64, offset: 1216)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5105, file: !57, line: 92, baseType: !98, size: 64, offset: 1280)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5105, file: !57, line: 93, baseType: !5121, size: 64, offset: 1344)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5105, file: !57, line: 94, baseType: !102, size: 64, offset: 1408)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5105, file: !57, line: 95, baseType: !104, size: 64, offset: 1472)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5105, file: !57, line: 96, baseType: !49, size: 32, offset: 1536)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5105, file: !57, line: 98, baseType: !109, size: 160, offset: 1568)
!5137 = !{!5138}
!5138 = !DILocalVariable(name: "fp", arg: 1, scope: !5100, file: !1351, line: 34, type: !5103)
!5139 = !DILocation(line: 0, scope: !5100)
!5140 = !DILocation(line: 38, column: 11, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5100, file: !1351, line: 38, column: 7)
!5142 = !DILocation(line: 38, column: 31, scope: !5141)
!5143 = !DILocation(line: 38, column: 25, scope: !5141)
!5144 = !DILocation(line: 38, column: 7, scope: !5100)
!5145 = !DILocation(line: 40, column: 15, scope: !5100)
!5146 = !DILocation(line: 40, column: 34, scope: !5100)
!5147 = !DILocation(line: 40, column: 28, scope: !5100)
!5148 = !DILocation(line: 41, column: 17, scope: !5100)
!5149 = !DILocation(line: 41, column: 24, scope: !5100)
!5150 = !DILocation(line: 41, column: 13, scope: !5100)
!5151 = !DILocation(line: 41, column: 46, scope: !5100)
!5152 = !{!1649, !1387, i64 88}
!5153 = !DILocation(line: 41, column: 65, scope: !5100)
!5154 = !DILocation(line: 41, column: 59, scope: !5100)
!5155 = !DILocation(line: 41, column: 10, scope: !5100)
!5156 = !DILocation(line: 40, column: 3, scope: !5100)
!5157 = !DILocation(line: 103, column: 1, scope: !5100)
