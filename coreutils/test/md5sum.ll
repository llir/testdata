; ModuleID = 'coreutils-8.32/src/md5sum.bc'
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
%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Usage: %s [OPTION]... [FILE]...\0APrint or check %s (%d-bit) checksums.\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@.str.36 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"\0A  -b, --binary         read in binary mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"  -c, --check          read %s sums from the FILEs and check them\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"      --tag            create a BSD-style checksum\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"  -t, --text           read in text mode (default)\0A\00", align 1
@.str.7 = private unnamed_addr constant [122 x i8] c"  -z, --zero           end each output line with NUL, not newline,\0A                       and disable file name escaping\0A\00", align 1
@.str.8 = private unnamed_addr constant [435 x i8] c"\0AThe following five options are useful only when verifying checksums:\0A      --ignore-missing  don't fail or report status for missing files\0A      --quiet          don't print OK for each successfully verified file\0A      --status         don't output anything, status code shows success\0A      --strict         exit non-zero for improperly formatted checksum lines\0A  -w, --warn           warn about improperly formatted checksum lines\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [377 x i8] c"\0AThe sums are computed as described in %s.  When checking, the input\0Ashould be a former output of this program.  The default mode is to print a\0Aline with checksum, a space, a character indicating input mode ('*' for binary,\0A' ' for text or where binary is insignificant), and name for each FILE.\0A\0ANote: There is no difference between binary mode and text mode on GNU systems.\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"RFC 1321\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.37 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.48 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"bctwz\00", align 1
@long_options = internal constant [13 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 132 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@status_only = internal unnamed_addr global i1 false, align 1, !dbg !279
@warn = internal unnamed_addr global i1 false, align 1, !dbg !280
@quiet = internal unnamed_addr global i1 false, align 1, !dbg !281
@ignore_missing = internal unnamed_addr global i1 false, align 1, !dbg !282
@strict = internal unnamed_addr global i1 false, align 1, !dbg !283
@delim = internal unnamed_addr global i1 false, align 1, !dbg !284
@.str.19 = private unnamed_addr constant [15 x i8] c"Ulrich Drepper\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Scott Miller\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"David Madore\00", align 1
@min_digest_line_length = internal unnamed_addr global i1 false, align 8, !dbg !285
@digest_hex_bytes = internal unnamed_addr global i1 false, align 8, !dbg !286
@.str.22 = private unnamed_addr constant [35 x i8] c"--tag does not support --text mode\00", align 1
@.str.23 = private unnamed_addr constant [60 x i8] c"the --zero option is not supported when verifying checksums\00", align 1
@.str.24 = private unnamed_addr constant [57 x i8] c"the --tag option is meaningless when verifying checksums\00", align 1
@.str.25 = private unnamed_addr constant [73 x i8] c"the --binary and --text options are meaningless when verifying checksums\00", align 1
@.str.26 = private unnamed_addr constant [72 x i8] c"the --ignore-missing option is meaningful only when verifying checksums\00", align 1
@.str.27 = private unnamed_addr constant [64 x i8] c"the --status option is meaningful only when verifying checksums\00", align 1
@.str.28 = private unnamed_addr constant [62 x i8] c"the --warn option is meaningful only when verifying checksums\00", align 1
@.str.29 = private unnamed_addr constant [63 x i8] c"the --quiet option is meaningful only when verifying checksums\00", align 1
@.str.30 = private unnamed_addr constant [64 x i8] c"the --strict option is meaningful only when verifying checksums\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.31 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !287
@.str.35 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.64 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"%s: too many checksum lines\00", align 1
@bsd_reversed = internal unnamed_addr global i32 -1, align 4, !dbg !274
@.str.67 = private unnamed_addr constant [47 x i8] c"%s: %lu: improperly formatted %s checksum line\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"FAILED open or read\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c": %s\0A\00", align 1
@digest_check.bin2hex = internal unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16, !dbg !221
@.str.70 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.74 = private unnamed_addr constant [42 x i8] c"WARNING: %lu line is improperly formatted\00", align 1
@.str.75 = private unnamed_addr constant [44 x i8] c"WARNING: %lu lines are improperly formatted\00", align 1
@.str.76 = private unnamed_addr constant [43 x i8] c"WARNING: %lu listed file could not be read\00", align 1
@.str.77 = private unnamed_addr constant [44 x i8] c"WARNING: %lu listed files could not be read\00", align 1
@.str.78 = private unnamed_addr constant [45 x i8] c"WARNING: %lu computed checksum did NOT match\00", align 1
@.str.79 = private unnamed_addr constant [46 x i8] c"WARNING: %lu computed checksums did NOT match\00", align 1
@.str.80 = private unnamed_addr constant [25 x i8] c"%s: no file was verified\00", align 1
@.str.73 = private unnamed_addr constant [50 x i8] c"%s: no properly formatted %s checksum lines found\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c") = \00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"ignore-missing\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), align 8, !dbg !288
@.str.83 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !293
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !336
@.str.86 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.87 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.88 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fillbuf = internal constant <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 16, !dbg !338
@exit_failure = dso_local global i32 1, align 4, !dbg !374
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !380
@.str.101 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.102 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.103 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.105, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.106, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.107, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.108, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.109, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.110, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.111, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.112, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.113, i32 0, i32 0), i8* null], align 16, !dbg !421
@.str.104 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.105 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.106 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.107 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.108 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.109 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.110 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.111 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.112 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.113 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !498
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !504
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !506
@.str.11.114 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.115 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.116 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.117 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.118 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.119 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.120 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !513
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !520
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !508
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !522
@.str.127 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.128 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.129 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.130 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.131 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.132 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.133 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.134 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.135 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.136 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.137 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.138 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.139 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.140 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.141 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.142 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.145 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.146 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.147 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.148 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.149 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.150 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.151 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !528
@.str.1.162 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.163 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !536
@.str.1.180 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.183 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.184 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1314 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1319, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i32 %0, metadata !1318, metadata !DIExpression()), !dbg !1339
  %3 = icmp eq i32 %0, 0, !dbg !1340
  br i1 %3, label %9, label %4, !dbg !1341

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1342, !tbaa !1344
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #19, !dbg !1342
  %7 = load i8*, i8** @program_name, align 8, !dbg !1342, !tbaa !1344
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #19, !dbg !1342
  br label %77, !dbg !1342

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 5) #19, !dbg !1348
  %11 = load i8*, i8** @program_name, align 8, !dbg !1348, !tbaa !1344
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 128) #19, !dbg !1348
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.36, i64 0, i64 0), i32 5) #19, !dbg !1349
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1349, !tbaa !1344
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14) #19, !dbg !1349
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #19, !dbg !1352
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1352, !tbaa !1344
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1352
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 5) #19, !dbg !1354
  %20 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #19, !dbg !1354
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 5) #19, !dbg !1355
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1355, !tbaa !1344
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22), !dbg !1355
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 5) #19, !dbg !1356
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1356, !tbaa !1344
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25), !dbg !1356
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.7, i64 0, i64 0), i32 5) #19, !dbg !1358
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1358, !tbaa !1344
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28), !dbg !1358
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([435 x i8], [435 x i8]* @.str.8, i64 0, i64 0), i32 5) #19, !dbg !1359
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1359, !tbaa !1344
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31), !dbg !1359
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 5) #19, !dbg !1360
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1360, !tbaa !1344
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34), !dbg !1360
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 5) #19, !dbg !1361
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1361, !tbaa !1344
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37), !dbg !1361
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([377 x i8], [377 x i8]* @.str.11, i64 0, i64 0), i32 5) #19, !dbg !1362
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)) #19, !dbg !1362
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), metadata !1322, metadata !DIExpression()) #19, !dbg !1363
  %41 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1364
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %41) #19, !dbg !1364
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %41, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #19, !dbg !1335
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), metadata !1323, metadata !DIExpression()) #19, !dbg !1363
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1324, metadata !DIExpression()) #19, !dbg !1363
  %42 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1365
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !1324, metadata !DIExpression()) #19, !dbg !1363
  br label %43, !dbg !1366

43:                                               ; preds = %48, %9
  %44 = phi i8* [ %51, %48 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), %9 ]
  %45 = phi %struct.infomap* [ %49, %48 ], [ %42, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %45, metadata !1324, metadata !DIExpression()) #19, !dbg !1363
  %46 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* nonnull %44) #21, !dbg !1367
  %47 = icmp eq i32 %46, 0, !dbg !1367
  br i1 %47, label %53, label %48, !dbg !1366

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.infomap, %struct.infomap* %45, i64 1, !dbg !1368
  call void @llvm.dbg.value(metadata %struct.infomap* %49, metadata !1324, metadata !DIExpression()) #19, !dbg !1363
  %50 = getelementptr inbounds %struct.infomap, %struct.infomap* %49, i64 0, i32 0, !dbg !1369
  %51 = load i8*, i8** %50, align 8, !dbg !1369, !tbaa !1370
  %52 = icmp eq i8* %51, null, !dbg !1372
  br i1 %52, label %53, label %43, !dbg !1373, !llvm.loop !1374

53:                                               ; preds = %48, %43
  %54 = phi %struct.infomap* [ %49, %48 ], [ %45, %43 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %54, metadata !1324, metadata !DIExpression()) #19, !dbg !1363
  call void @llvm.dbg.value(metadata %struct.infomap* %54, metadata !1324, metadata !DIExpression()) #19, !dbg !1363
  %55 = getelementptr inbounds %struct.infomap, %struct.infomap* %54, i64 0, i32 1, !dbg !1375
  %56 = load i8*, i8** %55, align 8, !dbg !1375, !tbaa !1377
  %57 = icmp eq i8* %56, null, !dbg !1378
  %58 = select i1 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* %56, !dbg !1379
  call void @llvm.dbg.value(metadata i8* %58, metadata !1323, metadata !DIExpression()) #19, !dbg !1363
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i64 0, i64 0), i32 5) #19, !dbg !1380
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i64 0, i64 0)) #19, !dbg !1380
  %61 = tail call i8* @setlocale(i32 5, i8* null) #19, !dbg !1381
  call void @llvm.dbg.value(metadata i8* %61, metadata !1331, metadata !DIExpression()) #19, !dbg !1363
  %62 = icmp eq i8* %61, null, !dbg !1382
  br i1 %62, label %70, label %63, !dbg !1384

63:                                               ; preds = %53
  %64 = tail call i32 @strncmp(i8* nonnull %61, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3) #21, !dbg !1385
  %65 = icmp eq i32 %64, 0, !dbg !1385
  br i1 %65, label %70, label %66, !dbg !1386

66:                                               ; preds = %63
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.48, i64 0, i64 0), i32 5) #19, !dbg !1387
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1387, !tbaa !1344
  %69 = tail call i32 @fputs_unlocked(i8* %67, %struct._IO_FILE* %68) #19, !dbg !1387
  br label %70, !dbg !1389

70:                                               ; preds = %53, %63, %66
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i64 0, i64 0), i32 5) #19, !dbg !1390
  %72 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #19, !dbg !1390
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.50, i64 0, i64 0), i32 5) #19, !dbg !1391
  %74 = icmp eq i8* %58, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), !dbg !1391
  %75 = select i1 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !1391
  %76 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %73, i8* %58, i8* %75) #19, !dbg !1391
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %41) #19, !dbg !1392
  br label %77

77:                                               ; preds = %70, %4
  tail call void @exit(i32 %0) #22, !dbg !1393
  unreachable, !dbg !1393
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !59 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !69 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !132 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1394 {
  %3 = alloca [20 x i8], align 16
  call void @llvm.dbg.declare(metadata [20 x i8]* %3, metadata !238, metadata !DIExpression()), !dbg !1424
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca [20 x i8], align 16
  %8 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !1399, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8** %1, metadata !1400, metadata !DIExpression()), !dbg !1426
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0, !dbg !1427
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %9) #19, !dbg !1427
  call void @llvm.dbg.declare(metadata [20 x i8]* %7, metadata !1401, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8* %9, metadata !1429, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 4, metadata !1434, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %9, metadata !1435, metadata !DIExpression()), !dbg !1437
  %10 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 3, !dbg !1439
  call void @llvm.dbg.value(metadata i8* %10, metadata !1436, metadata !DIExpression()), !dbg !1437
  %11 = ptrtoint i8* %10 to i64, !dbg !1440
  %12 = and i64 %11, 3, !dbg !1441
  %13 = sub nsw i64 0, %12, !dbg !1442
  %14 = getelementptr inbounds i8, i8* %10, i64 %13, !dbg !1442
  call void @llvm.dbg.value(metadata i8* %14, metadata !1402, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 0, metadata !1403, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 1, metadata !1405, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i32 -1, metadata !1406, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 0, metadata !1407, metadata !DIExpression()), !dbg !1426
  %15 = load i8*, i8** %1, align 8, !dbg !1443, !tbaa !1344
  call void @set_program_name(i8* %15) #19, !dbg !1444
  %16 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #19, !dbg !1445
  %17 = call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #19, !dbg !1446
  %18 = call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #19, !dbg !1447
  %19 = call i32 @atexit(void ()* nonnull @close_stdout) #19, !dbg !1448
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1449, !tbaa !1344
  %21 = call i32 @setvbuf(%struct._IO_FILE* %20, i8* null, i32 1, i64 0) #19, !dbg !1450
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), metadata !1408, metadata !DIExpression()), !dbg !1426
  br label %22, !dbg !1451

22:                                               ; preds = %27, %2
  %23 = phi i32 [ -1, %2 ], [ %28, %27 ], !dbg !1452
  %24 = phi i8 [ 0, %2 ], [ %29, %27 ], !dbg !1453
  %25 = phi i8 [ 0, %2 ], [ %30, %27 ], !dbg !1454
  call void @llvm.dbg.value(metadata i8 %25, metadata !1403, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 %24, metadata !1407, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i32 %23, metadata !1406, metadata !DIExpression()), !dbg !1426
  %26 = call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), %struct.option* getelementptr inbounds ([13 x %struct.option], [13 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #19, !dbg !1455
  call void @llvm.dbg.value(metadata i32 %26, metadata !1404, metadata !DIExpression()), !dbg !1426
  switch i32 %26, label %44 [
    i32 -1, label %45
    i32 98, label %27
    i32 99, label %31
    i32 129, label %32
    i32 116, label %33
    i32 119, label %34
    i32 128, label %35
    i32 130, label %36
    i32 131, label %37
    i32 132, label %38
    i32 122, label %39
    i32 -130, label %40
    i32 -131, label %41
  ], !dbg !1451

27:                                               ; preds = %22, %39, %38, %37, %36, %35, %34, %33, %32, %31
  %28 = phi i32 [ %23, %39 ], [ 1, %38 ], [ %23, %37 ], [ %23, %36 ], [ %23, %35 ], [ %23, %34 ], [ 0, %33 ], [ %23, %32 ], [ %23, %31 ], [ 1, %22 ]
  %29 = phi i8 [ %24, %39 ], [ 1, %38 ], [ %24, %37 ], [ %24, %36 ], [ %24, %35 ], [ %24, %34 ], [ %24, %33 ], [ %24, %32 ], [ %24, %31 ], [ %24, %22 ]
  %30 = phi i8 [ %25, %39 ], [ %25, %38 ], [ %25, %37 ], [ %25, %36 ], [ %25, %35 ], [ %25, %34 ], [ %25, %33 ], [ %25, %32 ], [ 1, %31 ], [ %25, %22 ]
  br label %22, !dbg !1426, !llvm.loop !1456

31:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, metadata !1403, metadata !DIExpression()), !dbg !1426
  br label %27, !dbg !1458

32:                                               ; preds = %22
  store i1 true, i1* @status_only, align 1, !dbg !1460
  store i1 false, i1* @warn, align 1, !dbg !1461
  store i1 false, i1* @quiet, align 1, !dbg !1462
  br label %27, !dbg !1463

33:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 0, metadata !1406, metadata !DIExpression()), !dbg !1426
  br label %27, !dbg !1464

34:                                               ; preds = %22
  store i1 false, i1* @status_only, align 1, !dbg !1465
  store i1 true, i1* @warn, align 1, !dbg !1466
  store i1 false, i1* @quiet, align 1, !dbg !1467
  br label %27, !dbg !1468

35:                                               ; preds = %22
  store i1 true, i1* @ignore_missing, align 1, !dbg !1469
  br label %27, !dbg !1470

36:                                               ; preds = %22
  store i1 false, i1* @status_only, align 1, !dbg !1471
  store i1 false, i1* @warn, align 1, !dbg !1472
  store i1 true, i1* @quiet, align 1, !dbg !1473
  br label %27, !dbg !1474

37:                                               ; preds = %22
  store i1 true, i1* @strict, align 1, !dbg !1475
  br label %27, !dbg !1476

38:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, metadata !1407, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i32 1, metadata !1406, metadata !DIExpression()), !dbg !1426
  br label %27, !dbg !1477

39:                                               ; preds = %22
  store i1 true, i1* @delim, align 1, !dbg !1478
  br label %27, !dbg !1479

40:                                               ; preds = %22
  call void @usage(i32 0) #23, !dbg !1480
  unreachable, !dbg !1480

41:                                               ; preds = %22
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1481, !tbaa !1344
  %43 = load i8*, i8** @Version, align 8, !dbg !1481, !tbaa !1344
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i8* null) #19, !dbg !1481
  call void @exit(i32 0) #22, !dbg !1481
  unreachable, !dbg !1481

44:                                               ; preds = %22
  call void @usage(i32 1) #23, !dbg !1482
  unreachable, !dbg !1482

45:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 %23, metadata !1406, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 %24, metadata !1407, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 %25, metadata !1403, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i32 %23, metadata !1406, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 %24, metadata !1407, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 %25, metadata !1403, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i32 %23, metadata !1406, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 %24, metadata !1407, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 %25, metadata !1403, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i32 %23, metadata !1406, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 %24, metadata !1407, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 %25, metadata !1403, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i32 %23, metadata !1406, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 %24, metadata !1407, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 %25, metadata !1403, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i32 %23, metadata !1406, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 %24, metadata !1407, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 %25, metadata !1403, metadata !DIExpression()), !dbg !1426
  store i1 true, i1* @min_digest_line_length, align 8, !dbg !1483
  store i1 true, i1* @digest_hex_bytes, align 8, !dbg !1484
  %46 = icmp ne i8 %24, 0, !dbg !1485
  %47 = xor i1 %46, true, !dbg !1487
  %48 = icmp ne i32 %23, 0, !dbg !1488
  %49 = or i1 %48, %47, !dbg !1487
  br i1 %49, label %52, label %50, !dbg !1487

50:                                               ; preds = %45
  %51 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0), i32 5) #19, !dbg !1489
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %51) #19, !dbg !1491
  call void @usage(i32 1) #23, !dbg !1492
  unreachable, !dbg !1492

52:                                               ; preds = %45
  %53 = load i1, i1* @delim, align 1, !dbg !1493
  %54 = xor i1 %53, true, !dbg !1495
  %55 = icmp eq i8 %25, 0, !dbg !1496
  %56 = or i1 %55, %54, !dbg !1495
  br i1 %56, label %59, label %57, !dbg !1495

57:                                               ; preds = %52
  %58 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.23, i64 0, i64 0), i32 5) #19, !dbg !1497
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %58) #19, !dbg !1499
  call void @usage(i32 1) #23, !dbg !1500
  unreachable, !dbg !1500

59:                                               ; preds = %52
  %60 = or i1 %55, %47, !dbg !1501
  br i1 %60, label %63, label %61, !dbg !1501

61:                                               ; preds = %59
  %62 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.24, i64 0, i64 0), i32 5) #19, !dbg !1503
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %62) #19, !dbg !1505
  call void @usage(i32 1) #23, !dbg !1506
  unreachable, !dbg !1506

63:                                               ; preds = %59
  %64 = icmp slt i32 %23, 0, !dbg !1507
  %65 = or i1 %64, %55, !dbg !1509
  br i1 %65, label %68, label %66, !dbg !1509

66:                                               ; preds = %63
  %67 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.25, i64 0, i64 0), i32 5) #19, !dbg !1510
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %67) #19, !dbg !1512
  call void @usage(i32 1) #23, !dbg !1513
  unreachable, !dbg !1513

68:                                               ; preds = %63
  %69 = load i1, i1* @ignore_missing, align 1, !dbg !1514
  %70 = and i1 %55, %69, !dbg !1516
  br i1 %70, label %71, label %73, !dbg !1516

71:                                               ; preds = %68
  %72 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.26, i64 0, i64 0), i32 5) #19, !dbg !1517
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %72) #19, !dbg !1519
  call void @usage(i32 1) #23, !dbg !1520
  unreachable, !dbg !1520

73:                                               ; preds = %68
  %74 = load i1, i1* @status_only, align 1, !dbg !1521
  %75 = and i1 %55, %74, !dbg !1523
  br i1 %75, label %76, label %78, !dbg !1523

76:                                               ; preds = %73
  %77 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.27, i64 0, i64 0), i32 5) #19, !dbg !1524
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %77) #19, !dbg !1526
  call void @usage(i32 1) #23, !dbg !1527
  unreachable, !dbg !1527

78:                                               ; preds = %73
  %79 = load i1, i1* @warn, align 1, !dbg !1528
  %80 = and i1 %55, %79, !dbg !1530
  br i1 %80, label %81, label %83, !dbg !1530

81:                                               ; preds = %78
  %82 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.28, i64 0, i64 0), i32 5) #19, !dbg !1531
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %82) #19, !dbg !1533
  call void @usage(i32 1) #23, !dbg !1534
  unreachable, !dbg !1534

83:                                               ; preds = %78
  %84 = load i1, i1* @quiet, align 1, !dbg !1535
  %85 = and i1 %55, %84, !dbg !1537
  br i1 %85, label %86, label %88, !dbg !1537

86:                                               ; preds = %83
  %87 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.29, i64 0, i64 0), i32 5) #19, !dbg !1538
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %87) #19, !dbg !1540
  call void @usage(i32 1) #23, !dbg !1541
  unreachable, !dbg !1541

88:                                               ; preds = %83
  %89 = load i1, i1* @strict, align 1, !dbg !1542
  %90 = icmp ne i8 %25, 0, !dbg !1544
  %91 = xor i1 %90, true, !dbg !1545
  %92 = and i1 %89, %91, !dbg !1546
  br i1 %92, label %93, label %95, !dbg !1547

93:                                               ; preds = %88
  %94 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.30, i64 0, i64 0), i32 5) #19, !dbg !1548
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %94) #19, !dbg !1550
  call void @usage(i32 1) #23, !dbg !1551
  unreachable, !dbg !1551

95:                                               ; preds = %88
  %96 = icmp slt i32 %23, 1, !dbg !1552
  call void @llvm.dbg.value(metadata i32 undef, metadata !1406, metadata !DIExpression()), !dbg !1426
  %97 = sext i32 %0 to i64, !dbg !1553
  %98 = getelementptr inbounds i8*, i8** %1, i64 %97, !dbg !1553
  call void @llvm.dbg.value(metadata i8** %98, metadata !1409, metadata !DIExpression()), !dbg !1426
  %99 = load i32, i32* @optind, align 4, !dbg !1554, !tbaa !1556
  %100 = icmp eq i32 %99, %0, !dbg !1558
  br i1 %100, label %101, label %103, !dbg !1559

101:                                              ; preds = %95
  %102 = getelementptr inbounds i8*, i8** %98, i64 1, !dbg !1560
  call void @llvm.dbg.value(metadata i8** %102, metadata !1409, metadata !DIExpression()), !dbg !1426
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i8** %98, align 8, !dbg !1561, !tbaa !1344
  br label %103, !dbg !1562

103:                                              ; preds = %101, %95
  %104 = phi i8** [ %102, %101 ], [ %98, %95 ], !dbg !1426
  call void @llvm.dbg.value(metadata i8** %104, metadata !1409, metadata !DIExpression()), !dbg !1426
  %105 = sext i32 %99 to i64, !dbg !1563
  %106 = getelementptr inbounds i8*, i8** %1, i64 %105, !dbg !1563
  call void @llvm.dbg.value(metadata i8** %106, metadata !1410, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 1, metadata !1405, metadata !DIExpression()), !dbg !1426
  %107 = icmp ult i8** %106, %104, !dbg !1565
  br i1 %107, label %108, label %119, !dbg !1566

108:                                              ; preds = %103
  %109 = select i1 %96, i32 32, i32 42, !dbg !1567
  %110 = trunc i32 %109 to i8, !dbg !1570
  %111 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0, !dbg !1576
  %112 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 3, !dbg !1577
  %113 = ptrtoint i8* %112 to i64, !dbg !1577
  %114 = and i64 %113, 3, !dbg !1577
  %115 = sub nsw i64 0, %114, !dbg !1577
  %116 = getelementptr inbounds i8, i8* %112, i64 %115, !dbg !1577
  %117 = bitcast i8** %4 to i8*, !dbg !1576
  %118 = bitcast i64* %5 to i8*, !dbg !1576
  br label %122, !dbg !1566

119:                                              ; preds = %674, %103
  %120 = phi i8 [ 1, %103 ], [ %675, %674 ], !dbg !1426
  call void @llvm.dbg.value(metadata i8 %120, metadata !1405, metadata !DIExpression()), !dbg !1426
  %121 = load i1, i1* @have_read_stdin, align 1, !dbg !1579
  br i1 %121, label %678, label %686, !dbg !1581

122:                                              ; preds = %108, %674
  %123 = phi i8** [ %106, %108 ], [ %676, %674 ]
  %124 = phi i8 [ 1, %108 ], [ %675, %674 ]
  call void @llvm.dbg.value(metadata i8** %123, metadata !1410, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %124, metadata !1405, metadata !DIExpression()), !dbg !1426
  %125 = load i8*, i8** %123, align 8, !dbg !1582, !tbaa !1344
  call void @llvm.dbg.value(metadata i8* %125, metadata !1412, metadata !DIExpression()), !dbg !1583
  br i1 %90, label %126, label %578, !dbg !1584

126:                                              ; preds = %122
  call void @llvm.dbg.value(metadata i8* %125, metadata !227, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i64 0, metadata !232, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i64 0, metadata !233, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i64 0, metadata !234, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i64 0, metadata !235, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i8 0, metadata !236, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i8 0, metadata !237, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %111) #19, !dbg !1585
  call void @llvm.dbg.value(metadata i8* %111, metadata !1429, metadata !DIExpression()) #19, !dbg !1577
  call void @llvm.dbg.value(metadata i64 4, metadata !1434, metadata !DIExpression()) #19, !dbg !1577
  call void @llvm.dbg.value(metadata i8* %111, metadata !1435, metadata !DIExpression()) #19, !dbg !1577
  call void @llvm.dbg.value(metadata i8* %112, metadata !1436, metadata !DIExpression()) #19, !dbg !1577
  call void @llvm.dbg.value(metadata i8* %116, metadata !240, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %117) #19, !dbg !1586
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %118) #19, !dbg !1587
  %127 = call i32 @strcmp(i8* nonnull dereferenceable(1) %125, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #21, !dbg !1588
  %128 = icmp eq i32 %127, 0, !dbg !1588
  call void @llvm.dbg.value(metadata i1 %128, metadata !244, metadata !DIExpression()) #19, !dbg !1576
  br i1 %128, label %129, label %132, !dbg !1589

129:                                              ; preds = %126
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1590
  %130 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 5) #19, !dbg !1593
  call void @llvm.dbg.value(metadata i8* %130, metadata !227, metadata !DIExpression()) #19, !dbg !1576
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1594, !tbaa !1344
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %131, metadata !228, metadata !DIExpression()) #19, !dbg !1576
  br label %139, !dbg !1595

132:                                              ; preds = %126
  %133 = call %struct._IO_FILE* @fopen_safer(i8* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #19, !dbg !1596
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %133, metadata !228, metadata !DIExpression()) #19, !dbg !1576
  %134 = icmp eq %struct._IO_FILE* %133, null, !dbg !1598
  br i1 %134, label %135, label %139, !dbg !1600

135:                                              ; preds = %132
  %136 = tail call i32* @__errno_location() #24, !dbg !1601
  %137 = load i32, i32* %136, align 4, !dbg !1601, !tbaa !1556
  %138 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %125) #19, !dbg !1603
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %138) #19, !dbg !1604
  br label %574, !dbg !1605

139:                                              ; preds = %132, %129
  %140 = phi %struct._IO_FILE* [ %131, %129 ], [ %133, %132 ], !dbg !1606
  %141 = phi i8* [ %130, %129 ], [ %125, %132 ]
  call void @llvm.dbg.value(metadata i8* %141, metadata !227, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %140, metadata !228, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i64 0, metadata !241, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i8* null, metadata !242, metadata !DIExpression()) #19, !dbg !1576
  store i8* null, i8** %4, align 8, !dbg !1607, !tbaa !1344
  call void @llvm.dbg.value(metadata i64 0, metadata !243, metadata !DIExpression()) #19, !dbg !1576
  store i64 0, i64* %5, align 8, !dbg !1608, !tbaa !1609
  %142 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %140, i64 0, i32 0, !dbg !1611
  br label %143, !dbg !1618

143:                                              ; preds = %501, %139
  %144 = phi i8 [ 0, %139 ], [ %502, %501 ], !dbg !1619
  %145 = phi i64 [ 0, %139 ], [ %151, %501 ], !dbg !1576
  %146 = phi i8 [ 0, %139 ], [ %503, %501 ], !dbg !1620
  %147 = phi i64 [ 0, %139 ], [ %504, %501 ], !dbg !1621
  %148 = phi i64 [ 0, %139 ], [ %505, %501 ], !dbg !1622
  %149 = phi i64 [ 0, %139 ], [ %506, %501 ], !dbg !1623
  %150 = phi i64 [ 0, %139 ], [ %507, %501 ], !dbg !1624
  call void @llvm.dbg.value(metadata i64 %150, metadata !232, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %149, metadata !233, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %148, metadata !234, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %147, metadata !235, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i8 %146, metadata !236, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %145, metadata !241, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i8 %144, metadata !237, metadata !DIExpression()) #19, !dbg !1576
  %151 = add i64 %145, 1, !dbg !1625
  call void @llvm.dbg.value(metadata i64 %151, metadata !241, metadata !DIExpression()) #19, !dbg !1576
  %152 = icmp eq i64 %151, 0, !dbg !1626
  br i1 %152, label %153, label %156, !dbg !1628

153:                                              ; preds = %143
  call void @llvm.dbg.value(metadata i8* %141, metadata !227, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i8* %141, metadata !227, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i8* %141, metadata !227, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i8* %141, metadata !227, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i8* %141, metadata !227, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i8* %141, metadata !227, metadata !DIExpression()) #19, !dbg !1576
  %154 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.66, i64 0, i64 0), i32 5) #19, !dbg !1629
  %155 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #19, !dbg !1629
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %154, i8* %155) #19, !dbg !1629
  unreachable, !dbg !1629

156:                                              ; preds = %143
  call void @llvm.dbg.value(metadata i8** %4, metadata !242, metadata !DIExpression(DW_OP_deref)) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i64* %5, metadata !243, metadata !DIExpression(DW_OP_deref)) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i8** %4, metadata !1630, metadata !DIExpression()) #19, !dbg !1637
  call void @llvm.dbg.value(metadata i64* %5, metadata !1635, metadata !DIExpression()) #19, !dbg !1637
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %140, metadata !1636, metadata !DIExpression()) #19, !dbg !1637
  %157 = call i64 @__getdelim(i8** nonnull %4, i64* nonnull %5, i32 10, %struct._IO_FILE* %140) #19, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %157, metadata !249, metadata !DIExpression()) #19, !dbg !1640
  %158 = icmp slt i64 %157, 1, !dbg !1641
  br i1 %158, label %511, label %159, !dbg !1643

159:                                              ; preds = %156
  %160 = load i8*, i8** %4, align 8, !dbg !1644, !tbaa !1344
  call void @llvm.dbg.value(metadata i8* %160, metadata !242, metadata !DIExpression()) #19, !dbg !1576
  %161 = load i8, i8* %160, align 1, !dbg !1644, !tbaa !1646
  %162 = icmp eq i8 %161, 35, !dbg !1647
  br i1 %162, label %501, label %163, !dbg !1648

163:                                              ; preds = %159
  %164 = add nsw i64 %157, -1, !dbg !1649
  %165 = getelementptr inbounds i8, i8* %160, i64 %164, !dbg !1651
  %166 = load i8, i8* %165, align 1, !dbg !1651, !tbaa !1646
  %167 = icmp eq i8 %166, 10, !dbg !1652
  br i1 %167, label %168, label %170, !dbg !1653

168:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i64 %164, metadata !249, metadata !DIExpression()) #19, !dbg !1640
  store i8 0, i8* %165, align 1, !dbg !1654, !tbaa !1646
  %169 = load i8*, i8** %4, align 8, !dbg !1655, !tbaa !1344
  br label %170, !dbg !1656

170:                                              ; preds = %168, %163
  %171 = phi i8* [ %169, %168 ], [ %160, %163 ], !dbg !1655
  %172 = phi i64 [ %164, %168 ], [ %157, %163 ], !dbg !1640
  call void @llvm.dbg.value(metadata i64 %172, metadata !249, metadata !DIExpression()) #19, !dbg !1640
  call void @llvm.dbg.value(metadata i8* %171, metadata !242, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i8* %171, metadata !1657, metadata !DIExpression()) #19, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %172, metadata !1663, metadata !DIExpression()) #19, !dbg !1670
  call void @llvm.dbg.value(metadata i8 0, metadata !1667, metadata !DIExpression()) #19, !dbg !1670
  call void @llvm.dbg.value(metadata i64 0, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  br label %173, !dbg !1672

173:                                              ; preds = %177, %170
  %174 = phi i64 [ 0, %170 ], [ %178, %177 ], !dbg !1670
  call void @llvm.dbg.value(metadata i64 %174, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  %175 = getelementptr inbounds i8, i8* %171, i64 %174, !dbg !1673
  %176 = load i8, i8* %175, align 1, !dbg !1673, !tbaa !1646
  switch i8 %176, label %181 [
    i8 32, label %177
    i8 9, label %177
    i8 92, label %179
  ], !dbg !1673

177:                                              ; preds = %173, %173
  %178 = add i64 %174, 1, !dbg !1674
  call void @llvm.dbg.value(metadata i64 %178, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  br label %173, !dbg !1672, !llvm.loop !1675

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 %174, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %174, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %174, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %174, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %174, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %174, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %174, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %174, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %174, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %174, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %174, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %174, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  %180 = add i64 %174, 1, !dbg !1677
  call void @llvm.dbg.value(metadata i64 %180, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  call void @llvm.dbg.value(metadata i8 1, metadata !1667, metadata !DIExpression()) #19, !dbg !1670
  br label %181, !dbg !1680

181:                                              ; preds = %173, %179
  %182 = phi i1 [ true, %179 ], [ false, %173 ]
  %183 = phi i64 [ %180, %179 ], [ %174, %173 ], !dbg !1670
  call void @llvm.dbg.value(metadata i64 %183, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  call void @llvm.dbg.value(metadata i8 undef, metadata !1667, metadata !DIExpression()) #19, !dbg !1670
  call void @llvm.dbg.value(metadata i64 3, metadata !1668, metadata !DIExpression()) #19, !dbg !1670
  %184 = getelementptr inbounds i8, i8* %171, i64 %183, !dbg !1681
  %185 = call i32 @strncmp(i8* nonnull dereferenceable(1) %184, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 3) #21, !dbg !1681
  %186 = icmp eq i32 %185, 0, !dbg !1681
  br i1 %186, label %187, label %284, !dbg !1683

187:                                              ; preds = %181
  %188 = add i64 %183, 3, !dbg !1684
  call void @llvm.dbg.value(metadata i64 %188, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  %189 = getelementptr inbounds i8, i8* %171, i64 %188, !dbg !1686
  %190 = load i8, i8* %189, align 1, !dbg !1686, !tbaa !1646
  %191 = icmp eq i8 %190, 32, !dbg !1688
  %192 = add i64 %183, 4, !dbg !1689
  %193 = select i1 %191, i64 %192, i64 %188, !dbg !1690
  call void @llvm.dbg.value(metadata i64 %193, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  %194 = getelementptr inbounds i8, i8* %171, i64 %193, !dbg !1691
  %195 = load i8, i8* %194, align 1, !dbg !1691, !tbaa !1646
  %196 = icmp eq i8 %195, 40, !dbg !1693
  br i1 %196, label %197, label %387, !dbg !1694

197:                                              ; preds = %187
  %198 = add i64 %193, 1, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %198, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  %199 = getelementptr inbounds i8, i8* %171, i64 %198, !dbg !1697
  %200 = sub i64 %172, %198, !dbg !1698
  call void @llvm.dbg.value(metadata i8* %199, metadata !1699, metadata !DIExpression()) #19, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %200, metadata !1704, metadata !DIExpression()) #19, !dbg !1709
  call void @llvm.dbg.value(metadata i1 %182, metadata !1707, metadata !DIExpression()) #19, !dbg !1709
  %201 = icmp eq i64 %200, 0, !dbg !1711
  br i1 %201, label %387, label %202, !dbg !1713

202:                                              ; preds = %197, %206
  %203 = phi i64 [ %204, %206 ], [ %200, %197 ]
  %204 = add i64 %203, -1, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %204, metadata !1708, metadata !DIExpression()) #19, !dbg !1709
  %205 = icmp eq i64 %204, 0, !dbg !1714
  br i1 %205, label %210, label %206, !dbg !1715

206:                                              ; preds = %202
  %207 = getelementptr inbounds i8, i8* %199, i64 %204, !dbg !1716
  %208 = load i8, i8* %207, align 1, !dbg !1716, !tbaa !1646
  %209 = icmp eq i8 %208, 41, !dbg !1717
  br i1 %209, label %213, label %202, !dbg !1718, !llvm.loop !1719

210:                                              ; preds = %202
  %211 = load i8, i8* %199, align 1, !dbg !1721, !tbaa !1646
  %212 = icmp eq i8 %211, 41, !dbg !1715
  br i1 %212, label %215, label %387, !dbg !1723

213:                                              ; preds = %206
  %214 = getelementptr inbounds i8, i8* %199, i64 %204, !dbg !1716
  br label %215, !dbg !1724

215:                                              ; preds = %213, %210
  %216 = phi i8* [ %199, %210 ], [ %214, %213 ]
  %217 = phi i1 [ true, %210 ], [ false, %213 ]
  br i1 %182, label %218, label %245, !dbg !1724

218:                                              ; preds = %215
  call void @llvm.dbg.value(metadata i8* %199, metadata !1726, metadata !DIExpression()) #19, !dbg !1735
  call void @llvm.dbg.value(metadata i64 0, metadata !1731, metadata !DIExpression()) #19, !dbg !1735
  call void @llvm.dbg.value(metadata i8* %199, metadata !1732, metadata !DIExpression()) #19, !dbg !1735
  call void @llvm.dbg.value(metadata i64 0, metadata !1733, metadata !DIExpression()) #19, !dbg !1737
  br i1 %217, label %241, label %219, !dbg !1738

219:                                              ; preds = %218
  %220 = add i64 %203, -2, !dbg !1739
  br label %221, !dbg !1738

221:                                              ; preds = %235, %219
  %222 = phi i64 [ 0, %219 ], [ %239, %235 ]
  %223 = phi i8* [ %199, %219 ], [ %238, %235 ]
  call void @llvm.dbg.value(metadata i64 %222, metadata !1733, metadata !DIExpression()) #19, !dbg !1737
  call void @llvm.dbg.value(metadata i8* %223, metadata !1732, metadata !DIExpression()) #19, !dbg !1735
  %224 = getelementptr inbounds i8, i8* %199, i64 %222, !dbg !1744
  %225 = load i8, i8* %224, align 1, !dbg !1744, !tbaa !1646
  %226 = sext i8 %225 to i32, !dbg !1744
  switch i32 %226, label %235 [
    i32 92, label %227
    i32 0, label %387
  ], !dbg !1745

227:                                              ; preds = %221
  %228 = icmp eq i64 %222, %220, !dbg !1746
  br i1 %228, label %387, label %229, !dbg !1747

229:                                              ; preds = %227
  %230 = add nuw i64 %222, 1, !dbg !1748
  call void @llvm.dbg.value(metadata i64 %230, metadata !1733, metadata !DIExpression()) #19, !dbg !1737
  %231 = getelementptr inbounds i8, i8* %199, i64 %230, !dbg !1749
  %232 = load i8, i8* %231, align 1, !dbg !1749, !tbaa !1646
  %233 = sext i8 %232 to i32, !dbg !1749
  switch i32 %233, label %387 [
    i32 110, label %235
    i32 92, label %234
  ], !dbg !1750

234:                                              ; preds = %229
  call void @llvm.dbg.value(metadata i8* %223, metadata !1732, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #19, !dbg !1735
  br label %235, !dbg !1751

235:                                              ; preds = %221, %229, %234
  %236 = phi i8 [ 92, %234 ], [ 10, %229 ], [ %225, %221 ]
  %237 = phi i64 [ %230, %234 ], [ %230, %229 ], [ %222, %221 ], !dbg !1737
  store i8 %236, i8* %223, align 1, !dbg !1753, !tbaa !1646
  %238 = getelementptr inbounds i8, i8* %223, i64 1, !dbg !1753
  call void @llvm.dbg.value(metadata i64 %237, metadata !1733, metadata !DIExpression()) #19, !dbg !1737
  call void @llvm.dbg.value(metadata i8* %238, metadata !1732, metadata !DIExpression()) #19, !dbg !1735
  %239 = add i64 %237, 1, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %239, metadata !1733, metadata !DIExpression()) #19, !dbg !1737
  %240 = icmp ult i64 %239, %204, !dbg !1755
  br i1 %240, label %221, label %241, !dbg !1738, !llvm.loop !1756

241:                                              ; preds = %235, %218
  %242 = phi i8* [ %199, %218 ], [ %238, %235 ], !dbg !1735
  call void @llvm.dbg.value(metadata i8* %242, metadata !1732, metadata !DIExpression()) #19, !dbg !1735
  %243 = icmp ult i8* %242, %216, !dbg !1758
  br i1 %243, label %244, label %245, !dbg !1760

244:                                              ; preds = %241
  store i8 0, i8* %242, align 1, !dbg !1761, !tbaa !1646
  br label %245, !dbg !1762

245:                                              ; preds = %244, %241, %215
  call void @llvm.dbg.value(metadata i64 1, metadata !1708, metadata !DIExpression()) #19, !dbg !1709
  store i8 0, i8* %216, align 1, !dbg !1763, !tbaa !1646
  br label %246, !dbg !1764

246:                                              ; preds = %250, %245
  %247 = phi i64 [ %203, %245 ], [ %251, %250 ], !dbg !1709
  call void @llvm.dbg.value(metadata i64 %247, metadata !1708, metadata !DIExpression()) #19, !dbg !1709
  %248 = getelementptr inbounds i8, i8* %199, i64 %247, !dbg !1765
  %249 = load i8, i8* %248, align 1, !dbg !1765, !tbaa !1646
  switch i8 %249, label %387 [
    i8 32, label %250
    i8 9, label %250
    i8 61, label %252
  ], !dbg !1765

250:                                              ; preds = %246, %246
  %251 = add i64 %247, 1, !dbg !1766
  call void @llvm.dbg.value(metadata i64 %251, metadata !1708, metadata !DIExpression()) #19, !dbg !1709
  br label %246, !dbg !1764, !llvm.loop !1767

252:                                              ; preds = %246, %257
  %253 = phi i64 [ %254, %257 ], [ %247, %246 ]
  %254 = add i64 %253, 1, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %254, metadata !1708, metadata !DIExpression()) #19, !dbg !1709
  %255 = getelementptr inbounds i8, i8* %199, i64 %254, !dbg !1768
  %256 = load i8, i8* %255, align 1, !dbg !1768, !tbaa !1646
  switch i8 %256, label %258 [
    i8 32, label %257
    i8 9, label %257
  ], !dbg !1768

257:                                              ; preds = %252, %252
  br label %252, !dbg !1709, !llvm.loop !1769

258:                                              ; preds = %252
  %259 = getelementptr inbounds i8, i8* %199, i64 %254, !dbg !1768
  call void @llvm.dbg.value(metadata i8* %259, metadata !1772, metadata !DIExpression()) #19, !dbg !1780
  call void @llvm.dbg.value(metadata i32 0, metadata !1778, metadata !DIExpression()) #19, !dbg !1782
  %260 = load i1, i1* @digest_hex_bytes, align 8, !dbg !1783
  br i1 %260, label %261, label %378, !dbg !1785

261:                                              ; preds = %258
  %262 = tail call i16** @__ctype_b_loc() #24, !dbg !1786
  %263 = load i16*, i16** %262, align 8, !dbg !1786, !tbaa !1344
  %264 = add i64 %253, 33, !dbg !1785
  %265 = getelementptr i8, i8* %199, i64 %264, !dbg !1785
  call void @llvm.dbg.value(metadata i32 0, metadata !1778, metadata !DIExpression()) #19, !dbg !1782
  call void @llvm.dbg.value(metadata i8* %259, metadata !1772, metadata !DIExpression()) #19, !dbg !1780
  %266 = zext i8 %256 to i64, !dbg !1789
  %267 = getelementptr inbounds i16, i16* %263, i64 %266, !dbg !1789
  %268 = load i16, i16* %267, align 2, !dbg !1789, !tbaa !1790
  %269 = and i16 %268, 4096, !dbg !1789
  %270 = icmp eq i16 %269, 0, !dbg !1789
  br i1 %270, label %387, label %271, !dbg !1792

271:                                              ; preds = %261, %277
  %272 = phi i8* [ %274, %277 ], [ %259, %261 ]
  %273 = phi i32 [ %275, %277 ], [ 0, %261 ]
  call void @llvm.dbg.value(metadata i8* %272, metadata !1772, metadata !DIExpression()) #19, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %273, metadata !1778, metadata !DIExpression()) #19, !dbg !1782
  %274 = getelementptr inbounds i8, i8* %272, i64 1, !dbg !1793
  call void @llvm.dbg.value(metadata i8* %274, metadata !1772, metadata !DIExpression()) #19, !dbg !1780
  %275 = add nuw nsw i32 %273, 1, !dbg !1794
  call void @llvm.dbg.value(metadata i32 %275, metadata !1778, metadata !DIExpression()) #19, !dbg !1782
  %276 = icmp eq i32 %275, 32, !dbg !1795
  br i1 %276, label %376, label %277, !dbg !1785, !llvm.loop !1796

277:                                              ; preds = %271
  %278 = load i8, i8* %274, align 1, !dbg !1789, !tbaa !1646
  call void @llvm.dbg.value(metadata i32 %275, metadata !1778, metadata !DIExpression()) #19, !dbg !1782
  call void @llvm.dbg.value(metadata i8* %274, metadata !1772, metadata !DIExpression()) #19, !dbg !1780
  %279 = zext i8 %278 to i64, !dbg !1789
  %280 = getelementptr inbounds i16, i16* %263, i64 %279, !dbg !1789
  %281 = load i16, i16* %280, align 2, !dbg !1789, !tbaa !1790
  %282 = and i16 %281, 4096, !dbg !1789
  %283 = icmp eq i16 %282, 0, !dbg !1789
  br i1 %283, label %387, label %271, !dbg !1792

284:                                              ; preds = %181
  %285 = sub i64 %172, %183, !dbg !1798
  %286 = load i1, i1* @min_digest_line_length, align 8, !dbg !1800
  %287 = select i1 %286, i64 34, i64 0, !dbg !1800
  %288 = load i8, i8* %184, align 1, !dbg !1801, !tbaa !1646
  %289 = icmp eq i8 %288, 92, !dbg !1802
  %290 = zext i1 %289 to i64, !dbg !1803
  %291 = or i64 %287, %290, !dbg !1804
  %292 = icmp ult i64 %285, %291, !dbg !1805
  br i1 %292, label %387, label %293, !dbg !1806

293:                                              ; preds = %284
  %294 = load i1, i1* @digest_hex_bytes, align 8, !dbg !1807
  %295 = select i1 %294, i64 32, i64 0, !dbg !1807
  %296 = add i64 %295, %183, !dbg !1808
  call void @llvm.dbg.value(metadata i64 %296, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  %297 = getelementptr inbounds i8, i8* %171, i64 %296, !dbg !1809
  %298 = load i8, i8* %297, align 1, !dbg !1809, !tbaa !1646
  switch i8 %298, label %387 [
    i8 32, label %299
    i8 9, label %299
  ], !dbg !1809

299:                                              ; preds = %293, %293
  %300 = add i64 %296, 1, !dbg !1811
  call void @llvm.dbg.value(metadata i64 %300, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  store i8 0, i8* %297, align 1, !dbg !1812, !tbaa !1646
  call void @llvm.dbg.value(metadata i8* %184, metadata !1772, metadata !DIExpression()) #19, !dbg !1813
  call void @llvm.dbg.value(metadata i32 0, metadata !1778, metadata !DIExpression()) #19, !dbg !1816
  br i1 %294, label %301, label %322, !dbg !1817

301:                                              ; preds = %299
  %302 = tail call i16** @__ctype_b_loc() #24, !dbg !1818
  %303 = load i16*, i16** %302, align 8, !dbg !1818, !tbaa !1344
  %304 = getelementptr i8, i8* %184, i64 32, !dbg !1817
  br label %305, !dbg !1817

305:                                              ; preds = %706, %301
  %306 = phi i32 [ 0, %301 ], [ %708, %706 ]
  %307 = phi i8* [ %184, %301 ], [ %707, %706 ]
  call void @llvm.dbg.value(metadata i32 %306, metadata !1778, metadata !DIExpression()) #19, !dbg !1816
  call void @llvm.dbg.value(metadata i8* %307, metadata !1772, metadata !DIExpression()) #19, !dbg !1813
  %308 = load i8, i8* %307, align 1, !dbg !1819, !tbaa !1646
  %309 = zext i8 %308 to i64, !dbg !1819
  %310 = getelementptr inbounds i16, i16* %303, i64 %309, !dbg !1819
  %311 = load i16, i16* %310, align 2, !dbg !1819, !tbaa !1790
  %312 = and i16 %311, 4096, !dbg !1819
  %313 = icmp eq i16 %312, 0, !dbg !1819
  br i1 %313, label %387, label %314, !dbg !1820

314:                                              ; preds = %305
  %315 = getelementptr inbounds i8, i8* %307, i64 1, !dbg !1821
  call void @llvm.dbg.value(metadata i8* %315, metadata !1772, metadata !DIExpression()) #19, !dbg !1813
  call void @llvm.dbg.value(metadata i32 %306, metadata !1778, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #19, !dbg !1816
  %316 = load i8, i8* %315, align 1, !dbg !1819, !tbaa !1646
  %317 = zext i8 %316 to i64, !dbg !1819
  %318 = getelementptr inbounds i16, i16* %303, i64 %317, !dbg !1819
  %319 = load i16, i16* %318, align 2, !dbg !1819, !tbaa !1790
  %320 = and i16 %319, 4096, !dbg !1819
  %321 = icmp eq i16 %320, 0, !dbg !1819
  br i1 %321, label %387, label %690, !dbg !1820

322:                                              ; preds = %706, %299
  %323 = phi i8* [ %184, %299 ], [ %304, %706 ]
  call void @llvm.dbg.value(metadata i8* %323, metadata !1772, metadata !DIExpression()) #19, !dbg !1813
  %324 = load i8, i8* %323, align 1, !dbg !1822, !tbaa !1646
  %325 = icmp eq i8 %324, 0, !dbg !1823
  br i1 %325, label %326, label %387, !dbg !1824

326:                                              ; preds = %322
  %327 = sub i64 %172, %300, !dbg !1825
  %328 = icmp eq i64 %327, 1, !dbg !1827
  br i1 %328, label %332, label %329, !dbg !1828

329:                                              ; preds = %326
  %330 = getelementptr inbounds i8, i8* %171, i64 %300, !dbg !1829
  %331 = load i8, i8* %330, align 1, !dbg !1829, !tbaa !1646
  switch i8 %331, label %332 [
    i8 32, label %336
    i8 42, label %336
  ], !dbg !1830

332:                                              ; preds = %329, %326
  %333 = load i32, i32* @bsd_reversed, align 4, !dbg !1831, !tbaa !1556
  %334 = icmp eq i32 %333, 0, !dbg !1834
  br i1 %334, label %387, label %335, !dbg !1835

335:                                              ; preds = %332
  store i32 1, i32* @bsd_reversed, align 4, !dbg !1836, !tbaa !1556
  br label %341, !dbg !1837

336:                                              ; preds = %329, %329
  %337 = load i32, i32* @bsd_reversed, align 4, !dbg !1838, !tbaa !1556
  %338 = icmp eq i32 %337, 1, !dbg !1840
  br i1 %338, label %341, label %339, !dbg !1841

339:                                              ; preds = %336
  store i32 0, i32* @bsd_reversed, align 4, !dbg !1842, !tbaa !1556
  %340 = add i64 %296, 2, !dbg !1844
  call void @llvm.dbg.value(metadata i64 %340, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  br label %341, !dbg !1845

341:                                              ; preds = %339, %336, %335
  %342 = phi i64 [ %300, %335 ], [ %340, %339 ], [ %300, %336 ], !dbg !1670
  call void @llvm.dbg.value(metadata i64 %342, metadata !1669, metadata !DIExpression()) #19, !dbg !1670
  %343 = getelementptr inbounds i8, i8* %171, i64 %342, !dbg !1846
  br i1 %182, label %344, label %381, !dbg !1847

344:                                              ; preds = %341
  %345 = sub i64 %172, %342, !dbg !1848
  call void @llvm.dbg.value(metadata i8* %343, metadata !1726, metadata !DIExpression()) #19, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %345, metadata !1731, metadata !DIExpression()) #19, !dbg !1850
  call void @llvm.dbg.value(metadata i8* %343, metadata !1732, metadata !DIExpression()) #19, !dbg !1850
  call void @llvm.dbg.value(metadata i64 0, metadata !1733, metadata !DIExpression()) #19, !dbg !1852
  %346 = icmp eq i64 %345, 0, !dbg !1853
  br i1 %346, label %369, label %347, !dbg !1854

347:                                              ; preds = %344
  %348 = add i64 %345, -1, !dbg !1855
  br label %349, !dbg !1854

349:                                              ; preds = %363, %347
  %350 = phi i64 [ 0, %347 ], [ %367, %363 ]
  %351 = phi i8* [ %343, %347 ], [ %366, %363 ]
  call void @llvm.dbg.value(metadata i64 %350, metadata !1733, metadata !DIExpression()) #19, !dbg !1852
  call void @llvm.dbg.value(metadata i8* %351, metadata !1732, metadata !DIExpression()) #19, !dbg !1850
  %352 = getelementptr inbounds i8, i8* %343, i64 %350, !dbg !1856
  %353 = load i8, i8* %352, align 1, !dbg !1856, !tbaa !1646
  %354 = sext i8 %353 to i32, !dbg !1856
  switch i32 %354, label %363 [
    i32 92, label %355
    i32 0, label %387
  ], !dbg !1857

355:                                              ; preds = %349
  %356 = icmp eq i64 %350, %348, !dbg !1858
  br i1 %356, label %387, label %357, !dbg !1859

357:                                              ; preds = %355
  %358 = add nuw i64 %350, 1, !dbg !1860
  call void @llvm.dbg.value(metadata i64 %358, metadata !1733, metadata !DIExpression()) #19, !dbg !1852
  %359 = getelementptr inbounds i8, i8* %343, i64 %358, !dbg !1861
  %360 = load i8, i8* %359, align 1, !dbg !1861, !tbaa !1646
  %361 = sext i8 %360 to i32, !dbg !1861
  switch i32 %361, label %387 [
    i32 110, label %363
    i32 92, label %362
  ], !dbg !1862

362:                                              ; preds = %357
  call void @llvm.dbg.value(metadata i8* %351, metadata !1732, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #19, !dbg !1850
  br label %363, !dbg !1863

363:                                              ; preds = %349, %357, %362
  %364 = phi i8 [ 92, %362 ], [ 10, %357 ], [ %353, %349 ]
  %365 = phi i64 [ %358, %362 ], [ %358, %357 ], [ %350, %349 ], !dbg !1852
  store i8 %364, i8* %351, align 1, !dbg !1864, !tbaa !1646
  %366 = getelementptr inbounds i8, i8* %351, i64 1, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %365, metadata !1733, metadata !DIExpression()) #19, !dbg !1852
  call void @llvm.dbg.value(metadata i8* %366, metadata !1732, metadata !DIExpression()) #19, !dbg !1850
  %367 = add i64 %365, 1, !dbg !1865
  call void @llvm.dbg.value(metadata i64 %367, metadata !1733, metadata !DIExpression()) #19, !dbg !1852
  %368 = icmp ult i64 %367, %345, !dbg !1853
  br i1 %368, label %349, label %369, !dbg !1854, !llvm.loop !1866

369:                                              ; preds = %363, %344
  %370 = phi i8* [ %343, %344 ], [ %366, %363 ], !dbg !1850
  call void @llvm.dbg.value(metadata i8* %370, metadata !1732, metadata !DIExpression()) #19, !dbg !1850
  %371 = getelementptr inbounds i8, i8* %171, i64 %172, !dbg !1868
  %372 = icmp ult i8* %370, %371, !dbg !1869
  br i1 %372, label %373, label %374, !dbg !1870

373:                                              ; preds = %369
  store i8 0, i8* %370, align 1, !dbg !1871, !tbaa !1646
  br label %374, !dbg !1872

374:                                              ; preds = %373, %369
  %375 = icmp eq i8* %171, null, !dbg !1873
  br i1 %375, label %387, label %381, !dbg !1874

376:                                              ; preds = %271
  %377 = load i8, i8* %265, align 1, !dbg !1875, !tbaa !1646
  br label %378, !dbg !1875

378:                                              ; preds = %376, %258
  %379 = phi i8 [ %377, %376 ], [ %256, %258 ], !dbg !1875
  call void @llvm.dbg.value(metadata i8* undef, metadata !1772, metadata !DIExpression()) #19, !dbg !1780
  %380 = icmp eq i8 %379, 0, !dbg !1876
  br i1 %380, label %381, label %387, !dbg !1874

381:                                              ; preds = %378, %374, %341
  %382 = phi i8* [ %259, %378 ], [ %184, %374 ], [ %184, %341 ]
  %383 = phi i8* [ %199, %378 ], [ %343, %374 ], [ %343, %341 ]
  br i1 %128, label %384, label %395, !dbg !1877

384:                                              ; preds = %381
  %385 = call i32 @strcmp(i8* nonnull dereferenceable(1) %383, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #21, !dbg !1878
  %386 = icmp eq i32 %385, 0, !dbg !1878
  br i1 %386, label %387, label %395, !dbg !1879

387:                                              ; preds = %305, %314, %690, %698, %357, %355, %349, %229, %227, %221, %246, %277, %261, %384, %378, %374, %332, %322, %293, %284, %210, %197, %187
  %388 = add i64 %150, 1, !dbg !1880
  call void @llvm.dbg.value(metadata i64 %388, metadata !232, metadata !DIExpression()) #19, !dbg !1576
  %389 = load i1, i1* @warn, align 1, !dbg !1882
  br i1 %389, label %390, label %393, !dbg !1884

390:                                              ; preds = %387
  %391 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.67, i64 0, i64 0), i32 5) #19, !dbg !1885
  %392 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #19, !dbg !1887
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %391, i8* %392, i64 %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #19, !dbg !1888
  br label %393, !dbg !1889

393:                                              ; preds = %390, %387
  %394 = add i64 %149, 1, !dbg !1890
  call void @llvm.dbg.value(metadata i64 %394, metadata !233, metadata !DIExpression()) #19, !dbg !1576
  br label %501, !dbg !1891

395:                                              ; preds = %384, %381
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #19, !dbg !1892
  %396 = load i1, i1* @status_only, align 1, !dbg !1893
  br i1 %396, label %400, label %397, !dbg !1894

397:                                              ; preds = %395
  %398 = call i8* @strchr(i8* nonnull dereferenceable(1) %383, i32 10) #21, !dbg !1895
  %399 = icmp ne i8* %398, null, !dbg !1894
  br label %400

400:                                              ; preds = %397, %395
  %401 = phi i1 [ false, %395 ], [ %399, %397 ], !dbg !1896
  call void @llvm.dbg.value(metadata i1 %401, metadata !257, metadata !DIExpression()) #19, !dbg !1896
  call void @llvm.dbg.value(metadata i8 1, metadata !236, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i8* %6, metadata !256, metadata !DIExpression(DW_OP_deref)) #19, !dbg !1896
  %402 = call fastcc zeroext i1 @digest_file(i8* %383, i8* nonnull %116, i8* nonnull %6) #19, !dbg !1897
  call void @llvm.dbg.value(metadata i1 %402, metadata !253, metadata !DIExpression()) #19, !dbg !1896
  br i1 %402, label %421, label %403, !dbg !1898

403:                                              ; preds = %400
  %404 = add i64 %147, 1, !dbg !1899
  call void @llvm.dbg.value(metadata i64 %404, metadata !235, metadata !DIExpression()) #19, !dbg !1576
  %405 = load i1, i1* @status_only, align 1, !dbg !1901
  br i1 %405, label %497, label %406, !dbg !1903

406:                                              ; preds = %403
  br i1 %401, label %407, label %418, !dbg !1904

407:                                              ; preds = %406
  call void @llvm.dbg.value(metadata i32 92, metadata !1574, metadata !DIExpression()) #19, !dbg !1906
  %408 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1909, !tbaa !1344
  %409 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %408, i64 0, i32 5, !dbg !1909
  %410 = load i8*, i8** %409, align 8, !dbg !1909, !tbaa !1910
  %411 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %408, i64 0, i32 6, !dbg !1909
  %412 = load i8*, i8** %411, align 8, !dbg !1909, !tbaa !1912
  %413 = icmp ult i8* %410, %412, !dbg !1909
  br i1 %413, label %416, label %414, !dbg !1909, !prof !1913, !misexpect !1914

414:                                              ; preds = %407
  %415 = call i32 @__overflow(%struct._IO_FILE* %408, i32 92) #19, !dbg !1909
  br label %418, !dbg !1909

416:                                              ; preds = %407
  %417 = getelementptr inbounds i8, i8* %410, i64 1, !dbg !1909
  store i8* %417, i8** %409, align 8, !dbg !1909, !tbaa !1910
  store i8 92, i8* %410, align 1, !dbg !1909, !tbaa !1646
  br label %418, !dbg !1909

418:                                              ; preds = %416, %414, %406
  call fastcc void @print_filename(i8* %383, i1 zeroext %401) #19, !dbg !1915
  %419 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i64 0, i64 0), i32 5) #19, !dbg !1916
  %420 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i8* %419) #19, !dbg !1916
  br label %497, !dbg !1917

421:                                              ; preds = %400
  %422 = load i1, i1* @ignore_missing, align 1, !dbg !1918
  %423 = xor i1 %422, true, !dbg !1919
  %424 = load i8, i8* %6, align 1, !dbg !1920
  %425 = icmp eq i8 %424, 0, !dbg !1920
  %426 = or i1 %425, %423, !dbg !1919
  br i1 %426, label %427, label %497, !dbg !1919

427:                                              ; preds = %421
  %428 = load i1, i1* @digest_hex_bytes, align 8, !dbg !1921
  %429 = select i1 %428, i64 16, i64 0, !dbg !1922
  call void @llvm.dbg.value(metadata i64 %429, metadata !258, metadata !DIExpression()) #19, !dbg !1923
  call void @llvm.dbg.value(metadata i64 0, metadata !262, metadata !DIExpression()) #19, !dbg !1923
  br i1 %428, label %430, label %466, !dbg !1924

430:                                              ; preds = %427
  %431 = tail call i32** @__ctype_tolower_loc() #24, !dbg !1925
  %432 = load i32*, i32** %431, align 8, !dbg !1925, !tbaa !1344
  br label %433, !dbg !1924

433:                                              ; preds = %463, %430
  %434 = phi i64 [ 0, %430 ], [ %464, %463 ]
  call void @llvm.dbg.value(metadata i64 %434, metadata !262, metadata !DIExpression()) #19, !dbg !1923
  %435 = shl nuw i64 %434, 1, !dbg !1927
  %436 = getelementptr inbounds i8, i8* %382, i64 %435, !dbg !1927
  %437 = load i8, i8* %436, align 1, !dbg !1927, !tbaa !1646
  %438 = zext i8 %437 to i64, !dbg !1927
  %439 = getelementptr inbounds i32, i32* %432, i64 %438, !dbg !1927
  %440 = load i32, i32* %439, align 4, !dbg !1927, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %440, metadata !263, metadata !DIExpression()) #19, !dbg !1928
  %441 = getelementptr inbounds i8, i8* %116, i64 %434, !dbg !1929
  %442 = load i8, i8* %441, align 1, !dbg !1929, !tbaa !1646
  %443 = zext i8 %442 to i32, !dbg !1929
  %444 = lshr i32 %443, 4, !dbg !1930
  %445 = zext i32 %444 to i64, !dbg !1931
  %446 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %445, !dbg !1931
  %447 = load i8, i8* %446, align 1, !dbg !1931, !tbaa !1646
  %448 = sext i8 %447 to i32, !dbg !1931
  %449 = icmp eq i32 %440, %448, !dbg !1932
  br i1 %449, label %450, label %466, !dbg !1933

450:                                              ; preds = %433
  %451 = or i64 %435, 1, !dbg !1934
  %452 = getelementptr inbounds i8, i8* %382, i64 %451, !dbg !1934
  %453 = load i8, i8* %452, align 1, !dbg !1934, !tbaa !1646
  %454 = zext i8 %453 to i64, !dbg !1934
  %455 = getelementptr inbounds i32, i32* %432, i64 %454, !dbg !1934
  %456 = load i32, i32* %455, align 4, !dbg !1934, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %456, metadata !269, metadata !DIExpression()) #19, !dbg !1936
  %457 = and i32 %443, 15, !dbg !1937
  %458 = zext i32 %457 to i64, !dbg !1938
  %459 = getelementptr inbounds [16 x i8], [16 x i8]* @digest_check.bin2hex, i64 0, i64 %458, !dbg !1938
  %460 = load i8, i8* %459, align 1, !dbg !1938, !tbaa !1646
  %461 = sext i8 %460 to i32, !dbg !1939
  %462 = icmp eq i32 %456, %461, !dbg !1940
  br i1 %462, label %463, label %466, !dbg !1941

463:                                              ; preds = %450
  %464 = add nuw nsw i64 %434, 1, !dbg !1942
  call void @llvm.dbg.value(metadata i64 %464, metadata !262, metadata !DIExpression()) #19, !dbg !1923
  %465 = icmp ult i64 %464, %429, !dbg !1943
  br i1 %465, label %433, label %466, !dbg !1924, !llvm.loop !1944

466:                                              ; preds = %463, %450, %433, %427
  %467 = phi i64 [ 0, %427 ], [ %464, %463 ], [ %434, %433 ], [ %434, %450 ], !dbg !1946
  call void @llvm.dbg.value(metadata i64 %467, metadata !262, metadata !DIExpression()) #19, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %467, metadata !262, metadata !DIExpression()) #19, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %467, metadata !262, metadata !DIExpression()) #19, !dbg !1923
  %468 = icmp ne i64 %467, %429, !dbg !1947
  %469 = add i64 %148, 1, !dbg !1949
  %470 = select i1 %468, i8 %144, i8 1, !dbg !1949
  %471 = select i1 %468, i64 %469, i64 %148, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %471, metadata !234, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i8 %470, metadata !237, metadata !DIExpression()) #19, !dbg !1576
  %472 = load i1, i1* @status_only, align 1, !dbg !1950
  br i1 %472, label %497, label %473, !dbg !1952

473:                                              ; preds = %466
  br i1 %468, label %476, label %474, !dbg !1953

474:                                              ; preds = %473
  %475 = load i1, i1* @quiet, align 1, !dbg !1956
  br i1 %475, label %497, label %476, !dbg !1957

476:                                              ; preds = %474, %473
  br i1 %401, label %477, label %488, !dbg !1958

477:                                              ; preds = %476
  call void @llvm.dbg.value(metadata i32 92, metadata !1574, metadata !DIExpression()) #19, !dbg !1960
  %478 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1963, !tbaa !1344
  %479 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %478, i64 0, i32 5, !dbg !1963
  %480 = load i8*, i8** %479, align 8, !dbg !1963, !tbaa !1910
  %481 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %478, i64 0, i32 6, !dbg !1963
  %482 = load i8*, i8** %481, align 8, !dbg !1963, !tbaa !1912
  %483 = icmp ult i8* %480, %482, !dbg !1963
  br i1 %483, label %486, label %484, !dbg !1963, !prof !1913, !misexpect !1914

484:                                              ; preds = %477
  %485 = call i32 @__overflow(%struct._IO_FILE* %478, i32 92) #19, !dbg !1963
  br label %488, !dbg !1963

486:                                              ; preds = %477
  %487 = getelementptr inbounds i8, i8* %480, i64 1, !dbg !1963
  store i8* %487, i8** %479, align 8, !dbg !1963, !tbaa !1910
  store i8 92, i8* %480, align 1, !dbg !1963, !tbaa !1646
  br label %488, !dbg !1963

488:                                              ; preds = %486, %484, %476
  call fastcc void @print_filename(i8* %383, i1 zeroext %401) #19, !dbg !1964
  br i1 %468, label %489, label %492, !dbg !1965

489:                                              ; preds = %488
  %490 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), i32 5) #19, !dbg !1966
  %491 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i8* %490) #19, !dbg !1966
  br label %497, !dbg !1966

492:                                              ; preds = %488
  %493 = load i1, i1* @quiet, align 1, !dbg !1968
  br i1 %493, label %497, label %494, !dbg !1970

494:                                              ; preds = %492
  %495 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0), i32 5) #19, !dbg !1971
  %496 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i8* %495) #19, !dbg !1971
  br label %497, !dbg !1971

497:                                              ; preds = %494, %492, %489, %474, %466, %421, %418, %403
  %498 = phi i8 [ %144, %403 ], [ %144, %418 ], [ %144, %421 ], [ %144, %489 ], [ 1, %494 ], [ 1, %492 ], [ %470, %466 ], [ 1, %474 ], !dbg !1619
  %499 = phi i64 [ %404, %403 ], [ %404, %418 ], [ %147, %421 ], [ %147, %489 ], [ %147, %494 ], [ %147, %492 ], [ %147, %466 ], [ %147, %474 ], !dbg !1576
  %500 = phi i64 [ %148, %403 ], [ %148, %418 ], [ %148, %421 ], [ %469, %489 ], [ %148, %494 ], [ %148, %492 ], [ %471, %466 ], [ %148, %474 ], !dbg !1576
  call void @llvm.dbg.value(metadata i64 %500, metadata !234, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %499, metadata !235, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.dbg.value(metadata i8 %498, metadata !237, metadata !DIExpression()) #19, !dbg !1576
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #19, !dbg !1972
  br label %501

501:                                              ; preds = %497, %393, %159
  %502 = phi i8 [ %498, %497 ], [ %144, %393 ], [ %144, %159 ]
  %503 = phi i8 [ 1, %497 ], [ %146, %393 ], [ %146, %159 ]
  %504 = phi i64 [ %499, %497 ], [ %147, %393 ], [ %147, %159 ]
  %505 = phi i64 [ %500, %497 ], [ %148, %393 ], [ %148, %159 ]
  %506 = phi i64 [ %149, %497 ], [ %394, %393 ], [ %149, %159 ]
  %507 = phi i64 [ %150, %497 ], [ %388, %393 ], [ %150, %159 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %140, metadata !1616, metadata !DIExpression()) #19, !dbg !1611
  %508 = load i32, i32* %142, align 8, !dbg !1973, !tbaa !1974
  %509 = and i32 %508, 48, !dbg !1975
  %510 = icmp eq i32 %509, 0, !dbg !1975
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %140, metadata !1976, metadata !DIExpression()) #19, !dbg !1979
  br i1 %510, label %143, label %511, !dbg !1975, !llvm.loop !1981

511:                                              ; preds = %501, %156
  %512 = phi i64 [ %507, %501 ], [ %150, %156 ]
  %513 = phi i64 [ %506, %501 ], [ %149, %156 ]
  %514 = phi i64 [ %505, %501 ], [ %148, %156 ]
  %515 = phi i64 [ %504, %501 ], [ %147, %156 ]
  %516 = phi i8 [ %503, %501 ], [ %146, %156 ]
  %517 = phi i8 [ %502, %501 ], [ %144, %156 ]
  %518 = load i8*, i8** %4, align 8, !dbg !1983, !tbaa !1344
  call void @llvm.dbg.value(metadata i8* %518, metadata !242, metadata !DIExpression()) #19, !dbg !1576
  call void @free(i8* %518) #19, !dbg !1984
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %140, metadata !1976, metadata !DIExpression()) #19, !dbg !1985
  %519 = load i32, i32* %142, align 8, !dbg !1988, !tbaa !1974
  %520 = and i32 %519, 32, !dbg !1988
  %521 = icmp eq i32 %520, 0, !dbg !1989
  br i1 %521, label %525, label %522, !dbg !1990

522:                                              ; preds = %511
  %523 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i64 0, i64 0), i32 5) #19, !dbg !1991
  %524 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #19, !dbg !1993
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %523, i8* %524) #19, !dbg !1994
  br label %574, !dbg !1995

525:                                              ; preds = %511
  br i1 %128, label %533, label %526, !dbg !1996

526:                                              ; preds = %525
  %527 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %140) #19, !dbg !1998
  %528 = icmp eq i32 %527, 0, !dbg !1999
  br i1 %528, label %533, label %529, !dbg !2000

529:                                              ; preds = %526
  %530 = tail call i32* @__errno_location() #24, !dbg !2001
  %531 = load i32, i32* %530, align 4, !dbg !2001, !tbaa !1556
  %532 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #19, !dbg !2003
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %531, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %532) #19, !dbg !2004
  br label %574, !dbg !2005

533:                                              ; preds = %526, %525
  %534 = and i8 %516, 1, !dbg !2006
  %535 = icmp eq i8 %534, 0, !dbg !2006
  br i1 %535, label %560, label %536, !dbg !2008

536:                                              ; preds = %533
  %537 = load i1, i1* @status_only, align 1, !dbg !2009
  br i1 %537, label %538, label %540, !dbg !2012

538:                                              ; preds = %536
  %539 = and i8 %517, 1, !dbg !2013
  br label %563, !dbg !2012

540:                                              ; preds = %536
  %541 = icmp eq i64 %512, 0, !dbg !2014
  br i1 %541, label %544, label %542, !dbg !2017

542:                                              ; preds = %540
  %543 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.75, i64 0, i64 0), i64 %512, i32 5) #19, !dbg !2018
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %543, i64 %512) #19, !dbg !2019
  br label %544, !dbg !2019

544:                                              ; preds = %542, %540
  %545 = icmp eq i64 %515, 0, !dbg !2020
  br i1 %545, label %548, label %546, !dbg !2022

546:                                              ; preds = %544
  %547 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.77, i64 0, i64 0), i64 %515, i32 5) #19, !dbg !2023
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %547, i64 %515) #19, !dbg !2024
  br label %548, !dbg !2024

548:                                              ; preds = %546, %544
  %549 = icmp eq i64 %514, 0, !dbg !2025
  br i1 %549, label %552, label %550, !dbg !2027

550:                                              ; preds = %548
  %551 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.79, i64 0, i64 0), i64 %514, i32 5) #19, !dbg !2028
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %551, i64 %514) #19, !dbg !2029
  br label %552, !dbg !2029

552:                                              ; preds = %550, %548
  %553 = load i1, i1* @ignore_missing, align 1, !dbg !2030
  %554 = and i8 %517, 1, !dbg !2032
  %555 = icmp eq i8 %554, 0, !dbg !2032
  %556 = and i1 %555, %553, !dbg !2033
  br i1 %556, label %557, label %563, !dbg !2033

557:                                              ; preds = %552
  %558 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.80, i64 0, i64 0), i32 5) #19, !dbg !2034
  %559 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #19, !dbg !2035
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %558, i8* %559) #19, !dbg !2036
  br label %574, !dbg !2037

560:                                              ; preds = %533
  %561 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.73, i64 0, i64 0), i32 5) #19, !dbg !2038
  %562 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %141) #19, !dbg !2040
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %561, i8* %562, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #19, !dbg !2041
  br label %574, !dbg !2042

563:                                              ; preds = %552, %538
  %564 = phi i8 [ %539, %538 ], [ %554, %552 ], !dbg !2013
  %565 = icmp ne i8 %564, 0, !dbg !2013
  %566 = or i64 %515, %514, !dbg !2037
  %567 = icmp eq i64 %566, 0, !dbg !2037
  %568 = and i1 %567, %565, !dbg !2037
  br i1 %568, label %569, label %574, !dbg !2037

569:                                              ; preds = %563
  %570 = load i1, i1* @strict, align 1, !dbg !2043
  %571 = icmp eq i64 %513, 0, !dbg !2044
  %572 = xor i1 %570, true, !dbg !2044
  %573 = or i1 %571, %572, !dbg !2044
  br label %574, !dbg !2044

574:                                              ; preds = %135, %522, %529, %557, %560, %563, %569
  %575 = phi i1 [ false, %522 ], [ false, %529 ], [ false, %135 ], [ false, %563 ], [ false, %560 ], [ %573, %569 ], [ false, %557 ], !dbg !1576
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %118) #19, !dbg !2045
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %117) #19, !dbg !2045
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %111) #19, !dbg !2045
  %576 = zext i1 %575 to i8, !dbg !2046
  %577 = and i8 %124, %576, !dbg !2047
  call void @llvm.dbg.value(metadata i8 %577, metadata !1405, metadata !DIExpression()), !dbg !1426
  br label %674, !dbg !2048

578:                                              ; preds = %122
  call void @llvm.dbg.value(metadata i32 undef, metadata !1415, metadata !DIExpression()), !dbg !2049
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %8) #19, !dbg !2050
  call void @llvm.dbg.value(metadata i8* %8, metadata !1418, metadata !DIExpression(DW_OP_deref)), !dbg !2049
  %579 = call fastcc zeroext i1 @digest_file(i8* %125, i8* nonnull %14, i8* nonnull %8), !dbg !2051
  br i1 %579, label %580, label %672, !dbg !2052

580:                                              ; preds = %578
  %581 = call i8* @strchr(i8* nonnull dereferenceable(1) %125, i32 92) #21, !dbg !2053
  %582 = icmp eq i8* %581, null, !dbg !2053
  br i1 %582, label %583, label %586, !dbg !2054

583:                                              ; preds = %580
  %584 = call i8* @strchr(i8* nonnull dereferenceable(1) %125, i32 10) #21, !dbg !2055
  %585 = icmp eq i8* %584, null, !dbg !2055
  br i1 %585, label %589, label %586, !dbg !2056

586:                                              ; preds = %583, %580
  %587 = load i1, i1* @delim, align 1, !dbg !2057
  %588 = xor i1 %587, true, !dbg !2058
  br label %589

589:                                              ; preds = %583, %586
  %590 = phi i1 [ false, %583 ], [ %588, %586 ], !dbg !2059
  call void @llvm.dbg.value(metadata i1 %590, metadata !1419, metadata !DIExpression()), !dbg !2059
  br i1 %46, label %591, label %610, !dbg !2060

591:                                              ; preds = %589
  br i1 %590, label %592, label %603, !dbg !2061

592:                                              ; preds = %591
  call void @llvm.dbg.value(metadata i32 92, metadata !1574, metadata !DIExpression()) #19, !dbg !2064
  %593 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2067, !tbaa !1344
  %594 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %593, i64 0, i32 5, !dbg !2067
  %595 = load i8*, i8** %594, align 8, !dbg !2067, !tbaa !1910
  %596 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %593, i64 0, i32 6, !dbg !2067
  %597 = load i8*, i8** %596, align 8, !dbg !2067, !tbaa !1912
  %598 = icmp ult i8* %595, %597, !dbg !2067
  br i1 %598, label %601, label %599, !dbg !2067, !prof !1913, !misexpect !1914

599:                                              ; preds = %592
  %600 = call i32 @__overflow(%struct._IO_FILE* %593, i32 92) #19, !dbg !2067
  br label %603, !dbg !2067

601:                                              ; preds = %592
  %602 = getelementptr inbounds i8, i8* %595, i64 1, !dbg !2067
  store i8* %602, i8** %594, align 8, !dbg !2067, !tbaa !1910
  store i8 92, i8* %595, align 1, !dbg !2067, !tbaa !1646
  br label %603, !dbg !2067

603:                                              ; preds = %601, %599, %591
  %604 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2068, !tbaa !1344
  %605 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %604), !dbg !2068
  %606 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2069, !tbaa !1344
  %607 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), %struct._IO_FILE* %606), !dbg !2069
  call fastcc void @print_filename(i8* %125, i1 zeroext %590), !dbg !2070
  %608 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2071, !tbaa !1344
  %609 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), %struct._IO_FILE* %608), !dbg !2071
  br label %622, !dbg !2072

610:                                              ; preds = %589
  br i1 %590, label %611, label %622, !dbg !2074

611:                                              ; preds = %610
  call void @llvm.dbg.value(metadata i32 92, metadata !1574, metadata !DIExpression()) #19, !dbg !2075
  %612 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2077, !tbaa !1344
  %613 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %612, i64 0, i32 5, !dbg !2077
  %614 = load i8*, i8** %613, align 8, !dbg !2077, !tbaa !1910
  %615 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %612, i64 0, i32 6, !dbg !2077
  %616 = load i8*, i8** %615, align 8, !dbg !2077, !tbaa !1912
  %617 = icmp ult i8* %614, %616, !dbg !2077
  br i1 %617, label %620, label %618, !dbg !2077, !prof !1913, !misexpect !1914

618:                                              ; preds = %611
  %619 = call i32 @__overflow(%struct._IO_FILE* %612, i32 92) #19, !dbg !2077
  br label %622, !dbg !2077

620:                                              ; preds = %611
  %621 = getelementptr inbounds i8, i8* %614, i64 1, !dbg !2077
  store i8* %621, i8** %613, align 8, !dbg !2077, !tbaa !1910
  store i8 92, i8* %614, align 1, !dbg !2077, !tbaa !1646
  br label %622, !dbg !2077

622:                                              ; preds = %620, %618, %603, %610
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !2078
  %623 = load i1, i1* @digest_hex_bytes, align 8, !dbg !2079
  br i1 %623, label %625, label %624, !dbg !2081

624:                                              ; preds = %625, %622
  br i1 %46, label %658, label %635, !dbg !2082

625:                                              ; preds = %622, %625
  %626 = phi i64 [ %631, %625 ], [ 0, %622 ]
  call void @llvm.dbg.value(metadata i64 %626, metadata !1422, metadata !DIExpression()), !dbg !2078
  %627 = getelementptr inbounds i8, i8* %14, i64 %626, !dbg !2083
  %628 = load i8, i8* %627, align 1, !dbg !2083, !tbaa !1646
  %629 = zext i8 %628 to i32, !dbg !2083
  %630 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 %629) #19, !dbg !2083
  %631 = add nuw nsw i64 %626, 1, !dbg !2084
  call void @llvm.dbg.value(metadata i64 %631, metadata !1422, metadata !DIExpression()), !dbg !2078
  %632 = load i1, i1* @digest_hex_bytes, align 8, !dbg !2079
  %633 = select i1 %632, i64 16, i64 0, !dbg !2085
  %634 = icmp ult i64 %631, %633, !dbg !2086
  br i1 %634, label %625, label %624, !dbg !2081, !llvm.loop !2087

635:                                              ; preds = %624
  call void @llvm.dbg.value(metadata i32 32, metadata !1574, metadata !DIExpression()) #19, !dbg !2089
  %636 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2091, !tbaa !1344
  %637 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %636, i64 0, i32 5, !dbg !2091
  %638 = load i8*, i8** %637, align 8, !dbg !2091, !tbaa !1910
  %639 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %636, i64 0, i32 6, !dbg !2091
  %640 = load i8*, i8** %639, align 8, !dbg !2091, !tbaa !1912
  %641 = icmp ult i8* %638, %640, !dbg !2091
  br i1 %641, label %644, label %642, !dbg !2091, !prof !1913, !misexpect !1914

642:                                              ; preds = %635
  %643 = call i32 @__overflow(%struct._IO_FILE* %636, i32 32) #19, !dbg !2091
  br label %646, !dbg !2091

644:                                              ; preds = %635
  %645 = getelementptr inbounds i8, i8* %638, i64 1, !dbg !2091
  store i8* %645, i8** %637, align 8, !dbg !2091, !tbaa !1910
  store i8 32, i8* %638, align 1, !dbg !2091, !tbaa !1646
  br label %646, !dbg !2091

646:                                              ; preds = %642, %644
  call void @llvm.dbg.value(metadata i32 undef, metadata !1415, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i32 %109, metadata !1574, metadata !DIExpression()) #19, !dbg !1570
  %647 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2092, !tbaa !1344
  %648 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %647, i64 0, i32 5, !dbg !2092
  %649 = load i8*, i8** %648, align 8, !dbg !2092, !tbaa !1910
  %650 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %647, i64 0, i32 6, !dbg !2092
  %651 = load i8*, i8** %650, align 8, !dbg !2092, !tbaa !1912
  %652 = icmp ult i8* %649, %651, !dbg !2092
  br i1 %652, label %655, label %653, !dbg !2092, !prof !1913, !misexpect !1914

653:                                              ; preds = %646
  %654 = call i32 @__overflow(%struct._IO_FILE* %647, i32 %109) #19, !dbg !2092
  br label %657, !dbg !2092

655:                                              ; preds = %646
  %656 = getelementptr inbounds i8, i8* %649, i64 1, !dbg !2092
  store i8* %656, i8** %648, align 8, !dbg !2092, !tbaa !1910
  store i8 %110, i8* %649, align 1, !dbg !2092, !tbaa !1646
  br label %657, !dbg !2092

657:                                              ; preds = %653, %655
  call fastcc void @print_filename(i8* %125, i1 zeroext %590), !dbg !2093
  br label %658, !dbg !2094

658:                                              ; preds = %657, %624
  %659 = load i1, i1* @delim, align 1, !dbg !2095
  %660 = select i1 %659, i32 0, i32 10, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %660, metadata !1574, metadata !DIExpression()) #19, !dbg !2096
  %661 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2098, !tbaa !1344
  %662 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %661, i64 0, i32 5, !dbg !2098
  %663 = load i8*, i8** %662, align 8, !dbg !2098, !tbaa !1910
  %664 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %661, i64 0, i32 6, !dbg !2098
  %665 = load i8*, i8** %664, align 8, !dbg !2098, !tbaa !1912
  %666 = icmp ult i8* %663, %665, !dbg !2098
  br i1 %666, label %669, label %667, !dbg !2098, !prof !1913, !misexpect !1914

667:                                              ; preds = %658
  %668 = call i32 @__overflow(%struct._IO_FILE* %661, i32 %660) #19, !dbg !2098
  br label %672, !dbg !2098

669:                                              ; preds = %658
  %670 = trunc i32 %660 to i8, !dbg !2098
  %671 = getelementptr inbounds i8, i8* %663, i64 1, !dbg !2098
  store i8* %671, i8** %662, align 8, !dbg !2098, !tbaa !1910
  store i8 %670, i8* %663, align 1, !dbg !2098, !tbaa !1646
  br label %672, !dbg !2098

672:                                              ; preds = %669, %667, %578
  %673 = phi i8 [ 0, %578 ], [ %124, %667 ], [ %124, %669 ], !dbg !1426
  call void @llvm.dbg.value(metadata i8 %673, metadata !1405, metadata !DIExpression()), !dbg !1426
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %8) #19, !dbg !2099
  br label %674

674:                                              ; preds = %672, %574
  %675 = phi i8 [ %577, %574 ], [ %673, %672 ], !dbg !1426
  call void @llvm.dbg.value(metadata i8 %675, metadata !1405, metadata !DIExpression()), !dbg !1426
  %676 = getelementptr inbounds i8*, i8** %123, i64 1, !dbg !2100
  call void @llvm.dbg.value(metadata i8** %676, metadata !1410, metadata !DIExpression()), !dbg !1564
  %677 = icmp ult i8** %676, %104, !dbg !1565
  br i1 %677, label %122, label %119, !dbg !1566, !llvm.loop !2101

678:                                              ; preds = %119
  %679 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2103, !tbaa !1344
  %680 = call i32 @rpl_fclose(%struct._IO_FILE* %679) #19, !dbg !2104
  %681 = icmp eq i32 %680, -1, !dbg !2105
  br i1 %681, label %682, label %686, !dbg !2106

682:                                              ; preds = %678
  %683 = tail call i32* @__errno_location() #24, !dbg !2107
  %684 = load i32, i32* %683, align 4, !dbg !2107, !tbaa !1556
  %685 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 5) #19, !dbg !2107
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %684, i8* %685) #19, !dbg !2107
  unreachable, !dbg !2107

686:                                              ; preds = %678, %119
  %687 = and i8 %120, 1, !dbg !2108
  %688 = xor i8 %687, 1, !dbg !2108
  %689 = zext i8 %688 to i32, !dbg !2108
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %9) #19, !dbg !2109
  ret i32 %689, !dbg !2109

690:                                              ; preds = %314
  call void @llvm.dbg.value(metadata i32 %306, metadata !1778, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #19, !dbg !1816
  %691 = getelementptr inbounds i8, i8* %307, i64 2, !dbg !1821
  call void @llvm.dbg.value(metadata i8* %691, metadata !1772, metadata !DIExpression()) #19, !dbg !1813
  call void @llvm.dbg.value(metadata i32 %306, metadata !1778, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #19, !dbg !1816
  %692 = load i8, i8* %691, align 1, !dbg !1819, !tbaa !1646
  %693 = zext i8 %692 to i64, !dbg !1819
  %694 = getelementptr inbounds i16, i16* %303, i64 %693, !dbg !1819
  %695 = load i16, i16* %694, align 2, !dbg !1819, !tbaa !1790
  %696 = and i16 %695, 4096, !dbg !1819
  %697 = icmp eq i16 %696, 0, !dbg !1819
  br i1 %697, label %387, label %698, !dbg !1820

698:                                              ; preds = %690
  call void @llvm.dbg.value(metadata i32 %306, metadata !1778, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #19, !dbg !1816
  %699 = getelementptr inbounds i8, i8* %307, i64 3, !dbg !1821
  call void @llvm.dbg.value(metadata i8* %699, metadata !1772, metadata !DIExpression()) #19, !dbg !1813
  call void @llvm.dbg.value(metadata i32 %306, metadata !1778, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #19, !dbg !1816
  %700 = load i8, i8* %699, align 1, !dbg !1819, !tbaa !1646
  %701 = zext i8 %700 to i64, !dbg !1819
  %702 = getelementptr inbounds i16, i16* %303, i64 %701, !dbg !1819
  %703 = load i16, i16* %702, align 2, !dbg !1819, !tbaa !1790
  %704 = and i16 %703, 4096, !dbg !1819
  %705 = icmp eq i16 %704, 0, !dbg !1819
  br i1 %705, label %387, label %706, !dbg !1820

706:                                              ; preds = %698
  call void @llvm.dbg.value(metadata i32 %306, metadata !1778, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)) #19, !dbg !1816
  %707 = getelementptr inbounds i8, i8* %307, i64 4, !dbg !1821
  call void @llvm.dbg.value(metadata i8* %707, metadata !1772, metadata !DIExpression()) #19, !dbg !1813
  %708 = add nuw nsw i32 %306, 4, !dbg !2110
  call void @llvm.dbg.value(metadata i32 %708, metadata !1778, metadata !DIExpression()) #19, !dbg !1816
  %709 = icmp eq i32 %708, 32, !dbg !2111
  br i1 %709, label %322, label %305, !dbg !1817, !llvm.loop !2112
}

; Function Attrs: nounwind
declare !dbg !136 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !139 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !142 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !149 i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !152 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !171 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

declare i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @digest_file(i8* %0, i8* %1, i8* nocapture %2) unnamed_addr #8 !dbg !2114 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2119, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32* undef, metadata !2120, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i8* %1, metadata !2121, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i8* %2, metadata !2122, metadata !DIExpression()), !dbg !2126
  %4 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #21, !dbg !2127
  %5 = icmp eq i32 %4, 0, !dbg !2127
  call void @llvm.dbg.value(metadata i1 %5, metadata !2125, metadata !DIExpression()), !dbg !2126
  store i8 0, i8* %2, align 1, !dbg !2128, !tbaa !2129
  br i1 %5, label %6, label %8, !dbg !2131

6:                                                ; preds = %3
  store i1 true, i1* @have_read_stdin, align 1, !dbg !2132
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2135, !tbaa !1344
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !2123, metadata !DIExpression()), !dbg !2126
  br label %21, !dbg !2136

8:                                                ; preds = %3
  %9 = tail call %struct._IO_FILE* @fopen_safer(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #19, !dbg !2137
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %9, metadata !2123, metadata !DIExpression()), !dbg !2126
  %10 = icmp eq %struct._IO_FILE* %9, null, !dbg !2139
  br i1 %10, label %11, label %21, !dbg !2141

11:                                               ; preds = %8
  %12 = load i1, i1* @ignore_missing, align 1, !dbg !2142
  %13 = tail call i32* @__errno_location() #24, !dbg !2145
  br i1 %12, label %14, label %18, !dbg !2146

14:                                               ; preds = %11
  %15 = load i32, i32* %13, align 4, !dbg !2147, !tbaa !1556
  %16 = icmp eq i32 %15, 2, !dbg !2148
  br i1 %16, label %17, label %18, !dbg !2149

17:                                               ; preds = %14
  store i8 1, i8* %2, align 1, !dbg !2150, !tbaa !2129
  br label %41, !dbg !2152

18:                                               ; preds = %11, %14
  %19 = load i32, i32* %13, align 4, !dbg !2153, !tbaa !1556
  %20 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #19, !dbg !2154
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %20) #19, !dbg !2155
  br label %41, !dbg !2156

21:                                               ; preds = %8, %6
  %22 = phi %struct._IO_FILE* [ %7, %6 ], [ %9, %8 ], !dbg !2157
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !2123, metadata !DIExpression()), !dbg !2126
  tail call void @fadvise(%struct._IO_FILE* %22, i32 2) #19, !dbg !2158
  %23 = tail call i32 @md5_stream(%struct._IO_FILE* %22, i8* %1) #19, !dbg !2159
  call void @llvm.dbg.value(metadata i32 %23, metadata !2124, metadata !DIExpression()), !dbg !2126
  %24 = icmp eq i32 %23, 0, !dbg !2160
  br i1 %24, label %33, label %25, !dbg !2162

25:                                               ; preds = %21
  %26 = tail call i32* @__errno_location() #24, !dbg !2163
  %27 = load i32, i32* %26, align 4, !dbg !2163, !tbaa !1556
  %28 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #19, !dbg !2165
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %28) #19, !dbg !2166
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2167, !tbaa !1344
  %30 = icmp eq %struct._IO_FILE* %22, %29, !dbg !2169
  br i1 %30, label %41, label %31, !dbg !2170

31:                                               ; preds = %25
  %32 = tail call i32 @rpl_fclose(%struct._IO_FILE* %22) #19, !dbg !2171
  br label %41, !dbg !2171

33:                                               ; preds = %21
  br i1 %5, label %41, label %34, !dbg !2172

34:                                               ; preds = %33
  %35 = tail call i32 @rpl_fclose(%struct._IO_FILE* %22) #19, !dbg !2174
  %36 = icmp eq i32 %35, 0, !dbg !2175
  br i1 %36, label %41, label %37, !dbg !2176

37:                                               ; preds = %34
  %38 = tail call i32* @__errno_location() #24, !dbg !2177
  %39 = load i32, i32* %38, align 4, !dbg !2177, !tbaa !1556
  %40 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #19, !dbg !2179
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* %40) #19, !dbg !2180
  br label %41, !dbg !2181

41:                                               ; preds = %33, %34, %31, %25, %37, %18, %17
  %42 = phi i1 [ false, %37 ], [ true, %17 ], [ false, %18 ], [ false, %25 ], [ false, %31 ], [ true, %34 ], [ true, %33 ], !dbg !2126
  ret i1 %42, !dbg !2182
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_filename(i8* nocapture readonly %0, i1 zeroext %1) unnamed_addr #8 !dbg !2183 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2187, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i1 %1, metadata !2188, metadata !DIExpression()), !dbg !2189
  br i1 %1, label %3, label %6, !dbg !2190

3:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %0, metadata !2187, metadata !DIExpression()), !dbg !2189
  %4 = load i8, i8* %0, align 1, !dbg !2191, !tbaa !1646
  %5 = icmp eq i8 %4, 0, !dbg !2192
  br i1 %5, label %35, label %9, !dbg !2192

6:                                                ; preds = %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2193, !tbaa !1344
  %8 = tail call i32 @fputs_unlocked(i8* %0, %struct._IO_FILE* %7), !dbg !2193
  br label %35, !dbg !2196

9:                                                ; preds = %3, %31
  %10 = phi i8 [ %33, %31 ], [ %4, %3 ]
  %11 = phi i8* [ %32, %31 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !2187, metadata !DIExpression()), !dbg !2189
  %12 = sext i8 %10 to i32, !dbg !2197
  switch i32 %12, label %19 [
    i32 10, label %13
    i32 92, label %16
  ], !dbg !2199

13:                                               ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2200, !tbaa !1344
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), %struct._IO_FILE* %14), !dbg !2200
  br label %31, !dbg !2202

16:                                               ; preds = %9
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2203, !tbaa !1344
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), %struct._IO_FILE* %17), !dbg !2203
  br label %31, !dbg !2204

19:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32 %12, metadata !1574, metadata !DIExpression()) #19, !dbg !2205
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2207, !tbaa !1344
  %21 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i64 0, i32 5, !dbg !2207
  %22 = load i8*, i8** %21, align 8, !dbg !2207, !tbaa !1910
  %23 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %20, i64 0, i32 6, !dbg !2207
  %24 = load i8*, i8** %23, align 8, !dbg !2207, !tbaa !1912
  %25 = icmp ult i8* %22, %24, !dbg !2207
  br i1 %25, label %29, label %26, !dbg !2207, !prof !1913, !misexpect !1914

26:                                               ; preds = %19
  %27 = and i32 %12, 255, !dbg !2207
  %28 = tail call i32 @__overflow(%struct._IO_FILE* %20, i32 %27) #19, !dbg !2207
  br label %31, !dbg !2207

29:                                               ; preds = %19
  %30 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !2207
  store i8* %30, i8** %21, align 8, !dbg !2207, !tbaa !1910
  store i8 %10, i8* %22, align 1, !dbg !2207, !tbaa !1646
  br label %31, !dbg !2207

31:                                               ; preds = %29, %26, %16, %13
  %32 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !2208
  call void @llvm.dbg.value(metadata i8* %32, metadata !2187, metadata !DIExpression()), !dbg !2189
  %33 = load i8, i8* %32, align 1, !dbg !2191, !tbaa !1646
  %34 = icmp eq i8 %33, 0, !dbg !2192
  br i1 %34, label %35, label %9, !dbg !2192, !llvm.loop !2209

35:                                               ; preds = %31, %3, %6
  ret void, !dbg !2211
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !186 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !189 i8* @dcngettext(i8*, i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !2212 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2214, metadata !DIExpression()), !dbg !2215
  store i8* %0, i8** @file_name, align 8, !dbg !2216, !tbaa !1344
  ret void, !dbg !2217
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !2218 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2222, metadata !DIExpression()), !dbg !2223
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2224, !tbaa !2129
  ret void, !dbg !2225
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !2226 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2231, !tbaa !1344
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #19, !dbg !2232
  %3 = icmp eq i32 %2, 0, !dbg !2233
  br i1 %3, label %22, label %4, !dbg !2234

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2235, !tbaa !2129, !range !2236
  %6 = icmp eq i8 %5, 0, !dbg !2235
  br i1 %6, label %11, label %7, !dbg !2237

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !2238
  %9 = load i32, i32* %8, align 4, !dbg !2238, !tbaa !1556
  %10 = icmp eq i32 %9, 32, !dbg !2239
  br i1 %10, label %22, label %11, !dbg !2240

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i64 0, i64 0), i32 5) #19, !dbg !2241
  call void @llvm.dbg.value(metadata i8* %12, metadata !2228, metadata !DIExpression()), !dbg !2242
  %13 = load i8*, i8** @file_name, align 8, !dbg !2243, !tbaa !1344
  %14 = icmp eq i8* %13, null, !dbg !2243
  %15 = tail call i32* @__errno_location() #24, !dbg !2245
  %16 = load i32, i32* %15, align 4, !dbg !2245, !tbaa !1556
  br i1 %14, label %19, label %17, !dbg !2246

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #19, !dbg !2247
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.87, i64 0, i64 0), i8* %18, i8* %12) #19, !dbg !2248
  br label %20, !dbg !2248

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.88, i64 0, i64 0), i8* %12) #19, !dbg !2249
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !2250, !tbaa !1556
  tail call void @_exit(i32 %21) #22, !dbg !2251
  unreachable, !dbg !2251

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2252, !tbaa !1344
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #19, !dbg !2254
  %25 = icmp eq i32 %24, 0, !dbg !2255
  br i1 %25, label %28, label %26, !dbg !2256

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !2257, !tbaa !1556
  tail call void @_exit(i32 %27) #22, !dbg !2258
  unreachable, !dbg !2258

28:                                               ; preds = %22
  ret void, !dbg !2259
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @md5_init_ctx(%struct.md5_ctx* nocapture %0) local_unnamed_addr #10 !dbg !2260 {
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %0, metadata !2264, metadata !DIExpression()), !dbg !2265
  %2 = bitcast %struct.md5_ctx* %0 to <4 x i32>*, !dbg !2266
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %2, align 4, !dbg !2266, !tbaa !1556
  %3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 1, !dbg !2267
  store i32 0, i32* %3, align 4, !dbg !2268, !tbaa !1556
  %4 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 0, !dbg !2269
  store i32 0, i32* %4, align 4, !dbg !2270, !tbaa !1556
  %5 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 5, !dbg !2271
  store i32 0, i32* %5, align 4, !dbg !2272, !tbaa !2273
  ret void, !dbg !2275
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @md5_read_ctx(%struct.md5_ctx* nocapture readonly %0, i8* returned %1) local_unnamed_addr #8 !dbg !2276 {
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %0, metadata !2282, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8* %1, metadata !2283, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8* %1, metadata !2284, metadata !DIExpression()), !dbg !2285
  %3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 0, !dbg !2286
  %4 = load i32, i32* %3, align 4, !dbg !2286, !tbaa !2287
  call void @llvm.dbg.value(metadata i8* %1, metadata !2288, metadata !DIExpression()) #19, !dbg !2294
  call void @llvm.dbg.value(metadata i32 %4, metadata !2293, metadata !DIExpression()) #19, !dbg !2294
  call void @llvm.dbg.value(metadata i32* undef, metadata !2293, metadata !DIExpression(DW_OP_deref)) #19, !dbg !2294
  call void @llvm.dbg.value(metadata i8* %1, metadata !2296, metadata !DIExpression()) #19, !dbg !2306
  call void @llvm.dbg.value(metadata i8* undef, metadata !2304, metadata !DIExpression()) #19, !dbg !2306
  call void @llvm.dbg.value(metadata i64 4, metadata !2305, metadata !DIExpression()) #19, !dbg !2306
  %5 = bitcast i8* %1 to i32*, !dbg !2308
  store i32 %4, i32* %5, align 1, !dbg !2308
  %6 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !2309
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 1, !dbg !2310
  %8 = load i32, i32* %7, align 4, !dbg !2310, !tbaa !2311
  call void @llvm.dbg.value(metadata i8* %6, metadata !2288, metadata !DIExpression()) #19, !dbg !2312
  call void @llvm.dbg.value(metadata i32 %8, metadata !2293, metadata !DIExpression()) #19, !dbg !2312
  call void @llvm.dbg.value(metadata i32* undef, metadata !2293, metadata !DIExpression(DW_OP_deref)) #19, !dbg !2312
  call void @llvm.dbg.value(metadata i8* %6, metadata !2296, metadata !DIExpression()) #19, !dbg !2314
  call void @llvm.dbg.value(metadata i8* undef, metadata !2304, metadata !DIExpression()) #19, !dbg !2314
  call void @llvm.dbg.value(metadata i64 4, metadata !2305, metadata !DIExpression()) #19, !dbg !2314
  %9 = bitcast i8* %6 to i32*, !dbg !2316
  store i32 %8, i32* %9, align 1, !dbg !2316
  %10 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !2317
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 2, !dbg !2318
  %12 = load i32, i32* %11, align 4, !dbg !2318, !tbaa !2319
  call void @llvm.dbg.value(metadata i8* %10, metadata !2288, metadata !DIExpression()) #19, !dbg !2320
  call void @llvm.dbg.value(metadata i32 %12, metadata !2293, metadata !DIExpression()) #19, !dbg !2320
  call void @llvm.dbg.value(metadata i32* undef, metadata !2293, metadata !DIExpression(DW_OP_deref)) #19, !dbg !2320
  call void @llvm.dbg.value(metadata i8* %10, metadata !2296, metadata !DIExpression()) #19, !dbg !2322
  call void @llvm.dbg.value(metadata i8* undef, metadata !2304, metadata !DIExpression()) #19, !dbg !2322
  call void @llvm.dbg.value(metadata i64 4, metadata !2305, metadata !DIExpression()) #19, !dbg !2322
  %13 = bitcast i8* %10 to i32*, !dbg !2324
  store i32 %12, i32* %13, align 1, !dbg !2324
  %14 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !2325
  %15 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 3, !dbg !2326
  %16 = load i32, i32* %15, align 4, !dbg !2326, !tbaa !2327
  call void @llvm.dbg.value(metadata i8* %14, metadata !2288, metadata !DIExpression()) #19, !dbg !2328
  call void @llvm.dbg.value(metadata i32 %16, metadata !2293, metadata !DIExpression()) #19, !dbg !2328
  call void @llvm.dbg.value(metadata i32* undef, metadata !2293, metadata !DIExpression(DW_OP_deref)) #19, !dbg !2328
  call void @llvm.dbg.value(metadata i8* %14, metadata !2296, metadata !DIExpression()) #19, !dbg !2330
  call void @llvm.dbg.value(metadata i8* undef, metadata !2304, metadata !DIExpression()) #19, !dbg !2330
  call void @llvm.dbg.value(metadata i64 4, metadata !2305, metadata !DIExpression()) #19, !dbg !2330
  %17 = bitcast i8* %14 to i32*, !dbg !2332
  store i32 %16, i32* %17, align 1, !dbg !2332
  ret i8* %1, !dbg !2333
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @md5_finish_ctx(%struct.md5_ctx* %0, i8* returned %1) local_unnamed_addr #8 !dbg !2334 {
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %0, metadata !2338, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i8* %1, metadata !2339, metadata !DIExpression()), !dbg !2342
  %3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 5, !dbg !2343
  %4 = load i32, i32* %3, align 4, !dbg !2343, !tbaa !2273
  call void @llvm.dbg.value(metadata i32 %4, metadata !2340, metadata !DIExpression()), !dbg !2342
  %5 = icmp ult i32 %4, 56, !dbg !2344
  %6 = select i1 %5, i64 16, i64 32, !dbg !2345
  call void @llvm.dbg.value(metadata i64 %6, metadata !2341, metadata !DIExpression()), !dbg !2342
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 0, !dbg !2346
  %8 = load i32, i32* %7, align 4, !dbg !2347, !tbaa !1556
  %9 = add i32 %8, %4, !dbg !2347
  store i32 %9, i32* %7, align 4, !dbg !2347, !tbaa !1556
  %10 = icmp ult i32 %9, %4, !dbg !2348
  br i1 %10, label %11, label %15, !dbg !2350

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 1, !dbg !2351
  %13 = load i32, i32* %12, align 4, !dbg !2352, !tbaa !1556
  %14 = add i32 %13, 1, !dbg !2352
  store i32 %14, i32* %12, align 4, !dbg !2352, !tbaa !1556
  br label %15, !dbg !2352

15:                                               ; preds = %11, %2
  %16 = shl i32 %9, 3, !dbg !2353
  %17 = add nsw i64 %6, -2, !dbg !2354
  %18 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 6, i64 %17, !dbg !2355
  store i32 %16, i32* %18, align 4, !dbg !2356, !tbaa !1556
  %19 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 1, !dbg !2357
  %20 = load i32, i32* %19, align 4, !dbg !2357, !tbaa !1556
  %21 = shl i32 %20, 3, !dbg !2357
  %22 = lshr i32 %9, 29, !dbg !2357
  %23 = or i32 %21, %22, !dbg !2357
  %24 = add nsw i64 %6, -1, !dbg !2358
  %25 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 6, i64 %24, !dbg !2359
  store i32 %23, i32* %25, align 4, !dbg !2360, !tbaa !1556
  %26 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 6, i64 0, !dbg !2361
  %27 = bitcast i32* %26 to i8*, !dbg !2361
  %28 = zext i32 %4 to i64, !dbg !2361
  %29 = getelementptr inbounds i8, i8* %27, i64 %28, !dbg !2361
  %30 = shl nuw nsw i64 %17, 2, !dbg !2362
  %31 = sub nsw i64 %30, %28, !dbg !2363
  call void @llvm.dbg.value(metadata i8* %29, metadata !2296, metadata !DIExpression()) #19, !dbg !2364
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds (<{ i8, [63 x i8] }>, <{ i8, [63 x i8] }>* @fillbuf, i64 0, i32 0), metadata !2304, metadata !DIExpression()) #19, !dbg !2364
  call void @llvm.dbg.value(metadata i64 %31, metadata !2305, metadata !DIExpression()) #19, !dbg !2364
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %29, i8* nonnull align 16 getelementptr inbounds (<{ i8, [63 x i8] }>, <{ i8, [63 x i8] }>* @fillbuf, i64 0, i32 0), i64 %31, i1 false) #19, !dbg !2366
  %32 = shl nuw nsw i64 %6, 2, !dbg !2367
  tail call void @md5_process_block(i8* nonnull %27, i64 %32, %struct.md5_ctx* nonnull %0) #19, !dbg !2368
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %0, metadata !2282, metadata !DIExpression()) #19, !dbg !2369
  call void @llvm.dbg.value(metadata i8* %1, metadata !2283, metadata !DIExpression()) #19, !dbg !2369
  call void @llvm.dbg.value(metadata i8* %1, metadata !2284, metadata !DIExpression()) #19, !dbg !2369
  %33 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 0, !dbg !2371
  %34 = load i32, i32* %33, align 4, !dbg !2371, !tbaa !2287
  call void @llvm.dbg.value(metadata i8* %1, metadata !2288, metadata !DIExpression()) #19, !dbg !2372
  call void @llvm.dbg.value(metadata i32 %34, metadata !2293, metadata !DIExpression()) #19, !dbg !2372
  call void @llvm.dbg.value(metadata i32* undef, metadata !2293, metadata !DIExpression(DW_OP_deref)) #19, !dbg !2372
  call void @llvm.dbg.value(metadata i8* %1, metadata !2296, metadata !DIExpression()) #19, !dbg !2374
  call void @llvm.dbg.value(metadata i8* undef, metadata !2304, metadata !DIExpression()) #19, !dbg !2374
  call void @llvm.dbg.value(metadata i64 4, metadata !2305, metadata !DIExpression()) #19, !dbg !2374
  %35 = bitcast i8* %1 to i32*, !dbg !2376
  store i32 %34, i32* %35, align 1, !dbg !2376
  %36 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !2377
  %37 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 1, !dbg !2378
  %38 = load i32, i32* %37, align 4, !dbg !2378, !tbaa !2311
  call void @llvm.dbg.value(metadata i8* %36, metadata !2288, metadata !DIExpression()) #19, !dbg !2379
  call void @llvm.dbg.value(metadata i32 %38, metadata !2293, metadata !DIExpression()) #19, !dbg !2379
  call void @llvm.dbg.value(metadata i32* undef, metadata !2293, metadata !DIExpression(DW_OP_deref)) #19, !dbg !2379
  call void @llvm.dbg.value(metadata i8* %36, metadata !2296, metadata !DIExpression()) #19, !dbg !2381
  call void @llvm.dbg.value(metadata i8* undef, metadata !2304, metadata !DIExpression()) #19, !dbg !2381
  call void @llvm.dbg.value(metadata i64 4, metadata !2305, metadata !DIExpression()) #19, !dbg !2381
  %39 = bitcast i8* %36 to i32*, !dbg !2383
  store i32 %38, i32* %39, align 1, !dbg !2383
  %40 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !2384
  %41 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 2, !dbg !2385
  %42 = load i32, i32* %41, align 4, !dbg !2385, !tbaa !2319
  call void @llvm.dbg.value(metadata i8* %40, metadata !2288, metadata !DIExpression()) #19, !dbg !2386
  call void @llvm.dbg.value(metadata i32 %42, metadata !2293, metadata !DIExpression()) #19, !dbg !2386
  call void @llvm.dbg.value(metadata i32* undef, metadata !2293, metadata !DIExpression(DW_OP_deref)) #19, !dbg !2386
  call void @llvm.dbg.value(metadata i8* %40, metadata !2296, metadata !DIExpression()) #19, !dbg !2388
  call void @llvm.dbg.value(metadata i8* undef, metadata !2304, metadata !DIExpression()) #19, !dbg !2388
  call void @llvm.dbg.value(metadata i64 4, metadata !2305, metadata !DIExpression()) #19, !dbg !2388
  %43 = bitcast i8* %40 to i32*, !dbg !2390
  store i32 %42, i32* %43, align 1, !dbg !2390
  %44 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !2391
  %45 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 3, !dbg !2392
  %46 = load i32, i32* %45, align 4, !dbg !2392, !tbaa !2327
  call void @llvm.dbg.value(metadata i8* %44, metadata !2288, metadata !DIExpression()) #19, !dbg !2393
  call void @llvm.dbg.value(metadata i32 %46, metadata !2293, metadata !DIExpression()) #19, !dbg !2393
  call void @llvm.dbg.value(metadata i32* undef, metadata !2293, metadata !DIExpression(DW_OP_deref)) #19, !dbg !2393
  call void @llvm.dbg.value(metadata i8* %44, metadata !2296, metadata !DIExpression()) #19, !dbg !2395
  call void @llvm.dbg.value(metadata i8* undef, metadata !2304, metadata !DIExpression()) #19, !dbg !2395
  call void @llvm.dbg.value(metadata i64 4, metadata !2305, metadata !DIExpression()) #19, !dbg !2395
  %47 = bitcast i8* %44 to i32*, !dbg !2397
  store i32 %46, i32* %47, align 1, !dbg !2397
  ret i8* %1, !dbg !2398
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local void @md5_process_block(i8* readonly %0, i64 %1, %struct.md5_ctx* nocapture %2) local_unnamed_addr #12 !dbg !2399 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2403, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 %1, metadata !2404, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %2, metadata !2405, metadata !DIExpression()), !dbg !2425
  %4 = bitcast i8* %0 to i32*, !dbg !2426
  call void @llvm.dbg.value(metadata i32* %4, metadata !2408, metadata !DIExpression()), !dbg !2425
  %5 = lshr i64 %1, 2, !dbg !2427
  call void @llvm.dbg.value(metadata i64 %5, metadata !2411, metadata !DIExpression()), !dbg !2425
  %6 = getelementptr inbounds i32, i32* %4, i64 %5, !dbg !2428
  call void @llvm.dbg.value(metadata i32* %6, metadata !2412, metadata !DIExpression()), !dbg !2425
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 0, !dbg !2429
  %8 = load i32, i32* %7, align 4, !dbg !2429, !tbaa !2287
  call void @llvm.dbg.value(metadata i32 %8, metadata !2413, metadata !DIExpression()), !dbg !2425
  %9 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 1, !dbg !2430
  %10 = load i32, i32* %9, align 4, !dbg !2430, !tbaa !2311
  call void @llvm.dbg.value(metadata i32 %10, metadata !2414, metadata !DIExpression()), !dbg !2425
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 2, !dbg !2431
  %12 = load i32, i32* %11, align 4, !dbg !2431, !tbaa !2319
  call void @llvm.dbg.value(metadata i32 %12, metadata !2415, metadata !DIExpression()), !dbg !2425
  %13 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 3, !dbg !2432
  %14 = load i32, i32* %13, align 4, !dbg !2432, !tbaa !2327
  call void @llvm.dbg.value(metadata i32 %14, metadata !2416, metadata !DIExpression()), !dbg !2425
  %15 = trunc i64 %1 to i32, !dbg !2433
  call void @llvm.dbg.value(metadata i32 %15, metadata !2417, metadata !DIExpression()), !dbg !2425
  %16 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 4, i64 0, !dbg !2434
  %17 = load i32, i32* %16, align 4, !dbg !2435, !tbaa !1556
  %18 = add i32 %17, %15, !dbg !2435
  store i32 %18, i32* %16, align 4, !dbg !2435, !tbaa !1556
  %19 = lshr i64 %1, 32, !dbg !2436
  %20 = icmp ult i32 %18, %15, !dbg !2437
  %21 = zext i1 %20 to i64, !dbg !2438
  %22 = add nuw nsw i64 %19, %21, !dbg !2439
  %23 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 4, i64 1, !dbg !2440
  %24 = load i32, i32* %23, align 4, !dbg !2441, !tbaa !1556
  %25 = trunc i64 %22 to i32, !dbg !2441
  %26 = add i32 %24, %25, !dbg !2441
  store i32 %26, i32* %23, align 4, !dbg !2441, !tbaa !1556
  call void @llvm.dbg.value(metadata i32* %4, metadata !2408, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 %8, metadata !2413, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 %10, metadata !2414, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 %12, metadata !2415, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 %14, metadata !2416, metadata !DIExpression()), !dbg !2425
  %27 = icmp ugt i32* %6, %4, !dbg !2442
  br i1 %27, label %28, label %694, !dbg !2443

28:                                               ; preds = %3, %28
  %29 = phi i32* [ %221, %28 ], [ %4, %3 ]
  %30 = phi i32 [ %688, %28 ], [ %8, %3 ]
  %31 = phi i32 [ %690, %28 ], [ %10, %3 ]
  %32 = phi i32 [ %691, %28 ], [ %12, %3 ]
  %33 = phi i32 [ %692, %28 ], [ %14, %3 ]
  call void @llvm.dbg.value(metadata i32* %29, metadata !2408, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 %30, metadata !2413, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 %31, metadata !2414, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 %32, metadata !2415, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 %33, metadata !2416, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32* undef, metadata !2418, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i32 %30, metadata !2421, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i32 %31, metadata !2422, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i32 %32, metadata !2423, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i32 %33, metadata !2424, metadata !DIExpression()), !dbg !2444
  %34 = xor i32 %32, %33, !dbg !2445
  %35 = and i32 %31, %34, !dbg !2445
  %36 = xor i32 %35, %33, !dbg !2445
  %37 = load i32, i32* %29, align 4, !dbg !2445, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %37, metadata !2406, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2425
  %38 = add i32 %30, -680876936, !dbg !2445
  %39 = add i32 %38, %36, !dbg !2445
  %40 = add i32 %39, %37, !dbg !2445
  call void @llvm.dbg.value(metadata i32 %40, metadata !2413, metadata !DIExpression()), !dbg !2425
  %41 = getelementptr inbounds i32, i32* %29, i64 1, !dbg !2445
  call void @llvm.dbg.value(metadata i32* %41, metadata !2408, metadata !DIExpression()), !dbg !2425
  %42 = shl i32 %40, 7, !dbg !2445
  %43 = lshr i32 %40, 25, !dbg !2445
  %44 = or i32 %42, %43, !dbg !2445
  call void @llvm.dbg.value(metadata i32 %44, metadata !2413, metadata !DIExpression()), !dbg !2425
  %45 = add i32 %44, %31, !dbg !2445
  call void @llvm.dbg.value(metadata i32 %45, metadata !2413, metadata !DIExpression()), !dbg !2425
  %46 = xor i32 %31, %32, !dbg !2447
  %47 = and i32 %45, %46, !dbg !2447
  %48 = xor i32 %47, %32, !dbg !2447
  %49 = load i32, i32* %41, align 4, !dbg !2447, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %49, metadata !2406, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2425
  %50 = add i32 %33, -389564586, !dbg !2447
  %51 = add i32 %50, %49, !dbg !2447
  %52 = add i32 %51, %48, !dbg !2447
  call void @llvm.dbg.value(metadata i32 %52, metadata !2416, metadata !DIExpression()), !dbg !2425
  %53 = getelementptr inbounds i32, i32* %29, i64 2, !dbg !2447
  call void @llvm.dbg.value(metadata i32* %53, metadata !2408, metadata !DIExpression()), !dbg !2425
  %54 = shl i32 %52, 12, !dbg !2447
  %55 = lshr i32 %52, 20, !dbg !2447
  %56 = or i32 %54, %55, !dbg !2447
  call void @llvm.dbg.value(metadata i32 %56, metadata !2416, metadata !DIExpression()), !dbg !2425
  %57 = add i32 %56, %45, !dbg !2447
  call void @llvm.dbg.value(metadata i32 %57, metadata !2416, metadata !DIExpression()), !dbg !2425
  %58 = xor i32 %45, %31, !dbg !2449
  %59 = and i32 %57, %58, !dbg !2449
  %60 = xor i32 %59, %31, !dbg !2449
  %61 = load i32, i32* %53, align 4, !dbg !2449, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %61, metadata !2406, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !2425
  %62 = add i32 %32, 606105819, !dbg !2449
  %63 = add i32 %62, %61, !dbg !2449
  %64 = add i32 %63, %60, !dbg !2449
  call void @llvm.dbg.value(metadata i32 %64, metadata !2415, metadata !DIExpression()), !dbg !2425
  %65 = getelementptr inbounds i32, i32* %29, i64 3, !dbg !2449
  call void @llvm.dbg.value(metadata i32* %65, metadata !2408, metadata !DIExpression()), !dbg !2425
  %66 = shl i32 %64, 17, !dbg !2449
  %67 = lshr i32 %64, 15, !dbg !2449
  %68 = or i32 %66, %67, !dbg !2449
  call void @llvm.dbg.value(metadata i32 %68, metadata !2415, metadata !DIExpression()), !dbg !2425
  %69 = add i32 %68, %57, !dbg !2449
  call void @llvm.dbg.value(metadata i32 %69, metadata !2415, metadata !DIExpression()), !dbg !2425
  %70 = xor i32 %57, %45, !dbg !2451
  %71 = and i32 %69, %70, !dbg !2451
  %72 = xor i32 %71, %45, !dbg !2451
  %73 = load i32, i32* %65, align 4, !dbg !2451, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %73, metadata !2406, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !2425
  %74 = add i32 %31, -1044525330, !dbg !2451
  %75 = add i32 %74, %73, !dbg !2451
  %76 = add i32 %75, %72, !dbg !2451
  call void @llvm.dbg.value(metadata i32 %76, metadata !2414, metadata !DIExpression()), !dbg !2425
  %77 = getelementptr inbounds i32, i32* %29, i64 4, !dbg !2451
  call void @llvm.dbg.value(metadata i32* %77, metadata !2408, metadata !DIExpression()), !dbg !2425
  %78 = shl i32 %76, 22, !dbg !2451
  %79 = lshr i32 %76, 10, !dbg !2451
  %80 = or i32 %78, %79, !dbg !2451
  call void @llvm.dbg.value(metadata i32 %80, metadata !2414, metadata !DIExpression()), !dbg !2425
  %81 = add i32 %80, %69, !dbg !2451
  call void @llvm.dbg.value(metadata i32 %81, metadata !2414, metadata !DIExpression()), !dbg !2425
  %82 = xor i32 %69, %57, !dbg !2453
  %83 = and i32 %81, %82, !dbg !2453
  %84 = xor i32 %83, %57, !dbg !2453
  %85 = load i32, i32* %77, align 4, !dbg !2453, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %85, metadata !2406, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 32)), !dbg !2425
  %86 = add i32 %85, -176418897, !dbg !2453
  %87 = add i32 %86, %45, !dbg !2453
  %88 = add i32 %87, %84, !dbg !2453
  call void @llvm.dbg.value(metadata i32 %88, metadata !2413, metadata !DIExpression()), !dbg !2425
  %89 = getelementptr inbounds i32, i32* %29, i64 5, !dbg !2453
  call void @llvm.dbg.value(metadata i32* %89, metadata !2408, metadata !DIExpression()), !dbg !2425
  %90 = shl i32 %88, 7, !dbg !2453
  %91 = lshr i32 %88, 25, !dbg !2453
  %92 = or i32 %90, %91, !dbg !2453
  call void @llvm.dbg.value(metadata i32 %92, metadata !2413, metadata !DIExpression()), !dbg !2425
  %93 = add i32 %92, %81, !dbg !2453
  call void @llvm.dbg.value(metadata i32 %93, metadata !2413, metadata !DIExpression()), !dbg !2425
  %94 = xor i32 %81, %69, !dbg !2455
  %95 = and i32 %93, %94, !dbg !2455
  %96 = xor i32 %95, %69, !dbg !2455
  %97 = load i32, i32* %89, align 4, !dbg !2455, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %97, metadata !2406, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !2425
  %98 = add i32 %97, 1200080426, !dbg !2455
  %99 = add i32 %98, %57, !dbg !2455
  %100 = add i32 %99, %96, !dbg !2455
  call void @llvm.dbg.value(metadata i32 %100, metadata !2416, metadata !DIExpression()), !dbg !2425
  %101 = getelementptr inbounds i32, i32* %29, i64 6, !dbg !2455
  call void @llvm.dbg.value(metadata i32* %101, metadata !2408, metadata !DIExpression()), !dbg !2425
  %102 = shl i32 %100, 12, !dbg !2455
  %103 = lshr i32 %100, 20, !dbg !2455
  %104 = or i32 %102, %103, !dbg !2455
  call void @llvm.dbg.value(metadata i32 %104, metadata !2416, metadata !DIExpression()), !dbg !2425
  %105 = add i32 %104, %93, !dbg !2455
  call void @llvm.dbg.value(metadata i32 %105, metadata !2416, metadata !DIExpression()), !dbg !2425
  %106 = xor i32 %93, %81, !dbg !2457
  %107 = and i32 %105, %106, !dbg !2457
  %108 = xor i32 %107, %81, !dbg !2457
  %109 = load i32, i32* %101, align 4, !dbg !2457, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %109, metadata !2406, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32)), !dbg !2425
  %110 = add i32 %109, -1473231341, !dbg !2457
  %111 = add i32 %110, %69, !dbg !2457
  %112 = add i32 %111, %108, !dbg !2457
  call void @llvm.dbg.value(metadata i32 %112, metadata !2415, metadata !DIExpression()), !dbg !2425
  %113 = getelementptr inbounds i32, i32* %29, i64 7, !dbg !2457
  call void @llvm.dbg.value(metadata i32* %113, metadata !2408, metadata !DIExpression()), !dbg !2425
  %114 = shl i32 %112, 17, !dbg !2457
  %115 = lshr i32 %112, 15, !dbg !2457
  %116 = or i32 %114, %115, !dbg !2457
  call void @llvm.dbg.value(metadata i32 %116, metadata !2415, metadata !DIExpression()), !dbg !2425
  %117 = add i32 %116, %105, !dbg !2457
  call void @llvm.dbg.value(metadata i32 %117, metadata !2415, metadata !DIExpression()), !dbg !2425
  %118 = xor i32 %105, %93, !dbg !2459
  %119 = and i32 %117, %118, !dbg !2459
  %120 = xor i32 %119, %93, !dbg !2459
  %121 = load i32, i32* %113, align 4, !dbg !2459, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %121, metadata !2406, metadata !DIExpression(DW_OP_LLVM_fragment, 224, 32)), !dbg !2425
  %122 = add i32 %121, -45705983, !dbg !2459
  %123 = add i32 %122, %81, !dbg !2459
  %124 = add i32 %123, %120, !dbg !2459
  call void @llvm.dbg.value(metadata i32 %124, metadata !2414, metadata !DIExpression()), !dbg !2425
  %125 = getelementptr inbounds i32, i32* %29, i64 8, !dbg !2459
  call void @llvm.dbg.value(metadata i32* %125, metadata !2408, metadata !DIExpression()), !dbg !2425
  %126 = shl i32 %124, 22, !dbg !2459
  %127 = lshr i32 %124, 10, !dbg !2459
  %128 = or i32 %126, %127, !dbg !2459
  call void @llvm.dbg.value(metadata i32 %128, metadata !2414, metadata !DIExpression()), !dbg !2425
  %129 = add i32 %128, %117, !dbg !2459
  call void @llvm.dbg.value(metadata i32 %129, metadata !2414, metadata !DIExpression()), !dbg !2425
  %130 = xor i32 %117, %105, !dbg !2461
  %131 = and i32 %129, %130, !dbg !2461
  %132 = xor i32 %131, %105, !dbg !2461
  %133 = load i32, i32* %125, align 4, !dbg !2461, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %133, metadata !2406, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !2425
  %134 = add i32 %133, 1770035416, !dbg !2461
  %135 = add i32 %134, %93, !dbg !2461
  %136 = add i32 %135, %132, !dbg !2461
  call void @llvm.dbg.value(metadata i32 %136, metadata !2413, metadata !DIExpression()), !dbg !2425
  %137 = getelementptr inbounds i32, i32* %29, i64 9, !dbg !2461
  call void @llvm.dbg.value(metadata i32* %137, metadata !2408, metadata !DIExpression()), !dbg !2425
  %138 = shl i32 %136, 7, !dbg !2461
  %139 = lshr i32 %136, 25, !dbg !2461
  %140 = or i32 %138, %139, !dbg !2461
  call void @llvm.dbg.value(metadata i32 %140, metadata !2413, metadata !DIExpression()), !dbg !2425
  %141 = add i32 %140, %129, !dbg !2461
  call void @llvm.dbg.value(metadata i32 %141, metadata !2413, metadata !DIExpression()), !dbg !2425
  %142 = xor i32 %129, %117, !dbg !2463
  %143 = and i32 %141, %142, !dbg !2463
  %144 = xor i32 %143, %117, !dbg !2463
  %145 = load i32, i32* %137, align 4, !dbg !2463, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %145, metadata !2406, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2425
  %146 = add i32 %145, -1958414417, !dbg !2463
  %147 = add i32 %146, %105, !dbg !2463
  %148 = add i32 %147, %144, !dbg !2463
  call void @llvm.dbg.value(metadata i32 %148, metadata !2416, metadata !DIExpression()), !dbg !2425
  %149 = getelementptr inbounds i32, i32* %29, i64 10, !dbg !2463
  call void @llvm.dbg.value(metadata i32* %149, metadata !2408, metadata !DIExpression()), !dbg !2425
  %150 = shl i32 %148, 12, !dbg !2463
  %151 = lshr i32 %148, 20, !dbg !2463
  %152 = or i32 %150, %151, !dbg !2463
  call void @llvm.dbg.value(metadata i32 %152, metadata !2416, metadata !DIExpression()), !dbg !2425
  %153 = add i32 %152, %141, !dbg !2463
  call void @llvm.dbg.value(metadata i32 %153, metadata !2416, metadata !DIExpression()), !dbg !2425
  %154 = xor i32 %141, %129, !dbg !2465
  %155 = and i32 %153, %154, !dbg !2465
  %156 = xor i32 %155, %129, !dbg !2465
  %157 = load i32, i32* %149, align 4, !dbg !2465, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %157, metadata !2406, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !2425
  %158 = add i32 %157, -42063, !dbg !2465
  %159 = add i32 %158, %117, !dbg !2465
  %160 = add i32 %159, %156, !dbg !2465
  call void @llvm.dbg.value(metadata i32 %160, metadata !2415, metadata !DIExpression()), !dbg !2425
  %161 = getelementptr inbounds i32, i32* %29, i64 11, !dbg !2465
  call void @llvm.dbg.value(metadata i32* %161, metadata !2408, metadata !DIExpression()), !dbg !2425
  %162 = shl i32 %160, 17, !dbg !2465
  %163 = lshr i32 %160, 15, !dbg !2465
  %164 = or i32 %162, %163, !dbg !2465
  call void @llvm.dbg.value(metadata i32 %164, metadata !2415, metadata !DIExpression()), !dbg !2425
  %165 = add i32 %164, %153, !dbg !2465
  call void @llvm.dbg.value(metadata i32 %165, metadata !2415, metadata !DIExpression()), !dbg !2425
  %166 = xor i32 %153, %141, !dbg !2467
  %167 = and i32 %165, %166, !dbg !2467
  %168 = xor i32 %167, %141, !dbg !2467
  %169 = load i32, i32* %161, align 4, !dbg !2467, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %169, metadata !2406, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !2425
  %170 = add i32 %169, -1990404162, !dbg !2467
  %171 = add i32 %170, %129, !dbg !2467
  %172 = add i32 %171, %168, !dbg !2467
  call void @llvm.dbg.value(metadata i32 %172, metadata !2414, metadata !DIExpression()), !dbg !2425
  %173 = getelementptr inbounds i32, i32* %29, i64 12, !dbg !2467
  call void @llvm.dbg.value(metadata i32* %173, metadata !2408, metadata !DIExpression()), !dbg !2425
  %174 = shl i32 %172, 22, !dbg !2467
  %175 = lshr i32 %172, 10, !dbg !2467
  %176 = or i32 %174, %175, !dbg !2467
  call void @llvm.dbg.value(metadata i32 %176, metadata !2414, metadata !DIExpression()), !dbg !2425
  %177 = add i32 %176, %165, !dbg !2467
  call void @llvm.dbg.value(metadata i32 %177, metadata !2414, metadata !DIExpression()), !dbg !2425
  %178 = xor i32 %165, %153, !dbg !2469
  %179 = and i32 %177, %178, !dbg !2469
  %180 = xor i32 %179, %153, !dbg !2469
  %181 = load i32, i32* %173, align 4, !dbg !2469, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %181, metadata !2406, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !2425
  %182 = add i32 %181, 1804603682, !dbg !2469
  %183 = add i32 %182, %141, !dbg !2469
  %184 = add i32 %183, %180, !dbg !2469
  call void @llvm.dbg.value(metadata i32 %184, metadata !2413, metadata !DIExpression()), !dbg !2425
  %185 = getelementptr inbounds i32, i32* %29, i64 13, !dbg !2469
  call void @llvm.dbg.value(metadata i32* %185, metadata !2408, metadata !DIExpression()), !dbg !2425
  %186 = shl i32 %184, 7, !dbg !2469
  %187 = lshr i32 %184, 25, !dbg !2469
  %188 = or i32 %186, %187, !dbg !2469
  call void @llvm.dbg.value(metadata i32 %188, metadata !2413, metadata !DIExpression()), !dbg !2425
  %189 = add i32 %188, %177, !dbg !2469
  call void @llvm.dbg.value(metadata i32 %189, metadata !2413, metadata !DIExpression()), !dbg !2425
  %190 = xor i32 %177, %165, !dbg !2471
  %191 = and i32 %189, %190, !dbg !2471
  %192 = xor i32 %191, %165, !dbg !2471
  %193 = load i32, i32* %185, align 4, !dbg !2471, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %193, metadata !2406, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)), !dbg !2425
  %194 = add i32 %193, -40341101, !dbg !2471
  %195 = add i32 %194, %153, !dbg !2471
  %196 = add i32 %195, %192, !dbg !2471
  call void @llvm.dbg.value(metadata i32 %196, metadata !2416, metadata !DIExpression()), !dbg !2425
  %197 = getelementptr inbounds i32, i32* %29, i64 14, !dbg !2471
  call void @llvm.dbg.value(metadata i32* %197, metadata !2408, metadata !DIExpression()), !dbg !2425
  %198 = shl i32 %196, 12, !dbg !2471
  %199 = lshr i32 %196, 20, !dbg !2471
  %200 = or i32 %198, %199, !dbg !2471
  call void @llvm.dbg.value(metadata i32 %200, metadata !2416, metadata !DIExpression()), !dbg !2425
  %201 = add i32 %200, %189, !dbg !2471
  call void @llvm.dbg.value(metadata i32 %201, metadata !2416, metadata !DIExpression()), !dbg !2425
  %202 = xor i32 %189, %177, !dbg !2473
  %203 = and i32 %201, %202, !dbg !2473
  %204 = xor i32 %203, %177, !dbg !2473
  %205 = load i32, i32* %197, align 4, !dbg !2473, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %205, metadata !2406, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 32)), !dbg !2425
  %206 = add i32 %205, -1502002290, !dbg !2473
  %207 = add i32 %206, %165, !dbg !2473
  %208 = add i32 %207, %204, !dbg !2473
  call void @llvm.dbg.value(metadata i32 %208, metadata !2415, metadata !DIExpression()), !dbg !2425
  %209 = getelementptr inbounds i32, i32* %29, i64 15, !dbg !2473
  call void @llvm.dbg.value(metadata i32* %209, metadata !2408, metadata !DIExpression()), !dbg !2425
  %210 = shl i32 %208, 17, !dbg !2473
  %211 = lshr i32 %208, 15, !dbg !2473
  %212 = or i32 %210, %211, !dbg !2473
  call void @llvm.dbg.value(metadata i32 %212, metadata !2415, metadata !DIExpression()), !dbg !2425
  %213 = add i32 %212, %201, !dbg !2473
  call void @llvm.dbg.value(metadata i32 %213, metadata !2415, metadata !DIExpression()), !dbg !2425
  %214 = xor i32 %201, %189, !dbg !2475
  %215 = and i32 %213, %214, !dbg !2475
  %216 = xor i32 %215, %189, !dbg !2475
  %217 = load i32, i32* %209, align 4, !dbg !2475, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %217, metadata !2406, metadata !DIExpression(DW_OP_LLVM_fragment, 480, 32)), !dbg !2425
  %218 = add i32 %217, 1236535329, !dbg !2475
  %219 = add i32 %218, %177, !dbg !2475
  %220 = add i32 %219, %216, !dbg !2475
  call void @llvm.dbg.value(metadata i32 %220, metadata !2414, metadata !DIExpression()), !dbg !2425
  %221 = getelementptr inbounds i32, i32* %29, i64 16, !dbg !2475
  call void @llvm.dbg.value(metadata i32* %221, metadata !2408, metadata !DIExpression()), !dbg !2425
  %222 = shl i32 %220, 22, !dbg !2475
  %223 = lshr i32 %220, 10, !dbg !2475
  %224 = or i32 %222, %223, !dbg !2475
  call void @llvm.dbg.value(metadata i32 %224, metadata !2414, metadata !DIExpression()), !dbg !2425
  %225 = add i32 %224, %213, !dbg !2475
  call void @llvm.dbg.value(metadata i32 %225, metadata !2414, metadata !DIExpression()), !dbg !2425
  %226 = xor i32 %225, %213, !dbg !2477
  %227 = and i32 %226, %201, !dbg !2477
  %228 = xor i32 %227, %213, !dbg !2477
  %229 = add i32 %49, -165796510, !dbg !2477
  %230 = add i32 %229, %189, !dbg !2477
  %231 = add i32 %230, %228, !dbg !2477
  call void @llvm.dbg.value(metadata i32 %231, metadata !2413, metadata !DIExpression()), !dbg !2425
  %232 = shl i32 %231, 5, !dbg !2477
  %233 = lshr i32 %231, 27, !dbg !2477
  %234 = or i32 %232, %233, !dbg !2477
  call void @llvm.dbg.value(metadata i32 %234, metadata !2413, metadata !DIExpression()), !dbg !2425
  %235 = add i32 %234, %225, !dbg !2477
  call void @llvm.dbg.value(metadata i32 %235, metadata !2413, metadata !DIExpression()), !dbg !2425
  %236 = xor i32 %235, %225, !dbg !2479
  %237 = and i32 %236, %213, !dbg !2479
  %238 = xor i32 %237, %225, !dbg !2479
  %239 = add i32 %109, -1069501632, !dbg !2479
  %240 = add i32 %239, %201, !dbg !2479
  %241 = add i32 %240, %238, !dbg !2479
  call void @llvm.dbg.value(metadata i32 %241, metadata !2416, metadata !DIExpression()), !dbg !2425
  %242 = shl i32 %241, 9, !dbg !2479
  %243 = lshr i32 %241, 23, !dbg !2479
  %244 = or i32 %242, %243, !dbg !2479
  call void @llvm.dbg.value(metadata i32 %244, metadata !2416, metadata !DIExpression()), !dbg !2425
  %245 = add i32 %244, %235, !dbg !2479
  call void @llvm.dbg.value(metadata i32 %245, metadata !2416, metadata !DIExpression()), !dbg !2425
  %246 = xor i32 %245, %235, !dbg !2481
  %247 = and i32 %246, %225, !dbg !2481
  %248 = xor i32 %247, %235, !dbg !2481
  %249 = add i32 %169, 643717713, !dbg !2481
  %250 = add i32 %249, %213, !dbg !2481
  %251 = add i32 %250, %248, !dbg !2481
  call void @llvm.dbg.value(metadata i32 %251, metadata !2415, metadata !DIExpression()), !dbg !2425
  %252 = shl i32 %251, 14, !dbg !2481
  %253 = lshr i32 %251, 18, !dbg !2481
  %254 = or i32 %252, %253, !dbg !2481
  call void @llvm.dbg.value(metadata i32 %254, metadata !2415, metadata !DIExpression()), !dbg !2425
  %255 = add i32 %254, %245, !dbg !2481
  call void @llvm.dbg.value(metadata i32 %255, metadata !2415, metadata !DIExpression()), !dbg !2425
  %256 = xor i32 %255, %245, !dbg !2483
  %257 = and i32 %256, %235, !dbg !2483
  %258 = xor i32 %257, %245, !dbg !2483
  %259 = add i32 %37, -373897302, !dbg !2483
  %260 = add i32 %259, %225, !dbg !2483
  %261 = add i32 %260, %258, !dbg !2483
  call void @llvm.dbg.value(metadata i32 %261, metadata !2414, metadata !DIExpression()), !dbg !2425
  %262 = shl i32 %261, 20, !dbg !2483
  %263 = lshr i32 %261, 12, !dbg !2483
  %264 = or i32 %262, %263, !dbg !2483
  call void @llvm.dbg.value(metadata i32 %264, metadata !2414, metadata !DIExpression()), !dbg !2425
  %265 = add i32 %264, %255, !dbg !2483
  call void @llvm.dbg.value(metadata i32 %265, metadata !2414, metadata !DIExpression()), !dbg !2425
  %266 = xor i32 %265, %255, !dbg !2485
  %267 = and i32 %266, %245, !dbg !2485
  %268 = xor i32 %267, %255, !dbg !2485
  %269 = add i32 %97, -701558691, !dbg !2485
  %270 = add i32 %269, %235, !dbg !2485
  %271 = add i32 %270, %268, !dbg !2485
  call void @llvm.dbg.value(metadata i32 %271, metadata !2413, metadata !DIExpression()), !dbg !2425
  %272 = shl i32 %271, 5, !dbg !2485
  %273 = lshr i32 %271, 27, !dbg !2485
  %274 = or i32 %272, %273, !dbg !2485
  call void @llvm.dbg.value(metadata i32 %274, metadata !2413, metadata !DIExpression()), !dbg !2425
  %275 = add i32 %274, %265, !dbg !2485
  call void @llvm.dbg.value(metadata i32 %275, metadata !2413, metadata !DIExpression()), !dbg !2425
  %276 = xor i32 %275, %265, !dbg !2487
  %277 = and i32 %276, %255, !dbg !2487
  %278 = xor i32 %277, %265, !dbg !2487
  %279 = add i32 %157, 38016083, !dbg !2487
  %280 = add i32 %279, %245, !dbg !2487
  %281 = add i32 %280, %278, !dbg !2487
  call void @llvm.dbg.value(metadata i32 %281, metadata !2416, metadata !DIExpression()), !dbg !2425
  %282 = shl i32 %281, 9, !dbg !2487
  %283 = lshr i32 %281, 23, !dbg !2487
  %284 = or i32 %282, %283, !dbg !2487
  call void @llvm.dbg.value(metadata i32 %284, metadata !2416, metadata !DIExpression()), !dbg !2425
  %285 = add i32 %284, %275, !dbg !2487
  call void @llvm.dbg.value(metadata i32 %285, metadata !2416, metadata !DIExpression()), !dbg !2425
  %286 = xor i32 %285, %275, !dbg !2489
  %287 = and i32 %286, %265, !dbg !2489
  %288 = xor i32 %287, %275, !dbg !2489
  %289 = add i32 %217, -660478335, !dbg !2489
  %290 = add i32 %289, %255, !dbg !2489
  %291 = add i32 %290, %288, !dbg !2489
  call void @llvm.dbg.value(metadata i32 %291, metadata !2415, metadata !DIExpression()), !dbg !2425
  %292 = shl i32 %291, 14, !dbg !2489
  %293 = lshr i32 %291, 18, !dbg !2489
  %294 = or i32 %292, %293, !dbg !2489
  call void @llvm.dbg.value(metadata i32 %294, metadata !2415, metadata !DIExpression()), !dbg !2425
  %295 = add i32 %294, %285, !dbg !2489
  call void @llvm.dbg.value(metadata i32 %295, metadata !2415, metadata !DIExpression()), !dbg !2425
  %296 = xor i32 %295, %285, !dbg !2491
  %297 = and i32 %296, %275, !dbg !2491
  %298 = xor i32 %297, %285, !dbg !2491
  %299 = add i32 %85, -405537848, !dbg !2491
  %300 = add i32 %299, %265, !dbg !2491
  %301 = add i32 %300, %298, !dbg !2491
  call void @llvm.dbg.value(metadata i32 %301, metadata !2414, metadata !DIExpression()), !dbg !2425
  %302 = shl i32 %301, 20, !dbg !2491
  %303 = lshr i32 %301, 12, !dbg !2491
  %304 = or i32 %302, %303, !dbg !2491
  call void @llvm.dbg.value(metadata i32 %304, metadata !2414, metadata !DIExpression()), !dbg !2425
  %305 = add i32 %304, %295, !dbg !2491
  call void @llvm.dbg.value(metadata i32 %305, metadata !2414, metadata !DIExpression()), !dbg !2425
  %306 = xor i32 %305, %295, !dbg !2493
  %307 = and i32 %306, %285, !dbg !2493
  %308 = xor i32 %307, %295, !dbg !2493
  %309 = add i32 %145, 568446438, !dbg !2493
  %310 = add i32 %309, %275, !dbg !2493
  %311 = add i32 %310, %308, !dbg !2493
  call void @llvm.dbg.value(metadata i32 %311, metadata !2413, metadata !DIExpression()), !dbg !2425
  %312 = shl i32 %311, 5, !dbg !2493
  %313 = lshr i32 %311, 27, !dbg !2493
  %314 = or i32 %312, %313, !dbg !2493
  call void @llvm.dbg.value(metadata i32 %314, metadata !2413, metadata !DIExpression()), !dbg !2425
  %315 = add i32 %314, %305, !dbg !2493
  call void @llvm.dbg.value(metadata i32 %315, metadata !2413, metadata !DIExpression()), !dbg !2425
  %316 = xor i32 %315, %305, !dbg !2495
  %317 = and i32 %316, %295, !dbg !2495
  %318 = xor i32 %317, %305, !dbg !2495
  %319 = add i32 %205, -1019803690, !dbg !2495
  %320 = add i32 %319, %285, !dbg !2495
  %321 = add i32 %320, %318, !dbg !2495
  call void @llvm.dbg.value(metadata i32 %321, metadata !2416, metadata !DIExpression()), !dbg !2425
  %322 = shl i32 %321, 9, !dbg !2495
  %323 = lshr i32 %321, 23, !dbg !2495
  %324 = or i32 %322, %323, !dbg !2495
  call void @llvm.dbg.value(metadata i32 %324, metadata !2416, metadata !DIExpression()), !dbg !2425
  %325 = add i32 %324, %315, !dbg !2495
  call void @llvm.dbg.value(metadata i32 %325, metadata !2416, metadata !DIExpression()), !dbg !2425
  %326 = xor i32 %325, %315, !dbg !2497
  %327 = and i32 %326, %305, !dbg !2497
  %328 = xor i32 %327, %315, !dbg !2497
  %329 = add i32 %73, -187363961, !dbg !2497
  %330 = add i32 %329, %295, !dbg !2497
  %331 = add i32 %330, %328, !dbg !2497
  call void @llvm.dbg.value(metadata i32 %331, metadata !2415, metadata !DIExpression()), !dbg !2425
  %332 = shl i32 %331, 14, !dbg !2497
  %333 = lshr i32 %331, 18, !dbg !2497
  %334 = or i32 %332, %333, !dbg !2497
  call void @llvm.dbg.value(metadata i32 %334, metadata !2415, metadata !DIExpression()), !dbg !2425
  %335 = add i32 %334, %325, !dbg !2497
  call void @llvm.dbg.value(metadata i32 %335, metadata !2415, metadata !DIExpression()), !dbg !2425
  %336 = xor i32 %335, %325, !dbg !2499
  %337 = and i32 %336, %315, !dbg !2499
  %338 = xor i32 %337, %325, !dbg !2499
  %339 = add i32 %133, 1163531501, !dbg !2499
  %340 = add i32 %339, %305, !dbg !2499
  %341 = add i32 %340, %338, !dbg !2499
  call void @llvm.dbg.value(metadata i32 %341, metadata !2414, metadata !DIExpression()), !dbg !2425
  %342 = shl i32 %341, 20, !dbg !2499
  %343 = lshr i32 %341, 12, !dbg !2499
  %344 = or i32 %342, %343, !dbg !2499
  call void @llvm.dbg.value(metadata i32 %344, metadata !2414, metadata !DIExpression()), !dbg !2425
  %345 = add i32 %344, %335, !dbg !2499
  call void @llvm.dbg.value(metadata i32 %345, metadata !2414, metadata !DIExpression()), !dbg !2425
  %346 = xor i32 %345, %335, !dbg !2501
  %347 = and i32 %346, %325, !dbg !2501
  %348 = xor i32 %347, %335, !dbg !2501
  %349 = add i32 %193, -1444681467, !dbg !2501
  %350 = add i32 %349, %315, !dbg !2501
  %351 = add i32 %350, %348, !dbg !2501
  call void @llvm.dbg.value(metadata i32 %351, metadata !2413, metadata !DIExpression()), !dbg !2425
  %352 = shl i32 %351, 5, !dbg !2501
  %353 = lshr i32 %351, 27, !dbg !2501
  %354 = or i32 %352, %353, !dbg !2501
  call void @llvm.dbg.value(metadata i32 %354, metadata !2413, metadata !DIExpression()), !dbg !2425
  %355 = add i32 %354, %345, !dbg !2501
  call void @llvm.dbg.value(metadata i32 %355, metadata !2413, metadata !DIExpression()), !dbg !2425
  %356 = xor i32 %355, %345, !dbg !2503
  %357 = and i32 %356, %335, !dbg !2503
  %358 = xor i32 %357, %345, !dbg !2503
  %359 = add i32 %61, -51403784, !dbg !2503
  %360 = add i32 %359, %325, !dbg !2503
  %361 = add i32 %360, %358, !dbg !2503
  call void @llvm.dbg.value(metadata i32 %361, metadata !2416, metadata !DIExpression()), !dbg !2425
  %362 = shl i32 %361, 9, !dbg !2503
  %363 = lshr i32 %361, 23, !dbg !2503
  %364 = or i32 %362, %363, !dbg !2503
  call void @llvm.dbg.value(metadata i32 %364, metadata !2416, metadata !DIExpression()), !dbg !2425
  %365 = add i32 %364, %355, !dbg !2503
  call void @llvm.dbg.value(metadata i32 %365, metadata !2416, metadata !DIExpression()), !dbg !2425
  %366 = xor i32 %365, %355, !dbg !2505
  %367 = and i32 %366, %345, !dbg !2505
  %368 = xor i32 %367, %355, !dbg !2505
  %369 = add i32 %121, 1735328473, !dbg !2505
  %370 = add i32 %369, %335, !dbg !2505
  %371 = add i32 %370, %368, !dbg !2505
  call void @llvm.dbg.value(metadata i32 %371, metadata !2415, metadata !DIExpression()), !dbg !2425
  %372 = shl i32 %371, 14, !dbg !2505
  %373 = lshr i32 %371, 18, !dbg !2505
  %374 = or i32 %372, %373, !dbg !2505
  call void @llvm.dbg.value(metadata i32 %374, metadata !2415, metadata !DIExpression()), !dbg !2425
  %375 = add i32 %374, %365, !dbg !2505
  call void @llvm.dbg.value(metadata i32 %375, metadata !2415, metadata !DIExpression()), !dbg !2425
  %376 = xor i32 %375, %365, !dbg !2507
  %377 = and i32 %376, %355, !dbg !2507
  %378 = xor i32 %377, %365, !dbg !2507
  %379 = add i32 %181, -1926607734, !dbg !2507
  %380 = add i32 %379, %345, !dbg !2507
  %381 = add i32 %380, %378, !dbg !2507
  call void @llvm.dbg.value(metadata i32 %381, metadata !2414, metadata !DIExpression()), !dbg !2425
  %382 = shl i32 %381, 20, !dbg !2507
  %383 = lshr i32 %381, 12, !dbg !2507
  %384 = or i32 %382, %383, !dbg !2507
  call void @llvm.dbg.value(metadata i32 %384, metadata !2414, metadata !DIExpression()), !dbg !2425
  %385 = add i32 %384, %375, !dbg !2507
  call void @llvm.dbg.value(metadata i32 %385, metadata !2414, metadata !DIExpression()), !dbg !2425
  %386 = xor i32 %376, %385, !dbg !2509
  %387 = add i32 %97, -378558, !dbg !2509
  %388 = add i32 %387, %355, !dbg !2509
  %389 = add i32 %388, %386, !dbg !2509
  call void @llvm.dbg.value(metadata i32 %389, metadata !2413, metadata !DIExpression()), !dbg !2425
  %390 = shl i32 %389, 4, !dbg !2509
  %391 = lshr i32 %389, 28, !dbg !2509
  %392 = or i32 %390, %391, !dbg !2509
  call void @llvm.dbg.value(metadata i32 %392, metadata !2413, metadata !DIExpression()), !dbg !2425
  %393 = add i32 %392, %385, !dbg !2509
  call void @llvm.dbg.value(metadata i32 %393, metadata !2413, metadata !DIExpression()), !dbg !2425
  %394 = xor i32 %385, %375, !dbg !2511
  %395 = xor i32 %394, %393, !dbg !2511
  %396 = add i32 %133, -2022574463, !dbg !2511
  %397 = add i32 %396, %365, !dbg !2511
  %398 = add i32 %397, %395, !dbg !2511
  call void @llvm.dbg.value(metadata i32 %398, metadata !2416, metadata !DIExpression()), !dbg !2425
  %399 = shl i32 %398, 11, !dbg !2511
  %400 = lshr i32 %398, 21, !dbg !2511
  %401 = or i32 %399, %400, !dbg !2511
  call void @llvm.dbg.value(metadata i32 %401, metadata !2416, metadata !DIExpression()), !dbg !2425
  %402 = add i32 %401, %393, !dbg !2511
  call void @llvm.dbg.value(metadata i32 %402, metadata !2416, metadata !DIExpression()), !dbg !2425
  %403 = xor i32 %393, %385, !dbg !2513
  %404 = xor i32 %403, %402, !dbg !2513
  %405 = add i32 %169, 1839030562, !dbg !2513
  %406 = add i32 %405, %375, !dbg !2513
  %407 = add i32 %406, %404, !dbg !2513
  call void @llvm.dbg.value(metadata i32 %407, metadata !2415, metadata !DIExpression()), !dbg !2425
  %408 = shl i32 %407, 16, !dbg !2513
  %409 = lshr i32 %407, 16, !dbg !2513
  %410 = or i32 %408, %409, !dbg !2513
  call void @llvm.dbg.value(metadata i32 %410, metadata !2415, metadata !DIExpression()), !dbg !2425
  %411 = add i32 %410, %402, !dbg !2513
  call void @llvm.dbg.value(metadata i32 %411, metadata !2415, metadata !DIExpression()), !dbg !2425
  %412 = xor i32 %402, %393, !dbg !2515
  %413 = xor i32 %412, %411, !dbg !2515
  %414 = add i32 %205, -35309556, !dbg !2515
  %415 = add i32 %414, %385, !dbg !2515
  %416 = add i32 %415, %413, !dbg !2515
  call void @llvm.dbg.value(metadata i32 %416, metadata !2414, metadata !DIExpression()), !dbg !2425
  %417 = shl i32 %416, 23, !dbg !2515
  %418 = lshr i32 %416, 9, !dbg !2515
  %419 = or i32 %417, %418, !dbg !2515
  call void @llvm.dbg.value(metadata i32 %419, metadata !2414, metadata !DIExpression()), !dbg !2425
  %420 = add i32 %419, %411, !dbg !2515
  call void @llvm.dbg.value(metadata i32 %420, metadata !2414, metadata !DIExpression()), !dbg !2425
  %421 = xor i32 %411, %402, !dbg !2517
  %422 = xor i32 %421, %420, !dbg !2517
  %423 = add i32 %49, -1530992060, !dbg !2517
  %424 = add i32 %423, %393, !dbg !2517
  %425 = add i32 %424, %422, !dbg !2517
  call void @llvm.dbg.value(metadata i32 %425, metadata !2413, metadata !DIExpression()), !dbg !2425
  %426 = shl i32 %425, 4, !dbg !2517
  %427 = lshr i32 %425, 28, !dbg !2517
  %428 = or i32 %426, %427, !dbg !2517
  call void @llvm.dbg.value(metadata i32 %428, metadata !2413, metadata !DIExpression()), !dbg !2425
  %429 = add i32 %428, %420, !dbg !2517
  call void @llvm.dbg.value(metadata i32 %429, metadata !2413, metadata !DIExpression()), !dbg !2425
  %430 = xor i32 %420, %411, !dbg !2519
  %431 = xor i32 %430, %429, !dbg !2519
  %432 = add i32 %85, 1272893353, !dbg !2519
  %433 = add i32 %432, %402, !dbg !2519
  %434 = add i32 %433, %431, !dbg !2519
  call void @llvm.dbg.value(metadata i32 %434, metadata !2416, metadata !DIExpression()), !dbg !2425
  %435 = shl i32 %434, 11, !dbg !2519
  %436 = lshr i32 %434, 21, !dbg !2519
  %437 = or i32 %435, %436, !dbg !2519
  call void @llvm.dbg.value(metadata i32 %437, metadata !2416, metadata !DIExpression()), !dbg !2425
  %438 = add i32 %437, %429, !dbg !2519
  call void @llvm.dbg.value(metadata i32 %438, metadata !2416, metadata !DIExpression()), !dbg !2425
  %439 = xor i32 %429, %420, !dbg !2521
  %440 = xor i32 %439, %438, !dbg !2521
  %441 = add i32 %121, -155497632, !dbg !2521
  %442 = add i32 %441, %411, !dbg !2521
  %443 = add i32 %442, %440, !dbg !2521
  call void @llvm.dbg.value(metadata i32 %443, metadata !2415, metadata !DIExpression()), !dbg !2425
  %444 = shl i32 %443, 16, !dbg !2521
  %445 = lshr i32 %443, 16, !dbg !2521
  %446 = or i32 %444, %445, !dbg !2521
  call void @llvm.dbg.value(metadata i32 %446, metadata !2415, metadata !DIExpression()), !dbg !2425
  %447 = add i32 %446, %438, !dbg !2521
  call void @llvm.dbg.value(metadata i32 %447, metadata !2415, metadata !DIExpression()), !dbg !2425
  %448 = xor i32 %438, %429, !dbg !2523
  %449 = xor i32 %448, %447, !dbg !2523
  %450 = add i32 %157, -1094730640, !dbg !2523
  %451 = add i32 %450, %420, !dbg !2523
  %452 = add i32 %451, %449, !dbg !2523
  call void @llvm.dbg.value(metadata i32 %452, metadata !2414, metadata !DIExpression()), !dbg !2425
  %453 = shl i32 %452, 23, !dbg !2523
  %454 = lshr i32 %452, 9, !dbg !2523
  %455 = or i32 %453, %454, !dbg !2523
  call void @llvm.dbg.value(metadata i32 %455, metadata !2414, metadata !DIExpression()), !dbg !2425
  %456 = add i32 %455, %447, !dbg !2523
  call void @llvm.dbg.value(metadata i32 %456, metadata !2414, metadata !DIExpression()), !dbg !2425
  %457 = xor i32 %447, %438, !dbg !2525
  %458 = xor i32 %457, %456, !dbg !2525
  %459 = add i32 %193, 681279174, !dbg !2525
  %460 = add i32 %459, %429, !dbg !2525
  %461 = add i32 %460, %458, !dbg !2525
  call void @llvm.dbg.value(metadata i32 %461, metadata !2413, metadata !DIExpression()), !dbg !2425
  %462 = shl i32 %461, 4, !dbg !2525
  %463 = lshr i32 %461, 28, !dbg !2525
  %464 = or i32 %462, %463, !dbg !2525
  call void @llvm.dbg.value(metadata i32 %464, metadata !2413, metadata !DIExpression()), !dbg !2425
  %465 = add i32 %464, %456, !dbg !2525
  call void @llvm.dbg.value(metadata i32 %465, metadata !2413, metadata !DIExpression()), !dbg !2425
  %466 = xor i32 %456, %447, !dbg !2527
  %467 = xor i32 %466, %465, !dbg !2527
  %468 = add i32 %37, -358537222, !dbg !2527
  %469 = add i32 %468, %438, !dbg !2527
  %470 = add i32 %469, %467, !dbg !2527
  call void @llvm.dbg.value(metadata i32 %470, metadata !2416, metadata !DIExpression()), !dbg !2425
  %471 = shl i32 %470, 11, !dbg !2527
  %472 = lshr i32 %470, 21, !dbg !2527
  %473 = or i32 %471, %472, !dbg !2527
  call void @llvm.dbg.value(metadata i32 %473, metadata !2416, metadata !DIExpression()), !dbg !2425
  %474 = add i32 %473, %465, !dbg !2527
  call void @llvm.dbg.value(metadata i32 %474, metadata !2416, metadata !DIExpression()), !dbg !2425
  %475 = xor i32 %465, %456, !dbg !2529
  %476 = xor i32 %475, %474, !dbg !2529
  %477 = add i32 %73, -722521979, !dbg !2529
  %478 = add i32 %477, %447, !dbg !2529
  %479 = add i32 %478, %476, !dbg !2529
  call void @llvm.dbg.value(metadata i32 %479, metadata !2415, metadata !DIExpression()), !dbg !2425
  %480 = shl i32 %479, 16, !dbg !2529
  %481 = lshr i32 %479, 16, !dbg !2529
  %482 = or i32 %480, %481, !dbg !2529
  call void @llvm.dbg.value(metadata i32 %482, metadata !2415, metadata !DIExpression()), !dbg !2425
  %483 = add i32 %482, %474, !dbg !2529
  call void @llvm.dbg.value(metadata i32 %483, metadata !2415, metadata !DIExpression()), !dbg !2425
  %484 = xor i32 %474, %465, !dbg !2531
  %485 = xor i32 %484, %483, !dbg !2531
  %486 = add i32 %109, 76029189, !dbg !2531
  %487 = add i32 %486, %456, !dbg !2531
  %488 = add i32 %487, %485, !dbg !2531
  call void @llvm.dbg.value(metadata i32 %488, metadata !2414, metadata !DIExpression()), !dbg !2425
  %489 = shl i32 %488, 23, !dbg !2531
  %490 = lshr i32 %488, 9, !dbg !2531
  %491 = or i32 %489, %490, !dbg !2531
  call void @llvm.dbg.value(metadata i32 %491, metadata !2414, metadata !DIExpression()), !dbg !2425
  %492 = add i32 %491, %483, !dbg !2531
  call void @llvm.dbg.value(metadata i32 %492, metadata !2414, metadata !DIExpression()), !dbg !2425
  %493 = xor i32 %483, %474, !dbg !2533
  %494 = xor i32 %493, %492, !dbg !2533
  %495 = add i32 %145, -640364487, !dbg !2533
  %496 = add i32 %495, %465, !dbg !2533
  %497 = add i32 %496, %494, !dbg !2533
  call void @llvm.dbg.value(metadata i32 %497, metadata !2413, metadata !DIExpression()), !dbg !2425
  %498 = shl i32 %497, 4, !dbg !2533
  %499 = lshr i32 %497, 28, !dbg !2533
  %500 = or i32 %498, %499, !dbg !2533
  call void @llvm.dbg.value(metadata i32 %500, metadata !2413, metadata !DIExpression()), !dbg !2425
  %501 = add i32 %500, %492, !dbg !2533
  call void @llvm.dbg.value(metadata i32 %501, metadata !2413, metadata !DIExpression()), !dbg !2425
  %502 = xor i32 %492, %483, !dbg !2535
  %503 = xor i32 %502, %501, !dbg !2535
  %504 = add i32 %181, -421815835, !dbg !2535
  %505 = add i32 %504, %474, !dbg !2535
  %506 = add i32 %505, %503, !dbg !2535
  call void @llvm.dbg.value(metadata i32 %506, metadata !2416, metadata !DIExpression()), !dbg !2425
  %507 = shl i32 %506, 11, !dbg !2535
  %508 = lshr i32 %506, 21, !dbg !2535
  %509 = or i32 %507, %508, !dbg !2535
  call void @llvm.dbg.value(metadata i32 %509, metadata !2416, metadata !DIExpression()), !dbg !2425
  %510 = add i32 %509, %501, !dbg !2535
  call void @llvm.dbg.value(metadata i32 %510, metadata !2416, metadata !DIExpression()), !dbg !2425
  %511 = xor i32 %501, %492, !dbg !2537
  %512 = xor i32 %511, %510, !dbg !2537
  %513 = add i32 %217, 530742520, !dbg !2537
  %514 = add i32 %513, %483, !dbg !2537
  %515 = add i32 %514, %512, !dbg !2537
  call void @llvm.dbg.value(metadata i32 %515, metadata !2415, metadata !DIExpression()), !dbg !2425
  %516 = shl i32 %515, 16, !dbg !2537
  %517 = lshr i32 %515, 16, !dbg !2537
  %518 = or i32 %516, %517, !dbg !2537
  call void @llvm.dbg.value(metadata i32 %518, metadata !2415, metadata !DIExpression()), !dbg !2425
  %519 = add i32 %518, %510, !dbg !2537
  call void @llvm.dbg.value(metadata i32 %519, metadata !2415, metadata !DIExpression()), !dbg !2425
  %520 = xor i32 %510, %501, !dbg !2539
  %521 = xor i32 %520, %519, !dbg !2539
  %522 = add i32 %61, -995338651, !dbg !2539
  %523 = add i32 %522, %492, !dbg !2539
  %524 = add i32 %523, %521, !dbg !2539
  call void @llvm.dbg.value(metadata i32 %524, metadata !2414, metadata !DIExpression()), !dbg !2425
  %525 = shl i32 %524, 23, !dbg !2539
  %526 = lshr i32 %524, 9, !dbg !2539
  %527 = or i32 %525, %526, !dbg !2539
  call void @llvm.dbg.value(metadata i32 %527, metadata !2414, metadata !DIExpression()), !dbg !2425
  %528 = add i32 %527, %519, !dbg !2539
  call void @llvm.dbg.value(metadata i32 %528, metadata !2414, metadata !DIExpression()), !dbg !2425
  %529 = xor i32 %510, -1, !dbg !2541
  %530 = or i32 %528, %529, !dbg !2541
  %531 = xor i32 %530, %519, !dbg !2541
  %532 = add i32 %37, -198630844, !dbg !2541
  %533 = add i32 %532, %501, !dbg !2541
  %534 = add i32 %533, %531, !dbg !2541
  call void @llvm.dbg.value(metadata i32 %534, metadata !2413, metadata !DIExpression()), !dbg !2425
  %535 = shl i32 %534, 6, !dbg !2541
  %536 = lshr i32 %534, 26, !dbg !2541
  %537 = or i32 %535, %536, !dbg !2541
  call void @llvm.dbg.value(metadata i32 %537, metadata !2413, metadata !DIExpression()), !dbg !2425
  %538 = add i32 %537, %528, !dbg !2541
  call void @llvm.dbg.value(metadata i32 %538, metadata !2413, metadata !DIExpression()), !dbg !2425
  %539 = xor i32 %519, -1, !dbg !2543
  %540 = or i32 %538, %539, !dbg !2543
  %541 = xor i32 %540, %528, !dbg !2543
  %542 = add i32 %121, 1126891415, !dbg !2543
  %543 = add i32 %542, %510, !dbg !2543
  %544 = add i32 %543, %541, !dbg !2543
  call void @llvm.dbg.value(metadata i32 %544, metadata !2416, metadata !DIExpression()), !dbg !2425
  %545 = shl i32 %544, 10, !dbg !2543
  %546 = lshr i32 %544, 22, !dbg !2543
  %547 = or i32 %545, %546, !dbg !2543
  call void @llvm.dbg.value(metadata i32 %547, metadata !2416, metadata !DIExpression()), !dbg !2425
  %548 = add i32 %547, %538, !dbg !2543
  call void @llvm.dbg.value(metadata i32 %548, metadata !2416, metadata !DIExpression()), !dbg !2425
  %549 = xor i32 %528, -1, !dbg !2545
  %550 = or i32 %548, %549, !dbg !2545
  %551 = xor i32 %550, %538, !dbg !2545
  %552 = add i32 %205, -1416354905, !dbg !2545
  %553 = add i32 %552, %519, !dbg !2545
  %554 = add i32 %553, %551, !dbg !2545
  call void @llvm.dbg.value(metadata i32 %554, metadata !2415, metadata !DIExpression()), !dbg !2425
  %555 = shl i32 %554, 15, !dbg !2545
  %556 = lshr i32 %554, 17, !dbg !2545
  %557 = or i32 %555, %556, !dbg !2545
  call void @llvm.dbg.value(metadata i32 %557, metadata !2415, metadata !DIExpression()), !dbg !2425
  %558 = add i32 %557, %548, !dbg !2545
  call void @llvm.dbg.value(metadata i32 %558, metadata !2415, metadata !DIExpression()), !dbg !2425
  %559 = xor i32 %538, -1, !dbg !2547
  %560 = or i32 %558, %559, !dbg !2547
  %561 = xor i32 %560, %548, !dbg !2547
  %562 = add i32 %97, -57434055, !dbg !2547
  %563 = add i32 %562, %528, !dbg !2547
  %564 = add i32 %563, %561, !dbg !2547
  call void @llvm.dbg.value(metadata i32 %564, metadata !2414, metadata !DIExpression()), !dbg !2425
  %565 = shl i32 %564, 21, !dbg !2547
  %566 = lshr i32 %564, 11, !dbg !2547
  %567 = or i32 %565, %566, !dbg !2547
  call void @llvm.dbg.value(metadata i32 %567, metadata !2414, metadata !DIExpression()), !dbg !2425
  %568 = add i32 %567, %558, !dbg !2547
  call void @llvm.dbg.value(metadata i32 %568, metadata !2414, metadata !DIExpression()), !dbg !2425
  %569 = xor i32 %548, -1, !dbg !2549
  %570 = or i32 %568, %569, !dbg !2549
  %571 = xor i32 %570, %558, !dbg !2549
  %572 = add i32 %181, 1700485571, !dbg !2549
  %573 = add i32 %572, %538, !dbg !2549
  %574 = add i32 %573, %571, !dbg !2549
  call void @llvm.dbg.value(metadata i32 %574, metadata !2413, metadata !DIExpression()), !dbg !2425
  %575 = shl i32 %574, 6, !dbg !2549
  %576 = lshr i32 %574, 26, !dbg !2549
  %577 = or i32 %575, %576, !dbg !2549
  call void @llvm.dbg.value(metadata i32 %577, metadata !2413, metadata !DIExpression()), !dbg !2425
  %578 = add i32 %577, %568, !dbg !2549
  call void @llvm.dbg.value(metadata i32 %578, metadata !2413, metadata !DIExpression()), !dbg !2425
  %579 = xor i32 %558, -1, !dbg !2551
  %580 = or i32 %578, %579, !dbg !2551
  %581 = xor i32 %580, %568, !dbg !2551
  %582 = add i32 %73, -1894986606, !dbg !2551
  %583 = add i32 %582, %548, !dbg !2551
  %584 = add i32 %583, %581, !dbg !2551
  call void @llvm.dbg.value(metadata i32 %584, metadata !2416, metadata !DIExpression()), !dbg !2425
  %585 = shl i32 %584, 10, !dbg !2551
  %586 = lshr i32 %584, 22, !dbg !2551
  %587 = or i32 %585, %586, !dbg !2551
  call void @llvm.dbg.value(metadata i32 %587, metadata !2416, metadata !DIExpression()), !dbg !2425
  %588 = add i32 %587, %578, !dbg !2551
  call void @llvm.dbg.value(metadata i32 %588, metadata !2416, metadata !DIExpression()), !dbg !2425
  %589 = xor i32 %568, -1, !dbg !2553
  %590 = or i32 %588, %589, !dbg !2553
  %591 = xor i32 %590, %578, !dbg !2553
  %592 = add i32 %157, -1051523, !dbg !2553
  %593 = add i32 %592, %558, !dbg !2553
  %594 = add i32 %593, %591, !dbg !2553
  call void @llvm.dbg.value(metadata i32 %594, metadata !2415, metadata !DIExpression()), !dbg !2425
  %595 = shl i32 %594, 15, !dbg !2553
  %596 = lshr i32 %594, 17, !dbg !2553
  %597 = or i32 %595, %596, !dbg !2553
  call void @llvm.dbg.value(metadata i32 %597, metadata !2415, metadata !DIExpression()), !dbg !2425
  %598 = add i32 %597, %588, !dbg !2553
  call void @llvm.dbg.value(metadata i32 %598, metadata !2415, metadata !DIExpression()), !dbg !2425
  %599 = xor i32 %578, -1, !dbg !2555
  %600 = or i32 %598, %599, !dbg !2555
  %601 = xor i32 %600, %588, !dbg !2555
  %602 = add i32 %49, -2054922799, !dbg !2555
  %603 = add i32 %602, %568, !dbg !2555
  %604 = add i32 %603, %601, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %604, metadata !2414, metadata !DIExpression()), !dbg !2425
  %605 = shl i32 %604, 21, !dbg !2555
  %606 = lshr i32 %604, 11, !dbg !2555
  %607 = or i32 %605, %606, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %607, metadata !2414, metadata !DIExpression()), !dbg !2425
  %608 = add i32 %607, %598, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %608, metadata !2414, metadata !DIExpression()), !dbg !2425
  %609 = xor i32 %588, -1, !dbg !2557
  %610 = or i32 %608, %609, !dbg !2557
  %611 = xor i32 %610, %598, !dbg !2557
  %612 = add i32 %133, 1873313359, !dbg !2557
  %613 = add i32 %612, %578, !dbg !2557
  %614 = add i32 %613, %611, !dbg !2557
  call void @llvm.dbg.value(metadata i32 %614, metadata !2413, metadata !DIExpression()), !dbg !2425
  %615 = shl i32 %614, 6, !dbg !2557
  %616 = lshr i32 %614, 26, !dbg !2557
  %617 = or i32 %615, %616, !dbg !2557
  call void @llvm.dbg.value(metadata i32 %617, metadata !2413, metadata !DIExpression()), !dbg !2425
  %618 = add i32 %617, %608, !dbg !2557
  call void @llvm.dbg.value(metadata i32 %618, metadata !2413, metadata !DIExpression()), !dbg !2425
  %619 = xor i32 %598, -1, !dbg !2559
  %620 = or i32 %618, %619, !dbg !2559
  %621 = xor i32 %620, %608, !dbg !2559
  %622 = add i32 %217, -30611744, !dbg !2559
  %623 = add i32 %622, %588, !dbg !2559
  %624 = add i32 %623, %621, !dbg !2559
  call void @llvm.dbg.value(metadata i32 %624, metadata !2416, metadata !DIExpression()), !dbg !2425
  %625 = shl i32 %624, 10, !dbg !2559
  %626 = lshr i32 %624, 22, !dbg !2559
  %627 = or i32 %625, %626, !dbg !2559
  call void @llvm.dbg.value(metadata i32 %627, metadata !2416, metadata !DIExpression()), !dbg !2425
  %628 = add i32 %627, %618, !dbg !2559
  call void @llvm.dbg.value(metadata i32 %628, metadata !2416, metadata !DIExpression()), !dbg !2425
  %629 = xor i32 %608, -1, !dbg !2561
  %630 = or i32 %628, %629, !dbg !2561
  %631 = xor i32 %630, %618, !dbg !2561
  %632 = add i32 %109, -1560198380, !dbg !2561
  %633 = add i32 %632, %598, !dbg !2561
  %634 = add i32 %633, %631, !dbg !2561
  call void @llvm.dbg.value(metadata i32 %634, metadata !2415, metadata !DIExpression()), !dbg !2425
  %635 = shl i32 %634, 15, !dbg !2561
  %636 = lshr i32 %634, 17, !dbg !2561
  %637 = or i32 %635, %636, !dbg !2561
  call void @llvm.dbg.value(metadata i32 %637, metadata !2415, metadata !DIExpression()), !dbg !2425
  %638 = add i32 %637, %628, !dbg !2561
  call void @llvm.dbg.value(metadata i32 %638, metadata !2415, metadata !DIExpression()), !dbg !2425
  %639 = xor i32 %618, -1, !dbg !2563
  %640 = or i32 %638, %639, !dbg !2563
  %641 = xor i32 %640, %628, !dbg !2563
  %642 = add i32 %193, 1309151649, !dbg !2563
  %643 = add i32 %642, %608, !dbg !2563
  %644 = add i32 %643, %641, !dbg !2563
  call void @llvm.dbg.value(metadata i32 %644, metadata !2414, metadata !DIExpression()), !dbg !2425
  %645 = shl i32 %644, 21, !dbg !2563
  %646 = lshr i32 %644, 11, !dbg !2563
  %647 = or i32 %645, %646, !dbg !2563
  call void @llvm.dbg.value(metadata i32 %647, metadata !2414, metadata !DIExpression()), !dbg !2425
  %648 = add i32 %647, %638, !dbg !2563
  call void @llvm.dbg.value(metadata i32 %648, metadata !2414, metadata !DIExpression()), !dbg !2425
  %649 = xor i32 %628, -1, !dbg !2565
  %650 = or i32 %648, %649, !dbg !2565
  %651 = xor i32 %650, %638, !dbg !2565
  %652 = add i32 %85, -145523070, !dbg !2565
  %653 = add i32 %652, %618, !dbg !2565
  %654 = add i32 %653, %651, !dbg !2565
  call void @llvm.dbg.value(metadata i32 %654, metadata !2413, metadata !DIExpression()), !dbg !2425
  %655 = shl i32 %654, 6, !dbg !2565
  %656 = lshr i32 %654, 26, !dbg !2565
  %657 = or i32 %655, %656, !dbg !2565
  call void @llvm.dbg.value(metadata i32 %657, metadata !2413, metadata !DIExpression()), !dbg !2425
  %658 = add i32 %657, %648, !dbg !2565
  call void @llvm.dbg.value(metadata i32 %658, metadata !2413, metadata !DIExpression()), !dbg !2425
  %659 = xor i32 %638, -1, !dbg !2567
  %660 = or i32 %658, %659, !dbg !2567
  %661 = xor i32 %660, %648, !dbg !2567
  %662 = add i32 %169, -1120210379, !dbg !2567
  %663 = add i32 %662, %628, !dbg !2567
  %664 = add i32 %663, %661, !dbg !2567
  call void @llvm.dbg.value(metadata i32 %664, metadata !2416, metadata !DIExpression()), !dbg !2425
  %665 = shl i32 %664, 10, !dbg !2567
  %666 = lshr i32 %664, 22, !dbg !2567
  %667 = or i32 %665, %666, !dbg !2567
  call void @llvm.dbg.value(metadata i32 %667, metadata !2416, metadata !DIExpression()), !dbg !2425
  %668 = add i32 %667, %658, !dbg !2567
  call void @llvm.dbg.value(metadata i32 %668, metadata !2416, metadata !DIExpression()), !dbg !2425
  %669 = xor i32 %648, -1, !dbg !2569
  %670 = or i32 %668, %669, !dbg !2569
  %671 = xor i32 %670, %658, !dbg !2569
  %672 = add i32 %61, 718787259, !dbg !2569
  %673 = add i32 %672, %638, !dbg !2569
  %674 = add i32 %673, %671, !dbg !2569
  call void @llvm.dbg.value(metadata i32 %674, metadata !2415, metadata !DIExpression()), !dbg !2425
  %675 = shl i32 %674, 15, !dbg !2569
  %676 = lshr i32 %674, 17, !dbg !2569
  %677 = or i32 %675, %676, !dbg !2569
  call void @llvm.dbg.value(metadata i32 %677, metadata !2415, metadata !DIExpression()), !dbg !2425
  %678 = add i32 %677, %668, !dbg !2569
  call void @llvm.dbg.value(metadata i32 %678, metadata !2415, metadata !DIExpression()), !dbg !2425
  %679 = xor i32 %658, -1, !dbg !2571
  %680 = or i32 %678, %679, !dbg !2571
  %681 = xor i32 %680, %668, !dbg !2571
  %682 = add i32 %145, -343485551, !dbg !2571
  %683 = add i32 %682, %648, !dbg !2571
  %684 = add i32 %683, %681, !dbg !2571
  call void @llvm.dbg.value(metadata i32 %684, metadata !2414, metadata !DIExpression()), !dbg !2425
  %685 = shl i32 %684, 21, !dbg !2571
  %686 = lshr i32 %684, 11, !dbg !2571
  %687 = or i32 %685, %686, !dbg !2571
  call void @llvm.dbg.value(metadata i32 undef, metadata !2414, metadata !DIExpression()), !dbg !2425
  %688 = add i32 %658, %30, !dbg !2573
  call void @llvm.dbg.value(metadata i32 %688, metadata !2413, metadata !DIExpression()), !dbg !2425
  %689 = add i32 %678, %31, !dbg !2571
  %690 = add i32 %689, %687, !dbg !2574
  call void @llvm.dbg.value(metadata i32 %690, metadata !2414, metadata !DIExpression()), !dbg !2425
  %691 = add i32 %678, %32, !dbg !2575
  call void @llvm.dbg.value(metadata i32 %691, metadata !2415, metadata !DIExpression()), !dbg !2425
  %692 = add i32 %668, %33, !dbg !2576
  call void @llvm.dbg.value(metadata i32 %692, metadata !2416, metadata !DIExpression()), !dbg !2425
  %693 = icmp ult i32* %221, %6, !dbg !2442
  br i1 %693, label %28, label %694, !dbg !2443, !llvm.loop !2577

694:                                              ; preds = %28, %3
  %695 = phi i32 [ %14, %3 ], [ %692, %28 ], !dbg !2425
  %696 = phi i32 [ %12, %3 ], [ %691, %28 ], !dbg !2425
  %697 = phi i32 [ %10, %3 ], [ %690, %28 ], !dbg !2425
  %698 = phi i32 [ %8, %3 ], [ %688, %28 ], !dbg !2425
  call void @llvm.dbg.value(metadata i32 %695, metadata !2416, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 %696, metadata !2415, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 %697, metadata !2414, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 %698, metadata !2413, metadata !DIExpression()), !dbg !2425
  store i32 %698, i32* %7, align 4, !dbg !2579, !tbaa !2287
  store i32 %697, i32* %9, align 4, !dbg !2580, !tbaa !2311
  store i32 %696, i32* %11, align 4, !dbg !2581, !tbaa !2319
  store i32 %695, i32* %13, align 4, !dbg !2582, !tbaa !2327
  ret void, !dbg !2583
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @md5_stream(%struct._IO_FILE* nocapture %0, i8* %1) local_unnamed_addr #8 !dbg !2584 {
  %3 = alloca %struct.md5_ctx, align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2622, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8* %1, metadata !2623, metadata !DIExpression()), !dbg !2630
  %4 = tail call noalias dereferenceable_or_null(32840) i8* @malloc(i64 32840) #19, !dbg !2631
  call void @llvm.dbg.value(metadata i8* %4, metadata !2624, metadata !DIExpression()), !dbg !2630
  %5 = icmp eq i8* %4, null, !dbg !2632
  br i1 %5, label %42, label %6, !dbg !2634

6:                                                ; preds = %2
  %7 = bitcast %struct.md5_ctx* %3 to i8*, !dbg !2635
  call void @llvm.lifetime.start.p0i8(i64 156, i8* nonnull %7) #19, !dbg !2635
  call void @llvm.dbg.declare(metadata %struct.md5_ctx* %3, metadata !2625, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %3, metadata !2264, metadata !DIExpression()), !dbg !2637
  %8 = bitcast %struct.md5_ctx* %3 to <4 x i32>*, !dbg !2639
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %8, align 16, !dbg !2639, !tbaa !1556
  %9 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 4, i64 1, !dbg !2640
  store i32 0, i32* %9, align 4, !dbg !2641, !tbaa !1556
  %10 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 4, i64 0, !dbg !2642
  store i32 0, i32* %10, align 16, !dbg !2643, !tbaa !1556
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 5, !dbg !2644
  store i32 0, i32* %11, align 8, !dbg !2645, !tbaa !2273
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2646
  br label %13, !dbg !2655

13:                                               ; preds = %26, %6
  %14 = phi i64 [ 0, %6 ], [ %27, %26 ], !dbg !2656
  call void @llvm.dbg.value(metadata i64 %14, metadata !2626, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2651, metadata !DIExpression()), !dbg !2646
  %15 = load i32, i32* %12, align 8, !dbg !2657, !tbaa !1974
  %16 = and i32 %15, 16, !dbg !2657
  %17 = icmp eq i32 %16, 0, !dbg !2658
  br i1 %17, label %18, label %34, !dbg !2659

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, i8* %4, i64 %14, !dbg !2660
  %20 = sub i64 32768, %14, !dbg !2660
  %21 = tail call i64 @fread_unlocked(i8* nonnull %19, i64 1, i64 %20, %struct._IO_FILE* nonnull %0), !dbg !2660
  call void @llvm.dbg.value(metadata i64 %21, metadata !2627, metadata !DIExpression()), !dbg !2656
  %22 = add i64 %21, %14, !dbg !2661
  call void @llvm.dbg.value(metadata i64 %22, metadata !2626, metadata !DIExpression()), !dbg !2630
  %23 = icmp eq i64 %22, 32768, !dbg !2662
  br i1 %23, label %33, label %24, !dbg !2664

24:                                               ; preds = %18
  %25 = icmp eq i64 %21, 0, !dbg !2665
  br i1 %25, label %28, label %26, !dbg !2667

26:                                               ; preds = %24, %33
  %27 = phi i64 [ %22, %24 ], [ 0, %33 ]
  br label %13, !dbg !2630, !llvm.loop !2668

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2671, metadata !DIExpression()), !dbg !2674
  %29 = load i32, i32* %12, align 8, !dbg !2678, !tbaa !1974
  %30 = and i32 %29, 32, !dbg !2678
  %31 = icmp eq i32 %30, 0, !dbg !2679
  br i1 %31, label %34, label %32, !dbg !2680

32:                                               ; preds = %28
  tail call void @free(i8* %4) #19, !dbg !2681
  call void @llvm.dbg.value(metadata i64 32768, metadata !2626, metadata !DIExpression()), !dbg !2630
  br label %40

33:                                               ; preds = %18
  call void @md5_process_block(i8* nonnull %4, i64 32768, %struct.md5_ctx* nonnull %3) #19, !dbg !2683
  call void @llvm.dbg.value(metadata i64 32768, metadata !2626, metadata !DIExpression()), !dbg !2630
  br label %26

34:                                               ; preds = %13, %28
  %35 = phi i64 [ %22, %28 ], [ %14, %13 ]
  call void @llvm.dbg.value(metadata i64 32768, metadata !2626, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.label(metadata !2629), !dbg !2684
  %36 = icmp eq i64 %35, 0, !dbg !2685
  br i1 %36, label %38, label %37, !dbg !2687

37:                                               ; preds = %34
  call void @md5_process_bytes(i8* nonnull %4, i64 %35, %struct.md5_ctx* nonnull %3) #19, !dbg !2688
  br label %38, !dbg !2688

38:                                               ; preds = %34, %37
  %39 = call i8* @md5_finish_ctx(%struct.md5_ctx* nonnull %3, i8* %1) #19, !dbg !2689
  call void @free(i8* %4) #19, !dbg !2690
  br label %40, !dbg !2691

40:                                               ; preds = %32, %38
  %41 = phi i32 [ 0, %38 ], [ 1, %32 ]
  call void @llvm.lifetime.end.p0i8(i64 156, i8* nonnull %7) #19, !dbg !2692
  br label %42

42:                                               ; preds = %40, %2
  %43 = phi i32 [ %41, %40 ], [ 1, %2 ]
  ret i32 %43, !dbg !2692
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i64 @fread_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local void @md5_process_bytes(i8* %0, i64 %1, %struct.md5_ctx* %2) local_unnamed_addr #13 !dbg !2693 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2695, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %1, metadata !2696, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %2, metadata !2697, metadata !DIExpression()), !dbg !2705
  %4 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 5, !dbg !2706
  %5 = load i32, i32* %4, align 4, !dbg !2706, !tbaa !2273
  %6 = icmp eq i32 %5, 0, !dbg !2707
  br i1 %6, label %31, label %7, !dbg !2708

7:                                                ; preds = %3
  %8 = zext i32 %5 to i64, !dbg !2709
  call void @llvm.dbg.value(metadata i64 %8, metadata !2698, metadata !DIExpression()), !dbg !2710
  %9 = sub nsw i64 128, %8, !dbg !2711
  %10 = icmp ugt i64 %9, %1, !dbg !2712
  %11 = select i1 %10, i64 %1, i64 %9, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %11, metadata !2701, metadata !DIExpression()), !dbg !2710
  %12 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6, i64 0, !dbg !2714
  %13 = bitcast i32* %12 to i8*, !dbg !2714
  %14 = getelementptr inbounds i8, i8* %13, i64 %8, !dbg !2714
  call void @llvm.dbg.value(metadata i8* %14, metadata !2296, metadata !DIExpression()) #19, !dbg !2715
  call void @llvm.dbg.value(metadata i8* %0, metadata !2304, metadata !DIExpression()) #19, !dbg !2715
  call void @llvm.dbg.value(metadata i64 %11, metadata !2305, metadata !DIExpression()) #19, !dbg !2715
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %14, i8* nonnull align 1 %0, i64 %11, i1 false) #19, !dbg !2717
  %15 = load i32, i32* %4, align 4, !dbg !2718, !tbaa !2273
  %16 = trunc i64 %11 to i32, !dbg !2718
  %17 = add i32 %15, %16, !dbg !2718
  store i32 %17, i32* %4, align 4, !dbg !2718, !tbaa !2273
  %18 = icmp ugt i32 %17, 64, !dbg !2719
  br i1 %18, label %19, label %28, !dbg !2721

19:                                               ; preds = %7
  %20 = and i32 %17, -64, !dbg !2722
  %21 = zext i32 %20 to i64, !dbg !2724
  tail call void @md5_process_block(i8* nonnull %13, i64 %21, %struct.md5_ctx* nonnull %2) #19, !dbg !2725
  %22 = load i32, i32* %4, align 4, !dbg !2726, !tbaa !2273
  %23 = and i32 %22, 63, !dbg !2726
  store i32 %23, i32* %4, align 4, !dbg !2726, !tbaa !2273
  %24 = add i64 %11, %8, !dbg !2727
  %25 = and i64 %24, -64, !dbg !2728
  %26 = getelementptr inbounds i8, i8* %13, i64 %25, !dbg !2729
  %27 = zext i32 %23 to i64, !dbg !2730
  call void @llvm.dbg.value(metadata i8* %13, metadata !2296, metadata !DIExpression()) #19, !dbg !2731
  call void @llvm.dbg.value(metadata i8* %26, metadata !2304, metadata !DIExpression()) #19, !dbg !2731
  call void @llvm.dbg.value(metadata i64 %27, metadata !2305, metadata !DIExpression()) #19, !dbg !2731
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %13, i8* nonnull align 1 %26, i64 %27, i1 false) #19, !dbg !2733
  br label %28, !dbg !2734

28:                                               ; preds = %19, %7
  %29 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !2735
  call void @llvm.dbg.value(metadata i8* %29, metadata !2695, metadata !DIExpression()), !dbg !2705
  %30 = sub i64 %1, %11, !dbg !2736
  call void @llvm.dbg.value(metadata i64 %30, metadata !2696, metadata !DIExpression()), !dbg !2705
  br label %31, !dbg !2737

31:                                               ; preds = %3, %28
  %32 = phi i64 [ %30, %28 ], [ %1, %3 ]
  %33 = phi i8* [ %29, %28 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i8* %33, metadata !2695, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %32, metadata !2696, metadata !DIExpression()), !dbg !2705
  %34 = icmp ugt i64 %32, 63, !dbg !2738
  br i1 %34, label %35, label %56, !dbg !2740

35:                                               ; preds = %31
  %36 = ptrtoint i8* %33 to i64, !dbg !2741
  %37 = and i64 %36, 3, !dbg !2741
  %38 = icmp eq i64 %37, 0, !dbg !2741
  br i1 %38, label %52, label %39, !dbg !2744

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %33, metadata !2695, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %32, metadata !2696, metadata !DIExpression()), !dbg !2705
  %40 = icmp ugt i64 %32, 64, !dbg !2745
  br i1 %40, label %41, label %63, !dbg !2746

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6, i64 0, !dbg !2747
  %43 = bitcast i32* %42 to i8*, !dbg !2747
  %44 = add i64 %32, -65, !dbg !2746
  %45 = and i64 %44, -64, !dbg !2746
  br label %46, !dbg !2746

46:                                               ; preds = %41, %46
  %47 = phi i8* [ %33, %41 ], [ %49, %46 ]
  %48 = phi i64 [ %32, %41 ], [ %50, %46 ]
  call void @llvm.dbg.value(metadata i8* %47, metadata !2695, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %48, metadata !2696, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8* %43, metadata !2296, metadata !DIExpression()) #19, !dbg !2749
  call void @llvm.dbg.value(metadata i8* %47, metadata !2304, metadata !DIExpression()) #19, !dbg !2749
  call void @llvm.dbg.value(metadata i64 64, metadata !2305, metadata !DIExpression()) #19, !dbg !2749
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(64) %43, i8* nonnull align 1 dereferenceable(64) %47, i64 64, i1 false) #19, !dbg !2751
  tail call void @md5_process_block(i8* nonnull %43, i64 64, %struct.md5_ctx* %2) #19, !dbg !2752
  %49 = getelementptr inbounds i8, i8* %47, i64 64, !dbg !2753
  call void @llvm.dbg.value(metadata i8* %49, metadata !2695, metadata !DIExpression()), !dbg !2705
  %50 = add i64 %48, -64, !dbg !2754
  call void @llvm.dbg.value(metadata i64 %50, metadata !2696, metadata !DIExpression()), !dbg !2705
  %51 = icmp ugt i64 %50, 64, !dbg !2745
  br i1 %51, label %46, label %60, !dbg !2746, !llvm.loop !2755

52:                                               ; preds = %35
  %53 = and i64 %32, -64, !dbg !2757
  tail call void @md5_process_block(i8* %33, i64 %53, %struct.md5_ctx* nonnull %2) #19, !dbg !2759
  %54 = getelementptr inbounds i8, i8* %33, i64 %53, !dbg !2760
  call void @llvm.dbg.value(metadata i8* %54, metadata !2695, metadata !DIExpression()), !dbg !2705
  %55 = and i64 %32, 63, !dbg !2761
  call void @llvm.dbg.value(metadata i64 %55, metadata !2696, metadata !DIExpression()), !dbg !2705
  br label %56

56:                                               ; preds = %52, %31
  %57 = phi i64 [ %55, %52 ], [ %32, %31 ], !dbg !2705
  %58 = phi i8* [ %54, %52 ], [ %33, %31 ], !dbg !2705
  call void @llvm.dbg.value(metadata i8* %58, metadata !2695, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %57, metadata !2696, metadata !DIExpression()), !dbg !2705
  %59 = icmp eq i64 %57, 0, !dbg !2762
  br i1 %59, label %80, label %63, !dbg !2763

60:                                               ; preds = %46
  %61 = add i64 %32, -64, !dbg !2746
  %62 = sub i64 %61, %45, !dbg !2746
  br label %63, !dbg !2764

63:                                               ; preds = %60, %39, %56
  %64 = phi i8* [ %58, %56 ], [ %33, %39 ], [ %49, %60 ]
  %65 = phi i64 [ %57, %56 ], [ 64, %39 ], [ %62, %60 ]
  %66 = load i32, i32* %4, align 4, !dbg !2764, !tbaa !2273
  %67 = zext i32 %66 to i64, !dbg !2765
  call void @llvm.dbg.value(metadata i64 %67, metadata !2702, metadata !DIExpression()), !dbg !2766
  %68 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6, !dbg !2767
  %69 = bitcast [32 x i32]* %68 to i8*, !dbg !2768
  %70 = getelementptr inbounds i8, i8* %69, i64 %67, !dbg !2768
  call void @llvm.dbg.value(metadata i8* %70, metadata !2296, metadata !DIExpression()) #19, !dbg !2769
  call void @llvm.dbg.value(metadata i8* %58, metadata !2304, metadata !DIExpression()) #19, !dbg !2769
  call void @llvm.dbg.value(metadata i64 %57, metadata !2305, metadata !DIExpression()) #19, !dbg !2769
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %70, i8* nonnull align 1 %64, i64 %65, i1 false) #19, !dbg !2771
  %71 = add nuw nsw i64 %65, %67, !dbg !2772
  call void @llvm.dbg.value(metadata i64 %71, metadata !2702, metadata !DIExpression()), !dbg !2766
  %72 = icmp ugt i64 %71, 63, !dbg !2773
  br i1 %72, label %73, label %77, !dbg !2775

73:                                               ; preds = %63
  tail call void @md5_process_block(i8* nonnull %69, i64 64, %struct.md5_ctx* nonnull %2) #19, !dbg !2776
  %74 = add nsw i64 %71, -64, !dbg !2778
  call void @llvm.dbg.value(metadata i64 %74, metadata !2702, metadata !DIExpression()), !dbg !2766
  %75 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6, i64 16, !dbg !2779
  %76 = bitcast i32* %75 to i8*, !dbg !2780
  call void @llvm.dbg.value(metadata i8* %69, metadata !2296, metadata !DIExpression()) #19, !dbg !2781
  call void @llvm.dbg.value(metadata i8* %76, metadata !2304, metadata !DIExpression()) #19, !dbg !2781
  call void @llvm.dbg.value(metadata i64 %74, metadata !2305, metadata !DIExpression()) #19, !dbg !2781
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %69, i8* nonnull align 1 %76, i64 %74, i1 false) #19, !dbg !2783
  br label %77, !dbg !2784

77:                                               ; preds = %73, %63
  %78 = phi i64 [ %74, %73 ], [ %71, %63 ], !dbg !2766
  call void @llvm.dbg.value(metadata i64 %78, metadata !2702, metadata !DIExpression()), !dbg !2766
  %79 = trunc i64 %78 to i32, !dbg !2785
  store i32 %79, i32* %4, align 4, !dbg !2786, !tbaa !2273
  br label %80, !dbg !2787

80:                                               ; preds = %56, %77
  ret void, !dbg !2788
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @md5_buffer(i8* %0, i64 %1, i8* returned %2) local_unnamed_addr #8 !dbg !2789 {
  %4 = alloca %struct.md5_ctx, align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !2793, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i64 %1, metadata !2794, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8* %2, metadata !2795, metadata !DIExpression()), !dbg !2797
  %5 = bitcast %struct.md5_ctx* %4 to i8*, !dbg !2798
  call void @llvm.lifetime.start.p0i8(i64 156, i8* nonnull %5) #19, !dbg !2798
  call void @llvm.dbg.declare(metadata %struct.md5_ctx* %4, metadata !2796, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata %struct.md5_ctx* %4, metadata !2264, metadata !DIExpression()), !dbg !2800
  %6 = bitcast %struct.md5_ctx* %4 to <4 x i32>*, !dbg !2802
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %6, align 16, !dbg !2802, !tbaa !1556
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 4, i64 1, !dbg !2803
  store i32 0, i32* %7, align 4, !dbg !2804, !tbaa !1556
  %8 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 4, i64 0, !dbg !2805
  store i32 0, i32* %8, align 16, !dbg !2806, !tbaa !1556
  %9 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 5, !dbg !2807
  store i32 0, i32* %9, align 8, !dbg !2808, !tbaa !2273
  call void @md5_process_bytes(i8* %0, i64 %1, %struct.md5_ctx* nonnull %4) #19, !dbg !2809
  %10 = call i8* @md5_finish_ctx(%struct.md5_ctx* nonnull %4, i8* %2) #19, !dbg !2810
  call void @llvm.lifetime.end.p0i8(i64 156, i8* nonnull %5) #19, !dbg !2811
  ret i8* %10, !dbg !2812
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !2813 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2819, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i64 %1, metadata !2820, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i64 %2, metadata !2821, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i32 %3, metadata !2822, metadata !DIExpression()), !dbg !2825
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #19, !dbg !2826
  call void @llvm.dbg.value(metadata i32 %5, metadata !2823, metadata !DIExpression()), !dbg !2827
  ret void, !dbg !2828
}

; Function Attrs: nounwind
declare !dbg !567 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !2829 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2835, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i32 %1, metadata !2836, metadata !DIExpression()), !dbg !2837
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2838
  br i1 %3, label %7, label %4, !dbg !2840

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !2841
  call void @llvm.dbg.value(metadata i32 %5, metadata !2819, metadata !DIExpression()) #19, !dbg !2842
  call void @llvm.dbg.value(metadata i64 0, metadata !2820, metadata !DIExpression()) #19, !dbg !2842
  call void @llvm.dbg.value(metadata i64 0, metadata !2821, metadata !DIExpression()) #19, !dbg !2842
  call void @llvm.dbg.value(metadata i32 %1, metadata !2822, metadata !DIExpression()) #19, !dbg !2842
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #19, !dbg !2844
  call void @llvm.dbg.value(metadata i32 %6, metadata !2823, metadata !DIExpression()) #19, !dbg !2845
  br label %7, !dbg !2846

7:                                                ; preds = %2, %4
  ret void, !dbg !2847
}

; Function Attrs: nofree nounwind
declare !dbg !570 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @fopen_safer(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #8 !dbg !2848 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2854, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8* %1, metadata !2855, metadata !DIExpression()), !dbg !2869
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !2870
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, metadata !2856, metadata !DIExpression()), !dbg !2869
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !2871
  br i1 %4, label %25, label %5, !dbg !2872

5:                                                ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #19, !dbg !2873
  call void @llvm.dbg.value(metadata i32 %6, metadata !2857, metadata !DIExpression()), !dbg !2874
  %7 = icmp ult i32 %6, 3, !dbg !2875
  br i1 %7, label %8, label %25, !dbg !2875

8:                                                ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #19, !dbg !2876
  call void @llvm.dbg.value(metadata i32 %9, metadata !2860, metadata !DIExpression()), !dbg !2877
  %10 = icmp slt i32 %9, 0, !dbg !2878
  br i1 %10, label %11, label %15, !dbg !2879

11:                                               ; preds = %8
  %12 = tail call i32* @__errno_location() #24, !dbg !2880
  %13 = load i32, i32* %12, align 4, !dbg !2880, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %13, metadata !2863, metadata !DIExpression()), !dbg !2881
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #19, !dbg !2882
  store i32 %13, i32* %12, align 4, !dbg !2883, !tbaa !1556
  br label %25

15:                                               ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #19, !dbg !2884
  %17 = icmp eq i32 %16, 0, !dbg !2885
  br i1 %17, label %18, label %21, !dbg !2886

18:                                               ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #19, !dbg !2887
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !2856, metadata !DIExpression()), !dbg !2869
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !2888
  br i1 %20, label %21, label %25, !dbg !2889

21:                                               ; preds = %18, %15
  call void @llvm.dbg.value(metadata %struct._IO_FILE* undef, metadata !2856, metadata !DIExpression()), !dbg !2869
  %22 = tail call i32* @__errno_location() #24, !dbg !2890
  %23 = load i32, i32* %22, align 4, !dbg !2890, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %23, metadata !2866, metadata !DIExpression()), !dbg !2891
  %24 = tail call i32 @close(i32 %9) #19, !dbg !2892
  store i32 %23, i32* %22, align 4, !dbg !2893, !tbaa !1556
  br label %25

25:                                               ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ], !dbg !2869
  ret %struct._IO_FILE* %26, !dbg !2894
}

; Function Attrs: nofree nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !646 noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #4

declare !dbg !548 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2895 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2897, metadata !DIExpression()), !dbg !2900
  %2 = icmp eq i8* %0, null, !dbg !2901
  br i1 %2, label %3, label %6, !dbg !2903

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2904, !tbaa !1344
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.101, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !2906
  tail call void @abort() #22, !dbg !2907
  unreachable, !dbg !2907

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !2908
  call void @llvm.dbg.value(metadata i8* %7, metadata !2898, metadata !DIExpression()), !dbg !2900
  %8 = icmp eq i8* %7, null, !dbg !2909
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2910
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2910
  call void @llvm.dbg.value(metadata i8* %10, metadata !2899, metadata !DIExpression()), !dbg !2900
  %11 = ptrtoint i8* %10 to i64, !dbg !2911
  %12 = ptrtoint i8* %0 to i64, !dbg !2911
  %13 = sub i64 %11, %12, !dbg !2911
  %14 = icmp sgt i64 %13, 6, !dbg !2913
  br i1 %14, label %15, label %24, !dbg !2914

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2915
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.102, i64 0, i64 0), i64 7) #21, !dbg !2916
  %18 = icmp eq i32 %17, 0, !dbg !2917
  br i1 %18, label %19, label %24, !dbg !2918

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2897, metadata !DIExpression()), !dbg !2900
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.103, i64 0, i64 0), i64 3) #21, !dbg !2919
  %21 = icmp eq i32 %20, 0, !dbg !2922
  br i1 %21, label %22, label %24, !dbg !2923

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2924
  call void @llvm.dbg.value(metadata i8* %23, metadata !2897, metadata !DIExpression()), !dbg !2900
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2926, !tbaa !1344
  br label %24, !dbg !2927

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2897, metadata !DIExpression()), !dbg !2900
  store i8* %25, i8** @program_name, align 8, !dbg !2928, !tbaa !1344
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2929, !tbaa !1344
  ret void, !dbg !2930
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #14

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2931 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2936, metadata !DIExpression()), !dbg !2939
  %2 = tail call i32* @__errno_location() #24, !dbg !2940
  %3 = load i32, i32* %2, align 4, !dbg !2940, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %3, metadata !2937, metadata !DIExpression()), !dbg !2939
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2941
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2941
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2941
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #19, !dbg !2942
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2942
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2938, metadata !DIExpression()), !dbg !2939
  store i32 %3, i32* %2, align 4, !dbg !2943, !tbaa !1556
  ret %struct.quoting_options* %8, !dbg !2944
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #15 !dbg !2945 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2949, metadata !DIExpression()), !dbg !2950
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2951
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2951
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2952
  %5 = load i32, i32* %4, align 8, !dbg !2952, !tbaa !2953
  ret i32 %5, !dbg !2955
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !2956 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2960, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i32 %1, metadata !2961, metadata !DIExpression()), !dbg !2962
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2963
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2963
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2964
  store i32 %1, i32* %5, align 8, !dbg !2965, !tbaa !2953
  ret void, !dbg !2966
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #12 !dbg !2967 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2971, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 %1, metadata !2972, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i32 %2, metadata !2973, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 %1, metadata !2974, metadata !DIExpression()), !dbg !2979
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2980
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2980
  %6 = lshr i8 %1, 5, !dbg !2981
  %7 = zext i8 %6 to i64, !dbg !2981
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2982
  call void @llvm.dbg.value(metadata i32* %8, metadata !2975, metadata !DIExpression()), !dbg !2979
  %9 = and i8 %1, 31, !dbg !2983
  %10 = zext i8 %9 to i32, !dbg !2983
  call void @llvm.dbg.value(metadata i32 %10, metadata !2977, metadata !DIExpression()), !dbg !2979
  %11 = load i32, i32* %8, align 4, !dbg !2984, !tbaa !1556
  %12 = lshr i32 %11, %10, !dbg !2985
  %13 = and i32 %12, 1, !dbg !2986
  call void @llvm.dbg.value(metadata i32 %13, metadata !2978, metadata !DIExpression()), !dbg !2979
  %14 = and i32 %2, 1, !dbg !2987
  %15 = xor i32 %13, %14, !dbg !2988
  %16 = shl i32 %15, %10, !dbg !2989
  %17 = xor i32 %16, %11, !dbg !2990
  store i32 %17, i32* %8, align 4, !dbg !2990, !tbaa !1556
  ret i32 %13, !dbg !2991
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #12 !dbg !2992 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2996, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i32 %1, metadata !2997, metadata !DIExpression()), !dbg !2999
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !3000
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3002
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2996, metadata !DIExpression()), !dbg !2999
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3003
  %6 = load i32, i32* %5, align 4, !dbg !3003, !tbaa !3004
  call void @llvm.dbg.value(metadata i32 %6, metadata !2998, metadata !DIExpression()), !dbg !2999
  store i32 %1, i32* %5, align 4, !dbg !3005, !tbaa !3004
  ret i32 %6, !dbg !3006
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3007 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !3011, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i8* %1, metadata !3012, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i8* %2, metadata !3013, metadata !DIExpression()), !dbg !3014
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !3015
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3017
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3011, metadata !DIExpression()), !dbg !3014
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3018
  store i32 10, i32* %6, align 8, !dbg !3019, !tbaa !2953
  %7 = icmp ne i8* %1, null, !dbg !3020
  %8 = icmp ne i8* %2, null, !dbg !3022
  %9 = and i1 %7, %8, !dbg !3023
  br i1 %9, label %11, label %10, !dbg !3023

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !3024
  unreachable, !dbg !3024

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3025
  store i8* %1, i8** %12, align 8, !dbg !3026, !tbaa !3027
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3028
  store i8* %2, i8** %13, align 8, !dbg !3029, !tbaa !3030
  ret void, !dbg !3031
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !3032 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3036, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %1, metadata !3037, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i8* %2, metadata !3038, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %3, metadata !3039, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3040, metadata !DIExpression()), !dbg !3044
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !3045
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !3045
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !3041, metadata !DIExpression()), !dbg !3044
  %8 = tail call i32* @__errno_location() #24, !dbg !3046
  %9 = load i32, i32* %8, align 4, !dbg !3046, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %9, metadata !3042, metadata !DIExpression()), !dbg !3044
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !3047
  %11 = load i32, i32* %10, align 8, !dbg !3047, !tbaa !2953
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !3048
  %13 = load i32, i32* %12, align 4, !dbg !3048, !tbaa !3004
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !3049
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !3050
  %16 = load i8*, i8** %15, align 8, !dbg !3050, !tbaa !3027
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !3051
  %18 = load i8*, i8** %17, align 8, !dbg !3051, !tbaa !3030
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !3052
  call void @llvm.dbg.value(metadata i64 %19, metadata !3043, metadata !DIExpression()), !dbg !3044
  store i32 %9, i32* %8, align 4, !dbg !3053, !tbaa !1556
  ret i64 %19, !dbg !3054
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !3055 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3061, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %1, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %2, metadata !3063, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %3, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 %4, metadata !3065, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 %5, metadata !3066, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32* %6, metadata !3067, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %7, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %8, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 0, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 0, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* null, metadata !3073, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 0, metadata !3074, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 0, metadata !3075, metadata !DIExpression()), !dbg !3119
  %13 = tail call i64 @__ctype_get_mb_cur_max() #19, !dbg !3120
  %14 = icmp eq i64 %13, 1, !dbg !3121
  call void @llvm.dbg.value(metadata i1 %14, metadata !3076, metadata !DIExpression()), !dbg !3119
  %15 = lshr i32 %5, 1, !dbg !3122
  %16 = trunc i32 %15 to i8, !dbg !3122
  %17 = and i8 %16, 1, !dbg !3122
  call void @llvm.dbg.value(metadata i8 %17, metadata !3077, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 0, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 0, metadata !3079, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 1, metadata !3080, metadata !DIExpression()), !dbg !3119
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3123
  %19 = and i32 %5, 4, !dbg !3125
  %20 = icmp eq i32 %19, 0, !dbg !3125
  %21 = and i32 %5, 1, !dbg !3128
  %22 = icmp eq i32 %21, 0, !dbg !3128
  %23 = bitcast i64* %10 to i8*, !dbg !3131
  %24 = bitcast i32* %12 to i8*, !dbg !3132
  %25 = icmp eq i32* %6, null, !dbg !3133
  br label %26, !dbg !3135

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !3136
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !3137
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !3138
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !3139
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !3119
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !3140
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !3141
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !3142
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %38, metadata !3080, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %37, metadata !3079, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %36, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %35, metadata !3077, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %34, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %33, metadata !3075, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %32, metadata !3074, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %31, metadata !3073, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %30, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 0, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %29, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %28, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 %27, metadata !3065, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.label(metadata !3113), !dbg !3143
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
  ], !dbg !3144

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !3065, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 1, metadata !3077, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %35, metadata !3077, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 5, metadata !3065, metadata !DIExpression()), !dbg !3119
  br label %92, !dbg !3145

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !3077, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 5, metadata !3065, metadata !DIExpression()), !dbg !3119
  %42 = and i8 %35, 1, !dbg !3147
  %43 = icmp eq i8 %42, 0, !dbg !3147
  br i1 %43, label %44, label %92, !dbg !3145

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !3149
  br i1 %45, label %92, label %46, !dbg !3152

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !3149, !tbaa !1646
  br label %92, !dbg !3149

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.114, i64 0, i64 0), i32 %27), !dbg !3153
  call void @llvm.dbg.value(metadata i8* %48, metadata !3068, metadata !DIExpression()), !dbg !3119
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), i32 %27), !dbg !3157
  call void @llvm.dbg.value(metadata i8* %49, metadata !3069, metadata !DIExpression()), !dbg !3119
  br label %50, !dbg !3158

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %51, metadata !3068, metadata !DIExpression()), !dbg !3119
  %53 = and i8 %35, 1, !dbg !3159
  %54 = icmp eq i8 %53, 0, !dbg !3159
  br i1 %54, label %55, label %70, !dbg !3161

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !3073, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 0, metadata !3071, metadata !DIExpression()), !dbg !3119
  %56 = load i8, i8* %51, align 1, !dbg !3162, !tbaa !1646
  %57 = icmp eq i8 %56, 0, !dbg !3165
  br i1 %57, label %70, label %58, !dbg !3165

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !3073, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %61, metadata !3071, metadata !DIExpression()), !dbg !3119
  %62 = icmp ult i64 %61, %39, !dbg !3166
  br i1 %62, label %63, label %65, !dbg !3169

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !3166
  store i8 %59, i8* %64, align 1, !dbg !3166, !tbaa !1646
  br label %65, !dbg !3166

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %66, metadata !3071, metadata !DIExpression()), !dbg !3119
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !3170
  call void @llvm.dbg.value(metadata i8* %67, metadata !3073, metadata !DIExpression()), !dbg !3119
  %68 = load i8, i8* %67, align 1, !dbg !3162, !tbaa !1646
  %69 = icmp eq i8 %68, 0, !dbg !3165
  br i1 %69, label %70, label %58, !dbg !3165, !llvm.loop !3171

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !3173
  call void @llvm.dbg.value(metadata i64 %71, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 1, metadata !3075, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %52, metadata !3073, metadata !DIExpression()), !dbg !3119
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !3174
  call void @llvm.dbg.value(metadata i64 %72, metadata !3074, metadata !DIExpression()), !dbg !3119
  br label %92, !dbg !3175

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !3075, metadata !DIExpression()), !dbg !3119
  br label %74, !dbg !3176

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !3119
  call void @llvm.dbg.value(metadata i8 %75, metadata !3075, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 1, metadata !3077, metadata !DIExpression()), !dbg !3119
  br label %76, !dbg !3177

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !3139
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !3119
  call void @llvm.dbg.value(metadata i8 %78, metadata !3077, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %77, metadata !3075, metadata !DIExpression()), !dbg !3119
  %79 = and i8 %78, 1, !dbg !3178
  %80 = icmp eq i8 %79, 0, !dbg !3178
  %81 = select i1 %80, i8 1, i8 %77, !dbg !3180
  br label %82, !dbg !3180

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !3119
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !3122
  call void @llvm.dbg.value(metadata i8 %84, metadata !3077, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %83, metadata !3075, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 2, metadata !3065, metadata !DIExpression()), !dbg !3119
  %85 = and i8 %84, 1, !dbg !3181
  %86 = icmp eq i8 %85, 0, !dbg !3181
  br i1 %86, label %87, label %92, !dbg !3183

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !3184
  br i1 %88, label %92, label %89, !dbg !3187

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !3184, !tbaa !1646
  br label %92, !dbg !3184

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !3077, metadata !DIExpression()), !dbg !3119
  br label %92, !dbg !3188

91:                                               ; preds = %26
  call void @abort() #22, !dbg !3189
  unreachable, !dbg !3189

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !3173
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %40 ], !dbg !3119
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !3119
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !3119
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !3119
  call void @llvm.dbg.value(metadata i8 %100, metadata !3077, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %99, metadata !3075, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %98, metadata !3074, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %97, metadata !3073, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %96, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 %93, metadata !3065, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 0, metadata !3070, metadata !DIExpression()), !dbg !3119
  %101 = and i8 %99, 1, !dbg !3190
  %102 = icmp ne i8 %101, 0, !dbg !3190
  %103 = icmp ne i32 %93, 2, !dbg !3190
  %104 = and i1 %103, %102, !dbg !3190
  %105 = icmp ne i64 %98, 0, !dbg !3190
  %106 = and i1 %105, %104, !dbg !3190
  %107 = icmp ugt i64 %98, 1, !dbg !3190
  %108 = and i8 %100, 1, !dbg !3192
  %109 = icmp eq i8 %108, 0, !dbg !3192
  %110 = icmp eq i32 %93, 2, !dbg !3195
  %111 = or i1 %103, %109, !dbg !3197
  %112 = icmp ne i8 %108, 0, !dbg !3199
  %113 = and i1 %110, %112, !dbg !3199
  %114 = xor i1 %102, true, !dbg !3200
  %115 = xor i1 %104, true, !dbg !3133
  %116 = and i1 %109, %115, !dbg !3133
  %117 = or i1 %25, %116, !dbg !3133
  %118 = and i8 %99, %100, !dbg !3201
  %119 = and i8 %118, 1, !dbg !3201
  %120 = icmp ne i8 %119, 0, !dbg !3201
  %121 = and i1 %120, %105, !dbg !3201
  br label %122, !dbg !3203

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !3204
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !3173
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !3136
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !3140
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !3141
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !3142
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %129, metadata !3080, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %128, metadata !3079, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %127, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %126, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %125, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %123, metadata !3070, metadata !DIExpression()), !dbg !3119
  %131 = icmp eq i64 %126, -1, !dbg !3205
  br i1 %131, label %132, label %136, !dbg !3206

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !3207
  %134 = load i8, i8* %133, align 1, !dbg !3207, !tbaa !1646
  %135 = icmp eq i8 %134, 0, !dbg !3208
  br i1 %135, label %581, label %138, !dbg !3209

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !3210
  br i1 %137, label %581, label %138, !dbg !3209

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !3086, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 0, metadata !3087, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 0, metadata !3088, metadata !DIExpression()), !dbg !3211
  br i1 %106, label %139, label %154, !dbg !3212

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !3213
  %141 = and i1 %107, %131, !dbg !3214
  br i1 %141, label %142, label %144, !dbg !3214

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !3215
  call void @llvm.dbg.value(metadata i64 %143, metadata !3064, metadata !DIExpression()), !dbg !3119
  br label %144, !dbg !3216

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !3064, metadata !DIExpression()), !dbg !3119
  %146 = icmp ugt i64 %140, %145, !dbg !3217
  br i1 %146, label %154, label %147, !dbg !3218

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !3219
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !3220
  %150 = icmp ne i32 %149, 0, !dbg !3221
  %151 = or i1 %150, %109, !dbg !3222
  %152 = xor i1 %150, true, !dbg !3222
  %153 = zext i1 %152 to i8, !dbg !3222
  br i1 %151, label %154, label %639, !dbg !3222

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !3211
  call void @llvm.dbg.value(metadata i8 %156, metadata !3086, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i64 %155, metadata !3064, metadata !DIExpression()), !dbg !3119
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !3223
  %158 = load i8, i8* %157, align 1, !dbg !3223, !tbaa !1646
  call void @llvm.dbg.value(metadata i8 %158, metadata !3081, metadata !DIExpression()), !dbg !3211
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
  ], !dbg !3224

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !3225

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !3226

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !3087, metadata !DIExpression()), !dbg !3211
  %162 = and i8 %127, 1, !dbg !3229
  %163 = icmp eq i8 %162, 0, !dbg !3229
  %164 = and i1 %110, %163, !dbg !3229
  br i1 %164, label %165, label %181, !dbg !3229

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !3231
  br i1 %166, label %167, label %169, !dbg !3235

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !3231
  store i8 39, i8* %168, align 1, !dbg !3231, !tbaa !1646
  br label %169, !dbg !3231

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !3235
  call void @llvm.dbg.value(metadata i64 %170, metadata !3071, metadata !DIExpression()), !dbg !3119
  %171 = icmp ult i64 %170, %130, !dbg !3236
  br i1 %171, label %172, label %174, !dbg !3239

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !3236
  store i8 36, i8* %173, align 1, !dbg !3236, !tbaa !1646
  br label %174, !dbg !3236

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !3239
  call void @llvm.dbg.value(metadata i64 %175, metadata !3071, metadata !DIExpression()), !dbg !3119
  %176 = icmp ult i64 %175, %130, !dbg !3240
  br i1 %176, label %177, label %179, !dbg !3243

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !3240
  store i8 39, i8* %178, align 1, !dbg !3240, !tbaa !1646
  br label %179, !dbg !3240

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !3243
  call void @llvm.dbg.value(metadata i64 %180, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 1, metadata !3078, metadata !DIExpression()), !dbg !3119
  br label %181, !dbg !3244

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !3119
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !3119
  call void @llvm.dbg.value(metadata i8 %183, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %182, metadata !3071, metadata !DIExpression()), !dbg !3119
  %184 = icmp ult i64 %182, %130, !dbg !3245
  br i1 %184, label %185, label %187, !dbg !3248

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !3245
  store i8 92, i8* %186, align 1, !dbg !3245, !tbaa !1646
  br label %187, !dbg !3245

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !3248
  call void @llvm.dbg.value(metadata i64 %188, metadata !3071, metadata !DIExpression()), !dbg !3119
  br i1 %103, label %189, label %463, !dbg !3249

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !3251
  %191 = icmp ult i64 %190, %155, !dbg !3252
  br i1 %191, label %192, label %463, !dbg !3253

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !3254
  %194 = load i8, i8* %193, align 1, !dbg !3254, !tbaa !1646
  %195 = add i8 %194, -48, !dbg !3255
  %196 = icmp ult i8 %195, 10, !dbg !3255
  br i1 %196, label %197, label %463, !dbg !3255

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !3256
  br i1 %198, label %199, label %201, !dbg !3260

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !3256
  store i8 48, i8* %200, align 1, !dbg !3256, !tbaa !1646
  br label %201, !dbg !3256

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !3260
  call void @llvm.dbg.value(metadata i64 %202, metadata !3071, metadata !DIExpression()), !dbg !3119
  %203 = icmp ult i64 %202, %130, !dbg !3261
  br i1 %203, label %204, label %206, !dbg !3264

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !3261
  store i8 48, i8* %205, align 1, !dbg !3261, !tbaa !1646
  br label %206, !dbg !3261

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !3264
  call void @llvm.dbg.value(metadata i64 %207, metadata !3071, metadata !DIExpression()), !dbg !3119
  br label %463, !dbg !3265

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !3266

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !3267

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !3268

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !3269

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !3270
  %214 = icmp ult i64 %213, %155, !dbg !3271
  br i1 %214, label %215, label %463, !dbg !3272

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !3273
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !3274
  %218 = load i8, i8* %217, align 1, !dbg !3274, !tbaa !1646
  %219 = icmp eq i8 %218, 63, !dbg !3275
  br i1 %219, label %220, label %463, !dbg !3276

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !3277
  %222 = load i8, i8* %221, align 1, !dbg !3277, !tbaa !1646
  %223 = sext i8 %222 to i32, !dbg !3277
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
  ], !dbg !3278

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !3279

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !3081, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i64 %213, metadata !3070, metadata !DIExpression()), !dbg !3119
  %226 = icmp ult i64 %124, %130, !dbg !3281
  br i1 %226, label %227, label %229, !dbg !3284

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !3281
  store i8 63, i8* %228, align 1, !dbg !3281, !tbaa !1646
  br label %229, !dbg !3281

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !3284
  call void @llvm.dbg.value(metadata i64 %230, metadata !3071, metadata !DIExpression()), !dbg !3119
  %231 = icmp ult i64 %230, %130, !dbg !3285
  br i1 %231, label %232, label %234, !dbg !3288

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !3285
  store i8 34, i8* %233, align 1, !dbg !3285, !tbaa !1646
  br label %234, !dbg !3285

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !3288
  call void @llvm.dbg.value(metadata i64 %235, metadata !3071, metadata !DIExpression()), !dbg !3119
  %236 = icmp ult i64 %235, %130, !dbg !3289
  br i1 %236, label %237, label %239, !dbg !3292

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !3289
  store i8 34, i8* %238, align 1, !dbg !3289, !tbaa !1646
  br label %239, !dbg !3289

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !3292
  call void @llvm.dbg.value(metadata i64 %240, metadata !3071, metadata !DIExpression()), !dbg !3119
  %241 = icmp ult i64 %240, %130, !dbg !3293
  br i1 %241, label %242, label %244, !dbg !3296

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !3293
  store i8 63, i8* %243, align 1, !dbg !3293, !tbaa !1646
  br label %244, !dbg !3293

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !3296
  call void @llvm.dbg.value(metadata i64 %245, metadata !3071, metadata !DIExpression()), !dbg !3119
  br label %463, !dbg !3297

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !3085, metadata !DIExpression()), !dbg !3211
  br label %256, !dbg !3298

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !3085, metadata !DIExpression()), !dbg !3211
  br label %256, !dbg !3299

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !3085, metadata !DIExpression()), !dbg !3211
  br label %254, !dbg !3300

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !3085, metadata !DIExpression()), !dbg !3211
  br label %254, !dbg !3301

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !3085, metadata !DIExpression()), !dbg !3211
  br label %256, !dbg !3302

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !3085, metadata !DIExpression()), !dbg !3211
  br i1 %110, label %252, label %253, !dbg !3303

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !3304

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !3307

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !3308
  call void @llvm.dbg.value(metadata i8 %255, metadata !3085, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.label(metadata !3114), !dbg !3309
  br i1 %111, label %256, label %625, !dbg !3310

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !3308
  call void @llvm.dbg.value(metadata i8 %257, metadata !3085, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.label(metadata !3115), !dbg !3312
  br i1 %102, label %488, label %463, !dbg !3313

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !3314

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !3315, !tbaa !1646
  %261 = icmp eq i8 %260, 0, !dbg !3316
  br i1 %261, label %262, label %463, !dbg !3317

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !3318
  br i1 %263, label %264, label %463, !dbg !3320

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !3088, metadata !DIExpression()), !dbg !3211
  br label %265, !dbg !3321

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !3211
  call void @llvm.dbg.value(metadata i8 %266, metadata !3088, metadata !DIExpression()), !dbg !3211
  br i1 %111, label %463, label %625, !dbg !3322

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !3079, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 1, metadata !3088, metadata !DIExpression()), !dbg !3211
  br i1 %110, label %268, label %463, !dbg !3323

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !3324

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !3326
  %271 = icmp ne i64 %125, 0, !dbg !3328
  %272 = or i1 %271, %270, !dbg !3329
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !3329
  %274 = select i1 %272, i64 %130, i64 0, !dbg !3329
  call void @llvm.dbg.value(metadata i64 %274, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %273, metadata !3072, metadata !DIExpression()), !dbg !3119
  %275 = icmp ult i64 %124, %274, !dbg !3330
  br i1 %275, label %276, label %278, !dbg !3333

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !3330
  store i8 39, i8* %277, align 1, !dbg !3330, !tbaa !1646
  br label %278, !dbg !3330

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !3333
  call void @llvm.dbg.value(metadata i64 %279, metadata !3071, metadata !DIExpression()), !dbg !3119
  %280 = icmp ult i64 %279, %274, !dbg !3334
  br i1 %280, label %281, label %283, !dbg !3337

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !3334
  store i8 92, i8* %282, align 1, !dbg !3334, !tbaa !1646
  br label %283, !dbg !3334

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !3337
  call void @llvm.dbg.value(metadata i64 %284, metadata !3071, metadata !DIExpression()), !dbg !3119
  %285 = icmp ult i64 %284, %274, !dbg !3338
  br i1 %285, label %286, label %288, !dbg !3341

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !3338
  store i8 39, i8* %287, align 1, !dbg !3338, !tbaa !1646
  br label %288, !dbg !3338

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !3341
  call void @llvm.dbg.value(metadata i64 %289, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 0, metadata !3078, metadata !DIExpression()), !dbg !3119
  br label %463, !dbg !3342

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !3343

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !3089, metadata !DIExpression()), !dbg !3344
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !3345
  %293 = load i16*, i16** %292, align 8, !dbg !3345, !tbaa !1344
  %294 = zext i8 %158 to i64, !dbg !3345
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !3345
  %296 = load i16, i16* %295, align 2, !dbg !3345, !tbaa !1790
  %297 = lshr i16 %296, 14, !dbg !3347
  %298 = trunc i16 %297 to i8, !dbg !3347
  %299 = and i8 %298, 1, !dbg !3347
  call void @llvm.dbg.value(metadata i8 %299, metadata !3092, metadata !DIExpression()), !dbg !3344
  br label %355, !dbg !3348

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #19, !dbg !3349
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !3093, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i8* %23, metadata !3351, metadata !DIExpression()) #19, !dbg !3358
  call void @llvm.dbg.value(metadata i32 0, metadata !3356, metadata !DIExpression()) #19, !dbg !3358
  call void @llvm.dbg.value(metadata i64 8, metadata !3357, metadata !DIExpression()) #19, !dbg !3358
  store i64 0, i64* %10, align 8, !dbg !3360
  call void @llvm.dbg.value(metadata i64 0, metadata !3089, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8 1, metadata !3092, metadata !DIExpression()), !dbg !3344
  %301 = icmp eq i64 %155, -1, !dbg !3361
  br i1 %301, label %302, label %304, !dbg !3363

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !3364
  call void @llvm.dbg.value(metadata i64 %303, metadata !3064, metadata !DIExpression()), !dbg !3119
  br label %304, !dbg !3365

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !3211
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  br label %306, !dbg !3366

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !3367
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !3368
  call void @llvm.dbg.value(metadata i8 %308, metadata !3092, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %307, metadata !3089, metadata !DIExpression()), !dbg !3344
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #19, !dbg !3369
  %309 = add i64 %307, %123, !dbg !3370
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !3371
  %311 = sub i64 %305, %309, !dbg !3372
  call void @llvm.dbg.value(metadata i32* %12, metadata !3099, metadata !DIExpression(DW_OP_deref)), !dbg !3132
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #19, !dbg !3373
  call void @llvm.dbg.value(metadata i64 %312, metadata !3102, metadata !DIExpression()), !dbg !3132
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !3374

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !3089, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %307, metadata !3089, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %307, metadata !3089, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %307, metadata !3089, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %307, metadata !3089, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %307, metadata !3089, metadata !DIExpression()), !dbg !3344
  %314 = icmp ugt i64 %305, %309, !dbg !3375
  br i1 %314, label %315, label %340, !dbg !3377

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !3378
  br label %317, !dbg !3378

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !3089, metadata !DIExpression()), !dbg !3344
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !3379
  %321 = load i8, i8* %320, align 1, !dbg !3379, !tbaa !1646
  %322 = icmp eq i8 %321, 0, !dbg !3377
  br i1 %322, label %340, label %323, !dbg !3378

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !3380
  call void @llvm.dbg.value(metadata i64 %324, metadata !3089, metadata !DIExpression()), !dbg !3344
  %325 = add i64 %324, %123, !dbg !3381
  %326 = icmp ult i64 %325, %305, !dbg !3375
  br i1 %326, label %317, label %340, !dbg !3377, !llvm.loop !3382

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !3383
  %329 = and i1 %113, %328, !dbg !3386
  call void @llvm.dbg.value(metadata i64 1, metadata !3103, metadata !DIExpression()), !dbg !3387
  br i1 %329, label %330, label %343, !dbg !3386

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !3103, metadata !DIExpression()), !dbg !3387
  %332 = add i64 %331, %309, !dbg !3388
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !3389
  %334 = load i8, i8* %333, align 1, !dbg !3389, !tbaa !1646
  %335 = sext i8 %334 to i32, !dbg !3389
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !3390

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !3391
  call void @llvm.dbg.value(metadata i64 %337, metadata !3103, metadata !DIExpression()), !dbg !3387
  %338 = icmp eq i64 %337, %312, !dbg !3383
  br i1 %338, label %343, label %330, !dbg !3392, !llvm.loop !3393

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !3089, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8 %308, metadata !3092, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %307, metadata !3089, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8 %308, metadata !3092, metadata !DIExpression()), !dbg !3344
  br label %340, !dbg !3395

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !3395
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !3396, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %344, metadata !3099, metadata !DIExpression()), !dbg !3132
  %345 = call i32 @iswprint(i32 %344) #19, !dbg !3398
  %346 = icmp eq i32 %345, 0, !dbg !3398
  %347 = select i1 %346, i8 0, i8 %308, !dbg !3399
  call void @llvm.dbg.value(metadata i8 %347, metadata !3092, metadata !DIExpression()), !dbg !3344
  %348 = add i64 %312, %307, !dbg !3400
  call void @llvm.dbg.value(metadata i64 %348, metadata !3089, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8 %347, metadata !3092, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %348, metadata !3089, metadata !DIExpression()), !dbg !3344
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !3395
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !3401
  %350 = icmp eq i32 %349, 0, !dbg !3402
  br i1 %350, label %306, label %351, !dbg !3403, !llvm.loop !3404

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !3406
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 2, metadata !3065, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 2, metadata !3065, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 2, metadata !3065, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 2, metadata !3065, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 2, metadata !3065, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %99, metadata !3075, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %99, metadata !3075, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %99, metadata !3075, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %99, metadata !3075, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %99, metadata !3075, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 2, metadata !3065, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 2, metadata !3065, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 2, metadata !3065, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 2, metadata !3065, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 2, metadata !3065, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %99, metadata !3075, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %99, metadata !3075, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %99, metadata !3075, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %99, metadata !3075, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %99, metadata !3075, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %305, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !3395
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !3406
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !3211
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !3407
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !3407
  call void @llvm.dbg.value(metadata i8 %358, metadata !3092, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %357, metadata !3089, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %356, metadata !3064, metadata !DIExpression()), !dbg !3119
  %359 = and i8 %358, 1, !dbg !3408
  %360 = icmp ne i8 %359, 0, !dbg !3408
  call void @llvm.dbg.value(metadata i8 %359, metadata !3088, metadata !DIExpression()), !dbg !3211
  %361 = icmp ult i64 %357, 2, !dbg !3409
  %362 = or i1 %360, %114, !dbg !3410
  %363 = and i1 %361, %362, !dbg !3411
  br i1 %363, label %463, label %364, !dbg !3411

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !3412
  call void @llvm.dbg.value(metadata i64 %365, metadata !3110, metadata !DIExpression()), !dbg !3413
  br label %366, !dbg !3414

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !3204
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !3119
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !3140
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !3211
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !3211
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !3415
  call void @llvm.dbg.value(metadata i8 %372, metadata !3087, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 %371, metadata !3086, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 %370, metadata !3081, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 %369, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %368, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %367, metadata !3070, metadata !DIExpression()), !dbg !3119
  br i1 %362, label %419, label %373, !dbg !3416

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !3421

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !3087, metadata !DIExpression()), !dbg !3211
  %375 = and i8 %369, 1, !dbg !3424
  %376 = icmp eq i8 %375, 0, !dbg !3424
  %377 = and i1 %110, %376, !dbg !3424
  br i1 %377, label %378, label %394, !dbg !3424

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !3426
  br i1 %379, label %380, label %382, !dbg !3430

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !3426
  store i8 39, i8* %381, align 1, !dbg !3426, !tbaa !1646
  br label %382, !dbg !3426

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !3430
  call void @llvm.dbg.value(metadata i64 %383, metadata !3071, metadata !DIExpression()), !dbg !3119
  %384 = icmp ult i64 %383, %130, !dbg !3431
  br i1 %384, label %385, label %387, !dbg !3434

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !3431
  store i8 36, i8* %386, align 1, !dbg !3431, !tbaa !1646
  br label %387, !dbg !3431

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !3434
  call void @llvm.dbg.value(metadata i64 %388, metadata !3071, metadata !DIExpression()), !dbg !3119
  %389 = icmp ult i64 %388, %130, !dbg !3435
  br i1 %389, label %390, label %392, !dbg !3438

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !3435
  store i8 39, i8* %391, align 1, !dbg !3435, !tbaa !1646
  br label %392, !dbg !3435

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !3438
  call void @llvm.dbg.value(metadata i64 %393, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 1, metadata !3078, metadata !DIExpression()), !dbg !3119
  br label %394, !dbg !3439

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !3119
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !3119
  call void @llvm.dbg.value(metadata i8 %396, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %395, metadata !3071, metadata !DIExpression()), !dbg !3119
  %397 = icmp ult i64 %395, %130, !dbg !3440
  br i1 %397, label %398, label %400, !dbg !3443

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !3440
  store i8 92, i8* %399, align 1, !dbg !3440, !tbaa !1646
  br label %400, !dbg !3440

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !3443
  call void @llvm.dbg.value(metadata i64 %401, metadata !3071, metadata !DIExpression()), !dbg !3119
  %402 = icmp ult i64 %401, %130, !dbg !3444
  br i1 %402, label %403, label %407, !dbg !3447

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !3444
  %405 = or i8 %404, 48, !dbg !3444
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3444
  store i8 %405, i8* %406, align 1, !dbg !3444, !tbaa !1646
  br label %407, !dbg !3444

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !3447
  call void @llvm.dbg.value(metadata i64 %408, metadata !3071, metadata !DIExpression()), !dbg !3119
  %409 = icmp ult i64 %408, %130, !dbg !3448
  br i1 %409, label %410, label %415, !dbg !3451

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !3448
  %412 = and i8 %411, 7, !dbg !3448
  %413 = or i8 %412, 48, !dbg !3448
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3448
  store i8 %413, i8* %414, align 1, !dbg !3448, !tbaa !1646
  br label %415, !dbg !3448

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !3451
  call void @llvm.dbg.value(metadata i64 %416, metadata !3071, metadata !DIExpression()), !dbg !3119
  %417 = and i8 %370, 7, !dbg !3452
  %418 = or i8 %417, 48, !dbg !3453
  call void @llvm.dbg.value(metadata i8 %418, metadata !3081, metadata !DIExpression()), !dbg !3211
  br label %428, !dbg !3454

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !3455
  %421 = icmp eq i8 %420, 0, !dbg !3455
  br i1 %421, label %428, label %422, !dbg !3457

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !3458
  br i1 %423, label %424, label %426, !dbg !3462

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !3458
  store i8 92, i8* %425, align 1, !dbg !3458, !tbaa !1646
  br label %426, !dbg !3458

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !3462
  call void @llvm.dbg.value(metadata i64 %427, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 0, metadata !3086, metadata !DIExpression()), !dbg !3211
  br label %428, !dbg !3463

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !3119
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !3140
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !3211
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !3211
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !3211
  call void @llvm.dbg.value(metadata i8 %433, metadata !3087, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 %432, metadata !3086, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 %431, metadata !3081, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 %430, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %429, metadata !3071, metadata !DIExpression()), !dbg !3119
  %434 = add i64 %367, 1, !dbg !3464
  %435 = icmp ugt i64 %365, %434, !dbg !3466
  br i1 %435, label %436, label %526, !dbg !3467

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !3468
  %438 = icmp ne i8 %437, 0, !dbg !3468
  %439 = and i8 %433, 1, !dbg !3468
  %440 = icmp eq i8 %439, 0, !dbg !3468
  %441 = and i1 %438, %440, !dbg !3468
  br i1 %441, label %442, label %453, !dbg !3468

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !3471
  br i1 %443, label %444, label %446, !dbg !3475

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !3471
  store i8 39, i8* %445, align 1, !dbg !3471, !tbaa !1646
  br label %446, !dbg !3471

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !3475
  call void @llvm.dbg.value(metadata i64 %447, metadata !3071, metadata !DIExpression()), !dbg !3119
  %448 = icmp ult i64 %447, %130, !dbg !3476
  br i1 %448, label %449, label %451, !dbg !3479

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !3476
  store i8 39, i8* %450, align 1, !dbg !3476, !tbaa !1646
  br label %451, !dbg !3476

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !3479
  call void @llvm.dbg.value(metadata i64 %452, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 0, metadata !3078, metadata !DIExpression()), !dbg !3119
  br label %453, !dbg !3480

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !3481
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !3119
  call void @llvm.dbg.value(metadata i8 %455, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %454, metadata !3071, metadata !DIExpression()), !dbg !3119
  %456 = icmp ult i64 %454, %130, !dbg !3482
  br i1 %456, label %457, label %459, !dbg !3485

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !3482
  store i8 %431, i8* %458, align 1, !dbg !3482, !tbaa !1646
  br label %459, !dbg !3482

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !3485
  call void @llvm.dbg.value(metadata i64 %460, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %434, metadata !3070, metadata !DIExpression()), !dbg !3119
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !3486
  %462 = load i8, i8* %461, align 1, !dbg !3486, !tbaa !1646
  call void @llvm.dbg.value(metadata i8 %462, metadata !3081, metadata !DIExpression()), !dbg !3211
  br label %366, !dbg !3487, !llvm.loop !3488

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !3204
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !3119
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !3136
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !3491
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !3119
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !3119
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !3211
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !3211
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !3211
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %472, metadata !3088, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 %471, metadata !3087, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 %156, metadata !3086, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 %470, metadata !3081, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 %469, metadata !3079, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %468, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %467, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %466, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %465, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %464, metadata !3070, metadata !DIExpression()), !dbg !3119
  br i1 %117, label %486, label %474, !dbg !3492

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !3493
  %476 = zext i8 %475 to i64, !dbg !3493
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !3494
  %478 = load i32, i32* %477, align 4, !dbg !3494, !tbaa !1556
  %479 = and i8 %470, 31, !dbg !3495
  %480 = zext i8 %479 to i32, !dbg !3495
  %481 = shl nuw i32 1, %480, !dbg !3496
  %482 = and i32 %478, %481, !dbg !3496
  %483 = icmp eq i32 %482, 0, !dbg !3496
  %484 = icmp eq i8 %156, 0, !dbg !3497
  %485 = and i1 %484, %483, !dbg !3498
  br i1 %485, label %526, label %488, !dbg !3498

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !3497
  br i1 %487, label %526, label %488, !dbg !3499

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !3500
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !3119
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !3136
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !3491
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !3140
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !3141
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !3211
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !3211
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %496, metadata !3088, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 %495, metadata !3081, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 %494, metadata !3079, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %493, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %492, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %491, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %490, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %489, metadata !3070, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.label(metadata !3116), !dbg !3501
  br i1 %109, label %498, label %629, !dbg !3502

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !3087, metadata !DIExpression()), !dbg !3211
  %499 = and i8 %493, 1, !dbg !3504
  %500 = icmp eq i8 %499, 0, !dbg !3504
  %501 = and i1 %110, %500, !dbg !3504
  br i1 %501, label %502, label %518, !dbg !3504

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !3506
  br i1 %503, label %504, label %506, !dbg !3510

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !3506
  store i8 39, i8* %505, align 1, !dbg !3506, !tbaa !1646
  br label %506, !dbg !3506

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !3510
  call void @llvm.dbg.value(metadata i64 %507, metadata !3071, metadata !DIExpression()), !dbg !3119
  %508 = icmp ult i64 %507, %497, !dbg !3511
  br i1 %508, label %509, label %511, !dbg !3514

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !3511
  store i8 36, i8* %510, align 1, !dbg !3511, !tbaa !1646
  br label %511, !dbg !3511

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !3514
  call void @llvm.dbg.value(metadata i64 %512, metadata !3071, metadata !DIExpression()), !dbg !3119
  %513 = icmp ult i64 %512, %497, !dbg !3515
  br i1 %513, label %514, label %516, !dbg !3518

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !3515
  store i8 39, i8* %515, align 1, !dbg !3515, !tbaa !1646
  br label %516, !dbg !3515

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !3518
  call void @llvm.dbg.value(metadata i64 %517, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 1, metadata !3078, metadata !DIExpression()), !dbg !3119
  br label %518, !dbg !3519

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !3211
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !3119
  call void @llvm.dbg.value(metadata i8 %520, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %519, metadata !3071, metadata !DIExpression()), !dbg !3119
  %521 = icmp ult i64 %519, %497, !dbg !3520
  br i1 %521, label %522, label %524, !dbg !3523

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !3520
  store i8 92, i8* %523, align 1, !dbg !3520, !tbaa !1646
  br label %524, !dbg !3520

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !3523
  call void @llvm.dbg.value(metadata i64 %525, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %536, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %535, metadata !3088, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 %534, metadata !3087, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 %533, metadata !3081, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 %532, metadata !3079, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %531, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %530, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %529, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %528, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %527, metadata !3070, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.label(metadata !3117), !dbg !3524
  br label %553, !dbg !3525

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !3500
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !3119
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !3136
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !3491
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !3140
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !3141
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !3528
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !3211
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !3211
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %535, metadata !3088, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 %534, metadata !3087, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 %533, metadata !3081, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8 %532, metadata !3079, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %531, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %530, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %529, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %528, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %527, metadata !3070, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.label(metadata !3117), !dbg !3524
  %537 = and i8 %531, 1, !dbg !3525
  %538 = icmp ne i8 %537, 0, !dbg !3525
  %539 = and i8 %534, 1, !dbg !3525
  %540 = icmp eq i8 %539, 0, !dbg !3525
  %541 = and i1 %538, %540, !dbg !3525
  br i1 %541, label %542, label %553, !dbg !3525

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !3529
  br i1 %543, label %544, label %546, !dbg !3533

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !3529
  store i8 39, i8* %545, align 1, !dbg !3529, !tbaa !1646
  br label %546, !dbg !3529

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !3533
  call void @llvm.dbg.value(metadata i64 %547, metadata !3071, metadata !DIExpression()), !dbg !3119
  %548 = icmp ult i64 %547, %536, !dbg !3534
  br i1 %548, label %549, label %551, !dbg !3537

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !3534
  store i8 39, i8* %550, align 1, !dbg !3534, !tbaa !1646
  br label %551, !dbg !3534

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !3537
  call void @llvm.dbg.value(metadata i64 %552, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 0, metadata !3078, metadata !DIExpression()), !dbg !3119
  br label %553, !dbg !3538

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !3211
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !3119
  call void @llvm.dbg.value(metadata i8 %562, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %561, metadata !3071, metadata !DIExpression()), !dbg !3119
  %563 = icmp ult i64 %561, %554, !dbg !3539
  br i1 %563, label %564, label %566, !dbg !3542

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !3539
  store i8 %556, i8* %565, align 1, !dbg !3539, !tbaa !1646
  br label %566, !dbg !3539

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3542
  call void @llvm.dbg.value(metadata i64 %567, metadata !3071, metadata !DIExpression()), !dbg !3119
  %568 = and i8 %555, 1, !dbg !3543
  %569 = icmp eq i8 %568, 0, !dbg !3543
  %570 = select i1 %569, i8 0, i8 %129, !dbg !3545
  call void @llvm.dbg.value(metadata i8 %570, metadata !3080, metadata !DIExpression()), !dbg !3119
  br label %571, !dbg !3546

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !3500
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !3119
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !3136
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !3491
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !3140
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !3119
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !3142
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %578, metadata !3080, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %577, metadata !3079, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %576, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %575, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %574, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %573, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %572, metadata !3070, metadata !DIExpression()), !dbg !3119
  %580 = add i64 %572, 1, !dbg !3547
  call void @llvm.dbg.value(metadata i64 %580, metadata !3070, metadata !DIExpression()), !dbg !3119
  br label %122, !dbg !3548, !llvm.loop !3549

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %125, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %125, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %127, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %127, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %128, metadata !3079, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %128, metadata !3079, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %129, metadata !3080, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %129, metadata !3080, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %125, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %125, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %127, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %127, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %128, metadata !3079, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %128, metadata !3079, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %129, metadata !3080, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %129, metadata !3080, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %125, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %125, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %127, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %127, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %128, metadata !3079, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %128, metadata !3079, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %129, metadata !3080, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %129, metadata !3080, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %125, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %125, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %127, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %127, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %128, metadata !3079, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %128, metadata !3079, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %129, metadata !3080, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %129, metadata !3080, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %125, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %125, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %582, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %582, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %127, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %127, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %128, metadata !3079, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %128, metadata !3079, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %129, metadata !3080, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %129, metadata !3080, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %125, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %125, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %582, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %582, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %127, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %127, metadata !3078, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %128, metadata !3079, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %128, metadata !3079, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %129, metadata !3080, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 %129, metadata !3080, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  %583 = icmp eq i64 %124, 0, !dbg !3551
  %584 = and i1 %110, %583, !dbg !3553
  %585 = xor i1 %584, true, !dbg !3553
  %586 = or i1 %109, %585, !dbg !3553
  br i1 %586, label %587, label %629, !dbg !3553

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !3554
  %589 = xor i1 %588, true, !dbg !3554
  %590 = and i8 %128, 1, !dbg !3556
  %591 = icmp eq i8 %590, 0, !dbg !3556
  %592 = or i1 %591, %589, !dbg !3554
  br i1 %592, label %602, label %593, !dbg !3554

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !3557
  %595 = icmp eq i8 %594, 0, !dbg !3557
  br i1 %595, label %598, label %596, !dbg !3560

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %125, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %582, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %125, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %582, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %125, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %582, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %125, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %125, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %582, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %94, metadata !3068, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %95, metadata !3069, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %125, metadata !3072, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %582, metadata !3064, metadata !DIExpression()), !dbg !3119
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !3561
  br label %645, !dbg !3562

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !3563
  %600 = icmp ne i64 %125, 0, !dbg !3565
  %601 = and i1 %600, %599, !dbg !3566
  br i1 %601, label %26, label %602, !dbg !3566

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !3073, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %97, metadata !3073, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %97, metadata !3073, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %97, metadata !3073, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %97, metadata !3073, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %97, metadata !3073, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %97, metadata !3073, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %97, metadata !3073, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %97, metadata !3073, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %97, metadata !3073, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %130, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %97, metadata !3073, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %97, metadata !3073, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  %603 = icmp ne i8* %97, null, !dbg !3567
  %604 = and i1 %603, %109, !dbg !3569
  br i1 %604, label %605, label %620, !dbg !3569

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !3073, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %124, metadata !3071, metadata !DIExpression()), !dbg !3119
  %606 = load i8, i8* %97, align 1, !dbg !3570, !tbaa !1646
  %607 = icmp eq i8 %606, 0, !dbg !3573
  br i1 %607, label %620, label %608, !dbg !3573

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !3073, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %611, metadata !3071, metadata !DIExpression()), !dbg !3119
  %612 = icmp ult i64 %611, %130, !dbg !3574
  br i1 %612, label %613, label %615, !dbg !3577

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !3574
  store i8 %609, i8* %614, align 1, !dbg !3574, !tbaa !1646
  br label %615, !dbg !3574

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !3577
  call void @llvm.dbg.value(metadata i64 %616, metadata !3071, metadata !DIExpression()), !dbg !3119
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !3578
  call void @llvm.dbg.value(metadata i8* %617, metadata !3073, metadata !DIExpression()), !dbg !3119
  %618 = load i8, i8* %617, align 1, !dbg !3570, !tbaa !1646
  %619 = icmp eq i8 %618, 0, !dbg !3573
  br i1 %619, label %620, label %608, !dbg !3573, !llvm.loop !3579

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !3173
  call void @llvm.dbg.value(metadata i64 %621, metadata !3071, metadata !DIExpression()), !dbg !3119
  %622 = icmp ult i64 %621, %130, !dbg !3581
  br i1 %622, label %623, label %645, !dbg !3583

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !3584
  store i8 0, i8* %624, align 1, !dbg !3585, !tbaa !1646
  br label %645, !dbg !3584

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %630, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.label(metadata !3118), !dbg !3586
  %627 = icmp eq i8 %101, 0, !dbg !3587
  %628 = select i1 %627, i32 2, i32 4, !dbg !3587
  br label %635, !dbg !3587

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %630, metadata !3064, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.label(metadata !3118), !dbg !3586
  %632 = icmp eq i32 %93, 2, !dbg !3589
  %633 = icmp eq i8 %101, 0, !dbg !3587
  %634 = select i1 %633, i32 2, i32 4, !dbg !3587
  br i1 %632, label %635, label %639, !dbg !3587

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !3587

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !3065, metadata !DIExpression()), !dbg !3119
  %643 = and i32 %5, -3, !dbg !3590
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !3591
  br label %645, !dbg !3592

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !3593
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !3594 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3598, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i32 %1, metadata !3599, metadata !DIExpression()), !dbg !3602
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #19, !dbg !3603
  call void @llvm.dbg.value(metadata i8* %3, metadata !3600, metadata !DIExpression()), !dbg !3602
  %4 = icmp eq i8* %3, %0, !dbg !3604
  br i1 %4, label %5, label %71, !dbg !3606

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #19, !dbg !3607
  call void @llvm.dbg.value(metadata i8* %6, metadata !3601, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i8* %6, metadata !3608, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i8* undef, metadata !3614, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i8 85, metadata !3615, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i8 84, metadata !3616, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i8 70, metadata !3617, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i8 45, metadata !3618, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i8 56, metadata !3619, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i8 0, metadata !3620, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i8 0, metadata !3621, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i8 0, metadata !3622, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i8 0, metadata !3623, metadata !DIExpression()), !dbg !3624
  %7 = load i8, i8* %6, align 1, !dbg !3627, !tbaa !1646
  %8 = and i8 %7, -33, !dbg !3627
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !3627

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3629, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i8* undef, metadata !3634, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i8 84, metadata !3635, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i8 70, metadata !3636, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i8 45, metadata !3637, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i8 56, metadata !3638, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i8 0, metadata !3639, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i8 0, metadata !3640, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i8 0, metadata !3641, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i8 0, metadata !3642, metadata !DIExpression()), !dbg !3643
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3647
  %11 = load i8, i8* %10, align 1, !dbg !3647, !tbaa !1646
  %12 = and i8 %11, -33, !dbg !3647
  %13 = icmp eq i8 %12, 84, !dbg !3647
  br i1 %13, label %14, label %68, !dbg !3647

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3649, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i8* undef, metadata !3654, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i8 70, metadata !3655, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i8 45, metadata !3656, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i8 56, metadata !3657, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i8 0, metadata !3658, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i8 0, metadata !3659, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i8 0, metadata !3660, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i8 0, metadata !3661, metadata !DIExpression()), !dbg !3662
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3666
  %16 = load i8, i8* %15, align 1, !dbg !3666, !tbaa !1646
  %17 = and i8 %16, -33, !dbg !3666
  %18 = icmp eq i8 %17, 70, !dbg !3666
  br i1 %18, label %19, label %68, !dbg !3666

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3668, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i8* undef, metadata !3673, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i8 45, metadata !3674, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i8 56, metadata !3675, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i8 0, metadata !3676, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i8 0, metadata !3677, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i8 0, metadata !3678, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i8 0, metadata !3679, metadata !DIExpression()), !dbg !3680
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3684
  %21 = load i8, i8* %20, align 1, !dbg !3684, !tbaa !1646
  %22 = icmp eq i8 %21, 45, !dbg !3684
  br i1 %22, label %23, label %68, !dbg !3686

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3687, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i8* undef, metadata !3692, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i8 56, metadata !3693, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i8 0, metadata !3694, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i8 0, metadata !3695, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i8 0, metadata !3696, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i8 0, metadata !3697, metadata !DIExpression()), !dbg !3698
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3702
  %25 = load i8, i8* %24, align 1, !dbg !3702, !tbaa !1646
  %26 = icmp eq i8 %25, 56, !dbg !3702
  br i1 %26, label %27, label %68, !dbg !3704

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3705, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i8* undef, metadata !3710, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i8 0, metadata !3711, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i8 0, metadata !3712, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i8 0, metadata !3713, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i8 0, metadata !3714, metadata !DIExpression()), !dbg !3715
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3719
  %29 = load i8, i8* %28, align 1, !dbg !3719, !tbaa !1646
  %30 = icmp eq i8 %29, 0, !dbg !3719
  br i1 %30, label %31, label %68, !dbg !3721

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3722, !tbaa !1646
  %33 = icmp eq i8 %32, 96, !dbg !3723
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.117, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.118, i64 0, i64 0), !dbg !3722
  br label %71, !dbg !3724

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3629, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i8* undef, metadata !3634, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i8 66, metadata !3635, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i8 49, metadata !3636, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i8 56, metadata !3637, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i8 48, metadata !3638, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i8 51, metadata !3639, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i8 48, metadata !3640, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i8 0, metadata !3641, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i8 0, metadata !3642, metadata !DIExpression()), !dbg !3725
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3729
  %37 = load i8, i8* %36, align 1, !dbg !3729, !tbaa !1646
  %38 = and i8 %37, -33, !dbg !3729
  %39 = icmp eq i8 %38, 66, !dbg !3729
  br i1 %39, label %40, label %68, !dbg !3729

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3649, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8* undef, metadata !3654, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8 49, metadata !3655, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8 56, metadata !3656, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8 48, metadata !3657, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8 51, metadata !3658, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8 48, metadata !3659, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8 0, metadata !3660, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i8 0, metadata !3661, metadata !DIExpression()), !dbg !3730
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3732
  %42 = load i8, i8* %41, align 1, !dbg !3732, !tbaa !1646
  %43 = icmp eq i8 %42, 49, !dbg !3732
  br i1 %43, label %44, label %68, !dbg !3733

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3668, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i8* undef, metadata !3673, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i8 56, metadata !3674, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i8 48, metadata !3675, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i8 51, metadata !3676, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i8 48, metadata !3677, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i8 0, metadata !3678, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i8 0, metadata !3679, metadata !DIExpression()), !dbg !3734
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3736
  %46 = load i8, i8* %45, align 1, !dbg !3736, !tbaa !1646
  %47 = icmp eq i8 %46, 56, !dbg !3736
  br i1 %47, label %48, label %68, !dbg !3737

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3687, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8* undef, metadata !3692, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8 48, metadata !3693, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8 51, metadata !3694, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8 48, metadata !3695, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8 0, metadata !3696, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8 0, metadata !3697, metadata !DIExpression()), !dbg !3738
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3740
  %50 = load i8, i8* %49, align 1, !dbg !3740, !tbaa !1646
  %51 = icmp eq i8 %50, 48, !dbg !3740
  br i1 %51, label %52, label %68, !dbg !3741

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3705, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i8* undef, metadata !3710, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i8 51, metadata !3711, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i8 48, metadata !3712, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i8 0, metadata !3713, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i8 0, metadata !3714, metadata !DIExpression()), !dbg !3742
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3744
  %54 = load i8, i8* %53, align 1, !dbg !3744, !tbaa !1646
  %55 = icmp eq i8 %54, 51, !dbg !3744
  br i1 %55, label %56, label %68, !dbg !3745

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3746, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i8* undef, metadata !3751, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i8 48, metadata !3752, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i8 0, metadata !3753, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i8 0, metadata !3754, metadata !DIExpression()), !dbg !3755
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3759
  %58 = load i8, i8* %57, align 1, !dbg !3759, !tbaa !1646
  %59 = icmp eq i8 %58, 48, !dbg !3759
  br i1 %59, label %60, label %68, !dbg !3761

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3762, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata i8* undef, metadata !3767, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata i8 0, metadata !3768, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata i8 0, metadata !3769, metadata !DIExpression()), !dbg !3770
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3774
  %62 = load i8, i8* %61, align 1, !dbg !3774, !tbaa !1646
  %63 = icmp eq i8 %62, 0, !dbg !3774
  br i1 %63, label %64, label %68, !dbg !3776

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3777, !tbaa !1646
  %66 = icmp eq i8 %65, 96, !dbg !3778
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.119, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.120, i64 0, i64 0), !dbg !3777
  br label %71, !dbg !3779

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3780
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), !dbg !3781
  br label %71, !dbg !3782

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3602
  ret i8* %72, !dbg !3783
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #16

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind
declare !dbg !472 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !476 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !3784 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3788, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata i64 %1, metadata !3789, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3790, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata i8* %0, metadata !3792, metadata !DIExpression()) #19, !dbg !3805
  call void @llvm.dbg.value(metadata i64 %1, metadata !3797, metadata !DIExpression()) #19, !dbg !3805
  call void @llvm.dbg.value(metadata i64* null, metadata !3798, metadata !DIExpression()) #19, !dbg !3805
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3799, metadata !DIExpression()) #19, !dbg !3805
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3807
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3807
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3800, metadata !DIExpression()) #19, !dbg !3805
  %6 = tail call i32* @__errno_location() #24, !dbg !3808
  %7 = load i32, i32* %6, align 4, !dbg !3808, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %7, metadata !3801, metadata !DIExpression()) #19, !dbg !3805
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3809
  %9 = load i32, i32* %8, align 4, !dbg !3809, !tbaa !3004
  %10 = or i32 %9, 1, !dbg !3810
  call void @llvm.dbg.value(metadata i32 %10, metadata !3802, metadata !DIExpression()) #19, !dbg !3805
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3811
  %12 = load i32, i32* %11, align 8, !dbg !3811, !tbaa !2953
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3812
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3813
  %15 = load i8*, i8** %14, align 8, !dbg !3813, !tbaa !3027
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3814
  %17 = load i8*, i8** %16, align 8, !dbg !3814, !tbaa !3030
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #19, !dbg !3815
  %19 = add i64 %18, 1, !dbg !3816
  call void @llvm.dbg.value(metadata i64 %19, metadata !3803, metadata !DIExpression()) #19, !dbg !3805
  call void @llvm.dbg.value(metadata i64 %19, metadata !3817, metadata !DIExpression()) #19, !dbg !3822
  %20 = tail call noalias i8* @xmalloc(i64 %19) #19, !dbg !3824
  call void @llvm.dbg.value(metadata i8* %20, metadata !3804, metadata !DIExpression()) #19, !dbg !3805
  %21 = load i32, i32* %11, align 8, !dbg !3825, !tbaa !2953
  %22 = load i8*, i8** %14, align 8, !dbg !3826, !tbaa !3027
  %23 = load i8*, i8** %16, align 8, !dbg !3827, !tbaa !3030
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #19, !dbg !3828
  store i32 %7, i32* %6, align 4, !dbg !3829, !tbaa !1556
  ret i8* %20, !dbg !3830
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !3793 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3792, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i64 %1, metadata !3797, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i64* %2, metadata !3798, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3799, metadata !DIExpression()), !dbg !3831
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3832
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3832
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3800, metadata !DIExpression()), !dbg !3831
  %7 = tail call i32* @__errno_location() #24, !dbg !3833
  %8 = load i32, i32* %7, align 4, !dbg !3833, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %8, metadata !3801, metadata !DIExpression()), !dbg !3831
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3834
  %10 = load i32, i32* %9, align 4, !dbg !3834, !tbaa !3004
  %11 = icmp ne i64* %2, null, !dbg !3835
  %12 = xor i1 %11, true, !dbg !3835
  %13 = zext i1 %12 to i32, !dbg !3835
  %14 = or i32 %10, %13, !dbg !3836
  call void @llvm.dbg.value(metadata i32 %14, metadata !3802, metadata !DIExpression()), !dbg !3831
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3837
  %16 = load i32, i32* %15, align 8, !dbg !3837, !tbaa !2953
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3838
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3839
  %19 = load i8*, i8** %18, align 8, !dbg !3839, !tbaa !3027
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3840
  %21 = load i8*, i8** %20, align 8, !dbg !3840, !tbaa !3030
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3841
  %23 = add i64 %22, 1, !dbg !3842
  call void @llvm.dbg.value(metadata i64 %23, metadata !3803, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i64 %23, metadata !3817, metadata !DIExpression()) #19, !dbg !3843
  %24 = tail call noalias i8* @xmalloc(i64 %23) #19, !dbg !3845
  call void @llvm.dbg.value(metadata i8* %24, metadata !3804, metadata !DIExpression()), !dbg !3831
  %25 = load i32, i32* %15, align 8, !dbg !3846, !tbaa !2953
  %26 = load i8*, i8** %18, align 8, !dbg !3847, !tbaa !3027
  %27 = load i8*, i8** %20, align 8, !dbg !3848, !tbaa !3030
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3849
  store i32 %8, i32* %7, align 4, !dbg !3850, !tbaa !1556
  br i1 %11, label %29, label %30, !dbg !3851

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3852, !tbaa !1609
  br label %30, !dbg !3854

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3855
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3856 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3860, !tbaa !1344
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3858, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i32 1, metadata !3859, metadata !DIExpression()), !dbg !3861
  %2 = load i32, i32* @nslots, align 4, !dbg !3862, !tbaa !1556
  %3 = icmp sgt i32 %2, 1, !dbg !3865
  br i1 %3, label %4, label %12, !dbg !3866

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3859, metadata !DIExpression()), !dbg !3861
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3867
  %7 = load i8*, i8** %6, align 8, !dbg !3867, !tbaa !3868
  tail call void @free(i8* %7) #19, !dbg !3870
  %8 = add nuw nsw i64 %5, 1, !dbg !3871
  call void @llvm.dbg.value(metadata i64 %8, metadata !3859, metadata !DIExpression()), !dbg !3861
  %9 = load i32, i32* @nslots, align 4, !dbg !3862, !tbaa !1556
  %10 = sext i32 %9 to i64, !dbg !3865
  %11 = icmp slt i64 %8, %10, !dbg !3865
  br i1 %11, label %4, label %12, !dbg !3866, !llvm.loop !3872

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3874
  %14 = load i8*, i8** %13, align 8, !dbg !3874, !tbaa !3868
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3876
  br i1 %15, label %17, label %16, !dbg !3877

16:                                               ; preds = %12
  tail call void @free(i8* %14) #19, !dbg !3878
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3880, !tbaa !3881
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3882, !tbaa !3868
  br label %17, !dbg !3883

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3884
  br i1 %18, label %21, label %19, !dbg !3886

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3887
  tail call void @free(i8* %20) #19, !dbg !3889
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3890, !tbaa !1344
  br label %21, !dbg !3891

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3892, !tbaa !1556
  ret void, !dbg !3893
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3894 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3896, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i8* %1, metadata !3897, metadata !DIExpression()), !dbg !3898
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3899
  ret i8* %3, !dbg !3900
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3901 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3905, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i8* %1, metadata !3906, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i64 %2, metadata !3907, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3908, metadata !DIExpression()), !dbg !3920
  %5 = tail call i32* @__errno_location() #24, !dbg !3921
  %6 = load i32, i32* %5, align 4, !dbg !3921, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %6, metadata !3909, metadata !DIExpression()), !dbg !3920
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3922, !tbaa !1344
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3910, metadata !DIExpression()), !dbg !3920
  %8 = icmp slt i32 %0, 0, !dbg !3923
  br i1 %8, label %9, label %10, !dbg !3925

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !3926
  unreachable, !dbg !3926

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3927, !tbaa !1556
  %12 = icmp sgt i32 %11, %0, !dbg !3928
  br i1 %12, label %34, label %13, !dbg !3929

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3930
  call void @llvm.dbg.value(metadata i1 %14, metadata !3911, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3914, metadata !DIExpression()), !dbg !3931
  %15 = icmp eq i32 %0, 2147483647, !dbg !3932
  br i1 %15, label %16, label %17, !dbg !3934

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3935
  unreachable, !dbg !3935

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3936
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3936
  %20 = add nuw nsw i32 %0, 1, !dbg !3937
  %21 = sext i32 %20 to i64, !dbg !3938
  %22 = shl nuw nsw i64 %21, 4, !dbg !3939
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #19, !dbg !3940
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3940
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3910, metadata !DIExpression()), !dbg !3920
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3941, !tbaa !1344
  br i1 %14, label %25, label %26, !dbg !3942

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3943, !tbaa.struct !3945
  br label %26, !dbg !3946

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3947, !tbaa !1556
  %28 = sext i32 %27 to i64, !dbg !3948
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3948
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3949
  %31 = sub nsw i32 %20, %27, !dbg !3950
  %32 = sext i32 %31 to i64, !dbg !3951
  %33 = shl nsw i64 %32, 4, !dbg !3952
  call void @llvm.dbg.value(metadata i8* %30, metadata !3351, metadata !DIExpression()) #19, !dbg !3953
  call void @llvm.dbg.value(metadata i32 0, metadata !3356, metadata !DIExpression()) #19, !dbg !3953
  call void @llvm.dbg.value(metadata i64 %33, metadata !3357, metadata !DIExpression()) #19, !dbg !3953
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #19, !dbg !3955
  store i32 %20, i32* @nslots, align 4, !dbg !3956, !tbaa !1556
  br label %34, !dbg !3957

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3920
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3910, metadata !DIExpression()), !dbg !3920
  %36 = zext i32 %0 to i64, !dbg !3958
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3959
  %38 = load i64, i64* %37, align 8, !dbg !3959, !tbaa !3881
  call void @llvm.dbg.value(metadata i64 %38, metadata !3915, metadata !DIExpression()), !dbg !3960
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3961
  %40 = load i8*, i8** %39, align 8, !dbg !3961, !tbaa !3868
  call void @llvm.dbg.value(metadata i8* %40, metadata !3917, metadata !DIExpression()), !dbg !3960
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3962
  %42 = load i32, i32* %41, align 4, !dbg !3962, !tbaa !3004
  %43 = or i32 %42, 1, !dbg !3963
  call void @llvm.dbg.value(metadata i32 %43, metadata !3918, metadata !DIExpression()), !dbg !3960
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3964
  %45 = load i32, i32* %44, align 8, !dbg !3964, !tbaa !2953
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3965
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3966
  %48 = load i8*, i8** %47, align 8, !dbg !3966, !tbaa !3027
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3967
  %50 = load i8*, i8** %49, align 8, !dbg !3967, !tbaa !3030
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3968
  call void @llvm.dbg.value(metadata i64 %51, metadata !3919, metadata !DIExpression()), !dbg !3960
  %52 = icmp ugt i64 %38, %51, !dbg !3969
  br i1 %52, label %63, label %53, !dbg !3971

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3972
  call void @llvm.dbg.value(metadata i64 %54, metadata !3915, metadata !DIExpression()), !dbg !3960
  store i64 %54, i64* %37, align 8, !dbg !3974, !tbaa !3881
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3975
  br i1 %55, label %57, label %56, !dbg !3977

56:                                               ; preds = %53
  tail call void @free(i8* %40) #19, !dbg !3978
  br label %57, !dbg !3978

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3817, metadata !DIExpression()) #19, !dbg !3979
  %58 = tail call noalias i8* @xmalloc(i64 %54) #19, !dbg !3981
  call void @llvm.dbg.value(metadata i8* %58, metadata !3917, metadata !DIExpression()), !dbg !3960
  store i8* %58, i8** %39, align 8, !dbg !3982, !tbaa !3868
  %59 = load i32, i32* %44, align 8, !dbg !3983, !tbaa !2953
  %60 = load i8*, i8** %47, align 8, !dbg !3984, !tbaa !3027
  %61 = load i8*, i8** %49, align 8, !dbg !3985, !tbaa !3030
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3986
  br label %63, !dbg !3987

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3960
  call void @llvm.dbg.value(metadata i8* %64, metadata !3917, metadata !DIExpression()), !dbg !3960
  store i32 %6, i32* %5, align 4, !dbg !3988, !tbaa !1556
  ret i8* %64, !dbg !3989
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3990 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3994, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i8* %1, metadata !3995, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i64 %2, metadata !3996, metadata !DIExpression()), !dbg !3997
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3998
  ret i8* %4, !dbg !3999
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !4000 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4002, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()) #19, !dbg !4004
  call void @llvm.dbg.value(metadata i8* %0, metadata !3897, metadata !DIExpression()) #19, !dbg !4004
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !4006
  ret i8* %2, !dbg !4007
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4008 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4012, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata i64 %1, metadata !4013, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata i32 0, metadata !3994, metadata !DIExpression()) #19, !dbg !4015
  call void @llvm.dbg.value(metadata i8* %0, metadata !3995, metadata !DIExpression()) #19, !dbg !4015
  call void @llvm.dbg.value(metadata i64 %1, metadata !3996, metadata !DIExpression()) #19, !dbg !4015
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !4017
  ret i8* %3, !dbg !4018
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !4019 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4021, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 %1, metadata !4022, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i8* %2, metadata !4023, metadata !DIExpression()), !dbg !4025
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4026
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !4026
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4024, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i32 %1, metadata !4028, metadata !DIExpression()) #19, !dbg !4034
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4033, metadata !DIExpression()) #19, !dbg !4036
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !4036, !alias.scope !4037
  %6 = icmp eq i32 %1, 10, !dbg !4040
  br i1 %6, label %7, label %8, !dbg !4042

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !4043, !noalias !4037
  unreachable, !dbg !4043

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4044
  store i32 %1, i32* %9, align 8, !dbg !4045, !tbaa !2953, !alias.scope !4037
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !4046
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !4047
  ret i8* %10, !dbg !4048
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !4049 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4053, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 %1, metadata !4054, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i8* %2, metadata !4055, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i64 %3, metadata !4056, metadata !DIExpression()), !dbg !4058
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4059
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !4059
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !4057, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 %1, metadata !4028, metadata !DIExpression()) #19, !dbg !4061
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !4033, metadata !DIExpression()) #19, !dbg !4063
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #19, !dbg !4063, !alias.scope !4064
  %7 = icmp eq i32 %1, 10, !dbg !4067
  br i1 %7, label %8, label %9, !dbg !4068

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !4069, !noalias !4064
  unreachable, !dbg !4069

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4070
  store i32 %1, i32* %10, align 8, !dbg !4071, !tbaa !2953, !alias.scope !4064
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !4072
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !4073
  ret i8* %11, !dbg !4074
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !4075 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !4033, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !4024, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i32 %0, metadata !4079, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata i8* %1, metadata !4080, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.value(metadata i32 0, metadata !4021, metadata !DIExpression()) #19, !dbg !4086
  call void @llvm.dbg.value(metadata i32 %0, metadata !4022, metadata !DIExpression()) #19, !dbg !4086
  call void @llvm.dbg.value(metadata i8* %1, metadata !4023, metadata !DIExpression()) #19, !dbg !4086
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4087
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !4087
  call void @llvm.dbg.value(metadata i32 %0, metadata !4028, metadata !DIExpression()) #19, !dbg !4088
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #19, !dbg !4081, !alias.scope !4089
  %5 = icmp eq i32 %0, 10, !dbg !4092
  br i1 %5, label %6, label %7, !dbg !4093

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !4094, !noalias !4089
  unreachable, !dbg !4094

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !4095
  store i32 %0, i32* %8, align 8, !dbg !4096, !tbaa !2953, !alias.scope !4089
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !4097
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !4098
  ret i8* %9, !dbg !4099
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !4100 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4033, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4057, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i32 %0, metadata !4104, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i8* %1, metadata !4105, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i64 %2, metadata !4106, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i32 0, metadata !4053, metadata !DIExpression()) #19, !dbg !4112
  call void @llvm.dbg.value(metadata i32 %0, metadata !4054, metadata !DIExpression()) #19, !dbg !4112
  call void @llvm.dbg.value(metadata i8* %1, metadata !4055, metadata !DIExpression()) #19, !dbg !4112
  call void @llvm.dbg.value(metadata i64 %2, metadata !4056, metadata !DIExpression()) #19, !dbg !4112
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4113
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !4113
  call void @llvm.dbg.value(metadata i32 %0, metadata !4028, metadata !DIExpression()) #19, !dbg !4114
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !4107, !alias.scope !4115
  %6 = icmp eq i32 %0, 10, !dbg !4118
  br i1 %6, label %7, label %8, !dbg !4119

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !4120, !noalias !4115
  unreachable, !dbg !4120

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4121
  store i32 %0, i32* %9, align 8, !dbg !4122, !tbaa !2953, !alias.scope !4115
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #19, !dbg !4123
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !4124
  ret i8* %10, !dbg !4125
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !4126 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4130, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata i64 %1, metadata !4131, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata i8 %2, metadata !4132, metadata !DIExpression()), !dbg !4134
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4135
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !4135
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4133, metadata !DIExpression()), !dbg !4136
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4137, !tbaa.struct !4138
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2971, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i8 %2, metadata !2972, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i32 1, metadata !2973, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i8 %2, metadata !2974, metadata !DIExpression()), !dbg !4139
  %6 = lshr i8 %2, 5, !dbg !4141
  %7 = zext i8 %6 to i64, !dbg !4141
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !4142
  call void @llvm.dbg.value(metadata i32* %8, metadata !2975, metadata !DIExpression()), !dbg !4139
  %9 = and i8 %2, 31, !dbg !4143
  %10 = zext i8 %9 to i32, !dbg !4143
  call void @llvm.dbg.value(metadata i32 %10, metadata !2977, metadata !DIExpression()), !dbg !4139
  %11 = load i32, i32* %8, align 4, !dbg !4144, !tbaa !1556
  %12 = lshr i32 %11, %10, !dbg !4145
  %13 = and i32 %12, 1, !dbg !4146
  call void @llvm.dbg.value(metadata i32 %13, metadata !2978, metadata !DIExpression()), !dbg !4139
  %14 = xor i32 %13, 1, !dbg !4147
  %15 = shl i32 %14, %10, !dbg !4148
  %16 = xor i32 %15, %11, !dbg !4149
  store i32 %16, i32* %8, align 4, !dbg !4149, !tbaa !1556
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !4150
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !4151
  ret i8* %17, !dbg !4152
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !4153 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !4133, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i8* %0, metadata !4157, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata i8 %1, metadata !4158, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata i8* %0, metadata !4130, metadata !DIExpression()) #19, !dbg !4162
  call void @llvm.dbg.value(metadata i64 -1, metadata !4131, metadata !DIExpression()) #19, !dbg !4162
  call void @llvm.dbg.value(metadata i8 %1, metadata !4132, metadata !DIExpression()) #19, !dbg !4162
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4163
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !4163
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !4164, !tbaa.struct !4138
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2971, metadata !DIExpression()) #19, !dbg !4165
  call void @llvm.dbg.value(metadata i8 %1, metadata !2972, metadata !DIExpression()) #19, !dbg !4165
  call void @llvm.dbg.value(metadata i32 1, metadata !2973, metadata !DIExpression()) #19, !dbg !4165
  call void @llvm.dbg.value(metadata i8 %1, metadata !2974, metadata !DIExpression()) #19, !dbg !4165
  %5 = lshr i8 %1, 5, !dbg !4167
  %6 = zext i8 %5 to i64, !dbg !4167
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !4168
  call void @llvm.dbg.value(metadata i32* %7, metadata !2975, metadata !DIExpression()) #19, !dbg !4165
  %8 = and i8 %1, 31, !dbg !4169
  %9 = zext i8 %8 to i32, !dbg !4169
  call void @llvm.dbg.value(metadata i32 %9, metadata !2977, metadata !DIExpression()) #19, !dbg !4165
  %10 = load i32, i32* %7, align 4, !dbg !4170, !tbaa !1556
  %11 = lshr i32 %10, %9, !dbg !4171
  %12 = and i32 %11, 1, !dbg !4172
  call void @llvm.dbg.value(metadata i32 %12, metadata !2978, metadata !DIExpression()) #19, !dbg !4165
  %13 = xor i32 %12, 1, !dbg !4173
  %14 = shl i32 %13, %9, !dbg !4174
  %15 = xor i32 %14, %10, !dbg !4175
  store i32 %15, i32* %7, align 4, !dbg !4175, !tbaa !1556
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !4176
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !4177
  ret i8* %16, !dbg !4178
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !4179 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !4133, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i8* %0, metadata !4181, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i8* %0, metadata !4157, metadata !DIExpression()) #19, !dbg !4186
  call void @llvm.dbg.value(metadata i8 58, metadata !4158, metadata !DIExpression()) #19, !dbg !4186
  call void @llvm.dbg.value(metadata i8* %0, metadata !4130, metadata !DIExpression()) #19, !dbg !4187
  call void @llvm.dbg.value(metadata i64 -1, metadata !4131, metadata !DIExpression()) #19, !dbg !4187
  call void @llvm.dbg.value(metadata i8 58, metadata !4132, metadata !DIExpression()) #19, !dbg !4187
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !4188
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #19, !dbg !4188
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !4189, !tbaa.struct !4138
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2971, metadata !DIExpression()) #19, !dbg !4190
  call void @llvm.dbg.value(metadata i8 58, metadata !2972, metadata !DIExpression()) #19, !dbg !4190
  call void @llvm.dbg.value(metadata i32 1, metadata !2973, metadata !DIExpression()) #19, !dbg !4190
  call void @llvm.dbg.value(metadata i8 58, metadata !2974, metadata !DIExpression()) #19, !dbg !4190
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !4192
  call void @llvm.dbg.value(metadata i32* %4, metadata !2975, metadata !DIExpression()) #19, !dbg !4190
  call void @llvm.dbg.value(metadata i32 26, metadata !2977, metadata !DIExpression()) #19, !dbg !4190
  %5 = load i32, i32* %4, align 4, !dbg !4193, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %5, metadata !2978, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !4190
  %6 = or i32 %5, 67108864, !dbg !4194
  store i32 %6, i32* %4, align 4, !dbg !4194, !tbaa !1556
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #19, !dbg !4195
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #19, !dbg !4196
  ret i8* %7, !dbg !4197
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4198 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !4133, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata i8* %0, metadata !4200, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i64 %1, metadata !4201, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i8* %0, metadata !4130, metadata !DIExpression()) #19, !dbg !4205
  call void @llvm.dbg.value(metadata i64 %1, metadata !4131, metadata !DIExpression()) #19, !dbg !4205
  call void @llvm.dbg.value(metadata i8 58, metadata !4132, metadata !DIExpression()) #19, !dbg !4205
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4206
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !4206
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !4207, !tbaa.struct !4138
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2971, metadata !DIExpression()) #19, !dbg !4208
  call void @llvm.dbg.value(metadata i8 58, metadata !2972, metadata !DIExpression()) #19, !dbg !4208
  call void @llvm.dbg.value(metadata i32 1, metadata !2973, metadata !DIExpression()) #19, !dbg !4208
  call void @llvm.dbg.value(metadata i8 58, metadata !2974, metadata !DIExpression()) #19, !dbg !4208
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4210
  call void @llvm.dbg.value(metadata i32* %5, metadata !2975, metadata !DIExpression()) #19, !dbg !4208
  call void @llvm.dbg.value(metadata i32 26, metadata !2977, metadata !DIExpression()) #19, !dbg !4208
  %6 = load i32, i32* %5, align 4, !dbg !4211, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %6, metadata !2978, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !4208
  %7 = or i32 %6, 67108864, !dbg !4212
  store i32 %7, i32* %5, align 4, !dbg !4212, !tbaa !1556
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #19, !dbg !4213
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !4214
  ret i8* %8, !dbg !4215
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !4216 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !4033, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4222
  call void @llvm.dbg.value(metadata i32 %0, metadata !4218, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i32 %1, metadata !4219, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i8* %2, metadata !4220, metadata !DIExpression()), !dbg !4224
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4225
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !4225
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4221, metadata !DIExpression()), !dbg !4226
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4227
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !4227
  call void @llvm.dbg.value(metadata i32 %1, metadata !4028, metadata !DIExpression()) #19, !dbg !4228
  call void @llvm.dbg.value(metadata i32 0, metadata !4033, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4228
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !4222, !alias.scope !4229
  %8 = icmp eq i32 %1, 10, !dbg !4232
  br i1 %8, label %9, label %10, !dbg !4233

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !4234, !noalias !4229
  unreachable, !dbg !4234

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !4033, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4228
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4227
  store i32 %1, i32* %11, align 8, !dbg !4227, !tbaa.struct !4138
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4227
  %13 = bitcast i32* %12 to i8*, !dbg !4227
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !4227, !tbaa.struct !4138
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !4227
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2971, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i8 58, metadata !2972, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i32 1, metadata !2973, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i8 58, metadata !2974, metadata !DIExpression()), !dbg !4235
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !4237
  call void @llvm.dbg.value(metadata i32* %14, metadata !2975, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i32 26, metadata !2977, metadata !DIExpression()), !dbg !4235
  %15 = load i32, i32* %14, align 4, !dbg !4238, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %15, metadata !2978, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !4235
  %16 = or i32 %15, 67108864, !dbg !4239
  store i32 %16, i32* %14, align 4, !dbg !4239, !tbaa !1556
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !4240
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !4241
  ret i8* %17, !dbg !4242
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !4243 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !4251, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata i32 %0, metadata !4247, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i8* %1, metadata !4248, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i8* %2, metadata !4249, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i8* %3, metadata !4250, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i32 %0, metadata !4256, metadata !DIExpression()) #19, !dbg !4264
  call void @llvm.dbg.value(metadata i8* %1, metadata !4257, metadata !DIExpression()) #19, !dbg !4264
  call void @llvm.dbg.value(metadata i8* %2, metadata !4258, metadata !DIExpression()) #19, !dbg !4264
  call void @llvm.dbg.value(metadata i8* %3, metadata !4259, metadata !DIExpression()) #19, !dbg !4264
  call void @llvm.dbg.value(metadata i64 -1, metadata !4260, metadata !DIExpression()) #19, !dbg !4264
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4265
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !4265
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !4266, !tbaa.struct !4138
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3011, metadata !DIExpression()) #19, !dbg !4267
  call void @llvm.dbg.value(metadata i8* %1, metadata !3012, metadata !DIExpression()) #19, !dbg !4267
  call void @llvm.dbg.value(metadata i8* %2, metadata !3013, metadata !DIExpression()) #19, !dbg !4267
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3011, metadata !DIExpression()) #19, !dbg !4267
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4269
  store i32 10, i32* %7, align 8, !dbg !4270, !tbaa !2953
  %8 = icmp ne i8* %1, null, !dbg !4271
  %9 = icmp ne i8* %2, null, !dbg !4272
  %10 = and i1 %8, %9, !dbg !4273
  br i1 %10, label %12, label %11, !dbg !4273

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !4274
  unreachable, !dbg !4274

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4275
  store i8* %1, i8** %13, align 8, !dbg !4276, !tbaa !3027
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4277
  store i8* %2, i8** %14, align 8, !dbg !4278, !tbaa !3030
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #19, !dbg !4279
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !4280
  ret i8* %15, !dbg !4281
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !4252 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4256, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i8* %1, metadata !4257, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i8* %2, metadata !4258, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i8* %3, metadata !4259, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i64 %4, metadata !4260, metadata !DIExpression()), !dbg !4282
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4283
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #19, !dbg !4283
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !4251, metadata !DIExpression()), !dbg !4284
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !4285, !tbaa.struct !4138
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3011, metadata !DIExpression()) #19, !dbg !4286
  call void @llvm.dbg.value(metadata i8* %1, metadata !3012, metadata !DIExpression()) #19, !dbg !4286
  call void @llvm.dbg.value(metadata i8* %2, metadata !3013, metadata !DIExpression()) #19, !dbg !4286
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3011, metadata !DIExpression()) #19, !dbg !4286
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4288
  store i32 10, i32* %8, align 8, !dbg !4289, !tbaa !2953
  %9 = icmp ne i8* %1, null, !dbg !4290
  %10 = icmp ne i8* %2, null, !dbg !4291
  %11 = and i1 %9, %10, !dbg !4292
  br i1 %11, label %13, label %12, !dbg !4292

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !4293
  unreachable, !dbg !4293

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4294
  store i8* %1, i8** %14, align 8, !dbg !4295, !tbaa !3027
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4296
  store i8* %2, i8** %15, align 8, !dbg !4297, !tbaa !3030
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4298
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #19, !dbg !4299
  ret i8* %16, !dbg !4300
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !4301 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !4251, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i8* %0, metadata !4305, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i8* %1, metadata !4306, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i8* %2, metadata !4307, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i32 0, metadata !4247, metadata !DIExpression()) #19, !dbg !4312
  call void @llvm.dbg.value(metadata i8* %0, metadata !4248, metadata !DIExpression()) #19, !dbg !4312
  call void @llvm.dbg.value(metadata i8* %1, metadata !4249, metadata !DIExpression()) #19, !dbg !4312
  call void @llvm.dbg.value(metadata i8* %2, metadata !4250, metadata !DIExpression()) #19, !dbg !4312
  call void @llvm.dbg.value(metadata i32 0, metadata !4256, metadata !DIExpression()) #19, !dbg !4313
  call void @llvm.dbg.value(metadata i8* %0, metadata !4257, metadata !DIExpression()) #19, !dbg !4313
  call void @llvm.dbg.value(metadata i8* %1, metadata !4258, metadata !DIExpression()) #19, !dbg !4313
  call void @llvm.dbg.value(metadata i8* %2, metadata !4259, metadata !DIExpression()) #19, !dbg !4313
  call void @llvm.dbg.value(metadata i64 -1, metadata !4260, metadata !DIExpression()) #19, !dbg !4313
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4314
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !4314
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !4315, !tbaa.struct !4138
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3011, metadata !DIExpression()) #19, !dbg !4316
  call void @llvm.dbg.value(metadata i8* %0, metadata !3012, metadata !DIExpression()) #19, !dbg !4316
  call void @llvm.dbg.value(metadata i8* %1, metadata !3013, metadata !DIExpression()) #19, !dbg !4316
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3011, metadata !DIExpression()) #19, !dbg !4316
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4318
  store i32 10, i32* %6, align 8, !dbg !4319, !tbaa !2953
  %7 = icmp ne i8* %0, null, !dbg !4320
  %8 = icmp ne i8* %1, null, !dbg !4321
  %9 = and i1 %7, %8, !dbg !4322
  br i1 %9, label %11, label %10, !dbg !4322

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !4323
  unreachable, !dbg !4323

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4324
  store i8* %0, i8** %12, align 8, !dbg !4325, !tbaa !3027
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4326
  store i8* %1, i8** %13, align 8, !dbg !4327, !tbaa !3030
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #19, !dbg !4328
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !4329
  ret i8* %14, !dbg !4330
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !4331 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !4251, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i8* %0, metadata !4335, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i8* %1, metadata !4336, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i8* %2, metadata !4337, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i64 %3, metadata !4338, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i32 0, metadata !4256, metadata !DIExpression()) #19, !dbg !4342
  call void @llvm.dbg.value(metadata i8* %0, metadata !4257, metadata !DIExpression()) #19, !dbg !4342
  call void @llvm.dbg.value(metadata i8* %1, metadata !4258, metadata !DIExpression()) #19, !dbg !4342
  call void @llvm.dbg.value(metadata i8* %2, metadata !4259, metadata !DIExpression()) #19, !dbg !4342
  call void @llvm.dbg.value(metadata i64 %3, metadata !4260, metadata !DIExpression()) #19, !dbg !4342
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4343
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !4343
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !4344, !tbaa.struct !4138
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3011, metadata !DIExpression()) #19, !dbg !4345
  call void @llvm.dbg.value(metadata i8* %0, metadata !3012, metadata !DIExpression()) #19, !dbg !4345
  call void @llvm.dbg.value(metadata i8* %1, metadata !3013, metadata !DIExpression()) #19, !dbg !4345
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3011, metadata !DIExpression()) #19, !dbg !4345
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4347
  store i32 10, i32* %7, align 8, !dbg !4348, !tbaa !2953
  %8 = icmp ne i8* %0, null, !dbg !4349
  %9 = icmp ne i8* %1, null, !dbg !4350
  %10 = and i1 %8, %9, !dbg !4351
  br i1 %10, label %12, label %11, !dbg !4351

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !4352
  unreachable, !dbg !4352

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4353
  store i8* %0, i8** %13, align 8, !dbg !4354, !tbaa !3027
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4355
  store i8* %1, i8** %14, align 8, !dbg !4356, !tbaa !3030
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #19, !dbg !4357
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !4358
  ret i8* %15, !dbg !4359
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !4360 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4364, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i8* %1, metadata !4365, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i64 %2, metadata !4366, metadata !DIExpression()), !dbg !4367
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4368
  ret i8* %4, !dbg !4369
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4370 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4374, metadata !DIExpression()), !dbg !4376
  call void @llvm.dbg.value(metadata i64 %1, metadata !4375, metadata !DIExpression()), !dbg !4376
  call void @llvm.dbg.value(metadata i32 0, metadata !4364, metadata !DIExpression()) #19, !dbg !4377
  call void @llvm.dbg.value(metadata i8* %0, metadata !4365, metadata !DIExpression()) #19, !dbg !4377
  call void @llvm.dbg.value(metadata i64 %1, metadata !4366, metadata !DIExpression()) #19, !dbg !4377
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !4379
  ret i8* %3, !dbg !4380
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !4381 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4385, metadata !DIExpression()), !dbg !4387
  call void @llvm.dbg.value(metadata i8* %1, metadata !4386, metadata !DIExpression()), !dbg !4387
  call void @llvm.dbg.value(metadata i32 %0, metadata !4364, metadata !DIExpression()) #19, !dbg !4388
  call void @llvm.dbg.value(metadata i8* %1, metadata !4365, metadata !DIExpression()) #19, !dbg !4388
  call void @llvm.dbg.value(metadata i64 -1, metadata !4366, metadata !DIExpression()) #19, !dbg !4388
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !4390
  ret i8* %3, !dbg !4391
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !4392 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4396, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.value(metadata i32 0, metadata !4385, metadata !DIExpression()) #19, !dbg !4398
  call void @llvm.dbg.value(metadata i8* %0, metadata !4386, metadata !DIExpression()) #19, !dbg !4398
  call void @llvm.dbg.value(metadata i32 0, metadata !4364, metadata !DIExpression()) #19, !dbg !4400
  call void @llvm.dbg.value(metadata i8* %0, metadata !4365, metadata !DIExpression()) #19, !dbg !4400
  call void @llvm.dbg.value(metadata i64 -1, metadata !4366, metadata !DIExpression()) #19, !dbg !4400
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !4402
  ret i8* %2, !dbg !4403
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @dup_safer(i32 %0) local_unnamed_addr #8 !dbg !4404 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4406, metadata !DIExpression()), !dbg !4407
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #19, !dbg !4408
  ret i32 %2, !dbg !4409
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !4410 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4417, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.value(metadata i8* %1, metadata !4418, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.value(metadata i8* %2, metadata !4419, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.value(metadata i8* %3, metadata !4420, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.value(metadata i8** %4, metadata !4421, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.value(metadata i64 %5, metadata !4422, metadata !DIExpression()), !dbg !4423
  %7 = icmp eq i8* %1, null, !dbg !4424
  br i1 %7, label %10, label %8, !dbg !4426

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #19, !dbg !4427
  br label %12, !dbg !4427

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.128, i64 0, i64 0), i8* %2, i8* %3) #19, !dbg !4428
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.129, i64 0, i64 0), i32 5) #19, !dbg !4429
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #19, !dbg !4429
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.130, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4430
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.131, i64 0, i64 0), i32 5) #19, !dbg !4431
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.132, i64 0, i64 0)) #19, !dbg !4431
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.130, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !4432
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
  ], !dbg !4433

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.133, i64 0, i64 0), i32 5) #19, !dbg !4434
  %21 = load i8*, i8** %4, align 8, !dbg !4434, !tbaa !1344
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #19, !dbg !4434
  br label %147, !dbg !4436

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.134, i64 0, i64 0), i32 5) #19, !dbg !4437
  %25 = load i8*, i8** %4, align 8, !dbg !4437, !tbaa !1344
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4437
  %27 = load i8*, i8** %26, align 8, !dbg !4437, !tbaa !1344
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #19, !dbg !4437
  br label %147, !dbg !4438

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.135, i64 0, i64 0), i32 5) #19, !dbg !4439
  %31 = load i8*, i8** %4, align 8, !dbg !4439, !tbaa !1344
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4439
  %33 = load i8*, i8** %32, align 8, !dbg !4439, !tbaa !1344
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4439
  %35 = load i8*, i8** %34, align 8, !dbg !4439, !tbaa !1344
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #19, !dbg !4439
  br label %147, !dbg !4440

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.136, i64 0, i64 0), i32 5) #19, !dbg !4441
  %39 = load i8*, i8** %4, align 8, !dbg !4441, !tbaa !1344
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4441
  %41 = load i8*, i8** %40, align 8, !dbg !4441, !tbaa !1344
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4441
  %43 = load i8*, i8** %42, align 8, !dbg !4441, !tbaa !1344
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4441
  %45 = load i8*, i8** %44, align 8, !dbg !4441, !tbaa !1344
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #19, !dbg !4441
  br label %147, !dbg !4442

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.137, i64 0, i64 0), i32 5) #19, !dbg !4443
  %49 = load i8*, i8** %4, align 8, !dbg !4443, !tbaa !1344
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4443
  %51 = load i8*, i8** %50, align 8, !dbg !4443, !tbaa !1344
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4443
  %53 = load i8*, i8** %52, align 8, !dbg !4443, !tbaa !1344
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4443
  %55 = load i8*, i8** %54, align 8, !dbg !4443, !tbaa !1344
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4443
  %57 = load i8*, i8** %56, align 8, !dbg !4443, !tbaa !1344
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #19, !dbg !4443
  br label %147, !dbg !4444

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.138, i64 0, i64 0), i32 5) #19, !dbg !4445
  %61 = load i8*, i8** %4, align 8, !dbg !4445, !tbaa !1344
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4445
  %63 = load i8*, i8** %62, align 8, !dbg !4445, !tbaa !1344
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4445
  %65 = load i8*, i8** %64, align 8, !dbg !4445, !tbaa !1344
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4445
  %67 = load i8*, i8** %66, align 8, !dbg !4445, !tbaa !1344
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4445
  %69 = load i8*, i8** %68, align 8, !dbg !4445, !tbaa !1344
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4445
  %71 = load i8*, i8** %70, align 8, !dbg !4445, !tbaa !1344
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #19, !dbg !4445
  br label %147, !dbg !4446

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.139, i64 0, i64 0), i32 5) #19, !dbg !4447
  %75 = load i8*, i8** %4, align 8, !dbg !4447, !tbaa !1344
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4447
  %77 = load i8*, i8** %76, align 8, !dbg !4447, !tbaa !1344
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4447
  %79 = load i8*, i8** %78, align 8, !dbg !4447, !tbaa !1344
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4447
  %81 = load i8*, i8** %80, align 8, !dbg !4447, !tbaa !1344
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4447
  %83 = load i8*, i8** %82, align 8, !dbg !4447, !tbaa !1344
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4447
  %85 = load i8*, i8** %84, align 8, !dbg !4447, !tbaa !1344
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4447
  %87 = load i8*, i8** %86, align 8, !dbg !4447, !tbaa !1344
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #19, !dbg !4447
  br label %147, !dbg !4448

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.140, i64 0, i64 0), i32 5) #19, !dbg !4449
  %91 = load i8*, i8** %4, align 8, !dbg !4449, !tbaa !1344
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4449
  %93 = load i8*, i8** %92, align 8, !dbg !4449, !tbaa !1344
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4449
  %95 = load i8*, i8** %94, align 8, !dbg !4449, !tbaa !1344
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4449
  %97 = load i8*, i8** %96, align 8, !dbg !4449, !tbaa !1344
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4449
  %99 = load i8*, i8** %98, align 8, !dbg !4449, !tbaa !1344
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4449
  %101 = load i8*, i8** %100, align 8, !dbg !4449, !tbaa !1344
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4449
  %103 = load i8*, i8** %102, align 8, !dbg !4449, !tbaa !1344
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4449
  %105 = load i8*, i8** %104, align 8, !dbg !4449, !tbaa !1344
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #19, !dbg !4449
  br label %147, !dbg !4450

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.141, i64 0, i64 0), i32 5) #19, !dbg !4451
  %109 = load i8*, i8** %4, align 8, !dbg !4451, !tbaa !1344
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4451
  %111 = load i8*, i8** %110, align 8, !dbg !4451, !tbaa !1344
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4451
  %113 = load i8*, i8** %112, align 8, !dbg !4451, !tbaa !1344
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4451
  %115 = load i8*, i8** %114, align 8, !dbg !4451, !tbaa !1344
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4451
  %117 = load i8*, i8** %116, align 8, !dbg !4451, !tbaa !1344
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4451
  %119 = load i8*, i8** %118, align 8, !dbg !4451, !tbaa !1344
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4451
  %121 = load i8*, i8** %120, align 8, !dbg !4451, !tbaa !1344
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4451
  %123 = load i8*, i8** %122, align 8, !dbg !4451, !tbaa !1344
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4451
  %125 = load i8*, i8** %124, align 8, !dbg !4451, !tbaa !1344
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #19, !dbg !4451
  br label %147, !dbg !4452

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.142, i64 0, i64 0), i32 5) #19, !dbg !4453
  %129 = load i8*, i8** %4, align 8, !dbg !4453, !tbaa !1344
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4453
  %131 = load i8*, i8** %130, align 8, !dbg !4453, !tbaa !1344
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4453
  %133 = load i8*, i8** %132, align 8, !dbg !4453, !tbaa !1344
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4453
  %135 = load i8*, i8** %134, align 8, !dbg !4453, !tbaa !1344
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4453
  %137 = load i8*, i8** %136, align 8, !dbg !4453, !tbaa !1344
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4453
  %139 = load i8*, i8** %138, align 8, !dbg !4453, !tbaa !1344
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4453
  %141 = load i8*, i8** %140, align 8, !dbg !4453, !tbaa !1344
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4453
  %143 = load i8*, i8** %142, align 8, !dbg !4453, !tbaa !1344
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4453
  %145 = load i8*, i8** %144, align 8, !dbg !4453, !tbaa !1344
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #19, !dbg !4453
  br label %147, !dbg !4454

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4455
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !4456 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4460, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i8* %1, metadata !4461, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i8* %2, metadata !4462, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i8* %3, metadata !4463, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i8** %4, metadata !4464, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i64 0, metadata !4465, metadata !DIExpression()), !dbg !4466
  br label %6, !dbg !4467

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4469
  call void @llvm.dbg.value(metadata i64 %7, metadata !4465, metadata !DIExpression()), !dbg !4466
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4470
  %9 = load i8*, i8** %8, align 8, !dbg !4470, !tbaa !1344
  %10 = icmp eq i8* %9, null, !dbg !4472
  %11 = add i64 %7, 1, !dbg !4473
  call void @llvm.dbg.value(metadata i64 %11, metadata !4465, metadata !DIExpression()), !dbg !4466
  br i1 %10, label %12, label %6, !dbg !4472, !llvm.loop !4474

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4465, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i64 %7, metadata !4465, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i64 %7, metadata !4465, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i64 %7, metadata !4465, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i64 %7, metadata !4465, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i64 %7, metadata !4465, metadata !DIExpression()), !dbg !4466
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4476
  ret void, !dbg !4477
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !4478 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4489, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata i8* %1, metadata !4490, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata i8* %2, metadata !4491, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata i8* %3, metadata !4492, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4493, metadata !DIExpression()), !dbg !4497
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4498
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #19, !dbg !4498
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4495, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i64 0, metadata !4494, metadata !DIExpression()), !dbg !4497
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !4500
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !4500
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !4500
  %11 = load i32, i32* %8, align 8, !dbg !4503
  %12 = icmp ult i32 %11, 41, !dbg !4503
  br i1 %12, label %13, label %18, !dbg !4503

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !4503
  %15 = zext i32 %11 to i64, !dbg !4503
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4503
  %17 = add nuw nsw i32 %11, 8, !dbg !4503
  store i32 %17, i32* %8, align 8, !dbg !4503
  br label %21, !dbg !4503

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !4503
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4503
  store i8* %20, i8** %9, align 8, !dbg !4503
  br label %21, !dbg !4503

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4503
  %25 = load i8*, i8** %24, align 8, !dbg !4503
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4504
  store i8* %25, i8** %26, align 16, !dbg !4505, !tbaa !1344
  %27 = icmp eq i8* %25, null, !dbg !4506
  br i1 %27, label %30, label %28, !dbg !4507

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4494, metadata !DIExpression()), !dbg !4497
  %29 = icmp ult i32 %22, 41, !dbg !4503
  br i1 %29, label %35, label %32, !dbg !4503

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4508
  call void @llvm.dbg.value(metadata i64 %31, metadata !4494, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.value(metadata i64 %31, metadata !4494, metadata !DIExpression()), !dbg !4497
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4509
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #19, !dbg !4510
  ret void, !dbg !4510

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !4503
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4503
  store i8* %34, i8** %9, align 8, !dbg !4503
  br label %40, !dbg !4503

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !4503
  %37 = zext i32 %22 to i64, !dbg !4503
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4503
  %39 = add nuw nsw i32 %22, 8, !dbg !4503
  store i32 %39, i32* %8, align 8, !dbg !4503
  br label %40, !dbg !4503

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4503
  %44 = load i8*, i8** %43, align 8, !dbg !4503
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4504
  store i8* %44, i8** %45, align 8, !dbg !4505, !tbaa !1344
  %46 = icmp eq i8* %44, null, !dbg !4506
  br i1 %46, label %30, label %47, !dbg !4507

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4494, metadata !DIExpression()), !dbg !4497
  %48 = icmp ult i32 %41, 41, !dbg !4503
  br i1 %48, label %52, label %49, !dbg !4503

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !4503
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4503
  store i8* %51, i8** %9, align 8, !dbg !4503
  br label %57, !dbg !4503

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !4503
  %54 = zext i32 %41 to i64, !dbg !4503
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4503
  %56 = add nuw nsw i32 %41, 8, !dbg !4503
  store i32 %56, i32* %8, align 8, !dbg !4503
  br label %57, !dbg !4503

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4503
  %61 = load i8*, i8** %60, align 8, !dbg !4503
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4504
  store i8* %61, i8** %62, align 16, !dbg !4505, !tbaa !1344
  %63 = icmp eq i8* %61, null, !dbg !4506
  br i1 %63, label %30, label %64, !dbg !4507

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4494, metadata !DIExpression()), !dbg !4497
  %65 = icmp ult i32 %58, 41, !dbg !4503
  br i1 %65, label %69, label %66, !dbg !4503

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !4503
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4503
  store i8* %68, i8** %9, align 8, !dbg !4503
  br label %74, !dbg !4503

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !4503
  %71 = zext i32 %58 to i64, !dbg !4503
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4503
  %73 = add nuw nsw i32 %58, 8, !dbg !4503
  store i32 %73, i32* %8, align 8, !dbg !4503
  br label %74, !dbg !4503

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4503
  %78 = load i8*, i8** %77, align 8, !dbg !4503
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4504
  store i8* %78, i8** %79, align 8, !dbg !4505, !tbaa !1344
  %80 = icmp eq i8* %78, null, !dbg !4506
  br i1 %80, label %30, label %81, !dbg !4507

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4494, metadata !DIExpression()), !dbg !4497
  %82 = icmp ult i32 %75, 41, !dbg !4503
  br i1 %82, label %86, label %83, !dbg !4503

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !4503
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4503
  store i8* %85, i8** %9, align 8, !dbg !4503
  br label %91, !dbg !4503

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !4503
  %88 = zext i32 %75 to i64, !dbg !4503
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4503
  %90 = add nuw nsw i32 %75, 8, !dbg !4503
  store i32 %90, i32* %8, align 8, !dbg !4503
  br label %91, !dbg !4503

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4503
  %95 = load i8*, i8** %94, align 8, !dbg !4503
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4504
  store i8* %95, i8** %96, align 16, !dbg !4505, !tbaa !1344
  %97 = icmp eq i8* %95, null, !dbg !4506
  br i1 %97, label %30, label %98, !dbg !4507

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4494, metadata !DIExpression()), !dbg !4497
  %99 = icmp ult i32 %92, 41, !dbg !4503
  br i1 %99, label %103, label %100, !dbg !4503

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !4503
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4503
  store i8* %102, i8** %9, align 8, !dbg !4503
  br label %108, !dbg !4503

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !4503
  %105 = zext i32 %92 to i64, !dbg !4503
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4503
  %107 = add nuw nsw i32 %92, 8, !dbg !4503
  store i32 %107, i32* %8, align 8, !dbg !4503
  br label %108, !dbg !4503

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4503
  %111 = load i8*, i8** %110, align 8, !dbg !4503
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4504
  store i8* %111, i8** %112, align 8, !dbg !4505, !tbaa !1344
  %113 = icmp eq i8* %111, null, !dbg !4506
  br i1 %113, label %30, label %114, !dbg !4507

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4494, metadata !DIExpression()), !dbg !4497
  %115 = load i8*, i8** %9, align 8, !dbg !4503
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4503
  store i8* %116, i8** %9, align 8, !dbg !4503
  %117 = bitcast i8* %115 to i8**, !dbg !4503
  %118 = load i8*, i8** %117, align 8, !dbg !4503
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4504
  store i8* %118, i8** %119, align 16, !dbg !4505, !tbaa !1344
  %120 = icmp eq i8* %118, null, !dbg !4506
  br i1 %120, label %30, label %121, !dbg !4507

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4494, metadata !DIExpression()), !dbg !4497
  %122 = load i8*, i8** %9, align 8, !dbg !4503
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4503
  store i8* %123, i8** %9, align 8, !dbg !4503
  %124 = bitcast i8* %122 to i8**, !dbg !4503
  %125 = load i8*, i8** %124, align 8, !dbg !4503
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4504
  store i8* %125, i8** %126, align 8, !dbg !4505, !tbaa !1344
  %127 = icmp eq i8* %125, null, !dbg !4506
  br i1 %127, label %30, label %128, !dbg !4507

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4494, metadata !DIExpression()), !dbg !4497
  %129 = load i8*, i8** %9, align 8, !dbg !4503
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4503
  store i8* %130, i8** %9, align 8, !dbg !4503
  %131 = bitcast i8* %129 to i8**, !dbg !4503
  %132 = load i8*, i8** %131, align 8, !dbg !4503
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4504
  store i8* %132, i8** %133, align 16, !dbg !4505, !tbaa !1344
  %134 = icmp eq i8* %132, null, !dbg !4506
  br i1 %134, label %30, label %135, !dbg !4507

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4494, metadata !DIExpression()), !dbg !4497
  %136 = load i8*, i8** %9, align 8, !dbg !4503
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4503
  store i8* %137, i8** %9, align 8, !dbg !4503
  %138 = bitcast i8* %136 to i8**, !dbg !4503
  %139 = load i8*, i8** %138, align 8, !dbg !4503
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4504
  store i8* %139, i8** %140, align 8, !dbg !4505, !tbaa !1344
  %141 = icmp eq i8* %139, null, !dbg !4506
  %142 = select i1 %141, i64 9, i64 10, !dbg !4507
  br label %30, !dbg !4507
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !4511 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4515, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i8* %1, metadata !4516, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i8* %2, metadata !4517, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i8* %3, metadata !4518, metadata !DIExpression()), !dbg !4525
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4526
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #19, !dbg !4526
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4519, metadata !DIExpression()), !dbg !4527
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4528
  call void @llvm.va_start(i8* nonnull %6), !dbg !4528
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4529
  call void @llvm.va_end(i8* nonnull %6), !dbg !4530
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #19, !dbg !4531
  ret void, !dbg !4531
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #19

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !4532 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4533, !tbaa !1344
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.130, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !4533
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.145, i64 0, i64 0), i32 5) #19, !dbg !4534
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.146, i64 0, i64 0)) #19, !dbg !4534
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.147, i64 0, i64 0), i32 5) #19, !dbg !4535
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.148, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.149, i64 0, i64 0)) #19, !dbg !4535
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.150, i64 0, i64 0), i32 5) #19, !dbg !4536
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.151, i64 0, i64 0)) #19, !dbg !4536
  ret void, !dbg !4537
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !4538 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4542, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.value(metadata i64 %1, metadata !4543, metadata !DIExpression()), !dbg !4544
  %3 = udiv i64 9223372036854775807, %1, !dbg !4545
  %4 = icmp ult i64 %3, %0, !dbg !4545
  br i1 %4, label %5, label %6, !dbg !4547

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !4548
  unreachable, !dbg !4548

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4549
  call void @llvm.dbg.value(metadata i64 %7, metadata !4550, metadata !DIExpression()) #19, !dbg !4556
  %8 = tail call noalias i8* @malloc(i64 %7) #19, !dbg !4558
  call void @llvm.dbg.value(metadata i8* %8, metadata !4555, metadata !DIExpression()) #19, !dbg !4556
  %9 = icmp eq i8* %8, null, !dbg !4559
  %10 = icmp ne i64 %7, 0, !dbg !4561
  %11 = and i1 %10, %9, !dbg !4562
  br i1 %11, label %12, label %13, !dbg !4562

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !4563
  unreachable, !dbg !4563

13:                                               ; preds = %6
  ret i8* %8, !dbg !4564
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !4551 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4550, metadata !DIExpression()), !dbg !4565
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !4566
  call void @llvm.dbg.value(metadata i8* %2, metadata !4555, metadata !DIExpression()), !dbg !4565
  %3 = icmp eq i8* %2, null, !dbg !4567
  %4 = icmp ne i64 %0, 0, !dbg !4568
  %5 = and i1 %4, %3, !dbg !4569
  br i1 %5, label %6, label %7, !dbg !4569

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !4570
  unreachable, !dbg !4570

7:                                                ; preds = %1
  ret i8* %2, !dbg !4571
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #20 !dbg !4572 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4576, metadata !DIExpression()), !dbg !4579
  call void @llvm.dbg.value(metadata i64 %1, metadata !4577, metadata !DIExpression()), !dbg !4579
  call void @llvm.dbg.value(metadata i64 %2, metadata !4578, metadata !DIExpression()), !dbg !4579
  %4 = udiv i64 9223372036854775807, %2, !dbg !4580
  %5 = icmp ult i64 %4, %1, !dbg !4580
  br i1 %5, label %6, label %7, !dbg !4582

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !4583
  unreachable, !dbg !4583

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4584
  call void @llvm.dbg.value(metadata i8* %0, metadata !4585, metadata !DIExpression()) #19, !dbg !4591
  call void @llvm.dbg.value(metadata i64 %8, metadata !4590, metadata !DIExpression()) #19, !dbg !4591
  %9 = icmp eq i64 %8, 0, !dbg !4593
  %10 = icmp ne i8* %0, null, !dbg !4595
  %11 = and i1 %10, %9, !dbg !4596
  br i1 %11, label %12, label %13, !dbg !4596

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #19, !dbg !4597
  br label %19, !dbg !4599

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #19, !dbg !4600
  call void @llvm.dbg.value(metadata i8* %14, metadata !4585, metadata !DIExpression()) #19, !dbg !4591
  %15 = icmp eq i8* %14, null, !dbg !4601
  %16 = icmp ne i64 %8, 0, !dbg !4603
  %17 = and i1 %16, %15, !dbg !4604
  br i1 %17, label %18, label %19, !dbg !4604

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !4605
  unreachable, !dbg !4605

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4591
  ret i8* %20, !dbg !4606
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4586 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4585, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata i64 %1, metadata !4590, metadata !DIExpression()), !dbg !4607
  %3 = icmp eq i64 %1, 0, !dbg !4608
  %4 = icmp ne i8* %0, null, !dbg !4609
  %5 = and i1 %4, %3, !dbg !4610
  br i1 %5, label %6, label %7, !dbg !4610

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #19, !dbg !4611
  br label %13, !dbg !4612

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #19, !dbg !4613
  call void @llvm.dbg.value(metadata i8* %8, metadata !4585, metadata !DIExpression()), !dbg !4607
  %9 = icmp eq i8* %8, null, !dbg !4614
  %10 = icmp ne i64 %1, 0, !dbg !4615
  %11 = and i1 %10, %9, !dbg !4616
  br i1 %11, label %12, label %13, !dbg !4616

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !4617
  unreachable, !dbg !4617

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4607
  ret i8* %14, !dbg !4618
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #20 !dbg !700 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !705, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.value(metadata i64* %1, metadata !706, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.value(metadata i64 %2, metadata !707, metadata !DIExpression()), !dbg !4619
  %4 = load i64, i64* %1, align 8, !dbg !4620, !tbaa !1609
  call void @llvm.dbg.value(metadata i64 %4, metadata !708, metadata !DIExpression()), !dbg !4619
  %5 = icmp eq i8* %0, null, !dbg !4621
  br i1 %5, label %6, label %20, !dbg !4623

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4624
  br i1 %7, label %8, label %13, !dbg !4627

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4628
  call void @llvm.dbg.value(metadata i64 %9, metadata !708, metadata !DIExpression()), !dbg !4619
  %10 = icmp ugt i64 %2, 128, !dbg !4630
  %11 = zext i1 %10 to i64, !dbg !4630
  %12 = add nuw nsw i64 %9, %11, !dbg !4631
  call void @llvm.dbg.value(metadata i64 %12, metadata !708, metadata !DIExpression()), !dbg !4619
  br label %13, !dbg !4632

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4619
  call void @llvm.dbg.value(metadata i64 %14, metadata !708, metadata !DIExpression()), !dbg !4619
  %15 = udiv i64 9223372036854775807, %2, !dbg !4633
  %16 = icmp ult i64 %15, %14, !dbg !4633
  br i1 %16, label %19, label %17, !dbg !4635

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !708, metadata !DIExpression()), !dbg !4619
  store i64 %14, i64* %1, align 8, !dbg !4636, !tbaa !1609
  %18 = mul i64 %14, %2, !dbg !4637
  call void @llvm.dbg.value(metadata i8* %0, metadata !4585, metadata !DIExpression()) #19, !dbg !4638
  call void @llvm.dbg.value(metadata i64 %28, metadata !4590, metadata !DIExpression()) #19, !dbg !4638
  br label %31, !dbg !4640

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !4641
  unreachable, !dbg !4641

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4642
  %22 = icmp ugt i64 %21, %4, !dbg !4645
  br i1 %22, label %24, label %23, !dbg !4646

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !4647
  unreachable, !dbg !4647

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4648
  %26 = add nuw i64 %4, 1, !dbg !4649
  %27 = add i64 %26, %25, !dbg !4650
  call void @llvm.dbg.value(metadata i64 %27, metadata !708, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.value(metadata i64 %27, metadata !708, metadata !DIExpression()), !dbg !4619
  store i64 %27, i64* %1, align 8, !dbg !4636, !tbaa !1609
  %28 = mul i64 %27, %2, !dbg !4637
  call void @llvm.dbg.value(metadata i8* %0, metadata !4585, metadata !DIExpression()) #19, !dbg !4638
  call void @llvm.dbg.value(metadata i64 %28, metadata !4590, metadata !DIExpression()) #19, !dbg !4638
  %29 = icmp eq i64 %28, 0, !dbg !4651
  br i1 %29, label %30, label %31, !dbg !4640

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #19, !dbg !4652
  br label %38, !dbg !4653

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #19, !dbg !4654
  call void @llvm.dbg.value(metadata i8* %33, metadata !4585, metadata !DIExpression()) #19, !dbg !4638
  %34 = icmp eq i8* %33, null, !dbg !4655
  %35 = icmp ne i64 %32, 0, !dbg !4656
  %36 = and i1 %35, %34, !dbg !4657
  br i1 %36, label %37, label %38, !dbg !4657

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !4658
  unreachable, !dbg !4658

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4638
  ret i8* %39, !dbg !4659
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #20 !dbg !4660 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4662, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata i64 %0, metadata !4550, metadata !DIExpression()) #19, !dbg !4664
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !4666
  call void @llvm.dbg.value(metadata i8* %2, metadata !4555, metadata !DIExpression()) #19, !dbg !4664
  %3 = icmp eq i8* %2, null, !dbg !4667
  %4 = icmp ne i64 %0, 0, !dbg !4668
  %5 = and i1 %4, %3, !dbg !4669
  br i1 %5, label %6, label %7, !dbg !4669

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !4670
  unreachable, !dbg !4670

7:                                                ; preds = %1
  ret i8* %2, !dbg !4671
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4672 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4676, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.value(metadata i64* %1, metadata !4677, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.value(metadata i8* %0, metadata !705, metadata !DIExpression()) #19, !dbg !4679
  call void @llvm.dbg.value(metadata i64* %1, metadata !706, metadata !DIExpression()) #19, !dbg !4679
  call void @llvm.dbg.value(metadata i64 1, metadata !707, metadata !DIExpression()) #19, !dbg !4679
  %3 = load i64, i64* %1, align 8, !dbg !4681, !tbaa !1609
  call void @llvm.dbg.value(metadata i64 %3, metadata !708, metadata !DIExpression()) #19, !dbg !4679
  %4 = icmp eq i8* %0, null, !dbg !4682
  br i1 %4, label %5, label %12, !dbg !4683

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4684
  br i1 %6, label %9, label %7, !dbg !4685

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !708, metadata !DIExpression()) #19, !dbg !4679
  %8 = icmp slt i64 %3, 0, !dbg !4686
  br i1 %8, label %11, label %9, !dbg !4687

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !708, metadata !DIExpression()) #19, !dbg !4679
  store i64 %10, i64* %1, align 8, !dbg !4688, !tbaa !1609
  call void @llvm.dbg.value(metadata i8* %0, metadata !4585, metadata !DIExpression()) #19, !dbg !4689
  call void @llvm.dbg.value(metadata i64 %18, metadata !4590, metadata !DIExpression()) #19, !dbg !4689
  br label %21, !dbg !4691

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !4692
  unreachable, !dbg !4692

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4693
  br i1 %13, label %15, label %14, !dbg !4694

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !4695
  unreachable, !dbg !4695

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4696
  %17 = add nuw nsw i64 %3, 1, !dbg !4697
  %18 = add nuw nsw i64 %17, %16, !dbg !4698
  call void @llvm.dbg.value(metadata i64 %18, metadata !708, metadata !DIExpression()) #19, !dbg !4679
  call void @llvm.dbg.value(metadata i64 %18, metadata !708, metadata !DIExpression()) #19, !dbg !4679
  store i64 %18, i64* %1, align 8, !dbg !4688, !tbaa !1609
  call void @llvm.dbg.value(metadata i8* %0, metadata !4585, metadata !DIExpression()) #19, !dbg !4689
  call void @llvm.dbg.value(metadata i64 %18, metadata !4590, metadata !DIExpression()) #19, !dbg !4689
  %19 = icmp eq i64 %18, 0, !dbg !4699
  br i1 %19, label %20, label %21, !dbg !4691

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #19, !dbg !4700
  br label %28, !dbg !4701

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #19, !dbg !4702
  call void @llvm.dbg.value(metadata i8* %23, metadata !4585, metadata !DIExpression()) #19, !dbg !4689
  %24 = icmp eq i8* %23, null, !dbg !4703
  %25 = icmp ne i64 %22, 0, !dbg !4704
  %26 = and i1 %25, %24, !dbg !4705
  br i1 %26, label %27, label %28, !dbg !4705

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !4706
  unreachable, !dbg !4706

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4689
  ret i8* %29, !dbg !4707
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4708 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4710, metadata !DIExpression()), !dbg !4711
  call void @llvm.dbg.value(metadata i64 %0, metadata !4712, metadata !DIExpression()) #19, !dbg !4717
  call void @llvm.dbg.value(metadata i64 1, metadata !4715, metadata !DIExpression()) #19, !dbg !4717
  %2 = icmp slt i64 %0, 0, !dbg !4719
  br i1 %2, label %6, label %3, !dbg !4721

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #19, !dbg !4722
  call void @llvm.dbg.value(metadata i8* %4, metadata !4716, metadata !DIExpression()) #19, !dbg !4717
  %5 = icmp eq i8* %4, null, !dbg !4723
  br i1 %5, label %6, label %7, !dbg !4724

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !4725
  unreachable, !dbg !4725

7:                                                ; preds = %3
  ret i8* %4, !dbg !4726
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4713 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4712, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata i64 %1, metadata !4715, metadata !DIExpression()), !dbg !4727
  %3 = udiv i64 9223372036854775807, %1, !dbg !4728
  %4 = icmp ult i64 %3, %0, !dbg !4728
  br i1 %4, label %8, label %5, !dbg !4729

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #19, !dbg !4730
  call void @llvm.dbg.value(metadata i8* %6, metadata !4716, metadata !DIExpression()), !dbg !4727
  %7 = icmp eq i8* %6, null, !dbg !4731
  br i1 %7, label %8, label %9, !dbg !4732

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !4733
  unreachable, !dbg !4733

9:                                                ; preds = %5
  ret i8* %6, !dbg !4734
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4735 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4737, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i64 %1, metadata !4738, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i64 %1, metadata !4550, metadata !DIExpression()) #19, !dbg !4740
  %3 = tail call noalias i8* @malloc(i64 %1) #19, !dbg !4742
  call void @llvm.dbg.value(metadata i8* %3, metadata !4555, metadata !DIExpression()) #19, !dbg !4740
  %4 = icmp eq i8* %3, null, !dbg !4743
  %5 = icmp ne i64 %1, 0, !dbg !4744
  %6 = and i1 %5, %4, !dbg !4745
  br i1 %6, label %7, label %8, !dbg !4745

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !4746
  unreachable, !dbg !4746

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4747, metadata !DIExpression()) #19, !dbg !4752
  call void @llvm.dbg.value(metadata i8* %0, metadata !4750, metadata !DIExpression()) #19, !dbg !4752
  call void @llvm.dbg.value(metadata i64 %1, metadata !4751, metadata !DIExpression()) #19, !dbg !4752
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #19, !dbg !4754
  ret i8* %3, !dbg !4755
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4756 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4758, metadata !DIExpression()), !dbg !4759
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !4760
  %3 = add i64 %2, 1, !dbg !4761
  call void @llvm.dbg.value(metadata i8* %0, metadata !4737, metadata !DIExpression()) #19, !dbg !4762
  call void @llvm.dbg.value(metadata i64 %3, metadata !4738, metadata !DIExpression()) #19, !dbg !4762
  call void @llvm.dbg.value(metadata i64 %3, metadata !4550, metadata !DIExpression()) #19, !dbg !4764
  %4 = tail call noalias i8* @malloc(i64 %3) #19, !dbg !4766
  call void @llvm.dbg.value(metadata i8* %4, metadata !4555, metadata !DIExpression()) #19, !dbg !4764
  %5 = icmp eq i8* %4, null, !dbg !4767
  %6 = icmp ne i64 %3, 0, !dbg !4768
  %7 = and i1 %6, %5, !dbg !4769
  br i1 %7, label %8, label %9, !dbg !4769

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !4770
  unreachable, !dbg !4770

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4747, metadata !DIExpression()) #19, !dbg !4771
  call void @llvm.dbg.value(metadata i8* %0, metadata !4750, metadata !DIExpression()) #19, !dbg !4771
  call void @llvm.dbg.value(metadata i64 %3, metadata !4751, metadata !DIExpression()) #19, !dbg !4771
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #19, !dbg !4773
  ret i8* %4, !dbg !4774
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4775 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4776, !tbaa !1556
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.162, i64 0, i64 0), i32 5) #19, !dbg !4777
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i64 0, i64 0), i8* %2) #19, !dbg !4778
  tail call void @abort() #22, !dbg !4779
  unreachable, !dbg !4779
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #13 !dbg !4780 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4782, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i64 %1, metadata !4783, metadata !DIExpression()), !dbg !4788
  %3 = icmp eq i64 %0, 0, !dbg !4789
  %4 = icmp eq i64 %1, 0, !dbg !4790
  %5 = or i1 %3, %4, !dbg !4791
  br i1 %5, label %11, label %6, !dbg !4791

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4785, metadata !DIExpression()), !dbg !4792
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4793
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4793
  br i1 %8, label %9, label %11, !dbg !4795

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !4796
  store i32 12, i32* %10, align 4, !dbg !4798, !tbaa !1556
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4782, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i64 %12, metadata !4783, metadata !DIExpression()), !dbg !4788
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #19, !dbg !4799
  call void @llvm.dbg.value(metadata i8* %14, metadata !4784, metadata !DIExpression()), !dbg !4788
  br label %15, !dbg !4800

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4788
  ret i8* %16, !dbg !4801
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4802 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4808, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i32 0, metadata !4809, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i32 0, metadata !4811, metadata !DIExpression()), !dbg !4812
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !4813
  call void @llvm.dbg.value(metadata i32 %2, metadata !4810, metadata !DIExpression()), !dbg !4812
  %3 = icmp slt i32 %2, 0, !dbg !4814
  br i1 %3, label %4, label %6, !dbg !4816

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4817
  br label %24, !dbg !4818

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !4819
  %8 = icmp eq i32 %7, 0, !dbg !4819
  br i1 %8, label %13, label %9, !dbg !4821

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !4822
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #19, !dbg !4823
  %12 = icmp eq i64 %11, -1, !dbg !4824
  br i1 %12, label %16, label %13, !dbg !4825

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #19, !dbg !4826
  %15 = icmp eq i32 %14, 0, !dbg !4826
  br i1 %15, label %16, label %18, !dbg !4827

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4809, metadata !DIExpression()), !dbg !4812
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4828
  call void @llvm.dbg.value(metadata i32 %21, metadata !4811, metadata !DIExpression()), !dbg !4812
  br label %24, !dbg !4829

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !4830
  %20 = load i32, i32* %19, align 4, !dbg !4830, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %20, metadata !4809, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i32 %20, metadata !4809, metadata !DIExpression()), !dbg !4812
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4828
  call void @llvm.dbg.value(metadata i32 %21, metadata !4811, metadata !DIExpression()), !dbg !4812
  %22 = icmp eq i32 %20, 0, !dbg !4831
  br i1 %22, label %24, label %23, !dbg !4829

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4833, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 -1, metadata !4811, metadata !DIExpression()), !dbg !4812
  br label %24, !dbg !4835

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4812
  ret i32 %25, !dbg !4836
}

; Function Attrs: nofree nounwind
declare !dbg !761 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !762 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32 %0, i32 %1, ...) local_unnamed_addr #8 !dbg !4837 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4839, metadata !DIExpression()), !dbg !4863
  call void @llvm.dbg.value(metadata i32 %1, metadata !4840, metadata !DIExpression()), !dbg !4863
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4864
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #19, !dbg !4864
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4841, metadata !DIExpression()), !dbg !4865
  call void @llvm.dbg.value(metadata i32 -1, metadata !4851, metadata !DIExpression()), !dbg !4863
  call void @llvm.va_start(i8* nonnull %4), !dbg !4866
  switch i32 %1, label %97 [
    i32 0, label %5
    i32 1030, label %24
    i32 1, label %76
    i32 3, label %76
    i32 1025, label %76
    i32 9, label %76
    i32 1032, label %76
    i32 1034, label %76
    i32 11, label %76
    i32 1033, label %78
    i32 1031, label %78
    i32 10, label %78
    i32 1026, label %78
    i32 2, label %78
    i32 4, label %78
    i32 1024, label %78
    i32 8, label %78
  ], !dbg !4867

5:                                                ; preds = %2
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4868
  %7 = load i32, i32* %6, align 16, !dbg !4868
  %8 = icmp ult i32 %7, 41, !dbg !4868
  br i1 %8, label %9, label %15, !dbg !4868

9:                                                ; preds = %5
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4868
  %11 = load i8*, i8** %10, align 16, !dbg !4868
  %12 = zext i32 %7 to i64, !dbg !4868
  %13 = getelementptr i8, i8* %11, i64 %12, !dbg !4868
  %14 = add nuw nsw i32 %7, 8, !dbg !4868
  store i32 %14, i32* %6, align 16, !dbg !4868
  br label %19, !dbg !4868

15:                                               ; preds = %5
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4868
  %17 = load i8*, i8** %16, align 8, !dbg !4868
  %18 = getelementptr i8, i8* %17, i64 8, !dbg !4868
  store i8* %18, i8** %16, align 8, !dbg !4868
  br label %19, !dbg !4868

19:                                               ; preds = %15, %9
  %20 = phi i8* [ %13, %9 ], [ %17, %15 ]
  %21 = bitcast i8* %20 to i32*, !dbg !4868
  %22 = load i32, i32* %21, align 4, !dbg !4868
  call void @llvm.dbg.value(metadata i32 %22, metadata !4852, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i32 %0, metadata !4870, metadata !DIExpression()) #19, !dbg !4875
  call void @llvm.dbg.value(metadata i32 %22, metadata !4873, metadata !DIExpression()) #19, !dbg !4875
  %23 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %22) #19, !dbg !4877
  call void @llvm.dbg.value(metadata i32 %23, metadata !4874, metadata !DIExpression()) #19, !dbg !4875
  call void @llvm.dbg.value(metadata i32 %23, metadata !4851, metadata !DIExpression()), !dbg !4863
  br label %116

24:                                               ; preds = %2
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4878
  %26 = load i32, i32* %25, align 16, !dbg !4878
  %27 = icmp ult i32 %26, 41, !dbg !4878
  br i1 %27, label %28, label %34, !dbg !4878

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4878
  %30 = load i8*, i8** %29, align 16, !dbg !4878
  %31 = zext i32 %26 to i64, !dbg !4878
  %32 = getelementptr i8, i8* %30, i64 %31, !dbg !4878
  %33 = add nuw nsw i32 %26, 8, !dbg !4878
  store i32 %33, i32* %25, align 16, !dbg !4878
  br label %38, !dbg !4878

34:                                               ; preds = %24
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4878
  %36 = load i8*, i8** %35, align 8, !dbg !4878
  %37 = getelementptr i8, i8* %36, i64 8, !dbg !4878
  store i8* %37, i8** %35, align 8, !dbg !4878
  br label %38, !dbg !4878

38:                                               ; preds = %34, %28
  %39 = phi i8* [ %32, %28 ], [ %36, %34 ]
  %40 = bitcast i8* %39 to i32*, !dbg !4878
  %41 = load i32, i32* %40, align 4, !dbg !4878
  call void @llvm.dbg.value(metadata i32 %41, metadata !4855, metadata !DIExpression()), !dbg !4879
  call void @llvm.dbg.value(metadata i32 %0, metadata !554, metadata !DIExpression()) #19, !dbg !4880
  call void @llvm.dbg.value(metadata i32 %41, metadata !555, metadata !DIExpression()) #19, !dbg !4880
  %42 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4882, !tbaa !1556
  %43 = icmp sgt i32 %42, -1, !dbg !4884
  br i1 %43, label %44, label %56, !dbg !4885

44:                                               ; preds = %38
  %45 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %41) #19, !dbg !4886
  call void @llvm.dbg.value(metadata i32 %45, metadata !556, metadata !DIExpression()) #19, !dbg !4880
  %46 = icmp sgt i32 %45, -1, !dbg !4888
  br i1 %46, label %51, label %47, !dbg !4890

47:                                               ; preds = %44
  %48 = tail call i32* @__errno_location() #24, !dbg !4891
  %49 = load i32, i32* %48, align 4, !dbg !4891, !tbaa !1556
  %50 = icmp eq i32 %49, 22, !dbg !4892
  br i1 %50, label %52, label %51, !dbg !4893

51:                                               ; preds = %47, %44
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4894, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %62, metadata !556, metadata !DIExpression()) #19, !dbg !4880
  br label %116, !dbg !4896

52:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 %0, metadata !4870, metadata !DIExpression()) #19, !dbg !4897
  call void @llvm.dbg.value(metadata i32 %41, metadata !4873, metadata !DIExpression()) #19, !dbg !4897
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #19, !dbg !4900
  call void @llvm.dbg.value(metadata i32 %53, metadata !4874, metadata !DIExpression()) #19, !dbg !4897
  call void @llvm.dbg.value(metadata i32 %53, metadata !556, metadata !DIExpression()) #19, !dbg !4880
  %54 = icmp sgt i32 %53, -1, !dbg !4901
  br i1 %54, label %55, label %116, !dbg !4903

55:                                               ; preds = %52
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4904, !tbaa !1556
  br label %60, !dbg !4905

56:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !4870, metadata !DIExpression()) #19, !dbg !4906
  call void @llvm.dbg.value(metadata i32 %41, metadata !4873, metadata !DIExpression()) #19, !dbg !4906
  %57 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #19, !dbg !4908
  call void @llvm.dbg.value(metadata i32 %57, metadata !4874, metadata !DIExpression()) #19, !dbg !4906
  call void @llvm.dbg.value(metadata i32 %57, metadata !556, metadata !DIExpression()) #19, !dbg !4880
  %58 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4909
  %59 = icmp eq i32 %58, -1
  br label %60

60:                                               ; preds = %56, %55
  %61 = phi i1 [ true, %55 ], [ %59, %56 ]
  %62 = phi i32 [ %53, %55 ], [ %57, %56 ], !dbg !4910
  call void @llvm.dbg.value(metadata i32 %62, metadata !556, metadata !DIExpression()) #19, !dbg !4880
  %63 = icmp sgt i32 %62, -1, !dbg !4911
  %64 = and i1 %61, %63, !dbg !4896
  br i1 %64, label %65, label %116, !dbg !4896

65:                                               ; preds = %60
  %66 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 1) #19, !dbg !4912
  call void @llvm.dbg.value(metadata i32 %66, metadata !557, metadata !DIExpression()) #19, !dbg !4913
  %67 = icmp slt i32 %66, 0, !dbg !4914
  br i1 %67, label %72, label %68, !dbg !4915

68:                                               ; preds = %65
  %69 = or i32 %66, 1, !dbg !4916
  %70 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 2, i32 %69) #19, !dbg !4917
  %71 = icmp eq i32 %70, -1, !dbg !4918
  br i1 %71, label %72, label %116, !dbg !4919

72:                                               ; preds = %68, %65
  %73 = tail call i32* @__errno_location() #24, !dbg !4920
  %74 = load i32, i32* %73, align 4, !dbg !4920, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 %74, metadata !560, metadata !DIExpression()) #19, !dbg !4921
  %75 = call i32 @close(i32 %62) #19, !dbg !4922
  store i32 %74, i32* %73, align 4, !dbg !4923, !tbaa !1556
  call void @llvm.dbg.value(metadata i32 -1, metadata !556, metadata !DIExpression()) #19, !dbg !4880
  br label %116, !dbg !4924

76:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %77 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1) #19, !dbg !4925
  call void @llvm.dbg.value(metadata i32 %77, metadata !4851, metadata !DIExpression()), !dbg !4863
  br label %116, !dbg !4926

78:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4927
  %80 = load i32, i32* %79, align 16, !dbg !4927
  %81 = icmp ult i32 %80, 41, !dbg !4927
  br i1 %81, label %82, label %88, !dbg !4927

82:                                               ; preds = %78
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4927
  %84 = load i8*, i8** %83, align 16, !dbg !4927
  %85 = zext i32 %80 to i64, !dbg !4927
  %86 = getelementptr i8, i8* %84, i64 %85, !dbg !4927
  %87 = add nuw nsw i32 %80, 8, !dbg !4927
  store i32 %87, i32* %79, align 16, !dbg !4927
  br label %92, !dbg !4927

88:                                               ; preds = %78
  %89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4927
  %90 = load i8*, i8** %89, align 8, !dbg !4927
  %91 = getelementptr i8, i8* %90, i64 8, !dbg !4927
  store i8* %91, i8** %89, align 8, !dbg !4927
  br label %92, !dbg !4927

92:                                               ; preds = %88, %82
  %93 = phi i8* [ %86, %82 ], [ %90, %88 ]
  %94 = bitcast i8* %93 to i32*, !dbg !4927
  %95 = load i32, i32* %94, align 4, !dbg !4927
  call void @llvm.dbg.value(metadata i32 %95, metadata !4857, metadata !DIExpression()), !dbg !4928
  %96 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i32 %95) #19, !dbg !4929
  call void @llvm.dbg.value(metadata i32 %96, metadata !4851, metadata !DIExpression()), !dbg !4863
  br label %116, !dbg !4930

97:                                               ; preds = %2
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4931
  %99 = load i32, i32* %98, align 16, !dbg !4931
  %100 = icmp ult i32 %99, 41, !dbg !4931
  br i1 %100, label %101, label %107, !dbg !4931

101:                                              ; preds = %97
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4931
  %103 = load i8*, i8** %102, align 16, !dbg !4931
  %104 = zext i32 %99 to i64, !dbg !4931
  %105 = getelementptr i8, i8* %103, i64 %104, !dbg !4931
  %106 = add nuw nsw i32 %99, 8, !dbg !4931
  store i32 %106, i32* %98, align 16, !dbg !4931
  br label %111, !dbg !4931

107:                                              ; preds = %97
  %108 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4931
  %109 = load i8*, i8** %108, align 8, !dbg !4931
  %110 = getelementptr i8, i8* %109, i64 8, !dbg !4931
  store i8* %110, i8** %108, align 8, !dbg !4931
  br label %111, !dbg !4931

111:                                              ; preds = %107, %101
  %112 = phi i8* [ %105, %101 ], [ %109, %107 ]
  %113 = bitcast i8* %112 to i8**, !dbg !4931
  %114 = load i8*, i8** %113, align 8, !dbg !4931
  call void @llvm.dbg.value(metadata i8* %114, metadata !4861, metadata !DIExpression()), !dbg !4932
  %115 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %114) #19, !dbg !4933
  call void @llvm.dbg.value(metadata i32 %115, metadata !4851, metadata !DIExpression()), !dbg !4863
  br label %116, !dbg !4934

116:                                              ; preds = %72, %68, %60, %52, %51, %76, %92, %111, %19
  %117 = phi i32 [ %115, %111 ], [ %96, %92 ], [ %77, %76 ], [ %23, %19 ], [ %62, %60 ], [ -1, %72 ], [ %62, %68 ], [ %53, %52 ], [ %45, %51 ], !dbg !4935
  call void @llvm.dbg.value(metadata i32 %117, metadata !4851, metadata !DIExpression()), !dbg !4863
  call void @llvm.va_end(i8* nonnull %4), !dbg !4936
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #19, !dbg !4937
  ret i32 %117, !dbg !4938
}

declare !dbg !544 i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4939 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4945, metadata !DIExpression()), !dbg !4946
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4947
  br i1 %2, label %6, label %3, !dbg !4949

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !4950
  %5 = icmp eq i32 %4, 0, !dbg !4950
  br i1 %5, label %6, label %8, !dbg !4951

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4952
  br label %17, !dbg !4953

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4954, metadata !DIExpression()) #19, !dbg !4959
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4961
  %10 = load i32, i32* %9, align 8, !dbg !4961, !tbaa !1974
  %11 = and i32 %10, 256, !dbg !4963
  %12 = icmp eq i32 %11, 0, !dbg !4963
  br i1 %12, label %15, label %13, !dbg !4964

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #19, !dbg !4965
  br label %15, !dbg !4965

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4966
  br label %17, !dbg !4967

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4946
  ret i32 %18, !dbg !4968
}

; Function Attrs: nofree nounwind
declare !dbg !769 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4969 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4975, metadata !DIExpression()), !dbg !4981
  call void @llvm.dbg.value(metadata i64 %1, metadata !4976, metadata !DIExpression()), !dbg !4981
  call void @llvm.dbg.value(metadata i32 %2, metadata !4977, metadata !DIExpression()), !dbg !4981
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4982
  %5 = load i8*, i8** %4, align 8, !dbg !4982, !tbaa !4983
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4984
  %7 = load i8*, i8** %6, align 8, !dbg !4984, !tbaa !4985
  %8 = icmp eq i8* %5, %7, !dbg !4986
  br i1 %8, label %9, label %28, !dbg !4987

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4988
  %11 = load i8*, i8** %10, align 8, !dbg !4988, !tbaa !1910
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4989
  %13 = load i8*, i8** %12, align 8, !dbg !4989, !tbaa !4990
  %14 = icmp eq i8* %11, %13, !dbg !4991
  br i1 %14, label %15, label %28, !dbg !4992

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4993
  %17 = load i8*, i8** %16, align 8, !dbg !4993, !tbaa !4994
  %18 = icmp eq i8* %17, null, !dbg !4995
  br i1 %18, label %19, label %28, !dbg !4996

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !4997
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #19, !dbg !4998
  call void @llvm.dbg.value(metadata i64 %21, metadata !4978, metadata !DIExpression()), !dbg !4999
  %22 = icmp eq i64 %21, -1, !dbg !5000
  br i1 %22, label %30, label %23, !dbg !5002

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5003
  %25 = load i32, i32* %24, align 8, !dbg !5004, !tbaa !1974
  %26 = and i32 %25, -17, !dbg !5004
  store i32 %26, i32* %24, align 8, !dbg !5004, !tbaa !1974
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5005
  store i64 %21, i64* %27, align 8, !dbg !5006, !tbaa !5007
  br label %30, !dbg !5008

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5009
  br label %30, !dbg !5010

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4981
  ret i32 %31, !dbg !5011
}

; Function Attrs: nofree nounwind
declare !dbg !845 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !5012 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !5020, metadata !DIExpression()), !dbg !5029
  call void @llvm.dbg.value(metadata i8* %1, metadata !5021, metadata !DIExpression()), !dbg !5029
  call void @llvm.dbg.value(metadata i64 %2, metadata !5022, metadata !DIExpression()), !dbg !5029
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !5023, metadata !DIExpression()), !dbg !5029
  %6 = bitcast i32* %5 to i8*, !dbg !5030
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #19, !dbg !5030
  %7 = icmp eq i32* %0, null, !dbg !5031
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5033
  call void @llvm.dbg.value(metadata i32* %8, metadata !5020, metadata !DIExpression()), !dbg !5029
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #19, !dbg !5034
  call void @llvm.dbg.value(metadata i64 %9, metadata !5024, metadata !DIExpression()), !dbg !5029
  %10 = icmp ugt i64 %9, -3, !dbg !5035
  %11 = icmp ne i64 %2, 0, !dbg !5036
  %12 = and i1 %11, %10, !dbg !5037
  br i1 %12, label %13, label %18, !dbg !5037

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #19, !dbg !5038
  br i1 %14, label %18, label %15, !dbg !5039

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5040, !tbaa !1646
  call void @llvm.dbg.value(metadata i8 %16, metadata !5026, metadata !DIExpression()), !dbg !5041
  %17 = zext i8 %16 to i32, !dbg !5042
  store i32 %17, i32* %8, align 4, !dbg !5043, !tbaa !1556
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !5029
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #19, !dbg !5044
  ret i64 %19, !dbg !5044
}

; Function Attrs: nounwind
declare !dbg !851 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !5045 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5051, metadata !DIExpression()), !dbg !5056
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #19, !dbg !5057
  call void @llvm.dbg.value(metadata i1 undef, metadata !5052, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5058, metadata !DIExpression()), !dbg !5061
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5063
  %4 = load i32, i32* %3, align 8, !dbg !5063, !tbaa !1974
  %5 = and i32 %4, 32, !dbg !5063
  %6 = icmp eq i32 %5, 0, !dbg !5064
  call void @llvm.dbg.value(metadata i1 %6, metadata !5054, metadata !DIExpression()), !dbg !5056
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #19, !dbg !5065
  %8 = icmp ne i32 %7, 0, !dbg !5066
  call void @llvm.dbg.value(metadata i1 %8, metadata !5055, metadata !DIExpression()), !dbg !5056
  br i1 %6, label %9, label %19, !dbg !5067

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !5069
  call void @llvm.dbg.value(metadata i1 %10, metadata !5052, metadata !DIExpression()), !dbg !5056
  %11 = xor i1 %8, true, !dbg !5070
  %12 = or i1 %10, %11, !dbg !5070
  %13 = sext i1 %8 to i32, !dbg !5070
  br i1 %12, label %22, label %14, !dbg !5070

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !5071
  %16 = load i32, i32* %15, align 4, !dbg !5071, !tbaa !1556
  %17 = icmp ne i32 %16, 9, !dbg !5072
  %18 = sext i1 %17 to i32, !dbg !5073
  br label %22, !dbg !5073

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5074

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !5076
  store i32 0, i32* %21, align 4, !dbg !5078, !tbaa !1556
  br label %22, !dbg !5076

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !5056
  ret i32 %23, !dbg !5079
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !5080 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5082, metadata !DIExpression()), !dbg !5087
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !5088
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #19, !dbg !5088
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !5083, metadata !DIExpression()), !dbg !5089
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #19, !dbg !5090
  %5 = icmp eq i32 %4, 0, !dbg !5090
  br i1 %5, label %6, label %13, !dbg !5092

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !5093
  %8 = load i16, i16* %7, align 16, !dbg !5093
  %9 = icmp eq i16 %8, 67, !dbg !5093
  br i1 %9, label %13, label %10, !dbg !5094

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.180, i64 0, i64 0), i64 6), !dbg !5095
  %12 = icmp ne i32 %11, 0, !dbg !5096
  br label %13, !dbg !5094

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !5087
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #19, !dbg !5097
  ret i1 %14, !dbg !5097
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !5098 {
  %1 = tail call i8* @nl_langinfo(i32 14) #19, !dbg !5101
  call void @llvm.dbg.value(metadata i8* %1, metadata !5100, metadata !DIExpression()), !dbg !5102
  %2 = icmp eq i8* %1, null, !dbg !5103
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.183, i64 0, i64 0), i8* %1, !dbg !5105
  call void @llvm.dbg.value(metadata i8* %3, metadata !5100, metadata !DIExpression()), !dbg !5102
  %4 = load i8, i8* %3, align 1, !dbg !5106, !tbaa !1646
  %5 = icmp eq i8 %4, 0, !dbg !5110
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.184, i64 0, i64 0), i8* %3, !dbg !5111
  call void @llvm.dbg.value(metadata i8* %6, metadata !5100, metadata !DIExpression()), !dbg !5102
  ret i8* %6, !dbg !5112
}

; Function Attrs: nounwind
declare !dbg !1302 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !5113 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5117, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata i8* %1, metadata !5118, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata i64 %2, metadata !5119, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata i32 %0, metadata !5121, metadata !DIExpression()) #19, !dbg !5130
  call void @llvm.dbg.value(metadata i8* %1, metadata !5124, metadata !DIExpression()) #19, !dbg !5130
  call void @llvm.dbg.value(metadata i64 %2, metadata !5125, metadata !DIExpression()) #19, !dbg !5130
  call void @llvm.dbg.value(metadata i32 %0, metadata !5132, metadata !DIExpression()) #19, !dbg !5138
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !5140
  call void @llvm.dbg.value(metadata i8* %4, metadata !5137, metadata !DIExpression()) #19, !dbg !5138
  call void @llvm.dbg.value(metadata i8* %4, metadata !5126, metadata !DIExpression()) #19, !dbg !5130
  %5 = icmp eq i8* %4, null, !dbg !5141
  br i1 %5, label %6, label %9, !dbg !5142

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5143
  br i1 %7, label %19, label %8, !dbg !5146

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !5147, !tbaa !1646
  br label %19, !dbg !5148

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !5149
  call void @llvm.dbg.value(metadata i64 %10, metadata !5127, metadata !DIExpression()) #19, !dbg !5150
  %11 = icmp ult i64 %10, %2, !dbg !5151
  br i1 %11, label %12, label %14, !dbg !5153

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5154
  call void @llvm.dbg.value(metadata i8* %1, metadata !5156, metadata !DIExpression()) #19, !dbg !5161
  call void @llvm.dbg.value(metadata i8* %4, metadata !5159, metadata !DIExpression()) #19, !dbg !5161
  call void @llvm.dbg.value(metadata i64 %13, metadata !5160, metadata !DIExpression()) #19, !dbg !5161
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #19, !dbg !5163
  br label %19, !dbg !5164

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5165
  br i1 %15, label %19, label %16, !dbg !5168

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5169
  call void @llvm.dbg.value(metadata i8* %1, metadata !5156, metadata !DIExpression()) #19, !dbg !5171
  call void @llvm.dbg.value(metadata i8* %4, metadata !5159, metadata !DIExpression()) #19, !dbg !5171
  call void @llvm.dbg.value(metadata i64 %17, metadata !5160, metadata !DIExpression()) #19, !dbg !5171
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #19, !dbg !5173
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !5174
  store i8 0, i8* %18, align 1, !dbg !5175, !tbaa !1646
  br label %19, !dbg !5176

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !5177
  ret i32 %20, !dbg !5178
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !5179 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5181, metadata !DIExpression()), !dbg !5182
  call void @llvm.dbg.value(metadata i32 %0, metadata !5132, metadata !DIExpression()) #19, !dbg !5183
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !5185
  call void @llvm.dbg.value(metadata i8* %2, metadata !5137, metadata !DIExpression()) #19, !dbg !5183
  ret i8* %2, !dbg !5186
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
attributes #12 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree nounwind }
attributes #15 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nounwind readonly }
attributes #18 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nounwind }
attributes #20 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nounwind readonly }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { nounwind readnone }
attributes #25 = { cold }

!llvm.dbg.cu = !{!2, !290, !295, !340, !376, !563, !605, !382, !423, !649, !654, !530, !696, !717, !720, !723, !542, !766, !807, !848, !867, !905, !912, !1305}
!llvm.ident = !{!1308, !1308, !1308, !1308, !1308, !1308, !1308, !1308, !1308, !1308, !1308, !1308, !1308, !1308, !1308, !1308, !1308, !1308, !1308, !1308, !1308, !1308, !1308, !1308}
!llvm.module.flags = !{!1309, !1310, !1311, !1312, !1313}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 202, type: !276, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !58, globals: !201, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/md5sum.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20, !35, !49}
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 46, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!23 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!34 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !37, file: !36, line: 187, baseType: !7, size: 32, elements: !47)
!36 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!37 = distinct !DISubprogram(name: "select_plural", scope: !36, file: !36, line: 183, type: !38, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !45)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !41}
!40 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !42, line: 102, baseType: !43)
!42 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !44, line: 73, baseType: !40)
!44 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!45 = !{!46}
!46 = !DILocalVariable(name: "n", arg: 1, scope: !37, file: !36, line: 183, type: !41)
!47 = !{!48}
!48 = !DIEnumerator(name: "PLURAL_REDUCER", value: 1000000, isUnsigned: true)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 45, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!51 = !{!52, !53, !54, !55, !56, !57}
!52 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!54 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!55 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!56 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!58 = !{!59, !69, !128, !132, !136, !139, !142, !149, !152, !63, !119, !167, !171, !175, !121, !179, !183, !67, !186, !189, !192, !99, !194, !197, !193}
!59 = !DISubprogram(name: "dcgettext", scope: !60, file: !60, line: 51, type: !61, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!60 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !65, !65, !67}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !{}
!69 = !DISubprogram(name: "fputs_unlocked", scope: !70, file: !70, line: 662, type: !71, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!70 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!71 = !DISubroutineType(types: !72)
!72 = !{!67, !65, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !76)
!75 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !92, !93, !94, !95, !98, !100, !102, !106, !109, !111, !114, !117, !118, !120, !123, !124}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !74, file: !75, line: 51, baseType: !67, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !74, file: !75, line: 54, baseType: !63, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !74, file: !75, line: 55, baseType: !63, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !74, file: !75, line: 56, baseType: !63, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !74, file: !75, line: 57, baseType: !63, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !74, file: !75, line: 58, baseType: !63, size: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !74, file: !75, line: 59, baseType: !63, size: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !74, file: !75, line: 60, baseType: !63, size: 64, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !74, file: !75, line: 61, baseType: !63, size: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !74, file: !75, line: 64, baseType: !63, size: 64, offset: 576)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !74, file: !75, line: 65, baseType: !63, size: 64, offset: 640)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !74, file: !75, line: 66, baseType: !63, size: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !74, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !75, line: 36, flags: DIFlagFwdDecl)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !74, file: !75, line: 70, baseType: !73, size: 64, offset: 832)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !74, file: !75, line: 72, baseType: !67, size: 32, offset: 896)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !74, file: !75, line: 73, baseType: !67, size: 32, offset: 928)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !74, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !44, line: 152, baseType: !97)
!97 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !74, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!99 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !74, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!101 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !74, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 8, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 1)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !74, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !75, line: 43, baseType: null)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !74, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !44, line: 153, baseType: !97)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !74, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !75, line: 37, flags: DIFlagFwdDecl)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !74, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !75, line: 38, flags: DIFlagFwdDecl)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !74, file: !75, line: 93, baseType: !73, size: 64, offset: 1344)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !74, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !74, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !122, line: 46, baseType: !40)
!122 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !74, file: !75, line: 96, baseType: !67, size: 32, offset: 1536)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !74, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 160, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 20)
!128 = !DISubprogram(name: "set_program_name", scope: !129, file: !129, line: 37, type: !130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!129 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!130 = !DISubroutineType(types: !131)
!131 = !{null, !65}
!132 = !DISubprogram(name: "setlocale", scope: !133, file: !133, line: 122, type: !134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!133 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!134 = !DISubroutineType(types: !135)
!135 = !{!63, !67, !65}
!136 = !DISubprogram(name: "bindtextdomain", scope: !60, file: !60, line: 86, type: !137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!137 = !DISubroutineType(types: !138)
!138 = !{!63, !65, !65}
!139 = !DISubprogram(name: "textdomain", scope: !60, file: !60, line: 82, type: !140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!140 = !DISubroutineType(types: !141)
!141 = !{!63, !65}
!142 = !DISubprogram(name: "atexit", scope: !143, file: !143, line: 595, type: !144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!143 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!144 = !DISubroutineType(types: !145)
!145 = !{!67, !146}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{null}
!149 = !DISubprogram(name: "setvbuf", scope: !70, file: !70, line: 308, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!150 = !DISubroutineType(types: !151)
!151 = !{!67, !73, !63, !67, !40}
!152 = !DISubprogram(name: "getopt_long", scope: !153, file: !153, line: 66, type: !154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!153 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!154 = !DISubroutineType(types: !155)
!155 = !{!67, !67, !156, !65, !158, !165}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !153, line: 50, size: 256, elements: !161)
!161 = !{!162, !163, !164, !166}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !160, file: !153, line: 52, baseType: !65, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !160, file: !153, line: 55, baseType: !67, size: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !160, file: !153, line: 56, baseType: !165, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !160, file: !153, line: 57, baseType: !67, size: 32, offset: 192)
!167 = !DISubprogram(name: "version_etc", scope: !168, file: !168, line: 69, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!168 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!169 = !DISubroutineType(types: !170)
!170 = !{null, !73, !65, !65, !65, null}
!171 = !DISubprogram(name: "error", scope: !172, file: !172, line: 52, type: !173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!172 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!173 = !DISubroutineType(types: !174)
!174 = !{null, !67, !67, !65, null}
!175 = !DISubprogram(name: "rpl_fclose", scope: !176, file: !176, line: 672, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!176 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!177 = !DISubroutineType(types: !178)
!178 = !{!67, !73}
!179 = !DISubprogram(name: "fopen_safer", scope: !180, file: !180, line: 23, type: !181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!180 = !DIFile(filename: "./lib/stdio-safer.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!181 = !DISubroutineType(types: !182)
!182 = !{!73, !65, !65}
!183 = !DISubprogram(name: "quotearg_n_style_colon", scope: !6, file: !6, line: 397, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!184 = !DISubroutineType(types: !185)
!185 = !{!63, !67, !5, !65}
!186 = !DISubprogram(name: "free", scope: !143, file: !143, line: 565, type: !187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !119}
!189 = !DISubprogram(name: "dcngettext", scope: !60, file: !60, line: 73, type: !190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!190 = !DISubroutineType(types: !191)
!191 = !{!63, !65, !65, !65, !40, !67}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!194 = !DISubprogram(name: "fadvise", scope: !50, file: !50, line: 72, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !73, !49}
!197 = !DISubprogram(name: "md5_stream", scope: !198, file: !198, line: 133, type: !199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!198 = !DIFile(filename: "./lib/md5.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!199 = !DISubroutineType(types: !200)
!200 = !{!67, !73, !119}
!201 = !{!202, !205, !207, !0, !209, !211, !213, !215, !217, !219, !221, !274}
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 131, type: !204, isLocal: true, isDefinition: true)
!204 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "min_digest_line_length", scope: !2, file: !3, line: 134, type: !121, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "digest_hex_bytes", scope: !2, file: !3, line: 137, type: !121, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "status_only", scope: !2, file: !3, line: 141, type: !204, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "warn", scope: !2, file: !3, line: 145, type: !204, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "quiet", scope: !2, file: !3, line: 151, type: !204, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "ignore_missing", scope: !2, file: !3, line: 148, type: !204, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "strict", scope: !2, file: !3, line: 155, type: !204, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "delim", scope: !2, file: !3, line: 161, type: !193, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "bin2hex", scope: !223, file: !3, line: 730, type: !271, isLocal: true, isDefinition: true)
!223 = distinct !DISubprogram(name: "digest_check", scope: !3, file: !3, line: 652, type: !224, scopeLine: 653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !226)
!224 = !DISubroutineType(types: !225)
!225 = !{!204, !65}
!226 = !{!227, !228, !232, !233, !234, !235, !236, !237, !238, !240, !241, !242, !243, !244, !245, !247, !248, !249, !253, !256, !257, !258, !262, !263, !269}
!227 = !DILocalVariable(name: "checkfile_name", arg: 1, scope: !223, file: !3, line: 652, type: !65)
!228 = !DILocalVariable(name: "checkfile_stream", scope: !223, file: !3, line: 654, type: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !74)
!231 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!232 = !DILocalVariable(name: "n_misformatted_lines", scope: !223, file: !3, line: 655, type: !41)
!233 = !DILocalVariable(name: "n_improperly_formatted_lines", scope: !223, file: !3, line: 656, type: !41)
!234 = !DILocalVariable(name: "n_mismatched_checksums", scope: !223, file: !3, line: 657, type: !41)
!235 = !DILocalVariable(name: "n_open_or_read_failures", scope: !223, file: !3, line: 658, type: !41)
!236 = !DILocalVariable(name: "properly_formatted_lines", scope: !223, file: !3, line: 659, type: !204)
!237 = !DILocalVariable(name: "matched_checksums", scope: !223, file: !3, line: 660, type: !204)
!238 = !DILocalVariable(name: "bin_buffer_unaligned", scope: !223, file: !3, line: 661, type: !239)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 160, elements: !126)
!240 = !DILocalVariable(name: "bin_buffer", scope: !223, file: !3, line: 663, type: !192)
!241 = !DILocalVariable(name: "line_number", scope: !223, file: !3, line: 664, type: !41)
!242 = !DILocalVariable(name: "line", scope: !223, file: !3, line: 665, type: !63)
!243 = !DILocalVariable(name: "line_chars_allocated", scope: !223, file: !3, line: 666, type: !121)
!244 = !DILocalVariable(name: "is_stdin", scope: !223, file: !3, line: 667, type: !204)
!245 = !DILocalVariable(name: "filename", scope: !246, file: !3, line: 690, type: !63)
!246 = distinct !DILexicalBlock(scope: !223, file: !3, line: 689, column: 5)
!247 = !DILocalVariable(name: "binary", scope: !246, file: !3, line: 691, type: !67)
!248 = !DILocalVariable(name: "hex_digest", scope: !246, file: !3, line: 692, type: !192)
!249 = !DILocalVariable(name: "line_length", scope: !246, file: !3, line: 693, type: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !251, line: 108, baseType: !252)
!251 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !44, line: 193, baseType: !97)
!253 = !DILocalVariable(name: "ok", scope: !254, file: !3, line: 734, type: !204)
!254 = distinct !DILexicalBlock(scope: !255, file: !3, line: 729, column: 9)
!255 = distinct !DILexicalBlock(scope: !246, file: !3, line: 712, column: 11)
!256 = !DILocalVariable(name: "missing", scope: !254, file: !3, line: 735, type: !204)
!257 = !DILocalVariable(name: "needs_escape", scope: !254, file: !3, line: 738, type: !204)
!258 = !DILocalVariable(name: "digest_bin_bytes", scope: !259, file: !3, line: 762, type: !121)
!259 = distinct !DILexicalBlock(scope: !260, file: !3, line: 761, column: 13)
!260 = distinct !DILexicalBlock(scope: !261, file: !3, line: 755, column: 20)
!261 = distinct !DILexicalBlock(scope: !254, file: !3, line: 744, column: 15)
!262 = !DILocalVariable(name: "cnt", scope: !259, file: !3, line: 763, type: !121)
!263 = !DILocalVariable(name: "__res", scope: !264, file: !3, line: 769, type: !67)
!264 = distinct !DILexicalBlock(scope: !265, file: !3, line: 769, column: 23)
!265 = distinct !DILexicalBlock(scope: !266, file: !3, line: 769, column: 23)
!266 = distinct !DILexicalBlock(scope: !267, file: !3, line: 768, column: 17)
!267 = distinct !DILexicalBlock(scope: !268, file: !3, line: 767, column: 15)
!268 = distinct !DILexicalBlock(scope: !259, file: !3, line: 767, column: 15)
!269 = !DILocalVariable(name: "__res", scope: !270, file: !3, line: 771, type: !67)
!270 = distinct !DILexicalBlock(scope: !265, file: !3, line: 771, column: 27)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 128, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 16)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "bsd_reversed", scope: !2, file: !3, line: 158, type: !67, isLocal: true, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 3328, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 13)
!279 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!280 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!281 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!282 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!283 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!284 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!285 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 34, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!286 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!287 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(name: "Version", scope: !290, file: !291, line: 2, type: !65, isLocal: false, isDefinition: true)
!290 = distinct !DICompileUnit(language: DW_LANG_C99, file: !291, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, globals: !292, splitDebugInlining: false, nameTableKind: None)
!291 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!292 = !{!288}
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(name: "file_name", scope: !295, file: !296, line: 46, type: !65, isLocal: true, isDefinition: true)
!295 = distinct !DICompileUnit(language: DW_LANG_C99, file: !296, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !297, globals: !335, splitDebugInlining: false, nameTableKind: None)
!296 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!297 = !{!298, !59, !334, !171}
!298 = !DISubprogram(name: "close_stream", scope: !299, file: !299, line: 2, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!299 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!300 = !DISubroutineType(types: !301)
!301 = !{!67, !302}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !304)
!304 = !{!305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !303, file: !75, line: 51, baseType: !67, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !303, file: !75, line: 54, baseType: !63, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !303, file: !75, line: 55, baseType: !63, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !303, file: !75, line: 56, baseType: !63, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !303, file: !75, line: 57, baseType: !63, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !303, file: !75, line: 58, baseType: !63, size: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !303, file: !75, line: 59, baseType: !63, size: 64, offset: 384)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !303, file: !75, line: 60, baseType: !63, size: 64, offset: 448)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !303, file: !75, line: 61, baseType: !63, size: 64, offset: 512)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !303, file: !75, line: 64, baseType: !63, size: 64, offset: 576)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !303, file: !75, line: 65, baseType: !63, size: 64, offset: 640)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !303, file: !75, line: 66, baseType: !63, size: 64, offset: 704)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !303, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !303, file: !75, line: 70, baseType: !302, size: 64, offset: 832)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !303, file: !75, line: 72, baseType: !67, size: 32, offset: 896)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !303, file: !75, line: 73, baseType: !67, size: 32, offset: 928)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !303, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !303, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !303, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !303, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !303, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !303, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !303, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !303, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !303, file: !75, line: 93, baseType: !302, size: 64, offset: 1344)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !303, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !303, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !303, file: !75, line: 96, baseType: !67, size: 32, offset: 1536)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !303, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!334 = !DISubprogram(name: "quotearg_colon", scope: !6, file: !6, line: 391, type: !140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!335 = !{!293, !336}
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !295, file: !296, line: 56, type: !204, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(name: "fillbuf", scope: !340, file: !341, line: 70, type: !370, isLocal: true, isDefinition: true)
!340 = distinct !DICompileUnit(language: DW_LANG_C99, file: !341, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !342, globals: !369, splitDebugInlining: false, nameTableKind: None)
!341 = !DIFile(filename: "lib/md5.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!342 = !{!63, !343, !186, !367, !65, !368}
!343 = !DISubprogram(name: "md5_process_block", scope: !198, file: !198, line: 94, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !346, !40, !348}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "md5_ctx", file: !198, line: 69, size: 1248, elements: !350)
!350 = !{!351, !355, !356, !357, !358, !362, !363}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !349, file: !198, line: 71, baseType: !352, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !353, line: 26, baseType: !354)
!353 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "")
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !44, line: 42, baseType: !7)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !349, file: !198, line: 72, baseType: !352, size: 32, offset: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !349, file: !198, line: 73, baseType: !352, size: 32, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !349, file: !198, line: 74, baseType: !352, size: 32, offset: 96)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !349, file: !198, line: 76, baseType: !359, size: 64, offset: 128)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 64, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 2)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !349, file: !198, line: 77, baseType: !352, size: 32, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !349, file: !198, line: 78, baseType: !364, size: 1024, offset: 224)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 1024, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 32)
!367 = !DISubprogram(name: "md5_process_bytes", scope: !198, file: !198, line: 101, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !42, line: 90, baseType: !40)
!369 = !{!338}
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 512, elements: !372)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!372 = !{!373}
!373 = !DISubrange(count: 64)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "exit_failure", scope: !376, file: !377, line: 24, type: !379, isLocal: false, isDefinition: true)
!376 = distinct !DICompileUnit(language: DW_LANG_C99, file: !377, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, globals: !378, splitDebugInlining: false, nameTableKind: None)
!377 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!378 = !{!374}
!379 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "program_name", scope: !382, file: !383, line: 33, type: !65, isLocal: false, isDefinition: true)
!382 = distinct !DICompileUnit(language: DW_LANG_C99, file: !383, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !384, globals: !420, splitDebugInlining: false, nameTableKind: None)
!383 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!384 = !{!119, !385, !63}
!385 = !DISubprogram(name: "fputs", scope: !70, file: !70, line: 626, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!386 = !DISubroutineType(types: !387)
!387 = !{!67, !65, !388}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !389, file: !75, line: 51, baseType: !67, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !389, file: !75, line: 54, baseType: !63, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !389, file: !75, line: 55, baseType: !63, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !389, file: !75, line: 56, baseType: !63, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !389, file: !75, line: 57, baseType: !63, size: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !389, file: !75, line: 58, baseType: !63, size: 64, offset: 320)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !389, file: !75, line: 59, baseType: !63, size: 64, offset: 384)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !389, file: !75, line: 60, baseType: !63, size: 64, offset: 448)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !389, file: !75, line: 61, baseType: !63, size: 64, offset: 512)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !389, file: !75, line: 64, baseType: !63, size: 64, offset: 576)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !389, file: !75, line: 65, baseType: !63, size: 64, offset: 640)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !389, file: !75, line: 66, baseType: !63, size: 64, offset: 704)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !389, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !389, file: !75, line: 70, baseType: !388, size: 64, offset: 832)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !389, file: !75, line: 72, baseType: !67, size: 32, offset: 896)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !389, file: !75, line: 73, baseType: !67, size: 32, offset: 928)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !389, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !389, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !389, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !389, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !389, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !389, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !389, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !389, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !389, file: !75, line: 93, baseType: !388, size: 64, offset: 1344)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !389, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !389, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !389, file: !75, line: 96, baseType: !67, size: 32, offset: 1536)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !389, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!420 = !{!380}
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !423, file: !424, line: 85, type: !524, isLocal: false, isDefinition: true)
!423 = distinct !DICompileUnit(language: DW_LANG_C99, file: !424, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !425, retainedTypes: !431, globals: !497, splitDebugInlining: false, nameTableKind: None)
!424 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!425 = !{!5, !426, !20}
!426 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !427)
!427 = !{!428, !429, !430}
!428 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!429 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!430 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!431 = !{!432, !436, !186, !452, !67, !99, !455, !121, !472, !476, !59, !482, !486, !63, !490, !493, !494}
!432 = !DISubprogram(name: "xmemdup", scope: !433, file: !433, line: 62, type: !434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!433 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!434 = !DISubroutineType(types: !435)
!435 = !{!119, !346, !40}
!436 = !DISubprogram(name: "quotearg_alloc_mem", scope: !6, file: !6, line: 342, type: !437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!437 = !DISubroutineType(types: !438)
!438 = !{!63, !65, !40, !439, !440}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !424, line: 65, size: 448, elements: !443)
!443 = !{!444, !445, !446, !450, !451}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !442, file: !424, line: 68, baseType: !5, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !442, file: !424, line: 71, baseType: !67, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !442, file: !424, line: 75, baseType: !447, size: 256, offset: 64)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 8)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !442, file: !424, line: 78, baseType: !65, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !442, file: !424, line: 81, baseType: !65, size: 64, offset: 384)
!452 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !6, file: !6, line: 408, type: !453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!453 = !DISubroutineType(types: !454)
!454 = !{!63, !67, !65, !65, !65, !40}
!455 = !DISubprogram(name: "rpl_mbrtowc", scope: !456, file: !456, line: 717, type: !457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!456 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!457 = !DISubroutineType(types: !458)
!458 = !{!40, !165, !65, !40, !459}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 13, size: 64, elements: !462)
!461 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!462 = !{!463, !464}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !460, file: !461, line: 15, baseType: !67, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !460, file: !461, line: 20, baseType: !465, size: 32, offset: 32)
!465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !460, file: !461, line: 16, size: 32, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !465, file: !461, line: 18, baseType: !7, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !465, file: !461, line: 19, baseType: !469, size: 32)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 32, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 4)
!472 = !DISubprogram(name: "iswprint", scope: !473, file: !473, line: 120, type: !474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!473 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!474 = !DISubroutineType(types: !475)
!475 = !{!67, !7}
!476 = !DISubprogram(name: "mbsinit", scope: !477, file: !477, line: 292, type: !478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!477 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!478 = !DISubroutineType(types: !479)
!479 = !{!67, !480}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!482 = !DISubprogram(name: "locale_charset", scope: !483, file: !483, line: 35, type: !484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!483 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!484 = !DISubroutineType(types: !485)
!485 = !{!65}
!486 = !DISubprogram(name: "c_strcasecmp", scope: !487, file: !487, line: 42, type: !488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!487 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!488 = !DISubroutineType(types: !489)
!489 = !{!67, !65, !65}
!490 = !DISubprogram(name: "xmalloc", scope: !433, file: !433, line: 53, type: !491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!491 = !DISubroutineType(types: !492)
!492 = !{!119, !40}
!493 = !DISubprogram(name: "xalloc_die", scope: !433, file: !433, line: 51, type: !147, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !68)
!494 = !DISubprogram(name: "xrealloc", scope: !433, file: !433, line: 59, type: !495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!495 = !DISubroutineType(types: !496)
!496 = !{!119, !119, !40}
!497 = !{!421, !498, !504, !506, !508, !513, !520, !522}
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !423, file: !424, line: 101, type: !500, isLocal: false, isDefinition: true)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 320, elements: !502)
!501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!502 = !{!503}
!503 = !DISubrange(count: 10)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !423, file: !424, line: 1052, type: !442, isLocal: false, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !423, file: !424, line: 116, type: !442, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "slot0", scope: !423, file: !424, line: 842, type: !510, isLocal: true, isDefinition: true)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 2048, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 256)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "slotvec", scope: !423, file: !424, line: 845, type: !515, isLocal: true, isDefinition: true)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !424, line: 834, size: 128, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !516, file: !424, line: 836, baseType: !121, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !516, file: !424, line: 837, baseType: !63, size: 64, offset: 64)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(name: "nslots", scope: !423, file: !424, line: 843, type: !67, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(name: "slotvec0", scope: !423, file: !424, line: 844, type: !516, isLocal: true, isDefinition: true)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 704, elements: !526)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!526 = !{!527}
!527 = !DISubrange(count: 11)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !530, file: !531, line: 26, type: !533, isLocal: false, isDefinition: true)
!530 = distinct !DICompileUnit(language: DW_LANG_C99, file: !531, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, globals: !532, splitDebugInlining: false, nameTableKind: None)
!531 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!532 = !{!528}
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 376, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 47)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !538, file: !539, line: 507, type: !67, isLocal: true, isDefinition: true)
!538 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !539, file: !539, line: 488, type: !540, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !553)
!539 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!540 = !DISubroutineType(types: !541)
!541 = !{!67, !67, !67}
!542 = distinct !DICompileUnit(language: DW_LANG_C99, file: !539, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !543, globals: !552, splitDebugInlining: false, nameTableKind: None)
!543 = !{!544, !548}
!544 = !DISubprogram(name: "fcntl", scope: !545, file: !545, line: 176, type: !546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!545 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!546 = !DISubroutineType(types: !547)
!547 = !{!67, !67, !67, null}
!548 = !DISubprogram(name: "close", scope: !549, file: !549, line: 353, type: !550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!549 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!550 = !DISubroutineType(types: !551)
!551 = !{!67, !67}
!552 = !{!536}
!553 = !{!554, !555, !556, !557, !560}
!554 = !DILocalVariable(name: "fd", arg: 1, scope: !538, file: !539, line: 488, type: !67)
!555 = !DILocalVariable(name: "target", arg: 2, scope: !538, file: !539, line: 488, type: !67)
!556 = !DILocalVariable(name: "result", scope: !538, file: !539, line: 490, type: !67)
!557 = !DILocalVariable(name: "flags", scope: !558, file: !539, line: 531, type: !67)
!558 = distinct !DILexicalBlock(scope: !559, file: !539, line: 530, column: 5)
!559 = distinct !DILexicalBlock(scope: !538, file: !539, line: 529, column: 7)
!560 = !DILocalVariable(name: "saved_errno", scope: !561, file: !539, line: 534, type: !67)
!561 = distinct !DILexicalBlock(scope: !562, file: !539, line: 533, column: 9)
!562 = distinct !DILexicalBlock(scope: !558, file: !539, line: 532, column: 11)
!563 = distinct !DICompileUnit(language: DW_LANG_C99, file: !564, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !565, retainedTypes: !566, splitDebugInlining: false, nameTableKind: None)
!564 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!565 = !{!49}
!566 = !{!567, !570}
!567 = !DISubprogram(name: "posix_fadvise", scope: !545, file: !545, line: 288, type: !568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!568 = !DISubroutineType(types: !569)
!569 = !{!67, !67, !97, !97, !67}
!570 = !DISubprogram(name: "fileno", scope: !70, file: !70, line: 786, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!571 = !DISubroutineType(types: !572)
!572 = !{!67, !573}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !575)
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !574, file: !75, line: 51, baseType: !67, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !574, file: !75, line: 54, baseType: !63, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !574, file: !75, line: 55, baseType: !63, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !574, file: !75, line: 56, baseType: !63, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !574, file: !75, line: 57, baseType: !63, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !574, file: !75, line: 58, baseType: !63, size: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !574, file: !75, line: 59, baseType: !63, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !574, file: !75, line: 60, baseType: !63, size: 64, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !574, file: !75, line: 61, baseType: !63, size: 64, offset: 512)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !574, file: !75, line: 64, baseType: !63, size: 64, offset: 576)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !574, file: !75, line: 65, baseType: !63, size: 64, offset: 640)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !574, file: !75, line: 66, baseType: !63, size: 64, offset: 704)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !574, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !574, file: !75, line: 70, baseType: !573, size: 64, offset: 832)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !574, file: !75, line: 72, baseType: !67, size: 32, offset: 896)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !574, file: !75, line: 73, baseType: !67, size: 32, offset: 928)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !574, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !574, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !574, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !574, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !574, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !574, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !574, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !574, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !574, file: !75, line: 93, baseType: !573, size: 64, offset: 1344)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !574, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !574, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !574, file: !75, line: 96, baseType: !67, size: 32, offset: 1536)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !574, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!605 = distinct !DICompileUnit(language: DW_LANG_C99, file: !606, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !607, splitDebugInlining: false, nameTableKind: None)
!606 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!607 = !{!608, !643, !645, !646, !548}
!608 = !DISubprogram(name: "fileno", scope: !70, file: !70, line: 786, type: !609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!609 = !DISubroutineType(types: !610)
!610 = !{!67, !611}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !613)
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !612, file: !75, line: 51, baseType: !67, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !612, file: !75, line: 54, baseType: !63, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !612, file: !75, line: 55, baseType: !63, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !612, file: !75, line: 56, baseType: !63, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !612, file: !75, line: 57, baseType: !63, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !612, file: !75, line: 58, baseType: !63, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !612, file: !75, line: 59, baseType: !63, size: 64, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !612, file: !75, line: 60, baseType: !63, size: 64, offset: 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !612, file: !75, line: 61, baseType: !63, size: 64, offset: 512)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !612, file: !75, line: 64, baseType: !63, size: 64, offset: 576)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !612, file: !75, line: 65, baseType: !63, size: 64, offset: 640)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !612, file: !75, line: 66, baseType: !63, size: 64, offset: 704)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !612, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !612, file: !75, line: 70, baseType: !611, size: 64, offset: 832)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !612, file: !75, line: 72, baseType: !67, size: 32, offset: 896)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !612, file: !75, line: 73, baseType: !67, size: 32, offset: 928)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !612, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !612, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !612, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !612, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !612, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !612, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !612, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !612, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !612, file: !75, line: 93, baseType: !611, size: 64, offset: 1344)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !612, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !612, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !612, file: !75, line: 96, baseType: !67, size: 32, offset: 1536)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !612, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!643 = !DISubprogram(name: "dup_safer", scope: !644, file: !644, line: 20, type: !550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!644 = !DIFile(filename: "./lib/unistd-safer.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!645 = !DISubprogram(name: "rpl_fclose", scope: !176, file: !176, line: 672, type: !609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!646 = !DISubprogram(name: "fdopen", scope: !70, file: !70, line: 279, type: !647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!647 = !DISubroutineType(types: !648)
!648 = !{!611, !67, !65}
!649 = distinct !DICompileUnit(language: DW_LANG_C99, file: !650, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !651, splitDebugInlining: false, nameTableKind: None)
!650 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!651 = !{!652}
!652 = !DISubprogram(name: "rpl_fcntl", scope: !653, file: !653, line: 588, type: !546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!653 = !DIFile(filename: "./lib/fcntl.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!654 = distinct !DICompileUnit(language: DW_LANG_C99, file: !655, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !656, retainedTypes: !660, splitDebugInlining: false, nameTableKind: None)
!655 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!656 = !{!657}
!657 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !655, line: 40, baseType: !7, size: 32, elements: !658)
!658 = !{!659}
!659 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!660 = !{!59, !661, !119}
!661 = !DISubprogram(name: "fputs_unlocked", scope: !70, file: !70, line: 662, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!662 = !DISubroutineType(types: !663)
!663 = !{!67, !65, !664}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !666)
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !665, file: !75, line: 51, baseType: !67, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !665, file: !75, line: 54, baseType: !63, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !665, file: !75, line: 55, baseType: !63, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !665, file: !75, line: 56, baseType: !63, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !665, file: !75, line: 57, baseType: !63, size: 64, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !665, file: !75, line: 58, baseType: !63, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !665, file: !75, line: 59, baseType: !63, size: 64, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !665, file: !75, line: 60, baseType: !63, size: 64, offset: 448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !665, file: !75, line: 61, baseType: !63, size: 64, offset: 512)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !665, file: !75, line: 64, baseType: !63, size: 64, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !665, file: !75, line: 65, baseType: !63, size: 64, offset: 640)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !665, file: !75, line: 66, baseType: !63, size: 64, offset: 704)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !665, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !665, file: !75, line: 70, baseType: !664, size: 64, offset: 832)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !665, file: !75, line: 72, baseType: !67, size: 32, offset: 896)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !665, file: !75, line: 73, baseType: !67, size: 32, offset: 928)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !665, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !665, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !665, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !665, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !665, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !665, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !665, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !665, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !665, file: !75, line: 93, baseType: !664, size: 64, offset: 1344)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !665, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !665, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !665, file: !75, line: 96, baseType: !67, size: 32, offset: 1536)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !665, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!696 = distinct !DICompileUnit(language: DW_LANG_C99, file: !697, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !698, retainedTypes: !711, splitDebugInlining: false, nameTableKind: None)
!697 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!698 = !{!699}
!699 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !700, file: !433, line: 186, baseType: !7, size: 32, elements: !709)
!700 = distinct !DISubprogram(name: "x2nrealloc", scope: !433, file: !433, line: 174, type: !701, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !704)
!701 = !DISubroutineType(types: !702)
!702 = !{!119, !119, !703, !121}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!704 = !{!705, !706, !707, !708}
!705 = !DILocalVariable(name: "p", arg: 1, scope: !700, file: !433, line: 174, type: !119)
!706 = !DILocalVariable(name: "pn", arg: 2, scope: !700, file: !433, line: 174, type: !703)
!707 = !DILocalVariable(name: "s", arg: 3, scope: !700, file: !433, line: 174, type: !121)
!708 = !DILocalVariable(name: "n", scope: !700, file: !433, line: 176, type: !121)
!709 = !{!710}
!710 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!711 = !{!121, !493, !490, !494, !63, !186, !119, !712, !715}
!712 = !DISubprogram(name: "xcalloc", scope: !433, file: !433, line: 57, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!713 = !DISubroutineType(types: !714)
!714 = !{!119, !40, !40}
!715 = !DISubprogram(name: "rpl_calloc", scope: !716, file: !716, line: 688, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!716 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!717 = distinct !DICompileUnit(language: DW_LANG_C99, file: !718, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !719, splitDebugInlining: false, nameTableKind: None)
!718 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!719 = !{!59, !171}
!720 = distinct !DICompileUnit(language: DW_LANG_C99, file: !721, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !722, splitDebugInlining: false, nameTableKind: None)
!721 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!722 = !{!119}
!723 = distinct !DICompileUnit(language: DW_LANG_C99, file: !724, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !725, splitDebugInlining: false, nameTableKind: None)
!724 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!725 = !{!726, !761, !762, !765}
!726 = !DISubprogram(name: "fileno", scope: !70, file: !70, line: 786, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!727 = !DISubroutineType(types: !728)
!728 = !{!67, !729}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !731)
!731 = !{!732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !730, file: !75, line: 51, baseType: !67, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !730, file: !75, line: 54, baseType: !63, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !730, file: !75, line: 55, baseType: !63, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !730, file: !75, line: 56, baseType: !63, size: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !730, file: !75, line: 57, baseType: !63, size: 64, offset: 256)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !730, file: !75, line: 58, baseType: !63, size: 64, offset: 320)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !730, file: !75, line: 59, baseType: !63, size: 64, offset: 384)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !730, file: !75, line: 60, baseType: !63, size: 64, offset: 448)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !730, file: !75, line: 61, baseType: !63, size: 64, offset: 512)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !730, file: !75, line: 64, baseType: !63, size: 64, offset: 576)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !730, file: !75, line: 65, baseType: !63, size: 64, offset: 640)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !730, file: !75, line: 66, baseType: !63, size: 64, offset: 704)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !730, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !730, file: !75, line: 70, baseType: !729, size: 64, offset: 832)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !730, file: !75, line: 72, baseType: !67, size: 32, offset: 896)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !730, file: !75, line: 73, baseType: !67, size: 32, offset: 928)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !730, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !730, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !730, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !730, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !730, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !730, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !730, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !730, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !730, file: !75, line: 93, baseType: !729, size: 64, offset: 1344)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !730, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !730, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !730, file: !75, line: 96, baseType: !67, size: 32, offset: 1536)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !730, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!761 = !DISubprogram(name: "fclose", scope: !70, file: !70, line: 213, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!762 = !DISubprogram(name: "lseek", scope: !549, file: !549, line: 334, type: !763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!763 = !DISubroutineType(types: !764)
!764 = !{!97, !67, !97, !67}
!765 = !DISubprogram(name: "rpl_fflush", scope: !176, file: !176, line: 718, type: !727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!766 = distinct !DICompileUnit(language: DW_LANG_C99, file: !767, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !768, splitDebugInlining: false, nameTableKind: None)
!767 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!768 = !{!119, !769, !804}
!769 = !DISubprogram(name: "fflush", scope: !70, file: !70, line: 218, type: !770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!770 = !DISubroutineType(types: !771)
!771 = !{!67, !772}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !774)
!774 = !{!775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !773, file: !75, line: 51, baseType: !67, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !773, file: !75, line: 54, baseType: !63, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !773, file: !75, line: 55, baseType: !63, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !773, file: !75, line: 56, baseType: !63, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !773, file: !75, line: 57, baseType: !63, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !773, file: !75, line: 58, baseType: !63, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !773, file: !75, line: 59, baseType: !63, size: 64, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !773, file: !75, line: 60, baseType: !63, size: 64, offset: 448)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !773, file: !75, line: 61, baseType: !63, size: 64, offset: 512)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !773, file: !75, line: 64, baseType: !63, size: 64, offset: 576)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !773, file: !75, line: 65, baseType: !63, size: 64, offset: 640)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !773, file: !75, line: 66, baseType: !63, size: 64, offset: 704)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !773, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !773, file: !75, line: 70, baseType: !772, size: 64, offset: 832)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !773, file: !75, line: 72, baseType: !67, size: 32, offset: 896)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !773, file: !75, line: 73, baseType: !67, size: 32, offset: 928)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !773, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !773, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !773, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !773, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !773, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !773, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !773, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !773, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !773, file: !75, line: 93, baseType: !772, size: 64, offset: 1344)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !773, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !773, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !773, file: !75, line: 96, baseType: !67, size: 32, offset: 1536)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !773, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!804 = !DISubprogram(name: "rpl_fseeko", scope: !176, file: !176, line: 1034, type: !805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!805 = !DISubroutineType(types: !806)
!806 = !{!67, !772, !97, !67}
!807 = distinct !DICompileUnit(language: DW_LANG_C99, file: !808, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !809, splitDebugInlining: false, nameTableKind: None)
!808 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!809 = !{!119, !810, !762, !845}
!810 = !DISubprogram(name: "fileno", scope: !70, file: !70, line: 786, type: !811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!811 = !DISubroutineType(types: !812)
!812 = !{!67, !813}
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !815)
!815 = !{!816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !814, file: !75, line: 51, baseType: !67, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !814, file: !75, line: 54, baseType: !63, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !814, file: !75, line: 55, baseType: !63, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !814, file: !75, line: 56, baseType: !63, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !814, file: !75, line: 57, baseType: !63, size: 64, offset: 256)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !814, file: !75, line: 58, baseType: !63, size: 64, offset: 320)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !814, file: !75, line: 59, baseType: !63, size: 64, offset: 384)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !814, file: !75, line: 60, baseType: !63, size: 64, offset: 448)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !814, file: !75, line: 61, baseType: !63, size: 64, offset: 512)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !814, file: !75, line: 64, baseType: !63, size: 64, offset: 576)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !814, file: !75, line: 65, baseType: !63, size: 64, offset: 640)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !814, file: !75, line: 66, baseType: !63, size: 64, offset: 704)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !814, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !814, file: !75, line: 70, baseType: !813, size: 64, offset: 832)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !814, file: !75, line: 72, baseType: !67, size: 32, offset: 896)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !814, file: !75, line: 73, baseType: !67, size: 32, offset: 928)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !814, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !814, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !814, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !814, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !814, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !814, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !814, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !814, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !814, file: !75, line: 93, baseType: !813, size: 64, offset: 1344)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !814, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !814, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !814, file: !75, line: 96, baseType: !67, size: 32, offset: 1536)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !814, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!845 = !DISubprogram(name: "fseeko", scope: !70, file: !70, line: 707, type: !846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!846 = !DISubroutineType(types: !847)
!847 = !{!67, !813, !97, !67}
!848 = distinct !DICompileUnit(language: DW_LANG_C99, file: !849, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !850, splitDebugInlining: false, nameTableKind: None)
!849 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!850 = !{!851, !121, !863}
!851 = !DISubprogram(name: "mbrtowc", scope: !477, file: !477, line: 296, type: !852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!852 = !DISubroutineType(types: !853)
!853 = !{!40, !165, !65, !40, !854}
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 13, size: 64, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !855, file: !461, line: 15, baseType: !67, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !855, file: !461, line: 20, baseType: !859, size: 32, offset: 32)
!859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !855, file: !461, line: 16, size: 32, elements: !860)
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !859, file: !461, line: 18, baseType: !7, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !859, file: !461, line: 19, baseType: !469, size: 32)
!863 = !DISubprogram(name: "hard_locale", scope: !864, file: !864, line: 26, type: !865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!864 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!865 = !DISubroutineType(types: !866)
!866 = !{!204, !67}
!867 = distinct !DICompileUnit(language: DW_LANG_C99, file: !868, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !869, splitDebugInlining: false, nameTableKind: None)
!868 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!869 = !{!870}
!870 = !DISubprogram(name: "rpl_fclose", scope: !176, file: !176, line: 672, type: !871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!871 = !DISubroutineType(types: !872)
!872 = !{!67, !873}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !875)
!875 = !{!876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !874, file: !75, line: 51, baseType: !67, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !874, file: !75, line: 54, baseType: !63, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !874, file: !75, line: 55, baseType: !63, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !874, file: !75, line: 56, baseType: !63, size: 64, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !874, file: !75, line: 57, baseType: !63, size: 64, offset: 256)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !874, file: !75, line: 58, baseType: !63, size: 64, offset: 320)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !874, file: !75, line: 59, baseType: !63, size: 64, offset: 384)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !874, file: !75, line: 60, baseType: !63, size: 64, offset: 448)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !874, file: !75, line: 61, baseType: !63, size: 64, offset: 512)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !874, file: !75, line: 64, baseType: !63, size: 64, offset: 576)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !874, file: !75, line: 65, baseType: !63, size: 64, offset: 640)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !874, file: !75, line: 66, baseType: !63, size: 64, offset: 704)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !874, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !874, file: !75, line: 70, baseType: !873, size: 64, offset: 832)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !874, file: !75, line: 72, baseType: !67, size: 32, offset: 896)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !874, file: !75, line: 73, baseType: !67, size: 32, offset: 928)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !874, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !874, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !874, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !874, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !874, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !874, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !874, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !874, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !874, file: !75, line: 93, baseType: !873, size: 64, offset: 1344)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !874, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !874, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !874, file: !75, line: 96, baseType: !67, size: 32, offset: 1536)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !874, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!905 = distinct !DICompileUnit(language: DW_LANG_C99, file: !906, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !907, splitDebugInlining: false, nameTableKind: None)
!906 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!907 = !{!908}
!908 = !DISubprogram(name: "setlocale_null_r", scope: !909, file: !909, line: 64, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!909 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!910 = !DISubroutineType(types: !911)
!911 = !{!67, !67, !63, !40}
!912 = distinct !DICompileUnit(language: DW_LANG_C99, file: !913, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !914, retainedTypes: !1301, splitDebugInlining: false, nameTableKind: None)
!913 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!914 = !{!915}
!915 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !916, line: 41, baseType: !7, size: 32, elements: !917)
!916 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!917 = !{!918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300}
!918 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!919 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!920 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!921 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!922 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!923 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!924 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!925 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!926 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!927 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!928 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!929 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!930 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!931 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!932 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!933 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!934 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!935 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!936 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!937 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!938 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!939 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!940 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!941 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!942 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!943 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!944 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!945 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!946 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!947 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!948 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!949 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!950 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!951 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!952 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!953 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!954 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!955 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!956 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!957 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!958 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!959 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!960 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!961 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!962 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!963 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!964 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!965 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!966 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!967 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!1026 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!1029 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!1030 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!1031 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!1032 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!1033 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!1034 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!1035 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!1036 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!1037 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!1038 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!1039 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!1040 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!1107 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!1108 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!1109 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!1110 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!1111 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!1112 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!1113 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!1114 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!1115 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!1116 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!1117 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!1118 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!1119 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!1120 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!1121 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!1122 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!1123 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!1124 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!1125 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!1126 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!1127 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!1128 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!1129 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!1130 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!1131 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!1132 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!1133 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!1134 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!1135 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!1136 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!1137 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!1138 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!1139 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!1140 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!1141 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!1142 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!1143 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!1144 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!1145 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!1146 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!1147 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!1148 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!1149 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!1150 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1151 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1152 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1153 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1154 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1155 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1156 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1157 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1158 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1159 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1160 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1161 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1162 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1163 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1164 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1165 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1166 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1167 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1168 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1169 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1170 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1171 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1172 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1173 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1174 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1175 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1176 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1177 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1178 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1179 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1180 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1181 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1182 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1183 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1184 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1185 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1186 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1187 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1188 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1189 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1190 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1191 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1192 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1193 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1194 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1195 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1196 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1197 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1198 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1199 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1200 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1201 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1202 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1203 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1204 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1205 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1206 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1207 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1208 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1209 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1210 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1211 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1212 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1213 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1214 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1215 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1216 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1217 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1218 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1219 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1220 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1221 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1222 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1223 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1224 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1225 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1226 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1227 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1228 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1229 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1230 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1231 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1232 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1233 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1234 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1235 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1236 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1237 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1238 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1239 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1240 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1241 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1242 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1243 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1244 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1245 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1246 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1247 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1248 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1249 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1250 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1251 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1252 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1253 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1254 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1255 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1256 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1257 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1258 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1259 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1260 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1261 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1262 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1263 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1264 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1265 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1266 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1267 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1268 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1269 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1270 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1271 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1272 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1273 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1274 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1275 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1276 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1277 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1278 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1279 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1280 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1281 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1282 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1283 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1284 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1285 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1286 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1287 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1288 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1289 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1290 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1291 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1292 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1293 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1294 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1295 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1296 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1297 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1298 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1299 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1300 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1301 = !{!1302, !119}
!1302 = !DISubprogram(name: "nl_langinfo", scope: !916, file: !916, line: 661, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!63, !67}
!1305 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1306, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !1307, splitDebugInlining: false, nameTableKind: None)
!1306 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1307 = !{!119, !132}
!1308 = !{!"clang version 10.0.0 "}
!1309 = !{i32 7, !"Dwarf Version", i32 4}
!1310 = !{i32 2, !"Debug Info Version", i32 3}
!1311 = !{i32 1, !"wchar_size", i32 4}
!1312 = !{i32 7, !"PIC Level", i32 2}
!1313 = !{i32 7, !"PIE Level", i32 2}
!1314 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 223, type: !1315, scopeLine: 224, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1317)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{null, !67}
!1317 = !{!1318}
!1318 = !DILocalVariable(name: "status", arg: 1, scope: !1314, file: !3, line: 223, type: !67)
!1319 = !DILocalVariable(name: "infomap", scope: !1320, file: !36, line: 636, type: !1332)
!1320 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !36, file: !36, line: 634, type: !130, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1321)
!1321 = !{!1322, !1319, !1323, !1324, !1331}
!1322 = !DILocalVariable(name: "program", arg: 1, scope: !1320, file: !36, line: 634, type: !65)
!1323 = !DILocalVariable(name: "node", scope: !1320, file: !36, line: 646, type: !65)
!1324 = !DILocalVariable(name: "map_prog", scope: !1320, file: !36, line: 647, type: !1325)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1327)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1320, file: !36, line: 636, size: 128, elements: !1328)
!1328 = !{!1329, !1330}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1327, file: !36, line: 636, baseType: !65, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1327, file: !36, line: 636, baseType: !65, size: 64, offset: 64)
!1331 = !DILocalVariable(name: "lc_messages", scope: !1320, file: !36, line: 659, type: !65)
!1332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1326, size: 896, elements: !1333)
!1333 = !{!1334}
!1334 = !DISubrange(count: 7)
!1335 = !DILocation(line: 636, column: 67, scope: !1320, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 295, column: 7, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 228, column: 5)
!1338 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 225, column: 7)
!1339 = !DILocation(line: 0, scope: !1314)
!1340 = !DILocation(line: 225, column: 14, scope: !1338)
!1341 = !DILocation(line: 225, column: 7, scope: !1314)
!1342 = !DILocation(line: 226, column: 5, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 226, column: 5)
!1344 = !{!1345, !1345, i64 0}
!1345 = !{!"any pointer", !1346, i64 0}
!1346 = !{!"omnipotent char", !1347, i64 0}
!1347 = !{!"Simple C/C++ TBAA"}
!1348 = !DILocation(line: 229, column: 7, scope: !1337)
!1349 = !DILocation(line: 583, column: 3, scope: !1350, inlinedAt: !1351)
!1350 = distinct !DISubprogram(name: "emit_stdin_note", scope: !36, file: !36, line: 581, type: !147, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!1351 = distinct !DILocation(line: 237, column: 7, scope: !1337)
!1352 = !DILocation(line: 244, column: 9, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 238, column: 11)
!1354 = !DILocation(line: 249, column: 7, scope: !1337)
!1355 = !DILocation(line: 258, column: 7, scope: !1337)
!1356 = !DILocation(line: 266, column: 9, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 261, column: 11)
!1358 = !DILocation(line: 269, column: 7, scope: !1337)
!1359 = !DILocation(line: 273, column: 7, scope: !1337)
!1360 = !DILocation(line: 283, column: 7, scope: !1337)
!1361 = !DILocation(line: 284, column: 7, scope: !1337)
!1362 = !DILocation(line: 285, column: 7, scope: !1337)
!1363 = !DILocation(line: 0, scope: !1320, inlinedAt: !1336)
!1364 = !DILocation(line: 636, column: 3, scope: !1320, inlinedAt: !1336)
!1365 = !DILocation(line: 647, column: 36, scope: !1320, inlinedAt: !1336)
!1366 = !DILocation(line: 649, column: 3, scope: !1320, inlinedAt: !1336)
!1367 = !DILocation(line: 649, column: 33, scope: !1320, inlinedAt: !1336)
!1368 = !DILocation(line: 650, column: 13, scope: !1320, inlinedAt: !1336)
!1369 = !DILocation(line: 649, column: 20, scope: !1320, inlinedAt: !1336)
!1370 = !{!1371, !1345, i64 0}
!1371 = !{!"infomap", !1345, i64 0, !1345, i64 8}
!1372 = !DILocation(line: 649, column: 10, scope: !1320, inlinedAt: !1336)
!1373 = !DILocation(line: 649, column: 28, scope: !1320, inlinedAt: !1336)
!1374 = distinct !{!1374, !1366, !1368}
!1375 = !DILocation(line: 652, column: 17, scope: !1376, inlinedAt: !1336)
!1376 = distinct !DILexicalBlock(scope: !1320, file: !36, line: 652, column: 7)
!1377 = !{!1371, !1345, i64 8}
!1378 = !DILocation(line: 652, column: 7, scope: !1376, inlinedAt: !1336)
!1379 = !DILocation(line: 652, column: 7, scope: !1320, inlinedAt: !1336)
!1380 = !DILocation(line: 655, column: 3, scope: !1320, inlinedAt: !1336)
!1381 = !DILocation(line: 659, column: 29, scope: !1320, inlinedAt: !1336)
!1382 = !DILocation(line: 660, column: 7, scope: !1383, inlinedAt: !1336)
!1383 = distinct !DILexicalBlock(scope: !1320, file: !36, line: 660, column: 7)
!1384 = !DILocation(line: 660, column: 19, scope: !1383, inlinedAt: !1336)
!1385 = !DILocation(line: 660, column: 22, scope: !1383, inlinedAt: !1336)
!1386 = !DILocation(line: 660, column: 7, scope: !1320, inlinedAt: !1336)
!1387 = !DILocation(line: 666, column: 7, scope: !1388, inlinedAt: !1336)
!1388 = distinct !DILexicalBlock(scope: !1383, file: !36, line: 661, column: 5)
!1389 = !DILocation(line: 668, column: 5, scope: !1388, inlinedAt: !1336)
!1390 = !DILocation(line: 669, column: 3, scope: !1320, inlinedAt: !1336)
!1391 = !DILocation(line: 671, column: 3, scope: !1320, inlinedAt: !1336)
!1392 = !DILocation(line: 673, column: 1, scope: !1320, inlinedAt: !1336)
!1393 = !DILocation(line: 298, column: 3, scope: !1314)
!1394 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 861, type: !1395, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1398)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!67, !67, !1397}
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!1398 = !{!1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1412, !1415, !1418, !1419, !1422}
!1399 = !DILocalVariable(name: "argc", arg: 1, scope: !1394, file: !3, line: 861, type: !67)
!1400 = !DILocalVariable(name: "argv", arg: 2, scope: !1394, file: !3, line: 861, type: !1397)
!1401 = !DILocalVariable(name: "bin_buffer_unaligned", scope: !1394, file: !3, line: 863, type: !239)
!1402 = !DILocalVariable(name: "bin_buffer", scope: !1394, file: !3, line: 865, type: !192)
!1403 = !DILocalVariable(name: "do_check", scope: !1394, file: !3, line: 866, type: !204)
!1404 = !DILocalVariable(name: "opt", scope: !1394, file: !3, line: 867, type: !67)
!1405 = !DILocalVariable(name: "ok", scope: !1394, file: !3, line: 868, type: !204)
!1406 = !DILocalVariable(name: "binary", scope: !1394, file: !3, line: 869, type: !67)
!1407 = !DILocalVariable(name: "prefix_tag", scope: !1394, file: !3, line: 870, type: !204)
!1408 = !DILocalVariable(name: "short_opts", scope: !1394, file: !3, line: 889, type: !65)
!1409 = !DILocalVariable(name: "operand_lim", scope: !1394, file: !3, line: 1038, type: !1397)
!1410 = !DILocalVariable(name: "operandp", scope: !1411, file: !3, line: 1042, type: !1397)
!1411 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 1042, column: 3)
!1412 = !DILocalVariable(name: "file", scope: !1413, file: !3, line: 1044, type: !63)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 1043, column: 5)
!1414 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 1042, column: 3)
!1415 = !DILocalVariable(name: "file_is_binary", scope: !1416, file: !3, line: 1050, type: !67)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 1049, column: 9)
!1417 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 1046, column: 11)
!1418 = !DILocalVariable(name: "missing", scope: !1416, file: !3, line: 1051, type: !204)
!1419 = !DILocalVariable(name: "needs_escape", scope: !1420, file: !3, line: 1064, type: !204)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 1056, column: 13)
!1421 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 1053, column: 15)
!1422 = !DILocalVariable(name: "i", scope: !1423, file: !3, line: 1089, type: !121)
!1423 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 1089, column: 15)
!1424 = !DILocation(line: 661, column: 17, scope: !223, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 1047, column: 15, scope: !1417)
!1426 = !DILocation(line: 0, scope: !1394)
!1427 = !DILocation(line: 863, column: 3, scope: !1394)
!1428 = !DILocation(line: 863, column: 17, scope: !1394)
!1429 = !DILocalVariable(name: "ptr", arg: 1, scope: !1430, file: !36, line: 501, type: !346)
!1430 = distinct !DISubprogram(name: "ptr_align", scope: !36, file: !36, line: 501, type: !1431, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1433)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!119, !346, !121}
!1433 = !{!1429, !1434, !1435, !1436}
!1434 = !DILocalVariable(name: "alignment", arg: 2, scope: !1430, file: !36, line: 501, type: !121)
!1435 = !DILocalVariable(name: "p0", scope: !1430, file: !36, line: 503, type: !65)
!1436 = !DILocalVariable(name: "p1", scope: !1430, file: !36, line: 504, type: !65)
!1437 = !DILocation(line: 0, scope: !1430, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 865, column: 31, scope: !1394)
!1439 = !DILocation(line: 504, column: 35, scope: !1430, inlinedAt: !1438)
!1440 = !DILocation(line: 505, column: 25, scope: !1430, inlinedAt: !1438)
!1441 = !DILocation(line: 505, column: 37, scope: !1430, inlinedAt: !1438)
!1442 = !DILocation(line: 505, column: 23, scope: !1430, inlinedAt: !1438)
!1443 = !DILocation(line: 874, column: 21, scope: !1394)
!1444 = !DILocation(line: 874, column: 3, scope: !1394)
!1445 = !DILocation(line: 875, column: 3, scope: !1394)
!1446 = !DILocation(line: 876, column: 3, scope: !1394)
!1447 = !DILocation(line: 877, column: 3, scope: !1394)
!1448 = !DILocation(line: 879, column: 3, scope: !1394)
!1449 = !DILocation(line: 883, column: 12, scope: !1394)
!1450 = !DILocation(line: 883, column: 3, scope: !1394)
!1451 = !DILocation(line: 892, column: 3, scope: !1394)
!1452 = !DILocation(line: 869, column: 7, scope: !1394)
!1453 = !DILocation(line: 870, column: 8, scope: !1394)
!1454 = !DILocation(line: 866, column: 8, scope: !1394)
!1455 = !DILocation(line: 892, column: 17, scope: !1394)
!1456 = distinct !{!1456, !1451, !1457}
!1457 = !DILocation(line: 948, column: 7, scope: !1394)
!1458 = !DILocation(line: 912, column: 9, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 894, column: 7)
!1460 = !DILocation(line: 914, column: 21, scope: !1459)
!1461 = !DILocation(line: 915, column: 14, scope: !1459)
!1462 = !DILocation(line: 916, column: 15, scope: !1459)
!1463 = !DILocation(line: 917, column: 9, scope: !1459)
!1464 = !DILocation(line: 920, column: 9, scope: !1459)
!1465 = !DILocation(line: 922, column: 21, scope: !1459)
!1466 = !DILocation(line: 923, column: 14, scope: !1459)
!1467 = !DILocation(line: 924, column: 15, scope: !1459)
!1468 = !DILocation(line: 925, column: 9, scope: !1459)
!1469 = !DILocation(line: 927, column: 24, scope: !1459)
!1470 = !DILocation(line: 928, column: 9, scope: !1459)
!1471 = !DILocation(line: 930, column: 21, scope: !1459)
!1472 = !DILocation(line: 931, column: 14, scope: !1459)
!1473 = !DILocation(line: 932, column: 15, scope: !1459)
!1474 = !DILocation(line: 933, column: 9, scope: !1459)
!1475 = !DILocation(line: 935, column: 16, scope: !1459)
!1476 = !DILocation(line: 936, column: 9, scope: !1459)
!1477 = !DILocation(line: 940, column: 9, scope: !1459)
!1478 = !DILocation(line: 942, column: 15, scope: !1459)
!1479 = !DILocation(line: 943, column: 9, scope: !1459)
!1480 = !DILocation(line: 944, column: 7, scope: !1459)
!1481 = !DILocation(line: 945, column: 7, scope: !1459)
!1482 = !DILocation(line: 947, column: 9, scope: !1459)
!1483 = !DILocation(line: 950, column: 26, scope: !1394)
!1484 = !DILocation(line: 964, column: 20, scope: !1394)
!1485 = !DILocation(line: 967, column: 7, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 967, column: 7)
!1487 = !DILocation(line: 967, column: 18, scope: !1486)
!1488 = !DILocation(line: 967, column: 22, scope: !1486)
!1489 = !DILocation(line: 974, column: 19, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 968, column: 4)
!1491 = !DILocation(line: 974, column: 6, scope: !1490)
!1492 = !DILocation(line: 975, column: 6, scope: !1490)
!1493 = !DILocation(line: 978, column: 7, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 978, column: 7)
!1495 = !DILocation(line: 978, column: 21, scope: !1494)
!1496 = !DILocation(line: 978, column: 24, scope: !1494)
!1497 = !DILocation(line: 980, column: 20, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 979, column: 5)
!1499 = !DILocation(line: 980, column: 7, scope: !1498)
!1500 = !DILocation(line: 982, column: 7, scope: !1498)
!1501 = !DILocation(line: 985, column: 18, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 985, column: 7)
!1503 = !DILocation(line: 987, column: 20, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 986, column: 5)
!1505 = !DILocation(line: 987, column: 7, scope: !1504)
!1506 = !DILocation(line: 989, column: 7, scope: !1504)
!1507 = !DILocation(line: 992, column: 9, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 992, column: 7)
!1509 = !DILocation(line: 992, column: 19, scope: !1508)
!1510 = !DILocation(line: 994, column: 20, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 993, column: 5)
!1512 = !DILocation(line: 994, column: 7, scope: !1511)
!1513 = !DILocation(line: 996, column: 7, scope: !1511)
!1514 = !DILocation(line: 999, column: 7, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 999, column: 7)
!1516 = !DILocation(line: 999, column: 22, scope: !1515)
!1517 = !DILocation(line: 1002, column: 14, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 1000, column: 5)
!1519 = !DILocation(line: 1001, column: 7, scope: !1518)
!1520 = !DILocation(line: 1004, column: 7, scope: !1518)
!1521 = !DILocation(line: 1007, column: 7, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 1007, column: 7)
!1523 = !DILocation(line: 1007, column: 19, scope: !1522)
!1524 = !DILocation(line: 1010, column: 8, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 1008, column: 5)
!1526 = !DILocation(line: 1009, column: 7, scope: !1525)
!1527 = !DILocation(line: 1011, column: 7, scope: !1525)
!1528 = !DILocation(line: 1014, column: 7, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 1014, column: 7)
!1530 = !DILocation(line: 1014, column: 12, scope: !1529)
!1531 = !DILocation(line: 1017, column: 8, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 1015, column: 5)
!1533 = !DILocation(line: 1016, column: 7, scope: !1532)
!1534 = !DILocation(line: 1018, column: 7, scope: !1532)
!1535 = !DILocation(line: 1021, column: 7, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 1021, column: 7)
!1537 = !DILocation(line: 1021, column: 13, scope: !1536)
!1538 = !DILocation(line: 1024, column: 8, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 1022, column: 5)
!1540 = !DILocation(line: 1023, column: 7, scope: !1539)
!1541 = !DILocation(line: 1025, column: 7, scope: !1539)
!1542 = !DILocation(line: 1028, column: 7, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 1028, column: 7)
!1544 = !DILocation(line: 1028, column: 17, scope: !1543)
!1545 = !DILocation(line: 1028, column: 16, scope: !1543)
!1546 = !DILocation(line: 1028, column: 14, scope: !1543)
!1547 = !DILocation(line: 1028, column: 7, scope: !1394)
!1548 = !DILocation(line: 1031, column: 9, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 1029, column: 4)
!1550 = !DILocation(line: 1030, column: 6, scope: !1549)
!1551 = !DILocation(line: 1032, column: 6, scope: !1549)
!1552 = !DILocation(line: 1035, column: 7, scope: !1394)
!1553 = !DILocation(line: 1038, column: 29, scope: !1394)
!1554 = !DILocation(line: 1039, column: 7, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 1039, column: 7)
!1556 = !{!1557, !1557, i64 0}
!1557 = !{!"int", !1346, i64 0}
!1558 = !DILocation(line: 1039, column: 14, scope: !1555)
!1559 = !DILocation(line: 1039, column: 7, scope: !1394)
!1560 = !DILocation(line: 1040, column: 17, scope: !1555)
!1561 = !DILocation(line: 1040, column: 20, scope: !1555)
!1562 = !DILocation(line: 1040, column: 5, scope: !1555)
!1563 = !DILocation(line: 1042, column: 31, scope: !1411)
!1564 = !DILocation(line: 0, scope: !1411)
!1565 = !DILocation(line: 1042, column: 50, scope: !1414)
!1566 = !DILocation(line: 1042, column: 3, scope: !1411)
!1567 = !DILocation(line: 0, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 1093, column: 17)
!1569 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 1092, column: 19)
!1570 = !DILocation(line: 0, scope: !1571, inlinedAt: !1575)
!1571 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1572, file: !1572, line: 108, type: !550, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1573)
!1572 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1573 = !{!1574}
!1574 = !DILocalVariable(name: "__c", arg: 1, scope: !1571, file: !1572, line: 108, type: !67)
!1575 = distinct !DILocation(line: 1096, column: 19, scope: !1568)
!1576 = !DILocation(line: 0, scope: !223, inlinedAt: !1425)
!1577 = !DILocation(line: 0, scope: !1430, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 663, column: 31, scope: !223, inlinedAt: !1425)
!1579 = !DILocation(line: 1106, column: 7, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 1106, column: 7)
!1581 = !DILocation(line: 1106, column: 23, scope: !1580)
!1582 = !DILocation(line: 1044, column: 20, scope: !1413)
!1583 = !DILocation(line: 0, scope: !1413)
!1584 = !DILocation(line: 1046, column: 11, scope: !1413)
!1585 = !DILocation(line: 661, column: 3, scope: !223, inlinedAt: !1425)
!1586 = !DILocation(line: 665, column: 3, scope: !223, inlinedAt: !1425)
!1587 = !DILocation(line: 666, column: 3, scope: !223, inlinedAt: !1425)
!1588 = !DILocation(line: 667, column: 19, scope: !223, inlinedAt: !1425)
!1589 = !DILocation(line: 669, column: 7, scope: !223, inlinedAt: !1425)
!1590 = !DILocation(line: 671, column: 23, scope: !1591, inlinedAt: !1425)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 670, column: 5)
!1592 = distinct !DILexicalBlock(scope: !223, file: !3, line: 669, column: 7)
!1593 = !DILocation(line: 672, column: 24, scope: !1591, inlinedAt: !1425)
!1594 = !DILocation(line: 673, column: 26, scope: !1591, inlinedAt: !1425)
!1595 = !DILocation(line: 674, column: 5, scope: !1591, inlinedAt: !1425)
!1596 = !DILocation(line: 677, column: 26, scope: !1597, inlinedAt: !1425)
!1597 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 676, column: 5)
!1598 = !DILocation(line: 678, column: 28, scope: !1599, inlinedAt: !1425)
!1599 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 678, column: 11)
!1600 = !DILocation(line: 678, column: 11, scope: !1597, inlinedAt: !1425)
!1601 = !DILocation(line: 680, column: 21, scope: !1602, inlinedAt: !1425)
!1602 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 679, column: 9)
!1603 = !DILocation(line: 680, column: 34, scope: !1602, inlinedAt: !1425)
!1604 = !DILocation(line: 680, column: 11, scope: !1602, inlinedAt: !1425)
!1605 = !DILocation(line: 681, column: 11, scope: !1602, inlinedAt: !1425)
!1606 = !DILocation(line: 0, scope: !1592, inlinedAt: !1425)
!1607 = !DILocation(line: 686, column: 8, scope: !223, inlinedAt: !1425)
!1608 = !DILocation(line: 687, column: 24, scope: !223, inlinedAt: !1425)
!1609 = !{!1610, !1610, i64 0}
!1610 = !{!"long", !1346, i64 0}
!1611 = !DILocation(line: 0, scope: !1612, inlinedAt: !1617)
!1612 = distinct !DISubprogram(name: "feof_unlocked", scope: !1572, file: !1572, line: 128, type: !1613, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1615)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!67, !229}
!1615 = !{!1616}
!1616 = !DILocalVariable(name: "__stream", arg: 1, scope: !1612, file: !1572, line: 128, type: !229)
!1617 = distinct !DILocation(line: 797, column: 11, scope: !223, inlinedAt: !1425)
!1618 = !DILocation(line: 688, column: 3, scope: !223, inlinedAt: !1425)
!1619 = !DILocation(line: 660, column: 8, scope: !223, inlinedAt: !1425)
!1620 = !DILocation(line: 659, column: 8, scope: !223, inlinedAt: !1425)
!1621 = !DILocation(line: 658, column: 13, scope: !223, inlinedAt: !1425)
!1622 = !DILocation(line: 657, column: 13, scope: !223, inlinedAt: !1425)
!1623 = !DILocation(line: 656, column: 13, scope: !223, inlinedAt: !1425)
!1624 = !DILocation(line: 655, column: 13, scope: !223, inlinedAt: !1425)
!1625 = !DILocation(line: 695, column: 7, scope: !246, inlinedAt: !1425)
!1626 = !DILocation(line: 696, column: 23, scope: !1627, inlinedAt: !1425)
!1627 = distinct !DILexicalBlock(scope: !246, file: !3, line: 696, column: 11)
!1628 = !DILocation(line: 696, column: 11, scope: !246, inlinedAt: !1425)
!1629 = !DILocation(line: 697, column: 9, scope: !1627, inlinedAt: !1425)
!1630 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1631, file: !1572, line: 118, type: !1397)
!1631 = distinct !DISubprogram(name: "getline", scope: !1572, file: !1572, line: 118, type: !1632, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1634)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!252, !1397, !703, !229}
!1634 = !{!1630, !1635, !1636}
!1635 = !DILocalVariable(name: "__n", arg: 2, scope: !1631, file: !1572, line: 118, type: !703)
!1636 = !DILocalVariable(name: "__stream", arg: 3, scope: !1631, file: !1572, line: 118, type: !229)
!1637 = !DILocation(line: 0, scope: !1631, inlinedAt: !1638)
!1638 = distinct !DILocation(line: 700, column: 21, scope: !246, inlinedAt: !1425)
!1639 = !DILocation(line: 120, column: 10, scope: !1631, inlinedAt: !1638)
!1640 = !DILocation(line: 0, scope: !246, inlinedAt: !1425)
!1641 = !DILocation(line: 701, column: 23, scope: !1642, inlinedAt: !1425)
!1642 = distinct !DILexicalBlock(scope: !246, file: !3, line: 701, column: 11)
!1643 = !DILocation(line: 701, column: 11, scope: !246, inlinedAt: !1425)
!1644 = !DILocation(line: 705, column: 11, scope: !1645, inlinedAt: !1425)
!1645 = distinct !DILexicalBlock(scope: !246, file: !3, line: 705, column: 11)
!1646 = !{!1346, !1346, i64 0}
!1647 = !DILocation(line: 705, column: 19, scope: !1645, inlinedAt: !1425)
!1648 = !DILocation(line: 705, column: 11, scope: !246, inlinedAt: !1425)
!1649 = !DILocation(line: 709, column: 28, scope: !1650, inlinedAt: !1425)
!1650 = distinct !DILexicalBlock(scope: !246, file: !3, line: 709, column: 11)
!1651 = !DILocation(line: 709, column: 11, scope: !1650, inlinedAt: !1425)
!1652 = !DILocation(line: 709, column: 33, scope: !1650, inlinedAt: !1425)
!1653 = !DILocation(line: 709, column: 11, scope: !246, inlinedAt: !1425)
!1654 = !DILocation(line: 710, column: 29, scope: !1650, inlinedAt: !1425)
!1655 = !DILocation(line: 712, column: 23, scope: !255, inlinedAt: !1425)
!1656 = !DILocation(line: 710, column: 9, scope: !1650, inlinedAt: !1425)
!1657 = !DILocalVariable(name: "s", arg: 1, scope: !1658, file: !3, line: 419, type: !63)
!1658 = distinct !DISubprogram(name: "split_3", scope: !3, file: !3, line: 419, type: !1659, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1662)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!204, !63, !121, !1661, !165, !1397}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!1662 = !{!1657, !1663, !1664, !1665, !1666, !1667, !1668, !1669}
!1663 = !DILocalVariable(name: "s_len", arg: 2, scope: !1658, file: !3, line: 419, type: !121)
!1664 = !DILocalVariable(name: "hex_digest", arg: 3, scope: !1658, file: !3, line: 420, type: !1661)
!1665 = !DILocalVariable(name: "binary", arg: 4, scope: !1658, file: !3, line: 420, type: !165)
!1666 = !DILocalVariable(name: "file_name", arg: 5, scope: !1658, file: !3, line: 420, type: !1397)
!1667 = !DILocalVariable(name: "escaped_filename", scope: !1658, file: !3, line: 422, type: !204)
!1668 = !DILocalVariable(name: "algo_name_len", scope: !1658, file: !3, line: 423, type: !121)
!1669 = !DILocalVariable(name: "i", scope: !1658, file: !3, line: 425, type: !121)
!1670 = !DILocation(line: 0, scope: !1658, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 712, column: 14, scope: !255, inlinedAt: !1425)
!1672 = !DILocation(line: 426, column: 3, scope: !1658, inlinedAt: !1671)
!1673 = !DILocation(line: 426, column: 10, scope: !1658, inlinedAt: !1671)
!1674 = !DILocation(line: 427, column: 5, scope: !1658, inlinedAt: !1671)
!1675 = distinct !{!1675, !1672, !1676}
!1676 = !DILocation(line: 427, column: 7, scope: !1658, inlinedAt: !1671)
!1677 = !DILocation(line: 431, column: 7, scope: !1678, inlinedAt: !1671)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 430, column: 5)
!1679 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 429, column: 7)
!1680 = !DILocation(line: 433, column: 5, scope: !1678, inlinedAt: !1671)
!1681 = !DILocation(line: 438, column: 7, scope: !1682, inlinedAt: !1671)
!1682 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 438, column: 7)
!1683 = !DILocation(line: 438, column: 7, scope: !1658, inlinedAt: !1671)
!1684 = !DILocation(line: 440, column: 9, scope: !1685, inlinedAt: !1671)
!1685 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 439, column: 5)
!1686 = !DILocation(line: 473, column: 11, scope: !1687, inlinedAt: !1671)
!1687 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 473, column: 11)
!1688 = !DILocation(line: 473, column: 16, scope: !1687, inlinedAt: !1671)
!1689 = !DILocation(line: 474, column: 9, scope: !1687, inlinedAt: !1671)
!1690 = !DILocation(line: 473, column: 11, scope: !1685, inlinedAt: !1671)
!1691 = !DILocation(line: 475, column: 11, scope: !1692, inlinedAt: !1671)
!1692 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 475, column: 11)
!1693 = !DILocation(line: 475, column: 16, scope: !1692, inlinedAt: !1671)
!1694 = !DILocation(line: 475, column: 11, scope: !1685, inlinedAt: !1671)
!1695 = !DILocation(line: 477, column: 11, scope: !1696, inlinedAt: !1671)
!1696 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 476, column: 9)
!1697 = !DILocation(line: 479, column: 33, scope: !1696, inlinedAt: !1671)
!1698 = !DILocation(line: 479, column: 44, scope: !1696, inlinedAt: !1671)
!1699 = !DILocalVariable(name: "s", arg: 1, scope: !1700, file: !3, line: 375, type: !63)
!1700 = distinct !DISubprogram(name: "bsd_split_3", scope: !3, file: !3, line: 375, type: !1701, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1703)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!204, !63, !121, !1661, !1397, !204}
!1703 = !{!1699, !1704, !1705, !1706, !1707, !1708}
!1704 = !DILocalVariable(name: "s_len", arg: 2, scope: !1700, file: !3, line: 375, type: !121)
!1705 = !DILocalVariable(name: "hex_digest", arg: 3, scope: !1700, file: !3, line: 375, type: !1661)
!1706 = !DILocalVariable(name: "file_name", arg: 4, scope: !1700, file: !3, line: 376, type: !1397)
!1707 = !DILocalVariable(name: "escaped_filename", arg: 5, scope: !1700, file: !3, line: 376, type: !204)
!1708 = !DILocalVariable(name: "i", scope: !1700, file: !3, line: 378, type: !121)
!1709 = !DILocation(line: 0, scope: !1700, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 479, column: 18, scope: !1696, inlinedAt: !1671)
!1711 = !DILocation(line: 380, column: 13, scope: !1712, inlinedAt: !1710)
!1712 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 380, column: 7)
!1713 = !DILocation(line: 380, column: 7, scope: !1700, inlinedAt: !1710)
!1714 = !DILocation(line: 385, column: 10, scope: !1700, inlinedAt: !1710)
!1715 = !DILocation(line: 385, column: 12, scope: !1700, inlinedAt: !1710)
!1716 = !DILocation(line: 385, column: 15, scope: !1700, inlinedAt: !1710)
!1717 = !DILocation(line: 385, column: 20, scope: !1700, inlinedAt: !1710)
!1718 = !DILocation(line: 385, column: 3, scope: !1700, inlinedAt: !1710)
!1719 = distinct !{!1719, !1718, !1720}
!1720 = !DILocation(line: 386, column: 6, scope: !1700, inlinedAt: !1710)
!1721 = !DILocation(line: 388, column: 7, scope: !1722, inlinedAt: !1710)
!1722 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 388, column: 7)
!1723 = !DILocation(line: 388, column: 7, scope: !1700, inlinedAt: !1710)
!1724 = !DILocation(line: 393, column: 24, scope: !1725, inlinedAt: !1710)
!1725 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 393, column: 7)
!1726 = !DILocalVariable(name: "s", arg: 1, scope: !1727, file: !3, line: 312, type: !63)
!1727 = distinct !DISubprogram(name: "filename_unescape", scope: !3, file: !3, line: 312, type: !1728, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1730)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!63, !63, !121}
!1730 = !{!1726, !1731, !1732, !1733}
!1731 = !DILocalVariable(name: "s_len", arg: 2, scope: !1727, file: !3, line: 312, type: !121)
!1732 = !DILocalVariable(name: "dst", scope: !1727, file: !3, line: 314, type: !63)
!1733 = !DILocalVariable(name: "i", scope: !1734, file: !3, line: 316, type: !121)
!1734 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 316, column: 3)
!1735 = !DILocation(line: 0, scope: !1727, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 393, column: 27, scope: !1725, inlinedAt: !1710)
!1737 = !DILocation(line: 0, scope: !1734, inlinedAt: !1736)
!1738 = !DILocation(line: 316, column: 3, scope: !1734, inlinedAt: !1736)
!1739 = !DILocation(line: 0, scope: !1740, inlinedAt: !1736)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !3, line: 321, column: 15)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 319, column: 9)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !3, line: 317, column: 5)
!1743 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 316, column: 3)
!1744 = !DILocation(line: 318, column: 15, scope: !1742, inlinedAt: !1736)
!1745 = !DILocation(line: 318, column: 7, scope: !1742, inlinedAt: !1736)
!1746 = !DILocation(line: 321, column: 17, scope: !1740, inlinedAt: !1736)
!1747 = !DILocation(line: 321, column: 15, scope: !1741, inlinedAt: !1736)
!1748 = !DILocation(line: 326, column: 11, scope: !1741, inlinedAt: !1736)
!1749 = !DILocation(line: 327, column: 19, scope: !1741, inlinedAt: !1736)
!1750 = !DILocation(line: 327, column: 11, scope: !1741, inlinedAt: !1736)
!1751 = !DILocation(line: 334, column: 15, scope: !1752, inlinedAt: !1736)
!1752 = distinct !DILexicalBlock(scope: !1741, file: !3, line: 328, column: 13)
!1753 = !DILocation(line: 0, scope: !1741, inlinedAt: !1736)
!1754 = !DILocation(line: 316, column: 34, scope: !1743, inlinedAt: !1736)
!1755 = !DILocation(line: 316, column: 24, scope: !1743, inlinedAt: !1736)
!1756 = distinct !{!1756, !1738, !1757}
!1757 = !DILocation(line: 349, column: 5, scope: !1734, inlinedAt: !1736)
!1758 = !DILocation(line: 350, column: 11, scope: !1759, inlinedAt: !1736)
!1759 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 350, column: 7)
!1760 = !DILocation(line: 350, column: 7, scope: !1727, inlinedAt: !1736)
!1761 = !DILocation(line: 351, column: 10, scope: !1759, inlinedAt: !1736)
!1762 = !DILocation(line: 351, column: 5, scope: !1759, inlinedAt: !1736)
!1763 = !DILocation(line: 396, column: 10, scope: !1700, inlinedAt: !1710)
!1764 = !DILocation(line: 398, column: 3, scope: !1700, inlinedAt: !1710)
!1765 = !DILocation(line: 398, column: 10, scope: !1700, inlinedAt: !1710)
!1766 = !DILocation(line: 399, column: 6, scope: !1700, inlinedAt: !1710)
!1767 = distinct !{!1767, !1764, !1766}
!1768 = !DILocation(line: 406, column: 10, scope: !1700, inlinedAt: !1710)
!1769 = distinct !{!1769, !1770, !1771}
!1770 = !DILocation(line: 406, column: 3, scope: !1700, inlinedAt: !1710)
!1771 = !DILocation(line: 407, column: 6, scope: !1700, inlinedAt: !1710)
!1772 = !DILocalVariable(name: "s", arg: 1, scope: !1773, file: !3, line: 359, type: !1776)
!1773 = distinct !DISubprogram(name: "hex_digits", scope: !3, file: !3, line: 359, type: !1774, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1777)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!204, !1776}
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!1777 = !{!1772, !1778}
!1778 = !DILocalVariable(name: "i", scope: !1779, file: !3, line: 361, type: !7)
!1779 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 361, column: 3)
!1780 = !DILocation(line: 0, scope: !1773, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 411, column: 10, scope: !1700, inlinedAt: !1710)
!1782 = !DILocation(line: 0, scope: !1779, inlinedAt: !1781)
!1783 = !DILocation(line: 361, column: 32, scope: !1784, inlinedAt: !1781)
!1784 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 361, column: 3)
!1785 = !DILocation(line: 361, column: 3, scope: !1779, inlinedAt: !1781)
!1786 = !DILocation(line: 0, scope: !1787, inlinedAt: !1781)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 363, column: 11)
!1788 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 362, column: 5)
!1789 = !DILocation(line: 363, column: 12, scope: !1787, inlinedAt: !1781)
!1790 = !{!1791, !1791, i64 0}
!1791 = !{!"short", !1346, i64 0}
!1792 = !DILocation(line: 363, column: 11, scope: !1788, inlinedAt: !1781)
!1793 = !DILocation(line: 365, column: 7, scope: !1788, inlinedAt: !1781)
!1794 = !DILocation(line: 361, column: 51, scope: !1784, inlinedAt: !1781)
!1795 = !DILocation(line: 361, column: 30, scope: !1784, inlinedAt: !1781)
!1796 = distinct !{!1796, !1785, !1797}
!1797 = !DILocation(line: 366, column: 5, scope: !1779, inlinedAt: !1781)
!1798 = !DILocation(line: 489, column: 13, scope: !1799, inlinedAt: !1671)
!1799 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 489, column: 7)
!1800 = !DILocation(line: 489, column: 19, scope: !1799, inlinedAt: !1671)
!1801 = !DILocation(line: 489, column: 45, scope: !1799, inlinedAt: !1671)
!1802 = !DILocation(line: 489, column: 50, scope: !1799, inlinedAt: !1671)
!1803 = !DILocation(line: 489, column: 44, scope: !1799, inlinedAt: !1671)
!1804 = !DILocation(line: 489, column: 42, scope: !1799, inlinedAt: !1671)
!1805 = !DILocation(line: 489, column: 17, scope: !1799, inlinedAt: !1671)
!1806 = !DILocation(line: 489, column: 7, scope: !1658, inlinedAt: !1671)
!1807 = !DILocation(line: 509, column: 8, scope: !1658, inlinedAt: !1671)
!1808 = !DILocation(line: 509, column: 5, scope: !1658, inlinedAt: !1671)
!1809 = !DILocation(line: 510, column: 8, scope: !1810, inlinedAt: !1671)
!1810 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 510, column: 7)
!1811 = !DILocation(line: 513, column: 6, scope: !1658, inlinedAt: !1671)
!1812 = !DILocation(line: 513, column: 10, scope: !1658, inlinedAt: !1671)
!1813 = !DILocation(line: 0, scope: !1773, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 515, column: 9, scope: !1815, inlinedAt: !1671)
!1815 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 515, column: 7)
!1816 = !DILocation(line: 0, scope: !1779, inlinedAt: !1814)
!1817 = !DILocation(line: 361, column: 3, scope: !1779, inlinedAt: !1814)
!1818 = !DILocation(line: 0, scope: !1787, inlinedAt: !1814)
!1819 = !DILocation(line: 363, column: 12, scope: !1787, inlinedAt: !1814)
!1820 = !DILocation(line: 363, column: 11, scope: !1788, inlinedAt: !1814)
!1821 = !DILocation(line: 365, column: 7, scope: !1788, inlinedAt: !1814)
!1822 = !DILocation(line: 367, column: 10, scope: !1773, inlinedAt: !1814)
!1823 = !DILocation(line: 367, column: 13, scope: !1773, inlinedAt: !1814)
!1824 = !DILocation(line: 515, column: 7, scope: !1658, inlinedAt: !1671)
!1825 = !DILocation(line: 519, column: 14, scope: !1826, inlinedAt: !1671)
!1826 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 519, column: 7)
!1827 = !DILocation(line: 519, column: 18, scope: !1826, inlinedAt: !1671)
!1828 = !DILocation(line: 519, column: 24, scope: !1826, inlinedAt: !1671)
!1829 = !DILocation(line: 519, column: 28, scope: !1826, inlinedAt: !1671)
!1830 = !DILocation(line: 519, column: 40, scope: !1826, inlinedAt: !1671)
!1831 = !DILocation(line: 527, column: 11, scope: !1832, inlinedAt: !1671)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 527, column: 11)
!1833 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 520, column: 5)
!1834 = !DILocation(line: 527, column: 24, scope: !1832, inlinedAt: !1671)
!1835 = !DILocation(line: 527, column: 11, scope: !1833, inlinedAt: !1671)
!1836 = !DILocation(line: 529, column: 20, scope: !1833, inlinedAt: !1671)
!1837 = !DILocation(line: 530, column: 5, scope: !1833, inlinedAt: !1671)
!1838 = !DILocation(line: 531, column: 12, scope: !1839, inlinedAt: !1671)
!1839 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 531, column: 12)
!1840 = !DILocation(line: 531, column: 25, scope: !1839, inlinedAt: !1671)
!1841 = !DILocation(line: 531, column: 12, scope: !1826, inlinedAt: !1671)
!1842 = !DILocation(line: 533, column: 20, scope: !1843, inlinedAt: !1671)
!1843 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 532, column: 5)
!1844 = !DILocation(line: 534, column: 21, scope: !1843, inlinedAt: !1671)
!1845 = !DILocation(line: 535, column: 5, scope: !1843, inlinedAt: !1671)
!1846 = !DILocation(line: 539, column: 17, scope: !1658, inlinedAt: !1671)
!1847 = !DILocation(line: 541, column: 7, scope: !1658, inlinedAt: !1671)
!1848 = !DILocation(line: 542, column: 44, scope: !1849, inlinedAt: !1671)
!1849 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 541, column: 7)
!1850 = !DILocation(line: 0, scope: !1727, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 542, column: 12, scope: !1849, inlinedAt: !1671)
!1852 = !DILocation(line: 0, scope: !1734, inlinedAt: !1851)
!1853 = !DILocation(line: 316, column: 24, scope: !1743, inlinedAt: !1851)
!1854 = !DILocation(line: 316, column: 3, scope: !1734, inlinedAt: !1851)
!1855 = !DILocation(line: 0, scope: !1740, inlinedAt: !1851)
!1856 = !DILocation(line: 318, column: 15, scope: !1742, inlinedAt: !1851)
!1857 = !DILocation(line: 318, column: 7, scope: !1742, inlinedAt: !1851)
!1858 = !DILocation(line: 321, column: 17, scope: !1740, inlinedAt: !1851)
!1859 = !DILocation(line: 321, column: 15, scope: !1741, inlinedAt: !1851)
!1860 = !DILocation(line: 326, column: 11, scope: !1741, inlinedAt: !1851)
!1861 = !DILocation(line: 327, column: 19, scope: !1741, inlinedAt: !1851)
!1862 = !DILocation(line: 327, column: 11, scope: !1741, inlinedAt: !1851)
!1863 = !DILocation(line: 334, column: 15, scope: !1752, inlinedAt: !1851)
!1864 = !DILocation(line: 0, scope: !1741, inlinedAt: !1851)
!1865 = !DILocation(line: 316, column: 34, scope: !1743, inlinedAt: !1851)
!1866 = distinct !{!1866, !1854, !1867}
!1867 = !DILocation(line: 349, column: 5, scope: !1734, inlinedAt: !1851)
!1868 = !DILocation(line: 350, column: 15, scope: !1759, inlinedAt: !1851)
!1869 = !DILocation(line: 350, column: 11, scope: !1759, inlinedAt: !1851)
!1870 = !DILocation(line: 350, column: 7, scope: !1727, inlinedAt: !1851)
!1871 = !DILocation(line: 351, column: 10, scope: !1759, inlinedAt: !1851)
!1872 = !DILocation(line: 351, column: 5, scope: !1759, inlinedAt: !1851)
!1873 = !DILocation(line: 542, column: 49, scope: !1849, inlinedAt: !1671)
!1874 = !DILocation(line: 713, column: 14, scope: !255, inlinedAt: !1425)
!1875 = !DILocation(line: 367, column: 10, scope: !1773, inlinedAt: !1781)
!1876 = !DILocation(line: 367, column: 13, scope: !1773, inlinedAt: !1781)
!1877 = !DILocation(line: 713, column: 29, scope: !255, inlinedAt: !1425)
!1878 = !DILocation(line: 713, column: 32, scope: !255, inlinedAt: !1425)
!1879 = !DILocation(line: 712, column: 11, scope: !246, inlinedAt: !1425)
!1880 = !DILocation(line: 715, column: 11, scope: !1881, inlinedAt: !1425)
!1881 = distinct !DILexicalBlock(scope: !255, file: !3, line: 714, column: 9)
!1882 = !DILocation(line: 717, column: 15, scope: !1883, inlinedAt: !1425)
!1883 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 717, column: 15)
!1884 = !DILocation(line: 717, column: 15, scope: !1881, inlinedAt: !1425)
!1885 = !DILocation(line: 720, column: 22, scope: !1886, inlinedAt: !1425)
!1886 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 718, column: 13)
!1887 = !DILocation(line: 722, column: 22, scope: !1886, inlinedAt: !1425)
!1888 = !DILocation(line: 719, column: 15, scope: !1886, inlinedAt: !1425)
!1889 = !DILocation(line: 724, column: 13, scope: !1886, inlinedAt: !1425)
!1890 = !DILocation(line: 726, column: 11, scope: !1881, inlinedAt: !1425)
!1891 = !DILocation(line: 727, column: 9, scope: !1881, inlinedAt: !1425)
!1892 = !DILocation(line: 735, column: 11, scope: !254, inlinedAt: !1425)
!1893 = !DILocation(line: 738, column: 33, scope: !254, inlinedAt: !1425)
!1894 = !DILocation(line: 738, column: 45, scope: !254, inlinedAt: !1425)
!1895 = !DILocation(line: 738, column: 48, scope: !254, inlinedAt: !1425)
!1896 = !DILocation(line: 0, scope: !254, inlinedAt: !1425)
!1897 = !DILocation(line: 742, column: 16, scope: !254, inlinedAt: !1425)
!1898 = !DILocation(line: 744, column: 15, scope: !254, inlinedAt: !1425)
!1899 = !DILocation(line: 746, column: 15, scope: !1900, inlinedAt: !1425)
!1900 = distinct !DILexicalBlock(scope: !261, file: !3, line: 745, column: 13)
!1901 = !DILocation(line: 747, column: 20, scope: !1902, inlinedAt: !1425)
!1902 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 747, column: 19)
!1903 = !DILocation(line: 747, column: 19, scope: !1900, inlinedAt: !1425)
!1904 = !DILocation(line: 749, column: 23, scope: !1905, inlinedAt: !1425)
!1905 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 748, column: 17)
!1906 = !DILocation(line: 0, scope: !1571, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 750, column: 21, scope: !1908, inlinedAt: !1425)
!1908 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 749, column: 23)
!1909 = !DILocation(line: 110, column: 10, scope: !1571, inlinedAt: !1907)
!1910 = !{!1911, !1345, i64 40}
!1911 = !{!"_IO_FILE", !1557, i64 0, !1345, i64 8, !1345, i64 16, !1345, i64 24, !1345, i64 32, !1345, i64 40, !1345, i64 48, !1345, i64 56, !1345, i64 64, !1345, i64 72, !1345, i64 80, !1345, i64 88, !1345, i64 96, !1345, i64 104, !1557, i64 112, !1557, i64 116, !1610, i64 120, !1791, i64 128, !1346, i64 130, !1346, i64 131, !1345, i64 136, !1610, i64 144, !1345, i64 152, !1345, i64 160, !1345, i64 168, !1345, i64 176, !1610, i64 184, !1557, i64 192, !1346, i64 196}
!1912 = !{!1911, !1345, i64 48}
!1913 = !{!"branch_weights", i32 2000, i32 1}
!1914 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1915 = !DILocation(line: 751, column: 19, scope: !1905, inlinedAt: !1425)
!1916 = !DILocation(line: 752, column: 19, scope: !1905, inlinedAt: !1425)
!1917 = !DILocation(line: 753, column: 17, scope: !1905, inlinedAt: !1425)
!1918 = !DILocation(line: 755, column: 20, scope: !260, inlinedAt: !1425)
!1919 = !DILocation(line: 755, column: 35, scope: !260, inlinedAt: !1425)
!1920 = !DILocation(line: 755, column: 38, scope: !260, inlinedAt: !1425)
!1921 = !DILocation(line: 762, column: 41, scope: !259, inlinedAt: !1425)
!1922 = !DILocation(line: 762, column: 58, scope: !259, inlinedAt: !1425)
!1923 = !DILocation(line: 0, scope: !259, inlinedAt: !1425)
!1924 = !DILocation(line: 767, column: 15, scope: !268, inlinedAt: !1425)
!1925 = !DILocation(line: 0, scope: !1926, inlinedAt: !1425)
!1926 = distinct !DILexicalBlock(scope: !264, file: !3, line: 769, column: 23)
!1927 = !DILocation(line: 769, column: 23, scope: !1926, inlinedAt: !1425)
!1928 = !DILocation(line: 0, scope: !264, inlinedAt: !1425)
!1929 = !DILocation(line: 770, column: 34, scope: !265, inlinedAt: !1425)
!1930 = !DILocation(line: 770, column: 50, scope: !265, inlinedAt: !1425)
!1931 = !DILocation(line: 770, column: 26, scope: !265, inlinedAt: !1425)
!1932 = !DILocation(line: 770, column: 23, scope: !265, inlinedAt: !1425)
!1933 = !DILocation(line: 771, column: 23, scope: !265, inlinedAt: !1425)
!1934 = !DILocation(line: 771, column: 27, scope: !1935, inlinedAt: !1425)
!1935 = distinct !DILexicalBlock(scope: !270, file: !3, line: 771, column: 27)
!1936 = !DILocation(line: 0, scope: !270, inlinedAt: !1425)
!1937 = !DILocation(line: 772, column: 55, scope: !265, inlinedAt: !1425)
!1938 = !DILocation(line: 772, column: 31, scope: !265, inlinedAt: !1425)
!1939 = !DILocation(line: 772, column: 30, scope: !265, inlinedAt: !1425)
!1940 = !DILocation(line: 772, column: 27, scope: !265, inlinedAt: !1425)
!1941 = !DILocation(line: 769, column: 23, scope: !266, inlinedAt: !1425)
!1942 = !DILocation(line: 767, column: 53, scope: !267, inlinedAt: !1425)
!1943 = !DILocation(line: 767, column: 33, scope: !267, inlinedAt: !1425)
!1944 = distinct !{!1944, !1924, !1945}
!1945 = !DILocation(line: 774, column: 17, scope: !268, inlinedAt: !1425)
!1946 = !DILocation(line: 0, scope: !268, inlinedAt: !1425)
!1947 = !DILocation(line: 775, column: 23, scope: !1948, inlinedAt: !1425)
!1948 = distinct !DILexicalBlock(scope: !259, file: !3, line: 775, column: 19)
!1949 = !DILocation(line: 775, column: 19, scope: !259, inlinedAt: !1425)
!1950 = !DILocation(line: 780, column: 20, scope: !1951, inlinedAt: !1425)
!1951 = distinct !DILexicalBlock(scope: !259, file: !3, line: 780, column: 19)
!1952 = !DILocation(line: 780, column: 19, scope: !259, inlinedAt: !1425)
!1953 = !DILocation(line: 782, column: 47, scope: !1954, inlinedAt: !1425)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 782, column: 23)
!1955 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 781, column: 17)
!1956 = !DILocation(line: 782, column: 52, scope: !1954, inlinedAt: !1425)
!1957 = !DILocation(line: 782, column: 23, scope: !1955, inlinedAt: !1425)
!1958 = !DILocation(line: 784, column: 27, scope: !1959, inlinedAt: !1425)
!1959 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 783, column: 21)
!1960 = !DILocation(line: 0, scope: !1571, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 785, column: 25, scope: !1962, inlinedAt: !1425)
!1962 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 784, column: 27)
!1963 = !DILocation(line: 110, column: 10, scope: !1571, inlinedAt: !1961)
!1964 = !DILocation(line: 786, column: 23, scope: !1959, inlinedAt: !1425)
!1965 = !DILocation(line: 789, column: 23, scope: !1955, inlinedAt: !1425)
!1966 = !DILocation(line: 790, column: 21, scope: !1967, inlinedAt: !1425)
!1967 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 789, column: 23)
!1968 = !DILocation(line: 791, column: 29, scope: !1969, inlinedAt: !1425)
!1969 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 791, column: 28)
!1970 = !DILocation(line: 791, column: 28, scope: !1967, inlinedAt: !1425)
!1971 = !DILocation(line: 792, column: 21, scope: !1969, inlinedAt: !1425)
!1972 = !DILocation(line: 795, column: 9, scope: !255, inlinedAt: !1425)
!1973 = !DILocation(line: 130, column: 10, scope: !1612, inlinedAt: !1617)
!1974 = !{!1911, !1557, i64 0}
!1975 = !DILocation(line: 797, column: 35, scope: !223, inlinedAt: !1425)
!1976 = !DILocalVariable(name: "__stream", arg: 1, scope: !1977, file: !1572, line: 135, type: !229)
!1977 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1572, file: !1572, line: 135, type: !1613, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1978)
!1978 = !{!1976}
!1979 = !DILocation(line: 0, scope: !1977, inlinedAt: !1980)
!1980 = distinct !DILocation(line: 797, column: 39, scope: !223, inlinedAt: !1425)
!1981 = distinct !{!1981, !1618, !1982}
!1982 = !DILocation(line: 797, column: 64, scope: !223, inlinedAt: !1425)
!1983 = !DILocation(line: 799, column: 9, scope: !223, inlinedAt: !1425)
!1984 = !DILocation(line: 799, column: 3, scope: !223, inlinedAt: !1425)
!1985 = !DILocation(line: 0, scope: !1977, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 801, column: 7, scope: !1987, inlinedAt: !1425)
!1987 = distinct !DILexicalBlock(scope: !223, file: !3, line: 801, column: 7)
!1988 = !DILocation(line: 137, column: 10, scope: !1977, inlinedAt: !1986)
!1989 = !DILocation(line: 801, column: 7, scope: !1987, inlinedAt: !1425)
!1990 = !DILocation(line: 801, column: 7, scope: !223, inlinedAt: !1425)
!1991 = !DILocation(line: 803, column: 20, scope: !1992, inlinedAt: !1425)
!1992 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 802, column: 5)
!1993 = !DILocation(line: 803, column: 41, scope: !1992, inlinedAt: !1425)
!1994 = !DILocation(line: 803, column: 7, scope: !1992, inlinedAt: !1425)
!1995 = !DILocation(line: 804, column: 7, scope: !1992, inlinedAt: !1425)
!1996 = !DILocation(line: 807, column: 17, scope: !1997, inlinedAt: !1425)
!1997 = distinct !DILexicalBlock(scope: !223, file: !3, line: 807, column: 7)
!1998 = !DILocation(line: 807, column: 20, scope: !1997, inlinedAt: !1425)
!1999 = !DILocation(line: 807, column: 46, scope: !1997, inlinedAt: !1425)
!2000 = !DILocation(line: 807, column: 7, scope: !223, inlinedAt: !1425)
!2001 = !DILocation(line: 809, column: 17, scope: !2002, inlinedAt: !1425)
!2002 = distinct !DILexicalBlock(scope: !1997, file: !3, line: 808, column: 5)
!2003 = !DILocation(line: 809, column: 30, scope: !2002, inlinedAt: !1425)
!2004 = !DILocation(line: 809, column: 7, scope: !2002, inlinedAt: !1425)
!2005 = !DILocation(line: 810, column: 7, scope: !2002, inlinedAt: !1425)
!2006 = !DILocation(line: 813, column: 9, scope: !2007, inlinedAt: !1425)
!2007 = distinct !DILexicalBlock(scope: !223, file: !3, line: 813, column: 7)
!2008 = !DILocation(line: 813, column: 7, scope: !223, inlinedAt: !1425)
!2009 = !DILocation(line: 821, column: 12, scope: !2010, inlinedAt: !1425)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !3, line: 821, column: 11)
!2011 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 820, column: 5)
!2012 = !DILocation(line: 821, column: 11, scope: !2011, inlinedAt: !1425)
!2013 = !DILocation(line: 854, column: 14, scope: !223, inlinedAt: !1425)
!2014 = !DILocation(line: 823, column: 36, scope: !2015, inlinedAt: !1425)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 823, column: 15)
!2016 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 822, column: 9)
!2017 = !DILocation(line: 823, column: 15, scope: !2016, inlinedAt: !1425)
!2018 = !DILocation(line: 825, column: 21, scope: !2015, inlinedAt: !1425)
!2019 = !DILocation(line: 824, column: 13, scope: !2015, inlinedAt: !1425)
!2020 = !DILocation(line: 831, column: 39, scope: !2021, inlinedAt: !1425)
!2021 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 831, column: 15)
!2022 = !DILocation(line: 831, column: 15, scope: !2016, inlinedAt: !1425)
!2023 = !DILocation(line: 833, column: 21, scope: !2021, inlinedAt: !1425)
!2024 = !DILocation(line: 832, column: 13, scope: !2021, inlinedAt: !1425)
!2025 = !DILocation(line: 839, column: 38, scope: !2026, inlinedAt: !1425)
!2026 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 839, column: 15)
!2027 = !DILocation(line: 839, column: 15, scope: !2016, inlinedAt: !1425)
!2028 = !DILocation(line: 841, column: 21, scope: !2026, inlinedAt: !1425)
!2029 = !DILocation(line: 840, column: 13, scope: !2026, inlinedAt: !1425)
!2030 = !DILocation(line: 847, column: 15, scope: !2031, inlinedAt: !1425)
!2031 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 847, column: 15)
!2032 = !DILocation(line: 847, column: 35, scope: !2031, inlinedAt: !1425)
!2033 = !DILocation(line: 847, column: 30, scope: !2031, inlinedAt: !1425)
!2034 = !DILocation(line: 848, column: 26, scope: !2031, inlinedAt: !1425)
!2035 = !DILocation(line: 849, column: 20, scope: !2031, inlinedAt: !1425)
!2036 = !DILocation(line: 848, column: 13, scope: !2031, inlinedAt: !1425)
!2037 = !DILocation(line: 855, column: 11, scope: !223, inlinedAt: !1425)
!2038 = !DILocation(line: 816, column: 20, scope: !2039, inlinedAt: !1425)
!2039 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 814, column: 5)
!2040 = !DILocation(line: 817, column: 14, scope: !2039, inlinedAt: !1425)
!2041 = !DILocation(line: 816, column: 7, scope: !2039, inlinedAt: !1425)
!2042 = !DILocation(line: 854, column: 11, scope: !223, inlinedAt: !1425)
!2043 = !DILocation(line: 857, column: 16, scope: !223, inlinedAt: !1425)
!2044 = !DILocation(line: 857, column: 23, scope: !223, inlinedAt: !1425)
!2045 = !DILocation(line: 858, column: 1, scope: !223, inlinedAt: !1425)
!2046 = !DILocation(line: 1047, column: 15, scope: !1417)
!2047 = !DILocation(line: 1047, column: 12, scope: !1417)
!2048 = !DILocation(line: 1047, column: 9, scope: !1417)
!2049 = !DILocation(line: 0, scope: !1416)
!2050 = !DILocation(line: 1051, column: 11, scope: !1416)
!2051 = !DILocation(line: 1053, column: 17, scope: !1421)
!2052 = !DILocation(line: 1053, column: 15, scope: !1416)
!2053 = !DILocation(line: 1064, column: 36, scope: !1420)
!2054 = !DILocation(line: 1064, column: 56, scope: !1420)
!2055 = !DILocation(line: 1064, column: 59, scope: !1420)
!2056 = !DILocation(line: 1065, column: 35, scope: !1420)
!2057 = !DILocation(line: 1065, column: 38, scope: !1420)
!2058 = !DILocation(line: 1065, column: 44, scope: !1420)
!2059 = !DILocation(line: 0, scope: !1420)
!2060 = !DILocation(line: 1067, column: 19, scope: !1420)
!2061 = !DILocation(line: 1069, column: 23, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 1068, column: 17)
!2063 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 1067, column: 19)
!2064 = !DILocation(line: 0, scope: !1571, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 1070, column: 21, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 1069, column: 23)
!2067 = !DILocation(line: 110, column: 10, scope: !1571, inlinedAt: !2065)
!2068 = !DILocation(line: 1077, column: 19, scope: !2062)
!2069 = !DILocation(line: 1079, column: 19, scope: !2062)
!2070 = !DILocation(line: 1080, column: 19, scope: !2062)
!2071 = !DILocation(line: 1081, column: 19, scope: !2062)
!2072 = !DILocation(line: 1086, column: 31, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 1086, column: 19)
!2074 = !DILocation(line: 1086, column: 19, scope: !1420)
!2075 = !DILocation(line: 0, scope: !1571, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 1087, column: 17, scope: !2073)
!2077 = !DILocation(line: 110, column: 10, scope: !1571, inlinedAt: !2076)
!2078 = !DILocation(line: 0, scope: !1423)
!2079 = !DILocation(line: 1089, column: 39, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1089, column: 15)
!2081 = !DILocation(line: 1089, column: 15, scope: !1423)
!2082 = !DILocation(line: 1092, column: 19, scope: !1420)
!2083 = !DILocation(line: 1090, column: 17, scope: !2080)
!2084 = !DILocation(line: 1089, column: 62, scope: !2080)
!2085 = !DILocation(line: 1089, column: 56, scope: !2080)
!2086 = !DILocation(line: 1089, column: 36, scope: !2080)
!2087 = distinct !{!2087, !2081, !2088}
!2088 = !DILocation(line: 1090, column: 17, scope: !1423)
!2089 = !DILocation(line: 0, scope: !1571, inlinedAt: !2090)
!2090 = distinct !DILocation(line: 1094, column: 19, scope: !1568)
!2091 = !DILocation(line: 110, column: 10, scope: !1571, inlinedAt: !2090)
!2092 = !DILocation(line: 110, column: 10, scope: !1571, inlinedAt: !1575)
!2093 = !DILocation(line: 1098, column: 19, scope: !1568)
!2094 = !DILocation(line: 1099, column: 17, scope: !1568)
!2095 = !DILocation(line: 1101, column: 15, scope: !1420)
!2096 = !DILocation(line: 0, scope: !1571, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 1101, column: 15, scope: !1420)
!2098 = !DILocation(line: 110, column: 10, scope: !1571, inlinedAt: !2097)
!2099 = !DILocation(line: 1103, column: 9, scope: !1417)
!2100 = !DILocation(line: 1042, column: 73, scope: !1414)
!2101 = distinct !{!2101, !1566, !2102}
!2102 = !DILocation(line: 1104, column: 5, scope: !1411)
!2103 = !DILocation(line: 1106, column: 34, scope: !1580)
!2104 = !DILocation(line: 1106, column: 26, scope: !1580)
!2105 = !DILocation(line: 1106, column: 41, scope: !1580)
!2106 = !DILocation(line: 1106, column: 7, scope: !1394)
!2107 = !DILocation(line: 1107, column: 5, scope: !1580)
!2108 = !DILocation(line: 1109, column: 10, scope: !1394)
!2109 = !DILocation(line: 1110, column: 1, scope: !1394)
!2110 = !DILocation(line: 361, column: 51, scope: !1784, inlinedAt: !1814)
!2111 = !DILocation(line: 361, column: 30, scope: !1784, inlinedAt: !1814)
!2112 = distinct !{!2112, !1817, !2113}
!2113 = !DILocation(line: 366, column: 5, scope: !1779, inlinedAt: !1814)
!2114 = distinct !DISubprogram(name: "digest_file", scope: !3, file: !3, line: 591, type: !2115, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2118)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!204, !65, !165, !192, !2117}
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!2118 = !{!2119, !2120, !2121, !2122, !2123, !2124, !2125}
!2119 = !DILocalVariable(name: "filename", arg: 1, scope: !2114, file: !3, line: 591, type: !65)
!2120 = !DILocalVariable(name: "binary", arg: 2, scope: !2114, file: !3, line: 591, type: !165)
!2121 = !DILocalVariable(name: "bin_result", arg: 3, scope: !2114, file: !3, line: 591, type: !192)
!2122 = !DILocalVariable(name: "missing", arg: 4, scope: !2114, file: !3, line: 592, type: !2117)
!2123 = !DILocalVariable(name: "fp", scope: !2114, file: !3, line: 594, type: !229)
!2124 = !DILocalVariable(name: "err", scope: !2114, file: !3, line: 595, type: !67)
!2125 = !DILocalVariable(name: "is_stdin", scope: !2114, file: !3, line: 596, type: !204)
!2126 = !DILocation(line: 0, scope: !2114)
!2127 = !DILocation(line: 596, column: 19, scope: !2114)
!2128 = !DILocation(line: 598, column: 12, scope: !2114)
!2129 = !{!2130, !2130, i64 0}
!2130 = !{!"_Bool", !1346, i64 0}
!2131 = !DILocation(line: 600, column: 7, scope: !2114)
!2132 = !DILocation(line: 602, column: 23, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 601, column: 5)
!2134 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 600, column: 7)
!2135 = !DILocation(line: 603, column: 12, scope: !2133)
!2136 = !DILocation(line: 611, column: 5, scope: !2133)
!2137 = !DILocation(line: 614, column: 12, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 613, column: 5)
!2139 = !DILocation(line: 615, column: 14, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 615, column: 11)
!2141 = !DILocation(line: 615, column: 11, scope: !2138)
!2142 = !DILocation(line: 617, column: 15, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 617, column: 15)
!2144 = distinct !DILexicalBlock(scope: !2140, file: !3, line: 616, column: 9)
!2145 = !DILocation(line: 0, scope: !2144)
!2146 = !DILocation(line: 617, column: 30, scope: !2143)
!2147 = !DILocation(line: 617, column: 33, scope: !2143)
!2148 = !DILocation(line: 617, column: 39, scope: !2143)
!2149 = !DILocation(line: 617, column: 15, scope: !2144)
!2150 = !DILocation(line: 619, column: 24, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 618, column: 13)
!2152 = !DILocation(line: 620, column: 15, scope: !2151)
!2153 = !DILocation(line: 622, column: 21, scope: !2144)
!2154 = !DILocation(line: 622, column: 34, scope: !2144)
!2155 = !DILocation(line: 622, column: 11, scope: !2144)
!2156 = !DILocation(line: 623, column: 11, scope: !2144)
!2157 = !DILocation(line: 0, scope: !2134)
!2158 = !DILocation(line: 627, column: 3, scope: !2114)
!2159 = !DILocation(line: 632, column: 9, scope: !2114)
!2160 = !DILocation(line: 634, column: 7, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 634, column: 7)
!2162 = !DILocation(line: 634, column: 7, scope: !2114)
!2163 = !DILocation(line: 636, column: 17, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 635, column: 5)
!2165 = !DILocation(line: 636, column: 30, scope: !2164)
!2166 = !DILocation(line: 636, column: 7, scope: !2164)
!2167 = !DILocation(line: 637, column: 17, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 637, column: 11)
!2169 = !DILocation(line: 637, column: 14, scope: !2168)
!2170 = !DILocation(line: 637, column: 11, scope: !2164)
!2171 = !DILocation(line: 638, column: 9, scope: !2168)
!2172 = !DILocation(line: 642, column: 17, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 642, column: 7)
!2174 = !DILocation(line: 642, column: 20, scope: !2173)
!2175 = !DILocation(line: 642, column: 32, scope: !2173)
!2176 = !DILocation(line: 642, column: 7, scope: !2114)
!2177 = !DILocation(line: 644, column: 17, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 643, column: 5)
!2179 = !DILocation(line: 644, column: 30, scope: !2178)
!2180 = !DILocation(line: 644, column: 7, scope: !2178)
!2181 = !DILocation(line: 645, column: 7, scope: !2178)
!2182 = !DILocation(line: 649, column: 1, scope: !2114)
!2183 = distinct !DISubprogram(name: "print_filename", scope: !3, file: !3, line: 550, type: !2184, scopeLine: 551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2186)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{null, !65, !204}
!2186 = !{!2187, !2188}
!2187 = !DILocalVariable(name: "file", arg: 1, scope: !2183, file: !3, line: 550, type: !65)
!2188 = !DILocalVariable(name: "escape", arg: 2, scope: !2183, file: !3, line: 550, type: !204)
!2189 = !DILocation(line: 0, scope: !2183)
!2190 = !DILocation(line: 552, column: 7, scope: !2183)
!2191 = !DILocation(line: 558, column: 10, scope: !2183)
!2192 = !DILocation(line: 558, column: 3, scope: !2183)
!2193 = !DILocation(line: 554, column: 7, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 553, column: 5)
!2195 = distinct !DILexicalBlock(scope: !2183, file: !3, line: 552, column: 7)
!2196 = !DILocation(line: 555, column: 7, scope: !2194)
!2197 = !DILocation(line: 560, column: 15, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2183, file: !3, line: 559, column: 5)
!2199 = !DILocation(line: 560, column: 7, scope: !2198)
!2200 = !DILocation(line: 563, column: 11, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 561, column: 9)
!2202 = !DILocation(line: 564, column: 11, scope: !2201)
!2203 = !DILocation(line: 567, column: 11, scope: !2201)
!2204 = !DILocation(line: 568, column: 11, scope: !2201)
!2205 = !DILocation(line: 0, scope: !1571, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 571, column: 11, scope: !2201)
!2207 = !DILocation(line: 110, column: 10, scope: !1571, inlinedAt: !2206)
!2208 = !DILocation(line: 574, column: 11, scope: !2198)
!2209 = distinct !{!2209, !2192, !2210}
!2210 = !DILocation(line: 575, column: 5, scope: !2183)
!2211 = !DILocation(line: 576, column: 1, scope: !2183)
!2212 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !296, file: !296, line: 51, type: !130, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !295, retainedNodes: !2213)
!2213 = !{!2214}
!2214 = !DILocalVariable(name: "file", arg: 1, scope: !2212, file: !296, line: 51, type: !65)
!2215 = !DILocation(line: 0, scope: !2212)
!2216 = !DILocation(line: 53, column: 13, scope: !2212)
!2217 = !DILocation(line: 54, column: 1, scope: !2212)
!2218 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !296, file: !296, line: 88, type: !2219, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !295, retainedNodes: !2221)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{null, !204}
!2221 = !{!2222}
!2222 = !DILocalVariable(name: "ignore", arg: 1, scope: !2218, file: !296, line: 88, type: !204)
!2223 = !DILocation(line: 0, scope: !2218)
!2224 = !DILocation(line: 90, column: 16, scope: !2218)
!2225 = !DILocation(line: 91, column: 1, scope: !2218)
!2226 = distinct !DISubprogram(name: "close_stdout", scope: !296, file: !296, line: 117, type: !147, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !295, retainedNodes: !2227)
!2227 = !{!2228}
!2228 = !DILocalVariable(name: "write_error", scope: !2229, file: !296, line: 122, type: !65)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !296, line: 121, column: 5)
!2230 = distinct !DILexicalBlock(scope: !2226, file: !296, line: 119, column: 7)
!2231 = !DILocation(line: 119, column: 21, scope: !2230)
!2232 = !DILocation(line: 119, column: 7, scope: !2230)
!2233 = !DILocation(line: 119, column: 29, scope: !2230)
!2234 = !DILocation(line: 120, column: 7, scope: !2230)
!2235 = !DILocation(line: 120, column: 12, scope: !2230)
!2236 = !{i8 0, i8 2}
!2237 = !DILocation(line: 120, column: 25, scope: !2230)
!2238 = !DILocation(line: 120, column: 28, scope: !2230)
!2239 = !DILocation(line: 120, column: 34, scope: !2230)
!2240 = !DILocation(line: 119, column: 7, scope: !2226)
!2241 = !DILocation(line: 122, column: 33, scope: !2229)
!2242 = !DILocation(line: 0, scope: !2229)
!2243 = !DILocation(line: 123, column: 11, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2229, file: !296, line: 123, column: 11)
!2245 = !DILocation(line: 0, scope: !2244)
!2246 = !DILocation(line: 123, column: 11, scope: !2229)
!2247 = !DILocation(line: 124, column: 36, scope: !2244)
!2248 = !DILocation(line: 124, column: 9, scope: !2244)
!2249 = !DILocation(line: 127, column: 9, scope: !2244)
!2250 = !DILocation(line: 129, column: 14, scope: !2229)
!2251 = !DILocation(line: 129, column: 7, scope: !2229)
!2252 = !DILocation(line: 134, column: 42, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2226, file: !296, line: 134, column: 7)
!2254 = !DILocation(line: 134, column: 28, scope: !2253)
!2255 = !DILocation(line: 134, column: 50, scope: !2253)
!2256 = !DILocation(line: 134, column: 7, scope: !2226)
!2257 = !DILocation(line: 135, column: 12, scope: !2253)
!2258 = !DILocation(line: 135, column: 5, scope: !2253)
!2259 = !DILocation(line: 136, column: 1, scope: !2226)
!2260 = distinct !DISubprogram(name: "md5_init_ctx", scope: !341, file: !341, line: 76, type: !2261, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !340, retainedNodes: !2263)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{null, !348}
!2263 = !{!2264}
!2264 = !DILocalVariable(name: "ctx", arg: 1, scope: !2260, file: !341, line: 76, type: !348)
!2265 = !DILocation(line: 0, scope: !2260)
!2266 = !DILocation(line: 78, column: 10, scope: !2260)
!2267 = !DILocation(line: 83, column: 19, scope: !2260)
!2268 = !DILocation(line: 83, column: 33, scope: !2260)
!2269 = !DILocation(line: 83, column: 3, scope: !2260)
!2270 = !DILocation(line: 83, column: 17, scope: !2260)
!2271 = !DILocation(line: 84, column: 8, scope: !2260)
!2272 = !DILocation(line: 84, column: 15, scope: !2260)
!2273 = !{!2274, !1557, i64 24}
!2274 = !{!"md5_ctx", !1557, i64 0, !1557, i64 4, !1557, i64 8, !1557, i64 12, !1346, i64 16, !1557, i64 24, !1346, i64 28}
!2275 = !DILocation(line: 85, column: 1, scope: !2260)
!2276 = distinct !DISubprogram(name: "md5_read_ctx", scope: !341, file: !341, line: 99, type: !2277, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !340, retainedNodes: !2281)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!119, !2279, !119}
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!2281 = !{!2282, !2283, !2284}
!2282 = !DILocalVariable(name: "ctx", arg: 1, scope: !2276, file: !341, line: 99, type: !2279)
!2283 = !DILocalVariable(name: "resbuf", arg: 2, scope: !2276, file: !341, line: 99, type: !119)
!2284 = !DILocalVariable(name: "r", scope: !2276, file: !341, line: 101, type: !63)
!2285 = !DILocation(line: 0, scope: !2276)
!2286 = !DILocation(line: 102, column: 38, scope: !2276)
!2287 = !{!2274, !1557, i64 0}
!2288 = !DILocalVariable(name: "cp", arg: 1, scope: !2289, file: !341, line: 91, type: !63)
!2289 = distinct !DISubprogram(name: "set_uint32", scope: !341, file: !341, line: 91, type: !2290, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !340, retainedNodes: !2292)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{null, !63, !352}
!2292 = !{!2288, !2293}
!2293 = !DILocalVariable(name: "v", arg: 2, scope: !2289, file: !341, line: 91, type: !352)
!2294 = !DILocation(line: 0, scope: !2289, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 102, column: 3, scope: !2276)
!2296 = !DILocalVariable(name: "__dest", arg: 1, scope: !2297, file: !2298, line: 31, type: !2301)
!2297 = distinct !DISubprogram(name: "memcpy", scope: !2298, file: !2298, line: 31, type: !2299, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !340, retainedNodes: !2303)
!2298 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!119, !2301, !2302, !121}
!2301 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !119)
!2302 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !346)
!2303 = !{!2296, !2304, !2305}
!2304 = !DILocalVariable(name: "__src", arg: 2, scope: !2297, file: !2298, line: 31, type: !2302)
!2305 = !DILocalVariable(name: "__len", arg: 3, scope: !2297, file: !2298, line: 31, type: !121)
!2306 = !DILocation(line: 0, scope: !2297, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 93, column: 3, scope: !2289, inlinedAt: !2295)
!2308 = !DILocation(line: 34, column: 10, scope: !2297, inlinedAt: !2307)
!2309 = !DILocation(line: 103, column: 17, scope: !2276)
!2310 = !DILocation(line: 103, column: 38, scope: !2276)
!2311 = !{!2274, !1557, i64 4}
!2312 = !DILocation(line: 0, scope: !2289, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 103, column: 3, scope: !2276)
!2314 = !DILocation(line: 0, scope: !2297, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 93, column: 3, scope: !2289, inlinedAt: !2313)
!2316 = !DILocation(line: 34, column: 10, scope: !2297, inlinedAt: !2315)
!2317 = !DILocation(line: 104, column: 17, scope: !2276)
!2318 = !DILocation(line: 104, column: 38, scope: !2276)
!2319 = !{!2274, !1557, i64 8}
!2320 = !DILocation(line: 0, scope: !2289, inlinedAt: !2321)
!2321 = distinct !DILocation(line: 104, column: 3, scope: !2276)
!2322 = !DILocation(line: 0, scope: !2297, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 93, column: 3, scope: !2289, inlinedAt: !2321)
!2324 = !DILocation(line: 34, column: 10, scope: !2297, inlinedAt: !2323)
!2325 = !DILocation(line: 105, column: 17, scope: !2276)
!2326 = !DILocation(line: 105, column: 38, scope: !2276)
!2327 = !{!2274, !1557, i64 12}
!2328 = !DILocation(line: 0, scope: !2289, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 105, column: 3, scope: !2276)
!2330 = !DILocation(line: 0, scope: !2297, inlinedAt: !2331)
!2331 = distinct !DILocation(line: 93, column: 3, scope: !2289, inlinedAt: !2329)
!2332 = !DILocation(line: 34, column: 10, scope: !2297, inlinedAt: !2331)
!2333 = !DILocation(line: 107, column: 3, scope: !2276)
!2334 = distinct !DISubprogram(name: "md5_finish_ctx", scope: !341, file: !341, line: 113, type: !2335, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !340, retainedNodes: !2337)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!119, !348, !119}
!2337 = !{!2338, !2339, !2340, !2341}
!2338 = !DILocalVariable(name: "ctx", arg: 1, scope: !2334, file: !341, line: 113, type: !348)
!2339 = !DILocalVariable(name: "resbuf", arg: 2, scope: !2334, file: !341, line: 113, type: !119)
!2340 = !DILocalVariable(name: "bytes", scope: !2334, file: !341, line: 116, type: !352)
!2341 = !DILocalVariable(name: "size", scope: !2334, file: !341, line: 117, type: !121)
!2342 = !DILocation(line: 0, scope: !2334)
!2343 = !DILocation(line: 116, column: 25, scope: !2334)
!2344 = !DILocation(line: 117, column: 24, scope: !2334)
!2345 = !DILocation(line: 117, column: 17, scope: !2334)
!2346 = !DILocation(line: 120, column: 3, scope: !2334)
!2347 = !DILocation(line: 120, column: 17, scope: !2334)
!2348 = !DILocation(line: 121, column: 21, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2334, file: !341, line: 121, column: 7)
!2350 = !DILocation(line: 121, column: 7, scope: !2334)
!2351 = !DILocation(line: 122, column: 7, scope: !2349)
!2352 = !DILocation(line: 122, column: 5, scope: !2349)
!2353 = !DILocation(line: 125, column: 27, scope: !2334)
!2354 = !DILocation(line: 125, column: 20, scope: !2334)
!2355 = !DILocation(line: 125, column: 3, scope: !2334)
!2356 = !DILocation(line: 125, column: 25, scope: !2334)
!2357 = !DILocation(line: 126, column: 27, scope: !2334)
!2358 = !DILocation(line: 126, column: 20, scope: !2334)
!2359 = !DILocation(line: 126, column: 3, scope: !2334)
!2360 = !DILocation(line: 126, column: 25, scope: !2334)
!2361 = !DILocation(line: 128, column: 12, scope: !2334)
!2362 = !DILocation(line: 128, column: 63, scope: !2334)
!2363 = !DILocation(line: 128, column: 67, scope: !2334)
!2364 = !DILocation(line: 0, scope: !2297, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 128, column: 3, scope: !2334)
!2366 = !DILocation(line: 34, column: 10, scope: !2297, inlinedAt: !2365)
!2367 = !DILocation(line: 131, column: 40, scope: !2334)
!2368 = !DILocation(line: 131, column: 3, scope: !2334)
!2369 = !DILocation(line: 0, scope: !2276, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 133, column: 10, scope: !2334)
!2371 = !DILocation(line: 102, column: 38, scope: !2276, inlinedAt: !2370)
!2372 = !DILocation(line: 0, scope: !2289, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 102, column: 3, scope: !2276, inlinedAt: !2370)
!2374 = !DILocation(line: 0, scope: !2297, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 93, column: 3, scope: !2289, inlinedAt: !2373)
!2376 = !DILocation(line: 34, column: 10, scope: !2297, inlinedAt: !2375)
!2377 = !DILocation(line: 103, column: 17, scope: !2276, inlinedAt: !2370)
!2378 = !DILocation(line: 103, column: 38, scope: !2276, inlinedAt: !2370)
!2379 = !DILocation(line: 0, scope: !2289, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 103, column: 3, scope: !2276, inlinedAt: !2370)
!2381 = !DILocation(line: 0, scope: !2297, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 93, column: 3, scope: !2289, inlinedAt: !2380)
!2383 = !DILocation(line: 34, column: 10, scope: !2297, inlinedAt: !2382)
!2384 = !DILocation(line: 104, column: 17, scope: !2276, inlinedAt: !2370)
!2385 = !DILocation(line: 104, column: 38, scope: !2276, inlinedAt: !2370)
!2386 = !DILocation(line: 0, scope: !2289, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 104, column: 3, scope: !2276, inlinedAt: !2370)
!2388 = !DILocation(line: 0, scope: !2297, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 93, column: 3, scope: !2289, inlinedAt: !2387)
!2390 = !DILocation(line: 34, column: 10, scope: !2297, inlinedAt: !2389)
!2391 = !DILocation(line: 105, column: 17, scope: !2276, inlinedAt: !2370)
!2392 = !DILocation(line: 105, column: 38, scope: !2276, inlinedAt: !2370)
!2393 = !DILocation(line: 0, scope: !2289, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 105, column: 3, scope: !2276, inlinedAt: !2370)
!2395 = !DILocation(line: 0, scope: !2297, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 93, column: 3, scope: !2289, inlinedAt: !2394)
!2397 = !DILocation(line: 34, column: 10, scope: !2297, inlinedAt: !2396)
!2398 = !DILocation(line: 133, column: 3, scope: !2334)
!2399 = distinct !DISubprogram(name: "md5_process_block", scope: !341, file: !341, line: 325, type: !2400, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !340, retainedNodes: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{null, !346, !121, !348}
!2402 = !{!2403, !2404, !2405, !2406, !2408, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2421, !2422, !2423, !2424}
!2403 = !DILocalVariable(name: "buffer", arg: 1, scope: !2399, file: !341, line: 325, type: !346)
!2404 = !DILocalVariable(name: "len", arg: 2, scope: !2399, file: !341, line: 325, type: !121)
!2405 = !DILocalVariable(name: "ctx", arg: 3, scope: !2399, file: !341, line: 325, type: !348)
!2406 = !DILocalVariable(name: "correct_words", scope: !2399, file: !341, line: 327, type: !2407)
!2407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 512, elements: !272)
!2408 = !DILocalVariable(name: "words", scope: !2399, file: !341, line: 328, type: !2409)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!2411 = !DILocalVariable(name: "nwords", scope: !2399, file: !341, line: 329, type: !121)
!2412 = !DILocalVariable(name: "endp", scope: !2399, file: !341, line: 330, type: !2409)
!2413 = !DILocalVariable(name: "A", scope: !2399, file: !341, line: 331, type: !352)
!2414 = !DILocalVariable(name: "B", scope: !2399, file: !341, line: 332, type: !352)
!2415 = !DILocalVariable(name: "C", scope: !2399, file: !341, line: 333, type: !352)
!2416 = !DILocalVariable(name: "D", scope: !2399, file: !341, line: 334, type: !352)
!2417 = !DILocalVariable(name: "lolen", scope: !2399, file: !341, line: 335, type: !352)
!2418 = !DILocalVariable(name: "cwp", scope: !2419, file: !341, line: 347, type: !2420)
!2419 = distinct !DILexicalBlock(scope: !2399, file: !341, line: 346, column: 5)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!2421 = !DILocalVariable(name: "A_save", scope: !2419, file: !341, line: 348, type: !352)
!2422 = !DILocalVariable(name: "B_save", scope: !2419, file: !341, line: 349, type: !352)
!2423 = !DILocalVariable(name: "C_save", scope: !2419, file: !341, line: 350, type: !352)
!2424 = !DILocalVariable(name: "D_save", scope: !2419, file: !341, line: 351, type: !352)
!2425 = !DILocation(line: 0, scope: !2399)
!2426 = !DILocation(line: 328, column: 27, scope: !2399)
!2427 = !DILocation(line: 329, column: 23, scope: !2399)
!2428 = !DILocation(line: 330, column: 32, scope: !2399)
!2429 = !DILocation(line: 331, column: 21, scope: !2399)
!2430 = !DILocation(line: 332, column: 21, scope: !2399)
!2431 = !DILocation(line: 333, column: 21, scope: !2399)
!2432 = !DILocation(line: 334, column: 21, scope: !2399)
!2433 = !DILocation(line: 335, column: 20, scope: !2399)
!2434 = !DILocation(line: 340, column: 3, scope: !2399)
!2435 = !DILocation(line: 340, column: 17, scope: !2399)
!2436 = !DILocation(line: 341, column: 25, scope: !2399)
!2437 = !DILocation(line: 341, column: 54, scope: !2399)
!2438 = !DILocation(line: 341, column: 39, scope: !2399)
!2439 = !DILocation(line: 341, column: 37, scope: !2399)
!2440 = !DILocation(line: 341, column: 3, scope: !2399)
!2441 = !DILocation(line: 341, column: 17, scope: !2399)
!2442 = !DILocation(line: 345, column: 16, scope: !2399)
!2443 = !DILocation(line: 345, column: 3, scope: !2399)
!2444 = !DILocation(line: 0, scope: !2419)
!2445 = !DILocation(line: 385, column: 7, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 385, column: 7)
!2447 = !DILocation(line: 386, column: 7, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 386, column: 7)
!2449 = !DILocation(line: 387, column: 7, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 387, column: 7)
!2451 = !DILocation(line: 388, column: 7, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 388, column: 7)
!2453 = !DILocation(line: 389, column: 7, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 389, column: 7)
!2455 = !DILocation(line: 390, column: 7, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 390, column: 7)
!2457 = !DILocation(line: 391, column: 7, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 391, column: 7)
!2459 = !DILocation(line: 392, column: 7, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 392, column: 7)
!2461 = !DILocation(line: 393, column: 7, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 393, column: 7)
!2463 = !DILocation(line: 394, column: 7, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 394, column: 7)
!2465 = !DILocation(line: 395, column: 7, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 395, column: 7)
!2467 = !DILocation(line: 396, column: 7, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 396, column: 7)
!2469 = !DILocation(line: 397, column: 7, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 397, column: 7)
!2471 = !DILocation(line: 398, column: 7, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 398, column: 7)
!2473 = !DILocation(line: 399, column: 7, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 399, column: 7)
!2475 = !DILocation(line: 400, column: 7, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 400, column: 7)
!2477 = !DILocation(line: 416, column: 7, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 416, column: 7)
!2479 = !DILocation(line: 417, column: 7, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 417, column: 7)
!2481 = !DILocation(line: 418, column: 7, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 418, column: 7)
!2483 = !DILocation(line: 419, column: 7, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 419, column: 7)
!2485 = !DILocation(line: 420, column: 7, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 420, column: 7)
!2487 = !DILocation(line: 421, column: 7, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 421, column: 7)
!2489 = !DILocation(line: 422, column: 7, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 422, column: 7)
!2491 = !DILocation(line: 423, column: 7, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 423, column: 7)
!2493 = !DILocation(line: 424, column: 7, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 424, column: 7)
!2495 = !DILocation(line: 425, column: 7, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 425, column: 7)
!2497 = !DILocation(line: 426, column: 7, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 426, column: 7)
!2499 = !DILocation(line: 427, column: 7, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 427, column: 7)
!2501 = !DILocation(line: 428, column: 7, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 428, column: 7)
!2503 = !DILocation(line: 429, column: 7, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 429, column: 7)
!2505 = !DILocation(line: 430, column: 7, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 430, column: 7)
!2507 = !DILocation(line: 431, column: 7, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 431, column: 7)
!2509 = !DILocation(line: 434, column: 7, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 434, column: 7)
!2511 = !DILocation(line: 435, column: 7, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 435, column: 7)
!2513 = !DILocation(line: 436, column: 7, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 436, column: 7)
!2515 = !DILocation(line: 437, column: 7, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 437, column: 7)
!2517 = !DILocation(line: 438, column: 7, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 438, column: 7)
!2519 = !DILocation(line: 439, column: 7, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 439, column: 7)
!2521 = !DILocation(line: 440, column: 7, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 440, column: 7)
!2523 = !DILocation(line: 441, column: 7, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 441, column: 7)
!2525 = !DILocation(line: 442, column: 7, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 442, column: 7)
!2527 = !DILocation(line: 443, column: 7, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 443, column: 7)
!2529 = !DILocation(line: 444, column: 7, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 444, column: 7)
!2531 = !DILocation(line: 445, column: 7, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 445, column: 7)
!2533 = !DILocation(line: 446, column: 7, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 446, column: 7)
!2535 = !DILocation(line: 447, column: 7, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 447, column: 7)
!2537 = !DILocation(line: 448, column: 7, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 448, column: 7)
!2539 = !DILocation(line: 449, column: 7, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 449, column: 7)
!2541 = !DILocation(line: 452, column: 7, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 452, column: 7)
!2543 = !DILocation(line: 453, column: 7, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 453, column: 7)
!2545 = !DILocation(line: 454, column: 7, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 454, column: 7)
!2547 = !DILocation(line: 455, column: 7, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 455, column: 7)
!2549 = !DILocation(line: 456, column: 7, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 456, column: 7)
!2551 = !DILocation(line: 457, column: 7, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 457, column: 7)
!2553 = !DILocation(line: 458, column: 7, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 458, column: 7)
!2555 = !DILocation(line: 459, column: 7, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 459, column: 7)
!2557 = !DILocation(line: 460, column: 7, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 460, column: 7)
!2559 = !DILocation(line: 461, column: 7, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 461, column: 7)
!2561 = !DILocation(line: 462, column: 7, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 462, column: 7)
!2563 = !DILocation(line: 463, column: 7, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 463, column: 7)
!2565 = !DILocation(line: 464, column: 7, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 464, column: 7)
!2567 = !DILocation(line: 465, column: 7, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 465, column: 7)
!2569 = !DILocation(line: 466, column: 7, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 466, column: 7)
!2571 = !DILocation(line: 467, column: 7, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2419, file: !341, line: 467, column: 7)
!2573 = !DILocation(line: 470, column: 9, scope: !2419)
!2574 = !DILocation(line: 471, column: 9, scope: !2419)
!2575 = !DILocation(line: 472, column: 9, scope: !2419)
!2576 = !DILocation(line: 473, column: 9, scope: !2419)
!2577 = distinct !{!2577, !2443, !2578}
!2578 = !DILocation(line: 474, column: 5, scope: !2399)
!2579 = !DILocation(line: 477, column: 10, scope: !2399)
!2580 = !DILocation(line: 478, column: 10, scope: !2399)
!2581 = !DILocation(line: 479, column: 10, scope: !2399)
!2582 = !DILocation(line: 480, column: 10, scope: !2399)
!2583 = !DILocation(line: 481, column: 1, scope: !2399)
!2584 = distinct !DISubprogram(name: "md5_stream", scope: !341, file: !341, line: 145, type: !2585, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !340, retainedNodes: !2621)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!67, !2587, !119}
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !2589)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !2590)
!2590 = !{!2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2589, file: !75, line: 51, baseType: !67, size: 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2589, file: !75, line: 54, baseType: !63, size: 64, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2589, file: !75, line: 55, baseType: !63, size: 64, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2589, file: !75, line: 56, baseType: !63, size: 64, offset: 192)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2589, file: !75, line: 57, baseType: !63, size: 64, offset: 256)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2589, file: !75, line: 58, baseType: !63, size: 64, offset: 320)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2589, file: !75, line: 59, baseType: !63, size: 64, offset: 384)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2589, file: !75, line: 60, baseType: !63, size: 64, offset: 448)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2589, file: !75, line: 61, baseType: !63, size: 64, offset: 512)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2589, file: !75, line: 64, baseType: !63, size: 64, offset: 576)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2589, file: !75, line: 65, baseType: !63, size: 64, offset: 640)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2589, file: !75, line: 66, baseType: !63, size: 64, offset: 704)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2589, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2589, file: !75, line: 70, baseType: !2605, size: 64, offset: 832)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2589, file: !75, line: 72, baseType: !67, size: 32, offset: 896)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2589, file: !75, line: 73, baseType: !67, size: 32, offset: 928)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2589, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2589, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2589, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2589, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2589, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2589, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2589, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2589, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2589, file: !75, line: 93, baseType: !2605, size: 64, offset: 1344)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2589, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2589, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2589, file: !75, line: 96, baseType: !67, size: 32, offset: 1536)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2589, file: !75, line: 98, baseType: !125, size: 160, offset: 1568)
!2621 = !{!2622, !2623, !2624, !2625, !2626, !2627, !2629}
!2622 = !DILocalVariable(name: "stream", arg: 1, scope: !2584, file: !341, line: 145, type: !2587)
!2623 = !DILocalVariable(name: "resblock", arg: 2, scope: !2584, file: !341, line: 145, type: !119)
!2624 = !DILocalVariable(name: "buffer", scope: !2584, file: !341, line: 153, type: !63)
!2625 = !DILocalVariable(name: "ctx", scope: !2584, file: !341, line: 157, type: !349)
!2626 = !DILocalVariable(name: "sum", scope: !2584, file: !341, line: 159, type: !121)
!2627 = !DILocalVariable(name: "n", scope: !2628, file: !341, line: 167, type: !121)
!2628 = distinct !DILexicalBlock(scope: !2584, file: !341, line: 163, column: 5)
!2629 = !DILabel(scope: !2584, name: "process_partial_block", file: !341, line: 208)
!2630 = !DILocation(line: 0, scope: !2584)
!2631 = !DILocation(line: 153, column: 18, scope: !2584)
!2632 = !DILocation(line: 154, column: 8, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2584, file: !341, line: 154, column: 7)
!2634 = !DILocation(line: 154, column: 7, scope: !2584)
!2635 = !DILocation(line: 157, column: 3, scope: !2584)
!2636 = !DILocation(line: 157, column: 18, scope: !2584)
!2637 = !DILocation(line: 0, scope: !2260, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 158, column: 3, scope: !2584)
!2639 = !DILocation(line: 78, column: 10, scope: !2260, inlinedAt: !2638)
!2640 = !DILocation(line: 83, column: 19, scope: !2260, inlinedAt: !2638)
!2641 = !DILocation(line: 83, column: 33, scope: !2260, inlinedAt: !2638)
!2642 = !DILocation(line: 83, column: 3, scope: !2260, inlinedAt: !2638)
!2643 = !DILocation(line: 83, column: 17, scope: !2260, inlinedAt: !2638)
!2644 = !DILocation(line: 84, column: 8, scope: !2260, inlinedAt: !2638)
!2645 = !DILocation(line: 84, column: 15, scope: !2260, inlinedAt: !2638)
!2646 = !DILocation(line: 0, scope: !2647, inlinedAt: !2652)
!2647 = distinct !DISubprogram(name: "feof_unlocked", scope: !1572, file: !1572, line: 128, type: !2648, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !340, retainedNodes: !2650)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!67, !2587}
!2650 = !{!2651}
!2651 = !DILocalVariable(name: "__stream", arg: 1, scope: !2647, file: !1572, line: 128, type: !2587)
!2652 = distinct !DILocation(line: 178, column: 15, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !341, line: 178, column: 15)
!2654 = distinct !DILexicalBlock(scope: !2628, file: !341, line: 172, column: 9)
!2655 = !DILocation(line: 162, column: 3, scope: !2584)
!2656 = !DILocation(line: 0, scope: !2628)
!2657 = !DILocation(line: 130, column: 10, scope: !2647, inlinedAt: !2652)
!2658 = !DILocation(line: 178, column: 15, scope: !2653)
!2659 = !DILocation(line: 178, column: 15, scope: !2654)
!2660 = !DILocation(line: 181, column: 15, scope: !2654)
!2661 = !DILocation(line: 183, column: 15, scope: !2654)
!2662 = !DILocation(line: 185, column: 19, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2654, file: !341, line: 185, column: 15)
!2664 = !DILocation(line: 185, column: 15, scope: !2654)
!2665 = !DILocation(line: 188, column: 17, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2654, file: !341, line: 188, column: 15)
!2667 = !DILocation(line: 188, column: 15, scope: !2654)
!2668 = distinct !{!2668, !2669, !2670}
!2669 = !DILocation(line: 171, column: 7, scope: !2628)
!2670 = !DILocation(line: 200, column: 9, scope: !2628)
!2671 = !DILocalVariable(name: "__stream", arg: 1, scope: !2672, file: !1572, line: 135, type: !2587)
!2672 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1572, file: !1572, line: 135, type: !2648, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !340, retainedNodes: !2673)
!2673 = !{!2671}
!2674 = !DILocation(line: 0, scope: !2672, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 193, column: 19, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !341, line: 193, column: 19)
!2677 = distinct !DILexicalBlock(scope: !2666, file: !341, line: 189, column: 13)
!2678 = !DILocation(line: 137, column: 10, scope: !2672, inlinedAt: !2675)
!2679 = !DILocation(line: 193, column: 19, scope: !2676)
!2680 = !DILocation(line: 193, column: 19, scope: !2677)
!2681 = !DILocation(line: 195, column: 19, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2676, file: !341, line: 194, column: 17)
!2683 = !DILocation(line: 205, column: 7, scope: !2628)
!2684 = !DILocation(line: 208, column: 1, scope: !2584)
!2685 = !DILocation(line: 211, column: 11, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2584, file: !341, line: 211, column: 7)
!2687 = !DILocation(line: 211, column: 7, scope: !2584)
!2688 = !DILocation(line: 212, column: 5, scope: !2686)
!2689 = !DILocation(line: 215, column: 3, scope: !2584)
!2690 = !DILocation(line: 216, column: 3, scope: !2584)
!2691 = !DILocation(line: 217, column: 3, scope: !2584)
!2692 = !DILocation(line: 218, column: 1, scope: !2584)
!2693 = distinct !DISubprogram(name: "md5_process_bytes", scope: !341, file: !341, line: 243, type: !2400, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !340, retainedNodes: !2694)
!2694 = !{!2695, !2696, !2697, !2698, !2701, !2702}
!2695 = !DILocalVariable(name: "buffer", arg: 1, scope: !2693, file: !341, line: 243, type: !346)
!2696 = !DILocalVariable(name: "len", arg: 2, scope: !2693, file: !341, line: 243, type: !121)
!2697 = !DILocalVariable(name: "ctx", arg: 3, scope: !2693, file: !341, line: 243, type: !348)
!2698 = !DILocalVariable(name: "left_over", scope: !2699, file: !341, line: 249, type: !121)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !341, line: 248, column: 5)
!2700 = distinct !DILexicalBlock(scope: !2693, file: !341, line: 247, column: 7)
!2701 = !DILocalVariable(name: "add", scope: !2699, file: !341, line: 250, type: !121)
!2702 = !DILocalVariable(name: "left_over", scope: !2703, file: !341, line: 295, type: !121)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !341, line: 294, column: 5)
!2704 = distinct !DILexicalBlock(scope: !2693, file: !341, line: 293, column: 7)
!2705 = !DILocation(line: 0, scope: !2693)
!2706 = !DILocation(line: 247, column: 12, scope: !2700)
!2707 = !DILocation(line: 247, column: 19, scope: !2700)
!2708 = !DILocation(line: 247, column: 7, scope: !2693)
!2709 = !DILocation(line: 249, column: 26, scope: !2699)
!2710 = !DILocation(line: 0, scope: !2699)
!2711 = !DILocation(line: 250, column: 24, scope: !2699)
!2712 = !DILocation(line: 250, column: 36, scope: !2699)
!2713 = !DILocation(line: 250, column: 20, scope: !2699)
!2714 = !DILocation(line: 252, column: 16, scope: !2699)
!2715 = !DILocation(line: 0, scope: !2297, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 252, column: 7, scope: !2699)
!2717 = !DILocation(line: 34, column: 10, scope: !2297, inlinedAt: !2716)
!2718 = !DILocation(line: 253, column: 19, scope: !2699)
!2719 = !DILocation(line: 255, column: 23, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2699, file: !341, line: 255, column: 11)
!2721 = !DILocation(line: 255, column: 11, scope: !2699)
!2722 = !DILocation(line: 257, column: 55, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2720, file: !341, line: 256, column: 9)
!2724 = !DILocation(line: 257, column: 43, scope: !2723)
!2725 = !DILocation(line: 257, column: 11, scope: !2723)
!2726 = !DILocation(line: 259, column: 23, scope: !2723)
!2727 = !DILocation(line: 263, column: 54, scope: !2723)
!2728 = !DILocation(line: 263, column: 61, scope: !2723)
!2729 = !DILocation(line: 263, column: 20, scope: !2723)
!2730 = !DILocation(line: 264, column: 19, scope: !2723)
!2731 = !DILocation(line: 0, scope: !2297, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 262, column: 11, scope: !2723)
!2733 = !DILocation(line: 34, column: 10, scope: !2297, inlinedAt: !2732)
!2734 = !DILocation(line: 265, column: 9, scope: !2723)
!2735 = !DILocation(line: 267, column: 38, scope: !2699)
!2736 = !DILocation(line: 268, column: 11, scope: !2699)
!2737 = !DILocation(line: 269, column: 5, scope: !2699)
!2738 = !DILocation(line: 272, column: 11, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2693, file: !341, line: 272, column: 7)
!2740 = !DILocation(line: 272, column: 7, scope: !2693)
!2741 = !DILocation(line: 276, column: 11, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !341, line: 276, column: 11)
!2743 = distinct !DILexicalBlock(scope: !2739, file: !341, line: 273, column: 5)
!2744 = !DILocation(line: 276, column: 11, scope: !2743)
!2745 = !DILocation(line: 277, column: 20, scope: !2742)
!2746 = !DILocation(line: 277, column: 9, scope: !2742)
!2747 = !DILocation(line: 0, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2742, file: !341, line: 278, column: 11)
!2749 = !DILocation(line: 0, scope: !2297, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 279, column: 32, scope: !2748)
!2751 = !DILocation(line: 34, column: 10, scope: !2297, inlinedAt: !2750)
!2752 = !DILocation(line: 279, column: 13, scope: !2748)
!2753 = !DILocation(line: 280, column: 44, scope: !2748)
!2754 = !DILocation(line: 281, column: 17, scope: !2748)
!2755 = distinct !{!2755, !2746, !2756}
!2756 = !DILocation(line: 282, column: 11, scope: !2742)
!2757 = !DILocation(line: 286, column: 42, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2742, file: !341, line: 285, column: 9)
!2759 = !DILocation(line: 286, column: 11, scope: !2758)
!2760 = !DILocation(line: 287, column: 42, scope: !2758)
!2761 = !DILocation(line: 288, column: 15, scope: !2758)
!2762 = !DILocation(line: 293, column: 11, scope: !2704)
!2763 = !DILocation(line: 293, column: 7, scope: !2693)
!2764 = !DILocation(line: 295, column: 31, scope: !2703)
!2765 = !DILocation(line: 295, column: 26, scope: !2703)
!2766 = !DILocation(line: 0, scope: !2703)
!2767 = !DILocation(line: 297, column: 31, scope: !2703)
!2768 = !DILocation(line: 297, column: 16, scope: !2703)
!2769 = !DILocation(line: 0, scope: !2297, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 297, column: 7, scope: !2703)
!2771 = !DILocation(line: 34, column: 10, scope: !2297, inlinedAt: !2770)
!2772 = !DILocation(line: 298, column: 17, scope: !2703)
!2773 = !DILocation(line: 299, column: 21, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2703, file: !341, line: 299, column: 11)
!2775 = !DILocation(line: 299, column: 11, scope: !2703)
!2776 = !DILocation(line: 301, column: 11, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2774, file: !341, line: 300, column: 9)
!2778 = !DILocation(line: 302, column: 21, scope: !2777)
!2779 = !DILocation(line: 305, column: 33, scope: !2777)
!2780 = !DILocation(line: 305, column: 32, scope: !2777)
!2781 = !DILocation(line: 0, scope: !2297, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 305, column: 11, scope: !2777)
!2783 = !DILocation(line: 34, column: 10, scope: !2297, inlinedAt: !2782)
!2784 = !DILocation(line: 306, column: 9, scope: !2777)
!2785 = !DILocation(line: 307, column: 21, scope: !2703)
!2786 = !DILocation(line: 307, column: 19, scope: !2703)
!2787 = !DILocation(line: 308, column: 5, scope: !2703)
!2788 = !DILocation(line: 309, column: 1, scope: !2693)
!2789 = distinct !DISubprogram(name: "md5_buffer", scope: !341, file: !341, line: 227, type: !2790, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !340, retainedNodes: !2792)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!119, !65, !121, !119}
!2792 = !{!2793, !2794, !2795, !2796}
!2793 = !DILocalVariable(name: "buffer", arg: 1, scope: !2789, file: !341, line: 227, type: !65)
!2794 = !DILocalVariable(name: "len", arg: 2, scope: !2789, file: !341, line: 227, type: !121)
!2795 = !DILocalVariable(name: "resblock", arg: 3, scope: !2789, file: !341, line: 227, type: !119)
!2796 = !DILocalVariable(name: "ctx", scope: !2789, file: !341, line: 229, type: !349)
!2797 = !DILocation(line: 0, scope: !2789)
!2798 = !DILocation(line: 229, column: 3, scope: !2789)
!2799 = !DILocation(line: 229, column: 18, scope: !2789)
!2800 = !DILocation(line: 0, scope: !2260, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 232, column: 3, scope: !2789)
!2802 = !DILocation(line: 78, column: 10, scope: !2260, inlinedAt: !2801)
!2803 = !DILocation(line: 83, column: 19, scope: !2260, inlinedAt: !2801)
!2804 = !DILocation(line: 83, column: 33, scope: !2260, inlinedAt: !2801)
!2805 = !DILocation(line: 83, column: 3, scope: !2260, inlinedAt: !2801)
!2806 = !DILocation(line: 83, column: 17, scope: !2260, inlinedAt: !2801)
!2807 = !DILocation(line: 84, column: 8, scope: !2260, inlinedAt: !2801)
!2808 = !DILocation(line: 84, column: 15, scope: !2260, inlinedAt: !2801)
!2809 = !DILocation(line: 235, column: 3, scope: !2789)
!2810 = !DILocation(line: 238, column: 10, scope: !2789)
!2811 = !DILocation(line: 239, column: 1, scope: !2789)
!2812 = !DILocation(line: 238, column: 3, scope: !2789)
!2813 = distinct !DISubprogram(name: "fdadvise", scope: !564, file: !564, line: 31, type: !2814, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2818)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{null, !67, !2816, !2816, !2817}
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !70, line: 63, baseType: !96)
!2817 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !50, line: 52, baseType: !49)
!2818 = !{!2819, !2820, !2821, !2822, !2823}
!2819 = !DILocalVariable(name: "fd", arg: 1, scope: !2813, file: !564, line: 31, type: !67)
!2820 = !DILocalVariable(name: "offset", arg: 2, scope: !2813, file: !564, line: 31, type: !2816)
!2821 = !DILocalVariable(name: "len", arg: 3, scope: !2813, file: !564, line: 31, type: !2816)
!2822 = !DILocalVariable(name: "advice", arg: 4, scope: !2813, file: !564, line: 31, type: !2817)
!2823 = !DILocalVariable(name: "__x", scope: !2824, file: !564, line: 34, type: !67)
!2824 = distinct !DILexicalBlock(scope: !2813, file: !564, line: 34, column: 3)
!2825 = !DILocation(line: 0, scope: !2813)
!2826 = !DILocation(line: 34, column: 3, scope: !2824)
!2827 = !DILocation(line: 0, scope: !2824)
!2828 = !DILocation(line: 36, column: 1, scope: !2813)
!2829 = distinct !DISubprogram(name: "fadvise", scope: !564, file: !564, line: 39, type: !2830, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !2834)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{null, !2832, !2817}
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !574)
!2834 = !{!2835, !2836}
!2835 = !DILocalVariable(name: "fp", arg: 1, scope: !2829, file: !564, line: 39, type: !2832)
!2836 = !DILocalVariable(name: "advice", arg: 2, scope: !2829, file: !564, line: 39, type: !2817)
!2837 = !DILocation(line: 0, scope: !2829)
!2838 = !DILocation(line: 41, column: 7, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2829, file: !564, line: 41, column: 7)
!2840 = !DILocation(line: 41, column: 7, scope: !2829)
!2841 = !DILocation(line: 42, column: 15, scope: !2839)
!2842 = !DILocation(line: 0, scope: !2813, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 42, column: 5, scope: !2839)
!2844 = !DILocation(line: 34, column: 3, scope: !2824, inlinedAt: !2843)
!2845 = !DILocation(line: 0, scope: !2824, inlinedAt: !2843)
!2846 = !DILocation(line: 42, column: 5, scope: !2839)
!2847 = !DILocation(line: 43, column: 1, scope: !2829)
!2848 = distinct !DISubprogram(name: "fopen_safer", scope: !606, file: !606, line: 31, type: !2849, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !605, retainedNodes: !2853)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!2851, !65, !65}
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !612)
!2853 = !{!2854, !2855, !2856, !2857, !2860, !2863, !2866}
!2854 = !DILocalVariable(name: "file", arg: 1, scope: !2848, file: !606, line: 31, type: !65)
!2855 = !DILocalVariable(name: "mode", arg: 2, scope: !2848, file: !606, line: 31, type: !65)
!2856 = !DILocalVariable(name: "fp", scope: !2848, file: !606, line: 33, type: !2851)
!2857 = !DILocalVariable(name: "fd", scope: !2858, file: !606, line: 37, type: !67)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !606, line: 36, column: 5)
!2859 = distinct !DILexicalBlock(scope: !2848, file: !606, line: 35, column: 7)
!2860 = !DILocalVariable(name: "f", scope: !2861, file: !606, line: 41, type: !67)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !606, line: 40, column: 9)
!2862 = distinct !DILexicalBlock(scope: !2858, file: !606, line: 39, column: 11)
!2863 = !DILocalVariable(name: "e", scope: !2864, file: !606, line: 45, type: !67)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !606, line: 44, column: 13)
!2865 = distinct !DILexicalBlock(scope: !2861, file: !606, line: 43, column: 15)
!2866 = !DILocalVariable(name: "e", scope: !2867, file: !606, line: 54, type: !67)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !606, line: 53, column: 13)
!2868 = distinct !DILexicalBlock(scope: !2861, file: !606, line: 51, column: 15)
!2869 = !DILocation(line: 0, scope: !2848)
!2870 = !DILocation(line: 33, column: 14, scope: !2848)
!2871 = !DILocation(line: 35, column: 7, scope: !2859)
!2872 = !DILocation(line: 35, column: 7, scope: !2848)
!2873 = !DILocation(line: 37, column: 16, scope: !2858)
!2874 = !DILocation(line: 0, scope: !2858)
!2875 = !DILocation(line: 39, column: 19, scope: !2862)
!2876 = !DILocation(line: 41, column: 19, scope: !2861)
!2877 = !DILocation(line: 0, scope: !2861)
!2878 = !DILocation(line: 43, column: 17, scope: !2865)
!2879 = !DILocation(line: 43, column: 15, scope: !2861)
!2880 = !DILocation(line: 45, column: 23, scope: !2864)
!2881 = !DILocation(line: 0, scope: !2864)
!2882 = !DILocation(line: 46, column: 15, scope: !2864)
!2883 = !DILocation(line: 47, column: 21, scope: !2864)
!2884 = !DILocation(line: 51, column: 15, scope: !2868)
!2885 = !DILocation(line: 51, column: 27, scope: !2868)
!2886 = !DILocation(line: 52, column: 15, scope: !2868)
!2887 = !DILocation(line: 52, column: 26, scope: !2868)
!2888 = !DILocation(line: 52, column: 24, scope: !2868)
!2889 = !DILocation(line: 51, column: 15, scope: !2861)
!2890 = !DILocation(line: 54, column: 23, scope: !2867)
!2891 = !DILocation(line: 0, scope: !2867)
!2892 = !DILocation(line: 55, column: 15, scope: !2867)
!2893 = !DILocation(line: 56, column: 21, scope: !2867)
!2894 = !DILocation(line: 63, column: 1, scope: !2848)
!2895 = distinct !DISubprogram(name: "set_program_name", scope: !383, file: !383, line: 39, type: !130, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !2896)
!2896 = !{!2897, !2898, !2899}
!2897 = !DILocalVariable(name: "argv0", arg: 1, scope: !2895, file: !383, line: 39, type: !65)
!2898 = !DILocalVariable(name: "slash", scope: !2895, file: !383, line: 46, type: !65)
!2899 = !DILocalVariable(name: "base", scope: !2895, file: !383, line: 47, type: !65)
!2900 = !DILocation(line: 0, scope: !2895)
!2901 = !DILocation(line: 51, column: 13, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2895, file: !383, line: 51, column: 7)
!2903 = !DILocation(line: 51, column: 7, scope: !2895)
!2904 = !DILocation(line: 55, column: 14, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2902, file: !383, line: 52, column: 5)
!2906 = !DILocation(line: 54, column: 7, scope: !2905)
!2907 = !DILocation(line: 56, column: 7, scope: !2905)
!2908 = !DILocation(line: 59, column: 11, scope: !2895)
!2909 = !DILocation(line: 60, column: 17, scope: !2895)
!2910 = !DILocation(line: 60, column: 11, scope: !2895)
!2911 = !DILocation(line: 61, column: 12, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2895, file: !383, line: 61, column: 7)
!2913 = !DILocation(line: 61, column: 20, scope: !2912)
!2914 = !DILocation(line: 61, column: 25, scope: !2912)
!2915 = !DILocation(line: 61, column: 42, scope: !2912)
!2916 = !DILocation(line: 61, column: 28, scope: !2912)
!2917 = !DILocation(line: 61, column: 61, scope: !2912)
!2918 = !DILocation(line: 61, column: 7, scope: !2895)
!2919 = !DILocation(line: 64, column: 11, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !383, line: 64, column: 11)
!2921 = distinct !DILexicalBlock(scope: !2912, file: !383, line: 62, column: 5)
!2922 = !DILocation(line: 64, column: 36, scope: !2920)
!2923 = !DILocation(line: 64, column: 11, scope: !2921)
!2924 = !DILocation(line: 66, column: 24, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2920, file: !383, line: 65, column: 9)
!2926 = !DILocation(line: 70, column: 41, scope: !2925)
!2927 = !DILocation(line: 72, column: 9, scope: !2925)
!2928 = !DILocation(line: 84, column: 16, scope: !2895)
!2929 = !DILocation(line: 90, column: 27, scope: !2895)
!2930 = !DILocation(line: 92, column: 1, scope: !2895)
!2931 = distinct !DISubprogram(name: "clone_quoting_options", scope: !424, file: !424, line: 122, type: !2932, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !2935)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!2934, !2934}
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!2935 = !{!2936, !2937, !2938}
!2936 = !DILocalVariable(name: "o", arg: 1, scope: !2931, file: !424, line: 122, type: !2934)
!2937 = !DILocalVariable(name: "e", scope: !2931, file: !424, line: 124, type: !67)
!2938 = !DILocalVariable(name: "p", scope: !2931, file: !424, line: 125, type: !2934)
!2939 = !DILocation(line: 0, scope: !2931)
!2940 = !DILocation(line: 124, column: 11, scope: !2931)
!2941 = !DILocation(line: 125, column: 40, scope: !2931)
!2942 = !DILocation(line: 125, column: 31, scope: !2931)
!2943 = !DILocation(line: 127, column: 9, scope: !2931)
!2944 = !DILocation(line: 128, column: 3, scope: !2931)
!2945 = distinct !DISubprogram(name: "get_quoting_style", scope: !424, file: !424, line: 133, type: !2946, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !2948)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!5, !440}
!2948 = !{!2949}
!2949 = !DILocalVariable(name: "o", arg: 1, scope: !2945, file: !424, line: 133, type: !440)
!2950 = !DILocation(line: 0, scope: !2945)
!2951 = !DILocation(line: 135, column: 11, scope: !2945)
!2952 = !DILocation(line: 135, column: 46, scope: !2945)
!2953 = !{!2954, !1346, i64 0}
!2954 = !{!"quoting_options", !1346, i64 0, !1557, i64 4, !1346, i64 8, !1345, i64 40, !1345, i64 48}
!2955 = !DILocation(line: 135, column: 3, scope: !2945)
!2956 = distinct !DISubprogram(name: "set_quoting_style", scope: !424, file: !424, line: 141, type: !2957, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !2959)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{null, !2934, !5}
!2959 = !{!2960, !2961}
!2960 = !DILocalVariable(name: "o", arg: 1, scope: !2956, file: !424, line: 141, type: !2934)
!2961 = !DILocalVariable(name: "s", arg: 2, scope: !2956, file: !424, line: 141, type: !5)
!2962 = !DILocation(line: 0, scope: !2956)
!2963 = !DILocation(line: 143, column: 4, scope: !2956)
!2964 = !DILocation(line: 143, column: 39, scope: !2956)
!2965 = !DILocation(line: 143, column: 45, scope: !2956)
!2966 = !DILocation(line: 144, column: 1, scope: !2956)
!2967 = distinct !DISubprogram(name: "set_char_quoting", scope: !424, file: !424, line: 152, type: !2968, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!67, !2934, !64, !67}
!2970 = !{!2971, !2972, !2973, !2974, !2975, !2977, !2978}
!2971 = !DILocalVariable(name: "o", arg: 1, scope: !2967, file: !424, line: 152, type: !2934)
!2972 = !DILocalVariable(name: "c", arg: 2, scope: !2967, file: !424, line: 152, type: !64)
!2973 = !DILocalVariable(name: "i", arg: 3, scope: !2967, file: !424, line: 152, type: !67)
!2974 = !DILocalVariable(name: "uc", scope: !2967, file: !424, line: 154, type: !193)
!2975 = !DILocalVariable(name: "p", scope: !2967, file: !424, line: 155, type: !2976)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2977 = !DILocalVariable(name: "shift", scope: !2967, file: !424, line: 157, type: !67)
!2978 = !DILocalVariable(name: "r", scope: !2967, file: !424, line: 158, type: !67)
!2979 = !DILocation(line: 0, scope: !2967)
!2980 = !DILocation(line: 156, column: 6, scope: !2967)
!2981 = !DILocation(line: 156, column: 62, scope: !2967)
!2982 = !DILocation(line: 156, column: 57, scope: !2967)
!2983 = !DILocation(line: 157, column: 15, scope: !2967)
!2984 = !DILocation(line: 158, column: 12, scope: !2967)
!2985 = !DILocation(line: 158, column: 15, scope: !2967)
!2986 = !DILocation(line: 158, column: 25, scope: !2967)
!2987 = !DILocation(line: 159, column: 13, scope: !2967)
!2988 = !DILocation(line: 159, column: 18, scope: !2967)
!2989 = !DILocation(line: 159, column: 23, scope: !2967)
!2990 = !DILocation(line: 159, column: 6, scope: !2967)
!2991 = !DILocation(line: 160, column: 3, scope: !2967)
!2992 = distinct !DISubprogram(name: "set_quoting_flags", scope: !424, file: !424, line: 168, type: !2993, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !2995)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!67, !2934, !67}
!2995 = !{!2996, !2997, !2998}
!2996 = !DILocalVariable(name: "o", arg: 1, scope: !2992, file: !424, line: 168, type: !2934)
!2997 = !DILocalVariable(name: "i", arg: 2, scope: !2992, file: !424, line: 168, type: !67)
!2998 = !DILocalVariable(name: "r", scope: !2992, file: !424, line: 170, type: !67)
!2999 = !DILocation(line: 0, scope: !2992)
!3000 = !DILocation(line: 171, column: 8, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2992, file: !424, line: 171, column: 7)
!3002 = !DILocation(line: 171, column: 7, scope: !2992)
!3003 = !DILocation(line: 173, column: 10, scope: !2992)
!3004 = !{!2954, !1557, i64 4}
!3005 = !DILocation(line: 174, column: 12, scope: !2992)
!3006 = !DILocation(line: 175, column: 3, scope: !2992)
!3007 = distinct !DISubprogram(name: "set_custom_quoting", scope: !424, file: !424, line: 179, type: !3008, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3010)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{null, !2934, !65, !65}
!3010 = !{!3011, !3012, !3013}
!3011 = !DILocalVariable(name: "o", arg: 1, scope: !3007, file: !424, line: 179, type: !2934)
!3012 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3007, file: !424, line: 180, type: !65)
!3013 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3007, file: !424, line: 180, type: !65)
!3014 = !DILocation(line: 0, scope: !3007)
!3015 = !DILocation(line: 182, column: 8, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3007, file: !424, line: 182, column: 7)
!3017 = !DILocation(line: 182, column: 7, scope: !3007)
!3018 = !DILocation(line: 184, column: 6, scope: !3007)
!3019 = !DILocation(line: 184, column: 12, scope: !3007)
!3020 = !DILocation(line: 185, column: 8, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3007, file: !424, line: 185, column: 7)
!3022 = !DILocation(line: 185, column: 23, scope: !3021)
!3023 = !DILocation(line: 185, column: 19, scope: !3021)
!3024 = !DILocation(line: 186, column: 5, scope: !3021)
!3025 = !DILocation(line: 187, column: 6, scope: !3007)
!3026 = !DILocation(line: 187, column: 17, scope: !3007)
!3027 = !{!2954, !1345, i64 40}
!3028 = !DILocation(line: 188, column: 6, scope: !3007)
!3029 = !DILocation(line: 188, column: 18, scope: !3007)
!3030 = !{!2954, !1345, i64 48}
!3031 = !DILocation(line: 189, column: 1, scope: !3007)
!3032 = distinct !DISubprogram(name: "quotearg_buffer", scope: !424, file: !424, line: 784, type: !3033, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3035)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!121, !63, !121, !65, !121, !440}
!3035 = !{!3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043}
!3036 = !DILocalVariable(name: "buffer", arg: 1, scope: !3032, file: !424, line: 784, type: !63)
!3037 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3032, file: !424, line: 784, type: !121)
!3038 = !DILocalVariable(name: "arg", arg: 3, scope: !3032, file: !424, line: 785, type: !65)
!3039 = !DILocalVariable(name: "argsize", arg: 4, scope: !3032, file: !424, line: 785, type: !121)
!3040 = !DILocalVariable(name: "o", arg: 5, scope: !3032, file: !424, line: 786, type: !440)
!3041 = !DILocalVariable(name: "p", scope: !3032, file: !424, line: 788, type: !440)
!3042 = !DILocalVariable(name: "e", scope: !3032, file: !424, line: 789, type: !67)
!3043 = !DILocalVariable(name: "r", scope: !3032, file: !424, line: 790, type: !121)
!3044 = !DILocation(line: 0, scope: !3032)
!3045 = !DILocation(line: 788, column: 37, scope: !3032)
!3046 = !DILocation(line: 789, column: 11, scope: !3032)
!3047 = !DILocation(line: 791, column: 43, scope: !3032)
!3048 = !DILocation(line: 791, column: 53, scope: !3032)
!3049 = !DILocation(line: 791, column: 60, scope: !3032)
!3050 = !DILocation(line: 792, column: 43, scope: !3032)
!3051 = !DILocation(line: 792, column: 58, scope: !3032)
!3052 = !DILocation(line: 790, column: 14, scope: !3032)
!3053 = !DILocation(line: 793, column: 9, scope: !3032)
!3054 = !DILocation(line: 794, column: 3, scope: !3032)
!3055 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !424, file: !424, line: 256, type: !3056, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3060)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!121, !63, !121, !65, !121, !5, !67, !3058, !65, !65}
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3060 = !{!3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3085, !3086, !3087, !3088, !3089, !3092, !3093, !3099, !3102, !3103, !3110, !3113, !3114, !3115, !3116, !3117, !3118}
!3061 = !DILocalVariable(name: "buffer", arg: 1, scope: !3055, file: !424, line: 256, type: !63)
!3062 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3055, file: !424, line: 256, type: !121)
!3063 = !DILocalVariable(name: "arg", arg: 3, scope: !3055, file: !424, line: 257, type: !65)
!3064 = !DILocalVariable(name: "argsize", arg: 4, scope: !3055, file: !424, line: 257, type: !121)
!3065 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3055, file: !424, line: 258, type: !5)
!3066 = !DILocalVariable(name: "flags", arg: 6, scope: !3055, file: !424, line: 258, type: !67)
!3067 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3055, file: !424, line: 259, type: !3058)
!3068 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3055, file: !424, line: 260, type: !65)
!3069 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3055, file: !424, line: 261, type: !65)
!3070 = !DILocalVariable(name: "i", scope: !3055, file: !424, line: 263, type: !121)
!3071 = !DILocalVariable(name: "len", scope: !3055, file: !424, line: 264, type: !121)
!3072 = !DILocalVariable(name: "orig_buffersize", scope: !3055, file: !424, line: 265, type: !121)
!3073 = !DILocalVariable(name: "quote_string", scope: !3055, file: !424, line: 266, type: !65)
!3074 = !DILocalVariable(name: "quote_string_len", scope: !3055, file: !424, line: 267, type: !121)
!3075 = !DILocalVariable(name: "backslash_escapes", scope: !3055, file: !424, line: 268, type: !204)
!3076 = !DILocalVariable(name: "unibyte_locale", scope: !3055, file: !424, line: 269, type: !204)
!3077 = !DILocalVariable(name: "elide_outer_quotes", scope: !3055, file: !424, line: 270, type: !204)
!3078 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3055, file: !424, line: 271, type: !204)
!3079 = !DILocalVariable(name: "encountered_single_quote", scope: !3055, file: !424, line: 272, type: !204)
!3080 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3055, file: !424, line: 273, type: !204)
!3081 = !DILocalVariable(name: "c", scope: !3082, file: !424, line: 402, type: !193)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !424, line: 401, column: 5)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !424, line: 400, column: 3)
!3084 = distinct !DILexicalBlock(scope: !3055, file: !424, line: 400, column: 3)
!3085 = !DILocalVariable(name: "esc", scope: !3082, file: !424, line: 403, type: !193)
!3086 = !DILocalVariable(name: "is_right_quote", scope: !3082, file: !424, line: 404, type: !204)
!3087 = !DILocalVariable(name: "escaping", scope: !3082, file: !424, line: 405, type: !204)
!3088 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3082, file: !424, line: 406, type: !204)
!3089 = !DILocalVariable(name: "m", scope: !3090, file: !424, line: 610, type: !121)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !424, line: 608, column: 11)
!3091 = distinct !DILexicalBlock(scope: !3082, file: !424, line: 426, column: 9)
!3092 = !DILocalVariable(name: "printable", scope: !3090, file: !424, line: 612, type: !204)
!3093 = !DILocalVariable(name: "mbstate", scope: !3094, file: !424, line: 621, type: !3096)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !424, line: 620, column: 15)
!3095 = distinct !DILexicalBlock(scope: !3090, file: !424, line: 614, column: 17)
!3096 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3097, line: 6, baseType: !3098)
!3097 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!3098 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !461, line: 21, baseType: !460)
!3099 = !DILocalVariable(name: "w", scope: !3100, file: !424, line: 631, type: !3101)
!3100 = distinct !DILexicalBlock(scope: !3094, file: !424, line: 630, column: 19)
!3101 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !122, line: 74, baseType: !67)
!3102 = !DILocalVariable(name: "bytes", scope: !3100, file: !424, line: 632, type: !121)
!3103 = !DILocalVariable(name: "j", scope: !3104, file: !424, line: 657, type: !121)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !424, line: 656, column: 27)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !424, line: 654, column: 29)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !424, line: 649, column: 23)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !424, line: 641, column: 30)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !424, line: 636, column: 30)
!3109 = distinct !DILexicalBlock(scope: !3100, file: !424, line: 634, column: 25)
!3110 = !DILocalVariable(name: "ilim", scope: !3111, file: !424, line: 684, type: !121)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !424, line: 681, column: 15)
!3112 = distinct !DILexicalBlock(scope: !3090, file: !424, line: 680, column: 17)
!3113 = !DILabel(scope: !3055, name: "process_input", file: !424, line: 314)
!3114 = !DILabel(scope: !3091, name: "c_and_shell_escape", file: !424, line: 512)
!3115 = !DILabel(scope: !3091, name: "c_escape", file: !424, line: 517)
!3116 = !DILabel(scope: !3082, name: "store_escape", file: !424, line: 719)
!3117 = !DILabel(scope: !3082, name: "store_c", file: !424, line: 722)
!3118 = !DILabel(scope: !3055, name: "force_outer_quoting_style", file: !424, line: 763)
!3119 = !DILocation(line: 0, scope: !3055)
!3120 = !DILocation(line: 269, column: 25, scope: !3055)
!3121 = !DILocation(line: 269, column: 36, scope: !3055)
!3122 = !DILocation(line: 270, column: 8, scope: !3055)
!3123 = !DILocation(line: 0, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3091, file: !424, line: 526, column: 15)
!3125 = !DILocation(line: 0, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !424, line: 462, column: 19)
!3127 = distinct !DILexicalBlock(scope: !3091, file: !424, line: 455, column: 13)
!3128 = !DILocation(line: 0, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !424, line: 449, column: 20)
!3130 = distinct !DILexicalBlock(scope: !3091, file: !424, line: 428, column: 15)
!3131 = !DILocation(line: 0, scope: !3094)
!3132 = !DILocation(line: 0, scope: !3100)
!3133 = !DILocation(line: 0, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3082, file: !424, line: 712, column: 11)
!3135 = !DILocation(line: 273, column: 3, scope: !3055)
!3136 = !DILocation(line: 265, column: 10, scope: !3055)
!3137 = !DILocation(line: 266, column: 15, scope: !3055)
!3138 = !DILocation(line: 267, column: 10, scope: !3055)
!3139 = !DILocation(line: 268, column: 8, scope: !3055)
!3140 = !DILocation(line: 271, column: 8, scope: !3055)
!3141 = !DILocation(line: 272, column: 8, scope: !3055)
!3142 = !DILocation(line: 273, column: 8, scope: !3055)
!3143 = !DILocation(line: 314, column: 2, scope: !3055)
!3144 = !DILocation(line: 316, column: 3, scope: !3055)
!3145 = !DILocation(line: 323, column: 11, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3055, file: !424, line: 317, column: 5)
!3147 = !DILocation(line: 323, column: 12, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3146, file: !424, line: 323, column: 11)
!3149 = !DILocation(line: 324, column: 9, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !424, line: 324, column: 9)
!3151 = distinct !DILexicalBlock(scope: !3148, file: !424, line: 324, column: 9)
!3152 = !DILocation(line: 324, column: 9, scope: !3151)
!3153 = !DILocation(line: 362, column: 26, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !424, line: 340, column: 11)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !424, line: 339, column: 13)
!3156 = distinct !DILexicalBlock(scope: !3146, file: !424, line: 338, column: 7)
!3157 = !DILocation(line: 363, column: 27, scope: !3154)
!3158 = !DILocation(line: 364, column: 11, scope: !3154)
!3159 = !DILocation(line: 365, column: 14, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3156, file: !424, line: 365, column: 13)
!3161 = !DILocation(line: 365, column: 13, scope: !3156)
!3162 = !DILocation(line: 366, column: 43, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !424, line: 366, column: 11)
!3164 = distinct !DILexicalBlock(scope: !3160, file: !424, line: 366, column: 11)
!3165 = !DILocation(line: 366, column: 11, scope: !3164)
!3166 = !DILocation(line: 367, column: 13, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !424, line: 367, column: 13)
!3168 = distinct !DILexicalBlock(scope: !3163, file: !424, line: 367, column: 13)
!3169 = !DILocation(line: 367, column: 13, scope: !3168)
!3170 = !DILocation(line: 366, column: 70, scope: !3163)
!3171 = distinct !{!3171, !3165, !3172}
!3172 = !DILocation(line: 367, column: 13, scope: !3164)
!3173 = !DILocation(line: 264, column: 10, scope: !3055)
!3174 = !DILocation(line: 370, column: 28, scope: !3156)
!3175 = !DILocation(line: 372, column: 7, scope: !3146)
!3176 = !DILocation(line: 376, column: 7, scope: !3146)
!3177 = !DILocation(line: 379, column: 7, scope: !3146)
!3178 = !DILocation(line: 381, column: 12, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3146, file: !424, line: 381, column: 11)
!3180 = !DILocation(line: 381, column: 11, scope: !3146)
!3181 = !DILocation(line: 386, column: 12, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3146, file: !424, line: 386, column: 11)
!3183 = !DILocation(line: 386, column: 11, scope: !3146)
!3184 = !DILocation(line: 387, column: 9, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !424, line: 387, column: 9)
!3186 = distinct !DILexicalBlock(scope: !3182, file: !424, line: 387, column: 9)
!3187 = !DILocation(line: 387, column: 9, scope: !3186)
!3188 = !DILocation(line: 394, column: 7, scope: !3146)
!3189 = !DILocation(line: 397, column: 7, scope: !3146)
!3190 = !DILocation(line: 0, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3082, file: !424, line: 408, column: 11)
!3192 = !DILocation(line: 0, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !424, line: 419, column: 15)
!3194 = distinct !DILexicalBlock(scope: !3191, file: !424, line: 418, column: 9)
!3195 = !DILocation(line: 0, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3091, file: !424, line: 556, column: 15)
!3197 = !DILocation(line: 0, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3091, file: !424, line: 548, column: 15)
!3199 = !DILocation(line: 0, scope: !3105)
!3200 = !DILocation(line: 0, scope: !3112)
!3201 = !DILocation(line: 0, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3091, file: !424, line: 509, column: 15)
!3203 = !DILocation(line: 400, column: 8, scope: !3084)
!3204 = !DILocation(line: 0, scope: !3084)
!3205 = !DILocation(line: 400, column: 27, scope: !3083)
!3206 = !DILocation(line: 400, column: 19, scope: !3083)
!3207 = !DILocation(line: 400, column: 41, scope: !3083)
!3208 = !DILocation(line: 400, column: 48, scope: !3083)
!3209 = !DILocation(line: 400, column: 3, scope: !3084)
!3210 = !DILocation(line: 400, column: 60, scope: !3083)
!3211 = !DILocation(line: 0, scope: !3082)
!3212 = !DILocation(line: 409, column: 11, scope: !3191)
!3213 = !DILocation(line: 411, column: 17, scope: !3191)
!3214 = !DILocation(line: 412, column: 39, scope: !3191)
!3215 = !DILocation(line: 416, column: 32, scope: !3191)
!3216 = !DILocation(line: 412, column: 19, scope: !3191)
!3217 = !DILocation(line: 412, column: 15, scope: !3191)
!3218 = !DILocation(line: 417, column: 11, scope: !3191)
!3219 = !DILocation(line: 417, column: 26, scope: !3191)
!3220 = !DILocation(line: 417, column: 14, scope: !3191)
!3221 = !DILocation(line: 417, column: 63, scope: !3191)
!3222 = !DILocation(line: 408, column: 11, scope: !3082)
!3223 = !DILocation(line: 424, column: 11, scope: !3082)
!3224 = !DILocation(line: 425, column: 7, scope: !3082)
!3225 = !DILocation(line: 428, column: 15, scope: !3091)
!3226 = !DILocation(line: 430, column: 15, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !424, line: 430, column: 15)
!3228 = distinct !DILexicalBlock(scope: !3130, file: !424, line: 429, column: 13)
!3229 = !DILocation(line: 430, column: 15, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3227, file: !424, line: 430, column: 15)
!3231 = !DILocation(line: 430, column: 15, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !424, line: 430, column: 15)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !424, line: 430, column: 15)
!3234 = distinct !DILexicalBlock(scope: !3230, file: !424, line: 430, column: 15)
!3235 = !DILocation(line: 430, column: 15, scope: !3233)
!3236 = !DILocation(line: 430, column: 15, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3238, file: !424, line: 430, column: 15)
!3238 = distinct !DILexicalBlock(scope: !3234, file: !424, line: 430, column: 15)
!3239 = !DILocation(line: 430, column: 15, scope: !3238)
!3240 = !DILocation(line: 430, column: 15, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !424, line: 430, column: 15)
!3242 = distinct !DILexicalBlock(scope: !3234, file: !424, line: 430, column: 15)
!3243 = !DILocation(line: 430, column: 15, scope: !3242)
!3244 = !DILocation(line: 430, column: 15, scope: !3234)
!3245 = !DILocation(line: 430, column: 15, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !424, line: 430, column: 15)
!3247 = distinct !DILexicalBlock(scope: !3227, file: !424, line: 430, column: 15)
!3248 = !DILocation(line: 430, column: 15, scope: !3247)
!3249 = !DILocation(line: 438, column: 19, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3228, file: !424, line: 437, column: 19)
!3251 = !DILocation(line: 438, column: 24, scope: !3250)
!3252 = !DILocation(line: 438, column: 28, scope: !3250)
!3253 = !DILocation(line: 438, column: 38, scope: !3250)
!3254 = !DILocation(line: 438, column: 48, scope: !3250)
!3255 = !DILocation(line: 438, column: 59, scope: !3250)
!3256 = !DILocation(line: 440, column: 19, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !424, line: 440, column: 19)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !424, line: 440, column: 19)
!3259 = distinct !DILexicalBlock(scope: !3250, file: !424, line: 439, column: 17)
!3260 = !DILocation(line: 440, column: 19, scope: !3258)
!3261 = !DILocation(line: 441, column: 19, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !424, line: 441, column: 19)
!3263 = distinct !DILexicalBlock(scope: !3259, file: !424, line: 441, column: 19)
!3264 = !DILocation(line: 441, column: 19, scope: !3263)
!3265 = !DILocation(line: 442, column: 17, scope: !3259)
!3266 = !DILocation(line: 449, column: 20, scope: !3130)
!3267 = !DILocation(line: 454, column: 11, scope: !3091)
!3268 = !DILocation(line: 457, column: 19, scope: !3127)
!3269 = !DILocation(line: 463, column: 19, scope: !3126)
!3270 = !DILocation(line: 463, column: 24, scope: !3126)
!3271 = !DILocation(line: 463, column: 28, scope: !3126)
!3272 = !DILocation(line: 463, column: 38, scope: !3126)
!3273 = !DILocation(line: 463, column: 47, scope: !3126)
!3274 = !DILocation(line: 463, column: 41, scope: !3126)
!3275 = !DILocation(line: 463, column: 52, scope: !3126)
!3276 = !DILocation(line: 462, column: 19, scope: !3127)
!3277 = !DILocation(line: 464, column: 25, scope: !3126)
!3278 = !DILocation(line: 464, column: 17, scope: !3126)
!3279 = !DILocation(line: 471, column: 25, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3126, file: !424, line: 465, column: 19)
!3281 = !DILocation(line: 475, column: 21, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !424, line: 475, column: 21)
!3283 = distinct !DILexicalBlock(scope: !3280, file: !424, line: 475, column: 21)
!3284 = !DILocation(line: 475, column: 21, scope: !3283)
!3285 = !DILocation(line: 476, column: 21, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !424, line: 476, column: 21)
!3287 = distinct !DILexicalBlock(scope: !3280, file: !424, line: 476, column: 21)
!3288 = !DILocation(line: 476, column: 21, scope: !3287)
!3289 = !DILocation(line: 477, column: 21, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !424, line: 477, column: 21)
!3291 = distinct !DILexicalBlock(scope: !3280, file: !424, line: 477, column: 21)
!3292 = !DILocation(line: 477, column: 21, scope: !3291)
!3293 = !DILocation(line: 478, column: 21, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !424, line: 478, column: 21)
!3295 = distinct !DILexicalBlock(scope: !3280, file: !424, line: 478, column: 21)
!3296 = !DILocation(line: 478, column: 21, scope: !3295)
!3297 = !DILocation(line: 479, column: 21, scope: !3280)
!3298 = !DILocation(line: 492, column: 31, scope: !3091)
!3299 = !DILocation(line: 493, column: 31, scope: !3091)
!3300 = !DILocation(line: 495, column: 31, scope: !3091)
!3301 = !DILocation(line: 496, column: 31, scope: !3091)
!3302 = !DILocation(line: 497, column: 31, scope: !3091)
!3303 = !DILocation(line: 500, column: 15, scope: !3091)
!3304 = !DILocation(line: 502, column: 19, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !424, line: 501, column: 13)
!3306 = distinct !DILexicalBlock(scope: !3091, file: !424, line: 500, column: 15)
!3307 = !DILocation(line: 509, column: 33, scope: !3202)
!3308 = !DILocation(line: 0, scope: !3091)
!3309 = !DILocation(line: 512, column: 9, scope: !3091)
!3310 = !DILocation(line: 514, column: 15, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3091, file: !424, line: 513, column: 15)
!3312 = !DILocation(line: 517, column: 9, scope: !3091)
!3313 = !DILocation(line: 518, column: 15, scope: !3091)
!3314 = !DILocation(line: 526, column: 15, scope: !3091)
!3315 = !DILocation(line: 526, column: 40, scope: !3124)
!3316 = !DILocation(line: 526, column: 47, scope: !3124)
!3317 = !DILocation(line: 526, column: 18, scope: !3124)
!3318 = !DILocation(line: 530, column: 17, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3091, file: !424, line: 530, column: 15)
!3320 = !DILocation(line: 530, column: 15, scope: !3091)
!3321 = !DILocation(line: 535, column: 11, scope: !3091)
!3322 = !DILocation(line: 549, column: 15, scope: !3198)
!3323 = !DILocation(line: 556, column: 15, scope: !3091)
!3324 = !DILocation(line: 558, column: 19, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3196, file: !424, line: 557, column: 13)
!3326 = !DILocation(line: 561, column: 19, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3325, file: !424, line: 561, column: 19)
!3328 = !DILocation(line: 561, column: 35, scope: !3327)
!3329 = !DILocation(line: 561, column: 30, scope: !3327)
!3330 = !DILocation(line: 570, column: 15, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !424, line: 570, column: 15)
!3332 = distinct !DILexicalBlock(scope: !3325, file: !424, line: 570, column: 15)
!3333 = !DILocation(line: 570, column: 15, scope: !3332)
!3334 = !DILocation(line: 571, column: 15, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3336, file: !424, line: 571, column: 15)
!3336 = distinct !DILexicalBlock(scope: !3325, file: !424, line: 571, column: 15)
!3337 = !DILocation(line: 571, column: 15, scope: !3336)
!3338 = !DILocation(line: 572, column: 15, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !424, line: 572, column: 15)
!3340 = distinct !DILexicalBlock(scope: !3325, file: !424, line: 572, column: 15)
!3341 = !DILocation(line: 572, column: 15, scope: !3340)
!3342 = !DILocation(line: 574, column: 13, scope: !3325)
!3343 = !DILocation(line: 614, column: 17, scope: !3090)
!3344 = !DILocation(line: 0, scope: !3090)
!3345 = !DILocation(line: 617, column: 29, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3095, file: !424, line: 615, column: 15)
!3347 = !DILocation(line: 617, column: 27, scope: !3346)
!3348 = !DILocation(line: 618, column: 15, scope: !3346)
!3349 = !DILocation(line: 621, column: 17, scope: !3094)
!3350 = !DILocation(line: 621, column: 27, scope: !3094)
!3351 = !DILocalVariable(name: "__dest", arg: 1, scope: !3352, file: !2298, line: 59, type: !119)
!3352 = distinct !DISubprogram(name: "memset", scope: !2298, file: !2298, line: 59, type: !3353, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3355)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!119, !119, !67, !121}
!3355 = !{!3351, !3356, !3357}
!3356 = !DILocalVariable(name: "__ch", arg: 2, scope: !3352, file: !2298, line: 59, type: !67)
!3357 = !DILocalVariable(name: "__len", arg: 3, scope: !3352, file: !2298, line: 59, type: !121)
!3358 = !DILocation(line: 0, scope: !3352, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 622, column: 17, scope: !3094)
!3360 = !DILocation(line: 71, column: 10, scope: !3352, inlinedAt: !3359)
!3361 = !DILocation(line: 626, column: 29, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3094, file: !424, line: 626, column: 21)
!3363 = !DILocation(line: 626, column: 21, scope: !3094)
!3364 = !DILocation(line: 627, column: 29, scope: !3362)
!3365 = !DILocation(line: 627, column: 19, scope: !3362)
!3366 = !DILocation(line: 629, column: 17, scope: !3094)
!3367 = !DILocation(line: 624, column: 19, scope: !3094)
!3368 = !DILocation(line: 625, column: 27, scope: !3094)
!3369 = !DILocation(line: 631, column: 21, scope: !3100)
!3370 = !DILocation(line: 632, column: 56, scope: !3100)
!3371 = !DILocation(line: 632, column: 50, scope: !3100)
!3372 = !DILocation(line: 633, column: 53, scope: !3100)
!3373 = !DILocation(line: 632, column: 36, scope: !3100)
!3374 = !DILocation(line: 634, column: 25, scope: !3100)
!3375 = !DILocation(line: 644, column: 38, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3107, file: !424, line: 642, column: 23)
!3377 = !DILocation(line: 644, column: 48, scope: !3376)
!3378 = !DILocation(line: 644, column: 25, scope: !3376)
!3379 = !DILocation(line: 644, column: 51, scope: !3376)
!3380 = !DILocation(line: 645, column: 28, scope: !3376)
!3381 = !DILocation(line: 644, column: 34, scope: !3376)
!3382 = distinct !{!3382, !3378, !3380}
!3383 = !DILocation(line: 658, column: 43, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !424, line: 658, column: 29)
!3385 = distinct !DILexicalBlock(scope: !3104, file: !424, line: 658, column: 29)
!3386 = !DILocation(line: 655, column: 29, scope: !3105)
!3387 = !DILocation(line: 0, scope: !3104)
!3388 = !DILocation(line: 659, column: 49, scope: !3384)
!3389 = !DILocation(line: 659, column: 39, scope: !3384)
!3390 = !DILocation(line: 659, column: 31, scope: !3384)
!3391 = !DILocation(line: 658, column: 53, scope: !3384)
!3392 = !DILocation(line: 658, column: 29, scope: !3385)
!3393 = distinct !{!3393, !3392, !3394}
!3394 = !DILocation(line: 667, column: 33, scope: !3385)
!3395 = !DILocation(line: 674, column: 19, scope: !3094)
!3396 = !DILocation(line: 670, column: 41, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3106, file: !424, line: 670, column: 29)
!3398 = !DILocation(line: 670, column: 31, scope: !3397)
!3399 = !DILocation(line: 670, column: 29, scope: !3106)
!3400 = !DILocation(line: 672, column: 27, scope: !3106)
!3401 = !DILocation(line: 675, column: 26, scope: !3094)
!3402 = !DILocation(line: 675, column: 24, scope: !3094)
!3403 = !DILocation(line: 674, column: 19, scope: !3100)
!3404 = distinct !{!3404, !3366, !3405}
!3405 = !DILocation(line: 675, column: 44, scope: !3094)
!3406 = !DILocation(line: 676, column: 15, scope: !3095)
!3407 = !DILocation(line: 0, scope: !3095)
!3408 = !DILocation(line: 678, column: 40, scope: !3090)
!3409 = !DILocation(line: 680, column: 19, scope: !3112)
!3410 = !DILocation(line: 680, column: 45, scope: !3112)
!3411 = !DILocation(line: 680, column: 23, scope: !3112)
!3412 = !DILocation(line: 684, column: 33, scope: !3111)
!3413 = !DILocation(line: 0, scope: !3111)
!3414 = !DILocation(line: 686, column: 17, scope: !3111)
!3415 = !DILocation(line: 405, column: 12, scope: !3082)
!3416 = !DILocation(line: 688, column: 43, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3418, file: !424, line: 688, column: 25)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !424, line: 687, column: 19)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !424, line: 686, column: 17)
!3420 = distinct !DILexicalBlock(scope: !3111, file: !424, line: 686, column: 17)
!3421 = !DILocation(line: 690, column: 25, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3423, file: !424, line: 690, column: 25)
!3423 = distinct !DILexicalBlock(scope: !3417, file: !424, line: 689, column: 23)
!3424 = !DILocation(line: 690, column: 25, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3422, file: !424, line: 690, column: 25)
!3426 = !DILocation(line: 690, column: 25, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !424, line: 690, column: 25)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !424, line: 690, column: 25)
!3429 = distinct !DILexicalBlock(scope: !3425, file: !424, line: 690, column: 25)
!3430 = !DILocation(line: 690, column: 25, scope: !3428)
!3431 = !DILocation(line: 690, column: 25, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !424, line: 690, column: 25)
!3433 = distinct !DILexicalBlock(scope: !3429, file: !424, line: 690, column: 25)
!3434 = !DILocation(line: 690, column: 25, scope: !3433)
!3435 = !DILocation(line: 690, column: 25, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !424, line: 690, column: 25)
!3437 = distinct !DILexicalBlock(scope: !3429, file: !424, line: 690, column: 25)
!3438 = !DILocation(line: 690, column: 25, scope: !3437)
!3439 = !DILocation(line: 690, column: 25, scope: !3429)
!3440 = !DILocation(line: 690, column: 25, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3442, file: !424, line: 690, column: 25)
!3442 = distinct !DILexicalBlock(scope: !3422, file: !424, line: 690, column: 25)
!3443 = !DILocation(line: 690, column: 25, scope: !3442)
!3444 = !DILocation(line: 691, column: 25, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3446, file: !424, line: 691, column: 25)
!3446 = distinct !DILexicalBlock(scope: !3423, file: !424, line: 691, column: 25)
!3447 = !DILocation(line: 691, column: 25, scope: !3446)
!3448 = !DILocation(line: 692, column: 25, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3450, file: !424, line: 692, column: 25)
!3450 = distinct !DILexicalBlock(scope: !3423, file: !424, line: 692, column: 25)
!3451 = !DILocation(line: 692, column: 25, scope: !3450)
!3452 = !DILocation(line: 693, column: 38, scope: !3423)
!3453 = !DILocation(line: 693, column: 33, scope: !3423)
!3454 = !DILocation(line: 694, column: 23, scope: !3423)
!3455 = !DILocation(line: 695, column: 30, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3417, file: !424, line: 695, column: 30)
!3457 = !DILocation(line: 695, column: 30, scope: !3417)
!3458 = !DILocation(line: 697, column: 25, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3460, file: !424, line: 697, column: 25)
!3460 = distinct !DILexicalBlock(scope: !3461, file: !424, line: 697, column: 25)
!3461 = distinct !DILexicalBlock(scope: !3456, file: !424, line: 696, column: 23)
!3462 = !DILocation(line: 697, column: 25, scope: !3460)
!3463 = !DILocation(line: 699, column: 23, scope: !3461)
!3464 = !DILocation(line: 700, column: 35, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3418, file: !424, line: 700, column: 25)
!3466 = !DILocation(line: 700, column: 30, scope: !3465)
!3467 = !DILocation(line: 700, column: 25, scope: !3418)
!3468 = !DILocation(line: 702, column: 21, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3470, file: !424, line: 702, column: 21)
!3470 = distinct !DILexicalBlock(scope: !3418, file: !424, line: 702, column: 21)
!3471 = !DILocation(line: 702, column: 21, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3473, file: !424, line: 702, column: 21)
!3473 = distinct !DILexicalBlock(scope: !3474, file: !424, line: 702, column: 21)
!3474 = distinct !DILexicalBlock(scope: !3469, file: !424, line: 702, column: 21)
!3475 = !DILocation(line: 702, column: 21, scope: !3473)
!3476 = !DILocation(line: 702, column: 21, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !424, line: 702, column: 21)
!3478 = distinct !DILexicalBlock(scope: !3474, file: !424, line: 702, column: 21)
!3479 = !DILocation(line: 702, column: 21, scope: !3478)
!3480 = !DILocation(line: 702, column: 21, scope: !3474)
!3481 = !DILocation(line: 0, scope: !3418)
!3482 = !DILocation(line: 703, column: 21, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3484, file: !424, line: 703, column: 21)
!3484 = distinct !DILexicalBlock(scope: !3418, file: !424, line: 703, column: 21)
!3485 = !DILocation(line: 703, column: 21, scope: !3484)
!3486 = !DILocation(line: 704, column: 25, scope: !3418)
!3487 = !DILocation(line: 686, column: 17, scope: !3419)
!3488 = distinct !{!3488, !3489, !3490}
!3489 = !DILocation(line: 686, column: 17, scope: !3420)
!3490 = !DILocation(line: 705, column: 19, scope: !3420)
!3491 = !DILocation(line: 416, column: 30, scope: !3191)
!3492 = !DILocation(line: 712, column: 34, scope: !3134)
!3493 = !DILocation(line: 715, column: 35, scope: !3134)
!3494 = !DILocation(line: 715, column: 17, scope: !3134)
!3495 = !DILocation(line: 715, column: 47, scope: !3134)
!3496 = !DILocation(line: 715, column: 65, scope: !3134)
!3497 = !DILocation(line: 716, column: 15, scope: !3134)
!3498 = !DILocation(line: 716, column: 11, scope: !3134)
!3499 = !DILocation(line: 712, column: 11, scope: !3082)
!3500 = !DILocation(line: 400, column: 10, scope: !3084)
!3501 = !DILocation(line: 719, column: 5, scope: !3082)
!3502 = !DILocation(line: 720, column: 7, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3082, file: !424, line: 720, column: 7)
!3504 = !DILocation(line: 720, column: 7, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3503, file: !424, line: 720, column: 7)
!3506 = !DILocation(line: 720, column: 7, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !424, line: 720, column: 7)
!3508 = distinct !DILexicalBlock(scope: !3509, file: !424, line: 720, column: 7)
!3509 = distinct !DILexicalBlock(scope: !3505, file: !424, line: 720, column: 7)
!3510 = !DILocation(line: 720, column: 7, scope: !3508)
!3511 = !DILocation(line: 720, column: 7, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !424, line: 720, column: 7)
!3513 = distinct !DILexicalBlock(scope: !3509, file: !424, line: 720, column: 7)
!3514 = !DILocation(line: 720, column: 7, scope: !3513)
!3515 = !DILocation(line: 720, column: 7, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !424, line: 720, column: 7)
!3517 = distinct !DILexicalBlock(scope: !3509, file: !424, line: 720, column: 7)
!3518 = !DILocation(line: 720, column: 7, scope: !3517)
!3519 = !DILocation(line: 720, column: 7, scope: !3509)
!3520 = !DILocation(line: 720, column: 7, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !424, line: 720, column: 7)
!3522 = distinct !DILexicalBlock(scope: !3503, file: !424, line: 720, column: 7)
!3523 = !DILocation(line: 720, column: 7, scope: !3522)
!3524 = !DILocation(line: 722, column: 5, scope: !3082)
!3525 = !DILocation(line: 723, column: 7, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !424, line: 723, column: 7)
!3527 = distinct !DILexicalBlock(scope: !3082, file: !424, line: 723, column: 7)
!3528 = !DILocation(line: 424, column: 9, scope: !3082)
!3529 = !DILocation(line: 723, column: 7, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !424, line: 723, column: 7)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !424, line: 723, column: 7)
!3532 = distinct !DILexicalBlock(scope: !3526, file: !424, line: 723, column: 7)
!3533 = !DILocation(line: 723, column: 7, scope: !3531)
!3534 = !DILocation(line: 723, column: 7, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !424, line: 723, column: 7)
!3536 = distinct !DILexicalBlock(scope: !3532, file: !424, line: 723, column: 7)
!3537 = !DILocation(line: 723, column: 7, scope: !3536)
!3538 = !DILocation(line: 723, column: 7, scope: !3532)
!3539 = !DILocation(line: 724, column: 7, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !424, line: 724, column: 7)
!3541 = distinct !DILexicalBlock(scope: !3082, file: !424, line: 724, column: 7)
!3542 = !DILocation(line: 724, column: 7, scope: !3541)
!3543 = !DILocation(line: 726, column: 13, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3082, file: !424, line: 726, column: 11)
!3545 = !DILocation(line: 726, column: 11, scope: !3082)
!3546 = !DILocation(line: 728, column: 5, scope: !3083)
!3547 = !DILocation(line: 400, column: 75, scope: !3083)
!3548 = !DILocation(line: 400, column: 3, scope: !3083)
!3549 = distinct !{!3549, !3209, !3550}
!3550 = !DILocation(line: 728, column: 5, scope: !3084)
!3551 = !DILocation(line: 730, column: 11, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3055, file: !424, line: 730, column: 7)
!3553 = !DILocation(line: 730, column: 16, scope: !3552)
!3554 = !DILocation(line: 738, column: 51, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3055, file: !424, line: 738, column: 7)
!3556 = !DILocation(line: 739, column: 10, scope: !3555)
!3557 = !DILocation(line: 741, column: 11, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3559, file: !424, line: 741, column: 11)
!3559 = distinct !DILexicalBlock(scope: !3555, file: !424, line: 740, column: 5)
!3560 = !DILocation(line: 741, column: 11, scope: !3559)
!3561 = !DILocation(line: 742, column: 16, scope: !3558)
!3562 = !DILocation(line: 742, column: 9, scope: !3558)
!3563 = !DILocation(line: 746, column: 18, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3558, file: !424, line: 746, column: 16)
!3565 = !DILocation(line: 746, column: 32, scope: !3564)
!3566 = !DILocation(line: 746, column: 29, scope: !3564)
!3567 = !DILocation(line: 755, column: 7, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3055, file: !424, line: 755, column: 7)
!3569 = !DILocation(line: 755, column: 20, scope: !3568)
!3570 = !DILocation(line: 756, column: 12, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3572, file: !424, line: 756, column: 5)
!3572 = distinct !DILexicalBlock(scope: !3568, file: !424, line: 756, column: 5)
!3573 = !DILocation(line: 756, column: 5, scope: !3572)
!3574 = !DILocation(line: 757, column: 7, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !424, line: 757, column: 7)
!3576 = distinct !DILexicalBlock(scope: !3571, file: !424, line: 757, column: 7)
!3577 = !DILocation(line: 757, column: 7, scope: !3576)
!3578 = !DILocation(line: 756, column: 39, scope: !3571)
!3579 = distinct !{!3579, !3573, !3580}
!3580 = !DILocation(line: 757, column: 7, scope: !3572)
!3581 = !DILocation(line: 759, column: 11, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3055, file: !424, line: 759, column: 7)
!3583 = !DILocation(line: 759, column: 7, scope: !3055)
!3584 = !DILocation(line: 760, column: 5, scope: !3582)
!3585 = !DILocation(line: 760, column: 17, scope: !3582)
!3586 = !DILocation(line: 763, column: 2, scope: !3055)
!3587 = !DILocation(line: 766, column: 51, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3055, file: !424, line: 766, column: 7)
!3589 = !DILocation(line: 766, column: 21, scope: !3588)
!3590 = !DILocation(line: 770, column: 42, scope: !3055)
!3591 = !DILocation(line: 768, column: 10, scope: !3055)
!3592 = !DILocation(line: 768, column: 3, scope: !3055)
!3593 = !DILocation(line: 772, column: 1, scope: !3055)
!3594 = distinct !DISubprogram(name: "gettext_quote", scope: !424, file: !424, line: 207, type: !3595, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3597)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!65, !65, !5}
!3597 = !{!3598, !3599, !3600, !3601}
!3598 = !DILocalVariable(name: "msgid", arg: 1, scope: !3594, file: !424, line: 207, type: !65)
!3599 = !DILocalVariable(name: "s", arg: 2, scope: !3594, file: !424, line: 207, type: !5)
!3600 = !DILocalVariable(name: "translation", scope: !3594, file: !424, line: 209, type: !65)
!3601 = !DILocalVariable(name: "locale_code", scope: !3594, file: !424, line: 210, type: !65)
!3602 = !DILocation(line: 0, scope: !3594)
!3603 = !DILocation(line: 209, column: 29, scope: !3594)
!3604 = !DILocation(line: 212, column: 19, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3594, file: !424, line: 212, column: 7)
!3606 = !DILocation(line: 212, column: 7, scope: !3594)
!3607 = !DILocation(line: 233, column: 17, scope: !3594)
!3608 = !DILocalVariable(name: "s1", arg: 1, scope: !3609, file: !3610, line: 160, type: !65)
!3609 = distinct !DISubprogram(name: "strcaseeq0", scope: !3610, file: !3610, line: 160, type: !3611, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3613)
!3610 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!67, !65, !65, !64, !64, !64, !64, !64, !64, !64, !64, !64}
!3613 = !{!3608, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623}
!3614 = !DILocalVariable(name: "s2", arg: 2, scope: !3609, file: !3610, line: 160, type: !65)
!3615 = !DILocalVariable(name: "s20", arg: 3, scope: !3609, file: !3610, line: 160, type: !64)
!3616 = !DILocalVariable(name: "s21", arg: 4, scope: !3609, file: !3610, line: 160, type: !64)
!3617 = !DILocalVariable(name: "s22", arg: 5, scope: !3609, file: !3610, line: 160, type: !64)
!3618 = !DILocalVariable(name: "s23", arg: 6, scope: !3609, file: !3610, line: 160, type: !64)
!3619 = !DILocalVariable(name: "s24", arg: 7, scope: !3609, file: !3610, line: 160, type: !64)
!3620 = !DILocalVariable(name: "s25", arg: 8, scope: !3609, file: !3610, line: 160, type: !64)
!3621 = !DILocalVariable(name: "s26", arg: 9, scope: !3609, file: !3610, line: 160, type: !64)
!3622 = !DILocalVariable(name: "s27", arg: 10, scope: !3609, file: !3610, line: 160, type: !64)
!3623 = !DILocalVariable(name: "s28", arg: 11, scope: !3609, file: !3610, line: 160, type: !64)
!3624 = !DILocation(line: 0, scope: !3609, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 234, column: 7, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3594, file: !424, line: 234, column: 7)
!3627 = !DILocation(line: 162, column: 7, scope: !3628, inlinedAt: !3625)
!3628 = distinct !DILexicalBlock(scope: !3609, file: !3610, line: 162, column: 7)
!3629 = !DILocalVariable(name: "s1", arg: 1, scope: !3630, file: !3610, line: 146, type: !65)
!3630 = distinct !DISubprogram(name: "strcaseeq1", scope: !3610, file: !3610, line: 146, type: !3631, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3633)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!67, !65, !65, !64, !64, !64, !64, !64, !64, !64, !64}
!3633 = !{!3629, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642}
!3634 = !DILocalVariable(name: "s2", arg: 2, scope: !3630, file: !3610, line: 146, type: !65)
!3635 = !DILocalVariable(name: "s21", arg: 3, scope: !3630, file: !3610, line: 146, type: !64)
!3636 = !DILocalVariable(name: "s22", arg: 4, scope: !3630, file: !3610, line: 146, type: !64)
!3637 = !DILocalVariable(name: "s23", arg: 5, scope: !3630, file: !3610, line: 146, type: !64)
!3638 = !DILocalVariable(name: "s24", arg: 6, scope: !3630, file: !3610, line: 146, type: !64)
!3639 = !DILocalVariable(name: "s25", arg: 7, scope: !3630, file: !3610, line: 146, type: !64)
!3640 = !DILocalVariable(name: "s26", arg: 8, scope: !3630, file: !3610, line: 146, type: !64)
!3641 = !DILocalVariable(name: "s27", arg: 9, scope: !3630, file: !3610, line: 146, type: !64)
!3642 = !DILocalVariable(name: "s28", arg: 10, scope: !3630, file: !3610, line: 146, type: !64)
!3643 = !DILocation(line: 0, scope: !3630, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 167, column: 16, scope: !3645, inlinedAt: !3625)
!3645 = distinct !DILexicalBlock(scope: !3646, file: !3610, line: 164, column: 11)
!3646 = distinct !DILexicalBlock(scope: !3628, file: !3610, line: 163, column: 5)
!3647 = !DILocation(line: 148, column: 7, scope: !3648, inlinedAt: !3644)
!3648 = distinct !DILexicalBlock(scope: !3630, file: !3610, line: 148, column: 7)
!3649 = !DILocalVariable(name: "s1", arg: 1, scope: !3650, file: !3610, line: 132, type: !65)
!3650 = distinct !DISubprogram(name: "strcaseeq2", scope: !3610, file: !3610, line: 132, type: !3651, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3653)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!67, !65, !65, !64, !64, !64, !64, !64, !64, !64}
!3653 = !{!3649, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661}
!3654 = !DILocalVariable(name: "s2", arg: 2, scope: !3650, file: !3610, line: 132, type: !65)
!3655 = !DILocalVariable(name: "s22", arg: 3, scope: !3650, file: !3610, line: 132, type: !64)
!3656 = !DILocalVariable(name: "s23", arg: 4, scope: !3650, file: !3610, line: 132, type: !64)
!3657 = !DILocalVariable(name: "s24", arg: 5, scope: !3650, file: !3610, line: 132, type: !64)
!3658 = !DILocalVariable(name: "s25", arg: 6, scope: !3650, file: !3610, line: 132, type: !64)
!3659 = !DILocalVariable(name: "s26", arg: 7, scope: !3650, file: !3610, line: 132, type: !64)
!3660 = !DILocalVariable(name: "s27", arg: 8, scope: !3650, file: !3610, line: 132, type: !64)
!3661 = !DILocalVariable(name: "s28", arg: 9, scope: !3650, file: !3610, line: 132, type: !64)
!3662 = !DILocation(line: 0, scope: !3650, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 153, column: 16, scope: !3664, inlinedAt: !3644)
!3664 = distinct !DILexicalBlock(scope: !3665, file: !3610, line: 150, column: 11)
!3665 = distinct !DILexicalBlock(scope: !3648, file: !3610, line: 149, column: 5)
!3666 = !DILocation(line: 134, column: 7, scope: !3667, inlinedAt: !3663)
!3667 = distinct !DILexicalBlock(scope: !3650, file: !3610, line: 134, column: 7)
!3668 = !DILocalVariable(name: "s1", arg: 1, scope: !3669, file: !3610, line: 118, type: !65)
!3669 = distinct !DISubprogram(name: "strcaseeq3", scope: !3610, file: !3610, line: 118, type: !3670, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3672)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!67, !65, !65, !64, !64, !64, !64, !64, !64}
!3672 = !{!3668, !3673, !3674, !3675, !3676, !3677, !3678, !3679}
!3673 = !DILocalVariable(name: "s2", arg: 2, scope: !3669, file: !3610, line: 118, type: !65)
!3674 = !DILocalVariable(name: "s23", arg: 3, scope: !3669, file: !3610, line: 118, type: !64)
!3675 = !DILocalVariable(name: "s24", arg: 4, scope: !3669, file: !3610, line: 118, type: !64)
!3676 = !DILocalVariable(name: "s25", arg: 5, scope: !3669, file: !3610, line: 118, type: !64)
!3677 = !DILocalVariable(name: "s26", arg: 6, scope: !3669, file: !3610, line: 118, type: !64)
!3678 = !DILocalVariable(name: "s27", arg: 7, scope: !3669, file: !3610, line: 118, type: !64)
!3679 = !DILocalVariable(name: "s28", arg: 8, scope: !3669, file: !3610, line: 118, type: !64)
!3680 = !DILocation(line: 0, scope: !3669, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 139, column: 16, scope: !3682, inlinedAt: !3663)
!3682 = distinct !DILexicalBlock(scope: !3683, file: !3610, line: 136, column: 11)
!3683 = distinct !DILexicalBlock(scope: !3667, file: !3610, line: 135, column: 5)
!3684 = !DILocation(line: 120, column: 7, scope: !3685, inlinedAt: !3681)
!3685 = distinct !DILexicalBlock(scope: !3669, file: !3610, line: 120, column: 7)
!3686 = !DILocation(line: 120, column: 7, scope: !3669, inlinedAt: !3681)
!3687 = !DILocalVariable(name: "s1", arg: 1, scope: !3688, file: !3610, line: 104, type: !65)
!3688 = distinct !DISubprogram(name: "strcaseeq4", scope: !3610, file: !3610, line: 104, type: !3689, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3691)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!67, !65, !65, !64, !64, !64, !64, !64}
!3691 = !{!3687, !3692, !3693, !3694, !3695, !3696, !3697}
!3692 = !DILocalVariable(name: "s2", arg: 2, scope: !3688, file: !3610, line: 104, type: !65)
!3693 = !DILocalVariable(name: "s24", arg: 3, scope: !3688, file: !3610, line: 104, type: !64)
!3694 = !DILocalVariable(name: "s25", arg: 4, scope: !3688, file: !3610, line: 104, type: !64)
!3695 = !DILocalVariable(name: "s26", arg: 5, scope: !3688, file: !3610, line: 104, type: !64)
!3696 = !DILocalVariable(name: "s27", arg: 6, scope: !3688, file: !3610, line: 104, type: !64)
!3697 = !DILocalVariable(name: "s28", arg: 7, scope: !3688, file: !3610, line: 104, type: !64)
!3698 = !DILocation(line: 0, scope: !3688, inlinedAt: !3699)
!3699 = distinct !DILocation(line: 125, column: 16, scope: !3700, inlinedAt: !3681)
!3700 = distinct !DILexicalBlock(scope: !3701, file: !3610, line: 122, column: 11)
!3701 = distinct !DILexicalBlock(scope: !3685, file: !3610, line: 121, column: 5)
!3702 = !DILocation(line: 106, column: 7, scope: !3703, inlinedAt: !3699)
!3703 = distinct !DILexicalBlock(scope: !3688, file: !3610, line: 106, column: 7)
!3704 = !DILocation(line: 106, column: 7, scope: !3688, inlinedAt: !3699)
!3705 = !DILocalVariable(name: "s1", arg: 1, scope: !3706, file: !3610, line: 90, type: !65)
!3706 = distinct !DISubprogram(name: "strcaseeq5", scope: !3610, file: !3610, line: 90, type: !3707, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3709)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!67, !65, !65, !64, !64, !64, !64}
!3709 = !{!3705, !3710, !3711, !3712, !3713, !3714}
!3710 = !DILocalVariable(name: "s2", arg: 2, scope: !3706, file: !3610, line: 90, type: !65)
!3711 = !DILocalVariable(name: "s25", arg: 3, scope: !3706, file: !3610, line: 90, type: !64)
!3712 = !DILocalVariable(name: "s26", arg: 4, scope: !3706, file: !3610, line: 90, type: !64)
!3713 = !DILocalVariable(name: "s27", arg: 5, scope: !3706, file: !3610, line: 90, type: !64)
!3714 = !DILocalVariable(name: "s28", arg: 6, scope: !3706, file: !3610, line: 90, type: !64)
!3715 = !DILocation(line: 0, scope: !3706, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 111, column: 16, scope: !3717, inlinedAt: !3699)
!3717 = distinct !DILexicalBlock(scope: !3718, file: !3610, line: 108, column: 11)
!3718 = distinct !DILexicalBlock(scope: !3703, file: !3610, line: 107, column: 5)
!3719 = !DILocation(line: 92, column: 7, scope: !3720, inlinedAt: !3716)
!3720 = distinct !DILexicalBlock(scope: !3706, file: !3610, line: 92, column: 7)
!3721 = !DILocation(line: 92, column: 7, scope: !3706, inlinedAt: !3716)
!3722 = !DILocation(line: 235, column: 12, scope: !3626)
!3723 = !DILocation(line: 235, column: 21, scope: !3626)
!3724 = !DILocation(line: 235, column: 5, scope: !3626)
!3725 = !DILocation(line: 0, scope: !3630, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 167, column: 16, scope: !3645, inlinedAt: !3727)
!3727 = distinct !DILocation(line: 236, column: 7, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3594, file: !424, line: 236, column: 7)
!3729 = !DILocation(line: 148, column: 7, scope: !3648, inlinedAt: !3726)
!3730 = !DILocation(line: 0, scope: !3650, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 153, column: 16, scope: !3664, inlinedAt: !3726)
!3732 = !DILocation(line: 134, column: 7, scope: !3667, inlinedAt: !3731)
!3733 = !DILocation(line: 134, column: 7, scope: !3650, inlinedAt: !3731)
!3734 = !DILocation(line: 0, scope: !3669, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 139, column: 16, scope: !3682, inlinedAt: !3731)
!3736 = !DILocation(line: 120, column: 7, scope: !3685, inlinedAt: !3735)
!3737 = !DILocation(line: 120, column: 7, scope: !3669, inlinedAt: !3735)
!3738 = !DILocation(line: 0, scope: !3688, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 125, column: 16, scope: !3700, inlinedAt: !3735)
!3740 = !DILocation(line: 106, column: 7, scope: !3703, inlinedAt: !3739)
!3741 = !DILocation(line: 106, column: 7, scope: !3688, inlinedAt: !3739)
!3742 = !DILocation(line: 0, scope: !3706, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 111, column: 16, scope: !3717, inlinedAt: !3739)
!3744 = !DILocation(line: 92, column: 7, scope: !3720, inlinedAt: !3743)
!3745 = !DILocation(line: 92, column: 7, scope: !3706, inlinedAt: !3743)
!3746 = !DILocalVariable(name: "s1", arg: 1, scope: !3747, file: !3610, line: 76, type: !65)
!3747 = distinct !DISubprogram(name: "strcaseeq6", scope: !3610, file: !3610, line: 76, type: !3748, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3750)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!67, !65, !65, !64, !64, !64}
!3750 = !{!3746, !3751, !3752, !3753, !3754}
!3751 = !DILocalVariable(name: "s2", arg: 2, scope: !3747, file: !3610, line: 76, type: !65)
!3752 = !DILocalVariable(name: "s26", arg: 3, scope: !3747, file: !3610, line: 76, type: !64)
!3753 = !DILocalVariable(name: "s27", arg: 4, scope: !3747, file: !3610, line: 76, type: !64)
!3754 = !DILocalVariable(name: "s28", arg: 5, scope: !3747, file: !3610, line: 76, type: !64)
!3755 = !DILocation(line: 0, scope: !3747, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 97, column: 16, scope: !3757, inlinedAt: !3743)
!3757 = distinct !DILexicalBlock(scope: !3758, file: !3610, line: 94, column: 11)
!3758 = distinct !DILexicalBlock(scope: !3720, file: !3610, line: 93, column: 5)
!3759 = !DILocation(line: 78, column: 7, scope: !3760, inlinedAt: !3756)
!3760 = distinct !DILexicalBlock(scope: !3747, file: !3610, line: 78, column: 7)
!3761 = !DILocation(line: 78, column: 7, scope: !3747, inlinedAt: !3756)
!3762 = !DILocalVariable(name: "s1", arg: 1, scope: !3763, file: !3610, line: 62, type: !65)
!3763 = distinct !DISubprogram(name: "strcaseeq7", scope: !3610, file: !3610, line: 62, type: !3764, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3766)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!67, !65, !65, !64, !64}
!3766 = !{!3762, !3767, !3768, !3769}
!3767 = !DILocalVariable(name: "s2", arg: 2, scope: !3763, file: !3610, line: 62, type: !65)
!3768 = !DILocalVariable(name: "s27", arg: 3, scope: !3763, file: !3610, line: 62, type: !64)
!3769 = !DILocalVariable(name: "s28", arg: 4, scope: !3763, file: !3610, line: 62, type: !64)
!3770 = !DILocation(line: 0, scope: !3763, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 83, column: 16, scope: !3772, inlinedAt: !3756)
!3772 = distinct !DILexicalBlock(scope: !3773, file: !3610, line: 80, column: 11)
!3773 = distinct !DILexicalBlock(scope: !3760, file: !3610, line: 79, column: 5)
!3774 = !DILocation(line: 64, column: 7, scope: !3775, inlinedAt: !3771)
!3775 = distinct !DILexicalBlock(scope: !3763, file: !3610, line: 64, column: 7)
!3776 = !DILocation(line: 236, column: 7, scope: !3594)
!3777 = !DILocation(line: 237, column: 12, scope: !3728)
!3778 = !DILocation(line: 237, column: 21, scope: !3728)
!3779 = !DILocation(line: 237, column: 5, scope: !3728)
!3780 = !DILocation(line: 239, column: 13, scope: !3594)
!3781 = !DILocation(line: 239, column: 11, scope: !3594)
!3782 = !DILocation(line: 239, column: 3, scope: !3594)
!3783 = !DILocation(line: 240, column: 1, scope: !3594)
!3784 = distinct !DISubprogram(name: "quotearg_alloc", scope: !424, file: !424, line: 799, type: !3785, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3787)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!63, !65, !121, !440}
!3787 = !{!3788, !3789, !3790}
!3788 = !DILocalVariable(name: "arg", arg: 1, scope: !3784, file: !424, line: 799, type: !65)
!3789 = !DILocalVariable(name: "argsize", arg: 2, scope: !3784, file: !424, line: 799, type: !121)
!3790 = !DILocalVariable(name: "o", arg: 3, scope: !3784, file: !424, line: 800, type: !440)
!3791 = !DILocation(line: 0, scope: !3784)
!3792 = !DILocalVariable(name: "arg", arg: 1, scope: !3793, file: !424, line: 812, type: !65)
!3793 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !424, file: !424, line: 812, type: !3794, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3796)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!63, !65, !121, !703, !440}
!3796 = !{!3792, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804}
!3797 = !DILocalVariable(name: "argsize", arg: 2, scope: !3793, file: !424, line: 812, type: !121)
!3798 = !DILocalVariable(name: "size", arg: 3, scope: !3793, file: !424, line: 812, type: !703)
!3799 = !DILocalVariable(name: "o", arg: 4, scope: !3793, file: !424, line: 813, type: !440)
!3800 = !DILocalVariable(name: "p", scope: !3793, file: !424, line: 815, type: !440)
!3801 = !DILocalVariable(name: "e", scope: !3793, file: !424, line: 816, type: !67)
!3802 = !DILocalVariable(name: "flags", scope: !3793, file: !424, line: 818, type: !67)
!3803 = !DILocalVariable(name: "bufsize", scope: !3793, file: !424, line: 819, type: !121)
!3804 = !DILocalVariable(name: "buf", scope: !3793, file: !424, line: 823, type: !63)
!3805 = !DILocation(line: 0, scope: !3793, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 802, column: 10, scope: !3784)
!3807 = !DILocation(line: 815, column: 37, scope: !3793, inlinedAt: !3806)
!3808 = !DILocation(line: 816, column: 11, scope: !3793, inlinedAt: !3806)
!3809 = !DILocation(line: 818, column: 18, scope: !3793, inlinedAt: !3806)
!3810 = !DILocation(line: 818, column: 24, scope: !3793, inlinedAt: !3806)
!3811 = !DILocation(line: 819, column: 69, scope: !3793, inlinedAt: !3806)
!3812 = !DILocation(line: 820, column: 53, scope: !3793, inlinedAt: !3806)
!3813 = !DILocation(line: 821, column: 49, scope: !3793, inlinedAt: !3806)
!3814 = !DILocation(line: 822, column: 49, scope: !3793, inlinedAt: !3806)
!3815 = !DILocation(line: 819, column: 20, scope: !3793, inlinedAt: !3806)
!3816 = !DILocation(line: 822, column: 62, scope: !3793, inlinedAt: !3806)
!3817 = !DILocalVariable(name: "n", arg: 1, scope: !3818, file: !433, line: 216, type: !121)
!3818 = distinct !DISubprogram(name: "xcharalloc", scope: !433, file: !433, line: 216, type: !3819, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3821)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!63, !121}
!3821 = !{!3817}
!3822 = !DILocation(line: 0, scope: !3818, inlinedAt: !3823)
!3823 = distinct !DILocation(line: 823, column: 15, scope: !3793, inlinedAt: !3806)
!3824 = !DILocation(line: 218, column: 10, scope: !3818, inlinedAt: !3823)
!3825 = !DILocation(line: 824, column: 60, scope: !3793, inlinedAt: !3806)
!3826 = !DILocation(line: 826, column: 32, scope: !3793, inlinedAt: !3806)
!3827 = !DILocation(line: 826, column: 47, scope: !3793, inlinedAt: !3806)
!3828 = !DILocation(line: 824, column: 3, scope: !3793, inlinedAt: !3806)
!3829 = !DILocation(line: 827, column: 9, scope: !3793, inlinedAt: !3806)
!3830 = !DILocation(line: 802, column: 3, scope: !3784)
!3831 = !DILocation(line: 0, scope: !3793)
!3832 = !DILocation(line: 815, column: 37, scope: !3793)
!3833 = !DILocation(line: 816, column: 11, scope: !3793)
!3834 = !DILocation(line: 818, column: 18, scope: !3793)
!3835 = !DILocation(line: 818, column: 27, scope: !3793)
!3836 = !DILocation(line: 818, column: 24, scope: !3793)
!3837 = !DILocation(line: 819, column: 69, scope: !3793)
!3838 = !DILocation(line: 820, column: 53, scope: !3793)
!3839 = !DILocation(line: 821, column: 49, scope: !3793)
!3840 = !DILocation(line: 822, column: 49, scope: !3793)
!3841 = !DILocation(line: 819, column: 20, scope: !3793)
!3842 = !DILocation(line: 822, column: 62, scope: !3793)
!3843 = !DILocation(line: 0, scope: !3818, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 823, column: 15, scope: !3793)
!3845 = !DILocation(line: 218, column: 10, scope: !3818, inlinedAt: !3844)
!3846 = !DILocation(line: 824, column: 60, scope: !3793)
!3847 = !DILocation(line: 826, column: 32, scope: !3793)
!3848 = !DILocation(line: 826, column: 47, scope: !3793)
!3849 = !DILocation(line: 824, column: 3, scope: !3793)
!3850 = !DILocation(line: 827, column: 9, scope: !3793)
!3851 = !DILocation(line: 828, column: 7, scope: !3793)
!3852 = !DILocation(line: 829, column: 11, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3793, file: !424, line: 828, column: 7)
!3854 = !DILocation(line: 829, column: 5, scope: !3853)
!3855 = !DILocation(line: 830, column: 3, scope: !3793)
!3856 = distinct !DISubprogram(name: "quotearg_free", scope: !424, file: !424, line: 848, type: !147, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3857)
!3857 = !{!3858, !3859}
!3858 = !DILocalVariable(name: "sv", scope: !3856, file: !424, line: 850, type: !515)
!3859 = !DILocalVariable(name: "i", scope: !3856, file: !424, line: 851, type: !67)
!3860 = !DILocation(line: 850, column: 24, scope: !3856)
!3861 = !DILocation(line: 0, scope: !3856)
!3862 = !DILocation(line: 852, column: 19, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !424, line: 852, column: 3)
!3864 = distinct !DILexicalBlock(scope: !3856, file: !424, line: 852, column: 3)
!3865 = !DILocation(line: 852, column: 17, scope: !3863)
!3866 = !DILocation(line: 852, column: 3, scope: !3864)
!3867 = !DILocation(line: 853, column: 17, scope: !3863)
!3868 = !{!3869, !1345, i64 8}
!3869 = !{!"slotvec", !1610, i64 0, !1345, i64 8}
!3870 = !DILocation(line: 853, column: 5, scope: !3863)
!3871 = !DILocation(line: 852, column: 28, scope: !3863)
!3872 = distinct !{!3872, !3866, !3873}
!3873 = !DILocation(line: 853, column: 20, scope: !3864)
!3874 = !DILocation(line: 854, column: 13, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3856, file: !424, line: 854, column: 7)
!3876 = !DILocation(line: 854, column: 17, scope: !3875)
!3877 = !DILocation(line: 854, column: 7, scope: !3856)
!3878 = !DILocation(line: 856, column: 7, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3875, file: !424, line: 855, column: 5)
!3880 = !DILocation(line: 857, column: 21, scope: !3879)
!3881 = !{!3869, !1610, i64 0}
!3882 = !DILocation(line: 858, column: 20, scope: !3879)
!3883 = !DILocation(line: 859, column: 5, scope: !3879)
!3884 = !DILocation(line: 860, column: 10, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3856, file: !424, line: 860, column: 7)
!3886 = !DILocation(line: 860, column: 7, scope: !3856)
!3887 = !DILocation(line: 862, column: 13, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3885, file: !424, line: 861, column: 5)
!3889 = !DILocation(line: 862, column: 7, scope: !3888)
!3890 = !DILocation(line: 863, column: 15, scope: !3888)
!3891 = !DILocation(line: 864, column: 5, scope: !3888)
!3892 = !DILocation(line: 865, column: 10, scope: !3856)
!3893 = !DILocation(line: 866, column: 1, scope: !3856)
!3894 = distinct !DISubprogram(name: "quotearg_n", scope: !424, file: !424, line: 931, type: !134, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3895)
!3895 = !{!3896, !3897}
!3896 = !DILocalVariable(name: "n", arg: 1, scope: !3894, file: !424, line: 931, type: !67)
!3897 = !DILocalVariable(name: "arg", arg: 2, scope: !3894, file: !424, line: 931, type: !65)
!3898 = !DILocation(line: 0, scope: !3894)
!3899 = !DILocation(line: 933, column: 10, scope: !3894)
!3900 = !DILocation(line: 933, column: 3, scope: !3894)
!3901 = distinct !DISubprogram(name: "quotearg_n_options", scope: !424, file: !424, line: 877, type: !3902, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3904)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!63, !67, !65, !121, !440}
!3904 = !{!3905, !3906, !3907, !3908, !3909, !3910, !3911, !3914, !3915, !3917, !3918, !3919}
!3905 = !DILocalVariable(name: "n", arg: 1, scope: !3901, file: !424, line: 877, type: !67)
!3906 = !DILocalVariable(name: "arg", arg: 2, scope: !3901, file: !424, line: 877, type: !65)
!3907 = !DILocalVariable(name: "argsize", arg: 3, scope: !3901, file: !424, line: 877, type: !121)
!3908 = !DILocalVariable(name: "options", arg: 4, scope: !3901, file: !424, line: 878, type: !440)
!3909 = !DILocalVariable(name: "e", scope: !3901, file: !424, line: 880, type: !67)
!3910 = !DILocalVariable(name: "sv", scope: !3901, file: !424, line: 882, type: !515)
!3911 = !DILocalVariable(name: "preallocated", scope: !3912, file: !424, line: 889, type: !204)
!3912 = distinct !DILexicalBlock(scope: !3913, file: !424, line: 888, column: 5)
!3913 = distinct !DILexicalBlock(scope: !3901, file: !424, line: 887, column: 7)
!3914 = !DILocalVariable(name: "nmax", scope: !3912, file: !424, line: 890, type: !67)
!3915 = !DILocalVariable(name: "size", scope: !3916, file: !424, line: 903, type: !121)
!3916 = distinct !DILexicalBlock(scope: !3901, file: !424, line: 902, column: 3)
!3917 = !DILocalVariable(name: "val", scope: !3916, file: !424, line: 904, type: !63)
!3918 = !DILocalVariable(name: "flags", scope: !3916, file: !424, line: 906, type: !67)
!3919 = !DILocalVariable(name: "qsize", scope: !3916, file: !424, line: 907, type: !121)
!3920 = !DILocation(line: 0, scope: !3901)
!3921 = !DILocation(line: 880, column: 11, scope: !3901)
!3922 = !DILocation(line: 882, column: 24, scope: !3901)
!3923 = !DILocation(line: 884, column: 9, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3901, file: !424, line: 884, column: 7)
!3925 = !DILocation(line: 884, column: 7, scope: !3901)
!3926 = !DILocation(line: 885, column: 5, scope: !3924)
!3927 = !DILocation(line: 887, column: 7, scope: !3913)
!3928 = !DILocation(line: 887, column: 14, scope: !3913)
!3929 = !DILocation(line: 887, column: 7, scope: !3901)
!3930 = !DILocation(line: 889, column: 31, scope: !3912)
!3931 = !DILocation(line: 0, scope: !3912)
!3932 = !DILocation(line: 892, column: 16, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3912, file: !424, line: 892, column: 11)
!3934 = !DILocation(line: 892, column: 11, scope: !3912)
!3935 = !DILocation(line: 893, column: 9, scope: !3933)
!3936 = !DILocation(line: 895, column: 32, scope: !3912)
!3937 = !DILocation(line: 895, column: 61, scope: !3912)
!3938 = !DILocation(line: 895, column: 58, scope: !3912)
!3939 = !DILocation(line: 895, column: 66, scope: !3912)
!3940 = !DILocation(line: 895, column: 22, scope: !3912)
!3941 = !DILocation(line: 895, column: 15, scope: !3912)
!3942 = !DILocation(line: 896, column: 11, scope: !3912)
!3943 = !DILocation(line: 897, column: 15, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3912, file: !424, line: 896, column: 11)
!3945 = !{i64 0, i64 8, !1609, i64 8, i64 8, !1344}
!3946 = !DILocation(line: 897, column: 9, scope: !3944)
!3947 = !DILocation(line: 898, column: 20, scope: !3912)
!3948 = !DILocation(line: 898, column: 18, scope: !3912)
!3949 = !DILocation(line: 898, column: 15, scope: !3912)
!3950 = !DILocation(line: 898, column: 38, scope: !3912)
!3951 = !DILocation(line: 898, column: 31, scope: !3912)
!3952 = !DILocation(line: 898, column: 48, scope: !3912)
!3953 = !DILocation(line: 0, scope: !3352, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 898, column: 7, scope: !3912)
!3955 = !DILocation(line: 71, column: 10, scope: !3352, inlinedAt: !3954)
!3956 = !DILocation(line: 899, column: 14, scope: !3912)
!3957 = !DILocation(line: 900, column: 5, scope: !3912)
!3958 = !DILocation(line: 903, column: 19, scope: !3916)
!3959 = !DILocation(line: 903, column: 25, scope: !3916)
!3960 = !DILocation(line: 0, scope: !3916)
!3961 = !DILocation(line: 904, column: 23, scope: !3916)
!3962 = !DILocation(line: 906, column: 26, scope: !3916)
!3963 = !DILocation(line: 906, column: 32, scope: !3916)
!3964 = !DILocation(line: 908, column: 55, scope: !3916)
!3965 = !DILocation(line: 909, column: 46, scope: !3916)
!3966 = !DILocation(line: 910, column: 55, scope: !3916)
!3967 = !DILocation(line: 911, column: 55, scope: !3916)
!3968 = !DILocation(line: 907, column: 20, scope: !3916)
!3969 = !DILocation(line: 913, column: 14, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3916, file: !424, line: 913, column: 9)
!3971 = !DILocation(line: 913, column: 9, scope: !3916)
!3972 = !DILocation(line: 915, column: 35, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3970, file: !424, line: 914, column: 7)
!3974 = !DILocation(line: 915, column: 20, scope: !3973)
!3975 = !DILocation(line: 916, column: 17, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3973, file: !424, line: 916, column: 13)
!3977 = !DILocation(line: 916, column: 13, scope: !3973)
!3978 = !DILocation(line: 917, column: 11, scope: !3976)
!3979 = !DILocation(line: 0, scope: !3818, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 918, column: 27, scope: !3973)
!3981 = !DILocation(line: 218, column: 10, scope: !3818, inlinedAt: !3980)
!3982 = !DILocation(line: 918, column: 19, scope: !3973)
!3983 = !DILocation(line: 919, column: 69, scope: !3973)
!3984 = !DILocation(line: 921, column: 44, scope: !3973)
!3985 = !DILocation(line: 922, column: 44, scope: !3973)
!3986 = !DILocation(line: 919, column: 9, scope: !3973)
!3987 = !DILocation(line: 923, column: 7, scope: !3973)
!3988 = !DILocation(line: 925, column: 11, scope: !3916)
!3989 = !DILocation(line: 926, column: 5, scope: !3916)
!3990 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !424, file: !424, line: 937, type: !3991, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3993)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!63, !67, !65, !121}
!3993 = !{!3994, !3995, !3996}
!3994 = !DILocalVariable(name: "n", arg: 1, scope: !3990, file: !424, line: 937, type: !67)
!3995 = !DILocalVariable(name: "arg", arg: 2, scope: !3990, file: !424, line: 937, type: !65)
!3996 = !DILocalVariable(name: "argsize", arg: 3, scope: !3990, file: !424, line: 937, type: !121)
!3997 = !DILocation(line: 0, scope: !3990)
!3998 = !DILocation(line: 939, column: 10, scope: !3990)
!3999 = !DILocation(line: 939, column: 3, scope: !3990)
!4000 = distinct !DISubprogram(name: "quotearg", scope: !424, file: !424, line: 943, type: !140, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !4001)
!4001 = !{!4002}
!4002 = !DILocalVariable(name: "arg", arg: 1, scope: !4000, file: !424, line: 943, type: !65)
!4003 = !DILocation(line: 0, scope: !4000)
!4004 = !DILocation(line: 0, scope: !3894, inlinedAt: !4005)
!4005 = distinct !DILocation(line: 945, column: 10, scope: !4000)
!4006 = !DILocation(line: 933, column: 10, scope: !3894, inlinedAt: !4005)
!4007 = !DILocation(line: 945, column: 3, scope: !4000)
!4008 = distinct !DISubprogram(name: "quotearg_mem", scope: !424, file: !424, line: 949, type: !4009, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !4011)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!63, !65, !121}
!4011 = !{!4012, !4013}
!4012 = !DILocalVariable(name: "arg", arg: 1, scope: !4008, file: !424, line: 949, type: !65)
!4013 = !DILocalVariable(name: "argsize", arg: 2, scope: !4008, file: !424, line: 949, type: !121)
!4014 = !DILocation(line: 0, scope: !4008)
!4015 = !DILocation(line: 0, scope: !3990, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 951, column: 10, scope: !4008)
!4017 = !DILocation(line: 939, column: 10, scope: !3990, inlinedAt: !4016)
!4018 = !DILocation(line: 951, column: 3, scope: !4008)
!4019 = distinct !DISubprogram(name: "quotearg_n_style", scope: !424, file: !424, line: 955, type: !184, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !4020)
!4020 = !{!4021, !4022, !4023, !4024}
!4021 = !DILocalVariable(name: "n", arg: 1, scope: !4019, file: !424, line: 955, type: !67)
!4022 = !DILocalVariable(name: "s", arg: 2, scope: !4019, file: !424, line: 955, type: !5)
!4023 = !DILocalVariable(name: "arg", arg: 3, scope: !4019, file: !424, line: 955, type: !65)
!4024 = !DILocalVariable(name: "o", scope: !4019, file: !424, line: 957, type: !441)
!4025 = !DILocation(line: 0, scope: !4019)
!4026 = !DILocation(line: 957, column: 3, scope: !4019)
!4027 = !DILocation(line: 957, column: 32, scope: !4019)
!4028 = !DILocalVariable(name: "style", arg: 1, scope: !4029, file: !424, line: 193, type: !5)
!4029 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !424, file: !424, line: 193, type: !4030, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !4032)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!442, !5}
!4032 = !{!4028, !4033}
!4033 = !DILocalVariable(name: "o", scope: !4029, file: !424, line: 195, type: !442)
!4034 = !DILocation(line: 0, scope: !4029, inlinedAt: !4035)
!4035 = distinct !DILocation(line: 957, column: 36, scope: !4019)
!4036 = !DILocation(line: 195, column: 26, scope: !4029, inlinedAt: !4035)
!4037 = !{!4038}
!4038 = distinct !{!4038, !4039, !"quoting_options_from_style: argument 0"}
!4039 = distinct !{!4039, !"quoting_options_from_style"}
!4040 = !DILocation(line: 196, column: 13, scope: !4041, inlinedAt: !4035)
!4041 = distinct !DILexicalBlock(scope: !4029, file: !424, line: 196, column: 7)
!4042 = !DILocation(line: 196, column: 7, scope: !4029, inlinedAt: !4035)
!4043 = !DILocation(line: 197, column: 5, scope: !4041, inlinedAt: !4035)
!4044 = !DILocation(line: 198, column: 5, scope: !4029, inlinedAt: !4035)
!4045 = !DILocation(line: 198, column: 11, scope: !4029, inlinedAt: !4035)
!4046 = !DILocation(line: 958, column: 10, scope: !4019)
!4047 = !DILocation(line: 959, column: 1, scope: !4019)
!4048 = !DILocation(line: 958, column: 3, scope: !4019)
!4049 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !424, file: !424, line: 962, type: !4050, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !4052)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!63, !67, !5, !65, !121}
!4052 = !{!4053, !4054, !4055, !4056, !4057}
!4053 = !DILocalVariable(name: "n", arg: 1, scope: !4049, file: !424, line: 962, type: !67)
!4054 = !DILocalVariable(name: "s", arg: 2, scope: !4049, file: !424, line: 962, type: !5)
!4055 = !DILocalVariable(name: "arg", arg: 3, scope: !4049, file: !424, line: 963, type: !65)
!4056 = !DILocalVariable(name: "argsize", arg: 4, scope: !4049, file: !424, line: 963, type: !121)
!4057 = !DILocalVariable(name: "o", scope: !4049, file: !424, line: 965, type: !441)
!4058 = !DILocation(line: 0, scope: !4049)
!4059 = !DILocation(line: 965, column: 3, scope: !4049)
!4060 = !DILocation(line: 965, column: 32, scope: !4049)
!4061 = !DILocation(line: 0, scope: !4029, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 965, column: 36, scope: !4049)
!4063 = !DILocation(line: 195, column: 26, scope: !4029, inlinedAt: !4062)
!4064 = !{!4065}
!4065 = distinct !{!4065, !4066, !"quoting_options_from_style: argument 0"}
!4066 = distinct !{!4066, !"quoting_options_from_style"}
!4067 = !DILocation(line: 196, column: 13, scope: !4041, inlinedAt: !4062)
!4068 = !DILocation(line: 196, column: 7, scope: !4029, inlinedAt: !4062)
!4069 = !DILocation(line: 197, column: 5, scope: !4041, inlinedAt: !4062)
!4070 = !DILocation(line: 198, column: 5, scope: !4029, inlinedAt: !4062)
!4071 = !DILocation(line: 198, column: 11, scope: !4029, inlinedAt: !4062)
!4072 = !DILocation(line: 966, column: 10, scope: !4049)
!4073 = !DILocation(line: 967, column: 1, scope: !4049)
!4074 = !DILocation(line: 966, column: 3, scope: !4049)
!4075 = distinct !DISubprogram(name: "quotearg_style", scope: !424, file: !424, line: 970, type: !4076, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !4078)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!63, !5, !65}
!4078 = !{!4079, !4080}
!4079 = !DILocalVariable(name: "s", arg: 1, scope: !4075, file: !424, line: 970, type: !5)
!4080 = !DILocalVariable(name: "arg", arg: 2, scope: !4075, file: !424, line: 970, type: !65)
!4081 = !DILocation(line: 195, column: 26, scope: !4029, inlinedAt: !4082)
!4082 = distinct !DILocation(line: 957, column: 36, scope: !4019, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 972, column: 10, scope: !4075)
!4084 = !DILocation(line: 957, column: 32, scope: !4019, inlinedAt: !4083)
!4085 = !DILocation(line: 0, scope: !4075)
!4086 = !DILocation(line: 0, scope: !4019, inlinedAt: !4083)
!4087 = !DILocation(line: 957, column: 3, scope: !4019, inlinedAt: !4083)
!4088 = !DILocation(line: 0, scope: !4029, inlinedAt: !4082)
!4089 = !{!4090}
!4090 = distinct !{!4090, !4091, !"quoting_options_from_style: argument 0"}
!4091 = distinct !{!4091, !"quoting_options_from_style"}
!4092 = !DILocation(line: 196, column: 13, scope: !4041, inlinedAt: !4082)
!4093 = !DILocation(line: 196, column: 7, scope: !4029, inlinedAt: !4082)
!4094 = !DILocation(line: 197, column: 5, scope: !4041, inlinedAt: !4082)
!4095 = !DILocation(line: 198, column: 5, scope: !4029, inlinedAt: !4082)
!4096 = !DILocation(line: 198, column: 11, scope: !4029, inlinedAt: !4082)
!4097 = !DILocation(line: 958, column: 10, scope: !4019, inlinedAt: !4083)
!4098 = !DILocation(line: 959, column: 1, scope: !4019, inlinedAt: !4083)
!4099 = !DILocation(line: 972, column: 3, scope: !4075)
!4100 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !424, file: !424, line: 976, type: !4101, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !4103)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!63, !5, !65, !121}
!4103 = !{!4104, !4105, !4106}
!4104 = !DILocalVariable(name: "s", arg: 1, scope: !4100, file: !424, line: 976, type: !5)
!4105 = !DILocalVariable(name: "arg", arg: 2, scope: !4100, file: !424, line: 976, type: !65)
!4106 = !DILocalVariable(name: "argsize", arg: 3, scope: !4100, file: !424, line: 976, type: !121)
!4107 = !DILocation(line: 195, column: 26, scope: !4029, inlinedAt: !4108)
!4108 = distinct !DILocation(line: 965, column: 36, scope: !4049, inlinedAt: !4109)
!4109 = distinct !DILocation(line: 978, column: 10, scope: !4100)
!4110 = !DILocation(line: 965, column: 32, scope: !4049, inlinedAt: !4109)
!4111 = !DILocation(line: 0, scope: !4100)
!4112 = !DILocation(line: 0, scope: !4049, inlinedAt: !4109)
!4113 = !DILocation(line: 965, column: 3, scope: !4049, inlinedAt: !4109)
!4114 = !DILocation(line: 0, scope: !4029, inlinedAt: !4108)
!4115 = !{!4116}
!4116 = distinct !{!4116, !4117, !"quoting_options_from_style: argument 0"}
!4117 = distinct !{!4117, !"quoting_options_from_style"}
!4118 = !DILocation(line: 196, column: 13, scope: !4041, inlinedAt: !4108)
!4119 = !DILocation(line: 196, column: 7, scope: !4029, inlinedAt: !4108)
!4120 = !DILocation(line: 197, column: 5, scope: !4041, inlinedAt: !4108)
!4121 = !DILocation(line: 198, column: 5, scope: !4029, inlinedAt: !4108)
!4122 = !DILocation(line: 198, column: 11, scope: !4029, inlinedAt: !4108)
!4123 = !DILocation(line: 966, column: 10, scope: !4049, inlinedAt: !4109)
!4124 = !DILocation(line: 967, column: 1, scope: !4049, inlinedAt: !4109)
!4125 = !DILocation(line: 978, column: 3, scope: !4100)
!4126 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !424, file: !424, line: 982, type: !4127, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !4129)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!63, !65, !121, !64}
!4129 = !{!4130, !4131, !4132, !4133}
!4130 = !DILocalVariable(name: "arg", arg: 1, scope: !4126, file: !424, line: 982, type: !65)
!4131 = !DILocalVariable(name: "argsize", arg: 2, scope: !4126, file: !424, line: 982, type: !121)
!4132 = !DILocalVariable(name: "ch", arg: 3, scope: !4126, file: !424, line: 982, type: !64)
!4133 = !DILocalVariable(name: "options", scope: !4126, file: !424, line: 984, type: !442)
!4134 = !DILocation(line: 0, scope: !4126)
!4135 = !DILocation(line: 984, column: 3, scope: !4126)
!4136 = !DILocation(line: 984, column: 26, scope: !4126)
!4137 = !DILocation(line: 985, column: 13, scope: !4126)
!4138 = !{i64 0, i64 4, !1646, i64 4, i64 4, !1556, i64 8, i64 32, !1646, i64 40, i64 8, !1344, i64 48, i64 8, !1344}
!4139 = !DILocation(line: 0, scope: !2967, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 986, column: 3, scope: !4126)
!4141 = !DILocation(line: 156, column: 62, scope: !2967, inlinedAt: !4140)
!4142 = !DILocation(line: 156, column: 57, scope: !2967, inlinedAt: !4140)
!4143 = !DILocation(line: 157, column: 15, scope: !2967, inlinedAt: !4140)
!4144 = !DILocation(line: 158, column: 12, scope: !2967, inlinedAt: !4140)
!4145 = !DILocation(line: 158, column: 15, scope: !2967, inlinedAt: !4140)
!4146 = !DILocation(line: 158, column: 25, scope: !2967, inlinedAt: !4140)
!4147 = !DILocation(line: 159, column: 18, scope: !2967, inlinedAt: !4140)
!4148 = !DILocation(line: 159, column: 23, scope: !2967, inlinedAt: !4140)
!4149 = !DILocation(line: 159, column: 6, scope: !2967, inlinedAt: !4140)
!4150 = !DILocation(line: 987, column: 10, scope: !4126)
!4151 = !DILocation(line: 988, column: 1, scope: !4126)
!4152 = !DILocation(line: 987, column: 3, scope: !4126)
!4153 = distinct !DISubprogram(name: "quotearg_char", scope: !424, file: !424, line: 991, type: !4154, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !4156)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{!63, !65, !64}
!4156 = !{!4157, !4158}
!4157 = !DILocalVariable(name: "arg", arg: 1, scope: !4153, file: !424, line: 991, type: !65)
!4158 = !DILocalVariable(name: "ch", arg: 2, scope: !4153, file: !424, line: 991, type: !64)
!4159 = !DILocation(line: 984, column: 26, scope: !4126, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 993, column: 10, scope: !4153)
!4161 = !DILocation(line: 0, scope: !4153)
!4162 = !DILocation(line: 0, scope: !4126, inlinedAt: !4160)
!4163 = !DILocation(line: 984, column: 3, scope: !4126, inlinedAt: !4160)
!4164 = !DILocation(line: 985, column: 13, scope: !4126, inlinedAt: !4160)
!4165 = !DILocation(line: 0, scope: !2967, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 986, column: 3, scope: !4126, inlinedAt: !4160)
!4167 = !DILocation(line: 156, column: 62, scope: !2967, inlinedAt: !4166)
!4168 = !DILocation(line: 156, column: 57, scope: !2967, inlinedAt: !4166)
!4169 = !DILocation(line: 157, column: 15, scope: !2967, inlinedAt: !4166)
!4170 = !DILocation(line: 158, column: 12, scope: !2967, inlinedAt: !4166)
!4171 = !DILocation(line: 158, column: 15, scope: !2967, inlinedAt: !4166)
!4172 = !DILocation(line: 158, column: 25, scope: !2967, inlinedAt: !4166)
!4173 = !DILocation(line: 159, column: 18, scope: !2967, inlinedAt: !4166)
!4174 = !DILocation(line: 159, column: 23, scope: !2967, inlinedAt: !4166)
!4175 = !DILocation(line: 159, column: 6, scope: !2967, inlinedAt: !4166)
!4176 = !DILocation(line: 987, column: 10, scope: !4126, inlinedAt: !4160)
!4177 = !DILocation(line: 988, column: 1, scope: !4126, inlinedAt: !4160)
!4178 = !DILocation(line: 993, column: 3, scope: !4153)
!4179 = distinct !DISubprogram(name: "quotearg_colon", scope: !424, file: !424, line: 997, type: !140, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !4180)
!4180 = !{!4181}
!4181 = !DILocalVariable(name: "arg", arg: 1, scope: !4179, file: !424, line: 997, type: !65)
!4182 = !DILocation(line: 984, column: 26, scope: !4126, inlinedAt: !4183)
!4183 = distinct !DILocation(line: 993, column: 10, scope: !4153, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 999, column: 10, scope: !4179)
!4185 = !DILocation(line: 0, scope: !4179)
!4186 = !DILocation(line: 0, scope: !4153, inlinedAt: !4184)
!4187 = !DILocation(line: 0, scope: !4126, inlinedAt: !4183)
!4188 = !DILocation(line: 984, column: 3, scope: !4126, inlinedAt: !4183)
!4189 = !DILocation(line: 985, column: 13, scope: !4126, inlinedAt: !4183)
!4190 = !DILocation(line: 0, scope: !2967, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 986, column: 3, scope: !4126, inlinedAt: !4183)
!4192 = !DILocation(line: 156, column: 57, scope: !2967, inlinedAt: !4191)
!4193 = !DILocation(line: 158, column: 12, scope: !2967, inlinedAt: !4191)
!4194 = !DILocation(line: 159, column: 6, scope: !2967, inlinedAt: !4191)
!4195 = !DILocation(line: 987, column: 10, scope: !4126, inlinedAt: !4183)
!4196 = !DILocation(line: 988, column: 1, scope: !4126, inlinedAt: !4183)
!4197 = !DILocation(line: 999, column: 3, scope: !4179)
!4198 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !424, file: !424, line: 1003, type: !4009, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !4199)
!4199 = !{!4200, !4201}
!4200 = !DILocalVariable(name: "arg", arg: 1, scope: !4198, file: !424, line: 1003, type: !65)
!4201 = !DILocalVariable(name: "argsize", arg: 2, scope: !4198, file: !424, line: 1003, type: !121)
!4202 = !DILocation(line: 984, column: 26, scope: !4126, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 1005, column: 10, scope: !4198)
!4204 = !DILocation(line: 0, scope: !4198)
!4205 = !DILocation(line: 0, scope: !4126, inlinedAt: !4203)
!4206 = !DILocation(line: 984, column: 3, scope: !4126, inlinedAt: !4203)
!4207 = !DILocation(line: 985, column: 13, scope: !4126, inlinedAt: !4203)
!4208 = !DILocation(line: 0, scope: !2967, inlinedAt: !4209)
!4209 = distinct !DILocation(line: 986, column: 3, scope: !4126, inlinedAt: !4203)
!4210 = !DILocation(line: 156, column: 57, scope: !2967, inlinedAt: !4209)
!4211 = !DILocation(line: 158, column: 12, scope: !2967, inlinedAt: !4209)
!4212 = !DILocation(line: 159, column: 6, scope: !2967, inlinedAt: !4209)
!4213 = !DILocation(line: 987, column: 10, scope: !4126, inlinedAt: !4203)
!4214 = !DILocation(line: 988, column: 1, scope: !4126, inlinedAt: !4203)
!4215 = !DILocation(line: 1005, column: 3, scope: !4198)
!4216 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !424, file: !424, line: 1009, type: !184, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !4217)
!4217 = !{!4218, !4219, !4220, !4221}
!4218 = !DILocalVariable(name: "n", arg: 1, scope: !4216, file: !424, line: 1009, type: !67)
!4219 = !DILocalVariable(name: "s", arg: 2, scope: !4216, file: !424, line: 1009, type: !5)
!4220 = !DILocalVariable(name: "arg", arg: 3, scope: !4216, file: !424, line: 1009, type: !65)
!4221 = !DILocalVariable(name: "options", scope: !4216, file: !424, line: 1011, type: !442)
!4222 = !DILocation(line: 195, column: 26, scope: !4029, inlinedAt: !4223)
!4223 = distinct !DILocation(line: 1012, column: 13, scope: !4216)
!4224 = !DILocation(line: 0, scope: !4216)
!4225 = !DILocation(line: 1011, column: 3, scope: !4216)
!4226 = !DILocation(line: 1011, column: 26, scope: !4216)
!4227 = !DILocation(line: 1012, column: 13, scope: !4216)
!4228 = !DILocation(line: 0, scope: !4029, inlinedAt: !4223)
!4229 = !{!4230}
!4230 = distinct !{!4230, !4231, !"quoting_options_from_style: argument 0"}
!4231 = distinct !{!4231, !"quoting_options_from_style"}
!4232 = !DILocation(line: 196, column: 13, scope: !4041, inlinedAt: !4223)
!4233 = !DILocation(line: 196, column: 7, scope: !4029, inlinedAt: !4223)
!4234 = !DILocation(line: 197, column: 5, scope: !4041, inlinedAt: !4223)
!4235 = !DILocation(line: 0, scope: !2967, inlinedAt: !4236)
!4236 = distinct !DILocation(line: 1013, column: 3, scope: !4216)
!4237 = !DILocation(line: 156, column: 57, scope: !2967, inlinedAt: !4236)
!4238 = !DILocation(line: 158, column: 12, scope: !2967, inlinedAt: !4236)
!4239 = !DILocation(line: 159, column: 6, scope: !2967, inlinedAt: !4236)
!4240 = !DILocation(line: 1014, column: 10, scope: !4216)
!4241 = !DILocation(line: 1015, column: 1, scope: !4216)
!4242 = !DILocation(line: 1014, column: 3, scope: !4216)
!4243 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !424, file: !424, line: 1018, type: !4244, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !4246)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!63, !67, !65, !65, !65}
!4246 = !{!4247, !4248, !4249, !4250}
!4247 = !DILocalVariable(name: "n", arg: 1, scope: !4243, file: !424, line: 1018, type: !67)
!4248 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4243, file: !424, line: 1018, type: !65)
!4249 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4243, file: !424, line: 1019, type: !65)
!4250 = !DILocalVariable(name: "arg", arg: 4, scope: !4243, file: !424, line: 1019, type: !65)
!4251 = !DILocalVariable(name: "o", scope: !4252, file: !424, line: 1030, type: !442)
!4252 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !424, file: !424, line: 1026, type: !4253, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !4255)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!63, !67, !65, !65, !65, !121}
!4255 = !{!4256, !4257, !4258, !4259, !4260, !4251}
!4256 = !DILocalVariable(name: "n", arg: 1, scope: !4252, file: !424, line: 1026, type: !67)
!4257 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4252, file: !424, line: 1026, type: !65)
!4258 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4252, file: !424, line: 1027, type: !65)
!4259 = !DILocalVariable(name: "arg", arg: 4, scope: !4252, file: !424, line: 1028, type: !65)
!4260 = !DILocalVariable(name: "argsize", arg: 5, scope: !4252, file: !424, line: 1028, type: !121)
!4261 = !DILocation(line: 1030, column: 26, scope: !4252, inlinedAt: !4262)
!4262 = distinct !DILocation(line: 1021, column: 10, scope: !4243)
!4263 = !DILocation(line: 0, scope: !4243)
!4264 = !DILocation(line: 0, scope: !4252, inlinedAt: !4262)
!4265 = !DILocation(line: 1030, column: 3, scope: !4252, inlinedAt: !4262)
!4266 = !DILocation(line: 1030, column: 30, scope: !4252, inlinedAt: !4262)
!4267 = !DILocation(line: 0, scope: !3007, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 1031, column: 3, scope: !4252, inlinedAt: !4262)
!4269 = !DILocation(line: 184, column: 6, scope: !3007, inlinedAt: !4268)
!4270 = !DILocation(line: 184, column: 12, scope: !3007, inlinedAt: !4268)
!4271 = !DILocation(line: 185, column: 8, scope: !3021, inlinedAt: !4268)
!4272 = !DILocation(line: 185, column: 23, scope: !3021, inlinedAt: !4268)
!4273 = !DILocation(line: 185, column: 19, scope: !3021, inlinedAt: !4268)
!4274 = !DILocation(line: 186, column: 5, scope: !3021, inlinedAt: !4268)
!4275 = !DILocation(line: 187, column: 6, scope: !3007, inlinedAt: !4268)
!4276 = !DILocation(line: 187, column: 17, scope: !3007, inlinedAt: !4268)
!4277 = !DILocation(line: 188, column: 6, scope: !3007, inlinedAt: !4268)
!4278 = !DILocation(line: 188, column: 18, scope: !3007, inlinedAt: !4268)
!4279 = !DILocation(line: 1032, column: 10, scope: !4252, inlinedAt: !4262)
!4280 = !DILocation(line: 1033, column: 1, scope: !4252, inlinedAt: !4262)
!4281 = !DILocation(line: 1021, column: 3, scope: !4243)
!4282 = !DILocation(line: 0, scope: !4252)
!4283 = !DILocation(line: 1030, column: 3, scope: !4252)
!4284 = !DILocation(line: 1030, column: 26, scope: !4252)
!4285 = !DILocation(line: 1030, column: 30, scope: !4252)
!4286 = !DILocation(line: 0, scope: !3007, inlinedAt: !4287)
!4287 = distinct !DILocation(line: 1031, column: 3, scope: !4252)
!4288 = !DILocation(line: 184, column: 6, scope: !3007, inlinedAt: !4287)
!4289 = !DILocation(line: 184, column: 12, scope: !3007, inlinedAt: !4287)
!4290 = !DILocation(line: 185, column: 8, scope: !3021, inlinedAt: !4287)
!4291 = !DILocation(line: 185, column: 23, scope: !3021, inlinedAt: !4287)
!4292 = !DILocation(line: 185, column: 19, scope: !3021, inlinedAt: !4287)
!4293 = !DILocation(line: 186, column: 5, scope: !3021, inlinedAt: !4287)
!4294 = !DILocation(line: 187, column: 6, scope: !3007, inlinedAt: !4287)
!4295 = !DILocation(line: 187, column: 17, scope: !3007, inlinedAt: !4287)
!4296 = !DILocation(line: 188, column: 6, scope: !3007, inlinedAt: !4287)
!4297 = !DILocation(line: 188, column: 18, scope: !3007, inlinedAt: !4287)
!4298 = !DILocation(line: 1032, column: 10, scope: !4252)
!4299 = !DILocation(line: 1033, column: 1, scope: !4252)
!4300 = !DILocation(line: 1032, column: 3, scope: !4252)
!4301 = distinct !DISubprogram(name: "quotearg_custom", scope: !424, file: !424, line: 1036, type: !4302, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !4304)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!63, !65, !65, !65}
!4304 = !{!4305, !4306, !4307}
!4305 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4301, file: !424, line: 1036, type: !65)
!4306 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4301, file: !424, line: 1036, type: !65)
!4307 = !DILocalVariable(name: "arg", arg: 3, scope: !4301, file: !424, line: 1037, type: !65)
!4308 = !DILocation(line: 1030, column: 26, scope: !4252, inlinedAt: !4309)
!4309 = distinct !DILocation(line: 1021, column: 10, scope: !4243, inlinedAt: !4310)
!4310 = distinct !DILocation(line: 1039, column: 10, scope: !4301)
!4311 = !DILocation(line: 0, scope: !4301)
!4312 = !DILocation(line: 0, scope: !4243, inlinedAt: !4310)
!4313 = !DILocation(line: 0, scope: !4252, inlinedAt: !4309)
!4314 = !DILocation(line: 1030, column: 3, scope: !4252, inlinedAt: !4309)
!4315 = !DILocation(line: 1030, column: 30, scope: !4252, inlinedAt: !4309)
!4316 = !DILocation(line: 0, scope: !3007, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 1031, column: 3, scope: !4252, inlinedAt: !4309)
!4318 = !DILocation(line: 184, column: 6, scope: !3007, inlinedAt: !4317)
!4319 = !DILocation(line: 184, column: 12, scope: !3007, inlinedAt: !4317)
!4320 = !DILocation(line: 185, column: 8, scope: !3021, inlinedAt: !4317)
!4321 = !DILocation(line: 185, column: 23, scope: !3021, inlinedAt: !4317)
!4322 = !DILocation(line: 185, column: 19, scope: !3021, inlinedAt: !4317)
!4323 = !DILocation(line: 186, column: 5, scope: !3021, inlinedAt: !4317)
!4324 = !DILocation(line: 187, column: 6, scope: !3007, inlinedAt: !4317)
!4325 = !DILocation(line: 187, column: 17, scope: !3007, inlinedAt: !4317)
!4326 = !DILocation(line: 188, column: 6, scope: !3007, inlinedAt: !4317)
!4327 = !DILocation(line: 188, column: 18, scope: !3007, inlinedAt: !4317)
!4328 = !DILocation(line: 1032, column: 10, scope: !4252, inlinedAt: !4309)
!4329 = !DILocation(line: 1033, column: 1, scope: !4252, inlinedAt: !4309)
!4330 = !DILocation(line: 1039, column: 3, scope: !4301)
!4331 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !424, file: !424, line: 1043, type: !4332, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !4334)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!63, !65, !65, !65, !121}
!4334 = !{!4335, !4336, !4337, !4338}
!4335 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4331, file: !424, line: 1043, type: !65)
!4336 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4331, file: !424, line: 1043, type: !65)
!4337 = !DILocalVariable(name: "arg", arg: 3, scope: !4331, file: !424, line: 1044, type: !65)
!4338 = !DILocalVariable(name: "argsize", arg: 4, scope: !4331, file: !424, line: 1044, type: !121)
!4339 = !DILocation(line: 1030, column: 26, scope: !4252, inlinedAt: !4340)
!4340 = distinct !DILocation(line: 1046, column: 10, scope: !4331)
!4341 = !DILocation(line: 0, scope: !4331)
!4342 = !DILocation(line: 0, scope: !4252, inlinedAt: !4340)
!4343 = !DILocation(line: 1030, column: 3, scope: !4252, inlinedAt: !4340)
!4344 = !DILocation(line: 1030, column: 30, scope: !4252, inlinedAt: !4340)
!4345 = !DILocation(line: 0, scope: !3007, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 1031, column: 3, scope: !4252, inlinedAt: !4340)
!4347 = !DILocation(line: 184, column: 6, scope: !3007, inlinedAt: !4346)
!4348 = !DILocation(line: 184, column: 12, scope: !3007, inlinedAt: !4346)
!4349 = !DILocation(line: 185, column: 8, scope: !3021, inlinedAt: !4346)
!4350 = !DILocation(line: 185, column: 23, scope: !3021, inlinedAt: !4346)
!4351 = !DILocation(line: 185, column: 19, scope: !3021, inlinedAt: !4346)
!4352 = !DILocation(line: 186, column: 5, scope: !3021, inlinedAt: !4346)
!4353 = !DILocation(line: 187, column: 6, scope: !3007, inlinedAt: !4346)
!4354 = !DILocation(line: 187, column: 17, scope: !3007, inlinedAt: !4346)
!4355 = !DILocation(line: 188, column: 6, scope: !3007, inlinedAt: !4346)
!4356 = !DILocation(line: 188, column: 18, scope: !3007, inlinedAt: !4346)
!4357 = !DILocation(line: 1032, column: 10, scope: !4252, inlinedAt: !4340)
!4358 = !DILocation(line: 1033, column: 1, scope: !4252, inlinedAt: !4340)
!4359 = !DILocation(line: 1046, column: 3, scope: !4331)
!4360 = distinct !DISubprogram(name: "quote_n_mem", scope: !424, file: !424, line: 1061, type: !4361, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !4363)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!65, !67, !65, !121}
!4363 = !{!4364, !4365, !4366}
!4364 = !DILocalVariable(name: "n", arg: 1, scope: !4360, file: !424, line: 1061, type: !67)
!4365 = !DILocalVariable(name: "arg", arg: 2, scope: !4360, file: !424, line: 1061, type: !65)
!4366 = !DILocalVariable(name: "argsize", arg: 3, scope: !4360, file: !424, line: 1061, type: !121)
!4367 = !DILocation(line: 0, scope: !4360)
!4368 = !DILocation(line: 1063, column: 10, scope: !4360)
!4369 = !DILocation(line: 1063, column: 3, scope: !4360)
!4370 = distinct !DISubprogram(name: "quote_mem", scope: !424, file: !424, line: 1067, type: !4371, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !4373)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!65, !65, !121}
!4373 = !{!4374, !4375}
!4374 = !DILocalVariable(name: "arg", arg: 1, scope: !4370, file: !424, line: 1067, type: !65)
!4375 = !DILocalVariable(name: "argsize", arg: 2, scope: !4370, file: !424, line: 1067, type: !121)
!4376 = !DILocation(line: 0, scope: !4370)
!4377 = !DILocation(line: 0, scope: !4360, inlinedAt: !4378)
!4378 = distinct !DILocation(line: 1069, column: 10, scope: !4370)
!4379 = !DILocation(line: 1063, column: 10, scope: !4360, inlinedAt: !4378)
!4380 = !DILocation(line: 1069, column: 3, scope: !4370)
!4381 = distinct !DISubprogram(name: "quote_n", scope: !424, file: !424, line: 1073, type: !4382, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !4384)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!65, !67, !65}
!4384 = !{!4385, !4386}
!4385 = !DILocalVariable(name: "n", arg: 1, scope: !4381, file: !424, line: 1073, type: !67)
!4386 = !DILocalVariable(name: "arg", arg: 2, scope: !4381, file: !424, line: 1073, type: !65)
!4387 = !DILocation(line: 0, scope: !4381)
!4388 = !DILocation(line: 0, scope: !4360, inlinedAt: !4389)
!4389 = distinct !DILocation(line: 1075, column: 10, scope: !4381)
!4390 = !DILocation(line: 1063, column: 10, scope: !4360, inlinedAt: !4389)
!4391 = !DILocation(line: 1075, column: 3, scope: !4381)
!4392 = distinct !DISubprogram(name: "quote", scope: !424, file: !424, line: 1079, type: !4393, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !4395)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{!65, !65}
!4395 = !{!4396}
!4396 = !DILocalVariable(name: "arg", arg: 1, scope: !4392, file: !424, line: 1079, type: !65)
!4397 = !DILocation(line: 0, scope: !4392)
!4398 = !DILocation(line: 0, scope: !4381, inlinedAt: !4399)
!4399 = distinct !DILocation(line: 1081, column: 10, scope: !4392)
!4400 = !DILocation(line: 0, scope: !4360, inlinedAt: !4401)
!4401 = distinct !DILocation(line: 1075, column: 10, scope: !4381, inlinedAt: !4399)
!4402 = !DILocation(line: 1063, column: 10, scope: !4360, inlinedAt: !4401)
!4403 = !DILocation(line: 1081, column: 3, scope: !4392)
!4404 = distinct !DISubprogram(name: "dup_safer", scope: !650, file: !650, line: 31, type: !550, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !4405)
!4405 = !{!4406}
!4406 = !DILocalVariable(name: "fd", arg: 1, scope: !4404, file: !650, line: 31, type: !67)
!4407 = !DILocation(line: 0, scope: !4404)
!4408 = !DILocation(line: 33, column: 10, scope: !4404)
!4409 = !DILocation(line: 33, column: 3, scope: !4404)
!4410 = distinct !DISubprogram(name: "version_etc_arn", scope: !655, file: !655, line: 61, type: !4411, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !4416)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{null, !4413, !65, !65, !65, !4415, !121}
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !665)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!4416 = !{!4417, !4418, !4419, !4420, !4421, !4422}
!4417 = !DILocalVariable(name: "stream", arg: 1, scope: !4410, file: !655, line: 61, type: !4413)
!4418 = !DILocalVariable(name: "command_name", arg: 2, scope: !4410, file: !655, line: 62, type: !65)
!4419 = !DILocalVariable(name: "package", arg: 3, scope: !4410, file: !655, line: 62, type: !65)
!4420 = !DILocalVariable(name: "version", arg: 4, scope: !4410, file: !655, line: 63, type: !65)
!4421 = !DILocalVariable(name: "authors", arg: 5, scope: !4410, file: !655, line: 64, type: !4415)
!4422 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4410, file: !655, line: 64, type: !121)
!4423 = !DILocation(line: 0, scope: !4410)
!4424 = !DILocation(line: 66, column: 7, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4410, file: !655, line: 66, column: 7)
!4426 = !DILocation(line: 66, column: 7, scope: !4410)
!4427 = !DILocation(line: 67, column: 5, scope: !4425)
!4428 = !DILocation(line: 69, column: 5, scope: !4425)
!4429 = !DILocation(line: 83, column: 3, scope: !4410)
!4430 = !DILocation(line: 85, column: 3, scope: !4410)
!4431 = !DILocation(line: 88, column: 3, scope: !4410)
!4432 = !DILocation(line: 95, column: 3, scope: !4410)
!4433 = !DILocation(line: 97, column: 3, scope: !4410)
!4434 = !DILocation(line: 105, column: 7, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4410, file: !655, line: 98, column: 5)
!4436 = !DILocation(line: 106, column: 7, scope: !4435)
!4437 = !DILocation(line: 109, column: 7, scope: !4435)
!4438 = !DILocation(line: 110, column: 7, scope: !4435)
!4439 = !DILocation(line: 113, column: 7, scope: !4435)
!4440 = !DILocation(line: 115, column: 7, scope: !4435)
!4441 = !DILocation(line: 120, column: 7, scope: !4435)
!4442 = !DILocation(line: 122, column: 7, scope: !4435)
!4443 = !DILocation(line: 127, column: 7, scope: !4435)
!4444 = !DILocation(line: 129, column: 7, scope: !4435)
!4445 = !DILocation(line: 134, column: 7, scope: !4435)
!4446 = !DILocation(line: 137, column: 7, scope: !4435)
!4447 = !DILocation(line: 142, column: 7, scope: !4435)
!4448 = !DILocation(line: 145, column: 7, scope: !4435)
!4449 = !DILocation(line: 150, column: 7, scope: !4435)
!4450 = !DILocation(line: 154, column: 7, scope: !4435)
!4451 = !DILocation(line: 159, column: 7, scope: !4435)
!4452 = !DILocation(line: 163, column: 7, scope: !4435)
!4453 = !DILocation(line: 170, column: 7, scope: !4435)
!4454 = !DILocation(line: 174, column: 7, scope: !4435)
!4455 = !DILocation(line: 176, column: 1, scope: !4410)
!4456 = distinct !DISubprogram(name: "version_etc_ar", scope: !655, file: !655, line: 183, type: !4457, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !4459)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{null, !4413, !65, !65, !65, !4415}
!4459 = !{!4460, !4461, !4462, !4463, !4464, !4465}
!4460 = !DILocalVariable(name: "stream", arg: 1, scope: !4456, file: !655, line: 183, type: !4413)
!4461 = !DILocalVariable(name: "command_name", arg: 2, scope: !4456, file: !655, line: 184, type: !65)
!4462 = !DILocalVariable(name: "package", arg: 3, scope: !4456, file: !655, line: 184, type: !65)
!4463 = !DILocalVariable(name: "version", arg: 4, scope: !4456, file: !655, line: 185, type: !65)
!4464 = !DILocalVariable(name: "authors", arg: 5, scope: !4456, file: !655, line: 185, type: !4415)
!4465 = !DILocalVariable(name: "n_authors", scope: !4456, file: !655, line: 187, type: !121)
!4466 = !DILocation(line: 0, scope: !4456)
!4467 = !DILocation(line: 189, column: 8, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4456, file: !655, line: 189, column: 3)
!4469 = !DILocation(line: 0, scope: !4468)
!4470 = !DILocation(line: 189, column: 23, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4468, file: !655, line: 189, column: 3)
!4472 = !DILocation(line: 189, column: 3, scope: !4468)
!4473 = !DILocation(line: 189, column: 52, scope: !4471)
!4474 = distinct !{!4474, !4472, !4475}
!4475 = !DILocation(line: 190, column: 5, scope: !4468)
!4476 = !DILocation(line: 191, column: 3, scope: !4456)
!4477 = !DILocation(line: 192, column: 1, scope: !4456)
!4478 = distinct !DISubprogram(name: "version_etc_va", scope: !655, file: !655, line: 199, type: !4479, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !4488)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{null, !4413, !65, !65, !65, !4481}
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !655, line: 192, size: 192, elements: !4483)
!4483 = !{!4484, !4485, !4486, !4487}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4482, file: !655, line: 192, baseType: !7, size: 32)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4482, file: !655, line: 192, baseType: !7, size: 32, offset: 32)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4482, file: !655, line: 192, baseType: !119, size: 64, offset: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4482, file: !655, line: 192, baseType: !119, size: 64, offset: 128)
!4488 = !{!4489, !4490, !4491, !4492, !4493, !4494, !4495}
!4489 = !DILocalVariable(name: "stream", arg: 1, scope: !4478, file: !655, line: 199, type: !4413)
!4490 = !DILocalVariable(name: "command_name", arg: 2, scope: !4478, file: !655, line: 200, type: !65)
!4491 = !DILocalVariable(name: "package", arg: 3, scope: !4478, file: !655, line: 200, type: !65)
!4492 = !DILocalVariable(name: "version", arg: 4, scope: !4478, file: !655, line: 201, type: !65)
!4493 = !DILocalVariable(name: "authors", arg: 5, scope: !4478, file: !655, line: 201, type: !4481)
!4494 = !DILocalVariable(name: "n_authors", scope: !4478, file: !655, line: 203, type: !121)
!4495 = !DILocalVariable(name: "authtab", scope: !4478, file: !655, line: 204, type: !4496)
!4496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 640, elements: !502)
!4497 = !DILocation(line: 0, scope: !4478)
!4498 = !DILocation(line: 204, column: 3, scope: !4478)
!4499 = !DILocation(line: 204, column: 15, scope: !4478)
!4500 = !DILocation(line: 0, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4502, file: !655, line: 206, column: 3)
!4502 = distinct !DILexicalBlock(scope: !4478, file: !655, line: 206, column: 3)
!4503 = !DILocation(line: 208, column: 35, scope: !4501)
!4504 = !DILocation(line: 208, column: 14, scope: !4501)
!4505 = !DILocation(line: 208, column: 33, scope: !4501)
!4506 = !DILocation(line: 208, column: 67, scope: !4501)
!4507 = !DILocation(line: 206, column: 3, scope: !4502)
!4508 = !DILocation(line: 0, scope: !4502)
!4509 = !DILocation(line: 211, column: 3, scope: !4478)
!4510 = !DILocation(line: 213, column: 1, scope: !4478)
!4511 = distinct !DISubprogram(name: "version_etc", scope: !655, file: !655, line: 230, type: !4512, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !4514)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{null, !4413, !65, !65, !65, null}
!4514 = !{!4515, !4516, !4517, !4518, !4519}
!4515 = !DILocalVariable(name: "stream", arg: 1, scope: !4511, file: !655, line: 230, type: !4413)
!4516 = !DILocalVariable(name: "command_name", arg: 2, scope: !4511, file: !655, line: 231, type: !65)
!4517 = !DILocalVariable(name: "package", arg: 3, scope: !4511, file: !655, line: 231, type: !65)
!4518 = !DILocalVariable(name: "version", arg: 4, scope: !4511, file: !655, line: 232, type: !65)
!4519 = !DILocalVariable(name: "authors", scope: !4511, file: !655, line: 234, type: !4520)
!4520 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !70, line: 52, baseType: !4521)
!4521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4522, line: 32, baseType: !4523)
!4522 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!4523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !655, line: 234, baseType: !4524)
!4524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4482, size: 192, elements: !104)
!4525 = !DILocation(line: 0, scope: !4511)
!4526 = !DILocation(line: 234, column: 3, scope: !4511)
!4527 = !DILocation(line: 234, column: 11, scope: !4511)
!4528 = !DILocation(line: 236, column: 3, scope: !4511)
!4529 = !DILocation(line: 237, column: 3, scope: !4511)
!4530 = !DILocation(line: 238, column: 3, scope: !4511)
!4531 = !DILocation(line: 239, column: 1, scope: !4511)
!4532 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !655, file: !655, line: 242, type: !147, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !68)
!4533 = !DILocation(line: 244, column: 3, scope: !4532)
!4534 = !DILocation(line: 249, column: 3, scope: !4532)
!4535 = !DILocation(line: 255, column: 3, scope: !4532)
!4536 = !DILocation(line: 260, column: 3, scope: !4532)
!4537 = !DILocation(line: 262, column: 1, scope: !4532)
!4538 = distinct !DISubprogram(name: "xnmalloc", scope: !433, file: !433, line: 99, type: !4539, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4541)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!119, !121, !121}
!4541 = !{!4542, !4543}
!4542 = !DILocalVariable(name: "n", arg: 1, scope: !4538, file: !433, line: 99, type: !121)
!4543 = !DILocalVariable(name: "s", arg: 2, scope: !4538, file: !433, line: 99, type: !121)
!4544 = !DILocation(line: 0, scope: !4538)
!4545 = !DILocation(line: 101, column: 7, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4538, file: !433, line: 101, column: 7)
!4547 = !DILocation(line: 101, column: 7, scope: !4538)
!4548 = !DILocation(line: 102, column: 5, scope: !4546)
!4549 = !DILocation(line: 103, column: 21, scope: !4538)
!4550 = !DILocalVariable(name: "n", arg: 1, scope: !4551, file: !697, line: 39, type: !121)
!4551 = distinct !DISubprogram(name: "xmalloc", scope: !697, file: !697, line: 39, type: !4552, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4554)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!119, !121}
!4554 = !{!4550, !4555}
!4555 = !DILocalVariable(name: "p", scope: !4551, file: !697, line: 41, type: !119)
!4556 = !DILocation(line: 0, scope: !4551, inlinedAt: !4557)
!4557 = distinct !DILocation(line: 103, column: 10, scope: !4538)
!4558 = !DILocation(line: 41, column: 13, scope: !4551, inlinedAt: !4557)
!4559 = !DILocation(line: 42, column: 8, scope: !4560, inlinedAt: !4557)
!4560 = distinct !DILexicalBlock(scope: !4551, file: !697, line: 42, column: 7)
!4561 = !DILocation(line: 42, column: 15, scope: !4560, inlinedAt: !4557)
!4562 = !DILocation(line: 42, column: 10, scope: !4560, inlinedAt: !4557)
!4563 = !DILocation(line: 43, column: 5, scope: !4560, inlinedAt: !4557)
!4564 = !DILocation(line: 103, column: 3, scope: !4538)
!4565 = !DILocation(line: 0, scope: !4551)
!4566 = !DILocation(line: 41, column: 13, scope: !4551)
!4567 = !DILocation(line: 42, column: 8, scope: !4560)
!4568 = !DILocation(line: 42, column: 15, scope: !4560)
!4569 = !DILocation(line: 42, column: 10, scope: !4560)
!4570 = !DILocation(line: 43, column: 5, scope: !4560)
!4571 = !DILocation(line: 44, column: 3, scope: !4551)
!4572 = distinct !DISubprogram(name: "xnrealloc", scope: !433, file: !433, line: 112, type: !4573, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4575)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!119, !119, !121, !121}
!4575 = !{!4576, !4577, !4578}
!4576 = !DILocalVariable(name: "p", arg: 1, scope: !4572, file: !433, line: 112, type: !119)
!4577 = !DILocalVariable(name: "n", arg: 2, scope: !4572, file: !433, line: 112, type: !121)
!4578 = !DILocalVariable(name: "s", arg: 3, scope: !4572, file: !433, line: 112, type: !121)
!4579 = !DILocation(line: 0, scope: !4572)
!4580 = !DILocation(line: 114, column: 7, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4572, file: !433, line: 114, column: 7)
!4582 = !DILocation(line: 114, column: 7, scope: !4572)
!4583 = !DILocation(line: 115, column: 5, scope: !4581)
!4584 = !DILocation(line: 116, column: 25, scope: !4572)
!4585 = !DILocalVariable(name: "p", arg: 1, scope: !4586, file: !697, line: 51, type: !119)
!4586 = distinct !DISubprogram(name: "xrealloc", scope: !697, file: !697, line: 51, type: !4587, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4589)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!119, !119, !121}
!4589 = !{!4585, !4590}
!4590 = !DILocalVariable(name: "n", arg: 2, scope: !4586, file: !697, line: 51, type: !121)
!4591 = !DILocation(line: 0, scope: !4586, inlinedAt: !4592)
!4592 = distinct !DILocation(line: 116, column: 10, scope: !4572)
!4593 = !DILocation(line: 53, column: 8, scope: !4594, inlinedAt: !4592)
!4594 = distinct !DILexicalBlock(scope: !4586, file: !697, line: 53, column: 7)
!4595 = !DILocation(line: 53, column: 13, scope: !4594, inlinedAt: !4592)
!4596 = !DILocation(line: 53, column: 10, scope: !4594, inlinedAt: !4592)
!4597 = !DILocation(line: 57, column: 7, scope: !4598, inlinedAt: !4592)
!4598 = distinct !DILexicalBlock(scope: !4594, file: !697, line: 54, column: 5)
!4599 = !DILocation(line: 58, column: 7, scope: !4598, inlinedAt: !4592)
!4600 = !DILocation(line: 61, column: 7, scope: !4586, inlinedAt: !4592)
!4601 = !DILocation(line: 62, column: 8, scope: !4602, inlinedAt: !4592)
!4602 = distinct !DILexicalBlock(scope: !4586, file: !697, line: 62, column: 7)
!4603 = !DILocation(line: 62, column: 13, scope: !4602, inlinedAt: !4592)
!4604 = !DILocation(line: 62, column: 10, scope: !4602, inlinedAt: !4592)
!4605 = !DILocation(line: 63, column: 5, scope: !4602, inlinedAt: !4592)
!4606 = !DILocation(line: 116, column: 3, scope: !4572)
!4607 = !DILocation(line: 0, scope: !4586)
!4608 = !DILocation(line: 53, column: 8, scope: !4594)
!4609 = !DILocation(line: 53, column: 13, scope: !4594)
!4610 = !DILocation(line: 53, column: 10, scope: !4594)
!4611 = !DILocation(line: 57, column: 7, scope: !4598)
!4612 = !DILocation(line: 58, column: 7, scope: !4598)
!4613 = !DILocation(line: 61, column: 7, scope: !4586)
!4614 = !DILocation(line: 62, column: 8, scope: !4602)
!4615 = !DILocation(line: 62, column: 13, scope: !4602)
!4616 = !DILocation(line: 62, column: 10, scope: !4602)
!4617 = !DILocation(line: 63, column: 5, scope: !4602)
!4618 = !DILocation(line: 65, column: 1, scope: !4586)
!4619 = !DILocation(line: 0, scope: !700)
!4620 = !DILocation(line: 176, column: 14, scope: !700)
!4621 = !DILocation(line: 178, column: 9, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !700, file: !433, line: 178, column: 7)
!4623 = !DILocation(line: 178, column: 7, scope: !700)
!4624 = !DILocation(line: 180, column: 13, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4626, file: !433, line: 180, column: 11)
!4626 = distinct !DILexicalBlock(scope: !4622, file: !433, line: 179, column: 5)
!4627 = !DILocation(line: 180, column: 11, scope: !4626)
!4628 = !DILocation(line: 188, column: 30, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4625, file: !433, line: 181, column: 9)
!4630 = !DILocation(line: 189, column: 16, scope: !4629)
!4631 = !DILocation(line: 189, column: 13, scope: !4629)
!4632 = !DILocation(line: 190, column: 9, scope: !4629)
!4633 = !DILocation(line: 191, column: 11, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4626, file: !433, line: 191, column: 11)
!4635 = !DILocation(line: 191, column: 11, scope: !4626)
!4636 = !DILocation(line: 206, column: 7, scope: !700)
!4637 = !DILocation(line: 207, column: 25, scope: !700)
!4638 = !DILocation(line: 0, scope: !4586, inlinedAt: !4639)
!4639 = distinct !DILocation(line: 207, column: 10, scope: !700)
!4640 = !DILocation(line: 53, column: 10, scope: !4594, inlinedAt: !4639)
!4641 = !DILocation(line: 192, column: 9, scope: !4634)
!4642 = !DILocation(line: 200, column: 69, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4644, file: !433, line: 200, column: 11)
!4644 = distinct !DILexicalBlock(scope: !4622, file: !433, line: 195, column: 5)
!4645 = !DILocation(line: 201, column: 11, scope: !4643)
!4646 = !DILocation(line: 200, column: 11, scope: !4644)
!4647 = !DILocation(line: 202, column: 9, scope: !4643)
!4648 = !DILocation(line: 203, column: 14, scope: !4644)
!4649 = !DILocation(line: 203, column: 18, scope: !4644)
!4650 = !DILocation(line: 203, column: 9, scope: !4644)
!4651 = !DILocation(line: 53, column: 8, scope: !4594, inlinedAt: !4639)
!4652 = !DILocation(line: 57, column: 7, scope: !4598, inlinedAt: !4639)
!4653 = !DILocation(line: 58, column: 7, scope: !4598, inlinedAt: !4639)
!4654 = !DILocation(line: 61, column: 7, scope: !4586, inlinedAt: !4639)
!4655 = !DILocation(line: 62, column: 8, scope: !4602, inlinedAt: !4639)
!4656 = !DILocation(line: 62, column: 13, scope: !4602, inlinedAt: !4639)
!4657 = !DILocation(line: 62, column: 10, scope: !4602, inlinedAt: !4639)
!4658 = !DILocation(line: 63, column: 5, scope: !4602, inlinedAt: !4639)
!4659 = !DILocation(line: 207, column: 3, scope: !700)
!4660 = distinct !DISubprogram(name: "xcharalloc", scope: !433, file: !433, line: 216, type: !3819, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4661)
!4661 = !{!4662}
!4662 = !DILocalVariable(name: "n", arg: 1, scope: !4660, file: !433, line: 216, type: !121)
!4663 = !DILocation(line: 0, scope: !4660)
!4664 = !DILocation(line: 0, scope: !4551, inlinedAt: !4665)
!4665 = distinct !DILocation(line: 218, column: 10, scope: !4660)
!4666 = !DILocation(line: 41, column: 13, scope: !4551, inlinedAt: !4665)
!4667 = !DILocation(line: 42, column: 8, scope: !4560, inlinedAt: !4665)
!4668 = !DILocation(line: 42, column: 15, scope: !4560, inlinedAt: !4665)
!4669 = !DILocation(line: 42, column: 10, scope: !4560, inlinedAt: !4665)
!4670 = !DILocation(line: 43, column: 5, scope: !4560, inlinedAt: !4665)
!4671 = !DILocation(line: 218, column: 3, scope: !4660)
!4672 = distinct !DISubprogram(name: "x2realloc", scope: !697, file: !697, line: 74, type: !4673, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4675)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{!119, !119, !703}
!4675 = !{!4676, !4677}
!4676 = !DILocalVariable(name: "p", arg: 1, scope: !4672, file: !697, line: 74, type: !119)
!4677 = !DILocalVariable(name: "pn", arg: 2, scope: !4672, file: !697, line: 74, type: !703)
!4678 = !DILocation(line: 0, scope: !4672)
!4679 = !DILocation(line: 0, scope: !700, inlinedAt: !4680)
!4680 = distinct !DILocation(line: 76, column: 10, scope: !4672)
!4681 = !DILocation(line: 176, column: 14, scope: !700, inlinedAt: !4680)
!4682 = !DILocation(line: 178, column: 9, scope: !4622, inlinedAt: !4680)
!4683 = !DILocation(line: 178, column: 7, scope: !700, inlinedAt: !4680)
!4684 = !DILocation(line: 180, column: 13, scope: !4625, inlinedAt: !4680)
!4685 = !DILocation(line: 180, column: 11, scope: !4626, inlinedAt: !4680)
!4686 = !DILocation(line: 191, column: 11, scope: !4634, inlinedAt: !4680)
!4687 = !DILocation(line: 191, column: 11, scope: !4626, inlinedAt: !4680)
!4688 = !DILocation(line: 206, column: 7, scope: !700, inlinedAt: !4680)
!4689 = !DILocation(line: 0, scope: !4586, inlinedAt: !4690)
!4690 = distinct !DILocation(line: 207, column: 10, scope: !700, inlinedAt: !4680)
!4691 = !DILocation(line: 53, column: 10, scope: !4594, inlinedAt: !4690)
!4692 = !DILocation(line: 192, column: 9, scope: !4634, inlinedAt: !4680)
!4693 = !DILocation(line: 201, column: 11, scope: !4643, inlinedAt: !4680)
!4694 = !DILocation(line: 200, column: 11, scope: !4644, inlinedAt: !4680)
!4695 = !DILocation(line: 202, column: 9, scope: !4643, inlinedAt: !4680)
!4696 = !DILocation(line: 203, column: 14, scope: !4644, inlinedAt: !4680)
!4697 = !DILocation(line: 203, column: 18, scope: !4644, inlinedAt: !4680)
!4698 = !DILocation(line: 203, column: 9, scope: !4644, inlinedAt: !4680)
!4699 = !DILocation(line: 53, column: 8, scope: !4594, inlinedAt: !4690)
!4700 = !DILocation(line: 57, column: 7, scope: !4598, inlinedAt: !4690)
!4701 = !DILocation(line: 58, column: 7, scope: !4598, inlinedAt: !4690)
!4702 = !DILocation(line: 61, column: 7, scope: !4586, inlinedAt: !4690)
!4703 = !DILocation(line: 62, column: 8, scope: !4602, inlinedAt: !4690)
!4704 = !DILocation(line: 62, column: 13, scope: !4602, inlinedAt: !4690)
!4705 = !DILocation(line: 62, column: 10, scope: !4602, inlinedAt: !4690)
!4706 = !DILocation(line: 63, column: 5, scope: !4602, inlinedAt: !4690)
!4707 = !DILocation(line: 76, column: 3, scope: !4672)
!4708 = distinct !DISubprogram(name: "xzalloc", scope: !697, file: !697, line: 84, type: !4552, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4709)
!4709 = !{!4710}
!4710 = !DILocalVariable(name: "n", arg: 1, scope: !4708, file: !697, line: 84, type: !121)
!4711 = !DILocation(line: 0, scope: !4708)
!4712 = !DILocalVariable(name: "n", arg: 1, scope: !4713, file: !697, line: 93, type: !121)
!4713 = distinct !DISubprogram(name: "xcalloc", scope: !697, file: !697, line: 93, type: !4539, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4714)
!4714 = !{!4712, !4715, !4716}
!4715 = !DILocalVariable(name: "s", arg: 2, scope: !4713, file: !697, line: 93, type: !121)
!4716 = !DILocalVariable(name: "p", scope: !4713, file: !697, line: 95, type: !119)
!4717 = !DILocation(line: 0, scope: !4713, inlinedAt: !4718)
!4718 = distinct !DILocation(line: 86, column: 10, scope: !4708)
!4719 = !DILocation(line: 100, column: 7, scope: !4720, inlinedAt: !4718)
!4720 = distinct !DILexicalBlock(scope: !4713, file: !697, line: 100, column: 7)
!4721 = !DILocation(line: 101, column: 7, scope: !4720, inlinedAt: !4718)
!4722 = !DILocation(line: 101, column: 18, scope: !4720, inlinedAt: !4718)
!4723 = !DILocation(line: 101, column: 16, scope: !4720, inlinedAt: !4718)
!4724 = !DILocation(line: 100, column: 7, scope: !4713, inlinedAt: !4718)
!4725 = !DILocation(line: 102, column: 5, scope: !4720, inlinedAt: !4718)
!4726 = !DILocation(line: 86, column: 3, scope: !4708)
!4727 = !DILocation(line: 0, scope: !4713)
!4728 = !DILocation(line: 100, column: 7, scope: !4720)
!4729 = !DILocation(line: 101, column: 7, scope: !4720)
!4730 = !DILocation(line: 101, column: 18, scope: !4720)
!4731 = !DILocation(line: 101, column: 16, scope: !4720)
!4732 = !DILocation(line: 100, column: 7, scope: !4713)
!4733 = !DILocation(line: 102, column: 5, scope: !4720)
!4734 = !DILocation(line: 103, column: 3, scope: !4713)
!4735 = distinct !DISubprogram(name: "xmemdup", scope: !697, file: !697, line: 111, type: !1431, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4736)
!4736 = !{!4737, !4738}
!4737 = !DILocalVariable(name: "p", arg: 1, scope: !4735, file: !697, line: 111, type: !346)
!4738 = !DILocalVariable(name: "s", arg: 2, scope: !4735, file: !697, line: 111, type: !121)
!4739 = !DILocation(line: 0, scope: !4735)
!4740 = !DILocation(line: 0, scope: !4551, inlinedAt: !4741)
!4741 = distinct !DILocation(line: 113, column: 18, scope: !4735)
!4742 = !DILocation(line: 41, column: 13, scope: !4551, inlinedAt: !4741)
!4743 = !DILocation(line: 42, column: 8, scope: !4560, inlinedAt: !4741)
!4744 = !DILocation(line: 42, column: 15, scope: !4560, inlinedAt: !4741)
!4745 = !DILocation(line: 42, column: 10, scope: !4560, inlinedAt: !4741)
!4746 = !DILocation(line: 43, column: 5, scope: !4560, inlinedAt: !4741)
!4747 = !DILocalVariable(name: "__dest", arg: 1, scope: !4748, file: !2298, line: 31, type: !2301)
!4748 = distinct !DISubprogram(name: "memcpy", scope: !2298, file: !2298, line: 31, type: !2299, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4749)
!4749 = !{!4747, !4750, !4751}
!4750 = !DILocalVariable(name: "__src", arg: 2, scope: !4748, file: !2298, line: 31, type: !2302)
!4751 = !DILocalVariable(name: "__len", arg: 3, scope: !4748, file: !2298, line: 31, type: !121)
!4752 = !DILocation(line: 0, scope: !4748, inlinedAt: !4753)
!4753 = distinct !DILocation(line: 113, column: 10, scope: !4735)
!4754 = !DILocation(line: 34, column: 10, scope: !4748, inlinedAt: !4753)
!4755 = !DILocation(line: 113, column: 3, scope: !4735)
!4756 = distinct !DISubprogram(name: "xstrdup", scope: !697, file: !697, line: 119, type: !140, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !4757)
!4757 = !{!4758}
!4758 = !DILocalVariable(name: "string", arg: 1, scope: !4756, file: !697, line: 119, type: !65)
!4759 = !DILocation(line: 0, scope: !4756)
!4760 = !DILocation(line: 121, column: 27, scope: !4756)
!4761 = !DILocation(line: 121, column: 43, scope: !4756)
!4762 = !DILocation(line: 0, scope: !4735, inlinedAt: !4763)
!4763 = distinct !DILocation(line: 121, column: 10, scope: !4756)
!4764 = !DILocation(line: 0, scope: !4551, inlinedAt: !4765)
!4765 = distinct !DILocation(line: 113, column: 18, scope: !4735, inlinedAt: !4763)
!4766 = !DILocation(line: 41, column: 13, scope: !4551, inlinedAt: !4765)
!4767 = !DILocation(line: 42, column: 8, scope: !4560, inlinedAt: !4765)
!4768 = !DILocation(line: 42, column: 15, scope: !4560, inlinedAt: !4765)
!4769 = !DILocation(line: 42, column: 10, scope: !4560, inlinedAt: !4765)
!4770 = !DILocation(line: 43, column: 5, scope: !4560, inlinedAt: !4765)
!4771 = !DILocation(line: 0, scope: !4748, inlinedAt: !4772)
!4772 = distinct !DILocation(line: 113, column: 10, scope: !4735, inlinedAt: !4763)
!4773 = !DILocation(line: 34, column: 10, scope: !4748, inlinedAt: !4772)
!4774 = !DILocation(line: 121, column: 3, scope: !4756)
!4775 = distinct !DISubprogram(name: "xalloc_die", scope: !718, file: !718, line: 32, type: !147, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !68)
!4776 = !DILocation(line: 34, column: 10, scope: !4775)
!4777 = !DILocation(line: 34, column: 33, scope: !4775)
!4778 = !DILocation(line: 34, column: 3, scope: !4775)
!4779 = !DILocation(line: 40, column: 3, scope: !4775)
!4780 = distinct !DISubprogram(name: "rpl_calloc", scope: !721, file: !721, line: 42, type: !4539, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !4781)
!4781 = !{!4782, !4783, !4784, !4785}
!4782 = !DILocalVariable(name: "n", arg: 1, scope: !4780, file: !721, line: 42, type: !121)
!4783 = !DILocalVariable(name: "s", arg: 2, scope: !4780, file: !721, line: 42, type: !121)
!4784 = !DILocalVariable(name: "result", scope: !4780, file: !721, line: 44, type: !119)
!4785 = !DILocalVariable(name: "bytes", scope: !4786, file: !721, line: 56, type: !121)
!4786 = distinct !DILexicalBlock(scope: !4787, file: !721, line: 53, column: 5)
!4787 = distinct !DILexicalBlock(scope: !4780, file: !721, line: 47, column: 7)
!4788 = !DILocation(line: 0, scope: !4780)
!4789 = !DILocation(line: 47, column: 9, scope: !4787)
!4790 = !DILocation(line: 47, column: 19, scope: !4787)
!4791 = !DILocation(line: 47, column: 14, scope: !4787)
!4792 = !DILocation(line: 0, scope: !4786)
!4793 = !DILocation(line: 57, column: 21, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4786, file: !721, line: 57, column: 11)
!4795 = !DILocation(line: 57, column: 11, scope: !4786)
!4796 = !DILocation(line: 59, column: 11, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4794, file: !721, line: 58, column: 9)
!4798 = !DILocation(line: 59, column: 17, scope: !4797)
!4799 = !DILocation(line: 65, column: 12, scope: !4780)
!4800 = !DILocation(line: 72, column: 3, scope: !4780)
!4801 = !DILocation(line: 73, column: 1, scope: !4780)
!4802 = distinct !DISubprogram(name: "rpl_fclose", scope: !724, file: !724, line: 58, type: !4803, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !4807)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!67, !4805}
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !730)
!4807 = !{!4808, !4809, !4810, !4811}
!4808 = !DILocalVariable(name: "fp", arg: 1, scope: !4802, file: !724, line: 58, type: !4805)
!4809 = !DILocalVariable(name: "saved_errno", scope: !4802, file: !724, line: 60, type: !67)
!4810 = !DILocalVariable(name: "fd", scope: !4802, file: !724, line: 61, type: !67)
!4811 = !DILocalVariable(name: "result", scope: !4802, file: !724, line: 62, type: !67)
!4812 = !DILocation(line: 0, scope: !4802)
!4813 = !DILocation(line: 65, column: 8, scope: !4802)
!4814 = !DILocation(line: 66, column: 10, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4802, file: !724, line: 66, column: 7)
!4816 = !DILocation(line: 66, column: 7, scope: !4802)
!4817 = !DILocation(line: 67, column: 12, scope: !4815)
!4818 = !DILocation(line: 67, column: 5, scope: !4815)
!4819 = !DILocation(line: 72, column: 9, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4802, file: !724, line: 72, column: 7)
!4821 = !DILocation(line: 72, column: 23, scope: !4820)
!4822 = !DILocation(line: 72, column: 33, scope: !4820)
!4823 = !DILocation(line: 72, column: 26, scope: !4820)
!4824 = !DILocation(line: 72, column: 59, scope: !4820)
!4825 = !DILocation(line: 73, column: 7, scope: !4820)
!4826 = !DILocation(line: 73, column: 10, scope: !4820)
!4827 = !DILocation(line: 72, column: 7, scope: !4802)
!4828 = !DILocation(line: 100, column: 12, scope: !4802)
!4829 = !DILocation(line: 105, column: 7, scope: !4802)
!4830 = !DILocation(line: 74, column: 19, scope: !4820)
!4831 = !DILocation(line: 105, column: 19, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4802, file: !724, line: 105, column: 7)
!4833 = !DILocation(line: 107, column: 13, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4832, file: !724, line: 106, column: 5)
!4835 = !DILocation(line: 109, column: 5, scope: !4834)
!4836 = !DILocation(line: 112, column: 1, scope: !4802)
!4837 = distinct !DISubprogram(name: "rpl_fcntl", scope: !539, file: !539, line: 202, type: !546, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !4838)
!4838 = !{!4839, !4840, !4841, !4851, !4852, !4855, !4857, !4861}
!4839 = !DILocalVariable(name: "fd", arg: 1, scope: !4837, file: !539, line: 202, type: !67)
!4840 = !DILocalVariable(name: "action", arg: 2, scope: !4837, file: !539, line: 202, type: !67)
!4841 = !DILocalVariable(name: "arg", scope: !4837, file: !539, line: 208, type: !4842)
!4842 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4522, line: 14, baseType: !4843)
!4843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !539, line: 208, baseType: !4844)
!4844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4845, size: 192, elements: !104)
!4845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !539, line: 208, size: 192, elements: !4846)
!4846 = !{!4847, !4848, !4849, !4850}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4845, file: !539, line: 208, baseType: !7, size: 32)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4845, file: !539, line: 208, baseType: !7, size: 32, offset: 32)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4845, file: !539, line: 208, baseType: !119, size: 64, offset: 64)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4845, file: !539, line: 208, baseType: !119, size: 64, offset: 128)
!4851 = !DILocalVariable(name: "result", scope: !4837, file: !539, line: 209, type: !67)
!4852 = !DILocalVariable(name: "target", scope: !4853, file: !539, line: 215, type: !67)
!4853 = distinct !DILexicalBlock(scope: !4854, file: !539, line: 214, column: 7)
!4854 = distinct !DILexicalBlock(scope: !4837, file: !539, line: 212, column: 5)
!4855 = !DILocalVariable(name: "target", scope: !4856, file: !539, line: 222, type: !67)
!4856 = distinct !DILexicalBlock(scope: !4854, file: !539, line: 221, column: 7)
!4857 = !DILocalVariable(name: "x", scope: !4858, file: !539, line: 423, type: !67)
!4858 = distinct !DILexicalBlock(scope: !4859, file: !539, line: 422, column: 13)
!4859 = distinct !DILexicalBlock(scope: !4860, file: !539, line: 260, column: 11)
!4860 = distinct !DILexicalBlock(scope: !4854, file: !539, line: 257, column: 7)
!4861 = !DILocalVariable(name: "p", scope: !4862, file: !539, line: 431, type: !119)
!4862 = distinct !DILexicalBlock(scope: !4859, file: !539, line: 430, column: 13)
!4863 = !DILocation(line: 0, scope: !4837)
!4864 = !DILocation(line: 208, column: 3, scope: !4837)
!4865 = !DILocation(line: 208, column: 11, scope: !4837)
!4866 = !DILocation(line: 210, column: 3, scope: !4837)
!4867 = !DILocation(line: 211, column: 3, scope: !4837)
!4868 = !DILocation(line: 215, column: 22, scope: !4853)
!4869 = !DILocation(line: 0, scope: !4853)
!4870 = !DILocalVariable(name: "fd", arg: 1, scope: !4871, file: !539, line: 447, type: !67)
!4871 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !539, file: !539, line: 447, type: !540, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !4872)
!4872 = !{!4870, !4873, !4874}
!4873 = !DILocalVariable(name: "target", arg: 2, scope: !4871, file: !539, line: 447, type: !67)
!4874 = !DILocalVariable(name: "result", scope: !4871, file: !539, line: 449, type: !67)
!4875 = !DILocation(line: 0, scope: !4871, inlinedAt: !4876)
!4876 = distinct !DILocation(line: 216, column: 18, scope: !4853)
!4877 = !DILocation(line: 482, column: 12, scope: !4871, inlinedAt: !4876)
!4878 = !DILocation(line: 222, column: 22, scope: !4856)
!4879 = !DILocation(line: 0, scope: !4856)
!4880 = !DILocation(line: 0, scope: !538, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 223, column: 18, scope: !4856)
!4882 = !DILocation(line: 508, column: 12, scope: !4883, inlinedAt: !4881)
!4883 = distinct !DILexicalBlock(scope: !538, file: !539, line: 508, column: 7)
!4884 = !DILocation(line: 508, column: 9, scope: !4883, inlinedAt: !4881)
!4885 = !DILocation(line: 508, column: 7, scope: !538, inlinedAt: !4881)
!4886 = !DILocation(line: 510, column: 16, scope: !4887, inlinedAt: !4881)
!4887 = distinct !DILexicalBlock(scope: !4883, file: !539, line: 509, column: 5)
!4888 = !DILocation(line: 511, column: 13, scope: !4889, inlinedAt: !4881)
!4889 = distinct !DILexicalBlock(scope: !4887, file: !539, line: 511, column: 11)
!4890 = !DILocation(line: 511, column: 23, scope: !4889, inlinedAt: !4881)
!4891 = !DILocation(line: 511, column: 26, scope: !4889, inlinedAt: !4881)
!4892 = !DILocation(line: 511, column: 32, scope: !4889, inlinedAt: !4881)
!4893 = !DILocation(line: 511, column: 11, scope: !4887, inlinedAt: !4881)
!4894 = !DILocation(line: 513, column: 30, scope: !4895, inlinedAt: !4881)
!4895 = distinct !DILexicalBlock(scope: !4889, file: !539, line: 512, column: 9)
!4896 = !DILocation(line: 529, column: 19, scope: !559, inlinedAt: !4881)
!4897 = !DILocation(line: 0, scope: !4871, inlinedAt: !4898)
!4898 = distinct !DILocation(line: 521, column: 20, scope: !4899, inlinedAt: !4881)
!4899 = distinct !DILexicalBlock(scope: !4889, file: !539, line: 520, column: 9)
!4900 = !DILocation(line: 482, column: 12, scope: !4871, inlinedAt: !4898)
!4901 = !DILocation(line: 522, column: 22, scope: !4902, inlinedAt: !4881)
!4902 = distinct !DILexicalBlock(scope: !4899, file: !539, line: 522, column: 15)
!4903 = !DILocation(line: 522, column: 15, scope: !4899, inlinedAt: !4881)
!4904 = !DILocation(line: 523, column: 32, scope: !4902, inlinedAt: !4881)
!4905 = !DILocation(line: 523, column: 13, scope: !4902, inlinedAt: !4881)
!4906 = !DILocation(line: 0, scope: !4871, inlinedAt: !4907)
!4907 = distinct !DILocation(line: 528, column: 14, scope: !4883, inlinedAt: !4881)
!4908 = !DILocation(line: 482, column: 12, scope: !4871, inlinedAt: !4907)
!4909 = !DILocation(line: 529, column: 22, scope: !559, inlinedAt: !4881)
!4910 = !DILocation(line: 0, scope: !4883, inlinedAt: !4881)
!4911 = !DILocation(line: 529, column: 9, scope: !559, inlinedAt: !4881)
!4912 = !DILocation(line: 531, column: 19, scope: !558, inlinedAt: !4881)
!4913 = !DILocation(line: 0, scope: !558, inlinedAt: !4881)
!4914 = !DILocation(line: 532, column: 17, scope: !562, inlinedAt: !4881)
!4915 = !DILocation(line: 532, column: 21, scope: !562, inlinedAt: !4881)
!4916 = !DILocation(line: 532, column: 54, scope: !562, inlinedAt: !4881)
!4917 = !DILocation(line: 532, column: 24, scope: !562, inlinedAt: !4881)
!4918 = !DILocation(line: 532, column: 68, scope: !562, inlinedAt: !4881)
!4919 = !DILocation(line: 532, column: 11, scope: !558, inlinedAt: !4881)
!4920 = !DILocation(line: 534, column: 29, scope: !561, inlinedAt: !4881)
!4921 = !DILocation(line: 0, scope: !561, inlinedAt: !4881)
!4922 = !DILocation(line: 535, column: 11, scope: !561, inlinedAt: !4881)
!4923 = !DILocation(line: 536, column: 17, scope: !561, inlinedAt: !4881)
!4924 = !DILocation(line: 538, column: 9, scope: !561, inlinedAt: !4881)
!4925 = !DILocation(line: 328, column: 22, scope: !4859)
!4926 = !DILocation(line: 329, column: 13, scope: !4859)
!4927 = !DILocation(line: 423, column: 23, scope: !4858)
!4928 = !DILocation(line: 0, scope: !4858)
!4929 = !DILocation(line: 424, column: 24, scope: !4858)
!4930 = !DILocation(line: 426, column: 13, scope: !4859)
!4931 = !DILocation(line: 431, column: 25, scope: !4862)
!4932 = !DILocation(line: 0, scope: !4862)
!4933 = !DILocation(line: 432, column: 24, scope: !4862)
!4934 = !DILocation(line: 434, column: 13, scope: !4859)
!4935 = !DILocation(line: 0, scope: !4854)
!4936 = !DILocation(line: 442, column: 3, scope: !4837)
!4937 = !DILocation(line: 444, column: 1, scope: !4837)
!4938 = !DILocation(line: 443, column: 3, scope: !4837)
!4939 = distinct !DISubprogram(name: "rpl_fflush", scope: !767, file: !767, line: 129, type: !4940, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !4944)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!67, !4942}
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !773)
!4944 = !{!4945}
!4945 = !DILocalVariable(name: "stream", arg: 1, scope: !4939, file: !767, line: 129, type: !4942)
!4946 = !DILocation(line: 0, scope: !4939)
!4947 = !DILocation(line: 150, column: 14, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4939, file: !767, line: 150, column: 7)
!4949 = !DILocation(line: 150, column: 22, scope: !4948)
!4950 = !DILocation(line: 150, column: 27, scope: !4948)
!4951 = !DILocation(line: 150, column: 7, scope: !4939)
!4952 = !DILocation(line: 151, column: 12, scope: !4948)
!4953 = !DILocation(line: 151, column: 5, scope: !4948)
!4954 = !DILocalVariable(name: "fp", arg: 1, scope: !4955, file: !767, line: 41, type: !4942)
!4955 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !767, file: !767, line: 41, type: !4956, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !4958)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{null, !4942}
!4958 = !{!4954}
!4959 = !DILocation(line: 0, scope: !4955, inlinedAt: !4960)
!4960 = distinct !DILocation(line: 156, column: 3, scope: !4939)
!4961 = !DILocation(line: 43, column: 11, scope: !4962, inlinedAt: !4960)
!4962 = distinct !DILexicalBlock(scope: !4955, file: !767, line: 43, column: 7)
!4963 = !DILocation(line: 43, column: 18, scope: !4962, inlinedAt: !4960)
!4964 = !DILocation(line: 43, column: 7, scope: !4955, inlinedAt: !4960)
!4965 = !DILocation(line: 45, column: 5, scope: !4962, inlinedAt: !4960)
!4966 = !DILocation(line: 158, column: 10, scope: !4939)
!4967 = !DILocation(line: 158, column: 3, scope: !4939)
!4968 = !DILocation(line: 235, column: 1, scope: !4939)
!4969 = distinct !DISubprogram(name: "rpl_fseeko", scope: !808, file: !808, line: 28, type: !4970, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !4974)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!67, !4972, !2816, !67}
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !814)
!4974 = !{!4975, !4976, !4977, !4978}
!4975 = !DILocalVariable(name: "fp", arg: 1, scope: !4969, file: !808, line: 28, type: !4972)
!4976 = !DILocalVariable(name: "offset", arg: 2, scope: !4969, file: !808, line: 28, type: !2816)
!4977 = !DILocalVariable(name: "whence", arg: 3, scope: !4969, file: !808, line: 28, type: !67)
!4978 = !DILocalVariable(name: "pos", scope: !4979, file: !808, line: 117, type: !2816)
!4979 = distinct !DILexicalBlock(scope: !4980, file: !808, line: 113, column: 5)
!4980 = distinct !DILexicalBlock(scope: !4969, file: !808, line: 52, column: 7)
!4981 = !DILocation(line: 0, scope: !4969)
!4982 = !DILocation(line: 52, column: 11, scope: !4980)
!4983 = !{!1911, !1345, i64 16}
!4984 = !DILocation(line: 52, column: 31, scope: !4980)
!4985 = !{!1911, !1345, i64 8}
!4986 = !DILocation(line: 52, column: 24, scope: !4980)
!4987 = !DILocation(line: 53, column: 7, scope: !4980)
!4988 = !DILocation(line: 53, column: 14, scope: !4980)
!4989 = !DILocation(line: 53, column: 35, scope: !4980)
!4990 = !{!1911, !1345, i64 32}
!4991 = !DILocation(line: 53, column: 28, scope: !4980)
!4992 = !DILocation(line: 54, column: 7, scope: !4980)
!4993 = !DILocation(line: 54, column: 14, scope: !4980)
!4994 = !{!1911, !1345, i64 72}
!4995 = !DILocation(line: 54, column: 28, scope: !4980)
!4996 = !DILocation(line: 52, column: 7, scope: !4969)
!4997 = !DILocation(line: 117, column: 26, scope: !4979)
!4998 = !DILocation(line: 117, column: 19, scope: !4979)
!4999 = !DILocation(line: 0, scope: !4979)
!5000 = !DILocation(line: 118, column: 15, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4979, file: !808, line: 118, column: 11)
!5002 = !DILocation(line: 118, column: 11, scope: !4979)
!5003 = !DILocation(line: 129, column: 11, scope: !4979)
!5004 = !DILocation(line: 129, column: 18, scope: !4979)
!5005 = !DILocation(line: 130, column: 11, scope: !4979)
!5006 = !DILocation(line: 130, column: 19, scope: !4979)
!5007 = !{!1911, !1610, i64 144}
!5008 = !DILocation(line: 161, column: 7, scope: !4979)
!5009 = !DILocation(line: 163, column: 10, scope: !4969)
!5010 = !DILocation(line: 163, column: 3, scope: !4969)
!5011 = !DILocation(line: 164, column: 1, scope: !4969)
!5012 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !849, file: !849, line: 86, type: !5013, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !848, retainedNodes: !5019)
!5013 = !DISubroutineType(types: !5014)
!5014 = !{!121, !5015, !65, !121, !5016}
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3097, line: 6, baseType: !5018)
!5018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !461, line: 21, baseType: !855)
!5019 = !{!5020, !5021, !5022, !5023, !5024, !5025, !5026}
!5020 = !DILocalVariable(name: "pwc", arg: 1, scope: !5012, file: !849, line: 86, type: !5015)
!5021 = !DILocalVariable(name: "s", arg: 2, scope: !5012, file: !849, line: 86, type: !65)
!5022 = !DILocalVariable(name: "n", arg: 3, scope: !5012, file: !849, line: 86, type: !121)
!5023 = !DILocalVariable(name: "ps", arg: 4, scope: !5012, file: !849, line: 86, type: !5016)
!5024 = !DILocalVariable(name: "ret", scope: !5012, file: !849, line: 88, type: !121)
!5025 = !DILocalVariable(name: "wc", scope: !5012, file: !849, line: 89, type: !3101)
!5026 = !DILocalVariable(name: "uc", scope: !5027, file: !849, line: 156, type: !193)
!5027 = distinct !DILexicalBlock(scope: !5028, file: !849, line: 155, column: 5)
!5028 = distinct !DILexicalBlock(scope: !5012, file: !849, line: 154, column: 7)
!5029 = !DILocation(line: 0, scope: !5012)
!5030 = !DILocation(line: 89, column: 3, scope: !5012)
!5031 = !DILocation(line: 105, column: 9, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5012, file: !849, line: 105, column: 7)
!5033 = !DILocation(line: 105, column: 7, scope: !5012)
!5034 = !DILocation(line: 145, column: 9, scope: !5012)
!5035 = !DILocation(line: 154, column: 19, scope: !5028)
!5036 = !DILocation(line: 154, column: 31, scope: !5028)
!5037 = !DILocation(line: 154, column: 26, scope: !5028)
!5038 = !DILocation(line: 154, column: 41, scope: !5028)
!5039 = !DILocation(line: 154, column: 7, scope: !5012)
!5040 = !DILocation(line: 156, column: 26, scope: !5027)
!5041 = !DILocation(line: 0, scope: !5027)
!5042 = !DILocation(line: 157, column: 14, scope: !5027)
!5043 = !DILocation(line: 157, column: 12, scope: !5027)
!5044 = !DILocation(line: 163, column: 1, scope: !5012)
!5045 = distinct !DISubprogram(name: "close_stream", scope: !868, file: !868, line: 56, type: !5046, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !867, retainedNodes: !5050)
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!67, !5048}
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !874)
!5050 = !{!5051, !5052, !5054, !5055}
!5051 = !DILocalVariable(name: "stream", arg: 1, scope: !5045, file: !868, line: 56, type: !5048)
!5052 = !DILocalVariable(name: "some_pending", scope: !5045, file: !868, line: 58, type: !5053)
!5053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!5054 = !DILocalVariable(name: "prev_fail", scope: !5045, file: !868, line: 59, type: !5053)
!5055 = !DILocalVariable(name: "fclose_fail", scope: !5045, file: !868, line: 60, type: !5053)
!5056 = !DILocation(line: 0, scope: !5045)
!5057 = !DILocation(line: 58, column: 30, scope: !5045)
!5058 = !DILocalVariable(name: "__stream", arg: 1, scope: !5059, file: !1572, line: 135, type: !5048)
!5059 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1572, file: !1572, line: 135, type: !5046, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !867, retainedNodes: !5060)
!5060 = !{!5058}
!5061 = !DILocation(line: 0, scope: !5059, inlinedAt: !5062)
!5062 = distinct !DILocation(line: 59, column: 27, scope: !5045)
!5063 = !DILocation(line: 137, column: 10, scope: !5059, inlinedAt: !5062)
!5064 = !DILocation(line: 59, column: 43, scope: !5045)
!5065 = !DILocation(line: 60, column: 29, scope: !5045)
!5066 = !DILocation(line: 60, column: 45, scope: !5045)
!5067 = !DILocation(line: 70, column: 17, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5045, file: !868, line: 70, column: 7)
!5069 = !DILocation(line: 58, column: 50, scope: !5045)
!5070 = !DILocation(line: 70, column: 33, scope: !5068)
!5071 = !DILocation(line: 70, column: 53, scope: !5068)
!5072 = !DILocation(line: 70, column: 59, scope: !5068)
!5073 = !DILocation(line: 70, column: 7, scope: !5045)
!5074 = !DILocation(line: 72, column: 11, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5068, file: !868, line: 71, column: 5)
!5076 = !DILocation(line: 73, column: 9, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5075, file: !868, line: 72, column: 11)
!5078 = !DILocation(line: 73, column: 15, scope: !5077)
!5079 = !DILocation(line: 78, column: 1, scope: !5045)
!5080 = distinct !DISubprogram(name: "hard_locale", scope: !906, file: !906, line: 27, type: !865, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !905, retainedNodes: !5081)
!5081 = !{!5082, !5083}
!5082 = !DILocalVariable(name: "category", arg: 1, scope: !5080, file: !906, line: 27, type: !67)
!5083 = !DILocalVariable(name: "locale", scope: !5080, file: !906, line: 29, type: !5084)
!5084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 2056, elements: !5085)
!5085 = !{!5086}
!5086 = !DISubrange(count: 257)
!5087 = !DILocation(line: 0, scope: !5080)
!5088 = !DILocation(line: 29, column: 3, scope: !5080)
!5089 = !DILocation(line: 29, column: 8, scope: !5080)
!5090 = !DILocation(line: 31, column: 7, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5080, file: !906, line: 31, column: 7)
!5092 = !DILocation(line: 31, column: 7, scope: !5080)
!5093 = !DILocation(line: 34, column: 12, scope: !5080)
!5094 = !DILocation(line: 34, column: 38, scope: !5080)
!5095 = !DILocation(line: 34, column: 41, scope: !5080)
!5096 = !DILocation(line: 34, column: 66, scope: !5080)
!5097 = !DILocation(line: 35, column: 1, scope: !5080)
!5098 = distinct !DISubprogram(name: "locale_charset", scope: !913, file: !913, line: 831, type: !484, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !912, retainedNodes: !5099)
!5099 = !{!5100}
!5100 = !DILocalVariable(name: "codeset", scope: !5098, file: !913, line: 833, type: !65)
!5101 = !DILocation(line: 847, column: 13, scope: !5098)
!5102 = !DILocation(line: 0, scope: !5098)
!5103 = !DILocation(line: 911, column: 15, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5098, file: !913, line: 911, column: 7)
!5105 = !DILocation(line: 911, column: 7, scope: !5098)
!5106 = !DILocation(line: 1070, column: 13, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5108, file: !913, line: 1070, column: 13)
!5108 = distinct !DILexicalBlock(scope: !5109, file: !913, line: 1060, column: 7)
!5109 = distinct !DILexicalBlock(scope: !5098, file: !913, line: 1019, column: 3)
!5110 = !DILocation(line: 1070, column: 24, scope: !5107)
!5111 = !DILocation(line: 1070, column: 13, scope: !5108)
!5112 = !DILocation(line: 1158, column: 3, scope: !5098)
!5113 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1306, file: !1306, line: 269, type: !5114, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1305, retainedNodes: !5116)
!5114 = !DISubroutineType(types: !5115)
!5115 = !{!67, !67, !63, !121}
!5116 = !{!5117, !5118, !5119}
!5117 = !DILocalVariable(name: "category", arg: 1, scope: !5113, file: !1306, line: 269, type: !67)
!5118 = !DILocalVariable(name: "buf", arg: 2, scope: !5113, file: !1306, line: 269, type: !63)
!5119 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5113, file: !1306, line: 269, type: !121)
!5120 = !DILocation(line: 0, scope: !5113)
!5121 = !DILocalVariable(name: "category", arg: 1, scope: !5122, file: !1306, line: 91, type: !67)
!5122 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1306, file: !1306, line: 91, type: !5114, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1305, retainedNodes: !5123)
!5123 = !{!5121, !5124, !5125, !5126, !5127}
!5124 = !DILocalVariable(name: "buf", arg: 2, scope: !5122, file: !1306, line: 91, type: !63)
!5125 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5122, file: !1306, line: 91, type: !121)
!5126 = !DILocalVariable(name: "result", scope: !5122, file: !1306, line: 140, type: !65)
!5127 = !DILocalVariable(name: "length", scope: !5128, file: !1306, line: 154, type: !121)
!5128 = distinct !DILexicalBlock(scope: !5129, file: !1306, line: 153, column: 5)
!5129 = distinct !DILexicalBlock(scope: !5122, file: !1306, line: 142, column: 7)
!5130 = !DILocation(line: 0, scope: !5122, inlinedAt: !5131)
!5131 = distinct !DILocation(line: 274, column: 10, scope: !5113)
!5132 = !DILocalVariable(name: "category", arg: 1, scope: !5133, file: !1306, line: 60, type: !67)
!5133 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1306, file: !1306, line: 60, type: !5134, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1305, retainedNodes: !5136)
!5134 = !DISubroutineType(types: !5135)
!5135 = !{!65, !67}
!5136 = !{!5132, !5137}
!5137 = !DILocalVariable(name: "result", scope: !5133, file: !1306, line: 62, type: !65)
!5138 = !DILocation(line: 0, scope: !5133, inlinedAt: !5139)
!5139 = distinct !DILocation(line: 140, column: 24, scope: !5122, inlinedAt: !5131)
!5140 = !DILocation(line: 62, column: 24, scope: !5133, inlinedAt: !5139)
!5141 = !DILocation(line: 142, column: 14, scope: !5129, inlinedAt: !5131)
!5142 = !DILocation(line: 142, column: 7, scope: !5122, inlinedAt: !5131)
!5143 = !DILocation(line: 145, column: 19, scope: !5144, inlinedAt: !5131)
!5144 = distinct !DILexicalBlock(scope: !5145, file: !1306, line: 145, column: 11)
!5145 = distinct !DILexicalBlock(scope: !5129, file: !1306, line: 143, column: 5)
!5146 = !DILocation(line: 145, column: 11, scope: !5145, inlinedAt: !5131)
!5147 = !DILocation(line: 149, column: 16, scope: !5144, inlinedAt: !5131)
!5148 = !DILocation(line: 149, column: 9, scope: !5144, inlinedAt: !5131)
!5149 = !DILocation(line: 154, column: 23, scope: !5128, inlinedAt: !5131)
!5150 = !DILocation(line: 0, scope: !5128, inlinedAt: !5131)
!5151 = !DILocation(line: 155, column: 18, scope: !5152, inlinedAt: !5131)
!5152 = distinct !DILexicalBlock(scope: !5128, file: !1306, line: 155, column: 11)
!5153 = !DILocation(line: 155, column: 11, scope: !5128, inlinedAt: !5131)
!5154 = !DILocation(line: 157, column: 39, scope: !5155, inlinedAt: !5131)
!5155 = distinct !DILexicalBlock(scope: !5152, file: !1306, line: 156, column: 9)
!5156 = !DILocalVariable(name: "__dest", arg: 1, scope: !5157, file: !2298, line: 31, type: !2301)
!5157 = distinct !DISubprogram(name: "memcpy", scope: !2298, file: !2298, line: 31, type: !2299, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1305, retainedNodes: !5158)
!5158 = !{!5156, !5159, !5160}
!5159 = !DILocalVariable(name: "__src", arg: 2, scope: !5157, file: !2298, line: 31, type: !2302)
!5160 = !DILocalVariable(name: "__len", arg: 3, scope: !5157, file: !2298, line: 31, type: !121)
!5161 = !DILocation(line: 0, scope: !5157, inlinedAt: !5162)
!5162 = distinct !DILocation(line: 157, column: 11, scope: !5155, inlinedAt: !5131)
!5163 = !DILocation(line: 34, column: 10, scope: !5157, inlinedAt: !5162)
!5164 = !DILocation(line: 158, column: 11, scope: !5155, inlinedAt: !5131)
!5165 = !DILocation(line: 162, column: 23, scope: !5166, inlinedAt: !5131)
!5166 = distinct !DILexicalBlock(scope: !5167, file: !1306, line: 162, column: 15)
!5167 = distinct !DILexicalBlock(scope: !5152, file: !1306, line: 161, column: 9)
!5168 = !DILocation(line: 162, column: 15, scope: !5167, inlinedAt: !5131)
!5169 = !DILocation(line: 167, column: 44, scope: !5170, inlinedAt: !5131)
!5170 = distinct !DILexicalBlock(scope: !5166, file: !1306, line: 163, column: 13)
!5171 = !DILocation(line: 0, scope: !5157, inlinedAt: !5172)
!5172 = distinct !DILocation(line: 167, column: 15, scope: !5170, inlinedAt: !5131)
!5173 = !DILocation(line: 34, column: 10, scope: !5157, inlinedAt: !5172)
!5174 = !DILocation(line: 168, column: 15, scope: !5170, inlinedAt: !5131)
!5175 = !DILocation(line: 168, column: 32, scope: !5170, inlinedAt: !5131)
!5176 = !DILocation(line: 169, column: 13, scope: !5170, inlinedAt: !5131)
!5177 = !DILocation(line: 0, scope: !5129, inlinedAt: !5131)
!5178 = !DILocation(line: 274, column: 3, scope: !5113)
!5179 = distinct !DISubprogram(name: "setlocale_null", scope: !1306, file: !1306, line: 301, type: !5134, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1305, retainedNodes: !5180)
!5180 = !{!5181}
!5181 = !DILocalVariable(name: "category", arg: 1, scope: !5179, file: !1306, line: 301, type: !67)
!5182 = !DILocation(line: 0, scope: !5179)
!5183 = !DILocation(line: 0, scope: !5133, inlinedAt: !5184)
!5184 = distinct !DILocation(line: 304, column: 10, scope: !5179)
!5185 = !DILocation(line: 62, column: 24, scope: !5133, inlinedAt: !5184)
!5186 = !DILocation(line: 304, column: 3, scope: !5179)
